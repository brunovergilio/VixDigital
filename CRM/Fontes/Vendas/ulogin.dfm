object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 430
  ClientWidth = 370
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Roboto'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 15
  object Label3: TLabel
    Left = 8
    Top = 151
    Width = 124
    Height = 18
    Caption = 'Nome do Usu'#225'rio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -15
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 89
    Top = 72
    Width = 197
    Height = 35
    Caption = 'Click Cob 2020'
    Font.Charset = ANSI_CHARSET
    Font.Color = 13273922
    Font.Height = -29
    Font.Name = 'Roboto'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 234
    Width = 47
    Height = 18
    Caption = 'Senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -15
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object btnlogin: TRzToolButton
    AlignWithMargins = True
    Left = 241
    Top = 335
    Width = 120
    Height = 40
    Cursor = crHandPoint
    Margins.Left = 2
    Margins.Right = 2
    Margins.Bottom = 2
    GradientColorStyle = gcsSystem
    Flat = False
    ShowCaption = True
    Spacing = 0
    Transparent = False
    UseToolbarButtonLayout = False
    UseToolbarButtonSize = False
    UseToolbarShowCaption = False
    UseToolbarVisualStyle = False
    VisualStyle = vsWinXP
    Caption = 'Login'
    Color = 13273922
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    OnClick = btnloginClick
  end
  object Panel2: TPanel
    Left = 0
    Top = 405
    Width = 370
    Height = 25
    Align = alBottom
    BevelOuter = bvNone
    Color = 13273922
    ParentBackground = False
    TabOrder = 0
    object Label2: TLabel
      AlignWithMargins = True
      Left = 10
      Top = 3
      Width = 174
      Height = 19
      Margins.Left = 10
      Align = alLeft
      Alignment = taCenter
      Caption = '(C) Powered by Click Solu'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 15
    end
    object Label5: TLabel
      AlignWithMargins = True
      Left = 281
      Top = 3
      Width = 79
      Height = 19
      Margins.Right = 10
      Align = alRight
      Alignment = taCenter
      Caption = 'Build 2019.0.1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Roboto'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 15
    end
  end
  object ComboUsuario: TCurvyCombo
    Left = 8
    Top = 172
    Width = 353
    Height = 30
    TabOrder = 1
    TabStop = False
    Version = '1.2.1.2'
    CharCase = ecUpperCase
    Controls = <>
    ImeName = ''
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    Sorted = False
    Text = ''
    OnKeyDown = ComboUsuarioKeyDown
  end
  object edtsenha: TCurvyEdit
    Left = 8
    Top = 255
    Width = 353
    Height = 30
    TabOrder = 2
    TabStop = False
    Version = '1.2.1.2'
    Controls = <>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Roboto'
    Font.Style = []
    ImeName = ''
    ParentFont = False
    PasswordChar = '*'
    Text = ''
    OnKeyDown = edtSenhaKeyDown
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 370
    Height = 9
    Align = alTop
    BevelOuter = bvNone
    Color = 13273922
    ParentBackground = False
    TabOrder = 3
  end
  object uniscript: TFDQuery
    Connection = frmDataModule.UniConnection1
    Left = 88
    Top = 8
  end
  object UniQuery1: TFDQuery
    Encryption.Fields = 'SENHA'
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      
        'select blacklist.banco, blacklist.cliente, clientes.nome, blackl' +
        'ist.telefone, blacklist.datavalidade as DATA_VALIDADE, blacklist' +
        '.data_cad AS DATA_CADASTRO,'
      
        '       blacklist.motivo_exclusao_telefone_cod as Cod_Motivo, mot' +
        'ivo_exclusao_telefone.descricao Desc_Motivo'
      
        'from  (blacklist inner join clientes on blacklist.cliente = clie' +
        'ntes.codigo)'
      '       inner join motivo_exclusao_telefone'
      
        '       on motivo_exclusao_telefone.codigo =  blacklist.motivo_ex' +
        'clusao_telefone_cod')
    Options.RequiredFields = False
    Left = 21
    Top = 8
    object uniscriptCODIGO: TFloatField
      FieldName = 'CODIGO'
    end
    object uniscriptTITULO: TStringField
      FieldName = 'TITULO'
      Size = 100
    end
    object uniscriptAVISO: TBlobField
      FieldName = 'AVISO'
      BlobType = ftOraBlob
    end
    object uniscriptDATA: TSQLTimeStampField
      FieldName = 'DATA'
    end
    object uniscriptUSUARIO: TFloatField
      FieldName = 'USUARIO'
    end
    object uniscriptDTA_AGENDA: TSQLTimeStampField
      FieldName = 'DTA_AGENDA'
    end
    object uniscriptAGENDAR_AVISO: TStringField
      FieldName = 'AGENDAR_AVISO'
      Size = 10
    end
  end
end
