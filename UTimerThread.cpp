// ---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UTimerThread.h"
#include "UDlsVars.h"
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
		MainForm->Memo1->Lines->Clear();
		MainForm->Memo1->Lines->Add(Now().DateTimeString());
		MainForm->Memo1->Lines->Add("");
		StatusRecForm->Label1->Caption = "Инициализация устройства...";
		StatusRecForm->Label1->Caption = "";
		break;
	case 1:
		MainForm->Memo1->Lines->Add(s);
		break;
	case 2:
		StatusRecForm->Close();
		break;
	case 3:
    	StatusRecForm->Label1->Caption = "Серия "+IntToStr(num_seq+1)+" из "+IntToStr(AcfParams.n_seq);
		break;

	default: ;
	}

}

void __fastcall TTimerThread::Execute() {

	mm = 0;
	Synchronize(&Draw);

	mm=1;

	void *q = CreateEventA(NULL, 1, 0, NULL);
    bool error = false;

	TDeviceInitThread *InitDevice = new TDeviceInitThread(true);
	InitDevice->monitoring = false;
	InitDevice->error_ = &error;
	InitDevice->Start();

    Sleep(10);
	if (WaitForSingleObject(&(InitDevice->Handle), 20000) == WAIT_TIMEOUT) {
    	s = "Ошибка инициализации устройства";
        Synchronize(&Draw);
		InitDevice->Free();
		mm=2;
		Synchronize(&Draw);
		return;
	}

	if (error) {
		s = "Ошибка инициализации устройства";
		Synchronize(&Draw);
		InitDevice->Free();
        mm=2;
        Synchronize(&Draw);
        return;
	}

    InitDevice->Free();


	TInitDeviceThread *Init = new TInitDeviceThread(true);
	Init->test_num = 10;
	Init->Start();
	Sleep(10);
	if (WaitForSingleObject(&(Init->Handle), 10000) == WAIT_TIMEOUT) {

		s = "Ошибка инициализации устройства";
		Synchronize(&Draw);
		Sleep(3000);
		Init->Free();
		mm=2;
		Synchronize(&Draw);
		return;
	}
	num_blocks = Init->num_blocks;


	Init->Free();

	for (int i = 0; i < AcfParams.n_seq; i++) {
        num_seq = i;
		mm=3;
        Synchronize(&Draw);

		TSeqThread *Seq = new TSeqThread(true);
		Seq->num_blocks = num_blocks;
		Seq->num_seq=num_seq;

		Seq->Start();
		Sleep(10);

		WaitForSingleObject(q, AcfParams.seq_time);
		WaitForSingleObject(&(Seq->Handle), INFINITE);

		Seq->Free();

	}

    mm=2;
	Synchronize(&Draw);

	CloseHandle(q);

	//mm=1;
//	s="Количество блоков: "+IntToStr(num_blocks);
//	Synchronize(&Draw);
}
// ---------------------------------------------------------------------------
