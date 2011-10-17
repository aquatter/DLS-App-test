//---------------------------------------------------------------------------

#ifndef UGradFormH
#define UGradFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
//---------------------------------------------------------------------------
class TGradForm : public TForm
{
__published:	// IDE-managed Components
	TButton *Button2;
	TButton *Button3;
	TListView *ListView1;
	TButton *Button1;
	TButton *Button4;
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall Button4Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TGradForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TGradForm *GradForm;
//---------------------------------------------------------------------------
#endif
