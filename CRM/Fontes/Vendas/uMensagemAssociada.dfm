object fMensagemAssociada: TfMensagemAssociada
  Left = 0
  Top = 0
  Caption = 'Mensagem Associada Ativos'
  ClientHeight = 749
  ClientWidth = 1365
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 809
    Height = 679
    Align = alLeft
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 3
      Top = 8
      Width = 210
      Height = 25
      Caption = 'Mensagens do Usu'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 39
      Width = 799
      Height = 633
      Align = alBottom
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Data/Hora'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -19
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 179
          Visible = True
        end
        item
          Expanded = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Calibri'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Assunto'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -19
          Title.Font.Name = 'Calibri'
          Title.Font.Style = []
          Width = 582
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 809
    Top = 0
    Width = 556
    Height = 679
    Align = alClient
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 1
    object Label2: TLabel
      Left = 3
      Top = 8
      Width = 107
      Height = 25
      Caption = 'Mensagem:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Memo1: TMemo
      AlignWithMargins = True
      Left = 3
      Top = 26
      Width = 546
      Height = 646
      Align = alBottom
      TabOrder = 0
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 679
    Width = 1365
    Height = 70
    Align = alBottom
    BevelKind = bkFlat
    BevelOuter = bvNone
    TabOrder = 2
    object AdvGlowButton3: TAdvGlowButton
      AlignWithMargins = True
      Left = 866
      Top = 3
      Width = 160
      Height = 60
      Cursor = crHandPoint
      HelpType = htKeyword
      Align = alRight
      Caption = 'Abrir Cliente Associado'
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
      Left = 1032
      Top = 3
      Width = 160
      Height = 60
      Cursor = crHandPoint
      Align = alRight
      Caption = 'Enviar'
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
    object AdvGlowButton2: TAdvGlowButton
      AlignWithMargins = True
      Left = 1198
      Top = 3
      Width = 160
      Height = 60
      Cursor = crHandPoint
      Align = alRight
      Caption = 'Sair'
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
  end
end