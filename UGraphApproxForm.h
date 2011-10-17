//---------------------------------------------------------------------------

#ifndef UGraphApproxFormH
#define UGraphApproxFormH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "Chart.hpp"
#include "Series.hpp"
#include "TeEngine.hpp"
#include "TeeProcs.hpp"
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TGraphApproxForm : public TForm
{
__published:	// IDE-managed Components
	TChart *Chart1;
	TButton *Button1;
	TLabel *Label1;
	TLineSeries *Series1;
	TPointSeries *Series2;
private:	// User declarations
public:		// User declarations
	__fastcall TGraphApproxForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TGraphApproxForm *GraphApproxForm;
//---------------------------------------------------------------------------
#endif
