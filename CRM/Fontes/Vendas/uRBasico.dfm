object QrBasico: TQrBasico
  Left = 0
  Top = 0
  Width = 816
  Height = 1056
  ShowingPreview = False
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
  Page.PaperSize = Letter
  Page.Continuous = False
  Page.Values = (
    100.000000000000000000
    2794.000000000000000000
    100.000000000000000000
    2159.000000000000000000
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
  PreviewInitialState = wsNormal
  PreviewWidth = 500
  PreviewHeight = 500
  PrevInitialZoom = qrZoomToFit
  PreviewDefaultSaveType = stPDF
  PreviewLeft = 0
  PreviewTop = 0
  object QRBand1: TQRBand
    Left = 38
    Top = 38
    Width = 740
    Height = 73
    AlignToBottom = False
    BeforePrint = QRBand1BeforePrint
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      193.145833333333300000
      1957.916666666667000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbPageHeader
    object Lb_Empresa: TQRLabel
      Left = 104
      Top = 16
      Width = 531
      Height = 20
      Size.Values = (
        52.916666666666670000
        275.166666666666700000
        42.333333333333330000
        1404.937500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taCenter
      AlignToBand = True
      AutoSize = False
      Caption = 'Lb_Empresa'
      Color = clWhite
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
    object QRDBImage1: TQRDBImage
      Left = 7
      Top = 6
      Width = 85
      Height = 62
      Size.Values = (
        164.041666666666700000
        18.520833333333330000
        15.875000000000000000
        224.895833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      DataField = 'Logo'
      Stretch = True
    end
    object LBEndereco: TQRLabel
      Left = 104
      Top = 32
      Width = 531
      Height = 17
      Size.Values = (
        44.979166666666670000
        275.166666666666700000
        84.666666666666670000
        1404.937500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taCenter
      AlignToBand = True
      AutoSize = False
      Caption = 'LBEndereco'
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
    object LBCnpj: TQRLabel
      Left = 104
      Top = 50
      Width = 531
      Height = 17
      Size.Values = (
        44.979166666666670000
        275.166666666666700000
        132.291666666666700000
        1404.937500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taCenter
      AlignToBand = True
      AutoSize = False
      Caption = 'QRLabel3'
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
    object QRShapeDataPagina: TQRShape
      Left = 638
      Top = 0
      Width = 2
      Height = 73
      Size.Values = (
        193.145833333333300000
        1688.041666666667000000
        0.000000000000000000
        5.291666666666667000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsVertLine
      VertAdjust = 0
    end
    object QRData: TQRSysData
      Left = 646
      Top = 14
      Width = 71
      Height = 17
      Size.Values = (
        44.979166666666670000
        1709.208333333333000000
        37.041666666666670000
        187.854166666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      Data = qrsDate
      Text = 'Data  '
      Transparent = False
      ExportAs = exptText
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRPagina: TQRSysData
      Left = 646
      Top = 46
      Width = 81
      Height = 17
      Size.Values = (
        44.979166666666670000
        1709.208333333333000000
        121.708333333333300000
        214.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      Data = qrsPageNumber
      Text = 'P'#225'g.  '
      Transparent = False
      ExportAs = exptText
      VerticalAlignment = tlTop
      FontSize = 10
    end
  end
end
