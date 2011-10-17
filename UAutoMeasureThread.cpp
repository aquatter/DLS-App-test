//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UAutoMeasureThread.h"
#include "MainFormUnit.h"
#include "UDlsVars.h"
#include "UAutoProgressForm.h"

#pragma package(smart_init)
//---------------------------------------------------------------------------

//   Important: Methods and properties of objects in VCL can only be
//   used in a method called using Synchronize, for example:
//
//      Synchronize(&UpdateCaption);
//
//   where UpdateCaption could look like:
//
//      void __fastcall TAutoMeasureThread::UpdateCaption()
//      {
//        Form1->Caption = "Updated in a thread";
//      }
//---------------------------------------------------------------------------

TAutoMeasureThread *AutoMeasureThread;

__fastcall TAutoMeasureThread::TAutoMeasureThread(bool CreateSuspended)
	: TThread(CreateSuspended)
{
}
//---------------------------------------------------------------------------
void __fastcall TAutoMeasureThread::Execute()
{
//   WaitEvent=CreateEventA(NULL, true, false, NULL);

   n=1;
   ResetEvent(CaptureDone);
   Synchronize(Draw);
   WaitForSingleObject(CaptureDone, INFINITE);
   n=2;
   ResetEvent(AcfDone);
   Synchronize(Draw);
   WaitForSingleObject(AcfDone, INFINITE);
   n=3;
   Synchronize(Draw);

//   CloseHandle(WaitEvent);

	//---- Place thread code here ----
}
//---------------------------------------------------------------------------
void __fastcall TAutoMeasureThread::Draw()
{
  switch (n) {
	case 1: AutoProgressForm->Label1->Caption="Запись данных";
			MainForm->PageControl1->ActivePageIndex=0;
			Application->ProcessMessages();
			MainForm->spbtnReadDataClick(NULL);
			break;

	case 2: AutoProgressForm->Label1->Caption="Расчет автокорреляционной функции";
			MainForm->PageControl1->ActivePageIndex=n;
			MainForm->Button3Click(NULL);
			break;

	case 3: AutoProgressForm->Label1->Caption="Расчет диаметра частиц";
			MainForm->PageControl1->ActivePageIndex=n;
			MainForm->Button1Click(NULL);
			MainForm->off(true);
            AutoProgressForm->Close();
			break;
  default:
	  ;
  }

}
