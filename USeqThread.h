//---------------------------------------------------------------------------

#ifndef USeqThreadH
#define USeqThreadH
//---------------------------------------------------------------------------
#include <Classes.hpp>
//---------------------------------------------------------------------------
class TSeqThread : public TThread
{
private:
protected:
	void __fastcall Execute();
public:
	int num_blocks;
	int num_seq;
	WORD *Data;
	UnicodeString s;
	int mm, num_rec;
	double *acf_app, *acf_mean;
	float ScatAngle;
	int N, M, Navt, step;
	int *_m;
	int n0;
	__int64 *sum1;
	__int64 *sum2;


	void __fastcall CalculateACF();
	bool __fastcall CalculateCumulants();
	void __fastcall Draw();
	void __fastcall Init();
	void __fastcall Clear();
	void __fastcall DoMean();
	void __fastcall FinishMean();
	void __fastcall SaveData();
	void __fastcall SaveAcf(bool k = true);
	__fastcall TSeqThread(bool CreateSuspended);
};
//---------------------------------------------------------------------------
#endif
