object MainForm1: TMainForm1
  Left = 0
  Top = 0
  Caption = 'MainForm1'
  ClientHeight = 617
  ClientWidth = 958
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 11
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 958
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
    Height = 469
    Align = alLeft
    Caption = 'Panel2'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 335
      Height = 442
      Align = alClient
      DataSource = DataModule1.DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = #65325#65331' '#65328#12468#12471#12483#12463
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'sales_destination_name'
          Title.Caption = #36009#22770#20808#21517
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'item_name'
          Title.Caption = #21830#21697#21517
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'amount'
          Title.Caption = #25968#37327
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
          Title.Font.Style = [fsBold]
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'unit'
          Title.Caption = #21336#20301
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'price'
          Title.Caption = #37329#38989
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 443
      Width = 335
      Height = 25
      Align = alBottom
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 337
    Top = 81
    Width = 621
    Height = 469
    Align = alRight
    BevelKind = bkTile
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitLeft = 342
    ExplicitTop = 84
    object Label1: TLabel
      Left = 27
      Top = 27
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
      Top = 78
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
      Top = 125
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
      Top = 174
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
      Top = 223
      Width = 32
      Height = 16
      Caption = #25968#37327
    end
    object Label6: TLabel
      Left = 54
      Top = 321
      Width = 32
      Height = 16
      Caption = #21336#20385
    end
    object Label7: TLabel
      Left = 54
      Top = 370
      Width = 32
      Height = 16
      Caption = #37329#38989
    end
    object Label8: TLabel
      Left = 54
      Top = 419
      Width = 32
      Height = 16
      Caption = #20633#32771
    end
    object Label9: TLabel
      Left = 54
      Top = 272
      Width = 32
      Height = 16
      Caption = #21336#20301
    end
    object Label10: TLabel
      Left = 270
      Top = 371
      Width = 16
      Height = 16
      Caption = #20870
    end
    object Label11: TLabel
      Left = 212
      Top = 324
      Width = 16
      Height = 16
      Caption = #20870
    end
    object edSalesDestinationCode: TDBEdit
      Left = 132
      Top = 26
      Width = 157
      Height = 24
      DataField = 'sales_destinatin_code'
      DataSource = DataModule1.DataSource1
      ImeMode = imDisable
      TabOrder = 0
    end
    object edSalesDesitnationName: TDBEdit
      Left = 132
      Top = 72
      Width = 157
      Height = 24
      DataField = 'sales_destination_name'
      DataSource = DataModule1.DataSource1
      ImeMode = imHira
      TabOrder = 1
    end
    object edItemCode: TDBEdit
      Left = 132
      Top = 122
      Width = 157
      Height = 24
      DataField = 'item_code'
      DataSource = DataModule1.DataSource1
      ImeMode = imDisable
      TabOrder = 2
    end
    object edItemName: TDBEdit
      Left = 132
      Top = 168
      Width = 157
      Height = 24
      DataField = 'item_name'
      DataSource = DataModule1.DataSource1
      ImeMode = imHira
      TabOrder = 3
    end
    object edUnit: TDBEdit
      Left = 132
      Top = 264
      Width = 77
      Height = 24
      DataField = 'unit'
      DataSource = DataModule1.DataSource1
      ImeMode = imHira
      TabOrder = 5
    end
    object nedUnitPrice: TRzDBNumericEdit
      Left = 129
      Top = 318
      Width = 77
      Height = 24
      DataSource = DataModule1.DataSource1
      DataField = 'unit_price'
      Alignment = taLeftJustify
      ImeMode = imDisable
      TabOrder = 6
      DisplayFormat = ',0;(,0)'
    end
    object nedPrice: TRzDBNumericEdit
      Left = 132
      Top = 368
      Width = 133
      Height = 24
      DataSource = DataModule1.DataSource1
      DataField = 'price'
      Alignment = taLeftJustify
      ImeMode = imDisable
      TabOrder = 7
      DisplayFormat = ',0;(,0)'
    end
    object nedAmount: TRzDBNumericEdit
      Left = 132
      Top = 219
      Width = 77
      Height = 24
      DataSource = DataModule1.DataSource1
      DataField = 'amount'
      Alignment = taLeftJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
      Font.Style = []
      ImeMode = imDisable
      ParentFont = False
      TabOrder = 4
      DisplayFormat = ',0;(,0)'
    end
    object edRemarks: TDBEdit
      Left = 132
      Top = 416
      Width = 253
      Height = 24
      DataField = 'remarks'
      DataSource = DataModule1.DataSource1
      ImeMode = imHira
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
      OnClick = btnRegisterClick
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 550
    Width = 958
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
      OnClick = btnF12Click
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
      OnClick = btnF9Click
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
      OnClick = btnF4Click
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
    OnTimer = Timer1Timer
    Left = 760
    Top = 24
  end
  object NotificationCenter1: TNotificationCenter
    Left = 792
    Top = 24
  end
end
