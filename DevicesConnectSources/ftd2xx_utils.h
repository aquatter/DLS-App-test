//---------------------------------------------------------------------------

#ifndef ftd2xx_utilsH
#define ftd2xx_utilsH
#include <vcl.h>
#include "ftd2xx.h"
#include "DevicesCommonHeader.h"
//---------------------------------------------------------------------------
#endif

typedef FT_STATUS (__stdcall *pFT_CreateDeviceInfoList)(LPDWORD lpdwNumDevs);

typedef FT_STATUS (__stdcall *pFT_GetDeviceInfoList)(FT_DEVICE_LIST_INFO_NODE *pDest,
													 LPDWORD lpdwNumDevs);

typedef FT_STATUS WINAPI (__stdcall *pFT_ListDevices)(
								PVOID pArg1,
								PVOID pArg2,
								DWORD Flags	);

typedef FT_STATUS (__stdcall *pFT_Open)(int iDevice, FT_HANDLE *ftHandle);

typedef FT_STATUS (__stdcall *pFT_Close)(FT_HANDLE ftHandle);

typedef FT_STATUS (__stdcall *pFT_Read)(FT_HANDLE ftHandle,
										LPVOID lpBuffer,
										DWORD dwBytesToRead,
										LPDWORD lpdwBytesReturned);

typedef FT_STATUS (__stdcall *pFT_Write)(FT_HANDLE ftHandle,
										 LPVOID lpBuffer,
										 DWORD dwBytesToWrite,
										 LPDWORD lpdwBytesWritten);

typedef FT_STATUS (__stdcall *pFT_SetBaudRate)(FT_HANDLE ftHandle, DWORD dwBaudRate);

typedef FT_STATUS (__stdcall *pFT_SetDataCharacteristics)(FT_HANDLE ftHandle,
														 UCHAR uWordLength,
														 UCHAR uStopBits,
														 UCHAR uParity);

typedef FT_STATUS (__stdcall *pFT_SetTimeouts)(FT_HANDLE ftHandle,
											   DWORD dwReadTimeout,
											   DWORD dwWriteTimeout);

typedef FT_STATUS (__stdcall *pFT_GetQueueStatus)(FT_HANDLE ftHandle, LPDWORD lpdwAmountInRxQueue);

typedef FT_STATUS (__stdcall *pFT_GetDeviceInfo)(FT_HANDLE ftHandle,
												FT_DEVICE *pftType,
												LPDWORD lpdwID,
												PCHAR pcSerialNumber,
												PCHAR pcDescription,
												PVOID pvDummy);

typedef FT_STATUS (__stdcall *pFT_GetStatus)(FT_HANDLE ftHandle,
											LPDWORD lpdwAmountInRxQueue,
											LPDWORD lpdwAmountInTxQueue,
											LPDWORD lpdwEventStatus);

typedef FT_STATUS (__stdcall *pFT_Purge)(FT_HANDLE ftHandle, DWORD dwMask);

typedef FT_STATUS (__stdcall *pFT_CyclePort)(FT_HANDLE ftHandle);

typedef FT_STATUS (__stdcall *pFT_SetUSBParameters)(FT_HANDLE ftHandle,
												   DWORD dwInTransferSize,
												   DWORD dwOutTransferSize);

class FTD2XX
{
	  HMODULE lib;
	  FT_HANDLE ftHandle;
	  FTD2XX& operator=(const FTD2XX& value);
	  FTD2XX(const FTD2XX& value);
	public:
	  FTD2XX();
	  ~FTD2XX();
	  int DevicesCount();
	  FT_DEVICE_LIST_INFO_NODE* GetDeviceInfoList(DWORD dwNumDevs);
	  bool IsDeviceConnected();
	  bool OpenDevice(int index);
	  bool CloseDevice();
	  bool Read(LPVOID lpBuffer, DWORD dwBytesToRead, LPDWORD lpdwBytesReturned);
	  bool Write(LPVOID lpBuffer, DWORD dwBytesToWrite, LPDWORD lpdwBytesWritten);
	  bool SetBaudRate(DWORD dwBaudRate); //еще есть функция FT_SetDivisor (для нестандартных скоростей)
	  bool SetDataCharacteristics(UCHAR uWordLength, UCHAR uStopBits, UCHAR uParity);
	  bool SetTimeouts(DWORD dwReadTimeout, DWORD dwWriteTimeout);
	  bool GetQueueStatus(LPDWORD lpdwAmountInRxQueue);
	  bool GetDeviceInfo(FT_DEVICE *pftType, LPDWORD lpdwID, PCHAR pcSerialNumber, PCHAR pcDescription, PVOID pvDummy);
	  bool GetStatus(LPDWORD lpdwAmountInRxQueue, LPDWORD lpdwAmountInTxQueue, LPDWORD lpdwEventStatus);
	  bool Purge(DWORD dwMask);
	  bool CyclePort();
	  bool SetUSBParameters(DWORD dwInTransferSize,DWORD dwOutTransferSize);

};

struct FTD2XX_Settings
{
	DWORD dwBaudRate;
	UCHAR uWordLength;
	UCHAR uStopBits;
	UCHAR uParity;
	DWORD dwReadTimeout;
	DWORD dwWriteTimeout;
	FTD2XX_Settings();
};

union FTD2XX_Error
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


class FTD2XX_Device
{
	  FTD2XX_Settings devSettings;
	  FTD2XX devFTD2XX;
	  FTD2XX_Error error;
	public:
	  FTD2XX_Device();
	  int DevicesCount();
	  FT_DEVICE_LIST_INFO_NODE* GetDeviceInfoList(DWORD dwNumDevs);
	  bool OpenDevice(int index,FTD2XX_Settings value);
	  bool SetSettings(FTD2XX_Settings value);
	  FTD2XX_Settings GetSettings();
	  bool CloseDevice();
	  bool Purge(DWORD dwMask);
	  bool ManualPurgeRX();
	  bool GetQueueStatus(LPDWORD lpdwAmountInRxQueue);
	  bool Read(LPVOID lpBuffer, DWORD dwBytesToRead, LPDWORD lpdwBytesReturned);
	  bool Write(LPVOID lpBuffer, DWORD dwBytesToWrite, LPDWORD lpdwBytesWritten);
	  bool Exec(__command_data& value);
      bool SetUSBParameters(DWORD dwInTransferSize,DWORD dwOutTransferSize);
	  FTD2XX_Error GetError(){return error;};
	  bool IsDeviceConnected();
	  bool CyclePort();

};
