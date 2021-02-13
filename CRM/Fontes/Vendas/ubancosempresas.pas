unit ubancosempresas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, 
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, 
  dxSkinsCore, dxSkinsDefaultPainters, cxCustomData, cxFilter, cxData, 
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, 
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, 
  cxCalendar, cxCheckBox, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, 
  Vcl.Mask, cxGridLevel, cxGridCustomTableView, cxGridTableView, 
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ComCtrls, 
  System.Actions, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, AdvGlowButton, 
  JvExDBGrids, JvDBGrid, RzButton, System.ImageList, Vcl.ImgList, cxImageList, 
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, 
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, 
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, 
  FireDAC.DBX.Migrate;

type
  Tfrmcredores = class(TForm)
    JvDBGrid1: TJvDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    UniDSQCredores: TDataSource;
    RzToolButton3: TRzToolButton;
    btnalterar: TRzToolButton;
    Label2: TLabel;
    RzToolButton1: TRzToolButton;
    UniQCredores: TFDQuery;
    UniQCredoresCODIGO: TFMTBCDField;
    UniQCredoresNOME: TStringField;
    UniQCredoresCOMISSAOFIXA: TStringField;
    UniQCredoresCOMISSAO: TFMTBCDField;
    UniQCredoresCENTRALIZADORA: TStringField;
    UniQCredoresCC_TIPO: TStringField;
    UniQCredoresCE_C1: TFMTBCDField;
    UniQCredoresCE_C2: TFMTBCDField;
    UniQCredoresCE_C3: TFMTBCDField;
    UniQCredoresCE_C4: TFMTBCDField;
    UniQCredoresCE_C5: TFMTBCDField;
    UniQCredoresCE_C6: TFMTBCDField;
    UniQCredoresCE_C7: TFMTBCDField;
    UniQCredoresCE_C8: TFMTBCDField;
    UniQCredoresCE_C9: TFMTBCDField;
    UniQCredoresPREFCONT: TStringField;
    UniQCredoresCONTADOR: TFMTBCDField;
    UniQCredoresENDERECO: TStringField;
    UniQCredoresSETOR: TStringField;
    UniQCredoresNUMERO: TStringField;
    UniQCredoresCIDADE: TStringField;
    UniQCredoresUF: TStringField;
    UniQCredoresCEP: TStringField;
    UniQCredoresCPF: TStringField;
    UniQCredoresCNPJ: TStringField;
    UniQCredoresMETA_CAIXA: TFMTBCDField;
    UniQCredoresMETA_REGULARIZACAO: TFMTBCDField;
    UniQCredoresMULTA_PADRAO: TFMTBCDField;
    UniQCredoresJUROS_PADRAO: TFMTBCDField;
    UniQCredoresHONORARIOS_PADRAO: TFMTBCDField;
    UniQCredoresDESCONTO_PADRAO: TFMTBCDField;
    UniQCredoresCUSTO_BOLETO_PADRAO: TFMTBCDField;
    UniQCredoresFATOR_PARC_PADRAO: TFMTBCDField;
    UniQCredoresVALOR_PROTESTO_PADRAO: TFMTBCDField;
    UniQCredoresPESO_CAIXA: TFMTBCDField;
    UniQCredoresPESO_REGULARIZACAO: TFMTBCDField;
    UniQCredoresINCLUIRDESPESAS: TStringField;
    UniQCredoresRETENCAO: TFMTBCDField;
    UniQCredoresDT_CONTRATO: TSQLTimeStampField;
    UniQCredoresUSA_TAB_ATUALIZACAO: TStringField;
    UniQCredoresREPRESENTANTE: TStringField;
    UniQCredoresREP_ENDERECO: TStringField;
    UniQCredoresREP_SETOR: TStringField;
    UniQCredoresREP_CIDADE: TStringField;
    UniQCredoresREP_UF: TStringField;
    UniQCredoresREP_CEP: TStringField;
    UniQCredoresREP_CPF: TStringField;
    UniQCredoresREP_PROFISSAO: TStringField;
    UniQCredoresREP_CARGO: TStringField;
    UniQCredoresREP_NACIONALIDADE: TStringField;
    UniQCredoresREP_ESTADOCIVIL: TStringField;
    UniQCredoresFONE: TStringField;
    UniQCredoresFAX: TStringField;
    UniQCredoresDIAS_COB_HONORARIOS: TFMTBCDField;
    UniQCredoresEMAIL1: TStringField;
    UniQCredoresEMAIL2: TStringField;
    UniQCredoresNRCONTRATO: TStringField;
    UniQCredoresOBJETOCONTRATUAL: TStringField;
    UniQCredoresTIPOPROTESTO_PADRAO: TStringField;
    UniQCredoresDESCONTO_SOBRE_PADRAO: TFMTBCDField;
    UniQCredoresGRAVA_VLRDIVIDA_EVENTO: TStringField;
    UniQCredoresGRAVA_NEGOCIACAO_EVENTO: TStringField;
    UniQCredoresCONTADOR_NP: TFMTBCDField;
    UniQCredoresENTRADA_PADRAO: TFMTBCDField;
    UniQCredoresTIPO_HONORARIO_PADRAO: TStringField;
    UniQCredoresTIPO_ATUALIZACAO_DIVIDA: TStringField;
    UniQCredoresTIPO_JUROS_PADRAO: TStringField;
    UniQCredoresMENSAGEM_SMS: TStringField;
    UniQCredoresPEDIR_SENHA_DESC: TStringField;
    UniQCredoresJUROS_MINIMO: TFMTBCDField;
    UniQCredoresDESCONTO_MAXIMO: TFMTBCDField;
    UniQCredoresVALOR_MINIMO_PARCELA: TFMTBCDField;
    UniQCredoresDIAS_MAXIMO_ENTRADA: TFMTBCDField;
    UniQCredoresBOL_CONVENIO_PADRAO: TStringField;
    UniQCredoresFASE_COBRANCA: TStringField;
    UniQCredoresATIVO: TStringField;
    UniQCredoresMULTA_MINIMA: TFMTBCDField;
    UniQCredoresNRPRESTACAO_MAXIMO: TFMTBCDField;
    UniQCredoresTIPO_CALCULO_PADRAO: TFMTBCDField;
    UniQCredoresMOSTRAR_QUEBRA_ACORDO: TStringField;
    UniQCredoresTAB_ATU_DIVIDA_PADRAO: TFMTBCDField;
    UniQCredoresHONORARIO_SOBRE_PADRAO: TFMTBCDField;
    UniQCredoresBLOQUEIO_LUPA: TStringField;
    UniQCredoresBLOQUEIO_NIVEL: TStringField;
    UniQCredoresCOMISSAO_TIPOATRASO: TStringField;
    UniQCredoresDATA_MIN_EVENTO: TSQLTimeStampField;
    UniQCredoresJUROS_PARCELA: TFMTBCDField;
    UniQCredoresQUEBRA_ACORDO_DIAS: TFMTBCDField;
    UniQCredoresQUEBRA_ACORDO_COD_EVENTO: TFMTBCDField;
    UniQCredoresLIQUIDADA_COD_EVENTO: TFMTBCDField;
    UniQCredoresTIPODIVISAOENCARGOS_PADRAO: TStringField;
    UniQCredoresMODELO_RECIBO_PADRAO: TStringField;
    UniQCredoresBLOQUEIO_END1: TStringField;
    UniQCredoresBLOQUEIO_END2: TStringField;
    UniQCredoresBLOQUEIO_NIVEL_END1: TStringField;
    UniQCredoresBLOQUEIO_NIVEL_END2: TStringField;
    UniQCredoresJUROS_MAXIMO: TFMTBCDField;
    UniQCredoresMULTA_MAXIMO: TFMTBCDField;
    UniQCredoresBLOQUEIO_DIVIDIR_SEM_JUROS: TStringField;
    UniQCredoresDIAS_EMCOBRANCA_PADRAO: TFMTBCDField;
    UniQCredoresNEGATIVACAO_CODIGO: TFMTBCDField;
    UniQCredoresTIPO_DESCONTO_PADRAO: TStringField;
    UniQCredoresEVENTOS_NRMAXIMO: TFMTBCDField;
    UniQCredoresEVENTOS_NRDIASMAXIMO: TFMTBCDField;
    UniQCredoresAGRUPAR_HON_COM_PRIMEIRA_PARC: TStringField;
    UniQCredoresFORMAPGTO_NEGOCIACAO: TStringField;
    UniQCredoresNEGATIVACAO_SERASA_CODIGO: TFMTBCDField;
    UniQCredoresBLOQUEIA_TELEFONE_BLACKLIST: TStringField;
    UniQCredoresPROTESTO_PRIMEIRA_PARC: TStringField;
    UniQCredoresCOMISSAO_INTERVALO: TStringField;
    UniQCredoresJUROS_BOLETO_REGISTRADO: TFMTBCDField;
    UniQCredoresMULTA_BOLETO_REGISTRADO: TFMTBCDField;
    UniQCredoresDADOS_BANCARIOS: TStringField;
    UniQCredoresDTA_CAD: TSQLTimeStampField;
    UniQCredoresUSR_CAD: TFMTBCDField;
    UniQCredoresREBATES_TIPO_INTERVALO: TStringField;
    UniQCredoresTIPO_MULTA_PADRAO: TStringField;
    UniQCredoresCARTA_BOLETO: TStringField;
    UniQCredoresTIPO_HONORARIO_ORIGEM: TStringField;
    UniQCredoresATRIBUI_COBRADOR_ACORDO: TStringField;
    UniQCredoresRETORNA_PARCELAS_ACORDO: TStringField;
    UniQCredoresMANTER_PARCELAS_ACORDO: TStringField;
    UniQCredoresBLACKLIST_NIVEL_BLOQ_RETORNO: TStringField;
    UniQCredoresTAXA_ATUALIZACAO: TFMTBCDField;
    UniQCredoresBOLETO_GERA_NOVO_NUMERO_RECALC: TStringField;
    UniQCredoresBLOQUEIO_BOLETO_INCOMPLETO: TStringField;
    UniQCredoresATU_PARC_ATRASO: TStringField;
    UniQCredoresATU_PARC_ATRASO_NRDIASMAXIMO: TFMTBCDField;
    UniQCredoresPORTALWEB_PADRAO: TFMTBCDField;
    UniQCredoresEMITIR_UM_BOLETO_POR_VEZ: TStringField;
    UniQCredoresPERC_JUROS_DIF_POR_PERIODO: TStringField;
    UniQCredoresEXCLUIR_TEL_CAD_CLIENTE_NIVEL: TStringField;
    UniQCredoresBLOQUEIO_EMISSAO_PARC_VENCIDA: TStringField;
    UniQCredoresBLOQUEIO_ATU_BOLETO_EMITIDO: TStringField;
    UniQCredoresBLOQUEIO_NEGOCIACAO_VENC_PARC: TStringField;
    UniQCredoresBLOQUEIO_NEGOCIACAO_VLR_PARC: TStringField;
    UniQCredoresNUMERO_PREST_C0NTAS: TFMTBCDField;
    UniQCredoresATU_PARC_ATRASO_BLOQ_ENCARGOS: TStringField;
    UniQCredoresID_1: TStringField;
    UniQCredoresEVENTO_COBRANCA: TStringField;
    UniQCredoresMULTA_CHECK: TStringField;
    UniQCredoresMULTA_DE: TIntegerField;
    UniQCredoresMULTA_A: TIntegerField;
    UniQCredoresJUROS_CHECK: TStringField;
    UniQCredoresJUROS_DE: TFMTBCDField;
    UniQCredoresJUROS_A: TFMTBCDField;
    UniQCredoresHONORARIO_CHECK: TStringField;
    UniQCredoresHONORARIO_DE: TFMTBCDField;
    UniQCredoresHONORARIO_A: TFMTBCDField;
    UniQCredoresDESCONTOMAXIMO_CHECK: TStringField;
    UniQCredoresDESCONTOMAXIMO_VALOR: TFMTBCDField;
    UniQCredoresJUROSPARCELAMENTO_CHECK: TStringField;
    UniQCredoresJUROSPARCELAMENTO_DE: TFMTBCDField;
    UniQCredoresJUROSPARCELAMENTO_A: TFMTBCDField;
    UniQCredoresMAXIMODIASPARCELAMENTO_CHECK: TStringField;
    UniQCredoresMAXIMODIASPARCELAMENTO_VALOR: TFMTBCDField;
    UniQCredoresMAXIMOPARCELAS_CHECK: TStringField;
    UniQCredoresMAXIMOPARCELAS_VALOR: TFMTBCDField;
    UniQCredoresCANCELARNEGOCIACAOAPOS_CHECK: TStringField;
    UniQCredoresCANCELARNEGOCIACAOAPOS_VALOR: TFMTBCDField;
    UniQCredoresCALCULARJUROSSOBREMULTA_CHECK: TStringField;
    UniQCredoresINDICEDECORRECAO: TStringField;
    UniQCredoresHONORARIOREAL_A: TFMTBCDField;
    UniQCredoresHONORARIOREAL_CHECK: TStringField;
    UniQCredoresHONORARIOREAL_DE: TFMTBCDField;
    UniQCredoresPERMITENAOMENSAIS_CHECK: TStringField;
    UniQCredoresUTILIZARJUROSCOMPOSTOS_CHECK: TStringField;
    UniQCredoresCALCMULTASOBRECORRECAO_CHECK: TStringField;
    UniQCredoresCALCJUROSSOBRECORRECAO_CHECK: TStringField;
    UniQCredoresCOMISSOPERVRRECEB_CHECK: TStringField;
    UniQCredoresCOMISSOPERVRCOMISS_CHECK: TStringField;
    UniQCredoresINFORMACOES_ADICIONAIS: TBlobField;
    UniQCredoresMAX_DIAS_PRIM_BOLETO: TIntegerField;
    UniQCredoresPARCELA_MINIMA: TIntegerField;
    UniQCredoresCOD_BANCOS_GRUPO: TIntegerField;
    procedure FormActivate(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzToolButton1Click(Sender: TObject);
    procedure UniQCredoresAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcredores: Tfrmcredores;

implementation

{$R *.dfm}

uses
  uDataModule, ucadastrodebancosempresas, uRelContasReceber,
  uRelEventosCobranca, uManutencaoContasReceber, uRelImportacoes;

procedure Tfrmcredores.FormActivate(Sender: TObject);
begin
  uniQCredores.Close;
  uniQCredores.Sql.Text := 'select * from bancos';
  uniQCredores.Open;
  uniQCredores.First;
end;

procedure Tfrmcredores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    uniQCredores.Edit;
    uniQCredores.Cancel;
  except end;
end;

procedure Tfrmcredores.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
    RzToolButton1Click(Sender);
end;

procedure Tfrmcredores.btnalterarClick(Sender: TObject);
begin
  uniQCredores.Edit;
  Application.CreateForm(Tfrmcadastrodebancosempresas, frmcadastrodebancosempresas);
  frmcadastrodebancosempresas.ShowModal;
  frmcadastrodebancosempresas.Free;
  frmcredores.FormActivate(Sender);
end;

procedure Tfrmcredores.JvDBGrid1DblClick(Sender: TObject);
begin
  if Assigned(frmRelContasReceber) then
  begin
    frmRelContasReceber.edtCodCredor.Text := UniQCredoresCODIGO.AsString;
    frmRelContasReceber.edtNomeCredor.Text := UniQCredoresNOME.AsString;
    Close;
  end
  else if Assigned(frmRelEventosCobranca) then
  begin
    frmRelEventosCobranca.edtCodCredor.Text := UniQCredoresCODIGO.AsString;
    frmRelEventosCobranca.edtNomeCredor.Text := UniQCredoresNOME.AsString;
    Close;
  end
  else if Assigned(frmManutencaoContasReceber) then
  begin
    frmManutencaoContasReceber.edtCodCredor.Text := UniQCredoresCODIGO.AsString;
    frmManutencaoContasReceber.edtNomeCredor.Text := UniQCredoresNOME.AsString;
    Close;
  end
  else if Assigned(frmRelImportacoes) then
  begin
    frmRelImportacoes.edtCodCredor.Text := UniQCredoresCODIGO.AsString;
    frmRelImportacoes.edtNomeCredor.Text := UniQCredoresNOME.AsString;
    Close;
  end
  else
    btnalterarClick(Sender);
end;

procedure Tfrmcredores.RzToolButton1Click(Sender: TObject);
begin
  uniQCredores.Close;
  uniQCredores.Sql.Text := 'select * from bancos where upper(nome) like (''%' + EDIT1.TEXT + '%'')';
  uniQCredores.Open;
  uniQCredores.First;
end;

procedure Tfrmcredores.RzToolButton3Click(Sender: TObject);
begin
  Application.CreateForm(Tfrmcadastrodebancosempresas, frmcadastrodebancosempresas);
  uniQCredores.Open;
  uniQCredores.Insert;

  uniQCredores.FIELDBYNAME('MULTA_CHECK').Value := 'FALSE';
  uniQCredores.FIELDBYNAME('JUROS_CHECK').Value := 'FALSE';
  uniQCredores.FIELDBYNAME('HONORARIO_CHECK').Value := 'FALSE';
  uniQCredores.FIELDBYNAME('DESCONTOMAXIMO_CHECK').Value := 'FALSE';
  uniQCredores.FIELDBYNAME('JUROSPARCELAMENTO_CHECK').Value := 'FALSE';
  uniQCredores.FIELDBYNAME('MAXIMODIASPARCELAMENTO_CHECK').Value := 'FALSE';
  uniQCredores.FIELDBYNAME('MAXIMOPARCELAS_CHECK').Value := 'FALSE';
  uniQCredores.FIELDBYNAME('CANCELARNEGOCIACAOAPOS_CHECK').Value := 'FALSE';
  uniQCredores.FIELDBYNAME('CALCULARJUROSSOBREMULTA_CHECK').Value := 'FALSE';
  uniQCredores.FIELDBYNAME('HONORARIOREAL_CHECK').Value := 'FALSE';
  uniQCredores.FIELDBYNAME('PERMITENAOMENSAIS_CHECK').Value := 'FALSE';
  uniQCredores.FIELDBYNAME('UTILIZARJUROSCOMPOSTOS_CHECK').Value := 'FALSE';
  uniQCredores.FIELDBYNAME('CALCMULTASOBRECORRECAO_CHECK').Value := 'FALSE';
  uniQCredores.FIELDBYNAME('CALCJUROSSOBRECORRECAO_CHECK').Value := 'FALSE';
  uniQCredores.FIELDBYNAME('COMISSOPERVRRECEB_CHECK').Value := 'FALSE';
  uniQCredores.FIELDBYNAME('COMISSOPERVRCOMISS_CHECK').Value := 'FALSE';

  frmcadastrodebancosempresas.alterainsere := 'INSERE';
  frmcadastrodebancosempresas.ShowModal;
  frmcadastrodebancosempresas.alterainsere := '';
  frmcadastrodebancosempresas.Free;
  frmcredores.FormActivate(Sender);
end;

procedure Tfrmcredores.UniQCredoresAfterOpen(DataSet: TDataSet);
begin
  //TStringField(UniQCredores.FieldByName('VALORNOMINAL')).DisplayText := '00000\-999;1;_';
end;

end.
