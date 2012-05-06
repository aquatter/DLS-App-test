// ---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "MainFormUnit.h"
#include <math.h>
#include <stdio.h>
#include "UOptionsForm.h"
#include "UDlsVars.h"
#include "UAcfThread.h"
#include "UpmAcfThread.h"
#include "system.hpp"
#include "UDLSContinThread.h"
#include "UDLSFFTThread.h"
#include "UGradForm.h"
#include "UReportForm.h"
#include "UAdd2ReportForm.h"
#include "UAutoMeasureThread.h"
#include "UAutoProgressForm.h"
#include "UAcquireThread.h"
#include "URecThreadStartForm.h"
#include "UInitDeviceThread.h"
#include "UStatusRecForm.h"
#include "UTimerThread.h"
#include "UDeviceInitThread.h"
#include "UTAdjustAngleAperForm.h"
#include "UTestRecForm.h"

// ---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "Chart"
#pragma link "TeEngine"
#pragma link "TeeProcs"
#pragma link "Series"
#pragma link "cspin"
#pragma link "TeEngine"
#pragma link "TeeProcs"
#pragma link "TeEngine"
#pragma link "TeeProcs"
#pragma resource "*.dfm"
TMainForm *MainForm;

// ---------------------------------------------------------------------------
__fastcall TMainForm::TMainForm(TComponent* Owner) : TForm(Owner) {
	bTimerExecuting = false;

    vt = new TVirtualStringTree(this);
	vt->Parent = Panel5;
	vt->Align = alClient;
	vt->Header->Style = hsFlatButtons;
	vt->Header->Options << hoVisible << hoColumnResize << hoAutoSpring;
	vt->TreeOptions->PaintOptions <<  toShowHorzGridLines <<  toShowVertGridLines << toFullVertGridLines << toShowButtons;
	vt->TreeOptions->SelectionOptions <<  toFullRowSelect << toLevelSelectConstraint;
	vt->TreeOptions->AnimationOptions << toAnimatedToggle << toAdvancedAnimatedToggle;
	vt->NodeDataSize=sizeof(TProjectData::TVtPD);
	vt->DefaultText = "";
    vt->BorderStyle = bsNone;
	TVirtualTreeColumn *col = vt->Header->Columns->Add();
	col->Width = 120;
	col->Position = 0;
	col->Text = "Наименование";
	col->Options << coVisible << coAllowFocus << coAutoSpring << coEnabled << coResizable << coAutoSpring << coSmartResize << coAllowFocus;
	col = vt->Header->Columns->Add();
	col->Position = 1;
	col->Width = 40;
	col->Text = "Угол";
	col->Options << coVisible << coAllowFocus << coAutoSpring << coEnabled << coResizable << coAutoSpring << coSmartResize << coAllowFocus;
	col = vt->Header->Columns->Add();
	col->Position = 2;
	col->Width = 40;
	col->Text = "Температура";
	col->Options << coVisible << coAllowFocus << coAutoSpring << coEnabled << coResizable << coAutoSpring << coSmartResize << coAllowFocus;
	col = vt->Header->Columns->Add();
	col->Position = 3;
	col->Width = 40;
	col->Text = "Диаметр";
	col->Options << coVisible << coAllowFocus << coAutoSpring << coEnabled << coResizable << coAutoSpring << coSmartResize << coAllowFocus;
	col = vt->Header->Columns->Add();
	col->Position = 4;
	col->Width = 40;
	col->Text = "ППД";
	col->Options << coVisible << coAllowFocus << coAutoSpring << coEnabled << coResizable << coAutoSpring << coSmartResize << coAllowFocus;
	col = vt->Header->Columns->Add();
	col->Position = 5;
	col->Width = 40;
	col->Text = "Гамма";
	col->Options << coVisible << coAllowFocus << coAutoSpring << coEnabled << coResizable << coAutoSpring << coSmartResize << coAllowFocus;
	/*
	col = vt->Header->Columns->Add();
	col->Position = 6;
	col->Width = 30;
	col->Text = "Имп/сек";
	col->Options << coVisible << coAllowFocus << coAutoSpring << coEnabled << coResizable << coAutoSpring << coSmartResize << coAllowFocus;
	col = vt->Header->Columns->Add();
	col->Position = 7;
	col->Width = 30;
	col->Text = "Призма";
	col->Options << coVisible << coAllowFocus << coAutoSpring << coEnabled << coResizable << coAutoSpring << coSmartResize << coAllowFocus;
	col = vt->Header->Columns->Add();
	col->Position = 8;
	col->Width = 30;
	col->Text = "Диафрама";
	col->Options << coVisible << coAllowFocus << coAutoSpring << coEnabled << coResizable << coAutoSpring << coSmartResize << coAllowFocus;
	col = vt->Header->Columns->Add();
	col->Position = 9;
	col->Width = 30;
	col->Text = "Поляризатор";
	col->Options << coVisible << coAllowFocus << coAutoSpring << coEnabled << coResizable << coAutoSpring << coSmartResize << coAllowFocus;
    */

	vt->ShowHint = true;


	vt->HintAnimation = hatSlide;
	vt->OnGetText = VtGetText;

	vt->OnDblClick = VtDblClick;
//	vt->OnClick = VtClick;
	vt->OnMouseUp = VtMouseUp;
	vt->PopupMenu = PopupMenu1;
	Application->HintPause = 0;

	// OptionsForm->Edit7->Text = IntToStr(device.deviceSettings.Amplification);
	// OptionsForm->Edit8->Text = FloatToStr(device.deviceSettings.Temperature);
	// OptionsForm->Edit9->Text = FloatToStr(device.deviceSettings.Angle);
	// OptionsForm->Edit11->Text = IntToStr(device.deviceSettings.ReadDataBlock);
}

void __fastcall TMainForm::StartMonitoring() {
	Timer1->Enabled = true;
}

void __fastcall TMainForm::StopMonitoring() {
	Timer1->Enabled = false;
	while (bTimerExecuting) {
		Sleep(100);
		Application->ProcessMessages();
	}
}

bool __fastcall TMainForm::ReadDataBlocks(int num) {
	double dWaitDuration = BLOCK_DATA_NUM * num;
	dWaitDuration /= DATA_MIN_RATE;
	dWaitDuration *= 1000;
	if (!device.SetLength(num))
		return false;
	if (!device.Start()) {
		return false;
	}
	DWORD dwWaitTime = GetTickCount();
	Status status;
	do {
		if (GetTickCount() - dwWaitTime > dWaitDuration) {
			Sleep(100);
			return false;
		}
		Sleep(40);
		if (!device.GetStatus(status)) {
			return false;
		}
	}
	while (!status.bits.data);
	DWORD dwReadNumData = num;
	WORD* Data = device.GetData(dwReadNumData);
	if (!Data)
		return false;
	if ((int)dwReadNumData != num) {
		delete[]Data;
		return false;
	}
	for (int iNum = 0; iNum < num; iNum++) {
		DataBlock dataBlock;
		for (int i = 0; i < BLOCK_DATA_NUM; i++)
			dataBlock.data[i] = Data[BLOCK_DATA_NUM * iNum + i];
		measuresData.AddBlock(dataBlock);
	}
	delete[]Data;
	return true;
}

bool __fastcall TMainForm::ReadDataEx() {
	int blocksSize = 254;
	int length = device.deviceSettings.ReadDataBlock;
	int modValue = fmod(length, blocksSize);
	int count = length / blocksSize;
	measuresData.Clear();
	int progressBarPos = 0;
	ProgressBar->Max = length;
	for (int i = 0; i < count; i++) {
		if (!ReadDataBlocks(blocksSize)) {
			measuresData.Clear();
			ProgressBar->Position = 0;
			return false;
		}
		progressBarPos += blocksSize;
		ProgressBar->Position = progressBarPos;
		Application->ProcessMessages();

	}
	if (!ReadDataBlocks(modValue)) {
		measuresData.Clear();
		ProgressBar->Position = 0;
		Application->ProcessMessages();
		return false;
	}
	ProgressBar->Position = 0;
	Application->ProcessMessages();
	return true;
}

bool __fastcall TMainForm::UpdateDevicesCondition() {
	Status status;
	if (!device.GetStatus(status)) {
		for (int i = 0; i < ListView1->Items->Count; i++)
			ListView1->Items->Item[i]->ImageIndex = 0;

		// shpFeed->Brush->Color = clRed;
		// shpPhotomultiplier->Brush->Color = clRed;
		// shpGoniometer->Brush->Color = clRed;
		// shpSignal->Brush->Color = clRed;
		// shpData->Brush->Color = clRed;
		return false;
	}
	else {
		ListView1->Items->Item[0]->ImageIndex = (status.bits.feed) ? 1 : 0;
		// ListView1->Items->Item[1]->ImageIndex = (status.bits.photomultiplier)
		// ? 1 : 0;
		ListView1->Items->Item[2]->ImageIndex = (status.bits.goniometer)
			? 1 : 0;
		// ListView1->Items->Item[3]->ImageIndex = (status.bits.signal) ? 1 : 0;
		// ListView1->Items->Item[4]->ImageIndex = (status.bits.data) ? 1 : 0;

		// shpFeed->Brush->Color = (status.bits.feed) ? clLime : clRed;
		// shpPhotomultiplier->Brush->Color = (status.bits.photomultiplier) ? clLime : clRed;
		// shpGoniometer->Brush->Color = (!status.bits.goniometer) ? clLime : clRed;
		// shpSignal->Brush->Color = (!status.bits.signal) ? clLime : clRed;
		// shpData->Brush->Color = (status.bits.data) ? clLime : clRed;
	}
	return true;
}

bool __fastcall TMainForm::UpdateTemperature() {
	double value;
	if (!device.GetTemperature(value)) {
		AcfParams.Curr_T = 298.15;
		UnicodeString uStr = "Текущее значение: " + FloatToStrF
			(AcfParams.Curr_T, ffFixed, 6, 2) + " K"; // char(159);
		OptionsForm->Label22->Caption = uStr;
		return false;
	}
	AcfParams.Curr_T = value;
	UnicodeString uStr = "Текущее значение: " + FloatToStrF
		(value, ffFixed, 6, 2) + " K"; // char(159);
	OptionsForm->Label22->Caption = uStr;
	// grpbxTermostat->Caption = uStr;
	return true;
}

bool __fastcall TMainForm::UpdateIntensity() {
	int value = 0;
	bool rez = false;

	rez = device.GetIntensity(value);
	AdjustAngleAperForm->Label58->Caption =	"Интенсивность сигнала: " + IntToStr(value);

	return rez;
}

bool __fastcall TMainForm::SaveDataToFile(UnicodeString uFileNameStr) {
	if (FileExists(uFileNameStr)) {
		if (Application->MessageBox(
				L"Файл с таким именем существует. Перезаписать файл?",
				L"Внимание", MB_ICONQUESTION | MB_YESNO) == IDNO)
			return true;
		DeleteFile(uFileNameStr);
	}
	if (!measuresData.Write(uFileNameStr, OptionsForm->ComboBox1->ItemIndex)) {
		Application->MessageBox(L"Ошибка при сохранении файла", L"Ошибка",
			MB_ICONERROR | MB_OK);
		return false;
	}
	return true;
}

// ---------------------------------------------------------------------------
void __fastcall TMainForm::Timer1Timer(TObject *Sender) {
	try {
		bTimerExecuting = true;
		// UpdateDevicesCondition();
		UpdateTemperature();
		UpdateIntensity();

	}
	__finally {
		bTimerExecuting = false;
	}
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::SetNewData(WORD* Data, DWORD dwNumData) {
	Series1->Clear();
	if (!dwNumData)
		return;
	for (DWORD i = 0; i < dwNumData; i++) {
		Series1->AddXY(i, Data[i], "", clTeeColor);
	}
	double value = Series1->XValues->MaxValue - Series1->XValues->MinValue;
	value /= 20;
	Chart1->BottomAxis->SetMinMax(Series1->XValues->MinValue - value,
		Series1->XValues->MaxValue + value);

	value = Series1->YValues->MaxValue - Series1->YValues->MinValue;
	value /= 20;
	Chart1->LeftAxis->SetMinMax(Series1->YValues->MinValue - value,
		Series1->YValues->MaxValue + value);
}

void __fastcall TMainForm::NewDataView() {
	Chart1->Axes->Bottom->Logarithmic = 0;
	Series1->Clear();
	int count = measuresData.Count();
	if (!count)
		return;
	if (count > 1)
		count = 1;
	for (int iBlock = 0; iBlock < count; iBlock++) {
		DataBlock dataBlock = measuresData.GetBlock(iBlock);
		for (int iData = 0; iData < BLOCK_DATA_NUM; iData++) {
			int index = iBlock * BLOCK_DATA_NUM + iData;
			Series1->AddXY(index, dataBlock.data[iData], "", clTeeColor);
		}
	}
}

void __fastcall TMainForm::chckbxLFDClick(TObject *Sender) {
	if (OptionsForm->CheckBox1->Tag)
		return;
	try {
		OptionsForm->CheckBox1->Tag = 1;
		if (!device.SetPhotomultiplierState(OptionsForm->CheckBox1->Checked))
			Application->MessageBox
				(L"Ошибка!", L"Ошибка", MB_OK | MB_ICONERROR);
	}
	__finally {
		OptionsForm->CheckBox1->Tag = 0;
	}
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::chckbxFEUClick(TObject *Sender) {
	if (OptionsForm->CheckBox2->Tag)
		return;
	try {
		OptionsForm->CheckBox2->Tag = 1;
		edtFEU_Init();
	}
	__finally {
		OptionsForm->Edit7->Enabled = OptionsForm->CheckBox2->Checked;
		OptionsForm->CSpinButton1->Enabled = OptionsForm->CheckBox2->Checked;
		OptionsForm->CheckBox2->Tag = 0;
	}
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::ChangeAmplification(bool bIncrease) {
	int value = device.deviceSettings.Amplification;
	value += (bIncrease)
		? device.deviceSettings.deltaAmplification : -device.deviceSettings.deltaAmplification;
	if (value > device.deviceSettings.MaxAmplification)
		value = device.deviceSettings.MaxAmplification;
	else if (value < device.deviceSettings.MinAmplification)
		value = device.deviceSettings.MinAmplification;
	SetAmplification(value);
	Sleep(300);
}

void __fastcall TMainForm::SetAmplification(WORD value) {
	if (!device.SetPhotomultiplierAndPolarity(value)) {
		Application->MessageBox(L"Ошибка!", L"Ошибка", MB_OK | MB_ICONERROR);
		return;
	}
	device.deviceSettings.Amplification = value;
	OptionsForm->Edit7->Text = IntToStr(value);
}

void __fastcall TMainForm::ChangeTemperature(bool bIncrease) {
	double value = device.deviceSettings.Temperature;
	value += (bIncrease)
		? device.deviceSettings.deltaTemperature : -device.deviceSettings.deltaTemperature;
	if (value > device.deviceSettings.MaxTemperature)
		value = device.deviceSettings.MaxTemperature;
	else if (value < device.deviceSettings.MinTemperature)
		value = device.deviceSettings.MinTemperature;
	SetTemperature(value);
	Sleep(300);
}

void __fastcall TMainForm::SetTemperature(double value) {
	if (!device.SetTemperature(value)) {
		Application->MessageBox(L"Ошибка!", L"Ошибка", MB_OK | MB_ICONERROR);
		return;
	}
	device.deviceSettings.Temperature = value;
	OptionsForm->Edit8->Text = FloatToStr(value);
}

void __fastcall TMainForm::ChangeAngle(bool bIncrease) {
	double value = device.deviceSettings.Angle;
	value += (bIncrease)
		? device.deviceSettings.deltaAngle : -device.deviceSettings.deltaAngle;
	if (value > device.deviceSettings.MaxAngle)
		value = device.deviceSettings.MaxAngle;
	else if (value < device.deviceSettings.MinAngle)
		value = device.deviceSettings.MinAngle;
	SetAngle(value);
}

void __fastcall TMainForm::SetAngle(double value) {
	if (!device.SetAngle(value)) {
		Application->MessageBox(L"Ошибка!", L"Ошибка", MB_OK | MB_ICONERROR);
		return;
	}
	device.deviceSettings.Angle = value;
	//OptionsForm->Edit9->Text = FloatToStr(value);
}

void __fastcall TMainForm::ChangeReadDataBlock(bool bIncrease) {
	int value = OptionsForm->Edit11->Text.ToInt();
	value += (bIncrease)
		? device.deviceSettings.deltaReadDataBlock : -device.deviceSettings.deltaReadDataBlock;
	if (value > device.deviceSettings.MaxReadDataBlock)
		value = device.deviceSettings.MaxReadDataBlock;
	else if (value < device.deviceSettings.MinReadDataBlock)
		value = device.deviceSettings.MinReadDataBlock;
	OptionsForm->Edit7->Text = IntToStr(value);
	if (!device.SetLength(value))
		Application->MessageBox(L"Ошибка!", L"Ошибка", MB_OK | MB_ICONERROR);
}

void __fastcall TMainForm::edtFEU_Init() {
	try {
		int value = (OptionsForm->CheckBox2->Checked)
			? OptionsForm->Edit7->Text.ToInt() : 0;
		if (value > device.deviceSettings.MaxAmplification) {
			device.deviceSettings.Amplification =
				device.deviceSettings.MaxAmplification;
			OptionsForm->Edit7->Text = IntToStr
				(device.deviceSettings.Amplification);
		}
		else if (value < device.deviceSettings.MinAmplification) {
			device.deviceSettings.Amplification =
				device.deviceSettings.MinAmplification;
			OptionsForm->Edit7->Text = IntToStr
				(device.deviceSettings.Amplification);
		}
		else
			device.deviceSettings.Amplification = value;
		if (!device.SetPhotomultiplierAndPolarity
			(device.deviceSettings.Amplification))
			Application->MessageBox(L"Ошибка установки напряжения!", L"Ошибка",
			MB_OK | MB_ICONERROR);
	}
	catch(...) {
		Application->MessageBox(L"Ошибка", L"Ошибка", MB_OK | MB_ICONERROR);
		OptionsForm->Edit7->Text = IntToStr
			(device.deviceSettings.Amplification);
	}
}

void __fastcall TMainForm::edtTemperature_Init() {
	try {
		double value = OptionsForm->Edit8->Text.ToDouble();
		if (value > device.deviceSettings.MaxTemperature) {
			device.deviceSettings.Temperature =
				device.deviceSettings.MaxTemperature;
			OptionsForm->Edit8->Text = FloatToStr
				(device.deviceSettings.Temperature);
		}
		else if (value < device.deviceSettings.MinTemperature) {
			device.deviceSettings.Temperature =
				device.deviceSettings.MinTemperature;
			OptionsForm->Edit8->Text = FloatToStr
				(device.deviceSettings.Temperature);

		}
		else
			device.deviceSettings.Temperature = value;
		if (!device.SetTemperature(device.deviceSettings.Temperature))
			Application->MessageBox(L"Ошибка установки температуры!",
			L"Ошибка", MB_OK | MB_ICONERROR);
	}
	catch(...) {
		Application->MessageBox(L"Ошибка", L"Ошибка", MB_OK | MB_ICONERROR);
		OptionsForm->Edit8->Text = FloatToStr
			(device.deviceSettings.Temperature);
	}
}

void __fastcall TMainForm::edtAngle_Init() {
	try {
		double value = OptionsForm->Edit9->Text.ToDouble();
		if (value > device.deviceSettings.MaxAngle) {
			device.deviceSettings.Angle = device.deviceSettings.MaxAngle;
			OptionsForm->Edit9->Text = FloatToStr(device.deviceSettings.Angle);
		}
		else if (value < device.deviceSettings.MinAngle) {
			device.deviceSettings.Angle = device.deviceSettings.MinAngle;
			OptionsForm->Edit9->Text = FloatToStr(device.deviceSettings.Angle);
		}
		else {
			SetAngle(value);
			device.deviceSettings.Angle = value;
		}
	}
	catch(...) {
		Application->MessageBox(L"Ошибка", L"Ошибка", MB_OK | MB_ICONERROR);
		OptionsForm->Edit9->Text = FloatToStr(device.deviceSettings.Angle);
	}
}

void __fastcall TMainForm::edtReadDataBlock_Init() {
	try {
		int value = OptionsForm->Edit11->Text.ToInt();
		if (value > device.deviceSettings.MaxReadDataBlock) {
			device.deviceSettings.ReadDataBlock =
				device.deviceSettings.MaxReadDataBlock;
			OptionsForm->Edit11->Text = IntToStr
				(device.deviceSettings.ReadDataBlock);
		}
		else if (value < device.deviceSettings.MinReadDataBlock) {
			device.deviceSettings.ReadDataBlock =
				device.deviceSettings.MinReadDataBlock;
			OptionsForm->Edit11->Text = IntToStr
				(device.deviceSettings.ReadDataBlock);
		}
		else
			device.deviceSettings.ReadDataBlock = value;
	}
	catch(...) {
		Application->MessageBox(L"Ошибка", L"Ошибка", MB_OK | MB_ICONERROR);
		OptionsForm->Edit11->Text = IntToStr
			(device.deviceSettings.ReadDataBlock);
	}
}

void __fastcall TMainForm::cspnbtnFEUDownClick(TObject *Sender) {
	ChangeAmplification(false);
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::cspnbtnFEUUpClick(TObject *Sender) {
	ChangeAmplification(true);
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::cspnbtnTemperatureDownClick(TObject *Sender) {
	ChangeTemperature(false);
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::cspnbtnTemperatureUpClick(TObject *Sender) {
	ChangeTemperature(true);
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::cspnbtnAngleDownClick(TObject *Sender) {
	ChangeAngle(false);
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::cspnbtnAngleUpClick(TObject *Sender) {
	ChangeAngle(true);
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::cspnbtnReadDataBlockDownClick(TObject *Sender) {
	ChangeReadDataBlock(false);
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::cspnbtnReadDataBlockUpClick(TObject *Sender) {
	ChangeReadDataBlock(true);
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::edtReadDataBlockExit(TObject *Sender) {
	edtReadDataBlock_Init();
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::edtReadDataBlockKeyUp(TObject *Sender, WORD &Key,
	TShiftState Shift)

{
	if (Key != '\r')
		return;
	edtReadDataBlock_Init();
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::bbtnSaveClick(TObject *Sender) {
	SaveDialog1->Filter = "Idata files | *.idata";
	SaveDialog1->InitialDir = ExtractFileDir(Application->ExeName);
	if (!SaveDialog1->Execute())
		return;
	UnicodeString uFileStr = SaveDialog1->FileName;
	uFileStr = ChangeFileExt(uFileStr, ".idata");
	if (!SaveDataToFile(uFileStr))
		Application->MessageBox(L"Ошибка", L"Ошибка", MB_OK | MB_ICONERROR);
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::bbtnReconnectClick(TObject *Sender) {
	//StopMonitoring();
	FTD2XX_Settings settings;
	device.ftd2xxDevice.CloseDevice();
	device.ftd2xxDevice.OpenDevice(0, settings);
	device.ftd2xxDevice.SetUSBParameters(261120, 0);
	//StartMonitoring();
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::edtFEUKeyPress(TObject *Sender, wchar_t &Key) {
	if (Key != 13)
		return;
	edtFEU_Init();
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::edtTemperatureKeyPress
	(TObject *Sender, wchar_t &Key) {
	if (Key != 13)
		return;
	edtTemperature_Init();
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::edtAngleKeyPress(TObject *Sender, wchar_t &Key) {
	if (Key != 13)
		return;
	edtAngle_Init();
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::spbtnReadDataClick(TObject *Sender) {
	// if(spbtnReadData->Tag)
	// return;
	TCursor crDefaultCursor = Screen->Cursor;

	try {
		// spbtnReadData->Tag = 1;
		Screen->Cursor = crHourGlass;
		StopMonitoring();
		ProgressBar->Visible = 1;
		Application->ProcessMessages();
		// bbtnSave->Visible = false;
		bool bSuccess = ReadDataEx();
		ProgressBar->Visible = 0;
		Application->ProcessMessages();
		// bbtnSave->Visible = bSuccess;
		// NewDataView();

		AcfParams.T = AcfParams.Curr_T;

		int n0 = measuresData.Count() * BLOCK_DATA_NUM;
		WORD *p = new WORD[n0];
		double t;

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

		ProcessAcfData(p, n0, t);

		delete[]p;
	}
	__finally {
		SetEvent(CaptureDone);
		StartMonitoring();
		Screen->Cursor = crDefaultCursor;
		spbtnReadData->Tag = 0;
	}
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::FormShow(TObject *Sender) {
	bbtnReconnectClick(NULL);
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::cmbbxFrequencyKeyDown(TObject *Sender, WORD &Key,
	TShiftState Shift)

{
	Key = NULL;
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::cmbbxFrequencyKeyUp(TObject *Sender, WORD &Key,
	TShiftState Shift)

{
	Key = NULL;
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::cmbbxFrequencyClick(TObject *Sender) {
	int index = OptionsForm->ComboBox1->ItemIndex;
	if (!device.SetFrequency(index))
		Application->MessageBox(L"Ошибка", L"Ошибка", MB_OK | MB_ICONERROR);
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::Action1Execute(TObject *Sender) {
	OpenDialog1->InitialDir = ExtractFileDir(Application->ExeName);
	OpenDialog1->Filter = "idata files|*.idata";
	if (!OpenDialog1->Execute())
		return;

	DWORD n0;
	WORD q;
	double t;
	WORD *p;
	AcfParams.T = AcfParams.Curr_T;

	int iFileHandle = FileOpen(OpenDialog1->FileName, fmOpenRead);
	try {
		n0 = GetFileSize((void*)iFileHandle, NULL) / 2 - 1;
		FileRead(iFileHandle, &q, sizeof(WORD));
		switch(q) {
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
		p = new WORD[n0];

		FileRead(iFileHandle, (void*)p, n0*sizeof(WORD));
	}
	catch(...) {
		FileClose(iFileHandle);
	}
	FileClose(iFileHandle);

	AcfParams.t_discr = t;
	// AcfParams.vybr=0;
	// AcfParams.zashk=0;
	//
	// for (int i=0; i<n0; i++) {
	// if (p[i]<8) {
	// AcfParams.vybr+=1;
	// }
	// if (p[i]>65533) {
	// AcfParams.zashk+=1;
	// }
	// }
	// AcfParams.nRawData=n0-AcfParams.vybr;
	// RawData.Clear();
	// RawData.Init(AcfParams.nRawData, 1, mitDouble);
	//
	// int ind = 0;
	// for (int i=0; i<n0; i++) {
	// if (p[i]>=8)
	// {
	// if (ind == 0) {
	// RawData.a[ind]=p[i]*t;
	// }
	// else
	// RawData.a[ind]=RawData.a[ind-1]+p[i]*t;
	// ind++;
	// }
	// }
	//
	// AcfParams._time=RawData.a[AcfParams.nRawData-1];
	//
	//
	//
	// Label6->Caption="Длительность дискрета: "+FloatToStr(t)+" нс";
	// Label7->Caption="Общее время выборки: " + FloatToStrF(AcfParams._time*1e-6, ffFixed, 5, 2)+" мс";
	// Label8->Caption="Количество выбросов: " + IntToStr(AcfParams.vybr);
	// Label9->Caption="Процент зашкалов: "+ FloatToStr(AcfParams.zashk/n0*100)+"%";
	// Label1->Caption="Число импульсов в ед. времени: "+ FloatToStrF(1e9*n0/AcfParams._time, ffFixed, 7, 2);
	ProcessAcfData(p, n0, t);

	/*
	int n = 2e6;
	double *p1 = new double[n];
	double dt = 0.5, t0 = 0;
	Interp(p1, n, t0, dt);



	Series1->Clear();
	Series4->Clear();

	//   MeanFilter(p1, n, 140);

	//   GaussFilter(p1, n, 50);

	for (int i=0; i < 2e3; i++) {
	//	 if (p[i]*t*1e-3 < 0.5)
	//	 {
	//	   Series1->AddXY(i, p[i]*t*1e-3);
	//	 }
	//	 else
	//	 {
	//	   Series1->AddNullXY(i, 0);
	//	 }

	Series1->AddXY(i*dt, p1[i]);
	//	 Series4->AddXY(RawData_t.a[i], 0);
	}

	for (int i=0; i < 100; i++)
	{
	Series1->AddXY(RawData_t.a[i], 0);

	//	 Series1->AddXY(i*dt+t0, p1[i]);


	}

	Series1->Clear();
	int n1 = (n0 > 1e4) ? (1e4) : (n0);
	for (int i=0; i < n1; i++)
	{
	Series1->AddXY(i, p[i]);
	}

	 */

	delete[]p;
	// delete [] p1;

	PageControl1->ActivePageIndex = 0;
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::ToolButton5Click(TObject *Sender) {
	/* OptionsForm->Button1Click(Sender);

	ProgressBar->Position=0;
	ProgressBar->Max=100;
	ProgressBar->Visible=true;
	Series1->Clear();
	Chart1->Axes->Bottom->Logarithmic=true;

	acfThread = new TAcfThread(true);
	acfThread->FreeOnTerminate=true;
	acfThread->Priority=tpHigher;
	acfThread->Resume();
	 */

	ReportForm->Show();
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::ToolButton4Click(TObject *Sender) {
	Close();
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::ToolButton2Click(TObject *Sender) {

	OptionsForm->Button2->Caption = "OK";
	StartMonitoring();

	if (OptionsFormExecute()) {
        StopMonitoring();
		bool error;
		TDeviceInitThread *t = new TDeviceInitThread(true);
		t->FreeOnTerminate = true;
		t->monitoring = true;
		t->error_ = &error;
		t->Start();
	}

    StopMonitoring();
	return;

	OptionsForm->CheckBox1->Checked = AcfParams.lfd;
	OptionsForm->CheckBox2->Checked = AcfParams.feu;
	OptionsForm->ComboBox1->ItemIndex = device.deviceSettings.Frequency;

	OptionsForm->Edit7->Text = IntToStr(device.deviceSettings.Amplification);
	OptionsForm->Edit8->Text = FloatToStr(device.deviceSettings.Temperature);
	OptionsForm->Edit9->Text = FloatToStr(device.deviceSettings.Angle);
	OptionsForm->Edit11->Text = IntToStr(device.deviceSettings.ReadDataBlock);
	OptionsForm->ComboBox1->ItemIndex = device.deviceSettings.Frequency;

	OptionsForm->Edit12->Text = FloatToStr(AcfParams.n);
	// OptionsForm->Edit13->Text = FloatToStr(AcfParams.eta);
	// OptionsForm->Edit14->Text = FloatToStr(AcfParams.theta);
	// OptionsForm->Edit15->Text = FloatToStr(AcfParams.T);
	OptionsForm->Edit16->Text = FloatToStr(AcfParams.lambda);
	OptionsForm->Edit17->Text = IntToStr(AcfParams.n_mean);

	OptionsForm->Edit1->Text = IntToStr(AcfParams.dt0);
	OptionsForm->Edit2->Text = IntToStr(AcfParams._p);
	OptionsForm->Edit3->Text = IntToStr(AcfParams._m);
	OptionsForm->Edit5->Text = IntToStr(AcfParams.n_min);
	OptionsForm->Edit6->Text = FloatToStr(AcfParams.t_block);
	OptionsForm->Edit7->Text = IntToStr(AcfParams.n_mean);
	OptionsForm->Edit4->Text = IntToStr(AcfParams.Gauss_w);
	OptionsForm->Edit10->Text = FloatToStr(AcfParams.cut);
	OptionsForm->Edit20->Text = IntToStr(AcfParams.cut_after);
	//OptionsForm->Edit21->Text = IntToStr(AcfParams._vybr); ---------------- VYBROSY!!! ---------------------------
	OptionsForm->Edit22->Text = IntToStr(AcfParams.ns);
	OptionsForm->Edit23->Text = FloatToStr(AcfParams.alpha);
	OptionsForm->Edit24->Text = FloatToStr(AcfParams.cont_low);
	OptionsForm->Edit25->Text = FloatToStr(AcfParams.cont_high);
	OptionsForm->Edit26->Text = FloatToStr(AcfParams.cont_low_graph);
	OptionsForm->Edit27->Text = FloatToStr(AcfParams.cont_high_graph);

	OptionsForm->Edit18->Text = FloatToStr(AcfParams.angle_init);
	OptionsForm->Edit19->Text = FloatToStr(AcfParams.angle_step);
	OptionsForm->CheckBox3->Checked = AcfParams.cont_hist;
	OptionsForm->CheckBox4->Checked = AcfParams.right_boundary;

	if (OptionsForm->ShowModal() != mrOk) {
		return;
	}

	OptionsForm->Button5Click(this);

	device.deviceSettings.Frequency = OptionsForm->ComboBox1->ItemIndex;
	device.deviceSettings.Temperature = CheckString
		(OptionsForm->Edit8->Text.t_str());
	device.deviceSettings.ReadDataBlock = OptionsForm->Edit11->Text.ToInt();
	device.deviceSettings.Angle = CheckString(OptionsForm->Edit9->Text.t_str());

	AcfParams.lfd = OptionsForm->CheckBox1->Checked;
	AcfParams.feu = OptionsForm->CheckBox2->Checked;
	AcfParams.angle_init = CheckString(OptionsForm->Edit18->Text.t_str());
	AcfParams.angle_step = CheckString(OptionsForm->Edit19->Text.t_str());
	AcfParams.n = OptionsForm->Edit12->Text.ToDouble();
	// AcfParams.eta=OptionsForm->Edit13->Text.ToDouble();
	// AcfParams.theta=OptionsForm->Edit14->Text.ToDouble();
	// AcfParams.T=OptionsForm->Edit15->Text.ToDouble();
	AcfParams.lambda = OptionsForm->Edit16->Text.ToDouble();
	AcfParams.lfd = OptionsForm->CheckBox1->Checked;
	AcfParams.feu = OptionsForm->CheckBox2->Checked;
	AcfParams.t_block = OptionsForm->Edit6->Text.ToInt();
	AcfParams.cut = CheckString(OptionsForm->Edit10->Text.t_str());
	AcfParams.cut_after = OptionsForm->Edit20->Text.ToInt();
//	AcfParams._vybr = OptionsForm->Edit21->Text.ToInt(); -----------------------------VYBROSY - ----------------
	AcfParams.ns = CheckString(OptionsForm->Edit22->Text.t_str());
	AcfParams.alpha = CheckString(OptionsForm->Edit23->Text.t_str());
	AcfParams.cont_low = CheckString(OptionsForm->Edit24->Text.t_str());
	AcfParams.cont_high = CheckString(OptionsForm->Edit25->Text.t_str());
	AcfParams.cont_hist = OptionsForm->CheckBox3->Checked;
	AcfParams.cont_low_graph = CheckString(OptionsForm->Edit26->Text.t_str());
	AcfParams.cont_high_graph = CheckString(OptionsForm->Edit27->Text.t_str());
	AcfParams.right_boundary = OptionsForm->CheckBox4->Checked;
}

// ---------------------------------------------------------------------------

void __fastcall TMainForm::ToolButton3Click(TObject *Sender) {
	SaveDialog1->Filter =
		"Текстовые файлы|*.txt|Crv-файлы|*.crv|Формат DynaLS|*.tdf";
	//SaveDialog1->InitialDir = ExtractFileDir(Application->ExeName);
	if (!SaveDialog1->Execute())
		return;

	switch(SaveDialog1->FilterIndex) {
	case 1:
		SaveAcf2Txt(SaveDialog1->FileName);
		break;
	case 2:
		SaveAcf2Crv(SaveDialog1->FileName);
		break;
	case 3:
		SaveAcf2Tdf(SaveDialog1->FileName);
		break;
	}
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::N4Click(TObject *Sender) {
	struct __point {
		double wave, value;
	};

	OpenDialog1->InitialDir = ExtractFileDir(Application->ExeName);
	OpenDialog1->Filter = "Crv-files|*.crv|Файлы DynaLS|*.tdf";
	if (!OpenDialog1->Execute())
		return;

	UnicodeString f_ext = ExtractFileExt(OpenDialog1->FileName);
	if (f_ext == ".tdf") {
		OpenTdf(OpenDialog1->FileName);
		return;
	}

	__point* points = NULL;
	unsigned count;
	int iFileHandle = -1;

	try {
		iFileHandle = FileOpen(OpenDialog1->FileName, fmOpenRead);
		if (iFileHandle == -1)
			Abort();

		bool bType;
		double dish_thickness;

		FileRead(iFileHandle, &bType, sizeof(bool));
		FileRead(iFileHandle, &dish_thickness, sizeof(double));
		FileRead(iFileHandle, &count, sizeof(unsigned));

		points = new __point[count];
		FileRead(iFileHandle, points, count*sizeof(__point));
		FileClose(iFileHandle);

		acf.Clear();
		acf_t.Clear();
		AcfParams.n_avt = count;
		acf.Init(count, 1, mitDouble);
		acf_t.Init(count, 1, mitDouble);

		for (size_t i = 0; i < count; i++) {
			acf.a[i] = points[i].value;
			acf_t.a[i] = points[i].wave;
		}

		delete[]points;

		LineSeries3->Clear();

		for (size_t i = 0; i < count; i++) {
			LineSeries3->AddXY(acf_t.a[i], acf.a[i]);
		}
		PageControl1->ActivePageIndex = 2;

	}
	catch(...) {

		if (points)
			delete[]points;
		if (iFileHandle != -1) {
			FileClose(iFileHandle);
		}

	}

}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::Button1Click(TObject *Sender) {
	if (!acf.load) {
		return;
	}

	int cnt, w, ind;
	double max_100, _max;
	// double a0, a1, a2;
	double mean = 0, left, right;
	AcfParams.a0 = 0;
	AcfParams.a1 = 0;
	AcfParams.a2 = 0;

	if (AcfParams.right_boundary) {
		ind = 0;

		for (int i = 0; i < acf_t.w; i++) {
			if (acf_t.a[i] > AcfParams.cut) {
				ind = i;
				break;
			}
		}

		double thr = acf.a[ind] / 50;

		ind = 0;
		for (int i = 0; i < acf_t.w; i++) {
			if (acf.a[i] < thr) {
				ind = i;
				break;
			}
		}
		left = AcfParams.cut;
		right = acf_t.a[ind];
	}
	else {
		left = AcfParams.cut;
		right = AcfParams.cut_after;
	}

	/*
	cnt=0;
	for (int i=0; i < acf_t.w; i++) {
	if (acf_t.a[i] > AcfParams.cut) {
	cnt++;
	}
	}

	double *p = new double[cnt];
	double *p_t = new double[cnt];

	cnt=0;
	for (int i=0; i < acf_t.w; i++) {
	if (acf_t.a[i] > AcfParams.cut) {
	p[cnt]=acf.a[i];
	p_t[cnt]=acf_t.a[i];
	cnt++;
	}
	}

	 */
	w = acf.w;
	/*
	for (int i=0; i < w; i++) {
	if (acf.a[i] < 0) {
	ShowMessage("Ошибка! Автокорреляционная функция содержит отрицательные элементы");
	return;
	}
	}

	_max=-MaxInt;

	for (int i=0; i < w; i++) {
	if ((acf_t.a[i] >= AcfParams.cut) && (acf.a[i] > _max))  {
	_max=acf.a[i];
	}
	}

	max_100=_max/15;
	 */

	cnt = 0;
	for (int i = 0; (i < w) /* && (acf.a[i] > max_100) */ ; i++) {
		if ((acf_t.a[i] >= left) && (acf_t.a[i] <= right)) {
			cnt++;
			/*
			if (acf.a[i] < 0) {
			ShowMessage("Ошибка! Автокорреляционная функция содержит отрицательные элементы");
			return;
			}
			 */
		}
	}

	if (cnt < 20) {
		ShowMessage
			("Недостаточное количество точек автокорреляционной функции");
		return;
	}

	cum.Clear();
	cum.Init(cnt, 1, mitDouble);
	cum_t.Clear();
	cum_t.Init(cnt, 1, mitDouble);

	cnt = 0;
	for (int i = 0; (i < w) /* && (acf.a[i] > max_100) */ ; i++) {
		if ((acf_t.a[i] >= left) && (acf_t.a[i] <= right)) {
			if (acf.a[i] < 0) {
				cum.a[cnt] = 1e-3;
			}
			else {
				cum.a[cnt] = acf.a[i];
			}
			cum_t.a[cnt] = acf_t.a[i];
			cnt++;
		}
	}

	double *_w = new double[cnt];

	mean = 0;
	for (int i = 0; i < cnt; i++) {
		mean += pow(cum.a[i], 2);
	}
	mean /= cnt;

	for (int i = 0; i < cnt; i++) {
		_w[i] = pow(cum.a[i], 2) / mean;
		cum.a[i] = Ln(cum.a[i]) / 2;
	}

	HINSTANCE lib = LoadLibrary("dls.dll");
	pDLSCumulants DLSCumulants = (pDLSCumulants)GetProcAddress
		(lib, "DLSCumulants");

	DLSCumulants(cum.a, cum_t.a, _w, cnt, AcfParams.a0, AcfParams.a1,
		AcfParams.a2);

	FreeLibrary(lib);

	double *temp = new double[cnt];

	AcfParams.a1 *= 1e6;
	AcfParams.a2 *= 1e12;

	for (int i = 0; i < cnt; i++) {
		cum_t.a[i] *= 1e-6;
		temp[i] = AcfParams.a0 - AcfParams.a1 * cum_t.a[i]
			+ AcfParams.a2 * cum_t.a[i] * cum_t.a[i];
	}

	Series2->Clear();
	Series3->Clear();
	/*
	for (int i = 0; i < cnt; i++) {
	//	Series2->AddXY(cum_t.a[i], cum.a[i]);
	//	Series3->AddXY(cum_t.a[i], temp[i]);

	//	Series2->AddXY(cum_t.a[i], exp(2*cum.a[i]));
	Series2->AddXY(cum_t.a[i]*1e6, exp(2*temp[i]));
	}

	for (int i = 0; i < w; i++) {
	Series3->AddXY(acf_t.a[i], acf.a[i]);

	}
	 */

	cnt = 0;
	for (int i = 0; i < w; i++) {
		if ((acf_t.a[i] >= left) && (acf_t.a[i] <= right)) {
			Series3->AddXY(acf_t.a[i], acf.a[i]);
			Series2->AddXY(cum_t.a[cnt] * 1e6, exp(2 * temp[cnt]));
			cnt++;
		}
	}

	delete[]temp;
	delete[]_w;

	AcfParams.T = 298.15;
	device.deviceSettings.Angle = 90;

	AcfParams.PI = fabs(2 * AcfParams.a2 / pow(AcfParams.a1, 2));

	double eta = FormulaPuazeilia(AcfParams.T);
	double q = 4 * M_PI * AcfParams.n * sin
		(device.deviceSettings.Angle / 2 * M_PI / 180) / (AcfParams.lambda * 1e-9);

	AcfParams.x_pcs = AcfParams.Kb * AcfParams.T * pow(q, 2) /
		(3 * M_PI * eta * AcfParams.a1) * 1e9;

	TGrad t;
	double a, b;
	if (AcfParams.grad_n >= 0) {
		t = AcfParams.grad.at(AcfParams.grad_n);
		a = t.a.ToDouble();
		b = t.b.ToDouble();
		AcfParams.x_pcs = a + b * AcfParams.x_pcs;
	}

	Label2->Caption = "Показатель полидисперсности = " + FloatToStrF
		(AcfParams.PI, ffFixed, 5, 3);
	Label3->Caption = "Средний диаметр частиц = " + FloatToStrF
		(AcfParams.x_pcs, ffFixed, 5, 2) + " нм";
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::CheckBox2Click(TObject *Sender) {
	Chart2->UndoZoom();
	Chart2->Axes->Bottom->Logarithmic = CheckBox2->Checked;
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::Button2Click(TObject *Sender) {

	if (!acf.load){
		ShowMessage("АКФ нe рассчитана!");
		return;
	}

	/*
	if (acf.a[0] < 0) {
	ShowMessage("Ошибка! Автокорреляционная функция содержит отрицательные элементы");
	return;
	}
	 */
	int w = acf.w, ind_left, ind_right;
//	double eta = FormulaPuazeilia(AcfParams.T);

	double q = 4*M_PI*DataParams.RefIndex*sin(DataParams.ScatAngle/2*M_PI/180)/(DataParams.WaveLength*1e-9);

	double tmp = 3*M_PI*DataParams.Viscosity/(AcfParams.Kb*DataParams.Temperature*pow(q, 2))*1e-3;

	double left, right;

	if (AcfParams.right_boundary) {
		int ind_left = 0;

		while ((ind_left < acf.w) && (acf_t.a[ind_left] < AcfParams.cut))
			ind_left++;

		/*
		for (int i = 0; i < acf_t.w; i++) {
			if (acf_t.a[i] > AcfParams.cut) {
				ind = i;
				break;
			}
		}

		*/
		double thr = acf.a[ind_left] / 50;

		ind_right = ind_left;
		while ((ind_right < acf_t.w) && (acf.a[ind_right] >= thr))
			ind_right++;

		/*
		ind = 0;
		for (int i = 0; i < acf_t.w; i++) {
			if (acf.a[i] < thr) {
				ind = i;
				break;
			}
         */


		left = AcfParams.cut;
		right = acf_t.a[ind_right];
	}
	else {
       	ind_left = 0;
        while ((ind_left < acf_t.w) && (acf_t.a[ind_left] < AcfParams.cut))
        	ind_left++;

        ind_right = ind_left;
        while ((ind_right < acf_t.w) && (acf_t.a[ind_right] < AcfParams.cut_after))
        	ind_right++;

		left = AcfParams.cut;
		right = AcfParams.cut_after;
	}
	/*
	double _max = -MaxInt;
	for (int i = 0; i < w; i++) {
		if ((acf_t.a[i] >= left) && (acf.a[i] > _max) && (acf_t.a[i] <= right))
		{
			_max = acf.a[i];
		}
	}

	*/

	// double max_100 = _max/100;

	int nt = ind_right-ind_left;

   /*
	for (int i = 0; i < w; i++) {
		if ((acf_t.a[i] >= left) && (acf_t.a[i] <= right)) {
			nt++;

			if (acf.a[i] < 0) {
			ShowMessage("Ошибка! Автокорреляционная функция содержит отрицательные элементы");
			return;
			}

		}
	}
			 */

	if (nt < 20) {
		ShowMessage
			("Недостаточное количество точек автокорреляционной функции");
		return;
	}

	cum.Clear();
	cum.Init(nt, 1, mitDouble);
	cum_t.Clear();
	cum_t.Init(nt, 1, mitDouble);

//	nt = 0;
	for (int i=ind_left; i < ind_right; i++) {
		if (acf.a[i] < 0)
			cum.a[i-ind_left] = 1e-5;
		else
			cum.a[i-ind_left] = acf.a[i]; /// _max;
		cum_t.a[i-ind_left] = acf_t.a[i];
	}


	/*
	for (int i = 0; i < w; i++) {
		if ((acf_t.a[i] >= left) && (acf_t.a[i] <= right)) {
			if (acf.a[i] < 0) {
				cum.a[nt] = 1e-5;
			}
			else {
				cum.a[nt] = acf.a[i] / _max;
			}
			cum_t.a[nt] = acf_t.a[i];
			nt++;
		}
	} /*
	LineSeries1->Clear();
	for (int i=0; i < cum.w; i++) {
	LineSeries1->AddXY(cum_t.a[i], cum.a[i]);
	}


	return;
	 */

	// AcfParams.ns=Edit1->Text.ToInt();
	// AcfParams.alpha=CheckString(Edit2->Text);

	contin_g.Clear();
	contin_g.Init(AcfParams.ns, 1, mitDouble, 1);

	contin_s.Clear();
	contin_s.Init(AcfParams.ns, 1, mitDouble);

	double d1 = log10(tmp * AcfParams.cont_low), d2 = log10
		(tmp * AcfParams.cont_high);

	HINSTANCE lib = LoadLibrary("dls.dll");
	pDLSLogSpace DLSLogSpace = (pDLSLogSpace)GetProcAddress(lib, "LogSpace");
	DLSLogSpace(d1, d2, AcfParams.ns, contin_s.a);
	FreeLibrary(lib);

//	Panel1->Visible = true;
	LineSeries1->Clear();

	Memo1->Lines->Add("");
    Memo1->Lines->Add("Расчет распределения частиц... ");
	DLSContinThread = new TDLSContinThread(true);
	DLSContinThread->FreeOnTerminate = true;
	DLSContinThread->nt = nt;
	DLSContinThread->k = tmp;
	DLSContinThread->Start();

	// HINSTANCE lib = LoadLibrary("dls.dll");
	// pDLSContin DLSContin = (pDLSContin)GetProcAddress(lib, "DLSContin");

	// DLSContin(cum_t.a, cum.a, contin_s.a, contin_g.a, AcfParams.ns, nt, AcfParams.alpha, 1e-6);
	//
	// FreeLibrary(lib);

	// LineSeries1->Clear();
	// for (int i=0; i < AcfParams.ns; i++) {
	// LineSeries1->AddXY(contin_s.a[i]/tmp, contin_g.a[i]);
	// }

}
// --------------------------------------------------------------------------

void __fastcall TMainForm::Button3Click(TObject *Sender) {
	if (!RawData.load) {
		return;
	}

	// OptionsForm->Button1Click(Sender);
	ProgressBar1->Position = 0;
	ProgressBar1->Max = 100;
	ProgressBar1->Visible = true;
	// Label13->Caption="Расcчитывается блок 1 из "+IntToStr(AcfParams.n_block);
	Label13->Visible = true;

	LineSeries3->Clear();
	Series5->Clear();
	/*
	pmAcfThread = new TpmAcfThread(true);
	pmAcfThread->FreeOnTerminate=true;
	pmAcfThread->Resume();

	 */

	acfThread = new TAcfThread(true);
	acfThread->FreeOnTerminate = true;
	acfThread->Priority = tpHigher;
	acfThread->Start();

	Button6->Visible = true;
	Button3->Enabled = false;

	return;

	acf.Init(50, 1, mitDouble);

	HINSTANCE lib = LoadLibrary("dls.dll");
	pDLSLogSpace DLSLogSpace = (pDLSLogSpace)GetProcAddress(lib, "LogSpace");
	//
	DLSLogSpace(0, 4, acf.w, acf.a);

	FreeLibrary(lib);

	return;

	int f = FileOpen("file_to_open.bin", fmOpenRead);

	unsigned short width, height;
	float ScaleX, ScaleY;

	FileRead(f, &width, 2); // количество столбцов
	FileRead(f, &height, 2); // количество строк

	float *data = new float[width * height]; // массив данных

	FileRead(f, data, width * height * 4);

	FileRead(f, &ScaleX, 4); // Масштаб пикселя по X
	FileRead(f, &ScaleY, 4); // Масштаб пикселя по Y

	FileClose(f);

	delete[]data;

}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::CheckBox3Click(TObject *Sender) {
	Chart3->UndoZoom();
	Chart3->Axes->Bottom->Logarithmic = CheckBox3->Checked;
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::Button4Click(TObject *Sender) {
	if (!RawData.load) {
		return;
	}
	Panel2->Visible = true;

	LineSeries2->Clear();

	DLSFFTThread = new TDLSFFTThread(True);
	DLSFFTThread->FreeOnTerminate = true;
	DLSFFTThread->time = CheckString(Edit3->Text.t_str());
	DLSFFTThread->n0 = Edit4->Text.ToInt();
	// DLSFFTThread->d = new double[DLSFFTThread->n0];
	//
	// for (int i=0; i < DLSFFTThread->n0; i++) {
	// DLSFFTThread->d[i]=sin(2*M_PI*i*100/DLSFFTThread->n0);
	// }
	DLSFFTThread->Start();

}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::CheckBox4Click(TObject *Sender) {
	Chart5->UndoZoom();
	Chart5->Axes->Bottom->Logarithmic = CheckBox4->Checked;
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::N5Click(TObject *Sender) {
	if (!contin_g.load)
		return;

	SaveDialog1->Filter = "Crv-файлы|*.crv";
	SaveDialog1->InitialDir = ExtractFileDir(Application->ExeName);
	if (!SaveDialog1->Execute())
		return;

	CreateCrv(contin_g.a, contin_s.a, contin_g.w, SaveDialog1->FileName);
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::Chart5MouseMove
	(TObject *Sender, TShiftState Shift, int X, int Y) {
	// double _x ,_y;
	// Chart5->Series[0]->GetCursorValues(_x, _y);
	// Label14->Caption="("+FloatToStrF(_x, ffGeneral, 5, 3)+"; "+FloatToStrF(_y, ffGeneral, 5, 3)+")";
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::Chart3MouseMove
	(TObject *Sender, TShiftState Shift, int X, int Y) {
	double _x, _y;
	// if (!contin_g.load) {
	// return;
	// }
	Chart3->Series[0]->GetCursorValues(_x, _y);
	// int ind = Chart3->Series[0]->GetCursorValueIndex();
	// if (ind >= 0) {
	// Label14->Caption="("+FloatToStrF(contin_g.a[ind], ffGeneral, 5, 3)+"; "+FloatToStrF(contin_s.a[ind], ffGeneral, 5, 3)+")";
	// }
	// Chart3->Series[0]->GetCursorValues(_x, _y);
	//
	Label14->Caption = "(" + FloatToStrF(_x, ffGeneral, 5, 3)
		+ "; " + FloatToStrF(_y, ffGeneral, 5, 3) + ")";
	// Label14->Caption=IntToStr(ind);
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::FormClose(TObject *Sender, TCloseAction &Action) {
	WriteDlsINIFile(ExtractFilePath(Application->ExeName) + "dls.ini");
	AcfParams.grad.clear();
	CloseHandle(CaptureDone);
	CloseHandle(AcfDone);

	/*
	if (Memo1->Lines->Count)
	{
		UnicodeString s = pd.Path + "dls("+Now().FormatString("dd_MM_YYYY_hh_mm_ss")+").log";
		Memo1->Lines->SaveToFile(s);
	}
	*/
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::FormCreate(TObject *Sender) {
	UnicodeString s = ExtractFilePath(Application->ExeName) + "dls.ini";
	if (FileExists(s)) {
		ReadDlsINIFile(s);
	}

	CaptureDone = CreateEventA(NULL, true, false, NULL);
	AcfDone = CreateEventA(NULL, true, false, NULL);

//    OpenDialog1->InitialDir = ExtractFileDir(Application->ExeName);
//	SaveDialog1->InitialDir = ExtractFileDir(Application->ExeName);

	RegisterExt();

	if (ParamCount() > 0) {
		UnicodeString str = ParamStr(1);

		if (FileExists(str))
		{
			int n = pd_vector.size();
			pd_vector.push_back(TProjectData());
			OpenProject(str, pd_vector[n]);
		}
	}

}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::Button6Click(TObject *Sender) {
	acfThread->Terminate();
	// pmAcfThread->Terminate();
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::Button7Click(TObject *Sender) {
	if (!RawData.load) {
		return;
	}

	Series5->Clear();
	LineSeries3->Clear();

	pmAcfThread = new TpmAcfThread(true);
	pmAcfThread->FreeOnTerminate = true;
	pmAcfThread->Start();

	// Button6->Visible=true;
	// Button3->Enabled=false;
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::Button9Click(TObject *Sender) {

    TVirtualNode *t = ReportForm->VirtualStringTree1->RootNode->FirstChild;
    TReportData *data;
	bool new_ = true;
	UnicodeString name = pd__->Name_Spec;

	for (size_t i = 0; i < ReportForm->VirtualStringTree1->RootNodeCount; i++)
		if (t) {
			data = (TReportData*)ReportForm->VirtualStringTree1->GetNodeData(t);
			if (data)
				if (data->Name == name)
				{
					new_ = false;
					break;
				}
			t = t->NextSibling;
		}

	if (new_) {
    	t = ReportForm->VirtualStringTree1->AddChild(NULL);
		if (t) {
			t->States << vsExpanded;
			data = (TReportData*)ReportForm->VirtualStringTree1->GetNodeData(t);
			if (data) {
				data->Name = name;
				data->pcs = 0;
				data->pi = 0;
				data->rms = 0;
			}
		}
	}

    t = ReportForm->VirtualStringTree1->AddChild(t);
    if (t) {
    	data = (TReportData*)ReportForm->VirtualStringTree1->GetNodeData(t);
    	t->States << vsExpanded;
    	if (data) {
    		data->Name = IntToStr((int)t->Index + 1);
    		data->pcs = AcfParams.x_pcs;
    		data->pi = AcfParams.PI;
    		data->angle = DataParams.ScatAngle;
    		data->a1 = AcfParams.a1;
    		data->a2 = AcfParams.a2;
    		data->t = DataParams.Temperature;
    	}
    	t->CheckType = ctCheckBox;
    	t->CheckState = csCheckedNormal;
	}

	ReportForm->RecalculateReport();
	ReportForm->Show();

    return;




	Add2ReportForm->ComboBox1->Items->Clear();
	Add2ReportForm->ComboBox1->ItemIndex = -1;

	for (size_t i = 0; i < ReportForm->VirtualStringTree1->RootNodeCount; i++) {
		if (!(t == NULL)) {
			data = (TReportData*)ReportForm->VirtualStringTree1->GetNodeData(t);
			if (!(data == NULL)) {
				Add2ReportForm->ComboBox1->Items->Add(data->Name);
			}
			t = t->NextSibling;
		}

	}
	Add2ReportForm->ComboBox1->ItemIndex = 0;
	Add2ReportForm->add_new = false;
	Add2ReportForm->Edit1->Text = "";

	if (!(Add2ReportForm->ShowModal() == mrOk))
		return;
	if (Add2ReportForm->ComboBox1->ItemIndex == -1)
		return;

	if (Add2ReportForm->add_new) {
		t = ReportForm->VirtualStringTree1->AddChild(NULL);
		t->States << vsExpanded;
		if (!(t == NULL)) {
			data = (TReportData*)ReportForm->VirtualStringTree1->GetNodeData(t);
			if (!(data == NULL)) {
				data->Name = Add2ReportForm->ComboBox1->Items->Strings
					[Add2ReportForm->ind].t_str();
				data->pcs = 0;
				data->pi = 0;
				data->rms = 0;
			}
		}
		t = ReportForm->VirtualStringTree1->AddChild(t);
		if (!(t == NULL)) {
			data = (TReportData*)ReportForm->VirtualStringTree1->GetNodeData(t);
			if (!(data == NULL)) {
				data->Name = IntToStr((int)t->Index + 1);
				data->pcs = AcfParams.x_pcs;
				data->pi = AcfParams.PI;
				data->angle = DataParams.ScatAngle;
				data->a1 = AcfParams.a1;
				data->a2 = AcfParams.a2;
				data->t = DataParams.Temperature;
			}
			t->CheckType = ctCheckBox;
			t->CheckState = csCheckedNormal;
		}

	}
	else {
		t = ReportForm->VirtualStringTree1->RootNode->FirstChild;
		for (int i = 0; i < Add2ReportForm->ComboBox1->ItemIndex; i++) {
			if (!(t == NULL))
				t = t->NextSibling;
		}
		if (!(t == NULL)) {
			t = ReportForm->VirtualStringTree1->AddChild(t);
			if (!(t == NULL)) {
				data = (TReportData*)ReportForm->VirtualStringTree1->GetNodeData(t);
				if (!(data == NULL)) {
					data->Name = IntToStr((int)t->Index + 1);
					data->pcs = AcfParams.x_pcs;
					data->pi = AcfParams.PI;
					data->angle = DataParams.ScatAngle;
					data->a1 = AcfParams.a1;
					data->a2 = AcfParams.a2;
					data->t = DataParams.Temperature;
				}
				t->CheckType = ctCheckBox;
				t->CheckState = csCheckedNormal;
			}
		}
	}
	ReportForm->RecalculateReport();
	ReportForm->Show();
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::ToolButton6Click(TObject *Sender) {
	off(false);
	Application->ProcessMessages();
	AutoProgressForm->Show();
	AutoMeasureThread = new TAutoMeasureThread(true);
	AutoMeasureThread->FreeOnTerminate = true;
	AutoMeasureThread->Start();
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::off(bool b) {
	for (int i = 0; i < ToolBar1->ButtonCount; i++) {
		ToolBar1->Buttons[i]->Enabled = b;
	}
	ToolButton7->Enabled = b;
	ToolButton8->Enabled = b;
	ToolButton9->Enabled = b;

	// PageControl1->Enabled=b;
	// ToolBar1->Enabled=b;
};

void __fastcall TMainForm::Button8Click(TObject *Sender) {

	OptionsForm->Button2->Caption = "Запуск";

	if (!OptionsFormExecute())
		return;


	UnicodeString s = AcfParams.Save_Dir +"\\" +AcfParams.File_Name + ".dls";

	if (FileExists(s))
		if ((MessageDlg("Файл " + s + "\n существует и будет перезаписан. Продолжить?", mtWarning, TMsgDlgButtons() << mbOK << mbCancel, 0, mbCancel)+1) == mbCancel)
			return;

	LineSeries4->Clear();
    LineSeries5->Clear();

	int n = pd_vector.size();
	pd_vector.push_back(TProjectData());

	TTimerThread *t = new TTimerThread(true);
	t->FreeOnTerminate = true;
	t->mode = from_device;
	t->pd_ = &pd_vector[n];
	t->Start();

	/*
	AcquireThread = new TAcquireThread(true);
	AcquireThread->FreeOnTerminate = true;
	AcquireThread->test_num = StrToInt(RecThreadStartForm->Edit2->Text);

	AcquireThread->Resume();
	 */
	/* int n_t=100;
	double *eta_t = new double[n_t];
	double *temp_t = new double[n_t];
	Series1->Clear();


	for (int i=0; i < n_t; i++) {
	temp_t[i]=273.15 + 30*i/n_t;
	eta_t[i]=FormulaPuazeilia(temp_t[i]);
	Series1->AddXY(temp_t[i]-273.15, eta_t[i]);
	}

	ShowMessage(FloatToStr(FormulaPuazeilia(298.15)));
	delete [] eta_t;
	delete [] temp_t;
	 */

	/*
	Status status;
	device.GetStatus(status);

	return;


	__command_data command_data;
	InitCommandData(command_data,3, 0);
	command_data.WriteData[0] = 0;
	command_data.WriteData[1] = 32;
	command_data.WriteData[2] = 15;


	device.ftd2xxDevice.Exec(command_data);
	 */

}

// ---------------------------------------------------------------------------
void __fastcall TMainForm::FormResize(TObject *Sender) {
	Panel4->Width = Width / 2;
	Panel5->Height = (Height-ToolBar1->Height) /3;
	Panel7->Height = (Height-ToolBar1->Height) /3;
	Panel10->Width = Width / 2;
//	Memo1->Height = 100;
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::N6Click(TObject *Sender) {
	//OpenDialog1->InitialDir = ExtractFileDir(Application->ExeName);
	OpenDialog1->Filter = "dls files|*.dls";

	if (!OpenDialog1->Execute())
		return;



	int n = pd_vector.size();

	pd_vector.push_back(TProjectData());
	OpenProject(OpenDialog1->FileName, pd_vector[n]);
}
// ---------------------------------------------------------------------------

void __fastcall TMainForm::ListView3DblClick(TObject *Sender) {
//	TListItem *item = ListView3->Selected;
	/*
	if (item) {
		if (item->Data != 0) {
			TPoint *p = (TPoint *)item->Data;
			UnicodeString acf_path;
			if (p->y != -1)
				acf_path = pd[p->x][p->y].Acf_;
			else
				acf_path = pd[p->x].Mean_Acf_;

			if (FileExists(acf_path))
				ProcessData(acf_, acf_path, p->x, p->y);
			else
				ProcessData(rec_, "", p->x, p->y);


			return;

//			TProjectData::TRec *rec_ = (TProjectData::TRec *)item->Data;
//			int *k = (int *)item->Data;
//			rec_->Acf_
//			Memo1->Lines->Add(rec_->Acf_);
		 //	Memo1->Lines->Add(IntToStr((int)p->x)+" "+IntToStr((int)p->y));
//			Memo1->Lines->Add(IntToStr(k[0]));
		   //	return;
			//TProjectData::TSeqRec *sr = (TProjectData::TSeqRec *)item->Data;
//			UnicodeString acf_path;

	  //		acf_path = sr->GetAcf();
			//size_t seq = 0;
		//	size_t rec = 0;
		  //	sr->GetNums(rec, seq);
			//ProcessData(acf_, acf_path, seq, rec);


		}

		/*
		UnicodeString sseq = item->SubItems->Strings[1];
		UnicodeString srec = item->SubItems->Strings[2];
		if ((sseq != "") && (srec != "")) {
			unsigned seq = item->SubItems->Strings[1].ToInt()-1;
			unsigned rec = item->SubItems->Strings[2].ToInt()-1;
			UnicodeString rec_path = pd[seq][rec].Data_;
			UnicodeString acf_path = pd[seq][rec].Acf_;


			if (FileExists(acf_path)) {
				ProcessData(acf_, acf_path, seq, rec);
			}
		}
		 */


		/*
		UnicodeString rec_path = item->SubItems->Strings[6];
		UnicodeString acf_path = item->SubItems->Strings[7];

		if (FileExists(acf_path)) {
			ProcessData(acf_, acf_path, item->SubItems->Strings[1],	item->SubItems->Strings[2]);
		}
		else
		{
			if (FileExists(rec_path))
				ProcessData(rec_, rec_path, item->SubItems->Strings[1],	item->SubItems->Strings[2]);
			else
			{
				ShowMessage("Файл "+ rec_path + " не найден");
				return;
			}
		}
		*/


}
// ---------------------------------------------------------------------------



void __fastcall TMainForm::ToolButton9Click(TObject *Sender)
{
	LineSeries4->Clear();
	LineSeries5->Clear();
}
//---------------------------------------------------------------------------


void __fastcall TMainForm::VtGetText(TBaseVirtualTree *Sender, PVirtualNode Node,
	  TColumnIndex Column, TVSTTextType TextType, UnicodeString &CellText)
{
	TProjectData::TVtPD *d = (TProjectData::TVtPD *)Sender->GetNodeData(Node);
	if (d) {
		switch (d->State) {
			case TProjectData::pdRecord:
				switch (Column) {
					case 0: CellText = d->Name; break;
					case 1: CellText = FloatToStrF(d->ScatAngle, ffFixed, 5, 2); break;
					case 2: CellText = FloatToStrF(d->Temperature, ffFixed, 5, 2); break;
					case 3: CellText = FloatToStrF(d->x_pcs, ffFixed, 5, 2); break;
					case 4: CellText = FloatToStrF(d->pi, ffFixed, 5, 3); break;
					case 5: CellText = FloatToStrF(d->gamma, ffFixed, 5, 3); break;
				}
				break;
			case TProjectData::pdMean:
                switch (Column) {
                	case 0: CellText = d->Name; break;
					case 3: CellText = FloatToStrF(d->x_pcs, ffFixed, 5, 2); break;
					case 4: CellText = FloatToStrF(d->pi, ffFixed, 5, 3); break;
					case 5: CellText = FloatToStrF(d->gamma, ffFixed, 5, 3); break;
                }
                break;
			default :
				if (Column == 0)
					CellText = d->Name;
		}
	}

}

void __fastcall TMainForm::VtDblClick(TObject *Sender)
{
	TVirtualNode *t = vt->GetFirstSelected(false);

	if (t) {
		TProjectData::TVtPD *d = (TProjectData::TVtPD *)vt->GetNodeData(t);
		if (d)
		{
			pd__ = d->pd;
			ProcessData(d);
		}
	}
}

void __fastcall TMainForm::VtClick(TObject *Sender)
{
	/*
	TVirtualNode *t = vt->GetFirstSelected(false);

	if (t)
	{
		TProjectData::TVtPD *d = (TProjectData::TVtPD *)vt->GetNodeData(t);
		if (d)
			switch (d->State)
			{
				case TProjectData::pdRecord :
				{
					vt->ShowHint = true;
					UnicodeString str;
					str = "Имп/сек: " + FloatToStrF(d->rate, ffFixed, 10, 3) + "\nПризма Глана: ";
					if (d->prism == 0)
						str += "Вертикально";
					else
						str += "Горизонтально";

					str += "\nДиафрагма: " + IntToStr(d->aperture) + "\nПоляризатор: " + IntToStr(d->polar);

					vt->Hint = str;

				}
				break;
				default :
					vt->ShowHint = false;
					vt->Hint = "";
				break;
			}
	}
	*/
}

void __fastcall TMainForm::ToolButton10Click(TObject *Sender)
{
	TestRecForm->Show();
}
//---------------------------------------------------------------------------
void TMainForm::file_open_msg(TWMCopyData &msg)
{
	UnicodeString str((char *)msg.CopyDataStruct->lpData);

    if (FileExists(str))
	{
		int n = pd_vector.size();
    	pd_vector.push_back(TProjectData());
    	OpenProject(str, pd_vector[n]);
	}

	WindowState = wsMaximized;
    BringToFront();
}


void __fastcall TMainForm::N7Click(TObject *Sender)
{
	TVirtualNode *t = vt->GetFirstSelected(false);

    if (t)
	{
    	TProjectData::TVtPD *d = (TProjectData::TVtPD *)vt->GetNodeData(t);
		if (d)
		{
			switch (d->State)
			{
				case TProjectData::pdRecord:
				{
					TProjectData *pd_ = d->pd;
					TProjectData::TSeq &seq_ = (*pd_)[d->seq_num];
					seq_.rec_.erase(seq_.rec_.begin() + d->rec_num);
					seq_.Mean_Acf_ = "";
					seq_.a0 = 0.0;
					seq_.a1 = 0.0;
					seq_.a2 = 0.0;
					seq_.pi = 0.0;
					seq_.x_pcs = 0.0;
                    SaveProject(pd_);
				}
				break;
				case TProjectData::pdSerie:
				{
					TProjectData *pd_ = d->pd;
					pd_->seq_.erase(pd_->seq_.begin() + d->seq_num);
					SaveProject(pd_);
				}
				break;
				case TProjectData::pdMean:
				{
					TProjectData *pd_ = d->pd;
					TProjectData::TSeq &seq_ = (*pd_)[d->seq_num];
                    seq_.Mean_Acf_ = "";
                    seq_.a0 = 0.0;
                    seq_.a1 = 0.0;
                    seq_.a2 = 0.0;
                    seq_.pi = 0.0;
                    seq_.x_pcs = 0.0;
				}
				break;
				case TProjectData::pdHeader:
				{
					pd_vector.erase(pd_vector.begin() + d->pd->num);
				}
				break;
			}

			UpdateVt(vt);
		}
	}

}
//---------------------------------------------------------------------------

void __fastcall TMainForm::VtMouseUp(System::TObject* Sender, TMouseButton Button, Classes::TShiftState Shift, int X, int Y)
{

	vt->ShowHint = false;
	vt->Hint = "";
	TVirtualNode *t = vt->GetFirstSelected(false);

	if (t)
	{
		TProjectData::TVtPD *d = (TProjectData::TVtPD *)vt->GetNodeData(t);
		if (d)
			switch (d->State)
			{
				case TProjectData::pdRecord:
				if (Button == mbLeft)
				{
					vt->ShowHint = true;
					UnicodeString str;
					str = "Имп/сек: " + FloatToStrF(d->rate, ffFixed, 10, 3) + "\nПризма Глана: ";
					if (d->prism == 0)
						str += "Вертикально";
					else
						str += "Горизонтально";

					str += "\nДиафрагма: " + IntToStr(d->aperture) + "\nПоляризатор: " + IntToStr(d->polar);

					vt->Hint = str;

				}
				break;
				case TProjectData::pdHeader:
				/*
					if (Button == mbRight)
						Label14->Caption = IntToStr(Panel5->Top + vt->Top + Y);
						*/
				break;
				default :


				break;
			}
	}

/*
	if (Button != mbRight)
		return;


	TVirtualNode *t = vt->GetFirstSelected(false);

	if (t)
	{
		TProjectData::TVtPD *d = (TProjectData::TVtPD *)vt->GetNodeData(t);
		if (d && (d->State == TProjectData::pdHeader))
			PopupMenu1->Popup(vt->Left + X, vt->Top + Y );
	}                                                     */
}


