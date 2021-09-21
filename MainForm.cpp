//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "MainForm.h"
#include "DataModule.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "RzDBEdit"
#pragma link "RzEdit"
#pragma resource "*.dfm"
TMainForm1 *MainForm1;
//---------------------------------------------------------------------------
__fastcall TMainForm1::TMainForm1(TComponent* Owner)
	: TForm(Owner)
{
	Timer1->Enabled = false;
	Timer1->Interval = 100;
	Timer1->Enabled = true;
}
//---------------------------------------------------------------------------
__fastcall TMainForm1::~TMainForm1()
{
//	DataModule1->FDConnection1->Close();
} 
void __fastcall TMainForm1::Timer1Timer(TObject *Sender)
{
	Timer1->Enabled = false;

        /************************************************
		パラメータチェック
	************************************************/

	FUserID = ParamStr( 1 );
	DataModule1->UserID = FUserID;


	/****************************
		DB接続
	****************************/

	try
	{
		DataModule1->FDConnection1->Open();
	}
	catch (const Exception &e)
	{
		String msg;
		msg = L"次の理由により、データベースの接続に失敗しました。終了します。\n\n";
		msg = msg + e.Message;
		Application->MessageBoxW(msg.w_str(), L"ＤＢエラー", MB_ICONSTOP);
		Application->Terminate();
		return;
	}

	/*****************************
		テーブルオープン
	*****************************/

	try
	{
		DataModule1->qrySalesInformation->Open();
	}
	catch (const Exception &e)
	{
		String msg;
		msg = L"次の理由により、販売情報管理システムの起動に失敗しました。終了します。\n\n";
		msg = msg + e.Message;
		Application->MessageBoxW(msg.w_str(), L"ＤＢエラー", MB_ICONSTOP);
		Application->Terminate();
		return;
	}

	btnRegister->Enabled = false;
}
//---------------------------------------------------------------------------

void __fastcall TMainForm1::btnF4Click(TObject *Sender)
{
	if (DataModule1->qrySalesInformation->State == dsBrowse)
	{
		btnF4->Enabled = false;
		DataModule1->qrySalesInformation->Append();
		edSalesDestinationCode->SetFocus();
		btnRegister->Enabled = true;
	}
}
//---------------------------------------------------------------------------

void __fastcall TMainForm1::btnF9Click(TObject *Sender)

	/************************************************
		 キャンセルボタン処理
	************************************************/
{
	int ret = Application->MessageBoxW(L"編集内容を全て破棄します。\n\nよろしいですか？", L"確認", MB_ICONQUESTION | MB_YESNO);

	if (ret == idYes)
	{
		DataModule1->qrySalesInformation->Cancel();
		DataModule1->qrySalesInformation->Refresh();

		TNotification *MyNotification = NotificationCenter1->CreateNotification();
		//通知の一意の識別子
		MyNotification->Name = L"btnF9Click";
		//通知のタイトル
		MyNotification->Title = L"案内";
		//通知のメッセージのテキスト
		MyNotification->AlertBody = L"編集内容を全て破棄しました。";
		//通知が発生する日時
		NotificationCenter1->PresentNotification(MyNotification);
		delete MyNotification;
		Application->MessageBoxW(L"編集内容を全て破棄しました。", L"案内", MB_ICONEXCLAMATION | MB_OK);
	}

	btnF4->Enabled = true;
        btnRegister->Enabled = false;
}
//---------------------------------------------------------------------------

void __fastcall TMainForm1::btnF12Click(TObject *Sender)
{
	CloseApplication();
}
//---------------------------------------------------------------------------

bool __fastcall TMainForm1::CloseApplication()
{
	int answer;

	btnF12->Enabled = false;
	Application->ProcessMessages();

	answer = Application->MessageBoxW(L"保存されていない内容は全て破棄されます。\n\n終了しますか？", L"確認", MB_ICONINFORMATION | MB_YESNO);
	if (answer == IDNO)
	{
		btnF12->Enabled = true;
		return false;
	}

	Application->Terminate();
	return true;
}

void __fastcall TMainForm1::FormClose(TObject *Sender, TCloseAction &Action)
{
	if (CloseApplication())
	{
		DataModule1->FDConnection1->Close();
		Action = caFree;
	}
	else
	{
		Action = caNone;
        }
}
//---------------------------------------------------------------------------

void __fastcall TMainForm1::btnRegisterClick(TObject *Sender)
{
	btnRegister->Enabled = false;

	/**************************
		入力チェック
	**************************/

	if (edSalesDestinationCode->Text.Length() == 0)
	{
		Application->MessageBoxW(L"販売先コードを入力してください。", L"未入力", MB_ICONEXCLAMATION);
		btnRegister->Enabled = true;
		return;
	}


	try
	{
		DataModule1->qrySalesInformation->Post();
	}
	catch (const Exception &e)
	{
		String msg;
		msg = L"次の理由により、登録できませんでした。";
		msg = msg + e.Message;
		Application->MessageBoxW(msg.w_str(), L"ＤＢエラー", MB_ICONSTOP);
		btnRegister->Enabled = true;
		return;
	}

	TNotification *MyNotification = NotificationCenter1->CreateNotification();
	MyNotification->Name = L"登録";
	MyNotification->Title = L"案内";
	MyNotification->AlertBody = L"正常に登録されました。";
	NotificationCenter1->PresentNotification(MyNotification);
	delete MyNotification;

	btnF4->Enabled = true;

}
//---------------------------------------------------------------------------


void __fastcall TMainForm1::FormKeyDown(TObject *Sender, WORD &Key, TShiftState Shift)

{
	switch ( Key )
	{

		case vkF1:
		case vkF2:
		case vkF3:
		case vkF5:
		case vkF6:
		case vkF7:
		case vkF8:
		case vkF10:
		case vkF11:
			Key = 0X00;
			break;
		case vkF4:
			btnF4Click(btnF4);
			break;
		case vkF9:
			btnF9Click(btnF9);
			break;
		case vkF12:
			btnF12Click(btnF12);
			break;
	}
}
//---------------------------------------------------------------------------

