object frmoperadoresgrupocadastro: Tfrmoperadoresgrupocadastro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Grupos de Operadores'
  ClientHeight = 427
  ClientWidth = 628
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
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel3: TPanel
    Left = 0
    Top = 377
    Width = 628
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object RzToolButton1: TRzToolButton
      AlignWithMargins = True
      Left = 379
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
      Left = 505
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
    Width = 628
    Height = 377
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Label2: TLabel
      Left = 32
      Top = 96
      Width = 72
      Height = 15
      Caption = 'Operadores:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzToolButton9: TRzToolButton
      AlignWithMargins = True
      Left = 122
      Top = 85
      Width = 66
      Height = 30
      Cursor = crHandPoint
      GradientColorStyle = gcsSystem
      Flat = False
      ShowCaption = True
      Spacing = 0
      Transparent = False
      UseToolbarButtonLayout = False
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
      OnClick = RzToolButton9Click
    end
    object btnalterar: TRzToolButton
      AlignWithMargins = True
      Left = 200
      Top = 85
      Width = 30
      Height = 30
      Cursor = crHandPoint
      GradientColorStyle = gcsSystem
      Flat = False
      ShowCaption = True
      Spacing = 0
      Transparent = False
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Caption = '+'
      Color = 13273922
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      OnClick = btnalterarClick
    end
    object RzToolButton3: TRzToolButton
      AlignWithMargins = True
      Left = 244
      Top = 85
      Width = 30
      Height = 30
      Cursor = crHandPoint
      GradientColorStyle = gcsSystem
      Flat = False
      ImageIndex = 0
      ShowCaption = True
      Spacing = 0
      Transparent = False
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Caption = '-'
      Color = 13273922
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton3Click
    end
    object DBAdvLUEdit1: TDBAdvLUEdit
      Left = 32
      Top = 44
      Width = 121
      Height = 23
      BorderColor = clSilver
      DefaultHandling = True
      EmptyTextStyle = []
      FocusAlign = eaCenter
      FocusColor = clBtnFace
      LabelCaption = 'C'#243'digo:'
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
      Color = clWindow
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
      DataSource = frmoperadoresgrupo.UniDSQScript
      DataLookup = False
    end
    object DBAdvLUEdit2: TDBAdvLUEdit
      Left = 200
      Top = 44
      Width = 393
      Height = 23
      BorderColor = clSilver
      DefaultHandling = True
      EmptyTextStyle = []
      LabelCaption = 'Nome do Grupo:'
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
      MaxLength = 100
      ParentFont = False
      TabOrder = 1
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
      DataField = 'NOME_GRUPO'
      DataSource = frmoperadoresgrupo.UniDSQScript
      DataLookup = False
    end
    object JvDBGrid1: TJvDBGrid
      Left = 32
      Top = 121
      Width = 561
      Height = 232
      Color = clWhite
      DataSource = UniDSQOperadorGrupoOperador
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Roboto'
      TitleFont.Style = []
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      CanDelete = False
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRUPO'
          Title.Alignment = taCenter
          Title.Caption = 'Grupo'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OPERADOR'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Operador'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Alignment = taCenter
          Title.Caption = 'Nome do Operador/Usu'#225'rio'
          Width = 271
          Visible = True
        end>
    end
  end
  object unigetid: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from operador_grupo')
    Left = 584
    Top = 8
  end
  object UniQOperadorGrupoOperador: TFDQuery
    MasterSource = frmoperadoresgrupo.UniDSQScript
    MasterFields = 'CODIGO'
    DetailFields = 'GRUPO'
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      
        'select operador_grupo_operadores.*, usuarios.nome from operador_' +
        'grupo_operadores'
      
        'inner join usuarios on operador_grupo_operadores.operador = usua' +
        'rios.codigo')
    Left = 458
    Top = 208
    object UniQOperadorGrupoOperadorCODIGO: TFMTBCDField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object UniQOperadorGrupoOperadorGRUPO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Precision = 38
      Size = 0
    end
    object UniQOperadorGrupoOperadorOPERADOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'OPERADOR'
      Origin = 'OPERADOR'
      Precision = 38
      Size = 0
    end
    object UniQOperadorGrupoOperadornome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
  end
  object UniDSQOperadorGrupoOperador: TDataSource
    DataSet = UniQOperadorGrupoOperador
    Left = 282
    Top = 208
  end
  object UniDSQUsuarios: TDataSource
    DataSet = uniQUsuarios
    Left = 286
    Top = 296
  end
  object uniQUsuarios: TFDQuery
    MasterSource = UniDSQOperadorGrupoOperador
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from usuarios order by codigo')
    Left = 462
    Top = 288
  end
  object uniscript: TFDQuery
    DetailFields = 'GRUPO'
    Connection = frmDataModule.UniConnection1
    Left = 506
    Top = 8
  end
end
