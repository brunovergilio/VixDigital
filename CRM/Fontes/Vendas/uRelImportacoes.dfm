object frmRelImportacoes: TfrmRelImportacoes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #218'ltimas Importa'#231#245'es de Credores'
  ClientHeight = 197
  ClientWidth = 596
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object QuickRep1: TQuickRep
    Left = 8
    Top = 280
    Width = 794
    Height = 1123
    ShowingPreview = False
    DataSet = QRelatorio
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsMaximized
    PreviewWidth = 500
    PreviewHeight = 500
    PrevInitialZoom = qrZoomToWidth
    PreviewDefaultSaveType = stPDF
    PreviewLeft = 0
    PreviewTop = 0
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 91
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        240.770833333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 75
        Top = 8
        Width = 569
        Height = 25
        Size.Values = (
          66.145833333333330000
          198.437500000000000000
          21.166666666666670000
          1505.479166666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TRIBUNA PROMOTORA DE CR'#201'DITOS E EVENTOS LTDA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 16
      end
      object QRLabel2: TQRLabel
        Left = 140
        Top = 31
        Width = 440
        Height = 17
        Size.Values = (
          44.979166666666670000
          370.416666666666700000
          82.020833333333330000
          1164.166666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 
          'R BARBARA HELIODORA , 1069 - 35010-040 - Governador Valadares - ' +
          'MG'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 167
        Top = 47
        Width = 385
        Height = 17
        Size.Values = (
          44.979166666666670000
          441.854166666666700000
          124.354166666666700000
          1018.645833333333000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CNPJ: 09.508.512/0001-38 - Fone: (33) 9912-2356 / (33)8892-4373'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 279
        Top = 66
        Width = 159
        Height = 17
        Size.Values = (
          44.979166666666670000
          738.187500000000000000
          174.625000000000000000
          420.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #218'LTIMAS IMPORTA'#199#213'ES'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 129
      Width = 718
      Height = 25
      AlignToBottom = False
      Color = clMedGray
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.145833333333330000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel5: TQRLabel
        Left = 6
        Top = 2
        Width = 54
        Height = 20
        Size.Values = (
          52.916666666666670000
          15.875000000000000000
          5.291666666666667000
          142.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Credor'
        Color = clMedGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel6: TQRLabel
        Left = 571
        Top = 2
        Width = 139
        Height = 20
        Size.Values = (
          52.916666666666670000
          1510.770833333333000000
          5.291666666666667000
          367.770833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = #218'ltima Importa'#231#227'o'
        Color = clMedGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 12
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 154
      Width = 718
      Height = 23
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        60.854166666666670000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 8
        Top = 3
        Width = 39
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          7.937500000000000000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = QRelatorio
        DataField = 'Credor'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 580
        Top = 3
        Width = 130
        Height = 17
        Size.Values = (
          44.979166666666670000
          1534.583333333333000000
          7.937500000000000000
          343.958333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = QRelatorio
        DataField = 'Ultima_importacao'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
  end
  object dxCheckGroupBox2: TdxCheckGroupBox
    Left = 5
    Top = 76
    Caption = 'Credor Espec'#237'fico'
    CheckBox.Checked = False
    TabOrder = 0
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
      Left = 528
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
  object dxCheckGroupBox1: TdxCheckGroupBox
    Left = 5
    Top = 1
    Caption = 'Per'#237'odo'
    CheckBox.Checked = False
    TabOrder = 1
    Height = 69
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
    object cxDateEdit2: TcxDateEdit
      Left = 144
      Top = 32
      Properties.ShowTime = False
      TabOrder = 1
      Width = 121
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 147
    Width = 596
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 155
    ExplicitWidth = 605
    object RzToolButton1: TRzToolButton
      AlignWithMargins = True
      Left = 347
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
      Caption = 'Imprimir'
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
      Left = 473
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
    object RzToolButton3: TRzToolButton
      AlignWithMargins = True
      Left = 221
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
      Caption = 'Excel'
      Color = 13273922
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton3Click
      ExplicitLeft = 239
      ExplicitTop = -2
      ExplicitHeight = 40
    end
  end
  object cxGrid1: TcxGrid
    Left = 389
    Top = 231
    Width = 250
    Height = 200
    TabOrder = 4
    Visible = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsRealtorio
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1Credor: TcxGridDBColumn
        DataBinding.FieldName = 'Credor'
      end
      object cxGrid1DBTableView1Ultima_importacao: TcxGridDBColumn
        DataBinding.FieldName = 'Ultima_importacao'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object QRelatorio: TFDQuery
    Active = True
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'SELECT '
      '  b.NOME as Credor,'
      '  c.DTA_CAD as Ultima_importacao'
      'FROM'
      '  clientes c '
      '  INNER JOIN clientes_credores cc '
      '    ON cc.cod_cliente = c.CODIGO '
      '  INNER JOIN bancos b '
      '    ON b.CODIGO = cc.cod_credor '
      'GROUP BY cc.cod_credor '
      'ORDER BY b.nome, c.DTA_CAD DESC ')
    Left = 328
    Top = 24
    object QRelatorioCredor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Credor'
      Origin = 'Credor'
      Size = 100
    end
    object QRelatorioUltima_importacao: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'Ultima_importacao'
      Origin = 'Ultima_importacao'
    end
  end
  object dsRealtorio: TDataSource
    DataSet = QRelatorio
    Left = 376
    Top = 24
  end
  object SaveDialog1: TSaveDialog
    Left = 424
    Top = 24
  end
end
