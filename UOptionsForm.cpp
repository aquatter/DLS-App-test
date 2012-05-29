//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UOptionsForm.h"
#include "UDlsVars.h"
#include "math.h"
#include "Math.hpp"
#include "System.hpp"
#include "MainFormUnit.h"
#include "device.h"
#include "MainFormUnit.h"
#include "UGradForm.h"
#include "ShlObj.h"
#include "UTAdjustAngleAperForm.h"
#include "UTestRecForm.h"


//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cspin"
#pragma resource "*.dfm"
TOptionsForm *OptionsForm;
//---------------------------------------------------------------------------
__fastcall TOptionsForm::TOptionsForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TOptionsForm::Button2Click(TObject *Sender)
{
/*  AcfParams.n=Edit12->Text.ToDouble();
  AcfParams.eta=Edit13->Text.ToDouble();
  AcfParams.theta=Edit14->Text.ToDouble();
  AcfParams.T=Edit15->Text.ToDouble();
  AcfParams.lambda=Edit16->Text.ToDouble();
  AcfParams.lfd=CheckBox1->Checked;
  AcfParams.feu=CheckBox2->Checked;
  AcfParams.t_block=Edit6->Text.ToInt();
  AcfParams.cut=CheckString(Edit10->Text.t_str());
//  Button1Click(Sender);
*/
}
//---------------------------------------------------------------------------



void __fastcall TOptionsForm::Button1Click(TObject *Sender)
{
  AcfParams.dt0=Edit1->Text.ToInt();
  AcfParams._p=Edit2->Text.ToInt();
  // ------------------- основание геометрической прогрессии --------------------
  AcfParams._m=Edit3->Text.ToInt();
  // ------------------- минимальное количество отсчетов ------------------------
  AcfParams.n_min=Edit5->Text.ToInt();
  // ------------------- длительность блока в мс ------------------------
  AcfParams.t_block=Edit6->Text.ToInt();
  AcfParams.n_mean=Edit17->Text.ToInt();
  // ------------------ размер НЧ фильтра -------------------------------------
  AcfParams.Gauss_w=StrToInt(Edit4->Text);
  AcfParams.cut=Edit10->Text.ToInt();

  if (AcfParams._time <= 0) {
	return;
  }


  double t_block_mean = AcfParams.t_block*AcfParams.n_mean*1e6;

  if (AcfParams._time < t_block_mean)
  {
	AcfParams.n_block=1;
	AcfParams.n_mean=Floor((double) (AcfParams._time/(AcfParams.t_block*1e6)));
	if (AcfParams._time < AcfParams.t_block*1e6) {
	  AcfParams.n_mean=1;
	  AcfParams.t_block=AcfParams._time*1e-6;
	}
	AcfParams.n0=Floor((double)(AcfParams.t_block*1e6/AcfParams.dt0));
  }
  else
  {
	AcfParams.n_block=Floor((double)(AcfParams._time/t_block_mean));
	AcfParams.n0=Floor((double)(AcfParams.t_block*1e6/AcfParams.dt0));
  }


  // ------------ определяем степень s ------------------------------------------

  double n_temp = AcfParams.n0/AcfParams.n_min;
  AcfParams._s=0;
  while (pow(AcfParams._m, AcfParams._s) < n_temp)
	AcfParams._s++;

  AcfParams._n_min=Floor((double)(AcfParams.n0/pow(AcfParams._m,AcfParams._s-1)));

  // ------------ Количество отсчетов автокорреляционной функции ----------------
//  AcfParams.n_avt=(AcfParams._p-AcfParams._p/AcfParams._m)*(AcfParams._s-1)+AcfParams.n_min-1;
  AcfParams.n_avt=(AcfParams._p-AcfParams._p/AcfParams._m)*AcfParams._s+AcfParams._n_min-AcfParams._p;


  Label10->Visible=true;
  Label11->Visible=true;
  Label12->Visible=true;
  Label13->Visible=true;
  Label17->Visible=true;
  Label17->Caption="Количество блоков: "+IntToStr(AcfParams.n_block);
  Label10->Caption="Минимальная задержка: "+ FloatToStrF((AcfParams._p/AcfParams._m+0.5)*AcfParams.dt0*1e-3, ffFixed, 5, 2)+" мкс";
  Label11->Caption="Минимальное разбиение: "+IntToStr(AcfParams._n_min);
  Label12->Caption="Число корреляторов s = "+IntToStr(AcfParams._s);
  Label13->Caption="Количество отсчетов \nавтокорреляционной функции: "+IntToStr(AcfParams.n_avt);
  // -------------- обрезка хвоста ------------------


  Edit6->Text=FloatToStr(AcfParams.t_block);
  Edit17->Text=IntToStr(AcfParams.n_mean);


}
//---------------------------------------------------------------------------

void __fastcall TOptionsForm::CheckBox1Click(TObject *Sender)
{
  MainForm->chckbxLFDClick(Sender);
}
//---------------------------------------------------------------------------

void __fastcall TOptionsForm::CheckBox2Click(TObject *Sender)
{
  MainForm->chckbxFEUClick(Sender);
}
//---------------------------------------------------------------------------

void __fastcall TOptionsForm::Edit7KeyPress(TObject *Sender, wchar_t &Key)
{
  MainForm->edtFEUKeyPress(Sender, Key);
}
//---------------------------------------------------------------------------

void __fastcall TOptionsForm::CSpinButton1DownClick(TObject *Sender)
{
  MainForm->cspnbtnFEUDownClick(Sender);
}
//---------------------------------------------------------------------------

void __fastcall TOptionsForm::CSpinButton1UpClick(TObject *Sender)
{
  MainForm->cspnbtnFEUUpClick(Sender);
}
//---------------------------------------------------------------------------

void __fastcall TOptionsForm::Edit8KeyPress(TObject *Sender, wchar_t &Key)
{
  MainForm->edtTemperatureKeyPress(Sender, Key);
}
//---------------------------------------------------------------------------

void __fastcall TOptionsForm::CSpinButton2DownClick(TObject *Sender)
{
  MainForm->cspnbtnTemperatureDownClick(Sender);
}
//---------------------------------------------------------------------------

void __fastcall TOptionsForm::CSpinButton2UpClick(TObject *Sender)
{
  MainForm->cspnbtnTemperatureUpClick(Sender);
}
//---------------------------------------------------------------------------

void __fastcall TOptionsForm::Edit9KeyPress(TObject *Sender, wchar_t &Key)
{
  MainForm->edtAngleKeyPress(Sender,Key);
}
//---------------------------------------------------------------------------

void __fastcall TOptionsForm::CSpinButton3DownClick(TObject *Sender)
{
  MainForm->cspnbtnAngleDownClick(Sender);
}
//---------------------------------------------------------------------------

void __fastcall TOptionsForm::CSpinButton3UpClick(TObject *Sender)
{
  MainForm->cspnbtnAngleUpClick(Sender);
}
//---------------------------------------------------------------------------

void __fastcall TOptionsForm::ComboBox1Click(TObject *Sender)
{
  MainForm->cmbbxFrequencyClick(Sender);
}
//---------------------------------------------------------------------------

void __fastcall TOptionsForm::ComboBox1KeyDown(TObject *Sender, WORD &Key, TShiftState Shift)

{
  MainForm->cmbbxFrequencyKeyDown(Sender, Key, Shift);
}
//---------------------------------------------------------------------------

void __fastcall TOptionsForm::ComboBox1KeyUp(TObject *Sender, WORD &Key, TShiftState Shift)

{
  MainForm->cmbbxFrequencyKeyUp(Sender, Key, Shift);
}
//---------------------------------------------------------------------------

void __fastcall TOptionsForm::Edit11Exit(TObject *Sender)
{
  MainForm->edtReadDataBlockExit(Sender);
}
//---------------------------------------------------------------------------

void __fastcall TOptionsForm::Edit11KeyUp(TObject *Sender, WORD &Key, TShiftState Shift)

{
  MainForm->edtReadDataBlockKeyUp(Sender, Key, Shift);
}
//---------------------------------------------------------------------------

void __fastcall TOptionsForm::CSpinButton5DownClick(TObject *Sender)
{
  MainForm->cspnbtnReadDataBlockDownClick(Sender);
}
//---------------------------------------------------------------------------

void __fastcall TOptionsForm::CSpinButton5UpClick(TObject *Sender)
{
  MainForm->cspnbtnReadDataBlockUpClick(Sender);
}
//---------------------------------------------------------------------------

void __fastcall TOptionsForm::Button3Click(TObject *Sender)
{
  MainForm->bbtnReconnectClick(Sender);
}
//---------------------------------------------------------------------------






void __fastcall TOptionsForm::Button5Click(TObject *Sender)
{
   try
   {
   AcfParams.angle_init=CheckString(Edit18->Text.t_str());
   AcfParams.angle_step=CheckString(Edit19->Text.t_str());
   device.deviceSettings.Angle=CheckString(Edit9->Text.t_str());
   device.deviceSettings.Frequency=ComboBox1->ItemIndex;
   device.deviceSettings.Temperature=CheckString(Edit8->Text.t_str());
   device.deviceSettings.ReadDataBlock=Edit11->Text.ToInt();

   AcfParams.lfd=CheckBox1->Checked;
   AcfParams.feu=CheckBox2->Checked;

   if(! device.SetFrequency(device.deviceSettings.Frequency))
	 Abort();


   if (AcfParams.lfd) {
	 if(! device.SetPhotomultiplierState(AcfParams.lfd) )
		 Abort();
   }

   if(! device.SetTemperature(device.deviceSettings.Temperature ) )
	 Abort();

	  /*
   if (AcfParams.feu) {
	 MainForm->edtFEU_Init();
   }    */

   if (! device.SetAngle(device.deviceSettings.Angle))
	 Abort();

   }
   catch (...)
   {
	 ShowMessage("Прибор не подключен");
//	 Application->MessageBox(L"Прибор не подключен",L"Ошибка",MB_OK | MB_ICONERROR);
   }
}
//---------------------------------------------------------------------------

void __fastcall TOptionsForm::Button6Click(TObject *Sender)
{

 TGrad temp;
 GradForm->ListView1->Items->Clear();
 TListItem *t;

 for (int i=0; i < AcfParams.grad_count; i++) {
   temp=AcfParams.grad.at(i);
   t=GradForm->ListView1->Items->Add();
   t->Caption=IntToStr(i+1);
   t->SubItems->Add(temp.a);
   t->SubItems->Add(temp.b);
   t->SubItems->Add(temp.angle);
 }

 if (AcfParams.grad_n >= 0) {
   GradForm->ListView1->Items->Item[AcfParams.grad_n]->Checked=true;
 }

 if (!(GradForm->ShowModal() == mrOk))
  return;

 AcfParams.grad_n=-1;
 AcfParams.grad_count=GradForm->ListView1->Items->Count;
 AcfParams.grad.clear();

 for (int i=0; i < AcfParams.grad_count; i++) {
	 if (GradForm->ListView1->Items->Item[i]->Checked) {
		AcfParams.grad_n=i;
	 }
	 temp.a=GradForm->ListView1->Items->Item[i]->SubItems->Strings[0].t_str();
	 temp.b=GradForm->ListView1->Items->Item[i]->SubItems->Strings[1].t_str();
	 temp.angle=GradForm->ListView1->Items->Item[i]->SubItems->Strings[2].t_str();
	 AcfParams.grad.push_back(temp);
 }


 }
//---------------------------------------------------------------------------


int __stdcall BrowseCallbackProc(HWND hwnd, UINT uMsg, LPARAM lParam, LPARAM lpData)
{
	switch (uMsg) {
		case BFFM_INITIALIZED:
			SendMessage(hwnd, BFFM_SETSELECTION, 1, lpData);
		break;
	}
	return 0;
}

void __fastcall TOptionsForm::ToolButton1Click(TObject *Sender)
{
	UnicodeString dir;
	if (!DirectoryExists(AcfParams.Save_Dir))
		dir = ExtractFilePath(Application->ExeName);
	else
		dir = AcfParams.Save_Dir;

	_browseinfoA  lpbi;
	LPMALLOC ppMalloc;
	char *buffer;
	PItemIDList ItemIDList;

	memset(&lpbi, 0 ,sizeof(_browseinfoA));

	if ((SHGetMalloc(&ppMalloc) == S_OK) && (ppMalloc != NULL))
	{
    	buffer = (char *) ppMalloc->Alloc(1024);
		try {
			OleInitialize(NULL);
        	lpbi.hwndOwner = Application->Handle;
            lpbi.pidlRoot = NULL;
            lpbi.pszDisplayName = buffer;
			lpbi.lpszTitle = "Выберите директорию для сохранения данных";
			lpbi.ulFlags = BIF_RETURNONLYFSDIRS | BIF_USENEWUI | BIF_EDITBOX;
			lpbi.lpfn = &BrowseCallbackProc;

			lpbi.lParam = (long) AcfParams.Save_Dir.t_str();

			try {
				ItemIDList = SHBrowseForFolderA(&lpbi);
			} catch (...) {

			}
			if (ItemIDList != NULL) {
				SHGetPathFromIDListA(ItemIDList, buffer);
				ppMalloc->Free(ItemIDList);
				Label56->Caption = buffer;
			}

		} __finally
		{
			ppMalloc->Free(buffer);
		}
	}
}
//---------------------------------------------------------------------------

//DWORD WINAPI MyThreadFunction( LPVOID lpParam )
//{
//	Sleep(5000);
//}
	//void __fastcall (__closure *TThreadMethod)(void);


void __fastcall TOptionsForm::Button7Click(TObject *Sender)
{
	AcfParams.Aperture = ComboBox4->ItemIndex;
	int Aper = 0;
	if (!device.ReadData(24, Aper))
		return;
	AcfParams.Initial_Angle = ComboBox3->ItemIndex;
	int Angle = 0;
	if (!device.ReadData(AcfParams.Initial_Angle*2, Angle))
		return;

	AdjustAngleAperForm->Edit1->Text = IntToStr(Angle);
	AdjustAngleAperForm->Edit2->Text = IntToStr(Aper);
	AdjustAngleAperForm->ComboBox3->ItemIndex = AcfParams.Initial_Angle;

    MainForm->StopMonitoring();

   //	void *wait_event = CreateEvent(NULL, true, false, NULL);

	AdjustAngleAperForm->off();
	TThreadParams *t = new TThreadParams(true);
	t->mode = 0;
	t->FreeOnTerminate = true;
	t->Draw = AdjustAngleAperForm->on;
	t->Start();

	//WaitForSingleObject(wait_event, INFINITE);

	//CloseHandle(wait_event);

	/*
	PThreadData d = (PThreadData)HeapAlloc(GetProcessHeap(),  HEAP_ZERO_MEMORY, sizeof(ThreadData));

	d->index = AcfParams.Initial_Angle;
	d->value = Angle;

	HANDLE h = CreateThread(NULL, 0, MyThreadFunction, d, 0, NULL);
	WaitForSingleObject(h, INFINITE);
	CloseHandle(h);
	/*
	d->index = 24;
	d->value = Aper;

	h = CreateThread(NULL, 0, MyThreadFunction, d, 0, NULL);
	WaitForSingleObject(h, INFINITE);
	CloseHandle(h);


	HeapFree(GetProcessHeap(), 0, d);
	d = NULL;
	*/

	//AdjustAngleAperForm->ShowModal();
}
//---------------------------------------------------------------------------






