object frmCadContaCorrente: TfrmCadContaCorrente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Conta Corrente'
  ClientHeight = 482
  ClientWidth = 839
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 16
  object Notebook9: TNotebook
    Left = 0
    Top = 0
    Width = 839
    Height = 432
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 625
    ExplicitHeight = 103
    object TPage
      Left = 0
      Top = 0
      Caption = 'Default'
      ExplicitWidth = 625
      ExplicitHeight = 103
      object SpeedButton3: TSpeedButton
        Left = 798
        Top = 22
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
      object Label1: TLabel
        Left = 12
        Top = 6
        Width = 34
        Height = 16
        Caption = 'Banco'
      end
      object Label2: TLabel
        Left = 12
        Top = 56
        Width = 45
        Height = 16
        Caption = 'Ag'#234'ncia'
      end
      object Label3: TLabel
        Left = 100
        Top = 56
        Width = 32
        Height = 16
        Caption = 'D'#237'gito'
      end
      object Label4: TLabel
        Left = 164
        Top = 56
        Width = 87
        Height = 16
        Caption = 'Conta Corrente'
      end
      object Label5: TLabel
        Left = 348
        Top = 56
        Width = 32
        Height = 16
        Caption = 'D'#237'gito'
      end
      object Label6: TLabel
        Left = 436
        Top = 56
        Width = 63
        Height = 16
        Caption = 'Correntista'
      end
      object edtBanco: TEdit
        Left = 12
        Top = 24
        Width = 782
        Height = 24
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit1: TDBEdit
        Left = 12
        Top = 74
        Width = 77
        Height = 26
        DataField = 'AGENCIA'
        DataSource = frmPesquisaContaCorrente.dsBancos
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 100
        Top = 74
        Width = 53
        Height = 26
        DataField = 'AGENCIA_DIGITO'
        DataSource = frmPesquisaContaCorrente.dsBancos
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 164
        Top = 74
        Width = 173
        Height = 26
        DataField = 'CONTA'
        DataSource = frmPesquisaContaCorrente.dsBancos
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 348
        Top = 74
        Width = 77
        Height = 26
        DataField = 'CONTA_DIGITO'
        DataSource = frmPesquisaContaCorrente.dsBancos
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 436
        Top = 74
        Width = 393
        Height = 24
        CharCase = ecUpperCase
        DataField = 'CONTA_NOME_CORRENTISTA'
        DataSource = frmPesquisaContaCorrente.dsBancos
        TabOrder = 5
      end
      object GroupBox1: TGroupBox
        Left = 12
        Top = 104
        Width = 817
        Height = 225
        Caption = 'Configura'#231#245'es do Boleto Banc'#225'rio'
        TabOrder = 6
        object Label7: TLabel
          Left = 4
          Top = 18
          Width = 34
          Height = 16
          Caption = 'Banco'
        end
        object Label8: TLabel
          Left = 424
          Top = 16
          Width = 45
          Height = 16
          Caption = 'Ag'#234'ncia'
        end
        object Label9: TLabel
          Left = 509
          Top = 16
          Width = 32
          Height = 16
          Caption = 'D'#237'gito'
        end
        object Label10: TLabel
          Left = 568
          Top = 16
          Width = 90
          Height = 16
          Caption = 'C'#243'digo Cedente'
        end
        object Label11: TLabel
          Left = 4
          Top = 66
          Width = 102
          Height = 16
          Caption = 'Nome do Cedente'
        end
        object Label12: TLabel
          Left = 424
          Top = 66
          Width = 46
          Height = 16
          Caption = 'Carteira'
        end
        object Label13: TLabel
          Left = 496
          Top = 66
          Width = 52
          Height = 16
          Caption = 'Conv'#234'nio'
        end
        object Label14: TLabel
          Left = 568
          Top = 66
          Width = 83
          Height = 16
          Caption = 'Nosso N'#250'mero'
        end
        object Label15: TLabel
          Left = 152
          Top = 159
          Width = 55
          Height = 16
          Caption = 'CPF/CNPJ'
        end
        object Label16: TLabel
          Left = 4
          Top = 114
          Width = 53
          Height = 16
          Caption = 'Endere'#231'o'
        end
        object Label17: TLabel
          Left = 424
          Top = 114
          Width = 22
          Height = 16
          Caption = 'CEP'
        end
        object Label18: TLabel
          Left = 733
          Top = 114
          Width = 15
          Height = 16
          Caption = 'UF'
        end
        object Label19: TLabel
          Left = 568
          Top = 114
          Width = 39
          Height = 16
          Caption = 'Cidade'
        end
        object Edit1: TEdit
          Left = 4
          Top = 36
          Width = 73
          Height = 26
          Color = clMenu
          Enabled = False
          ReadOnly = True
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 88
          Top = 36
          Width = 325
          Height = 26
          Color = clMenu
          Enabled = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit6: TDBEdit
          Left = 568
          Top = 36
          Width = 185
          Height = 24
          CharCase = ecUpperCase
          DataField = 'COD_CEDENTE'
          DataSource = frmPesquisaContaCorrente.dsBancos
          TabOrder = 4
        end
        object DBEdit7: TDBEdit
          Left = 763
          Top = 35
          Width = 48
          Height = 26
          DataField = 'DIGITO_CEDENTE'
          DataSource = frmPesquisaContaCorrente.dsBancos
          TabOrder = 5
        end
        object DBEdit8: TDBEdit
          Left = 3
          Top = 84
          Width = 410
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NOME_CEDENTE'
          DataSource = frmPesquisaContaCorrente.dsBancos
          TabOrder = 6
        end
        object DBEdit9: TDBEdit
          Left = 424
          Top = 84
          Width = 61
          Height = 26
          DataField = 'CARTEIRA'
          DataSource = frmPesquisaContaCorrente.dsBancos
          TabOrder = 7
        end
        object DBEdit10: TDBEdit
          Left = 496
          Top = 84
          Width = 61
          Height = 26
          DataField = 'CONVENIO'
          DataSource = frmPesquisaContaCorrente.dsBancos
          TabOrder = 8
        end
        object DBEdit11: TDBEdit
          Left = 568
          Top = 84
          Width = 243
          Height = 26
          DataField = 'NOSSONUMERO'
          DataSource = frmPesquisaContaCorrente.dsBancos
          TabOrder = 9
        end
        object DBEdit12: TDBEdit
          Left = 151
          Top = 177
          Width = 138
          Height = 26
          DataField = 'CPF_CNPJ'
          DataSource = frmPesquisaContaCorrente.dsBancos
          TabOrder = 15
          OnEnter = DBEdit12Enter
          OnExit = DBEdit12Exit
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 3
          Top = 164
          Width = 138
          Height = 41
          Caption = 'Tipo'
          Columns = 2
          DataField = 'TIPO'
          DataSource = frmPesquisaContaCorrente.dsBancos
          Items.Strings = (
            'F'#237'sica'
            'Jur'#237'dica')
          TabOrder = 14
          Values.Strings = (
            'F'
            'J')
        end
        object DBEdit13: TDBEdit
          Left = 424
          Top = 36
          Width = 77
          Height = 26
          Color = clMenu
          DataField = 'AGENCIA'
          DataSource = frmPesquisaContaCorrente.dsBancos
          Enabled = False
          TabOrder = 2
        end
        object DBEdit14: TDBEdit
          Left = 508
          Top = 35
          Width = 49
          Height = 26
          Color = clMenu
          DataField = 'AGENCIA_DIGITO'
          DataSource = frmPesquisaContaCorrente.dsBancos
          Enabled = False
          TabOrder = 3
        end
        object DBRadioGroup2: TDBRadioGroup
          Left = 302
          Top = 163
          Width = 261
          Height = 41
          Caption = 'Layout'
          Columns = 2
          DataField = 'LAYOUT'
          DataSource = frmPesquisaContaCorrente.dsBancos
          Items.Strings = (
            'c240'
            'c400')
          TabOrder = 16
          Values.Strings = (
            'c240'
            'c400')
        end
        object DBEdit15: TDBEdit
          Left = 3
          Top = 132
          Width = 410
          Height = 24
          CharCase = ecUpperCase
          DataField = 'ENDERECO'
          DataSource = frmPesquisaContaCorrente.dsBancos
          TabOrder = 10
        end
        object DBEdit16: TDBEdit
          Left = 423
          Top = 132
          Width = 134
          Height = 24
          CharCase = ecUpperCase
          DataField = 'CEP'
          DataSource = frmPesquisaContaCorrente.dsBancos
          TabOrder = 11
        end
        object DBEdit17: TDBEdit
          Left = 732
          Top = 132
          Width = 79
          Height = 24
          CharCase = ecUpperCase
          DataField = 'UF'
          DataSource = frmPesquisaContaCorrente.dsBancos
          TabOrder = 13
        end
        object DBEdit18: TDBEdit
          Left = 567
          Top = 132
          Width = 156
          Height = 24
          CharCase = ecUpperCase
          DataField = 'CIDADE'
          DataSource = frmPesquisaContaCorrente.dsBancos
          TabOrder = 12
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 432
    Width = 839
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 103
    ExplicitWidth = 625
    object RzToolButton1: TRzToolButton
      AlignWithMargins = True
      Left = 590
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
      Left = 716
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
end
