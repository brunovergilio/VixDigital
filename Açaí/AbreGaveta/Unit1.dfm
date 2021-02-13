object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 205
  ClientWidth = 283
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
  object GroupBox1: TGroupBox
    Left = 16
    Top = 24
    Width = 257
    Height = 105
    Caption = 'GroupBox1'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 40
      Width = 58
      Height = 13
      Caption = 'Impressora:'
    end
    object Label2: TLabel
      Left = 16
      Top = 72
      Width = 30
      Height = 13
      Caption = 'Porta:'
    end
    object ComboBox1: TComboBox
      Left = 89
      Top = 32
      Width = 145
      Height = 21
      TabOrder = 0
      Items.Strings = (
        'gavImpressoraComum'
        'gavImpressoraECF'
        'gavNenhuma'
        'gavSerialGerbo'
        'gavSerialMenno')
    end
    object ComboBox2: TComboBox
      Left = 89
      Top = 64
      Width = 145
      Height = 21
      TabOrder = 1
      Items.Strings = (
        'USB'
        'COM1'
        'COM2'
        'COM3'
        'COM4'
        'COM5'
        'COM6'
        'COM7'
        'COM8')
    end
  end
  object Button1: TButton
    Left = 16
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ACBrGAV1: TACBrGAV
    Modelo = gavImpressoraComum
    Device.HandShake = hsRTS_CTS
    Device.HardFlow = True
    StrComando = 'ch(15)'
    Left = 112
    Top = 152
  end
end
