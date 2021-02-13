// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://hmg-webservices.ativossa.com.br/rico-webservice/ClienteService?wsdl
//  >Import : https://hmg-webservices.ativossa.com.br/rico-webservice/ClienteService?wsdl>0
// Encoding : UTF-8
// Version  : 1.0
// (06/01/2021 08:18:39 - - $Rev: 96726 $)
// ************************************************************************ //

unit ClienteService1;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_UNQL = $0008;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:double          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]

  escritorio           = class;                 { "http://service.commons.rico.ativos.com.br/"[GblCplx] }
  origem               = class;                 { "http://service.commons.rico.ativos.com.br/"[GblCplx] }
  modalidade           = class;                 { "http://service.commons.rico.ativos.com.br/"[GblCplx] }
  produto              = class;                 { "http://service.commons.rico.ativos.com.br/"[GblCplx] }
  return               = class;                 { "http://service.commons.rico.ativos.com.br/"[GblCplx] }
  telefone             = class;                 { "http://service.commons.rico.ativos.com.br/"[GblCplx] }
  coobrigado           = class;                 { "http://service.commons.rico.ativos.com.br/"[GblCplx] }
  cliente              = class;                 { "http://service.commons.rico.ativos.com.br/"[GblCplx] }
  operacao             = class;                 { "http://service.commons.rico.ativos.com.br/"[GblCplx] }
  acordo               = class;                 { "http://service.commons.rico.ativos.com.br/"[GblCplx] }
  parcela              = class;                 { "http://service.commons.rico.ativos.com.br/"[GblCplx] }
  endereco             = class;                 { "http://service.commons.rico.ativos.com.br/"[GblCplx] }

  {$SCOPEDENUMS ON}
  { "http://service.commons.rico.ativos.com.br/"[GblSmpl] }
  statusCumprimento = (VIGENTE, NAO_CUMPRIDO, CANCELADO, REJEITADO, CUMPRIDO, RESCINDIDO);

  { "http://service.commons.rico.ativos.com.br/"[GblSmpl] }
  statusInadimplencia = (NAO_INADIMPLENTE, INADIMPLENTE);

  { "http://service.commons.rico.ativos.com.br/"[GblSmpl] }
  uf = (
      AC, 
      AL, 
      AM, 
      AP, 
      BA, 
      CE, 
      DF, 
      ES, 
      GO, 
      MA, 
      MG, 
      MS, 
      MT, 
      PA, 
      PB, 
      PE, 
      PI, 
      PR, 
      RJ, 
      RN, 
      RO, 
      RR, 
      RS, 
      SC, 
      SE, 
      SP, 
      TO_
  );

  { "http://service.commons.rico.ativos.com.br/"[GblSmpl] }
  tipoEndereco = (RESIDENCIAL, COMERCIAL, CONTATO, SEDERESIDENCIAL, OUTRO);

  { "http://service.commons.rico.ativos.com.br/"[GblSmpl] }
  enderecoCorrespondencia = (CORRESPONDENCIA, OUTRO);

  { "http://service.commons.rico.ativos.com.br/"[GblSmpl] }
  statusParcela = (A_PAGAR, PAGA, PAGAMENTO_MAIOR, PAGAMENTO_MENOR);

  { "http://service.commons.rico.ativos.com.br/"[GblSmpl] }
  tipoTelefone = (RESIDENCIAL, CELULAR, COMERCIAL, OUTRO, URA, BANCO, SERASA, EXTERNO);

  { "http://service.commons.rico.ativos.com.br/"[GblSmpl] }
  statusTelefone = (SEM_IDENTIFICACAO, MELHOR_ATENDE, ATENDE, NAO_ATENDE, RECADO, INVALIDO, CPC, MAQUINA, DESCONHECE);

  { "http://service.commons.rico.ativos.com.br/"[GblSmpl] }
  statusLocalizacao = (SEM_INFORMACAO, LOCALIZADO, NAO_LOCALIZADO, FALECIDO);

  { "http://service.commons.rico.ativos.com.br/"[GblSmpl] }
  tipoNotificacao = (PENDENTE, NOTIFICADO);

  { "http://service.commons.rico.ativos.com.br/"[GblSmpl] }
  tipoPessoa = (FISICA, JURIDICA);

  { "http://service.commons.rico.ativos.com.br/"[GblSmpl] }
  statusPagamento = (SEM_PAGAMENTO, COM_PAGAMENTO, LIQUIDADO);

  { "http://service.commons.rico.ativos.com.br/"[GblSmpl] }
  tipoAcordo = (
      INDEFINIDO, 
      EXTERNO, 
      EXTRAORDINARIO, 
      HOMESITE, 
      JURIDICO, 
      BOLETAGEM, 
      PRODUTO, 
      VP, 
      PGFN, 
      MENOR, 
      MOBILE
  );

  { "http://service.commons.rico.ativos.com.br/"[GblSmpl] }
  situacaoAcordo = (NAO_EXAMINADO, APROVADO, REJEITADO, EM_ANALISE);

  {$SCOPEDENUMS OFF}

  parcelas   = array of parcela;                { "http://service.commons.rico.ativos.com.br/"[Cplx] }
  operacoes  = array of operacao;               { "http://service.commons.rico.ativos.com.br/"[Cplx] }
  acordos    = array of acordo;                 { "http://service.commons.rico.ativos.com.br/"[Cplx] }
  pesquisarLstClienteResponse = array of cliente;   { "http://service.commons.rico.ativos.com.br/"[Lit][GblCplx] }


  // ************************************************************************ //
  // XML       : escritorio, global, <complexType>
  // Namespace : http://service.commons.rico.ativos.com.br/
  // ************************************************************************ //
  escritorio = class(TRemotable)
  private
    Fnome: string;
    Fnome_Specified: boolean;
    FnomeAbreviado: string;
    FnomeAbreviado_Specified: boolean;
    Ftelefone: string;
    Ftelefone_Specified: boolean;
    procedure Setnome(Index: Integer; const Astring: string);
    function  nome_Specified(Index: Integer): boolean;
    procedure SetnomeAbreviado(Index: Integer; const Astring: string);
    function  nomeAbreviado_Specified(Index: Integer): boolean;
    procedure Settelefone(Index: Integer; const Astring: string);
    function  telefone_Specified(Index: Integer): boolean;
  published
    property nome:          string  Index (IS_OPTN or IS_UNQL) read Fnome write Setnome stored nome_Specified;
    property nomeAbreviado: string  Index (IS_OPTN or IS_UNQL) read FnomeAbreviado write SetnomeAbreviado stored nomeAbreviado_Specified;
    property telefone:      string  Index (IS_OPTN or IS_UNQL) read Ftelefone write Settelefone stored telefone_Specified;
  end;

  operacoes2 = array of operacao;               { "http://service.commons.rico.ativos.com.br/"[Cplx] }


  // ************************************************************************ //
  // XML       : origem, global, <complexType>
  // Namespace : http://service.commons.rico.ativos.com.br/
  // ************************************************************************ //
  origem = class(TRemotable)
  private
    Fsigla: string;
    Fsigla_Specified: boolean;
    Fdescricao: string;
    Fdescricao_Specified: boolean;
    procedure Setsigla(Index: Integer; const Astring: string);
    function  sigla_Specified(Index: Integer): boolean;
    procedure Setdescricao(Index: Integer; const Astring: string);
    function  descricao_Specified(Index: Integer): boolean;
  published
    property sigla:     string  Index (IS_OPTN or IS_UNQL) read Fsigla write Setsigla stored sigla_Specified;
    property descricao: string  Index (IS_OPTN or IS_UNQL) read Fdescricao write Setdescricao stored descricao_Specified;
  end;



  // ************************************************************************ //
  // XML       : modalidade, global, <complexType>
  // Namespace : http://service.commons.rico.ativos.com.br/
  // ************************************************************************ //
  modalidade = class(TRemotable)
  private
    Fcodigo: string;
    Fcodigo_Specified: boolean;
    Fnome: string;
    Fnome_Specified: boolean;
    procedure Setcodigo(Index: Integer; const Astring: string);
    function  codigo_Specified(Index: Integer): boolean;
    procedure Setnome(Index: Integer; const Astring: string);
    function  nome_Specified(Index: Integer): boolean;
  published
    property codigo: string  Index (IS_OPTN or IS_UNQL) read Fcodigo write Setcodigo stored codigo_Specified;
    property nome:   string  Index (IS_OPTN or IS_UNQL) read Fnome write Setnome stored nome_Specified;
  end;



  // ************************************************************************ //
  // XML       : produto, global, <complexType>
  // Namespace : http://service.commons.rico.ativos.com.br/
  // ************************************************************************ //
  produto = class(TRemotable)
  private
    Fcodigo: string;
    Fcodigo_Specified: boolean;
    Fnome: string;
    Fnome_Specified: boolean;
    procedure Setcodigo(Index: Integer; const Astring: string);
    function  codigo_Specified(Index: Integer): boolean;
    procedure Setnome(Index: Integer; const Astring: string);
    function  nome_Specified(Index: Integer): boolean;
  published
    property codigo: string  Index (IS_OPTN or IS_UNQL) read Fcodigo write Setcodigo stored codigo_Specified;
    property nome:   string  Index (IS_OPTN or IS_UNQL) read Fnome write Setnome stored nome_Specified;
  end;

  enderecos  = array of endereco;               { "http://service.commons.rico.ativos.com.br/"[Cplx] }
  telefones  = array of telefone;               { "http://service.commons.rico.ativos.com.br/"[Cplx] }


  // ************************************************************************ //
  // XML       : return, global, <complexType>
  // Namespace : http://service.commons.rico.ativos.com.br/
  // ************************************************************************ //
  return = class(TRemotable)
  private
    Ferro: Boolean;
    Fmensagem: string;
    Fmensagem_Specified: boolean;
    procedure Setmensagem(Index: Integer; const Astring: string);
    function  mensagem_Specified(Index: Integer): boolean;
  published
    property erro:     Boolean  Index (IS_UNQL) read Ferro write Ferro;
    property mensagem: string   Index (IS_OPTN or IS_UNQL) read Fmensagem write Setmensagem stored mensagem_Specified;
  end;



  // ************************************************************************ //
  // XML       : telefone, global, <complexType>
  // Namespace : http://service.commons.rico.ativos.com.br/
  // ************************************************************************ //
  telefone = class(return)
  private
    Fddd: Integer;
    Fnumero: Integer;
    FtipoTelefone: tipoTelefone;
    FstatusTelefone: statusTelefone;
    Fcliente: cliente;
    Fcliente_Specified: boolean;
    procedure Setcliente(Index: Integer; const Acliente: cliente);
    function  cliente_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ddd:            Integer         Index (IS_UNQL) read Fddd write Fddd;
    property numero:         Integer         Index (IS_UNQL) read Fnumero write Fnumero;
    property tipoTelefone:   tipoTelefone    Index (IS_UNQL) read FtipoTelefone write FtipoTelefone;
    property statusTelefone: statusTelefone  Index (IS_UNQL) read FstatusTelefone write FstatusTelefone;
    property cliente:        cliente         Index (IS_OPTN or IS_UNQL) read Fcliente write Setcliente stored cliente_Specified;
  end;



  // ************************************************************************ //
  // XML       : coobrigado, global, <complexType>
  // Namespace : http://service.commons.rico.ativos.com.br/
  // ************************************************************************ //
  coobrigado = class(return)
  private
    Fndg: string;
    Fnome: string;
    Fnome_Specified: boolean;
    FtipoPessoa: tipoPessoa;
    FtipoPessoa_Specified: boolean;
    FcpfCnpj: string;
    FcpfCnpj_Specified: boolean;
    Femail: string;
    Femail_Specified: boolean;
    FtipoNotificacao: tipoNotificacao;
    FtipoNotificacao_Specified: boolean;
    FstatusLocalizacao: statusLocalizacao;
    FstatusLocalizacao_Specified: boolean;
    Ftelefones: telefones;
    Ftelefones_Specified: boolean;
    Fenderecos: enderecos;
    Fenderecos_Specified: boolean;
    FidOperacao: Integer;
    FidOperacao_Specified: boolean;
    procedure Setnome(Index: Integer; const Astring: string);
    function  nome_Specified(Index: Integer): boolean;
    procedure SettipoPessoa(Index: Integer; const AtipoPessoa: tipoPessoa);
    function  tipoPessoa_Specified(Index: Integer): boolean;
    procedure SetcpfCnpj(Index: Integer; const Astring: string);
    function  cpfCnpj_Specified(Index: Integer): boolean;
    procedure Setemail(Index: Integer; const Astring: string);
    function  email_Specified(Index: Integer): boolean;
    procedure SettipoNotificacao(Index: Integer; const AtipoNotificacao: tipoNotificacao);
    function  tipoNotificacao_Specified(Index: Integer): boolean;
    procedure SetstatusLocalizacao(Index: Integer; const AstatusLocalizacao: statusLocalizacao);
    function  statusLocalizacao_Specified(Index: Integer): boolean;
    procedure Settelefones(Index: Integer; const Atelefones: telefones);
    function  telefones_Specified(Index: Integer): boolean;
    procedure Setenderecos(Index: Integer; const Aenderecos: enderecos);
    function  enderecos_Specified(Index: Integer): boolean;
    procedure SetidOperacao(Index: Integer; const AInteger: Integer);
    function  idOperacao_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ndg:               string             Index (IS_UNQL) read Fndg write Fndg;
    property nome:              string             Index (IS_OPTN or IS_UNQL) read Fnome write Setnome stored nome_Specified;
    property tipoPessoa:        tipoPessoa         Index (IS_OPTN or IS_UNQL) read FtipoPessoa write SettipoPessoa stored tipoPessoa_Specified;
    property cpfCnpj:           string             Index (IS_OPTN or IS_UNQL) read FcpfCnpj write SetcpfCnpj stored cpfCnpj_Specified;
    property email:             string             Index (IS_OPTN or IS_UNQL) read Femail write Setemail stored email_Specified;
    property tipoNotificacao:   tipoNotificacao    Index (IS_OPTN or IS_UNQL) read FtipoNotificacao write SettipoNotificacao stored tipoNotificacao_Specified;
    property statusLocalizacao: statusLocalizacao  Index (IS_OPTN or IS_UNQL) read FstatusLocalizacao write SetstatusLocalizacao stored statusLocalizacao_Specified;
    property telefones:         telefones          Index (IS_OPTN or IS_UNQL) read Ftelefones write Settelefones stored telefones_Specified;
    property enderecos:         enderecos          Index (IS_OPTN or IS_UNQL) read Fenderecos write Setenderecos stored enderecos_Specified;
    property idOperacao:        Integer            Index (IS_OPTN or IS_UNQL) read FidOperacao write SetidOperacao stored idOperacao_Specified;
  end;



  // ************************************************************************ //
  // XML       : cliente, global, <complexType>
  // Namespace : http://service.commons.rico.ativos.com.br/
  // ************************************************************************ //
  cliente = class(coobrigado)
  private
    FdataNascimento: TXSDateTime;
    FdataNascimento_Specified: boolean;
    Foperacoes: operacoes2;
    Foperacoes_Specified: boolean;
    Facordos: acordos;
    Facordos_Specified: boolean;
    procedure SetdataNascimento(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataNascimento_Specified(Index: Integer): boolean;
    procedure Setoperacoes(Index: Integer; const Aoperacoes2: operacoes2);
    function  operacoes_Specified(Index: Integer): boolean;
    procedure Setacordos(Index: Integer; const Aacordos: acordos);
    function  acordos_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property dataNascimento: TXSDateTime  Index (IS_OPTN or IS_UNQL) read FdataNascimento write SetdataNascimento stored dataNascimento_Specified;
    property operacoes:      operacoes2   Index (IS_OPTN or IS_UNQL) read Foperacoes write Setoperacoes stored operacoes_Specified;
    property acordos:        acordos      Index (IS_OPTN or IS_UNQL) read Facordos write Setacordos stored acordos_Specified;
  end;



  // ************************************************************************ //
  // XML       : operacao, global, <complexType>
  // Namespace : http://service.commons.rico.ativos.com.br/
  // ************************************************************************ //
  operacao = class(TRemotable)
  private
    FidOperacao: Integer;
    FidOperacao_Specified: boolean;
    Fcontrato: string;
    Fcontrato_Specified: boolean;
    Flote: Integer;
    Flote_Specified: boolean;
    FqtdeNegociacao: Integer;
    FqtdeNegociacao_Specified: boolean;
    Fproduto: produto;
    Fproduto_Specified: boolean;
    Fmodalidade: modalidade;
    Fmodalidade_Specified: boolean;
    FstatusAcordo: string;
    FstatusAcordo_Specified: boolean;
    FstatusOperacao: string;
    FstatusOperacao_Specified: boolean;
    FvalorPresente: Double;
    FvalorPresente_Specified: boolean;
    FvalorPresenteFinanceiro: Double;
    FvalorPresenteFinanceiro_Specified: boolean;
    FvalorAtualizado: Double;
    FvalorAtualizado_Specified: boolean;
    FultimoValorNegociado: Double;
    FultimoValorNegociado_Specified: boolean;
    FdataVencimento: TXSDateTime;
    FdataVencimento_Specified: boolean;
    FvalorLiquidacao: Double;
    FvalorLiquidacao_Specified: boolean;
    FvalorSaldoAquisicao: Double;
    FvalorSaldoAquisicao_Specified: boolean;
    FvalorSaldoPerdas: Double;
    FvalorSaldoPerdas_Specified: boolean;
    FvalorSaldoResidual: Double;
    FvalorSaldoResidual_Specified: boolean;
    FdataInclusao: TXSDateTime;
    FdataInclusao_Specified: boolean;
    FstatusContabil: string;
    FstatusContabil_Specified: boolean;
    Fcampanha: Integer;
    Fcampanha_Specified: boolean;
    FdataStatusOperacao: TXSDateTime;
    FdataStatusOperacao_Specified: boolean;
    Fclasse: Integer;
    Fclasse_Specified: boolean;
    Fsegmento: Integer;
    Fsegmento_Specified: boolean;
    Ftipo: Integer;
    Ftipo_Specified: boolean;
    FesquemaNegociacao: Integer;
    FesquemaNegociacao_Specified: boolean;
    FstatusSPC: string;
    FstatusSPC_Specified: boolean;
    FstatusHabilitado: string;
    FstatusHabilitado_Specified: boolean;
    FqtdCedulas: Integer;
    FqtdCedulas_Specified: boolean;
    FprocuradoriaResponsavel: string;
    FprocuradoriaResponsavel_Specified: boolean;
    FiofResponsavel: Double;
    FiofResponsavel_Specified: boolean;
    FqtdNegociacoes: Integer;
    FqtdNegociacoes_Specified: boolean;
    FvalorNegociado: Double;
    FvalorNegociado_Specified: boolean;
    FvalorSaldoOperacao: Double;
    FvalorSaldoOperacao_Specified: boolean;
    FtaxaProduto: Double;
    FtaxaProduto_Specified: boolean;
    Fagencia: string;
    Fagencia_Specified: boolean;
    Forigem: origem;
    Forigem_Specified: boolean;
    procedure SetidOperacao(Index: Integer; const AInteger: Integer);
    function  idOperacao_Specified(Index: Integer): boolean;
    procedure Setcontrato(Index: Integer; const Astring: string);
    function  contrato_Specified(Index: Integer): boolean;
    procedure Setlote(Index: Integer; const AInteger: Integer);
    function  lote_Specified(Index: Integer): boolean;
    procedure SetqtdeNegociacao(Index: Integer; const AInteger: Integer);
    function  qtdeNegociacao_Specified(Index: Integer): boolean;
    procedure Setproduto(Index: Integer; const Aproduto: produto);
    function  produto_Specified(Index: Integer): boolean;
    procedure Setmodalidade(Index: Integer; const Amodalidade: modalidade);
    function  modalidade_Specified(Index: Integer): boolean;
    procedure SetstatusAcordo(Index: Integer; const Astring: string);
    function  statusAcordo_Specified(Index: Integer): boolean;
    procedure SetstatusOperacao(Index: Integer; const Astring: string);
    function  statusOperacao_Specified(Index: Integer): boolean;
    procedure SetvalorPresente(Index: Integer; const ADouble: Double);
    function  valorPresente_Specified(Index: Integer): boolean;
    procedure SetvalorPresenteFinanceiro(Index: Integer; const ADouble: Double);
    function  valorPresenteFinanceiro_Specified(Index: Integer): boolean;
    procedure SetvalorAtualizado(Index: Integer; const ADouble: Double);
    function  valorAtualizado_Specified(Index: Integer): boolean;
    procedure SetultimoValorNegociado(Index: Integer; const ADouble: Double);
    function  ultimoValorNegociado_Specified(Index: Integer): boolean;
    procedure SetdataVencimento(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataVencimento_Specified(Index: Integer): boolean;
    procedure SetvalorLiquidacao(Index: Integer; const ADouble: Double);
    function  valorLiquidacao_Specified(Index: Integer): boolean;
    procedure SetvalorSaldoAquisicao(Index: Integer; const ADouble: Double);
    function  valorSaldoAquisicao_Specified(Index: Integer): boolean;
    procedure SetvalorSaldoPerdas(Index: Integer; const ADouble: Double);
    function  valorSaldoPerdas_Specified(Index: Integer): boolean;
    procedure SetvalorSaldoResidual(Index: Integer; const ADouble: Double);
    function  valorSaldoResidual_Specified(Index: Integer): boolean;
    procedure SetdataInclusao(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataInclusao_Specified(Index: Integer): boolean;
    procedure SetstatusContabil(Index: Integer; const Astring: string);
    function  statusContabil_Specified(Index: Integer): boolean;
    procedure Setcampanha(Index: Integer; const AInteger: Integer);
    function  campanha_Specified(Index: Integer): boolean;
    procedure SetdataStatusOperacao(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataStatusOperacao_Specified(Index: Integer): boolean;
    procedure Setclasse(Index: Integer; const AInteger: Integer);
    function  classe_Specified(Index: Integer): boolean;
    procedure Setsegmento(Index: Integer; const AInteger: Integer);
    function  segmento_Specified(Index: Integer): boolean;
    procedure Settipo(Index: Integer; const AInteger: Integer);
    function  tipo_Specified(Index: Integer): boolean;
    procedure SetesquemaNegociacao(Index: Integer; const AInteger: Integer);
    function  esquemaNegociacao_Specified(Index: Integer): boolean;
    procedure SetstatusSPC(Index: Integer; const Astring: string);
    function  statusSPC_Specified(Index: Integer): boolean;
    procedure SetstatusHabilitado(Index: Integer; const Astring: string);
    function  statusHabilitado_Specified(Index: Integer): boolean;
    procedure SetqtdCedulas(Index: Integer; const AInteger: Integer);
    function  qtdCedulas_Specified(Index: Integer): boolean;
    procedure SetprocuradoriaResponsavel(Index: Integer; const Astring: string);
    function  procuradoriaResponsavel_Specified(Index: Integer): boolean;
    procedure SetiofResponsavel(Index: Integer; const ADouble: Double);
    function  iofResponsavel_Specified(Index: Integer): boolean;
    procedure SetqtdNegociacoes(Index: Integer; const AInteger: Integer);
    function  qtdNegociacoes_Specified(Index: Integer): boolean;
    procedure SetvalorNegociado(Index: Integer; const ADouble: Double);
    function  valorNegociado_Specified(Index: Integer): boolean;
    procedure SetvalorSaldoOperacao(Index: Integer; const ADouble: Double);
    function  valorSaldoOperacao_Specified(Index: Integer): boolean;
    procedure SettaxaProduto(Index: Integer; const ADouble: Double);
    function  taxaProduto_Specified(Index: Integer): boolean;
    procedure Setagencia(Index: Integer; const Astring: string);
    function  agencia_Specified(Index: Integer): boolean;
    procedure Setorigem(Index: Integer; const Aorigem: origem);
    function  origem_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property idOperacao:              Integer      Index (IS_OPTN or IS_UNQL) read FidOperacao write SetidOperacao stored idOperacao_Specified;
    property contrato:                string       Index (IS_OPTN or IS_UNQL) read Fcontrato write Setcontrato stored contrato_Specified;
    property lote:                    Integer      Index (IS_OPTN or IS_UNQL) read Flote write Setlote stored lote_Specified;
    property qtdeNegociacao:          Integer      Index (IS_OPTN or IS_UNQL) read FqtdeNegociacao write SetqtdeNegociacao stored qtdeNegociacao_Specified;
    property produto:                 produto      Index (IS_OPTN or IS_UNQL) read Fproduto write Setproduto stored produto_Specified;
    property modalidade:              modalidade   Index (IS_OPTN or IS_UNQL) read Fmodalidade write Setmodalidade stored modalidade_Specified;
    property statusAcordo:            string       Index (IS_OPTN or IS_UNQL) read FstatusAcordo write SetstatusAcordo stored statusAcordo_Specified;
    property statusOperacao:          string       Index (IS_OPTN or IS_UNQL) read FstatusOperacao write SetstatusOperacao stored statusOperacao_Specified;
    property valorPresente:           Double       Index (IS_OPTN or IS_UNQL) read FvalorPresente write SetvalorPresente stored valorPresente_Specified;
    property valorPresenteFinanceiro: Double       Index (IS_OPTN or IS_UNQL) read FvalorPresenteFinanceiro write SetvalorPresenteFinanceiro stored valorPresenteFinanceiro_Specified;
    property valorAtualizado:         Double       Index (IS_OPTN or IS_UNQL) read FvalorAtualizado write SetvalorAtualizado stored valorAtualizado_Specified;
    property ultimoValorNegociado:    Double       Index (IS_OPTN or IS_UNQL) read FultimoValorNegociado write SetultimoValorNegociado stored ultimoValorNegociado_Specified;
    property dataVencimento:          TXSDateTime  Index (IS_OPTN or IS_UNQL) read FdataVencimento write SetdataVencimento stored dataVencimento_Specified;
    property valorLiquidacao:         Double       Index (IS_OPTN or IS_UNQL) read FvalorLiquidacao write SetvalorLiquidacao stored valorLiquidacao_Specified;
    property valorSaldoAquisicao:     Double       Index (IS_OPTN or IS_UNQL) read FvalorSaldoAquisicao write SetvalorSaldoAquisicao stored valorSaldoAquisicao_Specified;
    property valorSaldoPerdas:        Double       Index (IS_OPTN or IS_UNQL) read FvalorSaldoPerdas write SetvalorSaldoPerdas stored valorSaldoPerdas_Specified;
    property valorSaldoResidual:      Double       Index (IS_OPTN or IS_UNQL) read FvalorSaldoResidual write SetvalorSaldoResidual stored valorSaldoResidual_Specified;
    property dataInclusao:            TXSDateTime  Index (IS_OPTN or IS_UNQL) read FdataInclusao write SetdataInclusao stored dataInclusao_Specified;
    property statusContabil:          string       Index (IS_OPTN or IS_UNQL) read FstatusContabil write SetstatusContabil stored statusContabil_Specified;
    property campanha:                Integer      Index (IS_OPTN or IS_UNQL) read Fcampanha write Setcampanha stored campanha_Specified;
    property dataStatusOperacao:      TXSDateTime  Index (IS_OPTN or IS_UNQL) read FdataStatusOperacao write SetdataStatusOperacao stored dataStatusOperacao_Specified;
    property classe:                  Integer      Index (IS_OPTN or IS_UNQL) read Fclasse write Setclasse stored classe_Specified;
    property segmento:                Integer      Index (IS_OPTN or IS_UNQL) read Fsegmento write Setsegmento stored segmento_Specified;
    property tipo:                    Integer      Index (IS_OPTN or IS_UNQL) read Ftipo write Settipo stored tipo_Specified;
    property esquemaNegociacao:       Integer      Index (IS_OPTN or IS_UNQL) read FesquemaNegociacao write SetesquemaNegociacao stored esquemaNegociacao_Specified;
    property statusSPC:               string       Index (IS_OPTN or IS_UNQL) read FstatusSPC write SetstatusSPC stored statusSPC_Specified;
    property statusHabilitado:        string       Index (IS_OPTN or IS_UNQL) read FstatusHabilitado write SetstatusHabilitado stored statusHabilitado_Specified;
    property qtdCedulas:              Integer      Index (IS_OPTN or IS_UNQL) read FqtdCedulas write SetqtdCedulas stored qtdCedulas_Specified;
    property procuradoriaResponsavel: string       Index (IS_OPTN or IS_UNQL) read FprocuradoriaResponsavel write SetprocuradoriaResponsavel stored procuradoriaResponsavel_Specified;
    property iofResponsavel:          Double       Index (IS_OPTN or IS_UNQL) read FiofResponsavel write SetiofResponsavel stored iofResponsavel_Specified;
    property qtdNegociacoes:          Integer      Index (IS_OPTN or IS_UNQL) read FqtdNegociacoes write SetqtdNegociacoes stored qtdNegociacoes_Specified;
    property valorNegociado:          Double       Index (IS_OPTN or IS_UNQL) read FvalorNegociado write SetvalorNegociado stored valorNegociado_Specified;
    property valorSaldoOperacao:      Double       Index (IS_OPTN or IS_UNQL) read FvalorSaldoOperacao write SetvalorSaldoOperacao stored valorSaldoOperacao_Specified;
    property taxaProduto:             Double       Index (IS_OPTN or IS_UNQL) read FtaxaProduto write SettaxaProduto stored taxaProduto_Specified;
    property agencia:                 string       Index (IS_OPTN or IS_UNQL) read Fagencia write Setagencia stored agencia_Specified;
    property origem:                  origem       Index (IS_OPTN or IS_UNQL) read Forigem write Setorigem stored origem_Specified;
  end;



  // ************************************************************************ //
  // XML       : acordo, global, <complexType>
  // Namespace : http://service.commons.rico.ativos.com.br/
  // ************************************************************************ //
  acordo = class(TRemotable)
  private
    FnumeroAcordo: Integer;
    FnumeroAcordo_Specified: boolean;
    FdataAcordo: TXSDateTime;
    FdataAcordo_Specified: boolean;
    FdataAprovacao: TXSDateTime;
    FdataAprovacao_Specified: boolean;
    Fresponsavel: string;
    Fresponsavel_Specified: boolean;
    FresponsavelAprovacao: string;
    FresponsavelAprovacao_Specified: boolean;
    FsituacaoAcordo: situacaoAcordo;
    FsituacaoAcordo_Specified: boolean;
    FtipoAcordo: tipoAcordo;
    FtipoAcordo_Specified: boolean;
    FstatusPagamento: statusPagamento;
    FstatusPagamento_Specified: boolean;
    FstatusCumprimento: statusCumprimento;
    FstatusCumprimento_Specified: boolean;
    FvalorNegociado: Double;
    FvalorNegociado_Specified: boolean;
    FvalorJuros: Double;
    FvalorJuros_Specified: boolean;
    FvalorAjuste: Double;
    FvalorAjuste_Specified: boolean;
    FstatusInadimplencia: statusInadimplencia;
    FstatusInadimplencia_Specified: boolean;
    FdataInadimplencia: TXSDateTime;
    FdataInadimplencia_Specified: boolean;
    FdataUltimaModificacao: TXSDateTime;
    FdataUltimaModificacao_Specified: boolean;
    FresponsavelUltimaModificacao: string;
    FresponsavelUltimaModificacao_Specified: boolean;
    Foperacoes: operacoes;
    Foperacoes_Specified: boolean;
    Fparcelas: parcelas;
    Fparcelas_Specified: boolean;
    Fescritorio: escritorio;
    Fescritorio_Specified: boolean;
    procedure SetnumeroAcordo(Index: Integer; const AInteger: Integer);
    function  numeroAcordo_Specified(Index: Integer): boolean;
    procedure SetdataAcordo(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataAcordo_Specified(Index: Integer): boolean;
    procedure SetdataAprovacao(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataAprovacao_Specified(Index: Integer): boolean;
    procedure Setresponsavel(Index: Integer; const Astring: string);
    function  responsavel_Specified(Index: Integer): boolean;
    procedure SetresponsavelAprovacao(Index: Integer; const Astring: string);
    function  responsavelAprovacao_Specified(Index: Integer): boolean;
    procedure SetsituacaoAcordo(Index: Integer; const AsituacaoAcordo: situacaoAcordo);
    function  situacaoAcordo_Specified(Index: Integer): boolean;
    procedure SettipoAcordo(Index: Integer; const AtipoAcordo: tipoAcordo);
    function  tipoAcordo_Specified(Index: Integer): boolean;
    procedure SetstatusPagamento(Index: Integer; const AstatusPagamento: statusPagamento);
    function  statusPagamento_Specified(Index: Integer): boolean;
    procedure SetstatusCumprimento(Index: Integer; const AstatusCumprimento: statusCumprimento);
    function  statusCumprimento_Specified(Index: Integer): boolean;
    procedure SetvalorNegociado(Index: Integer; const ADouble: Double);
    function  valorNegociado_Specified(Index: Integer): boolean;
    procedure SetvalorJuros(Index: Integer; const ADouble: Double);
    function  valorJuros_Specified(Index: Integer): boolean;
    procedure SetvalorAjuste(Index: Integer; const ADouble: Double);
    function  valorAjuste_Specified(Index: Integer): boolean;
    procedure SetstatusInadimplencia(Index: Integer; const AstatusInadimplencia: statusInadimplencia);
    function  statusInadimplencia_Specified(Index: Integer): boolean;
    procedure SetdataInadimplencia(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataInadimplencia_Specified(Index: Integer): boolean;
    procedure SetdataUltimaModificacao(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataUltimaModificacao_Specified(Index: Integer): boolean;
    procedure SetresponsavelUltimaModificacao(Index: Integer; const Astring: string);
    function  responsavelUltimaModificacao_Specified(Index: Integer): boolean;
    procedure Setoperacoes(Index: Integer; const Aoperacoes: operacoes);
    function  operacoes_Specified(Index: Integer): boolean;
    procedure Setparcelas(Index: Integer; const Aparcelas: parcelas);
    function  parcelas_Specified(Index: Integer): boolean;
    procedure Setescritorio(Index: Integer; const Aescritorio: escritorio);
    function  escritorio_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property numeroAcordo:                 Integer              Index (IS_OPTN or IS_UNQL) read FnumeroAcordo write SetnumeroAcordo stored numeroAcordo_Specified;
    property dataAcordo:                   TXSDateTime          Index (IS_OPTN or IS_UNQL) read FdataAcordo write SetdataAcordo stored dataAcordo_Specified;
    property dataAprovacao:                TXSDateTime          Index (IS_OPTN or IS_UNQL) read FdataAprovacao write SetdataAprovacao stored dataAprovacao_Specified;
    property responsavel:                  string               Index (IS_OPTN or IS_UNQL) read Fresponsavel write Setresponsavel stored responsavel_Specified;
    property responsavelAprovacao:         string               Index (IS_OPTN or IS_UNQL) read FresponsavelAprovacao write SetresponsavelAprovacao stored responsavelAprovacao_Specified;
    property situacaoAcordo:               situacaoAcordo       Index (IS_OPTN or IS_UNQL) read FsituacaoAcordo write SetsituacaoAcordo stored situacaoAcordo_Specified;
    property tipoAcordo:                   tipoAcordo           Index (IS_OPTN or IS_UNQL) read FtipoAcordo write SettipoAcordo stored tipoAcordo_Specified;
    property statusPagamento:              statusPagamento      Index (IS_OPTN or IS_UNQL) read FstatusPagamento write SetstatusPagamento stored statusPagamento_Specified;
    property statusCumprimento:            statusCumprimento    Index (IS_OPTN or IS_UNQL) read FstatusCumprimento write SetstatusCumprimento stored statusCumprimento_Specified;
    property valorNegociado:               Double               Index (IS_OPTN or IS_UNQL) read FvalorNegociado write SetvalorNegociado stored valorNegociado_Specified;
    property valorJuros:                   Double               Index (IS_OPTN or IS_UNQL) read FvalorJuros write SetvalorJuros stored valorJuros_Specified;
    property valorAjuste:                  Double               Index (IS_OPTN or IS_UNQL) read FvalorAjuste write SetvalorAjuste stored valorAjuste_Specified;
    property statusInadimplencia:          statusInadimplencia  Index (IS_OPTN or IS_UNQL) read FstatusInadimplencia write SetstatusInadimplencia stored statusInadimplencia_Specified;
    property dataInadimplencia:            TXSDateTime          Index (IS_OPTN or IS_UNQL) read FdataInadimplencia write SetdataInadimplencia stored dataInadimplencia_Specified;
    property dataUltimaModificacao:        TXSDateTime          Index (IS_OPTN or IS_UNQL) read FdataUltimaModificacao write SetdataUltimaModificacao stored dataUltimaModificacao_Specified;
    property responsavelUltimaModificacao: string               Index (IS_OPTN or IS_UNQL) read FresponsavelUltimaModificacao write SetresponsavelUltimaModificacao stored responsavelUltimaModificacao_Specified;
    property operacoes:                    operacoes            Index (IS_OPTN or IS_UNQL) read Foperacoes write Setoperacoes stored operacoes_Specified;
    property parcelas:                     parcelas             Index (IS_OPTN or IS_UNQL) read Fparcelas write Setparcelas stored parcelas_Specified;
    property escritorio:                   escritorio           Index (IS_OPTN or IS_UNQL) read Fescritorio write Setescritorio stored escritorio_Specified;
  end;



  // ************************************************************************ //
  // XML       : parcela, global, <complexType>
  // Namespace : http://service.commons.rico.ativos.com.br/
  // ************************************************************************ //
  parcela = class(TRemotable)
  private
    Fndg: string;
    Fndg_Specified: boolean;
    Fnumero: Integer;
    Fnumero_Specified: boolean;
    FdataVencimento: TXSDateTime;
    FdataVencimento_Specified: boolean;
    Fvalor: Double;
    Fvalor_Specified: boolean;
    Fstatus: statusParcela;
    Fstatus_Specified: boolean;
    FnumeroBoleto: Integer;
    FnumeroBoleto_Specified: boolean;
    FdataPagamento: TXSDateTime;
    FdataPagamento_Specified: boolean;
    procedure Setndg(Index: Integer; const Astring: string);
    function  ndg_Specified(Index: Integer): boolean;
    procedure Setnumero(Index: Integer; const AInteger: Integer);
    function  numero_Specified(Index: Integer): boolean;
    procedure SetdataVencimento(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataVencimento_Specified(Index: Integer): boolean;
    procedure Setvalor(Index: Integer; const ADouble: Double);
    function  valor_Specified(Index: Integer): boolean;
    procedure Setstatus(Index: Integer; const AstatusParcela: statusParcela);
    function  status_Specified(Index: Integer): boolean;
    procedure SetnumeroBoleto(Index: Integer; const AInteger: Integer);
    function  numeroBoleto_Specified(Index: Integer): boolean;
    procedure SetdataPagamento(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  dataPagamento_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ndg:            string         Index (IS_OPTN or IS_UNQL) read Fndg write Setndg stored ndg_Specified;
    property numero:         Integer        Index (IS_OPTN or IS_UNQL) read Fnumero write Setnumero stored numero_Specified;
    property dataVencimento: TXSDateTime    Index (IS_OPTN or IS_UNQL) read FdataVencimento write SetdataVencimento stored dataVencimento_Specified;
    property valor:          Double         Index (IS_OPTN or IS_UNQL) read Fvalor write Setvalor stored valor_Specified;
    property status:         statusParcela  Index (IS_OPTN or IS_UNQL) read Fstatus write Setstatus stored status_Specified;
    property numeroBoleto:   Integer        Index (IS_OPTN or IS_UNQL) read FnumeroBoleto write SetnumeroBoleto stored numeroBoleto_Specified;
    property dataPagamento:  TXSDateTime    Index (IS_OPTN or IS_UNQL) read FdataPagamento write SetdataPagamento stored dataPagamento_Specified;
  end;



  // ************************************************************************ //
  // XML       : endereco, global, <complexType>
  // Namespace : http://service.commons.rico.ativos.com.br/
  // ************************************************************************ //
  endereco = class(return)
  private
    Fcidade: string;
    Fcidade_Specified: boolean;
    Flogradouro: string;
    Flogradouro_Specified: boolean;
    Fnumero: string;
    Fnumero_Specified: boolean;
    Fcomplemento: string;
    Fcomplemento_Specified: boolean;
    Fbairro: string;
    Fbairro_Specified: boolean;
    Fcep: string;
    Fcep_Specified: boolean;
    Fuf: uf;
    Fuf_Specified: boolean;
    FtipoEndereco: tipoEndereco;
    FtipoEndereco_Specified: boolean;
    FenderecoCorrespondencia: enderecoCorrespondencia;
    FenderecoCorrespondencia_Specified: boolean;
    Fcliente: cliente;
    Fcliente_Specified: boolean;
    procedure Setcidade(Index: Integer; const Astring: string);
    function  cidade_Specified(Index: Integer): boolean;
    procedure Setlogradouro(Index: Integer; const Astring: string);
    function  logradouro_Specified(Index: Integer): boolean;
    procedure Setnumero(Index: Integer; const Astring: string);
    function  numero_Specified(Index: Integer): boolean;
    procedure Setcomplemento(Index: Integer; const Astring: string);
    function  complemento_Specified(Index: Integer): boolean;
    procedure Setbairro(Index: Integer; const Astring: string);
    function  bairro_Specified(Index: Integer): boolean;
    procedure Setcep(Index: Integer; const Astring: string);
    function  cep_Specified(Index: Integer): boolean;
    procedure Setuf(Index: Integer; const Auf: uf);
    function  uf_Specified(Index: Integer): boolean;
    procedure SettipoEndereco(Index: Integer; const AtipoEndereco: tipoEndereco);
    function  tipoEndereco_Specified(Index: Integer): boolean;
    procedure SetenderecoCorrespondencia(Index: Integer; const AenderecoCorrespondencia: enderecoCorrespondencia);
    function  enderecoCorrespondencia_Specified(Index: Integer): boolean;
    procedure Setcliente(Index: Integer; const Acliente: cliente);
    function  cliente_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property cidade:                  string                   Index (IS_OPTN or IS_UNQL) read Fcidade write Setcidade stored cidade_Specified;
    property logradouro:              string                   Index (IS_OPTN or IS_UNQL) read Flogradouro write Setlogradouro stored logradouro_Specified;
    property numero:                  string                   Index (IS_OPTN or IS_UNQL) read Fnumero write Setnumero stored numero_Specified;
    property complemento:             string                   Index (IS_OPTN or IS_UNQL) read Fcomplemento write Setcomplemento stored complemento_Specified;
    property bairro:                  string                   Index (IS_OPTN or IS_UNQL) read Fbairro write Setbairro stored bairro_Specified;
    property cep:                     string                   Index (IS_OPTN or IS_UNQL) read Fcep write Setcep stored cep_Specified;
    property uf:                      uf                       Index (IS_OPTN or IS_UNQL) read Fuf write Setuf stored uf_Specified;
    property tipoEndereco:            tipoEndereco             Index (IS_OPTN or IS_UNQL) read FtipoEndereco write SettipoEndereco stored tipoEndereco_Specified;
    property enderecoCorrespondencia: enderecoCorrespondencia  Index (IS_OPTN or IS_UNQL) read FenderecoCorrespondencia write SetenderecoCorrespondencia stored enderecoCorrespondencia_Specified;
    property cliente:                 cliente                  Index (IS_OPTN or IS_UNQL) read Fcliente write Setcliente stored cliente_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://service.commons.rico.ativos.com.br/
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : ClienteServiceSoapBinding
  // service   : ClienteService
  // port      : ClientePort
  // URL       : http://localhost:8680/rico-webservice/ClienteService
  // ************************************************************************ //
  ClienteService = interface(IInvokable)
  ['{4C58DB9D-4209-67C1-39EF-477EB0F60B4A}']
    function  pesquisarLstCliente(const ndg: string; const cpfCnpj: string): pesquisarLstClienteResponse; stdcall;
    function  listarClientesRetomados(const dataRetomada: TXSDateTime): pesquisarLstClienteResponse; stdcall;
    function  pesquisarCliente(const ndg: string; const cpfCnpj: string): cliente; stdcall;
    function  atualizarCliente(const cliente: cliente): string; stdcall;
  end;

function GetClienteService(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): ClienteService;


implementation
  uses System.SysUtils;

function GetClienteService(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): ClienteService;
const
  defWSDL = 'https://hmg-webservices.ativossa.com.br/rico-webservice/ClienteService?wsdl';
  defURL  = 'http://localhost:8680/rico-webservice/ClienteService';
  defSvc  = 'ClienteService';
  defPrt  = 'ClientePort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as ClienteService);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


procedure escritorio.Setnome(Index: Integer; const Astring: string);
begin
  Fnome := Astring;
  Fnome_Specified := True;
end;

function escritorio.nome_Specified(Index: Integer): boolean;
begin
  Result := Fnome_Specified;
end;

procedure escritorio.SetnomeAbreviado(Index: Integer; const Astring: string);
begin
  FnomeAbreviado := Astring;
  FnomeAbreviado_Specified := True;
end;

function escritorio.nomeAbreviado_Specified(Index: Integer): boolean;
begin
  Result := FnomeAbreviado_Specified;
end;

procedure escritorio.Settelefone(Index: Integer; const Astring: string);
begin
  Ftelefone := Astring;
  Ftelefone_Specified := True;
end;

function escritorio.telefone_Specified(Index: Integer): boolean;
begin
  Result := Ftelefone_Specified;
end;

procedure origem.Setsigla(Index: Integer; const Astring: string);
begin
  Fsigla := Astring;
  Fsigla_Specified := True;
end;

function origem.sigla_Specified(Index: Integer): boolean;
begin
  Result := Fsigla_Specified;
end;

procedure origem.Setdescricao(Index: Integer; const Astring: string);
begin
  Fdescricao := Astring;
  Fdescricao_Specified := True;
end;

function origem.descricao_Specified(Index: Integer): boolean;
begin
  Result := Fdescricao_Specified;
end;

procedure modalidade.Setcodigo(Index: Integer; const Astring: string);
begin
  Fcodigo := Astring;
  Fcodigo_Specified := True;
end;

function modalidade.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure modalidade.Setnome(Index: Integer; const Astring: string);
begin
  Fnome := Astring;
  Fnome_Specified := True;
end;

function modalidade.nome_Specified(Index: Integer): boolean;
begin
  Result := Fnome_Specified;
end;

procedure produto.Setcodigo(Index: Integer; const Astring: string);
begin
  Fcodigo := Astring;
  Fcodigo_Specified := True;
end;

function produto.codigo_Specified(Index: Integer): boolean;
begin
  Result := Fcodigo_Specified;
end;

procedure produto.Setnome(Index: Integer; const Astring: string);
begin
  Fnome := Astring;
  Fnome_Specified := True;
end;

function produto.nome_Specified(Index: Integer): boolean;
begin
  Result := Fnome_Specified;
end;

procedure return.Setmensagem(Index: Integer; const Astring: string);
begin
  Fmensagem := Astring;
  Fmensagem_Specified := True;
end;

function return.mensagem_Specified(Index: Integer): boolean;
begin
  Result := Fmensagem_Specified;
end;

destructor telefone.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcliente);
  inherited Destroy;
end;

procedure telefone.Setcliente(Index: Integer; const Acliente: cliente);
begin
  Fcliente := Acliente;
  Fcliente_Specified := True;
end;

function telefone.cliente_Specified(Index: Integer): boolean;
begin
  Result := Fcliente_Specified;
end;

destructor coobrigado.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Ftelefones)-1 do
    System.SysUtils.FreeAndNil(Ftelefones[I]);
  System.SetLength(Ftelefones, 0);
  for I := 0 to System.Length(Fenderecos)-1 do
    System.SysUtils.FreeAndNil(Fenderecos[I]);
  System.SetLength(Fenderecos, 0);
  inherited Destroy;
end;

procedure coobrigado.Setnome(Index: Integer; const Astring: string);
begin
  Fnome := Astring;
  Fnome_Specified := True;
end;

function coobrigado.nome_Specified(Index: Integer): boolean;
begin
  Result := Fnome_Specified;
end;

procedure coobrigado.SettipoPessoa(Index: Integer; const AtipoPessoa: tipoPessoa);
begin
  FtipoPessoa := AtipoPessoa;
  FtipoPessoa_Specified := True;
end;

function coobrigado.tipoPessoa_Specified(Index: Integer): boolean;
begin
  Result := FtipoPessoa_Specified;
end;

procedure coobrigado.SetcpfCnpj(Index: Integer; const Astring: string);
begin
  FcpfCnpj := Astring;
  FcpfCnpj_Specified := True;
end;

function coobrigado.cpfCnpj_Specified(Index: Integer): boolean;
begin
  Result := FcpfCnpj_Specified;
end;

procedure coobrigado.Setemail(Index: Integer; const Astring: string);
begin
  Femail := Astring;
  Femail_Specified := True;
end;

function coobrigado.email_Specified(Index: Integer): boolean;
begin
  Result := Femail_Specified;
end;

procedure coobrigado.SettipoNotificacao(Index: Integer; const AtipoNotificacao: tipoNotificacao);
begin
  FtipoNotificacao := AtipoNotificacao;
  FtipoNotificacao_Specified := True;
end;

function coobrigado.tipoNotificacao_Specified(Index: Integer): boolean;
begin
  Result := FtipoNotificacao_Specified;
end;

procedure coobrigado.SetstatusLocalizacao(Index: Integer; const AstatusLocalizacao: statusLocalizacao);
begin
  FstatusLocalizacao := AstatusLocalizacao;
  FstatusLocalizacao_Specified := True;
end;

function coobrigado.statusLocalizacao_Specified(Index: Integer): boolean;
begin
  Result := FstatusLocalizacao_Specified;
end;

procedure coobrigado.Settelefones(Index: Integer; const Atelefones: telefones);
begin
  Ftelefones := Atelefones;
  Ftelefones_Specified := True;
end;

function coobrigado.telefones_Specified(Index: Integer): boolean;
begin
  Result := Ftelefones_Specified;
end;

procedure coobrigado.Setenderecos(Index: Integer; const Aenderecos: enderecos);
begin
  Fenderecos := Aenderecos;
  Fenderecos_Specified := True;
end;

function coobrigado.enderecos_Specified(Index: Integer): boolean;
begin
  Result := Fenderecos_Specified;
end;

procedure coobrigado.SetidOperacao(Index: Integer; const AInteger: Integer);
begin
  FidOperacao := AInteger;
  FidOperacao_Specified := True;
end;

function coobrigado.idOperacao_Specified(Index: Integer): boolean;
begin
  Result := FidOperacao_Specified;
end;

destructor cliente.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Foperacoes)-1 do
    System.SysUtils.FreeAndNil(Foperacoes[I]);
  System.SetLength(Foperacoes, 0);
  for I := 0 to System.Length(Facordos)-1 do
    System.SysUtils.FreeAndNil(Facordos[I]);
  System.SetLength(Facordos, 0);
  System.SysUtils.FreeAndNil(FdataNascimento);
  inherited Destroy;
end;

procedure cliente.SetdataNascimento(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataNascimento := ATXSDateTime;
  FdataNascimento_Specified := True;
end;

function cliente.dataNascimento_Specified(Index: Integer): boolean;
begin
  Result := FdataNascimento_Specified;
end;

procedure cliente.Setoperacoes(Index: Integer; const Aoperacoes2: operacoes2);
begin
  Foperacoes := Aoperacoes2;
  Foperacoes_Specified := True;
end;

function cliente.operacoes_Specified(Index: Integer): boolean;
begin
  Result := Foperacoes_Specified;
end;

procedure cliente.Setacordos(Index: Integer; const Aacordos: acordos);
begin
  Facordos := Aacordos;
  Facordos_Specified := True;
end;

function cliente.acordos_Specified(Index: Integer): boolean;
begin
  Result := Facordos_Specified;
end;

destructor operacao.Destroy;
begin
  System.SysUtils.FreeAndNil(Fproduto);
  System.SysUtils.FreeAndNil(Fmodalidade);
  System.SysUtils.FreeAndNil(FdataVencimento);
  System.SysUtils.FreeAndNil(FdataInclusao);
  System.SysUtils.FreeAndNil(FdataStatusOperacao);
  System.SysUtils.FreeAndNil(Forigem);
  inherited Destroy;
end;

procedure operacao.SetidOperacao(Index: Integer; const AInteger: Integer);
begin
  FidOperacao := AInteger;
  FidOperacao_Specified := True;
end;

function operacao.idOperacao_Specified(Index: Integer): boolean;
begin
  Result := FidOperacao_Specified;
end;

procedure operacao.Setcontrato(Index: Integer; const Astring: string);
begin
  Fcontrato := Astring;
  Fcontrato_Specified := True;
end;

function operacao.contrato_Specified(Index: Integer): boolean;
begin
  Result := Fcontrato_Specified;
end;

procedure operacao.Setlote(Index: Integer; const AInteger: Integer);
begin
  Flote := AInteger;
  Flote_Specified := True;
end;

function operacao.lote_Specified(Index: Integer): boolean;
begin
  Result := Flote_Specified;
end;

procedure operacao.SetqtdeNegociacao(Index: Integer; const AInteger: Integer);
begin
  FqtdeNegociacao := AInteger;
  FqtdeNegociacao_Specified := True;
end;

function operacao.qtdeNegociacao_Specified(Index: Integer): boolean;
begin
  Result := FqtdeNegociacao_Specified;
end;

procedure operacao.Setproduto(Index: Integer; const Aproduto: produto);
begin
  Fproduto := Aproduto;
  Fproduto_Specified := True;
end;

function operacao.produto_Specified(Index: Integer): boolean;
begin
  Result := Fproduto_Specified;
end;

procedure operacao.Setmodalidade(Index: Integer; const Amodalidade: modalidade);
begin
  Fmodalidade := Amodalidade;
  Fmodalidade_Specified := True;
end;

function operacao.modalidade_Specified(Index: Integer): boolean;
begin
  Result := Fmodalidade_Specified;
end;

procedure operacao.SetstatusAcordo(Index: Integer; const Astring: string);
begin
  FstatusAcordo := Astring;
  FstatusAcordo_Specified := True;
end;

function operacao.statusAcordo_Specified(Index: Integer): boolean;
begin
  Result := FstatusAcordo_Specified;
end;

procedure operacao.SetstatusOperacao(Index: Integer; const Astring: string);
begin
  FstatusOperacao := Astring;
  FstatusOperacao_Specified := True;
end;

function operacao.statusOperacao_Specified(Index: Integer): boolean;
begin
  Result := FstatusOperacao_Specified;
end;

procedure operacao.SetvalorPresente(Index: Integer; const ADouble: Double);
begin
  FvalorPresente := ADouble;
  FvalorPresente_Specified := True;
end;

function operacao.valorPresente_Specified(Index: Integer): boolean;
begin
  Result := FvalorPresente_Specified;
end;

procedure operacao.SetvalorPresenteFinanceiro(Index: Integer; const ADouble: Double);
begin
  FvalorPresenteFinanceiro := ADouble;
  FvalorPresenteFinanceiro_Specified := True;
end;

function operacao.valorPresenteFinanceiro_Specified(Index: Integer): boolean;
begin
  Result := FvalorPresenteFinanceiro_Specified;
end;

procedure operacao.SetvalorAtualizado(Index: Integer; const ADouble: Double);
begin
  FvalorAtualizado := ADouble;
  FvalorAtualizado_Specified := True;
end;

function operacao.valorAtualizado_Specified(Index: Integer): boolean;
begin
  Result := FvalorAtualizado_Specified;
end;

procedure operacao.SetultimoValorNegociado(Index: Integer; const ADouble: Double);
begin
  FultimoValorNegociado := ADouble;
  FultimoValorNegociado_Specified := True;
end;

function operacao.ultimoValorNegociado_Specified(Index: Integer): boolean;
begin
  Result := FultimoValorNegociado_Specified;
end;

procedure operacao.SetdataVencimento(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataVencimento := ATXSDateTime;
  FdataVencimento_Specified := True;
end;

function operacao.dataVencimento_Specified(Index: Integer): boolean;
begin
  Result := FdataVencimento_Specified;
end;

procedure operacao.SetvalorLiquidacao(Index: Integer; const ADouble: Double);
begin
  FvalorLiquidacao := ADouble;
  FvalorLiquidacao_Specified := True;
end;

function operacao.valorLiquidacao_Specified(Index: Integer): boolean;
begin
  Result := FvalorLiquidacao_Specified;
end;

procedure operacao.SetvalorSaldoAquisicao(Index: Integer; const ADouble: Double);
begin
  FvalorSaldoAquisicao := ADouble;
  FvalorSaldoAquisicao_Specified := True;
end;

function operacao.valorSaldoAquisicao_Specified(Index: Integer): boolean;
begin
  Result := FvalorSaldoAquisicao_Specified;
end;

procedure operacao.SetvalorSaldoPerdas(Index: Integer; const ADouble: Double);
begin
  FvalorSaldoPerdas := ADouble;
  FvalorSaldoPerdas_Specified := True;
end;

function operacao.valorSaldoPerdas_Specified(Index: Integer): boolean;
begin
  Result := FvalorSaldoPerdas_Specified;
end;

procedure operacao.SetvalorSaldoResidual(Index: Integer; const ADouble: Double);
begin
  FvalorSaldoResidual := ADouble;
  FvalorSaldoResidual_Specified := True;
end;

function operacao.valorSaldoResidual_Specified(Index: Integer): boolean;
begin
  Result := FvalorSaldoResidual_Specified;
end;

procedure operacao.SetdataInclusao(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataInclusao := ATXSDateTime;
  FdataInclusao_Specified := True;
end;

function operacao.dataInclusao_Specified(Index: Integer): boolean;
begin
  Result := FdataInclusao_Specified;
end;

procedure operacao.SetstatusContabil(Index: Integer; const Astring: string);
begin
  FstatusContabil := Astring;
  FstatusContabil_Specified := True;
end;

function operacao.statusContabil_Specified(Index: Integer): boolean;
begin
  Result := FstatusContabil_Specified;
end;

procedure operacao.Setcampanha(Index: Integer; const AInteger: Integer);
begin
  Fcampanha := AInteger;
  Fcampanha_Specified := True;
end;

function operacao.campanha_Specified(Index: Integer): boolean;
begin
  Result := Fcampanha_Specified;
end;

procedure operacao.SetdataStatusOperacao(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataStatusOperacao := ATXSDateTime;
  FdataStatusOperacao_Specified := True;
end;

function operacao.dataStatusOperacao_Specified(Index: Integer): boolean;
begin
  Result := FdataStatusOperacao_Specified;
end;

procedure operacao.Setclasse(Index: Integer; const AInteger: Integer);
begin
  Fclasse := AInteger;
  Fclasse_Specified := True;
end;

function operacao.classe_Specified(Index: Integer): boolean;
begin
  Result := Fclasse_Specified;
end;

procedure operacao.Setsegmento(Index: Integer; const AInteger: Integer);
begin
  Fsegmento := AInteger;
  Fsegmento_Specified := True;
end;

function operacao.segmento_Specified(Index: Integer): boolean;
begin
  Result := Fsegmento_Specified;
end;

procedure operacao.Settipo(Index: Integer; const AInteger: Integer);
begin
  Ftipo := AInteger;
  Ftipo_Specified := True;
end;

function operacao.tipo_Specified(Index: Integer): boolean;
begin
  Result := Ftipo_Specified;
end;

procedure operacao.SetesquemaNegociacao(Index: Integer; const AInteger: Integer);
begin
  FesquemaNegociacao := AInteger;
  FesquemaNegociacao_Specified := True;
end;

function operacao.esquemaNegociacao_Specified(Index: Integer): boolean;
begin
  Result := FesquemaNegociacao_Specified;
end;

procedure operacao.SetstatusSPC(Index: Integer; const Astring: string);
begin
  FstatusSPC := Astring;
  FstatusSPC_Specified := True;
end;

function operacao.statusSPC_Specified(Index: Integer): boolean;
begin
  Result := FstatusSPC_Specified;
end;

procedure operacao.SetstatusHabilitado(Index: Integer; const Astring: string);
begin
  FstatusHabilitado := Astring;
  FstatusHabilitado_Specified := True;
end;

function operacao.statusHabilitado_Specified(Index: Integer): boolean;
begin
  Result := FstatusHabilitado_Specified;
end;

procedure operacao.SetqtdCedulas(Index: Integer; const AInteger: Integer);
begin
  FqtdCedulas := AInteger;
  FqtdCedulas_Specified := True;
end;

function operacao.qtdCedulas_Specified(Index: Integer): boolean;
begin
  Result := FqtdCedulas_Specified;
end;

procedure operacao.SetprocuradoriaResponsavel(Index: Integer; const Astring: string);
begin
  FprocuradoriaResponsavel := Astring;
  FprocuradoriaResponsavel_Specified := True;
end;

function operacao.procuradoriaResponsavel_Specified(Index: Integer): boolean;
begin
  Result := FprocuradoriaResponsavel_Specified;
end;

procedure operacao.SetiofResponsavel(Index: Integer; const ADouble: Double);
begin
  FiofResponsavel := ADouble;
  FiofResponsavel_Specified := True;
end;

function operacao.iofResponsavel_Specified(Index: Integer): boolean;
begin
  Result := FiofResponsavel_Specified;
end;

procedure operacao.SetqtdNegociacoes(Index: Integer; const AInteger: Integer);
begin
  FqtdNegociacoes := AInteger;
  FqtdNegociacoes_Specified := True;
end;

function operacao.qtdNegociacoes_Specified(Index: Integer): boolean;
begin
  Result := FqtdNegociacoes_Specified;
end;

procedure operacao.SetvalorNegociado(Index: Integer; const ADouble: Double);
begin
  FvalorNegociado := ADouble;
  FvalorNegociado_Specified := True;
end;

function operacao.valorNegociado_Specified(Index: Integer): boolean;
begin
  Result := FvalorNegociado_Specified;
end;

procedure operacao.SetvalorSaldoOperacao(Index: Integer; const ADouble: Double);
begin
  FvalorSaldoOperacao := ADouble;
  FvalorSaldoOperacao_Specified := True;
end;

function operacao.valorSaldoOperacao_Specified(Index: Integer): boolean;
begin
  Result := FvalorSaldoOperacao_Specified;
end;

procedure operacao.SettaxaProduto(Index: Integer; const ADouble: Double);
begin
  FtaxaProduto := ADouble;
  FtaxaProduto_Specified := True;
end;

function operacao.taxaProduto_Specified(Index: Integer): boolean;
begin
  Result := FtaxaProduto_Specified;
end;

procedure operacao.Setagencia(Index: Integer; const Astring: string);
begin
  Fagencia := Astring;
  Fagencia_Specified := True;
end;

function operacao.agencia_Specified(Index: Integer): boolean;
begin
  Result := Fagencia_Specified;
end;

procedure operacao.Setorigem(Index: Integer; const Aorigem: origem);
begin
  Forigem := Aorigem;
  Forigem_Specified := True;
end;

function operacao.origem_Specified(Index: Integer): boolean;
begin
  Result := Forigem_Specified;
end;

destructor acordo.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Foperacoes)-1 do
    System.SysUtils.FreeAndNil(Foperacoes[I]);
  System.SetLength(Foperacoes, 0);
  for I := 0 to System.Length(Fparcelas)-1 do
    System.SysUtils.FreeAndNil(Fparcelas[I]);
  System.SetLength(Fparcelas, 0);
  System.SysUtils.FreeAndNil(FdataAcordo);
  System.SysUtils.FreeAndNil(FdataAprovacao);
  System.SysUtils.FreeAndNil(FdataInadimplencia);
  System.SysUtils.FreeAndNil(FdataUltimaModificacao);
  System.SysUtils.FreeAndNil(Fescritorio);
  inherited Destroy;
end;

procedure acordo.SetnumeroAcordo(Index: Integer; const AInteger: Integer);
begin
  FnumeroAcordo := AInteger;
  FnumeroAcordo_Specified := True;
end;

function acordo.numeroAcordo_Specified(Index: Integer): boolean;
begin
  Result := FnumeroAcordo_Specified;
end;

procedure acordo.SetdataAcordo(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataAcordo := ATXSDateTime;
  FdataAcordo_Specified := True;
end;

function acordo.dataAcordo_Specified(Index: Integer): boolean;
begin
  Result := FdataAcordo_Specified;
end;

procedure acordo.SetdataAprovacao(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataAprovacao := ATXSDateTime;
  FdataAprovacao_Specified := True;
end;

function acordo.dataAprovacao_Specified(Index: Integer): boolean;
begin
  Result := FdataAprovacao_Specified;
end;

procedure acordo.Setresponsavel(Index: Integer; const Astring: string);
begin
  Fresponsavel := Astring;
  Fresponsavel_Specified := True;
end;

function acordo.responsavel_Specified(Index: Integer): boolean;
begin
  Result := Fresponsavel_Specified;
end;

procedure acordo.SetresponsavelAprovacao(Index: Integer; const Astring: string);
begin
  FresponsavelAprovacao := Astring;
  FresponsavelAprovacao_Specified := True;
end;

function acordo.responsavelAprovacao_Specified(Index: Integer): boolean;
begin
  Result := FresponsavelAprovacao_Specified;
end;

procedure acordo.SetsituacaoAcordo(Index: Integer; const AsituacaoAcordo: situacaoAcordo);
begin
  FsituacaoAcordo := AsituacaoAcordo;
  FsituacaoAcordo_Specified := True;
end;

function acordo.situacaoAcordo_Specified(Index: Integer): boolean;
begin
  Result := FsituacaoAcordo_Specified;
end;

procedure acordo.SettipoAcordo(Index: Integer; const AtipoAcordo: tipoAcordo);
begin
  FtipoAcordo := AtipoAcordo;
  FtipoAcordo_Specified := True;
end;

function acordo.tipoAcordo_Specified(Index: Integer): boolean;
begin
  Result := FtipoAcordo_Specified;
end;

procedure acordo.SetstatusPagamento(Index: Integer; const AstatusPagamento: statusPagamento);
begin
  FstatusPagamento := AstatusPagamento;
  FstatusPagamento_Specified := True;
end;

function acordo.statusPagamento_Specified(Index: Integer): boolean;
begin
  Result := FstatusPagamento_Specified;
end;

procedure acordo.SetstatusCumprimento(Index: Integer; const AstatusCumprimento: statusCumprimento);
begin
  FstatusCumprimento := AstatusCumprimento;
  FstatusCumprimento_Specified := True;
end;

function acordo.statusCumprimento_Specified(Index: Integer): boolean;
begin
  Result := FstatusCumprimento_Specified;
end;

procedure acordo.SetvalorNegociado(Index: Integer; const ADouble: Double);
begin
  FvalorNegociado := ADouble;
  FvalorNegociado_Specified := True;
end;

function acordo.valorNegociado_Specified(Index: Integer): boolean;
begin
  Result := FvalorNegociado_Specified;
end;

procedure acordo.SetvalorJuros(Index: Integer; const ADouble: Double);
begin
  FvalorJuros := ADouble;
  FvalorJuros_Specified := True;
end;

function acordo.valorJuros_Specified(Index: Integer): boolean;
begin
  Result := FvalorJuros_Specified;
end;

procedure acordo.SetvalorAjuste(Index: Integer; const ADouble: Double);
begin
  FvalorAjuste := ADouble;
  FvalorAjuste_Specified := True;
end;

function acordo.valorAjuste_Specified(Index: Integer): boolean;
begin
  Result := FvalorAjuste_Specified;
end;

procedure acordo.SetstatusInadimplencia(Index: Integer; const AstatusInadimplencia: statusInadimplencia);
begin
  FstatusInadimplencia := AstatusInadimplencia;
  FstatusInadimplencia_Specified := True;
end;

function acordo.statusInadimplencia_Specified(Index: Integer): boolean;
begin
  Result := FstatusInadimplencia_Specified;
end;

procedure acordo.SetdataInadimplencia(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataInadimplencia := ATXSDateTime;
  FdataInadimplencia_Specified := True;
end;

function acordo.dataInadimplencia_Specified(Index: Integer): boolean;
begin
  Result := FdataInadimplencia_Specified;
end;

procedure acordo.SetdataUltimaModificacao(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataUltimaModificacao := ATXSDateTime;
  FdataUltimaModificacao_Specified := True;
end;

function acordo.dataUltimaModificacao_Specified(Index: Integer): boolean;
begin
  Result := FdataUltimaModificacao_Specified;
end;

procedure acordo.SetresponsavelUltimaModificacao(Index: Integer; const Astring: string);
begin
  FresponsavelUltimaModificacao := Astring;
  FresponsavelUltimaModificacao_Specified := True;
end;

function acordo.responsavelUltimaModificacao_Specified(Index: Integer): boolean;
begin
  Result := FresponsavelUltimaModificacao_Specified;
end;

procedure acordo.Setoperacoes(Index: Integer; const Aoperacoes: operacoes);
begin
  Foperacoes := Aoperacoes;
  Foperacoes_Specified := True;
end;

function acordo.operacoes_Specified(Index: Integer): boolean;
begin
  Result := Foperacoes_Specified;
end;

procedure acordo.Setparcelas(Index: Integer; const Aparcelas: parcelas);
begin
  Fparcelas := Aparcelas;
  Fparcelas_Specified := True;
end;

function acordo.parcelas_Specified(Index: Integer): boolean;
begin
  Result := Fparcelas_Specified;
end;

procedure acordo.Setescritorio(Index: Integer; const Aescritorio: escritorio);
begin
  Fescritorio := Aescritorio;
  Fescritorio_Specified := True;
end;

function acordo.escritorio_Specified(Index: Integer): boolean;
begin
  Result := Fescritorio_Specified;
end;

destructor parcela.Destroy;
begin
  System.SysUtils.FreeAndNil(FdataVencimento);
  System.SysUtils.FreeAndNil(FdataPagamento);
  inherited Destroy;
end;

procedure parcela.Setndg(Index: Integer; const Astring: string);
begin
  Fndg := Astring;
  Fndg_Specified := True;
end;

function parcela.ndg_Specified(Index: Integer): boolean;
begin
  Result := Fndg_Specified;
end;

procedure parcela.Setnumero(Index: Integer; const AInteger: Integer);
begin
  Fnumero := AInteger;
  Fnumero_Specified := True;
end;

function parcela.numero_Specified(Index: Integer): boolean;
begin
  Result := Fnumero_Specified;
end;

procedure parcela.SetdataVencimento(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataVencimento := ATXSDateTime;
  FdataVencimento_Specified := True;
end;

function parcela.dataVencimento_Specified(Index: Integer): boolean;
begin
  Result := FdataVencimento_Specified;
end;

procedure parcela.Setvalor(Index: Integer; const ADouble: Double);
begin
  Fvalor := ADouble;
  Fvalor_Specified := True;
end;

function parcela.valor_Specified(Index: Integer): boolean;
begin
  Result := Fvalor_Specified;
end;

procedure parcela.Setstatus(Index: Integer; const AstatusParcela: statusParcela);
begin
  Fstatus := AstatusParcela;
  Fstatus_Specified := True;
end;

function parcela.status_Specified(Index: Integer): boolean;
begin
  Result := Fstatus_Specified;
end;

procedure parcela.SetnumeroBoleto(Index: Integer; const AInteger: Integer);
begin
  FnumeroBoleto := AInteger;
  FnumeroBoleto_Specified := True;
end;

function parcela.numeroBoleto_Specified(Index: Integer): boolean;
begin
  Result := FnumeroBoleto_Specified;
end;

procedure parcela.SetdataPagamento(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FdataPagamento := ATXSDateTime;
  FdataPagamento_Specified := True;
end;

function parcela.dataPagamento_Specified(Index: Integer): boolean;
begin
  Result := FdataPagamento_Specified;
end;

destructor endereco.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcliente);
  inherited Destroy;
end;

procedure endereco.Setcidade(Index: Integer; const Astring: string);
begin
  Fcidade := Astring;
  Fcidade_Specified := True;
end;

function endereco.cidade_Specified(Index: Integer): boolean;
begin
  Result := Fcidade_Specified;
end;

procedure endereco.Setlogradouro(Index: Integer; const Astring: string);
begin
  Flogradouro := Astring;
  Flogradouro_Specified := True;
end;

function endereco.logradouro_Specified(Index: Integer): boolean;
begin
  Result := Flogradouro_Specified;
end;

procedure endereco.Setnumero(Index: Integer; const Astring: string);
begin
  Fnumero := Astring;
  Fnumero_Specified := True;
end;

function endereco.numero_Specified(Index: Integer): boolean;
begin
  Result := Fnumero_Specified;
end;

procedure endereco.Setcomplemento(Index: Integer; const Astring: string);
begin
  Fcomplemento := Astring;
  Fcomplemento_Specified := True;
end;

function endereco.complemento_Specified(Index: Integer): boolean;
begin
  Result := Fcomplemento_Specified;
end;

procedure endereco.Setbairro(Index: Integer; const Astring: string);
begin
  Fbairro := Astring;
  Fbairro_Specified := True;
end;

function endereco.bairro_Specified(Index: Integer): boolean;
begin
  Result := Fbairro_Specified;
end;

procedure endereco.Setcep(Index: Integer; const Astring: string);
begin
  Fcep := Astring;
  Fcep_Specified := True;
end;

function endereco.cep_Specified(Index: Integer): boolean;
begin
  Result := Fcep_Specified;
end;

procedure endereco.Setuf(Index: Integer; const Auf: uf);
begin
  Fuf := Auf;
  Fuf_Specified := True;
end;

function endereco.uf_Specified(Index: Integer): boolean;
begin
  Result := Fuf_Specified;
end;

procedure endereco.SettipoEndereco(Index: Integer; const AtipoEndereco: tipoEndereco);
begin
  FtipoEndereco := AtipoEndereco;
  FtipoEndereco_Specified := True;
end;

function endereco.tipoEndereco_Specified(Index: Integer): boolean;
begin
  Result := FtipoEndereco_Specified;
end;

procedure endereco.SetenderecoCorrespondencia(Index: Integer; const AenderecoCorrespondencia: enderecoCorrespondencia);
begin
  FenderecoCorrespondencia := AenderecoCorrespondencia;
  FenderecoCorrespondencia_Specified := True;
end;

function endereco.enderecoCorrespondencia_Specified(Index: Integer): boolean;
begin
  Result := FenderecoCorrespondencia_Specified;
end;

procedure endereco.Setcliente(Index: Integer; const Acliente: cliente);
begin
  Fcliente := Acliente;
  Fcliente_Specified := True;
end;

function endereco.cliente_Specified(Index: Integer): boolean;
begin
  Result := Fcliente_Specified;
end;

initialization
  { ClienteService }
  InvRegistry.RegisterInterface(TypeInfo(ClienteService), 'http://service.commons.rico.ativos.com.br/', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(ClienteService), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(ClienteService), ioDocument);
  { ClienteService.pesquisarLstCliente }
  InvRegistry.RegisterMethodInfo(TypeInfo(ClienteService), 'pesquisarLstCliente', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ClienteService), 'pesquisarLstCliente', 'ndg', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ClienteService), 'pesquisarLstCliente', 'cpfCnpj', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ClienteService), 'pesquisarLstCliente', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { ClienteService.listarClientesRetomados }
  InvRegistry.RegisterMethodInfo(TypeInfo(ClienteService), 'listarClientesRetomados', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNBD or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ClienteService), 'listarClientesRetomados', 'dataRetomada', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ClienteService), 'listarClientesRetomados', 'return', '',
                                '[ArrayItemName="return"]', IS_UNBD or IS_UNQL);
  { ClienteService.pesquisarCliente }
  InvRegistry.RegisterMethodInfo(TypeInfo(ClienteService), 'pesquisarCliente', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ClienteService), 'pesquisarCliente', 'ndg', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ClienteService), 'pesquisarCliente', 'cpfCnpj', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ClienteService), 'pesquisarCliente', 'return', '',
                                '', IS_UNQL);
  { ClienteService.atualizarCliente }
  InvRegistry.RegisterMethodInfo(TypeInfo(ClienteService), 'atualizarCliente', '',
                                 '[ReturnName="return"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ClienteService), 'atualizarCliente', 'cliente', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(ClienteService), 'atualizarCliente', 'return', '',
                                '', IS_UNQL);
  RemClassRegistry.RegisterXSInfo(TypeInfo(parcelas), 'http://service.commons.rico.ativos.com.br/', 'parcelas');
  RemClassRegistry.RegisterXSInfo(TypeInfo(statusCumprimento), 'http://service.commons.rico.ativos.com.br/', 'statusCumprimento');
  RemClassRegistry.RegisterXSInfo(TypeInfo(statusInadimplencia), 'http://service.commons.rico.ativos.com.br/', 'statusInadimplencia');
  RemClassRegistry.RegisterXSInfo(TypeInfo(operacoes), 'http://service.commons.rico.ativos.com.br/', 'operacoes');
  RemClassRegistry.RegisterXSInfo(TypeInfo(uf), 'http://service.commons.rico.ativos.com.br/', 'uf');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(uf), 'TO_', 'TO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(tipoEndereco), 'http://service.commons.rico.ativos.com.br/', 'tipoEndereco');
  RemClassRegistry.RegisterXSInfo(TypeInfo(enderecoCorrespondencia), 'http://service.commons.rico.ativos.com.br/', 'enderecoCorrespondencia');
  RemClassRegistry.RegisterXSInfo(TypeInfo(statusParcela), 'http://service.commons.rico.ativos.com.br/', 'statusParcela');
  RemClassRegistry.RegisterXSInfo(TypeInfo(tipoTelefone), 'http://service.commons.rico.ativos.com.br/', 'tipoTelefone');
  RemClassRegistry.RegisterXSInfo(TypeInfo(statusTelefone), 'http://service.commons.rico.ativos.com.br/', 'statusTelefone');
  RemClassRegistry.RegisterXSInfo(TypeInfo(acordos), 'http://service.commons.rico.ativos.com.br/', 'acordos');
  RemClassRegistry.RegisterXSInfo(TypeInfo(statusLocalizacao), 'http://service.commons.rico.ativos.com.br/', 'statusLocalizacao');
  RemClassRegistry.RegisterXSInfo(TypeInfo(tipoNotificacao), 'http://service.commons.rico.ativos.com.br/', 'tipoNotificacao');
  RemClassRegistry.RegisterXSInfo(TypeInfo(tipoPessoa), 'http://service.commons.rico.ativos.com.br/', 'tipoPessoa');
  RemClassRegistry.RegisterXSInfo(TypeInfo(pesquisarLstClienteResponse), 'http://service.commons.rico.ativos.com.br/', 'pesquisarLstClienteResponse');
  RemClassRegistry.RegisterXSClass(escritorio, 'http://service.commons.rico.ativos.com.br/', 'escritorio');
  RemClassRegistry.RegisterXSInfo(TypeInfo(operacoes2), 'http://service.commons.rico.ativos.com.br/', 'operacoes2', 'operacoes');
  RemClassRegistry.RegisterXSClass(origem, 'http://service.commons.rico.ativos.com.br/', 'origem');
  RemClassRegistry.RegisterXSClass(modalidade, 'http://service.commons.rico.ativos.com.br/', 'modalidade');
  RemClassRegistry.RegisterXSInfo(TypeInfo(statusPagamento), 'http://service.commons.rico.ativos.com.br/', 'statusPagamento');
  RemClassRegistry.RegisterXSInfo(TypeInfo(tipoAcordo), 'http://service.commons.rico.ativos.com.br/', 'tipoAcordo');
  RemClassRegistry.RegisterXSInfo(TypeInfo(situacaoAcordo), 'http://service.commons.rico.ativos.com.br/', 'situacaoAcordo');
  RemClassRegistry.RegisterXSClass(produto, 'http://service.commons.rico.ativos.com.br/', 'produto');
  RemClassRegistry.RegisterXSInfo(TypeInfo(enderecos), 'http://service.commons.rico.ativos.com.br/', 'enderecos');
  RemClassRegistry.RegisterXSInfo(TypeInfo(telefones), 'http://service.commons.rico.ativos.com.br/', 'telefones');
  RemClassRegistry.RegisterXSClass(return, 'http://service.commons.rico.ativos.com.br/', 'return');
  RemClassRegistry.RegisterXSClass(telefone, 'http://service.commons.rico.ativos.com.br/', 'telefone');
  RemClassRegistry.RegisterXSClass(coobrigado, 'http://service.commons.rico.ativos.com.br/', 'coobrigado');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(coobrigado), 'telefones', '[ArrayItemName="telefone"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(coobrigado), 'enderecos', '[ArrayItemName="endereco"]');
  RemClassRegistry.RegisterXSClass(cliente, 'http://service.commons.rico.ativos.com.br/', 'cliente');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(cliente), 'operacoes', '[ArrayItemName="operacao"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(cliente), 'acordos', '[ArrayItemName="acordo"]');
  RemClassRegistry.RegisterXSClass(operacao, 'http://service.commons.rico.ativos.com.br/', 'operacao');
  RemClassRegistry.RegisterXSClass(acordo, 'http://service.commons.rico.ativos.com.br/', 'acordo');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(acordo), 'operacoes', '[ArrayItemName="operacao"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(acordo), 'parcelas', '[ArrayItemName="parcela"]');
  RemClassRegistry.RegisterXSClass(parcela, 'http://service.commons.rico.ativos.com.br/', 'parcela');
  RemClassRegistry.RegisterXSClass(endereco, 'http://service.commons.rico.ativos.com.br/', 'endereco');

end.