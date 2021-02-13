object frmPesquisaContaCorrente: TfrmPesquisaContaCorrente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pesquisa de Conta Corrente'
  ClientHeight = 412
  ClientWidth = 835
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
    Width = 835
    Height = 292
    Align = alClient
    Color = clWhite
    DataSource = dsPesquisa
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
        FieldName = 'num_banco'
        Title.Caption = 'C'#243'd. Banco'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AGENCIA'
        Title.Caption = 'Ag'#234'ncia'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTA'
        Title.Caption = 'Conta Corrente'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTA_NOME_CORRENTISTA'
        Title.Caption = 'Correntista'
        Width = 470
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 70
    Width = 835
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
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
      ExplicitTop = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 835
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
  object dsPesquisa: TDataSource
    DataSet = QPesquisa
    Left = 264
    Top = 216
  end
  object QBancos: TFDQuery
    Active = True
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from bancos_dados_bancarios')
    Left = 368
    Top = 208
    object QBancosCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QBancosCOD_BANCO: TIntegerField
      FieldName = 'COD_BANCO'
      Origin = 'COD_BANCO'
      Required = True
    end
    object QBancosAGENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
      Size = 6
    end
    object QBancosAGENCIA_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIA_DIGITO'
      Origin = 'AGENCIA_DIGITO'
      Size = 5
    end
    object QBancosAGENCIA_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIA_NOME'
      Origin = 'AGENCIA_NOME'
      Size = 50
    end
    object QBancosCONTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA'
      Origin = 'CONTA'
      Size = 13
    end
    object QBancosCONTA_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA_DIGITO'
      Origin = 'CONTA_DIGITO'
      Size = 5
    end
    object QBancosCONTA_CORRENTISTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA_CORRENTISTA'
      Origin = 'CONTA_CORRENTISTA'
      Size = 50
    end
    object QBancosCONTA_NOME_CORRENTISTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA_NOME_CORRENTISTA'
      Origin = 'CONTA_NOME_CORRENTISTA'
      Size = 100
    end
    object QBancosCOD_CEDENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_CEDENTE'
      Origin = 'COD_CEDENTE'
    end
    object QBancosDIGITO_CEDENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DIGITO_CEDENTE'
      Origin = 'DIGITO_CEDENTE'
    end
    object QBancosLAYOUT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LAYOUT'
      Origin = 'LAYOUT'
      FixedChar = True
      Size = 5
    end
    object QBancosNOSSONUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOSSONUMERO'
      Origin = 'NOSSONUMERO'
    end
    object QBancosCARTEIRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CARTEIRA'
      Origin = 'CARTEIRA'
      Size = 5
    end
    object QBancosCONVENIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONVENIO'
      Origin = 'CONVENIO'
    end
    object QBancosENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object QBancosTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object QBancosCEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 9
    end
    object QBancosUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
    object QBancosCPF_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
    end
    object QBancosNOME_CEDENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_CEDENTE'
      Origin = 'NOME_CEDENTE'
      Size = 100
    end
    object QBancosCIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 50
    end
  end
  object QPesquisa: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'SELECT '
      '  bd.*,'
      '  b.descricao,'
      '  b.numero as num_banco '
      'FROM'
      '  bancos_dados_bancarios bd '
      '  INNER JOIN banco b '
      '    ON b.codigo = bd.COD_BANCO '
      'ORDER BY b.descricao ')
    Left = 224
    Top = 216
    object QPesquisaCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QPesquisaCOD_BANCO: TIntegerField
      FieldName = 'COD_BANCO'
      Origin = 'COD_BANCO'
      Required = True
    end
    object QPesquisaAGENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
    end
    object QPesquisaAGENCIA_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIA_DIGITO'
      Origin = 'AGENCIA_DIGITO'
      Size = 5
    end
    object QPesquisaAGENCIA_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIA_NOME'
      Origin = 'AGENCIA_NOME'
      Size = 50
    end
    object QPesquisaCONTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA'
      Origin = 'CONTA'
    end
    object QPesquisaCONTA_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA_DIGITO'
      Origin = 'CONTA_DIGITO'
      Size = 5
    end
    object QPesquisaCONTA_CORRENTISTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA_CORRENTISTA'
      Origin = 'CONTA_CORRENTISTA'
      Size = 50
    end
    object QPesquisaCONTA_NOME_CORRENTISTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA_NOME_CORRENTISTA'
      Origin = 'CONTA_NOME_CORRENTISTA'
      Size = 100
    end
    object QPesquisaCOD_CEDENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_CEDENTE'
      Origin = 'COD_CEDENTE'
    end
    object QPesquisaDIGITO_CEDENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DIGITO_CEDENTE'
      Origin = 'DIGITO_CEDENTE'
    end
    object QPesquisaLAYOUT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LAYOUT'
      Origin = 'LAYOUT'
      FixedChar = True
      Size = 5
    end
    object QPesquisaNOSSONUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOSSONUMERO'
      Origin = 'NOSSONUMERO'
    end
    object QPesquisaCARTEIRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CARTEIRA'
      Origin = 'CARTEIRA'
      Size = 5
    end
    object QPesquisaCONVENIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONVENIO'
      Origin = 'CONVENIO'
      Size = 50
    end
    object QPesquisaENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object QPesquisaTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object QPesquisaCEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object QPesquisaUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
    object QPesquisaCPF_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 25
    end
    object QPesquisaNOME_CEDENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_CEDENTE'
      Origin = 'NOME_CEDENTE'
      Size = 100
    end
    object QPesquisadescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QPesquisanum_banco: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'num_banco'
      Origin = 'numero'
      ProviderFlags = []
      ReadOnly = True
    end
    object QPesquisaCIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 100
    end
  end
  object dsBancos: TDataSource
    DataSet = QBancos
    Left = 408
    Top = 208
  end
end
