object Filtro_RelRemessas: TFiltro_RelRemessas
  Left = 1000
  Top = 199
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Correspond'#234'ncias por Remessa'
  ClientHeight = 601
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 400
    Height = 531
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 0
    object Label4: TLabel
      Left = 8
      Top = 4
      Width = 77
      Height = 13
      Caption = 'Banco/Empresa'
    end
    object Lb_Modelo: TLabel
      Left = 8
      Top = 326
      Width = 129
      Height = 13
      Caption = 'Escolha a correspond'#234'ncia'
    end
    object Label2: TLabel
      Left = 8
      Top = 114
      Width = 44
      Height = 13
      Caption = 'Remessa'
    end
    object Label6: TLabel
      Left = 128
      Top = 114
      Width = 43
      Height = 13
      Caption = 'Cobrador'
    end
    object Label3: TLabel
      Left = 8
      Top = 169
      Width = 141
      Height = 13
      Caption = 'Ag'#234'ncia (Em branco = Todas)'
    end
    object Label7: TLabel
      Left = 180
      Top = 168
      Width = 84
      Height = 13
      Caption = 'Tipo de endere'#231'o'
    end
    object Label8: TLabel
      Left = 8
      Top = 220
      Width = 249
      Height = 13
      Caption = 'N'#227'o incluir correspond'#234'cias enviadas com menos de'
    end
    object Label9: TLabel
      Left = 311
      Top = 220
      Width = 19
      Height = 13
      Caption = 'dias'
    end
    object Bevel1: TBevel
      Left = 1
      Top = 400
      Width = 398
      Height = 1
      Shape = bsTopLine
    end
    object Label1: TLabel
      Left = 235
      Top = 416
      Width = 100
      Height = 13
      Caption = 'Condi'#231#245'es Negociais'
    end
    object Group_Registros: TGroupBox
      Left = 8
      Top = 45
      Width = 369
      Height = 67
      Caption = 'Cliente (Em branco = Todos)'
      TabOrder = 4
      object Ri_Registros: TListBox
        Left = 3
        Top = 19
        Width = 294
        Height = 22
        Columns = 4
        ItemHeight = 13
        PopupMenu = PopupLimparConteudo_ICE
        TabOrder = 0
        OnKeyDown = Ri_RegioesKeyDown
      end
      object AdvGlowButton1: TAdvGlowButton
        AlignWithMargins = True
        Left = 312
        Top = 12
        Width = 52
        Height = 44
        Cursor = crHandPoint
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
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
      object RadioButton1: TRadioButton
        Left = 32
        Top = 45
        Width = 113
        Height = 17
        Caption = 'Cliente Especificado'
        TabOrder = 2
      end
      object RadioButton2: TRadioButton
        Left = 184
        Top = 45
        Width = 113
        Height = 17
        Caption = 'A partir deste cliente'
        TabOrder = 3
      end
    end
    object Look_Banco: TRxDBLookupCombo
      Left = 8
      Top = 17
      Width = 369
      Height = 22
      DropDownCount = 8
      DisplayEmpty = '<< Todos >>'
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      TabOrder = 0
      OnChange = Look_BancoChange
    end
    object CK_Fases: TCheckBox
      Left = 8
      Top = 418
      Width = 179
      Height = 17
      Caption = 'Lan'#231'ar ocorr'#234'ncia nos hist'#243'ricos'
      TabOrder = 3
    end
    object Cb_Modelo: TComboBox
      Left = 8
      Top = 341
      Width = 369
      Height = 21
      Style = csDropDownList
      TabOrder = 2
      OnChange = Cb_ModeloChange
    end
    object Radio_Tipo_Pessoa: TRadioGroup
      Left = 240
      Top = 246
      Width = 137
      Height = 33
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Apenas'
        'Exceto')
      TabOrder = 1
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 8
      Top = 129
      Width = 116
      Height = 22
      DropDownCount = 8
      DisplayEmpty = '<< Todos >>'
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      TabOrder = 5
      OnChange = Look_BancoChange
    end
    object RxDBLookupCombo2: TRxDBLookupCombo
      Left = 128
      Top = 129
      Width = 249
      Height = 22
      DropDownCount = 8
      DisplayEmpty = '<< Todos >>'
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      TabOrder = 6
      OnChange = Look_BancoChange
    end
    object Edit1: TEdit
      Left = 8
      Top = 184
      Width = 121
      Height = 21
      TabOrder = 7
    end
    object RxDBLookupCombo3: TRxDBLookupCombo
      Left = 180
      Top = 184
      Width = 197
      Height = 22
      DropDownCount = 8
      DisplayEmpty = '<< Todos >>'
      LookupField = 'CODIGO'
      LookupDisplay = 'NOME'
      TabOrder = 8
      OnChange = Look_BancoChange
    end
    object Edit2: TEdit
      Left = 267
      Top = 212
      Width = 38
      Height = 21
      TabOrder = 9
    end
    object Button1: TButton
      Left = 8
      Top = 254
      Width = 162
      Height = 25
      Caption = 'Classifica'#231#227'o da Opera'#231#227'o'
      TabOrder = 10
    end
    object ListUFCliente: TListBox
      Tag = 1
      Left = 8
      Top = 279
      Width = 369
      Height = 32
      Hint = 
        'Lista de UF. '#13#10'Para Remover selecione o UF e pressione a tecla D' +
        'EL.'
      Columns = 5
      ItemHeight = 13
      ParentShowHint = False
      PopupMenu = PopupLimparConteudo_UF
      ShowHint = True
      Sorted = True
      TabOrder = 11
      OnKeyDown = ListUFClienteKeyDown
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 438
      Width = 139
      Height = 17
      Caption = 'Imprimir cabe'#231'alho padr'#227'o'
      Checked = True
      State = cbChecked
      TabOrder = 12
    end
    object CheckBox2: TCheckBox
      Left = 8
      Top = 458
      Width = 250
      Height = 17
      Caption = 'Considerar apenas Opera'#231#245'es Negociadas'
      TabOrder = 13
    end
    object CheckBox3: TCheckBox
      Left = 8
      Top = 478
      Width = 250
      Height = 17
      Caption = 'Considerar todos os Status de Opera'#231#227'o'
      TabOrder = 14
    end
    object CheckBox4: TCheckBox
      Left = 8
      Top = 498
      Width = 250
      Height = 17
      Caption = 'Remover Controle de Impress'#227'o'
      TabOrder = 15
    end
    object ComboBox1: TComboBox
      Left = 235
      Top = 431
      Width = 142
      Height = 21
      Style = csDropDownList
      TabOrder = 16
      OnChange = Cb_ModeloChange
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 531
    Width = 400
    Height = 70
    Align = alBottom
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = #39
    TabOrder = 1
    object AdvGlowButton2: TAdvGlowButton
      AlignWithMargins = True
      Left = 233
      Top = 3
      Width = 160
      Height = 60
      Cursor = crHandPoint
      Align = alRight
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = AdvGlowButton2Click
      Appearance.BorderColor = clRed
      Appearance.BorderColorHot = clRed
      Appearance.BorderColorCheckedHot = clRed
      Appearance.BorderColorDown = clRed
      Appearance.BorderColorChecked = clRed
      Appearance.BorderColorDisabled = clRed
      Appearance.BorderColorFocused = clRed
      Appearance.Color = clRed
      Appearance.ColorTo = clRed
      Appearance.ColorChecked = clRed
      Appearance.ColorCheckedTo = clRed
      Appearance.ColorDisabled = clRed
      Appearance.ColorDisabledTo = clRed
      Appearance.ColorDown = clRed
      Appearance.ColorDownTo = clRed
      Appearance.ColorHot = clRed
      Appearance.ColorHotTo = clRed
      Appearance.ColorMirror = clRed
      Appearance.ColorMirrorTo = clRed
      Appearance.ColorMirrorHot = clRed
      Appearance.ColorMirrorHotTo = clRed
      Appearance.ColorMirrorDown = clRed
      Appearance.ColorMirrorDownTo = clRed
      Appearance.ColorMirrorChecked = clRed
      Appearance.ColorMirrorCheckedTo = clRed
      Appearance.ColorMirrorDisabled = clRed
      Appearance.ColorMirrorDisabledTo = clRed
      Appearance.TextColorChecked = clWhite
      Appearance.TextColorDown = clWhite
      Appearance.TextColorHot = clWhite
    end
    object AdvGlowButton5: TAdvGlowButton
      AlignWithMargins = True
      Left = 67
      Top = 3
      Width = 160
      Height = 60
      Cursor = crHandPoint
      Align = alRight
      Caption = 'Visualizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      TabOrder = 1
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
  end
  object PopupLimparConteudo_UF: TPopupMenu
    Left = 134
    Top = 206
    object MenuItem5: TMenuItem
      Caption = 'Limpar Conte'#250'do'
      OnClick = MenuItem5Click
    end
  end
  object PopupLimparConteudo_Remessas: TPopupMenu
    Left = 36
    Top = 90
    object MenuItem2: TMenuItem
      Caption = 'Limpar Conte'#250'do'
      OnClick = MenuItem2Click
    end
  end
  object PopupLimparConteudo_ICE: TPopupMenu
    Left = 136
    Top = 141
    object MenuItem3: TMenuItem
      Caption = 'Limpar Conte'#250'do'
      OnClick = MenuItem3Click
    end
  end
end
