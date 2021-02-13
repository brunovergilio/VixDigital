object frmAlteraSituacaoNegociacao: TfrmAlteraSituacaoNegociacao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Altera'#231#227'o da Situa'#231#227'o'
  ClientHeight = 332
  ClientWidth = 677
  Color = clWindow
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel3: TPanel
    Left = 0
    Top = 282
    Width = 677
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    object RzToolButton1: TRzToolButton
      AlignWithMargins = True
      Left = 428
      Top = 3
      Width = 120
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
      Caption = 'Gravar'
      Color = 13273922
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton1Click
      ExplicitLeft = 239
      ExplicitTop = -2
      ExplicitHeight = 40
    end
    object RzToolButton2: TRzToolButton
      AlignWithMargins = True
      Left = 554
      Top = 3
      Width = 120
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
      Caption = 'Cancelar'
      Color = 13273922
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      OnClick = RzToolButton2Click
      ExplicitLeft = 635
      ExplicitTop = -2
      ExplicitHeight = 40
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 677
    Height = 81
    Align = alTop
    Caption = 'Situa'#231#227'o da Parcela'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Roboto'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 35
      Height = 18
      Caption = 'Atual'
    end
    object Label2: TLabel
      Left = 360
      Top = 24
      Width = 79
      Height = 18
      Caption = 'Alterar Para'
    end
    object lblSituacao: TLabel
      Left = 16
      Top = 48
      Width = 337
      Height = 18
      AutoSize = False
      Caption = 'lblSituacao'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -15
      Font.Name = 'Roboto Bk'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object cbxSituacao: TComboBox
      Left = 360
      Top = 43
      Width = 300
      Height = 26
      Style = csDropDownList
      TabOrder = 0
      Items.Strings = (
        'S - EM SER'
        'R - RENEGOCIADA'
        'N - NEGOCIA'#199#195'O ACORDO REALIZADO'
        'A - ACORDO QUEBRADO'
        'O - RETOMADA'
        'D - DEVOLVIDA'
        'L - LIQUIDADA')
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 81
    Width = 677
    Height = 201
    Align = alClient
    Caption = 'Informa'#231#245'es da Parcela'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Roboto'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object Label3: TLabel
      Left = 16
      Top = 24
      Width = 48
      Height = 19
      Caption = 'Credor'
    end
    object Label4: TLabel
      Left = 16
      Top = 77
      Width = 90
      Height = 19
      Caption = 'N'#176' Opera'#231#227'o'
    end
    object Label5: TLabel
      Left = 116
      Top = 77
      Width = 84
      Height = 19
      Caption = 'Vencimento'
    end
    object Label6: TLabel
      Left = 216
      Top = 77
      Width = 102
      Height = 19
      Caption = 'Valor Nominal'
    end
    object Label7: TLabel
      Left = 332
      Top = 77
      Width = 63
      Height = 19
      Caption = 'Multa(%)'
    end
    object Label8: TLabel
      Left = 415
      Top = 77
      Width = 70
      Height = 19
      Caption = 'Multa(R$)'
    end
    object Label9: TLabel
      Left = 498
      Top = 77
      Width = 63
      Height = 19
      Caption = 'Juros(%)'
    end
    object Label10: TLabel
      Left = 581
      Top = 77
      Width = 70
      Height = 19
      Caption = 'Juros(R$)'
    end
    object Label11: TLabel
      Left = 216
      Top = 133
      Width = 129
      Height = 19
      Caption = 'VALOR RECEBIDO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 16
      Top = 133
      Width = 106
      Height = 19
      Caption = 'VALOR D'#205'VIDA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 416
      Top = 133
      Width = 151
      Height = 19
      Caption = 'DATA RECEBIMENTO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 44
      Width = 644
      Height = 27
      DataField = 'nome'
      DataSource = FrmClientes.uniDSClientesOperacoes
      Enabled = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 100
      Width = 97
      Height = 27
      DataField = 'NROPERACAO'
      DataSource = FrmClientes.uniDSClientesOperacoes
      Enabled = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 116
      Top = 100
      Width = 97
      Height = 27
      DataField = 'DATAVENCTO'
      DataSource = FrmClientes.uniDSClientesOperacoes
      Enabled = False
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 216
      Top = 100
      Width = 113
      Height = 27
      DataField = 'VALORNOMINAL'
      DataSource = FrmClientes.uniDSClientesOperacoes
      Enabled = False
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 332
      Top = 100
      Width = 80
      Height = 27
      DataField = 'PERC_MULTA'
      DataSource = FrmClientes.uniDSClientesOperacoes
      Enabled = False
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 415
      Top = 100
      Width = 80
      Height = 27
      DataField = 'VALORMULTA'
      DataSource = FrmClientes.uniDSClientesOperacoes
      Enabled = False
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 498
      Top = 100
      Width = 80
      Height = 27
      DataField = 'PERC_JUROS'
      DataSource = FrmClientes.uniDSClientesOperacoes
      Enabled = False
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 581
      Top = 100
      Width = 79
      Height = 27
      DataField = 'VALORJURO'
      DataSource = FrmClientes.uniDSClientesOperacoes
      Enabled = False
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 216
      Top = 156
      Width = 196
      Height = 27
      DataField = 'VALORRECEBIDO'
      DataSource = FrmClientes.uniDSClientesOperacoes
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 16
      Top = 156
      Width = 197
      Height = 27
      DataField = 'VALORDIVIDA'
      DataSource = FrmClientes.uniDSClientesOperacoes
      Enabled = False
      TabOrder = 10
    end
    object MaskEdit1: TMaskEdit
      Left = 415
      Top = 156
      Width = 157
      Height = 27
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 9
      Text = '  /  /    '
    end
  end
  object QSituacao: TFDQuery
    Connection = frmDataModule.UniConnection1
    Left = 248
    Top = 40
  end
  object dsSituacao: TDataSource
    DataSet = QSituacao
    Left = 288
    Top = 40
  end
end
