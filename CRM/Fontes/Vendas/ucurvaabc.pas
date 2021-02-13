unit ucurvaabc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, 
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, RzEdit, 
  RzButton, JvExDBGrids, JvDBGrid, frxClass, frxExportBaseDialog, frxExportPDF,
  frxDBSet, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.DBX.Migrate;

type
  Tfcurvaabc = class(TForm)
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    Panel1: TPanel;
    btnfiltrar: TRzToolButton;
    RzNumericEdit1: TRzNumericEdit;
    JvDBGrid1: TJvDBGrid;
    uniQBancosEmpresas: TFDQuery;
    uniQBancosEmpresasCODIGO: TFloatField;
    uniQBancosEmpresasNOME: TStringField;
    uniQBancosEmpresasCOMISSAOFIXA: TStringField;
    uniQBancosEmpresasCOMISSAO: TFloatField;
    uniQBancosEmpresasCENTRALIZADORA: TStringField;
    uniQBancosEmpresasCC_TIPO: TStringField;
    uniQBancosEmpresasCE_C1: TFloatField;
    uniQBancosEmpresasCE_C2: TFloatField;
    uniQBancosEmpresasCE_C3: TFloatField;
    uniQBancosEmpresasCE_C4: TFloatField;
    uniQBancosEmpresasCE_C5: TFloatField;
    uniQBancosEmpresasCE_C6: TFloatField;
    uniQBancosEmpresasCE_C7: TFloatField;
    uniQBancosEmpresasCE_C8: TFloatField;
    uniQBancosEmpresasCE_C9: TFloatField;
    uniQBancosEmpresasPREFCONT: TStringField;
    uniQBancosEmpresasCONTADOR: TFloatField;
    uniQBancosEmpresasENDERECO: TStringField;
    uniQBancosEmpresasSETOR: TStringField;
    uniQBancosEmpresasNUMERO: TStringField;
    uniQBancosEmpresasCIDADE: TStringField;
    uniQBancosEmpresasUF: TStringField;
    uniQBancosEmpresasCEP: TStringField;
    uniQBancosEmpresasCPF: TStringField;
    uniQBancosEmpresasCNPJ: TStringField;
    uniQBancosEmpresasMETA_CAIXA: TFloatField;
    uniQBancosEmpresasMETA_REGULARIZACAO: TFloatField;
    uniQBancosEmpresasMULTA_PADRAO: TFloatField;
    uniQBancosEmpresasJUROS_PADRAO: TFloatField;
    uniQBancosEmpresasHONORARIOS_PADRAO: TFloatField;
    uniQBancosEmpresasDESCONTO_PADRAO: TFloatField;
    uniQBancosEmpresasCUSTO_BOLETO_PADRAO: TFloatField;
    uniQBancosEmpresasFATOR_PARC_PADRAO: TFloatField;
    uniQBancosEmpresasVALOR_PROTESTO_PADRAO: TFloatField;
    uniQBancosEmpresasPESO_CAIXA: TFloatField;
    uniQBancosEmpresasPESO_REGULARIZACAO: TFloatField;
    uniQBancosEmpresasINCLUIRDESPESAS: TStringField;
    uniQBancosEmpresasRETENCAO: TFloatField;
    uniQBancosEmpresasDT_CONTRATO: TSQLTimeStampField;
    uniQBancosEmpresasUSA_TAB_ATUALIZACAO: TStringField;
    uniQBancosEmpresasREPRESENTANTE: TStringField;
    uniQBancosEmpresasREP_ENDERECO: TStringField;
    uniQBancosEmpresasREP_SETOR: TStringField;
    uniQBancosEmpresasREP_CIDADE: TStringField;
    uniQBancosEmpresasREP_UF: TStringField;
    uniQBancosEmpresasREP_CEP: TStringField;
    uniQBancosEmpresasREP_CPF: TStringField;
    uniQBancosEmpresasREP_PROFISSAO: TStringField;
    uniQBancosEmpresasREP_CARGO: TStringField;
    uniQBancosEmpresasREP_NACIONALIDADE: TStringField;
    uniQBancosEmpresasREP_ESTADOCIVIL: TStringField;
    uniQBancosEmpresasFONE: TStringField;
    uniQBancosEmpresasFAX: TStringField;
    uniQBancosEmpresasDIAS_COB_HONORARIOS: TFloatField;
    uniQBancosEmpresasEMAIL1: TStringField;
    uniQBancosEmpresasEMAIL2: TStringField;
    uniQBancosEmpresasNRCONTRATO: TStringField;
    uniQBancosEmpresasOBJETOCONTRATUAL: TStringField;
    uniQBancosEmpresasTIPOPROTESTO_PADRAO: TStringField;
    uniQBancosEmpresasDESCONTO_SOBRE_PADRAO: TFloatField;
    uniQBancosEmpresasGRAVA_VLRDIVIDA_EVENTO: TStringField;
    uniQBancosEmpresasGRAVA_NEGOCIACAO_EVENTO: TStringField;
    uniQBancosEmpresasCONTADOR_NP: TFloatField;
    uniQBancosEmpresasENTRADA_PADRAO: TFloatField;
    uniQBancosEmpresasTIPO_HONORARIO_PADRAO: TStringField;
    uniQBancosEmpresasTIPO_ATUALIZACAO_DIVIDA: TStringField;
    uniQBancosEmpresasTIPO_JUROS_PADRAO: TStringField;
    uniQBancosEmpresasMENSAGEM_SMS: TStringField;
    uniQBancosEmpresasPEDIR_SENHA_DESC: TStringField;
    uniQBancosEmpresasJUROS_MINIMO: TFloatField;
    uniQBancosEmpresasDESCONTO_MAXIMO: TFloatField;
    uniQBancosEmpresasVALOR_MINIMO_PARCELA: TFloatField;
    uniQBancosEmpresasDIAS_MAXIMO_ENTRADA: TFloatField;
    uniQBancosEmpresasBOL_CONVENIO_PADRAO: TStringField;
    uniQBancosEmpresasFASE_COBRANCA: TStringField;
    uniQBancosEmpresasATIVO: TStringField;
    uniQBancosEmpresasMULTA_MINIMA: TFloatField;
    uniQBancosEmpresasNRPRESTACAO_MAXIMO: TFloatField;
    uniQBancosEmpresasTIPO_CALCULO_PADRAO: TFloatField;
    uniQBancosEmpresasMOSTRAR_QUEBRA_ACORDO: TStringField;
    uniQBancosEmpresasTAB_ATU_DIVIDA_PADRAO: TFloatField;
    uniQBancosEmpresasHONORARIO_SOBRE_PADRAO: TFloatField;
    uniQBancosEmpresasBLOQUEIO_LUPA: TStringField;
    uniQBancosEmpresasBLOQUEIO_NIVEL: TStringField;
    uniQBancosEmpresasCOMISSAO_TIPOATRASO: TStringField;
    uniQBancosEmpresasDATA_MIN_EVENTO: TSQLTimeStampField;
    uniQBancosEmpresasJUROS_PARCELA: TFloatField;
    uniQBancosEmpresasQUEBRA_ACORDO_DIAS: TFloatField;
    uniQBancosEmpresasQUEBRA_ACORDO_COD_EVENTO: TFloatField;
    uniQBancosEmpresasLIQUIDADA_COD_EVENTO: TFloatField;
    uniQBancosEmpresasTIPODIVISAOENCARGOS_PADRAO: TStringField;
    uniQBancosEmpresasMODELO_RECIBO_PADRAO: TStringField;
    uniQBancosEmpresasBLOQUEIO_END1: TStringField;
    uniQBancosEmpresasBLOQUEIO_END2: TStringField;
    uniQBancosEmpresasBLOQUEIO_NIVEL_END1: TStringField;
    uniQBancosEmpresasBLOQUEIO_NIVEL_END2: TStringField;
    uniQBancosEmpresasJUROS_MAXIMO: TFloatField;
    uniQBancosEmpresasMULTA_MAXIMO: TFloatField;
    uniQBancosEmpresasBLOQUEIO_DIVIDIR_SEM_JUROS: TStringField;
    uniQBancosEmpresasDIAS_EMCOBRANCA_PADRAO: TFloatField;
    uniQBancosEmpresasNEGATIVACAO_CODIGO: TFloatField;
    uniQBancosEmpresasTIPO_DESCONTO_PADRAO: TStringField;
    uniQBancosEmpresasEVENTOS_NRMAXIMO: TFloatField;
    uniQBancosEmpresasEVENTOS_NRDIASMAXIMO: TFloatField;
    uniQBancosEmpresasAGRUPAR_HON_COM_PRIMEIRA_PARC: TStringField;
    uniQBancosEmpresasFORMAPGTO_NEGOCIACAO: TStringField;
    uniQBancosEmpresasNEGATIVACAO_SERASA_CODIGO: TFloatField;
    uniQBancosEmpresasBLOQUEIA_TELEFONE_BLACKLIST: TStringField;
    uniQBancosEmpresasPROTESTO_PRIMEIRA_PARC: TStringField;
    uniQBancosEmpresasCOMISSAO_INTERVALO: TStringField;
    uniQBancosEmpresasJUROS_BOLETO_REGISTRADO: TFloatField;
    uniQBancosEmpresasMULTA_BOLETO_REGISTRADO: TFloatField;
    uniQBancosEmpresasDADOS_BANCARIOS: TStringField;
    uniQBancosEmpresasDTA_CAD: TSQLTimeStampField;
    uniQBancosEmpresasUSR_CAD: TFloatField;
    uniQBancosEmpresasREBATES_TIPO_INTERVALO: TStringField;
    uniQBancosEmpresasTIPO_MULTA_PADRAO: TStringField;
    uniQBancosEmpresasCARTA_BOLETO: TStringField;
    uniQBancosEmpresasTIPO_HONORARIO_ORIGEM: TStringField;
    uniQBancosEmpresasATRIBUI_COBRADOR_ACORDO: TStringField;
    uniQBancosEmpresasRETORNA_PARCELAS_ACORDO: TStringField;
    uniQBancosEmpresasMANTER_PARCELAS_ACORDO: TStringField;
    uniQBancosEmpresasBLACKLIST_NIVEL_BLOQ_RETORNO: TStringField;
    uniQBancosEmpresasTAXA_ATUALIZACAO: TFloatField;
    uniQBancosEmpresasBOLETO_GERA_NOVO_NUMERO_RECALC: TStringField;
    uniQBancosEmpresasBLOQUEIO_BOLETO_INCOMPLETO: TStringField;
    uniQBancosEmpresasATU_PARC_ATRASO: TStringField;
    uniQBancosEmpresasATU_PARC_ATRASO_NRDIASMAXIMO: TFloatField;
    uniQBancosEmpresasPORTALWEB_PADRAO: TFloatField;
    uniQBancosEmpresasEMITIR_UM_BOLETO_POR_VEZ: TStringField;
    uniQBancosEmpresasPERC_JUROS_DIF_POR_PERIODO: TStringField;
    uniQBancosEmpresasEXCLUIR_TEL_CAD_CLIENTE_NIVEL: TStringField;
    uniQBancosEmpresasBLOQUEIO_EMISSAO_PARC_VENCIDA: TStringField;
    uniQBancosEmpresasBLOQUEIO_ATU_BOLETO_EMITIDO: TStringField;
    uniQBancosEmpresasBLOQUEIO_NEGOCIACAO_VENC_PARC: TStringField;
    uniQBancosEmpresasBLOQUEIO_NEGOCIACAO_VLR_PARC: TStringField;
    uniQBancosEmpresasNUMERO_PREST_C0NTAS: TFloatField;
    uniQBancosEmpresasATU_PARC_ATRASO_BLOQ_ENCARGOS: TStringField;
    uniQBancosEmpresasID_1: TStringField;
    uniQBancosEmpresasEVENTO_COBRANCA: TStringField;
    UniDSQClientes: TDataSource;
    frxDBDiario: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxReport: TfrxReport;
    UniDataSource1: TDataSource;
    uniQClientes: TFDQuery;
    uniQClientesCLIENTE: TFloatField;
    uniQClientesVALORDIVIDA: TFloatField;
    uniQClientesNOME: TStringField;
    uniQClientesDATAVENCTO: TStringField;
    uniQClientesVALORVENCIDO: TFloatField;
    uniQClientesCPF: TStringField;
    frxDBEMPRESAS: TfrxDBDataset;
    frxDBClientes: TfrxDBDataset;
    procedure FormActivate(Sender: TObject);
    procedure btnfiltrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcurvaabc: Tfcurvaabc;

implementation

{$R *.dfm}

procedure Tfcurvaabc.btnfiltrarClick(Sender: TObject);
begin
  uniQClientes.Close;

  if RadioGroup1.ItemIndex = 0 then
  uniQClientes.Sql.Text :=  'select * from (select operacoes.cliente, operacoes.valordivida, clientes.nome, clientes.cpf, operacoes.datavencto, operacoes.valorvencido ' +
                            'from operacoes inner join clientes on clientes.codigo = operacoes.cliente ' +
                            'where operacoes.valorvencido > 0 ' +
                            'order by operacoes.valordivida desc) ' +
                            'where ROWNUM <= 10';
  if RadioGroup1.ItemIndex = 1 then
  uniQClientes.Sql.Text :=  'select * from (select operacoes.cliente, operacoes.valordivida, clientes.nome, clientes.cpf, operacoes.datavencto, operacoes.valorvencido ' +
                            'from operacoes inner join clientes on clientes.codigo = operacoes.cliente ' +
                            'where operacoes.valorvencido > 0 ' +
                            'order by operacoes.valordivida desc) ' +
                            'where ROWNUM <= 100';
  if RadioGroup1.ItemIndex = 2 then
  uniQClientes.Sql.Text :=  'select * from (select operacoes.cliente, operacoes.valordivida, clientes.nome, clientes.cpf, operacoes.datavencto, operacoes.valorvencido ' +
                            'from operacoes inner join clientes on clientes.codigo = operacoes.cliente ' +
                            'where operacoes.valorvencido > 0 ' +
                            'order by operacoes.valordivida desc) ' +
                            'where ROWNUM <= 500';
  if RadioGroup1.ItemIndex = 3 then
  uniQClientes.Sql.Text :=  'select * from (select operacoes.cliente, operacoes.valordivida, clientes.nome, clientes.cpf, operacoes.datavencto, operacoes.valorvencido ' +
                            'from operacoes inner join clientes on clientes.codigo = operacoes.cliente ' +
                            'where operacoes.valorvencido > 0 ' +
                            'order by operacoes.valordivida desc) ' +
                            'where ROWNUM <= ' + rznumericedit1.text;
  uniQClientes.Open;
  uniQClientes.First;

  frxReport.ShowReport;
end;

procedure Tfcurvaabc.FormActivate(Sender: TObject);
begin
  RzNumericEdit1.Value := 0;

  RadioGroup1.ItemIndex := 0;

  uniQBancosEmpresas.Close;
  uniQBancosEmpresas.Sql.Text := 'select * from bancos';
  uniQBancosEmpresas.Open;
  uniQBancosEmpresas.First;
end;

procedure Tfcurvaabc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  uniQBancosEmpresas.Close;
  uniQClientes.Open;
end;

end.