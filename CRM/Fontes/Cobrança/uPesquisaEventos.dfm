object frmPesquisaEventos: TfrmPesquisaEventos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Eventos'
  ClientHeight = 440
  ClientWidth = 869
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 869
    Height = 70
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 859
    object Label1: TLabel
      Left = 24
      Top = 23
      Width = 45
      Height = 18
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
    end
    object RzToolButton1: TRzToolButton
      Left = 628
      Top = 12
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
      Font.Height = -15
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton1Click
    end
    object Edit1: TEdit
      Left = 76
      Top = 19
      Width = 546
      Height = 26
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 70
    Width = 869
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 859
    object RzToolButton3: TRzToolButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 120
      Height = 44
      Cursor = crHandPoint
      GradientColorStyle = gcsSystem
      Flat = False
      ImageIndex = 0
      ShowCaption = True
      Transparent = False
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Align = alLeft
      Caption = 'Inserir'
      Color = 13273922
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton3Click
      ExplicitLeft = 882
      ExplicitHeight = 36
    end
    object btnalterar: TRzToolButton
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
      Caption = 'Alterar'
      Color = 13273922
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      OnClick = btnalterarClick
      ExplicitTop = 2
      ExplicitHeight = 36
    end
  end
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 120
    Width = 869
    Height = 320
    Align = alClient
    Color = clWhite
    DataSource = dsEventos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Roboto'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Roboto'
    TitleFont.Style = []
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 22
    TitleRowHeight = 22
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_EVENTO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Color = clSilver
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC_EVENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Title.Color = clSilver
        Width = 527
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC_CLASSIFICACAO'
        Title.Alignment = taCenter
        Title.Caption = 'Classifica'#231#227'o'
        Title.Color = clSilver
        Width = 192
        Visible = True
      end>
  end
  object dsEventos: TDataSource
    DataSet = QEventos
    Left = 344
    Top = 72
  end
  object QEventos: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'SELECT                       '
      '  *,                         '
      '  CASE                       '
      '    WHEN classificacao = 1   '
      '    THEN "1 - PRODUTIVO"     '
      '    WHEN classificacao = 2   '
      '    THEN "2 - IMPRODUTIVO"   '
      '    WHEN classificacao = 3   '
      '    THEN "3 - SISTEMA"       '
      '    WHEN classificacao = 4   '
      '    THEN "4 - INFORMATIVO"   '
      '    WHEN classificacao = 5   '
      '    THEN "5 - ADMINISTRATIVO"'
      '  END AS DESC_CLASSIFICACAO  '
      'FROM                         '
      '  eventos_cod                '
      '')
    Left = 304
    Top = 72
    object QEventosCOD_EVENTO: TFMTBCDField
      FieldName = 'COD_EVENTO'
      Origin = 'COD_EVENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object QEventosDESC_EVENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_EVENTO'
      Origin = 'DESC_EVENTO'
      Size = 150
    end
    object QEventosDATA_MODIF: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_MODIF'
      Origin = 'DATA_MODIF'
    end
    object QEventosSOLUCAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOLUCAO'
      Origin = 'SOLUCAO'
      Size = 255
    end
    object QEventosCLASSIFICACAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLASSIFICACAO'
      Origin = 'CLASSIFICACAO'
      Precision = 38
      Size = 0
    end
    object QEventosINSERIR_ACORDO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INSERIR_ACORDO'
      Origin = 'INSERIR_ACORDO'
      Size = 1
    end
    object QEventosPAGA_COMISSAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAGA_COMISSAO'
      Origin = 'PAGA_COMISSAO'
      Size = 1
    end
    object QEventosPERMITE_AGENDAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_AGENDAR'
      Origin = 'PERMITE_AGENDAR'
      Size = 1
    end
    object QEventosATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object QEventosDTA_CAD: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DTA_CAD'
      Origin = 'DTA_CAD'
    end
    object QEventosUSR_CAD: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'USR_CAD'
      Origin = 'USR_CAD'
      Precision = 38
      Size = 0
    end
    object QEventosCOD_EXTERNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_EXTERNO'
      Origin = 'COD_EXTERNO'
      Size = 40
    end
    object QEventosMOSTRAR_SOLUCAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MOSTRAR_SOLUCAO'
      Origin = 'MOSTRAR_SOLUCAO'
      Size = 1
    end
    object QEventosAGENDAR_DIAS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'AGENDAR_DIAS'
      Origin = 'AGENDAR_DIAS'
      Precision = 38
      Size = 0
    end
    object QEventosCOD_EXTERNO1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_EXTERNO1'
      Origin = 'COD_EXTERNO1'
      Size = 40
    end
    object QEventosCLASS_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLASS_CLIENTE'
      Origin = 'CLASS_CLIENTE'
      Size = 1
    end
    object QEventosPERMITE_SEGUNDO_EVENTO_DIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITE_SEGUNDO_EVENTO_DIA'
      Origin = 'PERMITE_SEGUNDO_EVENTO_DIA'
      Size = 3
    end
    object QEventosFIXA_AGENDAR_DIAS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIXA_AGENDAR_DIAS'
      Origin = 'FIXA_AGENDAR_DIAS'
      Size = 1
    end
    object QEventosCLASS_OPERACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLASS_OPERACAO'
      Origin = 'CLASS_OPERACAO'
      Size = 1
    end
    object QEventosCLASS_CLIENTE_CODIGO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLASS_CLIENTE_CODIGO'
      Origin = 'CLASS_CLIENTE_CODIGO'
      Precision = 38
      Size = 0
    end
    object QEventosCLASS_OPERACAO_CODIGO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CLASS_OPERACAO_CODIGO'
      Origin = 'CLASS_OPERACAO_CODIGO'
      Precision = 38
      Size = 0
    end
    object QEventosMOTIVOINADIMPLENCIA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MOTIVOINADIMPLENCIA'
      Origin = 'MOTIVOINADIMPLENCIA'
      Precision = 38
      Size = 0
    end
    object QEventosFIXAR_MOTIVOINADIMPLENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIXAR_MOTIVOINADIMPLENCIA'
      Origin = 'FIXAR_MOTIVOINADIMPLENCIA'
      Size = 1
    end
    object QEventosPRIORIDADE_EXPORTACAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRIORIDADE_EXPORTACAO'
      Origin = 'PRIORIDADE_EXPORTACAO'
      Precision = 38
      Size = 0
    end
    object QEventosVALIDO_CONTATO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VALIDO_CONTATO'
      Origin = 'VALIDO_CONTATO'
      Size = 1
    end
    object QEventosFONE_CONTATO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FONE_CONTATO'
      Origin = 'FONE_CONTATO'
      Size = 1
    end
    object QEventosFIXAR_CONTROLE_IMP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIXAR_CONTROLE_IMP'
      Origin = 'FIXAR_CONTROLE_IMP'
      Size = 1
    end
    object QEventosCONTROLE_IMP: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONTROLE_IMP'
      Origin = 'CONTROLE_IMP'
      Precision = 38
      Size = 0
    end
    object QEventosPESO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESO'
      Origin = 'PESO'
      Precision = 38
      Size = 0
    end
    object QEventosMOTIVORETORNO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MOTIVORETORNO'
      Origin = 'MOTIVORETORNO'
      Precision = 38
      Size = 0
    end
    object QEventosFIXAR_MOTIVORETORNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIXAR_MOTIVORETORNO'
      Origin = 'FIXAR_MOTIVORETORNO'
      Size = 1
    end
    object QEventosFIXAR_CONTROLE_IMP_OPERACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIXAR_CONTROLE_IMP_OPERACAO'
      Origin = 'FIXAR_CONTROLE_IMP_OPERACAO'
      Size = 1
    end
    object QEventosCONTROLE_IMP_OPERACAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONTROLE_IMP_OPERACAO'
      Origin = 'CONTROLE_IMP_OPERACAO'
      Precision = 38
      Size = 0
    end
    object QEventosCOR_EVENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COR_EVENTO'
      Origin = 'COR_EVENTO'
      Size = 10
    end
    object QEventosFIXAR_REMOVER_CONTROLEIMP: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'FIXAR_REMOVER_CONTROLEIMP'
      Origin = 'FIXAR_REMOVER_CONTROLEIMP'
      Precision = 38
      Size = 0
    end
    object QEventosFIXAR_PREFERENCIAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'FIXAR_PREFERENCIAL'
      Origin = 'FIXAR_PREFERENCIAL'
      Precision = 38
      Size = 0
    end
    object QEventosFIXAR_MENSAGEIRO_INSTANTANEO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'FIXAR_MENSAGEIRO_INSTANTANEO'
      Origin = 'FIXAR_MENSAGEIRO_INSTANTANEO'
      Precision = 38
      Size = 0
    end
    object QEventosVALIDACAO_CAMPO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALIDACAO_CAMPO'
      Origin = 'VALIDACAO_CAMPO'
      Precision = 38
      Size = 0
    end
    object QEventosOCULTAR_EVENTO_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OCULTAR_EVENTO_CLIENTE'
      Origin = 'OCULTAR_EVENTO_CLIENTE'
      Size = 1
    end
    object QEventosDESC_CLASSIFICACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESC_CLASSIFICACAO'
      Origin = 'DESC_CLASSIFICACAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 18
    end
  end
end
