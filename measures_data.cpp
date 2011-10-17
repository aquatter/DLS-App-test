//---------------------------------------------------------------------------


#pragma hdrstop

#include "measures_data.h"

//---------------------------------------------------------------------------

#pragma package(smart_init)

int MeasuresData::Count()
{
	return blocks.size();
}

void MeasuresData::AddBlock(DataBlock value)
{
    blocks.push_back(value);
}

bool MeasuresData::DeleteBlock(int index)
{
/*	if(Count() >= index)
	  return false;         */
	 blocks.erase(&blocks.at(index));
	return true;
}

void MeasuresData::Clear()
{
	blocks.clear();
}

DataBlock MeasuresData::GetBlock(int index)
{
	return blocks.at(index);
}

void MeasuresData::SetBlock(DataBlock value, int index)
{
	blocks.at(index) = value;
}

bool MeasuresData::Write(UnicodeString usFileName,WORD frequency_index)
{
	int iFileHandle = FileCreate(usFileName);
	if(iFileHandle == -1)
	  return false;
	try
	{
		int sizeofWord = sizeof(WORD);
		int sizeofBlock = sizeof(DataBlock);
		int count = Count();
		if(FileWrite(iFileHandle,&frequency_index,sizeofWord) != sizeofWord)
		  Abort();
		for(int i=0;i<count;i++)
		{
			DataBlock dataBlock = GetBlock(i);
			if(FileWrite(iFileHandle,&dataBlock,sizeofBlock) != sizeofBlock)
              Abort();
		}
	}
	catch(...)
	{
		FileClose(iFileHandle);
		DeleteFile(usFileName);
		return false;
	}
   FileClose(iFileHandle);
   return true;
}
