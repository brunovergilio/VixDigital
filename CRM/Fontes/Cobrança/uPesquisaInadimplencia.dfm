object frmPesquisaInadimplencia: TfrmPesquisaInadimplencia
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pesquisa de Inadimpl'#234'ncia'
  ClientHeight = 432
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 818
    Height = 70
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -51
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
  object Panel1: TPanel
    Left = 0
    Top = 70
    Width = 818
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = -51
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
      ExplicitTop = 2
      ExplicitHeight = 36
    end
  end
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 120
    Width = 818
    Height = 312
    Align = alClient
    Color = clWhite
    DataSource = dsInadimplencia
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
        FieldName = 'CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Color = clSilver
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Color = clSilver
        Width = 670
        Visible = True
      end>
  end
  object dsInadimplencia: TDataSource
    DataSet = QInadimplencia
    Left = 400
    Top = 216
  end
  object QInadimplencia: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from negativacao_parametro')
    Left = 352
    Top = 216
    object QInadimplenciaCODIGO: TFMTBCDField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object QInadimplenciaTIPO: TFMTBCDField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Precision = 38
      Size = 0
    end
    object QInadimplenciaDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object QInadimplenciaCONTADOR_REMESSA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONTADOR_REMESSA'
      Origin = 'CONTADOR_REMESSA'
      Precision = 38
      Size = 0
    end
    object QInadimplenciaCONTADOR_RETORNO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONTADOR_RETORNO'
      Origin = 'CONTADOR_RETORNO'
      Precision = 38
      Size = 0
    end
    object QInadimplenciaCODIGO_ENTIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_ENTIDADE'
      Origin = 'CODIGO_ENTIDADE'
    end
    object QInadimplenciaCODIGO_ASSOCIADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_ASSOCIADO'
      Origin = 'CODIGO_ASSOCIADO'
    end
  end
end
