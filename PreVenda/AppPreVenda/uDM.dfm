object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 324
  Width = 457
  object Transacao: TFDTransaction
    Connection = ConexaoPrincipal
    Left = 64
    Top = 104
  end
  object ConexaoPrincipal: TFDConnection
    Params.Strings = (
      
        'Database=C:\Program Files (x86)\SmallSoft\Small Commerce\SMALL.F' +
        'DB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 60
    Top = 20
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 64
    Top = 64
  end
end
