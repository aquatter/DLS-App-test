//---------------------------------------------------------------------------


#pragma hdrstop

#include "UMyInfernalType.h"

//---------------------------------------------------------------------------

#pragma package(smart_init)


TMyInfernalType::TMyInfernalType()
{
  load=0;
}

TMyInfernalType::~TMyInfernalType()
{
Clear();
}

void __fastcall TMyInfernalType::Init(int width, int height, TMitVarType _VarType, double Fill)
{
  if (load) {
	  return;
  }
  w=width;
  h=height;
  mitVarType=_VarType;

  switch (_VarType) {
	case mitDouble: a = new double[w*h];
					for (int i=0; i < w*h; i++) {
					  a[i]=Fill;
					}
	break;
	case mitByte:   b = new BYTE[w*h];
					for (int i=0; i < w*h; i++) {
					  b[i]=Fill;
					}
	break;
  }
  load=true;
}

void __fastcall TMyInfernalType::Clear()
{
	if (load) {
	  switch (mitVarType) {
		case mitDouble: delete [] a;
		break;
		case mitByte: delete [] b;
		break;
	  }
	  load=0;
	}
}
