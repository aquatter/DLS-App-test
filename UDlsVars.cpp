//---------------------------------------------------------------------------


#pragma hdrstop

#include "UDlsVars.h"
#include "MainFormUnit.h"
#include "math.h"
#include "math.hpp"
#include <memory>
#include "UOptionsForm.h"

//---------------------------------------------------------------------------

#pragma package(smart_init)

TMyInfernalType RawData, RawData_t, acf, acf_t, cum, cum_t, contin_g, contin_s;
TAcfParams AcfParams;
void *CaptureDone, *AcfDone;
Device device;
TDataParams DataParams;

//void DLSCumulants(double *p, double *t, double *w, int n, double &a0,  double &a1, double &a2);


void ProcessAcfData(WORD *p, int n0, double t)
{
   AcfParams.vybr=0;
   AcfParams.zashk=0;
   int thr = AcfParams._vybr;

//   if (t == 6.5)
//	 thr = 20;
//   if (t == 10)
//	 thr = 1;



   for (int i=0; i<n0; i++) {
	   if (p[i] < thr) {
		 AcfParams.vybr++;
	   }
	   if (p[i] > 65533) {
		 AcfParams.zashk++;
	   }
   }

   int n1=n0-AcfParams.vybr;
   AcfParams.nRawData=n1;
   RawData.Clear();
   RawData.Init(n1, 1, mitDouble);
   RawData_t.Clear();
   RawData_t.Init(n1, 1, mitDouble);

   double p1=0, time=0, p_vbr=0;

   int ind = 0;
   for (int i=0; i<n0; i++) {

	   if (p[i] >= thr)
	   {
		  if (ind == 0) {
			RawData_t.a[ind]=(p[i]+p_vbr)*t*1e-3;
		  }
		  else
		  {
			RawData_t.a[ind]=RawData_t.a[ind-1]+(p[i]+p_vbr)*t*1e-3;
		  }
		  RawData.a[ind]=p[i]+p_vbr;
		  p_vbr=0;
		  ind++;
	   }
	   else
	   {
		  p_vbr+=p[i];
	   }

   }
//   ShowMessage(FloatToStr(p1-RawData_t.a[n1-1]*1e-6));
//   RawData.a[0]=p[0]*t;
//
//   for (int i=1; i<n0; i++) {
//	 RawData.a[i]=RawData.a[i-1]+p[i]*t;
//   }


//   double tmp =0;
//   for (int i=0; i<n0; i++) {
//	 tmp+=p[i];
//   }
//   tmp*=t*1e-6;

//   ShowMessage(FloatToStr(tmp));


   AcfParams._time=RawData_t.a[n1-1];



   TFormatSettings FormatSettings;
   GetLocaleFormatSettings(GetSystemDefaultLCID(), FormatSettings);
   FormatSettings.ThousandSeparator=160;
   FormatSettings.CurrencyString="";
   FormatSettings.CurrencyDecimals=0;


   MainForm->ListView2->Items->Item[0]->SubItems[0].Text=FloatToStr(t)+" нс";
   MainForm->ListView2->Items->Item[1]->SubItems[0].Text=FloatToStrF(AcfParams._time*1e-6, ffFixed, 5, 2)+" с";
   MainForm->ListView2->Items->Item[2]->SubItems[0].Text=Format("%m", ARRAYOFCONST((double(AcfParams.vybr))), FormatSettings);
   MainForm->ListView2->Items->Item[3]->SubItems[0].Text=FloatToStr(AcfParams.zashk/n0*100)+"%";
   MainForm->ListView2->Items->Item[4]->SubItems[0].Text=Format("%m", ARRAYOFCONST((1e6*n1/AcfParams._time)), FormatSettings);
   MainForm->ListView2->Items->Item[5]->SubItems[0].Text=Format("%m", ARRAYOFCONST((double(n1))), FormatSettings);

   ind=0;
   for (int i=0; i < n1; i++) {
	   if (RawData_t.a[i] > 1e6) {
		   ind=i-1;
		   break;
	   }
   }

   int m = Floor(ind/1e3);
   MainForm->Series1->Clear();
   for (int i=0; i < 1e3; i++) {
	 if (!(RawData.a[i*m] == 0)) {
	   MainForm->Series1->AddXY(RawData_t.a[i*m]*1e-6, 1e9/(RawData.a[i*m]*t));
	 }
	 else
	 {
	   MainForm->Series1->AddNullXY(RawData_t.a[i*m]*1e-6, 0);
	 }
   }

/*
   MainForm->Label6->Caption="Длительность дискрета: "+FloatToStr(t)+" нс";
   MainForm->Label7->Caption="Общее время выборки: " + FloatToStrF(AcfParams._time*1e-6, ffFixed, 5, 2)+" с";
   MainForm->Label8->Caption="Количество выбросов: " + Format("%m", ARRAYOFCONST((double(AcfParams.vybr))), FormatSettings);
   MainForm->Label9->Caption="Процент зашкалов: "+ FloatToStr(AcfParams.zashk/n0*100)+"%";
   MainForm->Label1->Caption="Число импульсов в ед. времени: "+Format("%m", ARRAYOFCONST((1e6*n1/AcfParams._time)), FormatSettings);
   MainForm->Label15->Caption="Количество фотонов: "+Format("%m", ARRAYOFCONST((double(n1))), FormatSettings);
  */
//    FloatToStrF(1e6*n1/AcfParams._time, ffFixed, 7, 0);

}

void SaveAcf2Txt(UnicodeString s)
{
  s = ChangeFileExt(s,".txt");
  FILE *f;
  try
  {
	f=fopen(s.t_str(), "wt");
	for (int i =0; i < AcfParams.n_avt; i++)
	  fprintf(f, "%.4g %.4g\n", acf.a[i], acf_t.a[i]);
  } catch (...)
  {
	fclose(f);
  }

  fclose(f);
}

void SaveAcf2Tdf(UnicodeString s)
{
  s = ChangeFileExt(s, ".tdf");
  char buff[50];
  TIniFile *f = new TIniFile(s);
  DecimalSeparator='.';
//  wchar_t(".");
  try
  {
	f->WriteFloat("PCSPHYSPAR", "WAVELENGTH", DataParams.WaveLength);
	f->WriteFloat("PCSPHYSPAR", "VISCOSITY", FormulaPuazeilia(DataParams.Temperature)*1e3);
	f->WriteFloat("PCSPHYSPAR", "SCATANGLE", DataParams.ScatAngle);
	f->WriteFloat("PCSPHYSPAR", "TEMPERATURE", DataParams.Temperature);
	f->WriteFloat("PCSPHYSPAR", "REFRINDEX", DataParams.RefIndex);
	for (int i=0; i < acf.w; i++) {
	  sprintf(buff, " %e %e", acf_t.a[i]*1e-6, acf.a[i]+1);
	  f->WriteString("PCSDATA2", IntToStr(i+1), buff);
	}
  } catch (...)
  {
	delete f;
  }
  delete f;
}

void OpenTdf(UnicodeString s)
{
  TIniFile *f = new TIniFile(s);
  TStringList *str_list = new TStringList;
  UnicodeString str, str1, str2;
//  TStrings *str = new TStrings();
//  str_list->Strings[0].t_str();


  DecimalSeparator='.';
  try
  {
	unsigned count;
	AcfParams.lambda=f->ReadFloat("PCSPHYSPAR", "WAVELENGTH", 632.8)*10;
	AcfParams.eta=f->ReadFloat("PCSPHYSPAR", "VISCOSITY", 1.0)*1e-3;
	device.deviceSettings.Angle=f->ReadFloat("PCSPHYSPAR", "SCATANGLE", 90.0);
	AcfParams.T=f->ReadFloat("PCSPHYSPAR", "TEMPERATURE", 298.15);
	AcfParams.n=f->ReadFloat("PCSPHYSPAR", "REFRINDEX", 1.33);
	f->ReadSectionValues("PCSDATA2", str_list);

	count=str_list->Count;
	acf.Clear();
	acf_t.Clear();
	AcfParams.n_avt=count;
	acf.Init(count, 1, mitDouble);
	acf_t.Init(count, 1, mitDouble);

	for (int i=0; i < count; i++) {
	  str=f->ReadString("PCSDATA2", IntToStr(i+1), "0 0");
	  str1=str.SubString(1, str.Pos(" ")-1);
	  str2=str.SubString(str.Pos(" ")+1, str.Length());
	  acf_t.a[i]=str1.ToDouble()*1e6;
	  acf.a[i]=str2.ToDouble()-1;
	}

	MainForm->LineSeries3->Clear();
	for (int i=0; i < count; i++) {
		MainForm->LineSeries3->AddXY(acf_t.a[i], acf.a[i]);
	}
	MainForm->PageControl1->ActivePageIndex=2;

  } catch (...)
  {
	delete f;
	delete str_list;
  }

  delete f;
  delete str_list;
}

void CreateCrv(double *p, double *t, int w, UnicodeString s)
{
  struct pnt
  {
	double t, p;
  };

  bool bType = false;
  double dish_thickness = 1;
  int f;
  s = ChangeFileExt(s, ".crv");
  pnt* data = new pnt[w];
  for (int i=0; i < w; i++) {
    data[i].t=t[i];
    data[i].p=p[i];
  }

  try {
	f = FileCreate(s, fmOpenWrite);
	FileWrite(f, &bType, sizeof(bool));
	FileWrite(f, &dish_thickness, sizeof(double));
	FileWrite(f, &w, sizeof(int));
	FileWrite(f, data, w*sizeof(pnt));
	FileClose(f);
  } catch (...) {
	FileClose(f);
  }
  delete [] data;
}

void LoadCrv(TMyInfernalType &p, TMyInfernalType &t, UnicodeString s)
{
  struct pnt {
	double t, p;
  };
  int w = p.w, f;
  bool bType;
  double dish_thickness;
  s = ChangeFileExt(s, ".crv");
  pnt* data = new pnt[w];

  for (int i=0; i < w; i++) {
	data[i].t=t.a[i];
	data[i].p=p.a[i];
  }

  try {
	f = FileCreate(s, fmOpenRead);
	FileRead(f, &bType, sizeof(bool));
	FileRead(f, &dish_thickness, sizeof(double));
	FileRead(f, &w, sizeof(int));
	FileRead(f, data, w*sizeof(pnt));
	FileClose(f);
  } catch (...) {
	FileClose(f);
  }
  delete [] data;
}



void SaveAcf2Crv(UnicodeString s)
{
  struct __point
  {
	double wave,value;
  };
  s = ChangeFileExt(s,".crv");
  __point* points = NULL;
  unsigned count = AcfParams.n_avt;
  int iFileHandle = -1;

  try {
	iFileHandle = FileCreate(s, fmOpenWrite);
	if(iFileHandle == -1) Abort();
	points = new __point[count];

	for (int i=0; i < count; i++) {
		points[i].wave=acf_t.a[i];
		points[i].value=acf.a[i];
	}

	bool bType=false;
	double dish_thickness = 1;

	FileWrite(iFileHandle, &bType, sizeof(bool));
	FileWrite(iFileHandle, &dish_thickness, sizeof(double));
	FileWrite(iFileHandle, &count, sizeof(unsigned));
	FileWrite(iFileHandle, points, count*sizeof(__point));

	FileClose(iFileHandle);
	delete [] points;
  }
  catch (...) {
    if(points) delete [] points;
	if(iFileHandle != -1)
	{
	  FileClose(iFileHandle);
	  DeleteFile(s);
	}
  }
}

double CheckString(UnicodeString s)
{
  for (int i = 1; i <= s.Length(); i++) {
	if ((s[i] == '.')|(s[i] == ',')) {
	  s[i]=DecimalSeparator;
	}
  }
  return s.ToDouble();
}

double NuttallWin(double x, double x0, double w)
{
  double a0 = 0.3635819;
  double a1 = 0.4891775;
  double a2 = 0.1365995;
  double a3 = 0.0106411;
  double _x = 2*M_PI*(x-x0+w/2)/w;
//  if (fabs(_x-x0) > (w/2)) {
//	  return 0;
//  }
//  else
//  {
	  return a0-a1*cos(_x)+a2*cos(2*_x)-a3*cos(3*_x);
//  }
}

double FormulaPuazeilia(double t)
{
  return 0.00179/(1 + 0.0346*(t-273.15) + 0.000221*pow(t-273.15,2));
}

void Interp(double *p, int n, double tin, double dt)
{
  double t0, t1, p0, p1, t, w=5;
  int ind0=0, ind1=0;

  /*
  w=MainForm->Edit6->Text.ToInt();
  memset(p, 0, n*sizeof(double));

  for (int i=0; i < n; i++) {
	t0=tin+i*dt;
	t1=t0+w;

	while (RawData_t.a[ind0] < t0)
	  ind0++;

	ind1=ind0;
	while (RawData_t.a[ind1] < t1)
	{
	  ind1++;
	  p[i]++;
	}
//	p[i]/=w;
  }
  */

  while (RawData_t.a[ind0] < tin)
	ind0++;
  ind1=1;

  memset(p, 0, n*sizeof(double));

  for (int i=ind0; i < AcfParams.nRawData; i++)
  {
	while (RawData_t.a[i] > (ind1*dt+tin))
	  ind1++;

	if (ind1 > n)
	{
	  break;
	}

//	p[ind1-1]+=RawData.a[i];
	p[ind1-1]++;
  }






/*

  for (int i=0; i < n; i++) {
	t=tin+dt*i;

	while (RawData_t.a[ind1] < t)
	  ind1++;

	if (ind1 == 0)
	{
	  t0=0;
	  p0=0;
	  t1=RawData_t.a[ind1];
	  p1=RawData.a[ind1];
	}
	else
	{
	  t0=RawData_t.a[ind1-1];
	  p0=RawData.a[ind1-1];
	  t1=RawData_t.a[ind1];
	  p1=RawData.a[ind1];
	}
	p[i]=(p1-p0)*(t-t0)/(t1-t0)+p0;

  }

  */

}

bool OptionsFormExecute()
{

	OptionsForm->ComboBox1->ItemIndex = AcfParams.Time_discr;
	OptionsForm->CheckBox5->Checked = AcfParams.Multi_Angle;
	OptionsForm->Edit9->Text = FloatToStr(AcfParams.Initial_Angle);
	OptionsForm->Edit28->Text = FloatToStr(AcfParams.Angle_Shift);
	OptionsForm->Edit29->Text = IntToStr(AcfParams.num_Angles);
	OptionsForm->Edit30->Text = IntToStr(AcfParams.n_seq);
	OptionsForm->Edit32->Text = IntToStr(AcfParams.seq_time);
	OptionsForm->Edit31->Text = IntToStr(AcfParams.n_rec);
	OptionsForm->Edit33->Text = IntToStr(AcfParams.Rec_time);
	OptionsForm->CheckBox7->Checked = AcfParams.DoAcf;
	OptionsForm->CheckBox6->Checked = AcfParams.DoMean;
	OptionsForm->Label56->Caption = AcfParams.Save_Dir;
	OptionsForm->Edit34->Text = AcfParams.Name_Spec;
	OptionsForm->Edit35->Text = AcfParams.Name_Sol;
	OptionsForm->Edit12->Text = FloatToStr(AcfParams.n);
	OptionsForm->Edit16->Text = FloatToStr(AcfParams.lambda);

	OptionsForm->Edit10->Text = FloatToStr(AcfParams.cut);
	OptionsForm->Edit20->Text = IntToStr(AcfParams.cut_after);

	OptionsForm->Edit22->Text = IntToStr(AcfParams.ns);
	OptionsForm->Edit23->Text = FloatToStr(AcfParams.alpha);
	OptionsForm->Edit24->Text = FloatToStr(AcfParams.cont_low);
	OptionsForm->Edit25->Text = FloatToStr(AcfParams.cont_high);
	OptionsForm->Edit26->Text = FloatToStr(AcfParams.cont_low_graph);
	OptionsForm->Edit27->Text = FloatToStr(AcfParams.cont_high_graph);

	OptionsForm->CheckBox3->Checked = AcfParams.cont_hist;
	OptionsForm->CheckBox4->Checked = AcfParams.right_boundary;
	OptionsForm->Edit36->Text = AcfParams.File_Name;

	OptionsForm->Edit8->Text = FloatToStr(AcfParams.T);
	OptionsForm->ComboBox2->ItemIndex = (AcfParams.Prism);
	OptionsForm->Edit37->Text = IntToStr(AcfParams.Aperture);
	OptionsForm->Edit38->Text = IntToStr(AcfParams.Polar);



	if (OptionsForm->ShowModal() != mrOk) {
		return false;
	}


	AcfParams.Time_discr = OptionsForm->ComboBox1->ItemIndex;
	AcfParams.Multi_Angle =  OptionsForm->CheckBox5->Checked;
	AcfParams.Initial_Angle = CheckString(OptionsForm->Edit9->Text);
	AcfParams.Angle_Shift = CheckString(OptionsForm->Edit28->Text);
	AcfParams.num_Angles = OptionsForm->Edit29->Text.ToInt();
	AcfParams.n_seq = OptionsForm->Edit30->Text.ToInt();
	AcfParams.seq_time = OptionsForm->Edit32->Text.ToInt();
	AcfParams.n_rec = OptionsForm->Edit31->Text.ToInt();


	AcfParams.Rec_time = OptionsForm->Edit33->Text.ToInt();
	AcfParams.DoAcf =  OptionsForm->CheckBox7->Checked;
	AcfParams.DoMean = OptionsForm->CheckBox6->Checked;
	AcfParams.Save_Dir = OptionsForm->Label56->Caption;
	AcfParams.Name_Spec = OptionsForm->Edit34->Text;
	AcfParams.Name_Sol = OptionsForm->Edit35->Text;
	AcfParams.n = OptionsForm->Edit12->Text.ToDouble();
	AcfParams.lambda = CheckString(OptionsForm->Edit16->Text.t_str());

	AcfParams.cut = CheckString(OptionsForm->Edit10->Text.t_str());
	AcfParams.cut_after = OptionsForm->Edit20->Text.ToInt();

	AcfParams.ns = CheckString(OptionsForm->Edit22->Text.t_str());
	AcfParams.alpha = CheckString(OptionsForm->Edit23->Text.t_str());
	AcfParams.cont_low = CheckString(OptionsForm->Edit24->Text.t_str());
	AcfParams.cont_high = CheckString(OptionsForm->Edit25->Text.t_str());
	AcfParams.cont_hist = OptionsForm->CheckBox3->Checked;
	AcfParams.cont_low_graph = CheckString(OptionsForm->Edit26->Text.t_str());
	AcfParams.cont_high_graph = CheckString(OptionsForm->Edit27->Text.t_str());
	AcfParams.right_boundary = OptionsForm->CheckBox4->Checked;
	AcfParams.File_Name = OptionsForm->Edit36->Text;

	AcfParams.T = CheckString(OptionsForm->Edit8->Text.t_str());
	AcfParams.Prism = OptionsForm->ComboBox2->ItemIndex;
	AcfParams.Aperture = OptionsForm->Edit37->Text.ToInt();
	AcfParams.Polar = OptionsForm->Edit38->Text.ToInt();
	
	/*
	try
	{
		if (!device.SetFrequency(AcfParams.Time_discr))
			Abort();
		if (!device.SetAngle(AcfParams.Initial_Angle))
			Abort;

		return true;
	}
	catch (...)
	{
		ShowMessage("Прибор не подключен");
		return true;
	}
	*/
	return true;
}

TAcfParams::TAcfParams() {
	n = 1.33;
	T = 298.15;
	lambda = 6328;
  theta=90;
  Kb=1.380650424e-23;
  eta=0.8872;
  _time=-1;
}
