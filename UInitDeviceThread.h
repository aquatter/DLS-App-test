//---------------------------------------------------------------------------

#ifndef UInitDeviceThreadH
#define UInitDeviceThreadH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include "measures_data.h"
//---------------------------------------------------------------------------
class TInitDeviceThread : public TThread
{
private:
protected:
	void __fastcall Execute();
public:

	DWORD test_num;
	WORD* Data;
	int num_blocks;
	UnicodeString s;
	__fastcall TInitDeviceThread(bool CreateSuspended);
	void __fastcall Draw();
	int __fastcall ProcessInitialData();
	int __fastcall GetNumBlocks();
};


extern TInitDeviceThread *InitDeviceThread;
//---------------------------------------------------------------------------
#endif
