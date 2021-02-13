inherited QRelClientesSintetico: TQRelClientesSintetico
  Width = 794
  Height = 1123
  DataSet = frmfiltrorelatoriosdeclientes.uniscript
  Functions.DATA = (
    '0'
    '0'
    #39#39)
  Page.PaperSize = A4
  Page.Values = (
    100.000000000000000000
    2970.000000000000000000
    100.000000000000000000
    2100.000000000000000000
    50.000000000000000000
    50.000000000000000000
    0.000000000000000000)
  ExplicitWidth = 794
  ExplicitHeight = 1123
  inherited QRBand1: TQRBand
    Left = 19
    Width = 756
    Height = 147
    Frame.DrawBottom = True
    Size.Values = (
      388.937500000000000000
      2000.250000000000000000)
    BandType = rbTitle
    ExplicitLeft = 19
    ExplicitWidth = 756
    ExplicitHeight = 147
    inherited Lb_Empresa: TQRLabel
      Left = 94
      Width = 500
      Size.Values = (
        52.916666666666700000
        248.708333333333000000
        42.333333333333300000
        1322.916666666670000000)
      AlignToBand = False
      Caption = 'TRIBUNA COBRAN'#199'A E CADASTRO LTDA'
      Font.Height = -13
      FontSize = 10
      ExplicitLeft = 94
      ExplicitWidth = 500
    end
    inherited QRDBImage1: TQRDBImage
      Size.Values = (
        164.041666666667000000
        18.520833333333300000
        15.875000000000000000
        224.895833333333000000)
    end
    inherited LBEndereco: TQRLabel
      Left = 94
      Width = 500
      Size.Values = (
        44.979166666666700000
        248.708333333333000000
        84.666666666666700000
        1322.916666666670000000)
      AlignToBand = False
      Caption = 
        'B'#225'rbara Heleodora, 1093, Centro - 35010-040 - Governador Valadar' +
        'es - MG'
      Font.Height = -12
      FontSize = 9
      ExplicitLeft = 94
      ExplicitWidth = 500
    end
    inherited LBCnpj: TQRLabel
      Left = 94
      Width = 500
      Size.Values = (
        44.979166666666700000
        248.708333333333000000
        132.291666666667000000
        1322.916666666670000000)
      AlignToBand = False
      Caption = 'CNPJ: 01.732.405/0001-87 - Fone: 0800 033 6780'
      Font.Height = -12
      FontSize = 9
      ExplicitLeft = 94
      ExplicitWidth = 500
    end
    inherited QRShapeDataPagina: TQRShape
      Left = 594
      Height = 105
      Size.Values = (
        277.812500000000000000
        1571.625000000000000000
        0.000000000000000000
        5.291666666666670000)
      ExplicitLeft = 594
      ExplicitHeight = 105
    end
    inherited QRData: TQRSysData
      Left = 648
      Top = 30
      Width = 70
      Size.Values = (
        44.979166666666700000
        1714.500000000000000000
        79.375000000000000000
        185.208333333333000000)
      Alignment = taCenter
      AutoSize = False
      Text = ''
      FontSize = 10
      ExplicitLeft = 648
      ExplicitTop = 30
      ExplicitWidth = 70
    end
    inherited QRPagina: TQRSysData
      Left = 648
      Top = 60
      Width = 70
      Size.Values = (
        44.979166666666700000
        1714.500000000000000000
        158.750000000000000000
        185.208333333333000000)
      Alignment = taCenter
      AutoSize = False
      Text = ''
      FontSize = 10
      ExplicitLeft = 648
      ExplicitTop = 60
      ExplicitWidth = 70
    end
    object QRLabel1: TQRLabel
      Left = 96
      Top = 85
      Width = 500
      Height = 20
      Size.Values = (
        52.916666666666670000
        254.000000000000000000
        224.895833333333300000
        1322.916666666667000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taCenter
      AlignToBand = False
      AutoSize = False
      Caption = 'Relat'#243'rio de Clientes'
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
    object QRShape1: TQRShape
      Left = 0
      Top = 126
      Width = 756
      Height = 3
      Size.Values = (
        7.937500000000000000
        0.000000000000000000
        333.375000000000000000
        2000.250000000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Shape = qrsHorLine
      VertAdjust = 0
    end
    object QRLabel2: TQRLabel
      Left = 3
      Top = 128
      Width = 55
      Height = 16
      Size.Values = (
        42.333333333333330000
        7.937500000000000000
        338.666666666666700000
        145.520833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Nome'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRLabel3: TQRLabel
      Left = 267
      Top = 128
      Width = 33
      Height = 16
      Size.Values = (
        42.333333333333330000
        706.437500000000000000
        338.666666666666700000
        87.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'TP'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRLabel4: TQRLabel
      Left = 306
      Top = 128
      Width = 81
      Height = 16
      Size.Values = (
        42.333333333333330000
        809.625000000000000000
        338.666666666666700000
        214.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'CPF / CNPJ'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRLabel7: TQRLabel
      Left = 612
      Top = 30
      Width = 32
      Height = 17
      Size.Values = (
        44.979166666666670000
        1619.250000000000000000
        79.375000000000000000
        84.666666666666670000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Data:'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel13: TQRLabel
      Left = 612
      Top = 60
      Width = 32
      Height = 17
      Size.Values = (
        44.979166666666670000
        1619.250000000000000000
        158.750000000000000000
        84.666666666666670000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'P'#225'g.:'
      Color = clWhite
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 10
    end
    object QRLabel5: TQRLabel
      Left = 393
      Top = 128
      Width = 40
      Height = 16
      Size.Values = (
        42.333333333333330000
        1039.812500000000000000
        338.666666666666700000
        105.833333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Fone 1'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRLabel6: TQRLabel
      Left = 450
      Top = 128
      Width = 40
      Height = 16
      Size.Values = (
        42.333333333333330000
        1190.625000000000000000
        338.666666666666700000
        105.833333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Fone 2'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRLabel9: TQRLabel
      Left = 507
      Top = 128
      Width = 40
      Height = 16
      Size.Values = (
        42.333333333333330000
        1341.437500000000000000
        338.666666666666700000
        105.833333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Fone 3'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRLabel10: TQRLabel
      Left = 564
      Top = 128
      Width = 40
      Height = 16
      Size.Values = (
        42.333333333333330000
        1492.250000000000000000
        338.666666666666700000
        105.833333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Fone 4'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRLabel11: TQRLabel
      Left = 621
      Top = 128
      Width = 40
      Height = 16
      Size.Values = (
        42.333333333333330000
        1643.062500000000000000
        338.666666666666700000
        105.833333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Fone 5'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRLabel12: TQRLabel
      Left = 678
      Top = 128
      Width = 40
      Height = 16
      Size.Values = (
        42.333333333333330000
        1793.875000000000000000
        338.666666666666700000
        105.833333333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Caption = 'Fone 6'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 9
    end
  end
  object QRBand2: TQRBand
    Left = 19
    Top = 185
    Width = 756
    Height = 24
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      63.500000000000000000
      2000.250000000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbDetail
    object QRDBText2: TQRDBText
      Left = 3
      Top = 1
      Width = 260
      Height = 17
      Size.Values = (
        44.979166666666670000
        7.937500000000000000
        2.645833333333333000
        687.916666666666700000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = frmfiltrorelatoriosdeclientes.uniscript
      DataField = 'NOME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText1: TQRDBText
      Left = 267
      Top = 1
      Width = 27
      Height = 17
      Size.Values = (
        44.979166666666670000
        706.437500000000000000
        2.645833333333333000
        71.437500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = frmfiltrorelatoriosdeclientes.uniscript
      DataField = 'TIPOPESSOA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText3: TQRDBText
      Left = 306
      Top = 1
      Width = 81
      Height = 17
      Size.Values = (
        44.979166666666670000
        809.625000000000000000
        2.645833333333333000
        214.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = frmfiltrorelatoriosdeclientes.uniscript
      DataField = 'CGC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText4: TQRDBText
      Left = 393
      Top = 1
      Width = 81
      Height = 17
      Size.Values = (
        44.979166666666670000
        1039.812500000000000000
        2.645833333333333000
        214.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = frmfiltrorelatoriosdeclientes.uniscript
      DataField = 'FONE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText5: TQRDBText
      Left = 450
      Top = 1
      Width = 81
      Height = 17
      Size.Values = (
        44.979166666666670000
        1190.625000000000000000
        2.645833333333333000
        214.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = frmfiltrorelatoriosdeclientes.uniscript
      DataField = 'FONE_1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText6: TQRDBText
      Left = 507
      Top = 1
      Width = 81
      Height = 17
      Size.Values = (
        44.979166666666670000
        1341.437500000000000000
        2.645833333333333000
        214.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = frmfiltrorelatoriosdeclientes.uniscript
      DataField = 'FAXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText7: TQRDBText
      Left = 564
      Top = 1
      Width = 81
      Height = 17
      Size.Values = (
        44.979166666666670000
        1492.250000000000000000
        2.645833333333333000
        214.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = frmfiltrorelatoriosdeclientes.uniscript
      DataField = 'FAXCEL_1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
    object QRDBText8: TQRDBText
      Left = 621
      Top = 1
      Width = 81
      Height = 17
      Size.Values = (
        44.979166666666670000
        1643.062500000000000000
        2.645833333333333000
        214.312500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = False
      Color = clWhite
      DataSet = frmfiltrorelatoriosdeclientes.uniscript
      DataField = 'FONE_PREFERENCIAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FullJustify = False
      MaxBreakChars = 0
      VerticalAlignment = tlTop
      FontSize = 8
    end
  end
  object QRBand3: TQRBand
    Left = 19
    Top = 209
    Width = 756
    Height = 24
    Frame.DrawTop = True
    Frame.DrawBottom = True
    AlignToBottom = False
    TransparentBand = False
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      63.500000000000000000
      2000.250000000000000000)
    PreCaluculateBandHeight = False
    KeepOnOnePage = False
    BandType = rbSummary
    object QRLabel8: TQRLabel
      Left = 297
      Top = 3
      Width = 97
      Height = 17
      Size.Values = (
        44.979166666666670000
        785.812500000000000000
        7.937500000000000000
        256.645833333333300000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Caption = 'Total de Clientes:'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      VerticalAlignment = tlTop
      FontSize = 9
    end
    object QRExpr1: TQRExpr
      Left = 400
      Top = 3
      Width = 45
      Height = 17
      Size.Values = (
        44.979166666666670000
        1058.333333333333000000
        7.937500000000000000
        119.062500000000000000)
      XLColumn = 0
      XLNumFormat = nfGeneral
      ActiveInPreview = False
      Alignment = taLeftJustify
      AlignToBand = False
      Color = clWhite
      Master = Owner
      ResetAfterPrint = False
      Transparent = False
      Expression = 'COUNT'
      ExportAs = exptText
      WrapStyle = BreakOnSpaces
      FontSize = 10
    end
  end
end
