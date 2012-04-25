// ---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UAcquireThread.h"
#include "UDlsVars.h"
#include "Device.h"
#include "UStatusRecForm.h"
#include "MainFormUnit.h"
#include "math.h"
#include <math.hpp>
#include "UInitDeviceThread.h"

#pragma package(smart_init)
// ---------------------------------------------------------------------------

// Important: Methods and properties of objects in VCL can only be
// used in a method called using Synchronize, for example:
//
// Synchronize(&UpdateCaption);
//
// where UpdateCaption could look like:
//
// void __fastcall TAcquireThread::UpdateCaption()
// {
// Form1->Caption = "Updated in a thread";
// }
// ---------------------------------------------------------------------------

TAcquireThread *AcquireThread;

__fastcall TAcquireThread::TAcquireThread(bool CreateSuspended) : TThread
(CreateSuspended) {
}

// ---------------------------------------------------------------------------
void __fastcall TAcquireThread::Execute() {

/*
	int f = FileOpen("dls.idata", fmOpenRead);
//	WORD* Data = new WORD[num_blocks*BLOCK_DATA_NUM];

	int shift = num_rec*num_blocks*BLOCK_DATA_NUM*sizeof(WORD);
	FileSeek(f, shift, 0);
	FileRead(f, (void *)Data,  num_blocks*BLOCK_DATA_NUM*sizeof(WORD));
	FileClose(f);

//	if (!GetPhysicalSnapShot()) {
//		return;
//	}

	return;
  */
	int blocksSize = 254;
	int modValue = fmod(num_blocks, blocksSize);
	int count = num_blocks / blocksSize;
	//measuresData.Clear();

//	mm = 2;
//	Synchronize(&Draw);
/*
	mm = 0;
	s = "Серия "+ IntToStr(num_seq+1)+ " из "+IntToStr(AcfParams.n_seq);
	s1 = "Измерение "+ IntToStr(num_rec+1)+ " из "+IntToStr(AcfParams.n_rec);
	Synchronize(&Draw);
	mm = 3;
	pos = 0;
	Synchronize(&Draw);

	for (int i=0; i < num_blocks; i++) {
		Sleep(10);
		pos = 100*i/num_blocks;
		Synchronize(&Draw);
	}


//	Sleep(AcfParams.Rec_time);
	return;
 */

	WORD *pData = Data;


	Status status;


	for (int i = 0; i < count; i++) {

     	status.byte = 0;
		pData += i*blocksSize*BLOCK_DATA_NUM;

		if (!device.SetLength(blocksSize)) {
        	SetEvent(WaitEvent);
			return;
		};
		if(!device.Start()){
        	SetEvent(WaitEvent);
			return;
		};

		do {
			Sleep(40);
			if (!device.GetStatus(status)){
            	SetEvent(WaitEvent);
				return;
			} }
		while (!status.bits.data);

		Sleep(100);

		if (!device.GetData(blocksSize, pData)){
			SetEvent(WaitEvent);
			return;
		}

		/*
		if (!ReadDataBlocks(blocksSize)) {
			measuresData.Clear();
			break;
		}
		pos = 100 * i / count;
		Synchronize(&Draw);
		*/
	}

    pData = Data + count*blocksSize*BLOCK_DATA_NUM;
	status.byte = 0;

	if (!device.SetLength(modValue)) {
    	SetEvent(WaitEvent);
		return;
	}
	if(!device.Start()) {
     	SetEvent(WaitEvent);
		return;
	}

	do {
		Sleep(40);
		if (!device.GetStatus(status)){
        	SetEvent(WaitEvent);
			return;
		}}
	while (!status.bits.data);

	Sleep(100);

	if (!device.GetData(modValue, pData)) {
     	SetEvent(WaitEvent);
		return;
	}


	/*
	if (!ReadDataBlocks(modValue)) {
		measuresData.Clear();
		mm = 1;
		Synchronize(&Draw);
		return;
	}

	pos = 0;
	Synchronize(&Draw);
	mm = 0;
	s = "Обработка сигнала";
	Synchronize(&Draw);

	ProcessAcfData();

	mm = 4;
	Synchronize(&Draw);

	mm = 1;
	Synchronize(&Draw);
	*/
	SetEvent(WaitEvent);
}

void __fastcall TAcquireThread::ProcessAcfData() {
	n0 = measuresData.Count() * BLOCK_DATA_NUM;
	WORD *p = new WORD[n0];

	switch(device.deviceSettings.Frequency) {
	case 0:
		t = 6.5;
		break;
	case 1:
		t = 10;
		break;
	case 2:
		t = 19.92;
		break;
	case 3:
		t = 49.8;
		break;
	}

	for (int i = 0; i < measuresData.Count(); i++) {
		DataBlock d = measuresData.GetBlock(i);
		for (int j = 0; j < BLOCK_DATA_NUM; j++) {
			p[i * BLOCK_DATA_NUM + j] = d.data[j];
		}
	}

	measuresData.Clear();

	AcfParams.vybr = 0;
	AcfParams.zashk = 0;
	int thr = AcfParams._vybr;

	for (int i = 0; i < n0; i++) {
		if (p[i] < thr) {
			AcfParams.vybr++;
		}
		if (p[i] > 65533) {
			AcfParams.zashk++;
		}
	}

	n1 = n0 - AcfParams.vybr;
	AcfParams.nRawData = n1;
	RawData.Clear();
	RawData.Init(n1, 1, mitDouble);
	RawData_t.Clear();
	RawData_t.Init(n1, 1, mitDouble);

	double p_vbr = 0;
	int ind = 0;

	for (int i = 0; i < n0; i++) {

		if (p[i] >= thr) {
			if (ind == 0) {
				RawData_t.a[ind] = (p[i] + p_vbr) * t * 1e-3;
			}
			else {
				RawData_t.a[ind] = RawData_t.a[ind - 1] + (p[i] + p_vbr)
					* t * 1e-3;
			}
			RawData.a[ind] = p[i] + p_vbr;
			p_vbr = 0;
			ind++;
		}
		else {
			p_vbr += p[i];
		}
	}
	AcfParams._time = RawData_t.a[n1 - 1];

	delete[]p;
}

bool __fastcall TAcquireThread::ReadDataBlocks(int num) {
	if (!device.SetLength(num))
		return false;

	Status status;
	status.byte = 0;

	do {
		Sleep(40);
		if (!device.GetStatus(status)) {
			return false;
		}
	}
	while (!status.bits.data);

	DWORD DataNum = num;
	Data = device.GetData(DataNum);
	if (!Data)
		return false;

	for (int i = 0; i < num; i++) {
		DataBlock dataBlock;
		for (int j = 0; j < BLOCK_DATA_NUM; j++)
			dataBlock.data[j] = Data[BLOCK_DATA_NUM * i + j];
		measuresData.AddBlock(dataBlock);
	}

	delete[]Data;
	return true;
}

int __fastcall TAcquireThread::ProcessInitialData() {
	t = 6.5;
	switch(device.deviceSettings.Frequency) {
	case 0:
		t = 6.5;
		break;
	case 1:
		t = 10;
		break;
	case 2:
		t = 19.92;
		break;
	case 3:
		t = 49.8;
		break;
	}

	double time = 0;
	n0 = test_num * BLOCK_DATA_NUM;

	for (int i = 0; i < n0; i++) {
		time += Data[i];
	}

	time *= t * 1e-6;

	if (time) {
		return AcfParams.Rec_time*n0 / time;
	}
	else
		return 0;
}

void __fastcall TAcquireThread::Draw() {
	switch(mm) {
	case 0:
		StatusRecForm->Label1->Caption = s;
		StatusRecForm->Label2->Caption = s1;
		break;
	case 1:
		StatusRecForm->Close();
		MainForm->StartMonitoring();
		break;
	case 2:
		StatusRecForm->Label2->Caption = "Количество блоков " + IntToStr
			(num_blocks);
		break;
	case 3:
		StatusRecForm->ProgressBar1->Position = pos;
		break;
	case 4:
		TFormatSettings FormatSettings;
		GetLocaleFormatSettings(GetSystemDefaultLCID(), FormatSettings);
		FormatSettings.ThousandSeparator = 160;
		FormatSettings.CurrencyString = "";
		FormatSettings.CurrencyDecimals = 0;

		MainForm->ListView2->Items->Item[0]->SubItems[0].Text = FloatToStr(t)
			+ " нс";
		MainForm->ListView2->Items->Item[1]->SubItems[0].Text = FloatToStrF
			(AcfParams._time * 1e-6, ffFixed, 5, 2) + " с";
		MainForm->ListView2->Items->Item[2]->SubItems[0].Text = Format
			("%m", ARRAYOFCONST((double(AcfParams.vybr))), FormatSettings);
		MainForm->ListView2->Items->Item[3]->SubItems[0].Text = FloatToStr
			(AcfParams.zashk / n0 * 100) + "%";
		MainForm->ListView2->Items->Item[4]->SubItems[0].Text = Format
			("%m", ARRAYOFCONST((1e6 * n1 / AcfParams._time)), FormatSettings);
		MainForm->ListView2->Items->Item[5]->SubItems[0].Text = Format
			("%m", ARRAYOFCONST((double(n1))), FormatSettings);

		int ind = 0;
		for (int i = 0; i < n1; i++) {
			if (RawData_t.a[i] > 1e6) {
				ind = i - 1;
				break;
			}
		}

		int m = Floor(ind / 1e3);
		MainForm->Series1->Clear();
		for (int i = 0; i < 1e3; i++) {
			if (!(RawData.a[i * m] == 0)) {
				MainForm->Series1->AddXY(RawData_t.a[i * m] * 1e-6, 1e9 /
					(RawData.a[i * m] * t));
			}
			else {
				MainForm->Series1->AddNullXY(RawData_t.a[i * m] * 1e-6, 0);
			}
		}
		break;
	}

}


// ---------------------------------------------------------------------------
