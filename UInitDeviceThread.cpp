//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UInitDeviceThread.h"
#include "UStatusRecForm.h"
#include "UAcquireThread.h"
#include "UDlsVars.h"
#include "Device.h"
#include "UStatusRecForm.h"
#include "MainFormUnit.h"
#include "math.h"
#include <math.hpp>



#pragma package(smart_init)
//---------------------------------------------------------------------------

//   Important: Methods and properties of objects in VCL can only be
//   used in a method called using Synchronize, for example:
//
//      Synchronize(&UpdateCaption);
//
//   where UpdateCaption could look like:
//
//      void __fastcall TInitDeviceThread::UpdateCaption()
//      {
//        Form1->Caption = "Updated in a thread";
//      }
//---------------------------------------------------------------------------

TInitDeviceThread *InitDeviceThread;

__fastcall TInitDeviceThread::TInitDeviceThread(bool CreateSuspended)
	: TThread(CreateSuspended)
{
}
//---------------------------------------------------------------------------
void __fastcall TInitDeviceThread::Execute()
{

//	Synchronize(&Draw);
//	for (int i=0; i < 3; i++) {
//	  s=IntToStr(i+1);
//	  Synchronize(&Draw);
//	  Sleep(1000);
//	}
//   s="Всё!!!";
/*
   num_blocks = 100;
   Synchronize(&Draw);
   Sleep(1000);

   return;
  */


	if(!device.SetLength(test_num)){
        SetEvent(wait_event);
		return;
	}

	if(!device.Start()) {
    	SetEvent(wait_event);
		return;
	}

	Status status;
	status.byte=0;

	do
	{
		Sleep(40);
		if(!device.GetStatus(status)){
        	SetEvent(wait_event);
			return;
		}
	}
	while(!status.bits.data);

	Data = device.GetData(test_num);

	if(!Data) {
		num_blocks = 0;
		SetEvent(wait_event);
		return;
	}

	num_blocks =  ProcessInitialData()/BLOCK_DATA_NUM;

	delete [] Data;

	SetEvent(wait_event);

}

void __fastcall TInitDeviceThread::Draw()
{
//   switch (mm) {
//		case 0: StatusRecForm->Label1->Caption=s; break;
//		case 1: StatusRecForm->Label1->Caption=s; break;
//   }
   StatusRecForm->Label1->Caption="Инициализация устройства";
//   StatusRecForm->Label1->Caption=s;

}


int __fastcall TInitDeviceThread::ProcessInitialData()
{
	double t=0;

	switch (AcfParams.Time_discr)
	{
		 case 0: t=6.5; break;
		 case 1: t=10; break;
		 case 2: t=19.92; break;
		 case 3: t=49.8; break;
	}

	double time = 0;
	int n0 = test_num*BLOCK_DATA_NUM;

	for (int i=0; i < n0; i++)
	{
	  time += Data[i];
	}

	time*=t*1e-6;

	if (time) {
	  return AcfParams.Rec_time*n0/time;
	}
	else
	  return 0;
}


int __fastcall TInitDeviceThread::GetNumBlocks()
{
   return num_blocks;
}
//---------------------------------------------------------------------------
