// ---------------------------------------------------------------------------

#ifndef UDlsVarsH
#define UDlsVarsH
// ---------------------------------------------------------------------------
#include "UMyInfernalType.h"
#include <vector>
#include "Device.h"
#include "UProgectData.h"

using namespace std;

typedef void(__stdcall*pDLSCumulants)(double*p, double*t, double*w, int n,
	double&a0, double&a1, double&a2);
typedef void(__stdcall*pDLSContin)(double*t, double*y, double*s, double*g0,
	int _ns, int _nt, double _alpha, double _eta);
typedef void(__stdcall*pDLSLogSpace)(double d1, double d2, int n, double*p);
typedef void(__stdcall*pDimMatrix)(float*a, int n, int m);
typedef void(__stdcall*pDelMatrix)(float*a, int n, int m);
typedef void(__stdcall*pLinEq)(float*a, float*b, int lb, int ub, float*det);

typedef double(__stdcall*pIntPower)(double x, int n);
typedef void(__stdcall*pLinApprox)(double*x, double*y, int n, double*a,
	double*b);

typedef void(__stdcall*pDimVector)(void*a, int n);
typedef void(__stdcall*pDelVector)(void*a, int n);
typedef double(*pExp2)(double x);


class Seq_Exception : public Exception
{
public:
	inline __fastcall Seq_Exception(const System::UnicodeString Msg): Exception(Msg) {}
	inline __fastcall virtual ~Seq_Exception(void){};
};

enum dls_mode {acf_ = 0, rec_, none_};


struct TGrad {
	UnicodeString a, b, angle;
};

struct TAcfParams {
	bool lfd, feu;
	int vybr; // зашкалы
	int zashk; // выбросы
	int nRawData; // количество точек исходных данных
	int _p;
	int n_min, _n_min;
	int n_block;
	int Gauss_w;
	int n_avt; // количество точек ј ‘
	int _m;
	int n0;
	int _s;
	double t_block;
	int n_mean;
	double cut; // нижн€€ граница выборки точек ј ‘ дл€ расчета по методу кумул€нтов или contin
	int cut_after; // верхн€€ граница выборки точек ј ‘ дл€ расчета по методу кумул€нтов или contin
	bool right_boundary; // автоматический выбор правой границы
	int ns; // количество точек гистограммы метода contin
	double _time;
	int dt0; // общее врем€ выборки
	double PI;
	double x_pcs;
	double n, lambda, theta, eta, Kb, T;
	double alpha; // параметр регул€ризации метода contin
	double t_discr;
	double angle_step; // углова€ цена одного шага шагового двигател€
	double angle_init; // поправка на начальный угол
	int _vybr; // порог отбрасывани€ выбросов
	double cont_low; // нижн€€ граница диапазона расчета распределени€ частиц
	double cont_high; // верхн€€ граница диапазона расчета распределени€ частиц
	double cont_low_graph; // нижн€€ граница вывода на график
	double cont_high_graph; // верхн€€ граница вывода на график
	int grad_count, grad_n;
	vector<TGrad>grad;
	bool cont_hist;
	double a0, a1, a2;
	double Curr_T;

	int Time_discr;
	bool Multi_Angle;
	float Initial_Angle;
	float Angle_Shift;
	int num_Angles;
	int n_seq;
	int seq_time;
	int n_rec;
	int Rec_time;
	bool DoAcf;
	bool DoMean;
	UnicodeString Name_Spec;
	UnicodeString Name_Sol;
	UnicodeString Save_Dir;
	UnicodeString File_Name;

	char Prism;
	char Aperture;
	char Polar;

    int Intensity;

	TAcfParams();
};

struct TDataParams {
	float WaveLength;
	float Viscosity;
	float ScatAngle;
	float Temperature;
	float RefIndex;
	char Discr_Time;
};


struct TReportData {
	int num;
	UnicodeString Name;
	double pcs;
	double pi;
	double angle;
	double rms;
	double a1;
	double a2;
	double t;
};

enum TAquireMode {from_device = 0, from_hdd};

struct TSeqThreadParams
{
	UnicodeString Save_Dir, File_Name;

	float ScatAngle;
	bool DoMean, DoAcf, Multi_Angle;
	int n_rec, n_seq;
	int num_rec, num_seq;
	char Initial_Angle;
	TAquireMode mode;
};

extern void *CaptureDone, *AcfDone;
extern Device device;
extern TMyInfernalType RawData, RawData_t, acf, acf_t, cum, cum_t, contin_g,
contin_s;
extern TAcfParams AcfParams;
extern TReportData ReportData;
extern TDataParams DataParams;

void ProcessAcfData(WORD * p, int n0, double t);
void SaveAcf2Txt(UnicodeString s);
void SaveAcf2Crv(UnicodeString s);
void SaveAcf2Tdf(UnicodeString s);
void OpenTdf(UnicodeString s);
double CheckString(UnicodeString s);
void CreateCrv(double*p, double*t, int w, UnicodeString s);
void LoadCrv(TMyInfernalType & p, TMyInfernalType & t, UnicodeString s);
void Interp(double*p, int n, double tin, double dt);
double NuttallWin(double x, double x0, double w);
double FormulaPuazeilia(double t);
bool OptionsFormExecute();
bool OpenProject(UnicodeString Name, TProjectData &pd);
void ExtractDataParams(UnicodeString Name, TDataParams *params);
void ProcessData(dls_mode mode, UnicodeString Name, int seq_num, int rec_num);
void OpenData(WORD *data, int &n, UnicodeString Name);

// extern void __declspec(dllimport) DLSCumulants(double *p, double *t, double *w, int n, double &a0,  double &a1, double &a2);

#endif
