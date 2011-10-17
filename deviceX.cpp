//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <tchar.h>
//---------------------------------------------------------------------------
USEFORM("UReportEditForm.cpp", ReportEditForm);
USEFORM("MainFormUnit.cpp", MainForm);
USEFORM("UGradForm.cpp", GradForm);
USEFORM("UStatusRecForm.cpp", StatusRecForm);
USEFORM("UGraphApproxForm.cpp", GraphApproxForm);
USEFORM("UAddGradForm.cpp", AddGradForm);
USEFORM("UOptionsForm.cpp", OptionsForm);
USEFORM("UReportForm.cpp", ReportForm);
USEFORM("UAutoProgressForm.cpp", AutoProgressForm);
USEFORM("UAdd2ReportForm.cpp", Add2ReportForm);
USEFORM("URecThreadStartForm.cpp", RecThreadStartForm);
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
		Application->Run();
	}
	catch (Exception &exception)
	{
		Application->ShowException(&exception);
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
