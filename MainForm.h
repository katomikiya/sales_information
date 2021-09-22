//---------------------------------------------------------------------------

#ifndef MainFormH
#define MainFormH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include "RzDBEdit.hpp"
#include "RzEdit.hpp"
#include <Data.DB.hpp>
#include <System.Notification.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.Mask.hpp>
//---------------------------------------------------------------------------
class TMainForm1 : public TForm
{
__published:	// IDE で管理されるコンポーネント
	TPanel *Panel1;
	TDBGrid *DBGrid1;
	TDBNavigator *DBNavigator1;
	TPanel *Panel2;
	TPanel *Panel3;
	TPanel *Panel4;
	TButton *btnF2;
	TButton *btnF3;
	TButton *btnF1;
	TButton *btnF6;
	TButton *btnF7;
	TButton *btnF8;
	TButton *btnF10;
	TButton *btnF11;
	TButton *btnF12;
	TButton *btnF9;
	TButton *btnF4;
	TButton *btnF5;
	TTimer *Timer1;
	TNotificationCenter *NotificationCenter1;
	TDBEdit *edSalesDestinationCode;
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TLabel *Label5;
	TLabel *Label6;
	TLabel *Label7;
	TLabel *Label8;
	TLabel *Label9;
	TDBEdit *edSalesDesitnationName;
	TDBEdit *edItemCode;
	TDBEdit *edItemName;
	TRzDBNumericEdit *nedAmount;
	TDBEdit *edUnit;
	TRzDBNumericEdit *nedUnitPrice;
	TRzDBNumericEdit *nedPrice;
	TDBEdit *edRemarks;
	TButton *btnRegister;
	TLabel *Label10;
	TLabel *Label11;
	void __fastcall Timer1Timer(TObject *Sender);
	void __fastcall btnF4Click(TObject *Sender);
	void __fastcall btnF9Click(TObject *Sender);
	void __fastcall btnF12Click(TObject *Sender);
	bool __fastcall CloseApplication();
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall btnRegisterClick(TObject *Sender);
	void __fastcall DBGrid1MouseWheel(TObject *Sender, TShiftState Shift, int WheelDelta,
          TPoint &MousePos, bool &Handled);
	void __fastcall FormKeyPress(TObject *Sender, System::WideChar &Key);
	void __fastcall FormKeyDown(TObject *Sender, WORD &Key, TShiftState Shift);

private:	// ユーザー宣言
	String FUserID;
public:		// ユーザー宣言
	__fastcall TMainForm1(TComponent* Owner);;
};
//---------------------------------------------------------------------------
extern PACKAGE TMainForm1 *MainForm1;
//---------------------------------------------------------------------------
#endif
