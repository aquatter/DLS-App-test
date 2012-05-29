//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UPlease_stop_form.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TPlease_stop_form *Please_stop_form;
//---------------------------------------------------------------------------
__fastcall TPlease_stop_form::TPlease_stop_form(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TPlease_stop_form::Button1Click(TObject *Sender)
{
	if (please_stop) *please_stop = true;
}
//---------------------------------------------------------------------------
