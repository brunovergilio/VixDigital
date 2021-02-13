object fmAgenda: TfmAgenda
  Left = 736
  Top = 264
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Agenda'
  ClientHeight = 541
  ClientWidth = 1047
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Roboto'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label2: TLabel
    Left = 280
    Top = 184
    Width = 36
    Height = 15
    Caption = 'NOME'
  end
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 171
    Width = 1047
    Height = 370
    Align = alClient
    Color = clWhite
    DataSource = UniDSQAgenda
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Roboto'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Roboto'
    TitleFont.Style = []
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 18
    TitleRowHeight = 19
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Roboto'
        Title.Font.Style = []
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORA'
        Title.Alignment = taCenter
        Title.Caption = 'Hora'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Roboto'
        Title.Font.Style = []
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Title.Alignment = taCenter
        Title.Caption = 'User'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Roboto'
        Title.Font.Style = []
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLIENTE'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Cliente'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Roboto'
        Title.Font.Style = []
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Roboto'
        Title.Font.Style = []
        Width = 407
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EVENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Evento'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Roboto'
        Title.Font.Style = []
        Width = 298
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 121
    Width = 1047
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object btnalterar: TRzToolButton
      AlignWithMargins = True
      Left = 3
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
      Align = alLeft
      Caption = 'Alterar'
      Color = 13273922
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      OnClick = btnalterarClick
      ExplicitLeft = 129
      ExplicitTop = 2
      ExplicitHeight = 36
    end
    object RzToolButton3: TRzToolButton
      AlignWithMargins = True
      Left = 129
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
      Align = alLeft
      Caption = 'Excluir'
      Color = 13273922
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton3Click
      ExplicitTop = 2
      ExplicitHeight = 36
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1047
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 24
      Top = 23
      Width = 42
      Height = 15
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
    end
    object RzToolButton1: TRzToolButton
      Left = 388
      Top = 11
      Width = 120
      Height = 40
      GradientColorStyle = gcsSystem
      ShowCaption = True
      Transparent = False
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Caption = 'Localizar'
      Color = 13273922
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton1Click
    end
    object RzToolButton2: TRzToolButton
      Left = 388
      Top = 67
      Width = 120
      Height = 40
      GradientColorStyle = gcsSystem
      ShowCaption = True
      Transparent = False
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Caption = 'Localizar'
      Color = 13273922
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton2Click
    end
    object Label3: TLabel
      Left = 24
      Top = 79
      Width = 64
      Height = 15
      Caption = 'CPF_CNPJ:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
    end
    object RzToolButton4: TRzToolButton
      Left = 776
      Top = 16
      Width = 120
      Height = 40
      GradientColorStyle = gcsSystem
      ShowCaption = True
      Transparent = False
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Caption = 'Todos'
      Color = 13273922
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton4Click
    end
    object Edit1: TEdit
      Left = 81
      Top = 19
      Width = 288
      Height = 23
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object AdvDateTimePicker1: TAdvDateTimePicker
      Left = 616
      Top = 25
      Width = 137
      Height = 23
      Date = 43795.000000000000000000
      Format = ''
      Time = 0.315011574071832000
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      Kind = dkDate
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      BorderStyle = bsSingle
      Ctl3D = True
      DateTime = 43795.315011574070000000
      Version = '1.3.3.0'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -13
      LabelFont.Name = 'Roboto'
      LabelFont.Style = []
      NullDateDate = 43466.000000000000000000
    end
    object Edit2: TEdit
      Left = 106
      Top = 75
      Width = 263
      Height = 23
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 2
      OnExit = Edit2Exit
    end
  end
  object uniQAgenda: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'SELECT '
      '  a.*,'
      '  c.CPF_CNPJ '
      'FROM'
      '  agenda a '
      '  INNER JOIN clientes c '
      '    ON c.CODIGO = a.CLIENTE ')
    Left = 440
    Top = 120
    object uniQAgendaCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object uniQAgendaDATA: TDateTimeField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'DATA'
      Origin = '`DATA`'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object uniQAgendaHORA: TSQLTimeStampField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'HORA'
      Origin = 'HORA'
      DisplayFormat = 'hh:mm:ss'
    end
    object uniQAgendaUSUARIO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Precision = 38
      Size = 0
    end
    object uniQAgendaBLOQUEADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEADO'
      Origin = 'BLOQUEADO'
      Size = 5
    end
    object uniQAgendaCLIENTE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      Precision = 38
      Size = 0
    end
    object uniQAgendaCUMPRIDO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CUMPRIDO'
      Origin = 'CUMPRIDO'
      Size = 5
    end
    object uniQAgendaAVISAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVISAR'
      Origin = 'AVISAR'
      Size = 5
    end
    object uniQAgendaTEMPOANTESDEAVISAR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TEMPOANTESDEAVISAR'
      Origin = 'TEMPOANTESDEAVISAR'
      Precision = 38
      Size = 0
    end
    object uniQAgendaNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 40
    end
    object uniQAgendaOBS: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'OBS'
      Origin = 'OBS'
    end
    object uniQAgendaPRIORIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRIORIDADE'
      Origin = 'PRIORIDADE'
      Size = 5
    end
    object uniQAgendaDATA_MODIF: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_MODIF'
      Origin = 'DATA_MODIF'
    end
    object uniQAgendaDTA_CAD: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DTA_CAD'
      Origin = 'DTA_CAD'
    end
    object uniQAgendaUSR_CAD: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'USR_CAD'
      Origin = 'USR_CAD'
      Precision = 38
      Size = 0
    end
    object uniQAgendaUSR_CUMPRIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'USR_CUMPRIDO'
      Origin = 'USR_CUMPRIDO'
      Precision = 38
      Size = 0
    end
    object uniQAgendaDTA_CUMPRIDO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DTA_CUMPRIDO'
      Origin = 'DTA_CUMPRIDO'
      Size = 30
    end
    object uniQAgendaREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
      Origin = 'REGISTRO'
      Required = True
    end
    object uniQAgendaEVENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EVENTO'
      Origin = 'EVENTO'
      Size = 200
    end
    object uniQAgendaCPF_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      ProviderFlags = []
      ReadOnly = True
      Size = 14
    end
  end
  object UniDSQAgenda: TDataSource
    DataSet = uniQAgenda
    Left = 336
    Top = 120
  end
  object UniQUser: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from usuarios')
    Left = 616
    Top = 112
    object UniQUserCODIGO: TFMTBCDField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object UniQUserNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 30
    end
    object UniQUserNIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NIVEL'
      Origin = 'NIVEL'
      Size = 1
    end
    object UniQUserSENHA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 200
    end
    object UniQUserCOBRADOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'COBRADOR'
      Origin = 'COBRADOR'
      Precision = 38
      Size = 0
    end
    object UniQUserDATA_MODIF: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_MODIF'
      Origin = 'DATA_MODIF'
    end
    object UniQUserCOBRADOR_EXT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COBRADOR_EXT'
      Origin = 'COBRADOR_EXT'
      Size = 1
    end
    object UniQUserATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object UniQUserGRUPOHORARIO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPOHORARIO'
      Origin = 'GRUPOHORARIO'
      Precision = 38
      Size = 0
    end
    object UniQUserAGENDA_OUTROUSUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENDA_OUTROUSUARIO'
      Origin = 'AGENDA_OUTROUSUARIO'
      Size = 1
    end
    object UniQUserMATRICULA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MATRICULA'
      Origin = 'MATRICULA'
      Size = 60
    end
    object UniQUserAGENDA_PRIORIDADE_ALTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENDA_PRIORIDADE_ALTA'
      Origin = 'AGENDA_PRIORIDADE_ALTA'
      Size = 1
    end
    object UniQUserAGENDA_LIMITA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENDA_LIMITA'
      Origin = 'AGENDA_LIMITA'
      Size = 1
    end
    object UniQUserATIVONET: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATIVONET'
      Origin = 'ATIVONET'
      Size = 1
    end
    object UniQUserSENHANET: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SENHANET'
      Origin = 'SENHANET'
      Size = 40
    end
    object UniQUserUSUARIO_GRUPO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO_GRUPO'
      Origin = 'USUARIO_GRUPO'
      Precision = 38
      Size = 0
    end
    object UniQUserDATA_ACESSO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_ACESSO'
      Origin = 'DATA_ACESSO'
    end
    object UniQUserGRUPO_DISCADOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPO_DISCADOR'
      Origin = 'GRUPO_DISCADOR'
    end
    object UniQUserCONTAEMAIL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONTAEMAIL'
      Origin = 'CONTAEMAIL'
      Precision = 38
      Size = 0
    end
    object UniQUserIDNET: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IDNET'
      Origin = 'IDNET'
      Size = 32
    end
    object UniQUserAGENDA_CUMPRIROUTROUSUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENDA_CUMPRIROUTROUSUARIO'
      Origin = 'AGENDA_CUMPRIROUTROUSUARIO'
      Size = 1
    end
    object UniQUserPERMITE_ALTERAR_SENHA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_ALTERAR_SENHA'
      Origin = 'PERMITE_ALTERAR_SENHA'
      Size = 1
    end
    object UniQUserCODIGO_EXTERNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_EXTERNO'
      Origin = 'CODIGO_EXTERNO'
      Size = 50
    end
    object UniQUserPERMITE_SELECIONAR_CONTAEMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_SELECIONAR_CONTAEMAIL'
      Origin = 'PERMITE_SELECIONAR_CONTAEMAIL'
      Size = 1
    end
    object UniQUserPERMITE_LISTA_COBRANCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_LISTA_COBRANCA'
      Origin = 'PERMITE_LISTA_COBRANCA'
      Size = 1
    end
    object UniQUserPERMITE_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_CLIENTE'
      Origin = 'PERMITE_CLIENTE'
    end
    object UniQUserPERMITE_GERENCIADOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_GERENCIADOR'
      Origin = 'PERMITE_GERENCIADOR'
    end
    object UniQUserPERMITE_AGENDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_AGENDA'
      Origin = 'PERMITE_AGENDA'
    end
    object UniQUserPERMITE_IMPORTAR_ARQUIVOS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_IMPORTAR_ARQUIVOS'
      Origin = 'PERMITE_IMPORTAR_ARQUIVOS'
    end
    object UniQUserPERMITE_CORRESPONDENCIAS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_CORRESPONDENCIAS'
      Origin = 'PERMITE_CORRESPONDENCIAS'
    end
    object UniQUserPERMITE_BACKUP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_BACKUP'
      Origin = 'PERMITE_BACKUP'
    end
    object UniQUserPERMITE_USUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_USUARIO'
      Origin = 'PERMITE_USUARIO'
    end
    object UniQUserPERMITE_EMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_EMAIL'
      Origin = 'PERMITE_EMAIL'
    end
    object UniQUserPERMITE_NOTIFICACOES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_NOTIFICACOES'
      Origin = 'PERMITE_NOTIFICACOES'
    end
    object UniQUserANOTACOES: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'ANOTACOES'
      Origin = 'ANOTACOES'
    end
    object UniQUserUSUARIO_NOME_GRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO_NOME_GRUPO'
      Origin = 'USUARIO_NOME_GRUPO'
      Size = 100
    end
  end
  object UniDSQUser: TDataSource
    DataSet = UniQUser
    Left = 552
    Top = 112
  end
end
