//---------------------------------------------------------------------------

#ifndef UOptionsFormH
#define UOptionsFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
#include "cspin.h"
#include <ExtCtrls.hpp>
#include <ToolWin.hpp>
//---------------------------------------------------------------------------
class TOptionsForm : public TForm
{
__published:	// IDE-managed Components
	TPageControl *PageControl1;
	TTabSheet *TabSheet1;
	TTabSheet *TabSheet2;
	TEdit *Edit1;
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TEdit *Edit2;
	TLabel *Label4;
	TEdit *Edit3;
	TButton *Button1;
	TEdit *Edit4;
	TLabel *Label5;
	TLabel *Label17;
	TButton *Button2;
	TLabel *Label15;
	TEdit *Edit5;
	TLabel *Label10;
	TLabel *Label11;
	TLabel *Label12;
	TLabel *Label13;
	TGroupBox *GroupBox1;
	TCheckBox *CheckBox2;
	TEdit *Edit7;
	TCSpinButton *CSpinButton1;
	TCSpinButton *CSpinButton2;
	TLabel *Label19;
	TEdit *Edit9;
	TLabel *Label20;
	TLabel *Label21;
	TEdit *Edit11;
	TCSpinButton *CSpinButton5;
	TComboBox *ComboBox1;
	TButton *Button3;
	TTabSheet *TabSheet3;
	TLabel *Label8;
	TLabel *Label9;
	TLabel *Label23;
	TLabel *Label24;
	TLabel *Label25;
	TEdit *Edit12;
	TEdit *Edit13;
	TEdit *Edit14;
	TEdit *Edit15;
	TEdit *Edit16;
	TLabel *Label26;
	TLabel *Label27;
	TLabel *Label28;
	TLabel *Label29;
	TButton *Button4;
	TEdit *Edit17;
	TLabel *Label30;
	TEdit *Edit18;
	TEdit *Edit19;
	TLabel *Label31;
	TLabel *Label32;
	TButton *Button5;
	TCSpinButton *CSpinButton3;
	TGroupBox *GroupBox2;
	TLabel *Label14;
	TEdit *Edit6;
	TLabel *Label16;
	TLabel *Label7;
	TEdit *Edit10;
	TLabel *Label6;
	TGroupBox *GroupBox3;
	TSplitter *Splitter1;
	TEdit *Edit20;
	TLabel *Label33;
	TLabel *Label34;
	TCheckBox *CheckBox1;
	TLabel *Label35;
	TEdit *Edit21;
	TLabel *Label36;
	TLabel *Label37;
	TEdit *Edit22;
	TEdit *Edit23;
	TLabel *Label38;
	TLabel *Label39;
	TEdit *Edit24;
	TLabel *Label40;
	TEdit *Edit25;
	TLabel *Label41;
	TButton *Button6;
	TCheckBox *CheckBox3;
	TLabel *Label42;
	TLabel *Label43;
	TEdit *Edit26;
	TLabel *Label44;
	TEdit *Edit27;
	TLabel *Label45;
	TCheckBox *CheckBox4;
	TCheckBox *CheckBox5;
	TLabel *Label46;
	TEdit *Edit28;
	TLabel *Label47;
	TEdit *Edit29;
	TLabel *Label48;
	TEdit *Edit30;
	TLabel *Label49;
	TEdit *Edit31;
	TLabel *Label50;
	TEdit *Edit32;
	TLabel *Label51;
	TEdit *Edit33;
	TBevel *Bevel1;
	TBevel *Bevel2;
	TLabel *Label22;
	TCheckBox *CheckBox6;
	TCheckBox *CheckBox7;
	TLabel *Label52;
	TEdit *Edit34;
	TLabel *Label53;
	TEdit *Edit35;
	TMemo *Memo1;
	TLabel *Label54;
	TLabel *Label55;
	TLabel *Label56;
	TPanel *Panel1;
	TToolBar *ToolBar1;
	TToolButton *ToolButton1;
	TEdit *Edit36;
	TLabel *Label57;
	TLabel *Label58;
	TLabel *Label18;
	TEdit *Edit8;
	TLabel *Label59;
	TLabel *Label60;
	TEdit *Edit37;
	TComboBox *ComboBox2;
	TLabel *Label62;
	TLabel *Label61;
	TEdit *Edit38;
	void __fastcall Button2Click(TObject *Sender);
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall CheckBox1Click(TObject *Sender);
	void __fastcall CheckBox2Click(TObject *Sender);
	void __fastcall Edit7KeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall CSpinButton1DownClick(TObject *Sender);
	void __fastcall CSpinButton1UpClick(TObject *Sender);
	void __fastcall Edit8KeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall CSpinButton2DownClick(TObject *Sender);
	void __fastcall CSpinButton2UpClick(TObject *Sender);
	void __fastcall Edit9KeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall CSpinButton3DownClick(TObject *Sender);
	void __fastcall CSpinButton3UpClick(TObject *Sender);
	void __fastcall ComboBox1Click(TObject *Sender);
	void __fastcall ComboBox1KeyDown(TObject *Sender, WORD &Key, TShiftState Shift);
	void __fastcall ComboBox1KeyUp(TObject *Sender, WORD &Key, TShiftState Shift);
	void __fastcall Edit11Exit(TObject *Sender);
	void __fastcall Edit11KeyUp(TObject *Sender, WORD &Key, TShiftState Shift);
	void __fastcall CSpinButton5DownClick(TObject *Sender);
	void __fastcall CSpinButton5UpClick(TObject *Sender);
	void __fastcall Button3Click(TObject *Sender);
	void __fastcall Button5Click(TObject *Sender);
	void __fastcall Button6Click(TObject *Sender);
	void __fastcall ToolButton1Click(TObject *Sender);

private:	// User declarations
public:		// User declarations
	__fastcall TOptionsForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TOptionsForm *OptionsForm;
//---------------------------------------------------------------------------
#endif
