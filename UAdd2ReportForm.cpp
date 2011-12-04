//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UAdd2ReportForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TAdd2ReportForm *Add2ReportForm;
//---------------------------------------------------------------------------
__fastcall TAdd2ReportForm::TAdd2ReportForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TAdd2ReportForm::Button3Click(TObject *Sender)
{
  if (Edit1->Text == "") {
	return;
  }

   ComboBox1->Items->Add(Edit1->Text);
   ind=ComboBox1->Items->Count-1;
   ComboBox1->ItemIndex=ind;
   add_new=true;
}
//---------------------------------------------------------------------------

