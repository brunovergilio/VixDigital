object flancaproduto: Tflancaproduto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'SmartComm - Lan'#231'a Itens'
  ClientHeight = 190
  ClientWidth = 313
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 313
    Height = 190
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 309
      Height = 41
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object Label6: TLabel
        Left = 16
        Top = 12
        Width = 257
        Height = 15
        Caption = 'Insira os dados do item, e tecle ENTER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Quicksand Book'
        Font.Style = [fsBold]
        ParentFont = False
        ShowAccelChar = False
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 145
      Width = 309
      Height = 41
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 1
    end
    object Panel4: TPanel
      Left = 0
      Top = 41
      Width = 309
      Height = 104
      Align = alClient
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 2
      object Label2: TLabel
        Left = 12
        Top = 76
        Width = 60
        Height = 13
        Caption = 'Quantidade:'
      end
      object Label3: TLabel
        Left = 114
        Top = 54
        Width = 163
        Height = 13
        Caption = 'Digite a quantidade e tecle ENTER'
      end
      object Label4: TLabel
        Left = 12
        Top = 25
        Width = 68
        Height = 13
        Caption = 'Valor Unit'#225'rio:'
      end
      object Edit2: TEdit
        Left = 114
        Top = 68
        Width = 163
        Height = 21
        TabOrder = 0
        OnKeyDown = Edit2KeyDown
      end
      object Edit3: TEdit
        Left = 114
        Top = 17
        Width = 163
        Height = 21
        TabOrder = 1
        OnExit = Edit3Exit
        OnKeyDown = Edit3KeyDown
      end
    end
    object Button1: TButton
      Left = 48
      Top = 153
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 176
      Top = 153
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 4
      OnClick = Button2Click
    end
  end
end
