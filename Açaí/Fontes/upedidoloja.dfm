object fpedidoloja: Tfpedidoloja
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 1
  Caption = 'Pedido'
  ClientHeight = 689
  ClientWidth = 1272
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel13: TPanel
    Left = 581
    Top = 0
    Width = 691
    Height = 689
    Align = alClient
    BevelInner = bvLowered
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 693
    ExplicitHeight = 691
    object Label37: TLabel
      Left = 8
      Top = 12
      Width = 112
      Height = 23
      Alignment = taCenter
      Caption = 'Pedido Loja'
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object GroupBox1: TGroupBox
      Left = 4
      Top = 41
      Width = 305
      Height = 149
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object CheckBox1: TCheckBox
        Left = 16
        Top = 16
        Width = 97
        Height = 18
        Caption = 'A'#199'A'#205
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = CheckBox1Click
      end
      object CheckBox2: TCheckBox
        Left = 16
        Top = 46
        Width = 97
        Height = 17
        Caption = 'FROZEN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = CheckBox2Click
      end
      object CheckBox3: TCheckBox
        Left = 16
        Top = 76
        Width = 97
        Height = 18
        Caption = 'CUPUA'#199'U'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = CheckBox3Click
      end
      object CheckBox4: TCheckBox
        Left = 143
        Top = 16
        Width = 97
        Height = 19
        Caption = 'A'#199'A'#205' DIET'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = CheckBox4Click
      end
      object CheckBox5: TCheckBox
        Left = 143
        Top = 46
        Width = 161
        Height = 20
        Caption = 'SALADA DE FRUTAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        WordWrap = True
        OnClick = CheckBox5Click
      end
      object CheckBox63: TCheckBox
        Left = 143
        Top = 76
        Width = 121
        Height = 17
        Caption = 'FOZEN ZERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = CheckBox63Click
      end
      object CheckBox64: TCheckBox
        Left = 16
        Top = 107
        Width = 122
        Height = 17
        Caption = 'A'#199'A'#205'/FROZEN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = CheckBox64Click
      end
      object CheckBox65: TCheckBox
        Left = 143
        Top = 107
        Width = 145
        Height = 17
        Caption = 'A'#199'A'#205'/CUPUA'#199'U'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = CheckBox65Click
      end
    end
    object GroupBox2: TGroupBox
      Left = 315
      Top = 32
      Width = 378
      Height = 158
      Caption = 'Tamanho:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object CheckBox6: TCheckBox
        Left = 35
        Top = 23
        Width = 62
        Height = 17
        Caption = '250ml'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = CheckBox6Click
      end
      object CheckBox7: TCheckBox
        Left = 35
        Top = 50
        Width = 62
        Height = 17
        Caption = '300ml'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = CheckBox7Click
      end
      object CheckBox8: TCheckBox
        Left = 35
        Top = 77
        Width = 66
        Height = 17
        Caption = '500ml'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = CheckBox8Click
      end
      object CheckBox9: TCheckBox
        Left = 35
        Top = 104
        Width = 59
        Height = 17
        Caption = '700ml'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = CheckBox9Click
      end
      object CheckBox52: TCheckBox
        Left = 194
        Top = 23
        Width = 132
        Height = 17
        Caption = '1 Litro Puro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = CheckBox52Click
      end
      object CheckBox53: TCheckBox
        Left = 194
        Top = 77
        Width = 126
        Height = 17
        Caption = '2 Litros Puro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = CheckBox53Click
      end
      object CheckBox54: TCheckBox
        Left = 194
        Top = 50
        Width = 178
        Height = 17
        Caption = '1 Litro c/ Complemento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = CheckBox54Click
      end
      object CheckBox55: TCheckBox
        Left = 194
        Top = 104
        Width = 164
        Height = 17
        Caption = '1 Ta'#231'a'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = CheckBox55Click
      end
      object CheckBox62: TCheckBox
        Left = 35
        Top = 132
        Width = 97
        Height = 17
        Caption = '1 Litro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = CheckBox62Click
      end
    end
    object GroupBox3: TGroupBox
      Left = 4
      Top = 192
      Width = 689
      Height = 139
      Caption = 'Complementos (escolha at'#233' 5):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object CheckBox10: TCheckBox
        Left = 16
        Top = 30
        Width = 97
        Height = 18
        Caption = 'Pa'#231'oca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = CheckBox10Click
      end
      object CheckBox11: TCheckBox
        Left = 16
        Top = 58
        Width = 97
        Height = 17
        Caption = 'Amendoim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = CheckBox11Click
      end
      object CheckBox12: TCheckBox
        Left = 16
        Top = 85
        Width = 97
        Height = 17
        Caption = 'Granola'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = CheckBox12Click
      end
      object CheckBox13: TCheckBox
        Left = 114
        Top = 30
        Width = 97
        Height = 17
        Caption = 'Leite em P'#243
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = CheckBox13Click
      end
      object CheckBox14: TCheckBox
        Left = 114
        Top = 58
        Width = 134
        Height = 17
        Caption = 'Leite Condensado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = CheckBox14Click
      end
      object CheckBox15: TCheckBox
        Left = 114
        Top = 85
        Width = 97
        Height = 17
        Caption = 'Sucrilhos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = CheckBox15Click
      end
      object CheckBox16: TCheckBox
        Left = 253
        Top = 30
        Width = 97
        Height = 17
        Caption = 'Ovomaltine'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = CheckBox16Click
      end
      object CheckBox17: TCheckBox
        Left = 253
        Top = 58
        Width = 122
        Height = 17
        Caption = 'Flocos de Arroz'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = CheckBox17Click
      end
      object CheckBox18: TCheckBox
        Left = 253
        Top = 85
        Width = 156
        Height = 17
        Caption = 'Granulado Chocolate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = CheckBox18Click
      end
      object CheckBox19: TCheckBox
        Left = 413
        Top = 30
        Width = 159
        Height = 17
        Caption = 'Gotas de Chocolate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = CheckBox19Click
      end
      object CheckBox20: TCheckBox
        Left = 413
        Top = 58
        Width = 97
        Height = 17
        Caption = 'Chocoball'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnClick = CheckBox20Click
      end
      object CheckBox21: TCheckBox
        Left = 413
        Top = 85
        Width = 97
        Height = 17
        Caption = 'Coco Ralado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnClick = CheckBox21Click
      end
      object CheckBox22: TCheckBox
        Left = 562
        Top = 30
        Width = 100
        Height = 17
        Caption = 'Neston'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnClick = CheckBox22Click
      end
      object CheckBox58: TCheckBox
        Left = 563
        Top = 58
        Width = 127
        Height = 17
        Caption = 'Creme de Avel'#227
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        OnClick = CheckBox58Click
      end
      object CheckBox59: TCheckBox
        Left = 563
        Top = 85
        Width = 127
        Height = 17
        Caption = 'Doce de Leite'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        OnClick = CheckBox59Click
      end
      object CheckBox60: TCheckBox
        Left = 16
        Top = 112
        Width = 169
        Height = 17
        Caption = 'Doce de Chocolate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        OnClick = CheckBox60Click
      end
    end
    object GroupBox4: TGroupBox
      Left = 235
      Top = 457
      Width = 458
      Height = 120
      Caption = 'Adicionais Especiais:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      object CheckBox43: TCheckBox
        Left = 34
        Top = 31
        Width = 164
        Height = 17
        Caption = 'Frozen (bola)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = CheckBox43Click
      end
      object CheckBox44: TCheckBox
        Left = 34
        Top = 60
        Width = 177
        Height = 18
        Caption = 'Cupua'#231'u (bola)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = CheckBox44Click
      end
      object CheckBox45: TCheckBox
        Left = 34
        Top = 88
        Width = 97
        Height = 17
        Caption = 'Bis'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = CheckBox45Click
      end
      object CheckBox46: TCheckBox
        Left = 260
        Top = 31
        Width = 127
        Height = 17
        Caption = 'Mm'#39's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = CheckBox46Click
      end
      object CheckBox47: TCheckBox
        Left = 260
        Top = 60
        Width = 181
        Height = 17
        Caption = 'Sorvete (bola)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = CheckBox47Click
      end
    end
    object GroupBox5: TGroupBox
      Left = 4
      Top = 457
      Width = 224
      Height = 120
      Caption = 'Frutas (escolha at'#233' 3):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object CheckBox38: TCheckBox
        Left = 16
        Top = 31
        Width = 97
        Height = 17
        Caption = 'Banana'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = CheckBox38Click
      end
      object CheckBox39: TCheckBox
        Left = 16
        Top = 60
        Width = 97
        Height = 19
        Caption = 'Morango'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = CheckBox39Click
      end
      object CheckBox40: TCheckBox
        Left = 16
        Top = 88
        Width = 97
        Height = 17
        Caption = 'Kiwi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = CheckBox40Click
      end
      object CheckBox41: TCheckBox
        Left = 135
        Top = 31
        Width = 78
        Height = 17
        Caption = 'Abacaxi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = CheckBox41Click
      end
      object CheckBox42: TCheckBox
        Left = 135
        Top = 60
        Width = 78
        Height = 19
        Caption = 'Manga'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = CheckBox42Click
      end
      object CheckBox61: TCheckBox
        Left = 135
        Top = 88
        Width = 73
        Height = 17
        Caption = 'Uva'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = CheckBox61Click
      end
    end
    object GroupBox6: TGroupBox
      Left = 4
      Top = 334
      Width = 689
      Height = 117
      Caption = 'Coberturas (escolha at'#233' 2):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object CheckBox23: TCheckBox
        Left = 16
        Top = 32
        Width = 97
        Height = 17
        Caption = 'Amora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = CheckBox23Click
      end
      object CheckBox24: TCheckBox
        Left = 16
        Top = 60
        Width = 97
        Height = 17
        Caption = 'Chocolate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = CheckBox24Click
      end
      object CheckBox25: TCheckBox
        Left = 16
        Top = 87
        Width = 97
        Height = 17
        Caption = 'Tutti Frutti'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = CheckBox25Click
      end
      object CheckBox26: TCheckBox
        Left = 140
        Top = 32
        Width = 97
        Height = 19
        Caption = 'Morango'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = CheckBox26Click
      end
      object CheckBox27: TCheckBox
        Left = 140
        Top = 60
        Width = 97
        Height = 17
        Caption = 'Uva'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = CheckBox27Click
      end
      object CheckBox28: TCheckBox
        Left = 140
        Top = 87
        Width = 97
        Height = 18
        Caption = 'Maracuj'#225
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = CheckBox28Click
      end
      object CheckBox29: TCheckBox
        Left = 265
        Top = 32
        Width = 97
        Height = 17
        Caption = 'Mel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = CheckBox29Click
      end
      object CheckBox30: TCheckBox
        Left = 265
        Top = 60
        Width = 97
        Height = 17
        Caption = 'Menta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = CheckBox30Click
      end
      object CheckBox31: TCheckBox
        Left = 265
        Top = 87
        Width = 97
        Height = 17
        Caption = 'Kiwi'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = CheckBox31Click
      end
      object CheckBox32: TCheckBox
        Left = 389
        Top = 32
        Width = 97
        Height = 17
        Caption = 'Caramelo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = CheckBox32Click
      end
      object CheckBox33: TCheckBox
        Left = 389
        Top = 60
        Width = 97
        Height = 17
        Caption = 'Lim'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        OnClick = CheckBox33Click
      end
      object CheckBox34: TCheckBox
        Left = 389
        Top = 87
        Width = 97
        Height = 18
        Caption = 'A'#231'a'#237
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnClick = CheckBox34Click
      end
      object CheckBox35: TCheckBox
        Left = 514
        Top = 32
        Width = 161
        Height = 17
        Caption = 'Baunilha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnClick = CheckBox35Click
      end
      object CheckBox36: TCheckBox
        Left = 514
        Top = 60
        Width = 161
        Height = 17
        Caption = 'Leite Condensado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        OnClick = CheckBox36Click
      end
      object CheckBox37: TCheckBox
        Left = 514
        Top = 87
        Width = 161
        Height = 17
        Caption = 'Banana Caramelizada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        OnClick = CheckBox37Click
      end
    end
    object CheckBox50: TCheckBox
      Left = 389
      Top = 9
      Width = 141
      Height = 19
      Caption = 'TA'#199'A'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = CheckBox50Click
    end
    object CheckBox51: TCheckBox
      Left = 536
      Top = 10
      Width = 97
      Height = 17
      Caption = 'VIAGEM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = CheckBox51Click
    end
    object Panel3: TPanel
      Left = 2
      Top = 576
      Width = 687
      Height = 111
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 8
      ExplicitTop = 608
      ExplicitWidth = 708
      object GroupBox7: TGroupBox
        Left = 2
        Top = 1
        Width = 305
        Height = 105
        Caption = 'Bebidas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object CheckBox48: TCheckBox
          Left = 16
          Top = 68
          Width = 185
          Height = 21
          Caption = #193'gua COM g'#225's'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = CheckBox48Click
        end
        object CheckBox49: TCheckBox
          Left = 16
          Top = 37
          Width = 177
          Height = 21
          Caption = #193'gua SEM g'#225's'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = CheckBox49Click
        end
      end
      object GroupBox8: TGroupBox
        Left = 313
        Top = 1
        Width = 378
        Height = 105
        Caption = 'Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label1: TLabel
          Left = 168
          Top = 46
          Width = 42
          Height = 23
          Alignment = taCenter
          Caption = '0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Memo1: TMemo
          Left = 328
          Top = 13
          Width = 28
          Height = 77
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Lines.Strings = (
            '')
          ParentFont = False
          TabOrder = 0
          Visible = False
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 581
    Height = 689
    Align = alLeft
    BevelEdges = []
    BevelInner = bvLowered
    Color = 14678491
    ParentBackground = False
    TabOrder = 1
    ExplicitLeft = 1
    ExplicitTop = -51
    ExplicitHeight = 720
    object Label31: TLabel
      Left = 128
      Top = 54
      Width = 164
      Height = 23
      Caption = '(27) 99999-9999'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Image2: TImage
      Left = 478
      Top = 4
      Width = 80
      Height = 40
      Center = True
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D494844520000004F0000
        00280806000000BFC5A7640000000467414D410000B18E7CFB519300000A2F69
        4343504943432050726F66696C65000048C79D96775454D71687CFBD777AA1CD
        30D2197A932E3080F42E201D045118660618CA00C30C4D6C88A8404411110145
        90A08001A3A148AC88622128A8600F48105062308AA8A86446D64A7C7979EFE5
        E5F7C7BDDFDA67EF73F7D97B9FB52E00244F1F2E2F059602209927E0077A38D3
        578547D0B1FD0006788001A6003059E9A9BE41EEC140242F37177ABAC809FC8B
        DE0C0148FCBE65E8E94FA783FF4FD2AC54BE0000C85FC4E66C4E3A4BC4F9224E
        CA14A48AED3322A6C6248A194689992F4A50C472628E5BE4A59F7D16D951CCEC
        641E5BC4E29C53D9C96C31F788787B86902362C447C405195C4EA6886F8B5833
        4998CC15F15B716C3287990E008A24B60B38AC78119B8898C40F0E7411F17200
        70A4B82F38E60B1670B204E243B9A4A466F3B971F102BA2E4B8F6E6A6DCDA07B
        723293380281A13F9395C8E4B3E92E29C9A94C5E36008B67FE2C19716DE9A222
        5B9A5A5B5A1A9A19997E51A8FFBAF83725EEED22BD0AF8DC3388D6F787EDAFFC
        52EA0060CC8A6AB3EB0F5BCC7E003AB6022077FF0F9BE6210024457D6BBFF1C5
        7968E279891708526D8C8D3333338DB81C9691B8A0BFEB7F3AFC0D7DF13D23F1
        76BF9787EECA89650A93047471DD58294929423E3D3D95C9E2D00DFF3CC4FF38
        F0AFF3581AC889E5F0393C5144A868CAB8BC3851BB796CAE809BC2A37379FFA9
        89FF30EC4F5A9C6B9128F59F0035CA0848DDA002E4E73E80A21001127950DCF5
        DFFBE6830F05E29B17A63AB138F79F05FDFBAE7089F891CE8DFB1CE712184C67
        09F9198B6BE26B09D08000240115C80315A001748121300356C016380237B002
        F88160100ED602168807C9800F32412ED80C0A4011D805F6824A5003EA412368
        01274007380D2E80CBE03AB809EE800760048C83E76006BC01F3100461213244
        81E42155480B3280CC2006640FB9413E5020140E454371100F1242B9D016A808
        2A852AA15AA811FA163A055D80AE4203D03D68149A827E85DEC3084C82A9B032
        AC0D1BC30CD809F68683E135701C9C06E7C0F9F04EB802AE838FC1EDF005F83A
        7C071E819FC3B3084088080D51430C1106E282F82111482CC247362085483952
        87B4205D482F720B1941A69177280C8A82A2A30C51B6284F54088A854A436D40
        15A32A514751EDA81ED42DD4286A06F5094D462BA10DD036682FF42A741C3A13
        5D802E4737A0DBD097D077D0E3E837180C8686D1C158613C31E19804CC3A4C31
        E600A615731E338019C3CC62B15879AC01D60EEB87656205D802EC7EEC31EC39
        EC20761CFB1647C4A9E2CC70EEB8081C0F97872BC735E1CEE2067113B879BC14
        5E0B6F83F7C3B3F1D9F8127C3DBE0B7F033F8E9F274813740876846042026133
        A182D042B844784878452412D589D6C4002297B88958413C4EBC421C25BE23C9
        90F4492EA4489290B4937484749E748FF48A4C266B931DC91164017927B9917C
        91FC98FC5682226124E125C196D8285125D12E3128F142122FA925E924B95632
        47B25CF2A4E40DC96929BC94B6948B14536A835495D429A961A959698AB4A9B4
        9F74B274B17493F455E94919AC8CB68C9B0C5B265FE6B0CC4599310A42D1A0B8
        5058942D947ACA25CA381543D5A17A5113A845D46FA8FDD4195919D965B2A1B2
        59B255B267644768084D9BE6454BA295D04ED08668EF97282F715AC259B26349
        CB92C12573728A728E721CB942B956B93B72EFE5E9F26EF289F2BBE53BE41F29
        A014F415021432150E2A5C529856A42ADA2AB2140B154F28DE578295F4950295
        D6291D56EA539A555651F6504E55DEAF7C51795A85A6E2A892A052A67256654A
        95A26AAFCA552D533DA7FA8C2E4B77A227D12BE83DF4193525354F35A15AAD5A
        BFDABCBA8E7A887A9E7AABFA230D8206432356A34CA35B63465355D3573357B3
        59F3BE165E8BA115AFB54FAB576B4E5B473B4C7B9B7687F6A48E9C8E974E8E4E
        B3CE435DB2AE836E9A6E9DEE6D3D8C1E432F51EF80DE4D7D58DF423F5EBF4AFF
        86016C6069C035386030B014BDD47A296F69DDD2614392A193618661B3E1A811
        CDC8C728CFA8C3E885B1A67184F16EE35EE34F2616264926F5260F4C654C5798
        E6997699FE6AA66FC632AB32BB6D4E367737DF68DE69FE7299C132CEB283CBEE
        5A502C7C2DB659745B7CB4B4B2E45BB6584E59695A455B555B0D33A80C7F4631
        E38A35DADAD97AA3F569EB77369636029B1336BFD81ADA26DA36D94E2ED759CE
        595EBF7CCC4EDD8E69576B37624FB78FB63F643FE2A0E6C074A87378E2A8E1C8
        766C709C70D2734A703AE6F4C2D9C499EFDCE63CE762E3B2DEE5BC2BE2EAE15A
        E8DAEF26E316E256E9F6D85DDD3DCEBDD97DC6C3C2639DC7794FB4A7B7E76ECF
        612F652F9657A3D7CC0AAB15EB57F47893BC83BC2BBD9FF8E8FBF07DBA7C61DF
        15BE7B7C1FAED45AC95BD9E107FCBCFCF6F83DF2D7F14FF3FF3E0013E01F5015
        F034D0343037B03788121415D414F426D839B824F841886E8830A43B54323432
        B431742ECC35AC346C6495F1AAF5ABAE872B8473C33B23B011A1110D11B3ABDD
        56EF5D3D1E6911591039B446674DD69AAB6B15D626AD3D132519C58C3A198D8E
        0E8B6E8AFEC0F463D6316763BC62AA6366582EAC7DACE76C4776197B8A63C729
        E54CC4DAC596C64EC6D9C5ED899B8A77882F8F9FE6BA702BB92F133C136A12E6
        12FD128F242E248525B526E392A3934FF1647889BC9E149594AC94815483D482
        D491349BB4BD69337C6F7E433A94BE26BD534015FD4CF50975855B85A319F619
        55196F3343334F664967F1B2FAB2F5B377644FE4B8E77CBD0EB58EB5AE3B572D
        7773EEE87AA7F5B51BA00D311BBA376A6CCCDF38BEC963D3D1CD84CD899B7FC8
        33C92BCD7BBD256C4B57BE72FEA6FCB1AD1E5B9B0B240AF805C3DB6CB7D56C47
        6DE76EEFDF61BE63FF8E4F85ECC26B452645E5451F8A59C5D7BE32FDAAE2AB85
        9DB13BFB4B2C4B0EEEC2ECE2ED1ADAEDB0FB68A974694EE9D81EDF3DED65F4B2
        C2B2D77BA3F65E2D5F565EB38FB04FB86FA4C2A7A273BFE6FE5DFB3F54C657DE
        A972AE6AAD56AADE513D77807D60F0A0E3C1961AE59AA29AF787B887EED67AD4
        B6D769D7951FC61CCE38FCB43EB4BEF76BC6D78D0D0A0D450D1F8FF08E8C1C0D
        3CDAD368D5D8D8A4D454D20C370B9BA78E451EBBF98DEB379D2D862DB5ADB4D6
        A2E3E0B8F0F8B36FA3BF1D3AE17DA2FB24E364CB775ADF55B751DA0ADBA1F6EC
        F6998EF88E91CEF0CE81532B4E7577D976B57D6FF4FD91D36AA7ABCEC89E2939
        4B389B7F76E15CCEB9D9F3A9E7A72FC45D18EB8EEA7E7071D5C5DB3D013DFD97
        BC2F5DB9EC7EF962AF53EFB92B76574E5FB5B97AEA1AE35AC775CBEBED7D167D
        6D3F58FCD0D66FD9DF7EC3EA46E74DEB9B5D03CB07CE0E3A0C5EB8E57AEBF26D
        AFDBD7EFACBC333014327477387278E42EFBEEE4BDA47B2FEF67DC9F7FB0E921
        FA61E123A947E58F951ED7FDA8F763EB88E5C89951D7D1BE27414F1E8CB1C69E
        FF94FED387F1FCA7E4A7E513AA138D936693A7A7DCA76E3E5BFD6CFC79EAF3F9
        E9829FA57FAE7EA1FBE2BB5F1C7FE99B593533FE92FF72E1D7E257F2AF8EBC5E
        F6BA7BD67FF6F19BE437F373856FE5DF1E7DC778D7FB3EECFDC47CE607EC878A
        8F7A1FBB3E797F7AB890BCB0F01BF784F3FB3704291E00000009704859730000
        2E2300002E230178A53F7600000021744558744372656174696F6E2054696D65
        00323031363A30333A31362030383A35333A35371EE7D4B3000005D649444154
        78DAED9B7B6C14451CC77F33575A12A1F296462084D820E5F6DAA6B757ACC64A
        005335415112932220C13F0434158D123592E023445E4111438C021A3592A8F8
        F8C3AA8DB422E5BAF768B94729884508D618B1955084B6B7337EB7F4CA72BDD2
        2347D8BB70DF6472B73B3B33DFF9CC6BE732C7A49464D6815068F448E2AB19C9
        25446C3265D44652EE95527FCFE17084CC11CC0CEF5028B48C115F45829EEFE8
        F8FB607979F905AB9D5BADEAEAEA9C8913272B3C8B563162B98ABDE091685C3F
        BC6030FCB660CC5F682FD86DB5E1549537149A96237995A2145419D7BDF002A1
        E6BD2422CF7676769E2E2B2B3B6BB5C954557D7DFDC89B7247A1E7095668B7EF
        6281404021B23D039ACBAD36972E4267F39E25318F1D0A86B7EB247616DBED3E
        AB4DA58B0281E6D9C469360B04C3A78EB4D0B4850B0BBAAD36952EAAABAB1B3E
        66ECB8160CDBF05BD10930A3C4150C35EB46CFD3B1FCDAAC36936ECAC04B4219
        784928032F0965E025A184E171CE99A228A3B2B3B3BB3C1ECF7F561B4F050D09
        4F55550511AF60175781CB9108C646B815E18B0B3DDDDB9A9A9A4E19CFCD72BA
        AA11F16783575B36483EB7DB24FBD67C4F10ADD7BCDACEDEF4AAFA2949A6C675
        C9E479B7C7E330BE969694CC67CCB6B937BDA0C735BF76C0FCE82CD5B54F92DC
        DFE0F1AC85A70DB8B560280852EA2B1A7CBE1A7870C3C3D8F81E28ECF6680F25
        0C0F157EC046EC73E0327E59D92D491C26C6C620A7398C680EB6C43F01D6DC3E
        78CDF838E9F66A15F1CA2E2929199FC5F95246AC1297F9A8E03A2644ADDBE7F3
        F655BA0EE53860B26660E5A80BE53CD6077911CAFF185FCFE0FE41DCBF2F061E
        1A567E0FD82B5C4ED7539C51B9293A1FA110E13B8473FDF9EB910D0D7EBF0769
        FFC2651742439C2AB402DE9A84E01517174FC8B10D3B82CAFC831E764FB48799
        C0DEC5255B1EED6943C1BB5439F513547E2E8CDC1253E93A5463042A5D3244FA
        28BC37105E26A1ABD10688853720ADD3B51AF5D9129162AAD7EB3D31306F039E
        AC41DA459480068557AAAA6BD14BD6099DEEC5D0F8315E62CC833621F08405F0
        7492B7611AF819435A439A05A67CAC870793FB6172AAE6F34E0120395446D71B
        5EB71E9994CDB31E058C4D22420EAD510BA5103CD769CC29F51896F313C9E8DA
        C02363C138122719160CAD2C169E94F25F4C2DC7D1FB8C0A575E1B78340CE1C4
        400BF270B48C44E0F500DE6780B7F83AC22B321A2C360D63F24274689AE1F9FD
        FE3F4A9DCE9718E3AFF6087D86CFE7FBF51AC0D3E1E1D0400F740C9E9F4E0C9E
        D3D581B1BA0FF01EBE7EF0AE6ED81AF0B070DD8CB9EF7740F912792E4F9561DB
        8857871180919FCAF08C7B58DC5EC3E2B6A6771121566B39BC52A76B2BBA6A15
        D6D252ACB65A2AC343EF1B0768C7D1D81F02CEFD96C3733A9D33B2180F18CFA0
        4567634B76C61C0FC35338D10ABCC9BF6835BCDEC656D54DE87D2BF1152FF472
        8FA5F0FA0A7B0185BD89B9AF9509DA4A5C86B1C28DC2EC39174697F6BDE15FDA
        61301A8E9DC39E01A5087150705EC7049BC7B9AC42E5156CAD9EE0A227E06E6C
        3C7A091E4D47FA5D717CF618DBAD2BC14363E6A1F719DBC6E100B0238905E334
        3C7C131B07EF6D6E9FB62D61787D662B2531BC30D374D3EDF3085FC3C47A9808
        98E0CD18A491DEC16AF8FE306E6BBAECAEA4E7D053B798E0DD1D37B5A473786E
        C495E019C254B31D53CDCA24E14D18C4830F1E9C57052FAAA2A2A249399CE7E9
        9C77B5B7B71F6D6D6DBDE14F12647ECF4B4219784928032F0965E025A128BC08
        E065596D26DD649C2A33CEAA9C6C3B7532BFA2A2A2CB6A43E922E3CCDEAD93A6
        1C33E0BD2E7559535838B3D66A53E9A2A6A6B0D366A325EC97607074AEE43F28
        4A819A7CB6378602A1F02E12FAE68B871B0361E36C5E7767E799AF32871B0797
        71B8313B37777C0EF18DC6F1DAFE63B5A0B90D34B7381C8EE3569B4C55A1932D
        668C392F3B56DB1F196ADECB24B5479878F7B7161ECC9CD9BBB838E4E54DBE83
        73B611AC76381C333F88C6B1D8BF120483414532DB938CE8415C4E349EB1BA02
        16CAA0D386CF8FCE92D87CA7DDDE618EFC1FDE9487CB34DB220E000000004945
        4E44AE426082}
      Transparent = True
      OnClick = Image2Click
    end
    object Label4: TLabel
      Left = 361
      Top = 55
      Width = 174
      Height = 23
      Caption = 'Pedido: 12345678'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 107
      Width = 64
      Height = 19
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 160
      Width = 81
      Height = 19
      Caption = 'Endere'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 214
      Width = 87
      Height = 19
      Caption = 'Complem.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 8
      Top = 321
      Width = 41
      Height = 19
      Caption = 'Obs.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 318
      Top = 136
      Width = 78
      Height = 16
      Caption = 'Entregador:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label10: TLabel
      Left = 8
      Top = 375
      Width = 122
      Height = 16
      Caption = 'Tempo de Entrega:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 8
      Top = 428
      Width = 199
      Height = 16
      Caption = 'Forma de Pagamento Prevista:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 383
      Top = 428
      Width = 67
      Height = 16
      Caption = 'Troco pra:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 8
      Top = 267
      Width = 92
      Height = 19
      Caption = 'Ponto Ref.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 382
      Top = 214
      Width = 56
      Height = 19
      Caption = 'Bairro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 382
      Top = 267
      Width = 62
      Height = 19
      Caption = 'Cidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 115
      Top = 108
      Width = 486
      Height = 16
      AutoSize = False
      Caption = 'JOS'#201' DA SILVA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label22: TLabel
      Left = 115
      Top = 161
      Width = 486
      Height = 16
      AutoSize = False
      Caption = 'RUA 10'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 115
      Top = 215
      Width = 257
      Height = 16
      AutoSize = False
      Caption = 'FUNDOS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 450
      Top = 219
      Width = 127
      Height = 29
      AutoSize = False
      Caption = 'CENTRO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label25: TLabel
      Left = 115
      Top = 268
      Width = 257
      Height = 16
      AutoSize = False
      Caption = 'PR'#211'XIMO AO MERCADO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 450
      Top = 270
      Width = 127
      Height = 13
      AutoSize = False
      Caption = 'VILA VELHA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 289
      Top = 17
      Width = 39
      Height = 16
      Caption = 'Mesa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 8
      Top = 54
      Width = 107
      Height = 23
      Caption = 'TELEFONE:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 324
      Top = 371
      Width = 110
      Height = 16
      Caption = 'Taxa de Entrega:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object QRShape1: TQRShape
      Left = 2
      Top = 80
      Width = 578
      Height = 1
      Size.Values = (
        2.645833333333333000
        5.291666666666667000
        211.666666666666700000
        1529.291666666667000000)
      XLColumn = 0
      Pen.Color = clSilver
      Shape = qrsHorLine
      VertAdjust = 0
    end
    object QRShape3: TQRShape
      Left = 2
      Top = 356
      Width = 578
      Height = 1
      Size.Values = (
        2.645833333333333000
        5.291666666666667000
        941.916666666666700000
        1529.291666666667000000)
      XLColumn = 0
      Pen.Color = clSilver
      Shape = qrsHorLine
      VertAdjust = 0
    end
    object QRShape4: TQRShape
      Left = 2
      Top = 419
      Width = 578
      Height = 1
      Size.Values = (
        2.645833333333333000
        5.291666666666667000
        1108.604166666667000000
        1529.291666666667000000)
      XLColumn = 0
      Pen.Color = clSilver
      Shape = qrsHorLine
      VertAdjust = 0
    end
    object ComboBox2: TComboBox
      Left = 135
      Top = 373
      Width = 169
      Height = 21
      ItemIndex = 0
      TabOrder = 3
      Text = '15 minutos'
      Items.Strings = (
        '15 minutos'
        '30 minutos'
        '45 minutos'
        '01:00 hora'
        '01:30 hora'
        '02:00 horas')
    end
    object ComboBox3: TComboBox
      Left = 214
      Top = 426
      Width = 148
      Height = 21
      ItemIndex = 0
      TabOrder = 4
      Text = 'Dinheiro'
      Items.Strings = (
        'Dinheiro'
        'Cart'#227'o de Cr'#233'dito'
        'Cart'#227'o de D'#233'bito')
    end
    object ComboBox4: TComboBox
      Left = 457
      Top = 426
      Width = 112
      Height = 21
      ItemIndex = 0
      TabOrder = 5
      Text = 'R$ 5,00'
      Items.Strings = (
        'R$ 5,00'
        'R$ 10,00'
        'R$ 20,00'
        'R$ 50,00'
        'R$ 100,00')
    end
    object ComboBox5: TComboBox
      Left = 416
      Top = 134
      Width = 148
      Height = 21
      TabOrder = 6
      Visible = False
    end
    object Edit6: TEdit
      Left = 114
      Top = 320
      Width = 442
      Height = 21
      TabOrder = 7
    end
    object ComboBox6: TComboBox
      Left = 334
      Top = 9
      Width = 80
      Height = 31
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      Items.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '06'
        '07'
        '08'
        '09'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '16'
        '17'
        '18'
        '19'
        '20'
        '21'
        '22'
        '23'
        '24'
        '25'
        '26'
        '27'
        '28'
        '29'
        '30')
    end
    object QRShape5: TQRShape
      Left = 2
      Top = 48
      Width = 578
      Height = 1
      Size.Values = (
        2.645833333333333000
        5.291666666666667000
        127.000000000000000000
        1529.291666666667000000)
      XLColumn = 0
      Pen.Color = clSilver
      Shape = qrsHorLine
      VertAdjust = 0
    end
    object ComboBox7: TComboBox
      Left = 8
      Top = 11
      Width = 246
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 33023
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      Items.Strings = (
        'ABERTO'
        'FECHADO')
    end
    object Panel1: TPanel
      Left = 2
      Top = 573
      Width = 577
      Height = 114
      Align = alBottom
      BevelInner = bvLowered
      Color = clWhite
      ParentBackground = False
      TabOrder = 11
      ExplicitLeft = -5
      ExplicitTop = 577
      object Image1: TImage
        Left = 128
        Top = 6
        Width = 100
        Height = 100
        Picture.Data = {
          0B54504E4747726170686963769C0000424D769C000000000000360000002800
          000064000000640000000100200000000000409C000000000000000000000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAD8CCFFB87C
          55FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA75B
          2AFFCBA083FFF9F4F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFEFEFFD1AA90FFA55624FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFAF693CFFEDDDD3FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDA085FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA95F2FFFEDDDD3FFFFFFFFFFFFFFFFFFFFFFFFFFDEC1
          AFFFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFAF69
          3CFFF9F4F1FFFFFFFFFFF9F4F1FFAB6232FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFCA9E80FFFFFFFFFFD4B099FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA75A29FFFFFFFFFFB5764CFFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFFAF6F4FFA55624FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFEFE2DAFFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDCD1FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA55724FFD3AC93FFBA7D56FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFC4906FFFCA9B7DFFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFCFA68BFFE9D5C9FFA65725FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFAC6334FFF4EBE5FFBE8561FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFAC64
          36FFF9F5F2FFB26E43FFA45522FFA45522FFA45522FFA45522FFA65927FFB26F
          43FFB26E43FFA55623FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA55724FFB37146FFAB6131FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA85B2AFFB472
          48FFA75B29FFA45522FFA45522FFA45522FFA45522FFC28D6AFFF0E3DAFFA556
          23FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFD1A98FFFE1C7B7FFA45522FFA45522FFA455
          22FFA55623FFD1AA90FFFAF6F3FFF7F1ECFFF7F0EBFFF8F2EEFFD4AE96FFA455
          22FFC59271FFEAD8CCFFA45522FFA45522FFA85B2AFFECDDD2FFFBF8F6FFF8F3
          EFFFDFC4B2FFF6EFEAFFA45522FFA45522FFA45522FFEAD8CCFFDBBBA7FFA455
          22FFA45522FFB26F43FFF6EFEBFFF9F5F2FFF5EDE8FFE4CDBEFFE2C9B8FFA455
          22FFA45522FFA55623FFF2E8E1FFBF8763FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFEAD8
          CCFFC49170FFA45522FFA45522FFA45522FFD1AA90FFF7F1ECFFBA7E57FFA455
          22FFA45522FFC38E6CFFF5ECE6FFA45522FFC59271FFEAD8CCFFA45522FFA455
          22FFC49170FFF4EBE5FFA85D2CFFA65927FFD5B19AFFF6EFEAFFA45522FFA455
          22FFB16C40FFFAF7F4FFF8F2EEFFA75A29FFA45522FFD9B7A2FFE3CBBBFFA556
          23FFAB6132FFE5CFC1FFE2C9B8FFA45522FFA45522FFA45522FFD6B39CFFD8B6
          A0FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFF7F1EDFFB37147FFA45522FFA45522FFA85B
          2AFFFAF7F4FFC59271FFA45522FFA45522FFA45522FFBE8662FFF5ECE6FFA455
          22FFC59271FFEAD8CCFFA45522FFA45522FFC59372FFF0E4DCFFA55623FFA455
          22FFB87B53FFF6EFEAFFA45522FFA45522FFD1A990FFDEC1AEFFE7D3C6FFC28D
          6BFFA45522FFDAB9A4FFDDBFACFFA45522FFA45522FFCDA185FFE2C9B8FFA455
          22FFA45522FFA45522FFC59372FFE5CFC1FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFFCF9
          F8FFAE6739FFA45522FFA45522FFB97C55FFFDFDFCFFA85C2BFFA45522FFB26E
          43FFCC9F83FFDABBA6FFF5ECE6FFA45522FFC59271FFEAD8CCFFA45522FFA455
          22FFA95F2FFFEFE1D8FFECDBD1FFD2AB92FFD5B098FFF6EFEAFFA45522FFA455
          22FFF1E6DEFFBE8662FFC9997BFFE3CBBCFFA45522FFB5744AFFF7F1EDFFE3CB
          BCFFCFA68BFFE0C6B5FFE2C9B8FFA45522FFA45522FFA45522FFBF8864FFEAD8
          CCFFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFF8F3EFFFB26F44FFA45522FFA45522FFC08A
          67FFF8F3EFFFA45522FFA45522FFB97B54FFDFC4B2FFDFC4B2FFD9B8A3FFA455
          22FFC59271FFEAD9CDFFA45522FFA45522FFA45522FFA65826FFBE8560FFCEA4
          89FFDFC3B1FFF6EFEAFFA45522FFB87A52FFF8F2EEFFA65826FFAB6233FFFBF9
          F7FFAC6334FFA45522FFA95F2FFFC38F6DFFD0A88EFFE9D5C9FFE1C8B7FFA455
          22FFA45522FFA45522FFC49170FFE6D1C4FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFECDB
          D1FFC28D6AFFA45522FFA45522FFBC815CFFFCFAF8FFA55724FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFC59271FFFDFCFBFFD7B49DFFBE85
          61FFA95F2FFFB77850FFA55724FFA45522FFCC9F83FFEDDED4FFA45522FFD9B7
          A2FFDBBBA7FFA45522FFA45522FFE5CFC1FFCB9D80FFA85C2BFFB47349FFA455
          22FFA55623FFDFC4B2FFD9B8A3FFA45522FFA45522FFA45522FFD4AE96FFDABA
          A5FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFD4AF97FFDDBFACFFA45522FFA45522FFAA60
          30FFFDFBFAFFBA7E57FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFC38E6CFFE6D1C3FFCFA58AFFF5EDE7FFB47349FFEEDFD6FFFBF8F6FFF7F1
          EDFFF8F2EEFFBE8560FFA65725FFF2E7DFFFBB7F59FFA45522FFA45522FFC593
          73FFE6D1C3FFAD6536FFFAF5F2FFF9F4F1FFF9F5F2FFF1E5DDFFB16C40FFA455
          22FFA45522FFA45522FFEFE1D8FFC38E6CFFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFAF6A
          3DFFFAF5F2FFAE6739FFA45522FFA45522FFDBBBA7FFEEDFD6FFAB6131FFA455
          22FFA45522FFAB6132FFD1A990FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFAB6132FFAE6739FFA55724FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA55623FFAD65
          37FFAC6436FFA45522FFA45522FFA45522FFA45522FFBC815CFFF4EBE5FFA659
          27FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFD7B59EFFE1C8B7FFA45522FFA455
          22FFA85C2BFFE3CBBBFFF8F2EEFFE1C8B7FFE5CFC0FFFBF7F5FFE5CEBFFFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA85C2BFFF0E3DBFFC59372FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA75B29FFDEC1AFFFBB805AFFA45522FFA45522FFA45522FFB5754BFFC796
          77FFC79677FFB5754BFFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFC89778FFD5B098FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA85B
          2AFFB26F43FFA95E2EFFA45522FFA45522FFA45522FFAD6537FFB6754CFFAC64
          36FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFAB6233FFB5744AFFAE683BFFA45522FFA45522FFA45522FFA455
          22FFAE6739FFB77950FFA85B2AFFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA65927FFB6764DFFB16C40FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFAC6436FFB77950FFAD6536FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFFBF8F6FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFF8F3F0FFA45522FFECDDD2FFD9B9A4FFA45522FFA45522FFAF693CFFFEFE
          FEFFBD835DFFA45522FFA45522FFCB9F82FFFAF7F4FFA45522FFC99A7CFFFDFB
          FAFFA45522FFA45522FFBE8662FFFAF7F4FFFEFEFEFFFCFBF9FFA45522FFB574
          4AFFECDBD1FFFEFEFEFFFEFEFEFFFEFEFEFFECDBD1FFB37045FFA45522FFA455
          22FFA45522FFA45522FFA45522FFE0C5B4FFEDDDD3FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFAF693CFFE6D1C4FFFEFEFEFFFEFEFEFFFEFE
          FEFFF0E3DBFFBA7E57FFA45522FFD7B59EFFFEFEFEFFFEFEFEFFF8F2EEFFD9B8
          A3FFFEFEFEFFAE683BFFAB6131FFFEFEFEFFC18B68FFA45522FFB47248FFF4EB
          E5FFFEFEFEFFFEFEFEFFE3CABAFFEFE1D8FFDCBEAAFFA45522FFA65826FFDCBE
          AAFFFEFEFEFFFEFEFEFFFEFEFEFFDFC3B1FFA75A29FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFFBF8F6FFE1C7
          B7FFC38F6EFFC38F6EFFC38F6EFFC38F6EFFC18B69FFA45522FFECDDD2FFD9B9
          A4FFA45522FFA45522FFAF693CFFFEFEFEFFBD835DFFA45522FFA45522FFCB9F
          82FFFAF7F4FFA45522FFC99A7CFFFDFBFAFFA45522FFA45522FFEDDED4FFE8D5
          C8FFAF693CFFB77950FFAB6233FFF7F1ECFFEAD7CBFFB77950FFAB6132FFB879
          51FFDDBFACFFBF8763FFA45522FFA45522FFA45522FFA45522FFA45522FFE0C5
          B4FFEDDDD3FFA45522FFA45522FFA45522FFA45522FFA45522FFA65927FFF0E4
          DCFFF0E3DBFFBC815BFFAB6233FFB5744AFFD7B49DFFC99A7CFFBE8662FFFEFE
          FEFFD4AE96FFB37147FFC38F6DFFF1E6DEFFFEFEFEFFAE683BFFAB6131FFFEFE
          FEFFC18B68FFA45522FFEBDBD0FFF2E7E0FFBB7F59FFB7774FFFD8B7A1FFFEFD
          FDFFDCBEAAFFA45522FFD3AD94FFFAF7F4FFC08965FFA85D2CFFBE8560FFFAF5
          F2FFD7B49DFFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFFBF8F6FFD2AB91FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFECDDD2FFD9B9A4FFA45522FFA45522FFAF693CFFFEFE
          FEFFBD835DFFA45522FFA45522FFCB9F82FFFAF7F4FFA45522FFC99A7CFFFDFB
          FAFFA45522FFA45522FFF9F5F2FFCDA286FFA45522FFA45522FFCDA286FFFBF8
          F6FFAB6132FFA45522FFA45522FFA45522FFA45522FFA55724FFA45522FFA455
          22FFA45522FFA45522FFA45522FFE0C5B4FFEDDDD3FFA45522FFA45522FFA455
          22FFA45522FFA45522FFC18B69FFFEFEFEFFB37147FFA45522FFA45522FFA455
          22FFA45522FFA55724FFDEC1AEFFF1E5DEFFA45522FFA45522FFA45522FFBD84
          5FFFFEFEFEFFAE683BFFAB6131FFFEFEFEFFC18B68FFB06B3EFFFEFEFEFFC491
          70FFA45522FFA45522FFA45522FFEAD8CCFFDCBEAAFFA55623FFF8F3F0FFD4AF
          97FFA45522FFA45522FFA45522FFD1AA90FFFAF7F4FFA65826FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFFBF8F6FFD2AB
          91FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFECDDD2FFD9B9
          A4FFA45522FFA45522FFAF693CFFFEFEFEFFBD835DFFA45522FFA45522FFCB9F
          82FFFAF7F4FFA45522FFC99A7CFFFDFBFAFFA45522FFA45522FFFAF7F4FFCB9F
          82FFA45522FFA45522FFDFC4B2FFE9D6CAFFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFE0C5
          B4FFEDDDD3FFA45522FFA45522FFA45522FFA45522FFA45522FFD3AD95FFF5EC
          E6FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFEBDACFFFE0C5
          B3FFA45522FFA45522FFA45522FFBD835EFFFEFEFEFFAE683BFFAB6131FFFEFE
          FEFFC18B68FFBE8560FFFEFEFEFFB37045FFA45522FFA45522FFA45522FFEAD7
          CBFFDCBEAAFFB06B3EFFFEFEFEFFC08965FFA45522FFA45522FFA45522FFBE85
          60FFFEFEFEFFB26F44FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFFBF8F6FFD2AB91FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFECDDD2FFD9B9A4FFA45522FFA45522FFAF693CFFFEFE
          FEFFBD835DFFA45522FFA45522FFCB9F82FFFAF7F4FFA45522FFC99A7CFFFDFB
          FAFFA45522FFA45522FFFAF7F4FFCB9F82FFA45522FFA45522FFE2C9B9FFFBF9
          F7FFF3E9E3FFF3E9E3FFF3E9E3FFF3E9E3FFF3E9E3FFC89778FFA45522FFA455
          22FFA45522FFA45522FFA45522FFE0C5B4FFFAF6F3FFE8D4C7FFE5CFC1FFD8B7
          A1FFB6764DFFA45522FFD6B39DFFFDFBFAFFF3E9E3FFF3E9E3FFF3E9E3FFF3E9
          E3FFF3E9E3FFD2AB91FFEDDDD3FFDDBFACFFA45522FFA45522FFA45522FFBD83
          5EFFFEFEFEFFAE683BFFAB6131FFFEFEFEFFC18B68FFBF8864FFFEFEFEFFB06B
          3FFFA45522FFA45522FFA45522FFEAD7CBFFDCBEAAFFB37147FFFEFEFEFFBC82
          5DFFA45522FFA45522FFA45522FFBA7E57FFFEFEFEFFB6754CFFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFFBF8F6FFE5CE
          BFFFCA9D7FFFCA9D7FFFCA9D7FFFCA9D7FFFBA7D56FFA45522FFECDDD2FFD9B9
          A4FFA45522FFA45522FFB06B3FFFFEFEFEFFBD835DFFA45522FFA45522FFCDA1
          85FFFAF6F3FFA45522FFC99A7CFFFDFBFAFFA45522FFA45522FFFAF7F4FFCB9F
          82FFA45522FFA45522FFD8B7A1FFEFE1D8FFB97D56FFB97D56FFB97D56FFB97D
          56FFFAF6F3FFC99B7DFFA45522FFA45522FFA45522FFA45522FFA45522FFE0C5
          B4FFF6EFEBFFD6B29BFFDABAA5FFEEE0D7FFFDFDFCFFC69575FFCCA084FFF8F2
          EEFFB97D56FFB97D56FFB97D56FFB97D56FFF1E5DEFFD5B199FFE3CBBBFFE8D5
          C8FFA45522FFA45522FFA45522FFBD835EFFFEFEFEFFAE683BFFAB6131FFFEFE
          FEFFC18B68FFB6754CFFFEFEFEFFBC815BFFA45522FFA45522FFA45522FFEAD7
          CBFFDCBEAAFFAB6131FFFEFEFEFFC69474FFA45522FFA45522FFA45522FFC38F
          6EFFFEFEFEFFAD6537FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFFBF8F6FFFBF8F6FFF7F1EDFFF7F1EDFFF7F1EDFFF7F1
          EDFFD3AD95FFA45522FFECDDD2FFE9D7CBFFA85C2BFFA45522FFBC815CFFFEFE
          FEFFCFA68BFFA45522FFA45522FFD9B7A2FFF4EBE5FFA45522FFC99A7CFFFDFB
          FAFFA45522FFA45522FFFAF7F4FFCB9F82FFA45522FFA45522FFBD835EFFFCFA
          F8FFB06B3EFFA45522FFA45522FFB26F44FFFEFEFEFFB97C55FFA45522FFA455
          22FFA45522FFA45522FFA45522FFE0C5B4FFEDDDD3FFA45522FFA45522FFA556
          23FFE0C6B5FFFAF6F3FFB7774FFFFEFDFDFFB97C55FFA45522FFA45522FFAA5F
          2FFFFBF8F6FFC59271FFC89778FFFDFCFBFFB47349FFA45522FFA45522FFBD83
          5EFFFEFEFEFFAE683BFFAB6131FFFEFEFEFFC18B68FFA55724FFF4EAE4FFE0C6
          B5FFA45522FFA45522FFA45522FFEAD7CBFFDCBEAAFFA45522FFECDCD1FFE6D0
          C2FFA45522FFA45522FFA45522FFE4CCBDFFEFE1D8FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFFBF8F6FFD2AB
          91FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFECDDD2FFF7F1
          ECFFF4EAE4FFDBBCA8FFF4EAE4FFF4EAE4FFEAD7CBFFE9D6CAFFDDC0ADFFFCFA
          F8FFD9B8A3FFA45522FFC99A7CFFFDFBFAFFA45522FFD9B7A2FFFDFCFBFFEDDE
          D4FFDFC4B2FFDFC3B1FFA45522FFDFC3B1FFF5ECE6FFCFA58AFFCDA185FFF2E7
          DFFFE9D5C9FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFE0C5
          B4FFEDDDD3FFA45522FFA45522FFA45522FFBD835DFFFEFEFEFFBC815BFFD3AD
          95FFF8F3F0FFD2AB91FFCB9E81FFECDDD2FFF1E6DEFFA75B29FFA65826FFEBDA
          CFFFF9F4F1FFDABBA6FFDABAA5FFF3E9E3FFFEFEFEFFAE683BFFAB6131FFFEFE
          FEFFC18B68FFA45522FFC08966FFFDFDFCFFE9D6CAFFD6B39CFFE4CDBEFFFDFC
          FBFFDCBEAAFFA45522FFBA7D56FFFCFAF8FFE6D0C2FFD0A78DFFE4CDBEFFFDFB
          FAFFBC825DFFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFFBF8F6FFD2AB91FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFCDA185FFC28D6AFFC4906FFFE7D3C5FFE2C9B8FFB574
          4AFFA85B2AFFD4AF97FFE9D7CBFFD9B8A3FFA85D2CFFA45522FFB97C55FFD6B3
          9CFFA45522FFD1A990FFFDFBFAFFE8D5C8FFD7B49DFFD6B39DFFA45522FFA557
          24FFCA9B7DFFE6D0C2FFE9D6CAFFD4AE96FFA95E2EFFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFE0C5B4FFEDDDD3FFA45522FFA45522FFA455
          22FFC08965FFFEFEFEFFBA7F58FFA45522FFC4906FFFE4CCBDFFEAD7CBFFD8B7
          A1FFAD6536FFA45522FFA45522FFA95D2DFFD4AF97FFEAD7CBFFE4CCBDFFD7B4
          9DFFFEFEFEFFAE683BFFA85B2AFFD7B49DFFB47349FFA45522FFA45522FFBC81
          5CFFE3CBBBFFEAD8CCFFD6B29BFFEFE2D9FFDCBEAAFFA45522FFA45522FFB676
          4DFFDEC2B0FFEAD8CCFFDFC4B2FFB87A52FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFFBF8F6FFD2AB
          91FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA55623FFA65725FFA45522FFA45522FFFAF7F4FFCB9F
          82FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFE0C5
          B4FFEDDDD3FFA45522FFA45522FFB06B3FFFECDDD2FFF7F1ECFFA75B29FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFBD835EFFFEFEFEFFAE683BFFA45522FFA657
          25FFA55623FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFEAD7
          CBFFDCBEAAFFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFFBF8F6FFFCFBF9FFFAF7F4FFFAF7F4FFFAF7F4FFFAF7
          F4FFF4EBE5FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFD1A990FFFEFE
          FEFFAC6334FFA45522FFFAF7F4FFCB9F82FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFE0C5B4FFFDFBFAFFF6EFEAFFF8F3F0FFFEFE
          FEFFF7F0EBFFBB7F59FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFBD83
          5EFFFEFEFEFFAE683BFFB26F44FFFEFEFEFFCA9C7EFFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFEAD7CBFFDCBEAAFFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFC69575FFC897
          78FFC89778FFC89778FFC89778FFC89778FFC59372FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFB97C55FFCFA58AFFA85B2AFFA45522FFA65725FFA556
          23FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFBC81
          5BFFC89778FFC89778FFC69575FFBD835EFFA75B29FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFBB7F59FFF7F1EDFFAE6739FFAB6132FFCFA5
          8AFFB6764DFFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFE4CD
          BEFFD8B59FFFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFFDFDFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFC28D6BFFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFAF6A3DFFFBF9F7FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFF5ECE6FFA85B2AFFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFFDFD
          FCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFC28D6BFFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFD3AC93FFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFD0A78DFFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFFDFDFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFC28D6BFFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA85C2BFFF5EDE7FFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFAF6F3FFAD6536FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFFDFD
          FCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFC28D6BFFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFC592
          71FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFDBBCA8FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFFDFDFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFC28D6BFFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFEBD9CEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFDFDFCFFB47349FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFFDFD
          FCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFC28D6BFFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFB77950FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFE6D1
          C3FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFFDFDFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFC28D6BFFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFDDC0ADFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFBE8662FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFFDFD
          FCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFC28D6BFFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFAD6638FFFAF7F4FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFF0E3DAFFA65725FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFFDFDFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFC28D6BFFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFCFA68BFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFC99B7DFFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFFDFD
          FCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFC28D6BFFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA75A29FFF3E9E2FFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFF7F0EBFFA95F2FFFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFFDFDFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFE0C5B3FFD0A78DFFD0A78DFFD0A78DFFD0A78DFFD0A78DFFD0A7
          8DFFD0A78DFFD0A78DFFD0A78DFFC4906FFFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFC28C
          6AFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFD4AF97FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFFDFD
          FCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFE5CF
          C0FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFE8D4C7FFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFCF9F8FFAF6A3DFFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFFDFDFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFE5CFC0FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFB5744AFFFDFDFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFDFC4
          B2FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFFDFD
          FCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFE5CF
          C0FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFDABBA6FFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFB87951FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFFDFDFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFE5CFC0FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFAC6334FFF9F4F1FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFEAD8CCFFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFFDFD
          FCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFD4AF97FFBF8763FFBF87
          63FFBF8763FFBF8763FFBF8763FFBF8763FFBF8763FFBF8763FFBF8763FFB779
          50FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFCDA184FFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFC28D6BFFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFFDFDFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFC28D6BFFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA65826FFF1E5DDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFF2E8E1FFA75928FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFFDFD
          FCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFC28D6BFFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFBF87
          63FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFCDA286FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFFDFDFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFC28D6BFFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFE5CFC0FFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFF9F4F1FFAB6233FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFFDFD
          FCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFC99A7CFFAE673AFFAE67
          3AFFAE673AFFAE673AFFAE673AFFAE673AFFAE673AFFAE673AFFAE673AFFAE67
          3AFFA95F2FFFA45522FFA45522FFA45522FFA65826FFA85D2CFFA85D2CFFA85D
          2CFFA85D2CFFA85D2CFFA85D2CFFA85D2CFFA85D2CFFA85D2CFFA85D2CFFA85D
          2CFFB77850FFFDFDFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFD7B4
          9DFFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFFDFDFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFD3AD95FFA45522FFA45522FFA455
          22FFCB9E81FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFE6D0C2FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFFDFD
          FCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFD3AD95FFA45522FFA45522FFA45522FFCB9E81FFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFE6D0
          C2FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFFDFDFCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFD3AD95FFA45522FFA45522FFA455
          22FFCB9E81FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFE6D0C2FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFFDFD
          FCFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFD3AD95FFA45522FFA45522FFA45522FFCB9E81FFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFE6D0
          C2FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFDFC3B1FFDFC4B2FFDFC4B2FFDFC4B2FFDFC4
          B2FFDFC4B2FFDFC4B2FFDFC4B2FFDFC4B2FFDFC4B2FFDFC4B2FFDFC4B2FFDFC4
          B2FFDFC4B2FFDFC4B2FFDFC4B2FFDFC4B2FFC38F6DFFA45522FFA45522FFA455
          22FFBE8560FFDFC4B2FFDFC4B2FFDFC4B2FFDFC4B2FFDFC4B2FFDFC4B2FFDFC4
          B2FFDFC4B2FFDFC4B2FFDFC4B2FFDFC4B2FFDFC4B2FFDFC4B2FFDFC4B2FFDFC4
          B2FFDFC4B2FFDFC4B2FFDFC4B2FFCFA68BFFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFECDBD0FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFECDBD0FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFEDDED4FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFF4EBE5FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFFEFEFEFFAA6132FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFFFFFFFFFC39170FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFFFFFFFFFE9D6CAFFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFB5744BFFFFFFFFFFFFFFFFFFC08A66FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFE5CFC1FFFFFFFFFFFFFFFFFFF7F0
          EBFFAE683BFFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFCBA0
          83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0E3DBFFAE683AFFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFC59474FFFDFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF6EEEAFFBE8864FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA85D2CFFD7B6A1FFFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7D3
          C6FFC18D6BFFA85D2CFFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFA455
          22FFA45522FFA45522FFA45522FFA45522FFA45522FFA45522FFB06C40FFD0A8
          8DFFF6EFEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBFAFFF1E6DEFFE9D7
          CBFFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4
          C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4
          C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4
          C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4
          C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4
          C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4
          C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4
          C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4
          C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4
          C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4C7FFE8D4
          C8FFECDCD1FFF7F0EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF}
        OnClick = Image1Click
      end
      object Image51: TImage
        Left = 350
        Top = 6
        Width = 100
        Height = 100
        Cursor = crHandPoint
        Picture.Data = {
          0B54504E4747726170686963769C0000424D769C000000000000360000002800
          000064000000640000000100200000000000409C000000000000000000000000
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FBFEFF9BD9FEFF4FBB
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF6FC7
          FEFFD1EDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFDEF2FEFF5FC1FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF48B8FEFF9FD9FEFFFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFDEF2FEFF54BDFEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF93D5FEFFFFFFFFFFFFFFFFFFFFFFFFFFF5FBFEFF60C2
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFB6E3
          FEFFFFFFFFFFFFFFFFFF9CD8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF52BCFEFFF0F9FEFFF4FAFEFF4FBBFEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFFA4DBFEFFBDE5FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF64C2FEFF91D4FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF7BCBFEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF4AB9FEFF61C2FEFF69C5FEFF51BCFEFF47B8FEFF47B8FEFF47B8
          FEFF4FBBFEFF6EC7FEFF5CC0FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF5FC2FEFF67C5FEFF4BBAFEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF5CC0FEFF69C5FEFF55BEFEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF64C4FEFF6BC6FEFF4ABAFEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF4ABAFEFFA5DCFEFFF2FAFEFFFEFEFEFFFEFE
          FEFFFCFDFEFFCBEBFEFF6EC7FEFF72C9FEFFF2FAFEFFFEFEFEFFFEFEFEFFC1E7
          FEFFD4EEFEFFC8EAFEFF47B8FEFFA9DEFEFFE8F6FEFF47B8FEFF47B8FEFF47B8
          FEFF86D0FEFFFEFEFEFF54BDFEFF47B8FEFF77CBFEFFE6F5FEFFFEFEFEFFFEFE
          FEFFF6FBFEFF95D6FEFF47B8FEFF77CBFEFFE1F3FEFFFEFEFEFFFEFEFEFFFEFE
          FEFFD5EFFEFF61C2FEFF87D1FEFFFEFEFEFF53BDFEFF4ABAFEFFC8EAFEFFFEFE
          FEFFFEFEFEFFEBF7FEFFAADEFEFFFEFEFEFF63C3FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFBFE6
          FEFFFEFEFEFFADDFFEFF69C5FEFF5FC1FEFF84D0FEFFDAF0FEFFB1E1FEFFDCF1
          FEFFDFF2FEFF6CC6FEFF64C4FEFFABDFFEFFFDFEFEFFC8EAFEFF47B8FEFFA9DE
          FEFFE8F6FEFF47B8FEFF47B8FEFF47B8FEFF86D0FEFFFEFEFEFF54BDFEFF5FC2
          FEFFF7FCFEFFCBEBFEFF64C4FEFF5ABFFEFF90D4FEFFAFE0FEFF66C4FEFFF9FC
          FEFFC7E9FEFF69C5FEFF55BEFEFF72C9FEFFBEE6FEFF77CBFEFF87D1FEFFFEFE
          FEFF53BDFEFF8AD2FEFFFEFEFEFF92D5FEFF5EC1FEFF81CFFEFFE5F5FEFFFEFE
          FEFF63C3FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF78CBFEFFFEFEFEFFA4DCFEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF4AB9FEFF71C8FEFFFAFDFEFFA2DBFEFF47B8FEFF47B8FEFF47B8
          FEFFCBEBFEFFC8EAFEFF47B8FEFFA9DEFEFFE8F6FEFF47B8FEFF47B8FEFF47B8
          FEFF86D0FEFFFEFEFEFF54BDFEFFA8DDFEFFF7FBFEFF52BDFEFF47B8FEFF47B8
          FEFF47B8FEFF49B9FEFFB6E3FEFFEAF7FEFF4CBAFEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF49B9FEFF87D1FEFFFEFEFEFF53BDFEFFA8DDFEFFF4FAFEFF47B8
          FEFF47B8FEFF47B8FEFF78CBFEFFFEFEFEFF63C3FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFBBE5FEFFF5FB
          FEFF4FBBFEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFDDF2
          FEFFD8F0FEFF52BDFEFF47B8FEFF47B8FEFFC9EAFEFFC8EAFEFF47B8FEFFA9DE
          FEFFE8F6FEFF47B8FEFF47B8FEFF47B8FEFF86D0FEFFFEFEFEFF54BDFEFFCCEB
          FEFFD0EDFEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFDBF1FEFFBBE5
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF87D1FEFFFEFE
          FEFF53BDFEFF8BD2FEFFFEFEFEFF7ECDFEFF47B8FEFF47B8FEFF77CBFEFFFEFE
          FEFF63C3FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFFE0F3FEFFCEECFEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF71C8FEFFECF8FEFFF5FBFEFFCDEBFEFFB6E3
          FEFFE6F5FEFFC8EAFEFF47B8FEFFA9DEFEFFE8F6FEFF47B8FEFF47B8FEFF47B8
          FEFF86D0FEFFFEFEFEFF54BDFEFFD2EDFEFFC8EAFEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFFE2F3FEFFF5FBFEFFE7F6FEFFE7F6FEFFE7F6FEFFE7F6
          FEFFE7F6FEFF8AD2FEFF87D1FEFFFEFEFEFF53BDFEFF4ABAFEFFC1E7FEFFFEFE
          FEFFDDF2FEFFBFE6FEFFC3E8FEFFFEFEFEFF63C3FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFEDF8FEFFBEE6
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF4DBAFEFF7CCDFEFF9DD9FEFFB1E1FEFFEAF7FEFFC8EAFEFF47B8FEFFA9DE
          FEFFE8F6FEFF47B8FEFF47B8FEFF47B8FEFF8BD2FEFFFEFEFEFF52BDFEFFBEE6
          FEFFE0F3FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFCDEBFEFFCCEB
          FEFF72C9FEFF72C9FEFF72C9FEFF73C9FEFFFCFEFEFF8DD3FEFF87D1FEFFFEFE
          FEFF53BDFEFF47B8FEFF47B8FEFF66C4FEFF91D5FEFFAADEFEFFC8EAFEFFFEFE
          FEFF62C3FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFFE7F5FEFFC5E8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF4ABAFEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFFDDF2FEFFBCE5FEFF47B8FEFFA9DEFEFFF5FBFEFF67C5FEFF47B8FEFF47B8
          FEFFA9DEFEFFF8FCFEFF49B9FEFF85D0FEFFFEFEFEFF7ACCFEFF47B8FEFF47B8
          FEFF48B9FEFF6EC7FEFF95D6FEFFEEF8FEFF53BDFEFF47B8FEFF47B8FEFF6EC7
          FEFFFEFEFEFF6BC6FEFF87D1FEFFFEFEFEFF53BDFEFF47B8FEFF4ABAFEFF47B8
          FEFF47B8FEFF47B8FEFF8BD2FEFFFEFEFEFF57BEFEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFCCEBFEFFE7F5
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF82CF
          FEFFE0F3FEFFB1E1FEFFA6DDFEFFCBEBFEFFFEFEFEFF7DCDFEFF47B8FEFFA9DE
          FEFFF7FCFEFFF1F9FEFFC6E9FEFFBCE5FEFFFAFDFEFFBDE5FEFF47B8FEFF48B9
          FEFFC9EAFEFFF8FCFEFFB6E3FEFFACDFFEFFE1F3FEFFBDE5FEFF4BBAFEFFD4EE
          FEFFE2F3FEFF9AD8FEFF9DD9FEFFEAF7FEFFCBEBFEFF47B8FEFF87D1FEFFFEFE
          FEFF53BDFEFF47B8FEFFDDF2FEFFC3E8FEFFA6DDFEFFB1E1FEFFF3FAFEFFCEEC
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF95D6FEFFFEFEFEFF76CAFEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF4FBBFEFF5FC1FEFFADDFFEFFC8EAFEFFCEECFEFFBEE6
          FEFF7BCCFEFF47B8FEFF47B8FEFF7ECDFEFFA2DBFEFF5FC2FEFFB7E3FEFFD5EF
          FEFFB0E0FEFF50BCFEFF47B8FEFF47B8FEFF4ABAFEFF91D5FEFFC5E8FEFFCBEB
          FEFFAADEFEFF64C3FEFF47B8FEFF4DBBFEFF9DD9FEFFD0EDFEFFD1EDFEFFA2DB
          FEFF4EBBFEFF47B8FEFF87D1FEFFFEFEFEFF53BDFEFF47B8FEFF92D5FEFFBFE6
          FEFFCEECFEFFC8EAFEFFA2DBFEFF51BCFEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF4EBBFEFFE4F4
          FEFFE9F6FEFF68C5FEFF47B8FEFF47B8FEFF4BBAFEFF96D7FEFFACDFFEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF87D1FEFFFEFE
          FEFF53BDFEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF61C2FEFFE3F4FEFFFDFEFEFFD8F0FEFFCDEB
          FEFFF1F9FEFFFEFEFEFF9BD8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF87D1FEFFFEFEFEFF53BDFEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF4BBAFEFF84D0FEFFABDFFEFFB1E1FEFF99D8FEFF63C3FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF82CFFEFFF0F9
          FEFF52BCFEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF5AC0FEFF80CEFEFF98D7FEFFA2DBFEFF9DD9FEFF90D4
          FEFF73C9FEFF4DBBFEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFFF9FCFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFF96D7FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF49B9FEFF8ED4FEFFDAF1FEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF7FBFEFFB9E4FEFF60C2
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFF9FCFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF96D7FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF59BFFEFFD5EF
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFF9FCFEFF96D7FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFFF9FCFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFF96D7FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF57BEFEFFE4F4FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFA6DDFEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFF9FCFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF96D7FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFC6E9FEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFEFF8FEFFCBEBFEFFD9F0FEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF7FCEFEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFFF9FCFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFF96D7FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF76CAFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFAFE0
          FEFF4BBAFEFF47B8FEFF47B8FEFF6BC6FEFFECF7FEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFE3F4FEFF48B9FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFF9FCFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF96D7FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFC3E8FEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFD3EEFEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF7BCCFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF76CA
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFFF9FCFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFF96D7FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF4DBB
          FEFFF8FCFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF85D0FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFEBF7FEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFA6DDFEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFF9FCFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF96D7FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF71C8FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFF59BFFEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFFD1EDFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFC1E7
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFFF9FCFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFF96D7FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF8DD3
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF4FBFEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFD0EDFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFC8EAFEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFF9FCFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF96D7FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF9FDAFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFEAF7FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFFEBF7FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFC0E7
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFFF9FCFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFC8EAFEFFA0DAFEFFA0DAFEFFA0DAFEFFA0DAFEFFA0DAFEFFA0DAFEFFA0DA
          FEFFA0DAFEFFA0DAFEFF9AD8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFA7DD
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFE5F5FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF84D0FEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFA7DDFEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFF9FCFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF2FAFEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFFA7DDFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFF2FAFEFF79CCFEFF4EBBFEFF47B8FEFF47B8FEFF54BDFEFF96D7
          FEFFF7FCFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF77CB
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFFF9FCFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFF2FAFEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFA0DA
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFCFE
          FEFFEDF8FEFFF1F9FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFE0F3FEFF48B9FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFF9FCFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF2FAFEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF91D5FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFCFDFEFF72C9FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFFF9FCFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFF2FAFEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF7ACC
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFCFEFEFFF4FBFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFF9FCFEFF85D0FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFF9FCFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFB5E2FEFF7ECDFEFF7ECDFEFF7ECD
          FEFF7ECDFEFF7ECDFEFF7ECDFEFF7ECDFEFF7ECDFEFF7ECDFEFF7ACCFEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF59BFFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFF64C4FEFFA4DCFEFFEAF7FEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFF9FDFEFFC0E7FEFF62C3FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFFF9FCFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFF96D7FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFFE3F4FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF8CD3FEFF47B8
          FEFF47B8FEFF65C4FEFF83CFFEFF91D5FEFF8CD3FEFF78CBFEFF52BDFEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFF9FCFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF96D7FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFA7DDFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFDEF2FEFF4AB9FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFFF9FCFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFF96D7FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF5EC1FEFFFBFDFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFACDF
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFF9FCFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFA1DBFEFF5BC0FEFF5BC0FEFF5BC0
          FEFF5BC0FEFF5BC0FEFF5BC0FEFF5BC0FEFF5BC0FEFF5BC0FEFF5BC0FEFF56BE
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFAFE0FEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFBAE4FEFF57BEFEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF4DBAFEFF57BEFEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFFF9FCFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFD0EDFEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF4FBCFEFFE2F3FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFF9FDFEFFCBEBFEFFA4DCFEFF95D6FEFF94D6FEFFA3DBFEFFC3E8
          FEFFF4FAFEFFB8E3FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFF9FCFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFD0ED
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF62C3FEFFECF7
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFB8E3FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFFF9FCFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFD0EDFEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF5EC1FEFFD8F0FEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFB8E3FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFF9FCFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFD0ED
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF49B9FEFF94D6FEFFE9F6FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFB8E3FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFFBEE6FEFFC2E7FEFFC2E7FEFFC2E7FEFFC2E7FEFFC2E7
          FEFFC2E7FEFFC2E7FEFFC2E7FEFFC2E7FEFFC2E7FEFFC2E7FEFFC2E7FEFFC2E7
          FEFFC2E7FEFFC2E7FEFFC2E7FEFFA3DBFEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF4AB9FEFF7BCC
          FEFFB1E1FEFFD8F0FEFFF2FAFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF7FB
          FEFFE2F4FEFF9AD8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF4DBB
          FEFF55BEFEFF57BEFEFF4FBBFEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF74C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF74C9FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF76C9FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF84D0FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFFA6DCFEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF4FBBFEFFDAF0FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF81CFFEFFFFFFFFFF6EC6FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFFCDEBFEFFFFFFFFFFD1EDFEFF48B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF7ACCFEFFFFFFFFFFFFFFFFFFFFFFFFFF9ED9
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF58BFFEFFEBF7
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF91D5FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF58BFFEFFDDF2FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFB5E2FEFF52BCFEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF7ACCFEFFECF7FEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF9FEFFA3DB
          FEFF62C3FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8
          FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF47B8FEFF4FBBFEFF81CFFEFFCDEB
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF9FEFFD9F0FEFFD1ED
          FEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0ED
          FEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0ED
          FEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0ED
          FEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0ED
          FEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0ED
          FEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0ED
          FEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0ED
          FEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0ED
          FEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0ED
          FEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD0EDFEFFD4EE
          FEFFE3F4FEFFFBFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF}
        OnClick = Image51Click
      end
      object Button1: TButton
        Left = 541
        Top = 8
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 0
        Visible = False
        OnClick = Button1Click
      end
    end
    object QRShape2: TQRShape
      Left = 2
      Top = 455
      Width = 578
      Height = 1
      Size.Values = (
        2.645833333333333000
        5.291666666666667000
        1203.854166666667000000
        1529.291666666667000000)
      XLColumn = 0
      Pen.Color = clSilver
      Shape = qrsHorLine
      VertAdjust = 0
    end
    object ComboBox1: TComboBox
      Left = 441
      Top = 369
      Width = 112
      Height = 21
      TabOrder = 13
      Visible = False
      Items.Strings = (
        'R$ 2,00'
        'R$ 3,00'
        'R$ 5,00'
        'R$ 10,00'
        'R$ 15,00'
        'R$ 20,00')
    end
    object CheckBox56: TCheckBox
      Left = 8
      Top = 478
      Width = 147
      Height = 17
      Caption = 'Tx. Entrega R$ 2,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      OnClick = CheckBox56Click
    end
    object CheckBox57: TCheckBox
      Left = 197
      Top = 478
      Width = 158
      Height = 17
      Caption = 'Tx. Entrega R$ 3,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnClick = CheckBox57Click
    end
    object Memo2: TMemo
      Left = 211
      Top = 158
      Width = 241
      Height = 89
      Lines.Strings = (
        'Pre'#231'os:'
        'MODIFICAR NO TOTALIZA'
        'MODIFICAR NO BOT'#195'O IMAGE1 (FINALIZAR)'
        'CHECKBOX E CB, CUIDADO')
      TabOrder = 16
      Visible = False
    end
    object QRShape6: TQRShape
      Left = 2
      Top = 513
      Width = 578
      Height = 1
      Size.Values = (
        2.645833333333333000
        5.291666666666667000
        1357.312500000000000000
        1529.291666666667000000)
      XLColumn = 0
      Pen.Color = clSilver
      Shape = qrsHorLine
      VertAdjust = 0
    end
  end
end
