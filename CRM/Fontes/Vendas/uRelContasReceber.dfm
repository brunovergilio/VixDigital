object frmRelContasReceber: TfrmRelContasReceber
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Contas a Receber'
  ClientHeight = 481
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 596
    Height = 441
    Align = alTop
    Caption = 'Filtros'
    TabOrder = 0
    ExplicitWidth = 593
    object dxCheckGroupBox1: TdxCheckGroupBox
      Left = 4
      Top = 228
      Caption = 'Per'#237'odo'
      CheckBox.Checked = False
      TabOrder = 3
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
    object GroupBox2: TGroupBox
      Left = 295
      Top = 289
      Width = 294
      Height = 143
      Caption = 'Ordena'#231#227'o'
      TabOrder = 7
      object RadioButton3: TRadioButton
        Left = 16
        Top = 20
        Width = 113
        Height = 17
        Caption = 'None (Devedor)'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RadioButton4: TRadioButton
        Left = 16
        Top = 78
        Width = 113
        Height = 17
        Caption = 'Data Vencimento'
        TabOrder = 1
      end
      object RadioButton5: TRadioButton
        Left = 16
        Top = 49
        Width = 129
        Height = 17
        Caption = 'Data Pagamento'
        TabOrder = 2
      end
      object RadioButton6: TRadioButton
        Left = 16
        Top = 108
        Width = 129
        Height = 17
        Caption = 'Valor Principal'
        TabOrder = 3
      end
    end
    object GroupBox3: TGroupBox
      Left = 295
      Top = 228
      Width = 294
      Height = 58
      Caption = 'Op'#231#245'es das Parcelas'
      TabOrder = 6
      object cbxOpcoes: TComboBox
        Left = 11
        Top = 24
        Width = 262
        Height = 24
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 0
        Text = 'Todos'
        Items.Strings = (
          'Todos'
          'Acordos em Aberto'
          'Acordos Quitados')
      end
    end
    object GroupBox4: TGroupBox
      Left = 4
      Top = 335
      Width = 285
      Height = 49
      Caption = 'Tipo do c'#225'lculo da comiss'#227'o'
      TabOrder = 4
      object RadioButton7: TRadioButton
        Left = 16
        Top = 20
        Width = 113
        Height = 17
        Caption = 'Valor Principal'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RadioButton8: TRadioButton
        Left = 144
        Top = 20
        Width = 113
        Height = 17
        Caption = 'Valor Realizado'
        TabOrder = 1
      end
    end
    object GroupBox5: TGroupBox
      Left = 4
      Top = 383
      Width = 285
      Height = 49
      Caption = 'Tipo de acordo'
      TabOrder = 5
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
      Left = 4
      Top = 18
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
      Left = 4
      Top = 88
      Caption = 'Devedor Espec'#237'fico'
      CheckBox.Checked = False
      TabOrder = 1
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
    object dxCheckGroupBox4: TdxCheckGroupBox
      Left = 4
      Top = 158
      Caption = 'Cobrador Espec'#237'fico'
      CheckBox.Checked = False
      TabOrder = 2
      Height = 71
      Width = 585
      object cbxUsuario: TComboBox
        Left = 12
        Top = 29
        Width = 561
        Height = 24
        Style = csDropDownList
        TabOrder = 0
      end
    end
  end
  object QuickRep1: TQuickRep
    Left = -12
    Top = 552
    Width = 1123
    Height = 794
    ShowingPreview = False
    DataSet = mtRelatorio
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
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = True
    PrinterSettings.CustomBinCode = 15
    PrinterSettings.ExtendedDuplex = 1
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 9
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.MemoryLimit = 1000000
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 2
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
      Width = 1047
      Height = 91
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        240.770833333333300000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape1: TQRShape
        Left = 1
        Top = 2
        Width = 1046
        Height = 1
        Size.Values = (
          2.645833333333333000
          2.645833333333333000
          5.291666666666667000
          2767.541666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 1
        Top = 89
        Width = 1046
        Height = 1
        Size.Values = (
          2.645833333333333000
          2.645833333333333000
          235.479166666666700000
          2767.541666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel1: TQRLabel
        Left = 239
        Top = 8
        Width = 569
        Height = 25
        Size.Values = (
          66.145833333333330000
          632.354166666666700000
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
        Left = 304
        Top = 31
        Width = 440
        Height = 17
        Size.Values = (
          44.979166666666670000
          804.333333333333300000
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
        Left = 331
        Top = 47
        Width = 385
        Height = 17
        Size.Values = (
          44.979166666666670000
          875.770833333333300000
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
        Left = 443
        Top = 66
        Width = 160
        Height = 17
        Size.Values = (
          44.979166666666670000
          1172.104166666667000000
          174.625000000000000000
          423.333333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'PRESTA'#199#195'O DE CONTAS'
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
      Width = 1047
      Height = 42
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        111.125000000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel5: TQRLabel
        Left = 6
        Top = 2
        Width = 137
        Height = 17
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          5.291666666666667000
          362.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Per'#237'odo de Pagamento:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape3: TQRShape
        Left = 1
        Top = 20
        Width = 1046
        Height = 1
        Size.Values = (
          2.645833333333333000
          2.645833333333333000
          52.916666666666670000
          2767.541666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel7: TQRLabel
        Left = 10
        Top = 23
        Width = 63
        Height = 15
        Size.Values = (
          39.687500000000000000
          26.458333333333330000
          60.854166666666670000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Nome Cliente'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Left = 288
        Top = 23
        Width = 48
        Height = 15
        Size.Values = (
          39.687500000000000000
          762.000000000000000000
          60.854166666666670000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CPF/CNPJ'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel9: TQRLabel
        Left = 368
        Top = 23
        Width = 63
        Height = 15
        Size.Values = (
          39.687500000000000000
          973.666666666666700000
          60.854166666666670000
          166.687500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'N'#176' Opera'#231#227'o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel10: TQRLabel
        Left = 448
        Top = 23
        Width = 52
        Height = 15
        Size.Values = (
          39.687500000000000000
          1185.333333333333000000
          60.854166666666670000
          137.583333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Dt. Vencto'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 512
        Top = 23
        Width = 39
        Height = 15
        Size.Values = (
          39.687500000000000000
          1354.666666666667000000
          60.854166666666670000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Dt. Rec.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel12: TQRLabel
        Left = 616
        Top = 23
        Width = 23
        Height = 15
        Size.Values = (
          39.687500000000000000
          1629.833333333333000000
          60.854166666666670000
          60.854166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Parc'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Left = 648
        Top = 23
        Width = 41
        Height = 15
        Size.Values = (
          39.687500000000000000
          1714.500000000000000000
          60.854166666666670000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Principal'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel14: TQRLabel
        Left = 704
        Top = 23
        Width = 28
        Height = 15
        Size.Values = (
          39.687500000000000000
          1862.666666666667000000
          60.854166666666670000
          74.083333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Juros'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel15: TQRLabel
        Left = 742
        Top = 23
        Width = 26
        Height = 15
        Size.Values = (
          39.687500000000000000
          1963.208333333333000000
          60.854166666666670000
          68.791666666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Multa'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel16: TQRLabel
        Left = 782
        Top = 23
        Width = 29
        Height = 15
        Size.Values = (
          39.687500000000000000
          2069.041666666667000000
          60.854166666666670000
          76.729166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Desc.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel17: TQRLabel
        Left = 814
        Top = 23
        Width = 33
        Height = 15
        Size.Values = (
          39.687500000000000000
          2153.708333333333000000
          60.854166666666670000
          87.312500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Honor.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel18: TQRLabel
        Left = 854
        Top = 23
        Width = 48
        Height = 15
        Size.Values = (
          39.687500000000000000
          2259.541666666667000000
          60.854166666666670000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Realizado'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel19: TQRLabel
        Left = 910
        Top = 23
        Width = 48
        Height = 15
        Size.Values = (
          39.687500000000000000
          2407.708333333333000000
          60.854166666666670000
          127.000000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Comiss'#227'o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel20: TQRLabel
        Left = 974
        Top = 23
        Width = 44
        Height = 15
        Size.Values = (
          39.687500000000000000
          2577.041666666667000000
          60.854166666666670000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Repasse'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRLabel21: TQRLabel
        Left = 1030
        Top = 23
        Width = 11
        Height = 15
        Size.Values = (
          39.687500000000000000
          2725.208333333333000000
          60.854166666666670000
          29.104166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = '%'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
      object QRShape5: TQRShape
        Left = 1
        Top = 40
        Width = 1046
        Height = 1
        Size.Values = (
          2.645833333333333000
          2.645833333333333000
          105.833333333333300000
          2767.541666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel24: TQRLabel
        Left = 565
        Top = 23
        Width = 37
        Height = 15
        Size.Values = (
          39.687500000000000000
          1494.895833333333000000
          60.854166666666670000
          97.895833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Original'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 8
      end
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 171
      Width = 1047
      Height = 22
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        58.208333333333330000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'mtRelatorio.credor'
      FooterBand = QRBand4
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRDBText1: TQRDBText
        Left = 67
        Top = 2
        Width = 37
        Height = 17
        Size.Values = (
          44.979166666666670000
          177.270833333333300000
          5.291666666666667000
          97.895833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = mtRelatorio
        DataField = 'credor'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRShape4: TQRShape
        Left = 1
        Top = 20
        Width = 1046
        Height = 1
        Size.Values = (
          2.645833333333333000
          2.645833333333333000
          52.916666666666670000
          2767.541666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel6: TQRLabel
        Left = 6
        Top = 2
        Width = 57
        Height = 17
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          5.291666666666667000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'Empresa:'
        Color = clWhite
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 10
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 193
      Width = 1047
      Height = 15
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        39.687500000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText2: TQRDBText
        Left = 10
        Top = 2
        Width = 272
        Height = 11
        Size.Values = (
          29.104166666666670000
          26.458333333333330000
          5.291666666666667000
          719.666666666666800000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = mtRelatorio
        DataField = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRDBText3: TQRDBText
        Left = 288
        Top = 2
        Width = 42
        Height = 11
        Size.Values = (
          29.104166666666670000
          762.000000000000000000
          5.291666666666667000
          111.125000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = mtRelatorio
        DataField = 'CPF_CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRDBText4: TQRDBText
        Left = 448
        Top = 2
        Width = 55
        Height = 11
        Size.Values = (
          29.104166666666670000
          1185.333333333333000000
          5.291666666666667000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        Color = clWhite
        DataSet = mtRelatorio
        DataField = 'DATAVENCTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRDBText5: TQRDBText
        Left = 368
        Top = 2
        Width = 57
        Height = 11
        Size.Values = (
          29.104166666666670000
          973.666666666666700000
          5.291666666666667000
          150.812500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        Color = clWhite
        DataSet = mtRelatorio
        DataField = 'NROPERACAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRDBText6: TQRDBText
        Left = 512
        Top = 2
        Width = 39
        Height = 11
        Size.Values = (
          29.104166666666670000
          1354.666666666667000000
          5.291666666666667000
          103.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = mtRelatorio
        DataField = 'DATARECEBIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRDBText7: TQRDBText
        Left = 648
        Top = 2
        Width = 41
        Height = 11
        Size.Values = (
          29.104166666666670000
          1714.500000000000000000
          5.291666666666667000
          108.479166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = mtRelatorio
        DataField = 'VALORORIGINAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRDBText8: TQRDBText
        Left = 695
        Top = 3
        Width = 38
        Height = 11
        Size.Values = (
          29.104166666666670000
          1838.854166666667000000
          7.937500000000000000
          100.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = mtRelatorio
        DataField = 'VALORJUROS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRDBText9: TQRDBText
        Left = 739
        Top = 2
        Width = 29
        Height = 11
        Size.Values = (
          29.104166666666670000
          1955.270833333333000000
          5.291666666666667000
          76.729166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = mtRelatorio
        DataField = 'VALORMULTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRDBText10: TQRDBText
        Left = 774
        Top = 3
        Width = 37
        Height = 11
        Size.Values = (
          29.104166666666670000
          2047.875000000000000000
          7.937500000000000000
          97.895833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = mtRelatorio
        DataField = 'VALORDESCONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRDBText11: TQRDBText
        Left = 818
        Top = 2
        Width = 29
        Height = 11
        Size.Values = (
          29.104166666666670000
          2164.291666666667000000
          5.291666666666667000
          76.729166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = mtRelatorio
        DataField = 'VALORHONORARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRDBText12: TQRDBText
        Left = 873
        Top = 2
        Width = 29
        Height = 11
        Size.Values = (
          29.104166666666670000
          2309.812500000000000000
          5.291666666666667000
          76.729166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = mtRelatorio
        DataField = 'VALORREALIZADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRDBText13: TQRDBText
        Left = 616
        Top = 2
        Width = 23
        Height = 11
        Size.Values = (
          29.104166666666670000
          1629.833333333333000000
          5.291666666666667000
          60.854166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = mtRelatorio
        DataField = 'NUM_PARCELA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRDBText14: TQRDBText
        Left = 1020
        Top = 2
        Width = 21
        Height = 11
        Size.Values = (
          29.104166666666670000
          2698.750000000000000000
          5.291666666666667000
          55.562500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = mtRelatorio
        DataField = 'PERCENTUALCOMISSAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRDBText15: TQRDBText
        Left = 929
        Top = 2
        Width = 29
        Height = 11
        Size.Values = (
          29.104166666666670000
          2457.979166666667000000
          5.291666666666667000
          76.729166666666670000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = mtRelatorio
        DataField = 'VALORCOMISSAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRDBText16: TQRDBText
        Left = 974
        Top = 3
        Width = 40
        Height = 11
        Size.Values = (
          29.104166666666670000
          2577.041666666667000000
          7.937500000000000000
          105.833333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = mtRelatorio
        DataField = 'REPASSE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRDBText17: TQRDBText
        Left = 557
        Top = 2
        Width = 45
        Height = 11
        Size.Values = (
          29.104166666666670000
          1473.729166666667000000
          5.291666666666667000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        DataSet = mtRelatorio
        DataField = 'VALORNOMINAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 6
      end
    end
    object QRBand4: TQRBand
      Left = 38
      Top = 208
      Width = 1047
      Height = 22
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        58.208333333333330000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbGroupFooter
      object QRShape6: TQRShape
        Left = 1
        Top = 1
        Width = 1046
        Height = 1
        Size.Values = (
          2.645833333333333000
          2.645833333333333000
          2.645833333333333000
          2767.541666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 1
        Top = 19
        Width = 1046
        Height = 1
        Size.Values = (
          2.645833333333333000
          2.645833333333333000
          50.270833333333330000
          2767.541666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel22: TQRLabel
        Left = 6
        Top = 5
        Width = 30
        Height = 11
        Size.Values = (
          29.104166666666670000
          15.875000000000000000
          13.229166666666670000
          79.375000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTAL:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRExpr2: TQRExpr
        Left = 695
        Top = 5
        Width = 38
        Height = 11
        Size.Values = (
          29.104166666666670000
          1838.854166666667000000
          13.229166666666670000
          100.541666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(mtRelatorio.VALORJUROS)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr3: TQRExpr
        Left = 740
        Top = 5
        Width = 28
        Height = 11
        Size.Values = (
          29.104166666666670000
          1957.916666666667000000
          13.229166666666670000
          74.083333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(mtRelatorio.VALORMULTA)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr4: TQRExpr
        Left = 783
        Top = 5
        Width = 28
        Height = 11
        Size.Values = (
          29.104166666666670000
          2071.687500000000000000
          13.229166666666670000
          74.083333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(mtRelatorio.VALORDESCONTO)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr5: TQRExpr
        Left = 819
        Top = 5
        Width = 28
        Height = 11
        Size.Values = (
          29.104166666666670000
          2166.937500000000000000
          13.229166666666670000
          74.083333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(mtRelatorio.VALORHONORARIO)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr6: TQRExpr
        Left = 874
        Top = 5
        Width = 28
        Height = 11
        Size.Values = (
          29.104166666666670000
          2312.458333333333000000
          13.229166666666670000
          74.083333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(mtRelatorio.VALORREALIZADO)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr7: TQRExpr
        Left = 930
        Top = 5
        Width = 28
        Height = 11
        Size.Values = (
          29.104166666666670000
          2460.625000000000000000
          13.229166666666670000
          74.083333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(mtRelatorio.VALORCOMISSAO)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr15: TQRExpr
        Left = 974
        Top = 5
        Width = 44
        Height = 11
        Size.Values = (
          29.104166666666670000
          2577.041666666667000000
          13.229166666666670000
          116.416666666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(mtRelatorio.REPASSE)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr17: TQRExpr
        Left = 557
        Top = 6
        Width = 46
        Height = 11
        Size.Values = (
          29.104166666666670000
          1473.729166666667000000
          15.875000000000000000
          121.708333333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(mtRelatorio.VALORNOMINAL)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr1: TQRExpr
        Left = 644
        Top = 5
        Width = 45
        Height = 11
        Size.Values = (
          29.104166666666670000
          1703.916666666667000000
          13.229166666666670000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        Expression = 'sum(mtRelatorio.VALORORIGINAL)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
    end
    object QRBand5: TQRBand
      Left = 38
      Top = 230
      Width = 1047
      Height = 21
      AlignToBottom = False
      Enabled = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        55.562500000000000000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRExpr8: TQRExpr
        Left = 644
        Top = 5
        Width = 45
        Height = 11
        Size.Values = (
          29.104166666666670000
          1703.916666666667000000
          13.229166666666670000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(mtRelatorio.VALORORIGINAL)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr9: TQRExpr
        Left = 695
        Top = 5
        Width = 37
        Height = 11
        Size.Values = (
          29.104166666666670000
          1838.854166666667000000
          13.229166666666670000
          97.895833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(mtRelatorio.VALORJUROS)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr10: TQRExpr
        Left = 740
        Top = 5
        Width = 28
        Height = 11
        Size.Values = (
          29.104166666666670000
          1957.916666666667000000
          13.229166666666670000
          74.083333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(mtRelatorio.VALORMULTA)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr11: TQRExpr
        Left = 783
        Top = 5
        Width = 28
        Height = 11
        Size.Values = (
          29.104166666666670000
          2071.687500000000000000
          13.229166666666670000
          74.083333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(mtRelatorio.VALORDESCONTO)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr12: TQRExpr
        Left = 819
        Top = 5
        Width = 28
        Height = 11
        Size.Values = (
          29.104166666666670000
          2166.937500000000000000
          13.229166666666670000
          74.083333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(mtRelatorio.VALORHONORARIO)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr13: TQRExpr
        Left = 874
        Top = 5
        Width = 28
        Height = 11
        Size.Values = (
          29.104166666666670000
          2312.458333333333000000
          13.229166666666670000
          74.083333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(mtRelatorio.VALORREALIZADO)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr14: TQRExpr
        Left = 930
        Top = 5
        Width = 28
        Height = 11
        Size.Values = (
          29.104166666666670000
          2460.625000000000000000
          13.229166666666670000
          74.083333333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(mtRelatorio.VALORCOMISSAO)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRLabel23: TQRLabel
        Left = 6
        Top = 5
        Width = 59
        Height = 11
        Size.Values = (
          29.104166666666670000
          15.875000000000000000
          13.229166666666670000
          156.104166666666700000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'TOTAL GERAL:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        VerticalAlignment = tlTop
        FontSize = 6
      end
      object QRShape8: TQRShape
        Left = 1
        Top = 19
        Width = 1046
        Height = 1
        Size.Values = (
          2.645833333333333000
          2.645833333333333000
          50.270833333333330000
          2767.541666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRExpr16: TQRExpr
        Left = 982
        Top = 5
        Width = 28
        Height = 11
        Size.Values = (
          29.104166666666670000
          2598.208333333333000000
          13.229166666666670000
          74.083333333333320000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(mtRelatorio.REPASSE)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
      object QRExpr18: TQRExpr
        Left = 557
        Top = 5
        Width = 45
        Height = 11
        Size.Values = (
          29.104166666666670000
          1473.729166666667000000
          13.229166666666670000
          119.062500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = True
        Transparent = False
        Expression = 'SUM(mtRelatorio.VALORNOMINAL)'
        Mask = '###,##0.00'
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FontSize = 6
      end
    end
  end
  object cxGrid1: TcxGrid
    Left = 219
    Top = 655
    Width = 659
    Height = 200
    TabOrder = 3
    Visible = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsRelatorio
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1credor: TcxGridDBColumn
        Caption = 'Empresa:'
        DataBinding.FieldName = 'credor'
        Visible = False
        GroupIndex = 0
        Options.Editing = False
      end
      object cxGrid1DBTableView1NOME: TcxGridDBColumn
        Caption = 'Nome Cliente'
        DataBinding.FieldName = 'NOME'
        Options.Editing = False
      end
      object cxGrid1DBTableView1CPF_CNPJ: TcxGridDBColumn
        Caption = 'CPF/CNPJ'
        DataBinding.FieldName = 'CPF_CNPJ'
        Options.Editing = False
      end
      object cxGrid1DBTableView1NROPERACAO: TcxGridDBColumn
        Caption = 'N'#176' Opera'#231#227'o'
        DataBinding.FieldName = 'NROPERACAO'
        Options.Editing = False
      end
      object cxGrid1DBTableView1DATAVENCTO: TcxGridDBColumn
        Caption = 'Dt. Vencto'
        DataBinding.FieldName = 'DATAVENCTO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 120
      end
      object cxGrid1DBTableView1DATARECEBIMENTO: TcxGridDBColumn
        Caption = 'Dt. Rec.'
        DataBinding.FieldName = 'DATARECEBIMENTO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 120
      end
      object cxGrid1DBTableView1VALORNOMINAL: TcxGridDBColumn
        Caption = 'Original'
        DataBinding.FieldName = 'VALORNOMINAL'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 70
      end
      object cxGrid1DBTableView1NUM_PARCELA: TcxGridDBColumn
        Caption = 'Parc.'
        DataBinding.FieldName = 'NUM_PARCELA'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 41
      end
      object cxGrid1DBTableView1VALORORIGINAL: TcxGridDBColumn
        Caption = 'Principal'
        DataBinding.FieldName = 'VALORORIGINAL'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 70
      end
      object cxGrid1DBTableView1VALORJUROS: TcxGridDBColumn
        Caption = 'Juros'
        DataBinding.FieldName = 'VALORJUROS'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 70
      end
      object cxGrid1DBTableView1VALORMULTA: TcxGridDBColumn
        Caption = 'Multa'
        DataBinding.FieldName = 'VALORMULTA'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 70
      end
      object cxGrid1DBTableView1VALORDESCONTO: TcxGridDBColumn
        Caption = 'Desconto'
        DataBinding.FieldName = 'VALORDESCONTO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 70
      end
      object cxGrid1DBTableView1VALORHONORARIO: TcxGridDBColumn
        Caption = 'Honor'#225'rio'
        DataBinding.FieldName = 'VALORHONORARIO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 70
      end
      object cxGrid1DBTableView1VALORREALIZADO: TcxGridDBColumn
        Caption = 'Realizado'
        DataBinding.FieldName = 'VALORREALIZADO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 70
      end
      object cxGrid1DBTableView1VALORCOMISSAO: TcxGridDBColumn
        Caption = 'Comiss'#227'o'
        DataBinding.FieldName = 'VALORCOMISSAO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object cxGrid1DBTableView1REPASSE: TcxGridDBColumn
        Caption = 'Repasse'
        DataBinding.FieldName = 'REPASSE'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
      object cxGrid1DBTableView1PERCENTUALCOMISSAO: TcxGridDBColumn
        Caption = '%'
        DataBinding.FieldName = 'PERCENTUALCOMISSAO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 431
    Width = 596
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitWidth = 593
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
      Caption = 'Gerar'
      Color = 13273922
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      Visible = False
      OnClick = RzToolButton3Click
      ExplicitLeft = 239
      ExplicitTop = -2
      ExplicitHeight = 40
    end
    object RzToolButton4: TRzToolButton
      AlignWithMargins = True
      Left = 95
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
      OnClick = RzToolButton4Click
      ExplicitLeft = 239
      ExplicitTop = -2
      ExplicitHeight = 40
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
    object mtRelatorioVALORNOMINAL: TFloatField
      FieldName = 'VALORNOMINAL'
      DisplayFormat = '###,##0.00'
    end
  end
  object dsRelatorio: TDataSource
    DataSet = mtRelatorio
    Left = 256
    Top = 16
  end
  object QUsuario: TFDQuery
    Connection = frmDataModule.UniConnection1
    Left = 160
    Top = 160
  end
  object SaveDialog1: TSaveDialog
    Left = 288
    Top = 248
  end
end
