//---------------------------------------------------------------------------


#pragma hdrstop

#include "DataModule.h"
#include "MainForm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma classgroup "Vcl.Controls.TControl"
#pragma resource "*.dfm"
TDataModule1 *DataModule1;
//---------------------------------------------------------------------------
__fastcall TDataModule1::TDataModule1(TComponent* Owner)
	: TDataModule(Owner)
{
	FDConnection1->Close();
} 
//---------------------------------------------------------------------------

void __fastcall TDataModule1::qrySalesInformationBeforePost(TDataSet *DataSet)
{
	try
	{
		if (qrySalesInformation->State == dsInsert)
		{
			qrySalesInformation->FieldByName("INSERT_TIME")->AsDateTime = Now();
			qrySalesInformation->FieldByName("INSERT_ID")->AsString = FUser;
		}
		else if (qrySalesInformation->State == dsEdit)
		{
			qrySalesInformation->FieldByName("UPDATE_TIME")->AsDateTime = Now();
			qrySalesInformation->FieldByName("UPDATE_ID")->AsString = FUser;
		}
	} catch (const Exception &e)
	{
		throw(Exception(e.Message));
	}
}
//---------------------------------------------------------------------------

