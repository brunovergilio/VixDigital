object FOs: TFOs
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'SmartComm - Emiss'#227'o de Ordens de Servi'#231'o'
  ClientHeight = 710
  ClientWidth = 1070
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel10: TPanel
    Left = 0
    Top = 0
    Width = 1070
    Height = 165
    Align = alTop
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Panel12: TPanel
      Left = 0
      Top = 23
      Width = 1070
      Height = 143
      HelpType = htKeyword
      Align = alTop
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
      object Label2: TLabel
        Left = 57
        Top = 30
        Width = 45
        Height = 13
        Caption = 'CLIENTE:'
      end
      object Label4: TLabel
        Left = 722
        Top = 5
        Width = 23
        Height = 13
        Caption = 'CEP:'
        Visible = False
      end
      object Label5: TLabel
        Left = 722
        Top = 5
        Width = 49
        Height = 13
        Caption = 'Endere'#231'o:'
        Visible = False
      end
      object Label6: TLabel
        Left = 722
        Top = 5
        Width = 32
        Height = 13
        Caption = 'Bairro:'
        Visible = False
      end
      object Label7: TLabel
        Left = 718
        Top = 6
        Width = 73
        Height = 13
        Caption = 'N'#250'mero da OS:'
      end
      object Label8: TLabel
        Left = 722
        Top = 5
        Width = 37
        Height = 13
        Caption = 'Estado:'
        Visible = False
      end
      object Label9: TLabel
        Left = 442
        Top = 10
        Width = 52
        Height = 13
        Caption = 'CNPJ/CPF:'
        Visible = False
      end
      object Label10: TLabel
        Left = 442
        Top = 10
        Width = 147
        Height = 13
        Caption = 'Inscri'#231#227'o Estadual/Identidade:'
        Visible = False
      end
      object Label11: TLabel
        Left = 552
        Top = 30
        Width = 54
        Height = 13
        Caption = 'TELEFONE:'
      end
      object Label12: TLabel
        Left = 743
        Top = 30
        Width = 48
        Height = 13
        Caption = 'CELULAR:'
      end
      object Label13: TLabel
        Left = 442
        Top = 10
        Width = 41
        Height = 13
        Caption = 'N'#250'mero:'
      end
      object Label15: TLabel
        Left = 442
        Top = 10
        Width = 79
        Height = 13
        Caption = 'Registro gen_id:'
        Enabled = False
        Visible = False
      end
      object Label14: TLabel
        Left = 42
        Top = 6
        Width = 60
        Height = 13
        Caption = 'OPERA'#199#195'O:'
      end
      object Label1: TLabel
        Left = 442
        Top = 10
        Width = 32
        Height = 13
        Caption = 'E-mail:'
        Visible = False
      end
      object Label16: TLabel
        Left = 442
        Top = 10
        Width = 79
        Height = 13
        Caption = 'Transportadora:'
        Visible = False
      end
      object Label23: TLabel
        Left = 442
        Top = 10
        Width = 31
        Height = 13
        Caption = 'Limite:'
        Visible = False
      end
      object Label24: TLabel
        Left = 442
        Top = 10
        Width = 106
        Height = 13
        Caption = 'Forma de Pagamento:'
        Visible = False
      end
      object Label25: TLabel
        Left = 442
        Top = 10
        Width = 103
        Height = 13
        Caption = 'Prazo de Pagamento:'
        Visible = False
      end
      object Label26: TLabel
        Left = 442
        Top = 10
        Width = 90
        Height = 13
        Caption = 'Tipos de Produtos:'
        Visible = False
      end
      object Label27: TLabel
        Left = 442
        Top = 10
        Width = 59
        Height = 13
        Caption = 'Fat. M'#237'nimo:'
        Visible = False
      end
      object Label28: TLabel
        Left = 442
        Top = 10
        Width = 50
        Height = 13
        Caption = 'Vendedor:'
        Visible = False
      end
      object Label21: TLabel
        Left = 25
        Top = 109
        Width = 77
        Height = 13
        Caption = 'OBSERVA'#199#213'ES:'
      end
      object Label20: TLabel
        Left = 5
        Top = 52
        Width = 97
        Height = 13
        Caption = 'DATA DE ENTRADA:'
      end
      object Label29: TLabel
        Left = 61
        Top = 76
        Width = 41
        Height = 13
        Caption = 'MOTOR:'
      end
      object Label30: TLabel
        Left = 503
        Top = 52
        Width = 103
        Height = 13
        Caption = 'PRAZO DE ENTREGA:'
      end
      object Label31: TLabel
        Left = 241
        Top = 78
        Width = 47
        Height = 13
        Caption = 'VE'#205'CULO:'
      end
      object Label32: TLabel
        Left = 457
        Top = 78
        Width = 26
        Height = 13
        Caption = 'ANO:'
      end
      object Label33: TLabel
        Left = 572
        Top = 78
        Width = 36
        Height = 13
        Caption = 'PLACA:'
      end
      object Label34: TLabel
        Left = 773
        Top = 78
        Width = 18
        Height = 13
        Caption = 'KM:'
      end
      object DBEdit3: TDBEdit
        Left = 442
        Top = 2
        Width = 324
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ENDERE'
        DataSource = dm.DSQClifor
        Enabled = False
        TabOrder = 12
        Visible = False
        OnKeyPress = DBEdit3KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 442
        Top = 2
        Width = 193
        Height = 21
        CharCase = ecUpperCase
        DataField = 'COMPLE'
        DataSource = dm.DSQClifor
        Enabled = False
        TabOrder = 13
        Visible = False
        OnKeyPress = DBEdit4KeyPress
      end
      object DBEdit5: TDBEdit
        Left = 442
        Top = 2
        Width = 193
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CIDADE'
        DataSource = dm.DSQClifor
        Enabled = False
        TabOrder = 14
        Visible = False
        OnKeyPress = DBEdit5KeyPress
      end
      object DBEdit6: TDBEdit
        Left = 442
        Top = 2
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CEP'
        DataSource = dm.DSQClifor
        Enabled = False
        TabOrder = 16
        Visible = False
        OnKeyPress = DBEdit6KeyPress
      end
      object DBEdit8: TDBEdit
        Left = 442
        Top = 2
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CGC'
        DataSource = dm.DSQClifor
        Enabled = False
        TabOrder = 17
        Visible = False
        OnKeyPress = DBEdit8KeyPress
      end
      object DBEdit9: TDBEdit
        Left = 442
        Top = 2
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'IE'
        DataSource = dm.DSQClifor
        Enabled = False
        TabOrder = 18
        Visible = False
        OnKeyPress = DBEdit9KeyPress
      end
      object DBEdit10: TDBEdit
        Left = 611
        Top = 25
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FONE'
        DataSource = dm.DSQClifor
        Enabled = False
        TabOrder = 2
        OnKeyPress = DBEdit10KeyPress
      end
      object DBEdit11: TDBEdit
        Left = 793
        Top = 25
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CELULAR'
        DataSource = dm.DSQClifor
        Enabled = False
        TabOrder = 3
        OnKeyPress = DBEdit11KeyPress
      end
      object DBEdit12: TDBEdit
        Left = 793
        Top = 3
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NUMERONF'
        DataSource = dm.DSTOS
        Enabled = False
        TabOrder = 19
      end
      object DBEdit7: TDBEdit
        Left = 472
        Top = 97
        Width = 60
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ESTADO'
        DataSource = dm.DSQClifor
        Enabled = False
        TabOrder = 15
        Visible = False
        OnKeyPress = DBEdit7KeyPress
      end
      object DBEdit14: TDBEdit
        Left = 457
        Top = 116
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'GEN_ID'
        DataSource = dm.DSQGENOS
        Enabled = False
        TabOrder = 20
        Visible = False
      end
      object DBEdit1: TDBEdit
        Left = 773
        Top = 46
        Width = 220
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CLIENTE'
        DataSource = dm.DSTOS
        TabOrder = 21
      end
      object Edit3: TEdit
        Left = 112
        Top = 25
        Width = 324
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
        OnChange = Edit3Change
        OnExit = Edit3Exit
        OnKeyDown = Edit3KeyDown
      end
      object DBEdit2: TDBEdit
        Left = 457
        Top = 130
        Width = 121
        Height = 21
        DataField = 'EMAIL'
        DataSource = dm.DSQClifor
        Enabled = False
        TabOrder = 22
        Visible = False
      end
      object DBEdit13: TDBEdit
        Left = 445
        Top = 122
        Width = 144
        Height = 21
        DataField = 'IDENTIFICADOR4'
        DataSource = dm.DSQClifor
        Enabled = False
        TabOrder = 23
        Visible = False
      end
      object DBEdit15: TDBEdit
        Left = 440
        Top = 136
        Width = 210
        Height = 21
        DataField = 'CREDITO'
        DataSource = dm.DSQClifor
        TabOrder = 24
        Visible = False
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 112
        Top = 3
        Width = 258
        Height = 21
        DataField = 'OPERACAO'
        DataSource = dm.DSTOS
        KeyField = 'NOME'
        ListField = 'NOME'
        ListSource = dm.DSQICM
        TabOrder = 0
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 444
        Top = 136
        Width = 145
        Height = 21
        DataField = 'FORMADEPAGAMENTO'
        DataSource = dm.DSTOS
        KeyField = 'FORMA'
        ListField = 'FORMA'
        ListSource = dm.DSQFORMAS
        TabOrder = 25
        Visible = False
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 457
        Top = 122
        Width = 145
        Height = 21
        DataField = 'PRAZODEPAGAMENTO'
        DataSource = dm.DSTOS
        KeyField = 'PRAZO'
        ListField = 'PRAZO'
        ListSource = dm.DSQPRAZOS
        TabOrder = 26
        Visible = False
      end
      object DBEdit16: TDBEdit
        Left = 457
        Top = 116
        Width = 145
        Height = 21
        DataField = 'TIPO'
        DataSource = dm.DSQPRAZOS
        Enabled = False
        TabOrder = 27
        Visible = False
      end
      object DBEdit17: TDBEdit
        Left = 442
        Top = 116
        Width = 145
        Height = 21
        DataField = 'FATURAMENTOMINIMO'
        DataSource = dm.DSQPRAZOS
        Enabled = False
        TabOrder = 28
        Visible = False
      end
      object DBEdit18: TDBEdit
        Left = 374
        Top = 3
        Width = 62
        Height = 21
        DataField = 'CFOP'
        DataSource = dm.DSQICM
        Enabled = False
        TabOrder = 29
      end
      object DBEdit19: TDBEdit
        Left = 444
        Top = 113
        Width = 145
        Height = 21
        DataField = 'CONVENIO'
        DataSource = dm.DSQClifor
        Enabled = False
        TabOrder = 30
        Visible = False
      end
      object Memo1: TMemo
        Left = 112
        Top = 97
        Width = 802
        Height = 37
        TabOrder = 11
      end
      object Edit11: TEdit
        Left = 112
        Top = 73
        Width = 121
        Height = 21
        TabOrder = 6
      end
      object Edit12: TEdit
        Left = 292
        Top = 73
        Width = 144
        Height = 21
        TabOrder = 7
      end
      object Edit13: TEdit
        Left = 494
        Top = 73
        Width = 69
        Height = 21
        TabOrder = 8
      end
      object Edit16: TEdit
        Left = 612
        Top = 73
        Width = 121
        Height = 21
        TabOrder = 9
      end
      object Edit17: TEdit
        Left = 793
        Top = 73
        Width = 121
        Height = 21
        TabOrder = 10
      end
      object MASKEDIT1: TDateTimePicker
        Left = 112
        Top = 49
        Width = 121
        Height = 21
        Date = 42374.812416793980000000
        Time = 42374.812416793980000000
        TabOrder = 4
      end
      object MASKEDIT2: TDateTimePicker
        Left = 612
        Top = 49
        Width = 120
        Height = 21
        Date = 42374.812619398150000000
        Time = 42374.812619398150000000
        TabOrder = 5
      end
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1070
      Height = 23
      Align = alTop
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object Label81: TLabel
        Left = 0
        Top = -1
        Width = 1065
        Height = 23
        Alignment = taCenter
        AutoSize = False
        Caption = 'Ordem de Servi'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit14: TEdit
        Left = 611
        Top = -2
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        Enabled = False
        TabOrder = 0
        Text = 'EDIT14'
        Visible = False
      end
      object Edit1: TEdit
        Left = 376
        Top = -2
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
        Text = 'EDIT1'
        Visible = False
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 165
    Width = 1070
    Height = 545
    HelpType = htKeyword
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object Bevel4: TBevel
      Left = 472
      Top = 466
      Width = 593
      Height = 74
      Shape = bsFrame
    end
    object Bevel2: TBevel
      Left = 472
      Top = 21
      Width = 486
      Height = 443
      Shape = bsFrame
    end
    object Bevel1: TBevel
      Left = 959
      Top = 21
      Width = 106
      Height = 443
      Shape = bsFrame
    end
    object SpeedButton3: TSpeedButton
      Left = 963
      Top = 39
      Width = 96
      Height = 37
      Caption = 'Adicionar'
      Layout = blGlyphTop
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 963
      Top = 130
      Width = 96
      Height = 37
      Caption = 'Excluir'
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 744
      Top = 331
      Width = 96
      Height = 37
      Caption = 'Consulta Estoque'
      Visible = False
      OnClick = SpeedButton5Click
    end
    object Label3: TLabel
      Left = 963
      Top = 418
      Width = 69
      Height = 13
      Caption = 'Total da Nota:'
    end
    object Label17: TLabel
      Left = 963
      Top = 337
      Width = 28
      Height = 13
      Caption = 'Total:'
    end
    object Label18: TLabel
      Left = 963
      Top = 377
      Width = 49
      Height = 13
      Caption = 'Desconto:'
    end
    object Label19: TLabel
      Left = 963
      Top = 251
      Width = 27
      Height = 13
      Caption = 'Peso:'
    end
    object Label22: TLabel
      Left = 963
      Top = 290
      Width = 43
      Height = 13
      Caption = 'Volumes:'
    end
    object SpeedButton1: TSpeedButton
      Left = 794
      Top = 488
      Width = 120
      Height = 37
      Caption = 'Gravar e Imprimir'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 937
      Top = 488
      Width = 120
      Height = 37
      Caption = 'Cancelar'
      OnClick = SpeedButton2Click
    end
    object Shape122: TShape
      Left = 475
      Top = 39
      Width = 479
      Height = 27
      Brush.Color = clSilver
    end
    object Label80: TLabel
      Left = 590
      Top = 44
      Width = 248
      Height = 16
      Caption = 'REQUISI'#199#213'ES, BAIXAS E OBSERVA'#199#213'ES'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 475
      Top = 66
      Width = 479
      Height = 394
      DataSource = dm.DSQITENS005
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Width = 223
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Alignment = taCenter
          Title.Caption = 'Quantidade'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UNITARIO'
          Title.Alignment = taCenter
          Title.Caption = 'Unit'#225'rio'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'Total'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUSTO'
          Title.Alignment = taCenter
          Title.Caption = 'Pre'#231'o Custo'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'SINCRONIA'
          Title.Alignment = taCenter
          Title.Caption = 'Rentab.Un.($)'
          Visible = False
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'XPED'
          Title.Alignment = taCenter
          Title.Caption = 'Rentab. (%)'
          Visible = False
        end>
    end
    object Edit4: TEdit
      Left = 962
      Top = 192
      Width = 95
      Height = 21
      TabOrder = 1
      Text = 'Edit4'
      Visible = False
    end
    object Edit2: TEdit
      Left = 963
      Top = 431
      Width = 96
      Height = 24
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object Edit6: TEdit
      Left = 963
      Top = 391
      Width = 96
      Height = 21
      Alignment = taRightJustify
      TabOrder = 6
      OnExit = Edit6Exit
      OnKeyDown = Edit6KeyDown
      OnKeyPress = Edit6KeyPress
    end
    object Edit5: TEdit
      Left = 963
      Top = 351
      Width = 96
      Height = 21
      Alignment = taRightJustify
      ReadOnly = True
      TabOrder = 5
    end
    object Button1: TButton
      Left = 846
      Top = 330
      Width = 96
      Height = 37
      Caption = 'Rentabilidade'
      TabOrder = 4
      Visible = False
      OnClick = Button1Click
    end
    object Edit7: TEdit
      Left = 963
      Top = 263
      Width = 96
      Height = 21
      Alignment = taRightJustify
      ReadOnly = True
      TabOrder = 11
    end
    object Edit9: TEdit
      Left = 963
      Top = 303
      Width = 96
      Height = 21
      Alignment = taRightJustify
      TabOrder = 3
      Text = '1'
    end
    object DBMemo1: TDBMemo
      Left = 477
      Top = 226
      Width = 474
      Height = 143
      DataField = 'CCEXML'
      DataSource = dm.DSTOS
      TabOrder = 7
      Visible = False
    end
    object TabbedNotebook1: TTabbedNotebook
      Left = 0
      Top = 1
      Width = 472
      Height = 539
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clBtnText
      TabFont.Height = -11
      TabFont.Name = 'Tahoma'
      TabFont.Style = []
      TabOrder = 8
      object TTabPage
        Left = 4
        Top = 24
        Caption = 'Componentes 1'
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 464
          Height = 511
          Align = alClient
          BevelKind = bkFlat
          BevelOuter = bvNone
          TabOrder = 0
          object Shape73: TShape
            Left = 12
            Top = 12
            Width = 63
            Height = 27
            Brush.Color = clSilver
          end
          object Shape74: TShape
            Left = 74
            Top = 12
            Width = 100
            Height = 27
            Brush.Color = clSilver
          end
          object Shape76: TShape
            Left = 348
            Top = 12
            Width = 97
            Height = 27
            Brush.Color = clSilver
          end
          object Shape75: TShape
            Left = 173
            Top = 12
            Width = 176
            Height = 27
            Brush.Color = clSilver
          end
          object Shape37: TShape
            Left = 173
            Top = 38
            Width = 176
            Height = 27
          end
          object Shape38: TShape
            Left = 173
            Top = 240
            Width = 176
            Height = 27
          end
          object Shape41: TShape
            Left = 173
            Top = 316
            Width = 176
            Height = 27
          end
          object Shape42: TShape
            Left = 173
            Top = 341
            Width = 176
            Height = 27
          end
          object Shape43: TShape
            Left = 173
            Top = 366
            Width = 176
            Height = 27
          end
          object Shape44: TShape
            Left = 173
            Top = 392
            Width = 176
            Height = 27
          end
          object Shape45: TShape
            Left = 173
            Top = 417
            Width = 176
            Height = 27
          end
          object Shape46: TShape
            Left = 173
            Top = 442
            Width = 176
            Height = 27
          end
          object Shape47: TShape
            Left = 173
            Top = 468
            Width = 176
            Height = 27
          end
          object Shape48: TShape
            Left = 173
            Top = 63
            Width = 176
            Height = 27
          end
          object Shape49: TShape
            Left = 173
            Top = 88
            Width = 176
            Height = 27
          end
          object Shape50: TShape
            Left = 173
            Top = 113
            Width = 176
            Height = 27
          end
          object Shape51: TShape
            Left = 173
            Top = 139
            Width = 176
            Height = 27
          end
          object Shape53: TShape
            Left = 173
            Top = 189
            Width = 176
            Height = 27
          end
          object Shape54: TShape
            Left = 173
            Top = 215
            Width = 176
            Height = 27
          end
          object Shape39: TShape
            Left = 173
            Top = 265
            Width = 176
            Height = 27
          end
          object Shape3: TShape
            Left = 74
            Top = 38
            Width = 100
            Height = 27
          end
          object Shape20: TShape
            Left = 74
            Top = 240
            Width = 100
            Height = 27
          end
          object Shape21: TShape
            Left = 74
            Top = 265
            Width = 100
            Height = 27
          end
          object Shape22: TShape
            Left = 74
            Top = 290
            Width = 100
            Height = 27
          end
          object Shape23: TShape
            Left = 74
            Top = 316
            Width = 100
            Height = 27
          end
          object Shape24: TShape
            Left = 74
            Top = 341
            Width = 100
            Height = 27
          end
          object Shape25: TShape
            Left = 74
            Top = 366
            Width = 100
            Height = 27
          end
          object Shape26: TShape
            Left = 74
            Top = 392
            Width = 100
            Height = 27
          end
          object Shape27: TShape
            Left = 74
            Top = 417
            Width = 100
            Height = 27
          end
          object Shape28: TShape
            Left = 74
            Top = 442
            Width = 100
            Height = 27
          end
          object Shape29: TShape
            Left = 74
            Top = 468
            Width = 100
            Height = 27
          end
          object Shape30: TShape
            Left = 74
            Top = 63
            Width = 100
            Height = 27
          end
          object Shape31: TShape
            Left = 74
            Top = 88
            Width = 100
            Height = 27
          end
          object Shape32: TShape
            Left = 74
            Top = 113
            Width = 100
            Height = 27
          end
          object Shape33: TShape
            Left = 74
            Top = 139
            Width = 100
            Height = 27
          end
          object Shape35: TShape
            Left = 74
            Top = 189
            Width = 100
            Height = 27
          end
          object Shape36: TShape
            Left = 74
            Top = 215
            Width = 100
            Height = 27
          end
          object Shape34: TShape
            Left = 74
            Top = 164
            Width = 100
            Height = 27
          end
          object Shape9: TShape
            Left = 12
            Top = 215
            Width = 63
            Height = 27
          end
          object Shape8: TShape
            Left = 12
            Top = 189
            Width = 63
            Height = 27
          end
          object Shape1: TShape
            Left = 12
            Top = 38
            Width = 63
            Height = 27
          end
          object Label35: TLabel
            Left = 81
            Top = 44
            Width = 24
            Height = 13
            Caption = 'EIXO'
          end
          object Label36: TLabel
            Left = 81
            Top = 69
            Width = 12
            Height = 13
            Caption = 'N'#186
          end
          object Label37: TLabel
            Left = 81
            Top = 94
            Width = 74
            Height = 13
            Caption = 'CONTRAPESOS'
          end
          object Label38: TLabel
            Left = 81
            Top = 119
            Width = 68
            Height = 13
            Caption = 'ENGRENAGEM'
          end
          object Label39: TLabel
            Left = 81
            Top = 145
            Width = 68
            Height = 13
            Caption = 'CHAPA/POLIA'
          end
          object Label40: TLabel
            Left = 81
            Top = 170
            Width = 34
            Height = 13
            Caption = 'BLOCO'
          end
          object Label41: TLabel
            Left = 81
            Top = 195
            Width = 12
            Height = 13
            Caption = 'N'#186
          end
          object Label42: TLabel
            Left = 81
            Top = 221
            Width = 46
            Height = 13
            Caption = 'MANCAIS'
          end
          object Label43: TLabel
            Left = 81
            Top = 246
            Width = 45
            Height = 13
            Caption = 'ESTOJOS'
          end
          object Label44: TLabel
            Left = 81
            Top = 271
            Width = 90
            Height = 13
            Caption = 'SUPORTE/CAL'#199'OS'
          end
          object Label45: TLabel
            Left = 81
            Top = 299
            Width = 84
            Height = 10
            Caption = 'CONFERIR ALT PIST'#195'O'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label46: TLabel
            Left = 81
            Top = 322
            Width = 53
            Height = 13
            Caption = 'CABE'#199'OTE'
          end
          object Label47: TLabel
            Left = 81
            Top = 347
            Width = 12
            Height = 13
            Caption = 'N'#186
          end
          object Label48: TLabel
            Left = 81
            Top = 372
            Width = 57
            Height = 13
            Caption = 'MONTADOS'
          end
          object Label49: TLabel
            Left = 81
            Top = 398
            Width = 58
            Height = 13
            Caption = 'CANOS INJ.'
          end
          object Label50: TLabel
            Left = 81
            Top = 423
            Width = 65
            Height = 13
            Caption = 'BICOS/VELAS'
          end
          object Label51: TLabel
            Left = 81
            Top = 448
            Width = 52
            Height = 13
            Caption = 'SUPORTES'
          end
          object Label52: TLabel
            Left = 81
            Top = 474
            Width = 49
            Height = 13
            Caption = 'V'#193'LVULAS'
          end
          object Shape2: TShape
            Left = 12
            Top = 63
            Width = 63
            Height = 27
          end
          object Shape4: TShape
            Left = 12
            Top = 88
            Width = 63
            Height = 27
          end
          object Shape5: TShape
            Left = 12
            Top = 113
            Width = 63
            Height = 27
          end
          object Shape6: TShape
            Left = 12
            Top = 139
            Width = 63
            Height = 27
          end
          object Shape7: TShape
            Left = 12
            Top = 164
            Width = 63
            Height = 27
          end
          object Shape10: TShape
            Left = 12
            Top = 240
            Width = 63
            Height = 27
          end
          object Shape11: TShape
            Left = 12
            Top = 265
            Width = 63
            Height = 27
          end
          object Shape12: TShape
            Left = 12
            Top = 290
            Width = 63
            Height = 27
          end
          object Shape13: TShape
            Left = 12
            Top = 316
            Width = 63
            Height = 27
          end
          object Shape14: TShape
            Left = 12
            Top = 341
            Width = 63
            Height = 27
          end
          object Shape15: TShape
            Left = 12
            Top = 366
            Width = 63
            Height = 27
          end
          object Shape16: TShape
            Left = 12
            Top = 392
            Width = 63
            Height = 27
          end
          object Shape17: TShape
            Left = 12
            Top = 417
            Width = 63
            Height = 27
          end
          object Shape18: TShape
            Left = 12
            Top = 442
            Width = 63
            Height = 27
          end
          object Shape19: TShape
            Left = 12
            Top = 468
            Width = 63
            Height = 27
          end
          object Shape40: TShape
            Left = 173
            Top = 290
            Width = 176
            Height = 27
          end
          object Shape52: TShape
            Left = 173
            Top = 164
            Width = 176
            Height = 27
          end
          object Label53: TLabel
            Left = 282
            Top = 171
            Width = 55
            Height = 13
            Caption = 'CILINDROS'
          end
          object Label54: TLabel
            Left = 282
            Top = 196
            Width = 41
            Height = 13
            Caption = 'MANCAL'
          end
          object Label55: TLabel
            Left = 282
            Top = 247
            Width = 26
            Height = 13
            Caption = 'FACE'
          end
          object Label56: TLabel
            Left = 282
            Top = 323
            Width = 31
            Height = 13
            Caption = 'SEDES'
          end
          object Shape55: TShape
            Left = 348
            Top = 38
            Width = 97
            Height = 27
          end
          object Shape56: TShape
            Left = 348
            Top = 240
            Width = 97
            Height = 27
          end
          object Shape57: TShape
            Left = 348
            Top = 265
            Width = 97
            Height = 27
          end
          object Shape58: TShape
            Left = 348
            Top = 290
            Width = 97
            Height = 27
          end
          object Shape59: TShape
            Left = 348
            Top = 316
            Width = 97
            Height = 27
          end
          object Shape60: TShape
            Left = 348
            Top = 341
            Width = 97
            Height = 27
          end
          object Shape61: TShape
            Left = 348
            Top = 366
            Width = 97
            Height = 27
          end
          object Shape62: TShape
            Left = 348
            Top = 392
            Width = 97
            Height = 27
          end
          object Shape63: TShape
            Left = 348
            Top = 417
            Width = 97
            Height = 27
          end
          object Shape64: TShape
            Left = 348
            Top = 442
            Width = 97
            Height = 27
          end
          object Shape65: TShape
            Left = 348
            Top = 468
            Width = 97
            Height = 27
          end
          object Shape66: TShape
            Left = 348
            Top = 63
            Width = 97
            Height = 27
          end
          object Shape67: TShape
            Left = 348
            Top = 88
            Width = 97
            Height = 27
          end
          object Shape68: TShape
            Left = 348
            Top = 113
            Width = 97
            Height = 27
          end
          object Shape69: TShape
            Left = 348
            Top = 139
            Width = 97
            Height = 27
          end
          object Shape71: TShape
            Left = 348
            Top = 189
            Width = 97
            Height = 27
          end
          object Shape72: TShape
            Left = 348
            Top = 215
            Width = 97
            Height = 27
          end
          object Label57: TLabel
            Left = 35
            Top = 17
            Width = 16
            Height = 16
            Caption = 'QT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label58: TLabel
            Left = 79
            Top = 17
            Width = 90
            Height = 16
            Caption = 'COMPONENTES'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label59: TLabel
            Left = 185
            Top = 17
            Width = 152
            Height = 16
            Caption = 'SERVI'#199'OS SOLICITADOS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label60: TLabel
            Left = 374
            Top = 17
            Width = 44
            Height = 16
            Caption = 'VALOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Shape70: TShape
            Left = 348
            Top = 164
            Width = 97
            Height = 27
          end
          object DBEdit20: TDBEdit
            Left = 16
            Top = 41
            Width = 38
            Height = 21
            BiDiMode = bdLeftToRight
            DataField = '1_1'
            DataSource = dm.DSTOS
            ParentBiDiMode = False
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit21: TDBEdit
            Left = 16
            Top = 66
            Width = 38
            Height = 21
            DataField = '2_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit22: TDBEdit
            Left = 16
            Top = 91
            Width = 38
            Height = 21
            DataField = '3_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit23: TDBEdit
            Left = 16
            Top = 116
            Width = 38
            Height = 21
            DataField = '4_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit24: TDBEdit
            Left = 16
            Top = 142
            Width = 38
            Height = 21
            DataField = '5_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 4
          end
          object DBEdit25: TDBEdit
            Left = 16
            Top = 167
            Width = 38
            Height = 21
            DataField = '7_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit26: TDBEdit
            Left = 16
            Top = 192
            Width = 38
            Height = 21
            DataField = '8_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 6
          end
          object DBEdit27: TDBEdit
            Left = 16
            Top = 218
            Width = 38
            Height = 21
            DataField = '9_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 7
          end
          object DBEdit28: TDBEdit
            Left = 16
            Top = 243
            Width = 38
            Height = 21
            DataField = '10_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 8
          end
          object DBEdit29: TDBEdit
            Left = 16
            Top = 268
            Width = 38
            Height = 21
            DataField = '11_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 9
          end
          object DBEdit30: TDBEdit
            Left = 16
            Top = 293
            Width = 38
            Height = 21
            DataField = '12_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 10
          end
          object DBEdit31: TDBEdit
            Left = 16
            Top = 344
            Width = 38
            Height = 21
            DataField = '14_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 11
          end
          object DBEdit32: TDBEdit
            Left = 16
            Top = 319
            Width = 38
            Height = 21
            DataField = '13_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 30
          end
          object DBEdit33: TDBEdit
            Left = 16
            Top = 369
            Width = 38
            Height = 21
            DataField = '15_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 31
          end
          object DBEdit34: TDBEdit
            Left = 16
            Top = 395
            Width = 38
            Height = 21
            DataField = '16_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 32
          end
          object DBEdit35: TDBEdit
            Left = 16
            Top = 420
            Width = 38
            Height = 21
            DataField = '17_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 33
          end
          object DBEdit36: TDBEdit
            Left = 16
            Top = 445
            Width = 38
            Height = 21
            DataField = '18_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 34
          end
          object DBEdit37: TDBEdit
            Left = 16
            Top = 471
            Width = 38
            Height = 21
            DataField = '19_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 35
          end
          object SpinButton1: TSpinButton
            Left = 54
            Top = 41
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 36
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton1DownClick
            OnUpClick = SpinButton1UpClick
          end
          object DBCheckBox1: TDBCheckBox
            Left = 179
            Top = 43
            Width = 24
            Height = 17
            Caption = 'T'
            DataField = '1_2'
            DataSource = dm.DSTOS
            TabOrder = 37
          end
          object DBCheckBox2: TDBCheckBox
            Left = 211
            Top = 43
            Width = 24
            Height = 17
            Caption = 'F'
            DataField = '1_3'
            DataSource = dm.DSTOS
            TabOrder = 38
          end
          object DBCheckBox3: TDBCheckBox
            Left = 243
            Top = 43
            Width = 28
            Height = 17
            Caption = 'M'
            DataField = '1_4'
            DataSource = dm.DSTOS
            TabOrder = 39
          end
          object DBEdit39: TDBEdit
            Left = 352
            Top = 41
            Width = 89
            Height = 21
            DataField = '1_5'
            DataSource = dm.DSTOS
            TabOrder = 12
            OnExit = DBEdit39Exit
            OnKeyPress = DBEdit39KeyPress
          end
          object DBEdit40: TDBEdit
            Left = 352
            Top = 66
            Width = 89
            Height = 21
            DataField = '2_5'
            DataSource = dm.DSTOS
            TabOrder = 13
            OnExit = DBEdit40Exit
            OnKeyPress = DBEdit40KeyPress
          end
          object DBEdit41: TDBEdit
            Left = 352
            Top = 91
            Width = 89
            Height = 21
            DataField = '3_5'
            DataSource = dm.DSTOS
            TabOrder = 14
            OnExit = DBEdit41Exit
            OnKeyPress = DBEdit41KeyPress
          end
          object DBEdit42: TDBEdit
            Left = 352
            Top = 116
            Width = 89
            Height = 21
            DataField = '4_5'
            DataSource = dm.DSTOS
            TabOrder = 15
            OnExit = DBEdit42Exit
            OnKeyPress = DBEdit42KeyPress
          end
          object DBEdit43: TDBEdit
            Left = 352
            Top = 142
            Width = 89
            Height = 21
            DataField = '5_5'
            DataSource = dm.DSTOS
            TabOrder = 16
            OnExit = DBEdit43Exit
            OnKeyPress = DBEdit43KeyPress
          end
          object DBEdit44: TDBEdit
            Left = 352
            Top = 167
            Width = 89
            Height = 21
            DataField = '7_5'
            DataSource = dm.DSTOS
            TabOrder = 17
            OnExit = DBEdit44Exit
            OnKeyPress = DBEdit44KeyPress
          end
          object DBEdit45: TDBEdit
            Left = 352
            Top = 192
            Width = 89
            Height = 21
            DataField = '8_5'
            DataSource = dm.DSTOS
            TabOrder = 18
            OnExit = DBEdit45Exit
            OnKeyPress = DBEdit45KeyPress
          end
          object DBEdit46: TDBEdit
            Left = 352
            Top = 218
            Width = 89
            Height = 21
            DataField = '9_5'
            DataSource = dm.DSTOS
            TabOrder = 19
            OnExit = DBEdit46Exit
            OnKeyPress = DBEdit46KeyPress
          end
          object DBEdit47: TDBEdit
            Left = 352
            Top = 243
            Width = 89
            Height = 21
            DataField = '10_5'
            DataSource = dm.DSTOS
            TabOrder = 20
            OnExit = DBEdit47Exit
            OnKeyPress = DBEdit47KeyPress
          end
          object DBEdit48: TDBEdit
            Left = 352
            Top = 268
            Width = 89
            Height = 21
            DataField = '11_5'
            DataSource = dm.DSTOS
            TabOrder = 21
            OnExit = DBEdit48Exit
            OnKeyPress = DBEdit48KeyPress
          end
          object DBEdit49: TDBEdit
            Left = 352
            Top = 293
            Width = 89
            Height = 21
            DataField = '12_5'
            DataSource = dm.DSTOS
            TabOrder = 22
            OnExit = DBEdit49Exit
            OnKeyPress = DBEdit49KeyPress
          end
          object DBEdit50: TDBEdit
            Left = 352
            Top = 319
            Width = 89
            Height = 21
            DataField = '13_5'
            DataSource = dm.DSTOS
            TabOrder = 23
            OnExit = DBEdit50Exit
            OnKeyPress = DBEdit50KeyPress
          end
          object DBEdit51: TDBEdit
            Left = 352
            Top = 344
            Width = 89
            Height = 21
            DataField = '14_5'
            DataSource = dm.DSTOS
            TabOrder = 24
            OnExit = DBEdit51Exit
            OnKeyPress = DBEdit51KeyPress
          end
          object DBEdit52: TDBEdit
            Left = 352
            Top = 369
            Width = 89
            Height = 21
            DataField = '15_5'
            DataSource = dm.DSTOS
            TabOrder = 25
            OnExit = DBEdit52Exit
            OnKeyPress = DBEdit52KeyPress
          end
          object DBEdit53: TDBEdit
            Left = 352
            Top = 395
            Width = 89
            Height = 21
            DataField = '16_5'
            DataSource = dm.DSTOS
            TabOrder = 26
            OnExit = DBEdit53Exit
            OnKeyPress = DBEdit53KeyPress
          end
          object DBEdit54: TDBEdit
            Left = 352
            Top = 420
            Width = 89
            Height = 21
            DataField = '17_5'
            DataSource = dm.DSTOS
            TabOrder = 27
            OnExit = DBEdit54Exit
            OnKeyPress = DBEdit54KeyPress
          end
          object DBEdit55: TDBEdit
            Left = 352
            Top = 445
            Width = 89
            Height = 21
            DataField = '18_5'
            DataSource = dm.DSTOS
            TabOrder = 28
            OnExit = DBEdit55Exit
            OnKeyPress = DBEdit55KeyPress
          end
          object DBEdit56: TDBEdit
            Left = 352
            Top = 471
            Width = 89
            Height = 21
            DataField = '19_5'
            DataSource = dm.DSTOS
            TabOrder = 29
            OnExit = DBEdit56Exit
            OnKeyPress = DBEdit56KeyPress
          end
          object SpinButton2: TSpinButton
            Left = 54
            Top = 66
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 40
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton2DownClick
            OnUpClick = SpinButton2UpClick
          end
          object SpinButton3: TSpinButton
            Left = 54
            Top = 91
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 41
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton3DownClick
            OnUpClick = SpinButton3UpClick
          end
          object SpinButton4: TSpinButton
            Left = 54
            Top = 116
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 42
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton4DownClick
            OnUpClick = SpinButton4UpClick
          end
          object SpinButton5: TSpinButton
            Left = 54
            Top = 142
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 43
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton5DownClick
            OnUpClick = SpinButton5UpClick
          end
          object SpinButton6: TSpinButton
            Left = 54
            Top = 167
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 44
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton6DownClick
            OnUpClick = SpinButton6UpClick
          end
          object SpinButton7: TSpinButton
            Left = 54
            Top = 192
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 45
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton7DownClick
            OnUpClick = SpinButton7UpClick
          end
          object SpinButton8: TSpinButton
            Left = 54
            Top = 218
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 46
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton8DownClick
            OnUpClick = SpinButton8UpClick
          end
          object SpinButton9: TSpinButton
            Left = 54
            Top = 243
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 47
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton9DownClick
            OnUpClick = SpinButton9UpClick
          end
          object SpinButton10: TSpinButton
            Left = 54
            Top = 268
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 48
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton10DownClick
            OnUpClick = SpinButton10UpClick
          end
          object SpinButton11: TSpinButton
            Left = 54
            Top = 293
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 49
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton11DownClick
            OnUpClick = SpinButton11UpClick
          end
          object SpinButton12: TSpinButton
            Left = 54
            Top = 319
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 50
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton12DownClick
            OnUpClick = SpinButton12UpClick
          end
          object SpinButton13: TSpinButton
            Left = 54
            Top = 344
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 51
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton13DownClick
            OnUpClick = SpinButton13UpClick
          end
          object SpinButton14: TSpinButton
            Left = 54
            Top = 369
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 52
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton14DownClick
            OnUpClick = SpinButton14UpClick
          end
          object SpinButton15: TSpinButton
            Left = 54
            Top = 395
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 53
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton15DownClick
            OnUpClick = SpinButton15UpClick
          end
          object SpinButton16: TSpinButton
            Left = 54
            Top = 420
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 54
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton16DownClick
            OnUpClick = SpinButton16UpClick
          end
          object SpinButton17: TSpinButton
            Left = 54
            Top = 445
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 55
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton17DownClick
            OnUpClick = SpinButton17UpClick
          end
          object SpinButton18: TSpinButton
            Left = 54
            Top = 471
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 56
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton18DownClick
            OnUpClick = SpinButton18UpClick
          end
          object DBCheckBox4: TDBCheckBox
            Left = 179
            Top = 68
            Width = 97
            Height = 17
            Caption = 'CONFERIR'
            DataField = '2_2'
            DataSource = dm.DSTOS
            TabOrder = 57
          end
          object DBCheckBox5: TDBCheckBox
            Left = 179
            Top = 93
            Width = 97
            Height = 17
            Caption = 'REC. LATERAL'
            DataField = '3_2'
            DataSource = dm.DSTOS
            TabOrder = 58
          end
          object DBCheckBox6: TDBCheckBox
            Left = 179
            Top = 118
            Width = 97
            Height = 17
            Caption = 'REC. PONTA'
            DataField = '4_2'
            DataSource = dm.DSTOS
            TabOrder = 59
          end
          object DBCheckBox7: TDBCheckBox
            Left = 179
            Top = 144
            Width = 97
            Height = 17
            Caption = 'GAXETA'
            DataField = '5_2'
            DataSource = dm.DSTOS
            TabOrder = 60
          end
          object DBCheckBox8: TDBCheckBox
            Left = 179
            Top = 169
            Width = 97
            Height = 17
            Caption = 'R'
            DataField = '7_2'
            DataSource = dm.DSTOS
            TabOrder = 61
          end
          object DBCheckBox9: TDBCheckBox
            Left = 211
            Top = 169
            Width = 26
            Height = 17
            Caption = 'C'
            DataField = '7_3'
            DataSource = dm.DSTOS
            TabOrder = 62
          end
          object DBCheckBox10: TDBCheckBox
            Left = 243
            Top = 169
            Width = 33
            Height = 17
            Caption = 'E'
            DataField = '7_4'
            DataSource = dm.DSTOS
            TabOrder = 63
          end
          object DBCheckBox11: TDBCheckBox
            Left = 179
            Top = 194
            Width = 97
            Height = 17
            Caption = 'A'
            DataField = '8_2'
            DataSource = dm.DSTOS
            TabOrder = 64
          end
          object DBCheckBox12: TDBCheckBox
            Left = 211
            Top = 194
            Width = 26
            Height = 17
            Caption = 'C'
            DataField = '8_3'
            DataSource = dm.DSTOS
            TabOrder = 65
          end
          object DBCheckBox13: TDBCheckBox
            Left = 243
            Top = 194
            Width = 33
            Height = 17
            Caption = 'R'
            DataField = '8_4'
            DataSource = dm.DSTOS
            TabOrder = 66
          end
          object DBCheckBox14: TDBCheckBox
            Left = 179
            Top = 220
            Width = 97
            Height = 17
            Caption = 'R'
            DataField = '9_2'
            DataSource = dm.DSTOS
            TabOrder = 67
          end
          object DBCheckBox15: TDBCheckBox
            Left = 211
            Top = 220
            Width = 97
            Height = 17
            Caption = 'C'
            DataField = '9_3'
            DataSource = dm.DSTOS
            TabOrder = 68
          end
          object DBCheckBox16: TDBCheckBox
            Left = 243
            Top = 220
            Width = 97
            Height = 17
            Caption = 'BUCHA'
            DataField = '9_4'
            DataSource = dm.DSTOS
            TabOrder = 69
          end
          object DBCheckBox17: TDBCheckBox
            Left = 179
            Top = 245
            Width = 97
            Height = 17
            Caption = 'R'
            DataField = '10_2'
            DataSource = dm.DSTOS
            TabOrder = 70
          end
          object DBCheckBox18: TDBCheckBox
            Left = 211
            Top = 245
            Width = 38
            Height = 17
            Caption = 'C'
            DataField = '10_3'
            DataSource = dm.DSTOS
            TabOrder = 71
          end
          object DBCheckBox19: TDBCheckBox
            Left = 243
            Top = 245
            Width = 33
            Height = 17
            Caption = 'P'
            DataField = '10_4'
            DataSource = dm.DSTOS
            TabOrder = 72
          end
          object DBCheckBox20: TDBCheckBox
            Left = 179
            Top = 270
            Width = 97
            Height = 17
            Caption = 'SOLDA'
            DataField = '11_2'
            DataSource = dm.DSTOS
            TabOrder = 73
          end
          object DBCheckBox21: TDBCheckBox
            Left = 179
            Top = 321
            Width = 97
            Height = 17
            Caption = 'R'
            DataField = '13_2'
            DataSource = dm.DSTOS
            TabOrder = 74
          end
          object DBCheckBox22: TDBCheckBox
            Left = 211
            Top = 321
            Width = 26
            Height = 17
            Caption = 'T'
            DataField = '13_3'
            DataSource = dm.DSTOS
            TabOrder = 75
          end
          object DBCheckBox23: TDBCheckBox
            Left = 243
            Top = 321
            Width = 28
            Height = 17
            Caption = 'E'
            DataField = '13_4'
            DataSource = dm.DSTOS
            TabOrder = 76
          end
          object DBCheckBox24: TDBCheckBox
            Left = 179
            Top = 346
            Width = 97
            Height = 17
            Caption = 'T'
            DataField = '14_2'
            DataSource = dm.DSTOS
            TabOrder = 77
          end
          object DBCheckBox25: TDBCheckBox
            Left = 211
            Top = 346
            Width = 97
            Height = 17
            Caption = 'C'
            DataField = '14_3'
            DataSource = dm.DSTOS
            TabOrder = 78
          end
          object DBCheckBox26: TDBCheckBox
            Left = 243
            Top = 346
            Width = 97
            Height = 17
            Caption = 'GUIAS'
            DataField = '14_4'
            DataSource = dm.DSTOS
            TabOrder = 79
          end
          object DBCheckBox27: TDBCheckBox
            Left = 179
            Top = 371
            Width = 97
            Height = 17
            Caption = 'R'
            DataField = '15_2'
            DataSource = dm.DSTOS
            TabOrder = 80
          end
          object DBCheckBox28: TDBCheckBox
            Left = 211
            Top = 371
            Width = 97
            Height = 17
            Caption = 'C'
            DataField = '15_3'
            DataSource = dm.DSTOS
            TabOrder = 81
          end
          object DBCheckBox29: TDBCheckBox
            Left = 243
            Top = 371
            Width = 97
            Height = 17
            Caption = 'FACE'
            DataField = '15_4'
            DataSource = dm.DSTOS
            TabOrder = 82
          end
          object DBCheckBox30: TDBCheckBox
            Left = 179
            Top = 397
            Width = 97
            Height = 17
            Caption = 'TESTE TRINCO'
            DataField = '16_2'
            DataSource = dm.DSTOS
            TabOrder = 83
          end
          object DBCheckBox31: TDBCheckBox
            Left = 179
            Top = 422
            Width = 129
            Height = 17
            Caption = 'DESCARBONIZAR'
            DataField = '17_2'
            DataSource = dm.DSTOS
            TabOrder = 84
          end
          object DBCheckBox32: TDBCheckBox
            Left = 179
            Top = 447
            Width = 150
            Height = 17
            Caption = 'ESMERILHAR/MONTAR'
            DataField = '18_2'
            DataSource = dm.DSTOS
            TabOrder = 85
          end
          object DBCheckBox33: TDBCheckBox
            Left = 179
            Top = 473
            Width = 97
            Height = 17
            Caption = 'R'
            DataField = '19_2'
            DataSource = dm.DSTOS
            TabOrder = 86
          end
          object DBCheckBox34: TDBCheckBox
            Left = 211
            Top = 473
            Width = 97
            Height = 17
            Caption = 'C'
            DataField = '19_3'
            DataSource = dm.DSTOS
            TabOrder = 87
          end
          object DBCheckBox35: TDBCheckBox
            Left = 243
            Top = 473
            Width = 97
            Height = 17
            Caption = 'E'
            DataField = '19_4'
            DataSource = dm.DSTOS
            TabOrder = 88
          end
        end
      end
      object TTabPage
        Left = 4
        Top = 24
        Caption = 'Componentes 2'
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 464
          Height = 511
          Align = alClient
          BevelKind = bkFlat
          BevelOuter = bvNone
          TabOrder = 0
          object Shape77: TShape
            Left = 12
            Top = 12
            Width = 63
            Height = 27
            Brush.Color = clSilver
          end
          object Shape78: TShape
            Left = 74
            Top = 12
            Width = 100
            Height = 27
            Brush.Color = clSilver
          end
          object Shape79: TShape
            Left = 173
            Top = 12
            Width = 176
            Height = 27
            Brush.Color = clSilver
          end
          object Shape80: TShape
            Left = 348
            Top = 12
            Width = 97
            Height = 27
            Brush.Color = clSilver
          end
          object Label61: TLabel
            Left = 35
            Top = 17
            Width = 16
            Height = 16
            Caption = 'QT'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label62: TLabel
            Left = 79
            Top = 17
            Width = 90
            Height = 16
            Caption = 'COMPONENTES'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label63: TLabel
            Left = 185
            Top = 17
            Width = 152
            Height = 16
            Caption = 'SERVI'#199'OS SOLICITADOS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label64: TLabel
            Left = 374
            Top = 17
            Width = 44
            Height = 16
            Caption = 'VALOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Shape83: TShape
            Left = 12
            Top = 88
            Width = 63
            Height = 27
          end
          object Shape84: TShape
            Left = 12
            Top = 113
            Width = 63
            Height = 27
          end
          object Shape85: TShape
            Left = 12
            Top = 139
            Width = 63
            Height = 27
          end
          object Shape86: TShape
            Left = 12
            Top = 164
            Width = 63
            Height = 27
          end
          object Shape88: TShape
            Left = 12
            Top = 214
            Width = 63
            Height = 27
          end
          object Shape89: TShape
            Left = 12
            Top = 240
            Width = 63
            Height = 27
          end
          object Shape90: TShape
            Left = 12
            Top = 265
            Width = 63
            Height = 27
          end
          object Shape91: TShape
            Left = 12
            Top = 290
            Width = 63
            Height = 27
          end
          object Shape92: TShape
            Left = 12
            Top = 316
            Width = 63
            Height = 27
          end
          object Shape107: TShape
            Left = 74
            Top = 139
            Width = 100
            Height = 27
          end
          object Shape112: TShape
            Left = 173
            Top = 88
            Width = 176
            Height = 27
          end
          object Shape115: TShape
            Left = 74
            Top = 38
            Width = 100
            Height = 27
          end
          object Shape116: TShape
            Left = 173
            Top = 38
            Width = 176
            Height = 27
          end
          object Shape117: TShape
            Left = 348
            Top = 38
            Width = 97
            Height = 27
          end
          object Shape125: TShape
            Left = 348
            Top = 88
            Width = 97
            Height = 27
          end
          object Shape126: TShape
            Left = 348
            Top = 113
            Width = 97
            Height = 27
          end
          object Shape127: TShape
            Left = 348
            Top = 139
            Width = 97
            Height = 27
          end
          object Shape128: TShape
            Left = 348
            Top = 164
            Width = 97
            Height = 27
          end
          object Shape129: TShape
            Left = 348
            Top = 189
            Width = 97
            Height = 27
          end
          object Shape130: TShape
            Left = 348
            Top = 215
            Width = 97
            Height = 27
          end
          object Shape81: TShape
            Left = 12
            Top = 38
            Width = 63
            Height = 27
          end
          object Shape82: TShape
            Left = 12
            Top = 63
            Width = 63
            Height = 27
          end
          object Shape111: TShape
            Left = 74
            Top = 88
            Width = 100
            Height = 27
          end
          object Shape113: TShape
            Left = 74
            Top = 63
            Width = 100
            Height = 27
          end
          object Shape114: TShape
            Left = 173
            Top = 63
            Width = 176
            Height = 27
          end
          object Shape109: TShape
            Left = 74
            Top = 113
            Width = 100
            Height = 27
          end
          object Shape105: TShape
            Left = 74
            Top = 164
            Width = 100
            Height = 27
          end
          object Shape103: TShape
            Left = 74
            Top = 189
            Width = 100
            Height = 27
          end
          object Shape101: TShape
            Left = 74
            Top = 215
            Width = 100
            Height = 27
          end
          object Shape87: TShape
            Left = 12
            Top = 189
            Width = 63
            Height = 27
          end
          object Shape99: TShape
            Left = 74
            Top = 240
            Width = 100
            Height = 27
          end
          object Shape95: TShape
            Left = 74
            Top = 265
            Width = 100
            Height = 27
          end
          object Shape94: TShape
            Left = 74
            Top = 290
            Width = 100
            Height = 27
          end
          object Shape93: TShape
            Left = 74
            Top = 316
            Width = 100
            Height = 27
          end
          object Shape110: TShape
            Left = 173
            Top = 113
            Width = 176
            Height = 27
          end
          object Shape108: TShape
            Left = 173
            Top = 139
            Width = 176
            Height = 27
          end
          object Shape106: TShape
            Left = 173
            Top = 164
            Width = 176
            Height = 27
          end
          object Shape104: TShape
            Left = 173
            Top = 189
            Width = 176
            Height = 27
          end
          object Shape102: TShape
            Left = 173
            Top = 215
            Width = 176
            Height = 27
          end
          object Shape100: TShape
            Left = 173
            Top = 240
            Width = 176
            Height = 27
          end
          object Shape98: TShape
            Left = 173
            Top = 265
            Width = 176
            Height = 27
          end
          object Shape96: TShape
            Left = 173
            Top = 290
            Width = 176
            Height = 27
          end
          object Shape97: TShape
            Left = 173
            Top = 316
            Width = 176
            Height = 27
          end
          object Shape118: TShape
            Left = 348
            Top = 240
            Width = 97
            Height = 27
          end
          object Shape119: TShape
            Left = 348
            Top = 265
            Width = 97
            Height = 27
          end
          object Shape120: TShape
            Left = 348
            Top = 290
            Width = 97
            Height = 27
          end
          object Shape121: TShape
            Left = 348
            Top = 316
            Width = 97
            Height = 27
          end
          object Shape124: TShape
            Left = 348
            Top = 63
            Width = 97
            Height = 27
          end
          object Label65: TLabel
            Left = 81
            Top = 44
            Width = 34
            Height = 13
            Caption = 'BIELAS'
          end
          object Label66: TLabel
            Left = 81
            Top = 69
            Width = 12
            Height = 13
            Caption = 'N'#186
          end
          object Label67: TLabel
            Left = 81
            Top = 94
            Width = 42
            Height = 13
            Caption = 'PIST'#213'ES'
          end
          object Label68: TLabel
            Left = 81
            Top = 120
            Width = 31
            Height = 13
            Caption = 'PINOS'
          end
          object Label69: TLabel
            Left = 81
            Top = 145
            Width = 52
            Height = 13
            Caption = 'COMANDO'
          end
          object Label70: TLabel
            Left = 81
            Top = 170
            Width = 68
            Height = 13
            Caption = 'ENGRENAGEM'
          end
          object Label71: TLabel
            Left = 81
            Top = 196
            Width = 69
            Height = 13
            Caption = 'COMPRESSOR'
          end
          object Label72: TLabel
            Left = 81
            Top = 221
            Width = 45
            Height = 13
            Caption = 'VOLANTE'
          end
          object Label73: TLabel
            Left = 81
            Top = 246
            Width = 60
            Height = 13
            Caption = 'PARAFUSOS'
          end
          object Label74: TLabel
            Left = 81
            Top = 272
            Width = 39
            Height = 13
            Caption = 'PLATOR'
          end
          object Label75: TLabel
            Left = 81
            Top = 297
            Width = 60
            Height = 13
            Caption = 'PARAFUSOS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label76: TLabel
            Left = 81
            Top = 323
            Width = 30
            Height = 13
            Caption = 'POLIA'
          end
          object Label77: TLabel
            Left = 179
            Top = 171
            Width = 42
            Height = 13
            Caption = 'OUTROS'
          end
          object Label78: TLabel
            Left = 180
            Top = 246
            Width = 42
            Height = 13
            Caption = 'OUTROS'
          end
          object Label79: TLabel
            Left = 180
            Top = 297
            Width = 42
            Height = 13
            Caption = 'OUTROS'
          end
          object DBEdit38: TDBEdit
            Left = 16
            Top = 41
            Width = 38
            Height = 21
            DataField = '21_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit57: TDBEdit
            Left = 16
            Top = 66
            Width = 38
            Height = 21
            DataField = '22_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit58: TDBEdit
            Left = 16
            Top = 91
            Width = 38
            Height = 21
            DataField = '23_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 2
          end
          object DBEdit59: TDBEdit
            Left = 16
            Top = 116
            Width = 38
            Height = 21
            DataField = '24_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 3
          end
          object DBEdit60: TDBEdit
            Left = 16
            Top = 142
            Width = 38
            Height = 21
            DataField = '26_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 4
          end
          object DBEdit61: TDBEdit
            Left = 16
            Top = 167
            Width = 38
            Height = 21
            DataField = '27_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit62: TDBEdit
            Left = 16
            Top = 192
            Width = 38
            Height = 21
            DataField = '28_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 6
          end
          object DBEdit63: TDBEdit
            Left = 16
            Top = 217
            Width = 38
            Height = 21
            DataField = '29_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 7
          end
          object DBEdit64: TDBEdit
            Left = 16
            Top = 243
            Width = 38
            Height = 21
            DataField = '30_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 8
          end
          object DBEdit65: TDBEdit
            Left = 16
            Top = 268
            Width = 38
            Height = 21
            DataField = '31_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 9
          end
          object DBEdit66: TDBEdit
            Left = 16
            Top = 293
            Width = 38
            Height = 21
            DataField = '32_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 10
          end
          object DBEdit67: TDBEdit
            Left = 16
            Top = 319
            Width = 38
            Height = 21
            DataField = '33_1'
            DataSource = dm.DSTOS
            ReadOnly = True
            TabOrder = 11
          end
          object DBEdit68: TDBEdit
            Left = 352
            Top = 41
            Width = 89
            Height = 21
            DataField = '21_5'
            DataSource = dm.DSTOS
            TabOrder = 19
            OnExit = DBEdit68Exit
            OnKeyPress = DBEdit68KeyPress
          end
          object DBEdit69: TDBEdit
            Left = 352
            Top = 66
            Width = 89
            Height = 21
            DataField = '22_5'
            DataSource = dm.DSTOS
            TabOrder = 21
            OnExit = DBEdit69Exit
            OnKeyPress = DBEdit69KeyPress
          end
          object DBEdit70: TDBEdit
            Left = 352
            Top = 91
            Width = 89
            Height = 21
            DataField = '23_5'
            DataSource = dm.DSTOS
            TabOrder = 23
            OnExit = DBEdit70Exit
            OnKeyPress = DBEdit70KeyPress
          end
          object DBEdit71: TDBEdit
            Left = 352
            Top = 116
            Width = 89
            Height = 21
            DataField = '24_5'
            DataSource = dm.DSTOS
            TabOrder = 25
            OnExit = DBEdit71Exit
            OnKeyPress = DBEdit71KeyPress
          end
          object DBEdit72: TDBEdit
            Left = 352
            Top = 142
            Width = 89
            Height = 21
            DataField = '26_5'
            DataSource = dm.DSTOS
            TabOrder = 27
            OnExit = DBEdit72Exit
            OnKeyPress = DBEdit72KeyPress
          end
          object DBEdit73: TDBEdit
            Left = 352
            Top = 167
            Width = 89
            Height = 21
            DataField = '27_5'
            DataSource = dm.DSTOS
            TabOrder = 29
            OnExit = DBEdit73Exit
            OnKeyPress = DBEdit73KeyPress
          end
          object DBEdit74: TDBEdit
            Left = 352
            Top = 192
            Width = 89
            Height = 21
            DataField = '28_5'
            DataSource = dm.DSTOS
            TabOrder = 31
            OnExit = DBEdit74Exit
            OnKeyPress = DBEdit74KeyPress
          end
          object DBEdit75: TDBEdit
            Left = 352
            Top = 218
            Width = 89
            Height = 21
            DataField = '29_5'
            DataSource = dm.DSTOS
            TabOrder = 33
            OnExit = DBEdit75Exit
            OnKeyPress = DBEdit75KeyPress
          end
          object DBEdit76: TDBEdit
            Left = 352
            Top = 243
            Width = 89
            Height = 21
            DataField = '30_5'
            DataSource = dm.DSTOS
            TabOrder = 35
            OnExit = DBEdit76Exit
            OnKeyPress = DBEdit76KeyPress
          end
          object DBEdit77: TDBEdit
            Left = 352
            Top = 268
            Width = 89
            Height = 21
            DataField = '31_5'
            DataSource = dm.DSTOS
            TabOrder = 37
            OnExit = DBEdit77Exit
            OnKeyPress = DBEdit77KeyPress
          end
          object DBEdit78: TDBEdit
            Left = 352
            Top = 293
            Width = 89
            Height = 21
            DataField = '32_5'
            DataSource = dm.DSTOS
            TabOrder = 39
            OnExit = DBEdit78Exit
            OnKeyPress = DBEdit78KeyPress
          end
          object DBEdit79: TDBEdit
            Left = 352
            Top = 319
            Width = 89
            Height = 21
            DataField = '33_5'
            DataSource = dm.DSTOS
            TabOrder = 41
            OnExit = DBEdit79Exit
            OnKeyPress = DBEdit79KeyPress
          end
          object SpinButton19: TSpinButton
            Left = 54
            Top = 41
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 12
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton19DownClick
            OnUpClick = SpinButton19UpClick
          end
          object SpinButton20: TSpinButton
            Left = 54
            Top = 66
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 13
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton20DownClick
            OnUpClick = SpinButton20UpClick
          end
          object SpinButton21: TSpinButton
            Left = 54
            Top = 91
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 14
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton21DownClick
            OnUpClick = SpinButton21UpClick
          end
          object SpinButton22: TSpinButton
            Left = 54
            Top = 116
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 15
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton22DownClick
            OnUpClick = SpinButton22UpClick
          end
          object SpinButton23: TSpinButton
            Left = 54
            Top = 142
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 16
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton23DownClick
            OnUpClick = SpinButton23UpClick
          end
          object SpinButton24: TSpinButton
            Left = 54
            Top = 167
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 17
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton24DownClick
            OnUpClick = SpinButton24UpClick
          end
          object SpinButton25: TSpinButton
            Left = 54
            Top = 192
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 18
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton25DownClick
            OnUpClick = SpinButton25UpClick
          end
          object SpinButton26: TSpinButton
            Left = 54
            Top = 217
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 20
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton26DownClick
            OnUpClick = SpinButton26UpClick
          end
          object SpinButton27: TSpinButton
            Left = 54
            Top = 243
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 22
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton27DownClick
            OnUpClick = SpinButton27UpClick
          end
          object SpinButton28: TSpinButton
            Left = 54
            Top = 268
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 24
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton28DownClick
            OnUpClick = SpinButton28UpClick
          end
          object SpinButton29: TSpinButton
            Left = 54
            Top = 293
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 26
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton29DownClick
            OnUpClick = SpinButton29UpClick
          end
          object SpinButton30: TSpinButton
            Left = 54
            Top = 319
            Width = 20
            Height = 21
            DownGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000008080000080800000808000000000000080800000808000008080000080
              8000008080000080800000808000000000000000000000000000008080000080
              8000008080000080800000808000000000000000000000000000000000000000
              0000008080000080800000808000000000000000000000000000000000000000
              0000000000000000000000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            TabOrder = 28
            UpGlyph.Data = {
              0E010000424D0E01000000000000360000002800000009000000060000000100
              200000000000D800000000000000000000000000000000000000008080000080
              8000008080000080800000808000008080000080800000808000008080000080
              8000000000000000000000000000000000000000000000000000000000000080
              8000008080000080800000000000000000000000000000000000000000000080
              8000008080000080800000808000008080000000000000000000000000000080
              8000008080000080800000808000008080000080800000808000000000000080
              8000008080000080800000808000008080000080800000808000008080000080
              800000808000008080000080800000808000}
            OnDownClick = SpinButton30DownClick
            OnUpClick = SpinButton30UpClick
          end
          object DBCheckBox36: TDBCheckBox
            Left = 179
            Top = 43
            Width = 97
            Height = 17
            Caption = 'R'
            DataField = '21_2'
            DataSource = dm.DSTOS
            TabOrder = 30
          end
          object DBCheckBox37: TDBCheckBox
            Left = 211
            Top = 43
            Width = 97
            Height = 17
            Caption = 'C'
            DataField = '21_3'
            DataSource = dm.DSTOS
            TabOrder = 32
          end
          object DBCheckBox38: TDBCheckBox
            Left = 243
            Top = 43
            Width = 97
            Height = 17
            Caption = 'FERRO'
            DataField = '21_4'
            DataSource = dm.DSTOS
            TabOrder = 34
          end
          object DBCheckBox39: TDBCheckBox
            Left = 179
            Top = 68
            Width = 97
            Height = 17
            Caption = 'R'
            DataField = '22_2'
            DataSource = dm.DSTOS
            TabOrder = 36
          end
          object DBCheckBox40: TDBCheckBox
            Left = 211
            Top = 68
            Width = 97
            Height = 17
            Caption = 'C'
            DataField = '22_3'
            DataSource = dm.DSTOS
            TabOrder = 38
          end
          object DBCheckBox41: TDBCheckBox
            Left = 243
            Top = 68
            Width = 97
            Height = 17
            Caption = 'BUCHA'
            DataField = '22_4'
            DataSource = dm.DSTOS
            TabOrder = 40
          end
          object DBCheckBox42: TDBCheckBox
            Left = 179
            Top = 93
            Width = 129
            Height = 17
            Caption = 'MONTAR PIST'#213'ES'
            DataField = '23_2'
            DataSource = dm.DSTOS
            TabOrder = 42
          end
          object DBCheckBox43: TDBCheckBox
            Left = 179
            Top = 144
            Width = 97
            Height = 17
            Caption = 'R'
            DataField = '26_2'
            DataSource = dm.DSTOS
            TabOrder = 43
          end
          object DBCheckBox44: TDBCheckBox
            Left = 211
            Top = 144
            Width = 97
            Height = 17
            Caption = 'C'
            DataField = '26_3'
            DataSource = dm.DSTOS
            TabOrder = 44
          end
          object DBCheckBox45: TDBCheckBox
            Left = 243
            Top = 144
            Width = 97
            Height = 17
            Caption = 'T'
            DataField = '26_4'
            DataSource = dm.DSTOS
            TabOrder = 45
          end
          object DBCheckBox46: TDBCheckBox
            Left = 179
            Top = 194
            Width = 97
            Height = 17
            Caption = 'B'
            DataField = '28_2'
            DataSource = dm.DSTOS
            TabOrder = 46
          end
          object DBCheckBox47: TDBCheckBox
            Left = 211
            Top = 194
            Width = 97
            Height = 17
            Caption = 'R'
            DataField = '28_3'
            DataSource = dm.DSTOS
            TabOrder = 47
          end
          object DBCheckBox48: TDBCheckBox
            Left = 243
            Top = 194
            Width = 97
            Height = 17
            Caption = 'C'
            DataField = '28_4'
            DataSource = dm.DSTOS
            TabOrder = 48
          end
          object DBCheckBox49: TDBCheckBox
            Left = 179
            Top = 220
            Width = 97
            Height = 17
            Caption = 'B'
            DataField = '29_2'
            DataSource = dm.DSTOS
            TabOrder = 49
          end
          object DBCheckBox50: TDBCheckBox
            Left = 211
            Top = 220
            Width = 97
            Height = 17
            Caption = 'R'
            DataField = '29_3'
            DataSource = dm.DSTOS
            TabOrder = 50
          end
          object DBCheckBox51: TDBCheckBox
            Left = 243
            Top = 220
            Width = 97
            Height = 17
            Caption = 'C'
            DataField = '29_4'
            DataSource = dm.DSTOS
            TabOrder = 51
          end
          object DBCheckBox52: TDBCheckBox
            Left = 179
            Top = 270
            Width = 97
            Height = 17
            Caption = 'B'
            DataField = '31_2'
            DataSource = dm.DSTOS
            TabOrder = 52
          end
          object DBCheckBox53: TDBCheckBox
            Left = 211
            Top = 270
            Width = 97
            Height = 17
            Caption = 'R'
            DataField = '31_3'
            DataSource = dm.DSTOS
            TabOrder = 53
          end
          object DBCheckBox54: TDBCheckBox
            Left = 243
            Top = 270
            Width = 97
            Height = 17
            Caption = 'C'
            DataField = '31_4'
            DataSource = dm.DSTOS
            TabOrder = 54
          end
          object DBCheckBox55: TDBCheckBox
            Left = 179
            Top = 321
            Width = 97
            Height = 17
            Caption = 'B'
            DataField = '33_2'
            DataSource = dm.DSTOS
            TabOrder = 55
          end
        end
      end
    end
    object Edit10: TEdit
      Left = 793
      Top = 468
      Width = 121
      Height = 21
      TabOrder = 9
      Text = 'Edit10'
      Visible = False
    end
    object Button3: TButton
      Left = 488
      Top = 480
      Width = 75
      Height = 49
      Caption = 'PEGATOTAL'
      TabOrder = 10
      Visible = False
      OnClick = Button3Click
    end
  end
  object DBGrid2: TDBGrid
    Left = 114
    Top = 70
    Width = 324
    Height = 430
    DataSource = dm.DSQClifor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    OnKeyDown = DBGrid2KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 293
        Visible = True
      end>
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    TextEncoding = AnsiEncoding
    Codepage = '1252'
    Left = 1016
    Top = 117
  end
end
