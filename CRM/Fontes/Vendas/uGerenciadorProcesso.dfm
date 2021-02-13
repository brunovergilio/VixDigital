object FGerenciadorProcesso: TFGerenciadorProcesso
  Left = 190
  Top = 194
  Width = 696
  Height = 480
  Caption = 'Gerenciador de Processos Jur�dicos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 54
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Shape1: TShape
      Left = 0
      Top = 53
      Width = 688
      Height = 1
      Align = alBottom
      Brush.Style = bsClear
      Pen.Color = clGray
    end
    object Btn_Filtrar: TSpeedButton
      Left = 2
      Top = 2
      Width = 25
      Height = 24
      Hint = 'Filtrar Dados'
      Flat = True
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFF00
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF00FB00FFFFFFFFFFFFFFFFFFFF000000
        0000FB00FFFFFFFFFFFFFFFFFF0000FBFBFBFBFB00FFFFFFFFFFFFFFFFFFFF00
        FBFB0000000000FFFFFFFFFFFFFFFF00FBFBFB00FFFFFFFFFFFFFF0000000000
        00FBFBFB00FFFFFFFFFFFF00FBFBFBFBFBFBFBFBFB0000FFFFFFFFFF00FBFBFB
        FBFB0000000000FFFFFFFFFF00FBFBFBFBFBFB00FFFFFFFFFFFFFFFFFF0000FB
        FBFBFBFB00FFFFFFFFFFFFFFFF0000FBFBFBFBFBFB0000FFFFFFFFFFFFFFFF00
        FBFBFBFBFBFBFB00FFFFFFFFFFFFFF00000000000000000000FF}
      ParentShowHint = False
      ShowHint = True
      OnClick = Btn_FiltrarClick
    end
    object LbTotal_Processos: TLabel
      Left = 160
      Top = 3
      Width = 16
      Height = 13
      Caption = 'NR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object LbTotal_Ajuizado: TLabel
      Left = 314
      Top = 3
      Width = 78
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Valor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object LbTotal_Estimado: TLabel
      Left = 314
      Top = 17
      Width = 78
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Valor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object LbTotal_Clientes: TLabel
      Left = 160
      Top = 17
      Width = 16
      Height = 13
      Caption = 'NR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 72
      Top = 3
      Width = 82
      Height = 13
      Caption = 'N� de Processos:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 72
      Top = 17
      Width = 67
      Height = 13
      Caption = 'N�de Clientes:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 223
      Top = 3
      Width = 88
      Height = 13
      Caption = 'Vlr. Total Ajuizado:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 223
      Top = 17
      Width = 91
      Height = 13
      Caption = 'Vlr. Total Estimado:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object BtnExportaExcel: TSpeedButton
      Left = 2
      Top = 26
      Width = 25
      Height = 24
      Hint = 
        'Exporta todos os dados ( ou apenas os selecionados ) da grade pa' +
        'ra o Excel.'
      Flat = True
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000012000000120000000100
        040000000000D800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888000000822222222222222228000000822222222222222228000000822F
        FFFFFFFFFFF228000000822FFFFFFF22222228000000822F2222222F22222800
        0000822F222222F222F228000000822F22222F2222F228000000822FF222F222
        22F228000000822FFF2F2222FFF228000000822FF2F222222FF228000000822F
        2F22222222F228000000822F22222F2222F228000000822F2222FFF222F22800
        0000822FFFFFFFFFFFF228000000822222222222222228000000822222222222
        222228000000888888888888888888000000}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnExportaExcelClick
    end
    object BtnExcelBordero: TSpeedButton
      Left = 27
      Top = 26
      Width = 25
      Height = 24
      Hint = 'Gera Excel - Border�'
      Flat = True
      Glyph.Data = {
        4E010000424D4E01000000000000760000002800000012000000120000000100
        040000000000D800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888000000822222222222222228000000822222222222222228000000822F
        FFFFFFFFFFF228000000822FFFFFFF22222228000000822F2222222F22222800
        0000822F222222F222F228000000822F22222F2222F228000000822FF222F222
        22F228000000822FFF2F2222FFF228000000822FF2F222222FF228000000822F
        2F22222222F228000000822F22222F2222F228000000822F2222FFF222F22800
        0000822FFFFFFFFFFFF228000000822222222222222228000000822222222222
        222228000000888888888888888888000000}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnExcelBorderoClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 396
    Width = 688
    Height = 57
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Shape2: TShape
      Left = 0
      Top = 0
      Width = 688
      Height = 1
      Align = alTop
      Brush.Style = bsClear
      Pen.Color = clGray
    end
    object SpeedButton1: TSpeedButton
      Left = 93
      Top = 1
      Width = 52
      Height = 56
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
      Layout = blGlyphTop
      NumGlyphs = 2
      OnClick = SpeedButton1Click
    end
    object Btn_Clientes: TSpeedButton
      Left = 0
      Top = 1
      Width = 93
      Height = 56
      Hint = 'Ver detalhes da Opera��o'
      Caption = 'Clientes / D�vidas'
      Flat = True
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000BDBDBD00BDBDBD0000000000BDBDBD00BDBD
        BD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000BDBDBD00BDBDBD00BDBDBD0000000000BDBDBD00BDBDBD00BDBDBD000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000BDBDBD0000FFFF00BDBDBD0000FFFF00BDBD
        BD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000BDBDBD0000FFFF0000FFFF00BDBDBD0000FFFF0000FFFF00BDBDBD000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000BDBDBD0000FFFF00BDBDBD0000FFFF00BDBD
        BD0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000BDBDBD0000FFFF0000FFFF00BDBDBD0000FFFF0000FFFF00BDBDBD000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000BDBDBD0000FFFF00BDBDBD0000FFFF00BDBD
        BD00000000000000000000000000000000000000000000000000000000000000
        0000BDBDBD0000FFFF0000FFFF00BDBDBD0000FFFF0000FFFF00BDBDBD000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000BDBDBD0000FFFF00BDBDBD0000FFFF00BDBD
        BD0000000000BDBDBD007B7B7B00BDBDBD007B7B7B00BDBDBD007B7B7B000000
        0000BDBDBD0000FFFF0000FFFF00BDBDBD0000FFFF0000FFFF00BDBDBD000000
        00007B7B7B00BDBDBD007B7B7B00BDBDBD007B7B7B0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000BDBDBD0000FFFF00BDBDBD0000FFFF00BDBD
        BD0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
        0000BDBDBD0000FFFF0000FFFF00BDBDBD0000FFFF0000FFFF00BDBDBD000000
        0000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000BDBDBD0000FFFF00BDBDBD0000FFFF00BDBD
        BD0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
        0000BDBDBD0000FFFF0000FFFF00BDBDBD0000FFFF0000FFFF00BDBDBD000000
        0000BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B0000000000FF00FF000000
        0000000000000000000000000000BDBDBD0000FFFF00BDBDBD0000FFFF00BDBD
        BD00000000000000000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
        0000BDBDBD0000FFFF0000FFFF00BDBDBD0000FFFF0000FFFF00BDBDBD000000
        0000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF000000
        0000BDBDBD0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
        FF0000FFFF0000FFFF000000000000000000BDBDBD00BDBDBD00000000000000
        0000BDBDBD0000FFFF0000FFFF00BDBDBD0000FFFF0000FFFF00BDBDBD000000
        000000000000BDBDBD00BDBDBD00BDBDBD007B7B7B0000000000000000000000
        00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
        FF0000FFFF0000FFFF0000000000000000000000000000000000BDBDBD00BDBD
        BD00BDBDBD0000FFFF0000FFFF00BDBDBD0000FFFF0000FFFF00BDBDBD00BDBD
        BD000000000000000000BDBDBD00BDBDBD00BDBDBD00000000000000000000FF
        FF00BDBDBD00BDBDBD0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
        FF0000FFFF00BDBDBD00BDBDBD0000FFFF000000000000000000BDBDBD0000FF
        FF00BDBDBD0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00BDBDBD0000FF
        FF00BDBDBD0000000000BDBDBD00BDBDBD007B7B7B000000000000000000BDBD
        BD0000FFFF00BDBDBD0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
        FF0000FFFF00BDBDBD0000FFFF00BDBDBD000000000000000000BDBDBD0000FF
        FF00BDBDBD0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00BDBDBD0000FF
        FF00BDBDBD0000000000BDBDBD00BDBDBD00BDBDBD000000000000000000BDBD
        BD0000FFFF00BDBDBD0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
        FF0000FFFF00BDBDBD0000FFFF00BDBDBD000000000000000000BDBDBD0000FF
        FF00BDBDBD0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00BDBDBD0000FF
        FF00BDBDBD0000000000BDBDBD00BDBDBD007B7B7B000000000000000000BDBD
        BD0000FFFF00BDBDBD00BDBDBD0000FFFF0000FFFF0000FFFF0000FFFF0000FF
        FF00BDBDBD00BDBDBD0000FFFF00BDBDBD000000000000000000BDBDBD0000FF
        FF00BDBDBD0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00BDBDBD0000FF
        FF00BDBDBD0000000000BDBDBD00BDBDBD00BDBDBD0000000000FF00FF000000
        000000FFFF0000FFFF00BDBDBD0000FFFF0000FFFF0000FFFF0000FFFF0000FF
        FF00BDBDBD0000FFFF0000FFFF0000000000BDBDBD0000000000BDBDBD0000FF
        FF00BDBDBD0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00BDBDBD0000FF
        FF00BDBDBD0000000000BDBDBD00BDBDBD007B7B7B0000000000FF00FF000000
        0000BDBDBD0000FFFF00BDBDBD0000FFFF0000FFFF0000FFFF0000FFFF0000FF
        FF00BDBDBD0000FFFF00BDBDBD0000000000BDBDBD0000000000BDBDBD0000FF
        FF00BDBDBD0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00BDBDBD0000FF
        FF00BDBDBD0000000000BDBDBD00BDBDBD00BDBDBD0000000000FF00FF000000
        0000BDBDBD0000FFFF00BDBDBD0000FFFF0000FFFF0000FFFF0000FFFF0000FF
        FF00BDBDBD0000FFFF00BDBDBD0000000000BDBDBD0000000000BDBDBD0000FF
        FF00BDBDBD0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00BDBDBD0000FF
        FF00BDBDBD0000000000BDBDBD00BDBDBD007B7B7B0000000000FF00FF00FF00
        FF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
        FF0000FFFF0000FFFF0000000000BDBDBD00BDBDBD00BDBDBD000000000000FF
        FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
        FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00
        FF00FF00FF0000000000BDBDBD00BDBDBD00BDBDBD0000FFFF00BDBDBD00BDBD
        BD00BDBDBD0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD000000
        0000BDBDBD00BDBDBD00BDBDBD0000FFFF00BDBDBD00BDBDBD00BDBDBD000000
        0000BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B0000000000FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000BDBDBD00BDBDBD00BDBDBD000000
        000000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
        BD000000000000000000BDBDBD00BDBDBD00BDBDBD000000000000000000BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000BDBDBD0000FFFF00BDBDBD000000
        0000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
        BD00BDBDBD0000000000BDBDBD0000FFFF00BDBDBD0000000000BDBDBD00BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000BDBDBD0000FFFF0000FFFF0000FFFF00BDBD
        BD0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
        BD0000000000BDBDBD0000FFFF0000FFFF0000FFFF00BDBDBD0000000000BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000BDBDBD0000FFFF0000FFFF0000FFFF00BDBD
        BD0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
        BD0000000000BDBDBD0000FFFF0000FFFF0000FFFF00BDBDBD0000000000BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B0000000000FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000BDBDBD0000FFFF00BDBDBD000000
        0000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
        BD00BDBDBD0000000000BDBDBD0000FFFF00BDBDBD0000000000BDBDBD00BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000BDBDBD00000000000000000000000000BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
        BD00BDBDBD00BDBDBD00000000000000000000000000BDBDBD00BDBDBD00BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD007B7B7B0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00
        FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000BDBDBD007B7B7B00BDBDBD007B7B7B00BDBD
        BD007B7B7B00BDBDBD007B7B7B00BDBDBD007B7B7B0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000BDBDBD00BDBDBD00BDBDBD00BDBD
        BD00BDBDBD00BDBDBD00BDBDBD00BDBDBD0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00}
      Layout = blGlyphTop
      ParentShowHint = False
      ShowHint = True
      OnClick = Btn_ClientesClick
    end
  end
  object DBGridProcesso: TDBGrid
    Left = 0
    Top = 54
    Width = 688
    Height = 342
    Align = alClient
    BorderStyle = bsNone
    DataSource = DMGerenciadorProcesso.dsQProcesso
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGridProcessoDrawColumnCell
    OnDblClick = DBGridProcessoDblClick
    OnKeyDown = DBGridProcessoKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'NRPROCESSO'
        Title.Caption = 'N� Processo'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MCI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Parte Contr�ria'
        Width = 262
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CGC'
        Title.Caption = 'CNPJ'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Title.Caption = 'Endere�o'
        Width = 86
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Title.Caption = 'N�'
        Width = 21
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SETOR'
        Title.Caption = 'Setor'
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Title.Caption = 'Cidade'
        Width = 149
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 21
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONE'
        Title.Caption = 'Fone 1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FAXCEL'
        Title.Caption = 'Fone 2'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FONE_1'
        Title.Caption = 'Fone 3'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FAXCEL_1'
        Title.Caption = 'Fone 4'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'E_MAIL'
        Title.Caption = 'e-mail'
        Width = 148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BANDEJA'
        Title.Caption = 'Bandeja'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PASTA'
        Title.Caption = 'Pasta'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORAJUIZADO'
        Title.Caption = 'Valor Ajuizado'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORESTIMADO'
        Title.Caption = 'Vlr. Estimado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ADVOGADO_CONTRARIO'
        Title.Caption = 'Adv. Contr�rio'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JUIZ'
        Title.Caption = 'Juiz'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATADISTRIBUICAO'
        Title.Caption = 'Dt. Distribui��o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO'
        Title.Caption = 'Situa��o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ADVOGADO_NOME'
        Title.Caption = 'Advogado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRAUJURIS_NOME'
        Title.Caption = 'Grau Jurisdi��o'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JURISDICAO_NOME'
        Title.Caption = 'Jurisdi��o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOCALTRAMITACAO_NOME'
        Title.Caption = 'Local Tramita��o'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROCEDIMENTO_NOME'
        Title.Caption = 'Procedimento'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RISCOPROCESSO_NOME'
        Title.Caption = 'Risco Processo'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPOPROCESSO_NOME'
        Title.Caption = 'Tipo de Processo'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AREAJURIDICA_NOME'
        Title.Caption = '�rea Jur�dica'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE_NOME'
        Title.Caption = 'Unidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ARQUIVO_NOME'
        Title.Caption = 'Arquivo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENCERRAMENTO_NOME'
        Title.Caption = 'Motivo Encerramento'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAENCERRAMENTO'
        Title.Caption = 'Dt. Encerramento'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BORDERO'
        Title.Caption = 'Border�'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MALOTE_INT'
        Title.Caption = 'Malote Int.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PROCEDENCIA_NOME'
        Title.Caption = 'Proced�ncia'
        Width = 163
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATACUSTA'
        Title.Caption = 'Dt. Custa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_CUSTA_NOME'
        Title.Caption = 'Tipo de Custa'
        Width = 137
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORCUSTA'
        Title.Caption = 'Vlr. Custa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Custa'
        Width = 165
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_INICIO_TM'
        Title.Caption = 'Dt. Inicio TM'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_RECOLHIMENTO'
        Title.Caption = 'Dt. Recolhimento'
        Visible = True
      end>
  end
end