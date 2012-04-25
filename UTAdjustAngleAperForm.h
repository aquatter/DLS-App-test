//---------------------------------------------------------------------------

#ifndef UTAdjustAngleAperFormH
#define UTAdjustAngleAperFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "cspin.h"
//---------------------------------------------------------------------------
class TAdjustAngleAperForm : public TForm
{
__published:	// IDE-managed Components
	TButton *Button1;
	TLabel *Label58;
	TComboBox *ComboBox3;
	TLabel *Label1;
	TLabel *Label2;
	TCSpinButton *CSpinButton1;
	TEdit *Edit1;
	TLabel *Label3;
	TLabel *Label4;
	TEdit *Edit2;
	TCSpinButton *CSpinButton2;
	void __fastcall CSpinButton1DownClick(TObject *Sender);
	void __fastcall CSpinButton1UpClick(TObject *Sender);
	void __fastcall CSpinButton2DownClick(TObject *Sender);
	void __fastcall CSpinButton2UpClick(TObject *Sender);
	void __fastcall ComboBox3Change(TObject *Sender);
	void __fastcall Edit1KeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall Edit2KeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall Button1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	void __fastcall ApplyChangeAngle();
	void __fastcall ApplyChangeAper();
	void __fastcall off();
	void __fastcall on();
	__fastcall TAdjustAngleAperForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TAdjustAngleAperForm *AdjustAngleAperForm;
//---------------------------------------------------------------------------
#endif
