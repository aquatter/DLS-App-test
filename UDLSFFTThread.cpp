//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UDLSFFTThread.h"
#include "MainFormUnit.h"
#include "UDlsVars.h"
#include "fftw3.h"
#include "math.h"

#pragma package(smart_init)
//---------------------------------------------------------------------------

//   Important: Methods and properties of objects in VCL can only be
//   used in a method called using Synchronize, for example:
//
//      Synchronize(&UpdateCaption);
//
//   where UpdateCaption could look like:
//
//      void __fastcall TDLSFFTThread::UpdateCaption()
//      {
//        Form1->Caption = "Updated in a thread";
//      }
//---------------------------------------------------------------------------

TDLSFFTThread *DLSFFTThread;

__fastcall TDLSFFTThread::TDLSFFTThread(bool CreateSuspended)
	: TThread(CreateSuspended)
{
}
//---------------------------------------------------------------------------
void __fastcall TDLSFFTThread::Execute()
{
  d = new double[n0];
  memset(d, 0, sizeof(double)*n0);

  int ind=1;

  for (int i=0; i < AcfParams.nRawData; i++) {
	while (RawData_t.a[i] > ind*time)
	  ind++;
	if (ind > n0)
	  break;
	d[ind-1]++;
  }

//  for (int i=0; i < n0; i++) {
//	d[i]=d[i]/time*1e9;
//  }

  fftw_complex *fft;
  fftw_plan plan;
  fft = (fftw_complex *)fftw_malloc(sizeof(fftw_complex)*n0);

  memset(fft, 0, sizeof(fftw_complex)*n0);

  for (int i=0; i < n0; i++) {
	fft[i][0]=d[i];
  }

  plan = fftw_plan_dft_1d(n0, fft, fft, FFTW_FORWARD, FFTW_ESTIMATE);
  fftw_execute(plan);
  fftw_destroy_plan(plan);

//  for (int i=0; i < n0; i++) {
//	fft[i][0]=pow(fft[i][0],2)+pow(fft[i][1],2);
//	fft[i][1]=0;
//  }
//
//  plan = fftw_plan_dft_1d(n0, fft, fft, FFTW_BACKWARD, FFTW_ESTIMATE);
//  fftw_execute(plan);
//  fftw_destroy_plan(plan);


  n2=n0/2;

  amp = new double[n2];
//  double n0_2 = pow(n0,2);

  for (int i=0; i < n2; i++) {
//	amp[i]=fft[i][0]/n0/n0;
	amp[i]=hypot(fft[i][0], fft[i][1])/n0;
//	amp[i]=(pow(fft[i][0],2)+pow(fft[i][1],2))/n0_2;
  }
  amp[0]=0;
  fftw_free(fft);



  Synchronize(Draw);
}
//---------------------------------------------------------------------------

void __fastcall TDLSFFTThread::Draw()
{
  MainForm->Panel2->Visible=false;
  MainForm->LineSeries2->Clear();
  double tmp = 1e6/(n0*time);
  for (int i=0; i < n2; i++) {
//	MainForm->LineSeries2->AddXY(i*time*1e-3, amp[i]);
	MainForm->LineSeries2->AddXY(i*tmp, amp[i]);
  }

  delete [] amp;
  delete [] d;
}
