//---------------------------------------------------------------------------

#ifndef UPlease_stop_formH
#define UPlease_stop_formH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
//---------------------------------------------------------------------------
class TPlease_stop_form : public TForm
{
__published:	// IDE-managed Components
	TButton *Button1;
	TImage *Image1;
	TImage *Image2;
	void __fastcall Button1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	bool *please_stop;
	__fastcall TPlease_stop_form(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TPlease_stop_form *Please_stop_form;
//---------------------------------------------------------------------------
#endif
