object frmClientesCadastro: TfrmClientesCadastro
  Left = 269
  Top = 118
  HelpContext = 11
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Clientes'
  ClientHeight = 759
  ClientWidth = 1376
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Roboto'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Panel_Cliente: TPanel
    Left = 0
    Top = 0
    Width = 1376
    Height = 634
    Align = alClient
    BevelOuter = bvNone
    Constraints.MinHeight = 121
    TabOrder = 0
    object Panel_Eventos_Cobranca: TPanel
      Left = 0
      Top = 210
      Width = 676
      Height = 336
      Align = alLeft
      BevelOuter = bvNone
      Color = 13273922
      ParentBackground = False
      TabOrder = 0
      object Lb_Eventos_Cobranca: TLabel
        Left = 0
        Top = 0
        Width = 676
        Height = 19
        Align = alTop
        Alignment = taCenter
        Caption = 'Eventos'
        Color = clInactiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        ExplicitWidth = 57
      end
      object DBGridEventos: TDBGrid
        Left = 0
        Top = 19
        Width = 676
        Height = 267
        Align = alClient
        DataSource = FrmClientes.UniDSQEventosCobranca
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Roboto'
        TitleFont.Style = []
        OnKeyDown = DBGridEventosKeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'DATAHORA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Roboto'
            Font.Style = []
            ReadOnly = False
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESC_EVENTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Roboto'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Evento'
            Width = 178
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HISTORICOBLOB'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Roboto'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Ocorr'#234'ncia'
            Width = 260
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_usuario'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Roboto'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Operador'
            Width = 120
            Visible = True
          end>
      end
      object Panel6: TPanel
        Left = 0
        Top = 286
        Width = 676
        Height = 50
        Align = alBottom
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object RzToolButton5: TRzToolButton
          AlignWithMargins = True
          Left = 427
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
          Caption = 'Add Evento'
          Color = 10583155
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          OnClick = RzToolButton5Click
          ExplicitLeft = 239
          ExplicitTop = -2
          ExplicitHeight = 40
        end
        object RzToolButton8: TRzToolButton
          AlignWithMargins = True
          Left = 553
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
          Caption = 'Abre Evento'
          Color = 10583155
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
          OnClick = RzToolButton8Click
          ExplicitLeft = 635
          ExplicitTop = -2
          ExplicitHeight = 40
        end
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 546
      Width = 1376
      Height = 88
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object RzToolButton2: TRzToolButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 120
        Height = 82
        Cursor = crHandPoint
        Margins.Right = 0
        GradientColorStyle = gcsSystem
        Flat = False
        ShowCaption = True
        Transparent = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        UseToolbarVisualStyle = False
        VisualStyle = vsWinXP
        Align = alLeft
        Caption = 'Agendar'
        Color = 13273922
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        OnClick = RzToolButton2Click
        ExplicitTop = 2
      end
      object RzToolButton3: TRzToolButton
        AlignWithMargins = True
        Left = 126
        Top = 3
        Width = 120
        Height = 82
        Cursor = crHandPoint
        Margins.Right = 0
        GradientColorStyle = gcsSystem
        Flat = False
        ShowCaption = True
        Transparent = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        UseToolbarVisualStyle = False
        VisualStyle = vsWinXP
        Align = alLeft
        Caption = 'Negocia'#231#227'o'
        Color = clTeal
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        OnClick = RzToolButton3Click
        ExplicitTop = 2
      end
      object RzToolButton7: TRzToolButton
        AlignWithMargins = True
        Left = 618
        Top = 3
        Width = 120
        Height = 82
        Cursor = crHandPoint
        GradientColorStyle = gcsSystem
        Flat = False
        ShowCaption = True
        Transparent = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        UseToolbarVisualStyle = False
        VisualStyle = vsWinXP
        Align = alLeft
        Caption = 'Boletos'
        Color = 13273922
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        OnClick = RzToolButton7Click
        ExplicitLeft = 0
        ExplicitHeight = 39
      end
      object RzToolButton1: TRzToolButton
        AlignWithMargins = True
        Left = 249
        Top = 3
        Width = 120
        Height = 82
        Cursor = crHandPoint
        Margins.Right = 0
        GradientColorStyle = gcsSystem
        Flat = False
        ShowCaption = True
        Transparent = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        UseToolbarVisualStyle = False
        VisualStyle = vsWinXP
        Align = alLeft
        Caption = 'Detalhamento Cliente'
        Color = 13273922
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        OnClick = RzToolButton1Click
        ExplicitLeft = 0
        ExplicitTop = 45
        ExplicitHeight = 38
      end
      object RzToolButton6: TRzToolButton
        AlignWithMargins = True
        Left = 495
        Top = 3
        Width = 120
        Height = 82
        Cursor = crHandPoint
        Margins.Right = 0
        GradientColorStyle = gcsSystem
        Flat = False
        ShowCaption = True
        Transparent = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        UseToolbarVisualStyle = False
        VisualStyle = vsWinXP
        Align = alLeft
        Caption = 'Termo de Acordo'
        Color = 13273922
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        OnClick = RzToolButton6Click
        ExplicitLeft = 123
        ExplicitTop = 45
        ExplicitHeight = 38
      end
      object RzToolButton4: TRzToolButton
        AlignWithMargins = True
        Left = 372
        Top = 3
        Width = 120
        Height = 82
        Cursor = crHandPoint
        Margins.Right = 0
        GradientColorStyle = gcsSystem
        Flat = False
        ShowCaption = True
        Transparent = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        UseToolbarVisualStyle = False
        VisualStyle = vsWinXP
        Align = alLeft
        Caption = 'E-mail Boleto/Termo'
        Color = 13273922
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        OnClick = RzToolButton4Click
        ExplicitLeft = 123
        ExplicitHeight = 39
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 741
        Top = 3
        Width = 632
        Height = 82
        Margins.Left = 0
        Align = alClient
        Alignment = taLeftJustify
        Anchors = [akTop, akRight, akBottom]
        BevelOuter = bvNone
        Color = 13273922
        ParentBackground = False
        TabOrder = 0
        object lblemaberto: TLabel
          AlignWithMargins = True
          Left = 340
          Top = 3
          Width = 119
          Height = 76
          Margins.Right = 20
          Align = alRight
          Caption = 'Em ser (T'#237'tulos):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 19
        end
        object lblemser: TLabel
          AlignWithMargins = True
          Left = 482
          Top = 3
          Width = 130
          Height = 76
          Margins.Right = 20
          Align = alRight
          Caption = 'Em ser (Nominal):'
          Color = 8282689
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
          ExplicitHeight = 19
        end
        object lblrenegociados: TLabel
          AlignWithMargins = True
          Left = 228
          Top = 3
          Width = 89
          Height = 76
          Margins.Right = 20
          Align = alRight
          Caption = 'Negociados:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitHeight = 19
        end
      end
    end
    object Panel7: TPanel
      Left = 0
      Top = 0
      Width = 1376
      Height = 210
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel_Cliente_End_Fone'
      TabOrder = 2
      object Panel_Telefones: TPanel
        Left = 1106
        Top = 0
        Width = 270
        Height = 210
        Align = alRight
        BevelKind = bkFlat
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object Label7: TLabel
          Left = 36
          Top = 27
          Width = 16
          Height = 19
          Caption = '1'#186
          FocusControl = Edt_Fone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 36
          Top = 57
          Width = 16
          Height = 19
          Caption = '2'#186
          FocusControl = Edt_FaxCel
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 36
          Top = 87
          Width = 16
          Height = 19
          Caption = '3'#186
          FocusControl = Edt_Fone_1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 36
          Top = 117
          Width = 16
          Height = 19
          Caption = '4'#186
          FocusControl = Edt_FaxCel_1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 36
          Top = 147
          Width = 16
          Height = 19
          Caption = '5'#186
          FocusControl = Edt_Contato
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 36
          Top = 179
          Width = 16
          Height = 19
          Caption = '6'#186
          FocusControl = Edt_Contato_1
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = []
          ParentFont = False
        end
        object Edt_Fone: TDBEdit
          Left = 84
          Top = 28
          Width = 174
          Height = 16
          BorderStyle = bsNone
          DataField = 'FONE'
          DataSource = FrmClientes.UniDSQClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object Edt_FaxCel: TDBEdit
          Left = 84
          Top = 58
          Width = 174
          Height = 16
          BorderStyle = bsNone
          DataField = 'FAXCEL'
          DataSource = FrmClientes.UniDSQClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object Edt_Fone_1: TDBEdit
          Left = 84
          Top = 88
          Width = 174
          Height = 16
          BorderStyle = bsNone
          DataField = 'FONE_1'
          DataSource = FrmClientes.UniDSQClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object Edt_FaxCel_1: TDBEdit
          Left = 84
          Top = 118
          Width = 174
          Height = 16
          BorderStyle = bsNone
          DataField = 'FAXCEL_1'
          DataSource = FrmClientes.UniDSQClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object Edt_Contato: TDBEdit
          Left = 84
          Top = 148
          Width = 174
          Height = 16
          BorderStyle = bsNone
          DataField = 'CONTATO'
          DataSource = FrmClientes.UniDSQClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          MaxLength = 14
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object Edt_Contato_1: TDBEdit
          Left = 84
          Top = 179
          Width = 174
          Height = 16
          BorderStyle = bsNone
          DataField = 'CONTATO_1'
          DataSource = FrmClientes.UniDSQClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          MaxLength = 14
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 266
          Height = 15
          Align = alTop
          Alignment = taRightJustify
          BevelOuter = bvNone
          Color = 13273922
          ParentBackground = False
          TabOrder = 6
          object Label5: TLabel
            Left = 0
            Top = 0
            Width = 266
            Height = 15
            Align = alTop
            Alignment = taCenter
            Caption = 'Telefones'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Roboto'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 57
          end
        end
      end
      object Panel_Cliente_Endereco: TPanel
        Left = 0
        Top = 0
        Width = 1106
        Height = 210
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        ParentBackground = False
        TabOrder = 1
        object Panel_Cliente_Nome: TPanel
          Left = 0
          Top = 0
          Width = 1106
          Height = 79
          Align = alTop
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelKind = bkFlat
          BevelOuter = bvNone
          TabOrder = 0
          DesignSize = (
            1102
            75)
          object Lb_Nome: TLabel
            Left = 8
            Top = 29
            Width = 45
            Height = 18
            Caption = 'Nome:'
            FocusControl = Edt_Nome
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
          end
          object Lb_Cpf: TLabel
            Left = 510
            Top = 16
            Width = 75
            Height = 18
            Anchors = [akTop, akRight]
            Caption = 'CPF/CNPJ:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 500
          end
          object Btn_ProximoCliente: TSpeedButton
            Left = 928
            Top = 2
            Width = 163
            Height = 35
            HelpType = htKeyword
            Caption = '[F2] Pr'#243'ximo Cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Visible = False
            OnClick = Btn_ProximoClienteClick
          end
          object Label3: TLabel
            Left = 510
            Top = 41
            Width = 111
            Height = 18
            Anchors = [akTop, akRight]
            Caption = 'Ident./Insc. Est.:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
            ExplicitLeft = 500
          end
          object SpeedButton1: TSpeedButton
            Left = 928
            Top = 39
            Width = 163
            Height = 35
            HelpType = htKeyword
            Caption = '[F3] Cliente Anterior'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Visible = False
            OnClick = SpeedButton1Click
          end
          object Btn_LimpaClassificacao: TSpeedButton
            Left = 442
            Top = 23
            Width = 35
            Height = 28
            Hint = 'Limpar dados da Classificacao'
            Flat = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = []
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000020000000900000011000000140000
              00120000000A0000000200000000000000000000000000000000000000000000
              00000000000000000000000000020000000D411F0E9397532BFF914D26FF8C45
              21FF47210F9B0000001000000002000000000000000000000000000000000000
              000000000000000000000000000742221190B17D53FFE1BA86FFE4CA9FFFA761
              32FF99542AFF1E101F9B0000000F000000020000000000000000000000000000
              0000000000000000000000000009AE7247FFE5C18FFFE4BF8DFFE4BF8DFFE7D0
              A5FF9D6E6EFF2D259FFF07073A990000000D0000000200000000000000000000
              000000000000000000000000000562442D92D0A478FFE7C69AFFE7C495FFB0A6
              BFFFB0B9EEFF463DC7FF302BA6FF0B0A3F950000000C00000002000000060000
              000A0000000B0000000B0000000D0000001362463093D4AC82FFBAB2C7FF8493
              E9FF8494EAFFB6C2F0FF4742C9FF3532ADFF0F0E47930000000B775448BDA575
              64FFA47464FFA47564FFA37463FFBB978AFFCCB5ADFFA18C9BFF737DD7FF95A5
              EDFF8E9FEDFF8D9EEDFFBCC8F2FF4846CBFF3B3AB5FF13134C8EA97969FFEFE3
              DEFFEEE2DBFFEDE1DAFFEDE0D9FFECE0D9FFF0E6E0FFF1EAE6FF999BD1FF7B87
              DBFF9FB0F1FF97AAF1FF97AAF0FFC1CEF5FF5353D1FF393BADFFAD7E6EFFF1E7
              E1FFD2C1B8FF724E3CFF724C3CFF714D3BFFEEE3DCFF957A6EFFB5A29BFF827F
              B1FF8290E0FFA9B9F4FFA0B4F3FFA7B9F5FF7D85CDFF15174E88B18473FFF4EB
              E6FF775141FFF1E9E3FFF1E8E2FF754E40FFF0E7E0FF754E40FFF4ECE6FFF4EF
              ECFF8784B6FF8896E4FFB7C8F7FF7783D5FF1A1E588600000005B68979FFF5EF
              EBFFD8C8C0FF7C5646FF7A5546FF7A5444FFF4ECE6FF795543FFF3EAE5FFF5EF
              EAFFBBA9A0FFAAADE1FF606BD6FF1E245F880000000400000001BA8E7EFFF7F3
              F0FFF7F2EEFFF7F2EDFFF7F1EDFF7F5949FFF6F0ECFF7F5948FFF5EFEBFFF5EE
              EAFF9D7F74FFF9F4F2FFD9C3BBFF000000090000000000000000BF9383FFFAF8
              F4FFF9F6F3FF845F4DFF835E4CFFDDD0C9FFF9F3EFFF835D4CFF825D4BFF825D
              4BFFDBCEC6FFF6F0EDFFBA8F7FFF000000070000000000000000C29988FFFCFA
              F7FFFBF9F5FFFBF8F5FFFBF8F5FFFAF7F5FFFAF7F4FF866050FFF9F6F3FFF9F5
              F2FFF9F4F2FFF9F4F1FFBE9484FF000000060000000000000000C69D8DFFFCFC
              FAFFFDFCFAFFFDFCFAFFFCFBFAFFFCFBF9FFFCFBF9FFA5877AFFFCFAF7FFFCF9
              F7FFFCF9F6FFFCF8F5FFC39888FF0000000500000000000000009E8477BED4B2
              A1FFD4B1A0FFD3B09FFFD2AF9EFFD1AE9DFFD1AC9CFFD0AB9AFFCEA999FFCEA8
              97FFCDA696FFCBA595FF96796DBF000000030000000000000000}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Visible = False
          end
          object Lb_MCI: TLabel
            Left = 442
            Top = 33
            Width = 26
            Height = 18
            Caption = 'MCI'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object Lb_Classificacao: TLabel
            Left = 450
            Top = 41
            Width = 50
            Height = 18
            Caption = 'Classif.'
            FocusControl = Lookup_COD_CLASSIFICACAO
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object LB_Nascimento: TLabel
            Left = 578
            Top = 53
            Width = 83
            Height = 18
            Caption = 'Nascimento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
            Visible = False
          end
          object RzToolButton9: TRzToolButton
            AlignWithMargins = True
            Left = 1006
            Top = 3
            Width = 93
            Height = 69
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
            Caption = 'Buscar (F6)'
            Color = 10583155
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
            OnClick = RzToolButton9Click
            ExplicitLeft = 995
          end
          object RzToolButton10: TRzToolButton
            AlignWithMargins = True
            Left = 907
            Top = 3
            Width = 93
            Height = 69
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
            Caption = 'Pr'#243'ximo >>>'
            Color = 10583155
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
            OnClick = RzToolButton10Click
            ExplicitLeft = 895
          end
          object RzToolButton11: TRzToolButton
            AlignWithMargins = True
            Left = 808
            Top = 3
            Width = 93
            Height = 69
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
            Caption = '<<< Anterior'
            Color = 10583155
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
            OnClick = RzToolButton11Click
            ExplicitLeft = 795
          end
          object Edt_Nome: TDBEdit
            Tag = 2
            Left = 59
            Top = 24
            Width = 435
            Height = 21
            AutoSize = False
            BorderStyle = bsNone
            DataField = 'NOME'
            DataSource = FrmClientes.UniDSQClientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Roboto'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 0
          end
          object Edt_CPF: TDBEdit
            Tag = 2
            Left = 644
            Top = 17
            Width = 156
            Height = 17
            Anchors = [akTop, akRight]
            BorderStyle = bsNone
            DataField = 'CPF_CNPJ'
            DataSource = FrmClientes.UniDSQClientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            PopupMenu = Pop_Endereco
            ReadOnly = True
            ShowHint = True
            TabOrder = 1
          end
          object Edt_NRIDENTIDADE: TDBEdit
            Tag = 2
            Left = 644
            Top = 42
            Width = 156
            Height = 17
            Anchors = [akTop, akRight]
            BorderStyle = bsNone
            DataField = 'NRIDENTIDADE'
            DataSource = FrmClientes.UniDSQClientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 2
          end
          object Lookup_COD_CLASSIFICACAO: TRxDBLookupCombo
            Left = 506
            Top = 40
            Width = 208
            Height = 20
            DropDownCount = 8
            DataField = 'COD_CLASSIFICACAO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            LookupField = 'CODIGO'
            LookupDisplay = 'DESCRICAO'
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            Visible = False
          end
          object Edt_MCI: TDBEdit
            Tag = 2
            Left = 531
            Top = 40
            Width = 99
            Height = 17
            BorderStyle = bsNone
            DataField = 'MCI'
            DataSource = FrmClientes.UniDSQClientes
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Roboto'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 4
            Visible = False
          end
        end
        object Panel_Endereco: TPanel
          Left = 0
          Top = 79
          Width = 1106
          Height = 131
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
          object PageControl_Endereco: TPageControl
            Left = 0
            Top = 0
            Width = 1106
            Height = 131
            ActivePage = TabCoobrigados
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Roboto'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Tab_End1: TTabSheet
              Caption = 'Endere'#231'o 1'
              PopupMenu = Pop_Endereco
              object Label15: TLabel
                Left = 6
                Top = 11
                Width = 68
                Height = 18
                Caption = 'Endere'#231'o:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
              end
              object Label16: TLabel
                Left = 6
                Top = 44
                Width = 45
                Height = 18
                Caption = 'Bairro:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
              end
              object Label21: TLabel
                Left = 6
                Top = 77
                Width = 77
                Height = 18
                Caption = 'Refer'#234'ncia:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
              end
              object Label17: TLabel
                Left = 456
                Top = 44
                Width = 51
                Height = 18
                Caption = 'Cidade:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
              end
              object Label18: TLabel
                Left = 793
                Top = 44
                Width = 22
                Height = 18
                Caption = 'UF:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
              end
              object Label19: TLabel
                Left = 884
                Top = 44
                Width = 31
                Height = 18
                Caption = 'CEP:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
              end
              object Label20: TLabel
                Left = 884
                Top = 11
                Width = 22
                Height = 18
                Caption = 'N'#186':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
              end
              object Label1: TLabel
                Left = 456
                Top = 77
                Width = 48
                Height = 18
                Caption = 'E-mail:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
              end
              object lblretomada: TLabel
                Left = 908
                Top = 32
                Width = 3
                Height = 15
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -13
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
              end
              object Edt_PONTO_REF1: TDBEdit
                Left = 88
                Top = 69
                Width = 345
                Height = 26
                CharCase = ecUpperCase
                DataField = 'PONTO_REF1'
                DataSource = FrmClientes.UniDSQClientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 6
              end
              object Edt_SETOR: TDBEdit
                Left = 88
                Top = 36
                Width = 345
                Height = 26
                CharCase = ecUpperCase
                DataField = 'SETOR'
                DataSource = FrmClientes.UniDSQClientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 2
              end
              object Edt_ENDERECO: TDBEdit
                Left = 88
                Top = 3
                Width = 769
                Height = 26
                CharCase = ecUpperCase
                DataField = 'ENDERECO'
                DataSource = FrmClientes.UniDSQClientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 0
              end
              object Edt_CIDADE: TDBEdit
                Left = 510
                Top = 36
                Width = 261
                Height = 26
                CharCase = ecUpperCase
                DataField = 'CIDADE'
                DataSource = FrmClientes.UniDSQClientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 3
              end
              object Edt_UF: TDBEdit
                Left = 817
                Top = 36
                Width = 40
                Height = 26
                CharCase = ecUpperCase
                DataField = 'UF'
                DataSource = FrmClientes.UniDSQClientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 4
              end
              object Edt_NUMERO: TDBEdit
                Left = 917
                Top = 3
                Width = 164
                Height = 26
                CharCase = ecUpperCase
                DataField = 'NUMERO'
                DataSource = FrmClientes.UniDSQClientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 1
              end
              object Edt_CEP: TDBEdit
                Left = 917
                Top = 36
                Width = 164
                Height = 26
                CharCase = ecUpperCase
                DataField = 'CEP'
                DataSource = FrmClientes.UniDSQClientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 5
              end
              object CK_Pref_End1: TCheckBox
                Left = 972
                Top = 78
                Width = 109
                Height = 17
                Hint = 'Endere'#231'o prefer'#234'ncial para envio de Correspond'#234'ncia / Etiquetas'
                Caption = 'Preferencial'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 8
              end
              object Edt_email1: TDBEdit
                Left = 510
                Top = 69
                Width = 456
                Height = 26
                CharCase = ecLowerCase
                DataField = 'E_MAIL'
                DataSource = FrmClientes.UniDSQClientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 7
              end
            end
            object Tab_End2: TTabSheet
              Caption = 'Endere'#231'o 2'
              ImageIndex = 1
              PopupMenu = Pop_Endereco
              object Label2: TLabel
                Left = 914
                Top = 37
                Width = 3
                Height = 15
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -13
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
              end
              object Label4: TLabel
                Left = 456
                Top = 77
                Width = 48
                Height = 18
                Caption = 'E-mail:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
              end
              object Label6: TLabel
                Left = 884
                Top = 11
                Width = 22
                Height = 18
                Caption = 'N'#186':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
              end
              object Label13: TLabel
                Left = 884
                Top = 44
                Width = 31
                Height = 18
                Caption = 'CEP:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
              end
              object Label14: TLabel
                Left = 793
                Top = 44
                Width = 22
                Height = 18
                Caption = 'UF:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
              end
              object Label22: TLabel
                Left = 456
                Top = 44
                Width = 51
                Height = 18
                Caption = 'Cidade:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
              end
              object Label23: TLabel
                Left = 6
                Top = 77
                Width = 77
                Height = 18
                Caption = 'Refer'#234'ncia:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
              end
              object Label24: TLabel
                Left = 6
                Top = 44
                Width = 45
                Height = 18
                Caption = 'Bairro:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
              end
              object Label25: TLabel
                Left = 6
                Top = 11
                Width = 68
                Height = 18
                Caption = 'Endere'#231'o:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
              end
              object DBEdit1: TDBEdit
                Left = 817
                Top = 36
                Width = 40
                Height = 26
                CharCase = ecUpperCase
                DataField = 'UF_1'
                DataSource = FrmClientes.UniDSQClientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 0
              end
              object CheckBox1: TCheckBox
                Left = 972
                Top = 78
                Width = 109
                Height = 17
                Hint = 'Endere'#231'o prefer'#234'ncial para envio de Correspond'#234'ncia / Etiquetas'
                Caption = 'Preferencial'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 1
              end
              object DBEdit2: TDBEdit
                Left = 510
                Top = 69
                Width = 456
                Height = 26
                CharCase = ecLowerCase
                DataField = 'E_MAIL1'
                DataSource = FrmClientes.UniDSQClientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 2
              end
              object DBEdit3: TDBEdit
                Left = 917
                Top = 36
                Width = 164
                Height = 26
                CharCase = ecUpperCase
                DataField = 'CEP_1'
                DataSource = FrmClientes.UniDSQClientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 3
              end
              object DBEdit4: TDBEdit
                Left = 917
                Top = 3
                Width = 164
                Height = 26
                CharCase = ecUpperCase
                DataField = 'NUMERO_1'
                DataSource = FrmClientes.UniDSQClientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 4
              end
              object DBEdit5: TDBEdit
                Left = 510
                Top = 36
                Width = 261
                Height = 26
                CharCase = ecUpperCase
                DataField = 'CIDADE_1'
                DataSource = FrmClientes.UniDSQClientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 5
              end
              object DBEdit6: TDBEdit
                Left = 88
                Top = 3
                Width = 769
                Height = 26
                CharCase = ecUpperCase
                DataField = 'ENDENDERECO_1'
                DataSource = FrmClientes.UniDSQClientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 6
              end
              object DBEdit7: TDBEdit
                Left = 88
                Top = 36
                Width = 345
                Height = 26
                CharCase = ecUpperCase
                DataField = 'SETOR_1'
                DataSource = FrmClientes.UniDSQClientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 7
              end
              object DBEdit8: TDBEdit
                Left = 88
                Top = 69
                Width = 345
                Height = 26
                CharCase = ecUpperCase
                DataField = 'PONTO_REF2'
                DataSource = FrmClientes.UniDSQClientes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGray
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 8
              end
            end
            object TabCoobrigados: TTabSheet
              Caption = 'Refer'#234'ncias'
              ImageIndex = 4
              object DBGrid1: TDBGrid
                Left = 0
                Top = 0
                Width = 1098
                Height = 101
                Align = alClient
                BorderStyle = bsNone
                DataSource = FrmClientes.uniDSClientesReferencia
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                Options = [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                ParentFont = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'NOME'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -13
                    Title.Font.Name = 'Calibri'
                    Title.Font.Style = []
                    Width = 250
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FONE1'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -13
                    Title.Font.Name = 'Calibri'
                    Title.Font.Style = []
                    Width = 100
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'FONE2'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -13
                    Title.Font.Name = 'Calibri'
                    Title.Font.Style = []
                    Width = 100
                    Visible = True
                  end>
              end
            end
            object Tab_Agendamentos: TTabSheet
              Caption = 'Agendamentos'
              ImageIndex = 2
              object DBGrid_Eventos_Cliente: TDBGrid
                Left = 160
                Top = 55
                Width = 1088
                Height = 101
                Hint = 'Bot'#227'o direito do Mouse EXCLUIR AGENDAMENTO'
                BorderStyle = bsNone
                DataSource = FrmClientes.uniDSClientesAgenda
                Options = [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                ParentShowHint = False
                PopupMenu = Popup_ExcluirAgenda
                ReadOnly = True
                ShowHint = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clBlack
                TitleFont.Height = -13
                TitleFont.Name = 'Roboto'
                TitleFont.Style = []
                Visible = False
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'DATA'
                    Width = 65
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'HORA'
                    Width = 50
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOME'
                    Width = 130
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'AG_CUMPRIDO'
                    Title.Caption = 'Status'
                    Width = 70
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OBS'
                    Title.Caption = 'Observa'#231#227'o'
                    Width = 160
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'USUARIO_CAD'
                    Width = 110
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DTA_CAD'
                    Visible = True
                  end>
              end
              object DBGrid4: TDBGrid
                Left = 0
                Top = 0
                Width = 1098
                Height = 101
                Align = alClient
                DataSource = FrmClientes.uniDSClientesAgenda
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clBlack
                TitleFont.Height = -13
                TitleFont.Name = 'Roboto'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'HORA'
                    ReadOnly = True
                    Title.Caption = 'Data'
                    Width = 170
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'EVENTO'
                    ReadOnly = True
                    Title.Caption = 'Evento'
                    Width = 662
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'USR_CAD'
                    ReadOnly = True
                    Title.Caption = 'C'#243'digo'
                    Width = 60
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'nome_usuario'
                    Title.Caption = 'Usu'#225'rio'
                    Width = 151
                    Visible = True
                  end>
              end
            end
            object Tab_Observacao: TTabSheet
              Caption = 'O&bserva'#231#227'o'
              ImageIndex = 3
              object DbObservacao: TDBMemo
                Left = 0
                Top = 0
                Width = 1098
                Height = 101
                Align = alClient
                DataField = 'OBS'
                DataSource = FrmClientes.UniDSQClientes
                ReadOnly = True
                ScrollBars = ssVertical
                TabOrder = 0
              end
            end
            object Tab_Script: TTabSheet
              Hint = 'Roteiro p. Acionamento'
              Caption = 'Roteiro p. Acionamento'
              ImageIndex = 5
              ParentShowHint = False
              ShowHint = True
              object Btn_IncluirScript: TSpeedButton
                Left = 534
                Top = -1
                Width = 87
                Height = 34
                AllowAllUp = True
                Caption = 'Incluir Roteiro'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Calibri'
                Font.Style = []
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
              end
              object DBGrid_ScriptCobranca: TDBGrid
                Left = -4
                Top = 0
                Width = 532
                Height = 80
                Hint = 'Clique duplo para Ler'
                BorderStyle = bsNone
                DataSource = FrmClientes.UniDSScriptCobranca
                Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                ParentShowHint = False
                PopupMenu = Popup_ExcluirAgenda
                ReadOnly = True
                ShowHint = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clBlack
                TitleFont.Height = -13
                TitleFont.Name = 'Roboto'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CODIGO'
                    Title.Caption = 'C'#243'digo'
                    Width = 40
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'TITULO'
                    Title.Caption = 'T'#237'tulo'
                    Visible = True
                  end>
              end
            end
            object tbVeiculos: TTabSheet
              Caption = 'Ve'#237'culos'
              ImageIndex = 6
              object DBGrid5: TDBGrid
                Left = 0
                Top = 0
                Width = 1098
                Height = 101
                Align = alClient
                DataSource = FrmClientes.UniDSQClientesVeiculos
                PopupMenu = PopupMenu1
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clBlack
                TitleFont.Height = -13
                TitleFont.Name = 'Roboto'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'marca'
                    ReadOnly = True
                    Title.Caption = 'Marca'
                    Width = 232
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'modelo'
                    ReadOnly = True
                    Title.Caption = 'Modelo'
                    Width = 458
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ano'
                    ReadOnly = True
                    Title.Caption = 'Ano'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'placa'
                    ReadOnly = True
                    Title.Caption = 'Placa'
                    Width = 64
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'renavam'
                    ReadOnly = True
                    Title.Caption = 'Renavam'
                    Width = 64
                    Visible = True
                  end>
              end
            end
          end
        end
      end
    end
    object Panel_Divida: TPanel
      Left = 676
      Top = 210
      Width = 700
      Height = 336
      Align = alClient
      BevelOuter = bvNone
      Color = clSilver
      ParentBackground = False
      TabOrder = 3
      object Panel_Operacoes: TPanel
        Left = 0
        Top = 0
        Width = 700
        Height = 336
        Align = alClient
        BevelOuter = bvNone
        Color = 13273922
        ParentBackground = False
        TabOrder = 0
        object LB_Dividas: TLabel
          Left = 0
          Top = 0
          Width = 700
          Height = 19
          Hint = 'D'#237'vidas [ Alt + D ]'
          Align = alTop
          Alignment = taCenter
          Caption = 'D'#237'vidas'
          Color = clInactiveCaption
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 53
        end
        object Panel2: TPanel
          Left = 0
          Top = 306
          Width = 700
          Height = 30
          Align = alBottom
          BevelKind = bkFlat
          BevelOuter = bvNone
          Color = 13273922
          Constraints.MinHeight = 19
          ParentBackground = False
          TabOrder = 0
          object Label26: TLabel
            Left = 0
            Top = 0
            Width = 696
            Height = 26
            Hint = 'Parcelas'
            Align = alClient
            Caption = 
              'EM SER(S)::RETOMADO(O)::LIQUIDADO(L)::NEGOCIADO(N)::RENEGOCIADO(' +
              'R)::ACORDO QUEBRADO(A)::DEVOLVIDO(D)::LIQ. POR RENEG.(L)::NEGOCI' +
              'A'#199#195'O(N)'
            Color = clInactiveCaption
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Roboto'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Layout = tlCenter
            Visible = False
            WordWrap = True
            ExplicitWidth = 650
          end
        end
        object DBGridOperacoes: TDBGrid
          Left = 0
          Top = 19
          Width = 700
          Height = 287
          Align = alClient
          Constraints.MinHeight = 25
          DataSource = FrmClientes.uniDSClientesOperacoes
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgMultiSelect]
          PopupMenu = PopupMenu2
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'Roboto'
          TitleFont.Style = []
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'STATUS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'SIT'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Roboto'
              Title.Font.Style = [fsBold]
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'CREDOR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Credor'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Roboto'
              Title.Font.Style = []
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'nome'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Credor Nome'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Roboto'
              Title.Font.Style = []
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'NROPERACAO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' Opera'#231#227'o'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Roboto'
              Title.Font.Style = []
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'OPERACAONOVA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Nova Opera'#231#227'o'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Roboto'
              Title.Font.Style = []
              Visible = False
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DATAVENCTO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Vencimento'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Roboto'
              Title.Font.Style = []
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'DIAS_ATRAZO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              Title.Caption = 'Dias Atraso'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Roboto'
              Title.Font.Style = []
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'VALORNOMINAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. Nominal'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Roboto'
              Title.Font.Style = []
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'PERC_MULTA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Multa (%)'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Roboto'
              Title.Font.Style = []
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'VALORMULTA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Multa (R$)'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Roboto'
              Title.Font.Style = []
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'VALORJURO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Juros (R$)'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Roboto'
              Title.Font.Style = []
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'PERC_JUROS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Juros (%)'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Roboto'
              Title.Font.Style = []
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'PERC_DESCONTO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Desconto (%)'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Roboto'
              Title.Font.Style = []
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'VALORABATIMENTO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Caption = 'Desconto (R$)'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Roboto'
              Title.Font.Style = []
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'VALORDIVIDA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Vlr. D'#237'vida'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Roboto'
              Title.Font.Style = [fsBold]
              Visible = False
            end
            item
              Expanded = False
              FieldName = 'empresa'
              Title.Caption = 'Empresa'
              Width = 175
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'operacao'
              Title.Caption = 'Operacao'
              Width = 175
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VAR1'
              Width = 175
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VAR2'
              Width = 175
              Visible = True
            end>
        end
      end
    end
  end
  object Panel_Parcelas: TPanel
    Left = 0
    Top = 634
    Width = 1376
    Height = 125
    Align = alBottom
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = 'Panel_Parcelas'
    Color = 13273922
    Constraints.MinHeight = 19
    ParentBackground = False
    TabOrder = 1
    object LB_Parcelas: TLabel
      Left = 0
      Top = 0
      Width = 1372
      Height = 19
      Hint = 'Parcelas'
      Align = alTop
      Alignment = taCenter
      Caption = 'Parcelas'
      Color = clInactiveCaption
      FocusControl = DBGridParcelas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      ExplicitWidth = 62
    end
    object DBGridParcelas: TDBGrid
      Left = 0
      Top = 19
      Width = 1372
      Height = 102
      Align = alClient
      BorderStyle = bsNone
      DataSource = FrmClientes.uniDSClientesParcelas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Times New Roman'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NROPERACAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'N'#186
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 134
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAVENCTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Vencimento'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORORIGINAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Vlr. Principal'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORPREVISTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Vlr. Nominal'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATARECEBIMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Recebimento'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORREALIZADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Vlr. Recebido'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORJUROS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Vlr. Juros'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORDESCONTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Vlr. Desconto'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORATRAZO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Vlr. Atrazo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 51
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORPROTESTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Vlr. Protesto'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORMULTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Vlr. Multa'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORHONORARIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Vlr.Honor'#225'rios'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMIEMP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Comiss'#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RECBANCO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Rec'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORPAGTOCOB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'C. Cobrador'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAGOCOB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'C. Paga'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMERONOTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Nr. NF'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RESUMO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Resumo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CobradorNome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Cobrador(a)'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BOL_NUMERO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Nr. Boleto'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BOL_NOSSO_NUMERO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Bol. Nosso N'#250'mero'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BOL_DATA_EMISSAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Dt. Emis. Bol'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BOL_DESC_SITUACAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Situa'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 400
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BOL_LINHA_DIGITAVEL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Linha Digit'#225'vel'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHQ_BANCO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Banco'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHQ_AGENCIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Ag'#234'ncia'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHQ_CONTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Conta'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHQ_NUMERO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'N'#250'mero'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_REPASSE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Caption = 'Dt.Presta'#231#227'o de Contas'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 64
          Visible = True
        end>
    end
  end
  object Panel_parcelas_resumo: TPanel
    Left = 348
    Top = 600
    Width = 670
    Height = 377
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = clTeal
    ParentBackground = False
    TabOrder = 2
    Visible = False
    object Panel5: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 0
      Width = 660
      Height = 370
      Margins.Top = 0
      Align = alClient
      BevelOuter = bvNone
      Color = clTeal
      ParentBackground = False
      TabOrder = 0
      object Label27: TLabel
        Left = 0
        Top = 0
        Width = 660
        Height = 19
        Align = alTop
        Alignment = taCenter
        Caption = 'Negocia'#231#227'o'
        Color = clInactiveCaption
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        ExplicitWidth = 84
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 19
        Width = 660
        Height = 351
        Align = alClient
        BorderStyle = bsNone
        DataSource = FrmClientes.uniDSClientesParcelas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Roboto'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Times New Roman'
        TitleFont.Style = []
        OnDblClick = DBGrid3DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NROPERACAO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'N'#186
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAVENCTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Vencimento'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORORIGINAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Vlr. Principal'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORPREVISTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Vlr. Nominal'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATARECEBIMENTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Recebimento'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORREALIZADO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Vlr. Recebido'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORJUROS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Vlr. Juros'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORDESCONTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Vlr. Desconto'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORATRAZO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Vlr. Atrazo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORPROTESTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Vlr. Protesto'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORMULTA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Vlr. Multa'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORHONORARIO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Vlr.Honor'#225'rios'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMIEMP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Comiss'#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RECBANCO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Rec'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORPAGTOCOB'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'C. Cobrador'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAGOCOB'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'C. Paga'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERONOTA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Nr. NF'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RESUMO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Resumo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CobradorNome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Cobrador(a)'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BOL_NUMERO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Nr. Boleto'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BOL_NOSSO_NUMERO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Bol. Nosso N'#250'mero'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BOL_DATA_EMISSAO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Dt. Emis. Bol'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BOL_DESC_SITUACAO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Situa'#231#227'o'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 400
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BOL_LINHA_DIGITAVEL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Linha Digit'#225'vel'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHQ_BANCO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Banco'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHQ_AGENCIA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Ag'#234'ncia'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHQ_CONTA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Conta'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHQ_NUMERO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'N'#250'mero'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_REPASSE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'Dt.Presta'#231#227'o de Contas'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = []
            Width = 64
            Visible = True
          end>
      end
    end
  end
  object DBEdit12: TDBEdit
    Tag = 2
    Left = 531
    Top = 40
    Width = 99
    Height = 17
    BorderStyle = bsNone
    DataField = 'MCI'
    DataSource = FrmClientes.UniDSQClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Roboto'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 3
    Visible = False
  end
  object Popup_Recibo: TPopupMenu
    Left = 574
    Top = 424
    object CancelarRecibo1: TMenuItem
      Caption = 'Cancelar Recibo'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ReciboTradicional1: TMenuItem
      Tag = 1
      Caption = 'Recibo Tradicional'
      Visible = False
    end
    object ReciboTAComplementar1: TMenuItem
      Tag = 1
      Caption = 'Recibo TA Complementar'
      Visible = False
    end
  end
  object ActionList: TActionList
    Left = 350
    Top = 253
    object Buscar_Novo_Cliente: TAction
      Caption = 'Buscar_Novo_Cliente'
      ShortCut = 113
    end
    object Cliente_Anterior: TAction
      Caption = 'Cliente_Anterior'
      ShortCut = 115
    end
  end
  object Popup_Ficha_Operacao: TPopupMenu
    Left = 438
    Top = 424
    object FichadaOperao1: TMenuItem
      Caption = 'Ficha da Opera'#231#227'o'
    end
    object CorrespdaOperao1: TMenuItem
      Caption = 'Corresp. da Opera'#231#227'o'
    end
  end
  object FormStorage: TFormStorage
    Active = False
    IniFileName = 'C:\FCliente.ini'
    Options = []
    StoredProps.Strings = (
      'Panel_Cliente_Nome.Height'
      'Panel_Cliente_Nome.Width'
      'Panel_Cliente.Height'
      'Panel_Cliente.Width'
      'Panel_Divida.Height'
      'Panel_Divida.Width'
      'Panel_Operacoes.Height'
      'Panel_Operacoes.Width'
      'Panel_Parcelas.Height'
      'Panel_Parcelas.Width'
      'DBGridParcelas.Columns')
    StoredValues = <>
    Left = 876
    Top = 253
  end
  object PopUp_Confg_Grade: TPopupMenu
    Left = 438
    Top = 253
    object Alterar1: TMenuItem
      Caption = 'Configurar Grades Mostrar/Ocultar Colunas'
    end
    object SalvarConfiguraesAtuais1: TMenuItem
      Caption = 'Salvar Configura'#231#245'es Atuais'
    end
    object ResetarConfiguraes1: TMenuItem
      Caption = 'Restaurar Padr'#245'es de Configura'#231#227'o'
    end
  end
  object Pop_Endereco: TPopupMenu
    Left = 310
    Top = 424
    object End_2: TMenuItem
      Caption = 'Copiar p/ End. 2'
    end
    object End_1: TMenuItem
      Caption = 'Copiar p/ End. 1'
    end
    object CopiarpreadeTransferncia1: TMenuItem
      Caption = 'Copiar p/ '#193'rea de Transfer'#234'ncia'
    end
    object mnuCopiarCPF_CGC_SemMasca: TMenuItem
      Caption = 'Copiar CPF / CNPJ sem m'#225'scara'
    end
    object mnuCopiarCPF_CGC_ComMasca: TMenuItem
      Caption = 'Copiar CPF / CNPJ com m'#225'scara'
    end
  end
  object Popup_ExcluirAgenda: TPopupMenu
    Left = 215
    Top = 424
    object RemoverAgenda: TMenuItem
      Caption = 'Remover Agenda: 01/01/2006'
    end
  end
  object PopupRetornoOperacao: TPopupMenu
    Left = 87
    Top = 424
    object GerarRetornoItau1: TMenuItem
      Caption = 'Enviar Retorno'
    end
    object HSBC_EnviarSolicitaoSaldoLIQUIDAO1: TMenuItem
      Caption = 'Enviar Solicita'#231#227'o Saldo - LIQUIDA'#199#195'O'
    end
    object HSBC_EnviarSolicitaoSaldoPARCELAS1: TMenuItem
      Caption = 'Enviar Solicita'#231#227'o Saldo - PARCELAS'
    end
    object HSBC_N2: TMenuItem
      Caption = '-'
    end
    object HSBC_CancelarSolicitaodeSaldo1: TMenuItem
      Caption = 'Cancelar Solicita'#231#227'o de Saldo'
    end
    object HSBC_ReenviarArquivodeAcordo1: TMenuItem
      Caption = 'Reenviar Arquivo de Acordo'
    end
    object AMCelularClassificar: TMenuItem
      Caption = 'Classificar D'#237'vida'
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object mnuCancelarAcordo: TMenuItem
      Caption = 'Cancelar Acordo'
    end
  end
  object PopupOrdem_Eventos: TPopupMenu
    Left = 236
    Top = 245
  end
  object Pop_Notificacao: TPopupMenu
    Left = 566
    Top = 317
    object EnviarNotificaodeCessoporEmail1: TMenuItem
      Caption = 'Enviar Notifica'#231#227'o de Cess'#227'o por E-mail'
    end
    object SalvarNotificaodeCesso1: TMenuItem
      Caption = 'Salvar Notifica'#231#227'o de Cess'#227'o em PDF'
    end
    object EnviarCartadeConfirmaodeCesso1: TMenuItem
      Caption = 'Enviar Carta Acordo por E-mail'
    end
    object SalvarCartadeConfirmaodeCesso1: TMenuItem
      Caption = 'Salvar Documentos de Acordo'
    end
    object MensagemInternaAtivos1: TMenuItem
      Caption = 'Mensagem Interna Ativos'
    end
  end
  object Pop_Ativos_Telefones: TPopupMenu
    Left = 447
    Top = 325
    object Excluirfone1: TMenuItem
      Caption = 'Excluir Fone 1'
    end
    object ExcluirFone2: TMenuItem
      Caption = 'Excluir Fone 2'
    end
    object ExcluirFone3: TMenuItem
      Caption = 'Excluir Fone 3'
    end
    object ExcluirFone4: TMenuItem
      Caption = 'Excluir Fone 4'
    end
    object ExcluirFone5: TMenuItem
      Caption = 'Excluir Fone 5'
    end
    object ExcluirFone6: TMenuItem
      Caption = 'Excluir Fone 6'
    end
  end
  object Pop_Discador: TPopupMenu
    Left = 87
    Top = 253
    object Discar1: TMenuItem
      Caption = 'Discar :'
    end
    object AdicionarNumeroExcluido1: TMenuItem
      Caption = 'Adicionar N'#250'mero aos Exclu'#237'dos'
      Visible = False
    end
    object VerNumeroExcluido1: TMenuItem
      Caption = 'Ver N'#250'mero(s) Exclu'#237'do(s)'
      Visible = False
    end
  end
  object UniQEventosCobranca: TFDQuery
    MasterFields = 'CPF_CNPJ'
    DetailFields = 'CLIENTE'
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from eventoscobranca')
    Left = 808
    Top = 368
    object UniQEventosCobrancaCLIENTE: TFloatField
      FieldName = 'CLIENTE'
    end
    object UniQEventosCobrancaNROPERACAO: TStringField
      FieldName = 'NROPERACAO'
    end
    object UniQEventosCobrancaREMESSA: TFloatField
      FieldName = 'REMESSA'
    end
    object UniQEventosCobrancaDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
    end
    object UniQEventosCobrancaUSUARIO: TFloatField
      FieldName = 'USUARIO'
    end
    object UniQEventosCobrancaHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 1199
    end
    object UniQEventosCobrancaCOD_EVENTO: TFloatField
      FieldName = 'COD_EVENTO'
    end
    object UniQEventosCobrancaDATA_MODIF: TSQLTimeStampField
      FieldName = 'DATA_MODIF'
    end
    object UniQEventosCobrancaENVIADOBB: TStringField
      FieldName = 'ENVIADOBB'
      FixedChar = True
      Size = 1
    end
    object UniQEventosCobrancaNRPROCESSO: TStringField
      FieldName = 'NRPROCESSO'
    end
    object UniQEventosCobrancaNOMECONTATO: TStringField
      FieldName = 'NOMECONTATO'
      Size = 35
    end
    object UniQEventosCobrancaHISTORICO1: TStringField
      FieldName = 'HISTORICO1'
      Size = 255
    end
    object UniQEventosCobrancaNR_PROPOSTA: TFloatField
      FieldName = 'NR_PROPOSTA'
    end
    object UniQEventosCobrancaCONTA: TStringField
      FieldName = 'CONTA'
      Size = 30
    end
    object UniQEventosCobrancaLISTA: TStringField
      FieldName = 'LISTA'
      Size = 30
    end
    object UniQEventosCobrancaSALDO: TFloatField
      FieldName = 'SALDO'
    end
    object UniQEventosCobrancaOPER_COD_CLASSIFICACAO: TFloatField
      FieldName = 'OPER_COD_CLASSIFICACAO'
    end
    object UniQEventosCobrancaTELEFONES_STATUS: TFloatField
      FieldName = 'TELEFONES_STATUS'
    end
    object UniQEventosCobrancaSUCESSO: TStringField
      FieldName = 'SUCESSO'
    end
    object UniQEventosCobrancaREGISTRO: TFloatField
      FieldName = 'REGISTRO'
      Required = True
    end
    object UniQEventosCobrancaHISTORICOBLOB: TBlobField
      FieldName = 'HISTORICOBLOB'
      BlobType = ftOraBlob
    end
  end
  object UniQCredores: TFDQuery
    MasterFields = 'CPF_CNPJ'
    DetailFields = 'CLIENTE'
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from bancos')
    Left = 808
    Top = 440
  end
  object UniQConfereSA: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from bancos')
    Left = 1032
    Top = 360
  end
  object UniQLock: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from eventoscobranca')
    Left = 920
    Top = 384
  end
  object uniDSParcelasResumo: TDataSource
    DataSet = uniQParcelasResumo
    Left = 912
    Top = 440
  end
  object uniQParcelasResumo: TFDQuery
    MasterSource = FrmClientes.uniDSClientesOperacoes
    MasterFields = 'NROPERACAO'
    DetailFields = 'NROPERACAO'
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from parcelas '
      'where status <> '#39'X'#39
      'order by cliente')
    Left = 1136
    Top = 432
    ParamData = <
      item
        Name = 'NROPERACAO'
      end>
    object uniQParcelasResumoCLIENTE: TFloatField
      FieldName = 'CLIENTE'
    end
    object uniQParcelasResumoNROPERACAO: TStringField
      FieldName = 'NROPERACAO'
    end
    object uniQParcelasResumoREMESSA: TStringField
      FieldName = 'REMESSA'
      Size = 100
    end
    object uniQParcelasResumoDATAVENCTO: TStringField
      FieldName = 'DATAVENCTO'
      Size = 30
    end
    object uniQParcelasResumoAUT_: TFloatField
      FieldName = 'AUT_'
    end
    object uniQParcelasResumoNRLINHAC: TFloatField
      FieldName = 'NRLINHAC'
    end
    object uniQParcelasResumoNRLINHAR: TFloatField
      FieldName = 'NRLINHAR'
    end
    object uniQParcelasResumoNRREM: TFloatField
      FieldName = 'NRREM'
    end
    object uniQParcelasResumoDATAREFERENCIA: TStringField
      FieldName = 'DATAREFERENCIA'
      Size = 30
    end
    object uniQParcelasResumoSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object uniQParcelasResumoVALORPREVISTO: TFloatField
      FieldName = 'VALORPREVISTO'
      DisplayFormat = ',,,,,,,,,,,,,,,,,,,,,,,,,0.00'
    end
    object uniQParcelasResumoVALORREALIZADO: TFloatField
      FieldName = 'VALORREALIZADO'
      DisplayFormat = ',,,,,,,,,,,,,,,,,,,,,,,,,0.00'
    end
    object uniQParcelasResumoVALORJUROS: TFloatField
      FieldName = 'VALORJUROS'
      DisplayFormat = ',,,,,,,,,,,,,,,,,,,,,,,,,0.00'
    end
    object uniQParcelasResumoVALORMULTA: TFloatField
      FieldName = 'VALORMULTA'
      DisplayFormat = ',,,,,,,,,,,,,,,,,,,,,,,,,0.00'
    end
    object uniQParcelasResumoVALORDESCONTO: TFloatField
      FieldName = 'VALORDESCONTO'
      DisplayFormat = ',,,,,,,,,,,,,,,,,,,,,,,,,0.00'
    end
    object uniQParcelasResumoPAGOCOB: TStringField
      FieldName = 'PAGOCOB'
      Size = 1
    end
    object uniQParcelasResumoVALORPAGTOCOB: TFloatField
      FieldName = 'VALORPAGTOCOB'
      DisplayFormat = ',,,,,,,,,,,,,,,,,,,,,,,,,0.00'
    end
    object uniQParcelasResumoRECBANCO: TStringField
      FieldName = 'RECBANCO'
      Size = 1
    end
    object uniQParcelasResumoCOMIEMP: TFloatField
      FieldName = 'COMIEMP'
    end
    object uniQParcelasResumoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object uniQParcelasResumoNUMERO: TFloatField
      FieldName = 'NUMERO'
    end
    object uniQParcelasResumoNUMERONOTA: TFloatField
      FieldName = 'NUMERONOTA'
    end
    object uniQParcelasResumoRESUMO: TFloatField
      FieldName = 'RESUMO'
    end
    object uniQParcelasResumoCOBRADOR: TFloatField
      FieldName = 'COBRADOR'
    end
    object uniQParcelasResumoBOL_DATA_EMISSAO: TStringField
      FieldName = 'BOL_DATA_EMISSAO'
      Size = 30
    end
    object uniQParcelasResumoBOL_DATA_ENVIO_REM: TStringField
      FieldName = 'BOL_DATA_ENVIO_REM'
      Size = 30
    end
    object uniQParcelasResumoBOL_REMESSA_ENVIO: TFloatField
      FieldName = 'BOL_REMESSA_ENVIO'
    end
    object uniQParcelasResumoBOL_NUMERO: TStringField
      FieldName = 'BOL_NUMERO'
      Size = 15
    end
    object uniQParcelasResumoBOL_NOSSO_NUMERO: TStringField
      FieldName = 'BOL_NOSSO_NUMERO'
    end
    object uniQParcelasResumoBOL_SITUACAO: TStringField
      FieldName = 'BOL_SITUACAO'
      Size = 1
    end
    object uniQParcelasResumoBOL_DESC_SITUACAO: TStringField
      FieldName = 'BOL_DESC_SITUACAO'
      Size = 200
    end
    object uniQParcelasResumoBOL_DATA_CANCELAMENTO: TStringField
      FieldName = 'BOL_DATA_CANCELAMENTO'
      Size = 30
    end
    object uniQParcelasResumoBOL_DATA_ATU: TStringField
      FieldName = 'BOL_DATA_ATU'
      Size = 30
    end
    object uniQParcelasResumoDATARECEBIMENTO: TStringField
      FieldName = 'DATARECEBIMENTO'
      Size = 30
    end
    object uniQParcelasResumoVALORATRAZO: TFloatField
      FieldName = 'VALORATRAZO'
    end
    object uniQParcelasResumoVALORHONORARIO: TFloatField
      FieldName = 'VALORHONORARIO'
    end
    object uniQParcelasResumoVALORPROTESTO: TFloatField
      FieldName = 'VALORPROTESTO'
    end
    object uniQParcelasResumoBOL_NR_DOCUMENTO: TStringField
      FieldName = 'BOL_NR_DOCUMENTO'
    end
    object uniQParcelasResumoVALORORIGINAL: TFloatField
      FieldName = 'VALORORIGINAL'
      DisplayFormat = ',,,,,,,,,,,,,,,,,,,,,,,,,0.00'
    end
    object uniQParcelasResumoOPERACAONOVA: TStringField
      FieldName = 'OPERACAONOVA'
    end
    object uniQParcelasResumoDATA_MODIF: TStringField
      FieldName = 'DATA_MODIF'
      Size = 30
    end
    object uniQParcelasResumoDATAFIMTERCEIRIZACAO: TDateTimeField
      FieldName = 'DATAFIMTERCEIRIZACAO'
    end
    object uniQParcelasResumoUSUARIO_REC: TFloatField
      FieldName = 'USUARIO_REC'
    end
    object uniQParcelasResumoDATARESUMO: TStringField
      FieldName = 'DATARESUMO'
      Size = 30
    end
    object uniQParcelasResumoREC_DATA_EMISSAO: TStringField
      FieldName = 'REC_DATA_EMISSAO'
      Size = 30
    end
    object uniQParcelasResumoBOL_LINHA_DIGITAVEL: TStringField
      FieldName = 'BOL_LINHA_DIGITAVEL'
      Size = 60
    end
    object uniQParcelasResumoFASE: TFloatField
      FieldName = 'FASE'
    end
    object uniQParcelasResumoATUALIZADOATE: TDateTimeField
      FieldName = 'ATUALIZADOATE'
    end
    object uniQParcelasResumoUSUARIO_REPASSE: TFloatField
      FieldName = 'USUARIO_REPASSE'
    end
    object uniQParcelasResumoDATA_REPASSE: TStringField
      FieldName = 'DATA_REPASSE'
      Size = 30
    end
    object uniQParcelasResumoBOL_DATA_RETORNO_REM: TStringField
      FieldName = 'BOL_DATA_RETORNO_REM'
      Size = 30
    end
    object uniQParcelasResumoBOL_CODBARRAS: TStringField
      FieldName = 'BOL_CODBARRAS'
      Size = 60
    end
    object uniQParcelasResumoNRREM50: TFloatField
      FieldName = 'NRREM50'
    end
    object uniQParcelasResumoNRREM40: TFloatField
      FieldName = 'NRREM40'
    end
    object uniQParcelasResumoNRREM97: TFloatField
      FieldName = 'NRREM97'
    end
    object uniQParcelasResumoUSER_ID_97: TStringField
      FieldName = 'USER_ID_97'
      Size = 10
    end
    object uniQParcelasResumoCOMISSAOBRUTA: TFloatField
      FieldName = 'COMISSAOBRUTA'
    end
    object uniQParcelasResumoREDUTOR: TFloatField
      FieldName = 'REDUTOR'
    end
    object uniQParcelasResumoCOMISSAOLIQUIDA: TFloatField
      FieldName = 'COMISSAOLIQUIDA'
    end
    object uniQParcelasResumoUFATUACAO: TStringField
      FieldName = 'UFATUACAO'
      Size = 2
    end
    object uniQParcelasResumoTIPOPAGAMENTO: TStringField
      FieldName = 'TIPOPAGAMENTO'
      Size = 1
    end
    object uniQParcelasResumoPAGOATE30: TStringField
      FieldName = 'PAGOATE30'
      Size = 1
    end
    object uniQParcelasResumoPERFORMANCE: TFloatField
      FieldName = 'PERFORMANCE'
    end
    object uniQParcelasResumoLOCATION: TStringField
      FieldName = 'LOCATION'
      Size = 6
    end
    object uniQParcelasResumoTIPOREMUNERACAO: TStringField
      FieldName = 'TIPOREMUNERACAO'
      Size = 1
    end
    object uniQParcelasResumoNRREM41: TFloatField
      FieldName = 'NRREM41'
    end
    object uniQParcelasResumoVALORCORRECAO: TFloatField
      FieldName = 'VALORCORRECAO'
      DisplayFormat = ',,,,,,,,,,,,,,,,,,,,,,,,,0.00'
    end
    object uniQParcelasResumoCHQ_BANCO: TStringField
      FieldName = 'CHQ_BANCO'
      Size = 10
    end
    object uniQParcelasResumoCHQ_AGENCIA: TStringField
      FieldName = 'CHQ_AGENCIA'
      Size = 10
    end
    object uniQParcelasResumoCHQ_CONTA: TStringField
      FieldName = 'CHQ_CONTA'
      Size = 10
    end
    object uniQParcelasResumoCHQ_NUMERO: TStringField
      FieldName = 'CHQ_NUMERO'
      Size = 10
    end
    object uniQParcelasResumoNRREM51: TFloatField
      FieldName = 'NRREM51'
    end
    object uniQParcelasResumoNRREM52: TFloatField
      FieldName = 'NRREM52'
    end
    object uniQParcelasResumoBOL_CONVENIO: TStringField
      FieldName = 'BOL_CONVENIO'
    end
    object uniQParcelasResumoBOL_DATA_ENVIO: TStringField
      FieldName = 'BOL_DATA_ENVIO'
      Size = 30
    end
    object uniQParcelasResumoVALOR_TAXA_ATUALIZACAO: TFloatField
      FieldName = 'VALOR_TAXA_ATUALIZACAO'
      DisplayFormat = ',,,,,,,,,,,,,,,,,,,,,,,,,0.00'
    end
    object uniQParcelasResumoBOL_COD_REGISTRO: TStringField
      FieldName = 'BOL_COD_REGISTRO'
    end
    object uniQParcelasResumoVALOR_DESCONTO_PRINCIPAL: TFloatField
      FieldName = 'VALOR_DESCONTO_PRINCIPAL'
      DisplayFormat = ',,,,,,,,,,,,,,,,,,,,,,,,,0.00'
    end
    object uniQParcelasResumoVALORATUALIZADO: TFloatField
      FieldName = 'VALORATUALIZADO'
      DisplayFormat = ',,,,,,,,,,,,,,,,,,,,,,,,,0.00'
    end
    object uniQParcelasResumoBOL_VALOR_DESCONTO_ANTECIP: TFloatField
      FieldName = 'BOL_VALOR_DESCONTO_ANTECIP'
    end
    object uniQParcelasResumoBOL_DATA_MAX_DESCONTO_ANTECIP: TStringField
      FieldName = 'BOL_DATA_MAX_DESCONTO_ANTECIP'
      Size = 30
    end
    object uniQParcelasResumoREGISTRO: TFloatField
      FieldName = 'REGISTRO'
      Required = True
    end
  end
  object unifiltran: TFDQuery
    Connection = frmDataModule.UniConnection1
    Left = 88
    Top = 338
  end
  object PopupMenu1: TPopupMenu
    Left = 308
    Top = 137
    object E1: TMenuItem
      Caption = 'Excluir'
      OnClick = E1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 724
    Top = 330
    object Q1: TMenuItem
      Caption = 'Quebrar acordo'
      OnClick = Q1Click
    end
  end
end
