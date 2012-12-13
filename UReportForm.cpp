//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UReportForm.h"
#include "UDlsVars.h"
#include <math.h>
#include "UReportEditForm.h"
#include <ComObj.hpp>
#include "MainFormUnit.h"
#include "UGraphApproxForm.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "VirtualTrees"
#pragma resource "*.dfm"
TReportForm *ReportForm;
//---------------------------------------------------------------------------
__fastcall TReportForm::TReportForm(TComponent* Owner)
	: TForm(Owner)
{
	VirtualStringTree1 = new TVirtualStringTree(this);
	VirtualStringTree1->Parent = ReportForm;
	VirtualStringTree1->Align = alClient;
	VirtualStringTree1->Header->Style = hsFlatButtons;
	VirtualStringTree1->Header->Options << hoVisible << hoColumnResize << hoAutoSpring;
	VirtualStringTree1->TreeOptions->PaintOptions <<  toShowHorzGridLines <<  toShowVertGridLines << toFullVertGridLines << toShowButtons;
	VirtualStringTree1->TreeOptions->SelectionOptions <<  toFullRowSelect << toLevelSelectConstraint << toMultiSelect;
	VirtualStringTree1->TreeOptions->AnimationOptions << toAnimatedToggle << toAdvancedAnimatedToggle;
	VirtualStringTree1->NodeDataSize=sizeof(TReportData);
	TVirtualTreeColumn *col = VirtualStringTree1->Header->Columns->Add();
	col->Width = 163;
	col->Position = 0;
	col->Text = "Наименование";
	col->Options << coVisible << coAllowFocus << coAutoSpring << coEnabled << coResizable << coAutoSpring << coSmartResize << coAllowFocus;
	col = VirtualStringTree1->Header->Columns->Add();
	col->Width = 83;
	col->Position = 1;
	col->Text = "Диаметр, нм.";
	col->Options << coVisible << coAllowFocus << coAutoSpring << coEnabled << coResizable << coAutoSpring << coSmartResize << coAllowFocus;
	col = VirtualStringTree1->Header->Columns->Add();
	col->Width = 83;
	col->Position = 2;
	col->Text = "ППД";
	col->Options << coVisible << coAllowFocus << coAutoSpring << coEnabled << coResizable << coAutoSpring << coSmartResize << coAllowFocus;
	col = VirtualStringTree1->Header->Columns->Add();
	col->Width = 83;
	col->Position = 3;
	col->Text = "Угол, град.";
	col->Options << coVisible << coAllowFocus << coAutoSpring << coEnabled << coResizable << coAutoSpring << coSmartResize << coAllowFocus;
	col = VirtualStringTree1->Header->Columns->Add();
	col->Width = 78;
	col->Position = 4;
	col->Text = "СКО, нм.";
	col->Options << coVisible << coAllowFocus << coAutoSpring << coEnabled << coResizable << coAutoSpring << coSmartResize << coAllowFocus;
	VirtualStringTree1->OnGetText = VirtualStringTree1GetText;
	VirtualStringTree1->OnChecked = VirtualStringTree1Checked;
	VirtualStringTree1->DefaultText = "";

}
//---------------------------------------------------------------------------

void __fastcall TReportForm::VirtualStringTree1GetText(TBaseVirtualTree *Sender, PVirtualNode Node,
		  TColumnIndex Column, TVSTTextType TextType, UnicodeString &CellText)
{
   TReportData *t;
   t=(TReportData *)Sender->GetNodeData(Node);

   if ( !(t == NULL) ) {
	 int level = Sender->GetNodeLevel(Node);
	 switch (level) {
	   case 0:  switch (Column) {
				  case 0: CellText=t->Name; break;
				  case 1: CellText=FloatToStrF(t->pcs, ffFixed, 5, 2); break;
				  case 2: CellText=FloatToStrF(t->pi, ffFixed, 5, 2); break;
				  case 4: CellText=FloatToStrF(t->rms, ffFixed, 5, 3); break;
				}
				break;
	   case 1:  switch (Column) {
				  case 0: CellText=t->Name; break;
				  case 1: CellText=FloatToStrF(t->pcs, ffFixed, 5, 2); break;
				  case 2: CellText=FloatToStrF(t->pi, ffFixed, 5, 2); break;
				  case 3: CellText=FloatToStrF(t->angle, ffFixed, 5, 2); break;
				}
				break;
	 }
   }
}
//---------------------------------------------------------------------------
void __fastcall TReportForm::Button1Click(TObject *Sender)
{
  TVirtualNode *t = VirtualStringTree1->GetFirstSelected(false);
  TReportData *data;
  ReportEditForm->Edit1->Text="";
  ReportEditForm->Edit2->Text="";
  ReportEditForm->Edit3->Text="";
  ReportEditForm->Edit4->Text="";

  if (!(t == NULL))
  {
	int level=VirtualStringTree1->GetNodeLevel(t);
	data=(TReportData *)VirtualStringTree1->GetNodeData(t);
	if (!(data == NULL))
	{
	  switch (level) {
		case 0: ReportEditForm->Edit1->Enabled=true;
				ReportEditForm->Edit1->Text=data->Name;
				ReportEditForm->Edit2->Enabled=false;
				ReportEditForm->Edit3->Enabled=false;
				ReportEditForm->Edit4->Enabled=false;
				break;
		case 1: ReportEditForm->Edit1->Enabled=false;
				ReportEditForm->Edit2->Enabled=true;
				ReportEditForm->Edit3->Enabled=true;
				ReportEditForm->Edit4->Enabled=true;
				ReportEditForm->Edit2->Text=FloatToStrF(data->pcs, ffFixed, 5, 2);
				ReportEditForm->Edit3->Text=FloatToStrF(data->pi, ffFixed, 5, 2);
				ReportEditForm->Edit4->Text=FloatToStr(data->angle);
				break;
	  }

	  if  (!(ReportEditForm->ShowModal() == mrOk))
		return;

	  switch (level) {
		  case 0: data->Name=ReportEditForm->Edit1->Text; break;
		  case 1: data->pcs=CheckString(ReportEditForm->Edit2->Text);
				  data->pi=CheckString(ReportEditForm->Edit3->Text);
				  data->angle=CheckString(ReportEditForm->Edit4->Text);
				  break;
	  }
	  RecalculateReport();
      VirtualStringTree1->Repaint();
	}
  }

/*   TVirtualNode *t;
   t=VirtualStringTree1->AddChild(NULL);
   TReportData *data;
   data=(TReportData *)VirtualStringTree1->GetNodeData(t);
   if (!(data == NULL)) {
//	 data->num=t->Index;
	 data->Name="Фигня";
	 data->pcs=1231;
	 data->pi=21;
	 data->angle=90;
	 data->rms=0.1212;
   }

   */
}
//---------------------------------------------------------------------------
void __fastcall TReportForm::Button2Click(TObject *Sender)
{
  VirtualStringTree1->DeleteSelectedNodes();
  RecalculateReport();
  VirtualStringTree1->Repaint();


/*
  TVirtualNode *t;
  t=VirtualStringTree1->AddChild(VirtualStringTree1->FocusedNode);
  TReportData *data = NULL;
  data=(TReportData *)VirtualStringTree1->GetNodeData(t);
  if (!(data == NULL)) {
//  	 data->num=t->Index;
	 data->Name=IntToStr((int)t->Index+1);
	 data->pcs=1231;
	 data->pi=21;
	 data->angle=90;
	 data->rms=0.1212;
	 t->CheckType=ctCheckBox;
	 t->CheckState=csCheckedNormal;
	 t->Parent->States+=TVirtualNodeStates(vsExpanded);
  }
  */
}
//---------------------------------------------------------------------------
void __fastcall TReportForm::RecalculateReport()
{
   TVirtualNode *t_root=VirtualStringTree1->RootNode->FirstChild;
   TVirtualNode *t_child;
   TReportData *data_root, *data_child;
   int cnt=0;
   double mean_pi, mean_pcs, rms_pcs;


   for (size_t i=0; i < VirtualStringTree1->RootNodeCount; i++) {
	 if (!(t_root == NULL)) {
	  data_root=(TReportData *)ReportForm->VirtualStringTree1->GetNodeData(t_root);
	  t_child=t_root->FirstChild;
	  cnt=0;
	  mean_pi=0;
	  mean_pcs=0;
	  rms_pcs=0;
	  while (!(t_child == NULL))
		{
		  data_child=(TReportData *)ReportForm->VirtualStringTree1->GetNodeData(t_child);
		  if (!(data_child == NULL) && (t_child->CheckState == csCheckedNormal)) {
			mean_pcs+=data_child->pcs;
			mean_pi+=data_child->pi;
			cnt++;
		  }
		  t_child=t_child->NextSibling;
		}

	  if (!(cnt == 0)) {
		mean_pcs/=cnt;
		mean_pi/=cnt;
	  }

	  t_child=t_root->FirstChild;
	  cnt=0;
	  while (!(t_child == NULL))
		{
		  data_child=(TReportData *)ReportForm->VirtualStringTree1->GetNodeData(t_child);
		  if (!(data_child == NULL) && (t_child->CheckState == csCheckedNormal)) {
			rms_pcs+=pow(data_child->pcs-mean_pcs,2);
			cnt++;
		  }
		  t_child=t_child->NextSibling;
		}
	  if (cnt > 1) {
		rms_pcs=sqrt(rms_pcs/(cnt-1));
	  }
	  else
		rms_pcs=0;

	  if (!(data_root == NULL)) {
		data_root->pi=mean_pi;
		data_root->pcs=mean_pcs;
		data_root->rms=rms_pcs;
	  }
	  t_root=t_root->NextSibling;
	  }
   }


}
void __fastcall TReportForm::VirtualStringTree1Checked(TBaseVirtualTree *Sender, PVirtualNode Node)

{
   RecalculateReport();
   Sender->Repaint();
}
//---------------------------------------------------------------------------

void __fastcall TReportForm::VirtualStringTree1Checking(TBaseVirtualTree *Sender,
          PVirtualNode Node, TCheckState &NewState, bool &Allowed)

{
//  RecalculateReport();

}
//---------------------------------------------------------------------------

void __fastcall TReportForm::ToolButton4Click(TObject *Sender)
{
   Close();
}
//---------------------------------------------------------------------------

void __fastcall TReportForm::ToolButton3Click(TObject *Sender)
{

  Variant WordApp, WordSel, WordDoc, EmptyParam, table, cell, range;
  TDateTime dtReport = Date();
  UnicodeString s=ExtractFileDir(Application->ExeName)+"\\template.doc";

  if (!FileExists(s)) {
	ShowMessage("Файл шаблона не найден");
	return;
  }

  TVirtualNode *t_root=VirtualStringTree1->RootNode->FirstChild;
  TVirtualNode *t_child;
  TReportData *data_root, *data_child;

  try {
	WordApp=GetActiveOleObject("Word.Application");
  } catch (...) {
	try {
	  WordApp=CreateOleObject("Word.Application");

	} catch (...) {
	  ShowMessage("Microsoft Word не установлен");
	  return;
	}
  }



  try {
	WordApp.OlePropertySet("Visible", false);
	WordDoc=WordApp.OlePropertyGet("Documents").OleFunction("Add", s.t_str());


//	if (WordDoc.OlePropertyGet("Bookmarks").OleFunction("Exists", "date"))
//	  ShowMessage("!");

//	WordDoc.OleFunction("GoTo", 0xFFFFFFFF, EmptyParam, EmptyParam, "date").OleFunction("Select");
	WordApp.OlePropertyGet("Selection").OleFunction("goto", 0xFFFFFFFF, EmptyParam, EmptyParam, "date");
	WordApp.OlePropertyGet("Selection").OleProcedure("TypeText", dtReport.FormatString("dd.mm.yyyy").t_str());
	WordApp.OlePropertyGet("Selection").OleFunction("goto", 0xFFFFFFFF, EmptyParam, EmptyParam, "img");
	MainForm->Chart5->CopyToClipboardMetafile(true);
	WordApp.OlePropertyGet("Selection").OleFunction("Paste");


	WordApp.OlePropertyGet("Selection").OleFunction("goto", 0xFFFFFFFF, EmptyParam, EmptyParam, "table");

//	table=WordDoc.OlePropertyGet("Tables").OleFunction("Item", 1);
//	cell=table.OleFunction("Cell", 1, 1);
//	range=cell.OlePropertyGet("Range");
//	range.OlePropertySet("Text", "Fuck");
	for (size_t i=0; i < VirtualStringTree1->RootNodeCount; i++) {
	  if (!(t_root == NULL)) {
		data_root=(TReportData *)ReportForm->VirtualStringTree1->GetNodeData(t_root);
		if (!(data_root == NULL)) {
		  s=data_root->Name;
		  WordApp.OlePropertyGet("Selection").OleProcedure("TypeText", s.t_str());
		  WordApp.OlePropertyGet("Selection").OleFunction("MoveRight", 12);
		  WordApp.OlePropertyGet("Selection").OleFunction("MoveRight", 12);
		  WordApp.OlePropertyGet("Selection").OleFunction("MoveRight", 12);
		  WordApp.OlePropertyGet("Selection").OleFunction("MoveRight", 12);
		}
		else
		  continue;

		t_child=t_root->FirstChild;
		while (!(t_child == NULL))
		{
		  data_child=(TReportData *)ReportForm->VirtualStringTree1->GetNodeData(t_child);
		  if (!(data_child == NULL) && (t_child->CheckState == csCheckedNormal)) {
			s=data_child->Name;
			WordApp.OlePropertyGet("Selection").OleProcedure("TypeText", s.t_str());
			WordApp.OlePropertyGet("Selection").OleFunction("MoveRight", 12);
			WordApp.OlePropertyGet("Selection").OleProcedure("TypeText",  FloatToStrF(data_child->pcs, ffFixed, 5, 2).t_str());
			WordApp.OlePropertyGet("Selection").OleFunction("MoveRight", 12);
			WordApp.OlePropertyGet("Selection").OleProcedure("TypeText",  FloatToStrF(data_child->pi, ffFixed, 5, 2).t_str());
			WordApp.OlePropertyGet("Selection").OleFunction("MoveRight", 12);
			WordApp.OlePropertyGet("Selection").OleProcedure("TypeText",  FloatToStr(data_child->angle).t_str());
			WordApp.OlePropertyGet("Selection").OleFunction("MoveRight", 12);
		  }
		  t_child=t_child->NextSibling;
		}
		WordApp.OlePropertyGet("Selection").OlePropertyGet("Font").OlePropertySet("Bold", true);
		WordApp.OlePropertyGet("Selection").OlePropertyGet("ParagraphFormat").OlePropertySet("Alignment", 0);
		WordApp.OlePropertyGet("Selection").OleProcedure("TypeText", "Средний диаметр");
		WordApp.OlePropertyGet("Selection").OleFunction("MoveRight", 12);
		WordApp.OlePropertyGet("Selection").OlePropertyGet("Font").OlePropertySet("Bold", false);
		WordApp.OlePropertyGet("Selection").OlePropertyGet("ParagraphFormat").OlePropertySet("Alignment", 1);
		s=FloatToStrF(data_root->pcs, ffFixed, 5, 2)+" нм.";
		WordApp.OlePropertyGet("Selection").OleProcedure("TypeText",  s.t_str());
		WordApp.OlePropertyGet("Selection").OleFunction("MoveRight", 12);
		WordApp.OlePropertyGet("Selection").OleFunction("MoveRight", 12);
		WordApp.OlePropertyGet("Selection").OleFunction("MoveRight", 12);
		WordApp.OlePropertyGet("Selection").OleProcedure("TypeText", "Средний ППД");
		WordApp.OlePropertyGet("Selection").OleFunction("MoveRight", 12);
		WordApp.OlePropertyGet("Selection").OleProcedure("TypeText",  FloatToStrF(data_root->pi, ffFixed, 5, 2).t_str());
		WordApp.OlePropertyGet("Selection").OleFunction("MoveRight", 12);
		WordApp.OlePropertyGet("Selection").OleFunction("MoveRight", 12);
		WordApp.OlePropertyGet("Selection").OleFunction("MoveRight", 12);
		WordApp.OlePropertyGet("Selection").OleProcedure("TypeText", "СКО");
		WordApp.OlePropertyGet("Selection").OleFunction("MoveRight", 12);
		s=FloatToStrF(data_root->rms, ffFixed, 5, 2)+" нм.";
		WordApp.OlePropertyGet("Selection").OleProcedure("TypeText",  s.t_str());
		WordApp.OlePropertyGet("Selection").OleFunction("MoveRight", 12);
		WordApp.OlePropertyGet("Selection").OleFunction("MoveRight", 12);
		if (!(i == (VirtualStringTree1->RootNodeCount-1))) {
		  WordApp.OlePropertyGet("Selection").OleFunction("MoveRight", 12);
		  WordApp.OlePropertyGet("Selection").OlePropertyGet("Font").OlePropertySet("Bold", false);
		  WordApp.OlePropertyGet("Selection").OlePropertyGet("ParagraphFormat").OlePropertySet("Alignment", 1);
		}
	  }
	  t_root=t_root->NextSibling;
	}




	/*

	for (int i=0; i < 100; i++) {
	  WordApp.OlePropertyGet("Selection").OleProcedure("TypeText", "Fuck");
	  WordApp.OlePropertyGet("Selection").OleFunction("MoveRight", 12);
	}
	  */

	/*WordApp.OlePropertyGet("Selection").OlePropertyGet("ParagraphFormat").OlePropertySet("Alignment", 1);
	WordApp.OlePropertyGet("Selection").OlePropertyGet("Font").OlePropertySet("Bold", true);
	WordApp.OlePropertyGet("Selection").OleProcedure("TypeText", "Протокол измерений");
	WordApp.OlePropertyGet("Selection").OleProcedure("TypeParagraph");
	WordApp.OlePropertyGet("Selection").OleProcedure("TypeParagraph");
	WordApp.OlePropertyGet("Selection").OlePropertyGet("ParagraphFormat").OlePropertySet("Alignment", 0);
	WordApp.OlePropertyGet("Selection").OlePropertyGet("Font").OlePropertySet("Bold", false);
	WordApp.OlePropertyGet("Selection").OleProcedure("TypeText", dtReport.FormatString("dd.mm.yyyy").t_str());
	WordApp.OlePropertyGet("Selection").OleProcedure("TypeParagraph");
	WordApp.OlePropertyGet("Selection").OleProcedure("TypeParagraph");
	WordApp.OlePropertyGet("Tables").OlePropertySet("Add", 3, 3);
	 */
  }
  __finally{
    WordApp.OlePropertySet("Visible", true);
	WordApp=Unassigned();
  }

}
//---------------------------------------------------------------------------


void __fastcall TReportForm::ToolButton5Click(TObject *Sender)
{
  TVirtualNode *t=VirtualStringTree1->GetFirstSelected(true);
  TReportData *d;
  GraphApproxForm->Series1->Clear();
  GraphApproxForm->Series2->Clear();

  int level, cnt=0, n=VirtualStringTree1->SelectedCount;
  double q;
  double *x = new double[n];
  double *y = new double[n];
  double *angles = new double[n];
  double t_mean=0;


  for (int i=0; i < VirtualStringTree1->SelectedCount; i++) {

	if (!(t == NULL)) {
	level = VirtualStringTree1->GetNodeLevel(t);
	if (!(level == 1)) {
		continue;
	}
	d=(TReportData *)VirtualStringTree1->GetNodeData(t);


	q=4*M_PI*AcfParams.n*sin(d->angle/2*M_PI/180)/(AcfParams.lambda);
	q=pow(q,2);

	x[cnt]=q;
	y[cnt]=d->a1;
	angles[cnt]=d->angle;
	t_mean+=d->t;

	GraphApproxForm->Series2->AddXY(q, d->a1);
	cnt++;
	}

	t = VirtualStringTree1->GetNextSelected(t, true);

  }


  if (cnt < 2) {
	delete [] x;
	delete [] y;
	delete [] angles;
	return;
  }


//  double a[2][2], b[2];
  double /*det, */_a, _b;
  t_mean/=cnt;
  /*
  a[0][0]=0;
  a[1][0]=0;
  a[0][1]=0;
  a[1][1]=0;
  b[0]=0;
  b[1]=0;

  for (int i=0; i < cnt; i++) {
	a[0][0]+=pow(x[i],2);
	a[0][1]+=x[i];
	b[0]+=x[i]*y[i];
	b[1]+=y[i];
  }

  a[1][0]=a[0][1];
  a[1][1]=cnt;

  det=a[0][0]*a[1][1]-a[1][0]*a[0][1];
  _a=(b[0]*a[1][1]-b[1]*a[0][1])/det;
  _b=(a[0][0]*b[1]-a[1][0]*b[0])/det;

	*/
  double t1=0, t2=0;

  for (int i=0; i < cnt; i++) {
	t1+=x[i]*y[i];
	t2+=pow(x[i],2);
  }
  _a=t1/t2;
  _b=0;

  /*
  HINSTANCE lib = LoadLibrary("dls.dll");

  pLinApprox LinApprox = (pLinApprox)GetProcAddress(lib, "LinApprox");
  LinApprox(x, y, cnt, &_a, &_b);
  FreeLibrary(lib);
  */

  double eta = FormulaPuazeilia(t_mean);

  double x_pcs=AcfParams.Kb*t_mean/(3*M_PI*eta*_a)*1e29;

  GraphApproxForm->Label1->Caption="Средний диаметр частиц = "+FloatToStrF(x_pcs, ffFixed, 5, 2)+" нм.";


  for (int i=0; i < cnt; i++)
  {
	GraphApproxForm->Series1->AddXY(x[i], x[i]*_a+_b, FloatToStr(angles[i]));
  }

  GraphApproxForm->ShowModal();

  delete [] x;
  delete [] y;
  delete [] angles;


}
//---------------------------------------------------------------------------

void __fastcall TReportForm::ToolButton6Click(TObject *Sender)
{
	Variant ExcelApp, ExcelBooks, Book, WorkSheet, Cells, EmptyParam;
	TDateTime dtReport = Date();
	UnicodeString s=ExtractFileDir(Application->ExeName)+"\\template.xls";

	if (!FileExists(s))
	{
		ShowMessage("Файл шаблона не найден");
		return;
	}

	TVirtualNode *t_root=VirtualStringTree1->RootNode->FirstChild;
	TVirtualNode *t_child;
	TReportData *data_root, *data_child;

	try
	{
		ExcelApp = GetActiveOleObject("Excel.Application");
		ExcelBooks = ExcelApp.OlePropertyGet("WorkBooks");
	}
	catch (...)
	{
		try
		{
			ExcelApp = CreateOleObject("Excel.Application");
			ExcelBooks = ExcelApp.OlePropertyGet("WorkBooks");

		}
		catch (...)
		{
		  ShowMessage("Microsoft Excel не установлен");
		return;
		}
	}

	int i = 27;
	int j = 2;
	TFormatSettings format_settings;
	GetLocaleFormatSettings(LOCALE_SYSTEM_DEFAULT, format_settings);
	format_settings.DecimalSeparator = ',';

	try
	{
		ExcelApp.OlePropertySet("Visible", false);
		Book = ExcelBooks.OleFunction("Add", s.t_str());
		WorkSheet = Book.OlePropertyGet("Worksheets").OlePropertyGet("Item", 1);
		Cells = WorkSheet.OlePropertyGet("Cells");
		Cells.OlePropertyGet("Item",4,3).OlePropertySet("Value", dtReport.FormatString("dd.mm.yyyy").t_str());
		Cells.OlePropertyGet("Item",8,1).OleProcedure("Select");
		MainForm->Chart5->CopyToClipboardMetafile(true);
		WorkSheet.OleProcedure("Paste");
		Variant shapes = WorkSheet.OlePropertyGet("Shapes").OleFunction("Item", 1);
		shapes.OleFunction("ScaleWidth", 0.9, EmptyParam, EmptyParam);
		shapes.OleFunction("ScaleHeight", 0.9, EmptyParam, EmptyParam);


		for (size_t k=0; k < VirtualStringTree1->RootNodeCount; k++)
		{
			if (t_root)
			{
				data_root = (TReportData *)ReportForm->VirtualStringTree1->GetNodeData(t_root);
				if (data_root)
				{
					s=data_root->Name;
					Cells.OlePropertyGet("Item",i,j).OlePropertySet("Value", s.t_str());
					i++;
				}


				t_child=t_root->FirstChild;
				while (t_child)
				{
					data_child=(TReportData *)ReportForm->VirtualStringTree1->GetNodeData(t_child);
					if (data_root)
					{
						s=data_child->Name;
						Cells.OlePropertyGet("Item",i,j).OlePropertySet("Value", s.t_str());
						Cells.OlePropertyGet("Item",i,j+1).OlePropertySet("Value", FloatToStrF(data_child->pcs, ffFixed, 5, 2, format_settings).t_str());
						Cells.OlePropertyGet("Item",i,j+2).OlePropertySet("Value", FloatToStrF(data_child->pi, ffFixed, 5, 2, format_settings).t_str());
						Cells.OlePropertyGet("Item",i,j+3).OlePropertySet("Value", FloatToStrF(data_child->angle, ffFixed, 5, 2,format_settings).t_str());
						i++;

					}
					t_child = t_child->NextSibling;
				}

				Cells.OlePropertyGet("Item",i,j).OlePropertySet("Value", "Средний диаметр");
				Cells.OlePropertyGet("Item",i,j).OlePropertyGet("Font").OlePropertySet("Bold", true);
				Cells.OlePropertyGet("Item",i,j+1).OlePropertySet("Value", FloatToStrF(data_root->pcs, ffFixed, 5, 2, format_settings).t_str());
				i++;
				Cells.OlePropertyGet("Item",i,j).OlePropertySet("Value", "Средний ПДД");
				Cells.OlePropertyGet("Item",i,j).OlePropertyGet("Font").OlePropertySet("Bold", true);
				Cells.OlePropertyGet("Item",i,j+1).OlePropertySet("Value", FloatToStrF(data_root->pi, ffFixed, 5, 2, format_settings).t_str());
				i++;
				Cells.OlePropertyGet("Item",i,j).OlePropertySet("Value", "СКО");
				Cells.OlePropertyGet("Item",i,j).OlePropertyGet("Font").OlePropertySet("Bold", true);
				Cells.OlePropertyGet("Item",i,j+1).OlePropertySet("Value", FloatToStrF(data_root->rms, ffFixed, 5, 2, format_settings).t_str());
				i++;
			}

			t_root=t_root->NextSibling;
		}
	}
	__finally
	{
		ExcelApp.OlePropertySet("Visible", true);
		ExcelApp=Unassigned();
	}

}
//---------------------------------------------------------------------------

