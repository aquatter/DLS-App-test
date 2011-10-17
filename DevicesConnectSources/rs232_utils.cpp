//---------------------------------------------------------------------------


#pragma hdrstop

#include "rs232_utils.h"

//---------------------------------------------------------------------------

#pragma package(smart_init)

RS232::RS232()
{
 hPort = INVALID_HANDLE_VALUE;
 uPortIndex = 2;
}

//---------------------------------------------------------------------------

RS232::~RS232()
{
 Close();
}

//---------------------------------------------------------------------------

bool RS232::Open()
{
 AnsiString asPort = "Com" + IntToStr((int)uPortIndex);
 if(hPort != INVALID_HANDLE_VALUE) Close();
 hPort = CreateFile(asPort.c_str(),
     		    GENERIC_READ | GENERIC_WRITE,
                    0,NULL,
                    OPEN_EXISTING,
                    0,NULL);
 if(hPort == INVALID_HANDLE_VALUE) return false;
 return true;
}

//---------------------------------------------------------------------------

bool RS232::Init()
{
 DCB dcb;
 COMMTIMEOUTS TO;
 if(!::GetCommState(hPort,&dcb)) return false;
 dcb.BaudRate = 19200;
 dcb.Parity   = NOPARITY;
 dcb.ByteSize = 8;
 dcb.StopBits = ONESTOPBIT;
 if(!::SetCommState(hPort,&dcb)) return false;
 if(!::GetCommTimeouts(hPort, &TO)) return false;
 TO.ReadIntervalTimeout = 100;
 TO.ReadTotalTimeoutConstant = 50;
 TO.WriteTotalTimeoutMultiplier=1;
 TO.WriteTotalTimeoutConstant=20;
 if(!::SetCommTimeouts(hPort,&TO)) return false;
 return true;
}

//---------------------------------------------------------------------------

bool RS232::Close()
{
 CloseHandle(hPort);
 hPort = INVALID_HANDLE_VALUE;
 return true;
}

bool RS232::GetCommState(DCB& dcb)
{
	return ::GetCommState(hPort,&dcb);
}

bool RS232::SetCommState(DCB dcb)
{
	return ::SetCommState(hPort,&dcb);
}

bool RS232::GetCommTimeouts(COMMTIMEOUTS& to)
{
	return ::GetCommTimeouts(hPort, &to);
}

bool RS232::SetCommTimeouts(COMMTIMEOUTS to)
{
	return ::SetCommTimeouts(hPort, &to);
}

//---------------------------------------------------------------------------

bool RS232::SetPort(unsigned index)
{
 if(index == 0 || index > 4) return false;
 uPortIndex = index;
 return Open() && Init();
}

//---------------------------------------------------------------------------

bool RS232::Purge(DWORD flags)
{
	return PurgeComm(hPort,flags);
}

//---------------------------------------------------------------------------

unsigned RS232::GetPortIndex()
{
 return uPortIndex;
}

//---------------------------------------------------------------------------

bool RS232::IsPortReady()
{
 return (hPort != INVALID_HANDLE_VALUE);
}

//---------------------------------------------------------------------------

bool RS232::ReadData(LPVOID buffer,DWORD nNumberOfBytesToRead,LPDWORD lpNumberOfBytesRead)
{
 return (!IsPortReady() ||
         !ReadFile(hPort,buffer,nNumberOfBytesToRead,lpNumberOfBytesRead,NULL))
        ? false : true;
}

//---------------------------------------------------------------------------

bool RS232::WriteData(LPVOID buffer,DWORD nNumberOfBytesToWrite,LPDWORD lpNumberOfBytesWrite)
{
 DWORD cg;
 return (!IsPortReady() ||
         !WriteFile(hPort,buffer,nNumberOfBytesToWrite,lpNumberOfBytesWrite,NULL))
         ? false : true;
}

RS232_Device::RS232_Device()
{
    error.byte = 0;
}

bool RS232_Device::OpenDevice(int port_index)
{
    return rs232.SetPortA(port_index);
}

bool RS232_Device::CloseDevice()
{
    return rs232.Close();
}

bool RS232_Device::Read(LPVOID lpBuffer, DWORD dwBytesToRead, LPDWORD lpdwBytesReturned)
{
    return rs232.ReadData(lpBuffer,dwBytesToRead,lpdwBytesReturned);
}

bool RS232_Device::Write(LPVOID lpBuffer, DWORD dwBytesToWrite, LPDWORD lpdwBytesWritten)
{
	return rs232.WriteData(lpBuffer,dwBytesToWrite,lpdwBytesWritten);
}

bool RS232_Device::Exec(__command_data& value)
{
 rs232.Purge(PURGE_TXCLEAR|PURGE_RXCLEAR);
 DWORD dwValue;
 if(!rs232.WriteData(value.WriteData,value.wd_count,&dwValue) ||
	dwValue != value.wd_count)
 {
  (!dwValue) ? error.errors.timeout = 1 : error.errors.params = 1;
  return false;
 }
 if(!rs232.ReadData(value.ReadData,value.rd_count,&dwValue)) //dwValue != value.rd_count
 {
  (!dwValue) ? error.errors.timeout = 1 : error.errors.params = 1;
  value.rd_count = dwValue;
  return false;
 }
 value.rd_count = dwValue;
 if(value.WriteData[1] != value.ReadData[0])
  {
   error.errors.command = 1;
   return false;
  }
  error.byte = 0;
  return true;
}

__error RS232_Device::GetError()
{
	return error;
}

bool RS232_Device::IsDeviceConnected()
{
    return rs232.IsPortReady();
}
