//---------------------------------------------------------------------------

#ifndef UTimerThreadH
#define UTimerThreadH
//---------------------------------------------------------------------------
#include <Classes.hpp>
//---------------------------------------------------------------------------
class TTimerThread : public TThread
{
private:
protected:
	void __fastcall Execute();
	void __fastcall Draw();
	int mm, num_seq;
	int num_blocks;
	UnicodeString s;
public:
	__fastcall TTimerThread(bool CreateSuspended);
};
//---------------------------------------------------------------------------
#endif
