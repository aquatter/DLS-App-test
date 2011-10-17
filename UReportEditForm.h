//---------------------------------------------------------------------------

#ifndef UReportEditFormH
#define UReportEditFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
//---------------------------------------------------------------------------
class TReportEditForm : public TForm
{
__published:	// IDE-managed Components
	TEdit *Edit1;
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TEdit *Edit2;
	TEdit *Edit3;
	TEdit *Edit4;
	TButton *Button1;
	TButton *Button2;
private:	// User declarations
public:		// User declarations
	__fastcall TReportEditForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TReportEditForm *ReportEditForm;
//---------------------------------------------------------------------------
#endif
