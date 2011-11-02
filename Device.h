//---------------------------------------------------------------------------

#ifndef DeviceH
#define DeviceH
#include "ftd2xx_utils.h"
#include <windef.h>
//---------------------------------------------------------------------------

#define BLOCK_DATA_NUM 1024    //количество данных в блоке
#define DATA_MIN_RATE 1500     //минимальная частота приема данных (данные/сек)

union Status    //состояние прибора
{
	BYTE byte;
	struct
	{
	  unsigned data : 1;			  //готовность блока данных (0 - данные не готовы)
	  unsigned prism : 1;
//      unsigned signal : 1;          //наличие сигнала фотоприемника (1 - в течение 15с данные не готовы)
	  unsigned goniometer : 1;      //состояние привода гониометра (0 - идет настройка)
	  unsigned polar : 1;
	  unsigned aperture : 1;
//	  unsigned photomultiplier : 1; //состояние ФЭУ (0 - ФЭУ выключен)
	  unsigned feed : 1;            //питание фотоприемника (0 - питание выключено)
	  unsigned dummy : 2;
	} bits;
};

struct DeviceSettings
{
	WORD Amplification;
	WORD MinAmplification;
	WORD MaxAmplification;
	WORD deltaAmplification;

	double Temperature;
	double MinTemperature;
	double MaxTemperature;
	double deltaTemperature;

	double Angle;
	double MinAngle;
	double MaxAngle;
	double deltaAngle;

	BYTE Frequency;
	DeviceSettings();

	int ReadDataBlock;
	int MinReadDataBlock;
	int MaxReadDataBlock;
	int deltaReadDataBlock;
};

class Device
{
	public:
	  FTD2XX_Device ftd2xxDevice;
	  DeviceSettings deviceSettings;
	  bool Reset();  //сброс
	  bool GetStatus(Status& value); //состояние
	  bool Start(); //запуск цикла сбора данных фотоприемника
	  WORD* GetData(DWORD& dwReadBlockNumData); //чтение блока данных
	  bool GetData(int dwReadBlockNumData, WORD *Data);
	  bool SetLength(BYTE value); //установка длины блока данных, используется вместе с GetData
	  bool SetTemperature(double value);  //установка температуры термостата (277.8К - 327.8К)
	  bool GetTemperature(double& value); //чтение температуры термостата (277.8К - 327.8К)
	  bool SetPhotomultiplierAndPolarity(double value); //устанавливается напряжение ФЭУ (0-1250В) и поляризатора(0-416В)
	  bool PolarityInvert(); //полярность поляризатора меняется на противоположную
	  bool SetAngle(double value); //задание угла поворота гониометра
	  bool SetPhotomultiplierState(bool value); //режим фотоприемника(true - приемник включен)
	  bool SetFrequency(int index);
	  bool WriteData(char index, int value);
	  bool ReadData(char index, int& value);
	  bool SetPolar(char value);
	  bool SetAperture(char value);
	  bool SetPrism(bool value);
	  bool PhotoOn(bool value);
	  bool SetAngle(char value);
	  bool GetIntensity(int& value);


};


#endif
