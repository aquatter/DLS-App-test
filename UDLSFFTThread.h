//---------------------------------------------------------------------------

#ifndef UDLSFFTThreadH
#define UDLSFFTThreadH
//---------------------------------------------------------------------------
#include <Classes.hpp>
//---------------------------------------------------------------------------
class TDLSFFTThread : public TThread
{
private:
protected:
	void __fastcall Execute();
public:
	int n0, n2;
	double *amp, *d;
	double time;
	void __fastcall Draw();
	__fastcall TDLSFFTThread(bool CreateSuspended);
};

extern TDLSFFTThread *DLSFFTThread;
//---------------------------------------------------------------------------
#endif
