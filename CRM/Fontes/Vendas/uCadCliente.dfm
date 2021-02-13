object frmCadCliente: TfrmCadCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Clientes'
  ClientHeight = 681
  ClientWidth = 917
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object Panel3: TPanel
    Left = 0
    Top = 631
    Width = 917
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object RzToolButton1: TRzToolButton
      AlignWithMargins = True
      Left = 668
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
      Caption = 'Gravar'
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
      Left = 794
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
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 917
    Height = 631
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 627
    ClientRectLeft = 4
    ClientRectRight = 913
    ClientRectTop = 29
    object cxTabSheet1: TcxTabSheet
      Caption = 'Dados do Cliente'
      ImageIndex = 0
      object Label1: TLabel
        Left = 12
        Top = -4
        Width = 41
        Height = 18
        Caption = 'Nome'
      end
      object Label2: TLabel
        Left = 273
        Top = 42
        Width = 27
        Height = 18
        Caption = 'CPF'
      end
      object Label3: TLabel
        Left = 482
        Top = 42
        Width = 20
        Height = 18
        Caption = 'RG'
      end
      object Label4: TLabel
        Left = 12
        Top = 132
        Width = 46
        Height = 18
        Caption = 'Fone 3'
      end
      object Label5: TLabel
        Left = 11
        Top = 100
        Width = 46
        Height = 18
        Caption = 'Fone 1'
      end
      object Label6: TLabel
        Left = 289
        Top = 132
        Width = 46
        Height = 18
        Caption = 'Fone 4'
      end
      object Label7: TLabel
        Left = 288
        Top = 100
        Width = 46
        Height = 18
        Caption = 'Fone 2'
      end
      object Label8: TLabel
        Left = 553
        Top = 132
        Width = 54
        Height = 18
        Caption = 'Contato'
      end
      object Label9: TLabel
        Left = 552
        Top = 100
        Width = 54
        Height = 18
        Caption = 'Contato'
      end
      object Label26: TLabel
        Left = 12
        Top = 308
        Width = 123
        Height = 18
        Caption = 'Local de Trabalho'
      end
      object Label27: TLabel
        Left = 604
        Top = 308
        Width = 66
        Height = 18
        Caption = 'Profiss'#227'o'
      end
      object Label28: TLabel
        Left = 12
        Top = 340
        Width = 118
        Height = 18
        Caption = 'Data Nascimento'
      end
      object Label29: TLabel
        Left = 12
        Top = 372
        Width = 44
        Height = 18
        Caption = 'Renda'
      end
      object Label30: TLabel
        Left = 12
        Top = 404
        Width = 91
        Height = 18
        Caption = 'Classifica'#231#227'o'
      end
      object Label31: TLabel
        Left = 276
        Top = 340
        Width = 94
        Height = 18
        Caption = 'N'#176' Identidade'
        Visible = False
      end
      object Label32: TLabel
        Left = 604
        Top = 340
        Width = 88
        Height = 18
        Caption = 'Naturalidade'
      end
      object Label33: TLabel
        Left = 276
        Top = 372
        Width = 48
        Height = 18
        Caption = 'Regi'#227'o'
      end
      object Label34: TLabel
        Left = 604
        Top = 372
        Width = 80
        Height = 18
        Caption = 'Estado Civil'
      end
      object Label35: TLabel
        Left = 604
        Top = 404
        Width = 75
        Height = 18
        Caption = 'Localidade'
      end
      object Label36: TLabel
        Left = 12
        Top = 436
        Width = 97
        Height = 18
        Caption = 'Inadimpl'#234'ncia'
      end
      object SpeedButton1: TSpeedButton
        Left = 562
        Top = 397
        Width = 31
        Height = 27
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          000000000000000000000000000000000000000000000000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 562
        Top = 429
        Width = 31
        Height = 27
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          000000000000000000000000000000000000000000000000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        OnClick = SpeedButton2Click
      end
      object DBEdit1: TDBEdit
        Left = 12
        Top = 14
        Width = 877
        Height = 26
        DataField = 'NOME'
        DataSource = FrmClientes.UniDSQClientes
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 273
        Top = 60
        Width = 202
        Height = 26
        DataField = 'CPF_CNPJ'
        DataSource = FrmClientes.UniDSQClientes
        TabOrder = 2
        OnExit = DBEdit2Exit
      end
      object DBEdit3: TDBEdit
        Left = 482
        Top = 60
        Width = 150
        Height = 26
        DataField = 'MCI'
        DataSource = FrmClientes.UniDSQClientes
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 72
        Top = 126
        Width = 194
        Height = 26
        DataField = 'FONE_1'
        DataSource = FrmClientes.UniDSQClientes
        TabOrder = 8
      end
      object DBEdit5: TDBEdit
        Left = 72
        Top = 94
        Width = 194
        Height = 26
        DataField = 'FONE'
        DataSource = FrmClientes.UniDSQClientes
        TabOrder = 5
        OnExit = DBEdit5Exit
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 12
        Top = 46
        Width = 250
        Height = 40
        Caption = 'Tipo de Pessoa'
        Columns = 2
        DataField = 'TIPOPESSOA'
        DataSource = FrmClientes.UniDSQClientes
        Items.Strings = (
          'F'#237'sica'
          'Jur'#237'dica')
        TabOrder = 1
        Values.Strings = (
          'F'
          'J')
        OnClick = DBRadioGroup1Click
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 638
        Top = 46
        Width = 251
        Height = 40
        Caption = 'Sexo'
        Columns = 2
        DataField = 'SEXO'
        DataSource = FrmClientes.UniDSQClientes
        Items.Strings = (
          'Masculino'
          'Feminino')
        TabOrder = 4
        Values.Strings = (
          'M'
          'F')
      end
      object DBEdit6: TDBEdit
        Left = 344
        Top = 126
        Width = 194
        Height = 26
        DataField = 'FAXCEL_1'
        DataSource = FrmClientes.UniDSQClientes
        TabOrder = 9
      end
      object DBEdit7: TDBEdit
        Left = 344
        Top = 94
        Width = 194
        Height = 26
        DataField = 'FAXCEL'
        DataSource = FrmClientes.UniDSQClientes
        TabOrder = 6
        OnExit = DBEdit7Exit
      end
      object DBEdit8: TDBEdit
        Left = 616
        Top = 126
        Width = 273
        Height = 26
        DataField = 'CONTATO_1'
        DataSource = FrmClientes.UniDSQClientes
        TabOrder = 10
      end
      object DBEdit9: TDBEdit
        Left = 616
        Top = 94
        Width = 273
        Height = 26
        DataField = 'CONTATO'
        DataSource = FrmClientes.UniDSQClientes
        TabOrder = 7
      end
      object DBEdit26: TDBEdit
        Left = 144
        Top = 302
        Width = 449
        Height = 26
        DataField = 'LOCAL_TRABALHO'
        DataSource = FrmClientes.UniDSQClientes
        TabOrder = 12
      end
      object DBEdit27: TDBEdit
        Left = 699
        Top = 302
        Width = 190
        Height = 26
        DataField = 'CARGO_TRABALHO'
        DataSource = FrmClientes.UniDSQClientes
        TabOrder = 13
      end
      object DBEdit28: TDBEdit
        Left = 144
        Top = 334
        Width = 122
        Height = 26
        DataField = 'DTA_NASCIMENTO'
        DataSource = FrmClientes.UniDSQClientes
        TabOrder = 14
      end
      object DBEdit29: TDBEdit
        Left = 144
        Top = 366
        Width = 122
        Height = 26
        DataField = 'SALARIO_TRABALHO'
        DataSource = FrmClientes.UniDSQClientes
        TabOrder = 17
      end
      object DBEdit31: TDBEdit
        Left = 376
        Top = 334
        Width = 216
        Height = 26
        DataField = 'NRIDENTIDADE'
        DataSource = FrmClientes.UniDSQClientes
        TabOrder = 15
        Visible = False
      end
      object DBEdit32: TDBEdit
        Left = 699
        Top = 334
        Width = 190
        Height = 26
        DataField = 'NATURALIDADE'
        DataSource = FrmClientes.UniDSQClientes
        TabOrder = 16
      end
      object DBEdit33: TDBEdit
        Left = 330
        Top = 366
        Width = 262
        Height = 26
        DataField = 'REGIAO'
        DataSource = FrmClientes.UniDSQClientes
        TabOrder = 18
      end
      object DBEdit34: TDBEdit
        Left = 699
        Top = 366
        Width = 190
        Height = 26
        DataField = 'ESTADOCIVIL'
        DataSource = FrmClientes.UniDSQClientes
        TabOrder = 19
      end
      object DBEdit35: TDBEdit
        Left = 699
        Top = 398
        Width = 190
        Height = 26
        DataField = 'LOCALIDADE'
        DataSource = FrmClientes.UniDSQClientes
        TabOrder = 21
      end
      object cxPageControl2: TcxPageControl
        Left = 0
        Top = 464
        Width = 909
        Height = 134
        Align = alBottom
        TabOrder = 23
        Properties.ActivePage = cxTabSheet9
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 130
        ClientRectLeft = 4
        ClientRectRight = 905
        ClientRectTop = 29
        object cxTabSheet3: TcxTabSheet
          Caption = 'Observa'#231#227'o'
          ImageIndex = 0
          object DBMemo1: TDBMemo
            Left = 0
            Top = 0
            Width = 901
            Height = 101
            Align = alClient
            DataField = 'OBS'
            DataSource = FrmClientes.UniDSQClientes
            TabOrder = 0
          end
        end
        object cxTabSheet4: TcxTabSheet
          Caption = 'Agendamentos'
          ImageIndex = 1
          object DBGrid1: TDBGrid
            Left = 0
            Top = 0
            Width = 901
            Height = 101
            Align = alClient
            DataSource = FrmClientes.uniDSClientesAgenda
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -15
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
                Width = 485
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
        object cxTabSheet5: TcxTabSheet
          Caption = 'Credor'
          ImageIndex = 2
          object Label37: TLabel
            Left = 7
            Top = 13
            Width = 45
            Height = 18
            Caption = 'Credor'
          end
          object SpeedButton3: TSpeedButton
            Left = 854
            Top = 10
            Width = 31
            Height = 27
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000004A220966AC5116F07B380FAB0000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00004D230A69B85617FFBB5617FFAE4F16F30000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000004D24
              0A69BC5819FFBB5718FFB95318FC401D08570000000000000000000000000000
              000000000000281406368A4315B7B3571AF0B35818F0854012B466300E89BD59
              19FFBC5919FFBA5719FC401E0857000000000000000000000000000000000000
              00005A2D0F78C05F1FFFC06021FFCD8250FFCD824FFFBE5D1FFFBE5A1BFFBD5A
              19FFBB5819FC401E095700000000000000000000000000000000000000003018
              083FC0601FFCCD804CFFF7EAE2FFFFFFFFFFFFFFFFFFF7EAE2FFCA7A46FFBC5A
              1BFF622F0D84000000000000000000000000000000000000000000000000944B
              18C3C36929FFF6E9E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E8DFFFC063
              23FF854012B4000000000000000000000000000000000000000000000000B75D
              20F0D18958FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF84
              54FFAD541AEA000000000000000000000000000000000000000000000000B85E
              20F0D18A59FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD085
              55FFAE541AEA000000000000000000000000000000000000000000000000964D
              1BC3C5692BFFF7EBE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E8DFFFC164
              26FF854214B40000000000000000000000000000000000000000000000003019
              093FC36525FFCF844FFFF7EBE2FFFFFFFFFFFFFFFFFFF7EBE2FFCD804CFFBF5E
              1FFF361B08480000000000000000000000000000000000000000000000000000
              00005E31127BC36625FFC46726FFCF8551FFCF8350FFC46523FFC16020FF5D2E
              0F7B000000000000000000000000000000000000000000000000000000000000
              0000000000003019093F874518B1AD591EE4AD591EE4864517B13018083F0000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            OnClick = SpeedButton3Click
          end
          object Label38: TLabel
            Left = 7
            Top = 45
            Width = 35
            Height = 18
            Caption = 'Valor'
          end
          object Label39: TLabel
            Left = 207
            Top = 45
            Width = 117
            Height = 18
            Caption = 'Data Vencimento'
          end
          object Label40: TLabel
            Left = 479
            Top = 45
            Width = 60
            Height = 18
            Caption = 'Situa'#231#227'o'
          end
          object DBEdit30: TDBEdit
            Left = 68
            Top = 10
            Width = 780
            Height = 26
            DataField = 'NOME'
            DataSource = fselecionacredor.UniDSQScript
            TabOrder = 0
          end
          object cxCurrencyEdit1: TcxCurrencyEdit
            Left = 68
            Top = 43
            Properties.DisplayFormat = '###,##0.00'
            TabOrder = 1
            Width = 121
          end
          object MaskEdit1: TMaskEdit
            Left = 330
            Top = 43
            Width = 120
            Height = 26
            EditMask = '!99/99/0000;1;_'
            MaxLength = 10
            TabOrder = 2
            Text = '  /  /    '
          end
          object ComboBox1: TComboBox
            Left = 544
            Top = 43
            Width = 181
            Height = 26
            Style = csDropDownList
            ItemIndex = 0
            TabOrder = 3
            Text = 'EM SER'
            Items.Strings = (
              'EM SER'
              'RENEGOCIADO'
              'NEGOCIADO'
              'ACORDO QUEBRADO'
              'RETOMADO'
              'DEVOLVIDO'
              'LIQUIDADO'
              'LIQ. POR RENEG.'
              'NEGOCIACAO')
          end
        end
        object cxTabSheet8: TcxTabSheet
          Caption = 'Ve'#237'culos'
          ImageIndex = 3
          object Label55: TLabel
            Left = 265
            Top = 19
            Width = 52
            Height = 18
            Caption = 'Modelo'
          end
          object Label56: TLabel
            Left = 531
            Top = 19
            Width = 27
            Height = 18
            Caption = 'Ano'
          end
          object Label57: TLabel
            Left = 667
            Top = 19
            Width = 38
            Height = 18
            Caption = 'Placa'
          end
          object Label58: TLabel
            Left = 3
            Top = 51
            Width = 46
            Height = 18
            Caption = 'Chassi'
          end
          object Label59: TLabel
            Left = 531
            Top = 51
            Width = 64
            Height = 18
            Caption = 'Renavam'
          end
          object Label60: TLabel
            Left = 1
            Top = 19
            Width = 42
            Height = 18
            Caption = 'Marca'
          end
          object DBEdit48: TDBEdit
            Left = 326
            Top = 11
            Width = 198
            Height = 26
            DataField = 'modelo'
            DataSource = FrmClientes.UniDSQClientesVeiculos
            TabOrder = 1
            OnExit = DBEdit5Exit
          end
          object DBEdit49: TDBEdit
            Left = 568
            Top = 11
            Width = 89
            Height = 26
            DataField = 'ano'
            DataSource = FrmClientes.UniDSQClientesVeiculos
            TabOrder = 2
            OnExit = DBEdit5Exit
          end
          object DBEdit50: TDBEdit
            Left = 712
            Top = 11
            Width = 173
            Height = 26
            DataField = 'placa'
            DataSource = FrmClientes.UniDSQClientesVeiculos
            TabOrder = 3
            OnExit = DBEdit5Exit
          end
          object DBEdit51: TDBEdit
            Left = 72
            Top = 43
            Width = 453
            Height = 26
            DataField = 'chassi'
            DataSource = FrmClientes.UniDSQClientesVeiculos
            TabOrder = 4
            OnExit = DBEdit5Exit
          end
          object DBEdit52: TDBEdit
            Left = 605
            Top = 43
            Width = 280
            Height = 26
            DataField = 'renavam'
            DataSource = FrmClientes.UniDSQClientesVeiculos
            TabOrder = 5
            OnExit = DBEdit5Exit
          end
          object DBEdit53: TDBEdit
            Left = 72
            Top = 11
            Width = 187
            Height = 26
            DataField = 'marca'
            DataSource = FrmClientes.UniDSQClientesVeiculos
            TabOrder = 0
            OnExit = DBEdit5Exit
          end
        end
        object cxTabSheet9: TcxTabSheet
          Caption = 'Tipo de Comiss'#227'o'
          ImageIndex = 4
          object Label61: TLabel
            Left = 3
            Top = 8
            Width = 151
            Height = 18
            Caption = 'Comiss'#227'o Escalonada'
          end
          object Label62: TLabel
            Left = 3
            Top = 58
            Width = 328
            Height = 13
            Caption = 'Obs: as comiss'#245'es s'#243' ser'#227'o listadas ap'#243's o v'#237'nculo com o credor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Roboto'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object cbxComissao: TComboBox
            Left = 3
            Top = 28
            Width = 468
            Height = 26
            Style = csDropDownList
            TabOrder = 0
          end
        end
      end
      object cxPageControl3: TcxPageControl
        Left = 12
        Top = 158
        Width = 877
        Height = 139
        TabOrder = 11
        Properties.ActivePage = cxTabSheet6
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 135
        ClientRectLeft = 4
        ClientRectRight = 873
        ClientRectTop = 29
        object cxTabSheet6: TcxTabSheet
          Caption = 'Endere'#231'o 1'
          ImageIndex = 0
          object Label10: TLabel
            Left = 4
            Top = 12
            Width = 64
            Height = 18
            Caption = 'Endere'#231'o'
          end
          object Label11: TLabel
            Left = 4
            Top = 44
            Width = 41
            Height = 18
            Caption = 'Bairro'
          end
          object Label12: TLabel
            Left = 697
            Top = 12
            Width = 17
            Height = 18
            Caption = 'N'#176
          end
          object Label13: TLabel
            Left = 697
            Top = 44
            Width = 27
            Height = 18
            Caption = 'CEP'
          end
          object Label14: TLabel
            Left = 265
            Top = 44
            Width = 47
            Height = 18
            Caption = 'Cidade'
          end
          object Label15: TLabel
            Left = 593
            Top = 44
            Width = 18
            Height = 18
            Caption = 'UF'
          end
          object Label22: TLabel
            Left = 4
            Top = 76
            Width = 73
            Height = 18
            Caption = 'Refer'#234'ncia'
          end
          object Label23: TLabel
            Left = 540
            Top = 76
            Width = 44
            Height = 18
            Caption = 'e-mail'
          end
          object DBEdit10: TDBEdit
            Left = 80
            Top = 6
            Width = 609
            Height = 26
            DataField = 'ENDERECO'
            DataSource = FrmClientes.UniDSQClientes
            TabOrder = 0
          end
          object DBEdit11: TDBEdit
            Left = 80
            Top = 38
            Width = 178
            Height = 26
            DataField = 'SETOR'
            DataSource = FrmClientes.UniDSQClientes
            TabOrder = 2
          end
          object DBEdit12: TDBEdit
            Left = 731
            Top = 6
            Width = 126
            Height = 26
            DataField = 'NUMERO'
            DataSource = FrmClientes.UniDSQClientes
            TabOrder = 1
          end
          object DBEdit13: TDBEdit
            Left = 731
            Top = 38
            Width = 126
            Height = 26
            DataField = 'CEP'
            DataSource = FrmClientes.UniDSQClientes
            TabOrder = 5
          end
          object DBEdit14: TDBEdit
            Left = 318
            Top = 38
            Width = 267
            Height = 26
            DataField = 'CIDADE'
            DataSource = FrmClientes.UniDSQClientes
            TabOrder = 3
          end
          object DBEdit15: TDBEdit
            Left = 618
            Top = 38
            Width = 71
            Height = 26
            DataField = 'UF'
            DataSource = FrmClientes.UniDSQClientes
            TabOrder = 4
          end
          object DBEdit22: TDBEdit
            Left = 80
            Top = 70
            Width = 450
            Height = 26
            DataField = 'PONTO_REF1'
            DataSource = FrmClientes.UniDSQClientes
            TabOrder = 6
          end
          object DBEdit23: TDBEdit
            Left = 600
            Top = 70
            Width = 257
            Height = 26
            DataField = 'E_MAIL'
            DataSource = FrmClientes.UniDSQClientes
            TabOrder = 7
          end
        end
        object cxTabSheet7: TcxTabSheet
          Caption = 'Endere'#231'o 2'
          ImageIndex = 1
          object Label16: TLabel
            Left = 4
            Top = 12
            Width = 64
            Height = 18
            Caption = 'Endere'#231'o'
          end
          object Label17: TLabel
            Left = 4
            Top = 44
            Width = 41
            Height = 18
            Caption = 'Bairro'
          end
          object Label18: TLabel
            Left = 697
            Top = 12
            Width = 17
            Height = 18
            Caption = 'N'#176
          end
          object Label19: TLabel
            Left = 697
            Top = 44
            Width = 27
            Height = 18
            Caption = 'CEP'
          end
          object Label20: TLabel
            Left = 265
            Top = 44
            Width = 47
            Height = 18
            Caption = 'Cidade'
          end
          object Label21: TLabel
            Left = 593
            Top = 44
            Width = 18
            Height = 18
            Caption = 'UF'
          end
          object Label24: TLabel
            Left = 4
            Top = 76
            Width = 73
            Height = 18
            Caption = 'Refer'#234'ncia'
          end
          object Label25: TLabel
            Left = 540
            Top = 76
            Width = 44
            Height = 18
            Caption = 'e-mail'
          end
          object DBEdit16: TDBEdit
            Left = 80
            Top = 6
            Width = 609
            Height = 26
            DataField = 'ENDENDERECO_1'
            DataSource = FrmClientes.UniDSQClientes
            TabOrder = 0
          end
          object DBEdit17: TDBEdit
            Left = 80
            Top = 38
            Width = 178
            Height = 26
            DataField = 'SETOR_1'
            DataSource = FrmClientes.UniDSQClientes
            TabOrder = 2
          end
          object DBEdit18: TDBEdit
            Left = 735
            Top = 6
            Width = 126
            Height = 26
            DataField = 'NUMERO_1'
            DataSource = FrmClientes.UniDSQClientes
            TabOrder = 1
          end
          object DBEdit19: TDBEdit
            Left = 735
            Top = 38
            Width = 126
            Height = 26
            DataField = 'CEP_1'
            DataSource = FrmClientes.UniDSQClientes
            TabOrder = 5
          end
          object DBEdit20: TDBEdit
            Left = 318
            Top = 38
            Width = 267
            Height = 26
            DataField = 'CIDADE_1'
            DataSource = FrmClientes.UniDSQClientes
            TabOrder = 3
          end
          object DBEdit21: TDBEdit
            Left = 618
            Top = 38
            Width = 73
            Height = 26
            DataField = 'UF_1'
            DataSource = FrmClientes.UniDSQClientes
            TabOrder = 4
          end
          object DBEdit24: TDBEdit
            Left = 80
            Top = 70
            Width = 450
            Height = 26
            DataField = 'PONTO_REF2'
            DataSource = FrmClientes.UniDSQClientes
            TabOrder = 6
          end
          object DBEdit25: TDBEdit
            Left = 600
            Top = 70
            Width = 261
            Height = 26
            DataField = 'E_MAIL1'
            DataSource = FrmClientes.UniDSQClientes
            TabOrder = 7
          end
        end
      end
      object cxLookupComboBox1: TcxLookupComboBox
        Left = 144
        Top = 398
        Properties.GridMode = True
        Properties.KeyFieldNames = 'CODIGO'
        Properties.ListColumns = <
          item
            FieldName = 'DESCRICAO'
          end>
        Properties.ListOptions.GridLines = glNone
        Properties.ListSource = dsClassificacao
        TabOrder = 20
        Width = 412
      end
      object cxLookupComboBox2: TcxLookupComboBox
        Left = 144
        Top = 430
        Properties.GridMode = True
        Properties.KeyFieldNames = 'CODIGO'
        Properties.ListColumns = <
          item
            FieldName = 'DESCRICAO'
          end>
        Properties.ListOptions.GridLines = glNone
        Properties.ListSource = dsInadimplencia
        TabOrder = 22
        Width = 412
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Refer'#234'ncias Pessoais'
      ImageIndex = 1
      object Label41: TLabel
        Left = 4
        Top = 20
        Width = 41
        Height = 18
        Caption = 'Nome'
      end
      object Label42: TLabel
        Left = 686
        Top = 20
        Width = 31
        Height = 18
        Caption = 'Tipo'
      end
      object Label43: TLabel
        Left = 4
        Top = 51
        Width = 27
        Height = 18
        Caption = 'CPF'
      end
      object Label44: TLabel
        Left = 242
        Top = 50
        Width = 20
        Height = 18
        Caption = 'RG'
      end
      object Label45: TLabel
        Left = 396
        Top = 51
        Width = 64
        Height = 18
        Caption = 'Endere'#231'o'
      end
      object Label46: TLabel
        Left = 4
        Top = 86
        Width = 41
        Height = 18
        Caption = 'Bairro'
      end
      object Label47: TLabel
        Left = 242
        Top = 86
        Width = 47
        Height = 18
        Caption = 'Cidade'
      end
      object Label48: TLabel
        Left = 641
        Top = 86
        Width = 18
        Height = 18
        Caption = 'UF'
      end
      object Label49: TLabel
        Left = 742
        Top = 86
        Width = 27
        Height = 18
        Caption = 'CEP'
      end
      object Label50: TLabel
        Left = 4
        Top = 119
        Width = 46
        Height = 18
        Caption = 'Fone 1'
      end
      object Label51: TLabel
        Left = 184
        Top = 119
        Width = 46
        Height = 18
        Caption = 'Fone 2'
      end
      object Label52: TLabel
        Left = 368
        Top = 119
        Width = 123
        Height = 18
        Caption = 'Local de Trabalho'
      end
      object Label53: TLabel
        Left = 4
        Top = 152
        Width = 40
        Height = 18
        Caption = 'Cargo'
      end
      object Label54: TLabel
        Left = 356
        Top = 152
        Width = 44
        Height = 18
        Caption = 'Renda'
      end
      object DBEdit36: TDBEdit
        Left = 60
        Top = 14
        Width = 605
        Height = 26
        DataField = 'NOME'
        DataSource = FrmClientes.uniDSClientesReferencia
        TabOrder = 0
      end
      object DBEdit37: TDBEdit
        Left = 60
        Top = 47
        Width = 173
        Height = 26
        DataField = 'CPF'
        DataSource = FrmClientes.uniDSClientesReferencia
        TabOrder = 2
        OnExit = DBEdit37Exit
      end
      object DBEdit38: TDBEdit
        Left = 271
        Top = 47
        Width = 106
        Height = 26
        DataField = 'Rg'
        DataSource = FrmClientes.uniDSClientesReferencia
        TabOrder = 3
      end
      object DBEdit39: TDBEdit
        Left = 472
        Top = 47
        Width = 430
        Height = 26
        DataField = 'ENDERECO'
        DataSource = FrmClientes.uniDSClientesReferencia
        TabOrder = 4
      end
      object DBEdit40: TDBEdit
        Left = 60
        Top = 80
        Width = 173
        Height = 26
        DataField = 'BAIRRO'
        DataSource = FrmClientes.uniDSClientesReferencia
        TabOrder = 5
      end
      object DBEdit41: TDBEdit
        Left = 294
        Top = 80
        Width = 341
        Height = 26
        DataField = 'CIDADE'
        DataSource = FrmClientes.uniDSClientesReferencia
        TabOrder = 6
      end
      object DBEdit42: TDBEdit
        Left = 666
        Top = 80
        Width = 71
        Height = 26
        DataField = 'UF'
        DataSource = FrmClientes.uniDSClientesReferencia
        TabOrder = 7
      end
      object DBEdit43: TDBEdit
        Left = 776
        Top = 80
        Width = 126
        Height = 26
        DataField = 'CEP'
        DataSource = FrmClientes.uniDSClientesReferencia
        TabOrder = 8
      end
      object DBEdit44: TDBEdit
        Left = 60
        Top = 113
        Width = 118
        Height = 26
        DataField = 'FONE1'
        DataSource = FrmClientes.uniDSClientesReferencia
        TabOrder = 9
        OnExit = DBEdit44Exit
      end
      object DBEdit45: TDBEdit
        Left = 240
        Top = 113
        Width = 120
        Height = 26
        DataField = 'FONE2'
        DataSource = FrmClientes.uniDSClientesReferencia
        TabOrder = 10
        OnExit = DBEdit45Exit
      end
      object DBEdit46: TDBEdit
        Left = 496
        Top = 113
        Width = 406
        Height = 26
        DataField = 'LOCAL_TRABALHO'
        DataSource = FrmClientes.uniDSClientesReferencia
        TabOrder = 11
      end
      object DBEdit47: TDBEdit
        Left = 60
        Top = 146
        Width = 282
        Height = 26
        DataField = 'CARGO_TRABALHO'
        DataSource = FrmClientes.uniDSClientesReferencia
        TabOrder = 12
      end
      object cxDBCurrencyEdit1: TcxDBCurrencyEdit
        Left = 416
        Top = 146
        DataBinding.DataField = 'SALARIO_TRABALHO'
        DataBinding.DataSource = FrmClientes.uniDSClientesReferencia
        Properties.DisplayFormat = '###,##0.00'
        TabOrder = 13
        Width = 121
      end
      object ComboBox2: TComboBox
        Left = 728
        Top = 14
        Width = 174
        Height = 26
        Style = csDropDownList
        ItemIndex = 0
        TabOrder = 1
        Text = 'Pai'
        Items.Strings = (
          'Pai'
          'M'#227'e'
          'Filho(a)'
          'Tio(a)'
          'Irm'#227'(o)'
          'Vizinho(a)'
          'Outros'
          'Esposo(a)'
          'Avalista'
          'S'#243'cio(a)'
          'Conta Conjunta')
      end
    end
  end
  object QClassificacao: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from class_cliente'
      'order by descricao')
    Left = 292
    Top = 413
    object QClassificacaoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 40
    end
    object QClassificacaoDTA_CAD: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DTA_CAD'
      Origin = 'DTA_CAD'
    end
    object QClassificacaoUSUARIO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Precision = 38
      Size = 0
    end
    object QClassificacaoDATA_MODIF: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_MODIF'
      Origin = 'DATA_MODIF'
    end
    object QClassificacaoATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object QClassificacaoSENHA_REMOVER_CLASSIFICACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SENHA_REMOVER_CLASSIFICACAO'
      Origin = 'SENHA_REMOVER_CLASSIFICACAO'
      Size = 1
    end
    object QClassificacaoSENHA_INSERIR_CLASSIFICACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SENHA_INSERIR_CLASSIFICACAO'
      Origin = 'SENHA_INSERIR_CLASSIFICACAO'
      Size = 1
    end
    object QClassificacaoCODIGO: TFMTBCDField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
  end
  object QInadimplencia: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from negativacao_parametro'
      'order by descricao')
    Left = 292
    Top = 453
    object QInadimplenciaTIPO: TFMTBCDField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Precision = 38
      Size = 0
    end
    object QInadimplenciaDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object QInadimplenciaCONTADOR_REMESSA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONTADOR_REMESSA'
      Origin = 'CONTADOR_REMESSA'
      Precision = 38
      Size = 0
    end
    object QInadimplenciaCONTADOR_RETORNO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONTADOR_RETORNO'
      Origin = 'CONTADOR_RETORNO'
      Precision = 38
      Size = 0
    end
    object QInadimplenciaCODIGO_ENTIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_ENTIDADE'
      Origin = 'CODIGO_ENTIDADE'
    end
    object QInadimplenciaCODIGO_ASSOCIADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_ASSOCIADO'
      Origin = 'CODIGO_ASSOCIADO'
    end
    object QInadimplenciaCODIGO: TFMTBCDField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
  end
  object dsClassificacao: TDataSource
    DataSet = QClassificacao
    Left = 340
    Top = 413
  end
  object dsInadimplencia: TDataSource
    DataSet = QInadimplencia
    Left = 336
    Top = 453
  end
  object QComissao: TFDQuery
    Connection = frmDataModule.UniConnection1
    Left = 520
    Top = 546
  end
end
