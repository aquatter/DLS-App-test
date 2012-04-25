//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UTestRecForm.h"
#include "UDlsVars.h"
#include "Device.h"
#include "MainFormUnit.h"
#include "UAcquireThread.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TTestRecForm *TestRecForm;
//---------------------------------------------------------------------------
__fastcall TTestRecForm::TTestRecForm(TComponent* Owner)
	: TForm(Owner), Data(NULL)
{

}
//---------------------------------------------------------------------------
void __fastcall TTestRecForm::Button1Click(TObject *Sender)
{
 	Close();
}
//---------------------------------------------------------------------------
void __fastcall TTestRecForm::Button2Click(TObject *Sender)
{
	Panel1->Caption = "";
	MainForm->LineSeries5->Clear();

	TTestRecThread *t = new TTestRecThread(true);
	t->FreeOnTerminate = true;
	t->num_blocks = Edit1->Text.ToInt();
	t->freq = ComboBox1->ItemIndex;
	t->Start();
}
//---------------------------------------------------------------------------


void __fastcall TTestRecThread::Execute()
{

	if (!device.PhotoOn(true)) {
		Sync(0, "Ошибка включения фотодатчика");
		Sync(1);
		return;
	}

	if (!device.SetFrequency(freq)) {
		Sync(0,"Ошибка установки частоты");
		Sync(1);
		return;
	}
	void *WaitEvent = CreateEventA(NULL, 1, 0, NULL);

	Sync(0,"Накопление сигнала...");
	Data = new WORD[num_blocks * BLOCK_DATA_NUM];

	TAcquireThread *t = new TAcquireThread(true);
	t->num_blocks = num_blocks;
	t->Data=Data;
	t->WaitEvent = WaitEvent;
	t->FreeOnTerminate = true;
	t->Start();

	if  (WaitForSingleObject(WaitEvent, 10000) == WAIT_TIMEOUT)
	{
		Sync(0,"Ошибка считывания сигнала");
		Sync(1);
		delete [] Data;
		CloseHandle(WaitEvent);
		return;
	}
	CloseHandle(WaitEvent);

	Sync(2);
	Sync(1);
}

void __fastcall TTestRecThread::Draw()
{
	switch (mm)
	{
		case 0:
			TestRecForm->Panel1->Caption = s;
		break;
		case 1:
			TestRecForm->Button1->Enabled = true;
		break;
		case 2:
			{
				int n =  num_blocks * BLOCK_DATA_NUM;
				double time = 0;
				double t = GetTime_Discr(freq);

				for (int i=0; i < n; ++i)
                	time += Data[i];

				time *=t*1e-9;
				if (time)
					TestRecForm->Label2->Caption = "Количество импульсов в ед. времени:\n" + FloatToStr(n/time);

				if (n > 1000) n = 1000;
//				n = std::min<int>(5000, n);
				MainForm->LineSeries5->Clear();
				for (int i=0; i < n; ++i)
					MainForm->LineSeries5->AddXY(i, Data[i]);

				delete [] Data;
			}
		break;
	}
}

void __fastcall TTestRecForm::Button3Click(TObject *Sender)
{
	Panel1->Caption = "";
	MainForm->LineSeries5->Clear();

	num_blocks = Edit1->Text.ToInt();
	freq = ComboBox1->ItemIndex;

    if (!device.PhotoOn(true)) {
		Panel1->Caption = "Ошибка включения фотодатчика";
		return;
	}

	if (!device.SetFrequency(freq)) {
		Panel1->Caption = "Ошибка установки частоты";
		return;
	}

	if (!device.SetLength(num_blocks)) {
		Panel1->Caption = "Ошибка установки длины блока";
		return;
	}

	if(!device.Start()) {
		Panel1->Caption = "Ошибка запуска накопления";
		return;
	}

	if (Data)
    	delete [] Data;

	Data = new WORD[num_blocks * BLOCK_DATA_NUM];

	Button4->Enabled = true;
	Button3->Enabled = false;
	Panel1->Caption = "Накопление сигнала...";

}
//---------------------------------------------------------------------------


void __fastcall TTestRecForm::Button4Click(TObject *Sender)
{
	if (!device.GetData(num_blocks, Data)) {
		Panel1->Caption = "Ошибка считывания данных";
		delete [] Data;
		Data = NULL;
		Button4->Enabled = false;
		Button3->Enabled = true;
		return;
	}


	int n =  num_blocks * BLOCK_DATA_NUM;
	double time = 0;
	double t = GetTime_Discr(freq);

	for (int i=0; i < n; ++i)
		time += Data[i];

	time *=t*1e-9;
	if (time)
		Label2->Caption = "Количество импульсов в ед. времени:\n" + FloatToStrF(n/time, ffFixed, 8, 2);

	if (n > 1000) n = 1000;

	MainForm->LineSeries5->Clear();
	for (int i=0; i < n; ++i)
		MainForm->LineSeries5->AddXY(i, Data[i]);


	delete [] Data;
	Data = NULL;
	Button4->Enabled = false;
	Button3->Enabled = true;
    Panel1->Caption = "";

}
//--------------------------------------------------------------------------

