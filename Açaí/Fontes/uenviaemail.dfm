object fenviaemail: Tfenviaemail
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'SmartComm - Envia e-mail'
  ClientHeight = 160
  ClientWidth = 378
  Color = clWhite
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
  object Label1: TLabel
    Left = 56
    Top = 24
    Width = 291
    Height = 15
    Caption = 'Enviar e-mail com o PDF do Or'#231'amento para'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Quicksand Book'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 56
    Top = 56
    Width = 36
    Height = 12
    Caption = 'Label2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Quicksand Book'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label3: TLabel
    Left = 8
    Top = 71
    Width = 365
    Height = 17
    Caption = 'Por favor, aguarde a mensagem de confirma'#231#227'o.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Quicksand Book'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Button1: TButton
    Left = 56
    Top = 96
    Width = 89
    Height = 41
    Caption = 'Enviar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 232
    Top = 96
    Width = 89
    Height = 41
    Caption = 'Cancelar'
    TabOrder = 1
    OnClick = Button2Click
  end
end
