object frmCadastrodeAvisos: TfrmCadastrodeAvisos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Avisos'
  ClientHeight = 587
  ClientWidth = 1318
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 0
    Width = 523
    Height = 587
    Align = alLeft
    DataSource = UniDataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 20
    TitleRowHeight = 20
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODIGO'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATA'
        Title.Alignment = taCenter
        Width = 131
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TITULO'
        Title.Alignment = taCenter
        Width = 289
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 523
    Top = 0
    Width = 795
    Height = 587
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object btnfiltrar: TRzToolButton
      AlignWithMargins = True
      Left = 546
      Top = 544
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
      Caption = 'Filtrar'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      OnClick = btnfiltrarClick
      ExplicitLeft = 544
      ExplicitTop = 532
      ExplicitHeight = 52
    end
    object btnfiltradata: TRzToolButton
      AlignWithMargins = True
      Left = 672
      Top = 544
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
      Caption = 'Limpar Filtro'
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      OnClick = btnfiltradataClick
      ExplicitLeft = 671
      ExplicitTop = 532
      ExplicitHeight = 52
    end
    object RzToolButton1: TRzToolButton
      AlignWithMargins = True
      Left = 294
      Top = 544
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
      Caption = 'Gravar'
      Color = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton1Click
      ExplicitTop = 547
    end
    object RzToolButton2: TRzToolButton
      AlignWithMargins = True
      Left = 420
      Top = 544
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
      Caption = 'Excluir/Cancelar'
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton2Click
      ExplicitLeft = 417
      ExplicitTop = 532
      ExplicitHeight = 52
    end
    object RzToolButton3: TRzToolButton
      AlignWithMargins = True
      Left = 42
      Top = 544
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
      Caption = 'Inserir'
      Color = 10053171
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton3Click
      ExplicitLeft = 163
      ExplicitTop = 532
      ExplicitHeight = 52
    end
    object btnfiltratexto: TRzToolButton
      AlignWithMargins = True
      Left = 168
      Top = 544
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
      Caption = 'Alterar'
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
    object TabControl1: TTabControl
      Left = 0
      Top = 0
      Width = 795
      Height = 541
      Align = alTop
      TabOrder = 0
      Tabs.Strings = (
        'Aviso'
        'Usu'#225'rios')
      TabIndex = 0
      object Label1: TLabel
        Left = 56
        Top = 167
        Width = 46
        Height = 19
        Caption = 'Texto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Bevel1: TBevel
        Left = 56
        Top = 448
        Width = 681
        Height = 73
        Shape = bsFrame
      end
      object DBAdvLUEdit1: TDBAdvLUEdit
        Left = 56
        Top = 60
        Width = 209
        Height = 27
        DefaultHandling = True
        EmptyTextStyle = []
        LabelCaption = 'C'#243'digo:'
        LabelPosition = lpTopLeft
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -16
        LabelFont.Name = 'Verdana'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
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
        DataSource = UniDataSource1
        DataLookup = False
      end
      object DBAdvLUEdit3: TDBAdvLUEdit
        Left = 528
        Top = 60
        Width = 209
        Height = 27
        DefaultHandling = True
        EmptyTextStyle = []
        LabelCaption = 'Usu'#225'rio:'
        LabelPosition = lpTopLeft
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -16
        LabelFont.Name = 'Verdana'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        CharCase = ecUpperCase
        Color = clWindow
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
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
        DataField = 'USUARIO'
        DataSource = UniDataSource1
        DataLookup = False
      end
      object DBAdvLUEdit4: TDBAdvLUEdit
        Left = 56
        Top = 124
        Width = 681
        Height = 27
        DefaultHandling = True
        EmptyTextStyle = []
        LabelCaption = 'T'#237'tulo:'
        LabelPosition = lpTopLeft
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -16
        LabelFont.Name = 'Verdana'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        CharCase = ecUpperCase
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
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
        DataField = 'TITULO'
        DataSource = UniDataSource1
        DataLookup = False
      end
      object DBCheckBox1: TDBCheckBox
        Left = 80
        Top = 481
        Width = 185
        Height = 23
        Caption = 'Agendar Aviso'
        DataField = 'AGENDAR_AVISO'
        DataSource = UniDataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object Button1: TButton
        Left = 504
        Top = 161
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 4
        Visible = False
        OnClick = Button1Click
      end
      object DBMemo1: TDBMemo
        Left = 56
        Top = 192
        Width = 681
        Height = 249
        DataField = 'AVISO'
        DataSource = UniDataSource1
        TabOrder = 5
      end
      object AdvDBDateTimePicker1: TAdvDBDateTimePicker
        Left = 279
        Top = 60
        Width = 234
        Height = 27
        Date = 43159.000000000000000000
        Format = ''
        Time = 0.623518518521450500
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = dkDateTime
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 6
        BorderStyle = bsSingle
        Ctl3D = True
        DateTime = 43159.623518518520000000
        Version = '1.3.3.0'
        LabelCaption = 'Data:'
        LabelPosition = lpTopLeft
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -16
        LabelFont.Name = 'Verdana'
        LabelFont.Style = []
        DataField = 'DATA'
        DataSource = UniDataSource1
      end
      object AdvDBDateTimePicker2: TAdvDBDateTimePicker
        Left = 248
        Top = 477
        Width = 297
        Height = 27
        Date = 43159.000000000000000000
        Format = ''
        Time = 0.623518518521450500
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = dkDateTime
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 7
        BorderStyle = bsSingle
        Ctl3D = True
        DateTime = 43159.623518518520000000
        Version = '1.3.3.0'
        LabelCaption = 'Data Agenda:'
        LabelPosition = lpTopLeft
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -16
        LabelFont.Name = 'Verdana'
        LabelFont.Style = []
        DataField = 'DTA_AGENDA'
        DataSource = UniDataSource1
      end
    end
  end
  object JvDBGrid2: TJvDBGrid
    Left = 34
    Top = 192
    Width = 399
    Height = 257
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Visible = False
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 20
    TitleRowHeight = 20
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODIGO'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DATA'
        Title.Alignment = taCenter
        Width = 142
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TITULO'
        Title.Alignment = taCenter
        Width = 289
        Visible = True
      end>
  end
  object uniscript: TFDQuery
    Encryption.Fields = 'SENHA'
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from aviso')
    Options.RequiredFields = False
    Left = 344
    Top = 64
    object uniscriptCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object uniscriptTITULO: TStringField
      FieldName = 'TITULO'
      Size = 100
    end
    object uniscriptAVISO: TBlobField
      FieldName = 'AVISO'
      BlobType = ftOraBlob
    end
    object uniscriptDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object uniscriptUSUARIO: TFloatField
      FieldName = 'USUARIO'
    end
    object uniscriptDTA_AGENDA: TSQLTimeStampField
      FieldName = 'DTA_AGENDA'
    end
    object uniscriptAGENDAR_AVISO: TStringField
      FieldName = 'AGENDAR_AVISO'
      Size = 10
    end
  end
  object qryAVISO: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM CONTAS'
      'where'
      'DESCRICAO LIKE :DESCRI')
    Left = 950
    Top = 160
    ParamData = <
      item
        Name = 'DESCRI'
        DataType = ftString
        ParamType = ptInput
        Size = 40
        Value = Null
      end>
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=LOCALHOST'
      'Port=3050'
      'Database=C:\DEVELOPMENT\CRM\Fontes\DBVIX.FDB'
      'DriverID=FB')
    FetchOptions.AssignedValues = [evMode, evAutoClose]
    FetchOptions.Mode = fmAll
    FormatOptions.AssignedValues = [fvMapRules, fvFmtDisplayDate, fvFmtDisplayNumeric]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <
      item
        SourceDataType = dtBCD
        TargetDataType = dtFmtBCD
      end>
    FormatOptions.FmtDisplayNumeric = ',0.00'
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    LoginPrompt = False
    Left = 872
    Top = 160
  end
  object unigetid: TFDQuery
    Encryption.Fields = 'SENHA'
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from aviso')
    Options.RequiredFields = False
    Left = 264
    Top = 120
  end
  object UniDataSource1: TDataSource
    DataSet = uniscript
    Left = 264
    Top = 64
  end
end
