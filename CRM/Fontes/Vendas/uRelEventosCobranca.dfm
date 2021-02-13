object frmRelEventosCobranca: TfrmRelEventosCobranca
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Eventos de Cobran'#231'a'
  ClientHeight = 598
  ClientWidth = 599
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
    Left = 841
    Top = 447
    Width = 1123
    Height = 794
    ShowingPreview = False
    DataSet = QEventos
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
    PrevInitialZoom = qrZoomToFit
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
        Caption = 'EVENTOS DE COBRAN'#199'A'
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
      Height = 23
      Frame.DrawBottom = True
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        60.854166666666670000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel6: TQRLabel
        Left = 5
        Top = 3
        Width = 73
        Height = 17
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          7.937500000000000000
          193.145833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'CPF / CNPJ'
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
      object QRLabel7: TQRLabel
        Left = 133
        Top = 3
        Width = 36
        Height = 17
        Size.Values = (
          44.979166666666670000
          351.895833333333300000
          7.937500000000000000
          95.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'FONE'
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
      object QRLabel8: TQRLabel
        Left = 229
        Top = 3
        Width = 36
        Height = 17
        Size.Values = (
          44.979166666666670000
          605.895833333333300000
          7.937500000000000000
          95.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'FONE'
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
      object QRLabel9: TQRLabel
        Left = 341
        Top = 3
        Width = 36
        Height = 17
        Size.Values = (
          44.979166666666670000
          902.229166666666700000
          7.937500000000000000
          95.250000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'DATA'
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
      object QRLabel10: TQRLabel
        Left = 469
        Top = 3
        Width = 60
        Height = 17
        Size.Values = (
          44.979166666666670000
          1240.895833333333000000
          7.937500000000000000
          158.750000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'USU'#193'RIO'
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
      object QRLabel11: TQRLabel
        Left = 581
        Top = 3
        Width = 87
        Height = 17
        Size.Values = (
          44.979166666666670000
          1537.229166666667000000
          7.937500000000000000
          230.187500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'OCORR'#202'NCIA'
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
    object QRGroup1: TQRGroup
      Left = 38
      Top = 152
      Width = 1047
      Height = 26
      AlignToBottom = False
      Color = clSilver
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        68.791666666666670000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      Expression = 'QEventos.NOME'
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRDBText1: TQRDBText
        Left = 65
        Top = 3
        Width = 49
        Height = 20
        Size.Values = (
          52.916666666666670000
          171.979166666666700000
          7.937500000000000000
          129.645833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clSilver
        DataSet = QEventos
        DataField = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 12
      end
      object QRLabel5: TQRLabel
        Left = 5
        Top = 3
        Width = 55
        Height = 20
        Size.Values = (
          52.916666666666670000
          13.229166666666670000
          7.937500000000000000
          145.520833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Caption = 'NOME:'
        Color = clSilver
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
      Top = 178
      Width = 1047
      Height = 23
      AlignToBottom = False
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        60.854166666666670000
        2770.187500000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText2: TQRDBText
        Left = 8
        Top = 3
        Width = 67
        Height = 17
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          7.937500000000000000
          177.270833333333300000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = QEventos
        DataField = 'CPF_CNPJ'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 133
        Top = 3
        Width = 37
        Height = 17
        Size.Values = (
          44.979166666666670000
          351.895833333333300000
          7.937500000000000000
          97.895833333333330000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = QEventos
        DataField = 'FONE'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 229
        Top = 3
        Width = 51
        Height = 17
        Size.Values = (
          44.979166666666670000
          605.895833333333300000
          7.937500000000000000
          134.937500000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = QEventos
        DataField = 'FONE_1'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 341
        Top = 3
        Width = 72
        Height = 17
        Size.Values = (
          44.979166666666670000
          902.229166666666700000
          7.937500000000000000
          190.500000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = QEventos
        DataField = 'DATAHORA'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 469
        Top = 3
        Width = 54
        Height = 17
        Size.Values = (
          44.979166666666670000
          1240.895833333333000000
          7.937500000000000000
          142.875000000000000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        Color = clWhite
        DataSet = QEventos
        DataField = 'NOME_1'
        Transparent = False
        ExportAs = exptText
        WrapStyle = BreakOnSpaces
        FullJustify = False
        MaxBreakChars = 0
        VerticalAlignment = tlTop
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 581
        Top = 3
        Width = 464
        Height = 17
        Size.Values = (
          44.979166666666670000
          1537.229166666667000000
          7.937500000000000000
          1227.666666666667000000)
        XLColumn = 0
        XLNumFormat = nfGeneral
        ActiveInPreview = False
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        DataSet = QEventos
        DataField = 'HISTORICOBLOB'
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
  object cxGrid1: TcxGrid
    Left = 8
    Top = 209
    Width = 586
    Height = 357
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsEventos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FixedDataRows.SeparatorColor = clBackground
      object cxGrid1DBTableView1NOME: TcxGridDBColumn
        DataBinding.FieldName = 'NOME'
        Visible = False
        GroupIndex = 0
        Options.Editing = False
      end
      object cxGrid1DBTableView1CPF_CNPJ: TcxGridDBColumn
        Caption = 'CPF / CNPJ'
        DataBinding.FieldName = 'CPF_CNPJ'
        Options.Editing = False
        Width = 124
      end
      object cxGrid1DBTableView1FONE: TcxGridDBColumn
        Caption = 'Fone'
        DataBinding.FieldName = 'FONE'
        Options.Editing = False
        Width = 105
      end
      object cxGrid1DBTableView1FONE_1: TcxGridDBColumn
        Caption = 'Fone'
        DataBinding.FieldName = 'FONE_1'
        Options.Editing = False
        Width = 114
      end
      object cxGrid1DBTableView1DATAHORA: TcxGridDBColumn
        Caption = 'Data'
        DataBinding.FieldName = 'DATAHORA'
        Options.Editing = False
        Width = 132
      end
      object cxGrid1DBTableView1NOME_1: TcxGridDBColumn
        Caption = 'Usu'#225'rio'
        DataBinding.FieldName = 'NOME_1'
        Options.Editing = False
        Width = 121
      end
      object cxGrid1DBTableView1HISTORICOBLOB: TcxGridDBColumn
        Caption = 'Ocorr'#234'ncia'
        DataBinding.FieldName = 'HISTORICOBLOB'
        Options.Editing = False
        Width = 370
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 599
    Height = 212
    Align = alTop
    Caption = 'Filtros'
    TabOrder = 1
    ExplicitWidth = 1031
    object Label3: TLabel
      Left = 8
      Top = 64
      Width = 39
      Height = 16
      Caption = 'Credor'
    end
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 15
      Height = 16
      Caption = 'De'
    end
    object Label4: TLabel
      Left = 136
      Top = 16
      Width = 19
      Height = 16
      Caption = 'At'#233
    end
    object Label2: TLabel
      Left = 8
      Top = 113
      Width = 47
      Height = 16
      Caption = 'Devedor'
    end
    object Label5: TLabel
      Left = 8
      Top = 162
      Width = 43
      Height = 16
      Caption = 'Usu'#225'rio'
    end
    object edtCodCredor: TEdit
      Left = 8
      Top = 81
      Width = 77
      Height = 24
      Enabled = False
      TabOrder = 3
    end
    object edtNomeCredor: TEdit
      Left = 89
      Top = 81
      Width = 453
      Height = 24
      Enabled = False
      TabOrder = 4
    end
    object cxButton2: TcxButton
      Left = 548
      Top = 81
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
      TabOrder = 5
      OnClick = cxButton2Click
    end
    object edtInicio: TcxDateEdit
      Left = 8
      Top = 32
      Properties.ShowTime = False
      TabOrder = 0
      Width = 121
    end
    object edtFim: TcxDateEdit
      Left = 136
      Top = 32
      Properties.ImmediatePost = True
      Properties.ShowTime = False
      TabOrder = 1
      Width = 121
    end
    object edtCodDevedor: TEdit
      Left = 8
      Top = 130
      Width = 77
      Height = 24
      Enabled = False
      TabOrder = 6
    end
    object edtNomeDevedor: TEdit
      Left = 89
      Top = 130
      Width = 453
      Height = 24
      Enabled = False
      TabOrder = 7
    end
    object cxButton1: TcxButton
      Left = 548
      Top = 129
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
      TabOrder = 8
      OnClick = cxButton1Click
    end
    object GroupBox2: TGroupBox
      Left = 272
      Top = 11
      Width = 322
      Height = 56
      Caption = 'Destino'
      TabOrder = 2
      object rbTela: TRadioButton
        Left = 16
        Top = 24
        Width = 108
        Height = 17
        Caption = 'Mostrar na tela'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rbImpressao: TRadioButton
        Left = 144
        Top = 24
        Width = 81
        Height = 17
        Caption = 'Impress'#227'o'
        TabOrder = 1
      end
      object rbExcel: TRadioButton
        Left = 255
        Top = 24
        Width = 59
        Height = 17
        Caption = 'Excel'
        TabOrder = 2
      end
    end
    object cbxUsuario: TComboBox
      Left = 8
      Top = 179
      Width = 534
      Height = 24
      Style = csDropDownList
      TabOrder = 9
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 548
    Width = 599
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitWidth = 1031
    object RzToolButton1: TRzToolButton
      AlignWithMargins = True
      Left = 350
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
      Left = 476
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
  object QEventos: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'SELECT '
      '  cli.CPF_CNPJ,'
      '  cli.NOME,'
      '  cli.FONE,'
      '  cli.FONE_1,'
      '  cli.FAXCEL,'
      '  cli.FAXCEL_1,'
      '  cli.FONE_PREFERENCIAL,'
      '  eve.DATAHORA,'
      '  u.NOME,'
      '  eve.HISTORICOBLOB '
      'FROM'
      '  clientes cli '
      '  INNER JOIN eventoscobranca eve '
      '    ON eve.CLIENTE = cli.CPF_CNPJ '
      '  INNER JOIN usuarios u '
      '    ON u.CODIGO = eve.USUARIO '
      'ORDER BY cli.NOME ')
    Left = 384
    Top = 80
    object QEventosCPF_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
    end
    object QEventosNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object QEventosFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FONE'
      Origin = 'FONE'
    end
    object QEventosFONE_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FONE_1'
      Origin = 'FONE_1'
    end
    object QEventosFAXCEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FAXCEL'
      Origin = 'FAXCEL'
    end
    object QEventosFAXCEL_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FAXCEL_1'
      Origin = 'FAXCEL_1'
    end
    object QEventosFONE_PREFERENCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FONE_PREFERENCIAL'
      Origin = 'FONE_PREFERENCIAL'
      Size = 1
    end
    object QEventosDATAHORA: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATAHORA'
      Origin = 'DATAHORA'
    end
    object QEventosNOME_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_1'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object QEventosHISTORICOBLOB: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'HISTORICOBLOB'
      Origin = 'HISTORICOBLOB'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object dsEventos: TDataSource
    DataSet = QEventos
    Left = 432
    Top = 80
  end
  object SaveDialog1: TSaveDialog
    Left = 504
    Top = 296
  end
  object QUsuario: TFDQuery
    Connection = frmDataModule.UniConnection1
    Left = 160
    Top = 160
  end
end
