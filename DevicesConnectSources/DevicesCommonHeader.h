//---------------------------------------------------------------------------

#ifndef DevicesCommonHeaderH
#define DevicesCommonHeaderH
#include <vcl.h>
//---------------------------------------------------------------------------

union __error
{
 BYTE byte;
 struct _Device_Errors
  {
   unsigned params :1;
   unsigned timeout :1;
   unsigned command :1;
   unsigned :5;
  } errors;
};

//---------------------------------------------------------------------------

struct __error_command
{
 BYTE bytes[5];
 unsigned command_count;
 __error error;
 __error_command()
 {
  command_count = 0;
 };
 bool IsEmpty();
};


class __command_data
{
 public:
  BYTE *WriteData, *ReadData;
  unsigned wd_count, rd_count;
  __command_data();
  __command_data(const __command_data& data);
  ~__command_data();
  __command_data& operator =(const __command_data& data);
};

void InitCommandData(__command_data& value, int write_count, int read_count);


#endif
