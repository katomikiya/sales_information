//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "MainForm.h"
#include "DataModule.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "RzDBEdit"
#pragma link "RzEdit"
#pragma link "frxClass"
#pragma link "frxDBSet"
#pragma link "frxClass"
#pragma link "frxDBSet"
#pragma link "frxExportBaseDialog"
#pragma link "frxExportCSV"
#pragma link "frxExportPDF"
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
 
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

	btnF5->Enabled = false;
}
//---------------------------------------------------------------------------

void __fastcall TMainForm1::btnF4Click(TObject *Sender)
{
	if (DataModule1->qrySalesInformation->State == dsBrowse)
	{
		btnF4->Enabled = false;
		DataModule1->qrySalesInformation->Append();
		edSalesDestinationCode->SetFocus();
		btnF5->Enabled = true;
		DBGrid1->Enabled = false;
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

		DBGrid1->Enabled = true;
	}

	btnF4->Enabled = true;
	btnF5->Enabled = false;
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


void __fastcall TMainForm1::DBGrid1MouseWheel(TObject *Sender, TShiftState Shift,
          int WheelDelta, TPoint &MousePos, bool &Handled)
{
	btnF4->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TMainForm1::FormKeyPress(TObject *Sender, System::WideChar &Key)
{
	if (Key == VK_RETURN)
	{
		SendMessage(Handle, WM_NEXTDLGCTL, 0, 0);
		Key = 0x00;
	}
}
//---------------------------------------------------------------------------

void __fastcall TMainForm1::FormKeyDown(TObject *Sender, WORD &Key, TShiftState Shift)

{
	switch( Key )
	{
		case vkF1:
		case vkF2:
		case vkF3:
		case vkF6:
		case vkF7:
		case vkF8:
		case vkF10:
		case vkF11:
			Key = 0x00;
			break;
		case vkF4:
			btnF4Click( btnF4 );
			break;
		case vkF5:
			if (btnF5->Enabled == true)
			{
				btnF5Click( btnF5 );
			}
			break;
		case vkF9:
			btnF9Click( btnF9 );
			break;
		case vkF12:
			btnF12Click( btnF12 );
			break;
	}

}
//---------------------------------------------------------------------------

void __fastcall TMainForm1::Button1Click(TObject *Sender)
{
	frxReport1->PrepareReport();
	frxReport1->ShowReport();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm1::btnF5Click(TObject *Sender)
{
	btnF5->Enabled = false;

	/**************************
		入力チェック
	**************************/

	if (edSalesDestinationCode->Text.Length() == 0)
	{
		Application->MessageBoxW(L"販売先コードを入力してください。", L"未入力", MB_ICONEXCLAMATION);
		btnF5->Enabled = true;
		edSalesDestinationCode->SetFocus();
		return;
	}
	else if (edSalesDesitnationName->Text.Length() == 0)
	{
		Application->MessageBoxW(L"販売先名を入力してください。", L"未入力", MB_ICONEXCLAMATION);
		btnF5->Enabled = true;
		edSalesDesitnationName->SetFocus();
		return;
	}
	else if (edItemCode->Text.Length() == 0)
	{
		Application->MessageBoxW(L"商品コードを入力してください。",　L"未入力",　MB_ICONEXCLAMATION);
		btnF5->Enabled = true;
		edItemCode->SetFocus();
		return;
	}
	else if (edItemName->Text.Length() == 0)
	{
		Application->MessageBoxW(L"商品名を入力してください。", L"未入力", MB_ICONEXCLAMATION);
		btnF5->Enabled = true;
		edItemName->SetFocus();return;
	}
	else if (nedAmount->Value == 0)
	{
		Application->MessageBoxW(L"数量を入力してください。", L"未入力", MB_ICONEXCLAMATION);
		btnF5->Enabled = true;
		nedAmount->SetFocus();
		return;
	}
	else if (edUnit->Text.Length() == 0)
	{
		Application->MessageBoxW(L"単位を入力してください。", L"未入力", MB_ICONEXCLAMATION);
		btnF5->Enabled = true;
		edUnit->SetFocus();
		return;
	}
	else if (nedUnitPrice->Value == 0)
	{
		Application->MessageBoxW(L"単価を入力してください。", L"未入力", MB_ICONEXCLAMATION);
		btnF5->Enabled = true;
		nedUnitPrice->SetFocus();
		return;
	}
	else if (nedPrice->Value == 0)
	{
		Application->MessageBoxW(L"金額を入力してください。", L"未入力", MB_ICONEXCLAMATION);
		btnF5->Enabled = true;
		nedPrice->SetFocus();
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
		btnF5->Enabled = true;
		return;
	}

	TNotification *MyNotification = NotificationCenter1->CreateNotification();
	MyNotification->Name = L"登録";
	MyNotification->Title = L"案内";
	MyNotification->AlertBody = L"正常に登録されました。";
	NotificationCenter1->PresentNotification(MyNotification);
	delete MyNotification;

	btnF4->Enabled = true;
	DBGrid1->Enabled = true;
}
//---------------------------------------------------------------------------


