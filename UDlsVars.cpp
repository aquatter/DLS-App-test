//---------------------------------------------------------------------------


#pragma hdrstop

#include "UDlsVars.h"
#include "MainFormUnit.h"
#include "math.h"
#include "math.hpp"
#include <memory>
#include "UOptionsForm.h"
#include "USeqThread.h"
#include "UTimerThread.h"
#include <Registry.hpp>
#include "DateUtils.hpp"
#include "UTestRecForm.h"
#include "UDeviceInitThread.h"

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
//  char buff[50];
  TIniFile *f = new TIniFile(s);
//  DecimalSeparator='.';
  UnicodeString str;
  TFormatSettings format_set;
  GetLocaleFormatSettings(LOCALE_SYSTEM_DEFAULT, format_set);
  format_set.DecimalSeparator = '.';

  try
  {
	f->WriteString("PCSPHYSPAR", "WAVELENGTH", FloatToStrF(DataParams.WaveLength, ffFixed, 5, 2, format_set));
	f->WriteString("PCSPHYSPAR", "VISCOSITY", FloatToStrF(FormulaPuazeilia(DataParams.Temperature)*1e3, ffFixed, 5, 4, format_set));
	f->WriteString("PCSPHYSPAR", "SCATANGLE", FloatToStrF(DataParams.ScatAngle, ffFixed, 5, 1, format_set));
	f->WriteString("PCSPHYSPAR", "TEMPERATURE", FloatToStrF(DataParams.Temperature, ffFixed, 5, 2, format_set));
	f->WriteString("PCSPHYSPAR", "REFRINDEX", FloatToStrF(DataParams.RefIndex, ffFixed, 5, 2, format_set));

	for (int i=0; i < acf.w; i++)
	{
		str = FloatToStrF(acf_t.a[i]*1e-6, ffExponent, 5, 4, format_set) + " " + FloatToStrF(acf.a[i]+1.0, ffFixed, 5, 4, format_set);
//	  sprintf(buff, " %e %e", acf_t.a[i]*1e-6, acf.a[i]+1);
	  f->WriteString("PCSDATA2", IntToStr(i+1), str);
	}
  } catch (...)
  {
	delete f;
  }
  delete f;
}

void SaveAcf2Tdf(UnicodeString s, TDataParams DataParams_)
{
  s = ChangeFileExt(s, ".tdf");
//  char buff[50];
  TIniFile *f = new TIniFile(s);
//  DecimalSeparator='.';

  UnicodeString str;
  TFormatSettings format_set;
  GetLocaleFormatSettings(LOCALE_SYSTEM_DEFAULT, format_set);
  format_set.DecimalSeparator = '.';

  try
  {
	f->WriteString("PCSPHYSPAR", "WAVELENGTH", FloatToStrF(DataParams_.WaveLength, ffFixed, 5, 2, format_set));
	f->WriteString("PCSPHYSPAR", "VISCOSITY", FloatToStrF(FormulaPuazeilia(DataParams_.Temperature)*1e3, ffFixed, 5, 4, format_set));
	f->WriteString("PCSPHYSPAR", "SCATANGLE", FloatToStrF(DataParams_.ScatAngle, ffFixed, 5, 1, format_set));
	f->WriteString("PCSPHYSPAR", "TEMPERATURE", FloatToStrF(DataParams_.Temperature, ffFixed, 5, 2, format_set));
	f->WriteString("PCSPHYSPAR", "REFRINDEX", FloatToStrF(DataParams_.RefIndex, ffFixed, 5, 2, format_set));

	for (int i=0; i < acf.w; i++)
	{
		str = FloatToStrF(acf_t.a[i]*1e-6, ffExponent, 5, 4, format_set) + " " + FloatToStrF(acf.a[i]+1.0, ffFixed, 5, 4, format_set);
	  f->WriteString("PCSDATA2", IntToStr(i+1), str);
	}
  } catch (...)
  {
	delete f;
  }
  delete f;

  return;
  /*
//  wchar_t(".");
  try
  {
	f->WriteFloat("PCSPHYSPAR", "WAVELENGTH", DataParams_.WaveLength);
	f->WriteFloat("PCSPHYSPAR", "VISCOSITY", FormulaPuazeilia(DataParams_.Temperature)*1e3);
	f->WriteFloat("PCSPHYSPAR", "SCATANGLE", DataParams_.ScatAngle);
	f->WriteFloat("PCSPHYSPAR", "TEMPERATURE", DataParams_.Temperature);
	f->WriteFloat("PCSPHYSPAR", "REFRINDEX", DataParams_.RefIndex);
	for (int i=0; i < acf.w; i++) {
	  sprintf(buff, " %e %e", acf_t.a[i]*1e-6, acf.a[i]+1);
	  f->WriteString("PCSDATA2", IntToStr(i+1), buff);
	}
  } catch (...)
  {
	delete f;
  }
  delete f;
  */
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

	DataParams.WaveLength=f->ReadFloat("PCSPHYSPAR", "WAVELENGTH", 632.8);
	DataParams.Viscosity = f->ReadFloat("PCSPHYSPAR", "VISCOSITY", 1.0)*1e-3;
	DataParams.ScatAngle=f->ReadFloat("PCSPHYSPAR", "SCATANGLE", 90.0);
	DataParams.Temperature=f->ReadFloat("PCSPHYSPAR", "TEMPERATURE", 298.15);
	DataParams.RefIndex=f->ReadFloat("PCSPHYSPAR", "REFRINDEX", 1.33);
	f->ReadSectionValues("PCSDATA2", str_list);

	count=str_list->Count;
	acf.Clear();
	acf_t.Clear();
	AcfParams.n_avt=count;
	acf.Init(count, 1, mitDouble);
	acf_t.Init(count, 1, mitDouble);

	for (size_t i=0; i < count; i++) {
	  str=f->ReadString("PCSDATA2", IntToStr((int)i+1), "0 0");
	  str1=str.SubString(1, str.Pos(" ")-1);
	  str2=str.SubString(str.Pos(" ")+1, str.Length());
	  acf_t.a[i]=str1.ToDouble()*1e6;
	  acf.a[i]=str2.ToDouble()-1;
	}
	/*
	MainForm->LineSeries3->Clear();
	for (int i=0; i < count; i++) {
		MainForm->LineSeries3->AddXY(acf_t.a[i], acf.a[i]);
	}
	MainForm->PageControl1->ActivePageIndex=2;
    */
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
  unsigned count = acf.w;
  int iFileHandle = -1;

  try {
	iFileHandle = FileCreate(s, fmOpenWrite);
	if(iFileHandle == -1) Abort();
	points = new __point[count];

	for (size_t i=0; i < count; i++) {
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
	OptionsForm->ComboBox3->ItemIndex = AcfParams.Initial_Angle;
//	OptionsForm->Edit9->Text = FloatToStr(AcfParams.Initial_Angle);
  //	OptionsForm->Edit28->Text = FloatToStr(AcfParams.Angle_Shift);
	//OptionsForm->Edit29->Text = IntToStr(AcfParams.num_Angles);
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
	OptionsForm->ComboBox2->ItemIndex = AcfParams.Prism;
	OptionsForm->ComboBox4->ItemIndex = AcfParams.Aperture;
//	OptionsForm->Edit37->Text = IntToStr(AcfParams.Aperture);
	OptionsForm->Edit38->Text = IntToStr(AcfParams.Polar);
    OptionsForm->CheckBox8->Checked = AcfParams.Kinetics;

	MainForm->StartMonitoring();
	int ModalResult = OptionsForm->ShowModal();
    MainForm->StopMonitoring();

	if (ModalResult == mrCancel)
		return false;

	AcfParams.Time_discr = OptionsForm->ComboBox1->ItemIndex;
	AcfParams.Multi_Angle =  OptionsForm->CheckBox5->Checked;
	AcfParams.Initial_Angle = OptionsForm->ComboBox3->ItemIndex; // CheckString(OptionsForm->Edit9->Text);

//	AcfParams.Angle_Shift = CheckString(OptionsForm->Edit28->Text);
//	AcfParams.num_Angles = OptionsForm->Edit29->Text.ToInt();
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
	AcfParams.Aperture = OptionsForm->ComboBox4->ItemIndex; //Edit37->Text.ToInt();
	AcfParams.Polar = OptionsForm->Edit38->Text.ToInt();
	AcfParams.Kinetics = OptionsForm->CheckBox8->Checked;

    MainForm->LineSeries4->Clear();
	MainForm->LineSeries5->Clear();

	if (ModalResult == mrAbort)
	{
		TestRecForm->Show();
		return false;
	}

	if (ModalResult == mrRetry)
	{
		bool error;
		TDeviceInitThread *t = new TDeviceInitThread(true);
		t->FreeOnTerminate = true;
		t->monitoring = true;
		t->error_ = &error;
		t->Start();
		return false;
	}



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

bool OpenProject(UnicodeString Name, TProjectData &pd)
{

	//MainForm->ListView3->Clear();
	UnicodeString Path = ExtractFileDir(Name) + "\\";
	pd.Path  = Path;
	pd.Name = ChangeFileExt(ExtractFileName(Name), "");

	_di_IXMLNode root, seq_node, rec_node;
	//TListItem *item;

	MainForm->XMLDocument1->LoadFromFile(Name);
	root = MainForm->XMLDocument1->ChildNodes->Nodes["Dynamic_Light_Scattering_XML_Document"];
	int n = root->ChildNodes->Count;

	pd.Date = root->ChildNodes->Nodes["Date"]->Text;
	pd.Name_Spec = root->ChildNodes->Nodes["Name"]->Text;
	pd.Name_Sol = root->ChildNodes->Nodes["Solution"]->Text;

	seq_node = root->ChildNodes->Nodes["Series"];
    seq_node = root->ChildNodes->First();

	for (int i=0; i < n; i++) {
		if (seq_node->GetNodeName() == "Series")
		{
			TProjectData::TSeq &seq_ = pd.Add();
			rec_node = seq_node->ChildNodes->First();
			int m = seq_node->ChildNodes->Count;
			for (int j=0; j < m-1; j++) {
				if (rec_node->GetNodeName() == "Measurement") {
					TProjectData::TRec &rec_ = seq_.Add();
					UnicodeString _name  = rec_node->ChildNodes->Nodes["ACF"]->Text;
					UnicodeString _name_data  = rec_node->ChildNodes->Nodes["Data"]->Text;
					if (FileExists(Path+_name_data))
						ExtractDataParams(Path+_name_data, &rec_.DataParams);
					else
						ShowMessage("Файл не найден: \n"+Path+_name_data);

					rec_.Acf_ = Path+_name;
					rec_.Data_ = Path+_name_data;

					UnicodeString s = rec_node->ChildNodes->Nodes["a0"]->Text;
					if (s != "") rec_.a0 = CheckString(s);
					s = rec_node->ChildNodes->Nodes["a1"]->Text;
					if (s != "") rec_.a1 = CheckString(s);
					s = rec_node->ChildNodes->Nodes["a2"]->Text;
					if (s != "") rec_.a2 = CheckString(s);
					s = rec_node->ChildNodes->Nodes["x_pcs"]->Text;
					if (s != "") rec_.x_pcs = CheckString(s);
					s = rec_node->ChildNodes->Nodes["pi"]->Text;
					if (s != "") rec_.pi = CheckString(s);
                    s = rec_node->ChildNodes->Nodes["rate"]->Text;
					if (s != "") rec_.rate = CheckString(s);
					s = rec_node->ChildNodes->Nodes["prism"]->Text;
					if (s != "") rec_.prism = s.ToInt();
					s = rec_node->ChildNodes->Nodes["aperture"]->Text;
					if (s != "") rec_.aperture = s.ToInt();
					s = rec_node->ChildNodes->Nodes["polar"]->Text;
					if (s != "") rec_.polar = s.ToInt();

				}
				rec_node = rec_node->NextSibling();
			}

			UnicodeString _name  = seq_node->ChildNodes->Nodes["Mean_ACF"]->Text;
            seq_.Mean_Acf_ = Path+_name;
            UnicodeString s = seq_node->ChildNodes->Nodes["a0"]->Text;
            if (s != "") seq_.a0 = CheckString(s);
			s = seq_node->ChildNodes->Nodes["a1"]->Text;
            if (s != "") seq_.a1 = CheckString(s);
			s = seq_node->ChildNodes->Nodes["a2"]->Text;
            if (s != "") seq_.a2 = CheckString(s);
			s = seq_node->ChildNodes->Nodes["x_pcs"]->Text;
            if (s != "") seq_.x_pcs = CheckString(s);
            s = seq_node->ChildNodes->Nodes["pi"]->Text;
            if (s != "") seq_.pi = CheckString(s);
		}
		seq_node = seq_node->NextSibling();
	}

		/*
		int m = seq_node->ChildNodes->Count;
		rec_node = seq_node->ChildNodes->Nodes["Measurement"];

		for (int j=0; j < m-1; j++) {

			TProjectData::TRec &rec_ = seq_.Add();

			/*
			item = MainForm->ListView3->Items->Add();
			for (int k = 0; k < 10; k++)
				item->SubItems->Add("");


			item->SubItems->Strings[1] = IntToStr(i+1);
			item->SubItems->Strings[2] = IntToStr(j+1);
			*/

		//	UnicodeString _name  = rec_node->ChildNodes->Nodes["ACF"]->Text;

			/*
			if (FileExists(Path+_name))
				item->SubItems->Strings[3] = "рассчитана";
			else
				item->SubItems->Strings[3] = "не рассчитана";
			*/


		//	UnicodeString _name_data  = rec_node->ChildNodes->Nodes["Data"]->Text;

			//TDataParams params;
			/*
			if (FileExists(Path+_name_data))
			//{
				ExtractDataParams(Path+_name_data, &rec_.DataParams);


				/*
				item->SubItems->Strings[4] = FloatToStrF(params.ScatAngle, ffFixed, 5, 2);
				item->SubItems->Strings[5] = FloatToStrF(params.Temperature, ffFixed, 5, 2);
				*/

			 /*
			}
			else
				ShowMessage("Файл не найден: \n"+Path+_name_data);

			/*
			item->SubItems->Strings[6] = Path+_name_data;
			item->SubItems->Strings[7] = Path+_name;
			*/
			   /*
			rec_.Acf_ = Path+_name;
			rec_.Data_ = Path+_name_data;

			UnicodeString s = rec_node->ChildNodes->Nodes["a0"]->Text;
			if (s != "") rec_.a0 = CheckString(s);
			s = rec_node->ChildNodes->Nodes["a1"]->Text;
			if (s != "") rec_.a1 = CheckString(s);
			s = rec_node->ChildNodes->Nodes["a2"]->Text;
			if (s != "") rec_.a2 = CheckString(s);
			s = rec_node->ChildNodes->Nodes["x_pcs"]->Text;
			if (s != "") rec_.x_pcs = CheckString(s);
			s = rec_node->ChildNodes->Nodes["pi"]->Text;
			if (s != "") rec_.pi = CheckString(s);


			//item->Data = (void *) new TPoint(i, j);
//			MainForm->Memo1->Lines->Add(IntToStr((int)&rec_) + " "+IntToStr((int)rec_.num_rec));
			rec_node = rec_node->NextSibling();
		}

		UnicodeString _name  = seq_node->ChildNodes->Nodes["Mean_ACF"]->Text;
		/*
		item = MainForm->ListView3->Items->Add();
		for (int k = 0; k < 10; k++)
			item->SubItems->Add("");

		item->SubItems->Strings[0] = "Усредненная АКФ";
		item->SubItems->Strings[1] = IntToStr(i+1);
		item->Data = (void *) new TPoint(i, -1);
		*/
				 /*
		seq_.Mean_Acf_ = Path+_name;
		UnicodeString s = seq_node->ChildNodes->Nodes["a0"]->Text;
		if (s != "") seq_.a0 = CheckString(s);
		s = rec_node->ChildNodes->Nodes["a1"]->Text;
		if (s != "") seq_.a1 = CheckString(s);
		s = rec_node->ChildNodes->Nodes["a2"]->Text;
		if (s != "") seq_.a2 = CheckString(s);
		s = rec_node->ChildNodes->Nodes["x_pcs"]->Text;
		if (s != "") seq_.x_pcs = CheckString(s);
		s = rec_node->ChildNodes->Nodes["pi"]->Text;
		if (s != "") seq_.pi = CheckString(s);

		/*
		if (FileExists(Path+_name))
			item->SubItems->Strings[3] = "рассчитана";
		else
			item->SubItems->Strings[3] = "не рассчитана";
		*/

	   //	seq_node = seq_node->NextSibling();


	MainForm->XMLDocument1->XML->Clear();
	MainForm->XMLDocument1->Active = false;

	UpdateVt(MainForm->vt);
//	AddToVt(pd, MainForm->vt);
	return true;
}


void ExtractDataParams(UnicodeString Name, TDataParams *params){

	int f = FileOpen(Name, fmOpenRead);
	int n = 0;
	FileRead(f, &n, sizeof(int));
	FileSeek(f, (int)(n*sizeof(WORD)+sizeof(int)), 0);
	FileRead(f, (void *)params, sizeof(TDataParams));
	FileClose(f);
}

void ProcessData(TProjectData::TVtPD *d)
{

	switch (d->State) {
		case TProjectData::pdRecord:
		{
			UnicodeString s =  (*d->pd)[d->seq_num][d->rec_num].Acf_;
			if (FileExists(s))
				ProcessData(acf_, s, d->seq_num, d->rec_num, (*d->pd)[d->seq_num][d->rec_num].Data_);
			else
			{
				d->pd->Disable_All();
				d->pd->Enable_Rec(d->seq_num, d->rec_num);
				TTimerThread *t = new  TTimerThread(true);
				t->FreeOnTerminate = true;
				t->pd_ = d->pd;
				t->DoMean_ = false;
				t->mode = from_hdd;
				t->Start();
			}
		}
		break;
		case TProjectData::pdMean:
		{
			UnicodeString s =  (*d->pd)[d->seq_num].Mean_Acf_;
			if (FileExists(s))
				ProcessData(acf_, s, d->seq_num, -1);
			else
			{
				d->pd->Disable_All();
				d->pd->Enable_Seq(d->seq_num);
                TTimerThread *t = new  TTimerThread(true);
				t->FreeOnTerminate = true;
				t->pd_ = d->pd;
				t->DoMean_ = true;
				t->mode = from_hdd;
				t->Start();
			}

		}
		break;

	}

}


void ProcessData(dls_mode mode, UnicodeString Name, int seq_num, int rec_num, UnicodeString data_Name)
{
	switch (mode) {
		case acf_:
		{
			OpenTdf(Name);
			double *acf_app = new double[AcfParams.n_avt];
			CalculateCumulants(acf_app);
			MainForm->LineSeries3->Clear();
			MainForm->Series5->Clear();
			for (int i=0; i < AcfParams.n_avt; i++)
			{
				if ((acf.a[i] >= 0.0f) && (acf.a[i] <= 1.0f) )
					MainForm->LineSeries3->AddXY(acf_t.a[i], acf.a[i]);
				else
					MainForm->LineSeries3->AddNullXY(acf_t.a[i], 0.0f);

				MainForm->Series5->AddXY(acf_t.a[i], acf_app[i]);
			}

			UnicodeString s;

			MainForm->Memo1->Lines->Add("");
		
			if (rec_num != -1) {
				s = "Серия "+ IntToStr((int)seq_num+1) + " Измерение " + IntToStr((int)rec_num+1);
				MainForm->Memo1->Lines->Add(s);
			}
			else
			{
				s = "Серия "+ IntToStr((int)seq_num+1) + " Усредненная АКФ";
				MainForm->Memo1->Lines->Add(s);
			}

//			s = "Температура "+FloatToStrF(DataParams.Temperature-273.15, ffFixed, 5, 2);
//			MainForm->Memo1->Lines->Add(s);

			s = "Показатель полидисперсности " + FloatToStrF(AcfParams.PI, ffFixed,5,3);
			MainForm->Memo1->Lines->Add(s);
			MainForm->Label3->Caption = s;
			s = "Средний диаметр частиц " + FloatToStrF(AcfParams.x_pcs, ffFixed, 5, 2)+" нм";
			MainForm->Label2->Caption = s;
			MainForm->Memo1->Lines->Add(s);

			if (AcfParams.Kinetics && (rec_num != -1))
			{
				MainForm->Chart6->LeftAxis->Title->Caption = "Средний диаметр, нм.";
				MainForm->Chart6->BottomAxis->Title->Caption = "Номер измерения";
				MainForm->LineSeries4->Add(AcfParams.x_pcs);
				MainForm->LineSeries5->Add(AcfParams.x_pcs);
			}
			else
			{
				if (FileExists(data_Name))
				{
					WORD *Data;
					int n0 = 0;

					OpenData(&Data, n0, data_Name);

					MainForm->LineSeries4->Clear();
					MainForm->LineSeries5->Clear();
					MainForm->Chart6->LeftAxis->Title->Caption = "Скорость счета, имп./с";
					MainForm->Chart6->BottomAxis->Title->Caption = "Время, с";

					std::vector<double> rate, time;
					getRateGraph(Data, n0, rate, time);

					for (size_t i=0; i < rate.size(); ++i)
					{
						MainForm->LineSeries4->AddXY(time[i], rate[i]);
						MainForm->LineSeries5->AddXY(time[i], rate[i]);
					}

					delete [] Data;
				}
			}

			delete [] acf_app;
        	break;
		}

		case rec_:
		{
			pd.Disable_All();
			if (rec_num == -1) {
				pd.Enable_Seq(seq_num);
				AcfParams.DoMean = true;
			}
			else
			{
				pd.Enable_Rec(seq_num, rec_num);
				AcfParams.DoMean = false;
			}
			TTimerThread *t = new  TTimerThread(true);
			t->FreeOnTerminate = true;
			t->mode = from_hdd;
			t->Start();

			 /*
			WORD *data;
			int n;
			OpenData(data, n, Name);
			TSeqThread *t = new TSeqThread(true);
			t->FreeOnTerminate = true;
//			t->mode = mode;
			t->Start();
            */
	        break;
		}



//		case rec_: break;
	}
}



void OpenData(WORD **data, int &n, UnicodeString Name)
{
	int f = FileOpen(Name, fmOpenRead);
	FileRead(f, &n, sizeof(int));
	*data = new WORD[n];
	FileRead(f, (void *) *data, n*sizeof(WORD));
	FileRead(f, (void *)&DataParams, sizeof(TDataParams));
	FileClose(f);
}

double GetTime_Discr(int i)
{
	switch (i) {
		case 0: return 5.0;
		case 1: return 10.0;
		case 2: return 20.0;
		case 3: return 50.0;
	}
    return 0.0;
}

void AddToVt( TProjectData &pd_ , TVirtualStringTree *vt )
{
	TVirtualNode *t = vt->AddChild(NULL);
	TProjectData::TVtPD *d;
	if (t) {
		t->States << vsExpanded;
		d = (TProjectData::TVtPD *)vt->GetNodeData(t);
		if (d)
		{
			d->Name = pd_.Name_Spec + " ("+ pd_.Date +")";
			d->State = TProjectData::pdHeader;
			d->pd = &pd_;
		}


		for (size_t i=0; i < pd_.SizeOf(); i++) {
			TVirtualNode *seq_ = vt->AddChild(t);
			if (seq_) {
				seq_->States << vsExpanded;
				d = (TProjectData::TVtPD *)vt->GetNodeData(seq_);
				if (d) {
					d->Name = "Серия " + IntToStr((int)i+1);
					d->State = TProjectData::pdSerie;
					d->seq_num = i;
                    d->x_pcs = pd_[i].x_pcs;
                    d->pi = pd_[i].pi;
                    d->gamma = pd_[i].a1;

					d->pd = &pd_;
				}

				for (size_t j=0; j < pd_[i].SizeOf(); j++) {
					TVirtualNode *rec_ = vt->AddChild(seq_);
					if (rec_) {
						rec_->States << vsExpanded;
						d = (TProjectData::TVtPD *)vt->GetNodeData(rec_);
						if (d) {
							d->Name = "Измерение " + IntToStr((int)j+1);
							d->State = TProjectData::pdRecord;
							d->ScatAngle = pd_[i][j].DataParams.ScatAngle;
							d->Temperature = pd_[i][j].DataParams.Temperature;
							d->x_pcs = pd_[i][j].x_pcs;
							d->pi = pd_[i][j].pi;
							d->gamma = pd_[i][j].a1;
							d->rate = pd_[i][j].rate;
							d->prism = pd_[i][j].prism;
							d->aperture = pd_[i][j].aperture;
							d->polar = pd_[i][j].polar;
							d->rec_num = j;
							d->seq_num = i;
							d->pd = &pd_;
						}
					}
				}

				TVirtualNode *rec_ = vt->AddChild(seq_);
				if (rec_) {
					d = (TProjectData::TVtPD *)vt->GetNodeData(rec_);
					d->Name = "Средняя АКФ ";
					d->seq_num = i;
					d->State = TProjectData::pdMean;
					d->x_pcs = pd_[i].x_pcs;
					d->pi = pd_[i].pi;
					d->gamma = pd_[i].a1;

					d->pd = &pd_;
				}
			}
		}
	}
}

void UpdateVt( TVirtualStringTree *vt )
{
	vt->Clear();
	for (size_t i=0; i < pd_vector.size(); i++)
	{
    	pd_vector[i].num = i;
		AddToVt(pd_vector[i], vt);
	}

	SendMessageA(vt->Handle, WM_VSCROLL, SB_BOTTOM, 0);
}

void RegisterExt()
{
	TRegistry *reg =  new TRegistry;
	reg->RootKey = HKEY_CLASSES_ROOT;
	reg->OpenKey(".dls", true);
	reg->WriteString("", "DLS.File");
	reg->CloseKey();
	reg->OpenKey("DLS.File\\DefaultIcon", true);
	reg->WriteString("", Application->ExeName + ", 0");
	reg->CloseKey();
	reg->OpenKey("DLS.File\\shell\\open\\command", true);
	reg->WriteString("", Application->ExeName + " %1");
	reg->CloseKey();
	reg->Free();
}

bool CheckExistProject(UnicodeString FileName)
{
	return false;
}

void SaveProject(TProjectData *pd_)
{
	_di_IXMLNode root, seq_node, rec_node;
	MainForm->XMLDocument1->Active = true;

	root = MainForm->XMLDocument1->AddChild("Dynamic_Light_Scattering_XML_Document");
	root->AddChild("Date")->Text = Today().DateString();
	root->AddChild("Name")->Text = pd_->Name_Spec;
	root->AddChild("Solution")->Text = pd_->Name_Sol;

	for (size_t i=0; i < (*pd_).SizeOf(); i++) {
		seq_node = root->AddChild("Series");
		for (size_t j=0; j < (*pd_)[i].SizeOf(); j++) {
			rec_node = seq_node->AddChild("Measurement");
			rec_node->AddChild("Data")->Text = ExtractFileName((*pd_)[i][j].Data_);
			rec_node->AddChild("ACF")->Text = ExtractFileName((*pd_)[i][j].Acf_);
			rec_node->AddChild("a0")->Text = FloatToStr((*pd_)[i][j].a0);
			rec_node->AddChild("a1")->Text = FloatToStr((*pd_)[i][j].a1);
			rec_node->AddChild("a2")->Text = FloatToStr((*pd_)[i][j].a2);
			rec_node->AddChild("x_pcs")->Text = FloatToStr((*pd_)[i][j].x_pcs);
			rec_node->AddChild("pi")->Text = FloatToStr((*pd_)[i][j].pi);
			rec_node->AddChild("rate")->Text = FloatToStr((*pd_)[i][j].rate);
			rec_node->AddChild("prism")->Text = IntToStr((*pd_)[i][j].prism);
			rec_node->AddChild("aperture")->Text = IntToStr((*pd_)[i][j].aperture);
			rec_node->AddChild("polar")->Text = IntToStr((*pd_)[i][j].polar);

		}
		seq_node->AddChild("Mean_ACF")->Text = ExtractFileName((*pd_)[i].Mean_Acf_);
		seq_node->AddChild("a0")->Text = FloatToStr((*pd_)[i].a0);
		seq_node->AddChild("a1")->Text = FloatToStr((*pd_)[i].a1);
		seq_node->AddChild("a2")->Text = FloatToStr((*pd_)[i].a2);
		seq_node->AddChild("x_pcs")->Text = FloatToStr((*pd_)[i].x_pcs);
		seq_node->AddChild("pi")->Text = FloatToStr((*pd_)[i].pi);

	}

	MainForm->XMLDocument1->SaveToFile(pd_->Path+pd_->Name+".dls");

	MainForm->XMLDocument1->XML->Clear();
	MainForm->XMLDocument1->Active = false;
}

void getRateGraph(WORD *Data, int n0, std::vector<double> &rate, std::vector<double> &time)
{
	double dt = GetTime_Discr(AcfParams.Time_discr);
	double interv = 1e-2;
	int step = interv/(dt*1e-9);
	int sum = 0, time_sum = 0;
	int thresh = step;
	double ind = 0.5;

	for (int i=0; i < n0; i++)
	{
		time_sum += Data[i];
		if (time_sum <= thresh)
			sum++;
		else
		{
			rate.push_back((double)sum/interv);
			time.push_back(interv*ind);

			sum = 1;
			thresh += step;
			ind++;

		}
	}
	/*
	double mean;
	sum = 0;
	for (int i=0; i < n0; i++)
		sum += Data[i];

	mean = (double)n0/(sum*dt*1e-9);

	MainForm->Memo1->Lines->Add(FloatToStr(mean));
    */

}


