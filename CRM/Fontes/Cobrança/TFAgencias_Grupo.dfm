object FAgencias_Grupo: TFAgencias_Grupo
  Left = 560
  Top = 155
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Manutenção de Grupos de Agências'
  ClientHeight = 495
  ClientWidth = 459
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 84
    Top = 221
    Width = 48
    Height = 13
    Caption = 'Descrição'
  end
  object SpeedButton7: TSpeedButton
    Left = 383
    Top = 454
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
    OnClick = SpeedButton7Click
  end
  object Label2: TLabel
    Left = 12
    Top = 221
    Width = 33
    Height = 13
    Caption = 'Código'
  end
  object Label3: TLabel
    Left = 3
    Top = 322
    Width = 91
    Height = 13
    Caption = 'Agências do Grupo'
  end
  object Bevel1: TBevel
    Left = 0
    Top = 312
    Width = 457
    Height = 5
  end
  object BtnAgencias: TSpeedButton
    Left = 323
    Top = 338
    Width = 134
    Height = 28
    Caption = 'Incluir/Alterar Ag de Grupo'
    OnClick = BtnAgenciasClick
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 451
    Height = 219
    Color = clWhite
    DataSource = DsQAgencias_Grupo
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'Código'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Descrição'
        Width = 350
        Visible = True
      end>
  end
  object DBNavClassificacoes: TDBNavigator
    Left = 15
    Top = 265
    Width = 344
    Height = 39
    DataSource = DsQAgencias_Grupo
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    Flat = True
    Hints.Strings = (
      'Posiciona no primeiro registro'
      'Retorna no registro anterior'
      'Avança para o proximo registro'
      'Posiciona no último registro'
      'Inclui novo registro'
      'Apaga o registro atual'
      'Edita o registro atual'
      'Grava o registro atual'
      'Cancela alterações')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object DBEdit1: TDBEdit
    Left = 84
    Top = 235
    Width = 363
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = DsQAgencias_Grupo
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 12
    Top = 235
    Width = 68
    Height = 21
    TabStop = False
    CharCase = ecLowerCase
    DataField = 'CODIGO'
    DataSource = DsQAgencias_Grupo
    TabOrder = 0
  end
  object GridAgencias: TDBGrid
    Left = 0
    Top = 339
    Width = 324
    Height = 155
    DataSource = dsQAgencias
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DsQAgencias_Grupo: TDataSource
    DataSet = QAgencias_Grupo
    Left = 408
    Top = 197
  end
  object QAgencias_Grupo: TpFIBDataSet
    UpdateSQL.Strings = (
      'update AGENCIAS_GRUPO'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CODIGO = :OLD_CODIGO')
    DeleteSQL.Strings = (
      'delete from AGENCIAS_GRUPO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into AGENCIAS_GRUPO'
      '  (CODIGO, NOME)'
      'values'
      '  (:CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select'
      '  CODIGO,'
      '  NOME'
      'from AGENCIAS_GRUPO '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT'
      '  CODIGO, '
      '  NOME'
      'FROM'
      '  AGENCIAS_GRUPO'
      'ORDER BY'
      '  NOME')
    AfterScroll = QAgencias_GrupoAfterScroll
    OnNewRecord = QAgencias_GrupoNewRecord
    Transaction = dm.FIBTransaction
    Database = dm.FIBCobranca
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 380
    Top = 196
    oDontAutoClose = True
    object QAgencias_GrupoCODIGO: TFIBIntegerField
      FieldName = 'CODIGO'

      Required = True
    end
    object QAgencias_GrupoNOME: TFIBStringField
      FieldName = 'NOME'

      Required = True
      Size = 30
      EmptyStrToNull = True
    end
  end
  object QAgencias: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT NOME'
      '       ,PREFIXO'
      '  FROM AGENCIAS'
      ' WHERE AGENCIA_GRUPO = :AAGENCIA_GRUPO'
      ' ORDER BY PREFIXO, NOME')
    Transaction = dm.FIBTransaction
    Database = dm.FIBCobranca
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 394
    Top = 308
    object QAgenciasNOME: TFIBStringField
      FieldName = 'NOME'
      Size = 25
      EmptyStrToNull = True
    end
    object QAgenciasPREFIXO: TFIBStringField
      FieldName = 'PREFIXO'
      Size = 10
      EmptyStrToNull = True
    end
  end
  object dsQAgencias: TDataSource
    DataSet = QAgencias
    Left = 425
    Top = 309
  end
  object PopupAgencias: TPopupMenu
    Left = 392
    Top = 376
    object IncluirAgnciasaoGrupo1: TMenuItem
      Caption = 'Incluir Agências sem grupo neste Grupo'
      OnClick = IncluirAgnciasaoGrupo1Click
    end
    object IncluirAgnciascomgruponesteGrupo1: TMenuItem
      Caption = 'Mover Agências com grupo para este Grupo'
      OnClick = IncluirAgnciascomgruponesteGrupo1Click
    end
  end
end
