object dmDados: TdmDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 194
  Width = 341
  object ConexaoA: TIBDatabase
    DatabaseName = '192.168.25.8:C:\Program Files\SmallSoft\Small Commerce\SMALL.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = TransacaoA
    ServerType = 'IBServer'
    Left = 48
    Top = 24
  end
  object TransacaoA: TIBTransaction
    DefaultDatabase = ConexaoA
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 144
    Top = 24
  end
  object QRyDados: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 224
    Top = 24
  end
end
