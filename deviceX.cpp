//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <tchar.h>
#include <windows.h>
//---------------------------------------------------------------------------
USEFORM("UReportForm.cpp", ReportForm);
USEFORM("UOptionsForm.cpp", OptionsForm);
USEFORM("URecThreadStartForm.cpp", RecThreadStartForm);
USEFORM("UAdd2ReportForm.cpp", Add2ReportForm);
USEFORM("UPlease_stop_form.cpp", Please_stop_form);
USEFORM("UAutoProgressForm.cpp", AutoProgressForm);
USEFORM("UGradForm.cpp", GradForm);
USEFORM("MainFormUnit.cpp", MainForm);
USEFORM("UReportEditForm.cpp", ReportEditForm);
USEFORM("UStatusRecForm.cpp", StatusRecForm);
USEFORM("UAddGradForm.cpp", AddGradForm);
USEFORM("UGraphApproxForm.cpp", GraphApproxForm);
USEFORM("UTAdjustAngleAperForm.cpp", AdjustAngleAperForm);
USEFORM("UTestRecForm.cpp", TestRecForm);
//---------------------------------------------------------------------------
#include "MainFormUnit.h"
//---------------------------------------------------------------------------



WINAPI _tWinMain(HINSTANCE, HINSTANCE, LPTSTR, int)
{

	HWND h = FindWindowA(UnicodeString("TMainForm").t_str(), UnicodeString("Прибор динамического рассеяния").t_str());
	if (h)
	{
		if (ParamCount() > 0)
		{
			UnicodeString str = ParamStr(1);
			if (FileExists(str))
			{
				/*
				char *buff = new char[str.Length()+1];
				strcpy(buff, str.t_str());
                */
                TCopyDataStruct data;
                data.dwData = 0;
                data.cbData = str.Length()+1;
                data.lpData = str.t_str();

                SendMessageA(h, WM_COPYDATA, 0, LPARAM(&data));
			}
		}

		ShowWindow(h, SW_MAXIMIZE);
        BringWindowToTop(h);
		return 0;
	}

	try
	{
		Application->Initialize();
		Application->MainFormOnTaskBar = true;
		Application->Title = "ПДР";
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
		Application->CreateForm(__classid(TPlease_stop_form), &Please_stop_form);
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
