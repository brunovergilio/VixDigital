object frmBoletos: TfrmBoletos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Emiss'#227'o de Boletos'
  ClientHeight = 667
  ClientWidth = 1176
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1176
    Height = 73
    Align = alTop
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 20
      Width = 56
      Height = 23
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 848
      Top = 20
      Width = 58
      Height = 23
      Caption = 'Banco:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edt_Nome: TDBEdit
      Tag = 2
      Left = 85
      Top = 20
      Width = 435
      Height = 21
      AutoSize = False
      BorderStyle = bsNone
      DataField = 'NOME'
      DataSource = FrmClientes.UniDSQClientes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
    end
    object cbxBanco: TComboBox
      Left = 912
      Top = 20
      Width = 249
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 1
      ParentFont = False
      TabOrder = 1
      Text = 'CAIXA ECON'#212'MICA FEDERAL'
      Items.Strings = (
        '-SELECIONE O BANCO-'
        'CAIXA ECON'#212'MICA FEDERAL'
        'SICOOB'
        'ITAU'
        '')
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 617
    Width = 1176
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object RzToolButton2: TRzToolButton
      AlignWithMargins = True
      Left = 1053
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
    object RzToolButton8: TRzToolButton
      AlignWithMargins = True
      Left = 927
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
      Caption = 'Gerar Boleto'
      Color = 13273922
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton8Click
      ExplicitLeft = 239
      ExplicitTop = -2
      ExplicitHeight = 40
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 73
    Width = 1176
    Height = 544
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      PopupMenu = PopupMenu1
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsContasReceber
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '###,##0.00'
          Kind = skSum
          FieldName = 'valor'
          Column = cxGrid1DBTableView1valor
        end
        item
          Format = '###,##0.00'
          Kind = skSum
          FieldName = 'valor_pago'
          Column = cxGrid1DBTableView1valor_pago
        end
        item
          Format = '###,##0.00'
          Kind = skSum
          FieldName = 'valor_atual'
          Column = cxGrid1DBTableView1valor_atual
        end
        item
          Kind = skCount
          FieldName = 'documento'
          Column = cxGrid1DBTableView1documento
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1selecionado: TcxGridDBColumn
        DataBinding.FieldName = 'selecionado'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.OnEditValueChanged = cxGrid1DBTableView1selecionadoPropertiesEditValueChanged
        Width = 20
        IsCaptionAssigned = True
      end
      object cxGrid1DBTableView1documento: TcxGridDBColumn
        Caption = 'Documento'
        DataBinding.FieldName = 'documento'
        Options.Editing = False
        Width = 178
      end
      object cxGrid1DBTableView1historico: TcxGridDBColumn
        Caption = 'Hist'#243'rico'
        DataBinding.FieldName = 'historico'
        Options.Editing = False
        Width = 354
      end
      object cxGrid1DBTableView1emissao: TcxGridDBColumn
        Caption = 'Emiss'#227'o'
        DataBinding.FieldName = 'emissao'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 100
      end
      object cxGrid1DBTableView1vencimento: TcxGridDBColumn
        Caption = 'Vencimento'
        DataBinding.FieldName = 'vencimento'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 100
      end
      object cxGrid1DBTableView1data_pagto: TcxGridDBColumn
        Caption = 'Pagamento'
        DataBinding.FieldName = 'data_pagto'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 100
      end
      object cxGrid1DBTableView1valor: TcxGridDBColumn
        Caption = 'Valor'
        DataBinding.FieldName = 'valor'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 100
      end
      object cxGrid1DBTableView1valor_pago: TcxGridDBColumn
        Caption = 'Valor Pago'
        DataBinding.FieldName = 'valor_pago'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 100
      end
      object cxGrid1DBTableView1valor_atual: TcxGridDBColumn
        Caption = 'Valor Atual'
        DataBinding.FieldName = 'valor_atual'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 100
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object QContasReceber: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from parcelas')
    Left = 352
    Top = 128
  end
  object mtContasReceber: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 408
    Top = 128
    object mtContasReceberselecionado: TBooleanField
      FieldName = 'selecionado'
    end
    object mtContasReceberdocumento: TStringField
      FieldName = 'documento'
      Size = 50
    end
    object mtContasReceberemissao: TDateField
      Alignment = taCenter
      FieldName = 'emissao'
    end
    object mtContasRecebervencimento: TDateField
      Alignment = taCenter
      FieldName = 'vencimento'
    end
    object mtContasReceberdata_pagto: TDateField
      Alignment = taCenter
      FieldName = 'data_pagto'
    end
    object mtContasRecebervalor: TFloatField
      FieldName = 'valor'
      DisplayFormat = '###,##0.00'
    end
    object mtContasRecebervalor_pago: TFloatField
      FieldName = 'valor_pago'
      DisplayFormat = '###,##0.00'
    end
    object mtContasRecebervalor_atual: TFloatField
      FieldName = 'valor_atual'
      DisplayFormat = '###,##0.00'
    end
    object mtContasReceberhistorico: TStringField
      FieldName = 'historico'
      Size = 100
    end
  end
  object dsContasReceber: TDataSource
    DataSet = mtContasReceber
    Left = 464
    Top = 128
  end
  object PopupMenu1: TPopupMenu
    Left = 160
    Top = 256
    object M1: TMenuItem
      Caption = 'Marcar todos'
      OnClick = M1Click
    end
    object D1: TMenuItem
      Caption = 'Desmarcar todos'
      OnClick = D1Click
    end
  end
  object ACBrBoletoFCFortes1: TACBrBoletoFCFortes
    LayOut = lFatura
    DirLogo = 'C:\Desenvolvimento\Delphi\VixDigital\CRM\Boletos\LogosBoleto'
    Left = 648
    Top = 176
  end
  object ACBrBoleto1: TACBrBoleto
    Banco.Numero = 756
    Banco.TamanhoMaximoNossoNum = 7
    Banco.TipoCobranca = cobBancoob
    Banco.LayoutVersaoArquivo = 81
    Banco.LayoutVersaoLote = 40
    Banco.CasasDecimaisMoraJuros = 2
    Cedente.TipoInscricao = pJuridica
    Cedente.IdentDistribuicao = tbBancoDistribui
    NumeroArquivo = 0
    ACBrBoletoFC = ACBrBoletoFCFortes1
    Configuracoes.Arquivos.LogRegistro = False
    Configuracoes.WebService.SSLHttpLib = httpOpenSSL
    Configuracoes.WebService.StoreName = 'My'
    Configuracoes.WebService.Ambiente = taHomologacao
    Configuracoes.WebService.Operacao = tpInclui
    Configuracoes.WebService.VersaoDF = '1.2'
    Left = 608
    Top = 176
  end
end
