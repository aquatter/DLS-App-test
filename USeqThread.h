//---------------------------------------------------------------------------

#ifndef USeqThreadH
#define USeqThreadH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include "UDlsVars.h"
#include "UProgectData.h"
//---------------------------------------------------------------------------


class TSeqThread : public TThread
{

private:
protected:
	void __fastcall Execute();
public:

	int num_seq;
	WORD *Data;
	UnicodeString s;
	int mm, num_rec;
	double *acf_app;
	double *acf_mean;
	double ScatAngle;
	int num_blocks;

	int N, M, Navt, step;
	int *_m;
	int n0;
	__int64 *sum1;
	__int64 *sum2;
    void *wait_event;

	TAquireMode mode;
	TSeqThreadParams params_;
	TDataParams DataParams_;
	TProjectData *pd_;
	TProjectData::TSeq *seq_;
	TProjectData::TRec *rec_;
	bool DoMean_;

	void __fastcall CalculateACF();
	void __fastcall SetParams(TSeqThreadParams params);
	void __fastcall Draw();
	void __fastcall Init();
	bool __fastcall Init(int n);
	void __fastcall Clear();
	void __fastcall DoMean();
	void __fastcall FinishMean();
	void __fastcall SaveData();
	int __fastcall OpenData(int n_seq, int n_rec, bool GetCnt);
	void __fastcall SaveAcf(bool k = true);
	void __fastcall SaveAcf(int ns, int nr);
	bool __fastcall ChangeAngle();
	bool __fastcall GetPhysicalSnapShot();
	__fastcall TSeqThread(bool CreateSuspended);
	void __fastcall Sync(int mm_, UnicodeString s_ = "")
	{
		mm = mm_;
		s = s_;
		Synchronize(&Draw);
	}
};

bool CalculateCumulants(double *acf_app);
bool CalculateCumulants(double *acf_app, TDataParams DataParams_);
//---------------------------------------------------------------------------
#endif
