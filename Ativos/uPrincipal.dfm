object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 342
  ClientWidth = 435
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 45
    Top = 16
    Width = 344
    Height = 41
    Caption = 'Clientes'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 13
    Top = 67
    Width = 409
    Height = 265
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object HTTPRIO1: THTTPRIO
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 208
    Top = 240
  end
end
