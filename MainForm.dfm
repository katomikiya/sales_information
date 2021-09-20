object MainForm1: TMainForm1
  Left = 0
  Top = 0
  Caption = 'MainForm1'
  ClientHeight = 613
  ClientWidth = 926
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 11
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 926
    Height = 81
    Align = alTop
    Caption = #36009#22770#24773#22577#31649#29702#12471#12473#12486#12512
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 337
    Height = 465
    Align = alLeft
    Caption = 'Panel2'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 335
      Height = 438
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = #65325#65331' '#65328#12468#12471#12483#12463
      TitleFont.Style = []
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 439
      Width = 335
      Height = 25
      Align = alBottom
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 336
    Top = 81
    Width = 590
    Height = 465
    Align = alRight
    BevelKind = bkTile
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 27
      Top = 37
      Width = 87
      Height = 16
      Caption = #36009#22770#20808#12467#12540#12489
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 38
      Top = 88
      Width = 64
      Height = 16
      Caption = #36009#22770#20808#21517
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 35
      Top = 135
      Width = 71
      Height = 16
      Caption = #21830#21697#12467#12540#12489
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 46
      Top = 184
      Width = 48
      Height = 16
      Caption = #21830#21697#21517
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 54
      Top = 233
      Width = 32
      Height = 16
      Caption = #25968#37327
    end
    object Label6: TLabel
      Left = 54
      Top = 331
      Width = 32
      Height = 16
      Caption = #21336#20385
    end
    object Label7: TLabel
      Left = 54
      Top = 380
      Width = 32
      Height = 16
      Caption = #37329#38989
    end
    object Label8: TLabel
      Left = 54
      Top = 429
      Width = 32
      Height = 16
      Caption = #20633#32771
    end
    object Label9: TLabel
      Left = 54
      Top = 282
      Width = 32
      Height = 16
      Caption = #21336#20301
    end
    object SalesDestinationCode: TDBEdit
      Left = 132
      Top = 36
      Width = 157
      Height = 24
      TabOrder = 0
    end
    object SalesDesitnationName: TDBEdit
      Left = 132
      Top = 82
      Width = 157
      Height = 24
      TabOrder = 1
    end
    object ItemCode: TDBEdit
      Left = 132
      Top = 130
      Width = 157
      Height = 24
      TabOrder = 2
    end
    object ItemName: TDBEdit
      Left = 132
      Top = 178
      Width = 157
      Height = 24
      TabOrder = 3
    end
    object Unit: TDBEdit
      Left = 132
      Top = 274
      Width = 77
      Height = 24
      TabOrder = 5
    end
    object UnitPrice: TRzDBNumericEdit
      Left = 132
      Top = 330
      Width = 77
      Height = 24
      Alignment = taLeftJustify
      TabOrder = 6
      DisplayFormat = ',0;(,0)'
    end
    object Price: TRzDBNumericEdit
      Left = 132
      Top = 378
      Width = 133
      Height = 24
      Alignment = taLeftJustify
      TabOrder = 7
      DisplayFormat = ',0;(,0)'
    end
    object Amount: TRzDBNumericEdit
      Left = 132
      Top = 226
      Width = 77
      Height = 24
      Alignment = taLeftJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      DisplayFormat = ',0;(,0)'
    end
    object Remarks: TDBEdit
      Left = 132
      Top = 426
      Width = 253
      Height = 24
      TabOrder = 8
    end
    object btnRegister: TButton
      Left = 440
      Top = 364
      Width = 113
      Height = 85
      Cursor = crHandPoint
      BiDiMode = bdRightToLeft
      Caption = #30331#12288#37682
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 9
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 546
    Width = 926
    Height = 67
    Align = alBottom
    TabOrder = 3
    object btnF2: TButton
      Left = 81
      Top = 9
      Width = 70
      Height = 47
      TabOrder = 1
      TabStop = False
    end
    object btnF3: TButton
      Left = 150
      Top = 9
      Width = 70
      Height = 47
      TabOrder = 2
      TabStop = False
    end
    object btnF1: TButton
      Left = 12
      Top = 9
      Width = 70
      Height = 47
      TabOrder = 0
      TabStop = False
    end
    object btnF6: TButton
      Left = 392
      Top = 9
      Width = 70
      Height = 47
      DisabledImageIndex = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
      Font.Style = []
      HotImageIndex = 1
      ImageAlignment = iaTop
      ImageIndex = 0
      ImageMargins.Top = 5
      ParentFont = False
      TabOrder = 3
      TabStop = False
    end
    object btnF7: TButton
      Left = 461
      Top = 9
      Width = 70
      Height = 47
      TabOrder = 4
      TabStop = False
    end
    object btnF8: TButton
      Left = 530
      Top = 9
      Width = 70
      Height = 47
      DisabledImageIndex = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
      Font.Style = []
      ImageAlignment = iaTop
      ImageIndex = 0
      ImageMargins.Top = 5
      ParentFont = False
      TabOrder = 5
      TabStop = False
    end
    object btnF10: TButton
      Left = 704
      Top = 9
      Width = 70
      Height = 47
      TabOrder = 6
      TabStop = False
    end
    object btnF11: TButton
      Left = 773
      Top = 9
      Width = 70
      Height = 47
      TabOrder = 7
      TabStop = False
    end
    object btnF12: TButton
      Left = 842
      Top = 9
      Width = 70
      Height = 47
      Caption = 'F12 '#38281#12376#12427
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
      Font.Style = []
      HotImageIndex = 1
      ImageAlignment = iaTop
      ImageIndex = 0
      ImageMargins.Top = 5
      ParentFont = False
      TabOrder = 8
      TabStop = False
    end
    object btnF9: TButton
      Left = 635
      Top = 9
      Width = 70
      Height = 47
      Caption = 'F9 '#65399#65388#65437#65406#65433
      DisabledImageIndex = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
      Font.Style = []
      HotImageIndex = 1
      ImageAlignment = iaTop
      ImageIndex = 0
      ImageMargins.Top = 5
      ParentFont = False
      TabOrder = 9
      TabStop = False
    end
    object btnF4: TButton
      Left = 219
      Top = 9
      Width = 70
      Height = 47
      Caption = 'F4 '#36861#21152
      DisabledImageIndex = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
      Font.Style = []
      HotImageIndex = 1
      ImageAlignment = iaTop
      ImageIndex = 0
      ImageMargins.Top = 5
      ParentFont = False
      TabOrder = 10
      TabStop = False
    end
    object btnF5: TButton
      Left = 323
      Top = 9
      Width = 70
      Height = 47
      DisabledImageIndex = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
      Font.Style = []
      HotImageIndex = 1
      ImageAlignment = iaTop
      ImageIndex = 0
      ImageMargins.Top = 5
      ParentFont = False
      TabOrder = 11
      TabStop = False
    end
  end
  object Timer1: TTimer
    Left = 760
    Top = 24
  end
  object NotificationCenter1: TNotificationCenter
    Left = 792
    Top = 24
  end
end
