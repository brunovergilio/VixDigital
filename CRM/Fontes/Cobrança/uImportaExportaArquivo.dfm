object FImportaExportaArquivo: TFImportaExportaArquivo
  Left = 718
  Top = 187
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Importa'#231#227'o de Arquivos/Registros'
  ClientHeight = 503
  ClientWidth = 1070
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlgeral: TPanel
    Left = 0
    Top = 0
    Width = 1070
    Height = 503
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1070
      Height = 453
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Shape2: TShape
        Left = 9
        Top = 101
        Width = 483
        Height = 23
        Brush.Style = bsClear
        Pen.Color = clGray
      end
      object Label_ProgressGeral: TLabel
        Left = 9
        Top = 79
        Width = 107
        Height = 19
        Caption = 'Progresso Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 9
        Top = 246
        Width = 194
        Height = 19
        Caption = 'Total de Registros do Arquivo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 9
        Top = 15
        Width = 53
        Height = 19
        Caption = 'Arquivo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 276
        Top = 168
        Width = 86
        Height = 19
        Caption = 'Dt. Remessa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 9
        Top = 168
        Width = 138
        Height = 19
        Caption = 'N'#250'mero da Remessa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 519
        Top = 15
        Width = 47
        Height = 19
        Caption = 'Credor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 519
        Top = 79
        Width = 125
        Height = 19
        Caption = 'Tipo de Importa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 276
        Top = 246
        Width = 64
        Height = 19
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object DBGrid1: TDBGrid
        Left = 519
        Top = 187
        Width = 539
        Height = 260
        DataSource = dsxls
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Calibri'
        TitleFont.Style = []
      end
      object StringGrid1: TStringGrid
        Left = 519
        Top = 187
        Width = 539
        Height = 260
        ColCount = 50
        TabOrder = 0
      end
      object Memo2: TMemo
        Left = 833
        Top = 160
        Width = 233
        Height = 173
        BevelEdges = []
        BevelInner = bvNone
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        Visible = False
      end
      object ednome: TEdit
        Left = 9
        Top = 40
        Width = 483
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object Memo1: TMemo
        Left = 860
        Top = 168
        Width = 185
        Height = 89
        Lines.Strings = (
          'Memo1')
        TabOrder = 4
        Visible = False
      end
      object ProgressBarGeral: TProgressBar
        Left = 12
        Top = 104
        Width = 476
        Height = 17
        TabOrder = 5
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 519
        Top = 40
        Width = 539
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        KeyField = 'NOME'
        ListField = 'NOME'
        ListSource = UniDSQCredor
        ParentFont = False
        TabOrder = 6
      end
      object Memo3: TMemo
        Left = 9
        Top = 312
        Width = 483
        Height = 135
        TabOrder = 7
      end
      object edtremessa: TEdit
        Left = 9
        Top = 187
        Width = 216
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object edtdata: TEdit
        Left = 276
        Top = 187
        Width = 216
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object edtregistros: TEdit
        Left = 9
        Top = 265
        Width = 216
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
      object cbxTipo: TComboBox
        Left = 520
        Top = 101
        Width = 538
        Height = 27
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnCloseUp = cbxTipoCloseUp
        Items.Strings = (
          'NORMAL'
          'SCPC'
          'HIGIENIZA'#199#195'O SCPC'
          'HIGIENIZA'#199#195'O NORMAL'
          'HIGIENIZA'#199#195'O (COMISS'#195'O)'
          'ATIVOS'
          'T&A MAILING VENDAS'
          'EXTRATO DE CHAMADAS')
      end
      object Edit1: TEdit
        Left = 276
        Top = 265
        Width = 216
        Height = 27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        Visible = False
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 453
      Width = 1070
      Height = 50
      Align = alBottom
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 1
      object AdvGlowButton5: TAdvGlowButton
        AlignWithMargins = True
        Left = 928
        Top = 3
        Width = 135
        Height = 40
        Cursor = crHandPoint
        Align = alRight
        Caption = 'Importar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = AdvGlowButton5Click
        Appearance.BorderColor = clTeal
        Appearance.BorderColorHot = clTeal
        Appearance.BorderColorCheckedHot = clTeal
        Appearance.BorderColorDown = clTeal
        Appearance.BorderColorChecked = clTeal
        Appearance.BorderColorDisabled = clTeal
        Appearance.BorderColorFocused = clTeal
        Appearance.Color = clTeal
        Appearance.ColorTo = clTeal
        Appearance.ColorChecked = clTeal
        Appearance.ColorCheckedTo = clTeal
        Appearance.ColorDisabled = clTeal
        Appearance.ColorDisabledTo = clTeal
        Appearance.ColorDown = clTeal
        Appearance.ColorDownTo = clTeal
        Appearance.ColorHot = clTeal
        Appearance.ColorHotTo = clTeal
        Appearance.ColorMirror = clTeal
        Appearance.ColorMirrorTo = clTeal
        Appearance.ColorMirrorHot = clTeal
        Appearance.ColorMirrorHotTo = clTeal
        Appearance.ColorMirrorDown = clTeal
        Appearance.ColorMirrorDownTo = clTeal
        Appearance.ColorMirrorChecked = clTeal
        Appearance.ColorMirrorCheckedTo = clTeal
        Appearance.ColorMirrorDisabled = clTeal
        Appearance.ColorMirrorDisabledTo = clTeal
        Appearance.TextColorChecked = clWhite
        Appearance.TextColorDown = clWhite
        Appearance.TextColorHot = clWhite
      end
      object AdvGlowButton3: TAdvGlowButton
        AlignWithMargins = True
        Left = 787
        Top = 3
        Width = 135
        Height = 40
        Cursor = crHandPoint
        HelpType = htKeyword
        Align = alRight
        Caption = 'Selecionar Arquivo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = AdvGlowButton3Click
        Appearance.BorderColor = 13602864
        Appearance.BorderColorHot = 13602864
        Appearance.BorderColorCheckedHot = 13602864
        Appearance.BorderColorDown = 13602864
        Appearance.BorderColorChecked = 13602864
        Appearance.BorderColorDisabled = 13602864
        Appearance.BorderColorFocused = 13602864
        Appearance.Color = 13602864
        Appearance.ColorTo = 13602864
        Appearance.ColorChecked = 13602864
        Appearance.ColorCheckedTo = 13602864
        Appearance.ColorDisabled = 13602864
        Appearance.ColorDisabledTo = 13602864
        Appearance.ColorDown = 13602864
        Appearance.ColorDownTo = 13602864
        Appearance.ColorHot = 13602864
        Appearance.ColorHotTo = 13602864
        Appearance.ColorMirror = 13602864
        Appearance.ColorMirrorTo = 13602864
        Appearance.ColorMirrorHot = 13602864
        Appearance.ColorMirrorHotTo = 13602864
        Appearance.ColorMirrorDown = 13602864
        Appearance.ColorMirrorDownTo = 13602864
        Appearance.ColorMirrorChecked = 13602864
        Appearance.ColorMirrorCheckedTo = 13602864
        Appearance.ColorMirrorDisabled = 13602864
        Appearance.ColorMirrorDisabledTo = 13602864
        Appearance.TextColorChecked = clWhite
        Appearance.TextColorDown = clWhite
        Appearance.TextColorHot = clWhite
      end
      object btimporta_cada: TButton
        Left = 240
        Top = 0
        Width = 80
        Height = 46
        Align = alLeft
        Caption = 'btimporta_cada'
        TabOrder = 2
        OnClick = btimporta_cadaClick
      end
      object btimporta_inad: TButton
        Left = 160
        Top = 0
        Width = 80
        Height = 46
        Align = alLeft
        Caption = 'btimporta_inad'
        TabOrder = 3
        OnClick = btimporta_inadClick
      end
      object btimporta_oper: TButton
        Left = 80
        Top = 0
        Width = 80
        Height = 46
        Align = alLeft
        Caption = 'btimporta_oper'
        TabOrder = 4
        Visible = False
        OnClick = btimporta_operClick
      end
      object btimporta_tele: TButton
        Left = 0
        Top = 0
        Width = 80
        Height = 46
        Align = alLeft
        Caption = 'btimporta_tele'
        TabOrder = 5
        Visible = False
        OnClick = btimporta_teleClick
      end
      object btimporta_xls: TButton
        Left = 320
        Top = 0
        Width = 80
        Height = 46
        Align = alLeft
        Caption = 'btimporta_xls'
        TabOrder = 6
        Visible = False
        OnClick = btimporta_xlsClick
      end
      object btimporta_clioper: TButton
        Left = 400
        Top = 0
        Width = 80
        Height = 46
        Align = alLeft
        Caption = 'btimporta_clienteseoperacoes'
        TabOrder = 7
        Visible = False
        OnClick = btimporta_clioperClick
      end
      object btn_novo: TButton
        Left = 480
        Top = 0
        Width = 80
        Height = 46
        Align = alLeft
        Caption = 'Novo_xlsx'
        TabOrder = 8
        Visible = False
        OnClick = btn_novoClick
      end
      object Button1: TButton
        Left = 560
        Top = 0
        Width = 80
        Height = 46
        Align = alLeft
        Caption = 'Higieniza'
        TabOrder = 9
        Visible = False
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 640
        Top = 0
        Width = 80
        Height = 46
        Align = alLeft
        Caption = 'Higieniza'
        TabOrder = 10
        Visible = False
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 701
        Top = 0
        Width = 80
        Height = 46
        Caption = 'Higieniza'
        TabOrder = 11
        Visible = False
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 750
        Top = 0
        Width = 42
        Height = 46
        Caption = 'Ativos'
        TabOrder = 12
        Visible = False
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 678
        Top = 4
        Width = 42
        Height = 46
        Caption = 'T&A'
        TabOrder = 13
        Visible = False
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 517
        Top = 4
        Width = 80
        Height = 46
        Caption = 'Extrato de chamadas'
        TabOrder = 14
        Visible = False
        OnClick = Button6Click
      end
    end
  end
  object OpenDialog: TOpenDialog
    Filter = 'Todos os Arquivos|*.*'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Title = 'Localizar Arquivos de Remessa'
    Left = 432
    Top = 16
  end
  object uniscript: TFDQuery
    Connection = frmDataModule.UniConnection1
    Left = 256
    Top = 16
  end
  object cdsxls: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 648
    Top = 56
    object cdsxlsTIPO: TStringField
      FieldName = 'TIPO'
      Size = 10
    end
    object cdsxlsNROPERAÇÃO: TStringField
      FieldName = 'NR OPERA'#199#195'O'
    end
    object cdsxlsNOMEOPERAÇÃO: TStringField
      FieldName = 'NOME OPERA'#199#195'O'
      Size = 40
    end
    object cdsxlsAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object cdsxlsCONTA: TStringField
      FieldName = 'CONTA'
      Size = 30
    end
    object cdsxlsPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 10
    end
    object cdsxlsDTATUALIZADO: TDateField
      FieldName = 'DT. ATUALIZADO'
    end
    object cdsxlsDTVENCIMENTO: TDateField
      FieldName = 'DT. VENCIMENTO'
    end
    object cdsxlsVALOROPERAÇÃO: TCurrencyField
      FieldName = 'VALOR OPERA'#199#195'O'
    end
    object cdsxlsVALORVENCIDO: TCurrencyField
      FieldName = 'VALOR VENCIDO'
    end
    object cdsxlsCONDNEGOCIAIS: TStringField
      FieldName = 'COND. NEGOCIAIS'
      Size = 255
    end
    object cdsxlsCPFCNPJ: TStringField
      FieldName = 'CPF / CNPJ'
    end
    object cdsxlsMCI: TIntegerField
      FieldName = 'MCI'
    end
    object cdsxlsNRFICHA: TIntegerField
      FieldName = 'NR FICHA'
    end
    object cdsxlsNOMEDOCLIENTE: TStringField
      FieldName = 'NOME DO CLIENTE'
      Size = 100
    end
    object cdsxlsENDEREÇO: TStringField
      FieldName = 'ENDERE'#199'O'
      Size = 255
    end
    object cdsxlsNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsxlsBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 100
    end
    object cdsxlsCEP: TStringField
      FieldName = 'CEP'
    end
    object cdsxlsCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object cdsxlsUF: TStringField
      FieldName = 'UF'
      Size = 10
    end
    object cdsxlsTELEFONE1: TStringField
      FieldName = 'TELEFONE 1'
      Size = 100
    end
    object cdsxlsTELEFONE2: TStringField
      FieldName = 'TELEFONE 2'
      Size = 100
    end
    object cdsxlsTELEFONE3: TStringField
      FieldName = 'TELEFONE 3'
      Size = 100
    end
    object cdsxlsTELEFONE4: TStringField
      FieldName = 'TELEFONE 4'
      Size = 100
    end
    object cdsxlsTELEFONE5: TStringField
      FieldName = 'TELEFONE 5'
      Size = 100
    end
    object cdsxlsTELEFONE6: TStringField
      FieldName = 'TELEFONE 6'
      Size = 100
    end
    object cdsxlsDATANASCIMENTO: TDateField
      FieldName = 'DATA NASCIMENTO'
    end
    object cdsxlsNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 50
    end
    object cdsxlsSEXO: TStringField
      FieldName = 'SEXO'
      Size = 50
    end
    object cdsxlsESTADOCIVIL: TStringField
      FieldName = 'ESTADO CIVIL'
      Size = 50
    end
    object cdsxlsNOMEDOPAI: TStringField
      FieldName = 'NOME DO PAI'
      Size = 100
    end
    object cdsxlsNOMEDAMÃE: TStringField
      FieldName = 'NOME DA M'#195'E'
      Size = 100
    end
    object cdsxlsNOMEAVALISTA1: TStringField
      FieldName = 'NOME AVALISTA 1'
      Size = 100
    end
    object cdsxlsCPFCNPJAVALISTA1: TStringField
      FieldName = 'CPF/CNPJ AVALISTA 1'
    end
    object cdsxlsENDEREÇOAVALISTA1: TStringField
      FieldName = 'ENDERE'#199'O AVALISTA 1'
      Size = 255
    end
    object cdsxlsBAIRROAVALISTA1: TStringField
      FieldName = 'BAIRRO AVALISTA 1'
      Size = 100
    end
    object cdsxlsCEPAVALISTA1: TStringField
      FieldName = 'CEP AVALISTA 1'
    end
    object cdsxlsCIDADEAVALISTA1: TStringField
      FieldName = 'CIDADE AVALISTA 1'
      Size = 100
    end
    object cdsxlsUFAVALISTA1: TStringField
      FieldName = 'UF AVALISTA 1'
      Size = 10
    end
    object cdsxlsTELEFONE1AVALISTA1: TStringField
      FieldName = 'TELEFONE 1 AVALISTA 1'
      Size = 100
    end
    object cdsxlsTELEFONE2AVALISTA1: TStringField
      FieldName = 'TELEFONE 2 AVALISTA 1'
      Size = 100
    end
    object cdsxlsNOMEAVALISTA2: TStringField
      FieldName = 'NOME AVALISTA 2'
      Size = 100
    end
    object cdsxlsCPFCNPJAVALISTA2: TStringField
      FieldName = 'CPF/CNPJ AVALISTA 2'
    end
    object cdsxlsENDEREÇOAVALISTA2: TStringField
      FieldName = 'ENDERE'#199'O AVALISTA 2'
      Size = 255
    end
    object cdsxlsBAIRROAVALISTA2: TStringField
      FieldName = 'BAIRRO AVALISTA 2'
      Size = 100
    end
    object cdsxlsCEPAVALISTA2: TStringField
      FieldName = 'CEP AVALISTA 2'
    end
    object cdsxlsCIDADEAVALISTA2: TStringField
      FieldName = 'CIDADE AVALISTA 2'
      Size = 100
    end
    object cdsxlsUFAVALISTA2: TStringField
      FieldName = 'UF AVALISTA 2'
      Size = 10
    end
    object cdsxlsTELEFONE1AVALISTA2: TStringField
      FieldName = 'TELEFONE 1 AVALISTA 2'
      Size = 100
    end
    object cdsxlsTELEFONE2AVALISTA2: TStringField
      FieldName = 'TELEFONE 2 AVALISTA 2'
      Size = 100
    end
    object cdsxlsNOMEAVALISTA3: TStringField
      FieldName = 'NOME AVALISTA 3'
      Size = 100
    end
    object cdsxlsCPFCNPJAVALISTA3: TStringField
      FieldName = 'CPF/CNPJ AVALISTA 3'
    end
    object cdsxlsENDEREÇOAVALISTA3: TStringField
      FieldName = 'ENDERE'#199'O AVALISTA 3'
      Size = 255
    end
    object cdsxlsBAIRROAVALISTA3: TStringField
      FieldName = 'BAIRRO AVALISTA 3'
      Size = 100
    end
    object cdsxlsCEPAVALISTA3: TStringField
      FieldName = 'CEP AVALISTA 3'
    end
    object cdsxlsCIDADEAVALISTA3: TStringField
      FieldName = 'CIDADE AVALISTA 3'
      Size = 100
    end
    object cdsxlsUFAVALISTA3: TStringField
      FieldName = 'UF AVALISTA 3'
      Size = 10
    end
    object cdsxlsTELEFONE1AVALISTA3: TStringField
      FieldName = 'TELEFONE 1 AVALISTA 3'
      Size = 100
    end
    object cdsxlsTELEFONE2AVALISTA3: TStringField
      FieldName = 'TELEFONE 2 AVALISTA 3'
      Size = 100
    end
    object cdsxlsNOMEAVALISTA4: TStringField
      FieldName = 'NOME AVALISTA 4'
      Size = 100
    end
    object cdsxlsCPFCNPJAVALISTA4: TStringField
      FieldName = 'CPF/CNPJ AVALISTA 4'
    end
    object cdsxlsENDEREÇOAVALISTA4: TStringField
      FieldName = 'ENDERE'#199'O AVALISTA 4'
      Size = 255
    end
    object cdsxlsBAIRROAVALISTA4: TStringField
      FieldName = 'BAIRRO AVALISTA 4'
      Size = 100
    end
    object cdsxlsCEPAVALISTA4: TStringField
      FieldName = 'CEP AVALISTA 4'
    end
    object cdsxlsCIDADEAVALISTA4: TStringField
      FieldName = 'CIDADE AVALISTA 4'
      Size = 100
    end
    object cdsxlsUFAVALISTA4: TStringField
      FieldName = 'UF AVALISTA 4'
      Size = 10
    end
    object cdsxlsTELEFONE1AVALISTA4: TStringField
      FieldName = 'TELEFONE 1 AVALISTA 4'
      Size = 100
    end
    object cdsxlsTELEFONE2AVALISTA4: TStringField
      FieldName = 'TELEFONE 2 AVALISTA 4'
      Size = 100
    end
    object cdsxlsNOMEAVALISTA5: TStringField
      FieldName = 'NOME AVALISTA 5'
      Size = 100
    end
    object cdsxlsCPFCNPJAVALISTA5: TStringField
      FieldName = 'CPF/CNPJ AVALISTA 5'
    end
    object cdsxlsENDEREÇOAVALISTA5: TStringField
      FieldName = 'ENDERE'#199'O AVALISTA 5'
      Size = 255
    end
    object cdsxlsBAIRROAVALISTA5: TStringField
      FieldName = 'BAIRRO AVALISTA 5'
      Size = 100
    end
    object cdsxlsCEPAVALISTA5: TStringField
      FieldName = 'CEP AVALISTA 5'
    end
    object cdsxlsCIDADEAVALISTA5: TStringField
      FieldName = 'CIDADE AVALISTA 5'
      Size = 100
    end
    object cdsxlsUFAVALISTA5: TStringField
      FieldName = 'UF AVALISTA 5'
      Size = 10
    end
    object cdsxlsTELEFONE1AVALISTA5: TStringField
      FieldName = 'TELEFONE 1 AVALISTA 5'
      Size = 100
    end
    object cdsxlsTELEFONE2AVALISTA5: TStringField
      FieldName = 'TELEFONE 2 AVALISTA 5'
      Size = 100
    end
    object cdsxlsNOMEAVALISTA6: TStringField
      FieldName = 'NOME AVALISTA 6'
      Size = 100
    end
    object cdsxlsCPFCNPJAVALISTA6: TStringField
      FieldName = 'CPF/CNPJ AVALISTA 6'
    end
    object cdsxlsENDEREÇOAVALISTA6: TStringField
      FieldName = 'ENDERE'#199'O AVALISTA 6'
      Size = 255
    end
    object cdsxlsBAIRROAVALISTA6: TStringField
      FieldName = 'BAIRRO AVALISTA 6'
      Size = 100
    end
    object cdsxlsCEPAVALISTA6: TStringField
      FieldName = 'CEP AVALISTA 6'
    end
    object cdsxlsCIDADEAVALISTA6: TStringField
      FieldName = 'CIDADE AVALISTA 6'
      Size = 100
    end
    object cdsxlsUFAVALISTA6: TStringField
      FieldName = 'UF AVALISTA 6'
      Size = 10
    end
    object cdsxlsTELEFONE1AVALISTA6: TStringField
      FieldName = 'TELEFONE 1 AVALISTA 6'
      Size = 100
    end
    object cdsxlsTELEFONE2AVALISTA6: TStringField
      FieldName = 'TELEFONE 2 AVALISTA 6'
      Size = 100
    end
    object cdsxlsPROFISSÃO: TStringField
      FieldName = 'PROFISS'#195'O'
      Size = 50
    end
    object cdsxlsNOMELOCALDETRABALHO: TStringField
      FieldName = 'NOME LOCAL DE TRABALHO'
      Size = 50
    end
    object cdsxlsENDEREÇOLOCALDETRABALHO: TStringField
      FieldName = 'ENDERE'#199'O LOCAL DE TRABALHO'
      Size = 50
    end
    object cdsxlsBAIRROLOCALDETRABALHO: TStringField
      FieldName = 'BAIRRO LOCAL DE TRABALHO'
      Size = 25
    end
    object cdsxlsCEPLOCALDETRABALHO: TStringField
      FieldName = 'CEP LOCAL DE TRABALHO'
    end
    object cdsxlsCIDADELOCALDETRABALHO: TStringField
      FieldName = 'CIDADE LOCAL DE TRABALHO'
      Size = 25
    end
    object cdsxlsUFLOCALDETRABALHO: TStringField
      FieldName = 'UF LOCAL DE TRABALHO'
      Size = 10
    end
    object cdsxlsTELEFONE1LOCALDETRABALHO: TStringField
      FieldName = 'TELEFONE 1 LOCAL DE TRABALHO'
      Size = 100
    end
    object cdsxlsTELEFONE2LOCALDETRABALHO: TStringField
      FieldName = 'TELEFONE 2 LOCAL DE TRABALHO'
      Size = 100
    end
    object cdsxlsREFERENCIAPESSOAL: TStringField
      FieldName = 'REFERENCIA PESSOAL'
      Size = 100
    end
    object cdsxlsTELEFONE1REFERENCIA: TStringField
      FieldName = 'TELEFONE 1 REFERENCIA'
      Size = 100
    end
    object cdsxlsTELEFONE2REFERENCIA: TStringField
      FieldName = 'TELEFONE 2 REFERENCIA'
      Size = 100
    end
    object cdsxlsREFERENCIAPESSOAL2: TStringField
      FieldName = 'REFERENCIA PESSOAL 2'
      Size = 100
    end
    object cdsxlsTELEFONE1REFERENCIA2: TStringField
      FieldName = 'TELEFONE 1 REFERENCIA 2'
      Size = 100
    end
    object cdsxlsTELEFONE2REFERENCIA2: TStringField
      FieldName = 'TELEFONE 2 REFERENCIA 2'
      Size = 100
    end
    object cdsxlsREFERENCIAPESSOAL3: TStringField
      FieldName = 'REFERENCIA PESSOAL 3'
      Size = 100
    end
    object cdsxlsTELEFONE1REFERENCIA3: TStringField
      FieldName = 'TELEFONE 1 REFERENCIA 3'
      Size = 100
    end
    object cdsxlsTELEFONE2REFERENCIA3: TStringField
      FieldName = 'TELEFONE 2 REFERENCIA 3'
      Size = 100
    end
    object cdsxlsSPCSERASA: TStringField
      FieldName = 'SPC/SERASA'
      Size = 10
    end
    object cdsxlsEMAIL: TStringField
      FieldName = 'E-MAIL'
      Size = 200
    end
    object cdsxlsDTEMISSÃO: TDateField
      FieldName = 'DT. EMISS'#195'O'
    end
    object cdsxlsVALORPROTESTO: TCurrencyField
      FieldName = 'VALOR PROTESTO'
    end
    object cdsxlsOBSOPERAÇÃO: TStringField
      FieldName = 'OBS. OPERA'#199#195'O'
      Size = 255
    end
    object cdsxlsDTFIMTERCERIZAÇÃO: TDateField
      FieldName = 'DT. FIMTERCERIZA'#199#195'O'
    end
    object cdsxlsVALORJUROS: TCurrencyField
      FieldName = 'VALOR JUROS'
    end
    object cdsxlsCOD_CLASSIFICACAO_CLIENTE: TStringField
      FieldName = 'COD_CLASSIFICACAO_CLIENTE'
    end
    object cdsxlsCOD_CLASSIFICACAO_OPERACAO: TStringField
      FieldName = 'COD_CLASSIFICACAO_OPERACAO'
    end
  end
  object dsxls: TDataSource
    DataSet = cdsxls
    Left = 728
    Top = 56
  end
  object cdscadas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 648
    Top = 112
    object cdscadas1: TStringField
      FieldName = '1'
      Size = 100
    end
    object cdscadas2: TStringField
      FieldName = '2'
      Size = 100
    end
    object cdscadas3: TStringField
      FieldName = '3'
      Size = 100
    end
    object cdscadas4: TStringField
      FieldName = '4'
      Size = 100
    end
    object cdscadas5: TStringField
      FieldName = '5'
      Size = 100
    end
    object cdscadas6: TStringField
      FieldName = '6'
      Size = 100
    end
    object cdscadas7: TStringField
      FieldName = '7'
      Size = 100
    end
    object cdscadas8: TStringField
      FieldName = '8'
      Size = 100
    end
    object cdscadas9: TStringField
      FieldName = '9'
      Size = 100
    end
    object cdscadas10: TStringField
      FieldName = '10'
      Size = 100
    end
    object cdscadas11: TStringField
      FieldName = '11'
      Size = 100
    end
    object cdscadas12: TStringField
      FieldName = '12'
      Size = 100
    end
    object cdscadas13: TStringField
      FieldName = '13'
      Size = 100
    end
    object cdscadas14: TStringField
      FieldName = '14'
      Size = 100
    end
    object cdscadas15: TStringField
      FieldName = '15'
      Size = 100
    end
    object cdscadas16: TStringField
      FieldName = '16'
      Size = 100
    end
    object cdscadas17: TStringField
      FieldName = '17'
      Size = 100
    end
    object cdscadas18: TStringField
      FieldName = '18'
      Size = 100
    end
    object cdscadas19: TStringField
      FieldName = '19'
      Size = 100
    end
    object cdscadas20: TStringField
      FieldName = '20'
      Size = 100
    end
  end
  object dscadas: TDataSource
    DataSet = cdscadas
    Left = 728
    Top = 112
  end
  object cdsinad: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 648
    Top = 168
    object inad1: TStringField
      FieldName = '1'
      Size = 100
    end
    object inad2: TStringField
      FieldName = '2'
      Size = 100
    end
    object inad3: TStringField
      FieldName = '3'
      Size = 100
    end
    object inad4: TStringField
      FieldName = '4'
      Size = 100
    end
    object inad5: TStringField
      FieldName = '5'
      Size = 100
    end
    object inad6: TStringField
      FieldName = '6'
      Size = 100
    end
    object inad7: TStringField
      FieldName = '7'
      Size = 100
    end
    object inad8: TStringField
      FieldName = '8'
      Size = 100
    end
    object inad9: TStringField
      FieldName = '9'
      Size = 100
    end
    object inad10: TStringField
      FieldName = '10'
      Size = 100
    end
    object inad11: TStringField
      FieldName = '11'
      Size = 100
    end
    object inad12: TStringField
      FieldName = '12'
      Size = 100
    end
    object inad13: TStringField
      FieldName = '13'
      Size = 100
    end
    object inad14: TStringField
      FieldName = '14'
      Size = 100
    end
    object inad15: TStringField
      FieldName = '15'
      Size = 100
    end
    object inad16: TStringField
      FieldName = '16'
      Size = 100
    end
    object inad17: TStringField
      FieldName = '17'
      Size = 100
    end
    object inad18: TStringField
      FieldName = '18'
      Size = 100
    end
    object inad19: TStringField
      FieldName = '19'
      Size = 100
    end
    object inad20: TStringField
      FieldName = '20'
      Size = 100
    end
    object inad21: TStringField
      FieldName = '21'
      Size = 100
    end
    object inad22: TStringField
      FieldName = '22'
      Size = 100
    end
  end
  object dsinad: TDataSource
    DataSet = cdsinad
    Left = 728
    Top = 168
  end
  object cdsoper: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 648
    Top = 224
    object cdsoper1: TStringField
      FieldName = '1'
      Size = 100
    end
    object cdsoper2: TStringField
      FieldName = '2'
      Size = 100
    end
    object cdsoper3: TStringField
      FieldName = '3'
      Size = 100
    end
    object cdsoper4: TStringField
      FieldName = '4'
      Size = 100
    end
    object cdsoper5: TStringField
      FieldName = '5'
      Size = 100
    end
    object cdsoper6: TStringField
      FieldName = '6'
      Size = 100
    end
    object cdsoper7: TStringField
      FieldName = '7'
      Size = 100
    end
    object cdsoper8: TStringField
      FieldName = '8'
      Size = 100
    end
    object cdsoper9: TStringField
      FieldName = '9'
      Size = 100
    end
  end
  object dsoper: TDataSource
    DataSet = cdsoper
    Left = 728
    Top = 224
  end
  object cdstele: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 648
    Top = 280
    object cdstele1: TStringField
      FieldName = '1'
      Size = 100
    end
    object cdstele2: TStringField
      FieldName = '2'
      Size = 100
    end
    object cdstele3: TStringField
      FieldName = '3'
      Size = 100
    end
    object cdstele4: TStringField
      FieldName = '4'
      Size = 100
    end
    object cdstele5: TStringField
      FieldName = '5'
      Size = 100
    end
    object cdstele6: TStringField
      FieldName = '6'
      Size = 100
    end
    object cdstele7: TStringField
      FieldName = '7'
      Size = 100
    end
    object cdstele8: TStringField
      FieldName = '8'
      Size = 100
    end
  end
  object dstele: TDataSource
    DataSet = cdstele
    Left = 728
    Top = 280
  end
  object ImportExcel1: TImportExcel
    Left = 344
    Top = 16
  end
  object dsxlsclioper: TDataSource
    DataSet = cdsxlsclioper
    Left = 728
    Top = 336
  end
  object cdsxlsclioper: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 648
    Top = 336
    object cdsxlsclioperCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 200
    end
    object cdsxlsclioperDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
    end
    object cdsxlsclioperEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 500
    end
    object cdsxlsclioperFONE: TStringField
      FieldName = 'FONE'
      Size = 100
    end
    object cdsxlsclioperFONE2: TStringField
      FieldName = 'FONE2'
      Size = 100
    end
    object cdsxlsclioperENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object cdsxlsclioperNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsxlsclioperSETOR: TStringField
      FieldName = 'SETOR'
      Size = 50
    end
    object cdsxlsclioperCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 100
    end
    object cdsxlsclioperUF: TStringField
      FieldName = 'UF'
      Size = 5
    end
    object cdsxlsclioperCEP: TStringField
      FieldName = 'CEP'
    end
    object cdsxlsclioperCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 30
    end
    object cdsxlsclioperIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
    end
    object cdsxlsclioperFONE3: TStringField
      FieldName = 'FONE3'
      Size = 100
    end
    object cdsxlsclioperFONE4: TStringField
      FieldName = 'FONE4'
      Size = 100
    end
    object cdsxlsclioperOPERACAO: TStringField
      FieldName = 'OPERACAO'
      Size = 100
    end
    object cdsxlsclioperVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object cdsxlsclioperVALOR_NOMINAL: TFloatField
      FieldName = 'VALOR_NOMINAL'
    end
    object cdsxlsclioperSITUACAO: TStringField
      FieldName = 'SITUACAO'
    end
    object cdsxlsclioperRECEBIMENTO: TDateField
      FieldName = 'RECEBIMENTO'
    end
    object cdsxlsclioperVALOR_RECEBIDO: TFloatField
      FieldName = 'VALOR_RECEBIDO'
    end
    object cdsxlsclioperCREDOR: TStringField
      FieldName = 'CREDOR'
      Size = 50
    end
  end
  object uniscriptimporta: TFDQuery
    Connection = frmDataModule.UniConnection1
    Transaction = frmDataModule.UniTransaction1
    UpdateTransaction = frmDataModule.UniTransaction1
    SQL.Strings = (
      'select * from bancos')
    Left = 880
    Top = 176
  end
  object uniscriptconsulta: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from bancos')
    Left = 984
    Top = 176
  end
  object unigetid: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from aviso')
    Left = 864
    Top = 40
  end
  object UniDSQCredor: TDataSource
    DataSet = uniQCredor
    Left = 96
    Top = 16
  end
  object uniQCredor: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from bancos')
    Left = 184
    Top = 16
    object uniQCredorCODIGO: TFMTBCDField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object uniQCredorNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object uniQCredorCOMISSAOFIXA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAOFIXA'
      Origin = 'COMISSAOFIXA'
      Size = 30
    end
    object uniQCredorCOMISSAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Precision = 12
      Size = 6
    end
    object uniQCredorCENTRALIZADORA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CENTRALIZADORA'
      Origin = 'CENTRALIZADORA'
      Size = 60
    end
    object uniQCredorCC_TIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CC_TIPO'
      Origin = 'CC_TIPO'
      Size = 30
    end
    object uniQCredorCE_C1: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CE_C1'
      Origin = 'CE_C1'
      Precision = 12
      Size = 6
    end
    object uniQCredorCE_C2: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CE_C2'
      Origin = 'CE_C2'
      Precision = 12
      Size = 6
    end
    object uniQCredorCE_C3: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CE_C3'
      Origin = 'CE_C3'
      Precision = 12
      Size = 6
    end
    object uniQCredorCE_C4: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CE_C4'
      Origin = 'CE_C4'
      Precision = 12
      Size = 6
    end
    object uniQCredorCE_C5: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CE_C5'
      Origin = 'CE_C5'
      Precision = 12
      Size = 6
    end
    object uniQCredorCE_C6: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CE_C6'
      Origin = 'CE_C6'
      Precision = 12
      Size = 6
    end
    object uniQCredorCE_C7: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CE_C7'
      Origin = 'CE_C7'
      Precision = 12
      Size = 6
    end
    object uniQCredorCE_C8: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CE_C8'
      Origin = 'CE_C8'
      Precision = 12
      Size = 6
    end
    object uniQCredorCE_C9: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CE_C9'
      Origin = 'CE_C9'
      Precision = 12
      Size = 6
    end
    object uniQCredorPREFCONT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PREFCONT'
      Origin = 'PREFCONT'
      Size = 10
    end
    object uniQCredorCONTADOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONTADOR'
      Origin = 'CONTADOR'
      Precision = 38
      Size = 0
    end
    object uniQCredorENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 60
    end
    object uniQCredorSETOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SETOR'
      Origin = 'SETOR'
      Size = 30
    end
    object uniQCredorNUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object uniQCredorCIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 50
    end
    object uniQCredorUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object uniQCredorCEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 9
    end
    object uniQCredorCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 11
    end
    object uniQCredorCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 14
    end
    object uniQCredorMETA_CAIXA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'META_CAIXA'
      Origin = 'META_CAIXA'
      Precision = 12
      Size = 6
    end
    object uniQCredorMETA_REGULARIZACAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'META_REGULARIZACAO'
      Origin = 'META_REGULARIZACAO'
      Precision = 12
      Size = 6
    end
    object uniQCredorMULTA_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MULTA_PADRAO'
      Origin = 'MULTA_PADRAO'
      Precision = 12
      Size = 6
    end
    object uniQCredorJUROS_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS_PADRAO'
      Origin = 'JUROS_PADRAO'
      Precision = 12
      Size = 6
    end
    object uniQCredorHONORARIOS_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'HONORARIOS_PADRAO'
      Origin = 'HONORARIOS_PADRAO'
      Precision = 12
      Size = 6
    end
    object uniQCredorDESCONTO_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_PADRAO'
      Origin = 'DESCONTO_PADRAO'
      Precision = 12
      Size = 6
    end
    object uniQCredorCUSTO_BOLETO_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTO_BOLETO_PADRAO'
      Origin = 'CUSTO_BOLETO_PADRAO'
      Precision = 12
      Size = 6
    end
    object uniQCredorFATOR_PARC_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'FATOR_PARC_PADRAO'
      Origin = 'FATOR_PARC_PADRAO'
      Precision = 12
      Size = 6
    end
    object uniQCredorVALOR_PROTESTO_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PROTESTO_PADRAO'
      Origin = 'VALOR_PROTESTO_PADRAO'
      Precision = 12
      Size = 6
    end
    object uniQCredorPESO_CAIXA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESO_CAIXA'
      Origin = 'PESO_CAIXA'
      Precision = 12
      Size = 6
    end
    object uniQCredorPESO_REGULARIZACAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESO_REGULARIZACAO'
      Origin = 'PESO_REGULARIZACAO'
      Precision = 12
      Size = 6
    end
    object uniQCredorINCLUIRDESPESAS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INCLUIRDESPESAS'
      Origin = 'INCLUIRDESPESAS'
      Size = 5
    end
    object uniQCredorRETENCAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'RETENCAO'
      Origin = 'RETENCAO'
      Precision = 12
      Size = 6
    end
    object uniQCredorDT_CONTRATO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DT_CONTRATO'
      Origin = 'DT_CONTRATO'
    end
    object uniQCredorUSA_TAB_ATUALIZACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USA_TAB_ATUALIZACAO'
      Origin = 'USA_TAB_ATUALIZACAO'
      Size = 30
    end
    object uniQCredorREPRESENTANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REPRESENTANTE'
      Origin = 'REPRESENTANTE'
      Size = 40
    end
    object uniQCredorREP_ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REP_ENDERECO'
      Origin = 'REP_ENDERECO'
      Size = 50
    end
    object uniQCredorREP_SETOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REP_SETOR'
      Origin = 'REP_SETOR'
      Size = 30
    end
    object uniQCredorREP_CIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REP_CIDADE'
      Origin = 'REP_CIDADE'
      Size = 30
    end
    object uniQCredorREP_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REP_UF'
      Origin = 'REP_UF'
      Size = 2
    end
    object uniQCredorREP_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REP_CEP'
      Origin = 'REP_CEP'
      Size = 10
    end
    object uniQCredorREP_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REP_CPF'
      Origin = 'REP_CPF'
      Size = 18
    end
    object uniQCredorREP_PROFISSAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REP_PROFISSAO'
      Origin = 'REP_PROFISSAO'
      Size = 30
    end
    object uniQCredorREP_CARGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REP_CARGO'
      Origin = 'REP_CARGO'
      Size = 30
    end
    object uniQCredorREP_NACIONALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REP_NACIONALIDADE'
      Origin = 'REP_NACIONALIDADE'
      Size = 30
    end
    object uniQCredorREP_ESTADOCIVIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REP_ESTADOCIVIL'
      Origin = 'REP_ESTADOCIVIL'
      Size = 30
    end
    object uniQCredorFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 14
    end
    object uniQCredorFAX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 14
    end
    object uniQCredorDIAS_COB_HONORARIOS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DIAS_COB_HONORARIOS'
      Origin = 'DIAS_COB_HONORARIOS'
      Precision = 38
      Size = 0
    end
    object uniQCredorEMAIL1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL1'
      Origin = 'EMAIL1'
      Size = 45
    end
    object uniQCredorEMAIL2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL2'
      Origin = 'EMAIL2'
      Size = 45
    end
    object uniQCredorNRCONTRATO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NRCONTRATO'
      Origin = 'NRCONTRATO'
      Size = 30
    end
    object uniQCredorOBJETOCONTRATUAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBJETOCONTRATUAL'
      Origin = 'OBJETOCONTRATUAL'
      Size = 250
    end
    object uniQCredorTIPOPROTESTO_PADRAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOPROTESTO_PADRAO'
      Origin = 'TIPOPROTESTO_PADRAO'
      Size = 30
    end
    object uniQCredorDESCONTO_SOBRE_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_SOBRE_PADRAO'
      Origin = 'DESCONTO_SOBRE_PADRAO'
      Precision = 38
      Size = 0
    end
    object uniQCredorGRAVA_VLRDIVIDA_EVENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRAVA_VLRDIVIDA_EVENTO'
      Origin = 'GRAVA_VLRDIVIDA_EVENTO'
      Size = 30
    end
    object uniQCredorGRAVA_NEGOCIACAO_EVENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRAVA_NEGOCIACAO_EVENTO'
      Origin = 'GRAVA_NEGOCIACAO_EVENTO'
      Size = 30
    end
    object uniQCredorCONTADOR_NP: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONTADOR_NP'
      Origin = 'CONTADOR_NP'
      Precision = 38
      Size = 0
    end
    object uniQCredorENTRADA_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ENTRADA_PADRAO'
      Origin = 'ENTRADA_PADRAO'
      Precision = 12
      Size = 6
    end
    object uniQCredorTIPO_HONORARIO_PADRAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_HONORARIO_PADRAO'
      Origin = 'TIPO_HONORARIO_PADRAO'
      Size = 15
    end
    object uniQCredorTIPO_ATUALIZACAO_DIVIDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_ATUALIZACAO_DIVIDA'
      Origin = 'TIPO_ATUALIZACAO_DIVIDA'
      Size = 30
    end
    object uniQCredorTIPO_JUROS_PADRAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_JUROS_PADRAO'
      Origin = 'TIPO_JUROS_PADRAO'
      Size = 30
    end
    object uniQCredorMENSAGEM_SMS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MENSAGEM_SMS'
      Origin = 'MENSAGEM_SMS'
      Size = 200
    end
    object uniQCredorPEDIR_SENHA_DESC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PEDIR_SENHA_DESC'
      Origin = 'PEDIR_SENHA_DESC'
      Size = 30
    end
    object uniQCredorJUROS_MINIMO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS_MINIMO'
      Origin = 'JUROS_MINIMO'
      Precision = 12
      Size = 6
    end
    object uniQCredorDESCONTO_MAXIMO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_MAXIMO'
      Origin = 'DESCONTO_MAXIMO'
      Precision = 12
      Size = 6
    end
    object uniQCredorVALOR_MINIMO_PARCELA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_MINIMO_PARCELA'
      Origin = 'VALOR_MINIMO_PARCELA'
      Precision = 12
      Size = 6
    end
    object uniQCredorDIAS_MAXIMO_ENTRADA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DIAS_MAXIMO_ENTRADA'
      Origin = 'DIAS_MAXIMO_ENTRADA'
      Precision = 38
      Size = 0
    end
    object uniQCredorBOL_CONVENIO_PADRAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BOL_CONVENIO_PADRAO'
      Origin = 'BOL_CONVENIO_PADRAO'
    end
    object uniQCredorFASE_COBRANCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FASE_COBRANCA'
      Origin = 'FASE_COBRANCA'
      Size = 100
    end
    object uniQCredorATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 30
    end
    object uniQCredorMULTA_MINIMA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MULTA_MINIMA'
      Origin = 'MULTA_MINIMA'
      Precision = 12
      Size = 6
    end
    object uniQCredorNRPRESTACAO_MAXIMO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NRPRESTACAO_MAXIMO'
      Origin = 'NRPRESTACAO_MAXIMO'
      Precision = 38
      Size = 0
    end
    object uniQCredorTIPO_CALCULO_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_CALCULO_PADRAO'
      Origin = 'TIPO_CALCULO_PADRAO'
      Precision = 38
      Size = 0
    end
    object uniQCredorMOSTRAR_QUEBRA_ACORDO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MOSTRAR_QUEBRA_ACORDO'
      Origin = 'MOSTRAR_QUEBRA_ACORDO'
      Size = 30
    end
    object uniQCredorTAB_ATU_DIVIDA_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TAB_ATU_DIVIDA_PADRAO'
      Origin = 'TAB_ATU_DIVIDA_PADRAO'
      Precision = 38
      Size = 0
    end
    object uniQCredorHONORARIO_SOBRE_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'HONORARIO_SOBRE_PADRAO'
      Origin = 'HONORARIO_SOBRE_PADRAO'
      Precision = 38
      Size = 0
    end
    object uniQCredorBLOQUEIO_LUPA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIO_LUPA'
      Origin = 'BLOQUEIO_LUPA'
      Size = 30
    end
    object uniQCredorBLOQUEIO_NIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIO_NIVEL'
      Origin = 'BLOQUEIO_NIVEL'
      Size = 30
    end
    object uniQCredorCOMISSAO_TIPOATRASO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAO_TIPOATRASO'
      Origin = 'COMISSAO_TIPOATRASO'
      Size = 30
    end
    object uniQCredorDATA_MIN_EVENTO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_MIN_EVENTO'
      Origin = 'DATA_MIN_EVENTO'
    end
    object uniQCredorJUROS_PARCELA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS_PARCELA'
      Origin = 'JUROS_PARCELA'
      Precision = 12
      Size = 6
    end
    object uniQCredorQUEBRA_ACORDO_DIAS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUEBRA_ACORDO_DIAS'
      Origin = 'QUEBRA_ACORDO_DIAS'
      Precision = 38
      Size = 0
    end
    object uniQCredorQUEBRA_ACORDO_COD_EVENTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUEBRA_ACORDO_COD_EVENTO'
      Origin = 'QUEBRA_ACORDO_COD_EVENTO'
      Precision = 38
      Size = 0
    end
    object uniQCredorLIQUIDADA_COD_EVENTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'LIQUIDADA_COD_EVENTO'
      Origin = 'LIQUIDADA_COD_EVENTO'
      Precision = 38
      Size = 0
    end
    object uniQCredorTIPODIVISAOENCARGOS_PADRAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPODIVISAOENCARGOS_PADRAO'
      Origin = 'TIPODIVISAOENCARGOS_PADRAO'
      Size = 30
    end
    object uniQCredorMODELO_RECIBO_PADRAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MODELO_RECIBO_PADRAO'
      Origin = 'MODELO_RECIBO_PADRAO'
      Size = 81
    end
    object uniQCredorBLOQUEIO_END1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIO_END1'
      Origin = 'BLOQUEIO_END1'
      Size = 30
    end
    object uniQCredorBLOQUEIO_END2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIO_END2'
      Origin = 'BLOQUEIO_END2'
      Size = 30
    end
    object uniQCredorBLOQUEIO_NIVEL_END1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIO_NIVEL_END1'
      Origin = 'BLOQUEIO_NIVEL_END1'
      Size = 30
    end
    object uniQCredorBLOQUEIO_NIVEL_END2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIO_NIVEL_END2'
      Origin = 'BLOQUEIO_NIVEL_END2'
      Size = 30
    end
    object uniQCredorJUROS_MAXIMO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS_MAXIMO'
      Origin = 'JUROS_MAXIMO'
      Precision = 12
      Size = 6
    end
    object uniQCredorMULTA_MAXIMO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MULTA_MAXIMO'
      Origin = 'MULTA_MAXIMO'
      Precision = 12
      Size = 6
    end
    object uniQCredorBLOQUEIO_DIVIDIR_SEM_JUROS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIO_DIVIDIR_SEM_JUROS'
      Origin = 'BLOQUEIO_DIVIDIR_SEM_JUROS'
      Size = 30
    end
    object uniQCredorDIAS_EMCOBRANCA_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DIAS_EMCOBRANCA_PADRAO'
      Origin = 'DIAS_EMCOBRANCA_PADRAO'
      Precision = 38
      Size = 0
    end
    object uniQCredorNEGATIVACAO_CODIGO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NEGATIVACAO_CODIGO'
      Origin = 'NEGATIVACAO_CODIGO'
      Precision = 38
      Size = 0
    end
    object uniQCredorTIPO_DESCONTO_PADRAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_DESCONTO_PADRAO'
      Origin = 'TIPO_DESCONTO_PADRAO'
      Size = 30
    end
    object uniQCredorEVENTOS_NRMAXIMO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'EVENTOS_NRMAXIMO'
      Origin = 'EVENTOS_NRMAXIMO'
      Precision = 38
      Size = 0
    end
    object uniQCredorEVENTOS_NRDIASMAXIMO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'EVENTOS_NRDIASMAXIMO'
      Origin = 'EVENTOS_NRDIASMAXIMO'
      Precision = 38
      Size = 0
    end
    object uniQCredorAGRUPAR_HON_COM_PRIMEIRA_PARC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGRUPAR_HON_COM_PRIMEIRA_PARC'
      Origin = 'AGRUPAR_HON_COM_PRIMEIRA_PARC'
      Size = 30
    end
    object uniQCredorFORMAPGTO_NEGOCIACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORMAPGTO_NEGOCIACAO'
      Origin = 'FORMAPGTO_NEGOCIACAO'
      Size = 30
    end
    object uniQCredorNEGATIVACAO_SERASA_CODIGO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NEGATIVACAO_SERASA_CODIGO'
      Origin = 'NEGATIVACAO_SERASA_CODIGO'
      Precision = 38
      Size = 0
    end
    object uniQCredorBLOQUEIA_TELEFONE_BLACKLIST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIA_TELEFONE_BLACKLIST'
      Origin = 'BLOQUEIA_TELEFONE_BLACKLIST'
      Size = 30
    end
    object uniQCredorPROTESTO_PRIMEIRA_PARC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROTESTO_PRIMEIRA_PARC'
      Origin = 'PROTESTO_PRIMEIRA_PARC'
      Size = 30
    end
    object uniQCredorCOMISSAO_INTERVALO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAO_INTERVALO'
      Origin = 'COMISSAO_INTERVALO'
      Size = 30
    end
    object uniQCredorJUROS_BOLETO_REGISTRADO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS_BOLETO_REGISTRADO'
      Origin = 'JUROS_BOLETO_REGISTRADO'
      Precision = 12
      Size = 6
    end
    object uniQCredorMULTA_BOLETO_REGISTRADO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MULTA_BOLETO_REGISTRADO'
      Origin = 'MULTA_BOLETO_REGISTRADO'
      Precision = 12
      Size = 6
    end
    object uniQCredorDADOS_BANCARIOS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DADOS_BANCARIOS'
      Origin = 'DADOS_BANCARIOS'
      Size = 255
    end
    object uniQCredorDTA_CAD: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DTA_CAD'
      Origin = 'DTA_CAD'
    end
    object uniQCredorUSR_CAD: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'USR_CAD'
      Origin = 'USR_CAD'
      Precision = 38
      Size = 0
    end
    object uniQCredorREBATES_TIPO_INTERVALO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REBATES_TIPO_INTERVALO'
      Origin = 'REBATES_TIPO_INTERVALO'
      Size = 30
    end
    object uniQCredorTIPO_MULTA_PADRAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_MULTA_PADRAO'
      Origin = 'TIPO_MULTA_PADRAO'
      Size = 30
    end
    object uniQCredorCARTA_BOLETO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CARTA_BOLETO'
      Origin = 'CARTA_BOLETO'
      Size = 2000
    end
    object uniQCredorTIPO_HONORARIO_ORIGEM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_HONORARIO_ORIGEM'
      Origin = 'TIPO_HONORARIO_ORIGEM'
      Size = 30
    end
    object uniQCredorATRIBUI_COBRADOR_ACORDO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATRIBUI_COBRADOR_ACORDO'
      Origin = 'ATRIBUI_COBRADOR_ACORDO'
      Size = 30
    end
    object uniQCredorRETORNA_PARCELAS_ACORDO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RETORNA_PARCELAS_ACORDO'
      Origin = 'RETORNA_PARCELAS_ACORDO'
      Size = 30
    end
    object uniQCredorMANTER_PARCELAS_ACORDO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MANTER_PARCELAS_ACORDO'
      Origin = 'MANTER_PARCELAS_ACORDO'
      Size = 30
    end
    object uniQCredorBLACKLIST_NIVEL_BLOQ_RETORNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLACKLIST_NIVEL_BLOQ_RETORNO'
      Origin = 'BLACKLIST_NIVEL_BLOQ_RETORNO'
      Size = 30
    end
    object uniQCredorTAXA_ATUALIZACAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TAXA_ATUALIZACAO'
      Origin = 'TAXA_ATUALIZACAO'
      Precision = 12
      Size = 6
    end
    object uniQCredorBOLETO_GERA_NOVO_NUMERO_RECALC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BOLETO_GERA_NOVO_NUMERO_RECALC'
      Origin = 'BOLETO_GERA_NOVO_NUMERO_RECALC'
      Size = 30
    end
    object uniQCredorBLOQUEIO_BOLETO_INCOMPLETO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIO_BOLETO_INCOMPLETO'
      Origin = 'BLOQUEIO_BOLETO_INCOMPLETO'
      Size = 30
    end
    object uniQCredorATU_PARC_ATRASO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATU_PARC_ATRASO'
      Origin = 'ATU_PARC_ATRASO'
      Size = 30
    end
    object uniQCredorATU_PARC_ATRASO_NRDIASMAXIMO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ATU_PARC_ATRASO_NRDIASMAXIMO'
      Origin = 'ATU_PARC_ATRASO_NRDIASMAXIMO'
      Precision = 38
      Size = 0
    end
    object uniQCredorPORTALWEB_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PORTALWEB_PADRAO'
      Origin = 'PORTALWEB_PADRAO'
      Precision = 38
      Size = 0
    end
    object uniQCredorEMITIR_UM_BOLETO_POR_VEZ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMITIR_UM_BOLETO_POR_VEZ'
      Origin = 'EMITIR_UM_BOLETO_POR_VEZ'
      Size = 30
    end
    object uniQCredorPERC_JUROS_DIF_POR_PERIODO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_JUROS_DIF_POR_PERIODO'
      Origin = 'PERC_JUROS_DIF_POR_PERIODO'
      Size = 30
    end
    object uniQCredorEXCLUIR_TEL_CAD_CLIENTE_NIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EXCLUIR_TEL_CAD_CLIENTE_NIVEL'
      Origin = 'EXCLUIR_TEL_CAD_CLIENTE_NIVEL'
      Size = 30
    end
    object uniQCredorBLOQUEIO_EMISSAO_PARC_VENCIDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIO_EMISSAO_PARC_VENCIDA'
      Origin = 'BLOQUEIO_EMISSAO_PARC_VENCIDA'
      Size = 30
    end
    object uniQCredorBLOQUEIO_ATU_BOLETO_EMITIDO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIO_ATU_BOLETO_EMITIDO'
      Origin = 'BLOQUEIO_ATU_BOLETO_EMITIDO'
      Size = 30
    end
    object uniQCredorBLOQUEIO_NEGOCIACAO_VENC_PARC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIO_NEGOCIACAO_VENC_PARC'
      Origin = 'BLOQUEIO_NEGOCIACAO_VENC_PARC'
      Size = 30
    end
    object uniQCredorBLOQUEIO_NEGOCIACAO_VLR_PARC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIO_NEGOCIACAO_VLR_PARC'
      Origin = 'BLOQUEIO_NEGOCIACAO_VLR_PARC'
      Size = 30
    end
    object uniQCredorNUMERO_PREST_C0NTAS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO_PREST_C0NTAS'
      Origin = 'NUMERO_PREST_C0NTAS'
      Precision = 38
      Size = 0
    end
    object uniQCredorATU_PARC_ATRASO_BLOQ_ENCARGOS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATU_PARC_ATRASO_BLOQ_ENCARGOS'
      Origin = 'ATU_PARC_ATRASO_BLOQ_ENCARGOS'
      Size = 30
    end
    object uniQCredorID_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_1'
      Origin = 'ID_1'
    end
    object uniQCredorEVENTO_COBRANCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EVENTO_COBRANCA'
      Origin = 'EVENTO_COBRANCA'
      Size = 200
    end
    object uniQCredorMULTA_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MULTA_CHECK'
      Origin = 'MULTA_CHECK'
      Size = 5
    end
    object uniQCredorMULTA_DE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MULTA_DE'
      Origin = 'MULTA_DE'
    end
    object uniQCredorMULTA_A: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MULTA_A'
      Origin = 'MULTA_A'
    end
    object uniQCredorJUROS_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS_CHECK'
      Origin = 'JUROS_CHECK'
      Size = 5
    end
    object uniQCredorJUROS_DE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS_DE'
      Origin = 'JUROS_DE'
      Precision = 12
      Size = 6
    end
    object uniQCredorJUROS_A: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS_A'
      Origin = 'JUROS_A'
      Precision = 12
      Size = 6
    end
    object uniQCredorHONORARIO_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'HONORARIO_CHECK'
      Origin = 'HONORARIO_CHECK'
      Size = 5
    end
    object uniQCredorHONORARIO_DE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'HONORARIO_DE'
      Origin = 'HONORARIO_DE'
      Precision = 12
      Size = 6
    end
    object uniQCredorHONORARIO_A: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'HONORARIO_A'
      Origin = 'HONORARIO_A'
      Precision = 12
      Size = 6
    end
    object uniQCredorDESCONTOMAXIMO_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTOMAXIMO_CHECK'
      Origin = 'DESCONTOMAXIMO_CHECK'
      Size = 5
    end
    object uniQCredorDESCONTOMAXIMO_VALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTOMAXIMO_VALOR'
      Origin = 'DESCONTOMAXIMO_VALOR'
      Precision = 12
      Size = 6
    end
    object uniQCredorJUROSPARCELAMENTO_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'JUROSPARCELAMENTO_CHECK'
      Origin = 'JUROSPARCELAMENTO_CHECK'
      Size = 5
    end
    object uniQCredorJUROSPARCELAMENTO_DE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROSPARCELAMENTO_DE'
      Origin = 'JUROSPARCELAMENTO_DE'
      Precision = 12
      Size = 6
    end
    object uniQCredorJUROSPARCELAMENTO_A: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROSPARCELAMENTO_A'
      Origin = 'JUROSPARCELAMENTO_A'
      Precision = 12
      Size = 6
    end
    object uniQCredorMAXIMODIASPARCELAMENTO_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAXIMODIASPARCELAMENTO_CHECK'
      Origin = 'MAXIMODIASPARCELAMENTO_CHECK'
      Size = 5
    end
    object uniQCredorMAXIMODIASPARCELAMENTO_VALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MAXIMODIASPARCELAMENTO_VALOR'
      Origin = 'MAXIMODIASPARCELAMENTO_VALOR'
      Precision = 12
      Size = 6
    end
    object uniQCredorMAXIMOPARCELAS_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAXIMOPARCELAS_CHECK'
      Origin = 'MAXIMOPARCELAS_CHECK'
      Size = 5
    end
    object uniQCredorMAXIMOPARCELAS_VALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MAXIMOPARCELAS_VALOR'
      Origin = 'MAXIMOPARCELAS_VALOR'
      Precision = 12
      Size = 6
    end
    object uniQCredorCANCELARNEGOCIACAOAPOS_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELARNEGOCIACAOAPOS_CHECK'
      Origin = 'CANCELARNEGOCIACAOAPOS_CHECK'
      Size = 5
    end
    object uniQCredorCANCELARNEGOCIACAOAPOS_VALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELARNEGOCIACAOAPOS_VALOR'
      Origin = 'CANCELARNEGOCIACAOAPOS_VALOR'
      Precision = 12
      Size = 6
    end
    object uniQCredorCALCULARJUROSSOBREMULTA_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CALCULARJUROSSOBREMULTA_CHECK'
      Origin = 'CALCULARJUROSSOBREMULTA_CHECK'
      Size = 5
    end
    object uniQCredorINDICEDECORRECAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INDICEDECORRECAO'
      Origin = 'INDICEDECORRECAO'
      Size = 50
    end
    object uniQCredorHONORARIOREAL_A: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'HONORARIOREAL_A'
      Origin = 'HONORARIOREAL_A'
      Precision = 12
      Size = 6
    end
    object uniQCredorHONORARIOREAL_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'HONORARIOREAL_CHECK'
      Origin = 'HONORARIOREAL_CHECK'
      Size = 5
    end
    object uniQCredorHONORARIOREAL_DE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'HONORARIOREAL_DE'
      Origin = 'HONORARIOREAL_DE'
      Precision = 12
      Size = 6
    end
    object uniQCredorPERMITENAOMENSAIS_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITENAOMENSAIS_CHECK'
      Origin = 'PERMITENAOMENSAIS_CHECK'
      Size = 5
    end
    object uniQCredorUTILIZARJUROSCOMPOSTOS_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UTILIZARJUROSCOMPOSTOS_CHECK'
      Origin = 'UTILIZARJUROSCOMPOSTOS_CHECK'
      Size = 5
    end
    object uniQCredorCALCMULTASOBRECORRECAO_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CALCMULTASOBRECORRECAO_CHECK'
      Origin = 'CALCMULTASOBRECORRECAO_CHECK'
      Size = 5
    end
    object uniQCredorCALCJUROSSOBRECORRECAO_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CALCJUROSSOBRECORRECAO_CHECK'
      Origin = 'CALCJUROSSOBRECORRECAO_CHECK'
      Size = 5
    end
    object uniQCredorCOMISSOPERVRRECEB_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSOPERVRRECEB_CHECK'
      Origin = 'COMISSOPERVRRECEB_CHECK'
      Size = 5
    end
    object uniQCredorCOMISSOPERVRCOMISS_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSOPERVRCOMISS_CHECK'
      Origin = 'COMISSOPERVRCOMISS_CHECK'
      Size = 5
    end
    object uniQCredorINFORMACOES_ADICIONAIS: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'INFORMACOES_ADICIONAIS'
      Origin = 'INFORMACOES_ADICIONAIS'
    end
    object uniQCredorMAX_DIAS_PRIM_BOLETO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MAX_DIAS_PRIM_BOLETO'
      Origin = 'MAX_DIAS_PRIM_BOLETO'
    end
    object uniQCredorPARCELA_MINIMA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PARCELA_MINIMA'
      Origin = 'PARCELA_MINIMA'
    end
  end
  object cdsxlsx_nov2019: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 856
    Top = 344
    object cdsxlsx_nov2019NOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
    object cdsxlsx_nov2019CPFCNPJ: TStringField
      FieldName = 'CPF/CNPJ'
      Size = 200
    end
    object cdsxlsx_nov2019TIPO: TStringField
      FieldName = 'TIPO'
    end
    object cdsxlsx_nov2019SEXO: TStringField
      FieldName = 'SEXO'
    end
    object cdsxlsx_nov2019DTNASCIMENTO: TStringField
      FieldName = 'DTNASCIMENTO'
    end
    object cdsxlsx_nov2019DOCIDENTIDADE: TStringField
      FieldName = 'DOCIDENTIDADE'
    end
    object cdsxlsx_nov2019EMAIL1: TStringField
      FieldName = 'EMAIL1'
      Size = 200
    end
    object cdsxlsx_nov2019EMAIL2: TStringField
      FieldName = 'EMAIL2'
      Size = 200
    end
    object cdsxlsx_nov2019EMAIL3: TStringField
      FieldName = 'EMAIL3'
      Size = 200
    end
    object cdsxlsx_nov2019EMAIL4: TStringField
      FieldName = 'EMAIL4'
      Size = 200
    end
    object cdsxlsx_nov2019TELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 200
    end
    object cdsxlsx_nov2019TELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 200
    end
    object cdsxlsx_nov2019TELEFONE3: TStringField
      FieldName = 'TELEFONE3'
      Size = 200
    end
    object cdsxlsx_nov2019TELEFONE4: TStringField
      FieldName = 'TELEFONE4'
      Size = 200
    end
    object cdsxlsx_nov2019TELEFONE5: TStringField
      FieldName = 'TELEFONE5'
      Size = 200
    end
    object cdsxlsx_nov2019TELEFONE6: TStringField
      FieldName = 'TELEFONE6'
      Size = 200
    end
    object cdsxlsx_nov2019LOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 200
    end
    object cdsxlsx_nov2019NUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsxlsx_nov2019COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object cdsxlsx_nov2019BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 200
    end
    object cdsxlsx_nov2019CIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 200
    end
    object cdsxlsx_nov2019ESTADO: TStringField
      FieldName = 'ESTADO'
    end
    object cdsxlsx_nov2019CEP: TStringField
      FieldName = 'CEP'
    end
    object cdsxlsx_nov2019OPERACAO: TStringField
      FieldName = 'OPERACAO'
      Size = 50
    end
    object cdsxlsx_nov2019DTVCTO: TStringField
      FieldName = 'DTVCTO'
    end
    object cdsxlsx_nov2019VRNOMINAL: TStringField
      FieldName = 'VRNOMINAL'
      Size = 50
    end
    object cdsxlsx_nov2019SITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 50
    end
    object cdsxlsx_nov2019DIASVENCIDOS: TStringField
      FieldName = 'DIASVENCIDOS'
      Size = 50
    end
    object cdsxlsx_nov2019DTRECEBIMENTO: TStringField
      FieldName = 'DTRECEBIMENTO'
    end
    object cdsxlsx_nov2019VRRECEBIDO: TStringField
      FieldName = 'VRRECEBIDO'
      Size = 50
    end
    object cdsxlsx_nov2019FORMADEPGTO: TStringField
      FieldName = 'FORMADEPGTO'
      Size = 100
    end
    object cdsxlsx_nov2019OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 200
    end
    object cdsxlsx_nov2019DATACOMPRA: TStringField
      FieldName = 'DATACOMPRA'
    end
    object cdsxlsx_nov2019DATADISPONIVEL: TStringField
      FieldName = 'DATADISPONIVEL'
    end
  end
  object dscdsxlsx_nov2019: TDataSource
    DataSet = cdsxlsx_nov2019
    Left = 960
    Top = 344
  end
  object uniscriptupdate: TFDQuery
    Connection = frmDataModule.UniConnection1
    Left = 264
    Top = 64
  end
  object QCliente: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from clientes')
    Left = 560
    Top = 368
    object QClienteCODIGO: TFMTBCDField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object QClienteNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object QClienteTIPOPESSOA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOPESSOA'
      Origin = 'TIPOPESSOA'
      Size = 1
    end
    object QClienteCPF_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF_CNPJ'
      Origin = 'CPF_CNPJ'
    end
    object QClienteCONTACORRENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTACORRENTE'
      Origin = 'CONTACORRENTE'
      Size = 30
    end
    object QClienteREGIAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REGIAO'
      Origin = 'REGIAO'
      Precision = 38
      Size = 0
    end
    object QClienteENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 80
    end
    object QClienteNUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 5
    end
    object QClienteSETOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SETOR'
      Origin = 'SETOR'
      Size = 25
    end
    object QClienteCIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 30
    end
    object QClienteUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object QClienteCEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 9
    end
    object QClienteFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FONE'
      Origin = 'FONE'
    end
    object QClienteFAXCEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FAXCEL'
      Origin = 'FAXCEL'
    end
    object QClienteENDENDERECO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDENDERECO_1'
      Origin = 'ENDENDERECO_1'
      Size = 80
    end
    object QClienteNUMERO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO_1'
      Origin = 'NUMERO_1'
      Size = 5
    end
    object QClienteSETOR_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SETOR_1'
      Origin = 'SETOR_1'
      Size = 25
    end
    object QClienteCIDADE_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE_1'
      Origin = 'CIDADE_1'
      Size = 30
    end
    object QClienteUF_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF_1'
      Origin = 'UF_1'
      Size = 2
    end
    object QClienteCEP_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP_1'
      Origin = 'CEP_1'
      Size = 9
    end
    object QClienteFONE_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FONE_1'
      Origin = 'FONE_1'
    end
    object QClienteFAXCEL_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FAXCEL_1'
      Origin = 'FAXCEL_1'
    end
    object QClienteCONTATO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_1'
      Origin = 'CONTATO_1'
      Size = 40
    end
    object QClienteFOTO: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'FOTO'
      Origin = 'FOTO'
    end
    object QClienteCONTATO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 40
    end
    object QClienteMCI: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MCI'
      Origin = 'MCI'
      Precision = 38
      Size = 0
    end
    object QClienteDEVOLVERBB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DEVOLVERBB'
      Origin = 'DEVOLVERBB'
      Size = 1
    end
    object QClienteREMESSABB: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REMESSABB'
      Origin = 'REMESSABB'
      Precision = 38
      Size = 0
    end
    object QClienteOBS: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'OBS'
      Origin = 'OBS'
    end
    object QClienteDTA_NASCIMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DTA_NASCIMENTO'
      Origin = 'DTA_NASCIMENTO'
    end
    object QClienteCOD_CLASSIFICACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_CLASSIFICACAO'
      Origin = 'COD_CLASSIFICACAO'
    end
    object QClienteDATA_MODIF: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_MODIF'
      Origin = 'DATA_MODIF'
    end
    object QClientePONTO_REF1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PONTO_REF1'
      Origin = 'PONTO_REF1'
      Size = 150
    end
    object QClientePONTO_REF2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PONTO_REF2'
      Origin = 'PONTO_REF2'
      Size = 150
    end
    object QClienteAGENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
      Size = 10
    end
    object QClienteLOCALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOCALIDADE'
      Origin = 'LOCALIDADE'
      Size = 4
    end
    object QClienteSETOR_FAT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SETOR_FAT'
      Origin = 'SETOR_FAT'
      Size = 4
    end
    object QClienteROTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ROTA'
      Origin = 'ROTA'
      Size = 15
    end
    object QClienteQUADRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'QUADRA'
      Origin = 'QUADRA'
      Size = 4
    end
    object QClienteLOTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 10
    end
    object QClienteSUBLOTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SUBLOTE'
      Origin = 'SUBLOTE'
      Size = 4
    end
    object QClienteEND_PREFERENCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'END_PREFERENCIAL'
      Origin = 'END_PREFERENCIAL'
      Size = 1
    end
    object QClienteFONE_PREFERENCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FONE_PREFERENCIAL'
      Origin = 'FONE_PREFERENCIAL'
      Size = 1
    end
    object QClienteE_MAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'E_MAIL'
      Origin = 'E_MAIL'
      Size = 150
    end
    object QClienteE_MAIL1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'E_MAIL1'
      Origin = 'E_MAIL1'
      Size = 150
    end
    object QClienteNRIDENTIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NRIDENTIDADE'
      Origin = 'NRIDENTIDADE'
      Size = 25
    end
    object QClienteSEXO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Size = 1
    end
    object QClienteLOCAL_TRABALHO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOCAL_TRABALHO'
      Origin = 'LOCAL_TRABALHO'
      Size = 50
    end
    object QClienteCARGO_TRABALHO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CARGO_TRABALHO'
      Origin = 'CARGO_TRABALHO'
      Size = 50
    end
    object QClienteSALARIO_TRABALHO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SALARIO_TRABALHO'
      Origin = 'SALARIO_TRABALHO'
      Precision = 12
      Size = 6
    end
    object QClienteNATURALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NATURALIDADE'
      Origin = 'NATURALIDADE'
      Size = 50
    end
    object QClienteESTADOCIVIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
      Size = 30
    end
    object QClienteSCORE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SCORE'
      Origin = 'SCORE'
      Precision = 38
      Size = 0
    end
    object QClienteBEHAVIOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BEHAVIOR'
      Origin = 'BEHAVIOR'
      Precision = 38
      Size = 0
    end
    object QClienteMOTIVOINADIMPLENCIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MOTIVOINADIMPLENCIA'
      Origin = 'MOTIVOINADIMPLENCIA'
    end
    object QClienteDTA_CAD: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DTA_CAD'
      Origin = 'DTA_CAD'
    end
    object QClienteUSR_CAD: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'USR_CAD'
      Origin = 'USR_CAD'
      Precision = 38
      Size = 0
    end
    object QClienteMOTIVORETORNO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MOTIVORETORNO'
      Origin = 'MOTIVORETORNO'
      Precision = 38
      Size = 0
    end
    object QClienteCODIGO_EXTERNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_EXTERNO'
      Origin = 'CODIGO_EXTERNO'
      Size = 30
    end
    object QClienteSCORE1: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SCORE1'
      Origin = 'SCORE1'
      Precision = 38
      Size = 0
    end
    object QClienteORIGEMDOSDADOS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORIGEMDOSDADOS'
      Origin = 'ORIGEMDOSDADOS'
      Size = 100
    end
    object QClienteCOLUMN2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COLUMN2'
      Origin = 'COLUMN2'
      Size = 100
    end
    object QClienteCOD_BANCO_COMISSAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_BANCO_COMISSAO'
      Origin = 'COD_BANCO_COMISSAO'
    end
    object QClienteVAR1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VAR1'
      Origin = 'VAR1'
      Size = 60
    end
    object QClienteVAR2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VAR2'
      Origin = 'VAR2'
      Size = 60
    end
    object QClienteCOD_EMPRESA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_EMPRESA'
      Origin = 'COD_EMPRESA'
    end
    object QClienteCOD_OPERACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_OPERACAO'
      Origin = 'COD_OPERACAO'
    end
    object QClienteNDG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NDG'
      Origin = 'NDG'
      Size = 30
    end
    object QClienteDOSSIE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DOSSIE'
      Origin = 'DOSSIE'
    end
    object QClienteCOD_CARTEIRA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_CARTEIRA'
      Origin = 'COD_CARTEIRA'
    end
    object QClienteNOME_LIDER: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_LIDER'
      Origin = 'NOME_LIDER'
      Size = 50
    end
    object QClienteNOME_OPERADOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_OPERADOR'
      Origin = 'NOME_OPERADOR'
      Size = 50
    end
    object QClienteETAPA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ETAPA'
      Origin = 'ETAPA'
      Size = 10
    end
    object QClienteEMPRESA_COBRADORA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_COBRADORA'
      Origin = 'EMPRESA_COBRADORA'
      Size = 50
    end
  end
  object QExtrato: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from extrato_chamadas')
    Left = 528
    Top = 256
    object QExtratocodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QExtratodata: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = '`data`'
    end
    object QExtratoorigem: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'origem'
      Origin = 'origem'
    end
    object QExtratodestino: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'destino'
      Origin = 'destino'
      Size = 30
    end
    object QExtratofinalizado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'finalizado'
      Origin = 'finalizado'
    end
    object QExtratocampanha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'campanha'
      Origin = 'campanha'
      Size = 50
    end
    object QExtratochat_bot: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'chat_bot'
      Origin = 'chat_bot'
      Size = 10
    end
    object QExtratoagentes: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'agentes'
      Origin = 'agentes'
      Size = 30
    end
    object QExtratotronco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tronco'
      Origin = 'tronco'
      Size = 30
    end
    object QExtratodid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'did'
      Origin = 'did'
      Size = 10
    end
    object QExtratogrupo_atendimento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'grupo_atendimento'
      Origin = 'grupo_atendimento'
      Size = 30
    end
    object QExtratoura: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ura'
      Origin = 'ura'
      Size = 10
    end
    object QExtratovia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'via'
      Origin = 'via'
    end
    object QExtratoduracao_total: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'duracao_total'
      Origin = 'duracao_total'
      Size = 10
    end
    object QExtratoduracao_atendimento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'duracao_atendimento'
      Origin = 'duracao_atendimento'
      Size = 10
    end
    object QExtratosipcode: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'sipcode'
      Origin = 'sipcode'
    end
    object QExtratoabandono: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'abandono'
      Origin = 'abandono'
      Size = 5
    end
    object QExtratocpc: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cpc'
      Origin = 'cpc'
    end
    object QExtratoparam_categoria: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'param_categoria'
      Origin = 'param_categoria'
      Size = 5
    end
    object QExtratoparam_obs: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'param_obs'
      Origin = 'param_obs'
      Size = 100
    end
    object QExtratonome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object QExtratotelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
    end
    object QExtratocpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
    end
    object QExtratodossie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'dossie'
      Origin = 'dossie'
    end
    object QExtratobanco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'banco'
      Origin = 'banco'
      Size = 30
    end
    object QExtratoparam_ocorrencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'param_ocorrencia'
      Origin = 'param_ocorrencia'
      Size = 10
    end
    object QExtratodescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object QExtratodata_criacao: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_criacao'
      Origin = 'data_criacao'
    end
    object QExtratocod_importacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'cod_importacao'
      Origin = 'cod_importacao'
    end
    object QExtratostatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = '`status`'
      FixedChar = True
      Size = 1
    end
  end
  object QImportacao: TFDQuery
    Connection = frmDataModule.UniConnection1
    Left = 512
    Top = 160
  end
end
