// ---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UDeviceInitThread.h"
#include "UDlsVars.h"
#include "Device.h"
#include "MainFormUnit.h"

#pragma package(smart_init)
// ---------------------------------------------------------------------------

// Important: Methods and properties of objects in VCL can only be
// used in a method called using Synchronize, for example:
//
// Synchronize(&UpdateCaption);
//
// where UpdateCaption could look like:
//
// void __fastcall TDeviceInitThread::UpdateCaption()
// {
// Form1->Caption = "Updated in a thread";
// }
// ---------------------------------------------------------------------------

__fastcall TDeviceInitThread::TDeviceInitThread(bool CreateSuspended) : TThread
(CreateSuspended) {
}

// ---------------------------------------------------------------------------
void __fastcall TDeviceInitThread::Execute() {
	bool error = false;
	Status status;
	s = "";

	void *q = CreateEventA(NULL, 1, 0, NULL);

	// device.Reset();

	if (!device.SetTemperature(AcfParams.T)) {
		error = true;
		s = "Ошибка установки температуры \n";
	}

	if (!device.SetAngle(AcfParams.Initial_Angle)) {
		error = true;
		s += "Ошибка установки угла \n";
	}
	/*

	do {
		device.GetStatus(status);
		WaitForSingleObject(q, 100);
	}
	while ((!status.bits.goniometer) && (!error));

	if (!device.PhotoOn(true)) {
		error = true;
		s += "Ошибка включения фотодатчика \n";
	}

	if (!device.PhotoOn(true)) {
		error = true;
		s += "Ошибка включения фотодатчика \n";
	}
	 */
	if (!device.SetFrequency(AcfParams.Time_discr)) {
		error = true;
		s += "Ошибка установки частоты \n";
	}

	/*
	if (!device.SetPrism(AcfParams.Prism)) {
		error = true;
		s += "Ошибка установки призмы Глана \n";
	}

	do {
		device.GetStatus(status);
		WaitForSingleObject(q, 100);
	}
	while ((!status.bits.prism) && (!error));

	if (!device.SetAperture(AcfParams.Aperture)) {
		error = true;
		s += "Ошибка установки диафрагмы \n";
	}

	do {
		device.GetStatus(status);
		WaitForSingleObject(q, 100);
	}
	while ((!status.bits.aperture) && (!error));

	if (!device.SetPolar(AcfParams.Polar)) {
		error = true;
		s += "Ошибка установки поляризатора";
	}

	do {
		device.GetStatus(status);
		WaitForSingleObject(q, 100);
	}
	while ((!status.bits.polar) && (!error));
	 */

	CloseHandle(q);

	if (error)
		Synchronize(&Draw);

	if (monitoring)
		MainForm->StartMonitoring();

	*error_ = error;
}


void __fastcall TDeviceInitThread::Draw()
{
	ShowMessage(s);
}
// ---------------------------------------------------------------------------
