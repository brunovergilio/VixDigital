object fsenha_cancelamento: Tfsenha_cancelamento
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Senha (Altera'#231#227'o)'
  ClientHeight = 152
  ClientWidth = 422
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
    Left = 64
    Top = 32
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
    Left = 64
    Top = 88
    Width = 121
    Height = 33
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 232
    Top = 88
    Width = 121
    Height = 33
    Caption = 'Cancela'
    TabOrder = 2
    OnClick = Button2Click
  end
end
