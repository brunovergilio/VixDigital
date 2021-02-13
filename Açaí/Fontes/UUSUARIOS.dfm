object FUSUARIOS: TFUSUARIOS
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'SmartComm - Cadastro de Usu'#225'rios (Vendedores)'
  ClientHeight = 223
  ClientWidth = 459
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
  object Bevel1: TBevel
    Left = 0
    Top = 0
    Width = 459
    Height = 223
    Align = alClient
    Shape = bsFrame
    Style = bsRaised
    ExplicitLeft = 80
    ExplicitTop = 40
    ExplicitWidth = 50
    ExplicitHeight = 50
  end
  object Bevel2: TBevel
    Left = 8
    Top = 8
    Width = 441
    Height = 208
    Shape = bsFrame
    Style = bsRaised
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 16
    Width = 425
    Height = 161
    DataSource = fdm.DSTUsuarios
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PORTADOR'
        Title.Alignment = taCenter
        Title.Caption = 'Usu'#225'rio'
        Width = 161
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Alignment = taCenter
        Title.Caption = 'Senha'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NIVEL'
        Title.Caption = 'N'#237'vel (1 ou 2)'
        Width = 69
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 123
    Top = 179
    Width = 103
    Height = 36
    Caption = 'Gravar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 338
    Top = 178
    Width = 103
    Height = 37
    Caption = 'Cancelar'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 16
    Top = 178
    Width = 103
    Height = 37
    Caption = 'Inserir'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 230
    Top = 179
    Width = 103
    Height = 36
    Caption = 'Apagar'
    TabOrder = 4
    OnClick = Button4Click
  end
end
