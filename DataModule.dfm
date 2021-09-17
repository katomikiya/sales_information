object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 448
  Width = 672
  object FDConnection1: TFDConnection
    Left = 64
    Top = 48
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 144
    Top = 112
  end
  object DataSource1: TDataSource
    Left = 216
    Top = 112
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 512
    Top = 360
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 568
    Top = 360
  end
end
