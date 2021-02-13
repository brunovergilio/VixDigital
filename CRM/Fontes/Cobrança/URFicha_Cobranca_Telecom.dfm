object QRFichaCobranca_Telecom: TQRFichaCobranca_Telecom
  Left = 0
  Top = 0
  Width = 794
  Height = 1123
  ShowingPreview = False
  BeforePrint = QuickRepBeforePrint
  DataSet = FrmClientes.uniQClientes
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
  PrevShowThumbs = False
  PrevShowSearch = False
  PrevInitialZoom = qrZoomToWidth
  PreviewDefaultSaveType = stPDF
  PreviewLeft = 0
  PreviewTop = 0
  object PageHeaderBand1: TQRBand
    Left = 38
    Top = 38
    Width = 718
    Height = 43
    Frame.DrawBottom = True
    AlignToBottom = False
    BeforePrint = PageHeaderBand1BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      113.770833333333300000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbPageHeader
    object QRLabel40: TQRLabel
      Left = 271
      Top = 14
      Width = 176
      Height = 23
      Size.Values = (
        60.854166666666670000
        717.020833333333300000
        37.041666666666670000
        465.666666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taCenter
      AlignToBand = True
      Caption = 'Ficha de Cobran'#231'a'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 14
    end
    object QRShape1: TQRShape
      Left = 604
      Top = 0
      Width = 1
      Height = 43
      Size.Values = (
        113.770833333333300000
        1598.083333333333000000
        0.000000000000000000
        2.645833333333333000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRLabel53: TQRLabel
      Left = 611
      Top = 14
      Width = 28
      Height = 17
      Size.Values = (
        44.979166666666670000
        1616.604166666667000000
        37.041666666666670000
        74.083333333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'P'#225'g:'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRSysData1: TQRSysData
      Left = 645
      Top = 14
      Width = 70
      Height = 17
      Size.Values = (
        44.979166666666670000
        1706.562500000000000000
        37.041666666666670000
        185.208333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      Data = qrsPageNumber
      Text = ''
      Transparent = False
      ExportAs = exptText
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  object PageFooterBand1: TQRBand
    Left = 38
    Top = 422
    Width = 718
    Height = 25
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      66.145833333333330000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbPageFooter
  end
  object SummaryBand1: TQRBand
    Left = 38
    Top = 393
    Width = 718
    Height = 29
    Frame.DrawTop = True
    Frame.Width = 2
    AlignToBottom = False
    BeforePrint = SummaryBand1BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      76.729166666666670000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbSummary
    object QRLabel38: TQRLabel
      Left = 360
      Top = 8
      Width = 129
      Height = 17
      Size.Values = (
        44.979166666666670000
        952.500000000000000000
        21.166666666666670000
        341.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Total da(s) D'#237'vida(s):'
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
    object Lb_Total_Final: TQRLabel
      Left = 495
      Top = 8
      Width = 122
      Height = 17
      Size.Values = (
        44.979166666666670000
        1309.687500000000000000
        21.166666666666670000
        322.791666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Caption = '0,00'
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
  object Cabecalho_Eventos_Cobranca: TQRBand
    Left = 38
    Top = 322
    Width = 718
    Height = 17
    Frame.DrawTop = True
    Frame.Style = psDot
    AlignToBottom = False
    BeforePrint = Cabecalho_Eventos_CobrancaBeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      44.979166666666670000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbGroupHeader
    object QRLabel52: TQRLabel
      Left = 8
      Top = 1
      Width = 108
      Height = 15
      Size.Values = (
        39.687500000000000000
        21.166666666666670000
        2.645833333333333000
        285.750000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Eventos de Cobran'#231'a:'
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
  object Cabecalho_Agendamentos: TQRBand
    Left = 38
    Top = 358
    Width = 718
    Height = 16
    Frame.DrawTop = True
    Frame.Style = psDot
    AlignToBottom = False
    BeforePrint = Cabecalho_AgendamentosBeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      42.333333333333330000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbGroupHeader
    object QRLabel51: TQRLabel
      Left = 8
      Top = 1
      Width = 77
      Height = 15
      Size.Values = (
        39.687500000000000000
        21.166666666666670000
        2.645833333333333000
        203.729166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Agendamentos:'
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
  object dbClientes: TQRBand
    Left = 38
    Top = 81
    Width = 718
    Height = 94
    AlignToBottom = False
    BeforePrint = dbClientesBeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = True
    Size.Values = (
      248.708333333333300000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object QRLabel2: TQRLabel
      Left = 6
      Top = 1
      Width = 31
      Height = 17
      Size.Values = (
        44.979166666666670000
        15.875000000000000000
        2.645833333333333000
        82.020833333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Nome:'
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
    object Lb_CGC_CPf: TQRLabel
      Left = 416
      Top = 1
      Width = 68
      Height = 17
      Size.Values = (
        44.979166666666670000
        1100.666666666667000000
        2.645833333333333000
        179.916666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'CPF/CNPJ:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText1: TQRDBText
      Left = 58
      Top = 1
      Width = 38
      Height = 17
      Size.Values = (
        44.979166666666670000
        153.458333333333300000
        2.645833333333333000
        100.541666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = FrmClientes.uniQClientes
      DataField = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel5: TQRLabel
      Left = 6
      Top = 21
      Width = 50
      Height = 17
      Size.Values = (
        44.979166666666670000
        15.875000000000000000
        55.562500000000000000
        132.291666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Endere'#231'o:'
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
    object QRDBText2: TQRDBText
      Left = 58
      Top = 21
      Width = 54
      Height = 17
      Size.Values = (
        44.979166666666670000
        153.458333333333300000
        55.562500000000000000
        142.875000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = FrmClientes.uniQClientes
      DataField = 'Endereco'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRLabel6: TQRLabel
      Left = 488
      Top = 21
      Width = 30
      Height = 17
      Size.Values = (
        44.979166666666670000
        1291.166666666667000000
        55.562500000000000000
        79.375000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Setor:'
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
    object QRDBText3: TQRDBText
      Left = 519
      Top = 21
      Width = 30
      Height = 17
      Size.Values = (
        44.979166666666670000
        1373.187500000000000000
        55.562500000000000000
        79.375000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = FrmClientes.uniQClientes
      DataField = 'Setor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRLabel7: TQRLabel
      Left = 6
      Top = 40
      Width = 37
      Height = 17
      Size.Values = (
        44.979166666666670000
        15.875000000000000000
        105.833333333333300000
        97.895833333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Cidade:'
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
    object QRDBText4: TQRDBText
      Left = 58
      Top = 40
      Width = 41
      Height = 17
      Size.Values = (
        44.979166666666670000
        153.458333333333300000
        105.833333333333300000
        108.479166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = FrmClientes.uniQClientes
      DataField = 'Cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRLabel8: TQRLabel
      Left = 416
      Top = 40
      Width = 37
      Height = 17
      Size.Values = (
        44.979166666666670000
        1100.666666666667000000
        105.833333333333300000
        97.895833333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Estado:'
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
    object QRDBText5: TQRDBText
      Left = 454
      Top = 40
      Width = 17
      Height = 17
      Size.Values = (
        44.979166666666670000
        1201.208333333333000000
        105.833333333333300000
        44.979166666666670000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = FrmClientes.uniQClientes
      DataField = 'UF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRLabel9: TQRLabel
      Left = 490
      Top = 40
      Width = 23
      Height = 17
      Size.Values = (
        44.979166666666670000
        1296.458333333333000000
        105.833333333333300000
        60.854166666666670000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'CEP:'
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
    object QRDBText6: TQRDBText
      Left = 512
      Top = 40
      Width = 26
      Height = 17
      Size.Values = (
        44.979166666666670000
        1354.666666666667000000
        105.833333333333300000
        68.791666666666670000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = FrmClientes.uniQClientes
      DataField = 'CEP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRLabel10: TQRLabel
      Left = 6
      Top = 58
      Width = 28
      Height = 17
      Size.Values = (
        44.979166666666670000
        15.875000000000000000
        153.458333333333300000
        74.083333333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Fone:'
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
    object QRDBText7: TQRDBText
      Left = 58
      Top = 58
      Width = 29
      Height = 17
      Size.Values = (
        44.979166666666670000
        153.458333333333300000
        153.458333333333300000
        76.729166666666670000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = FrmClientes.uniQClientes
      DataField = 'Fone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRLabel11: TQRLabel
      Left = 190
      Top = 58
      Width = 58
      Height = 17
      Size.Values = (
        44.979166666666670000
        502.708333333333300000
        153.458333333333300000
        153.458333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Fax/Celular:'
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
    object QRDBText8: TQRDBText
      Left = 249
      Top = 58
      Width = 39
      Height = 17
      Size.Values = (
        44.979166666666670000
        658.812500000000000000
        153.458333333333300000
        103.187500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = FrmClientes.uniQClientes
      DataField = 'FaxCel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRLabel48: TQRLabel
      Left = 6
      Top = 76
      Width = 24
      Height = 17
      Size.Values = (
        44.979166666666670000
        15.875000000000000000
        201.083333333333300000
        63.500000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Obs:'
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
    object Observacao: TQRDBText
      Left = 58
      Top = 76
      Width = 654
      Height = 17
      Size.Values = (
        44.979166666666670000
        153.458333333333300000
        201.083333333333300000
        1730.375000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Color = clWhite
      DataSet = FrmClientes.uniQClientes
      DataField = 'OBS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRLabel1: TQRLabel
      Left = 416
      Top = 21
      Width = 13
      Height = 17
      Size.Values = (
        44.979166666666670000
        1100.666666666667000000
        55.562500000000000000
        34.395833333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'N'#186
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
    object QRDBText44: TQRDBText
      Left = 430
      Top = 21
      Width = 46
      Height = 17
      Size.Values = (
        44.979166666666670000
        1137.708333333333000000
        55.562500000000000000
        121.708333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = FrmClientes.uniQClientes
      DataField = 'Numero'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRLabel3: TQRLabel
      Left = 416
      Top = 58
      Width = 69
      Height = 17
      Size.Values = (
        44.979166666666670000
        1100.666666666667000000
        153.458333333333300000
        182.562500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Classifica'#231#227'o:'
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
    object QRDBText20: TQRDBText
      Left = 488
      Top = 58
      Width = 225
      Height = 17
      Size.Values = (
        44.979166666666670000
        1291.166666666667000000
        153.458333333333300000
        595.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataField = 'NOME_CLASSIFICACAO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText13: TQRDBText
      Left = 490
      Top = 1
      Width = 28
      Height = 17
      Size.Values = (
        44.979166666666670000
        1296.458333333333000000
        2.645833333333333000
        74.083333333333330000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = FrmClientes.uniQClientes
      DataField = 'CGC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRDBText14: TQRDBText
      Left = 490
      Top = 1
      Width = 64
      Height = 17
      Size.Values = (
        44.979166666666670000
        1296.458333333333000000
        2.645833333333333000
        169.333333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = FrmClientes.uniQClientes
      DataField = 'CPF_CNPJ'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 9
    end
  end
  object Sub_Operacoes: TQRSubDetail
    Left = 38
    Top = 175
    Width = 718
    Height = 108
    Frame.DrawTop = True
    Frame.Width = 2
    AlignToBottom = False
    BeforePrint = Sub_OperacoesBeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      285.750000000000000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = Owner
    DataSet = FrmClientes.uniQClientesOperacoes
    PrintBefore = False
    PrintIfEmpty = False
    object QRLabel41: TQRLabel
      Left = 265
      Top = 28
      Width = 188
      Height = 43
      Enabled = False
      Size.Values = (
        113.770833333333300000
        701.145833333333300000
        74.083333333333330000
        497.416666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taCenter
      AlignToBand = True
      Caption = 'QRLabel41'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSilver
      Font.Height = -37
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 28
    end
    object QRDBText11: TQRDBText
      Left = 411
      Top = 24
      Width = 67
      Height = 17
      Size.Values = (
        44.979166666666670000
        1087.437500000000000000
        63.500000000000000000
        177.270833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taCenter
      AlignToBand = False
      Color = clWhite
      DataField = 'DATA_ENT'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText15: TQRDBText
      Left = 236
      Top = 24
      Width = 82
      Height = 17
      Size.Values = (
        44.979166666666670000
        624.416666666666700000
        63.500000000000000000
        216.958333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = FrmClientes.uniQClientesOperacoes
      DataField = 'RemessaBBstr'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText16: TQRDBText
      Left = 328
      Top = 24
      Width = 69
      Height = 17
      Size.Values = (
        44.979166666666670000
        867.833333333333500000
        63.500000000000000000
        182.562500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = FrmClientes.uniQClientesOperacoes
      DataField = 'DATA_REMESSA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel42: TQRLabel
      Left = 9
      Top = 42
      Width = 43
      Height = 18
      Size.Values = (
        47.625000000000000000
        23.812500000000000000
        111.125000000000000000
        113.770833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Credor:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText34: TQRDBText
      Left = 56
      Top = 42
      Width = 216
      Height = 18
      Size.Values = (
        47.625000000000000000
        148.166666666666700000
        111.125000000000000000
        571.500000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = FrmClientes.uniQClientesOperacoes
      DataField = 'NOME_BANCO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText33: TQRDBText
      Left = 9
      Top = 24
      Width = 70
      Height = 17
      Size.Values = (
        44.979166666666670000
        23.812500000000000000
        63.500000000000000000
        185.208333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = FrmClientes.uniQClientesOperacoes
      DataField = 'NrOperacao'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel46: TQRLabel
      Left = 479
      Top = 48
      Width = 57
      Height = 17
      Size.Values = (
        44.979166666666670000
        1267.354166666667000000
        127.000000000000000000
        150.812500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Cobrador:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel14: TQRLabel
      Left = 9
      Top = 3
      Width = 50
      Height = 16
      Size.Values = (
        42.333333333333330000
        23.812500000000000000
        7.937500000000000000
        132.291666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Contrato'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRLabel20: TQRLabel
      Left = 236
      Top = 3
      Width = 55
      Height = 16
      Size.Values = (
        42.333333333333330000
        624.416666666666700000
        7.937500000000000000
        145.520833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Remessa'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRLabel21: TQRLabel
      Left = 333
      Top = 3
      Width = 48
      Height = 16
      Size.Values = (
        42.333333333333330000
        881.062500000000000000
        7.937500000000000000
        127.000000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Dt. Rem.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRLabel15: TQRLabel
      Left = 409
      Top = 3
      Width = 96
      Height = 16
      Size.Values = (
        42.333333333333330000
        1082.145833333333000000
        7.937500000000000000
        254.000000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Dt. Fim Remessa'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRLabel16: TQRLabel
      Left = 632
      Top = 3
      Width = 74
      Height = 16
      Size.Values = (
        42.333333333333330000
        1672.166666666667000000
        7.937500000000000000
        195.791666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Vlr. da D'#237'vida'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRShape2: TQRShape
      Left = 0
      Top = 21
      Width = 718
      Height = 1
      Size.Values = (
        2.645833333333333000
        0.000000000000000000
        55.562500000000000000
        1899.708333333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsHorLine
      VertAdjust = 0
    end
    object QRLabel4: TQRLabel
      Left = 12
      Top = 90
      Width = 62
      Height = 17
      Size.Values = (
        44.979166666666670000
        31.750000000000000000
        238.125000000000000000
        164.041666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Refer'#234'ncia'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel12: TQRLabel
      Left = 89
      Top = 90
      Width = 70
      Height = 17
      Size.Values = (
        44.979166666666670000
        235.479166666666700000
        238.125000000000000000
        185.208333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Vencimento'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel17: TQRLabel
      Left = 473
      Top = 90
      Width = 56
      Height = 17
      Size.Values = (
        44.979166666666670000
        1251.479166666667000000
        238.125000000000000000
        148.166666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Desconto'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel18: TQRLabel
      Left = 625
      Top = 90
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1653.645833333333000000
        238.125000000000000000
        211.666666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Valor a Pagar'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel19: TQRLabel
      Left = 121
      Top = 3
      Width = 41
      Height = 16
      Size.Values = (
        42.333333333333330000
        320.145833333333300000
        7.937500000000000000
        108.479166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Fict'#237'cio'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRDBText17: TQRDBText
      Left = 121
      Top = 24
      Width = 35
      Height = 17
      Size.Values = (
        44.979166666666670000
        320.145833333333300000
        63.500000000000000000
        92.604166666666670000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      DataSet = FrmClientes.uniQClientesOperacoes
      DataField = 'Conta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText19: TQRDBText
      Left = 538
      Top = 48
      Width = 177
      Height = 17
      Size.Values = (
        44.979166666666670000
        1423.458333333333000000
        127.000000000000000000
        468.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataField = 'NOME_COBRADOR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel13: TQRLabel
      Left = 169
      Top = 90
      Width = 79
      Height = 17
      Size.Values = (
        44.979166666666670000
        447.145833333333300000
        238.125000000000000000
        209.020833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Valor Original'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object Lb_Valor_Divida: TQRLabel
      Left = 625
      Top = 24
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1653.645833333333000000
        63.500000000000000000
        211.666666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Caption = '0,00'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object Lb_Condicoes_Negociaveis: TQRLabel
      Left = 12
      Top = 74
      Width = 100
      Height = 17
      Size.Values = (
        44.979166666666670000
        31.750000000000000000
        195.791666666666700000
        264.583333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Cond. Negociais:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel23: TQRLabel
      Left = 265
      Top = 90
      Width = 32
      Height = 17
      Size.Values = (
        44.979166666666670000
        701.145833333333300000
        238.125000000000000000
        84.666666666666670000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Juros'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel24: TQRLabel
      Left = 311
      Top = 90
      Width = 33
      Height = 17
      Size.Values = (
        44.979166666666670000
        822.854166666666700000
        238.125000000000000000
        87.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Multa'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel25: TQRLabel
      Left = 353
      Top = 90
      Width = 96
      Height = 17
      Size.Values = (
        44.979166666666670000
        933.979166666666700000
        238.125000000000000000
        254.000000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Valor Atualizado'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel26: TQRLabel
      Left = 545
      Top = 90
      Width = 51
      Height = 17
      Size.Values = (
        44.979166666666670000
        1441.979166666667000000
        238.125000000000000000
        134.937500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = '% Desc.'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  object Sub_Parcelas: TQRSubDetail
    Left = 38
    Top = 283
    Width = 718
    Height = 20
    AlignToBottom = False
    BeforePrint = Sub_ParcelasBeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      52.916666666666670000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = Sub_Operacoes
    FooterBand = Total_Parcelas
    PrintBefore = False
    PrintIfEmpty = False
    object QRDBText9: TQRDBText
      Left = 12
      Top = 1
      Width = 69
      Height = 17
      Size.Values = (
        44.979166666666670000
        31.750000000000000000
        2.645833333333333000
        182.562500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataField = 'DataReferencia'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText10: TQRDBText
      Left = 89
      Top = 1
      Width = 69
      Height = 17
      Size.Values = (
        44.979166666666670000
        235.479166666666700000
        2.645833333333333000
        182.562500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataField = 'DataVencto'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object Lb_Valor_Desconto: TQRLabel
      Left = 455
      Top = 2
      Width = 74
      Height = 17
      Size.Values = (
        44.979166666666670000
        1203.854166666667000000
        5.291666666666667000
        195.791666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Lb_Valor_Desconto'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object Lb_Valor_Juros: TQRLabel
      Left = 255
      Top = 2
      Width = 42
      Height = 17
      Size.Values = (
        44.979166666666670000
        674.687500000000000000
        5.291666666666667000
        111.125000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Lb_Valor_Juros'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object Lb_Valor_Multa: TQRLabel
      Left = 303
      Top = 2
      Width = 42
      Height = 17
      Size.Values = (
        44.979166666666670000
        801.687500000000100000
        5.291666666666667000
        111.125000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Lb_Valor_Multa'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object Lb_Valor_Atualizado: TQRLabel
      Left = 354
      Top = 2
      Width = 95
      Height = 17
      Size.Values = (
        44.979166666666670000
        936.625000000000100000
        5.291666666666667000
        251.354166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Lb_Valor_Atualizado'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText12: TQRDBText
      Left = 633
      Top = 1
      Width = 72
      Height = 17
      Size.Values = (
        44.979166666666670000
        1674.812500000000000000
        2.645833333333333000
        190.500000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataField = 'VALORPREVISTO'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object Lb_Perc_Desconto: TQRLabel
      Left = 545
      Top = 2
      Width = 50
      Height = 17
      Size.Values = (
        44.979166666666670000
        1441.979166666667000000
        5.291666666666667000
        132.291666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Lb_Perc_Desconto'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object Lb_Valor_Original: TQRLabel
      Left = 169
      Top = 2
      Width = 79
      Height = 17
      Size.Values = (
        44.979166666666670000
        447.145833333333400000
        5.291666666666667000
        209.020833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Lb_Valor_Original'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  object QRSubDetail1: TQRSubDetail
    Left = 38
    Top = 339
    Width = 718
    Height = 19
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      50.270833333333330000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = Sub_Operacoes
    DataSet = FrmClientes.UniQScriptCobranca
    HeaderBand = Cabecalho_Eventos_Cobranca
    PrintBefore = False
    PrintIfEmpty = True
    object QRDBText42: TQRDBText
      Left = 144
      Top = 1
      Width = 571
      Height = 17
      Size.Values = (
        44.979166666666670000
        381.000000000000000000
        2.645833333333333000
        1510.770833333333000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Color = clWhite
      DataField = 'HISTORICO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText43: TQRDBText
      Left = 8
      Top = 1
      Width = 129
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        2.645833333333333000
        341.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataField = 'DataHora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  object Sub_Agendamentos: TQRSubDetail
    Left = 38
    Top = 374
    Width = 718
    Height = 19
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      50.270833333333330000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    Master = Owner
    DataSet = FrmClientes.uniQClientesAgenda
    HeaderBand = Cabecalho_Agendamentos
    PrintBefore = False
    PrintIfEmpty = True
    object QRDBText38: TQRDBText
      Left = 8
      Top = 1
      Width = 69
      Height = 17
      Size.Values = (
        44.979166666666670000
        21.166666666666670000
        2.645833333333333000
        182.562500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataField = 'DATA'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText39: TQRDBText
      Left = 81
      Top = 1
      Width = 62
      Height = 17
      Size.Values = (
        44.979166666666670000
        214.312500000000000000
        2.645833333333333000
        164.041666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataField = 'HORA'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRDBText18: TQRDBText
      Left = 152
      Top = 1
      Width = 257
      Height = 17
      Size.Values = (
        44.979166666666670000
        402.166666666666600000
        2.645833333333333000
        679.979166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataField = 'NOMEUSUARIO'
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
  object Total_Parcelas: TQRBand
    Left = 38
    Top = 303
    Width = 718
    Height = 19
    AlignToBottom = False
    BeforePrint = Total_ParcelasBeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      50.270833333333330000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbGroupFooter
    object QRLabel22: TQRLabel
      Left = 126
      Top = 1
      Width = 33
      Height = 17
      Size.Values = (
        44.979166666666670000
        333.375000000000000000
        2.645833333333333000
        87.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Total:'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object Lb_Total_Original: TQRLabel
      Left = 169
      Top = 0
      Width = 79
      Height = 17
      Size.Values = (
        44.979166666666670000
        447.145833333333400000
        0.000000000000000000
        209.020833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Lb_Total_Original'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object Lb_Total_Desconto: TQRLabel
      Left = 453
      Top = 0
      Width = 77
      Height = 17
      Size.Values = (
        44.979166666666670000
        1198.562500000000000000
        0.000000000000000000
        203.729166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Lb_Total_Desconto'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object Lb_Total_Pagar: TQRLabel
      Left = 625
      Top = 0
      Width = 80
      Height = 17
      Size.Values = (
        44.979166666666670000
        1653.645833333333000000
        0.000000000000000000
        211.666666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Lb_Total_Pagar'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object Lb_Total_Juros: TQRLabel
      Left = 255
      Top = 0
      Width = 42
      Height = 17
      Size.Values = (
        44.979166666666670000
        674.687500000000000000
        0.000000000000000000
        111.125000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Lb_Total_Juros'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object Lb_Total_Multa: TQRLabel
      Left = 303
      Top = 0
      Width = 42
      Height = 17
      Size.Values = (
        44.979166666666670000
        801.687500000000100000
        0.000000000000000000
        111.125000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Lb_Total_Multa'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object Lb_Total_Atualizado: TQRLabel
      Left = 354
      Top = 0
      Width = 95
      Height = 17
      Size.Values = (
        44.979166666666670000
        936.625000000000100000
        0.000000000000000000
        251.354166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Lb_Total_Atualizado'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object Lb_Perc_DescTotal: TQRLabel
      Left = 535
      Top = 0
      Width = 60
      Height = 17
      Size.Values = (
        44.979166666666670000
        1415.520833333333000000
        0.000000000000000000
        158.750000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Lb_Perc_DescTotal'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
end
