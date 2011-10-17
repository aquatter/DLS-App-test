//---------------------------------------------------------------------------

#ifndef rs232_utilsH
#define rs232_utilsH
#include <vcl.h>
#include "DevicesCommonHeader.h"
//---------------------------------------------------------------------------


class RS232
{
  RS232& operator=(const RS232& value);
  RS232(const RS232& value);
 protected:
  unsigned uPortIndex;
  bool Open();
  HANDLE hPort;
  bool Init();
 public:
  RS232();
  ~RS232();
  bool SetPort(unsigned index); //1-4
  bool Purge(DWORD flags);
  bool Close();
  bool GetCommState(DCB& dcb);
  bool SetCommState(DCB dcb);
  bool GetCommTimeouts(COMMTIMEOUTS& to);
  bool SetCommTimeouts(COMMTIMEOUTS to);
  unsigned GetPortIndex();
  bool IsPortReady();
  bool ReadData(LPVOID buffer,DWORD nNumberOfBytesToRead,LPDWORD lpNumberOfBytesRead);
  bool WriteData(LPVOID buffer,DWORD nNumberOfBytesToWrite,LPDWORD lpNumberOfBytesWrite);
};

class RS232_Device
{
	  __error error;
	public:
	  RS232 rs232;
	  RS232_Device();
	  bool OpenDevice(int port_index); //1-4
	  bool CloseDevice();
	  bool Read(LPVOID lpBuffer, DWORD dwBytesToRead, LPDWORD lpdwBytesReturned);
	  bool Write(LPVOID lpBuffer, DWORD dwBytesToWrite, LPDWORD lpdwBytesWritten);
	  bool Exec(__command_data& value);
	  __error GetError();
	  bool IsDeviceConnected();
};

#endif
