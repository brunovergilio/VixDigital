object frmfichadecobranca: Tfrmfichadecobranca
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Ficha de Cobran'#231'a'
  ClientHeight = 205
  ClientWidth = 484
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 47
    Height = 13
    Caption = 'Remessa:'
  end
  object Label2: TLabel
    Left = 24
    Top = 88
    Width = 147
    Height = 13
    Caption = 'Cliente (em branco = TODOS):'
  end
  object Edit1: TEdit
    Left = 24
    Top = 51
    Width = 225
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 24
    Top = 107
    Width = 354
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 384
    Top = 105
    Width = 75
    Height = 25
    Caption = 'Procura'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 155
    Width = 484
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitTop = 382
    object btnfiltrar: TRzToolButton
      AlignWithMargins = True
      Left = 361
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
      Caption = 'Visualizar'
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
  end
end
