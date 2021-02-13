object DmPrincipal: TDmPrincipal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 324
  Width = 457
  object IBTransaction1: TIBTransaction
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 136
    Top = 24
  end
  object ConexaoPrincipal: TIBDatabase
    DatabaseName = 
      '192.168.25.8@C:\Program Files (x86)\SmallSoft\Small Commerce\SMA' +
      'LL.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=iSO8859_1')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    ServerType = 'IBServer'
    Left = 212
    Top = 148
  end
end
