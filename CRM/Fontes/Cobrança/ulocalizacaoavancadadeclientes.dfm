object frmlocalizacaoavancadadeclientes: Tfrmlocalizacaoavancadadeclientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Localiza'#231#227'o Avan'#231'ada de Clientes'
  ClientHeight = 606
  ClientWidth = 1074
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1074
    Height = 161
    Align = alTop
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    object TabbedNotebook1: TTabbedNotebook
      Left = 0
      Top = 0
      Width = 1070
      Height = 157
      Align = alClient
      PageIndex = 8
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clBtnText
      TabFont.Height = -11
      TabFont.Name = 'Tahoma'
      TabFont.Style = []
      TabOrder = 0
      object TTabPage
        Left = 4
        Top = 24
        Caption = 'Nome'
        object Notebook1: TNotebook
          Left = 0
          Top = 0
          Width = 1062
          Height = 129
          Align = alClient
          TabOrder = 0
          object TPage
            Left = 0
            Top = 0
            Caption = 'Default'
            object Edit1: TEdit
              Left = 30
              Top = 50
              Width = 465
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
              OnKeyDown = Edit1KeyDown
            end
            object BitBtn1: TBitBtn
              Left = 500
              Top = 48
              Width = 75
              Height = 25
              Caption = 'OK'
              TabOrder = 1
              OnClick = BitBtn1Click
            end
          end
        end
      end
      object TTabPage
        Left = 4
        Top = 24
        Caption = 'C'#243'digo'
        object Notebook2: TNotebook
          Left = 0
          Top = 0
          Width = 1062
          Height = 129
          Align = alClient
          TabOrder = 0
          object TPage
            Left = 0
            Top = 0
            Caption = 'Default'
            object Edit2: TEdit
              Left = 30
              Top = 50
              Width = 465
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
            end
            object BitBtn2: TBitBtn
              Left = 500
              Top = 48
              Width = 75
              Height = 25
              Caption = 'OK'
              TabOrder = 1
              OnClick = BitBtn2Click
            end
          end
        end
      end
      object TTabPage
        Left = 4
        Top = 24
        Caption = 'CPF'
        object Notebook3: TNotebook
          Left = 0
          Top = 0
          Width = 1062
          Height = 129
          Align = alClient
          TabOrder = 0
          object TPage
            Left = 0
            Top = 0
            Caption = 'Default'
            object Edit8: TEdit
              Left = 30
              Top = 50
              Width = 209
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
            end
            object BitBtn8: TBitBtn
              Left = 250
              Top = 48
              Width = 75
              Height = 25
              Caption = 'OK'
              TabOrder = 1
              OnClick = BitBtn8Click
            end
          end
        end
      end
      object TTabPage
        Left = 4
        Top = 24
        Caption = 'CNPJ'
        object Notebook4: TNotebook
          Left = 0
          Top = 0
          Width = 1062
          Height = 129
          Align = alClient
          TabOrder = 0
          object TPage
            Left = 0
            Top = 0
            Caption = 'Default'
          end
        end
        object Edit3: TEdit
          Left = 30
          Top = 50
          Width = 465
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object BitBtn3: TBitBtn
          Left = 500
          Top = 48
          Width = 75
          Height = 25
          Caption = 'OK'
          TabOrder = 2
          OnClick = BitBtn3Click
        end
      end
      object TTabPage
        Left = 4
        Top = 24
        Caption = 'MCI'
        object Notebook5: TNotebook
          Left = 0
          Top = 0
          Width = 1062
          Height = 129
          Align = alClient
          TabOrder = 0
          object TPage
            Left = 0
            Top = 0
            Caption = 'Default'
            object Edit9: TEdit
              Left = 30
              Top = 50
              Width = 465
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
            end
            object BitBtn9: TBitBtn
              Left = 500
              Top = 48
              Width = 75
              Height = 25
              Caption = 'OK'
              TabOrder = 1
              OnClick = BitBtn9Click
            end
          end
        end
      end
      object TTabPage
        Left = 4
        Top = 24
        Caption = 'Fones Cliente/Refer'#234'ncia'
        object Notebook6: TNotebook
          Left = 0
          Top = 0
          Width = 1062
          Height = 129
          Align = alClient
          TabOrder = 0
          object TPage
            Left = 0
            Top = 0
            Caption = 'Default'
          end
        end
        object Edit4: TEdit
          Left = 30
          Top = 50
          Width = 465
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object BitBtn4: TBitBtn
          Left = 500
          Top = 48
          Width = 75
          Height = 25
          Caption = 'OK'
          TabOrder = 2
          OnClick = BitBtn4Click
        end
      end
      object TTabPage
        Left = 4
        Top = 24
        Caption = 'E-mail'
        object Notebook7: TNotebook
          Left = 0
          Top = 0
          Width = 1062
          Height = 129
          Align = alClient
          TabOrder = 0
          object TPage
            Left = 0
            Top = 0
            Caption = 'Default'
            object Edit5: TEdit
              Left = 30
              Top = 50
              Width = 465
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
            end
            object BitBtn5: TBitBtn
              Left = 500
              Top = 48
              Width = 75
              Height = 25
              Caption = 'OK'
              TabOrder = 1
              OnClick = BitBtn5Click
            end
          end
        end
      end
      object TTabPage
        Left = 4
        Top = 24
        Caption = 'Cobrigados'
        object Notebook8: TNotebook
          Left = 0
          Top = 0
          Width = 1062
          Height = 129
          Align = alClient
          TabOrder = 0
          object TPage
            Left = 0
            Top = 0
            Caption = 'Default'
            object Label1: TLabel
              Left = 34
              Top = 28
              Width = 31
              Height = 13
              Caption = 'Nome:'
            end
            object Label2: TLabel
              Left = 34
              Top = 61
              Width = 46
              Height = 13
              Caption = 'Telefone:'
            end
            object Label3: TLabel
              Left = 34
              Top = 94
              Width = 52
              Height = 13
              Caption = 'CPF/CNPJ:'
            end
            object Edit7: TEdit
              Left = 95
              Top = 24
              Width = 400
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
            end
            object BitBtn7: TBitBtn
              Left = 528
              Top = 88
              Width = 75
              Height = 25
              Caption = 'OK'
              TabOrder = 1
              OnClick = BitBtn7Click
            end
            object Edit10: TEdit
              Left = 95
              Top = 57
              Width = 400
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 2
            end
            object BitBtn10: TBitBtn
              Left = 528
              Top = 24
              Width = 75
              Height = 25
              Caption = 'OK'
              TabOrder = 3
              OnClick = BitBtn10Click
            end
            object Edit11: TEdit
              Left = 95
              Top = 90
              Width = 400
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 4
            end
            object BitBtn11: TBitBtn
              Left = 528
              Top = 55
              Width = 75
              Height = 25
              Caption = 'OK'
              TabOrder = 5
              OnClick = BitBtn11Click
            end
          end
        end
      end
      object TTabPage
        Left = 4
        Top = 24
        Caption = 'Opera'#231#227'o'
        object Notebook9: TNotebook
          Left = 0
          Top = 0
          Width = 1062
          Height = 129
          Align = alClient
          TabOrder = 0
          object TPage
            Left = 0
            Top = 0
            Caption = 'Default'
            object Label4: TLabel
              Left = 16
              Top = 32
              Width = 69
              Height = 13
              Caption = 'Nr. Opera'#231#227'o:'
            end
            object Label5: TLabel
              Left = 16
              Top = 65
              Width = 47
              Height = 13
              Caption = 'Nr. Ficha:'
            end
            object Label6: TLabel
              Left = 16
              Top = 98
              Width = 73
              Height = 13
              Caption = 'Nosso N'#250'mero:'
            end
            object Label7: TLabel
              Left = 517
              Top = 32
              Width = 86
              Height = 13
              Caption = 'Nr. Carta Acordo:'
            end
            object Label8: TLabel
              Left = 517
              Top = 65
              Width = 33
              Height = 13
              Caption = 'Conta:'
            end
            object Edit6: TEdit
              Left = 96
              Top = 28
              Width = 300
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
            end
            object Edit12: TEdit
              Left = 96
              Top = 61
              Width = 300
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
            end
            object Edit13: TEdit
              Left = 96
              Top = 94
              Width = 300
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 2
            end
            object Edit14: TEdit
              Left = 609
              Top = 28
              Width = 285
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 3
            end
            object Edit15: TEdit
              Left = 609
              Top = 61
              Width = 285
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 4
            end
            object BitBtn6: TBitBtn
              Left = 402
              Top = 26
              Width = 75
              Height = 25
              Caption = 'OK'
              TabOrder = 5
              OnClick = BitBtn6Click
            end
            object BitBtn12: TBitBtn
              Left = 402
              Top = 59
              Width = 75
              Height = 25
              Caption = 'OK'
              TabOrder = 6
              OnClick = BitBtn12Click
            end
            object BitBtn13: TBitBtn
              Left = 402
              Top = 92
              Width = 75
              Height = 25
              Caption = 'OK'
              TabOrder = 7
            end
            object BitBtn14: TBitBtn
              Left = 900
              Top = 26
              Width = 75
              Height = 25
              Caption = 'OK'
              TabOrder = 8
              OnClick = BitBtn14Click
            end
            object BitBtn15: TBitBtn
              Left = 900
              Top = 59
              Width = 75
              Height = 25
              Caption = 'OK'
              TabOrder = 9
              OnClick = BitBtn15Click
            end
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 161
    Width = 1074
    Height = 445
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 1
    object Label9: TLabel
      Left = 5
      Top = 6
      Width = 99
      Height = 13
      Caption = 'Clientes Localizados:'
    end
    object Label10: TLabel
      Left = 475
      Top = 4
      Width = 126
      Height = 13
      Caption = 'Cliente Localizado na Base'
    end
    object JvDBGrid1: TJvDBGrid
      Left = 0
      Top = 24
      Width = 449
      Height = 363
      DataSource = UniDSQClientes
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
      TitleFont.Height = -21
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 17
      TitleRowHeight = 17
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 409
          Visible = True
        end>
    end
    object DBAdvLUEdit1: TDBAdvLUEdit
      Left = 532
      Top = 32
      Width = 121
      Height = 21
      DefaultHandling = True
      EmptyTextStyle = []
      LabelCaption = 'CPF/CNPJ:'
      LabelPosition = lpLeftCenter
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      ReadOnly = True
      TabOrder = 1
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
      DataField = 'CPF_CNPJ'
      DataSource = UniDSQClientes
      DataLookup = False
    end
    object DBAdvLUEdit2: TDBAdvLUEdit
      Left = 773
      Top = 32
      Width = 85
      Height = 21
      DefaultHandling = True
      EmptyTextStyle = []
      LabelCaption = 'Tipo de Pessoa:'
      LabelPosition = lpLeftCenter
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      ReadOnly = True
      TabOrder = 2
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
      DataField = 'TIPOPESSOA'
      DataSource = UniDSQClientes
      DataLookup = False
    end
    object GroupBox1: TGroupBox
      Left = 475
      Top = 72
      Width = 591
      Height = 153
      Caption = 'Contatos'
      TabOrder = 3
      object DBAdvLUEdit3: TDBAdvLUEdit
        Left = 77
        Top = 32
        Width = 121
        Height = 21
        DefaultHandling = True
        EmptyTextStyle = []
        LabelCaption = 'Fone 1:'
        LabelPosition = lpLeftCenter
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        ReadOnly = True
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
        DataField = 'FONE'
        DataSource = UniDSQClientes
        DataLookup = False
      end
      object DBAdvLUEdit4: TDBAdvLUEdit
        Left = 262
        Top = 32
        Width = 121
        Height = 21
        DefaultHandling = True
        EmptyTextStyle = []
        LabelCaption = 'Fone 2:'
        LabelPosition = lpLeftCenter
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        ReadOnly = True
        TabOrder = 1
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
        DataField = 'FONE_1'
        DataSource = UniDSQClientes
        DataLookup = False
      end
      object DBAdvLUEdit5: TDBAdvLUEdit
        Left = 462
        Top = 32
        Width = 121
        Height = 21
        DefaultHandling = True
        EmptyTextStyle = []
        LabelCaption = 'Fone 3:'
        LabelPosition = lpLeftCenter
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        ReadOnly = True
        TabOrder = 2
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
        DataField = 'FONE_PREFERENCIAL'
        DataSource = UniDSQClientes
        DataLookup = False
      end
      object DBAdvLUEdit6: TDBAdvLUEdit
        Left = 77
        Top = 59
        Width = 121
        Height = 21
        DefaultHandling = True
        EmptyTextStyle = []
        LabelCaption = 'Fone 4:'
        LabelPosition = lpLeftCenter
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        ReadOnly = True
        TabOrder = 3
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
        DataField = 'FAXCEL'
        DataSource = UniDSQClientes
        DataLookup = False
      end
      object DBAdvLUEdit7: TDBAdvLUEdit
        Left = 262
        Top = 59
        Width = 121
        Height = 21
        DefaultHandling = True
        EmptyTextStyle = []
        LabelCaption = 'Fone 5:'
        LabelPosition = lpLeftCenter
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        ReadOnly = True
        TabOrder = 4
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
        DataField = 'FAXCEL_1'
        DataSource = UniDSQClientes
        DataLookup = False
      end
      object DBAdvLUEdit8: TDBAdvLUEdit
        Left = 462
        Top = 59
        Width = 121
        Height = 21
        DefaultHandling = True
        EmptyTextStyle = []
        LabelCaption = 'Fone 6:'
        LabelPosition = lpLeftCenter
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        ReadOnly = True
        TabOrder = 5
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
        DataSource = UniDSQClientes
        DataLookup = False
      end
      object DBAdvLUEdit9: TDBAdvLUEdit
        Left = 77
        Top = 88
        Width = 506
        Height = 21
        DefaultHandling = True
        EmptyTextStyle = []
        LabelCaption = 'Email 1:'
        LabelPosition = lpLeftCenter
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        ReadOnly = True
        TabOrder = 6
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
        DataField = 'E_MAIL'
        DataSource = UniDSQClientes
        DataLookup = False
      end
      object DBAdvLUEdit10: TDBAdvLUEdit
        Left = 77
        Top = 115
        Width = 506
        Height = 21
        DefaultHandling = True
        EmptyTextStyle = []
        LabelCaption = 'Email 2:'
        LabelPosition = lpLeftCenter
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        ReadOnly = True
        TabOrder = 7
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
        DataField = 'E_MAIL1'
        DataSource = UniDSQClientes
        DataLookup = False
      end
    end
    object GroupBox2: TGroupBox
      Left = 475
      Top = 233
      Width = 591
      Height = 153
      Caption = 'Endere'#231'os:'
      TabOrder = 4
      object DBAdvLUEdit11: TDBAdvLUEdit
        Left = 77
        Top = 32
        Width = 292
        Height = 21
        DefaultHandling = True
        EmptyTextStyle = []
        LabelCaption = 'Ende 1:'
        LabelPosition = lpLeftCenter
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        ReadOnly = True
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
        DataField = 'ENDERECO'
        DataSource = UniDSQClientes
        DataLookup = False
      end
      object DBAdvLUEdit12: TDBAdvLUEdit
        Left = 406
        Top = 32
        Width = 67
        Height = 21
        DefaultHandling = True
        EmptyTextStyle = []
        LabelCaption = 'Nr.:'
        LabelPosition = lpLeftCenter
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        ReadOnly = True
        TabOrder = 1
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
        DataField = 'NUMERO'
        DataSource = UniDSQClientes
        DataLookup = False
      end
      object DBAdvLUEdit13: TDBAdvLUEdit
        Left = 508
        Top = 32
        Width = 75
        Height = 21
        DefaultHandling = True
        EmptyTextStyle = []
        LabelCaption = 'CEP:'
        LabelPosition = lpLeftCenter
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        ReadOnly = True
        TabOrder = 2
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
        DataField = 'CEP'
        DataSource = UniDSQClientes
        DataLookup = False
      end
      object DBAdvLUEdit14: TDBAdvLUEdit
        Left = 77
        Top = 59
        Width = 260
        Height = 21
        DefaultHandling = True
        EmptyTextStyle = []
        LabelCaption = 'Cidade:'
        LabelPosition = lpLeftCenter
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        ReadOnly = True
        TabOrder = 3
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
        DataField = 'CIDADE'
        DataSource = UniDSQClientes
        DataLookup = False
      end
      object DBAdvLUEdit15: TDBAdvLUEdit
        Left = 380
        Top = 59
        Width = 203
        Height = 21
        DefaultHandling = True
        EmptyTextStyle = []
        LabelCaption = 'Setor:'
        LabelPosition = lpLeftCenter
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        ReadOnly = True
        TabOrder = 4
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
        DataField = 'SETOR'
        DataSource = UniDSQClientes
        DataLookup = False
      end
      object DBAdvLUEdit16: TDBAdvLUEdit
        Left = 77
        Top = 88
        Width = 292
        Height = 21
        DefaultHandling = True
        EmptyTextStyle = []
        LabelCaption = 'Ende 2:'
        LabelPosition = lpLeftCenter
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        ReadOnly = True
        TabOrder = 5
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
        DataField = 'ENDENDERECO_1'
        DataSource = UniDSQClientes
        DataLookup = False
      end
      object DBAdvLUEdit17: TDBAdvLUEdit
        Left = 406
        Top = 88
        Width = 67
        Height = 21
        DefaultHandling = True
        EmptyTextStyle = []
        LabelCaption = 'Nr.:'
        LabelPosition = lpLeftCenter
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        ReadOnly = True
        TabOrder = 6
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
        DataField = 'NUMERO'
        DataSource = UniDSQClientes
        DataLookup = False
      end
      object DBAdvLUEdit18: TDBAdvLUEdit
        Left = 508
        Top = 88
        Width = 75
        Height = 21
        DefaultHandling = True
        EmptyTextStyle = []
        LabelCaption = 'CEP:'
        LabelPosition = lpLeftCenter
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        ReadOnly = True
        TabOrder = 7
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
        DataField = 'CEP_1'
        DataSource = UniDSQClientes
        DataLookup = False
      end
      object DBAdvLUEdit19: TDBAdvLUEdit
        Left = 77
        Top = 115
        Width = 260
        Height = 21
        DefaultHandling = True
        EmptyTextStyle = []
        LabelCaption = 'Cidade:'
        LabelPosition = lpLeftCenter
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        ReadOnly = True
        TabOrder = 8
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
        DataField = 'CIDADE_1'
        DataSource = UniDSQClientes
        DataLookup = False
      end
      object DBAdvLUEdit20: TDBAdvLUEdit
        Left = 380
        Top = 115
        Width = 203
        Height = 21
        DefaultHandling = True
        EmptyTextStyle = []
        LabelCaption = 'Setor:'
        LabelPosition = lpLeftCenter
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        Color = clWindow
        ReadOnly = True
        TabOrder = 9
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
        DataField = 'SETOR_1'
        DataSource = UniDSQClientes
        DataLookup = False
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 391
      Width = 1070
      Height = 50
      Align = alBottom
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 5
      object btnfiltratexto: TRzToolButton
        AlignWithMargins = True
        Left = 943
        Top = 3
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
        Align = alRight
        Caption = 'Abrir Cliente'
        Color = 1540344
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        OnClick = btnfiltratextoClick
        ExplicitLeft = 218
        ExplicitTop = 527
      end
    end
  end
  object uniscript: TFDQuery
    Encryption.Fields = 'SENHA'
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from clientes')
    CachedUpdates = True
    Options.RequiredFields = False
    Left = 760
    Top = 8
    object uniscriptCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object uniscriptNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object uniscriptTIPOPESSOA: TStringField
      FieldName = 'TIPOPESSOA'
      Size = 1
    end
    object uniscriptCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object uniscriptCGC: TStringField
      FieldName = 'CGC'
      Size = 14
    end
    object uniscriptCONTACORRENTE: TStringField
      FieldName = 'CONTACORRENTE'
      Size = 30
    end
    object uniscriptREGIAO: TFloatField
      FieldName = 'REGIAO'
    end
    object uniscriptENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object uniscriptNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object uniscriptSETOR: TStringField
      FieldName = 'SETOR'
      Size = 25
    end
    object uniscriptCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object uniscriptUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object uniscriptCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object uniscriptFONE: TStringField
      FieldName = 'FONE'
      Size = 14
    end
    object uniscriptFAXCEL: TStringField
      FieldName = 'FAXCEL'
      Size = 14
    end
    object uniscriptENDENDERECO_1: TStringField
      FieldName = 'ENDENDERECO_1'
      Size = 80
    end
    object uniscriptNUMERO_1: TStringField
      FieldName = 'NUMERO_1'
      Size = 5
    end
    object uniscriptSETOR_1: TStringField
      FieldName = 'SETOR_1'
      Size = 25
    end
    object uniscriptCIDADE_1: TStringField
      FieldName = 'CIDADE_1'
      Size = 30
    end
    object uniscriptUF_1: TStringField
      FieldName = 'UF_1'
      Size = 2
    end
    object uniscriptCEP_1: TStringField
      FieldName = 'CEP_1'
      Size = 9
    end
    object uniscriptFONE_1: TStringField
      FieldName = 'FONE_1'
      Size = 14
    end
    object uniscriptFAXCEL_1: TStringField
      FieldName = 'FAXCEL_1'
      Size = 14
    end
    object uniscriptCONTATO_1: TStringField
      FieldName = 'CONTATO_1'
      Size = 40
    end
    object uniscriptFOTO: TBlobField
      FieldName = 'FOTO'
      BlobType = ftOraBlob
    end
    object uniscriptCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 40
    end
    object uniscriptMCI: TFloatField
      FieldName = 'MCI'
    end
    object uniscriptDEVOLVERBB: TStringField
      FieldName = 'DEVOLVERBB'
      Size = 1
    end
    object uniscriptREMESSABB: TFloatField
      FieldName = 'REMESSABB'
    end
    object uniscriptOBS: TBlobField
      FieldName = 'OBS'
      BlobType = ftOraBlob
    end
    object uniscriptDTA_NASCIMENTO: TSQLTimeStampField
      FieldName = 'DTA_NASCIMENTO'
    end
    object uniscriptCOD_CLASSIFICACAO: TFloatField
      FieldName = 'COD_CLASSIFICACAO'
    end
    object uniscriptDATA_MODIF: TSQLTimeStampField
      FieldName = 'DATA_MODIF'
    end
    object uniscriptPONTO_REF1: TStringField
      FieldName = 'PONTO_REF1'
      Size = 150
    end
    object uniscriptPONTO_REF2: TStringField
      FieldName = 'PONTO_REF2'
      Size = 150
    end
    object uniscriptAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 10
    end
    object uniscriptLOCALIDADE: TStringField
      FieldName = 'LOCALIDADE'
      Size = 4
    end
    object uniscriptSETOR_FAT: TStringField
      FieldName = 'SETOR_FAT'
      Size = 4
    end
    object uniscriptROTA: TStringField
      FieldName = 'ROTA'
      Size = 15
    end
    object uniscriptQUADRA: TStringField
      FieldName = 'QUADRA'
      Size = 4
    end
    object uniscriptLOTE: TStringField
      FieldName = 'LOTE'
      Size = 10
    end
    object uniscriptSUBLOTE: TStringField
      FieldName = 'SUBLOTE'
      Size = 4
    end
    object uniscriptEND_PREFERENCIAL: TStringField
      FieldName = 'END_PREFERENCIAL'
      Size = 1
    end
    object uniscriptFONE_PREFERENCIAL: TStringField
      FieldName = 'FONE_PREFERENCIAL'
      Size = 1
    end
    object uniscriptE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 150
    end
    object uniscriptE_MAIL1: TStringField
      FieldName = 'E_MAIL1'
      Size = 150
    end
    object uniscriptNRIDENTIDADE: TStringField
      FieldName = 'NRIDENTIDADE'
      Size = 25
    end
    object uniscriptSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object uniscriptLOCAL_TRABALHO: TStringField
      FieldName = 'LOCAL_TRABALHO'
      Size = 50
    end
    object uniscriptCARGO_TRABALHO: TStringField
      FieldName = 'CARGO_TRABALHO'
      Size = 50
    end
    object uniscriptSALARIO_TRABALHO: TFloatField
      FieldName = 'SALARIO_TRABALHO'
    end
    object uniscriptNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Size = 50
    end
    object uniscriptESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      Size = 30
    end
    object uniscriptSCORE: TFloatField
      FieldName = 'SCORE'
    end
    object uniscriptBEHAVIOR: TFloatField
      FieldName = 'BEHAVIOR'
    end
    object uniscriptMOTIVOINADIMPLENCIA: TFloatField
      FieldName = 'MOTIVOINADIMPLENCIA'
    end
    object uniscriptDTA_CAD: TSQLTimeStampField
      FieldName = 'DTA_CAD'
    end
    object uniscriptUSR_CAD: TFloatField
      FieldName = 'USR_CAD'
    end
    object uniscriptMOTIVORETORNO: TFloatField
      FieldName = 'MOTIVORETORNO'
    end
    object uniscriptCODIGO_EXTERNO: TStringField
      FieldName = 'CODIGO_EXTERNO'
      Size = 30
    end
    object uniscriptSCORE1: TFloatField
      FieldName = 'SCORE1'
    end
    object uniscriptORIGEMDOSDADOS: TStringField
      FieldName = 'ORIGEMDOSDADOS'
      Size = 100
    end
    object uniscriptCOLUMN2: TStringField
      FieldName = 'COLUMN2'
      Size = 100
    end
  end
  object UniDSQClientes: TDataSource
    DataSet = uniQClientes
    Left = 912
    Top = 8
  end
  object uniQClientes: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from clientes order by codigo')
    FetchRows = 1
    Left = 1000
    Top = 8
  end
  object UniDataSource1: TDataSource
    DataSet = uniscript
    Left = 688
    Top = 8
  end
end
