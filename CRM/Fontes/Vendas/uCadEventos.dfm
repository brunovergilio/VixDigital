object frmCadEventos: TfrmCadEventos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Eventos'
  ClientHeight = 211
  ClientWidth = 641
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 641
    Height = 211
    Align = alClient
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 631
    ExplicitHeight = 201
    object Label1: TLabel
      Left = 443
      Top = 78
      Width = 95
      Height = 18
      Caption = 'Classifica'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
    end
    object DBAdvLUEdit1: TDBAdvLUEdit
      Left = 32
      Top = 44
      Width = 121
      Height = 26
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
      LabelFont.Height = -15
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
      Font.Height = -15
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
      DataField = 'COD_EVENTO'
      DataSource = frmPesquisaEventos.dsEventos
      DataLookup = False
    end
    object Panel3: TPanel
      Left = 0
      Top = 161
      Width = 641
      Height = 50
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitTop = 151
      ExplicitWidth = 631
      object RzToolButton1: TRzToolButton
        AlignWithMargins = True
        Left = 392
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
        Left = 518
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
    object DBAdvLUEdit2: TDBAdvLUEdit
      Left = 32
      Top = 100
      Width = 393
      Height = 26
      BorderColor = clSilver
      DefaultHandling = True
      EmptyTextStyle = []
      LabelCaption = 'Evento:'
      LabelPosition = lpTopLeft
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -15
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
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Roboto'
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
      DataField = 'DESC_EVENTO'
      DataSource = frmPesquisaEventos.dsEventos
      DataLookup = True
    end
    object ComboBox1: TComboBox
      Left = 440
      Top = 100
      Width = 161
      Height = 26
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Roboto'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 3
      Text = '1 - PRODUTIVO'#10
      Items.Strings = (
        '1 - PRODUTIVO'#10
        '2 - IMPRODUTIVO'#10
        '3 - SISTEMA'#10
        '4 - INFORMATIVO'#10
        '5 - ADMINISTRATIVO')
    end
  end
end
