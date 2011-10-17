//---------------------------------------------------------------------------

#include <vcl.h>
#include "UDlsVars.h"
#include "mem.h"
#include "Math.hpp"
#include "Math.h"
#include "MainFormUnit.h"
#include "Windows.h"

#pragma hdrstop

#include "UAcfThread.h"
#pragma package(smart_init)
//---------------------------------------------------------------------------

//   Important: Methods and properties of objects in VCL can only be
//   used in a method called using Synchronize, for example:
//
//      Synchronize(&UpdateCaption);
//
//   where UpdateCaption could look like:
//
//      void __fastcall TAcfThread::UpdateCaption()
//      {
//        Form1->Caption = "Updated in a thread";
//      }
//---------------------------------------------------------------------------

TAcfThread *acfThread;

__fastcall TAcfThread::TAcfThread(bool CreateSuspended)
	: TThread(CreateSuspended)
{
}
//---------------------------------------------------------------------------
void __fastcall TAcfThread::Execute()
{                 /*
  int Navt = 100, cnt = 0;
  double df = 50, mean = 0, n_t, tmp, tmp1;
  AcfParams.n_avt=Navt;
  acf.Clear();
  acf.Init(Navt, 1, mitDouble);
  acf_t.Clear();
  acf_t.Init(Navt, 1, mitDouble);
  double *a = new double[Navt];
  double *b = new double[Navt];
  memset(a, 0, Navt*sizeof(double));
  memset(b, 0, Navt*sizeof(double));
  n_t=AcfParams.t_block;
  tmp=2*M_PI;

  for (int i = 0 ; (i < AcfParams.nRawData) && (RawData_t.a[i] < n_t) ; i++) {
	RawData.a[i]=cos(tmp*225*RawData_t.a[i]); //*NuttallWin(RawData_t.a[i], n_t/2, n_t);

  }

  for (int i = 0 ; (i < AcfParams.nRawData) && (RawData_t.a[i] < n_t) ; i++) {
	  cnt++;
//	  RawData.a[i]=RawData.a[i]*NuttallWin(RawData_t.a[i], n_t/2, n_t);
  }

//  mm=6;
//  Synchronize(Draw);
//  return;

  mm=1;

  for (int i = 0 ; (i < AcfParams.nRawData) && (RawData_t.a[i] < n_t) ; i++) {
	for (int j = 0; j < Navt; j++) {
		tmp1=tmp*df*(j+1)*RawData_t.a[i];
		a[j]+=cos(tmp1)*RawData.a[i];
		b[j]+=sin(tmp1)*RawData.a[i];
	}
	mean+=RawData.a[i];
	prog=100*i/cnt;
	Synchronize(Draw);
  }
  mean=pow(mean,2);

  for (int i=0; i < Navt; i++) {
	  acf.a[i]=(pow(a[i],2)+pow(b[i],2))/mean;
	  acf_t.a[i]=(i+1)*df;
  }



  delete [] a;
  delete [] b;

  mm=0;
  Synchronize(Draw);
  mm=2;
  Synchronize(Draw);

  return;    */

  int N=14, n, M=8, m, m1, Navt;


  double dt = 0.5, mean = 0, tmp;

  n=AcfParams.t_block*1e6/dt;

  double *p = new double[n];
  int *_m = new int[M*N];
  double *t_acf = new double[N*M];
  double t_total = dt*n;
  int q, R, y;

  tmp=1;

  Navt=M*N;



  AcfParams.n_avt=Navt;
  acf.Clear();
  acf.Init(Navt, 1, mitDouble);
  acf_t.Clear();
  acf_t.Init(Navt, 1, mitDouble);
  memset(t_acf, 0, N*M*sizeof(double));
  AcfParams.n_block=Floor(AcfParams._time/(t_total));
//  AcfParams.n_block=1;
  curr_block=1;
  mm=0;
  Synchronize(Draw);


  for (int i=0; i < N; i++)
  {
	for (int j=0; j < M; j++)
	{
	  _m[i*M+j]=(j+1)*pow(2,i)+M*(pow(2,i)-1);
	  _m[i*M+j]*=tmp;
	  acf_t.a[i*M+j]=_m[i*M+j]*dt;
	}
  }

//  curr_block=1;
  for (int u=0; u < AcfParams.n_block; u++)
  {

	Interp(p, n, u*t_total, dt);
//	GaussFilter(p, n, 50);
//	for (int i=0; i < n; i++)
//	{
//	  p[i]=(p[i]!=0) ? 1/p[i] : 0;
//	}

//   MeanFilter(p, n, 140);



	mean=0;
	for (int i=0; i < n; i++)
		mean+=p[i];

	mean=pow(mean/n, 2);


	for (int i=0; i < N; i++)
	{
		for (int j=0; j < M; j++)
		{
		  m1=i*M+j;
		  m=_m[m1];

//		  y= (i<2) ? i : 2;
//		  y=0;
//		  q=pow(2,y);
		  q=1;
		  R=Floor((n-m)/q);

		  tmp=0;
		  for (int k=0; k < R; k++)
			tmp+=p[k]*p[k+m];

		  acf.a[m1]=tmp/mean/R-1;

		  mm=1;
		  prog=100*m1/Navt;
		  Synchronize(Draw);
		}
	}
	for (int i=0; i < Navt; i++)
	  t_acf[i]+=acf.a[i];

	curr_block=u+1;
	mm=0;
	Synchronize(Draw);
	if (Terminated)
	  break;
  }

  for (int i=0; i < Navt; i++)
  {
	acf.a[i]=t_acf[i]/curr_block;
  }

//  GaussFilter(acf, AcfParams.Gauss_w);

  mm=4;
  Synchronize(Draw);

  mm=2;
  Synchronize(Draw);



  delete [] p;
  delete [] t_acf;
  delete [] _m;
  return;

   TMyInfernalType tmp_acf, arr;
   acf.Clear();
   acf.Init(AcfParams.n_avt, 1, mitDouble);
   acf_t.Clear();
   acf_t.Init(AcfParams.n_avt, 1, mitDouble);
   tmp_acf.Init(AcfParams.n_avt, 1, mitDouble);

   //---------- нахождение первого разбиения n0 -------------

   _d.Init(AcfParams.n0, 1, mitDouble);
   int ind_brk = 0;
   int l_min = AcfParams._p/AcfParams._m;
   double time_shift;
   int ind, ns;
   double t_block_mean = AcfParams.t_block*AcfParams.n_mean*1e6;
   curr_block = 0;

   for (int u=0; u < AcfParams.n_block; u++)
   {
	 if (Terminated)
	   break;
	 mm=1;
	 memset(_d.a, 0, AcfParams.n0*sizeof(double));
	 memset(tmp_acf.a, 0, AcfParams.n_avt*sizeof(double));


	 for (int r=0; r < AcfParams.n_mean; r++)
	 {
	   time_shift=t_block_mean*u+r*AcfParams.t_block*1e6;
	   ind=1;
	   for (int i=ind_brk; i < AcfParams.nRawData; i++)
       {
		 while (RawData.a[i] > (ind*AcfParams.dt0+time_shift))
		   ind++;
		 if (ind > AcfParams.n0)
		 {
		  ind_brk=i;
		  break;
		 }
		 _d.a[ind-1]++;
	   }
//	   mm=5;
//	   Synchronize(Draw);
//       Sleep(500);
	 }
//	 ind_brk--;

//	 for (int i=0; i < AcfParams.n0; i++)
//	   _d.a[i]/=AcfParams.n_mean;
//	   _d.a[i]=_d.a[i]/AcfParams.dt0*1e9/AcfParams.n_mean;
//	   _d.a[i]=_d.a[i]/AcfParams.dt0*1e9;
     mm=1;
	 ind=0;
	 // ------------- формирование коррелятора -------------

	 for (int i=0; i < AcfParams._s; i++)
	 {
	   q = pow(AcfParams._m, i);
	   ns = Floor(AcfParams.n0/q);
	   arr.Clear();
	   arr.Init(ns, 1, mitDouble);
	   for (int j=0; j < ns; j++)
	   {
		 for (int l=0; l < q; l++)
		   arr.a[j]+=_d.a[j*q+l];
//		 arr.a[j]/=q;
	   }

	   mean=0;
	   for (int j=0; j < ns; j++)
		 mean+=arr.a[j];
	   mean=pow(mean/ns, 2);

//	   _a = ( i == 0) ? 1 : l_min;

	   // ------------ нахождение s-ного коррелятора -----------
	   for (int j=l_min; j < AcfParams._p; j++)
	   {
		  tmp=0;
		  for (int l=0; l < (ns-j); l++)
			 tmp+=arr.a[l]*arr.a[l+j];
		  tmp_acf.a[ind]=tmp/mean/(ns-j)-1;
		  if (u == 0)
			acf_t.a[ind]=1e-3*(j*q)*AcfParams.dt0;
		  ind++;
		  prog=100*ind/AcfParams.n_avt;
		  Synchronize(&Draw);
	   }
	 }
	 // ---------------- оставшиеся точки функции ---------------
	 for (int j=AcfParams._p; j < ns; j++)
	 {
	   tmp=0;
	   for (int l=0; l < (ns-j); l++)
		 tmp+=arr.a[l]*arr.a[l+j];

	   tmp_acf.a[ind]=tmp/mean/(ns-j)-1;
	   if (u == 0)
		 acf_t.a[ind]=1e-3*(j*q)*AcfParams.dt0;
	   ind++;
	   prog=100*ind/AcfParams.n_avt;
	   Synchronize(&Draw);
	 }

	 if (AcfParams.Gauss_w != 0)
	   GaussFilter(tmp_acf, AcfParams.Gauss_w);


	 for (int i=0; i < AcfParams.n_avt; i++)
		acf.a[i]+=tmp_acf.a[i];

	 curr_block=u+1;

	 mm=0;
	 Synchronize(&Draw);
     if (Terminated)
       break;
   }

  for (int i=0; i < AcfParams.n_avt; i++)
  {
	acf.a[i]/=curr_block;
//	acf.a[i]--;
//	acf_t.a[i]*=1e-3;
  }



  double cut=1e-3*AcfParams.n0*AcfParams.dt0*(100-AcfParams.cut)/100;
  for (int i=0; i < AcfParams.n_avt; i++) {
	if (acf_t.a[i] > cut)
		acf.a[i]=0;
  }

  mm=4;
  Synchronize(&Draw);

  tmp_acf.Clear();
  _d.Clear();
  arr.Clear();

  mm=2;
  Synchronize(&Draw);
}
//---------------------------------------------------------------------------

void __fastcall TAcfThread::Draw()
{

   switch (mm)
   {
	 case 0: MainForm->LineSeries3->Clear();
			 for (int i=0; i < AcfParams.n_avt; i++)
//			   if (acf.a[i] >= 1)
				 MainForm->LineSeries3->AddXY(acf_t.a[i], acf.a[i], "", clRed);
			 MainForm->Label13->Caption="Раcсчитывается блок "+IntToStr(curr_block)+" из "+IntToStr(AcfParams.n_block);

	 break;
	 case 1: MainForm->ProgressBar1->Position=prog;
	 break;
	 case 2: MainForm->ProgressBar1->Visible=false;
			 MainForm->Label13->Visible=false;
			 MainForm->Button6->Visible=false;
			 MainForm->Button3->Enabled=true;
             SetEvent(AcfDone);
	 break;
	 case 4: MainForm->LineSeries3->Clear();
			 for (int i=0; i < AcfParams.n_avt; i++)
			   MainForm->LineSeries3->AddXY(acf_t.a[i], acf.a[i], "", clRed);
	 break;
	 case 5: MainForm->LineSeries3->Clear();
			 MainForm->Chart5->Axes->Bottom->Logarithmic=false;

			 for (int i=0; i < 500; i++)
			   MainForm->LineSeries3->AddXY(i, _d.a[i], "", clRed);
	 break;
	 case 6: MainForm->LineSeries3->Clear();
			 for (int i = 0 ; (i < AcfParams.nRawData) && (RawData_t.a[i] < AcfParams.t_block) ; i++) {
			   MainForm->LineSeries3->AddXY(RawData_t.a[i], RawData.a[i], "", clRed);
			 }
	 break;
   }
}

void GaussFilter(TMyInfernalType& p, int frame)
{
  double *g = new double[frame];
  double *tmp = new double[p.w];
  int q=frame/2;
  double cnt, sum;
  memcpy(tmp, p.a, p.w*sizeof(double));

  for (int i=0; i < frame; i++)
	g[i]=exp(-Power((float)i-q,2)/(2*q));

  for (int i=0; i < p.w; i++)
  {
	 cnt=0;
	 sum=0;
	 for (int j=-q; j < (q+1); j++)
		if (((i+j)>0)&& ((i+j)<p.w))
		{
		  sum+=p.a[i+j]*g[j+q];
		  cnt+=g[j+q];
		};

	 tmp[i]=sum/cnt;
  }
  memcpy(p.a, tmp, p.w*sizeof(double));

  delete [] g;
  delete [] tmp;
}

void GaussFilter(double *p, int n, int frame)
{
  double *g = new double[frame];
  double *tmp = new double[n];
  int q=frame/2;
  double cnt, sum;
  memcpy(tmp, p, n*sizeof(double));

  for (int i=0; i < frame; i++)
	g[i]=exp(-pow(i-q,2)/(2*q));

  for (int i=0; i < n; i++)
  {
	 cnt=0;
	 sum=0;
	 for (int j=-q; j < (q+1); j++)
		if (((i+j)>0)&& ((i+j)<n))
		{
		  sum+=p[i+j]*g[j+q];
		  cnt+=g[j+q];
		};

	 tmp[i]=sum/cnt;
  }
  memcpy(p, tmp, n*sizeof(double));

  delete [] g;
  delete [] tmp;
}

void MeanFilter(double *p, int n, int frame)
{
  double *tmp = new double[n];
//  memcpy(tmp, p, n*sizeof(double));
  memset(tmp, 0, n*sizeof(double));
  double sum;
  int q=frame/2;

  for (int i=q; i < (n-q); i++)
  {
	 sum=0;
	 for (int j=-q; j < (q+1); j++)
	 {
	   sum+=p[i+j];
	 };

	 tmp[i]=sum/frame;
  }

  memcpy(p, tmp, n*sizeof(double));

  delete [] tmp;
}
