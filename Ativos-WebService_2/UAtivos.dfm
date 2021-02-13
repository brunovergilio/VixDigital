object frmAtivosteste: TfrmAtivosteste
  Left = 0
  Top = 0
  Caption = 'frmAtivosteste'
  ClientHeight = 299
  ClientWidth = 635
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
    Left = 56
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 56
    Top = 80
    Width = 537
    Height = 185
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    TabOrder = 1
  end
  object HTTPRIO1: THTTPRIO
    WSDLLocation = 
      'https://hmg-webservices.ativossa.com.br/rico-webservice/ClienteS' +
      'ervice?wsdl'
    Service = 'ClienteService'
    Port = 'ClientePort'
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 224
    Top = 120
  end
end
