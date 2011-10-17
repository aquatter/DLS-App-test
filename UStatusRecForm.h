//---------------------------------------------------------------------------

#ifndef UStatusRecFormH
#define UStatusRecFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
//---------------------------------------------------------------------------
class TStatusRecForm : public TForm
{
__published:	// IDE-managed Components
	TLabel *Label1;
	TLabel *Label2;
	TProgressBar *ProgressBar1;
private:	// User declarations
public:		// User declarations
	__fastcall TStatusRecForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TStatusRecForm *StatusRecForm;
//---------------------------------------------------------------------------
#endif
