object frmBoleto: TfrmBoleto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Boletos'
  ClientHeight = 652
  ClientWidth = 1279
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1279
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    Caption = 'Boleto Banc'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 1279
    Height = 611
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Boletos'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1271
        Height = 59
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object RzToolButton4: TRzToolButton
          AlignWithMargins = True
          Left = 1178
          Top = 3
          Width = 90
          Height = 53
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
          Caption = 'Pesquisar'
          Color = 13273922
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          OnClick = RzToolButton4Click
          ExplicitLeft = 1016
        end
        object GroupBox1: TGroupBox
          Left = 483
          Top = 0
          Width = 230
          Height = 52
          Caption = 'Per'#237'odo de Vencimentos'
          TabOrder = 1
          object Label1: TLabel
            Left = 4
            Top = 28
            Width = 20
            Height = 16
            Caption = 'De:'
          end
          object Label2: TLabel
            Left = 113
            Top = 28
            Width = 24
            Height = 16
            Caption = 'At'#233':'
          end
          object edtDataIni: TMaskEdit
            Left = 28
            Top = 20
            Width = 82
            Height = 24
            EditMask = '!99/99/0000;1;_'
            MaxLength = 10
            TabOrder = 0
            Text = '  /  /    '
          end
          object edtDataFim: TMaskEdit
            Left = 141
            Top = 20
            Width = 82
            Height = 24
            EditMask = '!99/99/0000;1;_'
            MaxLength = 10
            TabOrder = 1
            Text = '  /  /    '
          end
        end
        object dxCheckGroupBox1: TdxCheckGroupBox
          Left = 715
          Top = 0
          Caption = 'Devedor Espec'#237'fico'
          CheckBox.Checked = False
          TabOrder = 2
          Height = 52
          Width = 460
          object edtCodDevedor: TEdit
            Left = 8
            Top = 20
            Width = 77
            Height = 24
            Enabled = False
            ReadOnly = True
            TabOrder = 0
          end
          object edtNomeDevedor: TEdit
            Left = 88
            Top = 20
            Width = 317
            Height = 24
            Enabled = False
            ReadOnly = True
            TabOrder = 1
          end
          object cxButton1: TcxButton
            Left = 409
            Top = 19
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
        object GroupBox2: TGroupBox
          Left = 3
          Top = 0
          Width = 478
          Height = 52
          Caption = 'Informe o Banco'
          TabOrder = 0
          object cbxBanco: TComboBox
            Left = 4
            Top = 20
            Width = 469
            Height = 24
            Style = csDropDownList
            TabOrder = 0
          end
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 59
        Width = 1271
        Height = 471
        Align = alClient
        TabOrder = 1
        object cxGrid1DBTableView1: TcxGridDBTableView
          PopupMenu = PopupMenu1
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsContasReceber
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'DATAREFERENCIA'
              Column = cxGrid1DBTableView1DATAREFERENCIA
            end
            item
              Kind = skSum
              FieldName = 'VALORPREVISTO'
              Column = cxGrid1DBTableView1VALORPREVISTO
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Styles.OnGetContentStyle = cxGrid1DBTableView1StylesGetContentStyle
          object cxGrid1DBTableView1SELECIONADO: TcxGridDBColumn
            DataBinding.FieldName = 'SELECIONADO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Width = 20
            IsCaptionAssigned = True
          end
          object cxGrid1DBTableView1PDF: TcxGridDBColumn
            DataBinding.FieldName = 'PDF'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Glyph.SourceDPI = 96
                Glyph.Data = {
                  89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
                  6100000010744558745469746C65005072696E743B5064663BA5B5DD12000002
                  6249444154785EA5534D48545114FEDE6B22AD454651D0AE5270C4824ADC2854
                  E4A285A32941102E92A8064CFA612890A42145A442910A342268618B42572D12
                  0BA70C6122290B02A94D05FD408E32A333CE7BEF9ED3BDE7390DE3B66FF8E6FC
                  DC73BE7BEE7BF759CC8CFF4120E7581AB37575234CD4A409450AEC2928A5C427
                  65489A9E8EC9F7498D0690C71A3035ED7836A68D859FD1AB48C562288B4D8209
                  F8DE71190B132F109C9A068341C478BFAFB2D9461E3698A4F973DD416CBBD605
                  620211F0A9A61ADBBB7B655766C6C7AA3DF8B07FB7F805024410F55DE313F8D1
                  D9614695186CB2C6F871457C06C42C02014B0310A1803430F0E5502DC8F88AA4
                  59B1EC2C396260A6AAF25F6CF70CBE3ADCFFF05DFC78B837C52C0D723E4F295F
                  8480F2D76FF0ED4A04F0634DD624000CEBD683E9DF2742E55BCF5EECC5C9F959
                  94FEF9AA9BBD95A74CF03C4F8A492999442992D89F9647AD9EA1B71C69DD8B96
                  7017E6128B00C3307F76F1819292223CBA7F1D3D4371749FAF59CFCC19B90759
                  C745C65138D512C2C0E03012730B20C590DF8AC0964D1B71A6B519E965174ED6
                  8386050311D0C9B416290D96E1CE40D45F2316CB3623576DBCE4928BAC2F60E7
                  051C0FA98C87A52507A7DBFBE083B11AF76E476059AC27500513D826915C7431
                  BFB88CC6503D9E3F89E2E8A573085D68C391F6368C3D8EA2B1A11E89641AC9B4
                  0BD75D7584C4DCAF97FD77C70F384E1615C19DF08810AEDE0C96B9194ADE04E1
                  C6CD61D87600AE939E04202A39A562CDB59A4591EEA723EB8A37D4E697586C26
                  9D9CEAEB6C380620A3E9682E3333499576725FA36D447CB1822BCE9AEE4A93C2
                  2AFC05E9C29476E9D9BD180000000049454E44AE426082}
                Kind = bkGlyph
              end>
            Properties.ViewStyle = vsButtonsOnly
            Properties.OnButtonClick = cxGrid1DBTableView1PDFPropertiesButtonClick
            HeaderAlignmentHorz = taCenter
            Options.ShowEditButtons = isebAlways
          end
          object cxGrid1DBTableView1DATAREFERENCIA: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'DATAREFERENCIA'
            Options.Editing = False
            Width = 77
          end
          object cxGrid1DBTableView1DATAVENCTO: TcxGridDBColumn
            Caption = 'Vencimento'
            DataBinding.FieldName = 'DATAVENCTO'
            Options.Editing = False
            Width = 77
          end
          object cxGrid1DBTableView1NROPERACAO: TcxGridDBColumn
            Caption = 'Documento'
            DataBinding.FieldName = 'NROPERACAO'
            Options.Editing = False
            Width = 90
          end
          object cxGrid1DBTableView1BOL_NOSSO_NUMERO: TcxGridDBColumn
            Caption = 'Nosso N'#250'mero'
            DataBinding.FieldName = 'BOL_NOSSO_NUMERO'
            Options.Editing = False
            Width = 93
          end
          object cxGrid1DBTableView1NOME: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'NOME'
            Options.Editing = False
            Width = 551
          end
          object cxGrid1DBTableView1VALORPREVISTO: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VALORPREVISTO'
            Options.Editing = False
          end
          object cxGrid1DBTableView1IMPRESSO: TcxGridDBColumn
            Caption = 'Imp'
            DataBinding.FieldName = 'BOL_IMPRESSO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 35
          end
          object cxGrid1DBTableView1REMESSA: TcxGridDBColumn
            Caption = 'Rem'
            DataBinding.FieldName = 'BOL_REMESSA'
            PropertiesClassName = 'TcxCheckBoxProperties'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Width = 35
          end
          object cxGrid1DBTableView1STATUS: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'STATUS'
            Options.Editing = False
            Width = 153
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 530
        Width = 1271
        Height = 50
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object RzToolButton2: TRzToolButton
          AlignWithMargins = True
          Left = 1148
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
        object RzToolButton8: TRzToolButton
          AlignWithMargins = True
          Left = 1022
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
          Caption = 'Abrir Pasta de Boletos'
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
        object RzToolButton1: TRzToolButton
          AlignWithMargins = True
          Left = 770
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
          Caption = 'Gerar Remessa'
          Color = 13273922
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          OnClick = RzToolButton1Click
          ExplicitLeft = 719
          ExplicitTop = 6
        end
        object RzToolButton3: TRzToolButton
          AlignWithMargins = True
          Left = 644
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
          OnClick = RzToolButton3Click
          ExplicitLeft = 719
          ExplicitTop = 6
        end
        object RzToolButton6: TRzToolButton
          AlignWithMargins = True
          Left = 896
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
          Caption = 'Cancelar Boleto'
          Color = 13273922
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          OnClick = RzToolButton6Click
          ExplicitLeft = 635
          ExplicitTop = -2
          ExplicitHeight = 40
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Retorno'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel4: TPanel
        Left = 0
        Top = 530
        Width = 1271
        Height = 50
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object RzToolButton7: TRzToolButton
          AlignWithMargins = True
          Left = 1148
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
        object RzToolButton12: TRzToolButton
          AlignWithMargins = True
          Left = 1022
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
          Caption = 'Processar Retorno'
          Color = 13273922
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          OnClick = RzToolButton12Click
          ExplicitLeft = 239
          ExplicitTop = -2
          ExplicitHeight = 40
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 57
        Width = 1271
        Height = 473
        Align = alClient
        TabOrder = 1
        object cxGrid2DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsRetorno
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          Styles.OnGetContentStyle = cxGrid2DBTableView1StylesGetContentStyle
          object cxGrid2DBTableView1Selecionado: TcxGridDBColumn
            DataBinding.FieldName = 'Selecionado'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.OnEditValueChanged = cxGrid2DBTableView1SelecionadoPropertiesEditValueChanged
            Width = 20
            IsCaptionAssigned = True
          end
          object cxGrid2DBTableView1SacadoNome: TcxGridDBColumn
            Caption = 'Credor'
            DataBinding.FieldName = 'SacadoNome'
            Options.Editing = False
            Width = 315
          end
          object cxGrid2DBTableView1SacadoCPFCNPJ: TcxGridDBColumn
            Caption = 'CPF/CNPJ'
            DataBinding.FieldName = 'SacadoCPFCNPJ'
            Options.Editing = False
            Width = 130
          end
          object cxGrid2DBTableView1Documento: TcxGridDBColumn
            DataBinding.FieldName = 'Documento'
            Options.Editing = False
            Width = 73
          end
          object cxGrid2DBTableView1NossoNumero: TcxGridDBColumn
            Caption = 'Nosso Numero'
            DataBinding.FieldName = 'NossoNumero'
            Options.Editing = False
            Width = 90
          end
          object cxGrid2DBTableView1DataOcorrencia: TcxGridDBColumn
            Caption = 'Data Ocorr'#234'ncia'
            DataBinding.FieldName = 'DataOcorrencia'
            Options.Editing = False
            Width = 101
          end
          object cxGrid2DBTableView1DataProcessamento: TcxGridDBColumn
            Caption = 'Data Processamento'
            DataBinding.FieldName = 'DataProcessamento'
            Options.Editing = False
            Width = 123
          end
          object cxGrid2DBTableView1ValorRecebido: TcxGridDBColumn
            Caption = 'Valor Recebido'
            DataBinding.FieldName = 'ValorRecebido'
            Options.Editing = False
            Width = 104
          end
          object cxGrid2DBTableView1ValorDocumento: TcxGridDBColumn
            Caption = 'Valor Documento'
            DataBinding.FieldName = 'ValorDocumento'
            Options.Editing = False
            Width = 113
          end
          object cxGrid2DBTableView1ValorJuros: TcxGridDBColumn
            Caption = 'Juros'
            DataBinding.FieldName = 'ValorJuros'
            Options.Editing = False
          end
          object cxGrid2DBTableView1ValorTaxa: TcxGridDBColumn
            Caption = 'Taxa'
            DataBinding.FieldName = 'ValorTaxa'
            Options.Editing = False
          end
          object cxGrid2DBTableView1ValorPago: TcxGridDBColumn
            Caption = 'Pago'
            DataBinding.FieldName = 'ValorPago'
            Options.Editing = False
          end
          object cxGrid2DBTableView1Ocorrencia: TcxGridDBColumn
            DataBinding.FieldName = 'Ocorrencia'
            Options.Editing = False
            Width = 250
          end
          object cxGrid2DBTableView1MotivoRejeicao: TcxGridDBColumn
            Caption = 'Motivo Rejeicao'
            DataBinding.FieldName = 'MotivoRejeicao'
            Visible = False
            Options.Editing = False
            Width = 500
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 1271
        Height = 57
        Align = alTop
        TabOrder = 2
        object Label3: TLabel
          Left = 1
          Top = 1
          Width = 183
          Height = 16
          Caption = 'Caminho do arquivo de retorno:'
        end
        object RzToolButton5: TRzToolButton
          AlignWithMargins = True
          Left = 1162
          Top = 6
          Width = 98
          Height = 49
          Cursor = crHandPoint
          GradientColorStyle = gcsSystem
          Flat = False
          ShowCaption = True
          Transparent = False
          UseToolbarButtonSize = False
          UseToolbarShowCaption = False
          UseToolbarVisualStyle = False
          VisualStyle = vsWinXP
          Caption = 'Carregar'
          Color = 13273922
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          OnClick = RzToolButton5Click
        end
        object edtCaminhoRetorno: TEdit
          Left = 1
          Top = 19
          Width = 1153
          Height = 24
          Color = clMenu
          Enabled = False
          TabOrder = 0
        end
      end
    end
  end
  object dsContasReceber: TDataSource
    DataSet = mtContasReceber
    Left = 920
    Top = 256
  end
  object QContasReceber: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'SELECT '
      '  c.NOME,'
      '  c.CPF_CNPJ,'
      '  c.ENDERECO,'
      '  c.SETOR,'
      '  c.CIDADE,'
      '  c.UF,'
      '  c.CEP,'
      '  p.* '
      'FROM'
      '  parcelas p '
      '  INNER JOIN clientes c '
      '    ON c.CPF_CNPJ = p.CLIENTE '
      '-- WHERE c.CODIGO = :Codigo '
      'ORDER BY c.NOME,'
      '  p.DATAVENCTO ')
    Left = 872
    Top = 256
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
    Left = 920
    Top = 136
  end
  object ACBrBoletoFCFortes1: TACBrBoletoFCFortes
    LayOut = lFatura
    DirLogo = 'C:\Desenvolvimento\Delphi\VixDigital\CRM\Boletos\LogosBoleto'
    Left = 960
    Top = 136
  end
  object QBanco: TFDQuery
    Connection = frmDataModule.UniConnection1
    Left = 818
    Top = 201
  end
  object QDadosBanco: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'SELECT                        '
      '  b.numero,                   '
      '  bd.*                        '
      'FROM                          '
      '  bancos_dados_bancarios bd   '
      '  INNER JOIN banco b          '
      '    ON b.codigo = bd.COD_BANCO')
    Left = 864
    Top = 200
    object QDadosBancoCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QDadosBancoCOD_BANCO: TIntegerField
      FieldName = 'COD_BANCO'
      Origin = 'COD_BANCO'
      Required = True
    end
    object QDadosBancoAGENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
    end
    object QDadosBancoAGENCIA_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIA_DIGITO'
      Origin = 'AGENCIA_DIGITO'
      Size = 5
    end
    object QDadosBancoAGENCIA_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIA_NOME'
      Origin = 'AGENCIA_NOME'
      Size = 50
    end
    object QDadosBancoCONTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA'
      Origin = 'CONTA'
    end
    object QDadosBancoCONTA_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA_DIGITO'
      Origin = 'CONTA_DIGITO'
      Size = 5
    end
    object QDadosBancoCONTA_CORRENTISTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA_CORRENTISTA'
      Origin = 'CONTA_CORRENTISTA'
      Size = 50
    end
    object QDadosBancoCONTA_NOME_CORRENTISTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA_NOME_CORRENTISTA'
      Origin = 'CONTA_NOME_CORRENTISTA'
      Size = 100
    end
    object QDadosBancoCOD_CEDENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_CEDENTE'
      Origin = 'COD_CEDENTE'
    end
    object QDadosBancoDIGITO_CEDENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DIGITO_CEDENTE'
      Origin = 'DIGITO_CEDENTE'
    end
    object QDadosBancoLAYOUT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LAYOUT'
      Origin = 'LAYOUT'
      FixedChar = True
      Size = 5
    end
    object QDadosBancoNOSSONUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOSSONUMERO'
      Origin = 'NOSSONUMERO'
    end
    object QDadosBancoCARTEIRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CARTEIRA'
      Origin = 'CARTEIRA'
      Size = 5
    end
    object QDadosBancoCONVENIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONVENIO'
      Origin = 'CONVENIO'
      Size = 50
    end
    object QDadosBancoENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 100
    end
    object QDadosBancoTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object QDadosBancoCEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object QDadosBancoUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF'
      Origin = 'UF'
      FixedChar = True
      Size = 2
    end
    object QDadosBancoCPF_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
      Size = 25
    end
    object QDadosBancoNOME_CEDENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_CEDENTE'
      Origin = 'NOME_CEDENTE'
      Size = 100
    end
    object QDadosBancoCIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 100
    end
    object QDadosBanconumero: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'numero'
      Origin = 'numero'
    end
  end
  object mtContasReceber: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 816
    Top = 256
    object mtContasReceberDATAVENCTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATAVENCTO'
      Origin = 'DATAVENCTO'
      Size = 30
    end
    object mtContasReceberNROPERACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NROPERACAO'
      Origin = 'NROPERACAO'
    end
    object mtContasReceberBOL_NOSSO_NUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BOL_NOSSO_NUMERO'
      Origin = 'BOL_NOSSO_NUMERO'
    end
    object mtContasReceberNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object mtContasReceberVALORPREVISTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALORPREVISTO'
      Origin = 'VALORPREVISTO'
      DisplayFormat = '###,##0.00'
      Precision = 12
      Size = 6
    end
    object mtContasReceberDATAREFERENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DATAREFERENCIA'
      Origin = 'DATAREFERENCIA'
      Size = 30
    end
    object mtContasReceberIMPRESSO: TBooleanField
      FieldName = 'IMPRESSO'
    end
    object mtContasReceberREMESSA: TBooleanField
      FieldName = 'REMESSA'
    end
    object mtContasReceberREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
    end
    object mtContasReceberSELECIONADO: TBooleanField
      FieldName = 'SELECIONADO'
    end
    object mtContasReceberCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
    end
    object mtContasReceberENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object mtContasReceberSETOR: TStringField
      FieldName = 'SETOR'
      Size = 50
    end
    object mtContasReceberCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object mtContasReceberUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object mtContasReceberCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object mtContasReceberBOL_IMPRESSO: TBooleanField
      FieldName = 'BOL_IMPRESSO'
    end
    object mtContasReceberBOL_REMESSA: TBooleanField
      FieldName = 'BOL_REMESSA'
    end
    object mtContasReceberSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 25
    end
    object mtContasReceberPDF: TBooleanField
      FieldName = 'PDF'
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 864
    Top = 136
  end
  object PopupMenu1: TPopupMenu
    Left = 816
    Top = 136
    object M1: TMenuItem
      Caption = 'Marcar todos'
      OnClick = M1Click
    end
    object D1: TMenuItem
      Caption = 'Desmarcar todos'
      OnClick = D1Click
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 920
    Top = 192
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
  object dsRetorno: TDataSource
    DataSet = mtRetorno
    Left = 632
    Top = 328
  end
  object mtRetorno: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 588
    Top = 328
    object mtRetornoSelecionado: TBooleanField
      FieldName = 'Selecionado'
    end
    object mtRetornoDocumento: TStringField
      FieldName = 'Documento'
    end
    object mtRetornoSeuNumero: TStringField
      FieldName = 'SeuNumero'
      Size = 10
    end
    object mtRetornoCarteira: TStringField
      FieldName = 'Carteira'
      Size = 10
    end
    object mtRetornoNossoNumero: TStringField
      FieldName = 'NossoNumero'
    end
    object mtRetornoDataOcorrencia: TDateField
      FieldName = 'DataOcorrencia'
    end
    object mtRetornoDataProcessamento: TDateField
      FieldName = 'DataProcessamento'
    end
    object mtRetornoOcorrencia: TStringField
      FieldName = 'Ocorrencia'
      Size = 100
    end
    object mtRetornoValorRecebido: TFloatField
      FieldName = 'ValorRecebido'
      DisplayFormat = '###,##0.00'
    end
    object mtRetornoValorDocumento: TFloatField
      FieldName = 'ValorDocumento'
      DisplayFormat = '###,##0.00'
    end
    object mtRetornoValorJuros: TFloatField
      FieldName = 'ValorJuros'
      DisplayFormat = '###,##0.00'
    end
    object mtRetornoValorTaxa: TFloatField
      FieldName = 'ValorTaxa'
      DisplayFormat = '###,##0.00'
    end
    object mtRetornoValorPago: TFloatField
      FieldName = 'ValorPago'
      DisplayFormat = '###,##0.00'
    end
    object mtRetornoMotivoRejeicao: TStringField
      FieldName = 'MotivoRejeicao'
      Size = 200
    end
    object mtRetornoSacadoNome: TStringField
      FieldName = 'SacadoNome'
      Size = 100
    end
    object mtRetornoSacadoCPFCNPJ: TStringField
      FieldName = 'SacadoCPFCNPJ'
    end
  end
end
