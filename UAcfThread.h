//---------------------------------------------------------------------------

#ifndef UAcfThreadH
#define UAcfThreadH
//---------------------------------------------------------------------------
#include <Classes.hpp>
//---------------------------------------------------------------------------
class TAcfThread : public TThread
{
private:
protected:
	void __fastcall Execute();
	void __fastcall Draw();
public:
	int mm, prog, curr_block;
	TMyInfernalType _d;
	__fastcall TAcfThread(bool CreateSuspended);
};

void GaussFilter(TMyInfernalType& p, int frame);
void GaussFilter(double *p, int n, int frame);
void MeanFilter(double *p, int n, int frame);

extern TAcfThread *acfThread;
//---------------------------------------------------------------------------
#endif
