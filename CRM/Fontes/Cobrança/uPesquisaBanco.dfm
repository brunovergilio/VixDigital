object frmPesquisaBanco: TfrmPesquisaBanco
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pesquisa de Bancos'
  ClientHeight = 441
  ClientWidth = 771
  Color = clWindow
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
  object Label2: TLabel
    Left = 280
    Top = 184
    Width = 29
    Height = 13
    Caption = 'NOME'
  end
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 120
    Width = 771
    Height = 321
    Align = alClient
    Color = clWhite
    DataSource = dsBancos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
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
    OnDblClick = JvDBGrid1DblClick
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 22
    TitleRowHeight = 22
    Columns = <
      item
        Expanded = False
        FieldName = 'numero'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Color = clSilver
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Title.Color = clSilver
        Width = 621
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 70
    Width = 771
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object btnInserir: TRzToolButton
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
      OnClick = btnInserirClick
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
      ExplicitTop = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 771
    Height = 70
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
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
    end
  end
  object dsBancos: TDataSource
    DataSet = QBancos
    Left = 344
    Top = 72
  end
  object QBancos: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from banco')
    Left = 312
    Top = 72
    object QBancoscodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QBancosnumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'numero'
      Origin = 'numero'
    end
    object QBancosdescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object QBancosstatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = '`status`'
      FixedChar = True
      Size = 1
    end
  end
end
