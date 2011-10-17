//---------------------------------------------------------------------------

#ifndef UAutoMeasureThreadH
#define UAutoMeasureThreadH
//---------------------------------------------------------------------------
#include <Classes.hpp>
//---------------------------------------------------------------------------
class TAutoMeasureThread : public TThread
{
private:
  void *WaitEvent;
protected:
	void __fastcall Execute();
public:
  int n;
   __fastcall void Draw();
   __fastcall TAutoMeasureThread(bool CreateSuspended);
};

extern  TAutoMeasureThread *AutoMeasureThread;
//---------------------------------------------------------------------------
#endif
