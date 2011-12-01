// ---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UDLSContinThread.h"
#include "MainFormUnit.h"
#include "UDlsVars.h"


#pragma package(smart_init)
// ---------------------------------------------------------------------------

// Important: Methods and properties of objects in VCL can only be
// used in a method called using Synchronize, for example:
//
// Synchronize(&UpdateCaption);
//
// where UpdateCaption could look like:
//
// void __fastcall TDLSContinThread::UpdateCaption()
// {
// Form1->Caption = "Updated in a thread";
// }
// ---------------------------------------------------------------------------

TDLSContinThread *DLSContinThread;

__fastcall TDLSContinThread::TDLSContinThread(bool CreateSuspended) : TThread
(CreateSuspended) {
}

// ---------------------------------------------------------------------------
void __fastcall TDLSContinThread::Execute() {
	HINSTANCE lib = LoadLibrary("dls.dll");

	pDLSContin DLSContin = (pDLSContin)GetProcAddress(lib, "DLSContin");
	DLSContin(cum_t.a, cum.a, contin_s.a, contin_g.a, AcfParams.ns, nt,
		AcfParams.alpha, 1e-6);

	FreeLibrary(lib);

	FindPeaks();
	Synchronize(Draw);
}
// ---------------------------------------------------------------------------

void __fastcall TDLSContinThread::Draw() {
	// MainForm->Panel1->Visible=false;
	//
	MainForm->LineSeries1->Clear();
	MainForm->Series6->Clear();

	TGrad t;
	double a = 0, b = 1;
	if (AcfParams.grad_n >= 0) {
		t = AcfParams.grad.at(AcfParams.grad_n);
		a = t.a.ToDouble();
		b = t.b.ToDouble();
	}

	double x;
	if (AcfParams.cont_hist) {
		for (int i = 0; i < AcfParams.ns; i++) {
			x = contin_s.a[i] / k * b + a;
			if ((x >= AcfParams.cont_low_graph) &&
				(x <= AcfParams.cont_high_graph)) {
				MainForm->LineSeries1->AddXY
				(contin_s.a[i] / k * b + a, contin_g.a[i]);
			}
		}
	}
	else {
		for (int i = 0; i < AcfParams.ns; i++) {
			x = contin_s.a[i] / k * b + a;
			if ((x >= AcfParams.cont_low_graph) &&
				(x <= AcfParams.cont_high_graph)) {
				MainForm->Series6->AddXY
				(contin_s.a[i] / k * b + a, contin_g.a[i]);
			}
		}
	}

	MainForm->Memo1->Lines->Add("");
	for (int i = 0; i < peaks.size(); i++) {
		MainForm->Memo1->Lines->Add("Максимум "+ IntToStr(i+1)+": " + FloatToStrF(peaks[i], ffFixed, 7, 3) + " нм.");
	}


}

void TDLSContinThread::FindPeaks() {
	int w = contin_g.w;

	int x = 0;
	double *p = contin_g.a;
	while ((x < w) && (p[0] >= p[1])) {
		p++;
		x++;
	}

	double b;
	int prevzerocross;

	while (x < w) {
    	prevzerocross = x-1;

		while (x < w) {
			b = p[1]-p[0];
			p++;

			if (b < 0) {
				long curmax = (x+prevzerocross)>>1;
				double *sourcemax = (p - x + curmax - 1);

				if (*sourcemax > 0.01) {

					double y1 = sourcemax[-1];
					double y2 = sourcemax[0];
					double y3 = sourcemax[1];
					double x1 = contin_s.a[curmax-1]/k;
					double x2 = contin_s.a[curmax]/k;
					double x3 = contin_s.a[curmax+1]/k;
					double x1_2 = x1*x1;
					double x2_2 = x2*x2;
					double x3_2 = x3*x3;
					double det = x3*x2_2-x2*x3_2 - (x3*x1_2-x1*x3_2) + x2*x1_2-x1*x2_2;
					double a = (x3*y2-x2*y3 - (x3*y1-x1*y3) + x2*y1-x1*y2)/det;
					double b = (y3*x2_2-y2*x3_2 - (y3*x1_2-y1*x3_2) + y2*x1_2-y1*x2_2)/det;
					peaks.push_back(-b/(2*a));
				}
				x++;
				break;
			}

			if (b != 0)
				prevzerocross = x++;
			else
				x++;
		}

		while ((x < w) && (p[0] >= p[1])) {
			p++;
			x++;
		}
	}

}
