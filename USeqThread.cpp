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

	switch (mode) {
		case from_device:
		{
			if (*please_stop_)
				throw std::exception();

			Init();
            mean_temp = 0.0f;

			if (AcfParams.Multi_Angle)
				ScatAngle = (AcfParams.Initial_Angle + num_seq)*15.0;
			else
				ScatAngle = AcfParams.Initial_Angle*15.0;

			Sync(4, "Угол рассеяния: " + FloatToStr(ScatAngle));

            void *RecEvent = CreateEventA(NULL, 1, 0, NULL);

			for (int i = 0; i < AcfParams.n_rec; i++)
			{
                if (*please_stop_)
                {
                	Clear();
                	CloseHandle(RecEvent);
                	throw std::exception();
				}

				ResetEvent(RecEvent);
				num_rec = i;
				Sync(2);
				rec_ = &seq_->Add();

				TAcquireThread *t = new TAcquireThread(true);
				t->num_blocks = num_blocks;
				t->num_rec = i;
				t->Data=Data;
				t->WaitEvent = RecEvent;
				t->Start();
				Sleep(10);

				WaitForSingleObject(RecEvent, 10000);
				t->Free();

				GetPhysicalSnapShot();
				rec_->DataParams = DataParams;
//				DataParams_ = DataParams;

				rec_->rate = GetRate();
				rec_->prism = AcfParams.Prism;
				rec_->aperture = AcfParams.Aperture;
				rec_->polar = AcfParams.Polar;


				if (AcfParams.DoAcf) {
					CalculateACF();
					CalculateCumulants(acf_app);
					rec_->a0 = AcfParams.a0;
					rec_->a1 = AcfParams.a1;
					rec_->a2 = AcfParams.a2;
					rec_->x_pcs = AcfParams.x_pcs;
					rec_->pi = AcfParams.PI;

					Sync(1);
					if (AcfParams.DoMean)
					{
                     	mean_temp += DataParams.Temperature;
						DoMean();
					}
					SaveAcf();
				}
				SaveData();

				//delete [] Data;
			}

			if (*please_stop_)
			{
				Clear();
				CloseHandle(RecEvent);
				throw std::exception();
            }

			if (AcfParams.DoMean){
				num_rec = AcfParams.n_rec;
				FinishMean();
				DataParams.Temperature = mean_temp;
				DataParams.Viscosity = FormulaPuazeilia(mean_temp);

				CalculateCumulants(acf_app);
				seq_->a0 = AcfParams.a0;
				seq_->a1 = AcfParams.a1;
				seq_->a2 = AcfParams.a2;
				seq_->x_pcs = AcfParams.x_pcs;
				seq_->pi = AcfParams.PI;

				Sync(3);
				SaveAcf(false);
			}

			Clear();

			if (AcfParams.Multi_Angle && (num_seq != (AcfParams.n_seq-1)))
				ChangeAngle();

			CloseHandle(RecEvent);
            SetEvent(wait_event);
			break;
		}
		case from_hdd:
		{
			bool init_ = false;
			num_rec = 0;
			mean_temp = 0.0f;
			for (size_t i=0; i < (*pd_)[num_seq].SizeOf(); i++) {
				if (!(*pd_)[num_seq][i].process_)
					continue;
				DataParams_ = (*pd_)[num_seq][i].DataParams;
				if (!init_)
				{
					if (FileExists((*pd_)[num_seq][i].Data_))
						init_ = Init(OpenData(num_seq, i, true));
					else
					{
						Sync(4,"Не удалось открыть файл: " + (*pd_)[num_seq][i].Data_);
						SetEvent(wait_event);
						return;
					}
				}

				if (FileExists((*pd_)[num_seq][i].Data_))
					OpenData(num_seq, i, false);
				else
				{
					Sync(4, "Не удалось открыть файл: " + (*pd_)[num_seq][i].Data_);
					SetEvent(wait_event);
                    return;
				}

                CalculateACF();
				CalculateCumulants(acf_app, DataParams_);
				(*pd_)[num_seq][i].a0 = AcfParams.a0;
				(*pd_)[num_seq][i].a1 = AcfParams.a1;
				(*pd_)[num_seq][i].a2 = AcfParams.a2;
				(*pd_)[num_seq][i].x_pcs = AcfParams.x_pcs;
				(*pd_)[num_seq][i].pi = AcfParams.PI;
				DataParams = DataParams_;

				SaveAcf(num_seq, i);
				Sync(1);

				if (DoMean_){
					mean_temp += DataParams_.Temperature;
					DoMean();
				}
				num_rec++;
			}

			if ((DoMean_) && (num_rec != 0)){
				FinishMean();
				DataParams_.Temperature = mean_temp;
				DataParams_.Viscosity = FormulaPuazeilia(mean_temp);
				CalculateCumulants(acf_app, DataParams_);
                (*pd_)[num_seq].a0 = AcfParams.a0;
                (*pd_)[num_seq].a1 = AcfParams.a1;
                (*pd_)[num_seq].a2 = AcfParams.a2;
                (*pd_)[num_seq].x_pcs = AcfParams.x_pcs;
                (*pd_)[num_seq].pi = AcfParams.PI;
                SaveAcf(num_seq, -1);

				Sync(3);
			}

			Clear();
			SetEvent(wait_event);
        	break;
        }

	}
}

double __fastcall TSeqThread::GetRate()
{
	double dt = GetTime_Discr(AcfParams.Time_discr);

	double time = 0.0;

	for (int i=0; i < n0; ++i)
		time += (double)Data[i];

	if (n0)
		return (double)n0/(1.0e-9*dt*time);
	else
    	return 0.0;
}

void __fastcall TSeqThread::CalculateACF() {


	int sum1_ = 0, tr;
	int ind1 = 0, ind2 = 0;


	/*
    std::vector<int> temp_data;
    temp_data.reserve(n0);

	{
		double mean_time = 0.0;

		for (int i=0; i < n0; ++i)
			mean_time +=  (double)Data[i];

		mean_time /= (double)n0;
		mean_time *= 0.1;

		int sum_tmp = 0;

		for (int i=0; i < n0; ++i)
		{
			if (sum_tmp)
			{
				temp_data.push_back(sum_tmp + Data[i]);
				sum_tmp = 0;
				continue;
			}

			if (Data[i] <= mean_time) {
				sum_tmp = Data[i];
				continue;
			}

			temp_data.push_back(Data[i]);

		   /*
		   sum_tmp += Data[i];

		   if ((double)sum_tmp >= mean_time)
		   {
				temp_data.push_back(sum_tmp);
				sum_tmp = 0;
		   }
		   */
	/*
		}

//		n0 = (int)temp_data.size();

//		delete [] Data;
//		Data = new


//		temp_data.clear();
	}

      */


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

		for (size_t k=0; k < d.size(); k++) {

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
		   //	MainForm->Memo1->Lines->Add("Угол рассеяния "+FloatToStrF(params_.ScatAngle, ffFixed, 5, 2));
			break;
		case 1:
            MainForm->Memo1->Lines->Add("");
			MainForm->LineSeries3->Clear();
			MainForm->Series5->Clear();
//			MainForm->Series1->Clear();
			for (int i=0; i < acf.w; i++) 
			{
				if ((acf.a[i] >= 0.0f) && (acf.a[i] <= 1.0f)) 
					MainForm->LineSeries3->AddXY(acf_t.a[i], acf.a[i]);
				else
					MainForm->LineSeries3->AddNullXY(acf_t.a[i], 0.0f);

				MainForm->Series5->AddXY(acf_t.a[i], acf_app[i]);
//				MainForm->Series1->AddXY(i, Data[i]);
			}
			MainForm->Memo1->Lines->Add("Температура "+FloatToStrF(DataParams.Temperature-273.15, ffFixed, 5, 2));
			s = "Показатель полидисперсности " + FloatToStrF(AcfParams.PI, ffFixed,5,3);
			MainForm->Memo1->Lines->Add(s);
			MainForm->Label3->Caption = s;
			s = "Средний диаметр частиц " + FloatToStrF(AcfParams.x_pcs, ffFixed, 5, 2)+" нм";
			MainForm->Memo1->Lines->Add(s);
			MainForm->Label2->Caption = s;
			MainForm->Memo1->Lines->Add("");

			if (AcfParams.Kinetics)
			{
				MainForm->Chart6->LeftAxis->Title->Caption = "Средний диаметр, нм.";
				MainForm->Chart6->BottomAxis->Title->Caption = "Номер измерения";
				MainForm->LineSeries4->Add(AcfParams.x_pcs);
				MainForm->LineSeries5->Add(AcfParams.x_pcs);
			}
			else
			{
				MainForm->LineSeries4->Clear();
				MainForm->LineSeries5->Clear();
				MainForm->Chart6->LeftAxis->Title->Caption = "Скорость счета, имп./с";
				MainForm->Chart6->BottomAxis->Title->Caption = "Время, мс";
				std::vector<double> rate, time;
				getRateGraph(Data, n0, rate, time);
				for (size_t i=0; i < rate.size(); ++i)
				{
					MainForm->LineSeries4->AddXY(time[i], rate[i]);
					MainForm->LineSeries5->AddXY(time[i], rate[i]);
                }
			}

			break;
		case 2:
			MainForm->Memo1->Lines->Add("");
			s= "Измерение "+IntToStr(num_rec+1)+" из "+IntToStr(AcfParams.n_rec);
//			StatusRecForm->Label2->Caption = s;
			MainForm->Memo1->Lines->Add(s);
			break;

		case 3:
			MainForm->Memo1->Lines->Add("");
			MainForm->Memo1->Lines->Add("Усредненная АКФ:");
			MainForm->LineSeries3->Clear();
			MainForm->Series5->Clear();
			for (int i=0; i < acf.w; i++)
			{
				if ((acf.a[i] >= 0.0f) && (acf.a[i] <= 1.0f))
					MainForm->LineSeries3->AddXY(acf_t.a[i], acf.a[i]);
				else
					MainForm->LineSeries3->AddNullXY(acf_t.a[i], 0.0f);

				MainForm->Series5->AddXY(acf_t.a[i], acf_app[i]);
			}

			s = "Показатель полидисперсности " + FloatToStrF(AcfParams.PI, ffFixed,5,3);
			MainForm->Memo1->Lines->Add(s);
			MainForm->Label3->Caption = s;
			s = "Средний диаметр частиц " + FloatToStrF(AcfParams.x_pcs, ffFixed, 5, 2)+" нм";
			MainForm->Memo1->Lines->Add(s);
			MainForm->Label2->Caption = s;
			MainForm->Memo1->Lines->Add("");
			/*
			if (AcfParams.Kinetics)
			{
				MainForm->Chart6->LeftAxis->Title->Caption = "Средний диаметр, нм.";
				MainForm->Chart6->BottomAxis->Title->Caption = "Номер измерения";
				MainForm->LineSeries4->Add(AcfParams.x_pcs);
				MainForm->LineSeries5->Add(AcfParams.x_pcs);
			}
            */
			break;
		case 4: MainForm->Memo1->Lines->Add(s); break;


	default:
		;
	}
}

bool CalculateCumulants(double *acf_app, TDataParams DataParams_){

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
		while ((ind_right < acf_t.w) && (acf.a[ind_right] >= thr))
			ind_right++;

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
	
	double *cum = new double[cnt];
	double *cum_t = new double[cnt];
	double *_w = new double[cnt];


	for (int i = ind_left; i < ind_right; i++)
	{
		cum_t[i-ind_left] = acf_t.a[i];

		if (acf.a[i] < 0.0)
		{
			cum[i-ind_left] = 1e-3;
			continue;
		}
		if (acf.a[i] > 1.0)
		{
			cum[i-ind_left] = 1.0;
			continue;
		}
		cum[i-ind_left] = acf.a[i];
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


	double q = 4*M_PI*DataParams_.RefIndex*sin(DataParams_.ScatAngle/2*M_PI/180)/(DataParams_.WaveLength*1e-9);

	AcfParams.x_pcs = AcfParams.Kb*DataParams_.Temperature*pow(q,2)/(3*M_PI*DataParams_.Viscosity*AcfParams.a1)*1e9;

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

	return true;
}

bool CalculateCumulants(double *acf_app){

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
		while ((ind_right < acf_t.w) && (acf.a[ind_right] >= thr))
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
		cum_t[i-ind_left] = acf_t.a[i];

		if (acf.a[i] < 0.0)
		{
			cum[i-ind_left] = 1e-3;
			continue;
		}
		if (acf.a[i] > 1.0)
		{
			cum[i-ind_left] = 1.0;;
            continue;
		}

		cum[i-ind_left] = acf.a[i];
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

	return true;
}

bool __fastcall TSeqThread::Init(int n) //from_hdd
{
	n0 = n;
	Data = new WORD[n0];
	sum1 = new __int64[n0];
	sum2 = new __int64[n0];


	N = 14;
	M = 8;
	Navt = M*N;
	_m = new int[M*N];

	double dt = GetTime_Discr(DataParams_.Discr_Time);

	step = 500/dt;
	dt*=1e-3;

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

	if (DoMean_){
		acf_mean = new double[Navt];
		memset(acf_mean, 0, Navt*sizeof(double));
	}

	return true;
}

void __fastcall TSeqThread::Init() // from_device
{

	n0 = num_blocks * BLOCK_DATA_NUM;
	Data = new WORD[n0];
	sum1 = new __int64[n0];
	sum2 = new __int64[n0];


	N = 14;
	M = 8;
	Navt = M*N;
	_m = new int[M*N];

	double dt = GetTime_Discr(AcfParams.Time_discr);

	step = 500/dt;

	dt*=1e-3;

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
	if (AcfParams.DoMean || DoMean_)
    	delete [] acf_mean;
}

void __fastcall TSeqThread::DoMean(){

	for (int i=0; i < Navt; i++)
		acf_mean[i]+=acf.a[i];

}

void __fastcall TSeqThread::FinishMean(){

   for (int i=0; i < Navt; i++)
	 acf.a[i] = acf_mean[i]/(float)num_rec;

   mean_temp /= (float)num_rec;

  /*
   CalculateCumulants(acf_app);

   mm=3;
   Synchronize(&Draw);
   */
}

void __fastcall TSeqThread::SaveData(){

	char buff[50];
	sprintf(buff, "_%.3d_%.3d", num_seq+1, num_rec+1);
	s = AcfParams.Save_Dir + "\\" + AcfParams.File_Name + buff+".idata";
	rec_->Data_ = s;
	int f = FileCreate(s);
	FileWrite(f, &n0, sizeof(int));
	FileWrite(f, (void *)Data, n0*sizeof(WORD));
	FileWrite(f, &DataParams, sizeof(TDataParams));
	FileClose(f);

	/*
	s = "Сохранение данных: "+s;
	mm=4;
	Synchronize(&Draw);
	*/

}

void __fastcall TSeqThread::SaveAcf(bool k){

	char buff[50];

	if (k)
		sprintf(buff, "_%.3d_%.3d", num_seq+1, num_rec+1);
	else
		sprintf(buff, "_%.3d", num_seq+1);

	s = AcfParams.Save_Dir + "\\" + AcfParams.File_Name + buff+".tdf";

	if (k)
		rec_->Acf_ = s;
	else
		seq_->Mean_Acf_ = s;

	SaveAcf2Tdf(s);
    SaveAcf2Crv(s);

	/*
	s = "Сохранение АКФ: "+s;
	mm=4;
	Synchronize(&Draw);
	*/

}

void __fastcall TSeqThread::SaveAcf(int ns, int nr){

	char buff[50];
	if (nr != -1)
		sprintf(buff, "_%.3d_%.3d", ns+1, nr+1);
	else
		sprintf(buff, "_%.3d", ns+1);

	s = pd_->Path + "\\" + pd_->Name + buff+".tdf";

	SaveAcf2Tdf(s, DataParams_);
	SaveAcf2Crv(s);
	/*
	s = "Сохранение АКФ: "+s;
	mm=4;
	Synchronize(&Draw);
	*/

	if (nr == -1)
		(*pd_)[ns].Mean_Acf_ = s;
	else
    	(*pd_)[ns][nr].Acf_ = s;

}

bool __fastcall TSeqThread::ChangeAngle()
{

	char angle_ = (char)(AcfParams.Initial_Angle + num_seq + 1);

	if (angle_ > 10)
		return false;

	if (device.SetAngle(angle_))
	/*(char)(AcfParams.Initial_Angle+num_seq+1)*/
	{
		Status status;
		void *q = CreateEventA(NULL, 1, 0, NULL);

		do {
			device.GetStatus(status);
			WaitForSingleObject(q, 100);
		}
		while (!status.bits.goniometer);

		CloseHandle(q);
		return true;
	}
	return false;
}

void __fastcall TSeqThread::SetParams(TSeqThreadParams params)
{
//    params_ = params;
}


int __fastcall TSeqThread::OpenData(int n_seq, int n_rec, bool GetCnt)
{
	char buff[50];
    sprintf(buff, "_%.3d_%.3d", n_seq+1, n_rec+1);
//	UnicodeString s = params_.Save_Dir + "\\" + params_.File_Name + buff+".idata";
	s = (*pd_)[n_seq][n_rec].Data_;

	int f = FileOpen(s, fmOpenRead);
	int n = 0;
	FileRead(f, &n, sizeof(int));

	if (!GetCnt) {
		FileRead(f, (void *) Data, n*sizeof(WORD));
	  //	FileRead(f, (void *)&DataParams, sizeof(TDataParams));
		/*
		s = "Открытие  данных: "+s;
		mm=4;
		Synchronize(&Draw);
		*/

	}
	/*
	else
	{
		FileSeek(f, (int)(n*sizeof(WORD)+sizeof(int)), 0);
		FileRead(f, (void *)&DataParams, sizeof(TDataParams));
	}

	*/
	FileClose(f);

	return n;
}

bool __fastcall TSeqThread::GetPhysicalSnapShot(){
	DataParams.WaveLength = AcfParams.lambda;
	DataParams.ScatAngle = ScatAngle;

	double t = 0.0;
	device.GetTemperature(t);

	if (t)
		DataParams.Temperature = t;
	else
    	DataParams.Temperature = 298.15;
//	if (!device.GetTemperature(t))
//		return false;



	DataParams.Viscosity = FormulaPuazeilia(DataParams.Temperature);
	DataParams.RefIndex = AcfParams.n;
	DataParams.Discr_Time = AcfParams.Time_discr;
	return true;
}
// ---------------------------------------------------------------------------

