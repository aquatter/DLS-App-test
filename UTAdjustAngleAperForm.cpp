//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UTAdjustAngleAperForm.h"
#include "UDlsVars.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "cspin"
#pragma resource "*.dfm"
TAdjustAngleAperForm *AdjustAngleAperForm;
//---------------------------------------------------------------------------
__fastcall TAdjustAngleAperForm::TAdjustAngleAperForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TAdjustAngleAperForm::CSpinButton1DownClick(TObject *Sender)
{
	Edit1->Text = IntToStr(Edit1->Text.ToInt()-1);
	ApplyChangeAngle();


}
//---------------------------------------------------------------------------

void __fastcall TAdjustAngleAperForm::CSpinButton1UpClick(TObject *Sender)
{
	Edit1->Text = IntToStr(Edit1->Text.ToInt()+1);
	ApplyChangeAngle();
}
//---------------------------------------------------------------------------

void __fastcall TAdjustAngleAperForm::CSpinButton2DownClick(TObject *Sender)
{
	Edit2->Text = IntToStr(Edit2->Text.ToInt()-1);
	ApplyChangeAper();
}
//---------------------------------------------------------------------------

void __fastcall TAdjustAngleAperForm::CSpinButton2UpClick(TObject *Sender)
{
	Edit2->Text = IntToStr(Edit2->Text.ToInt()+1);
	ApplyChangeAper();
}
//---------------------------------------------------------------------------


void __fastcall TAdjustAngleAperForm::ApplyChangeAngle()
{
	off();
	AcfParams.Initial_Angle = ComboBox3->ItemIndex;
	TThreadParams * t = new TThreadParams(true);
	t->mode = 1;
	t->value = Edit1->Text.ToInt();
	t->FreeOnTerminate = true;
	t->Draw = on;
	t->Start();
}

void __fastcall TAdjustAngleAperForm::ApplyChangeAper()
{
	off();
	TThreadParams * t = new TThreadParams(true);
	t->mode = 2;
	t->value = Edit2->Text.ToInt();
	t->FreeOnTerminate = true;
	t->Draw = on;
	t->Start();
}
void __fastcall TAdjustAngleAperForm::ComboBox3Change(TObject *Sender)
{
	AcfParams.Initial_Angle = ComboBox3->ItemIndex;
	int Angle = 0;
//	if (!device.ReadData(AcfParams.Initial_Angle*2, Angle))
//		return;

	Edit1->Text = IntToStr(Angle);

    ApplyChangeAngle();
}
//---------------------------------------------------------------------------

void __fastcall TAdjustAngleAperForm::Edit1KeyPress(TObject *Sender, wchar_t &Key)
{
	if (Key == 13)
		ApplyChangeAngle();
}
//---------------------------------------------------------------------------


void __fastcall TAdjustAngleAperForm::Edit2KeyPress(TObject *Sender, wchar_t &Key)
{
	if (Key == 13)
		ApplyChangeAper();
}
//---------------------------------------------------------------------------


void __fastcall TAdjustAngleAperForm::off()
{
    for (int i=0; i < ControlCount; i++)
		Controls[i]->Enabled = false;
}

void __fastcall TAdjustAngleAperForm::on()
{
    for (int i=0; i < ControlCount; i++)
		Controls[i]->Enabled = true;
}

