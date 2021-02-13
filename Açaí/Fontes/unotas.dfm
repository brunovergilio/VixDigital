object FNotas: TFNotas
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Smart Commerce - Emiss'#227'o de Or'#231'amentos'
  ClientHeight = 617
  ClientWidth = 1070
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
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
      object Label7: TLabel
        Left = 734
        Top = 6
        Width = 57
        Height = 13
        Caption = 'Or'#231'amento:'
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
        TabOrder = 11
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
        TabOrder = 12
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
        TabOrder = 13
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
        TabOrder = 15
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
        TabOrder = 16
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
        TabOrder = 17
        Visible = False
        OnKeyPress = DBEdit9KeyPress
      end
      object DBEdit10: TDBEdit
        Left = 612
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
        DataSource = dm.DSTORCAMENTO
        Enabled = False
        TabOrder = 18
      end
      object DBEdit7: TDBEdit
        Left = 949
        Top = 52
        Width = 60
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ESTADO'
        DataSource = dm.DSQClifor
        Enabled = False
        TabOrder = 14
        Visible = False
        OnKeyPress = DBEdit7KeyPress
      end
      object DBEdit14: TDBEdit
        Left = 938
        Top = 52
        Width = 121
        Height = 21
        CharCase = ecUpperCase
        DataField = 'GEN_ID'
        DataSource = dm.DSQGENORCAMENTO
        Enabled = False
        TabOrder = 19
        Visible = False
      end
      object DBEdit1: TDBEdit
        Left = 440
        Top = 25
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CLIENTE'
        DataSource = dm.DSTORCAMENTO
        TabOrder = 20
        Visible = False
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
        Left = 938
        Top = 52
        Width = 121
        Height = 21
        DataField = 'EMAIL'
        DataSource = dm.DSQClifor
        Enabled = False
        TabOrder = 21
        Visible = False
      end
      object DBEdit13: TDBEdit
        Left = 960
        Top = 52
        Width = 144
        Height = 21
        DataField = 'IDENTIFICADOR4'
        DataSource = dm.DSQClifor
        Enabled = False
        TabOrder = 22
        Visible = False
      end
      object DBEdit15: TDBEdit
        Left = 938
        Top = 52
        Width = 210
        Height = 21
        DataField = 'CREDITO'
        DataSource = dm.DSQClifor
        TabOrder = 23
        Visible = False
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 112
        Top = 3
        Width = 258
        Height = 21
        DataField = 'OPERACAO'
        DataSource = dm.DSTORCAMENTO
        KeyField = 'NOME'
        ListField = 'NOME'
        ListSource = dm.DSQICM
        TabOrder = 0
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 946
        Top = 52
        Width = 145
        Height = 21
        DataField = 'FORMADEPAGAMENTO'
        DataSource = dm.DSTORCAMENTO
        KeyField = 'FORMA'
        ListField = 'FORMA'
        ListSource = dm.DSQFORMAS
        TabOrder = 24
        Visible = False
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 938
        Top = 44
        Width = 145
        Height = 21
        DataField = 'PRAZODEPAGAMENTO'
        DataSource = dm.DSTORCAMENTO
        KeyField = 'PRAZO'
        ListField = 'PRAZO'
        ListSource = dm.DSQPRAZOS
        TabOrder = 25
        Visible = False
      end
      object DBEdit16: TDBEdit
        Left = 938
        Top = 25
        Width = 145
        Height = 21
        DataField = 'TIPO'
        DataSource = dm.DSQPRAZOS
        Enabled = False
        TabOrder = 26
        Visible = False
      end
      object DBEdit17: TDBEdit
        Left = 938
        Top = 25
        Width = 145
        Height = 21
        DataField = 'FATURAMENTOMINIMO'
        DataSource = dm.DSQPRAZOS
        Enabled = False
        TabOrder = 27
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
        TabOrder = 28
      end
      object DBEdit19: TDBEdit
        Left = 938
        Top = 48
        Width = 121
        Height = 21
        DataField = 'CONVENIO'
        DataSource = dm.DSQClifor
        Enabled = False
        TabOrder = 29
        Visible = False
      end
      object Memo1: TMemo
        Left = 112
        Top = 97
        Width = 802
        Height = 37
        TabOrder = 30
      end
      object Edit11: TEdit
        Left = 112
        Top = 73
        Width = 121
        Height = 21
        TabOrder = 6
        Text = 'Edit11'
      end
      object Edit12: TEdit
        Left = 292
        Top = 73
        Width = 144
        Height = 21
        TabOrder = 7
        Text = 'Edit12'
      end
      object Edit13: TEdit
        Left = 494
        Top = 73
        Width = 69
        Height = 21
        TabOrder = 8
        Text = 'Edit13'
      end
      object Edit16: TEdit
        Left = 612
        Top = 73
        Width = 121
        Height = 21
        TabOrder = 9
        Text = 'Edit16'
      end
      object Edit17: TEdit
        Left = 793
        Top = 73
        Width = 121
        Height = 21
        TabOrder = 10
        Text = 'Edit17'
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
  object Panel2: TPanel
    Left = 0
    Top = 540
    Width = 1070
    Height = 77
    HelpType = htKeyword
    Align = alBottom
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
      Left = 759
      Top = -1
      Width = 307
      Height = 74
      Shape = bsFrame
      Style = bsRaised
    end
    object Bevel3: TBevel
      Left = -2
      Top = -1
      Width = 761
      Height = 74
      Shape = bsFrame
      Style = bsRaised
    end
    object SpeedButton1: TSpeedButton
      Left = 781
      Top = 19
      Width = 120
      Height = 37
      Caption = 'Gravar e Imprimir'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 924
      Top = 19
      Width = 120
      Height = 37
      Caption = 'Cancelar'
      OnClick = SpeedButton2Click
    end
    object Edit10: TEdit
      Left = 780
      Top = -1
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'Edit10'
      Visible = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 165
    Width = 1070
    Height = 375
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
    TabOrder = 2
    object SpeedButton3: TSpeedButton
      Left = 963
      Top = 8
      Width = 96
      Height = 37
      Caption = 'Adicionar'
      Layout = blGlyphTop
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 963
      Top = 85
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
      Left = 960
      Top = 331
      Width = 69
      Height = 13
      Caption = 'Total da Nota:'
    end
    object Label17: TLabel
      Left = 960
      Top = 250
      Width = 94
      Height = 13
      Caption = 'Total dos Produtos:'
    end
    object Label18: TLabel
      Left = 960
      Top = 290
      Width = 49
      Height = 13
      Caption = 'Desconto:'
    end
    object Label19: TLabel
      Left = 960
      Top = 164
      Width = 27
      Height = 13
      Caption = 'Peso:'
      Visible = False
    end
    object Label22: TLabel
      Left = 960
      Top = 203
      Width = 43
      Height = 13
      Caption = 'Volumes:'
      Visible = False
    end
    object DBGrid1: TDBGrid
      Left = -1
      Top = 0
      Width = 955
      Height = 371
      DataSource = dm.DSQITENS004
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
          Width = 232
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
      Left = 862
      Top = 5
      Width = 95
      Height = 21
      TabOrder = 1
      Text = 'Edit4'
      Visible = False
    end
    object Edit2: TEdit
      Left = 960
      Top = 344
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
      Left = 960
      Top = 304
      Width = 96
      Height = 21
      Alignment = taRightJustify
      TabOrder = 7
      OnExit = Edit6Exit
      OnKeyDown = Edit6KeyDown
    end
    object Edit5: TEdit
      Left = 960
      Top = 264
      Width = 96
      Height = 21
      Alignment = taRightJustify
      ReadOnly = True
      TabOrder = 6
    end
    object Button1: TButton
      Left = 846
      Top = 330
      Width = 96
      Height = 37
      Caption = 'Rentabilidade'
      TabOrder = 5
      Visible = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 963
      Top = 46
      Width = 96
      Height = 37
      Caption = 'Adicionar Servi'#231'o'
      TabOrder = 8
      Visible = False
      OnClick = Button2Click
    end
    object Edit7: TEdit
      Left = 960
      Top = 176
      Width = 96
      Height = 21
      Alignment = taRightJustify
      ReadOnly = True
      TabOrder = 3
      Visible = False
    end
    object Edit9: TEdit
      Left = 960
      Top = 216
      Width = 96
      Height = 21
      Alignment = taRightJustify
      TabOrder = 4
      Text = '1'
      Visible = False
    end
    object DBMemo1: TDBMemo
      Left = 473
      Top = 4
      Width = 474
      Height = 363
      DataField = 'CCEXML'
      DataSource = dm.DSTORCAMENTO
      TabOrder = 9
      Visible = False
    end
  end
  object DBGrid2: TDBGrid
    Left = 114
    Top = 71
    Width = 324
    Height = 454
    DataSource = dm.DSQClifor
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 3
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
