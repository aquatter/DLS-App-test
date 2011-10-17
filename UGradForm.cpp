//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UGradForm.h"
#include "UAddGradForm.h"
#include "UDlsVars.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TGradForm *GradForm;
//---------------------------------------------------------------------------
__fastcall TGradForm::TGradForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TGradForm::Button1Click(TObject *Sender)
{
  AddGradForm->Edit1->Text="0";
  AddGradForm->Edit2->Text="0";
  AddGradForm->Edit3->Text="0";

  if (! (AddGradForm->ShowModal() == mrOk) ) { return;  }

  double a, b, angle;
  a=CheckString(AddGradForm->Edit1->Text.t_str());
  b=CheckString(AddGradForm->Edit2->Text.t_str());
  angle=CheckString(AddGradForm->Edit3->Text.t_str());

  TListItem *t;
  t=ListView1->Items->Add();
  t->Caption=IntToStr(ListView1->Items->Count);
  t->SubItems->Add(FloatToStr(a));
  t->SubItems->Add(FloatToStr(b));
  t->SubItems->Add(FloatToStr(angle));

}
//---------------------------------------------------------------------------
void __fastcall TGradForm::Button4Click(TObject *Sender)
{

  if (!(ListView1->Selected == NULL)) {
	ListView1->Items->Delete(ListView1->Selected->Index);


	for (int i=0; i < ListView1->Items->Count; i++) {
		ListView1->Items->Item[i]->Caption=IntToStr(i+1);
	}
  }
}
//---------------------------------------------------------------------------
