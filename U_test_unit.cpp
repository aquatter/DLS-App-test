//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "U_test_unit.h"
#include <Dialogs.hpp>
#include <exception>

#pragma package(smart_init)

void __fastcall T_test_thread::Execute()
{
	try
	{
		void *wait_event = CreateEventA(NULL, 1, 0, NULL);
		ResetEvent( wait_event );

		T_test_thread2 *t2 = new T_test_thread2( true );
		t2->FreeOnTerminate = true;
        t2->wait_event = wait_event;
		t2->Start();
        WaitForSingleObject( wait_event, 10000 );

		mm = 0;
		Synchronize( Draw );
	}
	catch(...)
	{
		mm = 1;
		Synchronize( Draw );
	}

	mm = 2;
	Synchronize( Draw );



}

void __fastcall T_test_thread::Draw()
{
	switch (mm)
	{
		case 0 : ShowMessage("Caught in <try> t_test_thread"); break;
		case 1 : ShowMessage("Caught in <catch> t_test_thread"); break;
		case 2 : ShowMessage("Message in t_test_thread"); break;
	}
}


void __fastcall T_test_thread2::Execute()
{
	Sleep(1000);
	throw std::exception();
	Sleep(1000);
	Synchronize( Draw );
    SetEvent( wait_event );

}

void __fastcall T_test_thread2::Draw()
{
    ShowMessage("message in t_test_thread2");
}

//---------------------------------------------------------------------------

#pragma package(smart_init)
