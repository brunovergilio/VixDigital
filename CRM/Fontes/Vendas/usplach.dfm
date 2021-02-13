object splash: Tsplash
  Left = 0
  Top = 0
  Caption = 'splash'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 416
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
  object AdvProgress1: TAdvProgress
    Left = 16
    Top = 144
    Width = 585
    Height = 17
    BarColor = clHighlight
    TabOrder = 1
    BkColor = clWindow
    Version = '1.2.0.0'
  end
  object Timer1: TTimer
    Interval = 50
    Left = 80
    Top = 64
  end
end
