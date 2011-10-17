//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UReportEditForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TReportEditForm *ReportEditForm;
//---------------------------------------------------------------------------
__fastcall TReportEditForm::TReportEditForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
