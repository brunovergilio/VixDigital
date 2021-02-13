object fmRegistro: TfmRegistro
  Left = 264
  Top = 187
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Registro'
  ClientHeight = 195
  ClientWidth = 370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 6
    Width = 87
    Height = 13
    Caption = 'Nome da Empresa'
  end
  object Label4: TLabel
    Left = 8
    Top = 57
    Width = 39
    Height = 13
    Caption = 'C N P J '
  end
  object Label2: TLabel
    Left = 8
    Top = 120
    Width = 342
    Height = 13
    Caption = 
      'Entre com a chave fornecida pelo departamento de suporte da Logi' +
      'com:'
  end
  object Edit1: TEdit
    Left = 8
    Top = 24
    Width = 345
    Height = 21
    TabOrder = 0
  end
  object MaskEdit2: TMaskEdit
    Left = 8
    Top = 75
    Width = 129
    Height = 21
    EditMask = '00.000.000\\0000\-00;0;_'
    MaxLength = 18
    TabOrder = 1
    Text = '00000000000000'
  end
  object MaskEdit1: TMaskEdit
    Left = 8
    Top = 136
    Width = 345
    Height = 21
    CharCase = ecUpperCase
    EditMask = '>AAAAAAAA\-AAAAAAAA\-AAAAAAAA\-AAAAAAAA\-AAAAAAAA;1;_'
    MaxLength = 44
    TabOrder = 2
    Text = '        -        -        -        -        '
    OnKeyPress = MaskEdit1KeyPress
  end
  object BitBtn1: TBitBtn
    Left = 69
    Top = 168
    Width = 75
    Height = 25
    TabOrder = 3
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 213
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Cancela'
    TabOrder = 4
    Kind = bkCancel
  end
end
