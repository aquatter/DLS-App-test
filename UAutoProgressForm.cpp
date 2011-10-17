//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UAutoProgressForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TAutoProgressForm *AutoProgressForm;
//---------------------------------------------------------------------------
__fastcall TAutoProgressForm::TAutoProgressForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
