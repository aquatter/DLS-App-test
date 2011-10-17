//---------------------------------------------------------------------------

#ifndef UMyInfernalTypeH
#define UMyInfernalTypeH
//---------------------------------------------------------------------------
#include <Classes.hpp>

enum TMitVarType {mitDouble, mitByte};

class TMyInfernalType
{
public:
  double *a;
  BYTE *b;
  int w, h;
  TMitVarType mitVarType;
  bool load;
  void __fastcall Init(int width, int height, TMitVarType _VarType, double Fill = 0);
  void __fastcall Clear();
  TMyInfernalType();
  ~TMyInfernalType();
};


#endif
