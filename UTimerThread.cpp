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

#define THREAD_TIMEOUT 10000

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
		UnicodeString q = pd_->Path + pd_->Name + ".dls";
		pd_->Clear();
		OpenProject(q, *pd_);
		MainForm->off(true);
	}
	break;
	case 6: MainForm->off(false); break;
	case 7: StatusRecForm->Show(); break;
	case 8: StatusRecForm->Close(); break;

	default: ;
	}

}

void __fastcall TTimerThread::Execute() {

	Sync(6);
	switch (mode) {
		case from_device:
		{
			pd_->Name = AcfParams.File_Name;
			pd_->Path = AcfParams.Save_Dir+"\\";
			pd_->Name_Sol = AcfParams.Name_Sol;
			pd_->Name_Spec = AcfParams.Name_Spec;

			Sync(0);
			Sync(1, "Инициализация устройства...");

			void *q = CreateEventA(NULL, 1, 0, NULL);
			void *wait_event = CreateEventA(NULL, 1, 0, NULL);
			bool error = false;

			TDeviceInitThread *InitDevice = new TDeviceInitThread(true);
			//InitDevice->monitoring = false;
			InitDevice->error_ = &error;
			InitDevice->wait_event = wait_event;
			InitDevice->Start();

			Sleep(10);
			if (WaitForSingleObject(wait_event, 2*THREAD_TIMEOUT) == WAIT_TIMEOUT) {
				Sync(1, "Ошибка инициализации устройства");
				InitDevice->Free();
				//mm = 2;
				//Synchronize(&Draw);
				return;
			}

			if (error) {
				Sync(1, "Ошибка инициализации устройства: ");
				Sync(1, InitDevice->s);

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
			if (WaitForSingleObject(wait_event, THREAD_TIMEOUT) == WAIT_TIMEOUT) {
				Sync(1, "Ошибка инициализации устройства");

				Init->Free();
			   //	mm = 2;
				//Synchronize(&Draw);
				return;
			}

			num_blocks = Init->num_blocks;
			Init->Free();

			if (num_blocks == 0) {
				Sync(1, "Ошибка инициализации устройства");
				return;
			}


			Sync(2);
			Sync(1, "Количество блоков: " + IntToStr(num_blocks));

			for (int i = 0; i < AcfParams.n_seq; i++) {
				ResetEvent(wait_event);
				num_seq = i;
				Sync(1);
				Sync(1, "Серия " + IntToStr(i+1) + " из " + IntToStr(AcfParams.n_seq));

				TSeqThread *Seq = new TSeqThread(true);
				Seq->num_blocks = num_blocks;
				Seq->num_seq = num_seq;
				Seq->mode = mode;
				Seq->seq_ = &pd_->Add();
				Seq->pd_ = pd_;
				Seq->wait_event = wait_event;

				Seq->Start();
				Sleep(10);

				WaitForSingleObject(q, AcfParams.seq_time);
				WaitForSingleObject(wait_event, THREAD_TIMEOUT);

				Seq->Free();
			}

			CloseHandle(wait_event);
			CloseHandle(q);
			Sync(4);

			if (!AcfParams.DoAcf)
			{
				DoMean_ = AcfParams.DoMean;
                mode = from_hdd;
				pd_->Enable_All();
			}
			else
			{
				Sync(5);
				break;
			}
		}
		case from_hdd:
		{
			Sync(7);
			void *wait_event = CreateEventA(NULL, 1, 0, NULL);
			for (size_t i=0; i < pd_->SizeOf(); i++) {
				ResetEvent(wait_event);
				if (!(*pd_)[i].process_)
					continue;
				TSeqThread *Seq = new TSeqThread(true);
				Seq->mode = mode;
				Seq->num_seq = i;
				Seq->pd_ = pd_;
				Seq->wait_event = wait_event;
				Seq->DoMean_ = DoMean_;
				Seq->Start();
				//Sleep(10);
				WaitForSingleObject(wait_event, THREAD_TIMEOUT);
				Seq->Free();
			}

			Sync(4);
			Sync(5);
			CloseHandle(wait_event);
			Sync(8);
			break;
		}
	}


}

void __fastcall TTimerThread::SaveProject() {

	_di_IXMLNode root, seq_node, rec_node;

	MainForm->XMLDocument1->Active = true;

	root = MainForm->XMLDocument1->AddChild("Dynamic_Light_Scattering_XML_Document");
	root->AddChild("Date")->Text = Today().DateString();
	root->AddChild("Name")->Text = pd_->Name_Spec;
	root->AddChild("Solution")->Text = pd_->Name_Sol;

	for (size_t i=0; i < (*pd_).SizeOf(); i++) {
		seq_node = root->AddChild("Series");
		for (size_t j=0; j < (*pd_)[i].SizeOf(); j++) {
			rec_node = seq_node->AddChild("Measurement");
			rec_node->AddChild("Data")->Text = ExtractFileName((*pd_)[i][j].Data_);
			rec_node->AddChild("ACF")->Text = ExtractFileName((*pd_)[i][j].Acf_);
			rec_node->AddChild("a0")->Text = FloatToStr((*pd_)[i][j].a0);
			rec_node->AddChild("a1")->Text = FloatToStr((*pd_)[i][j].a1);
			rec_node->AddChild("a2")->Text = FloatToStr((*pd_)[i][j].a2);
			rec_node->AddChild("x_pcs")->Text = FloatToStr((*pd_)[i][j].x_pcs);
			rec_node->AddChild("pi")->Text = FloatToStr((*pd_)[i][j].pi);
			rec_node->AddChild("rate")->Text = FloatToStr((*pd_)[i][j].rate);
			rec_node->AddChild("prism")->Text = IntToStr((*pd_)[i][j].prism);
			rec_node->AddChild("aperture")->Text = IntToStr((*pd_)[i][j].aperture);
			rec_node->AddChild("polar")->Text = IntToStr((*pd_)[i][j].polar);

		}
		seq_node->AddChild("Mean_ACF")->Text = ExtractFileName((*pd_)[i].Mean_Acf_);
		seq_node->AddChild("a0")->Text = FloatToStr((*pd_)[i].a0);
		seq_node->AddChild("a1")->Text = FloatToStr((*pd_)[i].a1);
		seq_node->AddChild("a2")->Text = FloatToStr((*pd_)[i].a2);
		seq_node->AddChild("x_pcs")->Text = FloatToStr((*pd_)[i].x_pcs);
		seq_node->AddChild("pi")->Text = FloatToStr((*pd_)[i].pi);

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
	s = pd_->Path+pd_->Name+".dls";
	MainForm->XMLDocument1->SaveToFile(s);

	MainForm->XMLDocument1->XML->Clear();
	MainForm->XMLDocument1->Active = false;

	mm = 1;
	s = "Сохранение проекта: "+s;
	Synchronize(&Draw);

}
// ---------------------------------------------------------------------------
