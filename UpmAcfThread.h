//---------------------------------------------------------------------------

#ifndef UpmAcfThreadH
#define UpmAcfThreadH
//---------------------------------------------------------------------------
#include <Classes.hpp>
//---------------------------------------------------------------------------
class TpmAcfThread : public TThread
{
private:
protected:
	void __fastcall Execute();
	void __fastcall Draw();
public:
  int n1, n_bins;
  double q;
  int *acf_pm;
  __fastcall TpmAcfThread(bool CreateSuspended);
};

extern TpmAcfThread *pmAcfThread;
//---------------------------------------------------------------------------
#endif
