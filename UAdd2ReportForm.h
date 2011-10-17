//---------------------------------------------------------------------------

#ifndef UAdd2ReportFormH
#define UAdd2ReportFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
//---------------------------------------------------------------------------
class TAdd2ReportForm : public TForm
{
__published:	// IDE-managed Components
	TButton *Button1;
	TButton *Button2;
	TComboBox *ComboBox1;
	TButton *Button3;
	TEdit *Edit1;
	TLabel *Label1;
	TLabel *Label2;
	void __fastcall Button3Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	bool add_new;
	int ind;
	__fastcall TAdd2ReportForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TAdd2ReportForm *Add2ReportForm;
//---------------------------------------------------------------------------
#endif
