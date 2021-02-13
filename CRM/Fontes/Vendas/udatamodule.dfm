object frmDataModule: TfrmDataModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 243
  Width = 554
  object UniConnection1: TFDConnection
    Params.Strings = (
      'Database=dbcrmvix'
      'User_Name=sistema'
      'Password=nfescan2017'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 32
    Top = 24
  end
  object UniTransaction1: TFDTransaction
    Connection = UniConnection1
    Left = 304
    Top = 27
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 120
    Top = 26
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 232
    Top = 27
  end
end
