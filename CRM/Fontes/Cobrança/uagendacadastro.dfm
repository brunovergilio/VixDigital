object frmagendacadastro: Tfrmagendacadastro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Agenda'
  ClientHeight = 353
  ClientWidth = 439
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Roboto'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel3: TPanel
    Left = 0
    Top = 303
    Width = 439
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object RzToolButton1: TRzToolButton
      AlignWithMargins = True
      Left = 190
      Top = 3
      Width = 120
      Height = 44
      Cursor = crHandPoint
      GradientColorStyle = gcsSystem
      Flat = False
      ShowCaption = True
      Transparent = False
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Align = alRight
      Caption = 'Gravar'
      Color = 13273922
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton1Click
      ExplicitLeft = 239
      ExplicitTop = -2
      ExplicitHeight = 40
    end
    object RzToolButton2: TRzToolButton
      AlignWithMargins = True
      Left = 316
      Top = 3
      Width = 120
      Height = 44
      Cursor = crHandPoint
      GradientColorStyle = gcsSystem
      Flat = False
      ShowCaption = True
      Transparent = False
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Align = alRight
      Caption = 'Cancelar'
      Color = 13273922
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton2Click
      ExplicitLeft = 635
      ExplicitTop = -2
      ExplicitHeight = 40
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 439
    Height = 303
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 121
      Top = 207
      Width = 45
      Height = 15
      Caption = 'Usu'#225'rio'
      Enabled = False
    end
    object DBAdvLUEdit2: TDBAdvLUEdit
      Left = 24
      Top = 154
      Width = 393
      Height = 23
      BorderColor = clSilver
      DefaultHandling = True
      EmptyTextStyle = []
      LabelCaption = 'Evento:'
      LabelPosition = lpTopLeft
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -13
      LabelFont.Name = 'Roboto'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = ''
      Visible = True
      Version = '1.4.1.0'
      AutoHistory = False
      AutoSynchronize = False
      FileLookup = False
      LookupPersist.Enable = False
      LookupPersist.Location = plInifile
      LookupPersist.Key = 'LUEdit'
      LookupPersist.Section = 'Values'
      LookupPersist.Count = 0
      LookupPersist.MaxCount = False
      MatchCase = False
      DataField = 'EVENTO'
      DataSource = udsqagenda
      DataLookup = False
    end
    object AdvDBDateTimePicker1: TAdvDBDateTimePicker
      Left = 24
      Top = 28
      Width = 161
      Height = 23
      Date = 0.000000000000000000
      Format = ''
      Time = 0.000000000000000000
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      Kind = dkDate
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      BorderStyle = bsSingle
      Ctl3D = True
      DateTime = 0.000000000000000000
      Version = '1.3.3.0'
      LabelCaption = 'Data:'
      LabelPosition = lpTopLeft
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -13
      LabelFont.Name = 'Roboto'
      LabelFont.Style = []
      DataField = 'DATA'
      DataSource = udsqagenda
    end
    object AdvDBDateTimePicker2: TAdvDBDateTimePicker
      Left = 256
      Top = 28
      Width = 161
      Height = 23
      Date = 0.000000000000000000
      Format = ''
      Time = 0.000000000000000000
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      Kind = dkTime
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      BorderStyle = bsSingle
      Ctl3D = True
      DateTime = 0.000000000000000000
      Version = '1.3.3.0'
      LabelCaption = 'Hora:'
      LabelPosition = lpTopLeft
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -13
      LabelFont.Name = 'Roboto'
      LabelFont.Style = []
      DataField = 'HORA'
      DataSource = udsqagenda
    end
    object DBAdvLUEdit1: TDBAdvLUEdit
      Left = 24
      Top = 89
      Width = 81
      Height = 23
      BorderColor = clSilver
      DefaultHandling = True
      EmptyTextStyle = []
      LabelCaption = 'C'#243'd. Cliente:'
      LabelPosition = lpTopLeft
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -13
      LabelFont.Name = 'Roboto'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = clWindow
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      Text = ''
      Visible = True
      OnKeyDown = DBAdvLUEdit1KeyDown
      Version = '1.4.1.0'
      AutoHistory = False
      AutoSynchronize = False
      FileLookup = False
      LookupPersist.Enable = False
      LookupPersist.Location = plInifile
      LookupPersist.Key = 'LUEdit'
      LookupPersist.Section = 'Values'
      LookupPersist.Count = 0
      LookupPersist.MaxCount = False
      MatchCase = False
      DataField = 'CLIENTE'
      DataSource = udsqagenda
      DataLookup = False
    end
    object DBAdvLUEdit3: TDBAdvLUEdit
      Left = 120
      Top = 89
      Width = 297
      Height = 23
      BorderColor = clSilver
      DefaultHandling = True
      EmptyTextStyle = []
      LabelCaption = 'Cliente:'
      LabelPosition = lpTopLeft
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -13
      LabelFont.Name = 'Roboto'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = clWindow
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Text = ''
      Visible = True
      Version = '1.4.1.0'
      AutoHistory = False
      AutoSynchronize = False
      FileLookup = False
      LookupPersist.Enable = False
      LookupPersist.Location = plInifile
      LookupPersist.Key = 'LUEdit'
      LookupPersist.Section = 'Values'
      LookupPersist.Count = 0
      LookupPersist.MaxCount = False
      MatchCase = False
      DataField = 'NOME'
      DataSource = udsqagenda
      DataLookup = False
    end
    object DBCheckBox1: TDBCheckBox
      Left = 24
      Top = 264
      Width = 97
      Height = 17
      Caption = 'Avisar?'
      DataField = 'AVISAR'
      DataSource = udsqagenda
      TabOrder = 8
    end
    object DBCheckBox2: TDBCheckBox
      Left = 346
      Top = 264
      Width = 71
      Height = 17
      Caption = 'Cumprido'
      DataField = 'CUMPRIDO'
      DataSource = udsqagenda
      TabOrder = 9
    end
    object DBAdvLUEdit5: TDBAdvLUEdit
      Left = 24
      Top = 226
      Width = 81
      Height = 23
      BorderColor = clSilver
      DefaultHandling = True
      EmptyTextStyle = []
      LabelCaption = 'C'#243'd. User:'
      LabelPosition = lpTopLeft
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -13
      LabelFont.Name = 'Roboto'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = clWindow
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = ''
      Visible = True
      Version = '1.4.1.0'
      AutoHistory = False
      AutoSynchronize = False
      FileLookup = False
      LookupPersist.Enable = False
      LookupPersist.Location = plInifile
      LookupPersist.Key = 'LUEdit'
      LookupPersist.Section = 'Values'
      LookupPersist.Count = 0
      LookupPersist.MaxCount = False
      MatchCase = False
      DataField = 'CODIGO'
      DataSource = dsUser
      DataLookup = False
    end
    object DBEditRegistro: TDBAdvLUEdit
      Left = 336
      Top = 125
      Width = 81
      Height = 23
      BorderColor = clSilver
      DefaultHandling = True
      EmptyTextStyle = []
      LabelCaption = 'Registro:'
      LabelPosition = lpTopLeft
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -13
      LabelFont.Name = 'Roboto'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = clWindow
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      Text = ''
      Visible = False
      Version = '1.4.1.0'
      AutoHistory = False
      AutoSynchronize = False
      FileLookup = False
      LookupPersist.Enable = False
      LookupPersist.Location = plInifile
      LookupPersist.Key = 'LUEdit'
      LookupPersist.Section = 'Values'
      LookupPersist.Count = 0
      LookupPersist.MaxCount = False
      MatchCase = False
      DataField = 'REGISTRO'
      DataSource = udsqagenda
      DataLookup = False
    end
    object AdvDBDateTimePicker3: TAdvDBDateTimePicker
      Left = 296
      Top = 226
      Width = 113
      Height = 23
      Date = 0.000000000000000000
      Format = ''
      Time = 0.000000000000000000
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      Kind = dkDate
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 7
      Visible = False
      BorderStyle = bsSingle
      Ctl3D = True
      DateTime = 0.000000000000000000
      Version = '1.3.3.0'
      LabelCaption = 'Data Cad:'
      LabelPosition = lpTopLeft
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -13
      LabelFont.Name = 'Roboto'
      LabelFont.Style = []
      DataField = 'DTA_CAD'
      DataSource = udsqagenda
    end
    object edtUsuario: TcxLookupComboBox
      Left = 120
      Top = 226
      Properties.GridMode = True
      Properties.KeyFieldNames = 'codigo'
      Properties.ListColumns = <
        item
          Caption = 'Nome'
          FieldName = 'nome'
        end>
      Properties.ListOptions.GridLines = glNone
      Properties.ListSource = dsUser
      TabOrder = 6
      Width = 160
    end
  end
  object unigetid: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from operador_grupo')
    Left = 296
    Top = 16
  end
  object uniqagenda: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from agenda')
    Left = 202
    Top = 16
    object uniqagendaCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object uniqagendaDATA: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DATA'
      Origin = '`DATA`'
    end
    object uniqagendaHORA: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object uniqagendaUSUARIO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Precision = 38
      Size = 0
    end
    object uniqagendaBLOQUEADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEADO'
      Origin = 'BLOQUEADO'
      Size = 5
    end
    object uniqagendaCLIENTE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Precision = 38
      Size = 0
    end
    object uniqagendaCUMPRIDO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUMPRIDO'
      Origin = 'CUMPRIDO'
      Size = 5
    end
    object uniqagendaAVISAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVISAR'
      Origin = 'AVISAR'
      Size = 5
    end
    object uniqagendaTEMPOANTESDEAVISAR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TEMPOANTESDEAVISAR'
      Origin = 'TEMPOANTESDEAVISAR'
      Precision = 38
      Size = 0
    end
    object uniqagendaNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 40
    end
    object uniqagendaOBS: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'OBS'
      Origin = 'OBS'
    end
    object uniqagendaPRIORIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRIORIDADE'
      Origin = 'PRIORIDADE'
      Size = 5
    end
    object uniqagendaDATA_MODIF: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_MODIF'
      Origin = 'DATA_MODIF'
    end
    object uniqagendaDTA_CAD: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DTA_CAD'
      Origin = 'DTA_CAD'
    end
    object uniqagendaUSR_CAD: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'USR_CAD'
      Origin = 'USR_CAD'
      Precision = 38
      Size = 0
    end
    object uniqagendaUSR_CUMPRIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'USR_CUMPRIDO'
      Origin = 'USR_CUMPRIDO'
      Precision = 38
      Size = 0
    end
    object uniqagendaDTA_CUMPRIDO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DTA_CUMPRIDO'
      Origin = 'DTA_CUMPRIDO'
      Size = 30
    end
    object uniqagendaREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'REGISTRO'
      Required = True
    end
    object uniqagendaEVENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EVENTO'
      Origin = 'EVENTO'
      Size = 200
    end
  end
  object udsqagenda: TDataSource
    DataSet = uniqagenda
    Left = 128
    Top = 16
  end
  object QUser: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from usuarios')
    Left = 256
    Top = 176
    object QUserCODIGO: TFMTBCDField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object QUserNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 30
    end
    object QUserNIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NIVEL'
      Origin = 'NIVEL'
      Size = 1
    end
    object QUserSENHA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 200
    end
    object QUserCOBRADOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
      Precision = 38
      Size = 0
    end
    object QUserDATA_MODIF: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_MODIF'
      Origin = 'DATA_MODIF'
    end
    object QUserCOBRADOR_EXT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COBRADOR_EXT'
      Origin = 'COBRADOR_EXT'
      Size = 1
    end
    object QUserATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object QUserGRUPOHORARIO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPOHORARIO'
      Origin = 'GRUPOHORARIO'
      Precision = 38
      Size = 0
    end
    object QUserAGENDA_OUTROUSUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENDA_OUTROUSUARIO'
      Origin = 'AGENDA_OUTROUSUARIO'
      Size = 1
    end
    object QUserMATRICULA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MATRICULA'
      Origin = 'MATRICULA'
      Size = 60
    end
    object QUserAGENDA_PRIORIDADE_ALTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENDA_PRIORIDADE_ALTA'
      Origin = 'AGENDA_PRIORIDADE_ALTA'
      Size = 1
    end
    object QUserAGENDA_LIMITA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENDA_LIMITA'
      Origin = 'AGENDA_LIMITA'
      Size = 1
    end
    object QUserATIVONET: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATIVONET'
      Origin = 'ATIVONET'
      Size = 1
    end
    object QUserSENHANET: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SENHANET'
      Origin = 'SENHANET'
      Size = 40
    end
    object QUserUSUARIO_GRUPO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO_GRUPO'
      Origin = 'USUARIO_GRUPO'
      Precision = 38
      Size = 0
    end
    object QUserDATA_ACESSO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_ACESSO'
      Origin = 'DATA_ACESSO'
    end
    object QUserGRUPO_DISCADOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPO_DISCADOR'
      Origin = 'GRUPO_DISCADOR'
    end
    object QUserCONTAEMAIL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONTAEMAIL'
      Origin = 'CONTAEMAIL'
      Precision = 38
      Size = 0
    end
    object QUserIDNET: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IDNET'
      Origin = 'IDNET'
      Size = 32
    end
    object QUserAGENDA_CUMPRIROUTROUSUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENDA_CUMPRIROUTROUSUARIO'
      Origin = 'AGENDA_CUMPRIROUTROUSUARIO'
      Size = 1
    end
    object QUserPERMITE_ALTERAR_SENHA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_ALTERAR_SENHA'
      Origin = 'PERMITE_ALTERAR_SENHA'
      Size = 1
    end
    object QUserCODIGO_EXTERNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_EXTERNO'
      Origin = 'CODIGO_EXTERNO'
      Size = 50
    end
    object QUserPERMITE_SELECIONAR_CONTAEMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_SELECIONAR_CONTAEMAIL'
      Origin = 'PERMITE_SELECIONAR_CONTAEMAIL'
      Size = 1
    end
    object QUserPERMITE_LISTA_COBRANCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_LISTA_COBRANCA'
      Origin = 'PERMITE_LISTA_COBRANCA'
      Size = 1
    end
    object QUserPERMITE_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_CLIENTE'
      Origin = 'PERMITE_CLIENTE'
    end
    object QUserPERMITE_GERENCIADOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_GERENCIADOR'
      Origin = 'PERMITE_GERENCIADOR'
    end
    object QUserPERMITE_AGENDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_AGENDA'
      Origin = 'PERMITE_AGENDA'
    end
    object QUserPERMITE_IMPORTAR_ARQUIVOS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_IMPORTAR_ARQUIVOS'
      Origin = 'PERMITE_IMPORTAR_ARQUIVOS'
    end
    object QUserPERMITE_CORRESPONDENCIAS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_CORRESPONDENCIAS'
      Origin = 'PERMITE_CORRESPONDENCIAS'
    end
    object QUserPERMITE_BACKUP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_BACKUP'
      Origin = 'PERMITE_BACKUP'
    end
    object QUserPERMITE_USUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_USUARIO'
      Origin = 'PERMITE_USUARIO'
    end
    object QUserPERMITE_EMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_EMAIL'
      Origin = 'PERMITE_EMAIL'
    end
    object QUserPERMITE_NOTIFICACOES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_NOTIFICACOES'
      Origin = 'PERMITE_NOTIFICACOES'
    end
    object QUserANOTACOES: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'ANOTACOES'
      Origin = 'ANOTACOES'
    end
    object QUserUSUARIO_NOME_GRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO_NOME_GRUPO'
      Origin = 'USUARIO_NOME_GRUPO'
      Size = 100
    end
  end
  object dsUser: TDataSource
    DataSet = QUser
    Left = 304
    Top = 176
  end
end
