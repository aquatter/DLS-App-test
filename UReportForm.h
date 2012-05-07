//---------------------------------------------------------------------------

#ifndef UReportFormH
#define UReportFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "VirtualTrees.hpp"
#include <ExtCtrls.hpp>
#include <ComCtrls.hpp>
#include <ImgList.hpp>
#include <ToolWin.hpp>
#include <Menus.hpp>
//---------------------------------------------------------------------------
class TReportForm : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel1;
	TButton *Button1;
	TButton *Button2;

	TToolBar *ToolBar1;
	TToolButton *ToolButton1;
	TToolButton *ToolButton2;
	TToolButton *ToolButton3;
	TImageList *ImageList1;
	TToolButton *ToolButton4;
	TToolButton *ToolButton5;
	TToolButton *ToolButton6;
	TPopupMenu *PopupMenu1;
	TMenuItem *MicrosoftWord1;
	TMenuItem *MicrosoftExcel1;
	void __fastcall VirtualStringTree1GetText(TBaseVirtualTree *Sender, PVirtualNode Node,
		  TColumnIndex Column, TVSTTextType TextType, UnicodeString &CellText);
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall Button2Click(TObject *Sender);
	void __fastcall VirtualStringTree1Checked(TBaseVirtualTree *Sender, PVirtualNode Node);
	void __fastcall VirtualStringTree1Checking(TBaseVirtualTree *Sender, PVirtualNode Node,
		  TCheckState &NewState, bool &Allowed);
	void __fastcall ToolButton4Click(TObject *Sender);
	void __fastcall ToolButton3Click(TObject *Sender);
	void __fastcall ToolButton5Click(TObject *Sender);
	void __fastcall ToolButton6Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	TVirtualStringTree *VirtualStringTree1;
	void __fastcall RecalculateReport();
	__fastcall TReportForm(TComponent* Owner);
	virtual __fastcall ~TReportForm() { delete VirtualStringTree1; };

};
//---------------------------------------------------------------------------
extern PACKAGE TReportForm *ReportForm;
//---------------------------------------------------------------------------
#endif
