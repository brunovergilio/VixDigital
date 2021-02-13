object FEnviarEmail: TFEnviarEmail
  Left = 495
  Top = 175
  BorderStyle = bsSingle
  Caption = 'Enviar E-mail em Massa'
  ClientHeight = 552
  ClientWidth = 598
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 11
    Top = 4
    Width = 74
    Height = 13
    Caption = 'Conta de E-mail'
  end
  object Label1: TLabel
    Left = 11
    Top = 44
    Width = 179
    Height = 13
    Caption = 'Incluir o seguinte evento de cobran'#231'a'
  end
  object Label2: TLabel
    Left = 11
    Top = 84
    Width = 83
    Height = 13
    Caption = 'Banco / Empresa'
  end
  object Label3: TLabel
    Left = 11
    Top = 124
    Width = 81
    Height = 13
    Caption = 'Modelo de E-mail'
  end
  object Label4: TLabel
    Left = 336
    Top = 172
    Width = 120
    Height = 13
    Caption = 'Remessas em Espec'#237'fico'
  end
  object BtnRemessas: TSpeedButton
    Left = 11
    Top = 167
    Width = 115
    Height = 22
    Caption = 'Adicionar Remessas'
    Flat = True
  end
  object Label16: TLabel
    Left = 11
    Top = 294
    Width = 107
    Height = 13
    Caption = 'Situa'#231#227'o da Opera'#231#227'o'
  end
  object Label7: TLabel
    Left = 472
    Top = 370
    Width = 119
    Height = 26
    AutoSize = False
    Caption = 'N'#250'mero de envio por conex'#227'o'
    WordWrap = True
  end
  object Label8: TLabel
    Left = 472
    Top = 294
    Width = 119
    Height = 26
    AutoSize = False
    Caption = 'Intervalo de envio de E-mails (segundos)'
    WordWrap = True
  end
  object Label5: TLabel
    Left = 336
    Top = 21
    Width = 35
    Height = 13
    Caption = 'Anexos'
  end
  object Panel1: TPanel
    Left = 0
    Top = 482
    Width = 598
    Height = 70
    Align = alBottom
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -506
    ExplicitTop = 360
    ExplicitWidth = 968
    object AdvGlowButton2: TAdvGlowButton
      AlignWithMargins = True
      Left = 383
      Top = 3
      Width = 160
      Height = 60
      Cursor = crHandPoint
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
    object AdvGlowButton3: TAdvGlowButton
      AlignWithMargins = True
      Left = 51
      Top = 3
      Width = 160
      Height = 60
      Cursor = crHandPoint
      HelpType = htKeyword
      Caption = 'Iniciar'
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
    object AdvGlowButton5: TAdvGlowButton
      AlignWithMargins = True
      Left = 217
      Top = 3
      Width = 160
      Height = 60
      Cursor = crHandPoint
      Caption = 'Cancelar Envio'
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
      TabOrder = 2
      Appearance.BorderColor = 1560829
      Appearance.BorderColorHot = 1560829
      Appearance.BorderColorCheckedHot = 1560829
      Appearance.BorderColorDown = 1560829
      Appearance.BorderColorChecked = 1560829
      Appearance.BorderColorDisabled = 1560829
      Appearance.BorderColorFocused = 1560829
      Appearance.Color = 1560829
      Appearance.ColorTo = 1560829
      Appearance.ColorChecked = 1560829
      Appearance.ColorCheckedTo = 1560829
      Appearance.ColorDisabled = 1560829
      Appearance.ColorDisabledTo = 1560829
      Appearance.ColorDown = 1560829
      Appearance.ColorDownTo = 1560829
      Appearance.ColorHot = 1560829
      Appearance.ColorHotTo = 1560829
      Appearance.ColorMirror = 1560829
      Appearance.ColorMirrorTo = 1560829
      Appearance.ColorMirrorHot = 1560829
      Appearance.ColorMirrorHotTo = 1560829
      Appearance.ColorMirrorDown = 1560829
      Appearance.ColorMirrorDownTo = 1560829
      Appearance.ColorMirrorChecked = 1560829
      Appearance.ColorMirrorCheckedTo = 1560829
      Appearance.ColorMirrorDisabled = 1560829
      Appearance.ColorMirrorDisabledTo = 1560829
      Appearance.TextColorChecked = clWhite
      Appearance.TextColorDown = clWhite
      Appearance.TextColorHot = clWhite
    end
  end
  object Look_Banco: TRxDBLookupCombo
    Left = 11
    Top = 20
    Width = 280
    Height = 22
    Hint = 'Selecione o Banco / Empresa a ser Filtrada'
    DropDownCount = 8
    DisplayEmpty = '<< Todos >>'
    EmptyValue = '0'
    FieldsDelimiter = #0
    LookupField = 'CODIGO'
    LookupDisplay = 'NOME'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 11
    Top = 60
    Width = 280
    Height = 22
    Hint = 'Selecione o Banco / Empresa a ser Filtrada'
    DropDownCount = 8
    DisplayEmpty = '<< Todos >>'
    EmptyValue = '0'
    FieldsDelimiter = #0
    LookupField = 'CODIGO'
    LookupDisplay = 'NOME'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
  end
  object RxDBLookupCombo2: TRxDBLookupCombo
    Left = 11
    Top = 100
    Width = 280
    Height = 22
    Hint = 'Selecione o Banco / Empresa a ser Filtrada'
    DropDownCount = 8
    DisplayEmpty = '<< Todos >>'
    EmptyValue = '0'
    FieldsDelimiter = #0
    LookupField = 'CODIGO'
    LookupDisplay = 'NOME'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object RxDBLookupCombo3: TRxDBLookupCombo
    Left = 11
    Top = 140
    Width = 280
    Height = 22
    Hint = 'Selecione o Banco / Empresa a ser Filtrada'
    DropDownCount = 8
    DisplayEmpty = '<< Todos >>'
    EmptyValue = '0'
    FieldsDelimiter = #0
    LookupField = 'CODIGO'
    LookupDisplay = 'NOME'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
  end
  object List_Remessas: TListBox
    Left = 336
    Top = 191
    Width = 243
    Height = 87
    Hint = 
      'Lista de Remesas.'#13#10'Para Remover selecione a Remessa e pressione ' +
      'a tecla DEL.'
    Columns = 2
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    Sorted = True
    TabOrder = 5
  end
  object ListBox1: TListBox
    Left = 11
    Top = 191
    Width = 243
    Height = 87
    Hint = 
      'Lista de Remesas.'#13#10'Para Remover selecione a Remessa e pressione ' +
      'a tecla DEL.'
    Columns = 2
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    Sorted = True
    TabOrder = 6
  end
  object CheckListBox1: TCheckListBox
    Left = 11
    Top = 312
    Width = 243
    Height = 160
    ItemHeight = 13
    Items.Strings = (
      'Em Ser'
      'Liquidada'
      'Devolvida'
      'Retomada'
      'Negocia'#231#227'o'
      'Liq. por Reneg.'
      'Acordo Quebrado'
      'Reneg. em Atraso')
    TabOrder = 7
  end
  object RadioGroup1: TRadioGroup
    Left = 267
    Top = 294
    Width = 185
    Height = 129
    Caption = 'Usar E-mail'
    Items.Strings = (
      'Todos'
      'E-mail 1'
      'E-mail 2'
      'Preferencial'
      'Apenas Preferencial')
    TabOrder = 8
  end
  object CheckBox1: TCheckBox
    Left = 270
    Top = 432
    Width = 294
    Height = 17
    Caption = 'Remover Marcador do Cliente ap'#243's enviar o E-mail'
    TabOrder = 9
  end
  object CheckBox2: TCheckBox
    Left = 270
    Top = 455
    Width = 294
    Height = 17
    Caption = 'Gravar conte'#250'do do E-mail do Evento de Cobran'#231'a'
    TabOrder = 10
  end
  object NxSpinEdit61: TNxSpinEdit6
    Left = 472
    Top = 326
    Width = 121
    Height = 21
    TabOrder = 11
    Text = '0,00'
    Increment = 1.000000000000000000
  end
  object NxSpinEdit62: TNxSpinEdit6
    Left = 472
    Top = 402
    Width = 121
    Height = 21
    TabOrder = 12
    Text = '0,00'
    Increment = 1.000000000000000000
  end
  object ListBox2: TListBox
    Left = 336
    Top = 40
    Width = 193
    Height = 97
    ItemHeight = 13
    TabOrder = 13
  end
  object AdvGlowButton1: TAdvGlowButton
    AlignWithMargins = True
    Left = 535
    Top = 58
    Width = 58
    Height = 60
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
    TabOrder = 14
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
