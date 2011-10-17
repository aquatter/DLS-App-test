// ---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "USeqThread.h"
#include "UDlsVars.h"
#include "UAcquireThread.h"
#include "Math.hpp"
#include "Math.h"
#include "MainFormUnit.h"
#include "UStatusRecForm.h"
#include "DateUtils.hpp"

#pragma package(smart_init)
// ---------------------------------------------------------------------------

// Important: Methods and properties of objects in VCL can only be
// used in a method called using Synchronize, for example:
//
// Synchronize(&UpdateCaption);
//
// where UpdateCaption could look like:
//
// void __fastcall TSeqThread::UpdateCaption()
// {
// Form1->Caption = "Updated in a thread";
// }
// ---------------------------------------------------------------------------

__fastcall TSeqThread::TSeqThread(bool CreateSuspended) : TThread
(CreateSuspended) {
}

// ---------------------------------------------------------------------------
void __fastcall TSeqThread::Execute() {

	if (AcfParams.Multi_Angle)
		ScatAngle = AcfParams.Initial_Angle + num_seq*AcfParams.angle_step;
	else
		ScatAngle = AcfParams.Initial_Angle;

	mm=0;
	Synchronize(&Draw);

	Init();

	for (int i = 0; i < AcfParams.n_rec; i++) {
		mm=2;
		num_rec = i;
		Synchronize(&Draw);

		TAcquireThread *t = new TAcquireThread(true);
		t->num_blocks = num_blocks;
		t->num_seq = num_seq;
		t->num_rec = num_rec;
		t->ScatAngle = ScatAngle;
		t->Data=Data;

		t->Start();
		Sleep(10);

		WaitForSingleObject(&(t->Handle), INFINITE);
		t->Free();
		if (AcfParams.DoAcf) {
			CalculateACF();
			CalculateCumulants();
			mm=1;
			Synchronize(&Draw);
			if (AcfParams.DoMean)
				DoMean();
            SaveAcf();
		}
        SaveData();

	}
	if (AcfParams.DoMean){
		FinishMean();
		SaveAcf(false);
	}

	Clear();

    if (AcfParams.Multi_Angle) {
    	// многоугловой режим

    }
}

void __fastcall TSeqThread::CalculateACF() {


	int sum1_ = 0, tr;
	int ind1 = 0, ind2 = 0;

	tr = step;
	sum1_ = Data[0];

	while (ind1 < (n0-1)){

		while ((sum1_ <= tr) && (ind1 < (n0-1))) {
			sum1[ind1] = ind2;
			ind1++;
			sum1_ += Data[ind1];
		}

		ind2++;
		tr +=step;
	}


	typedef pair<__int64, __int64> mytype1;
	vector<mytype1> d;
	mytype1 q;

	ind1=0;
	while (ind1 < n0){
		q.first=sum1[ind1];
		q.second=0;
		while ((ind1 < n0)&& (sum1[ind1] == q.first)){
			ind1++;
			q.second++;
		}
		d.push_back(q);
	}

	int steps = ind2-1;
	double _mean = pow(double(n0)/double(steps),2);

	int sum2_, sum3_;

	for (int i=0; i < Navt; i++) {
		for (int j=0; j < n0; j++)
			sum2[j]=sum1[j]+_m[i];

		ind2=0;
		sum3_=0;

		for (int k=0; k < d.size(); k++) {

			sum2_=0;

			while ((sum2[ind2] < d[k].first) && (ind2 < n0)){
				ind2++;
			}
			while ((sum2[ind2] == d[k].first) && (ind2 < n0)){
				ind2++;
				sum2_++;
			}

			if (sum2_ )
				sum3_+=d[k].second*sum2_;

		}


		 /*
		while ((ind1 < n0) && (ind2 < n0)){

			sum1_=0;
			sum2_=0;

			tmp1=sum1[ind1];
			while ((sum1[ind1] == tmp1) && (ind1 < n0) && (ind2 < n0)){
				ind1++;
				sum1_++;
			}
			while ((sum2[ind2] < tmp1)&& (ind1 < n0) && (ind2 < n0)){
				ind2++;
			}
			while ((sum2[ind2] == tmp1)&& (ind1 < n0) && (ind2 < n0)){
				ind2++;
				sum2_++;
			}
			if ((sum1_ != 0) && (sum2_ != 0))
				sum3_+=sum1_*sum2_;
           */
	   /*
		while ((sum1[ind1] < sum2[ind2]) && (ind1 < n0) && (ind2 < n0))
			ind1++;

		while ((sum1[ind1] == sum2[ind2]) && (ind1 < n0) && (ind2 < n0)){
			sum++;
			ind1++;
		}

		while ((sum2[ind2] < sum1[ind1]) && (ind1 < n0) && (ind2 < n0))
			ind2++;

		while ((sum1[ind1] == sum2[ind2]) && (ind1 < n0) && (ind2 < n0)){
			sum++;
			ind2++;
		}


		}
		*/

		double tmp =(steps-_m[i]);
//		acf.a[i]=pow(sum/tmp, 2)/_mean;
    	acf.a[i]=sum3_/tmp/_mean-1;
//		s=IntToStr(i);
//        Synchronize(&Draw);

	}

    d.clear();
}

void __fastcall TSeqThread::Draw() {
	switch (mm) {
		case 0:
			MainForm->Memo1->Lines->Add("Угол рассеяния "+FloatToStrF(ScatAngle, ffFixed, 5, 2));
			break;
		case 1:
			MainForm->LineSeries3->Clear();
			MainForm->Series5->Clear();
//			MainForm->Series1->Clear();
			for (int i=0; i < acf.w; i++) {
				MainForm->LineSeries3->AddXY(acf_t.a[i], acf.a[i]);
				MainForm->Series5->AddXY(acf_t.a[i], acf_app[i]);
//				MainForm->Series1->AddXY(i, Data[i]);
				}
			MainForm->Memo1->Lines->Add("Температура "+FloatToStrF(DataParams.Temperature-273.15, ffFixed, 5, 2));
			MainForm->Memo1->Lines->Add("Показатель полидисперсности " + FloatToStrF(AcfParams.PI, ffFixed,5,3));
			MainForm->Memo1->Lines->Add("Средний диаметр частиц " + FloatToStrF(AcfParams.x_pcs, ffFixed, 5, 2)+" нм");
			MainForm->Memo1->Lines->Add("");

			break;
		case 2:
			StatusRecForm->Label2->Caption = "Измерение "+IntToStr(num_rec+1)+" из "+IntToStr(AcfParams.n_rec);
			break;

		case 3:

            MainForm->Memo1->Lines->Add("Среднее значение");
			MainForm->LineSeries3->Clear();
			MainForm->Series5->Clear();
			for (int i=0; i < acf.w; i++) {
				MainForm->LineSeries3->AddXY(acf_t.a[i], acf.a[i]);
				MainForm->Series5->AddXY(acf_t.a[i], acf_app[i]);
				}
			MainForm->Memo1->Lines->Add("Показатель полидисперсности " + FloatToStrF(AcfParams.PI, ffFixed,5,3));
			MainForm->Memo1->Lines->Add("Средний диаметр частиц " + FloatToStrF(AcfParams.x_pcs, ffFixed, 5, 2)+" нм");
			MainForm->Memo1->Lines->Add("");
			break;
	default:
		;
	}
}

bool __fastcall TSeqThread::CalculateCumulants(){

	int cnt, w, ind_left, ind_right;
	double max_100, _max;
	double mean = 0, left, right;

	AcfParams.a0 = 0;
	AcfParams.a1 = 0;
	AcfParams.a2 = 0;


	if (AcfParams.right_boundary) {

		ind_left = 0;
		while ((ind_left < acf_t.w) && (acf_t.a[ind_left] < AcfParams.cut))
			ind_left++;

		double thr = acf.a[ind_left] / 50;

		ind_right = ind_left;
		while ((ind_right < acf_t.w) && (acf_t.a[ind_right] < AcfParams.cut_after))
			ind_right++;


	 /*	for (int i = 0; i < acf_t.w; i++) {
			if (acf_t.a[i] > AcfParams.cut) {
				ind_left = i;
				break;
			}
		}

		double thr = acf.a[ind_left] / 50;

		ind_right = 0;
		for (int i = 0; i < acf_t.w; i++) {
			if (acf.a[i] < thr) {
				ind_right = i;
				break;
			}
		}
		*/

		left = AcfParams.cut;
		right = acf_t.a[ind_right];
	}
	else {
		ind_left = 0;
		while ((ind_left < acf_t.w) && (acf_t.a[ind_left] < AcfParams.cut))
			ind_left++;

		ind_right = ind_left;
		while ((ind_right < acf_t.w) && (acf_t.a[ind_right] < AcfParams.cut_after))
			ind_right++;

		left = AcfParams.cut;
		right = AcfParams.cut_after;
	}

	cnt = ind_right-ind_left;

	w = acf.w;
	/*
	cnt = 0;
	for (int i = 0; i < w; i++)
		if ((acf_t.a[i] >= left) && (acf_t.a[i] <= right))
			cnt++;
	*/

	double *cum = new double[cnt];
	double *cum_t = new double[cnt];
	double *_w = new double[cnt];


	for (int i = ind_left; i < ind_right; i++) {
		if (acf.a[i] < 0) {
			cum[i-ind_left] = 1e-3;
		}
		else {
			cum[i-ind_left] = acf.a[i];
		}

		cum_t[i-ind_left] = acf_t.a[i];
	}

	mean = 0;
	for (int i = 0; i < cnt; i++) {
		mean += pow(cum[i], 2);
	}
	mean /= cnt;

	for (int i = 0; i < cnt; i++) {
		_w[i] = pow(cum[i], 2) / mean;
		cum[i] = Ln(cum[i]) / 2;
	}

	HINSTANCE lib = LoadLibrary("dls.dll");
	pDLSCumulants DLSCumulants = (pDLSCumulants)GetProcAddress(lib, "DLSCumulants");

	DLSCumulants(cum, cum_t, _w, cnt, AcfParams.a0, AcfParams.a1, AcfParams.a2);

	FreeLibrary(lib);

	AcfParams.a1 *= 1e6;
	AcfParams.a2 *= 1e12;
	AcfParams.PI = fabs(2 * AcfParams.a2 / pow(AcfParams.a1, 2));

	double q = 4*M_PI*DataParams.RefIndex*sin(DataParams.ScatAngle/2*M_PI/180)/(DataParams.WaveLength*1e-9);

	AcfParams.x_pcs = AcfParams.Kb*DataParams.Temperature*pow(q,2)/(3*M_PI*DataParams.Viscosity*AcfParams.a1)*1e9;

	for (int i = ind_left; i < ind_right; i++) {
			cum_t[i-ind_left]*=1e-6;
			acf_app[i] = exp(2*(AcfParams.a0 - AcfParams.a1*cum_t[i-ind_left] + AcfParams.a2*cum_t[i-ind_left]*cum_t[i-ind_left]));
	}

	double min_ = MaxInt;
	int tmp_ind;
	for (int i = ind_left; i < ind_right; i++) {
		if (min_ > acf_app[i]) {
			min_ = acf_app[i];
			tmp_ind = i;
		}
	}
	ind_right = tmp_ind+1;


	for (int i=0; i < ind_left; i++)
		acf_app[i] = acf_app[ind_left];

	for (int i=ind_right; i < w; i++)
    	acf_app[i] = acf_app[ind_right-1];


	delete [] _w;
	delete [] cum;
	delete [] cum_t;

}

void __fastcall TSeqThread::Init(){

	n0 = num_blocks * BLOCK_DATA_NUM;
	Data = new WORD[n0];
	sum1 = new __int64[n0];
	sum2 = new __int64[n0];
	step = 100;

	N = 14;
	M = 8;
	Navt = M*N;
	_m = new int[M*N];
	double dt = 6.5e-3;

	acf.Clear();
	acf.Init(Navt, 1, mitDouble);
	acf_t.Clear();
	acf_t.Init(Navt, 1, mitDouble);
	acf_app = new double[Navt];


	for (int i=0; i < N; i++)
	{
		for (int j=0; j < M; j++)
		{
			_m[i*M+j]=(j+1)*pow(2,i)+M*(pow(2,i)-1);
			acf_t.a[i*M+j]=_m[i*M+j]*dt*step;
		}
	}

	if (AcfParams.DoMean){
		acf_mean = new double[Navt];
        memset(acf_mean, 0, Navt*sizeof(double));
	}

}

void __fastcall TSeqThread::Clear(){

	delete [] Data;
	delete [] sum1;
	delete [] sum2;
	delete [] _m;
	delete [] acf_app;
	if (AcfParams.DoMean)
    	delete [] acf_mean;
}

void __fastcall TSeqThread::DoMean(){

	for (int i=0; i < Navt; i++)
		acf_mean[i]+=acf.a[i];

}

void __fastcall TSeqThread::FinishMean(){

   for (int i=0; i < Navt; i++)
	 acf.a[i] = acf_mean[i]/num_rec;

   CalculateCumulants();

   mm=3;
   Synchronize(&Draw);
}

void __fastcall TSeqThread::SaveData(){

	char buff[50];
	sprintf(buff, "_%.3d_%.3d", num_seq+1, num_rec+1);
	UnicodeString s = AcfParams.Save_Dir + "\\" + AcfParams.File_Name + buff+".idata";
	int f = FileCreate(s);
	FileWrite(f, &n0, sizeof(int));
	FileWrite(f, (void *)Data, n0*sizeof(WORD));
	FileWrite(f, &DataParams, sizeof(TDataParams));
	FileClose(f);

}

void __fastcall TSeqThread::SaveAcf(bool k){

	char buff[50];
	if (k)
		sprintf(buff, "_%.3d_%.3d", num_seq+1, num_rec+1);
	else
		sprintf(buff, "_%.3d", num_seq+1);

	UnicodeString s = AcfParams.Save_Dir + "\\" + AcfParams.File_Name + buff+".tdf";
    SaveAcf2Tdf(s);

}


// ---------------------------------------------------------------------------
