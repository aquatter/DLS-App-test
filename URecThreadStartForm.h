//---------------------------------------------------------------------------

#ifndef URecThreadStartFormH
#define URecThreadStartFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
//---------------------------------------------------------------------------
class TRecThreadStartForm : public TForm
{
__published:	// IDE-managed Components
	TEdit *Edit1;
	TLabel *Label1;
	TButton *Запуск;
	TButton *Отмена;
	TLabel *Label2;
	TEdit *Edit2;
private:	// User declarations
public:		// User declarations
	__fastcall TRecThreadStartForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TRecThreadStartForm *RecThreadStartForm;
//---------------------------------------------------------------------------
#endif
