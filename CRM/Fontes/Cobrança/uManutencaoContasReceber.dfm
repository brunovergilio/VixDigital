object frmManutencaoContasReceber: TfrmManutencaoContasReceber
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o de Contas a Receber'
  ClientHeight = 620
  ClientWidth = 1109
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 16
  object Panel3: TPanel
    Left = 0
    Top = 570
    Width = 1109
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object RzToolButton2: TRzToolButton
      AlignWithMargins = True
      Left = 986
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
      Caption = 'Sair'
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
    object RzToolButton1: TRzToolButton
      AlignWithMargins = True
      Left = 860
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
      Caption = 'Cancelar Parcela'
      Color = 13273922
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      Visible = False
      ExplicitLeft = 635
      ExplicitTop = -2
      ExplicitHeight = 40
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 185
    Width = 1109
    Height = 385
    Align = alClient
    TabOrder = 1
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsRelatorio
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '###,##0.00'
          Kind = skSum
          FieldName = 'VALORORIGINAL'
          Column = cxGrid1DBTableView1VALORORIGINAL
        end
        item
          Format = '###,##0.00'
          Kind = skSum
          FieldName = 'VALORREALIZADO'
          Column = cxGrid1DBTableView1VALORREALIZADO
        end
        item
          Format = '###,##0.00'
          Kind = skSum
          FieldName = 'VALORJUROS'
          Column = cxGrid1DBTableView1VALORJUROS
        end
        item
          Format = '###,##0.00'
          Kind = skSum
          FieldName = 'VALORMULTA'
          Column = cxGrid1DBTableView1VALORMULTA
        end
        item
          Format = '###,##0.00'
          Kind = skSum
          FieldName = 'VALORDESCONTO'
          Column = cxGrid1DBTableView1VALORDESCONTO
        end
        item
          Kind = skCount
          FieldName = 'NOME'
          Column = cxGrid1DBTableView1NOME
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      Styles.OnGetContentStyle = cxGrid1DBTableView1StylesGetContentStyle
      object cxGrid1DBTableView1selecionado: TcxGridDBColumn
        DataBinding.FieldName = 'selecionado'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Width = 20
        IsCaptionAssigned = True
      end
      object cxGrid1DBTableView1credor: TcxGridDBColumn
        Caption = 'Credor'
        DataBinding.FieldName = 'credor'
        Visible = False
        GroupIndex = 0
        Options.Editing = False
        Width = 248
      end
      object cxGrid1DBTableView1NOME: TcxGridDBColumn
        Caption = 'Nome'
        DataBinding.FieldName = 'NOME'
        Options.Editing = False
      end
      object cxGrid1DBTableView1CPF_CNPJ: TcxGridDBColumn
        Caption = 'CPF/CNPJ'
        DataBinding.FieldName = 'CPF_CNPJ'
        Options.Editing = False
      end
      object cxGrid1DBTableView1NOSSO_NUMERO: TcxGridDBColumn
        Caption = 'Nosso N'#250'mero'
        DataBinding.FieldName = 'NOSSO_NUMERO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 100
      end
      object cxGrid1DBTableView1DATAVENCTO: TcxGridDBColumn
        Caption = 'Vencimento'
        DataBinding.FieldName = 'DATAVENCTO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
      end
      object cxGrid1DBTableView1DATARECEBIMENTO: TcxGridDBColumn
        Caption = 'Recebimento'
        DataBinding.FieldName = 'DATARECEBIMENTO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 90
      end
      object cxGrid1DBTableView1VALORORIGINAL: TcxGridDBColumn
        Caption = 'Valor Original'
        DataBinding.FieldName = 'VALORORIGINAL'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object cxGrid1DBTableView1VALORREALIZADO: TcxGridDBColumn
        Caption = 'Valor Realizado'
        DataBinding.FieldName = 'VALORREALIZADO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object cxGrid1DBTableView1VALORJUROS: TcxGridDBColumn
        Caption = 'Juros'
        DataBinding.FieldName = 'VALORJUROS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object cxGrid1DBTableView1VALORMULTA: TcxGridDBColumn
        Caption = 'Multa'
        DataBinding.FieldName = 'VALORMULTA'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object cxGrid1DBTableView1VALORDESCONTO: TcxGridDBColumn
        Caption = 'Desconto'
        DataBinding.FieldName = 'VALORDESCONTO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object cxGrid1DBTableView1NUM_PARCELA: TcxGridDBColumn
        Caption = 'Parcela'
        DataBinding.FieldName = 'NUM_PARCELA'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object cxGrid1DBTableView1STATUS: TcxGridDBColumn
        DataBinding.FieldName = 'STATUS'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1109
    Height = 185
    Align = alTop
    Caption = 'Filtros'
    TabOrder = 2
    object RzToolButton3: TRzToolButton
      AlignWithMargins = True
      Left = 982
      Top = 137
      Width = 120
      Height = 40
      Cursor = crHandPoint
      GradientColorStyle = gcsSystem
      Flat = False
      ShowCaption = True
      Transparent = False
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Caption = 'Pesquisar'
      Color = 13273922
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton3Click
    end
    object dxCheckGroupBox1: TdxCheckGroupBox
      Left = 13
      Top = 21
      Caption = 'Per'#237'odo'
      CheckBox.Checked = False
      TabOrder = 0
      Height = 103
      Width = 285
      object Label3: TLabel
        Left = 16
        Top = 16
        Width = 15
        Height = 16
        Caption = 'De'
      end
      object Label4: TLabel
        Left = 144
        Top = 16
        Width = 19
        Height = 16
        Caption = 'At'#233
      end
      object cxDateEdit1: TcxDateEdit
        Left = 16
        Top = 32
        Properties.ShowTime = False
        TabOrder = 0
        Width = 121
      end
      object RadioButton1: TRadioButton
        Left = 16
        Top = 82
        Width = 165
        Height = 17
        Caption = 'Por data de Pagamento'
        TabOrder = 3
      end
      object RadioButton2: TRadioButton
        Left = 16
        Top = 61
        Width = 165
        Height = 17
        Caption = 'Por data de Vencimento'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
      object cxDateEdit2: TcxDateEdit
        Left = 144
        Top = 32
        Properties.ShowTime = False
        TabOrder = 1
        Width = 121
      end
    end
    object GroupBox5: TGroupBox
      Left = 13
      Top = 130
      Width = 285
      Height = 49
      Caption = 'Tipo de acordo'
      TabOrder = 1
      object RadioButton9: TRadioButton
        Left = 16
        Top = 20
        Width = 58
        Height = 17
        Caption = 'Todos'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RadioButton10: TRadioButton
        Left = 88
        Top = 20
        Width = 73
        Height = 17
        Caption = 'Quitados'
        TabOrder = 1
      end
      object RadioButton11: TRadioButton
        Left = 192
        Top = 20
        Width = 73
        Height = 17
        Caption = 'Abertos'
        TabOrder = 2
      end
    end
    object dxCheckGroupBox2: TdxCheckGroupBox
      Left = 317
      Top = 21
      Caption = 'Credor Espec'#237'fico'
      CheckBox.Checked = False
      TabOrder = 2
      Height = 71
      Width = 585
      object Label1: TLabel
        Left = 12
        Top = 16
        Width = 39
        Height = 16
        Caption = 'Credor'
      end
      object edtCodCredor: TEdit
        Left = 12
        Top = 35
        Width = 77
        Height = 24
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object edtNomeCredor: TEdit
        Left = 94
        Top = 35
        Width = 428
        Height = 24
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object cxButton2: TcxButton
        Left = 527
        Top = 34
        Width = 46
        Height = 25
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000000B744558745469746C65005A6F6F6D3BCF09FEBC000000
          8D49444154785EB592CB0D83301005433BEE251DB8082A6093D4E02E2C38530E
          17BB8DCD137A5CACC5D2CAE230A7D11BC99F97AA0E718AF76FB7984004195492
          41A4BB0F70FC016A4137F502918302040422A0D0C55E2033208613BADC0B5406
          82E1025D1D0E3C7A841528715FE2728D7DCF688F37CF476AC75F464DDA40B2C6
          9EC0D18EBD81999144E90A0CF1073A60247E2F791EBF0000000049454E44AE42
          6082}
        TabOrder = 2
        OnClick = cxButton2Click
      end
    end
    object dxCheckGroupBox3: TdxCheckGroupBox
      Left = 317
      Top = 108
      Caption = 'Devedor Espec'#237'fico'
      CheckBox.Checked = False
      TabOrder = 3
      Height = 71
      Width = 585
      object Label2: TLabel
        Left = 12
        Top = 18
        Width = 47
        Height = 16
        Caption = 'Devedor'
      end
      object edtCodDevedor: TEdit
        Left = 12
        Top = 34
        Width = 77
        Height = 24
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object edtNomeDevedor: TEdit
        Left = 94
        Top = 34
        Width = 428
        Height = 24
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object cxButton1: TcxButton
        Left = 527
        Top = 33
        Width = 46
        Height = 25
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000000B744558745469746C65005A6F6F6D3BCF09FEBC000000
          8D49444154785EB592CB0D83301005433BEE251DB8082A6093D4E02E2C38530E
          17BB8DCD137A5CACC5D2CAE230A7D11BC99F97AA0E718AF76FB7984004195492
          41A4BB0F70FC016A4137F502918302040422A0D0C55E2033208613BADC0B5406
          82E1025D1D0E3C7A841528715FE2728D7DCF688F37CF476AC75F464DDA40B2C6
          9EC0D18EBD81999144E90A0CF1073A60247E2F791EBF0000000049454E44AE42
          6082}
        TabOrder = 2
        OnClick = cxButton1Click
      end
    end
  end
  object QRelatorio: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'SELECT '
      '  ban.NOME AS credor,'
      '  cli.NOME,'
      '  cli.CPF_CNPJ,'
      '  pa.NROPERACAO,'
      '  pa.DATAVENCTO,'
      '  pa.DATARECEBIMENTO,'
      '  pa.VALORORIGINAL,'
      '  pa.VALORREALIZADO,'
      '  pa.VALORJUROS,'
      '  pa.VALORMULTA,'
      '  pa.VALORDESCONTO,'
      '  pa.VALORHONORARIO,'
      '  pa.NUM_PARCELA '
      'FROM'
      '  bancos ban '
      '  INNER JOIN clientes_credores cc '
      '    ON cc.cod_credor = ban.CODIGO '
      '  INNER JOIN clientes cli '
      '    ON cli.CODIGO = cc.cod_cliente '
      '  INNER JOIN parcelas pa '
      '    ON pa.CLIENTE = cli.CPF_CNPJ '
      'WHERE ban.CODIGO = 3 '
      '')
    Left = 104
    Top = 16
  end
  object QComissao: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'SELECT '
      '  c.CODIGO AS comissao_unica,'
      '  bc.codigo AS comissao_geral '
      'FROM'
      '  bancos b '
      '  LEFT JOIN comissoeseatualizacao c '
      '    ON c.CODIGO_CREDOR = b.CODIGO '
      '  LEFT JOIN bancos_comissao bc '
      '    ON bc.cod_banco = c.CODIGO '
      'WHERE b.CODIGO = 3 ')
    Left = 152
    Top = 16
  end
  object mtRelatorio: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 200
    Top = 16
    object mtRelatoriocredor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'credor'
      Origin = 'NOME'
      Size = 100
    end
    object mtRelatorioNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object mtRelatorioCPF_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      ProviderFlags = []
    end
    object mtRelatorioNROPERACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NROPERACAO'
      Origin = 'NROPERACAO'
      ProviderFlags = []
    end
    object mtRelatorioDATAVENCTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATAVENCTO'
      Origin = 'DATAVENCTO'
      ProviderFlags = []
      Size = 30
    end
    object mtRelatorioDATARECEBIMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATARECEBIMENTO'
      Origin = 'DATARECEBIMENTO'
      ProviderFlags = []
      Size = 30
    end
    object mtRelatorioVALORORIGINAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORORIGINAL'
      Origin = 'VALORORIGINAL'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
      Precision = 12
      Size = 6
    end
    object mtRelatorioVALORREALIZADO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORREALIZADO'
      Origin = 'VALORREALIZADO'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
      Precision = 12
      Size = 6
    end
    object mtRelatorioVALORJUROS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORJUROS'
      Origin = 'VALORJUROS'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
      Precision = 12
      Size = 6
    end
    object mtRelatorioVALORMULTA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORMULTA'
      Origin = 'VALORMULTA'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
      Precision = 12
      Size = 6
    end
    object mtRelatorioVALORDESCONTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORDESCONTO'
      Origin = 'VALORDESCONTO'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
      Precision = 12
      Size = 6
    end
    object mtRelatorioVALORHONORARIO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORHONORARIO'
      Origin = 'VALORHONORARIO'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
      Precision = 12
      Size = 6
    end
    object mtRelatorioNUM_PARCELA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUM_PARCELA'
      Origin = 'NUM_PARCELA'
      ProviderFlags = []
      Size = 10
    end
    object mtRelatoriocod_banco_comissao: TIntegerField
      FieldName = 'cod_banco_comissao'
    end
    object mtRelatorioVALORCOMISSAO: TFloatField
      FieldName = 'VALORCOMISSAO'
      DisplayFormat = '###,##0.00'
    end
    object mtRelatorioPERCENTUALCOMISSAO: TFloatField
      FieldName = 'PERCENTUALCOMISSAO'
      DisplayFormat = '###,##0.00'
    end
    object mtRelatorioREPASSE: TFloatField
      FieldName = 'REPASSE'
      DisplayFormat = '###,##0.00'
    end
    object mtRelatorioselecionado: TBooleanField
      FieldName = 'selecionado'
    end
    object mtRelatorioNOSSO_NUMERO: TStringField
      FieldName = 'NOSSO_NUMERO'
    end
    object mtRelatorioSTATUS: TStringField
      FieldName = 'STATUS'
    end
  end
  object dsRelatorio: TDataSource
    DataSet = mtRelatorio
    Left = 256
    Top = 16
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 528
    Top = 304
    PixelsPerInch = 96
    object cxVerde: TcxStyle
      AssignedValues = [svColor]
      Color = 11468691
    end
    object cxVermelho: TcxStyle
      AssignedValues = [svColor]
      Color = 9803263
    end
    object cxAmarelo: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12713983
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
end
