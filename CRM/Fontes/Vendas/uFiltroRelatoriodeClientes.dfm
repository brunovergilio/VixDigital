object frmfiltrorelatoriosdeclientes: Tfrmfiltrorelatoriosdeclientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Filtro Relat'#243'rio de Clientes'
  ClientHeight = 478
  ClientWidth = 371
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 74
    Height = 13
    Caption = 'Banco/Empresa'
  end
  object Label2: TLabel
    Left = 24
    Top = 62
    Width = 61
    Height = 13
    Caption = 'Classifica'#231#227'o'
  end
  object Label3: TLabel
    Left = 24
    Top = 108
    Width = 112
    Height = 13
    Caption = 'Marcadores de Clientes'
  end
  object Label4: TLabel
    Left = 24
    Top = 154
    Width = 126
    Height = 13
    Caption = 'Marcadores de Opera'#231#245'es'
  end
  object Label5: TLabel
    Left = 24
    Top = 210
    Width = 95
    Height = 13
    Caption = 'Adicionar Remessas'
  end
  object ComboBox1: TComboBox
    Left = 24
    Top = 35
    Width = 321
    Height = 21
    TabOrder = 0
  end
  object ComboBox2: TComboBox
    Left = 24
    Top = 81
    Width = 321
    Height = 21
    TabOrder = 1
  end
  object ComboBox3: TComboBox
    Left = 24
    Top = 127
    Width = 321
    Height = 21
    TabOrder = 2
  end
  object ComboBox4: TComboBox
    Left = 24
    Top = 173
    Width = 321
    Height = 21
    TabOrder = 3
  end
  object ListBox1: TListBox
    Left = 24
    Top = 229
    Width = 321
    Height = 97
    ItemHeight = 13
    TabOrder = 4
  end
  object RadioGroup1: TRadioGroup
    Left = 24
    Top = 346
    Width = 321
    Height = 57
    Caption = 'Filtro Telefones'
    Columns = 3
    ItemIndex = 2
    Items.Strings = (
      'Todos'
      'Com Telefone'
      'Sem Telefone')
    TabOrder = 5
  end
  object Panel1: TPanel
    Left = 0
    Top = 428
    Width = 371
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 6
    ExplicitLeft = -1010
    ExplicitTop = 508
    ExplicitWidth = 1415
    object btnfiltrar: TRzToolButton
      AlignWithMargins = True
      Left = 188
      Top = 3
      Width = 180
      Height = 44
      Cursor = crHandPoint
      GradientColorStyle = gcsSystem
      Flat = False
      ShowCaption = True
      Transparent = False
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Align = alRight
      Caption = 'Exportar Registros'
      Color = clTeal
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 1292
    end
    object btnretornar: TRzToolButton
      AlignWithMargins = True
      Left = 2
      Top = 3
      Width = 180
      Height = 44
      Cursor = crHandPoint
      GradientColorStyle = gcsSystem
      Flat = False
      ShowCaption = True
      Transparent = False
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      UseToolbarVisualStyle = False
      VisualStyle = vsWinXP
      Align = alRight
      Caption = 'Visualizar'
      Color = 10053171
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      OnClick = btnretornarClick
      ExplicitLeft = 794
    end
  end
  object UniDataSource1: TDataSource
    DataSet = uniscript
    Left = 151
    Top = 8
  end
  object uniscript: TFDQuery
    Encryption.Fields = 'SENHA'
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from clientes')
    Options.RequiredFields = False
    Left = 223
    Top = 8
  end
end
