//---------------------------------------------------------------------------


#pragma hdrstop

#include "crv_routiness.h"

//---------------------------------------------------------------------------

#pragma package(smart_init)

bool SaveToCRVFile(UnicodeString usFileName,MeasureDataStorage Data,SPECTRUM_VIEWS view)
{
 struct __point
 {
  double wave,value;
 };

 bool bError;
 int iFileHandle = -1;
 __point* points = NULL;
 bool bType;
 try
 {
  unsigned count = Data.Count();
  if(!count)
   return false;
  iFileHandle = FileCreate(usFileName);
  if(iFileHandle == -1) Abort();

  points = new __point[count];

  for(int i=0;i<count;i++)
   {
	DataWave data;
	if(!Data.Get(i,data))
      Abort();
	__point point;
	point.wave = data.wave;
	point.value = GetViewSignal(data,view);
	switch(view)
	 {
	  case SV_DENSITY:      bType = 0;
							break;
	  case SV_TRANSMISSION: bType = 1;
							break;
	  case SV_RSIGNAL:      bType = 1;
                            break;
      case SV_MSIGNAL:      bType = 1;
     }
    points[i] = point;
   }
  double dish_thickness = 1;
  if(FileWrite(iFileHandle,&bType,1) == -1 ||
     FileWrite(iFileHandle,&dish_thickness,sizeof(double)) == -1 ||
     FileWrite(iFileHandle,&count,sizeof(unsigned)) == -1 ||
     FileWrite(iFileHandle,points,count*sizeof(__point)) == -1)
   {
    Abort();
   }
  FileClose(iFileHandle);
  if(points) delete [] points;
 }
 catch(...)
 {
  if(points) delete [] points;
  if(iFileHandle != -1)
   {
	FileClose(iFileHandle);
    DeleteFile(usFileName);
   }
  return false;
 }
 return true;
}
