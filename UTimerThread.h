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
    TProjectData *pd_;
	TSeqThreadParams params_;
	TAquireMode mode;
	bool DoMean_;
	bool please_stop_;

	__fastcall TTimerThread(bool CreateSuspended);
	void  __fastcall SaveProject();
	void __fastcall Sync(int mm_, UnicodeString s_ = "")
	{
		mm = mm_;
		s = s_;
        Synchronize(&Draw);
    }
};
//---------------------------------------------------------------------------
#endif
