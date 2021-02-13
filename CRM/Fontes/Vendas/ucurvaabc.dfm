object fcurvaabc: Tfcurvaabc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Curva ABC - Devedores'
  ClientHeight = 380
  ClientWidth = 472
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 26
    Top = 24
    Width = 84
    Height = 13
    Caption = 'Banco / Empresa:'
  end
  object RadioGroup1: TRadioGroup
    Left = 26
    Top = 184
    Width = 417
    Height = 105
    Caption = 'N'#250'mero de Clientes:'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      '10 primeiros'
      '100 primeiros'
      '500 primeiros'
      'Sugerido:')
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 321
    Width = 472
    Height = 59
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btnfiltrar: TRzToolButton
      AlignWithMargins = True
      Left = 309
      Top = 3
      Width = 160
      Height = 53
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
      OnClick = btnfiltrarClick
      ExplicitLeft = 471
      ExplicitTop = 535
      ExplicitHeight = 61
    end
  end
  object RzNumericEdit1: TRzNumericEdit
    Left = 336
    Top = 253
    Width = 89
    Height = 21
    TabOrder = 2
    DisplayFormat = '0'
  end
  object JvDBGrid1: TJvDBGrid
    Left = 26
    Top = 43
    Width = 417
    Height = 135
    DataSource = UniDSQClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -21
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end>
  end
  object uniQBancosEmpresas: TFDQuery
    CachedUpdates = True
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from bancos')
    Left = 200
    Top = 72
    object uniQBancosEmpresasCODIGO: TFloatField
      FieldName = 'CODIGO'
      Required = True
    end
    object uniQBancosEmpresasNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object uniQBancosEmpresasCOMISSAOFIXA: TStringField
      FieldName = 'COMISSAOFIXA'
      Size = 30
    end
    object uniQBancosEmpresasCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
    end
    object uniQBancosEmpresasCENTRALIZADORA: TStringField
      FieldName = 'CENTRALIZADORA'
      Size = 60
    end
    object uniQBancosEmpresasCC_TIPO: TStringField
      FieldName = 'CC_TIPO'
      Size = 30
    end
    object uniQBancosEmpresasCE_C1: TFloatField
      FieldName = 'CE_C1'
    end
    object uniQBancosEmpresasCE_C2: TFloatField
      FieldName = 'CE_C2'
    end
    object uniQBancosEmpresasCE_C3: TFloatField
      FieldName = 'CE_C3'
    end
    object uniQBancosEmpresasCE_C4: TFloatField
      FieldName = 'CE_C4'
    end
    object uniQBancosEmpresasCE_C5: TFloatField
      FieldName = 'CE_C5'
    end
    object uniQBancosEmpresasCE_C6: TFloatField
      FieldName = 'CE_C6'
    end
    object uniQBancosEmpresasCE_C7: TFloatField
      FieldName = 'CE_C7'
    end
    object uniQBancosEmpresasCE_C8: TFloatField
      FieldName = 'CE_C8'
    end
    object uniQBancosEmpresasCE_C9: TFloatField
      FieldName = 'CE_C9'
    end
    object uniQBancosEmpresasPREFCONT: TStringField
      FieldName = 'PREFCONT'
      Size = 10
    end
    object uniQBancosEmpresasCONTADOR: TFloatField
      FieldName = 'CONTADOR'
    end
    object uniQBancosEmpresasENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object uniQBancosEmpresasSETOR: TStringField
      FieldName = 'SETOR'
      Size = 30
    end
    object uniQBancosEmpresasNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object uniQBancosEmpresasCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object uniQBancosEmpresasUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object uniQBancosEmpresasCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object uniQBancosEmpresasCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object uniQBancosEmpresasCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object uniQBancosEmpresasMETA_CAIXA: TFloatField
      FieldName = 'META_CAIXA'
    end
    object uniQBancosEmpresasMETA_REGULARIZACAO: TFloatField
      FieldName = 'META_REGULARIZACAO'
    end
    object uniQBancosEmpresasMULTA_PADRAO: TFloatField
      FieldName = 'MULTA_PADRAO'
    end
    object uniQBancosEmpresasJUROS_PADRAO: TFloatField
      FieldName = 'JUROS_PADRAO'
    end
    object uniQBancosEmpresasHONORARIOS_PADRAO: TFloatField
      FieldName = 'HONORARIOS_PADRAO'
    end
    object uniQBancosEmpresasDESCONTO_PADRAO: TFloatField
      FieldName = 'DESCONTO_PADRAO'
    end
    object uniQBancosEmpresasCUSTO_BOLETO_PADRAO: TFloatField
      FieldName = 'CUSTO_BOLETO_PADRAO'
    end
    object uniQBancosEmpresasFATOR_PARC_PADRAO: TFloatField
      FieldName = 'FATOR_PARC_PADRAO'
    end
    object uniQBancosEmpresasVALOR_PROTESTO_PADRAO: TFloatField
      FieldName = 'VALOR_PROTESTO_PADRAO'
    end
    object uniQBancosEmpresasPESO_CAIXA: TFloatField
      FieldName = 'PESO_CAIXA'
    end
    object uniQBancosEmpresasPESO_REGULARIZACAO: TFloatField
      FieldName = 'PESO_REGULARIZACAO'
    end
    object uniQBancosEmpresasINCLUIRDESPESAS: TStringField
      FieldName = 'INCLUIRDESPESAS'
      Size = 5
    end
    object uniQBancosEmpresasRETENCAO: TFloatField
      FieldName = 'RETENCAO'
    end
    object uniQBancosEmpresasDT_CONTRATO: TSQLTimeStampField
      FieldName = 'DT_CONTRATO'
    end
    object uniQBancosEmpresasUSA_TAB_ATUALIZACAO: TStringField
      FieldName = 'USA_TAB_ATUALIZACAO'
      Size = 30
    end
    object uniQBancosEmpresasREPRESENTANTE: TStringField
      FieldName = 'REPRESENTANTE'
      Size = 40
    end
    object uniQBancosEmpresasREP_ENDERECO: TStringField
      FieldName = 'REP_ENDERECO'
      Size = 50
    end
    object uniQBancosEmpresasREP_SETOR: TStringField
      FieldName = 'REP_SETOR'
      Size = 30
    end
    object uniQBancosEmpresasREP_CIDADE: TStringField
      FieldName = 'REP_CIDADE'
      Size = 30
    end
    object uniQBancosEmpresasREP_UF: TStringField
      FieldName = 'REP_UF'
      Size = 2
    end
    object uniQBancosEmpresasREP_CEP: TStringField
      FieldName = 'REP_CEP'
      Size = 10
    end
    object uniQBancosEmpresasREP_CPF: TStringField
      FieldName = 'REP_CPF'
      Size = 18
    end
    object uniQBancosEmpresasREP_PROFISSAO: TStringField
      FieldName = 'REP_PROFISSAO'
      Size = 30
    end
    object uniQBancosEmpresasREP_CARGO: TStringField
      FieldName = 'REP_CARGO'
      Size = 30
    end
    object uniQBancosEmpresasREP_NACIONALIDADE: TStringField
      FieldName = 'REP_NACIONALIDADE'
      Size = 30
    end
    object uniQBancosEmpresasREP_ESTADOCIVIL: TStringField
      FieldName = 'REP_ESTADOCIVIL'
      Size = 30
    end
    object uniQBancosEmpresasFONE: TStringField
      FieldName = 'FONE'
      Size = 14
    end
    object uniQBancosEmpresasFAX: TStringField
      FieldName = 'FAX'
      Size = 14
    end
    object uniQBancosEmpresasDIAS_COB_HONORARIOS: TFloatField
      FieldName = 'DIAS_COB_HONORARIOS'
    end
    object uniQBancosEmpresasEMAIL1: TStringField
      FieldName = 'EMAIL1'
      Size = 45
    end
    object uniQBancosEmpresasEMAIL2: TStringField
      FieldName = 'EMAIL2'
      Size = 45
    end
    object uniQBancosEmpresasNRCONTRATO: TStringField
      FieldName = 'NRCONTRATO'
      Size = 30
    end
    object uniQBancosEmpresasOBJETOCONTRATUAL: TStringField
      FieldName = 'OBJETOCONTRATUAL'
      Size = 250
    end
    object uniQBancosEmpresasTIPOPROTESTO_PADRAO: TStringField
      FieldName = 'TIPOPROTESTO_PADRAO'
      Size = 30
    end
    object uniQBancosEmpresasDESCONTO_SOBRE_PADRAO: TFloatField
      FieldName = 'DESCONTO_SOBRE_PADRAO'
    end
    object uniQBancosEmpresasGRAVA_VLRDIVIDA_EVENTO: TStringField
      FieldName = 'GRAVA_VLRDIVIDA_EVENTO'
      Size = 30
    end
    object uniQBancosEmpresasGRAVA_NEGOCIACAO_EVENTO: TStringField
      FieldName = 'GRAVA_NEGOCIACAO_EVENTO'
      Size = 30
    end
    object uniQBancosEmpresasCONTADOR_NP: TFloatField
      FieldName = 'CONTADOR_NP'
    end
    object uniQBancosEmpresasENTRADA_PADRAO: TFloatField
      FieldName = 'ENTRADA_PADRAO'
    end
    object uniQBancosEmpresasTIPO_HONORARIO_PADRAO: TStringField
      FieldName = 'TIPO_HONORARIO_PADRAO'
      Size = 15
    end
    object uniQBancosEmpresasTIPO_ATUALIZACAO_DIVIDA: TStringField
      FieldName = 'TIPO_ATUALIZACAO_DIVIDA'
      Size = 30
    end
    object uniQBancosEmpresasTIPO_JUROS_PADRAO: TStringField
      FieldName = 'TIPO_JUROS_PADRAO'
      Size = 30
    end
    object uniQBancosEmpresasMENSAGEM_SMS: TStringField
      FieldName = 'MENSAGEM_SMS'
      Size = 200
    end
    object uniQBancosEmpresasPEDIR_SENHA_DESC: TStringField
      FieldName = 'PEDIR_SENHA_DESC'
      Size = 30
    end
    object uniQBancosEmpresasJUROS_MINIMO: TFloatField
      FieldName = 'JUROS_MINIMO'
    end
    object uniQBancosEmpresasDESCONTO_MAXIMO: TFloatField
      FieldName = 'DESCONTO_MAXIMO'
    end
    object uniQBancosEmpresasVALOR_MINIMO_PARCELA: TFloatField
      FieldName = 'VALOR_MINIMO_PARCELA'
    end
    object uniQBancosEmpresasDIAS_MAXIMO_ENTRADA: TFloatField
      FieldName = 'DIAS_MAXIMO_ENTRADA'
    end
    object uniQBancosEmpresasBOL_CONVENIO_PADRAO: TStringField
      FieldName = 'BOL_CONVENIO_PADRAO'
    end
    object uniQBancosEmpresasFASE_COBRANCA: TStringField
      FieldName = 'FASE_COBRANCA'
      Size = 100
    end
    object uniQBancosEmpresasATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 30
    end
    object uniQBancosEmpresasMULTA_MINIMA: TFloatField
      FieldName = 'MULTA_MINIMA'
    end
    object uniQBancosEmpresasNRPRESTACAO_MAXIMO: TFloatField
      FieldName = 'NRPRESTACAO_MAXIMO'
    end
    object uniQBancosEmpresasTIPO_CALCULO_PADRAO: TFloatField
      FieldName = 'TIPO_CALCULO_PADRAO'
    end
    object uniQBancosEmpresasMOSTRAR_QUEBRA_ACORDO: TStringField
      FieldName = 'MOSTRAR_QUEBRA_ACORDO'
      Size = 30
    end
    object uniQBancosEmpresasTAB_ATU_DIVIDA_PADRAO: TFloatField
      FieldName = 'TAB_ATU_DIVIDA_PADRAO'
    end
    object uniQBancosEmpresasHONORARIO_SOBRE_PADRAO: TFloatField
      FieldName = 'HONORARIO_SOBRE_PADRAO'
    end
    object uniQBancosEmpresasBLOQUEIO_LUPA: TStringField
      FieldName = 'BLOQUEIO_LUPA'
      Size = 30
    end
    object uniQBancosEmpresasBLOQUEIO_NIVEL: TStringField
      FieldName = 'BLOQUEIO_NIVEL'
      Size = 30
    end
    object uniQBancosEmpresasCOMISSAO_TIPOATRASO: TStringField
      FieldName = 'COMISSAO_TIPOATRASO'
      Size = 30
    end
    object uniQBancosEmpresasDATA_MIN_EVENTO: TSQLTimeStampField
      FieldName = 'DATA_MIN_EVENTO'
    end
    object uniQBancosEmpresasJUROS_PARCELA: TFloatField
      FieldName = 'JUROS_PARCELA'
    end
    object uniQBancosEmpresasQUEBRA_ACORDO_DIAS: TFloatField
      FieldName = 'QUEBRA_ACORDO_DIAS'
    end
    object uniQBancosEmpresasQUEBRA_ACORDO_COD_EVENTO: TFloatField
      FieldName = 'QUEBRA_ACORDO_COD_EVENTO'
    end
    object uniQBancosEmpresasLIQUIDADA_COD_EVENTO: TFloatField
      FieldName = 'LIQUIDADA_COD_EVENTO'
    end
    object uniQBancosEmpresasTIPODIVISAOENCARGOS_PADRAO: TStringField
      FieldName = 'TIPODIVISAOENCARGOS_PADRAO'
      Size = 30
    end
    object uniQBancosEmpresasMODELO_RECIBO_PADRAO: TStringField
      FieldName = 'MODELO_RECIBO_PADRAO'
      Size = 81
    end
    object uniQBancosEmpresasBLOQUEIO_END1: TStringField
      FieldName = 'BLOQUEIO_END1'
      Size = 30
    end
    object uniQBancosEmpresasBLOQUEIO_END2: TStringField
      FieldName = 'BLOQUEIO_END2'
      Size = 30
    end
    object uniQBancosEmpresasBLOQUEIO_NIVEL_END1: TStringField
      FieldName = 'BLOQUEIO_NIVEL_END1'
      Size = 30
    end
    object uniQBancosEmpresasBLOQUEIO_NIVEL_END2: TStringField
      FieldName = 'BLOQUEIO_NIVEL_END2'
      Size = 30
    end
    object uniQBancosEmpresasJUROS_MAXIMO: TFloatField
      FieldName = 'JUROS_MAXIMO'
    end
    object uniQBancosEmpresasMULTA_MAXIMO: TFloatField
      FieldName = 'MULTA_MAXIMO'
    end
    object uniQBancosEmpresasBLOQUEIO_DIVIDIR_SEM_JUROS: TStringField
      FieldName = 'BLOQUEIO_DIVIDIR_SEM_JUROS'
      Size = 30
    end
    object uniQBancosEmpresasDIAS_EMCOBRANCA_PADRAO: TFloatField
      FieldName = 'DIAS_EMCOBRANCA_PADRAO'
    end
    object uniQBancosEmpresasNEGATIVACAO_CODIGO: TFloatField
      FieldName = 'NEGATIVACAO_CODIGO'
    end
    object uniQBancosEmpresasTIPO_DESCONTO_PADRAO: TStringField
      FieldName = 'TIPO_DESCONTO_PADRAO'
      Size = 30
    end
    object uniQBancosEmpresasEVENTOS_NRMAXIMO: TFloatField
      FieldName = 'EVENTOS_NRMAXIMO'
    end
    object uniQBancosEmpresasEVENTOS_NRDIASMAXIMO: TFloatField
      FieldName = 'EVENTOS_NRDIASMAXIMO'
    end
    object uniQBancosEmpresasAGRUPAR_HON_COM_PRIMEIRA_PARC: TStringField
      FieldName = 'AGRUPAR_HON_COM_PRIMEIRA_PARC'
      Size = 30
    end
    object uniQBancosEmpresasFORMAPGTO_NEGOCIACAO: TStringField
      FieldName = 'FORMAPGTO_NEGOCIACAO'
      Size = 30
    end
    object uniQBancosEmpresasNEGATIVACAO_SERASA_CODIGO: TFloatField
      FieldName = 'NEGATIVACAO_SERASA_CODIGO'
    end
    object uniQBancosEmpresasBLOQUEIA_TELEFONE_BLACKLIST: TStringField
      FieldName = 'BLOQUEIA_TELEFONE_BLACKLIST'
      Size = 30
    end
    object uniQBancosEmpresasPROTESTO_PRIMEIRA_PARC: TStringField
      FieldName = 'PROTESTO_PRIMEIRA_PARC'
      Size = 30
    end
    object uniQBancosEmpresasCOMISSAO_INTERVALO: TStringField
      FieldName = 'COMISSAO_INTERVALO'
      Size = 30
    end
    object uniQBancosEmpresasJUROS_BOLETO_REGISTRADO: TFloatField
      FieldName = 'JUROS_BOLETO_REGISTRADO'
    end
    object uniQBancosEmpresasMULTA_BOLETO_REGISTRADO: TFloatField
      FieldName = 'MULTA_BOLETO_REGISTRADO'
    end
    object uniQBancosEmpresasDADOS_BANCARIOS: TStringField
      FieldName = 'DADOS_BANCARIOS'
      Size = 255
    end
    object uniQBancosEmpresasDTA_CAD: TSQLTimeStampField
      FieldName = 'DTA_CAD'
    end
    object uniQBancosEmpresasUSR_CAD: TFloatField
      FieldName = 'USR_CAD'
    end
    object uniQBancosEmpresasREBATES_TIPO_INTERVALO: TStringField
      FieldName = 'REBATES_TIPO_INTERVALO'
      Size = 30
    end
    object uniQBancosEmpresasTIPO_MULTA_PADRAO: TStringField
      FieldName = 'TIPO_MULTA_PADRAO'
      Size = 30
    end
    object uniQBancosEmpresasCARTA_BOLETO: TStringField
      FieldName = 'CARTA_BOLETO'
      Size = 2000
    end
    object uniQBancosEmpresasTIPO_HONORARIO_ORIGEM: TStringField
      FieldName = 'TIPO_HONORARIO_ORIGEM'
      Size = 30
    end
    object uniQBancosEmpresasATRIBUI_COBRADOR_ACORDO: TStringField
      FieldName = 'ATRIBUI_COBRADOR_ACORDO'
      Size = 30
    end
    object uniQBancosEmpresasRETORNA_PARCELAS_ACORDO: TStringField
      FieldName = 'RETORNA_PARCELAS_ACORDO'
      Size = 30
    end
    object uniQBancosEmpresasMANTER_PARCELAS_ACORDO: TStringField
      FieldName = 'MANTER_PARCELAS_ACORDO'
      Size = 30
    end
    object uniQBancosEmpresasBLACKLIST_NIVEL_BLOQ_RETORNO: TStringField
      FieldName = 'BLACKLIST_NIVEL_BLOQ_RETORNO'
      Size = 30
    end
    object uniQBancosEmpresasTAXA_ATUALIZACAO: TFloatField
      FieldName = 'TAXA_ATUALIZACAO'
    end
    object uniQBancosEmpresasBOLETO_GERA_NOVO_NUMERO_RECALC: TStringField
      FieldName = 'BOLETO_GERA_NOVO_NUMERO_RECALC'
      Size = 30
    end
    object uniQBancosEmpresasBLOQUEIO_BOLETO_INCOMPLETO: TStringField
      FieldName = 'BLOQUEIO_BOLETO_INCOMPLETO'
      Size = 30
    end
    object uniQBancosEmpresasATU_PARC_ATRASO: TStringField
      FieldName = 'ATU_PARC_ATRASO'
      Size = 30
    end
    object uniQBancosEmpresasATU_PARC_ATRASO_NRDIASMAXIMO: TFloatField
      FieldName = 'ATU_PARC_ATRASO_NRDIASMAXIMO'
    end
    object uniQBancosEmpresasPORTALWEB_PADRAO: TFloatField
      FieldName = 'PORTALWEB_PADRAO'
    end
    object uniQBancosEmpresasEMITIR_UM_BOLETO_POR_VEZ: TStringField
      FieldName = 'EMITIR_UM_BOLETO_POR_VEZ'
      Size = 30
    end
    object uniQBancosEmpresasPERC_JUROS_DIF_POR_PERIODO: TStringField
      FieldName = 'PERC_JUROS_DIF_POR_PERIODO'
      Size = 30
    end
    object uniQBancosEmpresasEXCLUIR_TEL_CAD_CLIENTE_NIVEL: TStringField
      FieldName = 'EXCLUIR_TEL_CAD_CLIENTE_NIVEL'
      Size = 30
    end
    object uniQBancosEmpresasBLOQUEIO_EMISSAO_PARC_VENCIDA: TStringField
      FieldName = 'BLOQUEIO_EMISSAO_PARC_VENCIDA'
      Size = 30
    end
    object uniQBancosEmpresasBLOQUEIO_ATU_BOLETO_EMITIDO: TStringField
      FieldName = 'BLOQUEIO_ATU_BOLETO_EMITIDO'
      Size = 30
    end
    object uniQBancosEmpresasBLOQUEIO_NEGOCIACAO_VENC_PARC: TStringField
      FieldName = 'BLOQUEIO_NEGOCIACAO_VENC_PARC'
      Size = 30
    end
    object uniQBancosEmpresasBLOQUEIO_NEGOCIACAO_VLR_PARC: TStringField
      FieldName = 'BLOQUEIO_NEGOCIACAO_VLR_PARC'
      Size = 30
    end
    object uniQBancosEmpresasNUMERO_PREST_C0NTAS: TFloatField
      FieldName = 'NUMERO_PREST_C0NTAS'
    end
    object uniQBancosEmpresasATU_PARC_ATRASO_BLOQ_ENCARGOS: TStringField
      FieldName = 'ATU_PARC_ATRASO_BLOQ_ENCARGOS'
      Size = 30
    end
    object uniQBancosEmpresasID_1: TStringField
      FieldName = 'ID_1'
    end
    object uniQBancosEmpresasEVENTO_COBRANCA: TStringField
      FieldName = 'EVENTO_COBRANCA'
      Size = 200
    end
  end
  object UniDSQClientes: TDataSource
    DataSet = uniQBancosEmpresas
    Left = 80
    Top = 80
  end
  object frxDBDiario: TfrxDBDataset
    UserName = 'frxDBDiario'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CLIENTE=CLIENTE'
      'VALORDIVIDA=VALORDIVIDA'
      'NOME=NOME'
      'DATAVENCTO=DATAVENCTO'
      'VALORVENCIDO=VALORVENCIDO'
      'CPF_CNPJ=CPF_CNPJ')
    DataSet = uniQClientes
    BCDToCurrency = False
    Left = 122
    Top = 315
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 278
    Top = 11
  end
  object frxReport: TfrxReport
    Version = '6.2.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41869.389758275500000000
    ReportOptions.LastChange = 43767.654099004600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      'end.')
    Left = 410
    Top = 11
    Datasets = <
      item
        DataSet = frxDBClientes
        DataSetName = 'frxDBClientes'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object curva_abc_devedores: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 5.100000000000000000
      RightMargin = 5.100000000000000000
      TopMargin = 5.100000000000000000
      BottomMargin = 5.100000000000000000
      Frame.Typ = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 132.661410000000000000
        Top = 18.897650000000000000
        Width = 755.150094000000000000
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Left = 0.064602000000000000
          Width = 755.020890000000000000
          Height = 128.881880000000000000
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 88.441002000000000000
          Top = 14.415770000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TRIBUNA COBRAN'#199'A E CADASTRO LTDA')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 5.200000000000000000
          Top = 101.379530000000000000
          Width = 740.107050000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO - CURVA ABC DE DEVEDORES')
          ParentFont = False
        end
        object cnpjfone: TfrxMemoView
          AllowVectorExport = True
          Left = 65.575047000000000000
          Top = 57.159060000000000000
          Width = 624.000000000000000000
          Height = 19.200000000000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CNPJ: 01.732.405/0001-87 - Fone 0800336780')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 96.600000000000000000
          Width = 754.060889999998000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object endereco: TfrxMemoView
          AllowVectorExport = True
          Left = 175.975047000000000000
          Top = 36.359060000000000000
          Width = 403.200000000000000000
          Height = 19.200000000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Barbara Heliodora, 1093, Centro - 35010-040 - Governador Valadar' +
              'es - MG')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 20.220470000000000000
        Top = 173.858380000000000000
        Width = 755.150094000000000000
        object Memo13: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 755.150094000000000000
          Height = 20.220470000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 0.755905510000000000
          Top = 2.000000000000000000
          Width = 311.055269450000000000
          Height = 17.280000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftRight]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'NOME')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 409.567112200000000000
          Top = 2.000000000000000000
          Width = 102.047212360000000000
          Height = 17.280000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftRight]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 313.834797010000000000
          Top = 2.000000000000000000
          Width = 94.488225590000000000
          Height = 17.280000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftRight]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'CPF/CNPJ')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 512.362356060000000000
          Top = 2.000000000000000000
          Width = 120.944898980000000000
          Height = 17.280000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftRight]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR D'#205'VIDA')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 635.149774720000000000
          Top = 2.000000000000000000
          Width = 120.944896540000000000
          Height = 17.280000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = [ftRight]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR VENCIDO')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 23.200000000000000000
        Top = 253.228510000000000000
        Width = 755.150094000000000000
        DataSet = frxDBClientes
        DataSetName = 'frxDBClientes'
        RowCount = 0
        object Memo22: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 755.150094000000000000
          Height = 23.200000000000000000
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Frame.Typ = [ftLeft, ftRight]
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 6.755905510000000000
          Top = 1.920000000000000000
          Width = 303.496209450000000000
          Height = 19.200000000000000000
          DataField = 'NOME'
          DataSet = frxDBClientes
          DataSetName = 'frxDBClientes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[frxDBClientes."NOME"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 318.204621890000000000
          Top = 1.920000000000000000
          Width = 90.708676060000000000
          Height = 19.200000000000000000
          DataField = 'CPF'
          DataSet = frxDBDiario
          DataSetName = 'frxDBDiario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDiario."CPF"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 523.803088580000000000
          Top = 1.920000000000000000
          Width = 109.606326060000000000
          Height = 19.200000000000000000
          DataField = 'VALORDIVIDA'
          DataSet = frxDBDiario
          DataSetName = 'frxDBDiario'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDiario."VALORDIVIDA"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 412.323130000000000000
          Top = 1.360940000000000000
          Width = 98.267736060000000000
          Height = 19.200000000000000000
          DataField = 'DATAVENCTO'
          DataSet = frxDBClientes
          DataSetName = 'frxDBClientes'
          DisplayFormat.FormatStr = 'dd.MM.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBClientes."DATAVENCTO"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 1.779530000000000000
          Width = 113.385856060000000000
          Height = 19.200000000000000000
          DataField = 'VALORVENCIDO'
          DataSet = frxDBDiario
          DataSetName = 'frxDBDiario'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDiario."VALORVENCIDO"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 27.840000000000000000
        Top = 362.834880000000000000
        Width = 755.150094000000000000
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBClientes."VALORVENCIDO">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 525.354670000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'courier new'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBClientes."VALORDIVIDA">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 483.779840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'COURIER NEW'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total>>            Quantidade: [COUNT(MasterData1)]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 411.968770000000000000
        Width = 755.150094000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 489.600000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio emitido em [DATE]- [TIME]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 657.179530000000000000
          Top = 1.000000000000000000
          Width = 96.000000000000000000
          Height = 19.200000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Courier New'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'P'#225'g.[PAGE#]')
          ParentFont = False
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 3.779530000000000000
        Top = 336.378170000000000000
        Width = 755.150094000000000000
        object Memo26: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 755.150094000000000000
          Height = 3.779530000000000000
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object UniDataSource1: TDataSource
    DataSet = uniQClientes
    Left = 320
    Top = 152
  end
  object uniQClientes: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select operacoes.cliente, operacoes.valordivida, clientes.nome, '
      'clientes.cpf_cnpj, '
      'operacoes.datavencto, operacoes.valorvencido'
      
        'from operacoes inner join clientes on clientes.codigo = operacoe' +
        's.cliente'
      'where operacoes.valorvencido > 0'
      'order by operacoes.valordivida desc')
    Left = 408
    Top = 152
    object uniQClientesCLIENTE: TFloatField
      FieldName = 'CLIENTE'
      Required = True
    end
    object uniQClientesVALORDIVIDA: TFloatField
      FieldName = 'VALORDIVIDA'
    end
    object uniQClientesNOME: TStringField
      FieldName = 'NOME'
      ReadOnly = True
      Size = 50
    end
    object uniQClientesDATAVENCTO: TStringField
      FieldName = 'DATAVENCTO'
      Size = 30
    end
    object uniQClientesVALORVENCIDO: TFloatField
      FieldName = 'VALORVENCIDO'
    end
    object uniQClientesCPF: TStringField
      FieldName = 'CPF_CNPJ'
      ReadOnly = True
      Size = 11
    end
  end
  object frxDBEMPRESAS: TfrxDBDataset
    UserName = 'frxDBEmpresas'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CLIENTE=CLIENTE'
      'VALORDIVIDA=VALORDIVIDA'
      'NOME=NOME'
      'DATAVENCTO=DATAVENCTO'
      'VALORVENCIDO=VALORVENCIDO'
      'CPF_CNPJ=CPF_CNPJ')
    DataSet = uniQClientes
    BCDToCurrency = False
    Left = 210
    Top = 307
  end
  object frxDBClientes: TfrxDBDataset
    UserName = 'frxDBClientes'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CLIENTE=CLIENTE'
      'VALORDIVIDA=VALORDIVIDA'
      'NOME=NOME'
      'DATAVENCTO=DATAVENCTO'
      'VALORVENCIDO=VALORVENCIDO'
      'CPF_CNPJ=CPF_CNPJ')
    DataSet = uniQClientes
    BCDToCurrency = False
    Left = 50
    Top = 307
  end
end
