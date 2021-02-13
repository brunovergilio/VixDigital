object FCONFIG: TFCONFIG
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Smart Commerce - Configura'#231#245'es'
  ClientHeight = 244
  ClientWidth = 198
  Color = clBtnFace
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
  object SpeedButton1: TSpeedButton
    Left = 8
    Top = 127
    Width = 185
    Height = 41
    Caption = 'Salvar e Fechar'
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 8
    Width = 185
    Height = 113
    Caption = 'Escolha a Op'#231#227'o:'
    Items.Strings = (
      'Papel A4 (211x297 cm)'
      'Papel A5 (210x148 cm)')
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 8
    Top = 174
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
end
