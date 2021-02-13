object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'VIX DIGITAL - PR'#201' VENDA'
  ClientHeight = 570
  ClientWidth = 934
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 507
    Width = 934
    Height = 63
    Align = alBottom
    BevelOuter = bvNone
    Color = 16744448
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      934
      63)
    object Label1: TLabel
      Left = 8
      Top = 22
      Width = 299
      Height = 19
      Caption = 'VIX DIGITAL - PR'#201' VENDA | RENAN '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbData: TLabel
      Left = 718
      Top = 8
      Width = 72
      Height = 19
      Alignment = taRightJustify
      Anchors = [akLeft, akTop, akRight]
      Caption = '00:00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbDiaSemana: TLabel
      Left = 718
      Top = 36
      Width = 72
      Height = 19
      Alignment = taRightJustify
      Anchors = [akLeft, akTop, akRight]
      Caption = '00:00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbHora: TLabel
      Left = 804
      Top = 15
      Width = 122
      Height = 33
      Alignment = taRightJustify
      Anchors = [akLeft, akTop, akRight]
      Caption = '00:00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnBotoes: TPanel
    Left = 0
    Top = 0
    Width = 934
    Height = 89
    Align = alTop
    Color = clWindow
    ParentBackground = False
    TabOrder = 1
    Visible = False
  end
  object pnLogin: TPanel
    Left = 0
    Top = 89
    Width = 934
    Height = 418
    Align = alClient
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 2
    DesignSize = (
      934
      418)
    object Panel2: TPanel
      Left = 162
      Top = 60
      Width = 609
      Height = 297
      Anchors = []
      BevelOuter = bvNone
      BorderWidth = 3
      Color = 16744448
      ParentBackground = False
      TabOrder = 0
      object Panel3: TPanel
        Left = 3
        Top = 253
        Width = 603
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        Color = 9783808
        ParentBackground = False
        TabOrder = 0
      end
      object Panel4: TPanel
        Left = 3
        Top = 3
        Width = 140
        Height = 250
        Align = alLeft
        BevelOuter = bvNone
        Color = clWindow
        ParentBackground = False
        TabOrder = 1
      end
      object Panel5: TPanel
        Left = 143
        Top = 3
        Width = 463
        Height = 250
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object Label2: TLabel
          Left = 154
          Top = 14
          Width = 155
          Height = 19
          Caption = 'ACESSO RESTRITO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 88
          Top = 62
          Width = 52
          Height = 19
          Caption = 'LOGIN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 88
          Top = 118
          Width = 56
          Height = 19
          Caption = 'SENHA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 88
          Top = 86
          Width = 287
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 88
          Top = 142
          Width = 287
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          PasswordChar = '*'
          TabOrder = 1
        end
        object AdvGlowButton1: TAdvGlowButton
          Left = 88
          Top = 183
          Width = 288
          Height = 34
          Cursor = crHandPoint
          BorderStyle = bsNone
          Caption = 'ACESSAR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = AdvGlowButton1Click
          Appearance.BorderColor = 9783808
          Appearance.BorderColorHot = 9783808
          Appearance.BorderColorCheckedHot = 9783808
          Appearance.BorderColorDown = 9783808
          Appearance.BorderColorChecked = 9783808
          Appearance.BorderColorDisabled = 9783808
          Appearance.BorderColorFocused = 9783808
          Appearance.Color = 9783808
          Appearance.ColorTo = 9783808
          Appearance.ColorChecked = 9783808
          Appearance.ColorCheckedTo = 9783808
          Appearance.ColorDisabled = 9783808
          Appearance.ColorDisabledTo = 9783808
          Appearance.ColorDown = 9783808
          Appearance.ColorDownTo = 9783808
          Appearance.ColorHot = 9783808
          Appearance.ColorHotTo = 9783808
          Appearance.ColorMirror = 9783808
          Appearance.ColorMirrorTo = 9783808
          Appearance.ColorMirrorHot = 9783808
          Appearance.ColorMirrorHotTo = 9783808
          Appearance.ColorMirrorDown = 9783808
          Appearance.ColorMirrorDownTo = 9783808
          Appearance.ColorMirrorChecked = 9783808
          Appearance.ColorMirrorCheckedTo = 9783808
          Appearance.ColorMirrorDisabled = 9783808
          Appearance.ColorMirrorDisabledTo = 9783808
          Appearance.TextColorChecked = clWindow
          Appearance.TextColorDown = clWindow
          Appearance.TextColorHot = clWindow
          Appearance.TextColorDisabled = clWindow
        end
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 888
    Top = 456
  end
  object FDQuery1: TFDQuery
    Left = 464
    Top = 288
  end
end
