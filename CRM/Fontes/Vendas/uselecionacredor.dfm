object fselecionacredor: Tfselecionacredor
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Sele'#231#227'o de Credores'
  ClientHeight = 378
  ClientWidth = 726
  Color = clBtnFace
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
  object Label2: TLabel
    Left = 280
    Top = 184
    Width = 29
    Height = 13
    Caption = 'NOME'
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 726
    Height = 378
    Align = alClient
    DataSource = UniDSQScript
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        ReadOnly = True
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        ReadOnly = True
        Width = 578
        Visible = True
      end>
  end
  object uniQScript: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from bancos order by nome')
    Left = 304
    Top = 72
    object uniQScriptCODIGO: TFMTBCDField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 38
      Size = 0
    end
    object uniQScriptNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object uniQScriptCOMISSAOFIXA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAOFIXA'
      Origin = 'COMISSAOFIXA'
      Size = 30
    end
    object uniQScriptCOMISSAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Precision = 12
      Size = 6
    end
    object uniQScriptCENTRALIZADORA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CENTRALIZADORA'
      Origin = 'CENTRALIZADORA'
      Size = 60
    end
    object uniQScriptCC_TIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CC_TIPO'
      Origin = 'CC_TIPO'
      Size = 30
    end
    object uniQScriptCE_C1: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CE_C1'
      Origin = 'CE_C1'
      Precision = 12
      Size = 6
    end
    object uniQScriptCE_C2: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CE_C2'
      Origin = 'CE_C2'
      Precision = 12
      Size = 6
    end
    object uniQScriptCE_C3: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CE_C3'
      Origin = 'CE_C3'
      Precision = 12
      Size = 6
    end
    object uniQScriptCE_C4: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CE_C4'
      Origin = 'CE_C4'
      Precision = 12
      Size = 6
    end
    object uniQScriptCE_C5: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CE_C5'
      Origin = 'CE_C5'
      Precision = 12
      Size = 6
    end
    object uniQScriptCE_C6: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CE_C6'
      Origin = 'CE_C6'
      Precision = 12
      Size = 6
    end
    object uniQScriptCE_C7: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CE_C7'
      Origin = 'CE_C7'
      Precision = 12
      Size = 6
    end
    object uniQScriptCE_C8: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CE_C8'
      Origin = 'CE_C8'
      Precision = 12
      Size = 6
    end
    object uniQScriptCE_C9: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CE_C9'
      Origin = 'CE_C9'
      Precision = 12
      Size = 6
    end
    object uniQScriptPREFCONT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PREFCONT'
      Origin = 'PREFCONT'
      Size = 10
    end
    object uniQScriptCONTADOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONTADOR'
      Origin = 'CONTADOR'
      Precision = 38
      Size = 0
    end
    object uniQScriptENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 60
    end
    object uniQScriptSETOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SETOR'
      Origin = 'SETOR'
      Size = 30
    end
    object uniQScriptNUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object uniQScriptCIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 50
    end
    object uniQScriptUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object uniQScriptCEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 9
    end
    object uniQScriptCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 11
    end
    object uniQScriptCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 14
    end
    object uniQScriptMETA_CAIXA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'META_CAIXA'
      Origin = 'META_CAIXA'
      Precision = 12
      Size = 6
    end
    object uniQScriptMETA_REGULARIZACAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'META_REGULARIZACAO'
      Origin = 'META_REGULARIZACAO'
      Precision = 12
      Size = 6
    end
    object uniQScriptMULTA_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MULTA_PADRAO'
      Origin = 'MULTA_PADRAO'
      Precision = 12
      Size = 6
    end
    object uniQScriptJUROS_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS_PADRAO'
      Origin = 'JUROS_PADRAO'
      Precision = 12
      Size = 6
    end
    object uniQScriptHONORARIOS_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'HONORARIOS_PADRAO'
      Origin = 'HONORARIOS_PADRAO'
      Precision = 12
      Size = 6
    end
    object uniQScriptDESCONTO_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_PADRAO'
      Origin = 'DESCONTO_PADRAO'
      Precision = 12
      Size = 6
    end
    object uniQScriptCUSTO_BOLETO_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTO_BOLETO_PADRAO'
      Origin = 'CUSTO_BOLETO_PADRAO'
      Precision = 12
      Size = 6
    end
    object uniQScriptFATOR_PARC_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'FATOR_PARC_PADRAO'
      Origin = 'FATOR_PARC_PADRAO'
      Precision = 12
      Size = 6
    end
    object uniQScriptVALOR_PROTESTO_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PROTESTO_PADRAO'
      Origin = 'VALOR_PROTESTO_PADRAO'
      Precision = 12
      Size = 6
    end
    object uniQScriptPESO_CAIXA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESO_CAIXA'
      Origin = 'PESO_CAIXA'
      Precision = 12
      Size = 6
    end
    object uniQScriptPESO_REGULARIZACAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PESO_REGULARIZACAO'
      Origin = 'PESO_REGULARIZACAO'
      Precision = 12
      Size = 6
    end
    object uniQScriptINCLUIRDESPESAS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INCLUIRDESPESAS'
      Origin = 'INCLUIRDESPESAS'
      Size = 5
    end
    object uniQScriptRETENCAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'RETENCAO'
      Origin = 'RETENCAO'
      Precision = 12
      Size = 6
    end
    object uniQScriptDT_CONTRATO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DT_CONTRATO'
      Origin = 'DT_CONTRATO'
    end
    object uniQScriptUSA_TAB_ATUALIZACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USA_TAB_ATUALIZACAO'
      Origin = 'USA_TAB_ATUALIZACAO'
      Size = 30
    end
    object uniQScriptREPRESENTANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REPRESENTANTE'
      Origin = 'REPRESENTANTE'
      Size = 40
    end
    object uniQScriptREP_ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REP_ENDERECO'
      Origin = 'REP_ENDERECO'
      Size = 50
    end
    object uniQScriptREP_SETOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REP_SETOR'
      Origin = 'REP_SETOR'
      Size = 30
    end
    object uniQScriptREP_CIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REP_CIDADE'
      Origin = 'REP_CIDADE'
      Size = 30
    end
    object uniQScriptREP_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REP_UF'
      Origin = 'REP_UF'
      Size = 2
    end
    object uniQScriptREP_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REP_CEP'
      Origin = 'REP_CEP'
      Size = 10
    end
    object uniQScriptREP_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REP_CPF'
      Origin = 'REP_CPF'
      Size = 18
    end
    object uniQScriptREP_PROFISSAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REP_PROFISSAO'
      Origin = 'REP_PROFISSAO'
      Size = 30
    end
    object uniQScriptREP_CARGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REP_CARGO'
      Origin = 'REP_CARGO'
      Size = 30
    end
    object uniQScriptREP_NACIONALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REP_NACIONALIDADE'
      Origin = 'REP_NACIONALIDADE'
      Size = 30
    end
    object uniQScriptREP_ESTADOCIVIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REP_ESTADOCIVIL'
      Origin = 'REP_ESTADOCIVIL'
      Size = 30
    end
    object uniQScriptFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 14
    end
    object uniQScriptFAX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 14
    end
    object uniQScriptDIAS_COB_HONORARIOS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DIAS_COB_HONORARIOS'
      Origin = 'DIAS_COB_HONORARIOS'
      Precision = 38
      Size = 0
    end
    object uniQScriptEMAIL1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL1'
      Origin = 'EMAIL1'
      Size = 45
    end
    object uniQScriptEMAIL2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL2'
      Origin = 'EMAIL2'
      Size = 45
    end
    object uniQScriptNRCONTRATO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NRCONTRATO'
      Origin = 'NRCONTRATO'
      Size = 30
    end
    object uniQScriptOBJETOCONTRATUAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBJETOCONTRATUAL'
      Origin = 'OBJETOCONTRATUAL'
      Size = 250
    end
    object uniQScriptTIPOPROTESTO_PADRAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPOPROTESTO_PADRAO'
      Origin = 'TIPOPROTESTO_PADRAO'
      Size = 30
    end
    object uniQScriptDESCONTO_SOBRE_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_SOBRE_PADRAO'
      Origin = 'DESCONTO_SOBRE_PADRAO'
      Precision = 38
      Size = 0
    end
    object uniQScriptGRAVA_VLRDIVIDA_EVENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRAVA_VLRDIVIDA_EVENTO'
      Origin = 'GRAVA_VLRDIVIDA_EVENTO'
      Size = 30
    end
    object uniQScriptGRAVA_NEGOCIACAO_EVENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRAVA_NEGOCIACAO_EVENTO'
      Origin = 'GRAVA_NEGOCIACAO_EVENTO'
      Size = 30
    end
    object uniQScriptCONTADOR_NP: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONTADOR_NP'
      Origin = 'CONTADOR_NP'
      Precision = 38
      Size = 0
    end
    object uniQScriptENTRADA_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ENTRADA_PADRAO'
      Origin = 'ENTRADA_PADRAO'
      Precision = 12
      Size = 6
    end
    object uniQScriptTIPO_HONORARIO_PADRAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_HONORARIO_PADRAO'
      Origin = 'TIPO_HONORARIO_PADRAO'
      Size = 15
    end
    object uniQScriptTIPO_ATUALIZACAO_DIVIDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_ATUALIZACAO_DIVIDA'
      Origin = 'TIPO_ATUALIZACAO_DIVIDA'
      Size = 30
    end
    object uniQScriptTIPO_JUROS_PADRAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_JUROS_PADRAO'
      Origin = 'TIPO_JUROS_PADRAO'
      Size = 30
    end
    object uniQScriptMENSAGEM_SMS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MENSAGEM_SMS'
      Origin = 'MENSAGEM_SMS'
      Size = 200
    end
    object uniQScriptPEDIR_SENHA_DESC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PEDIR_SENHA_DESC'
      Origin = 'PEDIR_SENHA_DESC'
      Size = 30
    end
    object uniQScriptJUROS_MINIMO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS_MINIMO'
      Origin = 'JUROS_MINIMO'
      Precision = 12
      Size = 6
    end
    object uniQScriptDESCONTO_MAXIMO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_MAXIMO'
      Origin = 'DESCONTO_MAXIMO'
      Precision = 12
      Size = 6
    end
    object uniQScriptVALOR_MINIMO_PARCELA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_MINIMO_PARCELA'
      Origin = 'VALOR_MINIMO_PARCELA'
      Precision = 12
      Size = 6
    end
    object uniQScriptDIAS_MAXIMO_ENTRADA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DIAS_MAXIMO_ENTRADA'
      Origin = 'DIAS_MAXIMO_ENTRADA'
      Precision = 38
      Size = 0
    end
    object uniQScriptBOL_CONVENIO_PADRAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BOL_CONVENIO_PADRAO'
      Origin = 'BOL_CONVENIO_PADRAO'
    end
    object uniQScriptFASE_COBRANCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FASE_COBRANCA'
      Origin = 'FASE_COBRANCA'
      Size = 100
    end
    object uniQScriptATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 30
    end
    object uniQScriptMULTA_MINIMA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MULTA_MINIMA'
      Origin = 'MULTA_MINIMA'
      Precision = 12
      Size = 6
    end
    object uniQScriptNRPRESTACAO_MAXIMO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NRPRESTACAO_MAXIMO'
      Origin = 'NRPRESTACAO_MAXIMO'
      Precision = 38
      Size = 0
    end
    object uniQScriptTIPO_CALCULO_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_CALCULO_PADRAO'
      Origin = 'TIPO_CALCULO_PADRAO'
      Precision = 38
      Size = 0
    end
    object uniQScriptMOSTRAR_QUEBRA_ACORDO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MOSTRAR_QUEBRA_ACORDO'
      Origin = 'MOSTRAR_QUEBRA_ACORDO'
      Size = 30
    end
    object uniQScriptTAB_ATU_DIVIDA_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TAB_ATU_DIVIDA_PADRAO'
      Origin = 'TAB_ATU_DIVIDA_PADRAO'
      Precision = 38
      Size = 0
    end
    object uniQScriptHONORARIO_SOBRE_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'HONORARIO_SOBRE_PADRAO'
      Origin = 'HONORARIO_SOBRE_PADRAO'
      Precision = 38
      Size = 0
    end
    object uniQScriptBLOQUEIO_LUPA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIO_LUPA'
      Origin = 'BLOQUEIO_LUPA'
      Size = 30
    end
    object uniQScriptBLOQUEIO_NIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIO_NIVEL'
      Origin = 'BLOQUEIO_NIVEL'
      Size = 30
    end
    object uniQScriptCOMISSAO_TIPOATRASO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAO_TIPOATRASO'
      Origin = 'COMISSAO_TIPOATRASO'
      Size = 30
    end
    object uniQScriptDATA_MIN_EVENTO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_MIN_EVENTO'
      Origin = 'DATA_MIN_EVENTO'
    end
    object uniQScriptJUROS_PARCELA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS_PARCELA'
      Origin = 'JUROS_PARCELA'
      Precision = 12
      Size = 6
    end
    object uniQScriptQUEBRA_ACORDO_DIAS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUEBRA_ACORDO_DIAS'
      Origin = 'QUEBRA_ACORDO_DIAS'
      Precision = 38
      Size = 0
    end
    object uniQScriptQUEBRA_ACORDO_COD_EVENTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUEBRA_ACORDO_COD_EVENTO'
      Origin = 'QUEBRA_ACORDO_COD_EVENTO'
      Precision = 38
      Size = 0
    end
    object uniQScriptLIQUIDADA_COD_EVENTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'LIQUIDADA_COD_EVENTO'
      Origin = 'LIQUIDADA_COD_EVENTO'
      Precision = 38
      Size = 0
    end
    object uniQScriptTIPODIVISAOENCARGOS_PADRAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPODIVISAOENCARGOS_PADRAO'
      Origin = 'TIPODIVISAOENCARGOS_PADRAO'
      Size = 30
    end
    object uniQScriptMODELO_RECIBO_PADRAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MODELO_RECIBO_PADRAO'
      Origin = 'MODELO_RECIBO_PADRAO'
      Size = 81
    end
    object uniQScriptBLOQUEIO_END1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIO_END1'
      Origin = 'BLOQUEIO_END1'
      Size = 30
    end
    object uniQScriptBLOQUEIO_END2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIO_END2'
      Origin = 'BLOQUEIO_END2'
      Size = 30
    end
    object uniQScriptBLOQUEIO_NIVEL_END1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIO_NIVEL_END1'
      Origin = 'BLOQUEIO_NIVEL_END1'
      Size = 30
    end
    object uniQScriptBLOQUEIO_NIVEL_END2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIO_NIVEL_END2'
      Origin = 'BLOQUEIO_NIVEL_END2'
      Size = 30
    end
    object uniQScriptJUROS_MAXIMO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS_MAXIMO'
      Origin = 'JUROS_MAXIMO'
      Precision = 12
      Size = 6
    end
    object uniQScriptMULTA_MAXIMO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MULTA_MAXIMO'
      Origin = 'MULTA_MAXIMO'
      Precision = 12
      Size = 6
    end
    object uniQScriptBLOQUEIO_DIVIDIR_SEM_JUROS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIO_DIVIDIR_SEM_JUROS'
      Origin = 'BLOQUEIO_DIVIDIR_SEM_JUROS'
      Size = 30
    end
    object uniQScriptDIAS_EMCOBRANCA_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DIAS_EMCOBRANCA_PADRAO'
      Origin = 'DIAS_EMCOBRANCA_PADRAO'
      Precision = 38
      Size = 0
    end
    object uniQScriptNEGATIVACAO_CODIGO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NEGATIVACAO_CODIGO'
      Origin = 'NEGATIVACAO_CODIGO'
      Precision = 38
      Size = 0
    end
    object uniQScriptTIPO_DESCONTO_PADRAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_DESCONTO_PADRAO'
      Origin = 'TIPO_DESCONTO_PADRAO'
      Size = 30
    end
    object uniQScriptEVENTOS_NRMAXIMO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'EVENTOS_NRMAXIMO'
      Origin = 'EVENTOS_NRMAXIMO'
      Precision = 38
      Size = 0
    end
    object uniQScriptEVENTOS_NRDIASMAXIMO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'EVENTOS_NRDIASMAXIMO'
      Origin = 'EVENTOS_NRDIASMAXIMO'
      Precision = 38
      Size = 0
    end
    object uniQScriptAGRUPAR_HON_COM_PRIMEIRA_PARC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGRUPAR_HON_COM_PRIMEIRA_PARC'
      Origin = 'AGRUPAR_HON_COM_PRIMEIRA_PARC'
      Size = 30
    end
    object uniQScriptFORMAPGTO_NEGOCIACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORMAPGTO_NEGOCIACAO'
      Origin = 'FORMAPGTO_NEGOCIACAO'
      Size = 30
    end
    object uniQScriptNEGATIVACAO_SERASA_CODIGO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NEGATIVACAO_SERASA_CODIGO'
      Origin = 'NEGATIVACAO_SERASA_CODIGO'
      Precision = 38
      Size = 0
    end
    object uniQScriptBLOQUEIA_TELEFONE_BLACKLIST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIA_TELEFONE_BLACKLIST'
      Origin = 'BLOQUEIA_TELEFONE_BLACKLIST'
      Size = 30
    end
    object uniQScriptPROTESTO_PRIMEIRA_PARC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROTESTO_PRIMEIRA_PARC'
      Origin = 'PROTESTO_PRIMEIRA_PARC'
      Size = 30
    end
    object uniQScriptCOMISSAO_INTERVALO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAO_INTERVALO'
      Origin = 'COMISSAO_INTERVALO'
      Size = 30
    end
    object uniQScriptJUROS_BOLETO_REGISTRADO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS_BOLETO_REGISTRADO'
      Origin = 'JUROS_BOLETO_REGISTRADO'
      Precision = 12
      Size = 6
    end
    object uniQScriptMULTA_BOLETO_REGISTRADO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MULTA_BOLETO_REGISTRADO'
      Origin = 'MULTA_BOLETO_REGISTRADO'
      Precision = 12
      Size = 6
    end
    object uniQScriptDADOS_BANCARIOS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DADOS_BANCARIOS'
      Origin = 'DADOS_BANCARIOS'
      Size = 255
    end
    object uniQScriptDTA_CAD: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DTA_CAD'
      Origin = 'DTA_CAD'
    end
    object uniQScriptUSR_CAD: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'USR_CAD'
      Origin = 'USR_CAD'
      Precision = 38
      Size = 0
    end
    object uniQScriptREBATES_TIPO_INTERVALO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REBATES_TIPO_INTERVALO'
      Origin = 'REBATES_TIPO_INTERVALO'
      Size = 30
    end
    object uniQScriptTIPO_MULTA_PADRAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_MULTA_PADRAO'
      Origin = 'TIPO_MULTA_PADRAO'
      Size = 30
    end
    object uniQScriptCARTA_BOLETO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CARTA_BOLETO'
      Origin = 'CARTA_BOLETO'
      Size = 2000
    end
    object uniQScriptTIPO_HONORARIO_ORIGEM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_HONORARIO_ORIGEM'
      Origin = 'TIPO_HONORARIO_ORIGEM'
      Size = 30
    end
    object uniQScriptATRIBUI_COBRADOR_ACORDO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATRIBUI_COBRADOR_ACORDO'
      Origin = 'ATRIBUI_COBRADOR_ACORDO'
      Size = 30
    end
    object uniQScriptRETORNA_PARCELAS_ACORDO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RETORNA_PARCELAS_ACORDO'
      Origin = 'RETORNA_PARCELAS_ACORDO'
      Size = 30
    end
    object uniQScriptMANTER_PARCELAS_ACORDO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MANTER_PARCELAS_ACORDO'
      Origin = 'MANTER_PARCELAS_ACORDO'
      Size = 30
    end
    object uniQScriptBLACKLIST_NIVEL_BLOQ_RETORNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLACKLIST_NIVEL_BLOQ_RETORNO'
      Origin = 'BLACKLIST_NIVEL_BLOQ_RETORNO'
      Size = 30
    end
    object uniQScriptTAXA_ATUALIZACAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TAXA_ATUALIZACAO'
      Origin = 'TAXA_ATUALIZACAO'
      Precision = 12
      Size = 6
    end
    object uniQScriptBOLETO_GERA_NOVO_NUMERO_RECALC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BOLETO_GERA_NOVO_NUMERO_RECALC'
      Origin = 'BOLETO_GERA_NOVO_NUMERO_RECALC'
      Size = 30
    end
    object uniQScriptBLOQUEIO_BOLETO_INCOMPLETO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIO_BOLETO_INCOMPLETO'
      Origin = 'BLOQUEIO_BOLETO_INCOMPLETO'
      Size = 30
    end
    object uniQScriptATU_PARC_ATRASO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATU_PARC_ATRASO'
      Origin = 'ATU_PARC_ATRASO'
      Size = 30
    end
    object uniQScriptATU_PARC_ATRASO_NRDIASMAXIMO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ATU_PARC_ATRASO_NRDIASMAXIMO'
      Origin = 'ATU_PARC_ATRASO_NRDIASMAXIMO'
      Precision = 38
      Size = 0
    end
    object uniQScriptPORTALWEB_PADRAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PORTALWEB_PADRAO'
      Origin = 'PORTALWEB_PADRAO'
      Precision = 38
      Size = 0
    end
    object uniQScriptEMITIR_UM_BOLETO_POR_VEZ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMITIR_UM_BOLETO_POR_VEZ'
      Origin = 'EMITIR_UM_BOLETO_POR_VEZ'
      Size = 30
    end
    object uniQScriptPERC_JUROS_DIF_POR_PERIODO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERC_JUROS_DIF_POR_PERIODO'
      Origin = 'PERC_JUROS_DIF_POR_PERIODO'
      Size = 30
    end
    object uniQScriptEXCLUIR_TEL_CAD_CLIENTE_NIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EXCLUIR_TEL_CAD_CLIENTE_NIVEL'
      Origin = 'EXCLUIR_TEL_CAD_CLIENTE_NIVEL'
      Size = 30
    end
    object uniQScriptBLOQUEIO_EMISSAO_PARC_VENCIDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIO_EMISSAO_PARC_VENCIDA'
      Origin = 'BLOQUEIO_EMISSAO_PARC_VENCIDA'
      Size = 30
    end
    object uniQScriptBLOQUEIO_ATU_BOLETO_EMITIDO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIO_ATU_BOLETO_EMITIDO'
      Origin = 'BLOQUEIO_ATU_BOLETO_EMITIDO'
      Size = 30
    end
    object uniQScriptBLOQUEIO_NEGOCIACAO_VENC_PARC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIO_NEGOCIACAO_VENC_PARC'
      Origin = 'BLOQUEIO_NEGOCIACAO_VENC_PARC'
      Size = 30
    end
    object uniQScriptBLOQUEIO_NEGOCIACAO_VLR_PARC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEIO_NEGOCIACAO_VLR_PARC'
      Origin = 'BLOQUEIO_NEGOCIACAO_VLR_PARC'
      Size = 30
    end
    object uniQScriptNUMERO_PREST_C0NTAS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO_PREST_C0NTAS'
      Origin = 'NUMERO_PREST_C0NTAS'
      Precision = 38
      Size = 0
    end
    object uniQScriptATU_PARC_ATRASO_BLOQ_ENCARGOS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATU_PARC_ATRASO_BLOQ_ENCARGOS'
      Origin = 'ATU_PARC_ATRASO_BLOQ_ENCARGOS'
      Size = 30
    end
    object uniQScriptID_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_1'
      Origin = 'ID_1'
    end
    object uniQScriptEVENTO_COBRANCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EVENTO_COBRANCA'
      Origin = 'EVENTO_COBRANCA'
      Size = 200
    end
    object uniQScriptMULTA_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MULTA_CHECK'
      Origin = 'MULTA_CHECK'
      Size = 5
    end
    object uniQScriptMULTA_DE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MULTA_DE'
      Origin = 'MULTA_DE'
    end
    object uniQScriptMULTA_A: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MULTA_A'
      Origin = 'MULTA_A'
    end
    object uniQScriptJUROS_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS_CHECK'
      Origin = 'JUROS_CHECK'
      Size = 5
    end
    object uniQScriptJUROS_DE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS_DE'
      Origin = 'JUROS_DE'
      Precision = 12
      Size = 6
    end
    object uniQScriptJUROS_A: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS_A'
      Origin = 'JUROS_A'
      Precision = 12
      Size = 6
    end
    object uniQScriptHONORARIO_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'HONORARIO_CHECK'
      Origin = 'HONORARIO_CHECK'
      Size = 5
    end
    object uniQScriptHONORARIO_DE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'HONORARIO_DE'
      Origin = 'HONORARIO_DE'
      Precision = 12
      Size = 6
    end
    object uniQScriptHONORARIO_A: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'HONORARIO_A'
      Origin = 'HONORARIO_A'
      Precision = 12
      Size = 6
    end
    object uniQScriptDESCONTOMAXIMO_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTOMAXIMO_CHECK'
      Origin = 'DESCONTOMAXIMO_CHECK'
      Size = 5
    end
    object uniQScriptDESCONTOMAXIMO_VALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTOMAXIMO_VALOR'
      Origin = 'DESCONTOMAXIMO_VALOR'
      Precision = 12
      Size = 6
    end
    object uniQScriptJUROSPARCELAMENTO_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'JUROSPARCELAMENTO_CHECK'
      Origin = 'JUROSPARCELAMENTO_CHECK'
      Size = 5
    end
    object uniQScriptJUROSPARCELAMENTO_DE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROSPARCELAMENTO_DE'
      Origin = 'JUROSPARCELAMENTO_DE'
      Precision = 12
      Size = 6
    end
    object uniQScriptJUROSPARCELAMENTO_A: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROSPARCELAMENTO_A'
      Origin = 'JUROSPARCELAMENTO_A'
      Precision = 12
      Size = 6
    end
    object uniQScriptMAXIMODIASPARCELAMENTO_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAXIMODIASPARCELAMENTO_CHECK'
      Origin = 'MAXIMODIASPARCELAMENTO_CHECK'
      Size = 5
    end
    object uniQScriptMAXIMODIASPARCELAMENTO_VALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MAXIMODIASPARCELAMENTO_VALOR'
      Origin = 'MAXIMODIASPARCELAMENTO_VALOR'
      Precision = 12
      Size = 6
    end
    object uniQScriptMAXIMOPARCELAS_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAXIMOPARCELAS_CHECK'
      Origin = 'MAXIMOPARCELAS_CHECK'
      Size = 5
    end
    object uniQScriptMAXIMOPARCELAS_VALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MAXIMOPARCELAS_VALOR'
      Origin = 'MAXIMOPARCELAS_VALOR'
      Precision = 12
      Size = 6
    end
    object uniQScriptCANCELARNEGOCIACAOAPOS_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELARNEGOCIACAOAPOS_CHECK'
      Origin = 'CANCELARNEGOCIACAOAPOS_CHECK'
      Size = 5
    end
    object uniQScriptCANCELARNEGOCIACAOAPOS_VALOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CANCELARNEGOCIACAOAPOS_VALOR'
      Origin = 'CANCELARNEGOCIACAOAPOS_VALOR'
      Precision = 12
      Size = 6
    end
    object uniQScriptCALCULARJUROSSOBREMULTA_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CALCULARJUROSSOBREMULTA_CHECK'
      Origin = 'CALCULARJUROSSOBREMULTA_CHECK'
      Size = 5
    end
    object uniQScriptINDICEDECORRECAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INDICEDECORRECAO'
      Origin = 'INDICEDECORRECAO'
      Size = 50
    end
    object uniQScriptHONORARIOREAL_A: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'HONORARIOREAL_A'
      Origin = 'HONORARIOREAL_A'
      Precision = 12
      Size = 6
    end
    object uniQScriptHONORARIOREAL_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'HONORARIOREAL_CHECK'
      Origin = 'HONORARIOREAL_CHECK'
      Size = 5
    end
    object uniQScriptHONORARIOREAL_DE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'HONORARIOREAL_DE'
      Origin = 'HONORARIOREAL_DE'
      Precision = 12
      Size = 6
    end
    object uniQScriptPERMITENAOMENSAIS_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PERMITENAOMENSAIS_CHECK'
      Origin = 'PERMITENAOMENSAIS_CHECK'
      Size = 5
    end
    object uniQScriptUTILIZARJUROSCOMPOSTOS_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UTILIZARJUROSCOMPOSTOS_CHECK'
      Origin = 'UTILIZARJUROSCOMPOSTOS_CHECK'
      Size = 5
    end
    object uniQScriptCALCMULTASOBRECORRECAO_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CALCMULTASOBRECORRECAO_CHECK'
      Origin = 'CALCMULTASOBRECORRECAO_CHECK'
      Size = 5
    end
    object uniQScriptCALCJUROSSOBRECORRECAO_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CALCJUROSSOBRECORRECAO_CHECK'
      Origin = 'CALCJUROSSOBRECORRECAO_CHECK'
      Size = 5
    end
    object uniQScriptCOMISSOPERVRRECEB_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSOPERVRRECEB_CHECK'
      Origin = 'COMISSOPERVRRECEB_CHECK'
      Size = 5
    end
    object uniQScriptCOMISSOPERVRCOMISS_CHECK: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSOPERVRCOMISS_CHECK'
      Origin = 'COMISSOPERVRCOMISS_CHECK'
      Size = 5
    end
    object uniQScriptINFORMACOES_ADICIONAIS: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'INFORMACOES_ADICIONAIS'
      Origin = 'INFORMACOES_ADICIONAIS'
    end
    object uniQScriptMAX_DIAS_PRIM_BOLETO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MAX_DIAS_PRIM_BOLETO'
      Origin = 'MAX_DIAS_PRIM_BOLETO'
    end
    object uniQScriptPARCELA_MINIMA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PARCELA_MINIMA'
      Origin = 'PARCELA_MINIMA'
    end
  end
  object UniDSQScript: TDataSource
    DataSet = uniQScript
    Left = 184
    Top = 72
  end
  object unigetid: TFDQuery
    Connection = frmDataModule.UniConnection1
    SQL.Strings = (
      'select * from aviso')
    Left = 400
    Top = 72
  end
end
