object frmclientesnegociacao: Tfrmclientesnegociacao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Negocia'#231#227'o'
  ClientHeight = 706
  ClientWidth = 1366
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Roboto'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel3: TPanel
    Left = 0
    Top = 656
    Width = 1366
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object RzToolButton2: TRzToolButton
      AlignWithMargins = True
      Left = 1243
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
      Left = 1117
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
      Caption = 'Gravar Acordo'
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
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1366
    Height = 656
    Align = alClient
    BevelOuter = bvNone
    Color = 16053492
    ParentBackground = False
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 10
      Top = 401
      Width = 735
      Height = 209
      Constraints.MinHeight = 25
      DataSource = DataSource2
      FixedColor = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Roboto'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -15
      TitleFont.Name = 'Roboto'
      TitleFont.Style = []
      Visible = False
      Columns = <
        item
          Expanded = False
          FieldName = 'PARCELA'
          Title.Alignment = taCenter
          Title.Caption = 'Parcela'
          Title.Color = clWhite
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAVENCTO'
          Title.Alignment = taCenter
          Title.Caption = 'Vencimento'
          Title.Color = clWhite
          Width = 122
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Title.Caption = 'Valor'
          Title.Color = clWhite
          Width = 142
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Title.Color = clWhite
          Width = 182
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JUROS'
          Visible = True
        end>
    end
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 10
      Width = 1346
      Height = 69
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alTop
      BevelOuter = bvNone
      Color = 8282689
      ParentBackground = False
      TabOrder = 1
      object Label7: TLabel
        Left = 16
        Top = 14
        Width = 75
        Height = 19
        Caption = 'Multa (%):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 173
        Top = 14
        Width = 111
        Height = 19
        Caption = 'Juros a.m. (%):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 330
        Top = 14
        Width = 101
        Height = 19
        Caption = 'Desconto (%):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RzToolButton4: TRzToolButton
        AlignWithMargins = True
        Left = 523
        Top = 14
        Width = 120
        Height = 40
        Cursor = crHandPoint
        Margins.Left = 2
        Margins.Right = 2
        Margins.Bottom = 2
        GradientColorStyle = gcsSystem
        Flat = False
        ShowCaption = True
        Transparent = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        UseToolbarVisualStyle = False
        VisualStyle = vsWinXP
        Caption = 'Calcular'
        Color = 13273922
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        OnClick = RzToolButton4Click
      end
      object LBLCREDOR: TLabel
        Left = 930
        Top = 24
        Width = 145
        Height = 19
        Caption = '.............................'
        Color = 10053171
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label12: TLabel
        Left = 851
        Top = 24
        Width = 66
        Height = 19
        Caption = 'CREDOR:'
        Color = 10053171
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RZNMULTA: TRzNumericEdit
        Left = 16
        Top = 36
        Width = 114
        Height = 27
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnExit = RZNMULTAExit
        IntegersOnly = False
        DisplayFormat = '###,##0.00'
      end
      object RZNJUROS: TRzNumericEdit
        Left = 174
        Top = 34
        Width = 114
        Height = 27
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        OnExit = RZNJUROSExit
        IntegersOnly = False
        DisplayFormat = '###,##0.00'
      end
      object RZNDESCO: TRzNumericEdit
        Left = 330
        Top = 34
        Width = 114
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnExit = RZNDESCOExit
        OnKeyUp = RZNDESCOKeyUp
        IntegersOnly = False
        DisplayFormat = '###,##0.00'
      end
    end
    object Panel5: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 125
      Width = 1346
      Height = 73
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alTop
      BevelOuter = bvNone
      Color = 8282689
      ParentBackground = False
      TabOrder = 2
      object Label5: TLabel
        Left = 813
        Top = 13
        Width = 110
        Height = 19
        Caption = 'Forma de Pag.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 148
        Top = 13
        Width = 124
        Height = 19
        Caption = 'Primeira Parcela:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 15
        Top = 13
        Width = 109
        Height = 19
        Caption = 'N'#176' de Parcelas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 467
        Top = 13
        Width = 176
        Height = 19
        Caption = 'Intervalo entre Parcelas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 647
        Top = 38
        Width = 161
        Height = 14
        Caption = 'Zero para repetir o dia do m'#234's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object Label30: TLabel
        Left = 1015
        Top = -2
        Width = 146
        Height = 19
        Caption = 'Proposta do Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object RzToolButton1: TRzToolButton
        AlignWithMargins = True
        Left = 824
        Top = 0
        Width = 120
        Height = 40
        Cursor = crHandPoint
        Margins.Left = 2
        Margins.Right = 2
        Margins.Bottom = 2
        GradientColorStyle = gcsSystem
        Flat = False
        ShowCaption = True
        Transparent = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        UseToolbarVisualStyle = False
        VisualStyle = vsWinXP
        Caption = 'Simular'
        Color = 13273922
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        Visible = False
        OnClick = RzToolButton1Click
      end
      object Label31: TLabel
        Left = 282
        Top = 13
        Width = 160
        Height = 19
        Caption = '$ da Primeira Parcela:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 1008
        Top = 13
        Width = 114
        Height = 19
        Caption = 'Conta Corrente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ComboBox1: TComboBox
        Left = 813
        Top = 31
        Width = 184
        Height = 27
        BevelInner = bvNone
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 4
        Text = 'Boleto'
        OnCloseUp = ComboBox1CloseUp
        OnKeyDown = ComboBox1KeyDown
        OnKeyPress = ComboBox1KeyPress
        Items.Strings = (
          'Boleto'
          'Dep'#243'sito em Conta')
      end
      object edtprimeira: TAdvDateTimePicker
        Left = 148
        Top = 31
        Width = 124
        Height = 27
        Date = 43791.000000000000000000
        Format = ''
        Time = 0.153113425927585900
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        Kind = dkDate
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 1
        OnExit = edtprimeiraExit
        BorderStyle = bsSingle
        Ctl3D = True
        DateTime = 43791.153113425930000000
        Version = '1.3.3.0'
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
      end
      object NxSpinEdit61: TNxSpinEdit6
        Left = 15
        Top = 31
        Width = 122
        Height = 27
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = '1'
        OnExit = NxSpinEdit61Exit
        Max = 10000000.000000000000000000
        Min = 1.000000000000000000
        NumericEditOptions = [ednSigns]
        Value = 1.000000000000000000
        Increment = 1.000000000000000000
      end
      object DBAdvLUEdit8: TDBAdvLUEdit
        Left = 919
        Top = 15
        Width = 81
        Height = 23
        BorderColor = clSilver
        DefaultHandling = True
        EmptyTextStyle = []
        LabelCaption = '% Juros'
        LabelPosition = lpTopLeft
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -13
        LabelFont.Name = 'Roboto'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        MaxLength = 60
        ParentFont = False
        TabOrder = 5
        Text = '0,00'
        Visible = False
        OnKeyPress = DBAdvLUEdit2KeyPress
        Version = '1.4.1.0'
        AutoHistory = False
        AutoSynchronize = False
        FileLookup = False
        LookupPersist.Enable = False
        LookupPersist.Location = plInifile
        LookupPersist.Key = 'LUEdit'
        LookupPersist.Section = 'Values'
        LookupPersist.Count = 0
        LookupPersist.MaxCount = False
        MatchCase = False
        DataField = 'AJUROS'
        DataSource = frmcadastrodebancosempresas.DSQCadastroComissoes
        DataLookup = False
      end
      object edtintervalo: TNxSpinEdit6
        Left = 467
        Top = 31
        Width = 176
        Height = 27
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = '0'
        OnExit = edtintervaloExit
        Max = 30.000000000000000000
        NumericEditOptions = [ednSigns]
        Increment = 1.000000000000000000
      end
      object RzNumericEdit1: TRzNumericEdit
        Left = 651
        Top = 5
        Width = 156
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        Visible = False
        DisplayFormat = ',,,,,,,,,,,,,,,,,,,,0.00'
      end
      object RzEditPrimeira: TRzNumericEdit
        Left = 282
        Top = 31
        Width = 175
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnExit = RzEditPrimeiraExit
        IntegersOnly = False
        DisplayFormat = ',,,,,,,,,,,,,,,,,,,,##0.00'
      end
      object cbxBanco: TComboBox
        Left = 1008
        Top = 31
        Width = 329
        Height = 27
        Style = csDropDownList
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
    end
    object Panel6: TPanel
      Left = 10
      Top = 610
      Width = 735
      Height = 36
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 4
      object DBText7: TDBText
        Left = 251
        Top = 14
        Width = 59
        Height = 18
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'totalvalor'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object DBText8: TDBText
        Left = 414
        Top = 14
        Width = 59
        Height = 18
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'totaltotal'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object DBText9: TDBText
        Left = 574
        Top = 3
        Width = 92
        Height = 29
        Alignment = taRightJustify
        AutoSize = True
        Color = cl3DLight
        DataField = 'totaltotal'
        DataSource = DataSource2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8282689
        Font.Height = -24
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Visible = False
      end
      object Label2: TLabel
        Left = 32
        Top = 12
        Width = 46
        Height = 18
        Caption = 'Totais:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
    end
    object Panel7: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 89
      Width = 1346
      Height = 26
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alTop
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 3
      Visible = False
      object Label14: TLabel
        Left = 367
        Top = 1
        Width = 46
        Height = 18
        Caption = 'Totais:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 483
        Top = 1
        Width = 59
        Height = 18
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'TOTALNOMINAL'
        DataSource = DSTOTAIS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 598
        Top = 1
        Width = 59
        Height = 18
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'TOTALMULTA'
        DataSource = DSTOTAIS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 779
        Top = 1
        Width = 59
        Height = 18
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'TOTALJURO'
        DataSource = DSTOTAIS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 1016
        Top = 1
        Width = 59
        Height = 18
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'TOTALDESCONTO'
        DataSource = DSTOTAIS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText6: TDBText
        Left = 1149
        Top = 1
        Width = 59
        Height = 18
        Alignment = taRightJustify
        AutoSize = True
        DataField = 'TOTALDIVIDA'
        DataSource = DSTOTAIS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 13
        Top = 2
        Width = 123
        Height = 18
        Caption = 'T'#237'tulos em Aberto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object cxGrid1: TcxGrid
      Left = 10
      Top = 199
      Width = 1346
      Height = 196
      TabOrder = 5
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DSNEGOCIACAO
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'check_titulo'
            Column = cxGrid1DBTableView1check_titulo
          end
          item
            Format = '###,##0.00'
            Kind = skSum
            FieldName = 'VALORNOMINAL'
            Column = cxGrid1DBTableView1VALORNOMINAL
          end
          item
            Format = '###,##0.00'
            Kind = skSum
            FieldName = 'VALORMULTA'
            Column = cxGrid1DBTableView1VALORMULTA
          end
          item
            Format = '###,##0.00'
            Kind = skSum
            FieldName = 'VALORJURO'
            Column = cxGrid1DBTableView1VALORJURO
          end
          item
            Format = '###,##0.00'
            Kind = skSum
            FieldName = 'VALORABATIMENTO'
            Column = cxGrid1DBTableView1VALORABATIMENTO
          end
          item
            Format = '###,##0.00'
            Kind = skSum
            FieldName = 'VALORDIVIDA'
            Column = cxGrid1DBTableView1VALORDIVIDA
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid1DBTableView1check_titulo: TcxGridDBColumn
          DataBinding.FieldName = 'check_titulo'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Width = 20
          IsCaptionAssigned = True
        end
        object cxGrid1DBTableView1STATUS: TcxGridDBColumn
          Caption = 'SIT'
          DataBinding.FieldName = 'STATUS'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 30
        end
        object cxGrid1DBTableView1NROPERACAO: TcxGridDBColumn
          Caption = 'N'#176' Opera'#231#227'o'
          DataBinding.FieldName = 'NROPERACAO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxGrid1DBTableView1DATAVENCTO: TcxGridDBColumn
          Caption = 'Vencimento'
          DataBinding.FieldName = 'DATAVENCTO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 92
        end
        object cxGrid1DBTableView1dias_atraso: TcxGridDBColumn
          Caption = 'Atraso (Dias)'
          DataBinding.FieldName = 'dias_atraso'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 85
        end
        object cxGrid1DBTableView1VALORNOMINAL: TcxGridDBColumn
          Caption = 'Valor Nominal'
          DataBinding.FieldName = 'VALORNOMINAL'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 135
        end
        object cxGrid1DBTableView1VALORMULTA: TcxGridDBColumn
          Caption = 'Multa (R$)'
          DataBinding.FieldName = 'VALORMULTA'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 135
        end
        object cxGrid1DBTableView1perc_juros: TcxGridDBColumn
          Caption = 'Juros (%)'
          DataBinding.FieldName = 'perc_juros'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 135
        end
        object cxGrid1DBTableView1VALORJURO: TcxGridDBColumn
          Caption = 'Juros (R$)'
          DataBinding.FieldName = 'VALORJURO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 135
        end
        object cxGrid1DBTableView1VALORVENCIDO: TcxGridDBColumn
          Caption = 'SubTotal (R$)'
          DataBinding.FieldName = 'VALORVENCIDO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 135
        end
        object cxGrid1DBTableView1VALORABATIMENTO: TcxGridDBColumn
          Caption = 'Desconto (R$)'
          DataBinding.FieldName = 'VALORABATIMENTO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 135
        end
        object cxGrid1DBTableView1VALORDIVIDA: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'VALORDIVIDA'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 135
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxPageControl1: TcxPageControl
      Left = 752
      Top = 400
      Width = 588
      Height = 250
      TabOrder = 6
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 246
      ClientRectLeft = 4
      ClientRectRight = 584
      ClientRectTop = 26
      object cxTabSheet1: TcxTabSheet
        Caption = 'Parametros do Credor'
        ImageIndex = 0
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 580
          Height = 220
          Align = alClient
          BevelKind = bkFlat
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 0
          object Label4: TLabel
            Left = 23
            Top = 13
            Width = 161
            Height = 18
            Caption = 'Juros M'#237'nimos a.m.(%):'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 23
            Top = 125
            Width = 205
            Height = 18
            Caption = 'M'#225'ximo de Dias da 1'#170' Parcela'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 23
            Top = 153
            Width = 164
            Height = 18
            Caption = 'N'#176' M'#225'ximo de Parcelas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 23
            Top = 45
            Width = 123
            Height = 18
            Caption = 'Multa M'#237'nima (%):'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 23
            Top = 69
            Width = 154
            Height = 18
            Caption = 'Desconto M'#225'ximo (%):'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 23
            Top = 97
            Width = 188
            Height = 18
            Caption = 'Calcular Juros sobre Multa:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 23
            Top = 181
            Width = 177
            Height = 18
            Caption = 'Valor M'#237'nimo por Parcela:'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label18: TLabel
            Left = 271
            Top = 13
            Width = 8
            Height = 18
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 271
            Top = 125
            Width = 8
            Height = 18
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 271
            Top = 153
            Width = 8
            Height = 18
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 271
            Top = 41
            Width = 8
            Height = 18
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 271
            Top = 69
            Width = 8
            Height = 18
            Caption = '0'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 271
            Top = 97
            Width = 28
            Height = 18
            Caption = 'N'#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 271
            Top = 181
            Width = 8
            Height = 18
            Caption = '0'
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label27: TLabel
            Left = 351
            Top = 97
            Width = 70
            Height = 18
            Caption = 'Desconto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 427
            Top = 97
            Width = 8
            Height = 18
            Caption = 'x'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGray
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Informa'#231#245'es Adicionais'
        ImageIndex = 1
        object Memo1: TMemo
          Left = 0
          Top = 0
          Width = 580
          Height = 220
          Align = alClient
          Lines.Strings = (
            'Memo1')
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
    end
    object cxGrid2: TcxGrid
      Left = 11
      Top = 401
      Width = 735
      Height = 245
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      object cxGrid2DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DataSource2
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'PARCELA'
            Column = cxGrid2DBTableView1PARCELA
          end
          item
            Format = '###,##0.00'
            Kind = skSum
            FieldName = 'VALOR'
            Column = cxGrid2DBTableView1VALOR
          end
          item
            Format = '###,##0.00'
            Kind = skSum
            FieldName = 'JUROS'
            Column = cxGrid2DBTableView1JUROS
          end
          item
            Format = '###,##0.00'
            Kind = skSum
            FieldName = 'TOTAL'
            Column = cxGrid2DBTableView1TOTAL
          end
          item
            Format = '###,##0.00'
            Kind = skSum
            FieldName = 'MULTA'
            Column = cxGrid2DBTableView1MULTA
          end
          item
            Format = '###,##0.00'
            Kind = skSum
            FieldName = 'DESCONTOS'
            Column = cxGrid2DBTableView1DESCONTOS
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object cxGrid2DBTableView1PARCELA: TcxGridDBColumn
          Caption = 'Parcela'
          DataBinding.FieldName = 'PARCELA'
          Options.Editing = False
        end
        object cxGrid2DBTableView1DATAVENCTO: TcxGridDBColumn
          Caption = 'Vencimento'
          DataBinding.FieldName = 'DATAVENCTO'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 120
        end
        object cxGrid2DBTableView1VALOR: TcxGridDBColumn
          Caption = 'Valor'
          DataBinding.FieldName = 'VALOR'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 105
        end
        object cxGrid2DBTableView1JUROS: TcxGridDBColumn
          Caption = 'Juros'
          DataBinding.FieldName = 'JUROS'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 105
        end
        object cxGrid2DBTableView1MULTA: TcxGridDBColumn
          Caption = 'Multa'
          DataBinding.FieldName = 'MULTA'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 105
        end
        object cxGrid2DBTableView1DESCONTOS: TcxGridDBColumn
          Caption = 'Desconto'
          DataBinding.FieldName = 'DESCONTOS'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 105
        end
        object cxGrid2DBTableView1TOTAL: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'TOTAL'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 105
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxGrid2DBTableView1
      end
    end
  end
  object CDSNEGOCIACAO: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    MasterSource = DataSource2
    PacketRecords = 0
    Params = <>
    Left = 331
    Top = 280
    object CDSNEGOCIACAOSTATUS: TStringField
      Alignment = taCenter
      FieldName = 'STATUS'
      Size = 1
    end
    object CDSNEGOCIACAONROPERACAO: TStringField
      Alignment = taRightJustify
      FieldName = 'NROPERACAO'
    end
    object CDSNEGOCIACAODATAVENCTO: TDateField
      FieldName = 'DATAVENCTO'
    end
    object CDSNEGOCIACAOVALORNOMINAL: TFloatField
      FieldName = 'VALORNOMINAL'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object CDSNEGOCIACAOVALORMINIMO: TFloatField
      FieldName = 'VALORMINIMO'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object CDSNEGOCIACAOVALORMULTA: TFloatField
      FieldName = 'VALORMULTA'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object CDSNEGOCIACAOVALORJURO: TFloatField
      FieldName = 'VALORJURO'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object CDSNEGOCIACAOVALORHONORARIO: TFloatField
      FieldName = 'VALORHONORARIO'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object CDSNEGOCIACAOVALORVENCIDO: TFloatField
      FieldName = 'VALORVENCIDO'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object CDSNEGOCIACAOVALORABATIMENTO: TFloatField
      FieldName = 'VALORABATIMENTO'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object CDSNEGOCIACAOVALORDIVIDA: TFloatField
      FieldName = 'VALORDIVIDA'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object CDSNEGOCIACAOREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
    end
    object CDSNEGOCIACAOcheck_titulo: TStringField
      Alignment = taCenter
      DisplayLabel = 'Check'
      FieldName = 'check_titulo'
      OnChange = CDSNEGOCIACAOcheck_tituloChange
      Size = 5
    end
    object CDSNEGOCIACAOdias_atraso: TIntegerField
      Alignment = taCenter
      FieldName = 'dias_atraso'
    end
    object CDSNEGOCIACAOperc_juros: TFloatField
      FieldName = 'perc_juros'
      DisplayFormat = '###,##0.0000'
    end
    object CDSNEGOCIACAOOPERACAONOVA: TStringField
      FieldName = 'OPERACAONOVA'
    end
    object CDSNEGOCIACAOCOD_CREDOR: TIntegerField
      FieldName = 'COD_CREDOR'
    end
  end
  object DSNEGOCIACAO: TDataSource
    DataSet = CDSNEGOCIACAO
    Left = 225
    Top = 280
  end
  object DataSource2: TDataSource
    DataSet = cdsparcelas
    Left = 320
    Top = 448
  end
  object cdsparcelas: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    Left = 392
    Top = 448
    object cdsparcelasPARCELA: TIntegerField
      Alignment = taCenter
      FieldName = 'PARCELA'
    end
    object cdsparcelasDATAVENCTO: TDateField
      Alignment = taCenter
      FieldName = 'DATAVENCTO'
    end
    object cdsparcelasVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object cdsparcelasJUROS: TFloatField
      FieldName = 'JUROS'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object cdsparcelasTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object cdsparcelasMULTA: TFloatField
      FieldName = 'MULTA'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object cdsparcelasDESCONTOS: TFloatField
      FieldName = 'DESCONTOS'
      DisplayFormat = '###,###,###,###,##0.00'
    end
    object cdsparcelastotalalor: TAggregateField
      FieldName = 'totalvalor'
      Visible = True
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(valor)'
    end
    object cdsparcelastotalljuros: TAggregateField
      FieldName = 'totalljuros'
      Visible = True
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(juros)'
    end
    object cdsparcelastotaltotal: TAggregateField
      FieldName = 'totaltotal'
      Visible = True
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(total)'
    end
    object cdsparcelastotalmulta: TAggregateField
      FieldName = 'totalmulta'
      Visible = True
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(multa)'
    end
    object cdsparcelastotaldescontos: TAggregateField
      FieldName = 'totaldescontos'
      Visible = True
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'sum(descontos)'
    end
  end
  object uniQCredores: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from clientes '
      'where nome like '#39'%FRANCA%'#39' order by codigo')
    Left = 760
    Top = 16
  end
  object unigetid: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from aviso')
    Left = 604
    Top = 16
  end
  object uniscript: TFDQuery
    Connection = frmDataModule.UniConnection1
    Left = 678
    Top = 16
  end
  object ACBrBoleto1: TACBrBoleto
    Banco.TamanhoMaximoNossoNum = 10
    Banco.TipoCobranca = cobNenhum
    Banco.LayoutVersaoArquivo = 0
    Banco.LayoutVersaoLote = 0
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
    Left = 552
    Top = 448
  end
  object ACBrBoletoFCFortes1: TACBrBoletoFCFortes
    Left = 664
    Top = 448
  end
  object DSTOTAIS: TDataSource
    DataSet = CDSTOTAIS
    Left = 225
    Top = 336
  end
  object CDSTOTAIS: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    Left = 331
    Top = 336
    object CDSTOTAISTOTALNOMINAL: TFloatField
      FieldName = 'TOTALNOMINAL'
      DisplayFormat = #39'R$ '#39',,,,,,,,,,,,0.00'
    end
    object CDSTOTAISTOTALMULTA: TFloatField
      FieldName = 'TOTALMULTA'
      DisplayFormat = #39'R$ '#39',,,,,,,,,,,,0.00'
    end
    object CDSTOTAISTOTALJURO: TFloatField
      FieldName = 'TOTALJURO'
      DisplayFormat = #39'R$ '#39',,,,,,,,,,,,0.00'
    end
    object CDSTOTAISTOTALDESCONTO: TFloatField
      FieldName = 'TOTALDESCONTO'
      DisplayFormat = #39'R$ '#39',,,,,,,,,,,,0.00'
    end
    object CDSTOTAISTOTALDIVIDA: TFloatField
      FieldName = 'TOTALDIVIDA'
      DisplayFormat = #39'R$ '#39',,,,,,,,,,,,0.00'
    end
  end
  object QBanco: TFDQuery
    Connection = frmDataModule.UniConnection1
    Left = 586
    Top = 273
  end
end
