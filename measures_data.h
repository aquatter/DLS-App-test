//---------------------------------------------------------------------------

#ifndef measures_dataH
#define measures_dataH
#include <vector>
#include <vcl.h>
#include "Device.h"
using namespace std;
//---------------------------------------------------------------------------

struct DataBlock
{
  WORD data[BLOCK_DATA_NUM];
};

class MeasuresData
{
	  vector<DataBlock> blocks;
	public:
      int Count();
	  void AddBlock(DataBlock value);
	  bool DeleteBlock(int index);
	  void Clear();
	  DataBlock GetBlock(int index);
	  void SetBlock(DataBlock value, int index);
      bool Write(UnicodeString usFileName,WORD frequency_index);
};

#endif
