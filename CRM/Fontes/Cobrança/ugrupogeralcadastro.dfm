object frmgrupogeralcadastro: Tfrmgrupogeralcadastro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Campanhas/Listas'
  ClientHeight = 659
  ClientWidth = 811
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Roboto'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel3: TPanel
    Left = 0
    Top = 609
    Width = 811
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object RzToolButton1: TRzToolButton
      AlignWithMargins = True
      Left = 58
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
      Left = 184
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
    object RzToolButton4: TRzToolButton
      AlignWithMargins = True
      Left = 688
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
      Caption = 'Exportar Lista em XLS'
      Color = 8282689
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton4Click
      ExplicitLeft = 745
      ExplicitTop = 6
    end
    object RzToolButton12: TRzToolButton
      AlignWithMargins = True
      Left = 310
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
      Caption = 'Gerar Lista Aleat'#243'ria'
      Color = 8282689
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton12Click
      ExplicitTop = 6
    end
    object RzToolButton14: TRzToolButton
      AlignWithMargins = True
      Left = 562
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
      Caption = 'Exportar para Discador'
      Color = 8282689
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton14Click
      ExplicitLeft = 745
      ExplicitTop = 6
    end
    object RzToolButton15: TRzToolButton
      AlignWithMargins = True
      Left = 436
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
      Caption = 'Exportar para SMS'
      Color = 8282689
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton15Click
      ExplicitLeft = 745
      ExplicitTop = 6
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 811
    Height = 609
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object TabbedNotebook1: TTabbedNotebook
      Left = 0
      Top = 0
      Width = 811
      Height = 609
      Align = alClient
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clBtnText
      TabFont.Height = -13
      TabFont.Name = 'Roboto'
      TabFont.Style = []
      TabOrder = 0
      object TTabPage
        Left = 4
        Top = 26
        Caption = 'Identifica'#231#227'o'
        object Notebook9: TNotebook
          Left = 0
          Top = 0
          Width = 803
          Height = 579
          Align = alClient
          TabOrder = 0
          object TPage
            Left = 0
            Top = 0
            Caption = 'Default'
            object Label1: TLabel
              Left = 32
              Top = 371
              Width = 37
              Height = 15
              Caption = 'Script:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 32
              Top = 129
              Width = 64
              Height = 15
              Caption = 'Per'#237'odo de:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 32
              Top = 307
              Width = 165
              Height = 15
              Caption = #218'ltima Data de Acionamento:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 223
              Top = 153
              Width = 18
              Height = 15
              Caption = 'at'#233
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
            end
            object Label9: TLabel
              Left = 223
              Top = 331
              Width = 18
              Height = 15
              Caption = 'at'#233
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
            end
            object DBAdvLUEdit1: TDBAdvLUEdit
              Left = 32
              Top = 44
              Width = 121
              Height = 23
              BorderColor = clSilver
              DefaultHandling = True
              EmptyTextStyle = []
              FocusAlign = eaCenter
              FocusColor = clBtnFace
              LabelCaption = 'C'#243'digo:'
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
              Enabled = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              Text = ''
              Visible = True
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
              DataField = 'CODIGO'
              DataSource = frmgrupogeral.UniDSQGrupoGeral
              DataLookup = False
            end
            object DBAdvLUEdit2: TDBAdvLUEdit
              Left = 200
              Top = 44
              Width = 393
              Height = 23
              BorderColor = clSilver
              DefaultHandling = True
              EmptyTextStyle = []
              LabelCaption = 'Nome:'
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
              BevelInner = bvNone
              BevelKind = bkFlat
              BevelOuter = bvNone
              CharCase = ecUpperCase
              Color = clWindow
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Text = ''
              Visible = True
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
              DataField = 'NOME'
              DataSource = frmgrupogeral.UniDSQGrupoGeral
              DataLookup = False
            end
            object DBAdvLUEdit4: TDBAdvLUEdit
              Left = 32
              Top = 208
              Width = 186
              Height = 23
              BorderColor = clSilver
              DefaultHandling = True
              EmptyTextStyle = []
              LabelCaption = 'Dias de Atraso (Dias de Vencimentos):'
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
              ParentFont = False
              TabOrder = 2
              Text = ''
              Visible = True
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
              DataField = 'DIAS_DE_ATRASO_DE'
              DataSource = frmgrupogeral.UniDSQGrupoGeral
              DataLookup = False
            end
            object DBAdvLUEdit5: TDBAdvLUEdit
              Left = 244
              Top = 208
              Width = 186
              Height = 23
              BorderColor = clSilver
              DefaultHandling = True
              EmptyTextStyle = []
              LabelCaption = 'at'#233
              LabelPosition = lpLeftCenter
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
              ParentFont = False
              TabOrder = 3
              Text = ''
              Visible = True
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
              DataField = 'DIAS_DE_ATRASO_ATE'
              DataSource = frmgrupogeral.UniDSQGrupoGeral
              DataLookup = False
            end
            object DBAdvOfficeCheckBox1: TDBAdvOfficeCheckBox
              Left = 610
              Top = 6
              Width = 153
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              Visible = False
              OnClick = DBAdvOfficeCheckBox1Click
              Alignment = taLeftJustify
              Caption = 'T'#237'tulos Originais'
              ReturnIsTab = False
              Version = '1.1.0.0'
              DataField = 'FILTRO_ORIGINAIS_CHECK'
              DataSource = frmgrupogeral.UniDSQGrupoGeral
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object DBAdvOfficeCheckBox3: TDBAdvOfficeCheckBox
              Left = 610
              Top = 44
              Width = 73
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnClick = DBAdvOfficeCheckBox3Click
              Alignment = taLeftJustify
              Caption = 'Ativo'
              ReturnIsTab = False
              Version = '1.1.0.0'
              DataField = 'ATIVO_CHECK'
              DataSource = frmgrupogeral.UniDSQGrupoGeral
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object DBAdvOfficeCheckBox5: TDBAdvOfficeCheckBox
              Left = 610
              Top = 6
              Width = 193
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
              Visible = False
              OnClick = DBAdvOfficeCheckBox5Click
              Alignment = taLeftJustify
              Caption = 'Parcelas de Negocia'#231#245'es'
              ReturnIsTab = False
              Version = '1.1.0.0'
              DataField = 'FILTRO_PARCELAS_CHECK'
              DataSource = frmgrupogeral.UniDSQGrupoGeral
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object AdvDBComboBox1: TAdvDBComboBox
              Left = 32
              Top = 95
              Width = 186
              Height = 23
              Color = clWhite
              Version = '1.0.4.2'
              Visible = True
              Ctl3D = False
              DataField = 'ORDENACAO'
              DataSource = frmgrupogeral.UniDSQGrupoGeral
              DropWidth = 0
              Flat = True
              FlatLineColor = clSilver
              Enabled = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              ItemIndex = 3
              Items.Strings = (
                'ALEAT'#211'RIO'
                'DATA DE VENCIMENTO'
                'VALOR'
                'ORDEM ALFAB'#201'TICA')
              Items.StoredStrings = (
                'ALEAT'#211'RIO'
                'DATA DE VENCIMENTO'
                'VALOR'
                'ORDEM ALFAB'#201'TICA')
              LabelCaption = 'Ordena'#231#227'o:'
              LabelPosition = lpTopLeft
              LabelTransparent = True
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -13
              LabelFont.Name = 'Roboto'
              LabelFont.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 7
              OnKeyDown = AdvDBComboBox1KeyDown
            end
            object DBMemo2: TDBMemo
              Left = 32
              Top = 392
              Width = 625
              Height = 89
              DataField = 'SCRIPT'
              DataSource = frmgrupogeral.UniDSQGrupoGeral
              TabOrder = 8
            end
            object DBAdvLUEdit3: TDBAdvLUEdit
              Left = 32
              Top = 264
              Width = 186
              Height = 23
              BorderColor = clSilver
              DefaultHandling = True
              EmptyTextStyle = []
              LabelCaption = 'Valor Saldo (Valor das D'#237'vidas):'
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
              ParentFont = False
              TabOrder = 9
              Text = ''
              Visible = True
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
              DataField = 'VALOR_SALDO_DE'
              DataSource = frmgrupogeral.UniDSQGrupoGeral
              DataLookup = False
            end
            object DBAdvLUEdit6: TDBAdvLUEdit
              Left = 244
              Top = 264
              Width = 186
              Height = 23
              BorderColor = clSilver
              DefaultHandling = True
              EmptyTextStyle = []
              LabelCaption = 'at'#233
              LabelPosition = lpLeftCenter
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
              ParentFont = False
              TabOrder = 10
              Text = ''
              Visible = True
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
              DataField = 'VALOR_SALDO_ATE'
              DataSource = frmgrupogeral.UniDSQGrupoGeral
              DataLookup = False
            end
            object AdvDBComboBox2: TAdvDBComboBox
              Left = 244
              Top = 95
              Width = 186
              Height = 23
              Color = clWhite
              Version = '1.0.4.2'
              Visible = True
              Ctl3D = False
              DataField = 'STATUS'
              DataSource = frmgrupogeral.UniDSQGrupoGeral
              DropWidth = 0
              Flat = True
              FlatLineColor = clSilver
              Enabled = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              ItemIndex = 0
              Items.Strings = (
                'Todos'
                'S'
                'N'
                'A')
              Items.StoredStrings = (
                ''
                ''
                ''
                '')
              LabelCaption = 'Status:'
              LabelPosition = lpTopLeft
              LabelTransparent = True
              LabelFont.Charset = DEFAULT_CHARSET
              LabelFont.Color = clWindowText
              LabelFont.Height = -13
              LabelFont.Name = 'Roboto'
              LabelFont.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 11
              OnKeyDown = AdvDBComboBox2KeyDown
            end
            object Panel5: TPanel
              AlignWithMargins = True
              Left = 10
              Top = 496
              Width = 783
              Height = 73
              Margins.Left = 10
              Margins.Top = 0
              Margins.Right = 10
              Margins.Bottom = 10
              Align = alBottom
              BevelOuter = bvNone
              Color = 8282689
              ParentBackground = False
              TabOrder = 12
              object Label30: TLabel
                Left = 22
                Top = 14
                Width = 124
                Height = 19
                Caption = 'Total de Clientes:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -16
                Font.Name = 'Roboto'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label31: TLabel
                Left = 353
                Top = 14
                Width = 68
                Height = 19
                Caption = 'Total ($):'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -16
                Font.Name = 'Roboto'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RzToolButton13: TRzToolButton
                AlignWithMargins = True
                Left = 548
                Top = 22
                Width = 120
                Height = 40
                Cursor = crHandPoint
                GradientColorStyle = gcsSystem
                Flat = False
                ShowCaption = True
                Transparent = False
                UseToolbarButtonSize = False
                UseToolbarShowCaption = False
                UseToolbarVisualStyle = False
                VisualStyle = vsWinXP
                Caption = 'Gerar'
                Color = 13273922
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -15
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
                OnClick = RzToolButton13Click
              end
              object Label10: TLabel
                Left = 187
                Top = 14
                Width = 143
                Height = 19
                Caption = 'Total de Opera'#231#245'es:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -16
                Font.Name = 'Roboto'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object RzNumericEdit1: TRzNumericEdit
                Left = 22
                Top = 34
                Width = 156
                Height = 27
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                DisplayFormat = '0'
              end
              object RzEditPrimeira: TRzNumericEdit
                Left = 353
                Top = 34
                Width = 175
                Height = 27
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                IntegersOnly = False
                DisplayFormat = '###,##0.00'
              end
              object RzNumericEdit2: TRzNumericEdit
                Left = 187
                Top = 34
                Width = 156
                Height = 27
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -16
                Font.Name = 'Roboto'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                DisplayFormat = '0'
              end
            end
            object JvDBDatePickerEdit1: TJvDBDatePickerEdit
              Left = 32
              Top = 150
              Width = 186
              Height = 23
              AllowNoDate = True
              DataField = 'PERIODO_DE'
              DataSource = frmgrupogeral.UniDSQGrupoGeral
              NoDateText = '01/01/1992'
              NoDateValue = 33604.000000000000000000
              TabOrder = 13
            end
            object JvDBDatePickerEdit2: TJvDBDatePickerEdit
              Left = 244
              Top = 150
              Width = 186
              Height = 23
              AllowNoDate = True
              DataField = 'PERIODO_ATE'
              DataSource = frmgrupogeral.UniDSQGrupoGeral
              NoDateText = '31/12/2045'
              NoDateValue = 53327.000000000000000000
              TabOrder = 14
            end
            object JvDBDatePickerEdit3: TJvDBDatePickerEdit
              Left = 32
              Top = 328
              Width = 186
              Height = 23
              AllowNoDate = True
              DataField = 'ULTIMO_ACIONAMENTO_DE'
              DataSource = frmgrupogeral.UniDSQGrupoGeral
              NoDateText = '01/01/1992'
              NoDateValue = 33604.000000000000000000
              TabOrder = 15
            end
            object JvDBDatePickerEdit4: TJvDBDatePickerEdit
              Left = 244
              Top = 328
              Width = 186
              Height = 23
              AllowNoDate = True
              DataField = 'ULTIMO_ACIONAMENTO_ATE'
              DataSource = frmgrupogeral.UniDSQGrupoGeral
              NoDateText = '31/12/2045'
              NoDateValue = 53327.000000000000000000
              TabOrder = 16
            end
            object cxGrid2: TcxGrid
              Left = 513
              Top = 100
              Width = 250
              Height = 200
              TabOrder = 17
              Visible = False
              object cxGrid2DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = dsAtivos
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                object cxGrid2DBTableView1data_remessa: TcxGridDBColumn
                  DataBinding.FieldName = 'data_remessa'
                end
                object cxGrid2DBTableView1numero_remessa: TcxGridDBColumn
                  DataBinding.FieldName = 'numero_remessa'
                end
                object cxGrid2DBTableView1cod_empresa: TcxGridDBColumn
                  DataBinding.FieldName = 'cod_empresa'
                end
                object cxGrid2DBTableView1cod_evento_atualizacao: TcxGridDBColumn
                  DataBinding.FieldName = 'cod_evento_atualizacao'
                end
                object cxGrid2DBTableView1retomar_liquidar_op: TcxGridDBColumn
                  DataBinding.FieldName = 'retomar_liquidar_op'
                end
                object cxGrid2DBTableView1tipo: TcxGridDBColumn
                  DataBinding.FieldName = 'tipo'
                end
                object cxGrid2DBTableView1numero_operacao: TcxGridDBColumn
                  DataBinding.FieldName = 'numero_operacao'
                end
                object cxGrid2DBTableView1nome_operacao: TcxGridDBColumn
                  DataBinding.FieldName = 'nome_operacao'
                end
                object cxGrid2DBTableView1agencia: TcxGridDBColumn
                  DataBinding.FieldName = 'agencia'
                end
                object cxGrid2DBTableView1conta: TcxGridDBColumn
                  DataBinding.FieldName = 'conta'
                end
                object cxGrid2DBTableView1produto: TcxGridDBColumn
                  DataBinding.FieldName = 'produto'
                end
                object cxGrid2DBTableView1modalidade: TcxGridDBColumn
                  DataBinding.FieldName = 'modalidade'
                end
                object cxGrid2DBTableView1data_atualizado: TcxGridDBColumn
                  DataBinding.FieldName = 'data_atualizado'
                end
                object cxGrid2DBTableView1data_vencimento: TcxGridDBColumn
                  DataBinding.FieldName = 'data_vencimento'
                end
                object cxGrid2DBTableView1valor_operacao: TcxGridDBColumn
                  DataBinding.FieldName = 'valor_operacao'
                end
                object cxGrid2DBTableView1valor_vencido: TcxGridDBColumn
                  DataBinding.FieldName = 'valor_vencido'
                end
                object cxGrid2DBTableView1valor_iof: TcxGridDBColumn
                  DataBinding.FieldName = 'valor_iof'
                end
                object cxGrid2DBTableView1cond_negociais: TcxGridDBColumn
                  DataBinding.FieldName = 'cond_negociais'
                end
                object cxGrid2DBTableView1forma_atualizacao: TcxGridDBColumn
                  DataBinding.FieldName = 'forma_atualizacao'
                end
                object cxGrid2DBTableView1garantias: TcxGridDBColumn
                  DataBinding.FieldName = 'garantias'
                end
                object cxGrid2DBTableView1numero_identidade: TcxGridDBColumn
                  DataBinding.FieldName = 'numero_identidade'
                end
                object cxGrid2DBTableView1cpf_cnpj: TcxGridDBColumn
                  DataBinding.FieldName = 'cpf_cnpj'
                end
                object cxGrid2DBTableView1mci: TcxGridDBColumn
                  DataBinding.FieldName = 'mci'
                end
                object cxGrid2DBTableView1numero_ficha: TcxGridDBColumn
                  DataBinding.FieldName = 'numero_ficha'
                end
                object cxGrid2DBTableView1nome_cliente: TcxGridDBColumn
                  DataBinding.FieldName = 'nome_cliente'
                end
                object cxGrid2DBTableView1endereco: TcxGridDBColumn
                  DataBinding.FieldName = 'endereco'
                end
                object cxGrid2DBTableView1bairro: TcxGridDBColumn
                  DataBinding.FieldName = 'bairro'
                end
                object cxGrid2DBTableView1cep: TcxGridDBColumn
                  DataBinding.FieldName = 'cep'
                end
                object cxGrid2DBTableView1cidade: TcxGridDBColumn
                  DataBinding.FieldName = 'cidade'
                end
                object cxGrid2DBTableView1uf: TcxGridDBColumn
                  DataBinding.FieldName = 'uf'
                end
                object cxGrid2DBTableView1telefone1: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone1'
                end
                object cxGrid2DBTableView1telefone2: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone2'
                end
                object cxGrid2DBTableView1telefone3: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone3'
                end
                object cxGrid2DBTableView1telefone4: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone4'
                end
                object cxGrid2DBTableView1telefone5: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone5'
                end
                object cxGrid2DBTableView1telefone6: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone6'
                end
                object cxGrid2DBTableView1data_nascimento: TcxGridDBColumn
                  DataBinding.FieldName = 'data_nascimento'
                end
                object cxGrid2DBTableView1naturalidade: TcxGridDBColumn
                  DataBinding.FieldName = 'naturalidade'
                end
                object cxGrid2DBTableView1sexo: TcxGridDBColumn
                  DataBinding.FieldName = 'sexo'
                end
                object cxGrid2DBTableView1estado_civil: TcxGridDBColumn
                  DataBinding.FieldName = 'estado_civil'
                end
                object cxGrid2DBTableView1nome_pai: TcxGridDBColumn
                  DataBinding.FieldName = 'nome_pai'
                end
                object cxGrid2DBTableView1nome_mae: TcxGridDBColumn
                  DataBinding.FieldName = 'nome_mae'
                end
                object cxGrid2DBTableView1avalista1: TcxGridDBColumn
                  DataBinding.FieldName = 'avalista1'
                end
                object cxGrid2DBTableView1cpf_cnpj_avalista1: TcxGridDBColumn
                  DataBinding.FieldName = 'cpf_cnpj_avalista1'
                end
                object cxGrid2DBTableView1endereco_avalista1: TcxGridDBColumn
                  DataBinding.FieldName = 'endereco_avalista1'
                end
                object cxGrid2DBTableView1bairro_avalista1: TcxGridDBColumn
                  DataBinding.FieldName = 'bairro_avalista1'
                end
                object cxGrid2DBTableView1cep_avalista1: TcxGridDBColumn
                  DataBinding.FieldName = 'cep_avalista1'
                end
                object cxGrid2DBTableView1cidade_avalista1: TcxGridDBColumn
                  DataBinding.FieldName = 'cidade_avalista1'
                end
                object cxGrid2DBTableView1uf_avalista1: TcxGridDBColumn
                  DataBinding.FieldName = 'uf_avalista1'
                end
                object cxGrid2DBTableView1telefone1_avalista1: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone1_avalista1'
                end
                object cxGrid2DBTableView1telefone2_avalista1: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone2_avalista1'
                end
                object cxGrid2DBTableView1nome_avalista2: TcxGridDBColumn
                  DataBinding.FieldName = 'nome_avalista2'
                end
                object cxGrid2DBTableView1cpf_cnpj_avalista2: TcxGridDBColumn
                  DataBinding.FieldName = 'cpf_cnpj_avalista2'
                end
                object cxGrid2DBTableView1endereco_avalista2: TcxGridDBColumn
                  DataBinding.FieldName = 'endereco_avalista2'
                end
                object cxGrid2DBTableView1bairro_avalista2: TcxGridDBColumn
                  DataBinding.FieldName = 'bairro_avalista2'
                end
                object cxGrid2DBTableView1cep_avalista2: TcxGridDBColumn
                  DataBinding.FieldName = 'cep_avalista2'
                end
                object cxGrid2DBTableView1cidade_avalista2: TcxGridDBColumn
                  DataBinding.FieldName = 'cidade_avalista2'
                end
                object cxGrid2DBTableView1uf_avalista2: TcxGridDBColumn
                  DataBinding.FieldName = 'uf_avalista2'
                end
                object cxGrid2DBTableView1telefone1_avalista2: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone1_avalista2'
                end
                object cxGrid2DBTableView1telefone2_avalista2: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone2_avalista2'
                end
                object cxGrid2DBTableView1nome_avalista3: TcxGridDBColumn
                  DataBinding.FieldName = 'nome_avalista3'
                end
                object cxGrid2DBTableView1cpf_cnpj_avalista3: TcxGridDBColumn
                  DataBinding.FieldName = 'cpf_cnpj_avalista3'
                end
                object cxGrid2DBTableView1endereco_avalista3: TcxGridDBColumn
                  DataBinding.FieldName = 'endereco_avalista3'
                end
                object cxGrid2DBTableView1bairro_avalista3: TcxGridDBColumn
                  DataBinding.FieldName = 'bairro_avalista3'
                end
                object cxGrid2DBTableView1cep_avalista3: TcxGridDBColumn
                  DataBinding.FieldName = 'cep_avalista3'
                end
                object cxGrid2DBTableView1cidade_avalista3: TcxGridDBColumn
                  DataBinding.FieldName = 'cidade_avalista3'
                end
                object cxGrid2DBTableView1uf_avalista3: TcxGridDBColumn
                  DataBinding.FieldName = 'uf_avalista3'
                end
                object cxGrid2DBTableView1telefone1_avalista3: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone1_avalista3'
                end
                object cxGrid2DBTableView1telefone2_avalista3: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone2_avalista3'
                end
                object cxGrid2DBTableView1nome_avalista4: TcxGridDBColumn
                  DataBinding.FieldName = 'nome_avalista4'
                end
                object cxGrid2DBTableView1cpf_cnpj_avalista4: TcxGridDBColumn
                  DataBinding.FieldName = 'cpf_cnpj_avalista4'
                end
                object cxGrid2DBTableView1endereco_avalista4: TcxGridDBColumn
                  DataBinding.FieldName = 'endereco_avalista4'
                end
                object cxGrid2DBTableView1bairro_avalista4: TcxGridDBColumn
                  DataBinding.FieldName = 'bairro_avalista4'
                end
                object cxGrid2DBTableView1cep_avalista4: TcxGridDBColumn
                  DataBinding.FieldName = 'cep_avalista4'
                end
                object cxGrid2DBTableView1cidade_avalista4: TcxGridDBColumn
                  DataBinding.FieldName = 'cidade_avalista4'
                end
                object cxGrid2DBTableView1uf_avalista4: TcxGridDBColumn
                  DataBinding.FieldName = 'uf_avalista4'
                end
                object cxGrid2DBTableView1telefone1_avalista4: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone1_avalista4'
                end
                object cxGrid2DBTableView1telefone2_avalista4: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone2_avalista4'
                end
                object cxGrid2DBTableView1nome_avalista5: TcxGridDBColumn
                  DataBinding.FieldName = 'nome_avalista5'
                end
                object cxGrid2DBTableView1cpf_cnpj_avalista5: TcxGridDBColumn
                  DataBinding.FieldName = 'cpf_cnpj_avalista5'
                end
                object cxGrid2DBTableView1endereco_avalista5: TcxGridDBColumn
                  DataBinding.FieldName = 'endereco_avalista5'
                end
                object cxGrid2DBTableView1bairro_avalista5: TcxGridDBColumn
                  DataBinding.FieldName = 'bairro_avalista5'
                end
                object cxGrid2DBTableView1cep_avalista5: TcxGridDBColumn
                  DataBinding.FieldName = 'cep_avalista5'
                end
                object cxGrid2DBTableView1cidade_avalista5: TcxGridDBColumn
                  DataBinding.FieldName = 'cidade_avalista5'
                end
                object cxGrid2DBTableView1uf_avalista5: TcxGridDBColumn
                  DataBinding.FieldName = 'uf_avalista5'
                end
                object cxGrid2DBTableView1telefone1_avalista5: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone1_avalista5'
                end
                object cxGrid2DBTableView1telefone2_avalista5: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone2_avalista5'
                end
                object cxGrid2DBTableView1nome_avalista6: TcxGridDBColumn
                  DataBinding.FieldName = 'nome_avalista6'
                end
                object cxGrid2DBTableView1cpf_cnpj_avalista6: TcxGridDBColumn
                  DataBinding.FieldName = 'cpf_cnpj_avalista6'
                end
                object cxGrid2DBTableView1endereco_avalista6: TcxGridDBColumn
                  DataBinding.FieldName = 'endereco_avalista6'
                end
                object cxGrid2DBTableView1bairro_avalista6: TcxGridDBColumn
                  DataBinding.FieldName = 'bairro_avalista6'
                end
                object cxGrid2DBTableView1cep_avalista6: TcxGridDBColumn
                  DataBinding.FieldName = 'cep_avalista6'
                end
                object cxGrid2DBTableView1cidade_avalista6: TcxGridDBColumn
                  DataBinding.FieldName = 'cidade_avalista6'
                end
                object cxGrid2DBTableView1uf_avalista6: TcxGridDBColumn
                  DataBinding.FieldName = 'uf_avalista6'
                end
                object cxGrid2DBTableView1telefone1_avalista6: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone1_avalista6'
                end
                object cxGrid2DBTableView1telefone2_avalista6: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone2_avalista6'
                end
                object cxGrid2DBTableView1profissao: TcxGridDBColumn
                  DataBinding.FieldName = 'profissao'
                end
                object cxGrid2DBTableView1nome_local_trabalho: TcxGridDBColumn
                  DataBinding.FieldName = 'nome_local_trabalho'
                end
                object cxGrid2DBTableView1endereco_local_trabalho: TcxGridDBColumn
                  DataBinding.FieldName = 'endereco_local_trabalho'
                end
                object cxGrid2DBTableView1bairro_local_trabalho: TcxGridDBColumn
                  DataBinding.FieldName = 'bairro_local_trabalho'
                end
                object cxGrid2DBTableView1cep_local_trabalho: TcxGridDBColumn
                  DataBinding.FieldName = 'cep_local_trabalho'
                end
                object cxGrid2DBTableView1cidade_local_trabalho: TcxGridDBColumn
                  DataBinding.FieldName = 'cidade_local_trabalho'
                end
                object cxGrid2DBTableView1uf_local_trabalho: TcxGridDBColumn
                  DataBinding.FieldName = 'uf_local_trabalho'
                end
                object cxGrid2DBTableView1telefone1_local_trabalho: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone1_local_trabalho'
                end
                object cxGrid2DBTableView1telefone2_local_trabalho: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone2_local_trabalho'
                end
                object cxGrid2DBTableView1referencia_pessoal1: TcxGridDBColumn
                  DataBinding.FieldName = 'referencia_pessoal1'
                end
                object cxGrid2DBTableView1telefone1_referencia1: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone1_referencia1'
                end
                object cxGrid2DBTableView1telefone2_referencia1: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone2_referencia1'
                end
                object cxGrid2DBTableView1referencia_pessoal2: TcxGridDBColumn
                  DataBinding.FieldName = 'referencia_pessoal2'
                end
                object cxGrid2DBTableView1telefone1_referencia2: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone1_referencia2'
                end
                object cxGrid2DBTableView1telefone2_referencia2: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone2_referencia2'
                end
                object cxGrid2DBTableView1referencia_pessoal3: TcxGridDBColumn
                  DataBinding.FieldName = 'referencia_pessoal3'
                end
                object cxGrid2DBTableView1telefone1_referencia3: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone1_referencia3'
                end
                object cxGrid2DBTableView1telefone2_referencia3: TcxGridDBColumn
                  DataBinding.FieldName = 'telefone2_referencia3'
                end
                object cxGrid2DBTableView1spc_serasa: TcxGridDBColumn
                  DataBinding.FieldName = 'spc_serasa'
                end
                object cxGrid2DBTableView1email: TcxGridDBColumn
                  DataBinding.FieldName = 'email'
                end
                object cxGrid2DBTableView1email1: TcxGridDBColumn
                  DataBinding.FieldName = 'email1'
                end
                object cxGrid2DBTableView1data_emissao: TcxGridDBColumn
                  DataBinding.FieldName = 'data_emissao'
                end
                object cxGrid2DBTableView1valor_protesto: TcxGridDBColumn
                  DataBinding.FieldName = 'valor_protesto'
                end
                object cxGrid2DBTableView1obs_operacao: TcxGridDBColumn
                  DataBinding.FieldName = 'obs_operacao'
                end
                object cxGrid2DBTableView1obs_cliente: TcxGridDBColumn
                  DataBinding.FieldName = 'obs_cliente'
                end
                object cxGrid2DBTableView1data_fimterceirizacao: TcxGridDBColumn
                  DataBinding.FieldName = 'data_fimterceirizacao'
                end
                object cxGrid2DBTableView1valor_juros: TcxGridDBColumn
                  DataBinding.FieldName = 'valor_juros'
                end
                object cxGrid2DBTableView1cod_classificacao_cliente: TcxGridDBColumn
                  DataBinding.FieldName = 'cod_classificacao_cliente'
                end
                object cxGrid2DBTableView1cod_classificacao_operacao: TcxGridDBColumn
                  DataBinding.FieldName = 'cod_classificacao_operacao'
                end
                object cxGrid2DBTableView1data_assinatura_contrato: TcxGridDBColumn
                  DataBinding.FieldName = 'data_assinatura_contrato'
                end
                object cxGrid2DBTableView1score: TcxGridDBColumn
                  DataBinding.FieldName = 'score'
                end
                object cxGrid2DBTableView1score_interno: TcxGridDBColumn
                  DataBinding.FieldName = 'score_interno'
                end
                object cxGrid2DBTableView1renda: TcxGridDBColumn
                  DataBinding.FieldName = 'renda'
                end
              end
              object cxGrid2Level1: TcxGridLevel
                GridView = cxGrid2DBTableView1
              end
            end
          end
        end
      end
      object TTabPage
        Left = 4
        Top = 26
        Caption = 'Defini'#231#245'es'
        object Notebook8: TNotebook
          Left = 0
          Top = 0
          Width = 803
          Height = 579
          Align = alClient
          TabOrder = 0
          object TPage
            Left = 0
            Top = 0
            Caption = 'Default'
            object Label6: TLabel
              Left = 16
              Top = 20
              Width = 182
              Height = 15
              Caption = 'Selecione os crit'#233'rios de busca:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
            end
            object Bevel1: TBevel
              Left = 16
              Top = 36
              Width = 784
              Height = 8
              Shape = bsBottomLine
            end
            object Label2: TLabel
              Left = 16
              Top = 56
              Width = 134
              Height = 15
              Caption = 'Grupos de Operadores:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label4: TLabel
              Left = 16
              Top = 285
              Width = 51
              Height = 15
              Caption = 'Estados:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RzToolButton3: TRzToolButton
              AlignWithMargins = True
              Left = 355
              Top = 50
              Width = 30
              Height = 30
              Cursor = crHandPoint
              GradientColorStyle = gcsSystem
              Flat = False
              ImageIndex = 0
              ShowCaption = True
              Spacing = 0
              Transparent = False
              UseToolbarButtonSize = False
              UseToolbarShowCaption = False
              UseToolbarVisualStyle = False
              VisualStyle = vsWinXP
              Caption = '-'
              Color = 13273922
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -24
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
              OnClick = RzToolButton3Click
            end
            object btnalterar: TRzToolButton
              AlignWithMargins = True
              Left = 311
              Top = 50
              Width = 30
              Height = 30
              Cursor = crHandPoint
              GradientColorStyle = gcsSystem
              Flat = False
              ShowCaption = True
              Spacing = 0
              Transparent = False
              UseToolbarButtonSize = False
              UseToolbarShowCaption = False
              UseToolbarVisualStyle = False
              VisualStyle = vsWinXP
              Caption = '+'
              Color = 13273922
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -24
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
              OnClick = btnalterarClick
            end
            object RzToolButton6: TRzToolButton
              AlignWithMargins = True
              Left = 311
              Top = 275
              Width = 30
              Height = 30
              Cursor = crHandPoint
              GradientColorStyle = gcsSystem
              Flat = False
              ShowCaption = True
              Spacing = 0
              Transparent = False
              UseToolbarButtonLayout = False
              UseToolbarButtonSize = False
              UseToolbarShowCaption = False
              UseToolbarVisualStyle = False
              VisualStyle = vsWinXP
              Caption = '+'
              Color = 13273922
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -24
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
              OnClick = RzToolButton6Click
            end
            object RzToolButton7: TRzToolButton
              AlignWithMargins = True
              Left = 355
              Top = 275
              Width = 30
              Height = 30
              Cursor = crHandPoint
              GradientColorStyle = gcsSystem
              Flat = False
              ImageIndex = 0
              ShowCaption = True
              Spacing = 0
              Transparent = False
              UseToolbarButtonSize = False
              UseToolbarShowCaption = False
              UseToolbarVisualStyle = False
              VisualStyle = vsWinXP
              Caption = '-'
              Color = 13273922
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -24
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
              OnClick = RzToolButton7Click
            end
            object RzToolButton8: TRzToolButton
              AlignWithMargins = True
              Left = 162
              Top = 275
              Width = 66
              Height = 30
              Cursor = crHandPoint
              GradientColorStyle = gcsSystem
              Flat = False
              ShowCaption = True
              Spacing = 0
              Transparent = False
              UseToolbarButtonLayout = False
              UseToolbarButtonSize = False
              UseToolbarShowCaption = False
              UseToolbarVisualStyle = False
              VisualStyle = vsWinXP
              Caption = 'Todos'
              Color = 13273922
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
              OnClick = RzToolButton8Click
            end
            object RzToolButton9: TRzToolButton
              AlignWithMargins = True
              Left = 162
              Top = 50
              Width = 66
              Height = 30
              Cursor = crHandPoint
              GradientColorStyle = gcsSystem
              Flat = False
              ShowCaption = True
              Spacing = 0
              Transparent = False
              UseToolbarButtonLayout = False
              UseToolbarButtonSize = False
              UseToolbarShowCaption = False
              UseToolbarVisualStyle = False
              VisualStyle = vsWinXP
              Caption = 'Todos'
              Color = 13273922
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
              OnClick = RzToolButton9Click
            end
            object Bevel2: TBevel
              Left = 399
              Top = 340
              Width = 385
              Height = 8
              Shape = bsBottomLine
            end
            object Bevel3: TBevel
              Left = 399
              Top = 440
              Width = 385
              Height = 8
              Shape = bsBottomLine
            end
            object Label3: TLabel
              Left = 415
              Top = 56
              Width = 43
              Height = 15
              Caption = 'Credor:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object RzToolButton5: TRzToolButton
              AlignWithMargins = True
              Left = 609
              Top = 50
              Width = 66
              Height = 30
              Cursor = crHandPoint
              GradientColorStyle = gcsSystem
              Flat = False
              ShowCaption = True
              Spacing = 0
              Transparent = False
              UseToolbarButtonLayout = False
              UseToolbarButtonSize = False
              UseToolbarShowCaption = False
              UseToolbarVisualStyle = False
              VisualStyle = vsWinXP
              Caption = 'Todos'
              Color = 13273922
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
              OnClick = RzToolButton5Click
            end
            object RzToolButton10: TRzToolButton
              AlignWithMargins = True
              Left = 710
              Top = 50
              Width = 30
              Height = 30
              Cursor = crHandPoint
              GradientColorStyle = gcsSystem
              Flat = False
              ShowCaption = True
              Spacing = 0
              Transparent = False
              UseToolbarButtonSize = False
              UseToolbarShowCaption = False
              UseToolbarVisualStyle = False
              VisualStyle = vsWinXP
              Caption = '+'
              Color = 13273922
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -24
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
              OnClick = RzToolButton10Click
            end
            object RzToolButton11: TRzToolButton
              AlignWithMargins = True
              Left = 754
              Top = 50
              Width = 30
              Height = 30
              Cursor = crHandPoint
              GradientColorStyle = gcsSystem
              Flat = False
              ImageIndex = 0
              ShowCaption = True
              Spacing = 0
              Transparent = False
              UseToolbarButtonSize = False
              UseToolbarShowCaption = False
              UseToolbarVisualStyle = False
              VisualStyle = vsWinXP
              Caption = '-'
              Color = 13273922
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -24
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
              OnClick = RzToolButton11Click
            end
            object RzToolButton16: TRzToolButton
              AlignWithMargins = True
              Left = 497
              Top = 50
              Width = 66
              Height = 30
              Cursor = crHandPoint
              GradientColorStyle = gcsSystem
              Flat = False
              ShowCaption = True
              Spacing = 0
              Transparent = False
              UseToolbarButtonLayout = False
              UseToolbarButtonSize = False
              UseToolbarShowCaption = False
              UseToolbarVisualStyle = False
              VisualStyle = vsWinXP
              Caption = 'Grupo'
              Color = 13273922
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
              OnClick = RzToolButton16Click
            end
            object DBAdvOfficeCheckBox6: TDBAdvOfficeCheckBox
              Left = 522
              Top = 362
              Width = 153
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = DBAdvOfficeCheckBox1Click
              Alignment = taLeftJustify
              Caption = 'Pessoa F'#237'sica'
              ReturnIsTab = False
              Version = '1.1.0.0'
              DataField = 'P_FISICA_CHECK'
              DataSource = frmgrupogeral.UniDSQGrupoGeral
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object DBAdvOfficeCheckBox7: TDBAdvOfficeCheckBox
              Left = 522
              Top = 402
              Width = 126
              Height = 24
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = DBAdvOfficeCheckBox5Click
              Alignment = taLeftJustify
              Caption = 'Pessoa Jur'#237'dica'
              ReturnIsTab = False
              Version = '1.1.0.0'
              DataField = 'P_JURIDICA_CHECK'
              DataSource = frmgrupogeral.UniDSQGrupoGeral
              ValueChecked = 'True'
              ValueUnchecked = 'False'
            end
            object JvDBGrid1: TJvDBGrid
              Left = 16
              Top = 81
              Width = 369
              Height = 169
              Color = clWhite
              DataSource = UniDSQOperadorGrupo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Roboto'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              TabOrder = 2
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Roboto'
              TitleFont.Style = []
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              CanDelete = False
              EditControls = <>
              RowsHeight = 17
              TitleRowHeight = 17
              Columns = <
                item
                  Expanded = False
                  FieldName = 'GRUPO_OPERADOR'
                  Title.Alignment = taCenter
                  Title.Caption = 'C'#243'd. Grupo'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nome_grupo'
                  Title.Alignment = taCenter
                  Title.Caption = 'Nome Grupo'
                  Width = 254
                  Visible = True
                end>
            end
            object JvDBGrid3: TJvDBGrid
              Left = 16
              Top = 306
              Width = 369
              Height = 169
              Color = clWhite
              DataSource = UniDSQEstados
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Roboto'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              TabOrder = 3
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Roboto'
              TitleFont.Style = []
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              CanDelete = False
              EditControls = <>
              RowsHeight = 17
              TitleRowHeight = 17
              Columns = <
                item
                  Expanded = False
                  FieldName = 'ESTADO'
                  Title.Alignment = taCenter
                  Title.Caption = 'Estado'
                  Width = 83
                  Visible = True
                end>
            end
            object JvDBGrid2: TJvDBGrid
              Left = 415
              Top = 81
              Width = 369
              Height = 169
              Color = clWhite
              DataSource = UniDSCampanha_Credores
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Roboto'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ParentFont = False
              TabOrder = 4
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Roboto'
              TitleFont.Style = []
              SelectColumnsDialogStrings.Caption = 'Select columns'
              SelectColumnsDialogStrings.OK = '&OK'
              SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
              CanDelete = False
              EditControls = <>
              RowsHeight = 17
              TitleRowHeight = 17
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CODIGO_CREDOR'
                  Title.Alignment = taCenter
                  Title.Caption = 'C'#243'd. Credor'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nome'
                  Title.Alignment = taCenter
                  Title.Caption = 'Credor'
                  Visible = True
                end>
            end
          end
        end
      end
      object TTabPage
        Left = 4
        Top = 26
        Caption = 'Lista'
        object Notebook2: TNotebook
          Left = 0
          Top = 0
          Width = 803
          Height = 579
          Align = alClient
          TabOrder = 0
          object TPage
            Left = 0
            Top = 0
            Caption = 'Default'
            object DBGrid1: TDBGrid
              Left = 0
              Top = 0
              Width = 803
              Height = 579
              Align = alClient
              DataSource = UniDSQLista
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Roboto'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Roboto'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'cliente'
                  Title.Alignment = taCenter
                  Width = 121
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nome'
                  Title.Alignment = taCenter
                  Width = 262
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nroperacao'
                  Title.Alignment = taCenter
                  Width = 80
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'remessa'
                  Title.Alignment = taCenter
                  Width = 200
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'status'
                  Title.Alignment = taCenter
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'datavencto'
                  Title.Alignment = taCenter
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'valorvencido'
                  Title.Alignment = taCenter
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'valornominal'
                  Title.Alignment = taCenter
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'dias_atraso'
                  Title.Alignment = taCenter
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'credor'
                  Title.Alignment = taCenter
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ultimo_acionamento'
                  Title.Alignment = taCenter
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'tipopessoa'
                  Title.Alignment = taCenter
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cpf_cnpj'
                  Title.Alignment = taCenter
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'endereco'
                  Title.Alignment = taCenter
                  Width = 150
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'numero'
                  Title.Alignment = taCenter
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'setor'
                  Title.Alignment = taCenter
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cidade'
                  Title.Alignment = taCenter
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'uf'
                  Title.Alignment = taCenter
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cep'
                  Title.Alignment = taCenter
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'fone'
                  Title.Alignment = taCenter
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'faxcel'
                  Title.Alignment = taCenter
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'fone_1'
                  Title.Alignment = taCenter
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'faxcel_1'
                  Title.Alignment = taCenter
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'e_mail'
                  Title.Alignment = taCenter
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'e_mail1'
                  Title.Alignment = taCenter
                  Width = 100
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'nome_credor'
                  Visible = True
                end>
            end
            object cxGrid1: TcxGrid
              Left = 176
              Top = 234
              Width = 433
              Height = 200
              TabOrder = 1
              Visible = False
              object cxGrid1DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = UniDSQLista
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                object cxGrid1DBTableView1cliente: TcxGridDBColumn
                  DataBinding.FieldName = 'cliente'
                end
                object cxGrid1DBTableView1nome: TcxGridDBColumn
                  DataBinding.FieldName = 'nome'
                end
                object cxGrid1DBTableView1nroperacao: TcxGridDBColumn
                  DataBinding.FieldName = 'nroperacao'
                end
                object cxGrid1DBTableView1remessa: TcxGridDBColumn
                  DataBinding.FieldName = 'remessa'
                end
                object cxGrid1DBTableView1status: TcxGridDBColumn
                  DataBinding.FieldName = 'status'
                end
                object cxGrid1DBTableView1datavencto: TcxGridDBColumn
                  DataBinding.FieldName = 'datavencto'
                end
                object cxGrid1DBTableView1valorvencido: TcxGridDBColumn
                  DataBinding.FieldName = 'valorvencido'
                end
                object cxGrid1DBTableView1valornominal: TcxGridDBColumn
                  DataBinding.FieldName = 'valornominal'
                end
                object cxGrid1DBTableView1dias_atraso: TcxGridDBColumn
                  DataBinding.FieldName = 'dias_atraso'
                end
                object cxGrid1DBTableView1credor: TcxGridDBColumn
                  DataBinding.FieldName = 'credor'
                end
                object cxGrid1DBTableView1ultimo_acionamento: TcxGridDBColumn
                  DataBinding.FieldName = 'ultimo_acionamento'
                end
                object cxGrid1DBTableView1tipopessoa: TcxGridDBColumn
                  DataBinding.FieldName = 'tipopessoa'
                end
                object cxGrid1DBTableView1cpf_cnpj: TcxGridDBColumn
                  DataBinding.FieldName = 'cpf_cnpj'
                end
                object cxGrid1DBTableView1endereco: TcxGridDBColumn
                  DataBinding.FieldName = 'endereco'
                end
                object cxGrid1DBTableView1numero: TcxGridDBColumn
                  DataBinding.FieldName = 'numero'
                end
                object cxGrid1DBTableView1setor: TcxGridDBColumn
                  DataBinding.FieldName = 'setor'
                end
                object cxGrid1DBTableView1cidade: TcxGridDBColumn
                  DataBinding.FieldName = 'cidade'
                end
                object cxGrid1DBTableView1uf: TcxGridDBColumn
                  DataBinding.FieldName = 'uf'
                end
                object cxGrid1DBTableView1cep: TcxGridDBColumn
                  DataBinding.FieldName = 'cep'
                end
                object cxGrid1DBTableView1fone: TcxGridDBColumn
                  DataBinding.FieldName = 'fone'
                end
                object cxGrid1DBTableView1faxcel: TcxGridDBColumn
                  DataBinding.FieldName = 'faxcel'
                end
                object cxGrid1DBTableView1fone_1: TcxGridDBColumn
                  DataBinding.FieldName = 'fone_1'
                end
                object cxGrid1DBTableView1faxcel_1: TcxGridDBColumn
                  DataBinding.FieldName = 'faxcel_1'
                end
                object cxGrid1DBTableView1e_mail: TcxGridDBColumn
                  DataBinding.FieldName = 'e_mail'
                end
                object cxGrid1DBTableView1e_mail1: TcxGridDBColumn
                  DataBinding.FieldName = 'e_mail1'
                end
                object cxGrid1DBTableView1nome_credor: TcxGridDBColumn
                  DataBinding.FieldName = 'nome_credor'
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
          end
        end
      end
    end
  end
  object unigetid: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from aviso')
    Left = 632
    Top = 304
  end
  object UniQOperador: TFDQuery
    MasterSource = frmgrupogeral.UniDSQGrupoGeral
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO_CAMPANHA'
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from campanha_grupo_operador')
    Left = 168
    Top = 208
    object UniQOperadorCODIGO: TFMTBCDField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Precision = 38
      Size = 0
    end
    object UniQOperadorCODIGO_CAMPANHA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_CAMPANHA'
      Origin = 'CODIGO_CAMPANHA'
    end
    object UniQOperadorGRUPO_OPERADOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPO_OPERADOR'
      Origin = 'GRUPO_OPERADOR'
    end
  end
  object UniDSQOperador: TDataSource
    DataSet = UniQOperador
    Left = 64
    Top = 208
  end
  object UniQEstados: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from campanha_estado')
    Left = 136
    Top = 376
    object UniQEstadosCODIGO: TFMTBCDField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Precision = 38
      Size = 0
    end
    object UniQEstadosCODIGO_CAMPANHA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_CAMPANHA'
      Origin = 'CODIGO_CAMPANHA'
    end
    object UniQEstadosESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 2
    end
  end
  object UniDSQEstados: TDataSource
    DataSet = UniQEstados
    Left = 48
    Top = 384
  end
  object uniscript: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from aviso')
    Left = 720
    Top = 304
  end
  object UniDSQOperadorGrupo: TDataSource
    DataSet = UniQOperadorGrupo
    Left = 64
    Top = 152
  end
  object UniQOperadorGrupo: TFDQuery
    MasterSource = frmgrupogeral.UniDSQGrupoGeral
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO_CAMPANHA'
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      
        'select campanha_grupo_operador.*, operador_grupo.nome_grupo from' +
        ' campanha_grupo_operador'
      
        'inner join operador_grupo on campanha_grupo_operador.grupo_opera' +
        'dor = operador_grupo.codigo')
    Left = 168
    Top = 152
    object UniQOperadorGrupoCODIGO: TFMTBCDField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Precision = 38
      Size = 0
    end
    object UniQOperadorGrupoCODIGO_CAMPANHA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_CAMPANHA'
      Origin = 'CODIGO_CAMPANHA'
    end
    object UniQOperadorGrupoGRUPO_OPERADOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPO_OPERADOR'
      Origin = 'GRUPO_OPERADOR'
    end
    object UniQOperadorGruponome_grupo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_grupo'
      Origin = 'NOME_GRUPO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object ImportExcel1: TImportExcel
    Left = 396
    Top = 66
  end
  object uniscriptexportar: TFDQuery
    Connection = frmDataModule.UniConnection1
    Left = 340
    Top = 74
  end
  object UniDSCampanha_Credores: TDataSource
    DataSet = UniCampanha_Credores
    Left = 504
    Top = 160
  end
  object UniCampanha_Credores: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select campanha_credores.*, bancos.nome from campanha_credores'
      
        'inner join bancos on campanha_credores.codigo_credor = bancos.co' +
        'digo')
    Left = 656
    Top = 160
    object UniCampanha_CredoresCODIGO: TFMTBCDField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
      Precision = 38
      Size = 0
    end
    object UniCampanha_CredoresCODIGO_CAMPANHA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_CAMPANHA'
      Origin = 'CODIGO_CAMPANHA'
    end
    object UniCampanha_CredoresCODIGO_CREDOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_CREDOR'
      Origin = 'CODIGO_CREDOR'
    end
    object UniCampanha_Credoresnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object UniProcDias_Atraso: TFDStoredProc
    Connection = frmDataModule.UniConnection1
    StoredProcName = 'DIAS_ATRASO'
    Left = 460
    Top = 522
  end
  object UniProcATT_ULTIMO_CONTATO: TFDStoredProc
    Connection = frmDataModule.UniConnection1
    StoredProcName = 'ATT_ULTIMO_CONTATO'
    Left = 684
    Top = 418
  end
  object UniDSQLista: TDataSource
    DataSet = UniQLista
    Left = 288
    Top = 424
  end
  object UniQLista: TFDQuery
    Connection = frmDataModule.UniConnection1
    FetchOptions.AssignedValues = [evMode, evRowsetSize]
    FetchOptions.Mode = fmAll
    FetchOptions.RowsetSize = 0
    SQL.Strings = (
      'select operacoes.cliente,'
      '        clientes.*,'
      '        operacoes.nroperacao,'
      '        operacoes.remessa,'
      '        operacoes.status,'
      '        operacoes.datavencto,'
      '        operacoes.valorvencido,'
      '        operacoes.valornominal,'
      '        CAST(operacoes.dias_atraso AS UNSIGNED) AS dias_atraso,'
      '        operacoes.credor,'
      '        operacoes.ultimo_acionamento,'
      '        bancos.nome as nome_credor        '
      
        'from operacoes inner join clientes on operacoes.cliente = client' +
        'es.cpf_cnpj'
      'inner join bancos on bancos.codigo = operacoes.credor'
      'where operacoes.cliente is not null')
    Left = 360
    Top = 424
    object UniQListacliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cliente'
      Origin = 'CLIENTE'
      Size = 100
    end
    object UniQListanome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object UniQListanroperacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nroperacao'
      Origin = 'NROPERACAO'
    end
    object UniQListaremessa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'remessa'
      Origin = 'REMESSA'
      Size = 100
    end
    object UniQListastatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = '`STATUS`'
      Size = 1
    end
    object UniQListadatavencto: TDateTimeField
      FieldName = 'datavencto'
    end
    object UniQListavalorvencido: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valorvencido'
      Origin = 'VALORVENCIDO'
      Precision = 12
      Size = 6
    end
    object UniQListavalornominal: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valornominal'
      Origin = 'VALORNOMINAL'
      Precision = 12
      Size = 6
    end
    object UniQListadias_atraso: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'dias_atraso'
      Origin = 'dias_atraso'
      ProviderFlags = []
      ReadOnly = True
    end
    object UniQListacredor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'credor'
      Origin = 'CREDOR'
      Size = 100
    end
    object UniQListaultimo_acionamento: TDateTimeField
      FieldName = 'ultimo_acionamento'
    end
    object UniQListatipopessoa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipopessoa'
      Origin = 'TIPOPESSOA'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object UniQListacpf_cnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf_cnpj'
      Origin = 'CPF_CNPJ'
      ProviderFlags = []
      ReadOnly = True
    end
    object UniQListaendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'ENDERECO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object UniQListanumero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'numero'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object UniQListasetor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'setor'
      Origin = 'SETOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object UniQListacidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'CIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object UniQListauf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'UF'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object UniQListacep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'CEP'
      ProviderFlags = []
      ReadOnly = True
      Size = 9
    end
    object UniQListafone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fone'
      Origin = 'FONE'
      ProviderFlags = []
      ReadOnly = True
    end
    object UniQListafaxcel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'faxcel'
      Origin = 'FAXCEL'
      ProviderFlags = []
      ReadOnly = True
    end
    object UniQListafone_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fone_1'
      Origin = 'FONE_1'
      ProviderFlags = []
      ReadOnly = True
    end
    object UniQListafaxcel_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'faxcel_1'
      Origin = 'FAXCEL_1'
      ProviderFlags = []
      ReadOnly = True
    end
    object UniQListae_mail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'e_mail'
      Origin = 'E_MAIL'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object UniQListae_mail1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'e_mail1'
      Origin = 'E_MAIL1'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object UniQListanome_credor: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_credor'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object UniQListacontato_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contato_1'
      Origin = 'CONTATO_1'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object UniQListaCODIGO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object UniQListaCONTACORRENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTACORRENTE'
      Origin = 'CONTACORRENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object UniQListaREGIAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REGIAO'
      Origin = 'REGIAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object UniQListaENDENDERECO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDENDERECO_1'
      Origin = 'ENDENDERECO_1'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object UniQListaNUMERO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO_1'
      Origin = 'NUMERO_1'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object UniQListaSETOR_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SETOR_1'
      Origin = 'SETOR_1'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object UniQListaCIDADE_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE_1'
      Origin = 'CIDADE_1'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object UniQListaUF_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF_1'
      Origin = 'UF_1'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object UniQListaCEP_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP_1'
      Origin = 'CEP_1'
      ProviderFlags = []
      ReadOnly = True
      Size = 9
    end
    object UniQListaFOTO: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'FOTO'
      Origin = 'FOTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object UniQListaCONTATO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object UniQListaMCI: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MCI'
      Origin = 'MCI'
      ProviderFlags = []
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object UniQListaDEVOLVERBB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DEVOLVERBB'
      Origin = 'DEVOLVERBB'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object UniQListaREMESSABB: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REMESSABB'
      Origin = 'REMESSABB'
      ProviderFlags = []
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object UniQListaOBS: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'OBS'
      Origin = 'OBS'
      ProviderFlags = []
      ReadOnly = True
    end
    object UniQListaDTA_NASCIMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DTA_NASCIMENTO'
      Origin = 'DTA_NASCIMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object UniQListaCOD_CLASSIFICACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_CLASSIFICACAO'
      Origin = 'COD_CLASSIFICACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object UniQListaDATA_MODIF: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_MODIF'
      Origin = 'DATA_MODIF'
    end
    object UniQListaPONTO_REF1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PONTO_REF1'
      Origin = 'PONTO_REF1'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object UniQListaPONTO_REF2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PONTO_REF2'
      Origin = 'PONTO_REF2'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object UniQListaAGENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object UniQListaLOCALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOCALIDADE'
      Origin = 'LOCALIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object UniQListaSETOR_FAT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SETOR_FAT'
      Origin = 'SETOR_FAT'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object UniQListaROTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ROTA'
      Origin = 'ROTA'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object UniQListaQUADRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'QUADRA'
      Origin = 'QUADRA'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object UniQListaLOTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOTE'
      Origin = 'LOTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object UniQListaSUBLOTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SUBLOTE'
      Origin = 'SUBLOTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 4
    end
    object UniQListaEND_PREFERENCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'END_PREFERENCIAL'
      Origin = 'END_PREFERENCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object UniQListaFONE_PREFERENCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FONE_PREFERENCIAL'
      Origin = 'FONE_PREFERENCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object UniQListaNRIDENTIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NRIDENTIDADE'
      Origin = 'NRIDENTIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object UniQListaSEXO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SEXO'
      Origin = 'SEXO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object UniQListaLOCAL_TRABALHO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOCAL_TRABALHO'
      Origin = 'LOCAL_TRABALHO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object UniQListaCARGO_TRABALHO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CARGO_TRABALHO'
      Origin = 'CARGO_TRABALHO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object UniQListaSALARIO_TRABALHO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SALARIO_TRABALHO'
      Origin = 'SALARIO_TRABALHO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 12
      Size = 6
    end
    object UniQListaNATURALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NATURALIDADE'
      Origin = 'NATURALIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object UniQListaESTADOCIVIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTADOCIVIL'
      Origin = 'ESTADOCIVIL'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object UniQListaSCORE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SCORE'
      Origin = 'SCORE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object UniQListaBEHAVIOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BEHAVIOR'
      Origin = 'BEHAVIOR'
      ProviderFlags = []
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object UniQListaMOTIVOINADIMPLENCIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MOTIVOINADIMPLENCIA'
      Origin = 'MOTIVOINADIMPLENCIA'
      ProviderFlags = []
      ReadOnly = True
    end
    object UniQListaDTA_CAD: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DTA_CAD'
      Origin = 'DTA_CAD'
    end
    object UniQListaUSR_CAD: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'USR_CAD'
      Origin = 'USR_CAD'
      ProviderFlags = []
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object UniQListaMOTIVORETORNO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MOTIVORETORNO'
      Origin = 'MOTIVORETORNO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object UniQListaCODIGO_EXTERNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_EXTERNO'
      Origin = 'CODIGO_EXTERNO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object UniQListaSCORE1: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SCORE1'
      Origin = 'SCORE1'
      ProviderFlags = []
      ReadOnly = True
      Precision = 38
      Size = 0
    end
    object UniQListaORIGEMDOSDADOS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORIGEMDOSDADOS'
      Origin = 'ORIGEMDOSDADOS'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object UniQListaCOLUMN2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COLUMN2'
      Origin = 'COLUMN2'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object UniQListaCOD_BANCO_COMISSAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_BANCO_COMISSAO'
      Origin = 'COD_BANCO_COMISSAO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 340
    Top = 226
  end
  object mtAtivos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 464
    Top = 264
    object mtAtivosdata_remessa: TDateField
      FieldName = 'data_remessa'
    end
    object mtAtivosnumero_remessa: TStringField
      FieldName = 'numero_remessa'
    end
    object mtAtivoscod_empresa: TIntegerField
      FieldName = 'cod_empresa'
    end
    object mtAtivoscod_evento_atualizacao: TIntegerField
      FieldName = 'cod_evento_atualizacao'
    end
    object mtAtivosretomar_liquidar_op: TStringField
      FieldName = 'retomar_liquidar_op'
    end
    object mtAtivostipo: TIntegerField
      FieldName = 'tipo'
    end
    object mtAtivosnumero_operacao: TStringField
      FieldName = 'numero_operacao'
    end
    object mtAtivosnome_operacao: TStringField
      FieldName = 'nome_operacao'
      Size = 50
    end
    object mtAtivosagencia: TStringField
      FieldName = 'agencia'
      Size = 30
    end
    object mtAtivosconta: TStringField
      FieldName = 'conta'
      Size = 30
    end
    object mtAtivosproduto: TStringField
      FieldName = 'produto'
      Size = 30
    end
    object mtAtivosmodalidade: TStringField
      FieldName = 'modalidade'
    end
    object mtAtivosdata_atualizado: TDateField
      FieldName = 'data_atualizado'
    end
    object mtAtivosdata_vencimento: TDateField
      FieldName = 'data_vencimento'
    end
    object mtAtivosvalor_operacao: TFloatField
      FieldName = 'valor_operacao'
    end
    object mtAtivosvalor_vencido: TFloatField
      FieldName = 'valor_vencido'
    end
    object mtAtivosvalor_iof: TFloatField
      FieldName = 'valor_iof'
    end
    object mtAtivoscond_negociais: TStringField
      FieldName = 'cond_negociais'
      Size = 10
    end
    object mtAtivosforma_atualizacao: TStringField
      FieldName = 'forma_atualizacao'
      Size = 50
    end
    object mtAtivosgarantias: TStringField
      FieldName = 'garantias'
      Size = 30
    end
    object mtAtivosnumero_identidade: TStringField
      FieldName = 'numero_identidade'
    end
    object mtAtivoscpf_cnpj: TStringField
      FieldName = 'cpf_cnpj'
    end
    object mtAtivosmci: TStringField
      FieldName = 'mci'
    end
    object mtAtivosnumero_ficha: TIntegerField
      FieldName = 'numero_ficha'
    end
    object mtAtivosnome_cliente: TStringField
      FieldName = 'nome_cliente'
      Size = 100
    end
    object mtAtivosendereco: TStringField
      FieldName = 'endereco'
      Size = 50
    end
    object mtAtivosbairro: TStringField
      FieldName = 'bairro'
      Size = 50
    end
    object mtAtivoscep: TStringField
      FieldName = 'cep'
    end
    object mtAtivoscidade: TStringField
      FieldName = 'cidade'
      Size = 50
    end
    object mtAtivosuf: TStringField
      FieldName = 'uf'
      Size = 10
    end
    object mtAtivostelefone1: TStringField
      FieldName = 'telefone1'
    end
    object mtAtivostelefone2: TStringField
      FieldName = 'telefone2'
    end
    object mtAtivostelefone3: TStringField
      FieldName = 'telefone3'
    end
    object mtAtivostelefone4: TStringField
      FieldName = 'telefone4'
    end
    object mtAtivostelefone5: TStringField
      FieldName = 'telefone5'
    end
    object mtAtivostelefone6: TStringField
      FieldName = 'telefone6'
    end
    object mtAtivosdata_nascimento: TDateField
      FieldName = 'data_nascimento'
    end
    object mtAtivosnaturalidade: TStringField
      FieldName = 'naturalidade'
      Size = 50
    end
    object mtAtivossexo: TStringField
      FieldName = 'sexo'
    end
    object mtAtivosestado_civil: TStringField
      FieldName = 'estado_civil'
    end
    object mtAtivosnome_pai: TStringField
      FieldName = 'nome_pai'
      Size = 50
    end
    object mtAtivosnome_mae: TStringField
      FieldName = 'nome_mae'
      Size = 50
    end
    object mtAtivosavalista1: TStringField
      FieldName = 'avalista1'
      Size = 50
    end
    object mtAtivoscpf_cnpj_avalista1: TStringField
      FieldName = 'cpf_cnpj_avalista1'
    end
    object mtAtivosendereco_avalista1: TStringField
      FieldName = 'endereco_avalista1'
      Size = 50
    end
    object mtAtivosbairro_avalista1: TStringField
      FieldName = 'bairro_avalista1'
      Size = 50
    end
    object mtAtivoscep_avalista1: TStringField
      FieldName = 'cep_avalista1'
      Size = 10
    end
    object mtAtivoscidade_avalista1: TStringField
      FieldName = 'cidade_avalista1'
      Size = 50
    end
    object mtAtivosuf_avalista1: TStringField
      FieldName = 'uf_avalista1'
      Size = 10
    end
    object mtAtivostelefone1_avalista1: TStringField
      FieldName = 'telefone1_avalista1'
    end
    object mtAtivostelefone2_avalista1: TStringField
      FieldName = 'telefone2_avalista1'
    end
    object mtAtivosnome_avalista2: TStringField
      FieldName = 'nome_avalista2'
      Size = 100
    end
    object mtAtivoscpf_cnpj_avalista2: TStringField
      FieldName = 'cpf_cnpj_avalista2'
    end
    object mtAtivosendereco_avalista2: TStringField
      FieldName = 'endereco_avalista2'
      Size = 100
    end
    object mtAtivosbairro_avalista2: TStringField
      FieldName = 'bairro_avalista2'
      Size = 50
    end
    object mtAtivoscep_avalista2: TStringField
      FieldName = 'cep_avalista2'
      Size = 10
    end
    object mtAtivoscidade_avalista2: TStringField
      FieldName = 'cidade_avalista2'
      Size = 50
    end
    object mtAtivosuf_avalista2: TStringField
      FieldName = 'uf_avalista2'
      Size = 10
    end
    object mtAtivostelefone1_avalista2: TStringField
      FieldName = 'telefone1_avalista2'
    end
    object mtAtivostelefone2_avalista2: TStringField
      FieldName = 'telefone2_avalista2'
    end
    object mtAtivosnome_avalista3: TStringField
      FieldName = 'nome_avalista3'
      Size = 100
    end
    object mtAtivoscpf_cnpj_avalista3: TStringField
      FieldName = 'cpf_cnpj_avalista3'
    end
    object mtAtivosendereco_avalista3: TStringField
      FieldName = 'endereco_avalista3'
      Size = 100
    end
    object mtAtivosbairro_avalista3: TStringField
      FieldName = 'bairro_avalista3'
      Size = 50
    end
    object mtAtivoscep_avalista3: TStringField
      FieldName = 'cep_avalista3'
      Size = 10
    end
    object mtAtivoscidade_avalista3: TStringField
      FieldName = 'cidade_avalista3'
      Size = 50
    end
    object mtAtivosuf_avalista3: TStringField
      FieldName = 'uf_avalista3'
      Size = 10
    end
    object mtAtivostelefone1_avalista3: TStringField
      FieldName = 'telefone1_avalista3'
    end
    object mtAtivostelefone2_avalista3: TStringField
      FieldName = 'telefone2_avalista3'
    end
    object mtAtivosnome_avalista4: TStringField
      FieldName = 'nome_avalista4'
      Size = 100
    end
    object mtAtivoscpf_cnpj_avalista4: TStringField
      FieldName = 'cpf_cnpj_avalista4'
    end
    object mtAtivosendereco_avalista4: TStringField
      FieldName = 'endereco_avalista4'
      Size = 100
    end
    object mtAtivosbairro_avalista4: TStringField
      FieldName = 'bairro_avalista4'
      Size = 50
    end
    object mtAtivoscep_avalista4: TStringField
      FieldName = 'cep_avalista4'
      Size = 10
    end
    object mtAtivoscidade_avalista4: TStringField
      FieldName = 'cidade_avalista4'
      Size = 50
    end
    object mtAtivosuf_avalista4: TStringField
      FieldName = 'uf_avalista4'
      Size = 10
    end
    object mtAtivostelefone1_avalista4: TStringField
      FieldName = 'telefone1_avalista4'
    end
    object mtAtivostelefone2_avalista4: TStringField
      FieldName = 'telefone2_avalista4'
    end
    object mtAtivosnome_avalista5: TStringField
      FieldName = 'nome_avalista5'
      Size = 100
    end
    object mtAtivoscpf_cnpj_avalista5: TStringField
      FieldName = 'cpf_cnpj_avalista5'
    end
    object mtAtivosendereco_avalista5: TStringField
      FieldName = 'endereco_avalista5'
      Size = 100
    end
    object mtAtivosbairro_avalista5: TStringField
      FieldName = 'bairro_avalista5'
      Size = 50
    end
    object mtAtivoscep_avalista5: TStringField
      FieldName = 'cep_avalista5'
      Size = 10
    end
    object mtAtivoscidade_avalista5: TStringField
      FieldName = 'cidade_avalista5'
      Size = 50
    end
    object mtAtivosuf_avalista5: TStringField
      FieldName = 'uf_avalista5'
      Size = 10
    end
    object mtAtivostelefone1_avalista5: TStringField
      FieldName = 'telefone1_avalista5'
    end
    object mtAtivostelefone2_avalista5: TStringField
      FieldName = 'telefone2_avalista5'
    end
    object mtAtivosnome_avalista6: TStringField
      FieldName = 'nome_avalista6'
      Size = 100
    end
    object mtAtivoscpf_cnpj_avalista6: TStringField
      FieldName = 'cpf_cnpj_avalista6'
    end
    object mtAtivosendereco_avalista6: TStringField
      FieldName = 'endereco_avalista6'
      Size = 100
    end
    object mtAtivosbairro_avalista6: TStringField
      FieldName = 'bairro_avalista6'
      Size = 50
    end
    object mtAtivoscep_avalista6: TStringField
      FieldName = 'cep_avalista6'
      Size = 10
    end
    object mtAtivoscidade_avalista6: TStringField
      FieldName = 'cidade_avalista6'
      Size = 50
    end
    object mtAtivosuf_avalista6: TStringField
      FieldName = 'uf_avalista6'
      Size = 10
    end
    object mtAtivostelefone1_avalista6: TStringField
      FieldName = 'telefone1_avalista6'
    end
    object mtAtivostelefone2_avalista6: TStringField
      FieldName = 'telefone2_avalista6'
    end
    object mtAtivosprofissao: TStringField
      FieldName = 'profissao'
      Size = 100
    end
    object mtAtivosnome_local_trabalho: TStringField
      FieldName = 'nome_local_trabalho'
      Size = 50
    end
    object mtAtivosendereco_local_trabalho: TStringField
      FieldName = 'endereco_local_trabalho'
      Size = 50
    end
    object mtAtivosbairro_local_trabalho: TStringField
      FieldName = 'bairro_local_trabalho'
      Size = 50
    end
    object mtAtivoscep_local_trabalho: TStringField
      FieldName = 'cep_local_trabalho'
    end
    object mtAtivoscidade_local_trabalho: TStringField
      FieldName = 'cidade_local_trabalho'
      Size = 50
    end
    object mtAtivosuf_local_trabalho: TStringField
      FieldName = 'uf_local_trabalho'
      Size = 10
    end
    object mtAtivostelefone1_local_trabalho: TStringField
      FieldName = 'telefone1_local_trabalho'
    end
    object mtAtivostelefone2_local_trabalho: TStringField
      FieldName = 'telefone2_local_trabalho'
    end
    object mtAtivosreferencia_pessoal1: TStringField
      FieldName = 'referencia_pessoal1'
      Size = 50
    end
    object mtAtivostelefone1_referencia1: TStringField
      FieldName = 'telefone1_referencia1'
    end
    object mtAtivostelefone2_referencia1: TStringField
      FieldName = 'telefone2_referencia1'
    end
    object mtAtivosreferencia_pessoal2: TStringField
      FieldName = 'referencia_pessoal2'
      Size = 50
    end
    object mtAtivostelefone1_referencia2: TStringField
      FieldName = 'telefone1_referencia2'
    end
    object mtAtivostelefone2_referencia2: TStringField
      FieldName = 'telefone2_referencia2'
    end
    object mtAtivosreferencia_pessoal3: TStringField
      FieldName = 'referencia_pessoal3'
      Size = 50
    end
    object mtAtivostelefone1_referencia3: TStringField
      FieldName = 'telefone1_referencia3'
    end
    object mtAtivostelefone2_referencia3: TStringField
      FieldName = 'telefone2_referencia3'
    end
    object mtAtivosspc_serasa: TStringField
      FieldName = 'spc_serasa'
      Size = 10
    end
    object mtAtivosemail: TStringField
      FieldName = 'email'
      Size = 50
    end
    object mtAtivosemail1: TStringField
      FieldName = 'email1'
      Size = 50
    end
    object mtAtivosdata_emissao: TDateField
      FieldName = 'data_emissao'
    end
    object mtAtivosvalor_protesto: TFloatField
      FieldName = 'valor_protesto'
    end
    object mtAtivosobs_operacao: TStringField
      FieldName = 'obs_operacao'
      Size = 100
    end
    object mtAtivosobs_cliente: TStringField
      FieldName = 'obs_cliente'
      Size = 100
    end
    object mtAtivosdata_fimterceirizacao: TDateField
      FieldName = 'data_fimterceirizacao'
    end
    object mtAtivosvalor_juros: TFloatField
      FieldName = 'valor_juros'
    end
    object mtAtivoscod_classificacao_cliente: TIntegerField
      FieldName = 'cod_classificacao_cliente'
    end
    object mtAtivoscod_classificacao_operacao: TIntegerField
      FieldName = 'cod_classificacao_operacao'
    end
    object mtAtivosdata_assinatura_contrato: TDateField
      FieldName = 'data_assinatura_contrato'
    end
    object mtAtivosscore: TIntegerField
      FieldName = 'score'
    end
    object mtAtivosscore_interno: TIntegerField
      FieldName = 'score_interno'
    end
    object mtAtivosrenda: TFloatField
      FieldName = 'renda'
    end
  end
  object dsAtivos: TDataSource
    DataSet = mtAtivos
    Left = 464
    Top = 312
  end
end
