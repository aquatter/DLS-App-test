//---------------------------------------------------------------------------

#ifndef MainFormUnitH
#define MainFormUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include "Chart.hpp"
#include <Buttons.hpp>
#include "Series.hpp"
#include "cspin.h"
//#include "Device.h"
#include "measures_data.h"
#include <Dialogs.hpp>
#include <ComCtrls.hpp>
#include <ActnCtrls.hpp>
#include <ActnList.hpp>
#include <ActnMan.hpp>
#include <ImgList.hpp>
#include <PlatformDefaultStyleActnCtrls.hpp>
#include <ToolWin.hpp>
#include <StdStyleActnCtrls.hpp>
#include <Menus.hpp>
#include "TeEngine.hpp"
#include "TeeProcs.hpp"
#include "UDlsINIFile.h"
#include <msxmldom.hpp>
#include <XMLDoc.hpp>
#include <xmldom.hpp>
#include <XMLIntf.hpp>
#include "UProgectData.h"
#include "VirtualTrees.hpp"

#define WM_OPEN_FILE WM_USER + 1

//#include  "UDlsVars.h"
//---------------------------------------------------------------------------
class TMainForm : public TForm
{
__published:	// IDE-managed Components
	TTimer *Timer1;
	TSaveDialog *SaveDialog1;
	TImageList *ImageList1;
	TOpenDialog *OpenDialog1;
	TToolBar *ToolBar1;
	TToolButton *ToolButton1;
	TToolButton *ToolButton2;
	TToolButton *ToolButton3;
	TToolButton *ToolButton4;
	TImageList *ImageList2;
	TSpeedButton *spbtnReadData;
	TPopupMenu *PopupMenu1;
	TMenuItem *N1;
	TMenuItem *N2;
	TPopupMenu *PopupMenu2;
	TMenuItem *N3;
	TMenuItem *N4;
	TPageControl *PageControl1;
	TTabSheet *TabSheet1;
	TLabel *Label6;
	TLabel *Label7;
	TLabel *Label8;
	TLabel *Label9;
	TLabel *Label1;
	TChart *Chart1;
	TProgressBar *ProgressBar;
	TTabSheet *TabSheet2;
	TTabSheet *TabSheet3;
	TTabSheet *TabSheet4;
	TTabSheet *TabSheet5;
	TButton *Button4;
	TLabel *Label10;
	TEdit *Edit3;
	TLabel *Label12;
	TLabel *Label11;
	TEdit *Edit4;
	TChart *Chart4;
	TPanel *Panel2;
	TButton *Button3;
	TLabel *Label13;
	TProgressBar *ProgressBar1;
	TCheckBox *CheckBox4;
	TButton *Button1;
	TCheckBox *CheckBox2;
	TChart *Chart2;
	TLineSeries *Series3;
	TLineSeries *Series2;
	TLabel *Label4;
	TEdit *Edit1;
	TLabel *Label5;
	TEdit *Edit2;
	TCheckBox *CheckBox3;
	TMenuItem *N5;
	TButton *Button6;
	TLineSeries *Series4;
	TAreaSeries *LineSeries2;
	TButton *Button7;
	TLabel *Label15;
	TPanel *Panel3;
	TListView *ListView1;
	TListView *ListView2;
	TButton *Button5;
	TToolButton *ToolButton5;
	TToolButton *ToolButton6;
	TImageList *ImageList3;
	TLineSeries *Series1;
	TButton *Button8;
	TPanel *Panel5;
	TPanel *Panel4;
	TChart *Chart5;
	TLineSeries *LineSeries3;
	TLineSeries *Series5;
	TSplitter *Splitter1;
	TXMLDocument *XMLDocument1;
	TMenuItem *N6;
	TSplitter *Splitter2;
	TPanel *Panel6;
	TSplitter *Splitter3;
	TSplitter *Splitter4;
	TPanel *Panel8;
	TLabel *Label2;
	TLabel *Label3;
	TButton *Button9;
	TSplitter *Splitter5;
	TMemo *Memo1;
	TToolBar *ToolBar2;
	TToolButton *ToolButton7;
	TImageList *ImageList4;
	TPanel *Panel10;
	TPanel *Panel7;
	TSplitter *Splitter6;
	TChart *Chart3;
	TPanel *Panel1;
	TAreaSeries *LineSeries1;
	TLineSeries *Series6;
	TPanel *Panel9;
	TLabel *Label14;
	TButton *Button2;
	TToolBar *ToolBar3;
	TToolButton *ToolButton8;
	TSplitter *Splitter7;
	TChart *Chart6;
	TLineSeries *LineSeries4;
	TLineSeries *LineSeries5;
	TPanel *Panel11;
	TSplitter *Splitter8;
	TToolBar *ToolBar4;
	TToolButton *ToolButton9;
	TImageList *ImageList5;
	TToolButton *ToolButton10;
	TMenuItem *N7;
	TToolButton *ToolButton11;
	void __fastcall Timer1Timer(TObject *Sender);
	void __fastcall chckbxLFDClick(TObject *Sender);
	void __fastcall chckbxFEUClick(TObject *Sender);
	void __fastcall cspnbtnFEUDownClick(TObject *Sender);
	void __fastcall cspnbtnFEUUpClick(TObject *Sender);
	void __fastcall cspnbtnTemperatureDownClick(TObject *Sender);
	void __fastcall cspnbtnTemperatureUpClick(TObject *Sender);
	void __fastcall cspnbtnAngleDownClick(TObject *Sender);
	void __fastcall cspnbtnAngleUpClick(TObject *Sender);
	void __fastcall cspnbtnReadDataBlockDownClick(TObject *Sender);
	void __fastcall cspnbtnReadDataBlockUpClick(TObject *Sender);
	void __fastcall edtReadDataBlockExit(TObject *Sender);
	void __fastcall edtReadDataBlockKeyUp(TObject *Sender, WORD &Key, TShiftState Shift);
	void __fastcall bbtnSaveClick(TObject *Sender);
	void __fastcall bbtnReconnectClick(TObject *Sender);
	void __fastcall edtFEUKeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall edtTemperatureKeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall edtAngleKeyPress(TObject *Sender, wchar_t &Key);
	void __fastcall spbtnReadDataClick(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall cmbbxFrequencyKeyDown(TObject *Sender, WORD &Key, TShiftState Shift);
	void __fastcall cmbbxFrequencyKeyUp(TObject *Sender, WORD &Key, TShiftState Shift);
	void __fastcall cmbbxFrequencyClick(TObject *Sender);
	void __fastcall Action1Execute(TObject *Sender);
	void __fastcall ToolButton5Click(TObject *Sender);
	void __fastcall ToolButton4Click(TObject *Sender);
	void __fastcall ToolButton2Click(TObject *Sender);
	void __fastcall ToolButton3Click(TObject *Sender);
	void __fastcall N4Click(TObject *Sender);
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall CheckBox2Click(TObject *Sender);
	void __fastcall Button2Click(TObject *Sender);
	void __fastcall Button3Click(TObject *Sender);
	void __fastcall CheckBox3Click(TObject *Sender);
	void __fastcall Button4Click(TObject *Sender);
	void __fastcall CheckBox4Click(TObject *Sender);
	void __fastcall N5Click(TObject *Sender);
	void __fastcall Chart5MouseMove(TObject *Sender, TShiftState Shift, int X, int Y);
	void __fastcall Chart3MouseMove(TObject *Sender, TShiftState Shift, int X, int Y);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall Button6Click(TObject *Sender);
	void __fastcall Button7Click(TObject *Sender);
	void __fastcall Button9Click(TObject *Sender);
	void __fastcall ToolButton6Click(TObject *Sender);
	void __fastcall Button8Click(TObject *Sender);
	void __fastcall FormResize(TObject *Sender);
	void __fastcall N6Click(TObject *Sender);
	void __fastcall ListView3DblClick(TObject *Sender);
	void __fastcall ToolButton9Click(TObject *Sender);
	void __fastcall ToolButton10Click(TObject *Sender);
	void __fastcall N7Click(TObject *Sender);






private:	// User declarations
	bool bTimerExecuting;

	MeasuresData measuresData;



	bool __fastcall ReadDataEx();
	bool __fastcall ReadDataBlocks(int num);
	bool __fastcall UpdateDevicesCondition();
	bool __fastcall UpdateTemperature();

	bool __fastcall UpdateIntensity();
	bool __fastcall SaveDataToFile(UnicodeString uFileNameStr);

	void __fastcall SetNewData(WORD* Data,DWORD dwNumData);
	void __fastcall NewDataView();

	void __fastcall ChangeAmplification(bool bIncrease);
	void __fastcall SetAmplification(WORD value);

	void __fastcall ChangeTemperature(bool bIncrease);
	void __fastcall SetTemperature(double value);

	void __fastcall ChangeAngle(bool bIncrease);
	void __fastcall SetAngle(double value);

	void __fastcall ChangeReadDataBlock(bool bIncrease);


	void __fastcall edtTemperature_Init();
	void __fastcall edtAngle_Init();
	void __fastcall edtReadDataBlock_Init();
	void file_open_msg(TWMCopyData &msg);

public:		// User declarations
	TVirtualStringTree *vt;
    TProjectData *pd__;
	void __fastcall VtGetText(TBaseVirtualTree *Sender, PVirtualNode Node,
		  TColumnIndex Column, TVSTTextType TextType, UnicodeString &CellText);
	void __fastcall VtDblClick(TObject *Sender);
	void __fastcall VtClick(TObject *Sender);
    void __fastcall VtMouseUp(System::TObject* Sender, TMouseButton Button, Classes::TShiftState Shift, int X, int Y);


	void __fastcall edtFEU_Init();
	void __fastcall off(bool b);
	void __fastcall StartMonitoring();
	void __fastcall StopMonitoring();
	__fastcall TMainForm(TComponent* Owner);
	virtual __fastcall ~TMainForm() { delete vt; };

protected:

   BEGIN_MESSAGE_MAP
   MESSAGE_HANDLER(WM_COPYDATA, TWMCopyData, file_open_msg)
   END_MESSAGE_MAP(TForm)

};
//---------------------------------------------------------------------------
extern PACKAGE TMainForm *MainForm;
//---------------------------------------------------------------------------
#endif
