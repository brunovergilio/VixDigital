object FFiltroRelClientes: TFFiltroRelClientes
  Left = 405
  Top = 163
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Relatório de Carteira de Clientes'
  ClientHeight = 480
  ClientWidth = 590
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 590
    Height = 439
    ActivePage = Tbfiltros
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    object Tbfiltros: TTabSheet
      Caption = 'Filtros'
      ImageIndex = 1
      object Label1: TLabel
        Left = 3
        Top = 10
        Width = 83
        Height = 13
        Caption = 'Banco / Empresa'
      end
      object Label5: TLabel
        Left = 3
        Top = 108
        Width = 112
        Height = 13
        Caption = 'Cla&ssificação do Cliente'
      end
      object Label17: TLabel
        Left = 3
        Top = 206
        Width = 127
        Height = 13
        Caption = 'Classificação da Operação'
      end
      object Label9: TLabel
        Left = 3
        Top = 305
        Width = 74
        Height = 13
        Caption = 'Tipo de Pessoa'
      end
      object Label4: TLabel
        Left = 6
        Top = 327
        Width = 107
        Height = 13
        Caption = 'Situação da Operação'
      end
      object Btn_Todas_Remessas: TSpeedButton
        Left = 302
        Top = 201
        Width = 139
        Height = 20
        Hint = 'Todas as Remessas'
        GroupIndex = 2
        Down = True
        Caption = 'Todas as Remessas'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = Btn_Todas_RemessasClick
      end
      object Btn_Remessas_Office: TSpeedButton
        Left = 302
        Top = 223
        Width = 139
        Height = 19
        Hint = 'Filtrar Somente Remessas COR699'
        GroupIndex = 2
        Caption = 'Remessas COR699'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = Btn_Todas_RemessasClick
      end
      object Btn_Remessas_ICE: TSpeedButton
        Left = 302
        Top = 243
        Width = 139
        Height = 20
        Hint = 'Filtrar Somente Remessas ICE699'
        GroupIndex = 2
        Caption = 'Remessas ICE699'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -7
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = Btn_Todas_RemessasClick
      end
      object Label11: TLabel
        Left = 449
        Top = 201
        Width = 120
        Height = 13
        Caption = 'Remessas em Específico'
      end
      object SpeedButton1: TSpeedButton
        Left = 449
        Top = 217
        Width = 115
        Height = 22
        Caption = 'Adicionar Remessas'
        Flat = True
        OnClick = SpeedButton1Click
      end
      object Label2: TLabel
        Left = 302
        Top = 108
        Width = 83
        Height = 13
        Caption = 'Cidade do Cliente'
      end
      object Label3: TLabel
        Left = 302
        Top = 328
        Width = 166
        Height = 13
        Caption = 'Data de Recebimento da Remessa'
      end
      object Label12: TLabel
        Left = 399
        Top = 348
        Width = 6
        Height = 13
        Caption = 'à'
      end
      object BtnUFCliente: TSpeedButton
        Left = 304
        Top = 8
        Width = 141
        Height = 22
        Hint = 'Clique Aqui para Adicionar'
        Caption = 'Selecionar UF'
        Flat = True
        ParentShowHint = False
        ShowHint = True
        OnClick = BtnUFClienteClick
      end
      object Look_Banco: TRxDBLookupCombo
        Left = 3
        Top = 26
        Width = 274
        Height = 22
        DropDownCount = 8
        DisplayEmpty = '<< Todos >>'
        LookupField = 'CODIGO'
        LookupDisplay = 'NOME'
        LookupSource = DMRelClientes.dsQBancos
        TabOrder = 1
        OnCloseUp = Look_BancoCloseUp
      end
      object RgClassificacao_Operacao: TRadioGroup
        Left = 147
        Top = 195
        Width = 130
        Height = 30
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Apenas'
          'Exceto')
        TabOrder = 6
      end
      object RgClassificacaoCliente: TRadioGroup
        Left = 147
        Top = 96
        Width = 130
        Height = 30
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Apenas'
          'Exceto')
        TabOrder = 3
      end
      object Look_Classificacao_Cliente: TRxDBLookupCombo
        Left = 3
        Top = 126
        Width = 274
        Height = 22
        Hint = 'Selecione as Calssificações a serem Filtradas'
        DropDownCount = 8
        DisplayEmpty = '<< Todas >>'
        EmptyValue = '0'
        FieldsDelimiter = #0
        LookupField = 'CODIGO'
        LookupDisplay = 'DESCRICAO'
        LookupSource = DMRelClientes.dsQClass_CLientes
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnCloseUp = Look_Classificacao_ClienteCloseUp
      end
      object List_Classificacao: TListBox
        Left = 3
        Top = 148
        Width = 274
        Height = 49
        Hint = 
          'Lista de classificações.'#13#10'Para Remover selecione a classificação' +
          ' e pressione a tecla DEL.'
        Columns = 1
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        Sorted = True
        TabOrder = 5
        OnKeyDown = List_ClassificacaoKeyDown
      end
      object Look_Classificacao_Operacao: TRxDBLookupCombo
        Left = 3
        Top = 226
        Width = 274
        Height = 22
        Hint = 'Selecione as Calssificações a serem Filtradas'
        DropDownCount = 8
        DisplayEmpty = '<< Todas >>'
        EmptyValue = '0'
        FieldsDelimiter = #0
        LookupField = 'CODIGO'
        LookupDisplay = 'DESCRICAO'
        LookupSource = DMRelClientes.dsQClass_Operacoes
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnCloseUp = Look_Classificacao_OperacaoCloseUp
      end
      object List_Classificacao_Operacao: TListBox
        Left = 3
        Top = 248
        Width = 274
        Height = 49
        Hint = 
          'Lista de classificações.'#13#10'Para Remover selecione a classificação' +
          ' e pressione a tecla DEL.'
        Columns = 1
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        Sorted = True
        TabOrder = 8
        OnKeyDown = List_ClassificacaoKeyDown
      end
      object RgBanco: TRadioGroup
        Left = 146
        Top = -5
        Width = 130
        Height = 30
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Apenas'
          'Exceto')
        TabOrder = 0
      end
      object List_banco: TListBox
        Left = 3
        Top = 49
        Width = 274
        Height = 49
        Hint = 
          'Lista de Bancos/Empresas.'#13#10'Para Remover selecione a classificaçã' +
          'o e pressione a tecla DEL.'
        Columns = 1
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        Sorted = True
        TabOrder = 2
        OnKeyDown = List_ClassificacaoKeyDown
      end
      object Combo_Tipo_Pessoa: TComboBox
        Left = 132
        Top = 300
        Width = 145
        Height = 21
        ItemHeight = 13
        TabOrder = 9
        Text = 'Todos'
        Items.Strings = (
          'Todos'
          'Física'
          'Jurídica')
      end
      object CkLst_Situacao: TCheckListBox
        Left = 6
        Top = 341
        Width = 247
        Height = 56
        Hint = 
          'Lista de situação.'#13#10' Todas Desmarcadas = Todas '#13#10'Obs.: Situação ' +
          'L, N, A = O Valor da Dívida,'#13#10'         é a soma do Valor das Par' +
          'celas.(Se houver Parcelas) '
        BorderStyle = bsNone
        Color = clBtnFace
        Columns = 2
        ItemHeight = 13
        Items.Strings = (
          'Em ser           '
          'Liquidada'
          'Devolvida '
          'Retomada       '
          'Negociação       '
          'Liq. por Reneg.  '
          'Acordo quebrado  '
          'Reneg. em atraso')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
      end
      object List_Remessas: TListBox
        Left = 449
        Top = 240
        Width = 115
        Height = 62
        Hint = 
          'Lista de Remesas.'#13#10'Para Remover selecione a situação e pressione' +
          ' a tecla DEL.'
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        Sorted = True
        TabOrder = 16
        OnKeyDown = List_ClassificacaoKeyDown
      end
      object Look_Codade: TRxDBLookupCombo
        Left = 302
        Top = 126
        Width = 274
        Height = 22
        DropDownCount = 8
        DisplayEmpty = '<< Todas >>'
        LookupField = 'CIDADE'
        LookupDisplay = 'CIDADE'
        LookupSource = DMRelClientes.dsQCidades
        TabOrder = 14
        OnCloseUp = Look_CodadeCloseUp
      end
      object RgCidadeCliente: TRadioGroup
        Left = 446
        Top = 96
        Width = 130
        Height = 30
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Apenas'
          'Exceto')
        TabOrder = 13
      end
      object ListCidade: TListBox
        Left = 302
        Top = 148
        Width = 274
        Height = 49
        Hint = 
          'Lista de Cidades.'#13#10'Para Remover selecione a classificação e pres' +
          'sione a tecla DEL.'
        Columns = 1
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        Sorted = True
        TabOrder = 15
        OnKeyDown = List_ClassificacaoKeyDown
      end
      object Dt_Inicio: TDateEdit
        Left = 302
        Top = 344
        Width = 90
        Height = 21
        NumGlyphs = 2
        YearDigits = dyFour
        TabOrder = 17
      end
      object Dt_Fim: TDateEdit
        Left = 413
        Top = 344
        Width = 90
        Height = 21
        NumGlyphs = 2
        YearDigits = dyFour
        TabOrder = 18
      end
      object RgUFCliente: TRadioGroup
        Left = 446
        Top = 2
        Width = 130
        Height = 30
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Apenas'
          'Exceto')
        TabOrder = 11
      end
      object ListUFCliente: TListBox
        Left = 303
        Top = 33
        Width = 272
        Height = 65
        Hint = 
          'Lista de UF. '#13#10'Para Remover selecione o UF e pressione a tecla D' +
          'EL.'
        Columns = 6
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        Sorted = True
        TabOrder = 12
        OnKeyDown = List_ClassificacaoKeyDown
      end
    end
    object tbOpcoes: TTabSheet
      Caption = 'Opções'
      ImageIndex = 1
      object Label6: TLabel
        Left = 5
        Top = 230
        Width = 113
        Height = 13
        Caption = 'Ordenar o Relatório por '
      end
      object Label7: TLabel
        Left = 5
        Top = 92
        Width = 128
        Height = 13
        Caption = 'Tipo de Valor da Operação'
      end
      object Bevel4: TBevel
        Left = 4
        Top = 109
        Width = 300
        Height = 114
      end
      object Label8: TLabel
        Left = 5
        Top = 10
        Width = 95
        Height = 13
        Caption = 'Modelo do Relatório'
      end
      object Lb_Filtro_Valor: TLabel
        Left = 143
        Top = 111
        Width = 118
        Height = 13
        Caption = 'Intervalo de Valor Dívida'
      end
      object Label10: TLabel
        Left = 197
        Top = 129
        Width = 6
        Height = 13
        Caption = 'à'
      end
      object CbOrdem: TComboBox
        Left = 5
        Top = 246
        Width = 289
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 8
        Items.Strings = (
          'Nome do Cliente - Crescente'
          'Nome do Cliente - Decrescente'
          'Valor da Operação - Crescente'
          'Valor da Operação - Decrescente')
      end
      object RbValorDivida: TRadioButton
        Left = 8
        Top = 112
        Width = 92
        Height = 17
        Caption = 'Valor Dívida'
        Checked = True
        TabOrder = 1
        TabStop = True
        OnClick = RbValorDividaClick
      end
      object RbValorVencido: TRadioButton
        Left = 8
        Top = 141
        Width = 93
        Height = 17
        Caption = 'Valor Vencido'
        TabOrder = 2
        OnClick = RbValorDividaClick
      end
      object RbValorNominal: TRadioButton
        Left = 8
        Top = 172
        Width = 92
        Height = 17
        Caption = 'Valor Nominal'
        TabOrder = 3
        OnClick = RbValorDividaClick
      end
      object Panel1: TPanel
        Left = 4
        Top = 25
        Width = 300
        Height = 62
        BevelOuter = bvLowered
        TabOrder = 0
        object RbModeloAnalitico: TRadioButton
          Left = 3
          Top = 6
          Width = 113
          Height = 14
          Caption = 'Analítico'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = RbModeloAnaliticoClick
        end
        object RbModeloSintetico: TRadioButton
          Left = 171
          Top = 6
          Width = 113
          Height = 17
          Caption = 'Sintético 1'
          TabOrder = 3
          OnClick = RbModeloAnaliticoClick
        end
        object RbModeloCarteira: TRadioButton
          Left = 3
          Top = 24
          Width = 113
          Height = 17
          Caption = 'Carteira Completa'
          TabOrder = 1
          OnClick = RbModeloAnaliticoClick
        end
        object RbModeloSintetico2: TRadioButton
          Left = 171
          Top = 24
          Width = 113
          Height = 17
          Caption = 'Sintético 2'
          TabOrder = 4
          OnClick = RbModeloAnaliticoClick
        end
        object RbModeloSPC: TRadioButton
          Left = 3
          Top = 42
          Width = 86
          Height = 17
          Caption = 'Carteira - SPC'
          TabOrder = 2
          OnClick = RbModeloAnaliticoClick
        end
        object RbModeloSintetico3: TRadioButton
          Left = 171
          Top = 42
          Width = 113
          Height = 17
          Caption = 'Sintetico 3'
          TabOrder = 5
          OnClick = RbModeloSintetico3Click
        end
      end
      object RbValorAtualizado: TRadioButton
        Left = 8
        Top = 202
        Width = 168
        Height = 17
        Hint = 'Cálculo do Valor da Dívida + Juros Simples'
        Caption = 'Valor da Dívida Atualizado até:'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = RbValorAtualizadoClick
      end
      object EdtdAtualizacao: TDateEdit
        Left = 211
        Top = 200
        Width = 90
        Height = 21
        DialogTitle = 'Data de Atualização'
        NumGlyphs = 2
        StartOfWeek = Sun
        YearDigits = dyFour
        TabOrder = 7
      end
      object Ck_Observacoes: TCheckBox
        Left = 5
        Top = 271
        Width = 265
        Height = 17
        Caption = 'Exibir Observações do Cliente no modelo Sintético'
        TabOrder = 9
      end
      object Edt_Vlr_Inicial: TCurrencyEdit
        Left = 100
        Top = 125
        Width = 90
        Height = 21
        AutoSize = False
        TabOrder = 5
      end
      object Edt_Vlr_Final: TCurrencyEdit
        Left = 211
        Top = 125
        Width = 90
        Height = 21
        AutoSize = False
        TabOrder = 6
      end
      object Ck_Ultimo_Evento: TCheckBox
        Left = 5
        Top = 302
        Width = 148
        Height = 17
        Caption = 'Somente último Evento'
        TabOrder = 11
      end
      object Ck_Endereco: TCheckBox
        Left = 5
        Top = 287
        Width = 265
        Height = 17
        Caption = 'Exibir Endereço do Cliente no modelo Sintético'
        TabOrder = 10
      end
      object Ck_Situacao: TCheckBox
        Left = 5
        Top = 317
        Width = 244
        Height = 17
        Caption = 'Resumo das Operações em Carteira (Situação)'
        TabOrder = 12
      end
      object Panel_Clientes: TPanel
        Left = 320
        Top = 10
        Width = 245
        Height = 134
        TabOrder = 13
        object Label13: TLabel
          Left = 18
          Top = 9
          Width = 121
          Height = 13
          Caption = 'Clientes (branco = Todos)'
        end
        object Btn_Busca_Cliente: TSpeedButton
          Left = 156
          Top = 4
          Width = 77
          Height = 22
          Hint = 'Procura Clientes <Ctrl + F>'
          Caption = '&Buscar Cli.'
          Glyph.Data = {
            66010000424D660100000000000076000000280000001E0000000F0000000100
            040000000000F000000000000000000000001000000010000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0055555555FFFF
            FFF5555555577777770055555550BFBFBFB55555557755555700555555010FFF
            FFF555555775555557005555550180BFBFB5555557557555570055555501180F
            FFF55555575577555700555550811190BFB55555775557555700555550771999
            0FF555557555555557005555077FF99990555557555555557500555077FFFF00
            0555557555555777550055077FFF0055555557555557755555005077FFF05555
            55557555557555555500077FFF0955555557555557755555550007FFF0955555
            5557555577555555550050FF0555555555557557555555555500550055555555
            55555775555555555500}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = Btn_Busca_ClienteClick
        end
        object lbQtdeClientes: TLabel
          Left = 226
          Top = 117
          Width = 8
          Height = 13
          Alignment = taRightJustify
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Lista_Clientes: TListBox
          Left = 3
          Top = 27
          Width = 233
          Height = 87
          Hint = 
            'Lista de Clientes.'#13#10'Para Remover selecione o Cliente e pressione' +
            ' a tecla DEL.'
          ItemHeight = 13
          ParentShowHint = False
          ShowHint = True
          Sorted = True
          TabOrder = 0
          OnKeyDown = Lista_ClientesKeyDown
          OnMouseDown = Lista_ClientesMouseDown
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 439
    Width = 590
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 590
      Height = 2
      Align = alTop
    end
    object Btn_Sair: TBitBtn
      Left = 383
      Top = 10
      Width = 89
      Height = 25
      Caption = '&Sair'
      TabOrder = 0
      OnClick = Btn_SairClick
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
    end
    object Btn_Visualizar: TBitBtn
      Left = 111
      Top = 10
      Width = 89
      Height = 25
      Caption = '&Visualizar'
      TabOrder = 1
      OnClick = Btn_VisualizarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
        0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
        0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
        5555557FFFFF7755555555500000005555555577777775555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
    end
  end
end
