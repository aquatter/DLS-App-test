//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <tchar.h>
//---------------------------------------------------------------------------
USEFORM("UReportForm.cpp", ReportForm);
USEFORM("UOptionsForm.cpp", OptionsForm);
USEFORM("UAdd2ReportForm.cpp", Add2ReportForm);
USEFORM("UAutoProgressForm.cpp", AutoProgressForm);
USEFORM("URecThreadStartForm.cpp", RecThreadStartForm);
USEFORM("UGradForm.cpp", GradForm);
USEFORM("MainFormUnit.cpp", MainForm);
USEFORM("UReportEditForm.cpp", ReportEditForm);
USEFORM("UStatusRecForm.cpp", StatusRecForm);
USEFORM("UAddGradForm.cpp", AddGradForm);
USEFORM("UGraphApproxForm.cpp", GraphApproxForm);
USEFORM("UTAdjustAngleAperForm.cpp", AdjustAngleAperForm);
USEFORM("UTestRecForm.cpp", TestRecForm);
#include "MainFormUnit.h"
//---------------------------------------------------------------------------
WINAPI _tWinMain(HINSTANCE, HINSTANCE, LPTSTR, int)
{
	try
	{
		Application->Initialize();
		Application->MainFormOnTaskBar = true;
		Application->Title = "ÏÄÐ";
		Application->CreateForm(__classid(TMainForm), &MainForm);
		Application->CreateForm(__classid(TOptionsForm), &OptionsForm);
		Application->CreateForm(__classid(TGradForm), &GradForm);
		Application->CreateForm(__classid(TAddGradForm), &AddGradForm);
		Application->CreateForm(__classid(TReportForm), &ReportForm);
		Application->CreateForm(__classid(TAdd2ReportForm), &Add2ReportForm);
		Application->CreateForm(__classid(TReportEditForm), &ReportEditForm);
		Application->CreateForm(__classid(TAutoProgressForm), &AutoProgressForm);
		Application->CreateForm(__classid(TGraphApproxForm), &GraphApproxForm);
		Application->CreateForm(__classid(TRecThreadStartForm), &RecThreadStartForm);
		Application->CreateForm(__classid(TStatusRecForm), &StatusRecForm);
		Application->CreateForm(__classid(TAdjustAngleAperForm), &AdjustAngleAperForm);
		Application->CreateForm(__classid(TTestRecForm), &TestRecForm);
		Application->Run();
	}
	catch (Exception &exception)
	{
		//Application->ShowException(&exception);
		MainForm->Memo1->Lines->Add(exception.Message);
	}
	catch (...)
	{
		try
		{
			throw Exception("");
		}
		catch (Exception &exception)
		{
			Application->ShowException(&exception);
		}
	}
	return 0;
}
//---------------------------------------------------------------------------
