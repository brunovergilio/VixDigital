object QR_Correspondencia_DUX: TQR_Correspondencia_DUX
  Left = 0
  Top = 0
  Width = 794
  Height = 529
  BeforePrint = QuickRepBeforePrint
  DataSet = DMCorrespondencia.QCorrespondencia
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
  Page.PaperSize = Default
  Page.Values = (
    100.000000000000000000
    1400.000000000000000000
    50.000000000000000000
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
  PrinterSettings.PrintQuality = 0
  PrinterSettings.Collate = 0
  PrinterSettings.ColorOption = 0
  PrintIfEmpty = True
  SnapToGrid = True
  Units = MM
  Zoom = 100
  PrevFormStyle = fsNormal
  PreviewInitialState = wsNormal
  PrevInitialZoom = qrZoomToFit
  object DetailBand1: TQRBand
    Left = 38
    Top = 19
    Width = 718
    Height = 427
    AlignToBottom = False
    BeforePrint = DetailBand1BeforePrint
    Color = clWhite
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      1129.770833333333000000
      1899.708333333333000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object Lb_Empresa: TQRLabel
      Left = 48
      Top = 1
      Width = 489
      Height = 17
      Size.Values = (
        44.979166666666670000
        127.000000000000000000
        2.645833333333333000
        1293.812500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Lb_Empresa'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object Lb_Endereco: TQRLabel
      Left = 48
      Top = 19
      Width = 490
      Height = 17
      Size.Values = (
        44.979166666666670000
        127.000000000000000000
        50.270833333333330000
        1296.458333333333000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Lb_Endereco'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object Lb_Cep: TQRLabel
      Left = 48
      Top = 37
      Width = 491
      Height = 17
      Size.Values = (
        44.979166666666670000
        127.000000000000000000
        97.895833333333340000
        1299.104166666667000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Lb_Cep'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object QRLabel1: TQRLabel
      Left = 48
      Top = 78
      Width = 489
      Height = 17
      Size.Values = (
        44.979166666666670000
        127.000000000000000000
        206.375000000000000000
        1293.812500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Prezado(a) Senhor(a)'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object Lb_Banco: TQRLabel
      Left = 48
      Top = 94
      Width = 489
      Height = 17
      Size.Values = (
        44.979166666666670000
        127.000000000000000000
        248.708333333333300000
        1293.812500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 
        'Encontra-se em aberto no Banco de Brasil, o(s) seguinte(s) produ' +
        'to(s):'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object Mem_Operacoes: TQRMemo
      Left = 48
      Top = 112
      Width = 669
      Height = 199
      Size.Values = (
        526.520833333333400000
        127.000000000000000000
        296.333333333333400000
        1770.062500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object LB_Linha1: TQRLabel
      Left = 48
      Top = 244
      Width = 658
      Height = 17
      Size.Values = (
        44.979166666666670000
        127.000000000000000000
        645.583333333333400000
        1740.958333333333000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Solicitamos seu contato URGENTE pelo telefone:  0800 941 4333'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 8
    end
    object Lb_Linha2: TQRLabel
      Left = 48
      Top = 262
      Width = 658
      Height = 17
      Size.Values = (
        44.979166666666670000
        127.000000000000000000
        693.208333333333400000
        1740.958333333333000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 
        'Temos ótimas vantagens para sua regularização À VISTA ou PARCELA' +
        'DO. Aproveite esta oportunidade !'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 8
    end
    object Lb_Linha3: TQRLabel
      Left = 48
      Top = 280
      Width = 658
      Height = 17
      Size.Values = (
        44.979166666666670000
        127.000000000000000000
        740.833333333333400000
        1740.958333333333000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 
        'CASO JA TENHA SIDO PROVIDENCIADA A SOLUÇÃO DESTA(S) PENDÊNCIA(S)' +
        ', PEDIMOS DESCONSIDERAR O PRESENTE AVISO.'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 8
    end
    object Lb_Nome_Cliente: TQRLabel
      Left = 232
      Top = 340
      Width = 420
      Height = 17
      Size.Values = (
        44.979166666666670000
        613.833333333333400000
        899.583333333333400000
        1111.250000000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Lb_Nome_Cliente'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object Lb_Endereco_Cliente: TQRLabel
      Left = 232
      Top = 356
      Width = 419
      Height = 17
      Size.Values = (
        44.979166666666670000
        613.833333333333400000
        941.916666666666700000
        1108.604166666667000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Lb_Endereco_Cliente'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object Lb_Cep_Cliente: TQRLabel
      Left = 232
      Top = 372
      Width = 418
      Height = 17
      Size.Values = (
        44.979166666666670000
        613.833333333333400000
        984.249999999999900000
        1105.958333333333000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'Lb_Cep_Cliente'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object Lb_Dia: TQRLabel
      Left = 543
      Top = 23
      Width = 26
      Height = 17
      Size.Values = (
        44.979166666666670000
        1436.687500000000000000
        60.854166666666680000
        68.791666666666670000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'dd'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object Lb_Mes: TQRLabel
      Left = 577
      Top = 23
      Width = 23
      Height = 17
      Size.Values = (
        44.979166666666670000
        1526.645833333333000000
        60.854166666666680000
        60.854166666666680000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'mm'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object Lb_Ano: TQRLabel
      Left = 616
      Top = 23
      Width = 35
      Height = 17
      Size.Values = (
        44.979166666666670000
        1629.833333333333000000
        60.854166666666680000
        92.604166666666670000)
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 'yyyy'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 10
    end
    object Lb_Decimo_Terceiro: TQRLabel
      Left = 48
      Top = 225
      Width = 658
      Height = 17
      Size.Values = (
        44.979166666666670000
        127.000000000000000000
        595.312500000000000000
        1740.958333333333000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 
        'APROVEITE O SEU 13º (DÉCIMO TERCEIRO) SALÁRIO. TEMOS VANTAGENS. ' +
        'LIGUE-NOS.'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 9
    end
    object Lb_Linha4: TQRLabel
      Left = 48
      Top = 298
      Width = 658
      Height = 17
      Size.Values = (
        44.979166666666670000
        127.000000000000000000
        788.458333333333300000
        1740.958333333333000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = False
      Caption = 
        'CASO JA TENHA SIDO PROVIDENCIADA A SOLUÇÃO DESTA(S) PENDÊNCIA(S)' +
        ', PEDIMOS DESCONSIDERAR O PRESENTE AVISO.'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 8
    end
    object lbAgencias: TQRLabel
      Left = 48
      Top = 400
      Width = 658
      Height = 17
      Size.Values = (
        44.979166666666670000
        127.000000000000000000
        1058.333333333333000000
        1740.958333333333000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      AutoStretch = True
      Caption = 'lbAgencias'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      WordWrap = True
      FontSize = 10
    end
  end
  object gtDocSettings: TgtDocSettings
    BackgroundImageDisplayType = dtCenter
    MeasurementUnit = muPixels
    Page.Width = 793.699199999999900000
    Page.Height = 1122.518400000000000000
    Page.BinNumber = 0
    Preferences.OpenAfterCreate = False
    Preferences.ShowSetupDialog = False
    Left = 48
    Top = 128
  end
  object gtPDFEngine: TgtPDFEngine
    FileExtension = 'pdf'
    FileDescription = 'Adobe PDF'
    InputXRes = 96
    InputYRes = 96
    MeasurementUnit = muPixels
    ReferencePoint = rpBand
    Settings = gtDocSettings
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ImageSettings.SourceDPI = 96
    ImageSettings.OutputImageFormat = ifBMP
    Page.Width = 793.699199999999900000
    Page.Height = 1122.518400000000000000
    Page.BinNumber = 0
    Preferences.OpenAfterCreate = False
    Preferences.ShowSetupDialog = False
    FontEncoding = feWinAnsiEncoding
    Left = 96
    Top = 128
  end
  object gtQRExportPDF: TgtQRExportInterface
    Engine = gtPDFEngine
    DoBeginDoc = True
    DoEndDoc = True
    Left = 96
    Top = 168
  end
  object gtRTFEngine: TgtRTFEngine
    FileExtension = 'rtf'
    FileDescription = 'Rich Text Format'
    InputXRes = 96
    InputYRes = 96
    MeasurementUnit = muPixels
    ReferencePoint = rpBand
    Settings = gtDocSettings
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ImageSettings.SourceDPI = 96
    ImageSettings.OutputImageFormat = ifJPEG
    Page.Width = 793.699199999999900000
    Page.Height = 1122.518400000000000000
    Page.BinNumber = 0
    Preferences.OpenAfterCreate = False
    Preferences.ShowSetupDialog = False
    Preferences.GraphicDataInBinary = False
    DocumentEncodingType = etPositionalAccuracy
    Left = 136
    Top = 128
  end
  object gtQRExportRTF: TgtQRExportInterface
    Engine = gtRTFEngine
    DoBeginDoc = True
    DoEndDoc = True
    Left = 136
    Top = 168
  end
  object gtHTMLEngine: TgtHTMLEngine
    FileExtension = 'htm'
    FileDescription = 'Internet HTML'
    InputXRes = 96
    InputYRes = 96
    MeasurementUnit = muPixels
    ReferencePoint = rpBand
    Settings = gtDocSettings
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ImageSettings.SourceDPI = 96
    ImageSettings.OutputImageFormat = ifBMP
    Page.Width = 793.699199999999900000
    Page.Height = 1122.518400000000000000
    Page.BinNumber = 0
    Preferences.OpenAfterCreate = False
    Preferences.ShowSetupDialog = False
    Preferences.AutoScroll = False
    Preferences.OptimizeForIE = False
    Navigator.LinkFont.Charset = DEFAULT_CHARSET
    Navigator.LinkFont.Color = clBlue
    Navigator.LinkFont.Height = -27
    Navigator.LinkFont.Name = 'Wingdings'
    Navigator.LinkFont.Style = []
    TransparentBackground = True
    TOCPageSettings.ItemFont.Charset = DEFAULT_CHARSET
    TOCPageSettings.ItemFont.Color = clWindowText
    TOCPageSettings.ItemFont.Height = -11
    TOCPageSettings.ItemFont.Name = 'MS Sans Serif'
    TOCPageSettings.ItemFont.Style = []
    TOCPageSettings.TitleFont.Charset = DEFAULT_CHARSET
    TOCPageSettings.TitleFont.Color = clWindowText
    TOCPageSettings.TitleFont.Height = -11
    TOCPageSettings.TitleFont.Name = 'MS Sans Serif'
    TOCPageSettings.TitleFont.Style = []
    TOCPageSettings.Title = 'Table Of Contents'
    Left = 176
    Top = 128
  end
  object gtQRExportHTML: TgtQRExportInterface
    Engine = gtHTMLEngine
    DoBeginDoc = True
    DoEndDoc = True
    Left = 176
    Top = 168
  end
  object gtExcelEngine: TgtExcelEngine
    FileExtension = 'xls'
    FileDescription = 'Microsoft Excel '
    InputXRes = 96
    InputYRes = 96
    ItemsToRender = [irText, irImage]
    MeasurementUnit = muPixels
    ReferencePoint = rpBand
    Settings = gtDocSettings
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Page.Width = 793.699199999999900000
    Page.Height = 1122.518400000000000000
    Page.BinNumber = 0
    Preferences.OpenAfterCreate = False
    Preferences.ShowSetupDialog = False
    Preferences.AutoFormatCells = False
    Formatting.ColumnSpacing = -1
    Formatting.RowSpacing = -1
    Formatting.ScaleX = 1.000000000000000000
    Formatting.ScaleY = 1.000000000000000000
    ImageSettings.SourceDPI = 96
    ImageSettings.OutputImageFormat = ifMetafile
    Left = 216
    Top = 128
  end
  object gtQRExportXLS: TgtQRExportInterface
    Engine = gtExcelEngine
    DoBeginDoc = True
    DoEndDoc = True
    Left = 216
    Top = 168
  end
  object gtTextEngine: TgtTextEngine
    FileExtension = 'txt'
    FileDescription = 'Arquivo Texto'
    InputXRes = 96
    InputYRes = 96
    MeasurementUnit = muPixels
    ReferencePoint = rpBand
    Settings = gtDocSettings
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -11
    DefaultFont.Name = 'MS Sans Serif'
    DefaultFont.Style = []
    Page.Width = 793.699199999999900000
    Page.Height = 1122.518400000000000000
    Page.BinNumber = 0
    Preferences.OpenAfterCreate = False
    Preferences.ShowSetupDialog = False
    PageEndLines = True
    ColumnSpacing = 1
    Left = 256
    Top = 128
  end
  object gtQRExportTXT: TgtQRExportInterface
    Engine = gtTextEngine
    DoBeginDoc = True
    DoEndDoc = True
    Left = 256
    Top = 168
  end
  object gtJPEGEngine: TgtJPEGEngine
    FileExtension = 'jpg'
    FileDescription = 'JPEG Imagem'
    InputXRes = 96
    InputYRes = 96
    MeasurementUnit = muPixels
    ReferencePoint = rpBand
    Settings = gtDocSettings
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ImageSettings.SourceDPI = 96
    ImageSettings.OutputImageFormat = ifBMP
    Page.Width = 793.699199999999900000
    Page.Height = 1122.518400000000000000
    Page.BinNumber = 0
    Preferences.OpenAfterCreate = False
    Preferences.ShowSetupDialog = False
    ScaleX = 1.000000000000000000
    ScaleY = 1.000000000000000000
    Left = 296
    Top = 128
  end
  object gtQRExportJPEG: TgtQRExportInterface
    Engine = gtJPEGEngine
    DoBeginDoc = True
    DoEndDoc = True
    Left = 296
    Top = 168
  end
end
