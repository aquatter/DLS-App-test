//---------------------------------------------------------------------------

#ifndef UDLSContinThreadH
#define UDLSContinThreadH
//---------------------------------------------------------------------------
#include <Classes.hpp>
//---------------------------------------------------------------------------
class TDLSContinThread : public TThread
{
private:
protected:
	void __fastcall Execute();
	void __fastcall Draw();
public:
	int nt;
	double k;
	__fastcall TDLSContinThread(bool CreateSuspended);
};
extern TDLSContinThread *DLSContinThread;
//---------------------------------------------------------------------------
#endif
