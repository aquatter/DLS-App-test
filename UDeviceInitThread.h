//---------------------------------------------------------------------------

#ifndef UDeviceInitThreadH
#define UDeviceInitThreadH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include "ustring.h"
//---------------------------------------------------------------------------
class TDeviceInitThread : public TThread
{
private:
protected:
	void __fastcall Execute();

public:
	UnicodeString s;
	void *wait_event;
	bool monitoring;
	bool *error_;
	void  __fastcall Draw();
	__fastcall TDeviceInitThread(bool CreateSuspended);
};
//---------------------------------------------------------------------------
#endif
