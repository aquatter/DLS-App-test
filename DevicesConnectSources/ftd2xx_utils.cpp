//---------------------------------------------------------------------------


#pragma hdrstop

#include "ftd2xx_utils.h"

//---------------------------------------------------------------------------

#pragma package(smart_init)

FTD2XX::FTD2XX()
{
	lib = LoadLibrary("ftd2xx.dll");
	ftHandle = NULL;
}

FTD2XX::~FTD2XX()
{
	CloseDevice();
	FreeLibrary(lib);
}

int FTD2XX::DevicesCount()
{
	DWORD numDevs;
	pFT_CreateDeviceInfoList FT_CreateDeviceInfoList =(pFT_CreateDeviceInfoList)GetProcAddress(lib,"FT_CreateDeviceInfoList");
	if(!FT_CreateDeviceInfoList)
      return 0;
	FT_STATUS ftStatus = FT_CreateDeviceInfoList(&numDevs);

	if(ftStatus == FT_OK)
	{
		return numDevs;
	}
	return 0;
}

FT_DEVICE_LIST_INFO_NODE* FTD2XX::GetDeviceInfoList(DWORD dwNumDevs)
{
	pFT_GetDeviceInfoList FT_GetDeviceInfoList = (pFT_GetDeviceInfoList)GetProcAddress(lib,"FT_GetDeviceInfoList");
	if(!FT_GetDeviceInfoList)
      return NULL;
	if(!dwNumDevs)
	  return NULL;
	FT_DEVICE_LIST_INFO_NODE* pNodes = new FT_DEVICE_LIST_INFO_NODE[dwNumDevs];
	FT_STATUS ftStatus = FT_GetDeviceInfoList(pNodes,&dwNumDevs);
	if(ftStatus == FT_OK)
	  return pNodes;
	delete [] pNodes;
	return NULL;
}

bool FTD2XX::IsDeviceConnected()
{
    return (bool)ftHandle;
}

bool FTD2XX::OpenDevice(int index)
{
	CloseDevice();
	pFT_Open FT_Open = (pFT_Open)GetProcAddress(lib,"FT_Open");
	if(!FT_Open)
	  return false;
	FT_STATUS ftStatus = FT_Open(index,&ftHandle);
	if(ftStatus == FT_OK)
	  return true;
	ftHandle = NULL;
	return false;
}

bool FTD2XX::CloseDevice()
{
	if(ftHandle == NULL)
	  return true;
	pFT_Close FT_Close = (pFT_Close)GetProcAddress(lib,"FT_Close");
	if(!FT_Close)
      return false;
	FT_STATUS ftStatus = FT_Close(ftHandle);
	return (ftStatus == FT_OK);
}

bool FTD2XX::Read(LPVOID lpBuffer, DWORD dwBytesToRead, LPDWORD lpdwBytesReturned)
{
	pFT_Read FT_Read = (pFT_Read)GetProcAddress(lib,"FT_Read");
	if(!FT_Read)
	  return false;
	FT_STATUS ftStatus = FT_Read(ftHandle,lpBuffer,dwBytesToRead,lpdwBytesReturned);
	return (ftStatus == FT_OK);
}

bool FTD2XX::Write(LPVOID lpBuffer, DWORD dwBytesToWrite, LPDWORD lpdwBytesWritten)
{
	pFT_Write FT_Write = (pFT_Write)GetProcAddress(lib,"FT_Write");
	if(!FT_Write)
	  return false;
	FT_STATUS ftStatus = FT_Write(ftHandle,lpBuffer,dwBytesToWrite,lpdwBytesWritten);
	return (ftStatus == FT_OK);
}

bool FTD2XX::SetBaudRate(DWORD dwBaudRate)
{
	pFT_SetBaudRate FT_SetBaudRate = (pFT_SetBaudRate)GetProcAddress(lib,"FT_SetBaudRate");
	if(!FT_SetBaudRate)
	  return false;
	FT_STATUS ftStatus = FT_SetBaudRate(ftHandle,dwBaudRate);
	return (ftStatus == FT_OK);
}

bool FTD2XX::SetDataCharacteristics(UCHAR uWordLength, UCHAR uStopBits, UCHAR uParity)
{
	pFT_SetDataCharacteristics FT_SetDataCharacteristics = (pFT_SetDataCharacteristics)GetProcAddress(lib,"FT_SetDataCharacteristics");
	if(!FT_SetDataCharacteristics)
	  return false;
	FT_STATUS ftStatus = FT_SetDataCharacteristics(ftHandle,uWordLength,uStopBits,uParity);
	return (ftStatus == FT_OK);
}

bool FTD2XX::SetTimeouts(DWORD dwReadTimeout, DWORD dwWriteTimeout)
{
	pFT_SetTimeouts FT_SetTimeouts = (pFT_SetTimeouts)GetProcAddress(lib,"FT_SetTimeouts");
	if(!FT_SetTimeouts)
	  return false;
	FT_STATUS ftStatus = FT_SetTimeouts(ftHandle,dwReadTimeout,dwWriteTimeout);
	return (ftStatus == FT_OK);
}

bool FTD2XX::GetQueueStatus(LPDWORD lpdwAmountInRxQueue)
{
	*lpdwAmountInRxQueue = 0;
	pFT_GetQueueStatus FT_GetQueueStatus = (pFT_GetQueueStatus)GetProcAddress(lib,"FT_GetQueueStatus");
	if(!FT_GetQueueStatus)
	  return false;
	FT_STATUS ftStatus = FT_GetQueueStatus(ftHandle,lpdwAmountInRxQueue);
	return (ftStatus == FT_OK);
}

bool FTD2XX::GetDeviceInfo(FT_DEVICE *pftType, LPDWORD lpdwID, PCHAR pcSerialNumber, PCHAR pcDescription, PVOID pvDummy)
{
	pFT_GetDeviceInfo FT_GetDeviceInfo = (pFT_GetDeviceInfo)GetProcAddress(lib,"FT_GetDeviceInfo");
	if(!FT_GetDeviceInfo)
	  return false;
	FT_STATUS ftStatus = FT_GetDeviceInfo(ftHandle,pftType,lpdwID,pcSerialNumber,pcDescription,pvDummy);
	return (ftStatus == FT_OK);
}

bool FTD2XX::GetStatus(LPDWORD lpdwAmountInRxQueue, LPDWORD lpdwAmountInTxQueue, LPDWORD lpdwEventStatus)
{
	lpdwAmountInRxQueue = 0;
	lpdwAmountInTxQueue = 0;
	lpdwEventStatus = 0;
	pFT_GetStatus FT_GetStatus = (pFT_GetStatus)GetProcAddress(lib,"FT_GetStatus");
	if(!FT_GetStatus)
	  return false;
	FT_STATUS ftStatus = FT_GetStatus(ftHandle,lpdwAmountInRxQueue,lpdwAmountInTxQueue,lpdwEventStatus);
	return (ftStatus == FT_OK);
}

bool FTD2XX::Purge(DWORD dwMask)
{
	pFT_Purge FT_Purge = (pFT_Purge)GetProcAddress(lib,"FT_Purge");
	if(!FT_Purge)
      return false;
	FT_STATUS ftStatus = FT_Purge(ftHandle,dwMask);
	return (ftStatus == FT_OK);
}

bool FTD2XX::CyclePort()
{
	pFT_CyclePort FT_CyclePort = (pFT_CyclePort)GetProcAddress(lib,"FT_CyclePort");
	if(!FT_CyclePort)
	  return false;
	FT_STATUS ftStatus = FT_CyclePort(ftHandle);
	return (ftStatus == FT_OK);
}

bool FTD2XX::SetUSBParameters(DWORD dwInTransferSize,DWORD dwOutTransferSize)
{
	pFT_SetUSBParameters FT_SetUSBParameters  = (pFT_SetUSBParameters)GetProcAddress(lib,"FT_SetUSBParameters");
	if(!FT_SetUSBParameters)
	  return false;
	FT_STATUS ftStatus = FT_SetUSBParameters(ftHandle,dwInTransferSize,dwOutTransferSize);
	return (ftStatus == FT_OK);
}


FTD2XX_Settings::FTD2XX_Settings()
{
	dwBaudRate = FT_BAUD_19200;
	uWordLength = FT_BITS_8;
	uStopBits = FT_STOP_BITS_1;
	uParity = FT_PARITY_NONE;
	dwReadTimeout = 50;
	dwWriteTimeout = 50;
}


FTD2XX_Device::FTD2XX_Device()
{
    error.byte = 0;
}

int FTD2XX_Device::DevicesCount()
{
	return devFTD2XX.DevicesCount();
}

FT_DEVICE_LIST_INFO_NODE* FTD2XX_Device::GetDeviceInfoList(DWORD dwNumDevs)
{
	return devFTD2XX.GetDeviceInfoList(dwNumDevs);
}

bool FTD2XX_Device::OpenDevice(int index,FTD2XX_Settings value)
{
	return devFTD2XX.OpenDevice(index);
}

bool FTD2XX_Device::SetSettings(FTD2XX_Settings value)
{
	if(!devFTD2XX.IsDeviceConnected())
	  return false;
	if(!devFTD2XX.SetBaudRate(value.dwBaudRate))
	  return false;
	devSettings.dwBaudRate = value.dwBaudRate;
	if(!devFTD2XX.SetDataCharacteristics(value.uWordLength,value.uStopBits,value.uParity))
	  return false;
	devSettings.uWordLength = value.uWordLength;
	devSettings.uStopBits = value.uStopBits;
	devSettings.uParity = value.uParity;
	if(!devFTD2XX.SetTimeouts(value.dwReadTimeout,value.dwWriteTimeout))
	  return false;
	devSettings.dwReadTimeout = value.dwReadTimeout;
	devSettings.dwWriteTimeout = value.dwWriteTimeout;
	return true;
}

FTD2XX_Settings FTD2XX_Device::GetSettings()
{
	return devSettings;
}

bool FTD2XX_Device::CloseDevice()
{
	return devFTD2XX.CloseDevice();
}

bool FTD2XX_Device::Purge(DWORD dwMask)
{
	return devFTD2XX.Purge(dwMask);
}

bool FTD2XX_Device::ManualPurgeRX()
{
	DWORD numData;
	if(!devFTD2XX.GetQueueStatus(&numData))
	  return false;
	if(!numData)
	  return true;
	BYTE *RemoveData = new BYTE[numData];
	bool bSuccess = devFTD2XX.Read(RemoveData,numData,&numData);
	delete [] RemoveData;
	return bSuccess;
}

bool FTD2XX_Device::GetQueueStatus(LPDWORD lpdwAmountInRxQueue)
{
	return devFTD2XX.GetQueueStatus(lpdwAmountInRxQueue);
}

bool FTD2XX_Device::Read(LPVOID lpBuffer, DWORD dwBytesToRead, LPDWORD lpdwBytesReturned)
{
	return devFTD2XX.Read(lpBuffer,dwBytesToRead,lpdwBytesReturned);
}

bool FTD2XX_Device::Write(LPVOID lpBuffer, DWORD dwBytesToWrite, LPDWORD lpdwBytesWritten)
{
	return devFTD2XX.Write(lpBuffer,dwBytesToWrite,lpdwBytesWritten);
}

bool FTD2XX_Device::Exec(__command_data& value)
{
	error.byte = 0;
	bool bSuccess = ManualPurgeRX();//devFTD2XX.Purge(FT_PURGE_TX|FT_PURGE_RX);
	if(!bSuccess)
	  {
		  error.errors.command = 1;
		  return false;
	  }
	DWORD count;
	bSuccess = Write(value.WriteData,value.wd_count, &count);
	if(!bSuccess)
	{
		  error.errors.command = 1;
		  return false;
	}
	if(value.wd_count != count)
	{
		error.errors.timeout = 1;
		return false;
	}

	bSuccess = Read(value.ReadData, value.rd_count, &count);
	if(!bSuccess)
	{
		  error.errors.command = 1;
		  return false;
	}
	if(value.rd_count != count)
	{
		error.errors.timeout = 1;
		return false;
	}
	return true;
}

bool FTD2XX_Device::IsDeviceConnected()
{
	return devFTD2XX.IsDeviceConnected();
}

bool FTD2XX_Device::CyclePort()
{
	return devFTD2XX.CyclePort();
}

bool FTD2XX_Device::SetUSBParameters(DWORD dwInTransferSize,DWORD dwOutTransferSize)
{
	return devFTD2XX.SetUSBParameters(dwInTransferSize,dwOutTransferSize);
}
