object fsplash: Tfsplash
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'fsplash'
  ClientHeight = 256
  ClientWidth = 586
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 15
  object lblstatus: TLabel
    Left = 32
    Top = 152
    Width = 3
    Height = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object AdvProgressBar1: TAdvProgressBar
    Left = 32
    Top = 181
    Width = 521
    Height = 18
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    Level0ColorTo = 14811105
    Level1ColorTo = 13303807
    Level2Color = 5483007
    Level2ColorTo = 11064319
    Level3ColorTo = 13290239
    Level1Perc = 70
    Level2Perc = 90
    Position = 0
    ShowBorder = True
    Version = '1.3.0.1'
  end
  object Panel2: TPanel
    Left = 0
    Top = 232
    Width = 586
    Height = 24
    Align = alBottom
    BevelOuter = bvNone
    Color = 4600320
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 5
      Width = 174
      Height = 15
      Margins.Left = 10
      Alignment = taCenter
      Caption = '(C) Powered by Click Solu'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 586
    Height = 145
    Align = alTop
    BevelOuter = bvNone
    Color = 4600320
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 129
      Top = 44
      Width = 317
      Height = 58
      Caption = 'ClickCob 2020'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -48
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 512
    Top = 40
  end
end
