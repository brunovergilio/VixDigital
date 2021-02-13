unit uselecionacredor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, 
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.StdCtrls, 
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, 
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, 
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, 
  FireDAC.DBX.Migrate;

type
  Tfselecionacredor = class(TForm)
    Label2: TLabel;
    uniQScript: TFDQuery;
    UniDSQScript: TDataSource;
    unigetid: TFDQuery;
    uniQScriptCODIGO: TFMTBCDField;
    uniQScriptNOME: TStringField;
    uniQScriptCOMISSAOFIXA: TStringField;
    uniQScriptCOMISSAO: TFMTBCDField;
    uniQScriptCENTRALIZADORA: TStringField;
    uniQScriptCC_TIPO: TStringField;
    uniQScriptCE_C1: TFMTBCDField;
    uniQScriptCE_C2: TFMTBCDField;
    uniQScriptCE_C3: TFMTBCDField;
    uniQScriptCE_C4: TFMTBCDField;
    uniQScriptCE_C5: TFMTBCDField;
    uniQScriptCE_C6: TFMTBCDField;
    uniQScriptCE_C7: TFMTBCDField;
    uniQScriptCE_C8: TFMTBCDField;
    uniQScriptCE_C9: TFMTBCDField;
    uniQScriptPREFCONT: TStringField;
    uniQScriptCONTADOR: TFMTBCDField;
    uniQScriptENDERECO: TStringField;
    uniQScriptSETOR: TStringField;
    uniQScriptNUMERO: TStringField;
    uniQScriptCIDADE: TStringField;
    uniQScriptUF: TStringField;
    uniQScriptCEP: TStringField;
    uniQScriptCPF: TStringField;
    uniQScriptCNPJ: TStringField;
    uniQScriptMETA_CAIXA: TFMTBCDField;
    uniQScriptMETA_REGULARIZACAO: TFMTBCDField;
    uniQScriptMULTA_PADRAO: TFMTBCDField;
    uniQScriptJUROS_PADRAO: TFMTBCDField;
    uniQScriptHONORARIOS_PADRAO: TFMTBCDField;
    uniQScriptDESCONTO_PADRAO: TFMTBCDField;
    uniQScriptCUSTO_BOLETO_PADRAO: TFMTBCDField;
    uniQScriptFATOR_PARC_PADRAO: TFMTBCDField;
    uniQScriptVALOR_PROTESTO_PADRAO: TFMTBCDField;
    uniQScriptPESO_CAIXA: TFMTBCDField;
    uniQScriptPESO_REGULARIZACAO: TFMTBCDField;
    uniQScriptINCLUIRDESPESAS: TStringField;
    uniQScriptRETENCAO: TFMTBCDField;
    uniQScriptDT_CONTRATO: TSQLTimeStampField;
    uniQScriptUSA_TAB_ATUALIZACAO: TStringField;
    uniQScriptREPRESENTANTE: TStringField;
    uniQScriptREP_ENDERECO: TStringField;
    uniQScriptREP_SETOR: TStringField;
    uniQScriptREP_CIDADE: TStringField;
    uniQScriptREP_UF: TStringField;
    uniQScriptREP_CEP: TStringField;
    uniQScriptREP_CPF: TStringField;
    uniQScriptREP_PROFISSAO: TStringField;
    uniQScriptREP_CARGO: TStringField;
    uniQScriptREP_NACIONALIDADE: TStringField;
    uniQScriptREP_ESTADOCIVIL: TStringField;
    uniQScriptFONE: TStringField;
    uniQScriptFAX: TStringField;
    uniQScriptDIAS_COB_HONORARIOS: TFMTBCDField;
    uniQScriptEMAIL1: TStringField;
    uniQScriptEMAIL2: TStringField;
    uniQScriptNRCONTRATO: TStringField;
    uniQScriptOBJETOCONTRATUAL: TStringField;
    uniQScriptTIPOPROTESTO_PADRAO: TStringField;
    uniQScriptDESCONTO_SOBRE_PADRAO: TFMTBCDField;
    uniQScriptGRAVA_VLRDIVIDA_EVENTO: TStringField;
    uniQScriptGRAVA_NEGOCIACAO_EVENTO: TStringField;
    uniQScriptCONTADOR_NP: TFMTBCDField;
    uniQScriptENTRADA_PADRAO: TFMTBCDField;
    uniQScriptTIPO_HONORARIO_PADRAO: TStringField;
    uniQScriptTIPO_ATUALIZACAO_DIVIDA: TStringField;
    uniQScriptTIPO_JUROS_PADRAO: TStringField;
    uniQScriptMENSAGEM_SMS: TStringField;
    uniQScriptPEDIR_SENHA_DESC: TStringField;
    uniQScriptJUROS_MINIMO: TFMTBCDField;
    uniQScriptDESCONTO_MAXIMO: TFMTBCDField;
    uniQScriptVALOR_MINIMO_PARCELA: TFMTBCDField;
    uniQScriptDIAS_MAXIMO_ENTRADA: TFMTBCDField;
    uniQScriptBOL_CONVENIO_PADRAO: TStringField;
    uniQScriptFASE_COBRANCA: TStringField;
    uniQScriptATIVO: TStringField;
    uniQScriptMULTA_MINIMA: TFMTBCDField;
    uniQScriptNRPRESTACAO_MAXIMO: TFMTBCDField;
    uniQScriptTIPO_CALCULO_PADRAO: TFMTBCDField;
    uniQScriptMOSTRAR_QUEBRA_ACORDO: TStringField;
    uniQScriptTAB_ATU_DIVIDA_PADRAO: TFMTBCDField;
    uniQScriptHONORARIO_SOBRE_PADRAO: TFMTBCDField;
    uniQScriptBLOQUEIO_LUPA: TStringField;
    uniQScriptBLOQUEIO_NIVEL: TStringField;
    uniQScriptCOMISSAO_TIPOATRASO: TStringField;
    uniQScriptDATA_MIN_EVENTO: TSQLTimeStampField;
    uniQScriptJUROS_PARCELA: TFMTBCDField;
    uniQScriptQUEBRA_ACORDO_DIAS: TFMTBCDField;
    uniQScriptQUEBRA_ACORDO_COD_EVENTO: TFMTBCDField;
    uniQScriptLIQUIDADA_COD_EVENTO: TFMTBCDField;
    uniQScriptTIPODIVISAOENCARGOS_PADRAO: TStringField;
    uniQScriptMODELO_RECIBO_PADRAO: TStringField;
    uniQScriptBLOQUEIO_END1: TStringField;
    uniQScriptBLOQUEIO_END2: TStringField;
    uniQScriptBLOQUEIO_NIVEL_END1: TStringField;
    uniQScriptBLOQUEIO_NIVEL_END2: TStringField;
    uniQScriptJUROS_MAXIMO: TFMTBCDField;
    uniQScriptMULTA_MAXIMO: TFMTBCDField;
    uniQScriptBLOQUEIO_DIVIDIR_SEM_JUROS: TStringField;
    uniQScriptDIAS_EMCOBRANCA_PADRAO: TFMTBCDField;
    uniQScriptNEGATIVACAO_CODIGO: TFMTBCDField;
    uniQScriptTIPO_DESCONTO_PADRAO: TStringField;
    uniQScriptEVENTOS_NRMAXIMO: TFMTBCDField;
    uniQScriptEVENTOS_NRDIASMAXIMO: TFMTBCDField;
    uniQScriptAGRUPAR_HON_COM_PRIMEIRA_PARC: TStringField;
    uniQScriptFORMAPGTO_NEGOCIACAO: TStringField;
    uniQScriptNEGATIVACAO_SERASA_CODIGO: TFMTBCDField;
    uniQScriptBLOQUEIA_TELEFONE_BLACKLIST: TStringField;
    uniQScriptPROTESTO_PRIMEIRA_PARC: TStringField;
    uniQScriptCOMISSAO_INTERVALO: TStringField;
    uniQScriptJUROS_BOLETO_REGISTRADO: TFMTBCDField;
    uniQScriptMULTA_BOLETO_REGISTRADO: TFMTBCDField;
    uniQScriptDADOS_BANCARIOS: TStringField;
    uniQScriptDTA_CAD: TSQLTimeStampField;
    uniQScriptUSR_CAD: TFMTBCDField;
    uniQScriptREBATES_TIPO_INTERVALO: TStringField;
    uniQScriptTIPO_MULTA_PADRAO: TStringField;
    uniQScriptCARTA_BOLETO: TStringField;
    uniQScriptTIPO_HONORARIO_ORIGEM: TStringField;
    uniQScriptATRIBUI_COBRADOR_ACORDO: TStringField;
    uniQScriptRETORNA_PARCELAS_ACORDO: TStringField;
    uniQScriptMANTER_PARCELAS_ACORDO: TStringField;
    uniQScriptBLACKLIST_NIVEL_BLOQ_RETORNO: TStringField;
    uniQScriptTAXA_ATUALIZACAO: TFMTBCDField;
    uniQScriptBOLETO_GERA_NOVO_NUMERO_RECALC: TStringField;
    uniQScriptBLOQUEIO_BOLETO_INCOMPLETO: TStringField;
    uniQScriptATU_PARC_ATRASO: TStringField;
    uniQScriptATU_PARC_ATRASO_NRDIASMAXIMO: TFMTBCDField;
    uniQScriptPORTALWEB_PADRAO: TFMTBCDField;
    uniQScriptEMITIR_UM_BOLETO_POR_VEZ: TStringField;
    uniQScriptPERC_JUROS_DIF_POR_PERIODO: TStringField;
    uniQScriptEXCLUIR_TEL_CAD_CLIENTE_NIVEL: TStringField;
    uniQScriptBLOQUEIO_EMISSAO_PARC_VENCIDA: TStringField;
    uniQScriptBLOQUEIO_ATU_BOLETO_EMITIDO: TStringField;
    uniQScriptBLOQUEIO_NEGOCIACAO_VENC_PARC: TStringField;
    uniQScriptBLOQUEIO_NEGOCIACAO_VLR_PARC: TStringField;
    uniQScriptNUMERO_PREST_C0NTAS: TFMTBCDField;
    uniQScriptATU_PARC_ATRASO_BLOQ_ENCARGOS: TStringField;
    uniQScriptID_1: TStringField;
    uniQScriptEVENTO_COBRANCA: TStringField;
    uniQScriptMULTA_CHECK: TStringField;
    uniQScriptMULTA_DE: TIntegerField;
    uniQScriptMULTA_A: TIntegerField;
    uniQScriptJUROS_CHECK: TStringField;
    uniQScriptJUROS_DE: TFMTBCDField;
    uniQScriptJUROS_A: TFMTBCDField;
    uniQScriptHONORARIO_CHECK: TStringField;
    uniQScriptHONORARIO_DE: TFMTBCDField;
    uniQScriptHONORARIO_A: TFMTBCDField;
    uniQScriptDESCONTOMAXIMO_CHECK: TStringField;
    uniQScriptDESCONTOMAXIMO_VALOR: TFMTBCDField;
    uniQScriptJUROSPARCELAMENTO_CHECK: TStringField;
    uniQScriptJUROSPARCELAMENTO_DE: TFMTBCDField;
    uniQScriptJUROSPARCELAMENTO_A: TFMTBCDField;
    uniQScriptMAXIMODIASPARCELAMENTO_CHECK: TStringField;
    uniQScriptMAXIMODIASPARCELAMENTO_VALOR: TFMTBCDField;
    uniQScriptMAXIMOPARCELAS_CHECK: TStringField;
    uniQScriptMAXIMOPARCELAS_VALOR: TFMTBCDField;
    uniQScriptCANCELARNEGOCIACAOAPOS_CHECK: TStringField;
    uniQScriptCANCELARNEGOCIACAOAPOS_VALOR: TFMTBCDField;
    uniQScriptCALCULARJUROSSOBREMULTA_CHECK: TStringField;
    uniQScriptINDICEDECORRECAO: TStringField;
    uniQScriptHONORARIOREAL_A: TFMTBCDField;
    uniQScriptHONORARIOREAL_CHECK: TStringField;
    uniQScriptHONORARIOREAL_DE: TFMTBCDField;
    uniQScriptPERMITENAOMENSAIS_CHECK: TStringField;
    uniQScriptUTILIZARJUROSCOMPOSTOS_CHECK: TStringField;
    uniQScriptCALCMULTASOBRECORRECAO_CHECK: TStringField;
    uniQScriptCALCJUROSSOBRECORRECAO_CHECK: TStringField;
    uniQScriptCOMISSOPERVRRECEB_CHECK: TStringField;
    uniQScriptCOMISSOPERVRCOMISS_CHECK: TStringField;
    uniQScriptINFORMACOES_ADICIONAIS: TBlobField;
    uniQScriptMAX_DIAS_PRIM_BOLETO: TIntegerField;
    uniQScriptPARCELA_MINIMA: TIntegerField;
    DBGrid1: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fselecionacredor: Tfselecionacredor;

implementation

uses
  ugrupogeralcadastro, uFuncoes, uCadCliente;

{$R *.dfm}

procedure Tfselecionacredor.DBGrid1DblClick(Sender: TObject);
begin
  if not Assigned(frmCadCliente) then
  begin
    frmgrupogeralcadastro.UniCampanha_Credores.Open;
    if not frmgrupogeralcadastro.UniCampanha_Credores.Locate('CODIGO_CREDOR',uniQScript.FieldByName('CODIGO').AsInteger,[]) then
    begin
      frmgrupogeralcadastro.UniCampanha_Credores.insert;

      frmgrupogeralcadastro.UniCampanha_Credores.FieldbyName('CODIGO').Value := GetID('codigo','campanha_credores');
      frmgrupogeralcadastro.UniCampanha_Credores.FieldbyName('CODIGO_CAMPANHA').AsString := FRMGRUPOGERALCADASTRO.DBAdvLUEdit1.TEXT;
      frmgrupogeralcadastro.UniCampanha_Credores.FieldbyName('CODIGO_CREDOR').Value := uniQScript.FieldByName('CODIGO').Value;
      frmgrupogeralcadastro.UniCampanha_Credores.post;
    end
    else
      MessageDlg('Credor já inserido.',mtInformation,[mbOk],0);
  end;
  CLOSE;
end;

procedure Tfselecionacredor.FormActivate(Sender: TObject);
begin
  uniQScript.Close;
  uniQScript.Sql.Text := 'select * from bancos where ativo = "S" order by nome';
  uniQScript.Open;
  uniQScript.First;
end;

procedure Tfselecionacredor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    if not Assigned(frmCadCliente) then
    begin
      uniQScript.Edit;
      uniQScript.Cancel;
      uniQScript.Close;
    end;
  except
  end;
end;

end.
