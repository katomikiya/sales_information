object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 448
  Width = 672
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Server=KATO-M-W10\SQLEXPRESS'
      'Database=sales_information'
      'User_Name=OMOTEYA'
      'OSAuthent=Yes'
      'DriverID=MSSQL')
    LoginPrompt = False
    Left = 64
    Top = 24
  end
  object qrySalesInformation: TFDQuery
    BeforePost = qrySalesInformationBeforePost
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT *'
      'FROM sales_information;')
    Left = 62
    Top = 104
  end
  object DataSource1: TDataSource
    DataSet = qrySalesInformation
    Left = 152
    Top = 104
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 560
    Top = 296
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 568
    Top = 360
  end
end
