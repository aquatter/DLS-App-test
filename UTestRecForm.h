//---------------------------------------------------------------------------

#ifndef UTestRecFormH
#define UTestRecFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TTestRecForm : public TForm
{
__published:	// IDE-managed Components
	TButton *Button1;
	TLabel *Label20;
	TComboBox *ComboBox1;
	TLabel *Label1;
	TEdit *Edit1;
	TPanel *Panel1;
	TButton *Button2;
	TLabel *Label2;
	TButton *Button3;
	TButton *Button4;
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall Button2Click(TObject *Sender);
	void __fastcall Button3Click(TObject *Sender);
	void __fastcall Button4Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	WORD *Data;
	int num_blocks;
	int freq;
	__fastcall TTestRecForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TTestRecForm *TestRecForm;

class TTestRecThread: public TThread
{
protected:
	void __fastcall Execute();

public:
	int mm;
	UnicodeString s;
	WORD *Data;
	int num_blocks;
	char freq;

	void __fastcall Draw();
	void __fastcall Sync(int mm_ = 0, UnicodeString s_ = "")
	{
		mm = mm_;
		s = s_;
		Synchronize(&Draw);
	}
	__fastcall TTestRecThread(bool CreateSuspended) : TThread(CreateSuspended) {};
};


//---------------------------------------------------------------------------
#endif
