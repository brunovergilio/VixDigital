object frmdiscador: Tfrmdiscador
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Click Cob - Atendimento'
  ClientHeight = 479
  ClientWidth = 850
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel_Supervisor: TPanel
    Left = 0
    Top = 25
    Width = 850
    Height = 454
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    object Panel12: TPanel
      Left = 2
      Top = 135
      Width = 200
      Height = 313
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 0
      object RzToolButton1: TRzToolButton
        AlignWithMargins = True
        Left = 3
        Top = 180
        Width = 190
        Height = 36
        Cursor = crHandPoint
        Margins.Bottom = 5
        GradientColorStyle = gcsSystem
        Flat = False
        ImageIndex = 0
        ShowCaption = True
        Transparent = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        UseToolbarVisualStyle = False
        VisualStyle = vsWinXP
        Align = alBottom
        Caption = 'Agenda'
        Color = 13273922
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 13
        ExplicitTop = 132
        ExplicitWidth = 160
      end
      object RzToolButton2: TRzToolButton
        AlignWithMargins = True
        Left = 3
        Top = 224
        Width = 190
        Height = 36
        Cursor = crHandPoint
        Margins.Bottom = 5
        GradientColorStyle = gcsSystem
        Flat = False
        ShowCaption = True
        Transparent = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        UseToolbarVisualStyle = False
        VisualStyle = vsWinXP
        Align = alBottom
        Caption = 'Hist'#243'rico'
        Color = 13273922
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 13
        ExplicitTop = 198
        ExplicitWidth = 160
      end
      object RzToolButton4: TRzToolButton
        AlignWithMargins = True
        Left = 3
        Top = 268
        Width = 190
        Height = 36
        Cursor = crHandPoint
        Margins.Bottom = 5
        GradientColorStyle = gcsSystem
        Flat = False
        ShowCaption = True
        Transparent = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        UseToolbarVisualStyle = False
        VisualStyle = vsWinXP
        Align = alBottom
        Caption = 'Desempenho'
        Color = 13273922
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 13
        ExplicitTop = 254
        ExplicitWidth = 160
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 196
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        Color = 13273922
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          Left = 0
          Top = 0
          Width = 196
          Height = 25
          Align = alClient
          Alignment = taCenter
          Caption = #218'ltimas Liga'#231#245'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitWidth = 99
          ExplicitHeight = 17
        end
      end
      object JvDBGrid2: TJvDBGrid
        Left = 0
        Top = 25
        Width = 196
        Height = 152
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Roboto'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Roboto'
        TitleFont.Style = []
        OnDblClick = JvDBGrid1DblClick
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            Title.Alignment = taCenter
            Title.Caption = 'Telefone'
            Visible = True
          end>
      end
    end
    object Panel16: TPanel
      Left = 2
      Top = 2
      Width = 200
      Height = 127
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = clGreen
      Ctl3D = True
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 1
      object Label68: TLabel
        Left = 41
        Top = 23
        Width = 113
        Height = 29
        Caption = 'Dispon'#237'vel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RzToolButton5: TRzToolButton
        AlignWithMargins = True
        Left = 3
        Top = 70
        Width = 63
        Height = 50
        Cursor = crHandPoint
        GradientColorStyle = gcsSystem
        Flat = False
        ImageIndex = 0
        ShowCaption = True
        Transparent = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        UseToolbarVisualStyle = False
        VisualStyle = vsWinXP
        Caption = 'Pausa'
        Color = 8421440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object RzToolButton6: TRzToolButton
        AlignWithMargins = True
        Left = 67
        Top = 70
        Width = 63
        Height = 50
        Cursor = crHandPoint
        GradientColorStyle = gcsSystem
        Flat = False
        ImageIndex = 0
        ShowCaption = True
        Transparent = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        UseToolbarVisualStyle = False
        VisualStyle = vsWinXP
        Caption = 'Transferir'
        Color = 8421440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
      object RzToolButton7: TRzToolButton
        AlignWithMargins = True
        Left = 131
        Top = 70
        Width = 63
        Height = 50
        Cursor = crHandPoint
        GradientColorStyle = gcsSystem
        Flat = False
        ImageIndex = 0
        ShowCaption = True
        Transparent = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        UseToolbarVisualStyle = False
        VisualStyle = vsWinXP
        Caption = 'Encerrar'
        Color = 8421440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
      end
    end
    object Panel18: TPanel
      Left = 204
      Top = 135
      Width = 641
      Height = 313
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 2
      object JvDBGrid1: TJvDBGrid
        Left = 0
        Top = 0
        Width = 637
        Height = 309
        Align = alClient
        DataSource = FrmClientes.uniDSQClientesLista
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Roboto'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Roboto'
        TitleFont.Style = []
        OnDblClick = JvDBGrid1DblClick
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 197
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF_CNPJ'
            Title.Alignment = taCenter
            Title.Caption = 'CPF/CNPJ'
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FONE'
            Title.Alignment = taCenter
            Title.Caption = 'Fone'
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FAXCEL'
            Title.Alignment = taCenter
            Title.Caption = 'Celular'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Title.Alignment = taCenter
            Title.Caption = 'Cidade'
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTATO'
            Title.Alignment = taCenter
            Title.Caption = 'Contato'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPOPESSOA'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Width = 40
            Visible = True
          end>
      end
    end
    object Panel3: TPanel
      Left = 204
      Top = 2
      Width = 641
      Height = 127
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 3
      object RzToolButton3: TRzToolButton
        AlignWithMargins = True
        Left = 537
        Top = 59
        Width = 86
        Height = 26
        Cursor = crHandPoint
        GradientColorStyle = gcsSystem
        Flat = False
        ImageIndex = 0
        ShowCaption = True
        Transparent = False
        UseToolbarButtonSize = False
        UseToolbarShowCaption = False
        UseToolbarVisualStyle = False
        VisualStyle = vsWinXP
        Caption = 'Buscar'
        Color = 13273922
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        OnClick = RzToolButton3Click
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 637
        Height = 25
        Align = alTop
        BevelOuter = bvNone
        Color = 13273922
        ParentBackground = False
        TabOrder = 0
        object Label2: TLabel
          Left = 0
          Top = 0
          Width = 637
          Height = 25
          Align = alClient
          Alignment = taCenter
          Caption = 'Selecionar Contato'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Roboto'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitWidth = 109
          ExplicitHeight = 17
        end
      end
      object Edit1: TEdit
        Left = 184
        Top = 59
        Width = 347
        Height = 26
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyDown = Edit1KeyDown
      end
      object ComboBox1: TComboBox
        Left = 17
        Top = 59
        Width = 161
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Roboto'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 2
        Text = 'Nome'
        OnChange = ComboBox1Change
        OnKeyPress = ComboBox1KeyPress
        Items.Strings = (
          'Nome'
          'CPF/CNPJ')
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 850
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object lblcampanha: TLabel
      Left = 0
      Top = 0
      Width = 850
      Height = 25
      Align = alClient
      Alignment = taCenter
      Caption = 'CAMPANHA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 68
      ExplicitHeight = 15
    end
  end
end
