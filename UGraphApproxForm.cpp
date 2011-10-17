//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UGraphApproxForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "Chart"
#pragma link "Series"
#pragma link "TeEngine"
#pragma link "TeeProcs"
#pragma resource "*.dfm"
TGraphApproxForm *GraphApproxForm;
//---------------------------------------------------------------------------
__fastcall TGraphApproxForm::TGraphApproxForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
