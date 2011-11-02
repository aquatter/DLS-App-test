//---------------------------------------------------------------------------

#ifndef UTimerThreadH
#define UTimerThreadH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include "UDlsVars.h"
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
	TSeqThreadParams params_;
	TAquireMode mode;

	__fastcall TTimerThread(bool CreateSuspended);
	void  __fastcall SaveProject();
};
//---------------------------------------------------------------------------
#endif
