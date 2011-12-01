// ---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UTimerThread.h"

#include "UInitDeviceThread.h"
#include "UDeviceInitThread.h"
#include "UStatusRecForm.h"
#include "USeqThread.h"
#include "MainFormUnit.h"
#include "DateUtils.hpp"

#pragma package(smart_init)
// ---------------------------------------------------------------------------

// Important: Methods and properties of objects in VCL can only be
// used in a method called using Synchronize, for example:
//
// Synchronize(&UpdateCaption);
//
// where UpdateCaption could look like:
//
// void __fastcall TTimerThread::UpdateCaption()
// {
// Form1->Caption = "Updated in a thread";
// }
// ---------------------------------------------------------------------------

__fastcall TTimerThread::TTimerThread(bool CreateSuspended) : TThread
(CreateSuspended) {
}

// ---------------------------------------------------------------------------
void __fastcall TTimerThread::Draw() {
	switch(mm) {
	case 0:
		//MainForm->Memo1->Lines->Clear();
		MainForm->Memo1->Lines->Add(Now().DateTimeString());
		MainForm->Memo1->Lines->Add("");
		MainForm->LineSeries4->Clear();
		MainForm->LineSeries5->Clear();
		/*
		StatusRecForm->Label1->Caption = "Инициализация устройства...";
		StatusRecForm->Label1->Caption = "";
		*/
		break;
	case 1:
		MainForm->Memo1->Lines->Add(s);
		break;
	case 2:
	   {
		UnicodeString q = MainForm->Memo1->Lines->Strings[MainForm->Memo1->Lines->Count-1];
		MainForm->Memo1->Lines->Strings[MainForm->Memo1->Lines->Count-1] = q + "  OK";
       }
		break;
	case 3:
		StatusRecForm->Label1->Caption = "Серия " + IntToStr(num_seq + 1)
			+ " из " + IntToStr(AcfParams.n_seq);
		break;
	case 4: SaveProject();
    	break;
	case 5:
	{
		UnicodeString q = pd.Path + pd.Name + ".dls";
		pd.Clear();
		OpenProject(q, pd);
	}
	break;

	default: ;
	}

}

void __fastcall TTimerThread::Execute() {

	switch (mode) {
		case from_device:
		{
			pd.Name = AcfParams.File_Name;
			pd.Path = AcfParams.Save_Dir+"\\";

			mm = 0;
			Synchronize(&Draw);

			mm = 1;
			s="Инициализация устройства...";
			Synchronize(&Draw);



			void *q = CreateEventA(NULL, 1, 0, NULL);
			void *wait_event = CreateEventA(NULL, 1, 0, NULL);
			bool error = false;

			TDeviceInitThread *InitDevice = new TDeviceInitThread(true);
			//InitDevice->monitoring = false;
			InitDevice->error_ = &error;
			InitDevice->wait_event = wait_event;
			InitDevice->Start();

			Sleep(10);
			if (WaitForSingleObject(wait_event, 20000) == WAIT_TIMEOUT) {
				s = "Ошибка инициализации устройства";
				Synchronize(&Draw);
				InitDevice->Free();
				//mm = 2;
				//Synchronize(&Draw);
				return;
			}

			if (error) {
				s = "Ошибка инициализации устройства:";
				Synchronize(&Draw);
				s = InitDevice->s;
				Synchronize(&Draw);

				InitDevice->Free();
				//mm = 2;
				//Synchronize(&Draw);
				return;
			}

			InitDevice->Free();


			ResetEvent(wait_event);
			TInitDeviceThread *Init = new TInitDeviceThread(true);
			Init->test_num = 10;
			Init->wait_event = wait_event;
			Init->Start();
			Sleep(10);
			if (WaitForSingleObject(wait_event, 10000) == WAIT_TIMEOUT) {

				s = "Ошибка инициализации устройства";
				Synchronize(&Draw);

				Init->Free();
			   //	mm = 2;
				//Synchronize(&Draw);
				return;
			}

			num_blocks = Init->num_blocks;
			Init->Free();

			if (num_blocks == 0) {
            	s = "Ошибка инициализации устройства";
				Synchronize(&Draw);
				return;
			}


			mm = 2;
			Synchronize(&Draw);

			mm = 1;
			s="Количество блоков: " + IntToStr(num_blocks);
			Synchronize(&Draw);



			for (int i = 0; i < AcfParams.n_seq; i++) {
				ResetEvent(wait_event);
				num_seq = i;
				mm = 1;
				s = "";
				Synchronize(&Draw);
				s = "Серия " + IntToStr(i+1) + " из " + IntToStr(AcfParams.n_seq);
				Synchronize(&Draw);

				TSeqThread *Seq = new TSeqThread(true);
				Seq->num_blocks = num_blocks;
				Seq->num_seq = num_seq;
				Seq->mode = mode;
				Seq->seq_ = &pd.Add();
				Seq->wait_event = wait_event;

				Seq->Start();
				Sleep(10);

				WaitForSingleObject(q, AcfParams.seq_time);
				WaitForSingleObject(wait_event, 10000);

				Seq->Free();
			}

			mm = 4;
			Synchronize(&Draw);




		    CloseHandle(wait_event);
			CloseHandle(q);
            mm=5;
            Synchronize(&Draw);
			break;
		}
		case from_hdd:
		{
        	void *wait_event = CreateEventA(NULL, 1, 0, NULL);
			for (size_t i=0; i < pd.SizeOf(); i++) {
            	ResetEvent(wait_event);
				if (!pd[i].process_)
					continue;
				TSeqThread *Seq = new TSeqThread(true);
				Seq->mode = mode;
				Seq->num_seq = i;
				Seq->wait_event = wait_event;

				Seq->Start();
				Sleep(10);
				WaitForSingleObject(wait_event, 10000);
				Seq->Free();
			}

			mm=5;
			Synchronize(&Draw);
			CloseHandle(wait_event);
			break;
		}
	}


}

void __fastcall TTimerThread::SaveProject() {

	_di_IXMLNode root, seq_node, rec_node;

	MainForm->XMLDocument1->Active = true;

	root = MainForm->XMLDocument1->AddChild
		("Dynamic_Light_Scattering_XML_Document");
	root->AddChild("Date")->Text = Today().DateString();
	root->AddChild("Name")->Text = AcfParams.Name_Spec;
	root->AddChild("Solution")->Text = AcfParams.Name_Sol;

	for (size_t i=0; i < pd.SizeOf(); i++) {
		seq_node = root->AddChild("Series");
		for (size_t j=0; j < pd[i].SizeOf(); j++) {
			rec_node = seq_node->AddChild("Measurement");
			rec_node->AddChild("Data")->Text = ExtractFileName(pd[i][j].Data_);
			rec_node->AddChild("ACF")->Text = ExtractFileName(pd[i][j].Acf_);
		}
        seq_node->AddChild("Mean_ACF")->Text = ExtractFileName(pd[i].Mean_Acf_);
	}
	/*
	for (int i=0; i < AcfParams.n_seq; i++) {
		seq_node = root->AddChild("Series");

		for (int j=0; j < AcfParams.n_rec; j++) {
			rec_node = seq_node->AddChild("Measurement");

			char buff[50];
			sprintf(buff, "_%.3d_%.3d", i+1, j+1);
			UnicodeString s = AcfParams.File_Name + buff+".idata";
			rec_node->AddChild("Data")->Text = s;

			if (AcfParams.DoAcf)
			{
				s = AcfParams.File_Name + buff+".tdf";
				rec_node->AddChild("ACF")->Text = s;
			}
		}

		if (AcfParams.DoMean) {
			char buff[50];
			sprintf(buff, "_%.3d", i+1);
			UnicodeString s = AcfParams.File_Name + buff+".tdf";
			seq_node->AddChild("Mean_ACF")->Text = s;
		}
	}
	*/
//	s=AcfParams.Save_Dir+"\\"+AcfParams.File_Name+".dls";
    s = pd.Path+pd.Name+".dls";
	MainForm->XMLDocument1->SaveToFile(s);

	MainForm->XMLDocument1->XML->Clear();
	MainForm->XMLDocument1->Active = false;

	mm = 1;
	s = "Сохранение проекта: "+s;
	Synchronize(&Draw);

}
// ---------------------------------------------------------------------------
