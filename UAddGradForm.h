//---------------------------------------------------------------------------

#ifndef UAddGradFormH
#define UAddGradFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
//---------------------------------------------------------------------------
class TAddGradForm : public TForm
{
__published:	// IDE-managed Components
	TButton *Button1;
	TButton *Button2;
	TEdit *Edit1;
	TEdit *Edit2;
	TEdit *Edit3;
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
private:	// User declarations
public:		// User declarations
	__fastcall TAddGradForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TAddGradForm *AddGradForm;
//---------------------------------------------------------------------------
#endif
