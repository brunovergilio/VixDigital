object FRELATORIOS: TFRELATORIOS
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'SmartComm - Relat'#243'rios'
  ClientHeight = 184
  ClientWidth = 391
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 44
    Width = 377
    Height = 81
    Caption = 'Relat'#243'rio de Vendas'
    TabOrder = 0
    object Label1: TLabel
      Left = 116
      Top = 44
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object Button1: TButton
      Left = 247
      Top = 28
      Width = 114
      Height = 35
      HelpType = htKeyword
      Caption = 'Imprimir'
      TabOrder = 0
      OnClick = Button1Click
    end
    object MASKEDIT1: TDateTimePicker
      Left = 13
      Top = 36
      Width = 97
      Height = 21
      Date = 42396.562374537040000000
      Time = 42396.562374537040000000
      TabOrder = 1
    end
    object MASKEDIT2: TDateTimePicker
      Left = 128
      Top = 36
      Width = 96
      Height = 21
      Date = 42396.562377407400000000
      Time = 42396.562377407400000000
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 95
    Width = 377
    Height = 82
    Caption = 'Relat'#243'rio de Produtos Vendidos'
    TabOrder = 1
    Visible = False
    object Label2: TLabel
      Left = 116
      Top = 44
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object Button7: TButton
      Left = 247
      Top = 28
      Width = 114
      Height = 35
      HelpType = htKeyword
      Caption = 'Imprimir'
      TabOrder = 0
      OnClick = Button7Click
    end
    object MASKEDIT3: TDateTimePicker
      Left = 13
      Top = 36
      Width = 97
      Height = 21
      Date = 42396.562389444440000000
      Time = 42396.562389444440000000
      TabOrder = 1
    end
    object MASKEDIT4: TDateTimePicker
      Left = 128
      Top = 36
      Width = 96
      Height = 21
      Date = 42396.562392581020000000
      Time = 42396.562392581020000000
      TabOrder = 2
    end
  end
end
