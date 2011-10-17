//---------------------------------------------------------------------------

#ifndef UAcquireThreadH
#define UAcquireThreadH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include "measures_data.h"
//#include "ustring.h"
//---------------------------------------------------------------------------
class TAcquireThread : public TThread
{
private:
protected:
	void __fastcall Execute();
public:
	int mm;
	DWORD test_num;
	UnicodeString s;
	UnicodeString s1;
	MeasuresData measuresData;
	WORD* Data;
	int pos;
	int num_blocks;
	int num_seq;
	int num_rec;
	double t;
	float ScatAngle;
	int n0, n1;
	__fastcall TAcquireThread(bool CreateSuspended);
	void __fastcall Draw();
	int __fastcall ProcessInitialData();
	bool __fastcall ReadDataBlocks(int num);
	void __fastcall ProcessAcfData();
	bool __fastcall GetPhysicalSnapShot();
};

extern TAcquireThread *AcquireThread;
//---------------------------------------------------------------------------
#endif
