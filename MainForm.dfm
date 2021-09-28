object MainForm1: TMainForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'SalesInformation'
  ClientHeight = 671
  ClientWidth = 971
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 971
    Height = 81
    Align = alTop
    Caption = #36009#22770#24773#22577#31649#29702#12471#12473#12486#12512
    Color = 8454143
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 425
    Height = 523
    Align = alLeft
    Caption = 'Panel2'
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 423
      Height = 496
      Align = alClient
      DataSource = DataModule1.DataSource1
      ParentColor = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = #65325#65331' '#65328#12468#12471#12483#12463
      TitleFont.Style = []
      OnMouseWheel = DBGrid1MouseWheel
      Columns = <
        item
          Expanded = False
          FieldName = 'sales_destination_name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
          Font.Style = []
          Title.Caption = #36009#22770#20808#21517
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
          Title.Font.Style = [fsBold]
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'item_name'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
          Font.Style = []
          Title.Caption = #21830#21697#21517
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
          Title.Font.Style = [fsBold]
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'amount'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
          Font.Style = []
          Title.Caption = #25968#37327
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
          Title.Font.Style = [fsBold]
          Width = 43
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'unit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
          Font.Style = []
          Title.Caption = #21336#20301
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
          Title.Font.Style = [fsBold]
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'price'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
          Font.Style = []
          Title.Caption = #37329#38989
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
          Title.Font.Style = [fsBold]
          Width = 81
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 497
      Width = 423
      Height = 25
      DataSource = DataModule1.DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete]
      Align = alBottom
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 424
    Top = 81
    Width = 547
    Height = 523
    Align = alRight
    BevelKind = bkTile
    Color = clGradientInactiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 26
      Top = 44
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
      Left = 37
      Top = 95
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
      Left = 34
      Top = 142
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
      Left = 45
      Top = 191
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
      Left = 53
      Top = 240
      Width = 32
      Height = 16
      Caption = #25968#37327
    end
    object Label6: TLabel
      Left = 53
      Top = 290
      Width = 32
      Height = 16
      Caption = #21336#20385
    end
    object Label7: TLabel
      Left = 53
      Top = 339
      Width = 32
      Height = 16
      Caption = #37329#38989
    end
    object Label8: TLabel
      Left = 53
      Top = 388
      Width = 48
      Height = 16
      Caption = #20633#32771#8251
    end
    object Label9: TLabel
      Left = 253
      Top = 240
      Width = 32
      Height = 16
      Caption = #21336#20301
    end
    object Label10: TLabel
      Left = 270
      Top = 389
      Width = 16
      Height = 16
      Caption = #20870
    end
    object Label11: TLabel
      Left = 216
      Top = 339
      Width = 16
      Height = 16
      Caption = #20870
    end
    object edSalesDestinationCode: TDBEdit
      Left = 131
      Top = 41
      Width = 157
      Height = 24
      DataField = 'sales_destinatin_code'
      DataSource = DataModule1.DataSource1
      ImeMode = imDisable
      TabOrder = 0
    end
    object edSalesDesitnationName: TDBEdit
      Left = 131
      Top = 92
      Width = 238
      Height = 24
      DataField = 'sales_destination_name'
      DataSource = DataModule1.DataSource1
      ImeMode = imHira
      TabOrder = 1
    end
    object edItemCode: TDBEdit
      Left = 131
      Top = 139
      Width = 157
      Height = 24
      DataField = 'item_code'
      DataSource = DataModule1.DataSource1
      ImeMode = imDisable
      TabOrder = 2
    end
    object edItemName: TDBEdit
      Left = 131
      Top = 188
      Width = 238
      Height = 24
      DataField = 'item_name'
      DataSource = DataModule1.DataSource1
      ImeMode = imHira
      TabOrder = 3
    end
    object edUnit: TDBEdit
      Left = 323
      Top = 237
      Width = 77
      Height = 24
      DataField = 'unit'
      DataSource = DataModule1.DataSource1
      ImeMode = imHira
      TabOrder = 5
    end
    object nedUnitPrice: TRzDBNumericEdit
      Left = 131
      Top = 287
      Width = 77
      Height = 24
      DataSource = DataModule1.DataSource1
      DataField = 'unit_price'
      ImeMode = imDisable
      TabOrder = 6
      DisplayFormat = ',0;(,0)'
    end
    object nedPrice: TRzDBNumericEdit
      Left = 131
      Top = 337
      Width = 133
      Height = 24
      DataSource = DataModule1.DataSource1
      DataField = 'price'
      ImeMode = imDisable
      TabOrder = 7
      DisplayFormat = ',0;(,0)'
    end
    object nedAmount: TRzDBNumericEdit
      Left = 131
      Top = 237
      Width = 77
      Height = 24
      DataSource = DataModule1.DataSource1
      DataField = 'amount'
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
      Left = 131
      Top = 385
      Width = 245
      Height = 24
      DataField = 'remarks'
      DataSource = DataModule1.DataSource1
      ImeMode = imHira
      TabOrder = 8
    end
    object btnRegister: TButton
      Left = 392
      Top = 409
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
    Top = 604
    Width = 971
    Height = 67
    Align = alBottom
    Color = clGradientInactiveCaption
    ParentBackground = False
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
  object Button1: TButton
    Left = 818
    Top = 422
    Width = 113
    Height = 38
    Caption = #24115#31080#20986#21147
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #65325#65331' '#65328#12468#12471#12483#12463
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
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
  object frxReport1: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44467.675937314800000000
    ReportOptions.LastChange = 44467.675937314800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 56
    Top = 232
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 15.118120000000000000
          Width = 132.283550000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Hello World.')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 105.826840000000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1sales_destination_name: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 37.795300000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'sales_destination_name'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."sales_destination_name"]')
          ParentFont = False
        end
        object frxDBDataset1price: TfrxMemoView
          IndexTag = 2
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 37.795300000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'price'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."price"]')
          ParentFont = False
        end
        object frxDBDataset1item_name: TfrxMemoView
          IndexTag = 3
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 37.795300000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'item_name'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."item_name"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 98.267780000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'sales_destination_name')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'price')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039580000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'item_name')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = DataModule1.qrySalesInformation
    BCDToCurrency = False
    Left = 152
    Top = 224
  end
end
