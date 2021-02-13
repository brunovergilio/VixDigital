object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Form1'
  ClientHeight = 502
  ClientWidth = 974
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 374
    Height = 23
    Caption = 'IMPORTA'#199#195'O DE DADOS  DA TRIBUNA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 103
    Width = 974
    Height = 399
    Align = alBottom
    TabOrder = 0
  end
  object ProgressBar1: TProgressBar
    Left = 416
    Top = 63
    Width = 374
    Height = 17
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 48
    Width = 75
    Height = 49
    Caption = 'Devedor'
    TabOrder = 2
    OnClick = Button1Click
  end
  object cxGrid1: TcxGrid
    Left = 640
    Top = 399
    Width = 932
    Height = 339
    TabOrder = 3
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1Nome: TcxGridDBColumn
        DataBinding.FieldName = 'Nome'
        Width = 293
      end
      object cxGrid1DBTableView1CPFCNPJ: TcxGridDBColumn
        DataBinding.FieldName = 'CPFCNPJ'
        Width = 172
      end
      object cxGrid1DBTableView1tipo: TcxGridDBColumn
        DataBinding.FieldName = 'tipo'
      end
      object cxGrid1DBTableView1logradouro: TcxGridDBColumn
        DataBinding.FieldName = 'logradouro'
        Width = 200
      end
      object cxGrid1DBTableView1numero: TcxGridDBColumn
        DataBinding.FieldName = 'numero'
      end
      object cxGrid1DBTableView1complemento: TcxGridDBColumn
        DataBinding.FieldName = 'complemento'
      end
      object cxGrid1DBTableView1bairro: TcxGridDBColumn
        DataBinding.FieldName = 'bairro'
      end
      object cxGrid1DBTableView1cidade: TcxGridDBColumn
        DataBinding.FieldName = 'cidade'
      end
      object cxGrid1DBTableView1estado: TcxGridDBColumn
        DataBinding.FieldName = 'estado'
      end
      object cxGrid1DBTableView1cep: TcxGridDBColumn
        DataBinding.FieldName = 'cep'
      end
      object cxGrid1DBTableView1email1: TcxGridDBColumn
        DataBinding.FieldName = 'email1'
      end
      object cxGrid1DBTableView1email2: TcxGridDBColumn
        DataBinding.FieldName = 'email2'
      end
      object cxGrid1DBTableView1email3: TcxGridDBColumn
        DataBinding.FieldName = 'email3'
      end
      object cxGrid1DBTableView1email4: TcxGridDBColumn
        DataBinding.FieldName = 'email4'
      end
      object cxGrid1DBTableView1telefone1: TcxGridDBColumn
        DataBinding.FieldName = 'telefone1'
      end
      object cxGrid1DBTableView1telefone2: TcxGridDBColumn
        DataBinding.FieldName = 'telefone2'
      end
      object cxGrid1DBTableView1telefone3: TcxGridDBColumn
        DataBinding.FieldName = 'telefone3'
      end
      object cxGrid1DBTableView1telefone4: TcxGridDBColumn
        DataBinding.FieldName = 'telefone4'
      end
      object cxGrid1DBTableView1telefone5: TcxGridDBColumn
        DataBinding.FieldName = 'telefone5'
      end
      object cxGrid1DBTableView1telefone6: TcxGridDBColumn
        DataBinding.FieldName = 'telefone6'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Button2: TButton
    Left = 91
    Top = 48
    Width = 75
    Height = 49
    Caption = 'Operacoes'
    TabOrder = 4
    OnClick = Button2Click
  end
  object cxGrid2: TcxGrid
    Left = 552
    Top = 447
    Width = 905
    Height = 290
    TabOrder = 5
    object cxGrid2DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsOperacao
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid2DBTableView1CLIENTE: TcxGridDBColumn
        DataBinding.FieldName = 'CLIENTE'
        Options.Editing = False
        Width = 453
      end
      object cxGrid2DBTableView1NROPERACAO: TcxGridDBColumn
        DataBinding.FieldName = 'NROPERACAO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1REMESSA: TcxGridDBColumn
        DataBinding.FieldName = 'REMESSA'
        Options.Editing = False
      end
      object cxGrid2DBTableView1MCI: TcxGridDBColumn
        DataBinding.FieldName = 'MCI'
        Options.Editing = False
      end
      object cxGrid2DBTableView1COBRADOR: TcxGridDBColumn
        DataBinding.FieldName = 'COBRADOR'
        Options.Editing = False
      end
      object cxGrid2DBTableView1STATUS: TcxGridDBColumn
        DataBinding.FieldName = 'STATUS'
        Options.Editing = False
      end
      object cxGrid2DBTableView1BANCO: TcxGridDBColumn
        DataBinding.FieldName = 'BANCO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1AGENCIA: TcxGridDBColumn
        DataBinding.FieldName = 'AGENCIA'
        Options.Editing = False
      end
      object cxGrid2DBTableView1CONTA: TcxGridDBColumn
        DataBinding.FieldName = 'CONTA'
        Options.Editing = False
      end
      object cxGrid2DBTableView1NRFICHA: TcxGridDBColumn
        DataBinding.FieldName = 'NRFICHA'
        Options.Editing = False
      end
      object cxGrid2DBTableView1DEVOLVER: TcxGridDBColumn
        DataBinding.FieldName = 'DEVOLVER'
        Options.Editing = False
      end
      object cxGrid2DBTableView1MOTIVO: TcxGridDBColumn
        DataBinding.FieldName = 'MOTIVO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1DEVOLVERBB: TcxGridDBColumn
        DataBinding.FieldName = 'DEVOLVERBB'
        Options.Editing = False
      end
      object cxGrid2DBTableView1MOTIVOBB: TcxGridDBColumn
        DataBinding.FieldName = 'MOTIVOBB'
        Options.Editing = False
      end
      object cxGrid2DBTableView1REMESSABB: TcxGridDBColumn
        DataBinding.FieldName = 'REMESSABB'
        Options.Editing = False
      end
      object cxGrid2DBTableView1CODPRODUTO: TcxGridDBColumn
        DataBinding.FieldName = 'CODPRODUTO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1MODALIDADEBB: TcxGridDBColumn
        DataBinding.FieldName = 'MODALIDADEBB'
        Options.Editing = False
      end
      object cxGrid2DBTableView1DATAGRAV: TcxGridDBColumn
        DataBinding.FieldName = 'DATAGRAV'
        Options.Editing = False
      end
      object cxGrid2DBTableView1DATAVENCTO: TcxGridDBColumn
        DataBinding.FieldName = 'DATAVENCTO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1DATADEVOLUCAO: TcxGridDBColumn
        DataBinding.FieldName = 'DATADEVOLUCAO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1VALORDIVIDA: TcxGridDBColumn
        DataBinding.FieldName = 'VALORDIVIDA'
        Options.Editing = False
      end
      object cxGrid2DBTableView1VALORMINIMO: TcxGridDBColumn
        DataBinding.FieldName = 'VALORMINIMO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1VALORVENCIDO: TcxGridDBColumn
        DataBinding.FieldName = 'VALORVENCIDO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1VALORRECEBIDO: TcxGridDBColumn
        DataBinding.FieldName = 'VALORRECEBIDO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1VALORNOMINAL: TcxGridDBColumn
        DataBinding.FieldName = 'VALORNOMINAL'
        Options.Editing = False
      end
      object cxGrid2DBTableView1VALORABATIMENTO: TcxGridDBColumn
        DataBinding.FieldName = 'VALORABATIMENTO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1VALORPROTESTO: TcxGridDBColumn
        DataBinding.FieldName = 'VALORPROTESTO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1PERC_DESCONTO: TcxGridDBColumn
        DataBinding.FieldName = 'PERC_DESCONTO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1PERC_MULTA: TcxGridDBColumn
        DataBinding.FieldName = 'PERC_MULTA'
        Options.Editing = False
      end
      object cxGrid2DBTableView1PERC_ENCARGO: TcxGridDBColumn
        DataBinding.FieldName = 'PERC_ENCARGO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1AGENCIANOVA: TcxGridDBColumn
        DataBinding.FieldName = 'AGENCIANOVA'
        Options.Editing = False
      end
      object cxGrid2DBTableView1OPERACAONOVA: TcxGridDBColumn
        DataBinding.FieldName = 'OPERACAONOVA'
        Options.Editing = False
      end
      object cxGrid2DBTableView1DATACELEBRACAO: TcxGridDBColumn
        DataBinding.FieldName = 'DATACELEBRACAO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1MOTIVORETOMADA: TcxGridDBColumn
        DataBinding.FieldName = 'MOTIVORETOMADA'
        Options.Editing = False
      end
      object cxGrid2DBTableView1DATAREC: TcxGridDBColumn
        DataBinding.FieldName = 'DATAREC'
        Options.Editing = False
      end
      object cxGrid2DBTableView1DATAFIMTERCERIZACAO: TcxGridDBColumn
        DataBinding.FieldName = 'DATAFIMTERCERIZACAO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1NRTERCERIZACAO: TcxGridDBColumn
        DataBinding.FieldName = 'NRTERCERIZACAO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1TIPOOPERACAO: TcxGridDBColumn
        DataBinding.FieldName = 'TIPOOPERACAO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1ATUALIZADOATE: TcxGridDBColumn
        DataBinding.FieldName = 'ATUALIZADOATE'
        Options.Editing = False
      end
      object cxGrid2DBTableView1FORMAATUALIZACAO: TcxGridDBColumn
        DataBinding.FieldName = 'FORMAATUALIZACAO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1CONDNEGOCIAIS: TcxGridDBColumn
        DataBinding.FieldName = 'CONDNEGOCIAIS'
        Options.Editing = False
      end
      object cxGrid2DBTableView1GARANTIASREAIS: TcxGridDBColumn
        DataBinding.FieldName = 'GARANTIASREAIS'
        Options.Editing = False
      end
      object cxGrid2DBTableView1PRAZOPERMPARC: TcxGridDBColumn
        DataBinding.FieldName = 'PRAZOPERMPARC'
        Options.Editing = False
      end
      object cxGrid2DBTableView1TIPOPAGTO: TcxGridDBColumn
        DataBinding.FieldName = 'TIPOPAGTO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1F1NOME: TcxGridDBColumn
        DataBinding.FieldName = 'F1NOME'
        Options.Editing = False
      end
      object cxGrid2DBTableView1F1ENDERECO: TcxGridDBColumn
        DataBinding.FieldName = 'F1ENDERECO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1F1BAIRRO: TcxGridDBColumn
        DataBinding.FieldName = 'F1BAIRRO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1F1CIDADE: TcxGridDBColumn
        DataBinding.FieldName = 'F1CIDADE'
        Options.Editing = False
      end
      object cxGrid2DBTableView1F1UF: TcxGridDBColumn
        DataBinding.FieldName = 'F1UF'
        Options.Editing = False
      end
      object cxGrid2DBTableView1F1CEP: TcxGridDBColumn
        DataBinding.FieldName = 'F1CEP'
        Options.Editing = False
      end
      object cxGrid2DBTableView1F1FONE: TcxGridDBColumn
        DataBinding.FieldName = 'F1FONE'
        Options.Editing = False
      end
      object cxGrid2DBTableView1F1FAX: TcxGridDBColumn
        DataBinding.FieldName = 'F1FAX'
        Options.Editing = False
      end
      object cxGrid2DBTableView1F2NOME: TcxGridDBColumn
        DataBinding.FieldName = 'F2NOME'
        Options.Editing = False
      end
      object cxGrid2DBTableView1F2ENDERECO: TcxGridDBColumn
        DataBinding.FieldName = 'F2ENDERECO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1F2BAIRRO: TcxGridDBColumn
        DataBinding.FieldName = 'F2BAIRRO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1F2CIDADE: TcxGridDBColumn
        DataBinding.FieldName = 'F2CIDADE'
        Options.Editing = False
      end
      object cxGrid2DBTableView1F2UF: TcxGridDBColumn
        DataBinding.FieldName = 'F2UF'
        Options.Editing = False
      end
      object cxGrid2DBTableView1F2CEP: TcxGridDBColumn
        DataBinding.FieldName = 'F2CEP'
        Options.Editing = False
      end
      object cxGrid2DBTableView1F2FONE: TcxGridDBColumn
        DataBinding.FieldName = 'F2FONE'
        Options.Editing = False
      end
      object cxGrid2DBTableView1F2FAX: TcxGridDBColumn
        DataBinding.FieldName = 'F2FAX'
        Options.Editing = False
      end
      object cxGrid2DBTableView1HISTORICO: TcxGridDBColumn
        DataBinding.FieldName = 'HISTORICO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1NR_CARTA_ACORDO: TcxGridDBColumn
        DataBinding.FieldName = 'NR_CARTA_ACORDO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1DIAS_ATRASO: TcxGridDBColumn
        DataBinding.FieldName = 'DIAS_ATRASO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1DATA_MODIF: TcxGridDBColumn
        DataBinding.FieldName = 'DATA_MODIF'
        Options.Editing = False
      end
      object cxGrid2DBTableView1COD_CLASSIFICACAO: TcxGridDBColumn
        DataBinding.FieldName = 'COD_CLASSIFICACAO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1VALORJURO: TcxGridDBColumn
        DataBinding.FieldName = 'VALORJURO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1VALORMULTA: TcxGridDBColumn
        DataBinding.FieldName = 'VALORMULTA'
        Options.Editing = False
      end
      object cxGrid2DBTableView1VALORHONORARIO: TcxGridDBColumn
        DataBinding.FieldName = 'VALORHONORARIO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1FATORPARCELAMENTO: TcxGridDBColumn
        DataBinding.FieldName = 'FATORPARCELAMENTO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1ENVIOBANCO: TcxGridDBColumn
        DataBinding.FieldName = 'ENVIOBANCO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1PERC_HONORARIOS: TcxGridDBColumn
        DataBinding.FieldName = 'PERC_HONORARIOS'
        Options.Editing = False
      end
      object cxGrid2DBTableView1PERC_JUROS: TcxGridDBColumn
        DataBinding.FieldName = 'PERC_JUROS'
        Options.Editing = False
      end
      object cxGrid2DBTableView1ID_1: TcxGridDBColumn
        DataBinding.FieldName = 'ID_1'
        Options.Editing = False
      end
      object cxGrid2DBTableView1ID_2: TcxGridDBColumn
        DataBinding.FieldName = 'ID_2'
        Options.Editing = False
      end
      object cxGrid2DBTableView1ID_3: TcxGridDBColumn
        DataBinding.FieldName = 'ID_3'
        Options.Editing = False
      end
      object cxGrid2DBTableView1F1CPF: TcxGridDBColumn
        DataBinding.FieldName = 'F1CPF'
        Options.Editing = False
      end
      object cxGrid2DBTableView1F2CPF: TcxGridDBColumn
        DataBinding.FieldName = 'F2CPF'
        Options.Editing = False
      end
      object cxGrid2DBTableView1NUMERONOTA: TcxGridDBColumn
        DataBinding.FieldName = 'NUMERONOTA'
        Options.Editing = False
      end
      object cxGrid2DBTableView1NRPROCESSO: TcxGridDBColumn
        DataBinding.FieldName = 'NRPROCESSO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1PERC_JUROS_CONTRATO: TcxGridDBColumn
        DataBinding.FieldName = 'PERC_JUROS_CONTRATO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1USUARIO_LIB_DESC: TcxGridDBColumn
        DataBinding.FieldName = 'USUARIO_LIB_DESC'
        Options.Editing = False
      end
      object cxGrid2DBTableView1HORA_LIB_DESC: TcxGridDBColumn
        DataBinding.FieldName = 'HORA_LIB_DESC'
        Options.Editing = False
      end
      object cxGrid2DBTableView1VALORIOF: TcxGridDBColumn
        DataBinding.FieldName = 'VALORIOF'
        Options.Editing = False
      end
      object cxGrid2DBTableView1VALORCORRECAO: TcxGridDBColumn
        DataBinding.FieldName = 'VALORCORRECAO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1ID_4: TcxGridDBColumn
        DataBinding.FieldName = 'ID_4'
        Options.Editing = False
      end
      object cxGrid2DBTableView1GRUPO: TcxGridDBColumn
        DataBinding.FieldName = 'GRUPO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1CLASSEPRINCIPAL: TcxGridDBColumn
        DataBinding.FieldName = 'CLASSEPRINCIPAL'
        Options.Editing = False
      end
      object cxGrid2DBTableView1CLASSECONSUMO: TcxGridDBColumn
        DataBinding.FieldName = 'CLASSECONSUMO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1TIPOARRECADACAO: TcxGridDBColumn
        DataBinding.FieldName = 'TIPOARRECADACAO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1SCORE: TcxGridDBColumn
        DataBinding.FieldName = 'SCORE'
        Options.Editing = False
      end
      object cxGrid2DBTableView1DEVOLUCAO_USR: TcxGridDBColumn
        DataBinding.FieldName = 'DEVOLUCAO_USR'
        Options.Editing = False
      end
      object cxGrid2DBTableView1LIQUIDACAO_DATA: TcxGridDBColumn
        DataBinding.FieldName = 'LIQUIDACAO_DATA'
        Options.Editing = False
      end
      object cxGrid2DBTableView1LIQUIDACAO_USR: TcxGridDBColumn
        DataBinding.FieldName = 'LIQUIDACAO_USR'
        Options.Editing = False
      end
      object cxGrid2DBTableView1DTA_CAD: TcxGridDBColumn
        DataBinding.FieldName = 'DTA_CAD'
        Options.Editing = False
      end
      object cxGrid2DBTableView1USR_CAD: TcxGridDBColumn
        DataBinding.FieldName = 'USR_CAD'
        Options.Editing = False
      end
      object cxGrid2DBTableView1REGISTRO: TcxGridDBColumn
        DataBinding.FieldName = 'REGISTRO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1CREDOR: TcxGridDBColumn
        DataBinding.FieldName = 'CREDOR'
        Options.Editing = False
      end
      object cxGrid2DBTableView1ULTIMO_ACIONAMENTO: TcxGridDBColumn
        DataBinding.FieldName = 'ULTIMO_ACIONAMENTO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1OPERADOREMACAO: TcxGridDBColumn
        DataBinding.FieldName = 'OPERADOREMACAO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1DATAHORAACAO: TcxGridDBColumn
        DataBinding.FieldName = 'DATAHORAACAO'
        Options.Editing = False
      end
      object cxGrid2DBTableView1DATACOMPRA: TcxGridDBColumn
        DataBinding.FieldName = 'DATACOMPRA'
        Options.Editing = False
      end
      object cxGrid2DBTableView1DATADISPONIVEL: TcxGridDBColumn
        DataBinding.FieldName = 'DATADISPONIVEL'
        Options.Editing = False
      end
    end
    object cxGrid2Level1: TcxGridLevel
      GridView = cxGrid2DBTableView1
    end
  end
  object Button3: TButton
    Left = 172
    Top = 48
    Width = 75
    Height = 49
    Caption = 'Geral'
    TabOrder = 6
    OnClick = Button3Click
  end
  object ImportExcel1: TImportExcel
    Left = 192
    Top = 144
  end
  object OpenDialog1: TOpenDialog
    Left = 312
    Top = 136
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 544
    Top = 216
    object FDMemTable1Nome: TStringField
      FieldName = 'Nome'
      Size = 200
    end
    object FDMemTable1CPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Size = 50
    end
    object FDMemTable1tipo: TStringField
      FieldName = 'tipo'
      Size = 10
    end
    object FDMemTable1sexo: TStringField
      FieldName = 'sexo'
      Size = 10
    end
    object FDMemTable1dt_nascimento: TStringField
      FieldName = 'dt_nascimento'
    end
    object FDMemTable1doc_identidade: TStringField
      FieldName = 'doc_identidade'
    end
    object FDMemTable1email1: TStringField
      FieldName = 'email1'
      Size = 100
    end
    object FDMemTable1email2: TStringField
      FieldName = 'email2'
      Size = 100
    end
    object FDMemTable1email3: TStringField
      FieldName = 'email3'
      Size = 100
    end
    object FDMemTable1email4: TStringField
      FieldName = 'email4'
      Size = 100
    end
    object FDMemTable1telefone1: TStringField
      FieldName = 'telefone1'
      Size = 50
    end
    object FDMemTable1telefone2: TStringField
      FieldName = 'telefone2'
      Size = 50
    end
    object FDMemTable1telefone3: TStringField
      FieldName = 'telefone3'
      Size = 50
    end
    object FDMemTable1telefone4: TStringField
      FieldName = 'telefone4'
      Size = 50
    end
    object FDMemTable1telefone5: TStringField
      FieldName = 'telefone5'
      Size = 50
    end
    object FDMemTable1telefone6: TStringField
      FieldName = 'telefone6'
      Size = 50
    end
    object FDMemTable1logradouro: TStringField
      FieldName = 'logradouro'
      Size = 200
    end
    object FDMemTable1numero: TStringField
      FieldName = 'numero'
      Size = 10
    end
    object FDMemTable1complemento: TStringField
      FieldName = 'complemento'
      Size = 100
    end
    object FDMemTable1bairro: TStringField
      FieldName = 'bairro'
      Size = 100
    end
    object FDMemTable1cidade: TStringField
      FieldName = 'cidade'
      Size = 100
    end
    object FDMemTable1estado: TStringField
      FieldName = 'estado'
      Size = 10
    end
    object FDMemTable1cep: TStringField
      FieldName = 'cep'
    end
    object FDMemTable1operacao: TStringField
      FieldName = 'operacao'
    end
    object FDMemTable1dt_vencto: TStringField
      FieldName = 'dt_vencto'
    end
    object FDMemTable1valor_nominal: TFloatField
      FieldName = 'valor_nominal'
    end
    object FDMemTable1situacao: TStringField
      FieldName = 'situacao'
      Size = 10
    end
  end
  object DataSource1: TDataSource
    Left = 1088
    Top = 256
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=dbcrmvix'
      'User_Name=sistema'
      'Password=nfescan2017'
      'Server=renan-lenovo'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 424
    Top = 232
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 464
    Top = 232
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 504
    Top = 232
  end
  object QGravaDevedor: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from clientes')
    Left = 528
    Top = 160
    object QGravaDevedorCODIGO: TFMTBCDField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object QGravaDevedorNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object QGravaDevedorTIPOPESSOA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOPESSOA'
      Origin = 'TIPOPESSOA'
      Size = 1
    end
    object QGravaDevedorCPF_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
    end
    object QGravaDevedorCONTACORRENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTACORRENTE'
      Origin = 'CONTACORRENTE'
      Size = 30
    end
    object QGravaDevedorREGIAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REGIAO'
      Origin = 'REGIAO'
      Precision = 38
      Size = 0
    end
    object QGravaDevedorENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 80
    end
    object QGravaDevedorNUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 5
    end
    object QGravaDevedorSETOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SETOR'
      Origin = 'SETOR'
      Size = 25
    end
    object QGravaDevedorCIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 30
    end
    object QGravaDevedorUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object QGravaDevedorCEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 9
    end
    object QGravaDevedorFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FONE'
      Origin = 'FONE'
    end
    object QGravaDevedorFAXCEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FAXCEL'
      Origin = 'FAXCEL'
    end
    object QGravaDevedorENDENDERECO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDENDERECO_1'
      Origin = 'ENDENDERECO_1'
      Size = 80
    end
    object QGravaDevedorNUMERO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO_1'
      Origin = 'NUMERO_1'
      Size = 5
    end
    object QGravaDevedorSETOR_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SETOR_1'
      Origin = 'SETOR_1'
      Size = 25
    end
    object QGravaDevedorCIDADE_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE_1'
      Origin = 'CIDADE_1'
      Size = 30
    end
    object QGravaDevedorUF_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF_1'
      Origin = 'UF_1'
      Size = 2
    end
    object QGravaDevedorCEP_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP_1'
      Origin = 'CEP_1'
      Size = 9
    end
    object QGravaDevedorFONE_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FONE_1'
      Origin = 'FONE_1'
    end
    object QGravaDevedorFAXCEL_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FAXCEL_1'
      Origin = 'FAXCEL_1'
    end
    object QGravaDevedorCONTATO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_1'
      Origin = 'CONTATO_1'
      Size = 40
    end
    object QGravaDevedorFOTO: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object QGravaDevedorCONTATO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 40
    end
    object QGravaDevedorMCI: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MCI'
      Origin = 'MCI'
      Precision = 38
      Size = 0
    end
    object QGravaDevedorDEVOLVERBB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DEVOLVERBB'
      Origin = 'DEVOLVERBB'
      Size = 1
    end
    object QGravaDevedorREMESSABB: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REMESSABB'
      Origin = 'REMESSABB'
      Precision = 38
      Size = 0
    end
    object QGravaDevedorOBS: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'OBS'
      Origin = 'OBS'
    end
    object QGravaDevedorDTA_NASCIMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DTA_NASCIMENTO'
      Origin = 'DTA_NASCIMENTO'
    end
    object QGravaDevedorCOD_CLASSIFICACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_CLASSIFICACAO'
      Origin = 'COD_CLASSIFICACAO'
    end
    object QGravaDevedorDATA_MODIF: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_MODIF'
      Origin = 'DATA_MODIF'
    end
    object QGravaDevedorPONTO_REF1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PONTO_REF1'
      Origin = 'PONTO_REF1'
      Size = 150
    end
    object QGravaDevedorPONTO_REF2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PONTO_REF2'
      Origin = 'PONTO_REF2'
      Size = 150
    end
    object QGravaDevedorAGENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
      Size = 10
    end
    object QGravaDevedorLOCALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOCALIDADE'
      Origin = 'LOCALIDADE'
      Size = 4
    end
    object QGravaDevedorSETOR_FAT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SETOR_FAT'
      Origin = 'SETOR_FAT'
      Size = 4
    end
    object QGravaDevedorROTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ROTA'
      Origin = 'ROTA'
      Size = 15
    end
    object QGravaDevedorQUADRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'QUADRA'
      Origin = 'QUADRA'
      Size = 4
    end
    object QGravaDevedorLOTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 10
    end
    object QGravaDevedorSUBLOTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SUBLOTE'
      Origin = 'SUBLOTE'
      Size = 4
    end
    object QGravaDevedorEND_PREFERENCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'END_PREFERENCIAL'
      Origin = 'END_PREFERENCIAL'
      Size = 1
    end
    object QGravaDevedorFONE_PREFERENCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FONE_PREFERENCIAL'
      Origin = 'FONE_PREFERENCIAL'
      Size = 1
    end
    object QGravaDevedorE_MAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'E_MAIL'
      Origin = 'E_MAIL'
      Size = 150
    end
    object QGravaDevedorE_MAIL1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'E_MAIL1'
      Origin = 'E_MAIL1'
      Size = 150
    end
    object QGravaDevedorNRIDENTIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NRIDENTIDADE'
      Origin = 'NRIDENTIDADE'
      Size = 25
    end
    object QGravaDevedorSEXO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Size = 1
    end
    object QGravaDevedorLOCAL_TRABALHO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOCAL_TRABALHO'
      Origin = 'LOCAL_TRABALHO'
      Size = 50
    end
    object QGravaDevedorCARGO_TRABALHO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CARGO_TRABALHO'
      Origin = 'CARGO_TRABALHO'
      Size = 50
    end
    object QGravaDevedorSALARIO_TRABALHO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SALARIO_TRABALHO'
      Origin = 'SALARIO_TRABALHO'
      Precision = 12
      Size = 6
    end
    object QGravaDevedorNATURALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NATURALIDADE'
      Origin = 'NATURALIDADE'
      Size = 50
    end
    object QGravaDevedorESTADOCIVIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
      Size = 30
    end
    object QGravaDevedorSCORE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SCORE'
      Origin = 'SCORE'
      Precision = 38
      Size = 0
    end
    object QGravaDevedorBEHAVIOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BEHAVIOR'
      Origin = 'BEHAVIOR'
      Precision = 38
      Size = 0
    end
    object QGravaDevedorMOTIVOINADIMPLENCIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MOTIVOINADIMPLENCIA'
      Origin = 'MOTIVOINADIMPLENCIA'
    end
    object QGravaDevedorDTA_CAD: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DTA_CAD'
      Origin = 'DTA_CAD'
    end
    object QGravaDevedorUSR_CAD: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'USR_CAD'
      Origin = 'USR_CAD'
      Precision = 38
      Size = 0
    end
    object QGravaDevedorMOTIVORETORNO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MOTIVORETORNO'
      Origin = 'MOTIVORETORNO'
      Precision = 38
      Size = 0
    end
    object QGravaDevedorCODIGO_EXTERNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_EXTERNO'
      Origin = 'CODIGO_EXTERNO'
      Size = 30
    end
    object QGravaDevedorSCORE1: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SCORE1'
      Origin = 'SCORE1'
      Precision = 38
      Size = 0
    end
    object QGravaDevedorORIGEMDOSDADOS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORIGEMDOSDADOS'
      Origin = 'ORIGEMDOSDADOS'
      Size = 100
    end
    object QGravaDevedorCOLUMN2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COLUMN2'
      Origin = 'COLUMN2'
      Size = 100
    end
    object QGravaDevedorCOD_BANCO_COMISSAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_BANCO_COMISSAO'
      Origin = 'COD_BANCO_COMISSAO'
    end
  end
  object mtDevedor: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 1040
    Top = 256
    object mtDevedorNome: TStringField
      FieldName = 'Nome'
      Size = 200
    end
    object mtDevedorCPFCNPJ: TStringField
      FieldName = 'CPFCNPJ'
      Size = 50
    end
    object mtDevedortipo: TStringField
      FieldName = 'tipo'
      Size = 10
    end
    object mtDevedorsexo: TStringField
      FieldName = 'sexo'
      Size = 10
    end
    object mtDevedordt_nascimento: TStringField
      FieldName = 'dt_nascimento'
    end
    object mtDevedordoc_identidade: TStringField
      FieldName = 'doc_identidade'
    end
    object mtDevedoremail1: TStringField
      FieldName = 'email1'
      Size = 100
    end
    object mtDevedoremail2: TStringField
      FieldName = 'email2'
      Size = 100
    end
    object mtDevedoremail3: TStringField
      FieldName = 'email3'
      Size = 100
    end
    object mtDevedoremail4: TStringField
      FieldName = 'email4'
      Size = 100
    end
    object mtDevedortelefone1: TStringField
      FieldName = 'telefone1'
      Size = 50
    end
    object mtDevedortelefone2: TStringField
      FieldName = 'telefone2'
      Size = 50
    end
    object mtDevedortelefone3: TStringField
      FieldName = 'telefone3'
      Size = 50
    end
    object mtDevedortelefone4: TStringField
      FieldName = 'telefone4'
      Size = 50
    end
    object mtDevedortelefone5: TStringField
      FieldName = 'telefone5'
      Size = 50
    end
    object mtDevedortelefone6: TStringField
      FieldName = 'telefone6'
      Size = 50
    end
    object mtDevedorlogradouro: TStringField
      FieldName = 'logradouro'
      Size = 200
    end
    object mtDevedornumero: TStringField
      FieldName = 'numero'
      Size = 10
    end
    object mtDevedorcomplemento: TStringField
      FieldName = 'complemento'
      Size = 100
    end
    object mtDevedorbairro: TStringField
      FieldName = 'bairro'
      Size = 100
    end
    object mtDevedorcidade: TStringField
      FieldName = 'cidade'
      Size = 100
    end
    object mtDevedorestado: TStringField
      FieldName = 'estado'
      Size = 10
    end
    object mtDevedorcep: TStringField
      FieldName = 'cep'
    end
  end
  object QMax: TFDQuery
    Connection = Conexao
    Left = 376
    Top = 224
  end
  object dsOperacao: TDataSource
    Left = 536
    Top = 312
  end
  object mtOperacao: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 504
    Top = 312
    object mtOperacaoCLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 100
    end
    object mtOperacaoNROPERACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NROPERACAO'
      Origin = 'NROPERACAO'
    end
    object mtOperacaoREMESSA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMESSA'
      Origin = 'REMESSA'
      Size = 100
    end
    object mtOperacaoMCI: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MCI'
      Origin = 'MCI'
      Precision = 38
      Size = 0
    end
    object mtOperacaoCOBRADOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
      Precision = 38
      Size = 0
    end
    object mtOperacaoSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = '`STATUS`'
      Size = 1
    end
    object mtOperacaoBANCO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO'
      Origin = 'BANCO'
      Precision = 38
      Size = 0
    end
    object mtOperacaoAGENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
      Size = 10
    end
    object mtOperacaoCONTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA'
      Origin = 'CONTA'
      Size = 30
    end
    object mtOperacaoNRFICHA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NRFICHA'
      Origin = 'NRFICHA'
      Precision = 12
      Size = 6
    end
    object mtOperacaoDEVOLVER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DEVOLVER'
      Origin = 'DEVOLVER'
      Size = 1
    end
    object mtOperacaoMOTIVO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MOTIVO'
      Origin = 'MOTIVO'
      Precision = 38
      Size = 0
    end
    object mtOperacaoDEVOLVERBB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DEVOLVERBB'
      Origin = 'DEVOLVERBB'
      Size = 1
    end
    object mtOperacaoMOTIVOBB: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MOTIVOBB'
      Origin = 'MOTIVOBB'
      Precision = 38
      Size = 0
    end
    object mtOperacaoREMESSABB: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REMESSABB'
      Origin = 'REMESSABB'
      Precision = 38
      Size = 0
    end
    object mtOperacaoCODPRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Size = 10
    end
    object mtOperacaoMODALIDADEBB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MODALIDADEBB'
      Origin = 'MODALIDADEBB'
      Size = 4
    end
    object mtOperacaoDATAGRAV: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATAGRAV'
      Origin = 'DATAGRAV'
      Size = 30
    end
    object mtOperacaoDATAVENCTO: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DATAVENCTO'
      Origin = 'DATAVENCTO'
    end
    object mtOperacaoDATADEVOLUCAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATADEVOLUCAO'
      Origin = 'DATADEVOLUCAO'
      Size = 30
    end
    object mtOperacaoVALORDIVIDA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORDIVIDA'
      Origin = 'VALORDIVIDA'
      Precision = 12
      Size = 6
    end
    object mtOperacaoVALORMINIMO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORMINIMO'
      Origin = 'VALORMINIMO'
      Precision = 12
      Size = 6
    end
    object mtOperacaoVALORVENCIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORVENCIDO'
      Origin = 'VALORVENCIDO'
      Precision = 12
      Size = 6
    end
    object mtOperacaoVALORRECEBIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORRECEBIDO'
      Origin = 'VALORRECEBIDO'
      Precision = 12
      Size = 6
    end
    object mtOperacaoVALORNOMINAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORNOMINAL'
      Origin = 'VALORNOMINAL'
      Precision = 12
      Size = 6
    end
    object mtOperacaoVALORABATIMENTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORABATIMENTO'
      Origin = 'VALORABATIMENTO'
      Precision = 12
      Size = 6
    end
    object mtOperacaoVALORPROTESTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORPROTESTO'
      Origin = 'VALORPROTESTO'
      Precision = 12
      Size = 6
    end
    object mtOperacaoPERC_DESCONTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_DESCONTO'
      Origin = 'PERC_DESCONTO'
      Precision = 12
      Size = 6
    end
    object mtOperacaoPERC_MULTA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_MULTA'
      Origin = 'PERC_MULTA'
      Precision = 12
      Size = 6
    end
    object mtOperacaoPERC_ENCARGO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ENCARGO'
      Origin = 'PERC_ENCARGO'
      Precision = 12
      Size = 6
    end
    object mtOperacaoAGENCIANOVA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIANOVA'
      Origin = 'AGENCIANOVA'
      Size = 10
    end
    object mtOperacaoOPERACAONOVA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPERACAONOVA'
      Origin = 'OPERACAONOVA'
    end
    object mtOperacaoDATACELEBRACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATACELEBRACAO'
      Origin = 'DATACELEBRACAO'
      Size = 30
    end
    object mtOperacaoMOTIVORETOMADA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MOTIVORETOMADA'
      Origin = 'MOTIVORETOMADA'
      Size = 30
    end
    object mtOperacaoDATAREC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATAREC'
      Origin = 'DATAREC'
      Size = 30
    end
    object mtOperacaoDATAFIMTERCERIZACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATAFIMTERCERIZACAO'
      Origin = 'DATAFIMTERCERIZACAO'
      Size = 30
    end
    object mtOperacaoNRTERCERIZACAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NRTERCERIZACAO'
      Origin = 'NRTERCERIZACAO'
      Precision = 38
      Size = 0
    end
    object mtOperacaoTIPOOPERACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOOPERACAO'
      Origin = 'TIPOOPERACAO'
      Size = 40
    end
    object mtOperacaoATUALIZADOATE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATUALIZADOATE'
      Origin = 'ATUALIZADOATE'
      Size = 30
    end
    object mtOperacaoFORMAATUALIZACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORMAATUALIZACAO'
      Origin = 'FORMAATUALIZACAO'
      Size = 255
    end
    object mtOperacaoCONDNEGOCIAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONDNEGOCIAIS'
      Origin = 'CONDNEGOCIAIS'
      Size = 255
    end
    object mtOperacaoGARANTIASREAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GARANTIASREAIS'
      Origin = 'GARANTIASREAIS'
      Size = 255
    end
    object mtOperacaoPRAZOPERMPARC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRAZOPERMPARC'
      Origin = 'PRAZOPERMPARC'
      Size = 25
    end
    object mtOperacaoTIPOPAGTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOPAGTO'
      Origin = 'TIPOPAGTO'
      Size = 1
    end
    object mtOperacaoF1NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1NOME'
      Origin = 'F1NOME'
      Size = 40
    end
    object mtOperacaoF1ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1ENDERECO'
      Origin = 'F1ENDERECO'
      Size = 40
    end
    object mtOperacaoF1BAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1BAIRRO'
      Origin = 'F1BAIRRO'
    end
    object mtOperacaoF1CIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1CIDADE'
      Origin = 'F1CIDADE'
      Size = 25
    end
    object mtOperacaoF1UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1UF'
      Origin = 'F1UF'
      Size = 2
    end
    object mtOperacaoF1CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1CEP'
      Origin = 'F1CEP'
      Size = 9
    end
    object mtOperacaoF1FONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1FONE'
      Origin = 'F1FONE'
      Size = 14
    end
    object mtOperacaoF1FAX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1FAX'
      Origin = 'F1FAX'
      Size = 14
    end
    object mtOperacaoF2NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2NOME'
      Origin = 'F2NOME'
      Size = 40
    end
    object mtOperacaoF2ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2ENDERECO'
      Origin = 'F2ENDERECO'
      Size = 40
    end
    object mtOperacaoF2BAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2BAIRRO'
      Origin = 'F2BAIRRO'
    end
    object mtOperacaoF2CIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2CIDADE'
      Origin = 'F2CIDADE'
      Size = 25
    end
    object mtOperacaoF2UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2UF'
      Origin = 'F2UF'
      Size = 2
    end
    object mtOperacaoF2CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2CEP'
      Origin = 'F2CEP'
      Size = 9
    end
    object mtOperacaoF2FONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2FONE'
      Origin = 'F2FONE'
      Size = 14
    end
    object mtOperacaoF2FAX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2FAX'
      Origin = 'F2FAX'
      Size = 14
    end
    object mtOperacaoHISTORICO: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
    end
    object mtOperacaoNR_CARTA_ACORDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NR_CARTA_ACORDO'
      Origin = 'NR_CARTA_ACORDO'
      Precision = 12
      Size = 6
    end
    object mtOperacaoDIAS_ATRASO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DIAS_ATRASO'
      Origin = 'DIAS_ATRASO'
      Precision = 38
      Size = 0
    end
    object mtOperacaoDATA_MODIF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_MODIF'
      Origin = 'DATA_MODIF'
    end
    object mtOperacaoCOD_CLASSIFICACAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'COD_CLASSIFICACAO'
      Origin = 'COD_CLASSIFICACAO'
      Precision = 38
      Size = 0
    end
    object mtOperacaoVALORJURO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORJURO'
      Origin = 'VALORJURO'
      Precision = 12
      Size = 6
    end
    object mtOperacaoVALORMULTA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORMULTA'
      Origin = 'VALORMULTA'
      Precision = 12
      Size = 6
    end
    object mtOperacaoVALORHONORARIO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORHONORARIO'
      Origin = 'VALORHONORARIO'
      Precision = 12
      Size = 6
    end
    object mtOperacaoFATORPARCELAMENTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'FATORPARCELAMENTO'
      Origin = 'FATORPARCELAMENTO'
      Precision = 15
      Size = 5
    end
    object mtOperacaoENVIOBANCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENVIOBANCO'
      Origin = 'ENVIOBANCO'
      Size = 1
    end
    object mtOperacaoPERC_HONORARIOS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_HONORARIOS'
      Origin = 'PERC_HONORARIOS'
      Precision = 12
      Size = 6
    end
    object mtOperacaoPERC_JUROS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_JUROS'
      Origin = 'PERC_JUROS'
      Precision = 12
      Size = 6
    end
    object mtOperacaoID_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_1'
      Origin = 'ID_1'
      Size = 30
    end
    object mtOperacaoID_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_2'
      Origin = 'ID_2'
      Size = 30
    end
    object mtOperacaoID_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_3'
      Origin = 'ID_3'
      Size = 30
    end
    object mtOperacaoF1CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1CPF'
      Origin = 'F1CPF'
      Size = 11
    end
    object mtOperacaoF2CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2CPF'
      Origin = 'F2CPF'
      Size = 11
    end
    object mtOperacaoNUMERONOTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERONOTA'
      Origin = 'NUMERONOTA'
    end
    object mtOperacaoNRPROCESSO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NRPROCESSO'
      Origin = 'NRPROCESSO'
    end
    object mtOperacaoPERC_JUROS_CONTRATO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_JUROS_CONTRATO'
      Origin = 'PERC_JUROS_CONTRATO'
      Precision = 12
      Size = 6
    end
    object mtOperacaoUSUARIO_LIB_DESC: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO_LIB_DESC'
      Origin = 'USUARIO_LIB_DESC'
      Precision = 38
      Size = 0
    end
    object mtOperacaoHORA_LIB_DESC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'HORA_LIB_DESC'
      Origin = 'HORA_LIB_DESC'
      Size = 30
    end
    object mtOperacaoVALORIOF: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORIOF'
      Origin = 'VALORIOF'
      Precision = 12
      Size = 6
    end
    object mtOperacaoVALORCORRECAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORCORRECAO'
      Origin = 'VALORCORRECAO'
      Precision = 12
      Size = 6
    end
    object mtOperacaoID_4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_4'
      Origin = 'ID_4'
      Size = 30
    end
    object mtOperacaoGRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Size = 10
    end
    object mtOperacaoCLASSEPRINCIPAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLASSEPRINCIPAL'
      Origin = 'CLASSEPRINCIPAL'
      Size = 5
    end
    object mtOperacaoCLASSECONSUMO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLASSECONSUMO'
      Origin = 'CLASSECONSUMO'
      Size = 5
    end
    object mtOperacaoTIPOARRECADACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOARRECADACAO'
      Origin = 'TIPOARRECADACAO'
      Size = 5
    end
    object mtOperacaoSCORE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SCORE'
      Origin = 'SCORE'
      Size = 10
    end
    object mtOperacaoDEVOLUCAO_USR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DEVOLUCAO_USR'
      Origin = 'DEVOLUCAO_USR'
      Precision = 38
      Size = 0
    end
    object mtOperacaoLIQUIDACAO_DATA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LIQUIDACAO_DATA'
      Origin = 'LIQUIDACAO_DATA'
      Size = 30
    end
    object mtOperacaoLIQUIDACAO_USR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'LIQUIDACAO_USR'
      Origin = 'LIQUIDACAO_USR'
      Precision = 38
      Size = 0
    end
    object mtOperacaoDTA_CAD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DTA_CAD'
      Origin = 'DTA_CAD'
      Size = 30
    end
    object mtOperacaoUSR_CAD: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'USR_CAD'
      Origin = 'USR_CAD'
      Precision = 38
      Size = 0
    end
    object mtOperacaoREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object mtOperacaoCREDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CREDOR'
      Origin = 'CREDOR'
      Size = 100
    end
    object mtOperacaoULTIMO_ACIONAMENTO: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ULTIMO_ACIONAMENTO'
      Origin = 'ULTIMO_ACIONAMENTO'
    end
    object mtOperacaoOPERADOREMACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPERADOREMACAO'
      Origin = 'OPERADOREMACAO'
      Size = 100
    end
    object mtOperacaoDATAHORAACAO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATAHORAACAO'
      Origin = 'DATAHORAACAO'
    end
    object mtOperacaoDATACOMPRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATACOMPRA'
      Origin = 'DATACOMPRA'
    end
    object mtOperacaoDATADISPONIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATADISPONIVEL'
      Origin = 'DATADISPONIVEL'
    end
  end
  object QOperacao: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from operacoes limit 0')
    Left = 392
    Top = 328
    object QOperacaoCLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Size = 100
    end
    object QOperacaoNROPERACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NROPERACAO'
      Origin = 'NROPERACAO'
    end
    object QOperacaoREMESSA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMESSA'
      Origin = 'REMESSA'
      Size = 100
    end
    object QOperacaoMCI: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MCI'
      Origin = 'MCI'
      Precision = 38
      Size = 0
    end
    object QOperacaoCOBRADOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
      Precision = 38
      Size = 0
    end
    object QOperacaoSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = '`STATUS`'
      Size = 1
    end
    object QOperacaoBANCO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO'
      Origin = 'BANCO'
      Precision = 38
      Size = 0
    end
    object QOperacaoAGENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
      Size = 10
    end
    object QOperacaoCONTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA'
      Origin = 'CONTA'
      Size = 30
    end
    object QOperacaoNRFICHA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NRFICHA'
      Origin = 'NRFICHA'
      Precision = 12
      Size = 6
    end
    object QOperacaoDEVOLVER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DEVOLVER'
      Origin = 'DEVOLVER'
      Size = 1
    end
    object QOperacaoMOTIVO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MOTIVO'
      Origin = 'MOTIVO'
      Precision = 38
      Size = 0
    end
    object QOperacaoDEVOLVERBB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DEVOLVERBB'
      Origin = 'DEVOLVERBB'
      Size = 1
    end
    object QOperacaoMOTIVOBB: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MOTIVOBB'
      Origin = 'MOTIVOBB'
      Precision = 38
      Size = 0
    end
    object QOperacaoREMESSABB: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REMESSABB'
      Origin = 'REMESSABB'
      Precision = 38
      Size = 0
    end
    object QOperacaoCODPRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Size = 10
    end
    object QOperacaoMODALIDADEBB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MODALIDADEBB'
      Origin = 'MODALIDADEBB'
      Size = 4
    end
    object QOperacaoDATAGRAV: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATAGRAV'
      Origin = 'DATAGRAV'
      Size = 30
    end
    object QOperacaoDATADEVOLUCAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATADEVOLUCAO'
      Origin = 'DATADEVOLUCAO'
      Size = 30
    end
    object QOperacaoVALORDIVIDA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORDIVIDA'
      Origin = 'VALORDIVIDA'
      Precision = 12
      Size = 6
    end
    object QOperacaoVALORMINIMO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORMINIMO'
      Origin = 'VALORMINIMO'
      Precision = 12
      Size = 6
    end
    object QOperacaoVALORVENCIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORVENCIDO'
      Origin = 'VALORVENCIDO'
      Precision = 12
      Size = 6
    end
    object QOperacaoVALORRECEBIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORRECEBIDO'
      Origin = 'VALORRECEBIDO'
      Precision = 12
      Size = 6
    end
    object QOperacaoVALORNOMINAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORNOMINAL'
      Origin = 'VALORNOMINAL'
      Precision = 12
      Size = 6
    end
    object QOperacaoVALORABATIMENTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORABATIMENTO'
      Origin = 'VALORABATIMENTO'
      Precision = 12
      Size = 6
    end
    object QOperacaoVALORPROTESTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORPROTESTO'
      Origin = 'VALORPROTESTO'
      Precision = 12
      Size = 6
    end
    object QOperacaoPERC_DESCONTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_DESCONTO'
      Origin = 'PERC_DESCONTO'
      Precision = 12
      Size = 6
    end
    object QOperacaoPERC_MULTA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_MULTA'
      Origin = 'PERC_MULTA'
      Precision = 12
      Size = 6
    end
    object QOperacaoPERC_ENCARGO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_ENCARGO'
      Origin = 'PERC_ENCARGO'
      Precision = 12
      Size = 6
    end
    object QOperacaoAGENCIANOVA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIANOVA'
      Origin = 'AGENCIANOVA'
      Size = 10
    end
    object QOperacaoOPERACAONOVA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPERACAONOVA'
      Origin = 'OPERACAONOVA'
    end
    object QOperacaoDATACELEBRACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATACELEBRACAO'
      Origin = 'DATACELEBRACAO'
      Size = 30
    end
    object QOperacaoMOTIVORETOMADA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MOTIVORETOMADA'
      Origin = 'MOTIVORETOMADA'
      Size = 30
    end
    object QOperacaoDATAREC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATAREC'
      Origin = 'DATAREC'
      Size = 30
    end
    object QOperacaoDATAFIMTERCERIZACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATAFIMTERCERIZACAO'
      Origin = 'DATAFIMTERCERIZACAO'
      Size = 30
    end
    object QOperacaoNRTERCERIZACAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NRTERCERIZACAO'
      Origin = 'NRTERCERIZACAO'
      Precision = 38
      Size = 0
    end
    object QOperacaoTIPOOPERACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOOPERACAO'
      Origin = 'TIPOOPERACAO'
      Size = 40
    end
    object QOperacaoATUALIZADOATE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATUALIZADOATE'
      Origin = 'ATUALIZADOATE'
      Size = 30
    end
    object QOperacaoFORMAATUALIZACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORMAATUALIZACAO'
      Origin = 'FORMAATUALIZACAO'
      Size = 255
    end
    object QOperacaoCONDNEGOCIAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONDNEGOCIAIS'
      Origin = 'CONDNEGOCIAIS'
      Size = 255
    end
    object QOperacaoGARANTIASREAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GARANTIASREAIS'
      Origin = 'GARANTIASREAIS'
      Size = 255
    end
    object QOperacaoPRAZOPERMPARC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRAZOPERMPARC'
      Origin = 'PRAZOPERMPARC'
      Size = 25
    end
    object QOperacaoTIPOPAGTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOPAGTO'
      Origin = 'TIPOPAGTO'
      Size = 1
    end
    object QOperacaoF1NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1NOME'
      Origin = 'F1NOME'
      Size = 40
    end
    object QOperacaoF1ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1ENDERECO'
      Origin = 'F1ENDERECO'
      Size = 40
    end
    object QOperacaoF1BAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1BAIRRO'
      Origin = 'F1BAIRRO'
    end
    object QOperacaoF1CIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1CIDADE'
      Origin = 'F1CIDADE'
      Size = 25
    end
    object QOperacaoF1UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1UF'
      Origin = 'F1UF'
      Size = 2
    end
    object QOperacaoF1CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1CEP'
      Origin = 'F1CEP'
      Size = 9
    end
    object QOperacaoF1FONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1FONE'
      Origin = 'F1FONE'
      Size = 14
    end
    object QOperacaoF1FAX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1FAX'
      Origin = 'F1FAX'
      Size = 14
    end
    object QOperacaoF2NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2NOME'
      Origin = 'F2NOME'
      Size = 40
    end
    object QOperacaoF2ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2ENDERECO'
      Origin = 'F2ENDERECO'
      Size = 40
    end
    object QOperacaoF2BAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2BAIRRO'
      Origin = 'F2BAIRRO'
    end
    object QOperacaoF2CIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2CIDADE'
      Origin = 'F2CIDADE'
      Size = 25
    end
    object QOperacaoF2UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2UF'
      Origin = 'F2UF'
      Size = 2
    end
    object QOperacaoF2CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2CEP'
      Origin = 'F2CEP'
      Size = 9
    end
    object QOperacaoF2FONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2FONE'
      Origin = 'F2FONE'
      Size = 14
    end
    object QOperacaoF2FAX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2FAX'
      Origin = 'F2FAX'
      Size = 14
    end
    object QOperacaoHISTORICO: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'HISTORICO'
      Origin = 'HISTORICO'
    end
    object QOperacaoNR_CARTA_ACORDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NR_CARTA_ACORDO'
      Origin = 'NR_CARTA_ACORDO'
      Precision = 12
      Size = 6
    end
    object QOperacaoDIAS_ATRASO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DIAS_ATRASO'
      Origin = 'DIAS_ATRASO'
      Precision = 38
      Size = 0
    end
    object QOperacaoDATA_MODIF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_MODIF'
      Origin = 'DATA_MODIF'
    end
    object QOperacaoCOD_CLASSIFICACAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'COD_CLASSIFICACAO'
      Origin = 'COD_CLASSIFICACAO'
      Precision = 38
      Size = 0
    end
    object QOperacaoVALORJURO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORJURO'
      Origin = 'VALORJURO'
      Precision = 12
      Size = 6
    end
    object QOperacaoVALORMULTA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORMULTA'
      Origin = 'VALORMULTA'
      Precision = 12
      Size = 6
    end
    object QOperacaoVALORHONORARIO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORHONORARIO'
      Origin = 'VALORHONORARIO'
      Precision = 12
      Size = 6
    end
    object QOperacaoFATORPARCELAMENTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'FATORPARCELAMENTO'
      Origin = 'FATORPARCELAMENTO'
      Precision = 15
      Size = 5
    end
    object QOperacaoENVIOBANCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENVIOBANCO'
      Origin = 'ENVIOBANCO'
      Size = 1
    end
    object QOperacaoPERC_HONORARIOS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_HONORARIOS'
      Origin = 'PERC_HONORARIOS'
      Precision = 12
      Size = 6
    end
    object QOperacaoPERC_JUROS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_JUROS'
      Origin = 'PERC_JUROS'
      Precision = 12
      Size = 6
    end
    object QOperacaoID_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_1'
      Origin = 'ID_1'
      Size = 30
    end
    object QOperacaoID_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_2'
      Origin = 'ID_2'
      Size = 30
    end
    object QOperacaoID_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_3'
      Origin = 'ID_3'
      Size = 30
    end
    object QOperacaoF1CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F1CPF'
      Origin = 'F1CPF'
      Size = 11
    end
    object QOperacaoF2CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'F2CPF'
      Origin = 'F2CPF'
      Size = 11
    end
    object QOperacaoNUMERONOTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERONOTA'
      Origin = 'NUMERONOTA'
    end
    object QOperacaoNRPROCESSO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NRPROCESSO'
      Origin = 'NRPROCESSO'
    end
    object QOperacaoPERC_JUROS_CONTRATO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_JUROS_CONTRATO'
      Origin = 'PERC_JUROS_CONTRATO'
      Precision = 12
      Size = 6
    end
    object QOperacaoUSUARIO_LIB_DESC: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO_LIB_DESC'
      Origin = 'USUARIO_LIB_DESC'
      Precision = 38
      Size = 0
    end
    object QOperacaoHORA_LIB_DESC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'HORA_LIB_DESC'
      Origin = 'HORA_LIB_DESC'
      Size = 30
    end
    object QOperacaoVALORIOF: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORIOF'
      Origin = 'VALORIOF'
      Precision = 12
      Size = 6
    end
    object QOperacaoVALORCORRECAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORCORRECAO'
      Origin = 'VALORCORRECAO'
      Precision = 12
      Size = 6
    end
    object QOperacaoID_4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_4'
      Origin = 'ID_4'
      Size = 30
    end
    object QOperacaoGRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Size = 10
    end
    object QOperacaoCLASSEPRINCIPAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLASSEPRINCIPAL'
      Origin = 'CLASSEPRINCIPAL'
      Size = 5
    end
    object QOperacaoCLASSECONSUMO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLASSECONSUMO'
      Origin = 'CLASSECONSUMO'
      Size = 5
    end
    object QOperacaoTIPOARRECADACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOARRECADACAO'
      Origin = 'TIPOARRECADACAO'
      Size = 5
    end
    object QOperacaoSCORE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SCORE'
      Origin = 'SCORE'
      Size = 10
    end
    object QOperacaoDEVOLUCAO_USR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DEVOLUCAO_USR'
      Origin = 'DEVOLUCAO_USR'
      Precision = 38
      Size = 0
    end
    object QOperacaoLIQUIDACAO_DATA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LIQUIDACAO_DATA'
      Origin = 'LIQUIDACAO_DATA'
      Size = 30
    end
    object QOperacaoLIQUIDACAO_USR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'LIQUIDACAO_USR'
      Origin = 'LIQUIDACAO_USR'
      Precision = 38
      Size = 0
    end
    object QOperacaoDTA_CAD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DTA_CAD'
      Origin = 'DTA_CAD'
      Size = 30
    end
    object QOperacaoUSR_CAD: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'USR_CAD'
      Origin = 'USR_CAD'
      Precision = 38
      Size = 0
    end
    object QOperacaoREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QOperacaoCREDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CREDOR'
      Origin = 'CREDOR'
      Size = 100
    end
    object QOperacaoULTIMO_ACIONAMENTO: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ULTIMO_ACIONAMENTO'
      Origin = 'ULTIMO_ACIONAMENTO'
    end
    object QOperacaoOPERADOREMACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPERADOREMACAO'
      Origin = 'OPERADOREMACAO'
      Size = 100
    end
    object QOperacaoDATAHORAACAO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATAHORAACAO'
      Origin = 'DATAHORAACAO'
    end
    object QOperacaoDATACOMPRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATACOMPRA'
      Origin = 'DATACOMPRA'
    end
    object QOperacaoDATADISPONIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATADISPONIVEL'
      Origin = 'DATADISPONIVEL'
    end
    object QOperacaoDATAVENCTO: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DATAVENCTO'
      Origin = 'DATAVENCTO'
    end
  end
  object QVerifica: TFDQuery
    Connection = Conexao
    Left = 256
    Top = 168
  end
  object QParcela: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT '
      '  * '
      'FROM'
      '  parcelas '
      'LIMIT 0 ')
    Left = 312
    Top = 224
    object QParcelaCLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
    end
    object QParcelaNROPERACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NROPERACAO'
      Origin = 'NROPERACAO'
    end
    object QParcelaREMESSA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REMESSA'
      Origin = 'REMESSA'
      Size = 100
    end
    object QParcelaDATAVENCTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATAVENCTO'
      Origin = 'DATAVENCTO'
      Size = 30
    end
    object QParcelaAUT_: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'AUT_'
      Origin = 'AUT_'
      Precision = 12
      Size = 6
    end
    object QParcelaNRLINHAC: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NRLINHAC'
      Origin = 'NRLINHAC'
      Precision = 38
      Size = 0
    end
    object QParcelaNRLINHAR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NRLINHAR'
      Origin = 'NRLINHAR'
      Precision = 38
      Size = 0
    end
    object QParcelaNRREM: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NRREM'
      Origin = 'NRREM'
      Precision = 38
      Size = 0
    end
    object QParcelaDATAREFERENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATAREFERENCIA'
      Origin = 'DATAREFERENCIA'
      Size = 30
    end
    object QParcelaSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = '`STATUS`'
      Size = 1
    end
    object QParcelaVALORPREVISTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORPREVISTO'
      Origin = 'VALORPREVISTO'
      Precision = 12
      Size = 6
    end
    object QParcelaVALORREALIZADO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORREALIZADO'
      Origin = 'VALORREALIZADO'
      Precision = 12
      Size = 6
    end
    object QParcelaVALORJUROS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORJUROS'
      Origin = 'VALORJUROS'
      Precision = 12
      Size = 6
    end
    object QParcelaVALORMULTA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORMULTA'
      Origin = 'VALORMULTA'
      Precision = 12
      Size = 6
    end
    object QParcelaVALORDESCONTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORDESCONTO'
      Origin = 'VALORDESCONTO'
      Precision = 12
      Size = 6
    end
    object QParcelaPAGOCOB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAGOCOB'
      Origin = 'PAGOCOB'
      Size = 1
    end
    object QParcelaVALORPAGTOCOB: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORPAGTOCOB'
      Origin = 'VALORPAGTOCOB'
      Precision = 12
      Size = 6
    end
    object QParcelaRECBANCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RECBANCO'
      Origin = 'RECBANCO'
      Size = 1
    end
    object QParcelaCOMIEMP: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'COMIEMP'
      Origin = 'COMIEMP'
      Precision = 12
      Size = 6
    end
    object QParcelaAGENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
      Size = 10
    end
    object QParcelaNUMERO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Precision = 38
      Size = 0
    end
    object QParcelaNUMERONOTA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERONOTA'
      Origin = 'NUMERONOTA'
      Precision = 38
      Size = 0
    end
    object QParcelaRESUMO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'RESUMO'
      Origin = 'RESUMO'
      Precision = 12
      Size = 6
    end
    object QParcelaCOBRADOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
      Precision = 38
      Size = 0
    end
    object QParcelaBOL_DATA_EMISSAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BOL_DATA_EMISSAO'
      Origin = 'BOL_DATA_EMISSAO'
      Size = 30
    end
    object QParcelaBOL_DATA_ENVIO_REM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BOL_DATA_ENVIO_REM'
      Origin = 'BOL_DATA_ENVIO_REM'
      Size = 30
    end
    object QParcelaBOL_REMESSA_ENVIO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BOL_REMESSA_ENVIO'
      Origin = 'BOL_REMESSA_ENVIO'
      Precision = 12
      Size = 6
    end
    object QParcelaBOL_NUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BOL_NUMERO'
      Origin = 'BOL_NUMERO'
      Size = 15
    end
    object QParcelaBOL_NOSSO_NUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BOL_NOSSO_NUMERO'
      Origin = 'BOL_NOSSO_NUMERO'
    end
    object QParcelaBOL_SITUACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BOL_SITUACAO'
      Origin = 'BOL_SITUACAO'
      Size = 1
    end
    object QParcelaBOL_DESC_SITUACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BOL_DESC_SITUACAO'
      Origin = 'BOL_DESC_SITUACAO'
      Size = 200
    end
    object QParcelaBOL_DATA_CANCELAMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BOL_DATA_CANCELAMENTO'
      Origin = 'BOL_DATA_CANCELAMENTO'
      Size = 30
    end
    object QParcelaBOL_DATA_ATU: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BOL_DATA_ATU'
      Origin = 'BOL_DATA_ATU'
      Size = 30
    end
    object QParcelaDATARECEBIMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATARECEBIMENTO'
      Origin = 'DATARECEBIMENTO'
      Size = 30
    end
    object QParcelaVALORATRAZO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORATRAZO'
      Origin = 'VALORATRAZO'
      Precision = 12
      Size = 6
    end
    object QParcelaVALORHONORARIO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORHONORARIO'
      Origin = 'VALORHONORARIO'
      Precision = 12
      Size = 6
    end
    object QParcelaVALORPROTESTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORPROTESTO'
      Origin = 'VALORPROTESTO'
      Precision = 12
      Size = 6
    end
    object QParcelaBOL_NR_DOCUMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BOL_NR_DOCUMENTO'
      Origin = 'BOL_NR_DOCUMENTO'
    end
    object QParcelaVALORORIGINAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORORIGINAL'
      Origin = 'VALORORIGINAL'
      Precision = 12
      Size = 6
    end
    object QParcelaOPERACAONOVA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPERACAONOVA'
      Origin = 'OPERACAONOVA'
    end
    object QParcelaDATA_MODIF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_MODIF'
      Origin = 'DATA_MODIF'
      Size = 30
    end
    object QParcelaDATAFIMTERCEIRIZACAO: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DATAFIMTERCEIRIZACAO'
      Origin = 'DATAFIMTERCEIRIZACAO'
    end
    object QParcelaUSUARIO_REC: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO_REC'
      Origin = 'USUARIO_REC'
      Precision = 38
      Size = 0
    end
    object QParcelaDATARESUMO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATARESUMO'
      Origin = 'DATARESUMO'
      Size = 30
    end
    object QParcelaREC_DATA_EMISSAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REC_DATA_EMISSAO'
      Origin = 'REC_DATA_EMISSAO'
      Size = 30
    end
    object QParcelaBOL_LINHA_DIGITAVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BOL_LINHA_DIGITAVEL'
      Origin = 'BOL_LINHA_DIGITAVEL'
      Size = 60
    end
    object QParcelaFASE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'FASE'
      Origin = 'FASE'
      Precision = 38
      Size = 0
    end
    object QParcelaATUALIZADOATE: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ATUALIZADOATE'
      Origin = 'ATUALIZADOATE'
    end
    object QParcelaUSUARIO_REPASSE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO_REPASSE'
      Origin = 'USUARIO_REPASSE'
      Precision = 38
      Size = 0
    end
    object QParcelaDATA_REPASSE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_REPASSE'
      Origin = 'DATA_REPASSE'
      Size = 30
    end
    object QParcelaBOL_DATA_RETORNO_REM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BOL_DATA_RETORNO_REM'
      Origin = 'BOL_DATA_RETORNO_REM'
      Size = 30
    end
    object QParcelaBOL_CODBARRAS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BOL_CODBARRAS'
      Origin = 'BOL_CODBARRAS'
      Size = 60
    end
    object QParcelaNRREM50: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NRREM50'
      Origin = 'NRREM50'
      Precision = 38
      Size = 0
    end
    object QParcelaNRREM40: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NRREM40'
      Origin = 'NRREM40'
      Precision = 38
      Size = 0
    end
    object QParcelaNRREM97: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NRREM97'
      Origin = 'NRREM97'
      Precision = 38
      Size = 0
    end
    object QParcelaUSER_ID_97: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USER_ID_97'
      Origin = 'USER_ID_97'
      Size = 10
    end
    object QParcelaCOMISSAOBRUTA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAOBRUTA'
      Origin = 'COMISSAOBRUTA'
      Precision = 12
      Size = 6
    end
    object QParcelaREDUTOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REDUTOR'
      Origin = 'REDUTOR'
      Precision = 12
      Size = 6
    end
    object QParcelaCOMISSAOLIQUIDA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAOLIQUIDA'
      Origin = 'COMISSAOLIQUIDA'
      Precision = 12
      Size = 6
    end
    object QParcelaUFATUACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UFATUACAO'
      Origin = 'UFATUACAO'
      Size = 2
    end
    object QParcelaTIPOPAGAMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOPAGAMENTO'
      Origin = 'TIPOPAGAMENTO'
      Size = 1
    end
    object QParcelaPAGOATE30: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAGOATE30'
      Origin = 'PAGOATE30'
      Size = 1
    end
    object QParcelaPERFORMANCE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PERFORMANCE'
      Origin = 'PERFORMANCE'
      Precision = 12
      Size = 6
    end
    object QParcelaLOCATION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOCATION'
      Origin = 'LOCATION'
      Size = 6
    end
    object QParcelaTIPOREMUNERACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOREMUNERACAO'
      Origin = 'TIPOREMUNERACAO'
      Size = 1
    end
    object QParcelaNRREM41: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NRREM41'
      Origin = 'NRREM41'
      Precision = 38
      Size = 0
    end
    object QParcelaVALORCORRECAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORCORRECAO'
      Origin = 'VALORCORRECAO'
      Precision = 12
      Size = 6
    end
    object QParcelaCHQ_BANCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHQ_BANCO'
      Origin = 'CHQ_BANCO'
      Size = 10
    end
    object QParcelaCHQ_AGENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHQ_AGENCIA'
      Origin = 'CHQ_AGENCIA'
      Size = 10
    end
    object QParcelaCHQ_CONTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHQ_CONTA'
      Origin = 'CHQ_CONTA'
      Size = 10
    end
    object QParcelaCHQ_NUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHQ_NUMERO'
      Origin = 'CHQ_NUMERO'
      Size = 10
    end
    object QParcelaNRREM51: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NRREM51'
      Origin = 'NRREM51'
      Precision = 38
      Size = 0
    end
    object QParcelaNRREM52: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NRREM52'
      Origin = 'NRREM52'
      Precision = 38
      Size = 0
    end
    object QParcelaBOL_CONVENIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BOL_CONVENIO'
      Origin = 'BOL_CONVENIO'
    end
    object QParcelaBOL_DATA_ENVIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BOL_DATA_ENVIO'
      Origin = 'BOL_DATA_ENVIO'
      Size = 30
    end
    object QParcelaVALOR_TAXA_ATUALIZACAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_TAXA_ATUALIZACAO'
      Origin = 'VALOR_TAXA_ATUALIZACAO'
      Precision = 12
      Size = 6
    end
    object QParcelaBOL_COD_REGISTRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BOL_COD_REGISTRO'
      Origin = 'BOL_COD_REGISTRO'
    end
    object QParcelaVALOR_DESCONTO_PRINCIPAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_DESCONTO_PRINCIPAL'
      Origin = 'VALOR_DESCONTO_PRINCIPAL'
      Precision = 15
      Size = 3
    end
    object QParcelaVALORATUALIZADO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORATUALIZADO'
      Origin = 'VALORATUALIZADO'
      Precision = 15
      Size = 3
    end
    object QParcelaBOL_VALOR_DESCONTO_ANTECIP: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BOL_VALOR_DESCONTO_ANTECIP'
      Origin = 'BOL_VALOR_DESCONTO_ANTECIP'
      Precision = 16
      Size = 3
    end
    object QParcelaBOL_DATA_MAX_DESCONTO_ANTECIP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BOL_DATA_MAX_DESCONTO_ANTECIP'
      Origin = 'BOL_DATA_MAX_DESCONTO_ANTECIP'
      Size = 30
    end
    object QParcelaREGISTRO: TFMTBCDField
      FieldName = 'REGISTRO'
      Origin = 'REGISTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object QParcelaNUM_PARCELA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUM_PARCELA'
      Origin = 'NUM_PARCELA'
      Size = 10
    end
  end
  object QMax2: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT       '
      '  MAX(registro)'
      'FROM         '
      '  parcelas')
    Left = 216
    Top = 272
  end
  object mtDevedorGeral: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 120
    Top = 368
    object mtDevedorGeraltipo: TStringField
      FieldName = 'tipo'
      Size = 1
    end
    object mtDevedorGeralnome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object mtDevedorGeralcpf: TStringField
      FieldName = 'cpf'
    end
  end
end
