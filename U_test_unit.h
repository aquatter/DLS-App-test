//---------------------------------------------------------------------------

#ifndef U_test_unitH
#define U_test_unitH

#include <Classes.hpp>

class T_test_thread : public TThread
{
private:
protected:
	void __fastcall Execute();
	void __fastcall Draw();
	int mm;
public:
	__fastcall T_test_thread(bool CreateSuspended): TThread(CreateSuspended) {};
};

class T_test_thread2 : public TThread
{
private:
protected:
	void __fastcall Execute();
	void __fastcall Draw();


public:
	void *wait_event;
	__fastcall T_test_thread2(bool CreateSuspended): TThread(CreateSuspended) {};
};

//---------------------------------------------------------------------------
#endif
