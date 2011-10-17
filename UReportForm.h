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
//---------------------------------------------------------------------------
class TReportForm : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel1;
	TButton *Button1;
	TButton *Button2;
	TVirtualStringTree *VirtualStringTree1;
	TToolBar *ToolBar1;
	TToolButton *ToolButton1;
	TToolButton *ToolButton2;
	TToolButton *ToolButton3;
	TImageList *ImageList1;
	TToolButton *ToolButton4;
	TToolButton *ToolButton5;
	void __fastcall FormCreate(TObject *Sender);
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



private:	// User declarations
public:		// User declarations
	void __fastcall RecalculateReport();
	__fastcall TReportForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TReportForm *ReportForm;
//---------------------------------------------------------------------------
#endif
