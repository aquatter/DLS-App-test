//---------------------------------------------------------------------------


#pragma hdrstop

#include "Device.h"
#include "UDlsVars.h"

//---------------------------------------------------------------------------

#pragma package(smart_init)

DeviceSettings::DeviceSettings()
{
	MinAmplification = 0;
	MaxAmplification = 1250;
	deltaAmplification = 5;
	Amplification = MinAmplification;

	MinTemperature = 277.8;
	MaxTemperature = 327.8;
	deltaTemperature = 0.2;
	Temperature = MinTemperature;

	MinAngle = 23.93;
	MaxAngle = 158.22;
	deltaAngle = 0.5;
	Angle = 90;

	ReadDataBlock = 1;
	MinReadDataBlock = 1;
	MaxReadDataBlock = 1000000;
	deltaReadDataBlock = 1;

	Frequency = 0;
}

bool Device::Reset()
{
	__command_data command_data;
	InitCommandData(command_data,2,1);
	command_data.WriteData[0] = 0x12;
	command_data.WriteData[1] = 0x00;
	return ftd2xxDevice.Exec(command_data);
}

bool Device::GetStatus(Status& value)
{
	__command_data command_data;
	InitCommandData(command_data,2,2);
	command_data.WriteData[0] = 0x12;
	command_data.WriteData[1] = 0x01;
	if(!ftd2xxDevice.Exec(command_data))
	  return false;
	value.byte = command_data.ReadData[1];
	return true;
}

bool Device::Start()
{
	__command_data command_data;
	InitCommandData(command_data,2,1);
	command_data.WriteData[0] = 0x12;
	command_data.WriteData[1] = 0x02;
	return ftd2xxDevice.Exec(command_data);
}

bool Device::GetData(int dwReadBlockNumData, WORD *Data)
{
	__command_data command_data;
    InitCommandData(command_data,2,2*dwReadBlockNumData*BLOCK_DATA_NUM+1);
    command_data.WriteData[0] = 0x12;
    command_data.WriteData[1] = 0x03;
	if(!ftd2xxDevice.Exec(command_data))
		return false;

	for(int i=0; i < dwReadBlockNumData*BLOCK_DATA_NUM; i++)
	{
		int index = 2*i+1;
		Data[i] = command_data.ReadData[index] + command_data.ReadData[index+1]*256;
	}
	return true;
}

WORD* Device::GetData(DWORD& dwReadBlockNumData)
{
	__command_data command_data;
	InitCommandData(command_data,2,2*dwReadBlockNumData*BLOCK_DATA_NUM+1);
	command_data.WriteData[0] = 0x12;
	command_data.WriteData[1] = 0x03;
	if(!ftd2xxDevice.Exec(command_data))
	  return NULL;


   //	int f = FileOpen("dls.idata", fmOpenRead);

	WORD* Data = new WORD[dwReadBlockNumData*BLOCK_DATA_NUM];

   //	FileRead(f, (void *)Data,  dwReadBlockNumData*BLOCK_DATA_NUM*sizeof(WORD));
   //	FileClose(f);


	for(int i=0;i<dwReadBlockNumData*BLOCK_DATA_NUM;i++)
	{
		int index = 2*i+1;
		Data[i] = command_data.ReadData[index] + command_data.ReadData[index+1]*256;
	}


	return Data;
}

bool Device::SetLength(BYTE value)
{
	__command_data command_data;
	InitCommandData(command_data,3,1);
	command_data.WriteData[0] = 0x13;
	command_data.WriteData[1] = 0x04;
	command_data.WriteData[2] = value;
	return ftd2xxDevice.Exec(command_data);
}

bool Device::SetTemperature(double value)
{
//	value = (value - 277.8)*5.1;//255/50;
	if (value)
		value = (value - 273.15)*255/54.65;

	__command_data command_data;
	InitCommandData(command_data,3,1);
	command_data.WriteData[0] = 0x13;
	command_data.WriteData[1] = 0x05;
	command_data.WriteData[2] = value;
	return ftd2xxDevice.Exec(command_data);
}

bool Device::GetTemperature(double& value)
{
	__command_data command_data;
	InitCommandData(command_data,2,3);
	command_data.WriteData[0] = 0x12;
	command_data.WriteData[1] = 0x06;
	if(!ftd2xxDevice.Exec(command_data))
	  return false;
	WORD wValue = command_data.ReadData[1] + command_data.ReadData[2]*256;
	value = wValue;
//	value = 277.8 + value*0.048875;//50/1023;
	value  = 273.15 + value*54.65/1023;
	return true;

}

bool Device::GetIntensity(int& value)
{
	__command_data command_data;
	InitCommandData(command_data,2,3);
	command_data.WriteData[0] = 0x12;
	command_data.WriteData[1] = 0x07;
	if(!ftd2xxDevice.Exec(command_data))
	  return false;
	WORD wValue = command_data.ReadData[1] + command_data.ReadData[2]*256;
	value = wValue;
	return true;
}

bool Device::SetPhotomultiplierAndPolarity(double value)
{
	value = value*0.204;//255/1250;
	__command_data command_data;
	InitCommandData(command_data,3,1);
	command_data.WriteData[0] = 0x13;
	command_data.WriteData[1] = 0x07;
	command_data.WriteData[2] = value;
	return ftd2xxDevice.Exec(command_data);
}

bool Device::PolarityInvert()
{
	__command_data command_data;
	InitCommandData(command_data,2,1);
	command_data.WriteData[0] = 0x12;
	command_data.WriteData[1] = 0x08;
	return ftd2xxDevice.Exec(command_data);
}

bool Device::SetAngle(char value)
{
	__command_data command_data;
	InitCommandData(command_data,3,1);
	command_data.WriteData[0] =0x13;
	command_data.WriteData[1] =0x08;
	command_data.WriteData[2] =value;
	return ftd2xxDevice.Exec(command_data);
}

bool Device::PhotoOn(bool value)
{
	__command_data command_data;
	InitCommandData(command_data,3,1);
	command_data.WriteData[0] =0x13;
	command_data.WriteData[1] =0x09;
	command_data.WriteData[2] =value;
	return ftd2xxDevice.Exec(command_data);
}


bool Device::SetAngle(double value)
{
	//Max - 0A31(2609)
	//Min - 0
	// 0 - 23.93
	//диапазон 134.29   //11.68 шаг/град
	deviceSettings.Angle=value;
	double dValue = value;
	dValue+=AcfParams.angle_init;
	dValue*=AcfParams.angle_step;
//	dValue -= 23.93;
//	dValue *= 19.43;
	value = dValue;
//	if(value > 2609)
//	  value = 2609;
	WORD wValue = value;
	__command_data command_data;
	InitCommandData(command_data,4,1);
	command_data.WriteData[0] = 0x14;
	command_data.WriteData[1] = 0x09;
	command_data.WriteData[2] = LOBYTE(wValue);
	command_data.WriteData[3] = HIBYTE(wValue);
	return ftd2xxDevice.Exec(command_data);
}

bool Device::SetPhotomultiplierState(bool value)
{
	__command_data command_data;
	InitCommandData(command_data,3,1);
	command_data.WriteData[0] = 0x13;
	command_data.WriteData[1] = 0x0A;
	command_data.WriteData[2] = value;
	return ftd2xxDevice.Exec(command_data);
}

bool Device::SetFrequency(int index)
{
	deviceSettings.Frequency=index;
	__command_data command_data;
	InitCommandData(command_data,3,1);
	command_data.WriteData[0] = 0x13;
//	command_data.WriteData[1] = 0x0A;
	command_data.WriteData[1] = 0x0B; // changed !!!! -------------------------------------------
	command_data.WriteData[2] = index;
	return ftd2xxDevice.Exec(command_data);
}

bool Device::SetPrism(bool value)
{
	__command_data command_data;
	InitCommandData(command_data,3,1);
	command_data.WriteData[0] = 0x13;
	command_data.WriteData[1] = 0x0B;
	command_data.WriteData[2] = value;
	return ftd2xxDevice.Exec(command_data);
}

bool Device::SetAperture(char value)
{
	__command_data command_data;
	InitCommandData(command_data,3,1);
	command_data.WriteData[0] = 0x13;
	command_data.WriteData[1] = 0x0C;
	command_data.WriteData[2] = value;
	return ftd2xxDevice.Exec(command_data);
}

bool Device::SetPolar(char value)
{
	__command_data command_data;
	InitCommandData(command_data,3,1);
	command_data.WriteData[0] = 0x13;
	command_data.WriteData[1] = 0x0D;
	command_data.WriteData[2] = value;
	return ftd2xxDevice.Exec(command_data);
}

bool Device::ReadData(char index, int& value)
{
	__command_data command_data;
	InitCommandData(command_data, 3, 3);
	command_data.WriteData[0] = 0x13;
	command_data.WriteData[1] = 0x0F;
	command_data.WriteData[2] = index;
	if(!ftd2xxDevice.Exec(command_data))
	  return false;
	WORD wValue = command_data.ReadData[1] + command_data.ReadData[2]*256;
	value = wValue;
	return true;
}

bool Device::WriteData(char index, int value)
{
    WORD wValue = value;
	__command_data command_data;
	InitCommandData(command_data, 5, 1);
	command_data.WriteData[0] = 0x15;
	command_data.WriteData[1] = 0x0E;
	command_data.WriteData[2] = index;
	command_data.WriteData[3] = LOBYTE(wValue);
	command_data.WriteData[4] = HIBYTE(wValue);

	return ftd2xxDevice.Exec(command_data);
}

