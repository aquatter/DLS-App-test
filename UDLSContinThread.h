//---------------------------------------------------------------------------

#ifndef UDLSContinThreadH
#define UDLSContinThreadH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <vector>
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
	void FindPeaks();
	std::vector<double>peaks;
	__fastcall TDLSContinThread(bool CreateSuspended);
};
extern TDLSContinThread *DLSContinThread;
//---------------------------------------------------------------------------
#endif
