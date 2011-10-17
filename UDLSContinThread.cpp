//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UDLSContinThread.h"
#include "MainFormUnit.h"
#include "UDlsVars.h"

#pragma package(smart_init)
//---------------------------------------------------------------------------

//   Important: Methods and properties of objects in VCL can only be
//   used in a method called using Synchronize, for example:
//
//      Synchronize(&UpdateCaption);
//
//   where UpdateCaption could look like:
//
//      void __fastcall TDLSContinThread::UpdateCaption()
//      {
//        Form1->Caption = "Updated in a thread";
//      }
//---------------------------------------------------------------------------

TDLSContinThread *DLSContinThread;

__fastcall TDLSContinThread::TDLSContinThread(bool CreateSuspended)
	: TThread(CreateSuspended)
{
}
//---------------------------------------------------------------------------
void __fastcall TDLSContinThread::Execute()
{
  HINSTANCE lib = LoadLibrary("dls.dll");

  pDLSContin DLSContin = (pDLSContin)GetProcAddress(lib, "DLSContin");
  DLSContin(cum_t.a, cum.a, contin_s.a, contin_g.a, AcfParams.ns, nt, AcfParams.alpha, 1e-6);

  FreeLibrary(lib);

  Synchronize(Draw);
}
//---------------------------------------------------------------------------

void __fastcall TDLSContinThread::Draw()
{
  MainForm->Panel1->Visible=false;

  MainForm->LineSeries1->Clear();
  MainForm->Series6->Clear();

  TGrad t;
  double a=0, b=1;
  if (AcfParams.grad_n >= 0) {
	t=AcfParams.grad.at(AcfParams.grad_n);
	a=t.a.ToDouble();
	b=t.b.ToDouble();
  }

  double x;
  if (AcfParams.cont_hist)
  {
	for (int i=0; i < AcfParams.ns; i++) {
	  x=contin_s.a[i]/k*b+a;
	  if ((x >= AcfParams.cont_low_graph) && (x <= AcfParams.cont_high_graph)) {
		MainForm->LineSeries1->AddXY(contin_s.a[i]/k*b+a, contin_g.a[i]);
	  }
	}
  }
  else
  {
	for (int i=0; i < AcfParams.ns; i++) {
	  x=contin_s.a[i]/k*b+a;
	  if ((x >= AcfParams.cont_low_graph) && (x <= AcfParams.cont_high_graph)) {
	    MainForm->Series6->AddXY(contin_s.a[i]/k*b+a, contin_g.a[i]);
	  }
	}
  }

}