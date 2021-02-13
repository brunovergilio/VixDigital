object FrmTipoVenda: TFrmTipoVenda
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Tipo de Venda'
  ClientHeight = 282
  ClientWidth = 561
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton1: TcxButton
    Left = 60
    Top = 20
    Width = 437
    Height = 81
    Caption = 'Venda Simples'
    TabOrder = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 60
    Top = 103
    Width = 437
    Height = 81
    Caption = 'Nota Fiscal Eletr'#244'nica'
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxButton2Click
  end
  object cxButton3: TcxButton
    Left = 60
    Top = 187
    Width = 437
    Height = 81
    Caption = 'Sair'
    TabOrder = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxButton3Click
  end
end
