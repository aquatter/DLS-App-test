//---------------------------------------------------------------------------

#ifndef UAutoProgressFormH
#define UAutoProgressFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
//---------------------------------------------------------------------------
class TAutoProgressForm : public TForm
{
__published:	// IDE-managed Components
	TLabel *Label1;
	TImage *Image1;
private:	// User declarations
public:		// User declarations
	__fastcall TAutoProgressForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TAutoProgressForm *AutoProgressForm;
//---------------------------------------------------------------------------
#endif
