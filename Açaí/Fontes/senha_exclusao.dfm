object fsenha_exclusao: Tfsenha_exclusao
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Senha (Exclus'#227'o)'
  ClientHeight = 174
  ClientWidth = 433
  Color = clRed
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object MaskEdit1: TMaskEdit
    Left = 72
    Top = 42
    Width = 289
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 0
    Text = ''
    OnKeyDown = MaskEdit1KeyDown
  end
  object Button1: TButton
    Left = 72
    Top = 98
    Width = 121
    Height = 33
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 240
    Top = 98
    Width = 121
    Height = 33
    Caption = 'Cancela'
    TabOrder = 2
    OnClick = Button2Click
  end
end
