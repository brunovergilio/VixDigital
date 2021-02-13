object frmExtratoChamadas: TfrmExtratoChamadas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Extrato de Chamadas'
  ClientHeight = 571
  ClientWidth = 998
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 998
    Height = 217
    Align = alTop
    Caption = 'Importa'#231#245'es'
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 2
      Top = 21
      Width = 994
      Height = 194
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsImportacao
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1selecionado: TcxGridDBColumn
          DataBinding.FieldName = 'selecionado'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Glyph.SourceDPI = 96
              Glyph.Data = {
                89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
                610000001974455874536F6674776172650041646F626520496D616765526561
                647971C9653C0000000C744558745469746C650054726173683B649A356D0000
                024249444154785E75924F6BD44018C69FD9CC36E976975D28A52DDA562DB1C5
                2FE021C52FE04128C52A28BD7810912E5814113D78F0E4A907BD0852C4434FF5
                50B4071145DB83081E2C45BBBBAD8AF51F8B6CDBD5CD6EE69F99A181B0A40F09
                79923CEFF07BDF19AA94429BC8D9A96B6FFA7ABB3DC7B10128B45A0C3F7E5657
                E61FDD1D439B28122484F06AB5DDD9B907776E025053176EDC9652CE2041D475
                5D63CAE532C6CF14970921DED0E14184CFE2E973578A1A7060E8204252FD5FE3
                AE2CCCCF8EE9BA38013935397DFFD8E8B037E21E427F5F0F0AF91CD21D142CE0
                A8FFFD87ED9D3A46DD419437BE7961F61E80CB9A8EEA62002925E5C542EF01EC
                0629A4EB01489AC39104CD264775BB893FB526FC264177FF004AA5CD4B00A601
                C888C0924262F9C54B8D0E4A2DA42905491128A9C03807E7C2B4111BBA151118
                ADAF3ECF1F3F31BE3331711241AB85ADEFBF313A321C12F82855BEE2A87B04BE
                DFC0D2D22BBC7DBD5068DF05012050522293C982520A100BD95C0E969582440A
                99AE2C0801A410D0598D1F23302F4C2A820EDB41486E2663DBB62E306D394E67
                E83974265A2022507BDB2826CFCF98FE95A4900A86C40A6F2194FEAE7D442012
                0F92101C003197E01ACA583D40E3A24C5C541FA04882F3A8084CA3EF2DC6431F
                CF542A15E3955271021D94918D500D03E73C2193D402E7D50FAB6B3D9D8E6D82
                1B9B9FC1183733F8F8691D8D860FC1D9D6BE0B1025E79E3E59BCDA95CDA090CF
                E3D7970A1817085A0C6BEFDF210818A8957EBC2FC1B3C587D701DC8A9D0D2BC1
                33C4F41F3E8F1596C01C0CF00000000049454E44AE426082}
              Kind = bkGlyph
            end>
          Properties.ViewStyle = vsButtonsOnly
          Properties.OnButtonClick = cxGrid1DBTableView1selecionadoPropertiesButtonClick
          Options.ShowEditButtons = isebAlways
          Width = 35
          IsCaptionAssigned = True
        end
        object cxGrid1DBTableView1descricao: TcxGridDBColumn
          Caption = 'Descri'#231#227'o'
          DataBinding.FieldName = 'descricao'
          Options.Editing = False
          Width = 752
        end
        object cxGrid1DBTableView1data_criacao: TcxGridDBColumn
          Caption = 'Data Importa'#231#227'o'
          DataBinding.FieldName = 'data_criacao'
          Options.Editing = False
          Width = 194
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 217
    Width = 998
    Height = 304
    Align = alClient
    Caption = 'Extrato de chamadas'
    TabOrder = 1
    object cxGrid2: TcxGrid
      Left = 2
      Top = 21
      Width = 994
      Height = 281
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxGrid2DBTableView1: TcxGridDBTableView
        PopupMenu = PopupMenu1
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsExtrato
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'nome'
            Column = cxGrid2DBTableView1nome
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid2DBTableView1selecionado: TcxGridDBColumn
          DataBinding.FieldName = 'selecionado'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 20
          IsCaptionAssigned = True
        end
        object cxGrid2DBTableView1nome: TcxGridDBColumn
          Caption = 'Nome'
          DataBinding.FieldName = 'nome'
          Options.Editing = False
          Width = 387
        end
        object cxGrid2DBTableView1telefone: TcxGridDBColumn
          Caption = 'Telefone'
          DataBinding.FieldName = 'telefone'
          Options.Editing = False
        end
        object cxGrid2DBTableView1cpf: TcxGridDBColumn
          Caption = 'CPF'
          DataBinding.FieldName = 'cpf'
          Options.Editing = False
        end
        object cxGrid2DBTableView1dossie: TcxGridDBColumn
          Caption = 'Dossi'#234
          DataBinding.FieldName = 'dossie'
          Options.Editing = False
        end
        object cxGrid2DBTableView1banco: TcxGridDBColumn
          Caption = 'Banco'
          DataBinding.FieldName = 'banco'
          Options.Editing = False
        end
        object cxGrid2DBTableView1data: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'data'
          Options.Editing = False
        end
        object cxGrid2DBTableView1origem: TcxGridDBColumn
          Caption = 'Origem'
          DataBinding.FieldName = 'origem'
          Options.Editing = False
        end
        object cxGrid2DBTableView1destino: TcxGridDBColumn
          Caption = 'Destino'
          DataBinding.FieldName = 'destino'
          Options.Editing = False
        end
        object cxGrid2DBTableView1finalizado: TcxGridDBColumn
          Caption = 'Finalizado'
          DataBinding.FieldName = 'finalizado'
          Options.Editing = False
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
    object cxGrid3: TcxGrid
      Left = 136
      Top = 32
      Width = 532
      Height = 182
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      object cxGridDBTableView1: TcxGridDBTableView
        PopupMenu = PopupMenu1
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsExtrato
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'nome'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGridDBTableView1nome: TcxGridDBColumn
          Caption = 'NOME'
          DataBinding.FieldName = 'nome'
        end
        object cxGridDBTableView1telefone: TcxGridDBColumn
          Caption = 'TELEFONE'
          DataBinding.FieldName = 'telefone'
        end
        object cxGridDBTableView1cpf: TcxGridDBColumn
          Caption = 'CPF/CNPJ'
          DataBinding.FieldName = 'cpf'
        end
        object cxGridDBTableView1dossie: TcxGridDBColumn
          Caption = 'DOSSI'#202
          DataBinding.FieldName = 'dossie'
        end
        object cxGridDBTableView1banco: TcxGridDBColumn
          Caption = 'BANCO'
          DataBinding.FieldName = 'banco'
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 521
    Width = 998
    Height = 50
    Align = alBottom
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 2
    object AdvGlowButton3: TAdvGlowButton
      AlignWithMargins = True
      Left = 856
      Top = 3
      Width = 135
      Height = 40
      Cursor = crHandPoint
      HelpType = htKeyword
      Align = alRight
      Caption = 'Exportar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Roboto'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = AdvGlowButton3Click
      Appearance.BorderColor = 13602864
      Appearance.BorderColorHot = 13602864
      Appearance.BorderColorCheckedHot = 13602864
      Appearance.BorderColorDown = 13602864
      Appearance.BorderColorChecked = 13602864
      Appearance.BorderColorDisabled = 13602864
      Appearance.BorderColorFocused = 13602864
      Appearance.Color = 13602864
      Appearance.ColorTo = 13602864
      Appearance.ColorChecked = 13602864
      Appearance.ColorCheckedTo = 13602864
      Appearance.ColorDisabled = 13602864
      Appearance.ColorDisabledTo = 13602864
      Appearance.ColorDown = 13602864
      Appearance.ColorDownTo = 13602864
      Appearance.ColorHot = 13602864
      Appearance.ColorHotTo = 13602864
      Appearance.ColorMirror = 13602864
      Appearance.ColorMirrorTo = 13602864
      Appearance.ColorMirrorHot = 13602864
      Appearance.ColorMirrorHotTo = 13602864
      Appearance.ColorMirrorDown = 13602864
      Appearance.ColorMirrorDownTo = 13602864
      Appearance.ColorMirrorChecked = 13602864
      Appearance.ColorMirrorCheckedTo = 13602864
      Appearance.ColorMirrorDisabled = 13602864
      Appearance.ColorMirrorDisabledTo = 13602864
      Appearance.TextColorChecked = clWhite
      Appearance.TextColorDown = clWhite
      Appearance.TextColorHot = clWhite
      ExplicitLeft = 787
    end
  end
  object mtImportacao: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 528
    Top = 120
    object mtImportacaoselecionado: TBooleanField
      FieldName = 'selecionado'
    end
    object mtImportacaocod_importacao: TIntegerField
      FieldName = 'cod_importacao'
    end
    object mtImportacaodescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object mtImportacaodata_criacao: TDateTimeField
      FieldName = 'data_criacao'
    end
  end
  object dsImportacao: TDataSource
    DataSet = mtImportacao
    OnDataChange = dsImportacaoDataChange
    Left = 568
    Top = 120
  end
  object dsExtrato: TDataSource
    DataSet = mtExtrato
    Left = 488
    Top = 288
  end
  object mtExtrato: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 448
    Top = 288
    object mtExtratoselecionado: TBooleanField
      FieldName = 'selecionado'
    end
    object mtExtratodata: TDateTimeField
      FieldName = 'data'
    end
    object mtExtratoorigem: TIntegerField
      FieldName = 'origem'
    end
    object mtExtratodestino: TStringField
      FieldName = 'destino'
      Size = 30
    end
    object mtExtratofinalizado: TStringField
      FieldName = 'finalizado'
    end
    object mtExtratonome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object mtExtratotelefone: TStringField
      FieldName = 'telefone'
    end
    object mtExtratocpf: TStringField
      FieldName = 'cpf'
    end
    object mtExtratodossie: TStringField
      FieldName = 'dossie'
    end
    object mtExtratobanco: TStringField
      FieldName = 'banco'
      Size = 30
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 248
    Top = 369
    object M1: TMenuItem
      Caption = 'Marcar todos'
      OnClick = M1Click
    end
    object D1: TMenuItem
      Caption = 'Desmarcar todos'
      OnClick = D1Click
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 496
    Top = 296
  end
end
