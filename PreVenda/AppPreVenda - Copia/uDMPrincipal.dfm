object DmPrincipal: TDmPrincipal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 324
  Width = 457
  object IBTransaction1: TFDTransaction
    Connection = ConexaoPrincipal
    Left = 136
    Top = 24
  end
  object ConexaoPrincipal: TFDConnection
    ConnectionName = 
      '192.168.25.8@C:\Program Files (x86)\SmallSoft\Small Commerce\SMA' +
      'LL.FDB'
    Params.Strings = (
      
        'Database=C:\Program Files (x86)\SmallSoft\Small Commerce\SMALL.F' +
        'DB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    LoginPrompt = False
    Left = 212
    Top = 148
  end
end
