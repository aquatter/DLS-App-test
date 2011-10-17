//---------------------------------------------------------------------------


#pragma hdrstop

#include "DevicesCommonHeader.h"

//---------------------------------------------------------------------------

#pragma package(smart_init)

bool __error_command::IsEmpty()
{
	return !command_count;
}

__command_data::__command_data()
{
 WriteData = NULL;
 ReadData = NULL;
 wd_count = 0;
 rd_count = 0;
}

//---------------------------------------------------------------------------

__command_data::__command_data(const __command_data& data)
{
 wd_count = data.wd_count;
 rd_count = data.rd_count;
 WriteData = NULL;
 ReadData = NULL;
 if(data.wd_count)
 {
  WriteData = new BYTE[data.wd_count];
  memcpy(WriteData,data.WriteData,data.wd_count);
 }
 if(data.rd_count)
 {
  ReadData = new BYTE[data.rd_count];
  memcpy(ReadData,data.ReadData,data.rd_count);
 }
}

//---------------------------------------------------------------------------

__command_data& __command_data::operator =(const __command_data& data)
{
 wd_count = data.wd_count;
 rd_count = data.rd_count;
 if(WriteData)
 {
  delete [] WriteData;
  WriteData = NULL;
 }
 if(ReadData)
 {
  delete [] ReadData;
  ReadData = NULL;
 }
 if(data.wd_count)
 {
  WriteData = new BYTE[data.wd_count];
  memcpy(WriteData,data.WriteData,data.wd_count);
 }
 if(data.rd_count)
 {
  ReadData = new BYTE[data.rd_count];
  memcpy(ReadData,data.ReadData,data.rd_count);
 }
 return *this;
}

//---------------------------------------------------------------------------

__command_data::~__command_data()
{
 if(ReadData) delete [] ReadData;
 if(WriteData) delete [] WriteData;
}


void InitCommandData(__command_data& value, int write_count, int read_count)
{
	delete [] value.WriteData;
	value.WriteData = NULL;
	delete [] value.ReadData;
    value.ReadData = NULL;
	value.wd_count = write_count;
	if(value.wd_count)
 	  value.WriteData = new BYTE[value.wd_count];
	value.rd_count = read_count;
	if(value.rd_count)
	  value.ReadData = new BYTE[value.rd_count];
}
