object fenvianota: Tfenvianota
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'SmartComm - Lan'#231'a Caixa'
  ClientHeight = 160
  ClientWidth = 371
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
    Left = 56
    Top = 46
    Width = 165
    Height = 15
    Caption = 'Lan'#231'ar Vendas no Caixa?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Quicksand Book'
    Font.Style = []
    ParentFont = False
  end
  object DBMemo1: TDBMemo
    Left = 8
    Top = 1
    Width = 185
    Height = 89
    DataField = 'NFEXML'
    TabOrder = 4
    Visible = False
  end
  object Button2: TButton
    Left = 217
    Top = 96
    Width = 89
    Height = 41
    Caption = 'Cancelar'
    TabOrder = 0
    OnClick = Button2Click
  end
  object DBEdit1: TDBEdit
    Left = 232
    Top = 19
    Width = 121
    Height = 21
    DataField = 'GEN_ID'
    TabOrder = 1
    Visible = False
  end
  object DBEdit2: TDBEdit
    Left = 232
    Top = 46
    Width = 121
    Height = 21
    DataField = 'GEN_ID'
    TabOrder = 2
    Visible = False
  end
  object DBEdit3: TDBEdit
    Left = 232
    Top = 73
    Width = 121
    Height = 21
    DataField = 'GEN_ID'
    TabOrder = 3
    Visible = False
  end
  object Button3: TButton
    Left = 65
    Top = 96
    Width = 89
    Height = 41
    Caption = 'Lan'#231'ar'
    TabOrder = 5
    OnClick = Button3Click
  end
  object ProgressBar1: TProgressBar
    Left = 21
    Top = 41
    Width = 329
    Height = 23
    TabOrder = 6
    Visible = False
  end
  object DBEdit4: TDBEdit
    Left = 65
    Top = 1
    Width = 306
    Height = 21
    DataField = 'GEN_ID'
    DataSource = dm.DSQGENCAIXA
    TabOrder = 7
    Visible = False
  end
end
