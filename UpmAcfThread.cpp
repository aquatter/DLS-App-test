//---------------------------------------------------------------------------

#include <vcl.h>
#include "UDlsVars.h"
#include "mem.h"
#include "Math.hpp"
#include "Math.h"
#include "MainFormUnit.h"
#include "Windows.h"

#pragma hdrstop

#include "UpmAcfThread.h"
#pragma package(smart_init)
//---------------------------------------------------------------------------

//   Important: Methods and properties of objects in VCL can only be
//   used in a method called using Synchronize, for example:
//
//      Synchronize(&UpdateCaption);
//
//   where UpdateCaption could look like:
//
//      void __fastcall TpmAcfThread::UpdateCaption()
//      {
//        Form1->Caption = "Updated in a thread";
//      }
//---------------------------------------------------------------------------

TpmAcfThread *pmAcfThread;

__fastcall TpmAcfThread::TpmAcfThread(bool CreateSuspended)
	: TThread(CreateSuspended)
{
}
//---------------------------------------------------------------------------
void __fastcall TpmAcfThread::Execute()
{
//  n_bins=16000;


//  delete [] acf_pm;
//
//  return;
  double t_izm = 1e5;
  double n_cnt_max = t_izm/AcfParams.t_discr;
  n_bins=Floor((double)(n_cnt_max+100));

  acf_pm = new int[n_bins];
  memset(acf_pm, 0, n_bins*sizeof(int));

  int _cnt=0;

//  q=0;


  for (int i=0; i < AcfParams.nRawData; i++) {
	/*
	_cnt=0;
	for (int j=i+1; (j < AcfParams.nRawData); j++) {
	  _cnt+=RawData.a[j];
	  if (_cnt >= n_cnt_max) {
		break;
	  }
	  acf_pm[_cnt]++;
	}
	*/



	_cnt+=RawData.a[i];

	if (_cnt >= n_cnt_max) {
	  _cnt=0;
	}
	else
	{
	  acf_pm[_cnt]++;
    }

	if (Terminated) {
		break;
	}
  }
  /*
 n1=1;
 int n_bins1=Floor(n_bins/n1);
 int *temp_acf = new int[n_bins1];
 memset(temp_acf, 0, n_bins1*sizeof(int));

 for (int i=0; i < n_bins1; i++) {
	 for (int j=0; j < n1; j++) {
	   temp_acf[i]+=acf_pm[i*n1+j];
	 }
 }
 delete [] acf_pm;
 n_bins=n_bins1;

 acf_pm = new int[n_bins];
 memcpy(acf_pm, temp_acf, n_bins*sizeof(int));

 delete [] temp_acf;
 */
//  q=q/n_izm;

  Synchronize(Draw);

  delete [] acf_pm;
}
//---------------------------------------------------------------------------
void __fastcall TpmAcfThread::Draw()
{
   double _t=AcfParams.t_discr*1e-3;



   for (int i=0; i < n_bins; i++) {
	 if (acf_pm[i])
	   MainForm->Series5->AddXY(i*_t, acf_pm[i]);
	 else
	 {
		MainForm->Series5->AddNullXY(i*_t, 0);
	 }
   }

  MainForm->Chart5->UndoZoom();
  MainForm->ProgressBar1->Visible=false;
  MainForm->Label13->Visible=false;
//  MainForm->Button6->Visible=false;
//  MainForm->Button3->Enabled=true;

//  ShowMessage("Стоп каналы "+FloatToStr(q)+"/n"+ "Число измерений "+IntToStr(n_izm));
//  delete [] acf_pm;
}
