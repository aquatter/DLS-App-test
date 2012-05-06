// ---------------------------------------------------------------------------

#pragma hdrstop

#include "UDlsINIFile.h"
#include "UDlsVars.h"
#include "MainFormUnit.h"
#include "UGradForm.h"

// ---------------------------------------------------------------------------
#pragma package(smart_init)

void WriteDlsINIFile(UnicodeString s) {
	TIniFile *f = new TIniFile(s);

	// -------------------------- Device -------------------------------------------------

	f->WriteBool("Device", "lfd", AcfParams.lfd);
	f->WriteBool("Device", "feu", AcfParams.feu);
	f->WriteInteger("Device", "Amplification",
		device.deviceSettings.Amplification);
	f->WriteFloat("Device", "Temperature", AcfParams.T);
	f->WriteFloat("Device", "Angle", device.deviceSettings.Angle);
	f->WriteInteger("Device", "Frequency", device.deviceSettings.Frequency);
	f->WriteInteger("Device", "NumDataBlock",
		device.deviceSettings.ReadDataBlock);
	f->WriteFloat("Device", "angle_init", AcfParams.angle_init);
	f->WriteFloat("Device", "angle_step", AcfParams.angle_step);
	f->WriteInteger("Device", "vybr", AcfParams._vybr);
	f->WriteInteger("Device", "Time_discr", AcfParams.Time_discr);
	f->WriteBool("Device", "Multi_Angle", AcfParams.Multi_Angle);
	f->WriteFloat("Device", "Initial_Angle", AcfParams.Initial_Angle);
	f->WriteFloat("Device", "Angle_Shift", AcfParams.Angle_Shift);
	f->WriteInteger("Device", "num_Angles", AcfParams.num_Angles);
	f->WriteInteger("Device", "n_seq", AcfParams.n_seq);
	f->WriteInteger("Device", "seq_time", AcfParams.seq_time);
	f->WriteInteger("Device", "n_rec", AcfParams.n_rec);
	f->WriteInteger("Device", "Rec_time", AcfParams.Rec_time);
	f->WriteBool("Device", "DoAcf", AcfParams.DoAcf);
	f->WriteBool("Device", "DoMean", AcfParams.DoMean);
	f->WriteString("Device", "Name_Spec", AcfParams.Name_Spec);
	f->WriteString("Device", "Name_Sol", AcfParams.Name_Sol);
	f->WriteString("Device", "Save_Dir", AcfParams.Save_Dir);
    f->WriteFloat("Device", "lambda", AcfParams.lambda);
    f->WriteString("Device", "File_Name", AcfParams.File_Name);
	f->WriteInteger("Device", "Prism", AcfParams.Prism);
	f->WriteInteger("Device", "Aperture", AcfParams.Aperture);
	f->WriteInteger("Device", "Polar", AcfParams.Polar);
	f->WriteBool("Device", "Kinetics", AcfParams.Kinetics);

	// -------------------------- ACF -------------------------------------------------

	f->WriteInteger("ACF", "dt0", AcfParams.dt0);
	f->WriteInteger("ACF", "p", AcfParams._p);
	f->WriteInteger("ACF", "m", AcfParams._m);
	f->WriteInteger("ACF", "n_min", AcfParams.n_min);
	f->WriteInteger("ACF", "t_block", AcfParams.t_block);
	f->WriteInteger("ACF", "n_mean", AcfParams.n_mean);
	f->WriteInteger("ACF", "Gauss_w", AcfParams.Gauss_w);
	f->WriteFloat("ACF", "Cut", AcfParams.cut);
	f->WriteInteger("ACF", "cut_after", AcfParams.cut_after);
	f->WriteBool("ACF", "right_boundary", AcfParams.right_boundary);

	// -------------------------- contin -------------------------------------------------

	f->WriteFloat("contin", "alpha", AcfParams.alpha);
	f->WriteFloat("contin", "cont_low", AcfParams.cont_low);
	f->WriteFloat("contin", "cont_high", AcfParams.cont_high);
	f->WriteInteger("contin", "ns", AcfParams.ns);
	f->WriteBool("contin", "cont_hist", AcfParams.cont_hist);
	f->WriteFloat("contin", "cont_low_graph", AcfParams.cont_low_graph);
	f->WriteFloat("contin", "cont_high_graph", AcfParams.cont_high_graph);

	// -------------------------- grad -------------------------------------------------

	f->WriteInteger("grad", "grad_count", AcfParams.grad_count);
	f->WriteInteger("grad", "grad_n", AcfParams.grad_n);

	TGrad temp;

	for (int i = 0; i < AcfParams.grad_count; i++) {
		temp = AcfParams.grad.at(i);

		f->WriteString("grad", "a" + IntToStr(i), temp.a);
		f->WriteString("grad", "b" + IntToStr(i), temp.b);
		f->WriteString("grad", "angle" + IntToStr(i), temp.angle);
	}
	delete f;
};

void ReadDlsINIFile(UnicodeString s) {
	TIniFile *f = new TIniFile(s);
	UnicodeString s1;

	// -------------------------- Device -------------------------------------------------

	AcfParams.lfd = f->ReadBool("Device", "lfd", true);
	AcfParams.feu = f->ReadBool("Device", "feu", false);
	device.deviceSettings.Amplification = f->ReadInteger
	("Device", "Amplification", 1);
	s1 = f->ReadString("Device", "Temperature", "293.15");
	AcfParams.T = CheckString(s1);
	s1 = f->ReadString("Device", "Angle", "90.0");
	device.deviceSettings.Angle = CheckString(s1);
	device.deviceSettings.Frequency = f->ReadInteger("Device", "Frequency", 0);
	device.deviceSettings.ReadDataBlock = f->ReadInteger
	("Device", "NumDataBlock", 1);
	s1 = f->ReadString("Device", "angle_init", "19.85");
	AcfParams.angle_init = CheckString(s1);
	s1 = f->ReadString("Device", "angle_step", "19.43");
	AcfParams.angle_step = CheckString(s1);
	AcfParams._vybr = f->ReadInteger("Device", "vybr", 5);
	s1 = f->ReadString("Device", "lambda", "632.8");
    AcfParams.lambda = CheckString(s1);

	AcfParams.Time_discr = f->ReadInteger("Device", "Time_discr", 0);
	AcfParams.Multi_Angle = f->ReadBool("Device", "Multi_Angle", false);
	s1 = f->ReadString("Device", "Initial_Angle", "90.0");
	AcfParams.Initial_Angle = CheckString(s1);
	s1 = f->ReadString("Device", "Angle_Shift", "15.0");
	AcfParams.Angle_Shift = CheckString(s1);
	AcfParams.num_Angles = f->ReadInteger("Device", "num_Angles", 1);
	AcfParams.n_seq = f->ReadInteger("Device", "n_seq", 1);
	AcfParams.seq_time = f->ReadInteger("Device", "seq_time", 1);
	AcfParams.n_rec = f->ReadInteger("Device", "n_rec", 1);
	AcfParams.Rec_time = f->ReadInteger("Device", "Rec_time", 1);
	AcfParams.DoAcf = f->ReadBool("Device", "DoAcf", true);
	AcfParams.DoMean = f->ReadBool("Device", "DoMean", true);
	AcfParams.Name_Spec = f->ReadString("Device", "Name_Spec", "Name");
	AcfParams.Name_Sol = f->ReadString("Device", "Name_Sol", "Solution");
	AcfParams.Save_Dir = f->ReadString("Device", "Save_Dir", ExtractFileDir(Application->ExeName));
	AcfParams.File_Name = f->ReadString("Device", "File_Name", "Name");
	AcfParams.Prism = f->ReadInteger("Device", "Prism", 0);
	AcfParams.Aperture = f->ReadInteger("Device", "Aperture", 0);
	AcfParams.Polar = f->ReadInteger("Device", "Polar", 0);
    AcfParams.Kinetics = f->ReadBool("Device", "Kinetics", false);

	// -------------------------- ACF -------------------------------------------------

	AcfParams.dt0 = f->ReadInteger("ACF", "dt0", 100);
	AcfParams._p = f->ReadInteger("ACF", "p", 20);
	AcfParams._m = f->ReadInteger("ACF", "m", 2);
	AcfParams.n_min = f->ReadInteger("ACF", "n_min", 500);
	AcfParams.t_block = f->ReadInteger("ACF", "t_block", 1000);
	AcfParams.n_mean = f->ReadInteger("ACF", "n_mean", 10);
	AcfParams.Gauss_w = f->ReadInteger("ACF", "Gauss_w", 9);
	s1 = f->ReadString("ACF", "Cut", "0");
	AcfParams.cut = CheckString(s1);
	AcfParams.cut_after = f->ReadInteger("ACF", "cut_after", 1500);
	AcfParams.right_boundary = f->ReadBool("ACF", "right_boundary", false);

	// -------------------------- contin -------------------------------------------------

	s1 = f->ReadString("contin", "alpha", "0.07");
	AcfParams.alpha = CheckString(s1);
	s1 = f->ReadString("contin", "cont_low", "1");
	AcfParams.cont_low = CheckString(s1);
	s1 = f->ReadString("contin", "cont_high", "1000");
	AcfParams.cont_high = CheckString(s1);
	AcfParams.ns = f->ReadInteger("contin", "ns", 100);
	AcfParams.cont_hist = f->ReadBool("contin", "cont_hist", false);
	s1 = f->ReadString("contin", "cont_low_graph", "1");
	AcfParams.cont_low_graph = CheckString(s1);
	s1 = f->ReadString("contin", "cont_high_graph", "1000");
	AcfParams.cont_high_graph = CheckString(s1);

	// -------------------------- grad -------------------------------------------------

	AcfParams.grad_count = f->ReadInteger("grad", "grad_count", 0);
	AcfParams.grad_n = f->ReadInteger("grad", "grad_n", -1);

	AcfParams.grad.clear();
	TGrad temp;

	for (int i = 0; i < AcfParams.grad_count; i++) {

		temp.a = f->ReadString("grad", "a" + IntToStr(i), "0");
		temp.b = f->ReadString("grad", "b" + IntToStr(i), "0");
		temp.angle = f->ReadString("grad", "angle" + IntToStr(i), "0");
		AcfParams.grad.push_back(temp);
	}

	delete f;
}
