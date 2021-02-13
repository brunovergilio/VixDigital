object FCadastroBasico: TFCadastroBasico
  Left = 945
  Top = 207
  ClientHeight = 392
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 347
    Width = 505
    Height = 45
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitTop = 348
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 505
      Height = 2
      Align = alTop
    end
    object Btn_Sair: TSpeedButton
      Left = 436
      Top = 5
      Width = 74
      Height = 39
      Hint = 'Sair'
      Caption = '&Sair'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFF333333333333000333333333
        3333888FFF3FFFFF33330F000300000333338F888F888883F333000900FFFFF0
        3333888F883333F8F33300090FFFF0003333888F8F3338883F3300090FFFFFFF
        0333888F8F3333FF8FFF00090FFFF0000003888F8F333888888300090FFFFFFF
        FFF0888F8F33FFFFFFF800090FF000000003888F8FF888888883000000FFF033
        33338888883FF833333333333300033333333333338883333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = Btn_SairClick
    end
    object DBNav: TDBNavigator
      Left = 12
      Top = 5
      Width = 416
      Height = 39
      DataSource = dsQCadastro
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
      Flat = True
      Hints.Strings = (
        'Posiciona no primeiro registro'
        'Retorna no registro anterior'
        'Avan'#231'a para o proximo registro'
        'Posiciona no '#250'ltimo registro'
        'Inclui novo registro'
        'Apaga o registro atual'
        'Edita o registro atual'
        'Grava o registro atual'
        'Cancela altera'#231#245'es')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  object PanelCampos: TPanel
    Left = 0
    Top = 162
    Width = 505
    Height = 185
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 163
    object Bevel2: TBevel
      Left = 0
      Top = 0
      Width = 505
      Height = 2
      Align = alTop
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 505
    Height = 162
    Align = alClient
    BorderStyle = bsNone
    Color = clInfoBk
    DataSource = dsQCadastro
    Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object dsQCadastro: TDataSource
    Left = 448
    Top = 172
  end
end
