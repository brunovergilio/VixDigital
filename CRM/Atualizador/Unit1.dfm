object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 365
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 192
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 672
    Height = 169
    Align = alTop
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Width = 500
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CREDOR'
        Width = 50
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 80
    Top = 256
    Width = 193
    Height = 89
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=dbmigracao'
      'User_Name=sistema'
      'Password=nfescan2017'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 8
    Top = 8
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrNone
    Left = 64
    Top = 8
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Desenvolvimento\Click Solu'#231#245'es\DLL\libmysql.dll'
    Left = 120
    Top = 8
  end
  object QOperacoes: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from operacoes')
    Left = 224
    Top = 24
    object QOperacoesCLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 100
    end
    object QOperacoesNROPERACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NROPERACAO'
      Origin = 'NROPERACAO'
    end
    object QOperacoesREMESSA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMESSA'
      Origin = 'REMESSA'
      Size = 100
    end
    object QOperacoesMCI: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MCI'
      Origin = 'MCI'
      Precision = 38
      Size = 0
    end
    object QOperacoesCOBRADOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
      Precision = 38
      Size = 0
    end
    object QOperacoesSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = '`STATUS`'
      Size = 1
    end
    object QOperacoesBANCO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO'
      Origin = 'BANCO'
      Precision = 38
      Size = 0
    end
    object QOperacoesAGENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
      Size = 10
    end
    object QOperacoesCONTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA'
      Origin = 'CONTA'
      Size = 30
    end
    object QOperacoesNRFICHA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NRFICHA'
      Origin = 'NRFICHA'
      Precision = 12
      Size = 6
    end
    object QOperacoesDEVOLVER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DEVOLVER'
      Origin = 'DEVOLVER'
      Size = 1
    end
    object QOperacoesMOTIVO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MOTIVO'
      Origin = 'MOTIVO'
      Precision = 38
      Size = 0
    end
    object QOperacoesDEVOLVERBB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DEVOLVERBB'
      Origin = 'DEVOLVERBB'
      Size = 1
    end
    object QOperacoesMOTIVOBB: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MOTIVOBB'
      Origin = 'MOTIVOBB'
      Precision = 38
      Size = 0
    end
    object QOperacoesREMESSABB: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REMESSABB'
      Origin = 'REMESSABB'
      Precision = 38
      Size = 0
    end
    object QOperacoesCODPRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Size = 10
    end
    object QOperacoesMODALIDADEBB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MODALIDADEBB'
      Origin = 'MODALIDADEBB'
      Size = 4
    end
    object QOperacoesDATAGRAV: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATAGRAV'
      Origin = 'DATAGRAV'
      Size = 30
    end
    object QOperacoesDATAVENCTO: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DATAVENCTO'
      Origin = 'DATAVENCTO'
    end
    object QOperacoesDATADEVOLUCAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATADEVOLUCAO'
      Origin = 'DATADEVOLUCAO'
      Size = 30
    end
    object QOperacoesVALORDIVIDA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORDIVIDA'
      Origin = 'VALORDIVIDA'
      Precision = 12
      Size = 6
    end
    object QOperacoesVALORMINIMO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORMINIMO'
      Origin = 'VALORMINIMO'
      Precision = 12
      Size = 6
    end
    object QOperacoesVALORVENCIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORVENCIDO'
      Origin = 'VALORVENCIDO'
      Precision = 12
      Size = 6
    end
    object QOperacoesVALORRECEBIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORRECEBIDO'
      Origin = 'VALORRECEBIDO'
      Precision = 12
      Size = 6
    end
    object QOperacoesVALORNOMINAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORNOMINAL'
      Origin = 'VALORNOMINAL'
      Precision = 12
      Size = 6
    end
    object QOperacoesVALORABATIMENTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORABATIMENTO'
      Origin = 'VALORABATIMENTO'
      Precision = 12
      Size = 6
    end
    object QOperacoesVALORPROTESTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORPROTESTO'
      Origin = 'VALORPROTESTO'
      Precision = 12
      Size = 6
    end
    object QOperacoesPERC_DESCONTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_DESCONTO'
      Origin = 'PERC_DESCONTO'
      Precision = 12
      Size = 6
    end
    object QOperacoesPERC_MULTA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_MULTA'
      Origin = 'PERC_MULTA'
      Precision = 12
      Size = 6
    end
    object QOperacoesPERC_ENCARGO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ENCARGO'
      Origin = 'PERC_ENCARGO'
      Precision = 12
      Size = 6
    end
    object QOperacoesAGENCIANOVA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIANOVA'
      Origin = 'AGENCIANOVA'
      Size = 10
    end
    object QOperacoesOPERACAONOVA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPERACAONOVA'
      Origin = 'OPERACAONOVA'
    end
    object QOperacoesDATACELEBRACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATACELEBRACAO'
      Origin = 'DATACELEBRACAO'
      Size = 30
    end
    object QOperacoesMOTIVORETOMADA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MOTIVORETOMADA'
      Origin = 'MOTIVORETOMADA'
      Size = 30
    end
    object QOperacoesDATAREC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATAREC'
      Origin = 'DATAREC'
      Size = 30
    end
    object QOperacoesDATAFIMTERCERIZACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATAFIMTERCERIZACAO'
      Origin = 'DATAFIMTERCERIZACAO'
      Size = 30
    end
    object QOperacoesNRTERCERIZACAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NRTERCERIZACAO'
      Origin = 'NRTERCERIZACAO'
      Precision = 38
      Size = 0
    end
    object QOperacoesTIPOOPERACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOOPERACAO'
      Origin = 'TIPOOPERACAO'
      Size = 40
    end
    object QOperacoesATUALIZADOATE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATUALIZADOATE'
      Origin = 'ATUALIZADOATE'
      Size = 30
    end
    object QOperacoesFORMAATUALIZACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORMAATUALIZACAO'
      Origin = 'FORMAATUALIZACAO'
      Size = 255
    end
    object QOperacoesCONDNEGOCIAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONDNEGOCIAIS'
      Origin = 'CONDNEGOCIAIS'
      Size = 255
    end
    object QOperacoesGARANTIASREAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GARANTIASREAIS'
      Origin = 'GARANTIASREAIS'
      Size = 255
    end
    object QOperacoesPRAZOPERMPARC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRAZOPERMPARC'
      Origin = 'PRAZOPERMPARC'
      Size = 25
    end
    object QOperacoesTIPOPAGTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOPAGTO'
      Origin = 'TIPOPAGTO'
      Size = 1
    end
    object QOperacoesF1NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1NOME'
      Origin = 'F1NOME'
      Size = 40
    end
    object QOperacoesF1ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1ENDERECO'
      Origin = 'F1ENDERECO'
      Size = 40
    end
    object QOperacoesF1BAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1BAIRRO'
      Origin = 'F1BAIRRO'
    end
    object QOperacoesF1CIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1CIDADE'
      Origin = 'F1CIDADE'
      Size = 25
    end
    object QOperacoesF1UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1UF'
      Origin = 'F1UF'
      Size = 2
    end
    object QOperacoesF1CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1CEP'
      Origin = 'F1CEP'
      Size = 9
    end
    object QOperacoesF1FONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1FONE'
      Origin = 'F1FONE'
      Size = 14
    end
    object QOperacoesF1FAX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1FAX'
      Origin = 'F1FAX'
      Size = 14
    end
    object QOperacoesF2NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2NOME'
      Origin = 'F2NOME'
      Size = 40
    end
    object QOperacoesF2ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2ENDERECO'
      Origin = 'F2ENDERECO'
      Size = 40
    end
    object QOperacoesF2BAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2BAIRRO'
      Origin = 'F2BAIRRO'
    end
    object QOperacoesF2CIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2CIDADE'
      Origin = 'F2CIDADE'
      Size = 25
    end
    object QOperacoesF2UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2UF'
      Origin = 'F2UF'
      Size = 2
    end
    object QOperacoesF2CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2CEP'
      Origin = 'F2CEP'
      Size = 9
    end
    object QOperacoesF2FONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2FONE'
      Origin = 'F2FONE'
      Size = 14
    end
    object QOperacoesF2FAX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2FAX'
      Origin = 'F2FAX'
      Size = 14
    end
    object QOperacoesHISTORICO: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
    end
    object QOperacoesNR_CARTA_ACORDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NR_CARTA_ACORDO'
      Origin = 'NR_CARTA_ACORDO'
      Precision = 12
      Size = 6
    end
    object QOperacoesDIAS_ATRASO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DIAS_ATRASO'
      Origin = 'DIAS_ATRASO'
      Precision = 38
      Size = 0
    end
    object QOperacoesDATA_MODIF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_MODIF'
      Origin = 'DATA_MODIF'
    end
    object QOperacoesCOD_CLASSIFICACAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'COD_CLASSIFICACAO'
      Origin = 'COD_CLASSIFICACAO'
      Precision = 38
      Size = 0
    end
    object QOperacoesVALORJURO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORJURO'
      Origin = 'VALORJURO'
      Precision = 12
      Size = 6
    end
    object QOperacoesVALORMULTA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORMULTA'
      Origin = 'VALORMULTA'
      Precision = 12
      Size = 6
    end
    object QOperacoesVALORHONORARIO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORHONORARIO'
      Origin = 'VALORHONORARIO'
      Precision = 12
      Size = 6
    end
    object QOperacoesFATORPARCELAMENTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'FATORPARCELAMENTO'
      Origin = 'FATORPARCELAMENTO'
      Precision = 15
      Size = 5
    end
    object QOperacoesENVIOBANCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENVIOBANCO'
      Origin = 'ENVIOBANCO'
      Size = 1
    end
    object QOperacoesPERC_HONORARIOS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_HONORARIOS'
      Origin = 'PERC_HONORARIOS'
      Precision = 12
      Size = 6
    end
    object QOperacoesPERC_JUROS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_JUROS'
      Origin = 'PERC_JUROS'
      Precision = 12
      Size = 6
    end
    object QOperacoesID_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_1'
      Origin = 'ID_1'
      Size = 30
    end
    object QOperacoesID_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_2'
      Origin = 'ID_2'
      Size = 30
    end
    object QOperacoesID_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_3'
      Origin = 'ID_3'
      Size = 30
    end
    object QOperacoesF1CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1CPF'
      Origin = 'F1CPF'
      Size = 11
    end
    object QOperacoesF2CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2CPF'
      Origin = 'F2CPF'
      Size = 11
    end
    object QOperacoesNUMERONOTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERONOTA'
      Origin = 'NUMERONOTA'
    end
    object QOperacoesNRPROCESSO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NRPROCESSO'
      Origin = 'NRPROCESSO'
    end
    object QOperacoesPERC_JUROS_CONTRATO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_JUROS_CONTRATO'
      Origin = 'PERC_JUROS_CONTRATO'
      Precision = 12
      Size = 6
    end
    object QOperacoesUSUARIO_LIB_DESC: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO_LIB_DESC'
      Origin = 'USUARIO_LIB_DESC'
      Precision = 38
      Size = 0
    end
    object QOperacoesHORA_LIB_DESC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'HORA_LIB_DESC'
      Origin = 'HORA_LIB_DESC'
      Size = 30
    end
    object QOperacoesVALORIOF: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORIOF'
      Origin = 'VALORIOF'
      Precision = 12
      Size = 6
    end
    object QOperacoesVALORCORRECAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORCORRECAO'
      Origin = 'VALORCORRECAO'
      Precision = 12
      Size = 6
    end
    object QOperacoesID_4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_4'
      Origin = 'ID_4'
      Size = 30
    end
    object QOperacoesGRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Size = 10
    end
    object QOperacoesCLASSEPRINCIPAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLASSEPRINCIPAL'
      Origin = 'CLASSEPRINCIPAL'
      Size = 5
    end
    object QOperacoesCLASSECONSUMO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLASSECONSUMO'
      Origin = 'CLASSECONSUMO'
      Size = 5
    end
    object QOperacoesTIPOARRECADACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOARRECADACAO'
      Origin = 'TIPOARRECADACAO'
      Size = 5
    end
    object QOperacoesSCORE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SCORE'
      Origin = 'SCORE'
      Size = 10
    end
    object QOperacoesDEVOLUCAO_USR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DEVOLUCAO_USR'
      Origin = 'DEVOLUCAO_USR'
      Precision = 38
      Size = 0
    end
    object QOperacoesLIQUIDACAO_DATA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LIQUIDACAO_DATA'
      Origin = 'LIQUIDACAO_DATA'
      Size = 30
    end
    object QOperacoesLIQUIDACAO_USR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'LIQUIDACAO_USR'
      Origin = 'LIQUIDACAO_USR'
      Precision = 38
      Size = 0
    end
    object QOperacoesDTA_CAD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DTA_CAD'
      Origin = 'DTA_CAD'
      Size = 30
    end
    object QOperacoesUSR_CAD: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'USR_CAD'
      Origin = 'USR_CAD'
      Precision = 38
      Size = 0
    end
    object QOperacoesREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOperacoesCREDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CREDOR'
      Origin = 'CREDOR'
      Size = 100
    end
    object QOperacoesULTIMO_ACIONAMENTO: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ULTIMO_ACIONAMENTO'
      Origin = 'ULTIMO_ACIONAMENTO'
    end
    object QOperacoesOPERADOREMACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPERADOREMACAO'
      Origin = 'OPERADOREMACAO'
      Size = 100
    end
    object QOperacoesDATAHORAACAO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATAHORAACAO'
      Origin = 'DATAHORAACAO'
    end
  end
  object QClientesCredores: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from clientes_credores')
    Left = 328
    Top = 72
    object QClientesCredorescodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QClientesCredorescod_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_cliente'
      Origin = 'cod_cliente'
    end
    object QClientesCredorescod_credor: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_credor'
      Origin = 'cod_credor'
    end
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 456
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = QOperacoes
    Left = 256
    Top = 24
  end
  object QBuscaCliente: TFDQuery
    Connection = FDConnection1
    Left = 432
    Top = 216
  end
end
