unit uImportaExportaArquivo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, StdCtrls, Buttons, RxLookup, Db, Gauges, DBClient,
  AdvGlowButton, Vcl.Grids, uImportExcel, Vcl.DBGrids,
  MidasLib, Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.DBX.Migrate, ACBrUtil;

type
  TFImportaExportaArquivo = class(TForm)
    OpenDialog: TOpenDialog;
    Panel1: TPanel;
    Shape2: TShape;
    Label_ProgressGeral: TLabel;
    Label1: TLabel;
    uniscript: TFDQuery;
    cdsxls: TClientDataSet;
    StringGrid1: TStringGrid;
    ProgressBarGeral: TProgressBar;
    DBGrid1: TDBGrid;
    dsxls: TDataSource;
    cdsxlsTIPO: TStringField;
    cdsxlsNROPERAÇÃO: TStringField;
    cdsxlsNOMEOPERAÇÃO: TStringField;
    cdsxlsAGENCIA: TStringField;
    cdsxlsCONTA: TStringField;
    cdsxlsPRODUTO: TStringField;
    cdsxlsDTATUALIZADO: TDateField;
    cdsxlsDTVENCIMENTO: TDateField;
    cdsxlsVALOROPERAÇÃO: TCurrencyField;
    cdsxlsVALORVENCIDO: TCurrencyField;
    cdsxlsCONDNEGOCIAIS: TStringField;
    cdsxlsCPFCNPJ: TStringField;
    cdsxlsMCI: TIntegerField;
    cdsxlsNRFICHA: TIntegerField;
    cdsxlsNOMEDOCLIENTE: TStringField;
    cdsxlsENDEREÇO: TStringField;
    cdsxlsNUMERO: TStringField;
    cdsxlsBAIRRO: TStringField;
    cdsxlsCEP: TStringField;
    cdsxlsCIDADE: TStringField;
    cdsxlsUF: TStringField;
    cdsxlsTELEFONE1: TStringField;
    cdsxlsTELEFONE2: TStringField;
    cdsxlsTELEFONE3: TStringField;
    cdsxlsTELEFONE4: TStringField;
    cdsxlsTELEFONE5: TStringField;
    cdsxlsTELEFONE6: TStringField;
    cdsxlsDATANASCIMENTO: TDateField;
    cdsxlsNATURALIDADE: TStringField;
    cdsxlsSEXO: TStringField;
    cdsxlsESTADOCIVIL: TStringField;
    cdsxlsNOMEDOPAI: TStringField;
    cdsxlsNOMEDAMÃE: TStringField;
    cdsxlsNOMEAVALISTA1: TStringField;
    cdsxlsCPFCNPJAVALISTA1: TStringField;
    cdsxlsENDEREÇOAVALISTA1: TStringField;
    cdsxlsBAIRROAVALISTA1: TStringField;
    cdsxlsCEPAVALISTA1: TStringField;
    cdsxlsCIDADEAVALISTA1: TStringField;
    cdsxlsUFAVALISTA1: TStringField;
    cdsxlsTELEFONE1AVALISTA1: TStringField;
    cdsxlsTELEFONE2AVALISTA1: TStringField;
    cdsxlsNOMEAVALISTA2: TStringField;
    cdsxlsCPFCNPJAVALISTA2: TStringField;
    cdsxlsENDEREÇOAVALISTA2: TStringField;
    cdsxlsBAIRROAVALISTA2: TStringField;
    cdsxlsCEPAVALISTA2: TStringField;
    cdsxlsCIDADEAVALISTA2: TStringField;
    cdsxlsUFAVALISTA2: TStringField;
    cdsxlsTELEFONE1AVALISTA2: TStringField;
    cdsxlsTELEFONE2AVALISTA2: TStringField;
    cdsxlsNOMEAVALISTA3: TStringField;
    cdsxlsCPFCNPJAVALISTA3: TStringField;
    cdsxlsENDEREÇOAVALISTA3: TStringField;
    cdsxlsBAIRROAVALISTA3: TStringField;
    cdsxlsCEPAVALISTA3: TStringField;
    cdsxlsCIDADEAVALISTA3: TStringField;
    cdsxlsUFAVALISTA3: TStringField;
    cdsxlsTELEFONE1AVALISTA3: TStringField;
    cdsxlsTELEFONE2AVALISTA3: TStringField;
    cdsxlsNOMEAVALISTA4: TStringField;
    cdsxlsCPFCNPJAVALISTA4: TStringField;
    cdsxlsENDEREÇOAVALISTA4: TStringField;
    cdsxlsBAIRROAVALISTA4: TStringField;
    cdsxlsCEPAVALISTA4: TStringField;
    cdsxlsCIDADEAVALISTA4: TStringField;
    cdsxlsUFAVALISTA4: TStringField;
    cdsxlsTELEFONE1AVALISTA4: TStringField;
    cdsxlsTELEFONE2AVALISTA4: TStringField;
    cdsxlsNOMEAVALISTA5: TStringField;
    cdsxlsCPFCNPJAVALISTA5: TStringField;
    cdsxlsENDEREÇOAVALISTA5: TStringField;
    cdsxlsBAIRROAVALISTA5: TStringField;
    cdsxlsCEPAVALISTA5: TStringField;
    cdsxlsCIDADEAVALISTA5: TStringField;
    cdsxlsUFAVALISTA5: TStringField;
    cdsxlsTELEFONE1AVALISTA5: TStringField;
    cdsxlsTELEFONE2AVALISTA5: TStringField;
    cdsxlsNOMEAVALISTA6: TStringField;
    cdsxlsCPFCNPJAVALISTA6: TStringField;
    cdsxlsENDEREÇOAVALISTA6: TStringField;
    cdsxlsBAIRROAVALISTA6: TStringField;
    cdsxlsCEPAVALISTA6: TStringField;
    cdsxlsCIDADEAVALISTA6: TStringField;
    cdsxlsUFAVALISTA6: TStringField;
    cdsxlsTELEFONE1AVALISTA6: TStringField;
    cdsxlsTELEFONE2AVALISTA6: TStringField;
    cdsxlsPROFISSÃO: TStringField;
    cdsxlsNOMELOCALDETRABALHO: TStringField;
    cdsxlsENDEREÇOLOCALDETRABALHO: TStringField;
    cdsxlsBAIRROLOCALDETRABALHO: TStringField;
    cdsxlsCEPLOCALDETRABALHO: TStringField;
    cdsxlsCIDADELOCALDETRABALHO: TStringField;
    cdsxlsUFLOCALDETRABALHO: TStringField;
    cdsxlsTELEFONE1LOCALDETRABALHO: TStringField;
    cdsxlsTELEFONE2LOCALDETRABALHO: TStringField;
    cdsxlsREFERENCIAPESSOAL: TStringField;
    cdsxlsTELEFONE1REFERENCIA: TStringField;
    cdsxlsTELEFONE2REFERENCIA: TStringField;
    cdsxlsREFERENCIAPESSOAL2: TStringField;
    cdsxlsTELEFONE1REFERENCIA2: TStringField;
    cdsxlsTELEFONE2REFERENCIA2: TStringField;
    cdsxlsREFERENCIAPESSOAL3: TStringField;
    cdsxlsTELEFONE1REFERENCIA3: TStringField;
    cdsxlsTELEFONE2REFERENCIA3: TStringField;
    cdsxlsSPCSERASA: TStringField;
    cdsxlsEMAIL: TStringField;
    cdsxlsDTEMISSÃO: TDateField;
    cdsxlsVALORPROTESTO: TCurrencyField;
    cdsxlsOBSOPERAÇÃO: TStringField;
    cdsxlsDTFIMTERCERIZAÇÃO: TDateField;
    cdsxlsVALORJUROS: TCurrencyField;
    cdsxlsCOD_CLASSIFICACAO_CLIENTE: TStringField;
    cdsxlsCOD_CLASSIFICACAO_OPERACAO: TStringField;
    Memo2: TMemo;
    ednome: TEdit;
    Panel2: TPanel;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    Label2: TLabel;
    btimporta_cada: TButton;
    cdscadas: TClientDataSet;
    cdscadas1: TStringField;
    cdscadas3: TStringField;
    cdscadas4: TStringField;
    cdscadas5: TStringField;
    cdscadas6: TStringField;
    cdscadas7: TStringField;
    cdscadas8: TStringField;
    cdscadas9: TStringField;
    cdscadas10: TStringField;
    cdscadas11: TStringField;
    cdscadas12: TStringField;
    cdscadas13: TStringField;
    cdscadas14: TStringField;
    cdscadas15: TStringField;
    cdscadas16: TStringField;
    cdscadas17: TStringField;
    cdscadas18: TStringField;
    cdscadas19: TStringField;
    cdscadas20: TStringField;
    cdscadas2: TStringField;
    dscadas: TDataSource;
    btimporta_inad: TButton;
    Memo1: TMemo;
    cdsinad: TClientDataSet;
    inad1: TStringField;
    inad2: TStringField;
    inad3: TStringField;
    inad4: TStringField;
    inad5: TStringField;
    inad6: TStringField;
    inad7: TStringField;
    inad8: TStringField;
    inad9: TStringField;
    inad10: TStringField;
    inad11: TStringField;
    inad12: TStringField;
    inad13: TStringField;
    inad14: TStringField;
    inad15: TStringField;
    inad16: TStringField;
    inad17: TStringField;
    inad18: TStringField;
    inad19: TStringField;
    inad20: TStringField;
    dsinad: TDataSource;
    inad21: TStringField;
    inad22: TStringField;
    btimporta_oper: TButton;
    cdsoper: TClientDataSet;
    cdsoper1: TStringField;
    cdsoper2: TStringField;
    cdsoper3: TStringField;
    cdsoper4: TStringField;
    cdsoper5: TStringField;
    cdsoper6: TStringField;
    cdsoper7: TStringField;
    cdsoper8: TStringField;
    cdsoper9: TStringField;
    dsoper: TDataSource;
    btimporta_tele: TButton;
    cdstele: TClientDataSet;
    cdstele1: TStringField;
    cdstele2: TStringField;
    cdstele3: TStringField;
    cdstele4: TStringField;
    cdstele5: TStringField;
    cdstele6: TStringField;
    cdstele7: TStringField;
    cdstele8: TStringField;
    dstele: TDataSource;
    btimporta_xls: TButton;
    pnlgeral: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    ImportExcel1: TImportExcel;
    btimporta_clioper: TButton;
    dsxlsclioper: TDataSource;
    cdsxlsclioper: TClientDataSet;
    cdsxlsclioperCLIENTE: TStringField;
    cdsxlsclioperDTNASCIMENTO: TDateField;
    cdsxlsclioperEMAIL: TStringField;
    cdsxlsclioperFONE: TStringField;
    cdsxlsclioperFONE2: TStringField;
    cdsxlsclioperENDERECO: TStringField;
    cdsxlsclioperNUMERO: TStringField;
    cdsxlsclioperSETOR: TStringField;
    cdsxlsclioperCIDADE: TStringField;
    cdsxlsclioperUF: TStringField;
    cdsxlsclioperCEP: TStringField;
    cdsxlsclioperCPF_CNPJ: TStringField;
    cdsxlsclioperIDENTIDADE: TStringField;
    cdsxlsclioperFONE3: TStringField;
    cdsxlsclioperFONE4: TStringField;
    cdsxlsclioperOPERACAO: TStringField;
    cdsxlsclioperVENCIMENTO: TDateField;
    cdsxlsclioperVALOR_NOMINAL: TFloatField;
    cdsxlsclioperSITUACAO: TStringField;
    cdsxlsclioperRECEBIMENTO: TDateField;
    cdsxlsclioperVALOR_RECEBIDO: TFloatField;
    uniscriptimporta: TFDQuery;
    uniscriptconsulta: TFDQuery;
    unigetid: TFDQuery;
    cdsxlsclioperCREDOR: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    Label13: TLabel;
    UniDSQCredor: TDataSource;
    uniQCredor: TFDQuery;
    btn_novo: TButton;
    cdsxlsx_nov2019: TClientDataSet;
    dscdsxlsx_nov2019: TDataSource;
    cdsxlsx_nov2019NOME: TStringField;
    cdsxlsx_nov2019CPFCNPJ: TStringField;
    cdsxlsx_nov2019TIPO: TStringField;
    cdsxlsx_nov2019SEXO: TStringField;
    cdsxlsx_nov2019DTNASCIMENTO: TStringField;
    cdsxlsx_nov2019DOCIDENTIDADE: TStringField;
    cdsxlsx_nov2019EMAIL1: TStringField;
    cdsxlsx_nov2019EMAIL2: TStringField;
    cdsxlsx_nov2019EMAIL3: TStringField;
    cdsxlsx_nov2019EMAIL4: TStringField;
    cdsxlsx_nov2019TELEFONE1: TStringField;
    cdsxlsx_nov2019TELEFONE2: TStringField;
    cdsxlsx_nov2019TELEFONE3: TStringField;
    cdsxlsx_nov2019TELEFONE4: TStringField;
    cdsxlsx_nov2019TELEFONE5: TStringField;
    cdsxlsx_nov2019TELEFONE6: TStringField;
    cdsxlsx_nov2019LOGRADOURO: TStringField;
    cdsxlsx_nov2019NUMERO: TStringField;
    cdsxlsx_nov2019COMPLEMENTO: TStringField;
    cdsxlsx_nov2019BAIRRO: TStringField;
    cdsxlsx_nov2019CIDADE: TStringField;
    cdsxlsx_nov2019ESTADO: TStringField;
    cdsxlsx_nov2019CEP: TStringField;
    cdsxlsx_nov2019OPERACAO: TStringField;
    cdsxlsx_nov2019DTVCTO: TStringField;
    cdsxlsx_nov2019VRNOMINAL: TStringField;
    cdsxlsx_nov2019SITUACAO: TStringField;
    cdsxlsx_nov2019DIASVENCIDOS: TStringField;
    cdsxlsx_nov2019DTRECEBIMENTO: TStringField;
    cdsxlsx_nov2019VRRECEBIDO: TStringField;
    cdsxlsx_nov2019FORMADEPGTO: TStringField;
    cdsxlsx_nov2019OBSERVACAO: TStringField;
    Memo3: TMemo;
    edtremessa: TEdit;
    edtdata: TEdit;
    edtregistros: TEdit;
    uniscriptupdate: TFDQuery;
    uniQCredorCODIGO: TFMTBCDField;
    uniQCredorNOME: TStringField;
    uniQCredorCOMISSAOFIXA: TStringField;
    uniQCredorCOMISSAO: TFMTBCDField;
    uniQCredorCENTRALIZADORA: TStringField;
    uniQCredorCC_TIPO: TStringField;
    uniQCredorCE_C1: TFMTBCDField;
    uniQCredorCE_C2: TFMTBCDField;
    uniQCredorCE_C3: TFMTBCDField;
    uniQCredorCE_C4: TFMTBCDField;
    uniQCredorCE_C5: TFMTBCDField;
    uniQCredorCE_C6: TFMTBCDField;
    uniQCredorCE_C7: TFMTBCDField;
    uniQCredorCE_C8: TFMTBCDField;
    uniQCredorCE_C9: TFMTBCDField;
    uniQCredorPREFCONT: TStringField;
    uniQCredorCONTADOR: TFMTBCDField;
    uniQCredorENDERECO: TStringField;
    uniQCredorSETOR: TStringField;
    uniQCredorNUMERO: TStringField;
    uniQCredorCIDADE: TStringField;
    uniQCredorUF: TStringField;
    uniQCredorCEP: TStringField;
    uniQCredorCPF: TStringField;
    uniQCredorCNPJ: TStringField;
    uniQCredorMETA_CAIXA: TFMTBCDField;
    uniQCredorMETA_REGULARIZACAO: TFMTBCDField;
    uniQCredorMULTA_PADRAO: TFMTBCDField;
    uniQCredorJUROS_PADRAO: TFMTBCDField;
    uniQCredorHONORARIOS_PADRAO: TFMTBCDField;
    uniQCredorDESCONTO_PADRAO: TFMTBCDField;
    uniQCredorCUSTO_BOLETO_PADRAO: TFMTBCDField;
    uniQCredorFATOR_PARC_PADRAO: TFMTBCDField;
    uniQCredorVALOR_PROTESTO_PADRAO: TFMTBCDField;
    uniQCredorPESO_CAIXA: TFMTBCDField;
    uniQCredorPESO_REGULARIZACAO: TFMTBCDField;
    uniQCredorINCLUIRDESPESAS: TStringField;
    uniQCredorRETENCAO: TFMTBCDField;
    uniQCredorDT_CONTRATO: TSQLTimeStampField;
    uniQCredorUSA_TAB_ATUALIZACAO: TStringField;
    uniQCredorREPRESENTANTE: TStringField;
    uniQCredorREP_ENDERECO: TStringField;
    uniQCredorREP_SETOR: TStringField;
    uniQCredorREP_CIDADE: TStringField;
    uniQCredorREP_UF: TStringField;
    uniQCredorREP_CEP: TStringField;
    uniQCredorREP_CPF: TStringField;
    uniQCredorREP_PROFISSAO: TStringField;
    uniQCredorREP_CARGO: TStringField;
    uniQCredorREP_NACIONALIDADE: TStringField;
    uniQCredorREP_ESTADOCIVIL: TStringField;
    uniQCredorFONE: TStringField;
    uniQCredorFAX: TStringField;
    uniQCredorDIAS_COB_HONORARIOS: TFMTBCDField;
    uniQCredorEMAIL1: TStringField;
    uniQCredorEMAIL2: TStringField;
    uniQCredorNRCONTRATO: TStringField;
    uniQCredorOBJETOCONTRATUAL: TStringField;
    uniQCredorTIPOPROTESTO_PADRAO: TStringField;
    uniQCredorDESCONTO_SOBRE_PADRAO: TFMTBCDField;
    uniQCredorGRAVA_VLRDIVIDA_EVENTO: TStringField;
    uniQCredorGRAVA_NEGOCIACAO_EVENTO: TStringField;
    uniQCredorCONTADOR_NP: TFMTBCDField;
    uniQCredorENTRADA_PADRAO: TFMTBCDField;
    uniQCredorTIPO_HONORARIO_PADRAO: TStringField;
    uniQCredorTIPO_ATUALIZACAO_DIVIDA: TStringField;
    uniQCredorTIPO_JUROS_PADRAO: TStringField;
    uniQCredorMENSAGEM_SMS: TStringField;
    uniQCredorPEDIR_SENHA_DESC: TStringField;
    uniQCredorJUROS_MINIMO: TFMTBCDField;
    uniQCredorDESCONTO_MAXIMO: TFMTBCDField;
    uniQCredorVALOR_MINIMO_PARCELA: TFMTBCDField;
    uniQCredorDIAS_MAXIMO_ENTRADA: TFMTBCDField;
    uniQCredorBOL_CONVENIO_PADRAO: TStringField;
    uniQCredorFASE_COBRANCA: TStringField;
    uniQCredorATIVO: TStringField;
    uniQCredorMULTA_MINIMA: TFMTBCDField;
    uniQCredorNRPRESTACAO_MAXIMO: TFMTBCDField;
    uniQCredorTIPO_CALCULO_PADRAO: TFMTBCDField;
    uniQCredorMOSTRAR_QUEBRA_ACORDO: TStringField;
    uniQCredorTAB_ATU_DIVIDA_PADRAO: TFMTBCDField;
    uniQCredorHONORARIO_SOBRE_PADRAO: TFMTBCDField;
    uniQCredorBLOQUEIO_LUPA: TStringField;
    uniQCredorBLOQUEIO_NIVEL: TStringField;
    uniQCredorCOMISSAO_TIPOATRASO: TStringField;
    uniQCredorDATA_MIN_EVENTO: TSQLTimeStampField;
    uniQCredorJUROS_PARCELA: TFMTBCDField;
    uniQCredorQUEBRA_ACORDO_DIAS: TFMTBCDField;
    uniQCredorQUEBRA_ACORDO_COD_EVENTO: TFMTBCDField;
    uniQCredorLIQUIDADA_COD_EVENTO: TFMTBCDField;
    uniQCredorTIPODIVISAOENCARGOS_PADRAO: TStringField;
    uniQCredorMODELO_RECIBO_PADRAO: TStringField;
    uniQCredorBLOQUEIO_END1: TStringField;
    uniQCredorBLOQUEIO_END2: TStringField;
    uniQCredorBLOQUEIO_NIVEL_END1: TStringField;
    uniQCredorBLOQUEIO_NIVEL_END2: TStringField;
    uniQCredorJUROS_MAXIMO: TFMTBCDField;
    uniQCredorMULTA_MAXIMO: TFMTBCDField;
    uniQCredorBLOQUEIO_DIVIDIR_SEM_JUROS: TStringField;
    uniQCredorDIAS_EMCOBRANCA_PADRAO: TFMTBCDField;
    uniQCredorNEGATIVACAO_CODIGO: TFMTBCDField;
    uniQCredorTIPO_DESCONTO_PADRAO: TStringField;
    uniQCredorEVENTOS_NRMAXIMO: TFMTBCDField;
    uniQCredorEVENTOS_NRDIASMAXIMO: TFMTBCDField;
    uniQCredorAGRUPAR_HON_COM_PRIMEIRA_PARC: TStringField;
    uniQCredorFORMAPGTO_NEGOCIACAO: TStringField;
    uniQCredorNEGATIVACAO_SERASA_CODIGO: TFMTBCDField;
    uniQCredorBLOQUEIA_TELEFONE_BLACKLIST: TStringField;
    uniQCredorPROTESTO_PRIMEIRA_PARC: TStringField;
    uniQCredorCOMISSAO_INTERVALO: TStringField;
    uniQCredorJUROS_BOLETO_REGISTRADO: TFMTBCDField;
    uniQCredorMULTA_BOLETO_REGISTRADO: TFMTBCDField;
    uniQCredorDADOS_BANCARIOS: TStringField;
    uniQCredorDTA_CAD: TSQLTimeStampField;
    uniQCredorUSR_CAD: TFMTBCDField;
    uniQCredorREBATES_TIPO_INTERVALO: TStringField;
    uniQCredorTIPO_MULTA_PADRAO: TStringField;
    uniQCredorCARTA_BOLETO: TStringField;
    uniQCredorTIPO_HONORARIO_ORIGEM: TStringField;
    uniQCredorATRIBUI_COBRADOR_ACORDO: TStringField;
    uniQCredorRETORNA_PARCELAS_ACORDO: TStringField;
    uniQCredorMANTER_PARCELAS_ACORDO: TStringField;
    uniQCredorBLACKLIST_NIVEL_BLOQ_RETORNO: TStringField;
    uniQCredorTAXA_ATUALIZACAO: TFMTBCDField;
    uniQCredorBOLETO_GERA_NOVO_NUMERO_RECALC: TStringField;
    uniQCredorBLOQUEIO_BOLETO_INCOMPLETO: TStringField;
    uniQCredorATU_PARC_ATRASO: TStringField;
    uniQCredorATU_PARC_ATRASO_NRDIASMAXIMO: TFMTBCDField;
    uniQCredorPORTALWEB_PADRAO: TFMTBCDField;
    uniQCredorEMITIR_UM_BOLETO_POR_VEZ: TStringField;
    uniQCredorPERC_JUROS_DIF_POR_PERIODO: TStringField;
    uniQCredorEXCLUIR_TEL_CAD_CLIENTE_NIVEL: TStringField;
    uniQCredorBLOQUEIO_EMISSAO_PARC_VENCIDA: TStringField;
    uniQCredorBLOQUEIO_ATU_BOLETO_EMITIDO: TStringField;
    uniQCredorBLOQUEIO_NEGOCIACAO_VENC_PARC: TStringField;
    uniQCredorBLOQUEIO_NEGOCIACAO_VLR_PARC: TStringField;
    uniQCredorNUMERO_PREST_C0NTAS: TFMTBCDField;
    uniQCredorATU_PARC_ATRASO_BLOQ_ENCARGOS: TStringField;
    uniQCredorID_1: TStringField;
    uniQCredorEVENTO_COBRANCA: TStringField;
    uniQCredorMULTA_CHECK: TStringField;
    uniQCredorMULTA_DE: TIntegerField;
    uniQCredorMULTA_A: TIntegerField;
    uniQCredorJUROS_CHECK: TStringField;
    uniQCredorJUROS_DE: TFMTBCDField;
    uniQCredorJUROS_A: TFMTBCDField;
    uniQCredorHONORARIO_CHECK: TStringField;
    uniQCredorHONORARIO_DE: TFMTBCDField;
    uniQCredorHONORARIO_A: TFMTBCDField;
    uniQCredorDESCONTOMAXIMO_CHECK: TStringField;
    uniQCredorDESCONTOMAXIMO_VALOR: TFMTBCDField;
    uniQCredorJUROSPARCELAMENTO_CHECK: TStringField;
    uniQCredorJUROSPARCELAMENTO_DE: TFMTBCDField;
    uniQCredorJUROSPARCELAMENTO_A: TFMTBCDField;
    uniQCredorMAXIMODIASPARCELAMENTO_CHECK: TStringField;
    uniQCredorMAXIMODIASPARCELAMENTO_VALOR: TFMTBCDField;
    uniQCredorMAXIMOPARCELAS_CHECK: TStringField;
    uniQCredorMAXIMOPARCELAS_VALOR: TFMTBCDField;
    uniQCredorCANCELARNEGOCIACAOAPOS_CHECK: TStringField;
    uniQCredorCANCELARNEGOCIACAOAPOS_VALOR: TFMTBCDField;
    uniQCredorCALCULARJUROSSOBREMULTA_CHECK: TStringField;
    uniQCredorINDICEDECORRECAO: TStringField;
    uniQCredorHONORARIOREAL_A: TFMTBCDField;
    uniQCredorHONORARIOREAL_CHECK: TStringField;
    uniQCredorHONORARIOREAL_DE: TFMTBCDField;
    uniQCredorPERMITENAOMENSAIS_CHECK: TStringField;
    uniQCredorUTILIZARJUROSCOMPOSTOS_CHECK: TStringField;
    uniQCredorCALCMULTASOBRECORRECAO_CHECK: TStringField;
    uniQCredorCALCJUROSSOBRECORRECAO_CHECK: TStringField;
    uniQCredorCOMISSOPERVRRECEB_CHECK: TStringField;
    uniQCredorCOMISSOPERVRCOMISS_CHECK: TStringField;
    uniQCredorINFORMACOES_ADICIONAIS: TBlobField;
    uniQCredorMAX_DIAS_PRIM_BOLETO: TIntegerField;
    uniQCredorPARCELA_MINIMA: TIntegerField;
    Label5: TLabel;
    cbxTipo: TComboBox;
    cdsxlsx_nov2019DATACOMPRA: TStringField;
    cdsxlsx_nov2019DATADISPONIVEL: TStringField;
    Button1: TButton;
    QCliente: TFDQuery;
    QClienteCODIGO: TFMTBCDField;
    QClienteNOME: TStringField;
    QClienteTIPOPESSOA: TStringField;
    QClienteCPF_CNPJ: TStringField;
    QClienteCONTACORRENTE: TStringField;
    QClienteREGIAO: TFMTBCDField;
    QClienteENDERECO: TStringField;
    QClienteNUMERO: TStringField;
    QClienteSETOR: TStringField;
    QClienteCIDADE: TStringField;
    QClienteUF: TStringField;
    QClienteCEP: TStringField;
    QClienteFONE: TStringField;
    QClienteFAXCEL: TStringField;
    QClienteENDENDERECO_1: TStringField;
    QClienteNUMERO_1: TStringField;
    QClienteSETOR_1: TStringField;
    QClienteCIDADE_1: TStringField;
    QClienteUF_1: TStringField;
    QClienteCEP_1: TStringField;
    QClienteFONE_1: TStringField;
    QClienteFAXCEL_1: TStringField;
    QClienteCONTATO_1: TStringField;
    QClienteFOTO: TBlobField;
    QClienteCONTATO: TStringField;
    QClienteMCI: TFMTBCDField;
    QClienteDEVOLVERBB: TStringField;
    QClienteREMESSABB: TFMTBCDField;
    QClienteOBS: TBlobField;
    QClienteDTA_NASCIMENTO: TStringField;
    QClienteCOD_CLASSIFICACAO: TIntegerField;
    QClienteDATA_MODIF: TSQLTimeStampField;
    QClientePONTO_REF1: TStringField;
    QClientePONTO_REF2: TStringField;
    QClienteAGENCIA: TStringField;
    QClienteLOCALIDADE: TStringField;
    QClienteSETOR_FAT: TStringField;
    QClienteROTA: TStringField;
    QClienteQUADRA: TStringField;
    QClienteLOTE: TStringField;
    QClienteSUBLOTE: TStringField;
    QClienteEND_PREFERENCIAL: TStringField;
    QClienteFONE_PREFERENCIAL: TStringField;
    QClienteE_MAIL: TStringField;
    QClienteE_MAIL1: TStringField;
    QClienteNRIDENTIDADE: TStringField;
    QClienteSEXO: TStringField;
    QClienteLOCAL_TRABALHO: TStringField;
    QClienteCARGO_TRABALHO: TStringField;
    QClienteSALARIO_TRABALHO: TFMTBCDField;
    QClienteNATURALIDADE: TStringField;
    QClienteESTADOCIVIL: TStringField;
    QClienteSCORE: TFMTBCDField;
    QClienteBEHAVIOR: TFMTBCDField;
    QClienteMOTIVOINADIMPLENCIA: TIntegerField;
    QClienteDTA_CAD: TSQLTimeStampField;
    QClienteUSR_CAD: TFMTBCDField;
    QClienteMOTIVORETORNO: TFMTBCDField;
    QClienteCODIGO_EXTERNO: TStringField;
    QClienteSCORE1: TFMTBCDField;
    QClienteORIGEMDOSDADOS: TStringField;
    QClienteCOLUMN2: TStringField;
    QClienteCOD_BANCO_COMISSAO: TIntegerField;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    QClienteVAR1: TStringField;
    QClienteVAR2: TStringField;
    QClienteCOD_EMPRESA: TIntegerField;
    QClienteCOD_OPERACAO: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure btimporta_cadaClick(Sender: TObject);
    procedure btimporta_inadClick(Sender: TObject);
    procedure btimporta_operClick(Sender: TObject);
    procedure btimporta_teleClick(Sender: TObject);
    procedure btimporta_xlsClick(Sender: TObject);
    procedure btimporta_clioperClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_novoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
    procedure GravaClientesBancos(pCodCliente, pCodBanco : integer);
    procedure GravaComissao(pDescComissao : string);
    function GetCodigo(pCampo, pNomeTabela : string) : integer;
  public
    { Public declarations }
  end;
var
  FImportaExportaArquivo: TFImportaExportaArquivo;

implementation

uses
  udatamodule, umenu, uFuncoes;

{$R *.DFM}

procedure TFImportaExportaArquivo.AdvGlowButton3Click(Sender: TObject);
begin
  FImportaExportaArquivo.FormShow(Sender);

  cdsxls.close;
  cdscadas.close;
  cdsinad.close;
  cdsoper.close;
  cdstele.close;

  fimportaexportaarquivo.cursor := crhourglass;

  if opendialog.execute then begin
    ednome.clear;
    memo2.clear;
    ednome.text := ExtractFileName(OpenDialog.FileName);
  end;

  progressbargeral.position := 0;

  fimportaexportaarquivo.cursor := crdefault;

  DBLookupComboBox1.KeyValue := 0;
end;

procedure TFImportaExportaArquivo.AdvGlowButton5Click(Sender: TObject);
var
  nome_arquivo, extensao_arquivo, tipo_arquivo: string;
begin
  if cbxTipo.ItemIndex = 2 then
    Button1.Click
  else if cbxTipo.ItemIndex = 3 then
    Button2.Click
  else if cbxTipo.ItemIndex = 4 then
    Button3.Click
  else if cbxTipo.ItemIndex = 5 then
    Button4.Click
  else if cbxTipo.ItemIndex = 6 then
    Button5.Click
  else
  begin
    if (cbxTipo.ItemIndex < 2) and (dblookupcombobox1.Text = '') then
    begin
      showmessage('Selecione um credor.');
      exit;
    end;

    pnlgeral.enabled := false;

    Screen.Cursor := crHourGlass;

    cdsxls.close;
    cdscadas.close;
    cdsinad.close;
    cdsoper.close;
    cdstele.close;
    cdsxlsx_nov2019.close;

    label_progressgeral.caption := 'Progresso Geral: (Carregando arquivo na memória)';

    nome_arquivo := ExtractFileName(OpenDialog.FileName);
    extensao_arquivo := ExtractFileExt(OpenDialog.FileName);
    tipo_arquivo := copy(nome_arquivo,0,4);

  {  if tipo_arquivo = 'CLIE' then begin FImportaExportaArquivo.btimporta_clioperClick(Sender); end else
    if ExtractFileExt(OpenDialog.FileName) = '.xls' then begin FImportaExportaArquivo.btimporta_xlsClick(Sender); end else
    if tipo_arquivo = 'cada' then begin FImportaExportaArquivo.btimporta_cadaClick(Sender); end else
    if tipo_arquivo = 'inad' then begin FImportaExportaArquivo.btimporta_inadClick(Sender); end else
    if tipo_arquivo = 'oper' then begin FImportaExportaArquivo.btimporta_operClick(Sender); end else
    if tipo_arquivo = 'tele' then begin FImportaExportaArquivo.btimporta_teleClick(Sender); end else begin

      showmessage('Arquivo inválido.');
      ProgressBarGeral.Position := 0;
      label_progressgeral.caption := 'Progresso Geral:';
      Screen.Cursor := crDefault;
      exit;
    end;
  }
    btn_novoclick(sender);

    ProgressBarGeral.Position := Progressbargeral.max;

    label_progressgeral.caption := 'Progresso Geral:';

    Screen.Cursor := crDefault;

    pnlgeral.enabled := true;
  end;

    //DBLookupComboBox1.KeyValue := 0;

end;

procedure TFImportaExportaArquivo.btimporta_cadaClick(Sender: TObject);
Var
  Arq, Str_Lista : TStringList;
  i: integer;
  quantidade_registros: string;
begin
  try
    cdsxls.close;
    cdscadas.close;
    cdsinad.close;
    cdsoper.close;
    cdstele.close;

    label_progressgeral.caption := 'Progresso Geral:';

    Application.ProcessMessages;

    cdscadas.disablecontrols;

    dbgrid1.DataSource := dscadas;

    Arq := TStringList.Create;
    Str_Lista := TStringList.Create;
    Arq.LoadFromFile(OpenDialog.Filename);

    Arq.Text := StringReplace(Arq.Text, '; ', ';', [rfReplaceAll]);

    label_progressgeral.caption := 'Progresso Geral: (Carregando arquivo na memória. Aguarde, por favor!)';
    Application.ProcessMessages;
    ProgressBarGeral.Max := Arq.Count;
    ProgressBarGeral.Position := 0;
    quantidade_registros := inttostr(Arq.Count);

    Str_Lista.Delimiter := ';';
    Str_Lista.QuoteChar := ' ';
    Str_Lista.StrictDelimiter := true;

    try cdscadas.createdataset; except end;
    cdscadas.EmptyDataSet;
    cdscadas.open;

    for I := 0 to Arq.Count -1 do
    begin
      ProgressBarGeral.Position := I;
      label_progressgeral.caption := 'Progresso Geral: (Importando ' + inttostr(i) + '/' + quantidade_registros + ')';
      Application.ProcessMessages;

      Str_Lista.DelimitedText := Arq.Strings[I];

      cdscadas.Append;

      cdscadas1.AsString  := Str_Lista[0];
      cdscadas2.AsString  := Str_Lista[1];
      cdscadas3.AsString  := Str_Lista[2];
      cdscadas4.AsString  := Str_Lista[3];
      cdscadas5.AsString  := Str_Lista[4];
      cdscadas6.AsString  := Str_Lista[5];
      cdscadas7.AsString  := Str_Lista[6];
      cdscadas8.AsString  := Str_Lista[7];
      cdscadas9.AsString  := Str_Lista[8];
      cdscadas10.AsString := Str_Lista[9];
      cdscadas11.AsString := Str_Lista[10];
      cdscadas12.AsString := Str_Lista[11];
      cdscadas13.AsString := Str_Lista[12];
      cdscadas14.AsString := Str_Lista[13];
      cdscadas15.AsString := Str_Lista[14];
      cdscadas16.AsString := Str_Lista[15];
      cdscadas17.AsString := Str_Lista[16];
      cdscadas18.AsString := Str_Lista[17];
      cdscadas19.AsString := Str_Lista[18];
      cdscadas20.AsString := Str_Lista[19];

      cdscadas.post;
    end;

    cdscadas.first;
    cdscadas.enablecontrols;

    DBGRID1.COLUMNS[0].WIDTH := 100;
    DBGRID1.COLUMNS[1].WIDTH := 100;
    DBGRID1.COLUMNS[2].WIDTH := 100;
    DBGRID1.COLUMNS[3].WIDTH := 100;
    DBGRID1.COLUMNS[4].WIDTH := 100;
    DBGRID1.COLUMNS[5].WIDTH := 100;
    DBGRID1.COLUMNS[6].WIDTH := 100;
    DBGRID1.COLUMNS[7].WIDTH := 100;
    DBGRID1.COLUMNS[8].WIDTH := 100;
    DBGRID1.COLUMNS[9].WIDTH := 100;
    DBGRID1.COLUMNS[10].WIDTH := 100;
    DBGRID1.COLUMNS[11].WIDTH := 100;
    DBGRID1.COLUMNS[12].WIDTH := 100;
    DBGRID1.COLUMNS[13].WIDTH := 100;
    DBGRID1.COLUMNS[14].WIDTH := 100;
    DBGRID1.COLUMNS[15].WIDTH := 100;
    DBGRID1.COLUMNS[16].WIDTH := 100;
    DBGRID1.COLUMNS[17].WIDTH := 100;
    DBGRID1.COLUMNS[18].WIDTH := 100;
    DBGRID1.COLUMNS[19].WIDTH := 100;

    dbgrid1.columns[0].title.Caption := cdscadas.fieldbyname('1').asstring;
    dbgrid1.columns[1].title.Caption := cdscadas.fieldbyname('2').asstring;
    dbgrid1.columns[2].title.Caption := cdscadas.fieldbyname('3').asstring;
    dbgrid1.columns[3].title.Caption := cdscadas.fieldbyname('4').asstring;
    dbgrid1.columns[4].title.Caption := cdscadas.fieldbyname('5').asstring;
    dbgrid1.columns[5].title.Caption := cdscadas.fieldbyname('6').asstring;
    dbgrid1.columns[6].title.Caption := cdscadas.fieldbyname('7').asstring;
    dbgrid1.columns[7].title.Caption := cdscadas.fieldbyname('8').asstring;
    dbgrid1.columns[8].title.Caption := cdscadas.fieldbyname('9').asstring;
    dbgrid1.columns[9].title.Caption := cdscadas.fieldbyname('10').asstring;
    dbgrid1.columns[10].title.Caption := cdscadas.fieldbyname('11').asstring;
    dbgrid1.columns[11].title.Caption := cdscadas.fieldbyname('12').asstring;
    dbgrid1.columns[12].title.Caption := cdscadas.fieldbyname('13').asstring;
    dbgrid1.columns[13].title.Caption := cdscadas.fieldbyname('14').asstring;
    dbgrid1.columns[14].title.Caption := cdscadas.fieldbyname('15').asstring;
    dbgrid1.columns[15].title.Caption := cdscadas.fieldbyname('16').asstring;
    dbgrid1.columns[16].title.Caption := cdscadas.fieldbyname('17').asstring;
    dbgrid1.columns[17].title.Caption := cdscadas.fieldbyname('18').asstring;
    dbgrid1.columns[18].title.Caption := cdscadas.fieldbyname('19').asstring;
    dbgrid1.columns[19].title.Caption := cdscadas.fieldbyname('20').asstring;

    cdscadas.delete;

    Arq.Free;
    Str_Lista.Free;
  except showmessage('Ocorreu um erro na importação. Ln465'); end;
end;

procedure TFImportaExportaArquivo.btimporta_inadClick(Sender: TObject);
Var
  Arq, Str_Lista : TStringList;
  i: integer;
  quantidade_registros: string;
begin
  try
    cdsxls.close;
    cdscadas.close;
    cdsinad.close;
    cdsoper.close;
    cdstele.close;

    label_progressgeral.caption := 'Progresso Geral:';

    cdsinad.disablecontrols;

    dbgrid1.DataSource := dsinad;

    Arq := TStringList.Create;
    Str_Lista := TStringList.Create;
    Arq.LoadFromFile(OpenDialog.Filename);

    Arq.Text := StringReplace(Arq.Text, '; ', ';', [rfReplaceAll]);

    Str_Lista.Delimiter := ';';
    Str_Lista.QuoteChar := ' ';
    Str_Lista.StrictDelimiter := true;

    try cdsinad.createdataset; except end;
    cdsinad.EmptyDataSet;
    cdsinad.open;

    label_progressgeral.caption := 'Progresso Geral: (Carregando arquivo na memória. Aguarde, por favor!)';
    ProgressBarGeral.Max := Arq.Count;
    ProgressBarGeral.Position := 0;
    quantidade_registros := inttostr(Arq.Count);

    for I := 0 to Arq.Count -1 do
    begin
      Str_Lista.DelimitedText := Arq.Strings[I];

      ProgressBarGeral.Position := I;
      label_progressgeral.caption := 'Progresso Geral: (Importando ' + inttostr(i) + '/' + quantidade_registros + ')';
      Application.ProcessMessages;

      cdsinad.Append;

      inad1.AsString  := Str_Lista[0];
      inad2.AsString  := Str_Lista[1];
      inad3.AsString  := Str_Lista[2];
      inad4.AsString  := Str_Lista[3];
      inad5.AsString  := Str_Lista[4];
      inad6.AsString  := Str_Lista[5];
      inad7.AsString  := Str_Lista[6];
      inad8.AsString  := Str_Lista[7];
      inad9.AsString  := Str_Lista[8];
      inad10.AsString := Str_Lista[9];
      inad11.AsString := Str_Lista[10];
      inad12.AsString := Str_Lista[11];
      inad13.AsString := Str_Lista[12];
      inad14.AsString := Str_Lista[13];
      inad15.AsString := Str_Lista[14];
      inad16.AsString := Str_Lista[15];
      inad17.AsString := Str_Lista[16];
      inad18.AsString := Str_Lista[17];
      inad19.AsString := Str_Lista[18];
      inad20.AsString := Str_Lista[19];
      inad21.AsString := Str_Lista[20];
      inad22.AsString := Str_Lista[21];

      cdsinad.post;
    end;

    cdsinad.first;
    cdsinad.enablecontrols;

    DBGRID1.COLUMNS[0].WIDTH := 100;
    DBGRID1.COLUMNS[1].WIDTH := 100;
    DBGRID1.COLUMNS[2].WIDTH := 100;
    DBGRID1.COLUMNS[3].WIDTH := 100;
    DBGRID1.COLUMNS[4].WIDTH := 100;
    DBGRID1.COLUMNS[5].WIDTH := 100;
    DBGRID1.COLUMNS[6].WIDTH := 100;
    DBGRID1.COLUMNS[7].WIDTH := 100;
    DBGRID1.COLUMNS[8].WIDTH := 100;
    DBGRID1.COLUMNS[9].WIDTH := 100;
    DBGRID1.COLUMNS[10].WIDTH := 100;
    DBGRID1.COLUMNS[11].WIDTH := 100;
    DBGRID1.COLUMNS[12].WIDTH := 100;
    DBGRID1.COLUMNS[13].WIDTH := 100;
    DBGRID1.COLUMNS[14].WIDTH := 100;
    DBGRID1.COLUMNS[15].WIDTH := 100;
    DBGRID1.COLUMNS[16].WIDTH := 100;
    DBGRID1.COLUMNS[17].WIDTH := 100;
    DBGRID1.COLUMNS[18].WIDTH := 100;
    DBGRID1.COLUMNS[19].WIDTH := 100;
    DBGRID1.COLUMNS[20].WIDTH := 100;
    DBGRID1.COLUMNS[21].WIDTH := 100;

    dbgrid1.columns[0].title.Caption := cdsinad.fieldbyname('1').asstring;
    dbgrid1.columns[1].title.Caption := cdsinad.fieldbyname('2').asstring;
    dbgrid1.columns[2].title.Caption := cdsinad.fieldbyname('3').asstring;
    dbgrid1.columns[3].title.Caption := cdsinad.fieldbyname('4').asstring;
    dbgrid1.columns[4].title.Caption := cdsinad.fieldbyname('5').asstring;
    dbgrid1.columns[5].title.Caption := cdsinad.fieldbyname('6').asstring;
    dbgrid1.columns[6].title.Caption := cdsinad.fieldbyname('7').asstring;
    dbgrid1.columns[7].title.Caption := cdsinad.fieldbyname('8').asstring;
    dbgrid1.columns[8].title.Caption := cdsinad.fieldbyname('9').asstring;
    dbgrid1.columns[9].title.Caption := cdsinad.fieldbyname('10').asstring;
    dbgrid1.columns[10].title.Caption := cdsinad.fieldbyname('11').asstring;
    dbgrid1.columns[11].title.Caption := cdsinad.fieldbyname('12').asstring;
    dbgrid1.columns[12].title.Caption := cdsinad.fieldbyname('13').asstring;
    dbgrid1.columns[13].title.Caption := cdsinad.fieldbyname('14').asstring;
    dbgrid1.columns[14].title.Caption := cdsinad.fieldbyname('15').asstring;
    dbgrid1.columns[15].title.Caption := cdsinad.fieldbyname('16').asstring;
    dbgrid1.columns[16].title.Caption := cdsinad.fieldbyname('17').asstring;
    dbgrid1.columns[17].title.Caption := cdsinad.fieldbyname('18').asstring;
    dbgrid1.columns[18].title.Caption := cdsinad.fieldbyname('19').asstring;
    dbgrid1.columns[19].title.Caption := cdsinad.fieldbyname('20').asstring;
    dbgrid1.columns[20].title.Caption := cdsinad.fieldbyname('21').asstring;
    dbgrid1.columns[21].title.Caption := cdsinad.fieldbyname('22').asstring;

    cdsinad.delete;

    Arq.Free;
    Str_Lista.Free;
  except showmessage('Ocorreu um erro na importação. Ln602'); end;
end;

procedure TFImportaExportaArquivo.btimporta_operClick(Sender: TObject);
Var
  Arq, Str_Lista : TStringList;
  i: integer;
  quantidade_registros: string;
begin
  try
    cdsxls.close;
    cdscadas.close;
    cdsinad.close;
    cdsoper.close;
    cdstele.close;

    Application.ProcessMessages;

    label_progressgeral.caption := 'Progresso Geral:';

    cdsoper.disablecontrols;

    dbgrid1.DataSource := dsoper;

    Arq := TStringList.Create;
    Str_Lista := TStringList.Create;
    Arq.LoadFromFile(OpenDialog.Filename);

    Arq.Text := StringReplace(Arq.Text, '; ', ';', [rfReplaceAll]);

    Str_Lista.Delimiter := ';';
    Str_Lista.QuoteChar := ' ';
    Str_Lista.StrictDelimiter := true;

    try cdsoper.createdataset; except end;
    cdsoper.EmptyDataSet;
    cdsoper.open;

    label_progressgeral.caption := 'Progresso Geral: (Carregando arquivo na memória. Aguarde, por favor!)';
    ProgressBarGeral.Max := Arq.Count;
    ProgressBarGeral.Position := 0;
    quantidade_registros := inttostr(Arq.Count);

    for I := 0 to Arq.Count -1 do
    begin
      Str_Lista.DelimitedText := Arq.Strings[I];

      ProgressBarGeral.Position := I;
      label_progressgeral.caption := 'Progresso Geral: (Importando ' + inttostr(i) + '/' + quantidade_registros + ')';
      Application.ProcessMessages;

      cdsoper.Append;

      cdsoper1.AsString  := Str_Lista[0];
      cdsoper2.AsString  := Str_Lista[1];
      cdsoper3.AsString  := Str_Lista[2];
      cdsoper4.AsString  := Str_Lista[3];
      cdsoper5.AsString  := Str_Lista[4];
      cdsoper6.AsString  := Str_Lista[5];
      cdsoper7.AsString  := Str_Lista[6];
      cdsoper8.AsString  := Str_Lista[7];
      cdsoper9.AsString  := Str_Lista[8];

      cdsoper.post;
    end;

    cdsoper.first;

    sleep(3000);

    cdsoper.enablecontrols;

    DBGRID1.COLUMNS[0].WIDTH := 100;
    DBGRID1.COLUMNS[1].WIDTH := 100;
    DBGRID1.COLUMNS[2].WIDTH := 100;
    DBGRID1.COLUMNS[3].WIDTH := 100;
    DBGRID1.COLUMNS[4].WIDTH := 100;
    DBGRID1.COLUMNS[5].WIDTH := 100;
    DBGRID1.COLUMNS[6].WIDTH := 100;
    DBGRID1.COLUMNS[7].WIDTH := 100;
    DBGRID1.COLUMNS[8].WIDTH := 100;

    dbgrid1.columns[0].title.Caption := cdsoper.fieldbyname('1').asstring;
    dbgrid1.columns[1].title.Caption := cdsoper.fieldbyname('2').asstring;
    dbgrid1.columns[2].title.Caption := cdsoper.fieldbyname('3').asstring;
    dbgrid1.columns[3].title.Caption := cdsoper.fieldbyname('4').asstring;
    dbgrid1.columns[4].title.Caption := cdsoper.fieldbyname('5').asstring;
    dbgrid1.columns[5].title.Caption := cdsoper.fieldbyname('6').asstring;
    dbgrid1.columns[6].title.Caption := cdsoper.fieldbyname('7').asstring;
    dbgrid1.columns[7].title.Caption := cdsoper.fieldbyname('8').asstring;
    dbgrid1.columns[8].title.Caption := cdsoper.fieldbyname('9').asstring;

    cdsoper.delete;

    Arq.Free;
    Str_Lista.Free;
  except showmessage('Ocorreu um erro na importação. Ln705'); end;
end;

procedure TFImportaExportaArquivo.btimporta_teleClick(Sender: TObject);
Var
  Arq, Str_Lista : TStringList;
  i: integer;
  quantidade_registros: string;
begin
  try
    cdsxls.close;
    cdscadas.close;
    cdsinad.close;
    cdsoper.close;
    cdstele.close;

    Application.ProcessMessages;

    label_progressgeral.caption := 'Progresso Geral:';

    cdstele.disablecontrols;

    dbgrid1.DataSource := dstele;

    Arq := TStringList.Create;
    Str_Lista := TStringList.Create;
    Arq.LoadFromFile(OpenDialog.Filename);

    Arq.Text := StringReplace(Arq.Text, '; ', ';', [rfReplaceAll]);

    Str_Lista.Delimiter := ';';
    Str_Lista.QuoteChar := ' ';
    Str_Lista.StrictDelimiter := true;

    try cdstele.createdataset; except end;
    cdstele.EmptyDataSet;
    cdstele.open;

    memo1.clear;

    label_progressgeral.caption := 'Progresso Geral: (Carregando arquivo na memória. Aguarde, por favor!)';
    ProgressBarGeral.Max := Arq.Count;
    ProgressBarGeral.Position := 0;
    quantidade_registros := inttostr(Arq.Count);

    for I := 0 to Arq.Count -1 do
    begin
      try
        Str_Lista.DelimitedText := Arq.Strings[I];

        ProgressBarGeral.Position := I;
        label_progressgeral.caption := 'Progresso Geral: (Importando ' + inttostr(i) + '/' + quantidade_registros + ')';
        Application.ProcessMessages;

        cdstele.Append;

        cdstele1.AsString  := Str_Lista[0];
        cdstele2.AsString  := Str_Lista[1];
        cdstele3.AsString  := Str_Lista[2];
        cdstele4.AsString  := Str_Lista[3];
        cdstele5.AsString  := Str_Lista[4];
        cdstele6.AsString  := Str_Lista[5];
        cdstele7.AsString  := Str_Lista[6];
        cdstele8.AsString  := Str_Lista[7];

        cdstele.post;
      except memo1.lines.add(Str_Lista[1]) end;
    end;

    cdstele.first;
    cdstele.enablecontrols;

    DBGRID1.COLUMNS[0].WIDTH := 100;
    DBGRID1.COLUMNS[1].WIDTH := 100;
    DBGRID1.COLUMNS[2].WIDTH := 100;
    DBGRID1.COLUMNS[3].WIDTH := 100;
    DBGRID1.COLUMNS[4].WIDTH := 100;
    DBGRID1.COLUMNS[5].WIDTH := 100;
    DBGRID1.COLUMNS[6].WIDTH := 100;
    DBGRID1.COLUMNS[7].WIDTH := 100;

    dbgrid1.columns[0].title.Caption := cdstele.fieldbyname('1').asstring;
    dbgrid1.columns[1].title.Caption := cdstele.fieldbyname('2').asstring;
    dbgrid1.columns[2].title.Caption := cdstele.fieldbyname('3').asstring;
    dbgrid1.columns[3].title.Caption := cdstele.fieldbyname('4').asstring;
    dbgrid1.columns[4].title.Caption := cdstele.fieldbyname('5').asstring;
    dbgrid1.columns[5].title.Caption := cdstele.fieldbyname('6').asstring;
    dbgrid1.columns[6].title.Caption := cdstele.fieldbyname('7').asstring;
    dbgrid1.columns[7].title.Caption := cdstele.fieldbyname('8').asstring;

    cdstele.delete;

    Arq.Free;
    Str_Lista.Free;
  except showmessage('Ocorreu um erro na importação. Ln807'); end;
end;

procedure TFImportaExportaArquivo.btimporta_xlsClick(Sender: TObject);
var
  I: Integer;
  quantidade_registros: string;
begin
  try
    DBGRID1.DataSource := DSXLS;

    ImportExcel1.ExcelFile := Opendialog.Filename;
    ImportExcel1.ExcelParaStringGrid(StringGrid1, ProgressBarGeral);

    Try cdsxls.CreateDataSet; except end;

    cdsxls.open;
    cdsxls.EmptyDataSet;
    cdsxls.disablecontrols;

    ProgressBarGeral.Max      := StringGrid1.RowCount;
    ProgressBarGeral.Position := 0;
    quantidade_registros := inttostr(StringGrid1.RowCount-3);

    label_progressgeral.caption := 'Progresso Geral: (Importando para as tabelas)';

    try
     for I := 3 to StringGrid1.RowCount do begin

      ProgressBarGeral.Position := I;
      label_progressgeral.caption := 'Progresso Geral: (Importando ' + inttostr(i) + '/' + quantidade_registros + ')';

      Application.ProcessMessages;

      cdsxls.append;

      cdsxlsTIPO.AsString                       := StringGrid1.Cells[0,I];
      cdsxlsNROPERAÇÃO.AsString                 := StringGrid1.Cells[1,I];
      cdsxlsNOMEOPERAÇÃO.AsString               := StringGrid1.Cells[2,I];
      cdsxlsAGENCIA.AsString                    := StringGrid1.Cells[3,I];
      cdsxlsCONTA.AsString                      := StringGrid1.Cells[4,I];
      cdsxlsPRODUTO.AsString                    := StringGrid1.Cells[5,I];
      cdsxlsDTATUALIZADO.AsString               := StringGrid1.Cells[6,I];
      cdsxlsDTVENCIMENTO.AsString               := StringGrid1.Cells[7,I];
      cdsxlsVALOROPERAÇÃO.AsString              := StringGrid1.Cells[8,I];
      if StringGrid1.Cells[9,I] <> '' then
        cdsxlsVALORVENCIDO.AsString               := StringGrid1.Cells[9,I]
      else
        cdsxlsVALORVENCIDO.AsFloat               := 0;
      cdsxlsCONDNEGOCIAIS.AsString              := StringGrid1.Cells[10,I];
      cdsxlsCPFCNPJ.AsString                    := StringGrid1.Cells[11,I];
      cdsxlsMCI.AsString                        := StringGrid1.Cells[12,I];
      cdsxlsNRFICHA.AsString                    := StringGrid1.Cells[13,I];
      cdsxlsNOMEDOCLIENTE.AsString              := StringGrid1.Cells[14,I];
      cdsxlsENDEREÇO.AsString                   := StringGrid1.Cells[15,I];
      cdsxlsNUMERO.AsString                     := StringGrid1.Cells[16,I];
      cdsxlsBAIRRO.AsString                     := StringGrid1.Cells[17,I];
      cdsxlsCEP.AsString                        := StringGrid1.Cells[18,I];
      cdsxlsCIDADE.AsString                     := StringGrid1.Cells[19,I];
      cdsxlsUF.AsString                         := StringGrid1.Cells[20,I];
      cdsxlsTELEFONE1.AsString                  := StringGrid1.Cells[21,I];
      cdsxlsTELEFONE2.AsString                  := StringGrid1.Cells[22,I];
      cdsxlsTELEFONE3.AsString                  := StringGrid1.Cells[23,I];
      cdsxlsTELEFONE4.AsString                  := StringGrid1.Cells[24,I];
      cdsxlsTELEFONE5.AsString                  := StringGrid1.Cells[25,I];
      cdsxlsTELEFONE6.AsString                  := StringGrid1.Cells[26,I];
      cdsxlsDATANASCIMENTO.AsString             := StringGrid1.Cells[27,I];
      cdsxlsNATURALIDADE.AsString               := StringGrid1.Cells[28,I];
      cdsxlsSEXO.AsString                       := StringGrid1.Cells[29,I];
      cdsxlsESTADOCIVIL.AsString                := StringGrid1.Cells[30,I];
      cdsxlsNOMEDOPAI.AsString                  := StringGrid1.Cells[31,I];
      cdsxlsNOMEDAMÃE.AsString                  := StringGrid1.Cells[32,I];
      cdsxlsNOMEAVALISTA1.AsString              := StringGrid1.Cells[33,I];
      cdsxlsCPFCNPJAVALISTA1.AsString           := StringGrid1.Cells[34,I];
      cdsxlsENDEREÇOAVALISTA1.AsString          := StringGrid1.Cells[35,I];
      cdsxlsBAIRROAVALISTA1.AsString            := StringGrid1.Cells[36,I];
      cdsxlsCEPAVALISTA1.AsString               := StringGrid1.Cells[37,I];
      cdsxlsCIDADEAVALISTA1.AsString            := StringGrid1.Cells[38,I];
      cdsxlsUFAVALISTA1.AsString                := StringGrid1.Cells[39,I];
      cdsxlsTELEFONE1AVALISTA1.AsString         := StringGrid1.Cells[40,I];
      cdsxlsTELEFONE2AVALISTA1.AsString         := StringGrid1.Cells[41,I];
      cdsxlsNOMEAVALISTA2.AsString              := StringGrid1.Cells[42,I];
      cdsxlsCPFCNPJAVALISTA2.AsString           := StringGrid1.Cells[43,I];
      cdsxlsENDEREÇOAVALISTA2.AsString          := StringGrid1.Cells[44,I];
      cdsxlsBAIRROAVALISTA2.AsString            := StringGrid1.Cells[45,I];
      cdsxlsCEPAVALISTA2.AsString               := StringGrid1.Cells[46,I];
      cdsxlsCIDADEAVALISTA2.AsString            := StringGrid1.Cells[47,I];
      cdsxlsUFAVALISTA2.AsString                := StringGrid1.Cells[48,I];
      cdsxlsTELEFONE1AVALISTA2.AsString         := StringGrid1.Cells[49,I];
      cdsxlsTELEFONE2AVALISTA2.AsString         := StringGrid1.Cells[50,I];
      cdsxlsNOMEAVALISTA3.AsString              := StringGrid1.Cells[51,I];
      cdsxlsCPFCNPJAVALISTA3.AsString           := StringGrid1.Cells[52,I];
      cdsxlsENDEREÇOAVALISTA3.AsString          := StringGrid1.Cells[53,I];
      cdsxlsBAIRROAVALISTA3.AsString            := StringGrid1.Cells[54,I];
      cdsxlsCEPAVALISTA3.AsString               := StringGrid1.Cells[55,I];
      cdsxlsCIDADEAVALISTA3.AsString            := StringGrid1.Cells[56,I];
      cdsxlsUFAVALISTA3.AsString                := StringGrid1.Cells[57,I];
      cdsxlsTELEFONE1AVALISTA3.AsString         := StringGrid1.Cells[58,I];
      cdsxlsTELEFONE2AVALISTA3.AsString         := StringGrid1.Cells[59,I];
      cdsxlsNOMEAVALISTA4.AsString              := StringGrid1.Cells[60,I];
      cdsxlsCPFCNPJAVALISTA4.AsString           := StringGrid1.Cells[61,I];
      cdsxlsENDEREÇOAVALISTA4.AsString          := StringGrid1.Cells[62,I];
      cdsxlsBAIRROAVALISTA4.AsString            := StringGrid1.Cells[63,I];
      cdsxlsCEPAVALISTA4.AsString               := StringGrid1.Cells[64,I];
      cdsxlsCIDADEAVALISTA4.AsString            := StringGrid1.Cells[65,I];
      cdsxlsUFAVALISTA4.AsString                := StringGrid1.Cells[66,I];
      cdsxlsTELEFONE1AVALISTA4.AsString         := StringGrid1.Cells[67,I];
      cdsxlsTELEFONE2AVALISTA4.AsString         := StringGrid1.Cells[68,I];
      cdsxlsNOMEAVALISTA5.AsString              := StringGrid1.Cells[69,I];
      cdsxlsCPFCNPJAVALISTA5.AsString           := StringGrid1.Cells[70,I];
      cdsxlsENDEREÇOAVALISTA5.AsString          := StringGrid1.Cells[71,I];
      cdsxlsBAIRROAVALISTA5.AsString            := StringGrid1.Cells[72,I];
      cdsxlsCEPAVALISTA5.AsString               := StringGrid1.Cells[73,I];
      cdsxlsCIDADEAVALISTA5.AsString            := StringGrid1.Cells[74,I];
      cdsxlsUFAVALISTA5.AsString                := StringGrid1.Cells[75,I];
      cdsxlsTELEFONE1AVALISTA5.AsString         := StringGrid1.Cells[76,I];
      cdsxlsTELEFONE2AVALISTA5.AsString         := StringGrid1.Cells[77,I];
      cdsxlsNOMEAVALISTA6.AsString              := StringGrid1.Cells[78,I];
      cdsxlsCPFCNPJAVALISTA6.AsString           := StringGrid1.Cells[79,I];
      cdsxlsENDEREÇOAVALISTA6.AsString          := StringGrid1.Cells[80,I];
      cdsxlsBAIRROAVALISTA6.AsString            := StringGrid1.Cells[81,I];
      cdsxlsCEPAVALISTA6.AsString               := StringGrid1.Cells[82,I];
      cdsxlsCIDADEAVALISTA6.AsString            := StringGrid1.Cells[83,I];
      cdsxlsUFAVALISTA6.AsString                := StringGrid1.Cells[84,I];
      cdsxlsTELEFONE1AVALISTA6.AsString         := StringGrid1.Cells[85,I];
      cdsxlsTELEFONE2AVALISTA6.AsString         := StringGrid1.Cells[86,I];
      cdsxlsPROFISSÃO.AsString                  := StringGrid1.Cells[87,I];
      cdsxlsNOMELOCALDETRABALHO.AsString        := StringGrid1.Cells[88,I];
      cdsxlsENDEREÇOLOCALDETRABALHO.AsString    := StringGrid1.Cells[89,I];
      cdsxlsBAIRROLOCALDETRABALHO.AsString      := StringGrid1.Cells[90,I];
      cdsxlsCEPLOCALDETRABALHO.AsString         := StringGrid1.Cells[91,I];
      cdsxlsCIDADELOCALDETRABALHO.AsString      := StringGrid1.Cells[92,I];
      cdsxlsUFLOCALDETRABALHO.AsString          := StringGrid1.Cells[93,I];
      cdsxlsTELEFONE1LOCALDETRABALHO.AsString   := StringGrid1.Cells[94,I];
      cdsxlsTELEFONE2LOCALDETRABALHO.AsString   := StringGrid1.Cells[95,I];
      cdsxlsREFERENCIAPESSOAL.AsString          := StringGrid1.Cells[96,I];
      cdsxlsTELEFONE1REFERENCIA.AsString        := StringGrid1.Cells[97,I];
      cdsxlsTELEFONE2REFERENCIA.AsString        := StringGrid1.Cells[98,I];
      cdsxlsREFERENCIAPESSOAL2.AsString         := StringGrid1.Cells[99,I];
      cdsxlsTELEFONE1REFERENCIA2.AsString       := StringGrid1.Cells[100,I];
      cdsxlsTELEFONE2REFERENCIA2.AsString       := StringGrid1.Cells[101,I];
      cdsxlsREFERENCIAPESSOAL3.AsString         := StringGrid1.Cells[102,I];
      cdsxlsTELEFONE1REFERENCIA3.AsString       := StringGrid1.Cells[103,I];
      cdsxlsTELEFONE2REFERENCIA3.AsString       := StringGrid1.Cells[104,I];
      cdsxlsSPCSERASA.AsString                  := StringGrid1.Cells[105,I];
      cdsxlsEMAIL.AsString                      := StringGrid1.Cells[106,I];
      cdsxlsDTEMISSÃO.AsString                  := StringGrid1.Cells[107,I];
      cdsxlsVALORPROTESTO.AsString              := StringGrid1.Cells[108,I];
      cdsxlsOBSOPERAÇÃO.AsString                := StringGrid1.Cells[109,I];
      cdsxlsDTFIMTERCERIZAÇÃO.AsString          := StringGrid1.Cells[110,I];
      cdsxlsVALORJUROS.AsString                 := StringGrid1.Cells[111,I];
      cdsxlsCOD_CLASSIFICACAO_CLIENTE.AsString  := StringGrid1.Cells[112,I];
      cdsxlsCOD_CLASSIFICACAO_OPERACAO.AsString := StringGrid1.Cells[113,I];

      cdsxls.post;
     end;
    except showmessage('Arquivo não carregado. Erro Ln 320')  end;

    try
      cdsxls.first;
      while not cdsxls.eof do begin
        if cdsxlsNROPERAÇÃO.AsString = '' then cdsxls.delete else cdsxls.next;
      end;
//      EDTOTAL.TEXT := inttostr(cdsxls.recordcount - 3) + ' (c)';
      cdsxls.first;
    except showmessage('Arquivo não carregado. Erro Ln 622')  end;

    cdsxls.enablecontrols;

    DBGRID1.COLUMNS[0].WIDTH := 100;
    DBGRID1.COLUMNS[1].WIDTH := 100;
    DBGRID1.COLUMNS[2].WIDTH := 100;
    DBGRID1.COLUMNS[3].WIDTH := 100;
    DBGRID1.COLUMNS[4].WIDTH := 100;
    DBGRID1.COLUMNS[5].WIDTH := 100;
    DBGRID1.COLUMNS[6].WIDTH := 100;
    DBGRID1.COLUMNS[7].WIDTH := 100;
    DBGRID1.COLUMNS[8].WIDTH := 100;
    DBGRID1.COLUMNS[9].WIDTH := 100;
    DBGRID1.COLUMNS[10].WIDTH := 100;
    DBGRID1.COLUMNS[11].WIDTH := 100;
    DBGRID1.COLUMNS[12].WIDTH := 100;
    DBGRID1.COLUMNS[13].WIDTH := 100;
    DBGRID1.COLUMNS[14].WIDTH := 100;
    DBGRID1.COLUMNS[15].WIDTH := 100;
    DBGRID1.COLUMNS[16].WIDTH := 100;
    DBGRID1.COLUMNS[17].WIDTH := 100;
    DBGRID1.COLUMNS[18].WIDTH := 100;
    DBGRID1.COLUMNS[19].WIDTH := 100;
    DBGRID1.COLUMNS[20].WIDTH := 100;
    DBGRID1.COLUMNS[21].WIDTH := 100;
  except showmessage('Ocorreu um erro na importação. Ln1002'); end;
end;

procedure TFImportaExportaArquivo.btn_novoClick(Sender: TObject);
var
  I, seq_cliente_codigo, codigo_cliente, seq_operacoes_codigo, seq_PARCELAS: Integer;
  var_noperacao, quantidade_registros, var_credor, var_cliente, remessa: string;
  vMsg : boolean;
begin
  memo3.clear;
  vMsg := False;

  remessa := FormatDateTime('yyyyMMdd',now) + uniqcredor.fieldbyname('codigo').asstring + IntToStr(GetID('codigo','remessas'));
  edtremessa.text := remessa;
  edtdata.text := datetostr(now);
  DBGRID1.DataSource := dsxlsclioper;

  ImportExcel1.ExcelFile := Opendialog.Filename;
  ImportExcel1.ExcelParaStringGrid(StringGrid1, ProgressBarGeral);

  cdsxlsx_nov2019.close;

  Try
    cdsxlsx_nov2019.CreateDataSet;
  except
  end;

    cdsxlsx_nov2019.open;
    cdsxlsx_nov2019.EmptyDataSet;
    cdsxlsx_nov2019.disablecontrols;

    ProgressBarGeral.Max      := StringGrid1.RowCount;
    ProgressBarGeral.Position := 0;
    quantidade_registros := inttostr(StringGrid1.RowCount-1);

    edtregistros.text := quantidade_registros;

    label_progressgeral.caption := 'Progresso Geral: (Importando para as tabelas)';

    try
      frmdatamodule.uniconnection1.starttransaction;
    except
    end;

     for I := 1 to StringGrid1.RowCount-1 do
     begin
        ProgressBarGeral.Position := I;
        label_progressgeral.caption := 'Progresso Geral: (Importando ' + inttostr(i) + '/' + quantidade_registros + ')';

        Application.ProcessMessages;

        cdsxlsx_nov2019.append;
        if cbxTipo.ItemIndex = 0 then
        begin
          //validação
//          if (cbxTipo.ItemIndex = 0) and
//             ((StringGrid1.Cells[0,I]) = '') or
//             ((StringGrid1.Cells[1,I]) = '') or
//             ((StringGrid1.Cells[24,I]) = '') or
//             ((StringGrid1.Cells[25,I]) = '') then
//            vMsg := True
//          else
//          begin
          if StringGrid1.Cells[0,I] <> '' then
          begin
            cdsxlsx_nov2019NOME.asstring           := UpperCase(StringGrid1.Cells[0,I]);
            if Length(SoNumero(StringGrid1.Cells[1,I])) = 14 then
            begin
              cdsxlsx_nov2019TIPO.asstring := 'J';
              cdsxlsx_nov2019CPFCNPJ.asstring        := FormataCNPJ(SoNumero(StringGrid1.Cells[1,I]));
            end
            else
            begin
              cdsxlsx_nov2019TIPO.asstring := 'F';
              cdsxlsx_nov2019CPFCNPJ.asstring        := FormataCPF(SoNumero(StringGrid1.Cells[1,I]));
            end;

            cdsxlsx_nov2019SEXO.asstring           := StringGrid1.Cells[3,I];
            cdsxlsx_nov2019DTNASCIMENTO.asstring   := StringGrid1.Cells[4,I];
            cdsxlsx_nov2019DOCIDENTIDADE.asstring  := StringGrid1.Cells[5,I];
            cdsxlsx_nov2019EMAIL1.asstring         := StringGrid1.Cells[6,I];
            cdsxlsx_nov2019EMAIL2.asstring         := StringGrid1.Cells[7,I];
            cdsxlsx_nov2019EMAIL3.asstring         := StringGrid1.Cells[8,I];
            cdsxlsx_nov2019EMAIL4.asstring         := StringGrid1.Cells[9,I];
            if not IsAlphaNumerico(StringGrid1.Cells[10,I]) then
              cdsxlsx_nov2019TELEFONE1.asstring      := FormatarTelefone(StringGrid1.Cells[10,I])
            else
              cdsxlsx_nov2019TELEFONE1.asstring      := StringGrid1.Cells[10,I];
            if not IsAlphaNumerico(StringGrid1.Cells[11,I]) then
              cdsxlsx_nov2019TELEFONE2.asstring      := FormatarTelefone(StringGrid1.Cells[11,I])
            else
              cdsxlsx_nov2019TELEFONE2.asstring      := StringGrid1.Cells[11,I];
            if not IsAlphaNumerico(StringGrid1.Cells[12,I]) then
              cdsxlsx_nov2019TELEFONE3.asstring      := FormatarTelefone(StringGrid1.Cells[12,I])
            else
              cdsxlsx_nov2019TELEFONE3.asstring      := StringGrid1.Cells[12,I];
            if not IsAlphaNumerico(StringGrid1.Cells[13,I]) then
              cdsxlsx_nov2019TELEFONE4.asstring      := FormatarTelefone(StringGrid1.Cells[13,I])
            else
              cdsxlsx_nov2019TELEFONE4.asstring      := StringGrid1.Cells[13,I];
            if not IsAlphaNumerico(StringGrid1.Cells[14,I]) then
              cdsxlsx_nov2019TELEFONE5.asstring      := FormatarTelefone(StringGrid1.Cells[14,I])
            else
              cdsxlsx_nov2019TELEFONE5.asstring      := StringGrid1.Cells[14,I];
            if not IsAlphaNumerico(StringGrid1.Cells[15,I]) then
              cdsxlsx_nov2019TELEFONE6.asstring      := FormatarTelefone(StringGrid1.Cells[15,I])
            else
              cdsxlsx_nov2019TELEFONE6.asstring      := StringGrid1.Cells[15,I];
            cdsxlsx_nov2019LOGRADOURO.asstring     := StringGrid1.Cells[16,I];
            cdsxlsx_nov2019NUMERO.asstring         := StringGrid1.Cells[17,I];
            cdsxlsx_nov2019COMPLEMENTO.asstring    := StringGrid1.Cells[18,I];
            cdsxlsx_nov2019BAIRRO.asstring         := StringGrid1.Cells[19,I];
            cdsxlsx_nov2019CIDADE.asstring         := StringGrid1.Cells[20,I];
            cdsxlsx_nov2019ESTADO.asstring         := StringGrid1.Cells[21,I];
            cdsxlsx_nov2019CEP.asstring            := StringGrid1.Cells[22,I];
            cdsxlsx_nov2019OPERACAO.asstring       := StringGrid1.Cells[23,I];
            cdsxlsx_nov2019DTVCTO.asstring         := StringGrid1.Cells[24,I];
            cdsxlsx_nov2019VRNOMINAL.asstring      := StringGrid1.Cells[25,I];
            cdsxlsx_nov2019SITUACAO.asstring       := StringGrid1.Cells[26,I];
            cdsxlsx_nov2019DIASVENCIDOS.asstring   := StringGrid1.Cells[27,I];
            cdsxlsx_nov2019DTRECEBIMENTO.asstring  := StringGrid1.Cells[28,I];
            cdsxlsx_nov2019VRRECEBIDO.asstring     := StringGrid1.Cells[29,I];
            cdsxlsx_nov2019FORMADEPGTO.asstring    := StringGrid1.Cells[30,I];
            cdsxlsx_nov2019OBSERVACAO.asstring     := StringGrid1.Cells[31,I];
          end
        end
        else if cbxTipo.ItemIndex = 1 then
        begin
          if Length(SoNumero(StringGrid1.Cells[0,I])) = 14 then
          begin
            cdsxlsx_nov2019TIPO.asstring := 'J';
            cdsxlsx_nov2019CPFCNPJ.asstring        := FormataCNPJ(SoNumero(StringGrid1.Cells[0,I]));
          end
          else
          begin
            cdsxlsx_nov2019TIPO.asstring := 'F';
            cdsxlsx_nov2019CPFCNPJ.asstring        := FormataCPF(SoNumero(StringGrid1.Cells[0,I]));
          end;
          cdsxlsx_nov2019NOME.asstring           := UpperCase(StringGrid1.Cells[1,I]);

          if not IsAlphaNumerico(StringGrid1.Cells[2,I]) then
            cdsxlsx_nov2019TELEFONE1.asstring      := FormatarTelefone(StringGrid1.Cells[2,I])
          else
            cdsxlsx_nov2019TELEFONE1.asstring      := StringGrid1.Cells[2,I];
          if not IsAlphaNumerico(StringGrid1.Cells[3,I]) then
            cdsxlsx_nov2019TELEFONE2.asstring      := FormatarTelefone(StringGrid1.Cells[3,I])
          else
            cdsxlsx_nov2019TELEFONE2.asstring      := StringGrid1.Cells[3,I];
          if not IsAlphaNumerico(StringGrid1.Cells[4,I]) then
            cdsxlsx_nov2019TELEFONE3.asstring      := FormatarTelefone(StringGrid1.Cells[4,I])
          else
            cdsxlsx_nov2019TELEFONE3.asstring      := StringGrid1.Cells[4,I];
          if not IsAlphaNumerico(StringGrid1.Cells[5,I]) then
            cdsxlsx_nov2019TELEFONE4.asstring      := FormatarTelefone(StringGrid1.Cells[5,I])
          else
            cdsxlsx_nov2019TELEFONE4.asstring      := StringGrid1.Cells[5,I];
          if not IsAlphaNumerico(StringGrid1.Cells[6,I]) then
            cdsxlsx_nov2019TELEFONE5.asstring      := FormatarTelefone(StringGrid1.Cells[6,I])
          else
            cdsxlsx_nov2019TELEFONE5.asstring      := StringGrid1.Cells[6,I];

          cdsxlsx_nov2019OPERACAO.asstring       := StringGrid1.Cells[10,I];
          cdsxlsx_nov2019DTVCTO.asstring         := StringGrid1.Cells[11,I];
          cdsxlsx_nov2019DATACOMPRA.asstring     := StringGrid1.Cells[12,I];
          cdsxlsx_nov2019VRNOMINAL.asstring      := StringGrid1.Cells[13,I];
          cdsxlsx_nov2019DATADISPONIVEL.asstring := StringGrid1.Cells[15,I];

          cdsxlsx_nov2019LOGRADOURO.asstring     := StringGrid1.Cells[20,I];
          cdsxlsx_nov2019COMPLEMENTO.asstring    := StringGrid1.Cells[21,I];
          cdsxlsx_nov2019NUMERO.asstring         := StringGrid1.Cells[22,I];
          cdsxlsx_nov2019BAIRRO.asstring         := StringGrid1.Cells[23,I];
          cdsxlsx_nov2019CIDADE.asstring         := StringGrid1.Cells[24,I];
          cdsxlsx_nov2019ESTADO.asstring         := StringGrid1.Cells[25,I];
          cdsxlsx_nov2019CEP.asstring            := StringGrid1.Cells[26,I];

          cdsxlsx_nov2019SITUACAO.asstring       := 'EM SER';
        end;

        //identifica se o cliente está cadastrado - cpf

        //if vMsg = True then

        uniscriptconsulta.Close;
        uniscriptconsulta.SQL.Text := 'select * from clientes where cpf_cnpj = :pcpf_cnpj';
                                      uniscriptconsulta.parambyname('pcpf_cnpj').AsString := cdsxlsx_nov2019CPFCNPJ.asstring;
        uniscriptconsulta.Open;

        var_credor := uniqcredor.fieldbyname('codigo').asstring;

        if uniscriptconsulta.RecordCount > 0 then
        begin
          //está cadastrado, pega o código do cliente
          codigo_cliente := uniscriptconsulta.fieldbyname('codigo').Value;
        end
        else
        begin
          //não está cadastrado, cadastra o cliente
  //         unigetid.close;
  //         unigetid.sql.text := 'SELECT SEQ_CLIENTES.nextval as Sequences FROM DUAL';
  //         unigetid.open;
           seq_cliente_codigo := GetID('codigo','clientes'); //unigetid.FieldByName('Sequences').Value;
           unigetid.close;

     //      try
           uniscriptimporta.close;
           uniscriptimporta.SQL.Text := 'insert into clientes ' +
                                        '(codigo, nome, tipopessoa, cpf_cnpj, endereco,' +
                                        'numero, setor, cidade, uf, cep, fone, fone_1, '+
                                        'faxcel, faxcel_1, e_mail, e_mail1, nridentidade,' +
                                        'dta_cad, usr_cad, dta_nascimento, sexo, cod_banco_comissao)' +
                                        ' values ' +
                                        '(:pcodigo,:pnome,:ptipopessoa,:pcpf_cnpj,:pendereco,' +
                                        ':pnumero,:psetor,:pcidade,:puf,:pcep,:pfone,:pfone_1,'+
                                        ':pfaxcel,:pfaxcel_1,:pe_mail,:pe_mail1,:pnridentidade,' +
                                        ':pdta_cad,:pusr_cad,:pdta_nascimento,:psexo, :pcod_banco_comissao)';
                                         uniscriptimporta.parambyname('pcodigo').Value := seq_cliente_codigo;
                                         uniscriptimporta.parambyname('pnome').AsString := copy(cdsxlsx_nov2019NOME.asstring,0,50);
                                         uniscriptimporta.parambyname('ptipopessoa').AsString := copy(cdsxlsx_nov2019TIPO.asstring,0,1);
                                         uniscriptimporta.parambyname('pcpf_cnpj').AsString := cdsxlsx_nov2019CPFCNPJ.asstring;
                                         uniscriptimporta.parambyname('pendereco').AsString :=  copy(cdsxlsx_nov2019LOGRADOURO.asstring,0,80);
                                         uniscriptimporta.parambyname('pnumero').AsString := copy(cdsxlsx_nov2019NUMERO.asstring,0,5);
                                         uniscriptimporta.parambyname('psetor').AsString := copy(cdsxlsx_nov2019BAIRRO.asstring,0,25);
                                         uniscriptimporta.parambyname('pcidade').AsString := copy(cdsxlsx_nov2019CIDADE.asstring,0,30);
                                         uniscriptimporta.parambyname('puf').AsString := copy(cdsxlsx_nov2019ESTADO.asstring,0,2);
                                         uniscriptimporta.parambyname('pcep').AsString := copy(cdsxlsx_nov2019CEP.asstring,0,9);
                                         uniscriptimporta.parambyname('pfone').AsString := copy(cdsxlsx_nov2019TELEFONE1.asstring,0,20);
                                         uniscriptimporta.parambyname('pfone_1').AsString := copy(cdsxlsx_nov2019TELEFONE2.asstring,0,20);
                                         uniscriptimporta.parambyname('pfaxcel').AsString := copy(cdsxlsx_nov2019TELEFONE3.asstring,0,20);
                                         uniscriptimporta.parambyname('pfaxcel_1').AsString := copy(cdsxlsx_nov2019TELEFONE4.asstring,0,20);
                                         uniscriptimporta.parambyname('pe_mail').AsString := copy(cdsxlsx_nov2019EMAIL1.asstring,0,150);
                                         uniscriptimporta.parambyname('pe_mail1').AsString := copy(cdsxlsx_nov2019EMAIL2.asstring,0,150);
                                         uniscriptimporta.parambyname('pnridentidade').AsString := copy(cdsxlsx_nov2019DOCIDENTIDADE.asstring,0,20);
                                         uniscriptimporta.parambyname('pdta_cad').AsDateTime := now;
                                         uniscriptimporta.parambyname('pusr_cad').Value := frmmenu.usuariologado_codigo;
                                         uniscriptimporta.parambyname('pdta_nascimento').AsString := copy(cdsxlsx_nov2019DTNASCIMENTO.asstring,0,20);
                                         uniscriptimporta.parambyname('psexo').AsString := copy(cdsxlsx_nov2019SEXO.asstring,0,2);
                                         uniscriptimporta.parambyname('pcod_banco_comissao').AsInteger := 1; //comissão default
             uniscriptimporta.execsql;

             GravaClientesBancos(seq_cliente_codigo, uniQCredorCODIGO.AsInteger);
   //        except showmessage('Erro na importação. ln 1154') end;
        end;

        uniscriptconsulta.Close;

        var_noperacao := cdsxlsx_nov2019OPERACAO.asstring;
        var_noperacao := StringReplace(var_noperacao, '/', '',[rfReplaceAll, rfIgnoreCase]);
        var_noperacao := StringReplace(var_noperacao, '-', '',[rfReplaceAll, rfIgnoreCase]);
        var_noperacao := StringReplace(var_noperacao, '.', '',[rfReplaceAll, rfIgnoreCase]);
        var_noperacao := StringReplace(var_noperacao, ' ', '',[rfReplaceAll, rfIgnoreCase]);
        var_noperacao := StringReplace(var_noperacao, '|', '',[rfReplaceAll, rfIgnoreCase]);

        VAR_CLIENTE := cdsxlsx_nov2019cpfcnpj.asstring;

        //identifica se o boleto está cadastrado nroperacao
        uniscriptconsulta.Close;
        uniscriptconsulta.SQL.Text := 'select * from operacoes where nroperacao = :pnroperacao and cliente = :pcliente';
                                      uniscriptconsulta.parambyname('pnroperacao').AsString := var_noperacao;
                                      uniscriptconsulta.parambyname('pcliente').AsString := VAR_CLIENTE;
        uniscriptconsulta.Open;
           seq_operacoes_codigo := GetID('registro','operacoes'); //unigetid.FieldByName('Sequences').Value;
           unigetid.close;

           //try
           //se for uma parcela, não vai para a tabela operações, e sim para a tabela parcelas
           if UPPERCASE(cdsxlsx_nov2019situacao.asstring) <> 'PARCELA' THEN begin
              //está cadastrado, inativa ele e cadastra o novo
              uniscriptconsulta.Close;

              try
                uniscriptupdate.SQL.Text := 'update operacoes set status = ''X'' where nroperacao = :pnroperacao and cliente = :pcliente';
                                              uniscriptupdate.parambyname('pnroperacao').AsString := var_noperacao;
                                              uniscriptupdate.parambyname('pcliente').AsString := VAR_CLIENTE;
                uniscriptupdate.execsql;
                uniscriptupdate.Close;
              except
              end;
              try
                uniscriptupdate.SQL.Text := 'update parcelas set status = ''X'' where nroperacao = :pnroperacao and cliente = :pcliente';
                                              uniscriptupdate.parambyname('pnroperacao').AsString := var_noperacao;
                                              uniscriptupdate.parambyname('pcliente').AsString := VAR_CLIENTE;
                uniscriptupdate.execsql;
                uniscriptupdate.Close;

              except
              end;
              //FIM está cadastrado, inativa ele e cadastra o novo

             uniscriptimporta.close;
             uniscriptimporta.SQL.Text := 'insert into operacoes (REGISTRO, cliente, nroperacao, remessa, DATAVENCTO, VALORNOMINAL, VALORVENCIDO, status, usr_cad, DTA_CAD, credor) ' +
                                          ' values ' +
                                          '(:pregistro,:pcliente, :pnroperacao, :premessa, :pDATAVENCTO, :pVALORNOMINAL, :pVALORVENCIDO, :pstatus, :pusr_cad, :pDTA_CAD, :pcredor)';
                                           uniscriptimporta.parambyname('pregistro').value := seq_operacoes_codigo;
                                           if cdsxlsx_nov2019Cpfcnpj.asstring =  '' then
                                             cdsxlsx_nov2019Cpfcnpj.asstring := '0';
                                           uniscriptimporta.parambyname('pcliente').asstring := cdsxlsx_nov2019Cpfcnpj.asstring;
                                           if cdsxlsx_nov2019operacao.asstring = '' then
                                             cdsxlsx_nov2019operacao.asstring := inttostr(seq_operacoes_codigo) + cdsxlsx_nov2019Cpfcnpj.asstring;
                                           uniscriptimporta.parambyname('pnroperacao').AsString := var_noperacao;
                                           uniscriptimporta.parambyname('premessa').asstring := remessa;
                                           uniscriptimporta.parambyname('pDATAVENCTO').AsDateTime := cdsxlsx_nov2019DTVCTO.AsDateTime;
                                           try
                                             uniscriptimporta.parambyname('PVALORNOMINAL').AsFloat := cdsxlsx_nov2019vrnominal.AsFloat;
                                           except
                                             uniscriptimporta.parambyname('PVALORNOMINAL').AsFloat := 0;
                                           end;
                                           uniscriptimporta.parambyname('PVALORVENCIDO').AsFloat := 0;
                                           if UPPERCASE(cdsxlsx_nov2019situacao.asstring) = 'RENEGOCIADO'     THEN
                                             uniscriptimporta.parambyname('pstatus').AsString := 'R';
                                           if UPPERCASE(cdsxlsx_nov2019situacao.asstring) = 'NEGOCIADO'       THEN
                                             uniscriptimporta.parambyname('pstatus').AsString := 'N';
                                           if UPPERCASE(cdsxlsx_nov2019situacao.asstring) = 'ACORDO QUEBRADO' THEN
                                             uniscriptimporta.parambyname('pstatus').AsString := 'A';
                                           if UPPERCASE(cdsxlsx_nov2019situacao.asstring) = 'RETOMADO'        THEN
                                             uniscriptimporta.parambyname('pstatus').AsString := 'O';
                                           if UPPERCASE(cdsxlsx_nov2019situacao.asstring) = 'DEVOLVIDO'       THEN
                                             uniscriptimporta.parambyname('pstatus').AsString := 'D';
                                           if UPPERCASE(cdsxlsx_nov2019situacao.asstring) = 'LIQUIDADO'       THEN
                                             uniscriptimporta.parambyname('pstatus').AsString := 'L';
                                           if UPPERCASE(cdsxlsx_nov2019situacao.asstring) = 'LIQ. POR RENEG.' THEN
                                             uniscriptimporta.parambyname('pstatus').AsString := 'R';
                                           if UPPERCASE(cdsxlsx_nov2019situacao.asstring) = 'NEGOCIACAO'      THEN
                                             uniscriptimporta.parambyname('pstatus').AsString := 'N'
                                           else
                                             uniscriptimporta.parambyname('pstatus').AsString := 'S';
                                           uniscriptimporta.parambyname('pdta_cad').AsDate := date;
                                           uniscriptimporta.parambyname('pusr_cad').AsFloat := strtofloat(FRMMenu.USUARIOLOGADO_CODIGO);
                                           uniscriptimporta.parambyname('pcredor').AsString := var_credor;
             uniscriptimporta.execsql;
           end
           else
           begin
  //           unigetid.close;
  //           unigetid.sql.text := 'SELECT SEQ_PARCELAS.nextval as Sequences FROM DUAL';
  //           unigetid.open;
             seq_PARCELAS := GetID('registro','parcelas'); //unigetid.FieldByName('Sequences').Value;
             unigetid.close;

             uniscript.close;
             uniscript.SQL.Text := 'insert into parcelas (REGISTRO, CLIENTE, NROPERACAO,' +
                                    'DATAVENCTO, DATAREFERENCIA, STATUS, VALORPREVISTO,' +
                                    'COBRADOR, VALORORIGINAL, DATA_MODIF, TIPOPAGAMENTO, ' +
                                    'VALORATUALIZADO, DATARECEBIMENTO, VALORREALIZADO) values (' +
                                    ':pREGISTRO, :pCLIENTE, :pNROPERACAO,' +
                                    ':pDATAVENCTO, :pDATAREFERENCIA, :pSTATUS, :pVALORPREVISTO,' +
                                    ':pCOBRADOR, :pVALORORIGINAL, :pDATA_MODIF, :pTIPOPAGAMENTO, ' +
                                    ':pVALORATUALIZADO, :pDATARECEBIMENTO, :pVALORREALIZADO)';
                                    uniscript.parambyname('pregistro').AsFloat := seq_PARCELAS;
                                    uniscript.parambyname('pCLIENTE').AsFloat := cdsxlsx_nov2019Cpfcnpj.asFLOAT;
                                    uniscript.parambyname('pNROPERACAO').AsString := var_noperacao;
                                    uniscript.parambyname('pDATAVENCTO').AsString := cdsxlsx_nov2019DTVCTO.asstring;
                                    uniscript.parambyname('pDATAREFERENCIA').AsString := DATETOSTR(NOW);
                                    uniscript.parambyname('pSTATUS').AsString := 'S';
                                    uniscript.parambyname('pCOBRADOR').AsFloat := strtofloat(FRMMenu.USUARIOLOGADO_CODIGO);
                                    try uniscript.parambyname('pVALORPREVISTO').AsFloat := cdsxlsx_nov2019vrnominal.AsFloat; except
                                        uniscript.parambyname('pVALORPREVISTO').AsFloat := 0 end;
                                    try uniscript.parambyname('pVALORATUALIZADO').AsFloat := cdsxlsx_nov2019vrnominal.AsFloat; except
                                        uniscript.parambyname('pVALORATUALIZADO').AsFloat := 0 end;
                                    try uniscript.parambyname('pVALORORIGINAL').AsFloat := cdsxlsx_nov2019vrnominal.AsFloat; except
                                        uniscript.parambyname('pVALORORIGINAL').AsFloat := 0 end;
                                    uniscript.parambyname('pDATA_MODIF').AsString := DATETOSTR(NOW);
                                    if cdsxlsx_nov2019FORMADEPGTO.asstring = 'BOLETO' THEN uniscript.parambyname('pTIPOPAGAMENTO').AsString := '0';
                                    if cdsxlsx_nov2019FORMADEPGTO.asstring = 'DEPÓSITO' THEN uniscript.parambyname('pTIPOPAGAMENTO').AsString := '1';
                                    uniscript.parambyname('pDATARECEBIMENTO').AsString := cdsxlsx_nov2019DTRECEBIMENTO.AsString;
                                    try uniscript.parambyname('pVALORREALIZADO').AsFloat := cdsxlsx_nov2019VRRECEBIDO.asfloat; except
                                        uniscript.parambyname('pVALORREALIZADO').AsFloat := 0 end;
             uniscript.execsql;
           end;
           //se for uma parcela, não vai para a tabela operações, e sim para a tabela parcelas
           //except showmessage('1197'); end;
  //      end;


        uniscriptimporta.close;
        cdsxlsx_nov2019.edit;
        try
          cdsxlsx_nov2019.post;
        except
        end;
        memo3.lines.add('Registro: ' + inttostr(i) + ' - Operação: ' + inttostr(seq_operacoes_codigo) + ' - Remessa: ' + remessa);
       end;
  //    except showmessage('Arquivo não importado. Ln 1206')  end;
      cdsxlsx_nov2019.enablecontrols;
      try
        uniscriptupdate.Close;
        uniscriptupdate.SQL.Text := 'delete from operacoes where nroperacao is null';
        uniscriptupdate.execsql;
        uniscriptupdate.Close;
      except
      end;
      try
        frmdatamodule.uniconnection1.Commit;
      except
      end;
     //end;


    if vMsg = True then
      MessageDlg('Atenção! Alguns registros não foram importados por falta de informações.',mtWarning,[mbOk],0);

end;

procedure TFImportaExportaArquivo.Button1Click(Sender: TObject);
var
  I, seq_cliente_codigo, codigo_cliente, seq_operacoes_codigo, seq_PARCELAS: Integer;
  var_noperacao, quantidade_registros, var_credor, var_cliente, remessa: string;
begin
  memo3.clear;

  remessa := FormatDateTime('yyyyMMdd',now) + uniqcredor.fieldbyname('codigo').asstring + IntToStr(GetID('codigo','remessas'));
  edtremessa.text := remessa;
  edtdata.text := datetostr(now);
  DBGRID1.DataSource := dsxlsclioper;

  ImportExcel1.ExcelFile := Opendialog.Filename;
  ImportExcel1.ExcelParaStringGrid(StringGrid1, ProgressBarGeral);
  ProgressBarGeral.Max      := StringGrid1.RowCount;
  ProgressBarGeral.Position := 0;
  quantidade_registros := inttostr(StringGrid1.RowCount-1);

  edtregistros.text := quantidade_registros;

  label_progressgeral.caption := 'Progresso Geral: (Importando para as tabelas)';

  try
    frmdatamodule.uniconnection1.starttransaction;
  except
  end;

  ProgressBarGeral.Position := I;
  label_progressgeral.caption := 'Progresso Geral: (Importando ' + inttostr(i) + '/' + quantidade_registros + ')';

  Application.ProcessMessages;

  for I := 1 to StringGrid1.RowCount-1 do
  begin
    with QCliente do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT                      ');
      SQL.Add('  c.*                       ');
      SQL.Add('FROM                        ');
      SQL.Add('  clientes c                ');
      SQL.Add('WHERE c.CPF_CNPJ = :CPFCNPJ ');
      if Length(SoNumero(StringGrid1.Cells[1,I])) = 14 then
        ParamByName('CPFCNPJ').AsString := FormataCNPJ(SoNumero(StringGrid1.Cells[1,I]))
      else
        ParamByName('CPFCNPJ').AsString := FormataCPF(SoNumero(StringGrid1.Cells[1,I]));
      Open;
    end;

    if not QCliente.IsEmpty then
    begin
      QCliente.Edit;
      if not IsAlphaNumerico(StringGrid1.Cells[2,I]) then
        QClienteFONE.AsString := FormatarTelefone(StringGrid1.Cells[2,I]);
      if not IsAlphaNumerico(StringGrid1.Cells[3,I]) then
        QClienteFAXCEL.AsString := FormatarTelefone(StringGrid1.Cells[3,I]);
      if not IsAlphaNumerico(StringGrid1.Cells[4,I]) then
        QClienteFONE_1.AsString := FormatarTelefone(StringGrid1.Cells[4,I]);
      if not IsAlphaNumerico(StringGrid1.Cells[5,I]) then
        QClienteFAXCEL_1.AsString := FormatarTelefone(StringGrid1.Cells[5,I]);
      QCliente.Post;
    end;
  end;
  ShowMessage('Processo finalizado.');
end;

procedure TFImportaExportaArquivo.Button2Click(Sender: TObject);
var
  I, seq_cliente_codigo, codigo_cliente, seq_operacoes_codigo, seq_PARCELAS: Integer;
  var_noperacao, quantidade_registros, var_credor, var_cliente, remessa: string;
begin
  memo3.clear;

  remessa := FormatDateTime('yyyyMMdd',now) + uniqcredor.fieldbyname('codigo').asstring + IntToStr(GetID('codigo','remessas'));
  edtremessa.text := remessa;
  edtdata.text := datetostr(now);
  DBGRID1.DataSource := dsxlsclioper;

  ImportExcel1.ExcelFile := Opendialog.Filename;
  ImportExcel1.ExcelParaStringGrid(StringGrid1, ProgressBarGeral);
  ProgressBarGeral.Max      := StringGrid1.RowCount;
  ProgressBarGeral.Position := 0;
  quantidade_registros := inttostr(StringGrid1.RowCount-1);

  edtregistros.text := quantidade_registros;

  label_progressgeral.caption := 'Progresso Geral: (Importando para as tabelas)';

  try
    frmdatamodule.uniconnection1.starttransaction;
  except
  end;

  ProgressBarGeral.Position := I;
  label_progressgeral.caption := 'Progresso Geral: (Importando ' + inttostr(i) + '/' + quantidade_registros + ')';

  Application.ProcessMessages;

  for I := 1 to StringGrid1.RowCount-1 do
  begin
    with QCliente do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT                      ');
      SQL.Add('  c.*                       ');
      SQL.Add('FROM                        ');
      SQL.Add('  clientes c                ');
      SQL.Add('WHERE c.CPF_CNPJ = :CPFCNPJ ');
      if Length(SoNumero(StringGrid1.Cells[1,I])) = 14 then
        ParamByName('CPFCNPJ').AsString := FormataCNPJ(SoNumero(StringGrid1.Cells[1,I]))
      else
        ParamByName('CPFCNPJ').AsString := FormataCPF(SoNumero(StringGrid1.Cells[1,I]));
      Open;
    end;

    if QCliente.IsEmpty then
    begin
      QCliente.Append;
      QClienteCODIGO.AsInteger := GetID('codigo','clientes');
      QClienteNOME.AsString := StringGrid1.Cells[0,I];
      if Length(SoNumero(StringGrid1.Cells[1,I])) = 14 then
      begin
         QClienteCPF_CNPJ.AsString := FormataCNPJ(SoNumero(StringGrid1.Cells[1,I]));
         QClienteTIPOPESSOA.AsString := 'J';
      end
      else
      begin
         QClienteCPF_CNPJ.AsString := FormataCPF(SoNumero(StringGrid1.Cells[1,I]));
         QClienteTIPOPESSOA.AsString := 'F';
      end;
    end
    else
      QCliente.Edit;
    QClienteENDERECO.AsString := StringGrid1.Cells[2,I] + ' ' + StringGrid1.Cells[3,I];
    QClienteNUMERO.AsString := StringGrid1.Cells[4,I];
    QClienteCEP.AsString := StringGrid1.Cells[6,I];
    QClienteSETOR.AsString := StringGrid1.Cells[7,I];
    QClienteCIDADE.AsString := StringGrid1.Cells[8,I];
    QClienteUF.AsString := StringGrid1.Cells[9,I];

    if not IsAlphaNumerico(StringGrid1.Cells[11,I]) then
      QClienteFONE.AsString := FormatarTelefone(StringGrid1.Cells[10,I] + StringGrid1.Cells[11,I]);
    if not IsAlphaNumerico(StringGrid1.Cells[13,I]) then
      QClienteFAXCEL.AsString := FormatarTelefone(StringGrid1.Cells[12,I] + StringGrid1.Cells[13,I]);
    if not IsAlphaNumerico(StringGrid1.Cells[15,I]) then
      QClienteFONE_1.AsString := FormatarTelefone(StringGrid1.Cells[14,I] + StringGrid1.Cells[15,I]);
    if not IsAlphaNumerico(StringGrid1.Cells[17,I]) then
      QClienteFAXCEL_1.AsString := FormatarTelefone(StringGrid1.Cells[16,I] + StringGrid1.Cells[17,I]);
    if not IsAlphaNumerico(StringGrid1.Cells[19,I]) then
      QClienteFONE_PREFERENCIAL.AsString := FormatarTelefone(StringGrid1.Cells[18,I] + StringGrid1.Cells[19,I]);
    QCliente.Post;
  end;
  frmdatamodule.uniconnection1.Commit;
  ShowMessage('Processo finalizado.');
end;

procedure TFImportaExportaArquivo.Button3Click(Sender: TObject);
var
  I, seq_cliente_codigo, codigo_cliente, seq_operacoes_codigo, seq_PARCELAS: Integer;
  var_noperacao, quantidade_registros, var_credor, var_cliente, remessa: string;
begin
  memo3.clear;

  remessa := FormatDateTime('yyyyMMdd',now) + uniqcredor.fieldbyname('codigo').asstring + IntToStr(GetID('codigo','remessas'));
  edtremessa.text := remessa;
  edtdata.text := datetostr(now);
  DBGRID1.DataSource := dsxlsclioper;

  ImportExcel1.ExcelFile := Opendialog.Filename;
  ImportExcel1.ExcelParaStringGrid(StringGrid1, ProgressBarGeral);
  ProgressBarGeral.Max      := StringGrid1.RowCount;
  ProgressBarGeral.Position := 0;
  quantidade_registros := inttostr(StringGrid1.RowCount-1);

  edtregistros.text := quantidade_registros;

  label_progressgeral.caption := 'Progresso Geral: (Importando para as tabelas)';

  try
    frmdatamodule.uniconnection1.starttransaction;
  except
  end;

  ProgressBarGeral.Position := I;
  label_progressgeral.caption := 'Progresso Geral: (Importando ' + inttostr(i) + '/' + quantidade_registros + ')';

  Application.ProcessMessages;

  for I := 1 to StringGrid1.RowCount-1 do
  begin
    ProgressBarGeral.Position := I;
    label_progressgeral.caption := 'Progresso Geral: (Importando ' + inttostr(i) + '/' + quantidade_registros + ')';

    Application.ProcessMessages;
    with QCliente do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT                      ');
      SQL.Add('  c.*                       ');
      SQL.Add('FROM                        ');
      SQL.Add('  clientes c                ');
      SQL.Add('WHERE c.CPF_CNPJ = :CPFCNPJ ');
      if Length(SoNumero(StringGrid1.Cells[0,I])) = 14 then
        ParamByName('CPFCNPJ').AsString := FormataCNPJ(SoNumero(StringGrid1.Cells[0,I]))
      else
        ParamByName('CPFCNPJ').AsString := FormataCPF(SoNumero(StringGrid1.Cells[0,I]));
      Open;
    end;

    if QCliente.IsEmpty then
    begin
      QCliente.Append;
      QClienteCODIGO.AsInteger := GetID('codigo','clientes');
      QClienteNOME.AsString := StringGrid1.Cells[1,I];
      if Length(SoNumero(StringGrid1.Cells[0,I])) = 14 then
      begin
         QClienteCPF_CNPJ.AsString := FormataCNPJ(SoNumero(StringGrid1.Cells[0,I]));
         QClienteTIPOPESSOA.AsString := 'J';
      end
      else
      begin
         QClienteCPF_CNPJ.AsString := FormataCPF(SoNumero(StringGrid1.Cells[0,I]));
         QClienteTIPOPESSOA.AsString := 'F';
      end;
    end
    else
      QCliente.Edit;
    QClienteENDERECO.AsString := StringGrid1.Cells[5,I] + ' ' + StringGrid1.Cells[6,I];
    QClienteNUMERO.AsString := StringGrid1.Cells[7,I];
    //QClienteREGIAO.AsString := StringGrid1.Cells[8,I]; //complemento
    QClienteCEP.AsString := StringGrid1.Cells[9,I];
    QClienteSETOR.AsString := StringGrid1.Cells[10,I]; //bairro
    QClienteCIDADE.AsString := StringGrid1.Cells[11,I];
    QClienteUF.AsString := StringGrid1.Cells[12,I];
    QClienteDTA_CAD.AsDateTime := Now;

    if not IsAlphaNumerico(StringGrid1.Cells[14,I]) then
      QClienteFONE.AsString := FormatarTelefone(StringGrid1.Cells[13,I] + StringGrid1.Cells[14,I]);
    if not IsAlphaNumerico(StringGrid1.Cells[16,I]) then
      QClienteFAXCEL.AsString := FormatarTelefone(StringGrid1.Cells[15,I] + StringGrid1.Cells[16,I]);
    if not IsAlphaNumerico(StringGrid1.Cells[18,I]) then
      QClienteFONE_1.AsString := FormatarTelefone(StringGrid1.Cells[17,I] + StringGrid1.Cells[18,I]);
    if not IsAlphaNumerico(StringGrid1.Cells[20,I]) then
      QClienteFAXCEL_1.AsString := FormatarTelefone(StringGrid1.Cells[19,I] + StringGrid1.Cells[20,I]);
    if not IsAlphaNumerico(StringGrid1.Cells[22,I]) then
      QClienteFONE_PREFERENCIAL.AsString := FormatarTelefone(StringGrid1.Cells[21,I] + StringGrid1.Cells[22,I]);

    //buscar a comissão escalonada

    //ShowMessage(StringGrid1.Cells[23,I]);
    GravaComissao(StringGrid1.Cells[23,I]);

    GravaClientesBancos(QClienteCODIGO.AsInteger, uniQCredorCODIGO.AsInteger);


    QCliente.Post;
  end;
  frmdatamodule.uniconnection1.Commit;
  ShowMessage('Processo finalizado.');
end;

procedure TFImportaExportaArquivo.Button4Click(Sender: TObject);
var
  I, seq_cliente_codigo, codigo_cliente, seq_operacoes_codigo, seq_PARCELAS: Integer;
  var_noperacao, quantidade_registros, var_credor, var_cliente, remessa: string;
begin
  memo3.clear;

  remessa := FormatDateTime('yyyyMMdd',now) + uniqcredor.fieldbyname('codigo').asstring + IntToStr(GetID('codigo','remessas'));
  edtremessa.text := remessa;
  edtdata.text := datetostr(now);
  DBGRID1.DataSource := dsxlsclioper;

  ImportExcel1.ExcelFile := Opendialog.Filename;
  ImportExcel1.ExcelParaStringGrid(StringGrid1, ProgressBarGeral);
  ProgressBarGeral.Max      := StringGrid1.RowCount;
  ProgressBarGeral.Position := 0;
  quantidade_registros := inttostr(StringGrid1.RowCount-1);

  edtregistros.text := quantidade_registros;

  var_credor := uniqcredor.fieldbyname('codigo').asstring;

  label_progressgeral.caption := 'Progresso Geral: (Importando para as tabelas)';

  try
    frmdatamodule.uniconnection1.starttransaction;
  except
  end;

  ProgressBarGeral.Position := I;
  label_progressgeral.caption := 'Progresso Geral: (Importando ' + inttostr(i) + '/' + quantidade_registros + ')';

  Application.ProcessMessages;

  for I := 3 to StringGrid1.RowCount-1 do //começa na terceira linha
  begin
    ProgressBarGeral.Position := I;
    label_progressgeral.caption := 'Progresso Geral: (Importando ' + inttostr(i) + '/' + quantidade_registros + ')';

    Application.ProcessMessages;
    with QCliente do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT                      ');
      SQL.Add('  c.*                       ');
      SQL.Add('FROM                        ');
      SQL.Add('  clientes c                ');
      SQL.Add('WHERE c.CPF_CNPJ = :CPFCNPJ ');
      if Length(SoNumero(StringGrid1.Cells[16,I])) = 14 then
        ParamByName('CPFCNPJ').AsString := FormataCNPJ(SoNumero(StringGrid1.Cells[16,I]))
      else
        ParamByName('CPFCNPJ').AsString := FormataCPF(SoNumero(StringGrid1.Cells[16,I]));
      Open;
    end;

    if QCliente.IsEmpty then
    begin
      QCliente.Append;
      QClienteCODIGO.AsInteger := GetID('codigo','clientes');
      QClienteNOME.AsString := StringGrid1.Cells[19,I];
      if Length(SoNumero(StringGrid1.Cells[16,I])) = 14 then
      begin
         QClienteCPF_CNPJ.AsString := FormataCNPJ(SoNumero(StringGrid1.Cells[16,I]));
         QClienteTIPOPESSOA.AsString := 'J';
      end
      else
      begin
         QClienteCPF_CNPJ.AsString := FormataCPF(SoNumero(StringGrid1.Cells[16,I]));
         QClienteTIPOPESSOA.AsString := 'F';
      end;
    end
    else
    begin
      QCliente.Edit;
      codigo_cliente := QClienteCODIGO.AsInteger;
    end;
    var_cliente := QClienteCPF_CNPJ.AsString;
    QClienteENDERECO.AsString := StringGrid1.Cells[20,I];
    QClienteSETOR.AsString := StringGrid1.Cells[21,I]; //bairro
    QClienteCEP.AsString := StringGrid1.Cells[22,I];
    QClienteCIDADE.AsString := StringGrid1.Cells[23,I];
    QClienteUF.AsString := StringGrid1.Cells[24,I];
    QClienteDTA_CAD.AsDateTime := Now;
//    QClienteNUMERO.AsString := StringGrid1.Cells[7,I];

    if not IsAlphaNumerico(StringGrid1.Cells[25,I]) then
      QClienteFONE.AsString := FormatarTelefone(StringGrid1.Cells[25,I]);
    if not IsAlphaNumerico(StringGrid1.Cells[26,I]) then
      QClienteFAXCEL.AsString := FormatarTelefone(StringGrid1.Cells[26,I]);
    if not IsAlphaNumerico(StringGrid1.Cells[27,I]) then
      QClienteFONE_1.AsString := FormatarTelefone(StringGrid1.Cells[27,I]);
    if not IsAlphaNumerico(StringGrid1.Cells[28,I]) then
      QClienteFAXCEL_1.AsString := FormatarTelefone(StringGrid1.Cells[28,I]);
    if not IsAlphaNumerico(StringGrid1.Cells[29,I]) then
      QClienteFONE_PREFERENCIAL.AsString := FormatarTelefone(StringGrid1.Cells[29,I]);

    if StringGrid1.Cells[29,I] <> '' then
      QClienteDTA_NASCIMENTO.AsDateTime := StrToDate(StringGrid1.Cells[31,I]);
    QClienteNATURALIDADE.AsString := StringGrid1.Cells[32,I];
    QClienteESTADOCIVIL.AsString := StringGrid1.Cells[34,I];
    QClienteCONTATO.AsString := StringGrid1.Cells[37,I];
    QClienteCONTATO_1.AsString := StringGrid1.Cells[73,I];
    QClienteE_MAIL.AsString := StringGrid1.Cells[110,I];
    GravaClientesBancos(QClienteCODIGO.AsInteger, uniQCredorCODIGO.AsInteger);
    QCliente.Post;

    //gravando na tabela operações
    seq_operacoes_codigo := GetID('registro','operacoes');

    uniscriptimporta.close;
    uniscriptimporta.SQL.Text := 'insert into operacoes (REGISTRO, cliente, nroperacao, remessa, DATAVENCTO, VALORNOMINAL, VALORVENCIDO, status, usr_cad, DTA_CAD, credor) ' +
                                 ' values ' +
                                 '(:pregistro,:pcliente, :pnroperacao, :premessa, :pDATAVENCTO, :pVALORNOMINAL, :pVALORVENCIDO, :pstatus, :pusr_cad, :pDTA_CAD, :pcredor)';
                                  uniscriptimporta.parambyname('pregistro').value := seq_operacoes_codigo;
                                  uniscriptimporta.parambyname('pcliente').asstring := var_cliente;
                                  uniscriptimporta.parambyname('pnroperacao').AsString := StringGrid1.Cells[1,I];
                                  uniscriptimporta.parambyname('premessa').asstring := '';
                                  uniscriptimporta.parambyname('pDATAVENCTO').AsDateTime := StrToDate(StringGrid1.Cells[8,I]);
                                  try
                                    uniscriptimporta.parambyname('PVALORNOMINAL').AsFloat := StrToFloat(StringGrid1.Cells[9,I]);
                                  except
                                    uniscriptimporta.parambyname('PVALORNOMINAL').AsFloat := 0;
                                  end;
                                  uniscriptimporta.parambyname('PVALORVENCIDO').AsFloat := StrToFloat(StringGrid1.Cells[10,I]);
                                  if StringGrid1.Cells[0,I] = IntToStr(1) THEN
                                    uniscriptimporta.parambyname('pstatus').AsString := 'S'
                                  else if StringGrid1.Cells[0,I] = IntToStr(2) THEN
                                    uniscriptimporta.parambyname('pstatus').AsString := 'R'
                                  else if StringGrid1.Cells[0,I] = IntToStr(3) THEN
                                    uniscriptimporta.parambyname('pstatus').AsString := 'N'
                                  else if StringGrid1.Cells[0,I] = IntToStr(4) THEN
                                    uniscriptimporta.parambyname('pstatus').AsString := 'A'
                                  else if StringGrid1.Cells[0,I] = IntToStr(5) THEN
                                    uniscriptimporta.parambyname('pstat6s').AsString := 'O'
                                  else if StringGrid1.Cells[0,I] = IntToStr(6) THEN
                                    uniscriptimporta.parambyname('pstatus').AsString := 'D'
                                  else if StringGrid1.Cells[0,I] = IntToStr(7) THEN
                                    uniscriptimporta.parambyname('pstatus').AsString := 'L'
                                  else if StringGrid1.Cells[0,I] = IntToStr(8) THEN
                                    uniscriptimporta.parambyname('pstatus').AsString := 'O'
                                  else if StringGrid1.Cells[0,I] = IntToStr(9) THEN
                                    uniscriptimporta.parambyname('pstatus').AsString := 'R'
                                  else if StringGrid1.Cells[0,I] = IntToStr(10) THEN
                                    uniscriptimporta.parambyname('pstatus').AsString := 'AW';
                                  uniscriptimporta.parambyname('pdta_cad').AsDate := date;
                                  uniscriptimporta.parambyname('pusr_cad').AsFloat := strtofloat(FRMMenu.USUARIOLOGADO_CODIGO);
                                  uniscriptimporta.parambyname('pcredor').AsString := var_credor;
    uniscriptimporta.execsql;


  end;
  frmdatamodule.uniconnection1.Commit;
  ShowMessage('Processo finalizado.');
end;

procedure TFImportaExportaArquivo.Button5Click(Sender: TObject);
var
  I, seq_cliente_codigo, codigo_cliente, seq_operacoes_codigo, seq_PARCELAS: Integer;
  var_noperacao, quantidade_registros, var_credor, var_cliente, remessa, vCpfCNPJ: string;
begin
  memo3.clear;

  remessa := FormatDateTime('yyyyMMdd',now) + uniqcredor.fieldbyname('codigo').asstring + IntToStr(GetID('codigo','remessas'));
  edtremessa.text := remessa;
  edtdata.text := datetostr(now);
  DBGRID1.DataSource := dsxlsclioper;

  ImportExcel1.ExcelFile := Opendialog.Filename;
  ImportExcel1.ExcelParaStringGrid(StringGrid1, ProgressBarGeral);
  ProgressBarGeral.Position := 0;
  ProgressBarGeral.Max      := StringGrid1.RowCount;
  quantidade_registros := inttostr(StringGrid1.RowCount-1);

  edtregistros.text := quantidade_registros;

  var_credor := uniqcredor.fieldbyname('codigo').asstring;

  label_progressgeral.caption := 'Progresso Geral: (Importando para as tabelas)';

  try
    frmdatamodule.uniconnection1.starttransaction;
  except
  end;

  ProgressBarGeral.Position := I;
  label_progressgeral.caption := 'Progresso Geral: (Importando ' + inttostr(i) + '/' + quantidade_registros + ')';

  Application.ProcessMessages;

  for I := 2 to StringGrid1.RowCount-1 do //começa na segunda linha
  begin
    ProgressBarGeral.Position := I;
    label_progressgeral.caption := 'Progresso Geral: (Importando ' + inttostr(i) + '/' + quantidade_registros + ')';

    Application.ProcessMessages;
    with QCliente do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT                      ');
      SQL.Add('  c.*                       ');
      SQL.Add('FROM                        ');
      SQL.Add('  clientes c                ');
      SQL.Add('WHERE c.CPF_CNPJ = :CPFCNPJ ');
      if Length(SoNumero(StringGrid1.Cells[0,I])) = 14 then
        ParamByName('CPFCNPJ').AsString := FormataCNPJ(SoNumero(StringGrid1.Cells[0,I]))
      else
        ParamByName('CPFCNPJ').AsString := FormataCPF(SoNumero(StringGrid1.Cells[0,I]));
      Open;
    end;

    if QCliente.IsEmpty then
    begin
      QCliente.Append;
      QClienteCODIGO.AsInteger := GetID('codigo','clientes');
      QClienteNOME.AsString := StringGrid1.Cells[1,I];
      if Length(SoNumero(StringGrid1.Cells[0,I])) = 14 then
      begin
         QClienteCPF_CNPJ.AsString := Poem_Zeros(SoNumero(StringGrid1.Cells[0,I]),18);
         vCpfCNPJ := FormataCNPJ(QClienteCPF_CNPJ.AsString);
         //QClienteCPF_CNPJ.AsString :=
         QClienteTIPOPESSOA.AsString := 'J';
      end
      else
      begin
        vCpfCNPJ := Poem_Zeros(SoNumero(StringGrid1.Cells[0,I]),11);
         QClienteCPF_CNPJ.AsString := FormataCPF(vCpfCNPJ);
         //QClienteCPF_CNPJ.AsString := (QClienteCPF_CNPJ.AsString);
         QClienteTIPOPESSOA.AsString := 'F';
      end;
    end
    else
    begin
      QCliente.Edit;
      codigo_cliente := QClienteCODIGO.AsInteger;
    end;
    var_cliente := QClienteCPF_CNPJ.AsString;
    QClienteENDERECO.AsString := StringGrid1.Cells[2,I];
    QClienteSETOR.AsString := StringGrid1.Cells[3,I]; //bairro
    QClienteCIDADE.AsString := StringGrid1.Cells[4,I];
    QClienteCEP.AsString := StringGrid1.Cells[5,I];
    QClienteUF.AsString := StringGrid1.Cells[6,I];
    QClienteDTA_CAD.AsDateTime := Now;
//    QClienteNUMERO.AsString := StringGrid1.Cells[7,I];

    if not IsAlphaNumerico(StringGrid1.Cells[7,I]) then
      QClienteFONE.AsString := FormatarTelefone(StringGrid1.Cells[7,I]);
    if not IsAlphaNumerico(StringGrid1.Cells[8,I]) then
      QClienteFAXCEL.AsString := FormatarTelefone(StringGrid1.Cells[8,I]);
    if not IsAlphaNumerico(StringGrid1.Cells[9,I]) then
      QClienteFONE_1.AsString := FormatarTelefone(StringGrid1.Cells[9,I]);
    if not IsAlphaNumerico(StringGrid1.Cells[10,I]) then
      QClienteFAXCEL_1.AsString := FormatarTelefone(StringGrid1.Cells[10,I]);
    QClienteE_MAIL.AsString := StringGrid1.Cells[11,I];

    QClienteCOD_EMPRESA.AsInteger := GetCodigo(StringGrid1.Cells[12,I],'empresa_produto');
    QClienteCOD_OPERACAO.AsInteger := GetCodigo(StringGrid1.Cells[13,I],'operacao_produto');
    QClienteVAR1.AsString := StringGrid1.Cells[14,I];
    QClienteVAR2.AsString := StringGrid1.Cells[15,I];
    QCliente.Post;
  end;
  frmdatamodule.uniconnection1.Commit;
  ShowMessage('Processo finalizado.');
end;

procedure TFImportaExportaArquivo.btimporta_clioperClick(Sender: TObject);
var
  I, seq_cliente_codigo, codigo_cliente, seq_operacoes_codigo: Integer;
  var_noperacao, quantidade_registros, var_credor: string;
begin
//  try
    DBGRID1.DataSource := dsxlsclioper;

    ImportExcel1.ExcelFile := Opendialog.Filename;
    ImportExcel1.ExcelParaStringGrid(StringGrid1, ProgressBarGeral);

    cdsxlsclioper.close;

    Try cdsxlsclioper.CreateDataSet; except end;

    cdsxlsclioper.open;
    cdsxlsclioper.EmptyDataSet;
    cdsxlsclioper.disablecontrols;

    ProgressBarGeral.Max      := StringGrid1.RowCount;
    ProgressBarGeral.Position := 0;
    quantidade_registros := inttostr(StringGrid1.RowCount-1);

    label_progressgeral.caption := 'Progresso Geral: (Importando para as tabelas)';

    try frmdatamodule.uniconnection1.starttransaction; except end;

//    try
     for I := 1 to StringGrid1.RowCount do begin

      ProgressBarGeral.Position := I;
      label_progressgeral.caption := 'Progresso Geral: (Importando ' + inttostr(i) + '/' + quantidade_registros + ')';

      Application.ProcessMessages;

      cdsxlsclioper.append;

      cdsxlsclioperCLIENTE.asstring                      := StringGrid1.Cells[0,I];
      cdsxlsclioperDTNASCIMENTO.asstring                 := StringGrid1.Cells[1,I];
      cdsxlsclioperEMAIL.asstring                        := StringGrid1.Cells[2,I];
      cdsxlsclioperFONE.asstring                         := StringGrid1.Cells[3,I];
      cdsxlsclioperFONE2.asstring                        := StringGrid1.Cells[4,I];
      cdsxlsclioperENDERECO.asstring                     := StringGrid1.Cells[5,I];
      cdsxlsclioperNUMERO.asstring                       := StringGrid1.Cells[6,I];
      cdsxlsclioperSETOR.asstring                        := StringGrid1.Cells[7,I];
      cdsxlsclioperCIDADE.asstring                       := StringGrid1.Cells[8,I];
      cdsxlsclioperUF.asstring                           := StringGrid1.Cells[9,I];
      cdsxlsclioperCEP.asstring                          := StringGrid1.Cells[10,I];
      cdsxlsclioperCPF_CNPJ.asstring                     := StringGrid1.Cells[11,I];
      cdsxlsclioperIDENTIDADE.asstring                   := StringGrid1.Cells[12,I];
      cdsxlsclioperFONE3.asstring                        := StringGrid1.Cells[13,I];
      cdsxlsclioperFONE4.asstring                        := StringGrid1.Cells[14,I];
      cdsxlsclioperOPERACAO.asstring                     := StringReplace(StringGrid1.Cells[15,I], '-', '',[rfReplaceAll, rfIgnoreCase]);
      cdsxlsclioperVENCIMENTO.asstring                   := StringGrid1.Cells[16,I];
      cdsxlsclioperVALOR_NOMINAL.asstring                := StringGrid1.Cells[17,I];
      cdsxlsclioperSITUACAO.asstring                     := StringGrid1.Cells[18,I];
      cdsxlsclioperRECEBIMENTO.asstring                  := StringGrid1.Cells[19,I];
      cdsxlsclioperVALOR_RECEBIDO.asstring               := StringGrid1.Cells[20,I];

      //identifica se o cliente está cadastrado - cpf
      uniscriptconsulta.Close;
      uniscriptconsulta.SQL.Text := 'select * from clientes where cpf_cnpj = :pcpf_cnpj';
                                    uniscriptconsulta.parambyname('pcpf_cnpj').AsString := cdsxlsclioperCPF_CNPJ.asstring;
      uniscriptconsulta.Open;

      var_credor := uniqcredor.fieldbyname('codigo').asstring;//DBLookupComboBox1.Text;

      if uniscriptconsulta.RecordCount > 0 then begin
        //está cadastrado, pega o código do cliente
        codigo_cliente := uniscriptconsulta.fieldbyname('codigo').Value;
      end else begin
        //não está cadastrado, cadastra o cliente
         unigetid.close;
         unigetid.sql.text := 'SELECT SEQ_CLIENTES.nextval as Sequences FROM DUAL';
         unigetid.open;
         seq_cliente_codigo := unigetid.FieldByName('Sequences').Value;
         unigetid.close;

   //      try
         uniscriptimporta.close;
         uniscriptimporta.SQL.Text := 'insert into clientes (codigo, nome, tipopessoa, cpf_cnpj, endereco,' +
                                      'numero, cidade, uf, cep, fone, faxcel, fone_1, e_mail, nridentidade,' +
                                      'motivoinadimplencia, dta_cad, usr_cad, origemdosdados)' +
                                      ' values ' +
                                      '(:pcodigo, :pnome, :ptipopessoa, :pcpf_cnpj, :pendereco,' +
                                      ':pnumero, :pcidade, :puf, :pcep, :pfone, :pfaxcel, :pfone_1,' +
                                      ':pe_mail, :pnridentidade, :pmotivoinadimplencia, :pdta_cad, :pusr_cad, :porigemdosdados)';
                                       uniscriptimporta.parambyname('pcodigo').Value := seq_cliente_codigo;
                                       uniscriptimporta.parambyname('pnome').AsString := cdsxlsclioperCLIENTE.asstring;
                                       if length(cdsxlsclioperCPF_CNPJ.asstring) = 11 then uniscriptimporta.parambyname('ptipopessoa').AsString := 'F';
                                       if length(cdsxlsclioperCPF_CNPJ.asstring) = 14 then uniscriptimporta.parambyname('ptipopessoa').AsString := 'J';
                                       uniscriptimporta.parambyname('pcpf_cnpj').AsString := cdsxlsclioperCPF_CNPJ.asstring;
                                       uniscriptimporta.parambyname('pendereco').AsString := cdsxlsclioperENDERECO.asstring;
                                       uniscriptimporta.parambyname('pnumero').AsString := cdsxlscliopernumero.asstring;
                                       uniscriptimporta.parambyname('pcidade').AsString := cdsxlscliopercidade.asstring;
                                       uniscriptimporta.parambyname('puf').AsString := cdsxlsclioperuf.asstring;
                                       uniscriptimporta.parambyname('pcep').AsString := cdsxlscliopercep.asstring;
                                       uniscriptimporta.parambyname('pfone').AsString := cdsxlsclioperfone.asstring;
                                       uniscriptimporta.parambyname('pfaxcel').AsString := cdsxlsclioperfone3.asstring;
                                       uniscriptimporta.parambyname('pfone_1').AsString := cdsxlsclioperfone2.asstring;
                                       uniscriptimporta.parambyname('pe_mail').AsString := cdsxlsclioperemail.asstring;
                                       uniscriptimporta.parambyname('pnridentidade').AsString := cdsxlsclioperidentidade.asstring;
                                       uniscriptimporta.parambyname('pmotivoinadimplencia').AsFloat := 1;
                                       uniscriptimporta.parambyname('pdta_cad').AsDate := date;
                                       uniscriptimporta.parambyname('pusr_cad').AsFloat := strtofloat(FRMMenu.USUARIOLOGADO_CODIGO);
                                       uniscriptimporta.parambyname('porigemdosdados').AsString := var_credor;
           uniscriptimporta.execsql;
 //        except showmessage('Erro na importação. ln 1154') end;
      end;

      uniscriptconsulta.Close;

      //identifica se o boleto está cadastrado nroperacao
      uniscriptconsulta.Close;
      uniscriptconsulta.SQL.Text := 'select * from operacoes where nroperacao = :pnroperacao and cliente = :pcliente';
                                    uniscriptconsulta.parambyname('pnroperacao').AsString := cdsxlsclioperOPERACAO.asstring;
                                    uniscriptconsulta.parambyname('pcliente').AsString := cdsxlscliopercpf_cnpj.asstring;
      uniscriptconsulta.Open;
        //está cadastrado, inativa ele e cadastra o novo
      if uniscriptconsulta.RecordCount > 0 then begin
        VAR_NOPERACAO := uniscriptconsulta.fieldbyname('nroperacao').Value;
        //não está cadastrado, cadastra a operação
      end else begin
         unigetid.close;
         unigetid.sql.text := 'SELECT SEQ_OPERACOES.nextval as Sequences FROM DUAL';
         unigetid.open;
         seq_operacoes_codigo := unigetid.FieldByName('Sequences').Value;
         unigetid.close;

         //try
         uniscriptimporta.close;
         uniscriptimporta.SQL.Text := 'insert into operacoes (REGISTRO, cliente, nroperacao, remessa, DATAVENCTO, VALORNOMINAL, status, usr_cad, DTA_CAD, TIPOOPERACAO, credor) ' +
                                      ' values ' +
                                      '(:pregistro,:pcliente, :pnroperacao, :premessa, :pDATAVENCTO, :pVALORNOMINAL, :pstatus, :pusr_cad, :pDTA_CAD, :pTIPOOPERACAO, :pcredor)';
                                       uniscriptimporta.parambyname('pregistro').value := seq_operacoes_codigo;
                                       if cdsxlsclioperCpf_cnpj.asstring =  '' then cdsxlsclioperCpf_cnpj.asstring := '0';
                                       uniscriptimporta.parambyname('pcliente').asstring := cdsxlsclioperCpf_cnpj.asstring;
                                       if cdsxlsclioperoperacao.asstring = '' then cdsxlsclioperoperacao.asstring := inttostr(seq_operacoes_codigo) + cdsxlsclioperCpf_cnpj.asstring;
                                       uniscriptimporta.parambyname('pnroperacao').AsString := StringReplace(cdsxlsclioperoperacao.asstring, '/', '',[rfReplaceAll, rfIgnoreCase]);
                                       uniscriptimporta.parambyname('premessa').asstring := '0';
                                       uniscriptimporta.parambyname('pDATAVENCTO').AsString := cdsxlscliopervencimento.asstring;
                                       uniscriptimporta.parambyname('PVALORNOMINAL').AsString := cdsxlscliopervalor_nominal.AsString;
                                       uniscriptimporta.parambyname('PTIPOOPERACAO').AsString := cdsxlscliopersituacao.asstring;
                                       if UPPERCASE(cdsxlscliopersituacao.asstring) = 'EM SER'          THEN uniscriptimporta.parambyname('pstatus').AsString := 'S';
                                       if UPPERCASE(cdsxlscliopersituacao.asstring) = 'RETOMADO'        THEN uniscriptimporta.parambyname('pstatus').AsString := 'O';
                                       if UPPERCASE(cdsxlscliopersituacao.asstring) = 'LIQUIDADO'       THEN uniscriptimporta.parambyname('pstatus').AsString := 'L';
                                       if UPPERCASE(cdsxlscliopersituacao.asstring) = 'NEGOCIADO'       THEN uniscriptimporta.parambyname('pstatus').AsString := 'N';
                                       if UPPERCASE(cdsxlscliopersituacao.asstring) = 'RENEGOCIADO'     THEN uniscriptimporta.parambyname('pstatus').AsString := 'R';
                                       if UPPERCASE(cdsxlscliopersituacao.asstring) = 'ACORDO QUEBRADO' THEN uniscriptimporta.parambyname('pstatus').AsString := 'A';
                                       if UPPERCASE(cdsxlscliopersituacao.asstring) = 'DEVOLVIDO'       THEN uniscriptimporta.parambyname('pstatus').AsString := 'D';
                                       uniscriptimporta.parambyname('pdta_cad').AsDate := date;
                                       uniscriptimporta.parambyname('pusr_cad').AsFloat := strtofloat(FRMMenu.USUARIOLOGADO_CODIGO);
                                       uniscriptimporta.parambyname('pcredor').AsString := var_credor;
           uniscriptimporta.execsql;
         //except showmessage('1197'); end;
      end;

      uniscriptimporta.close;
      cdsxlsclioper.post;
     end;
//    except showmessage('Arquivo não importado. Ln 1206')  end;

    cdsxlsclioper.enablecontrols;

    DBGRID1.COLUMNS[0].WIDTH := 100;
    DBGRID1.COLUMNS[1].WIDTH := 100;
    DBGRID1.COLUMNS[2].WIDTH := 100;
    DBGRID1.COLUMNS[3].WIDTH := 100;
    DBGRID1.COLUMNS[4].WIDTH := 100;
    DBGRID1.COLUMNS[5].WIDTH := 100;
    DBGRID1.COLUMNS[6].WIDTH := 100;
    DBGRID1.COLUMNS[7].WIDTH := 100;
    DBGRID1.COLUMNS[8].WIDTH := 100;
    DBGRID1.COLUMNS[9].WIDTH := 100;
    DBGRID1.COLUMNS[10].WIDTH := 100;
    DBGRID1.COLUMNS[11].WIDTH := 100;
    DBGRID1.COLUMNS[12].WIDTH := 100;
    DBGRID1.COLUMNS[13].WIDTH := 100;
    DBGRID1.COLUMNS[14].WIDTH := 100;
    DBGRID1.COLUMNS[15].WIDTH := 100;
    DBGRID1.COLUMNS[16].WIDTH := 100;
    DBGRID1.COLUMNS[17].WIDTH := 100;
    DBGRID1.COLUMNS[18].WIDTH := 100;
    DBGRID1.COLUMNS[19].WIDTH := 100;
    DBGRID1.COLUMNS[20].WIDTH := 100;

    try frmdatamodule.uniconnection1.Commit; except end;
    //SEPARAR E-MAILS
    //testar as alterações, ao invés das inclusões
{  except
    showmessage('Ocorreu um erro na importação. Ln 1236');
    frmdatamodule.uniconnection1.RollBack;
  end;
}
end;

procedure TFImportaExportaArquivo.FormActivate(Sender: TObject);
begin
uniQCredor.Open;
uniQCredor.First;
uniQCredor.Last;
uniQCredor.First;
end;

procedure TFImportaExportaArquivo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
uniQCredor.Close;
end;

procedure TFImportaExportaArquivo.FormShow(Sender: TObject);
begin
  fimportaexportaarquivo.cursor := crdefault;

  pnlgeral.enabled := true;

  cdsxls.close;
  cdscadas.close;
  cdsinad.close;
  cdsoper.close;
  cdstele.close;

  ednome.clear;
  progressbargeral.position := 0;
end;

function TFImportaExportaArquivo.GetCodigo(pCampo,
  pNomeTabela: string): integer;
var
  QBusca : TFDQuery;
begin
  QBusca := TFDQuery.Create(nil);
  try
    QBusca.Connection := frmDataModule.UniConnection1;
    try
      with QBusca do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT            ');
        SQL.Add('  codigo          ');
        SQL.Add('FROM ' + pNomeTabela +' ');
        SQL.Add('WHERE descricao LIKE "' + pCampo + '" ');
        Open;
      end;
      if QBusca.IsEmpty then
      begin
        with QBusca do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT             ');
          SQL.Add('  *                ');
          SQL.Add('FROM ' + pNomeTabela +'');
          SQL.Add('LIMIT 0            ');
          Open;
        end;
        QBusca.Append;
        QBusca.FieldByName('descricao').AsString := pCampo;
        QBusca.Post;
      end;
      Result := QBusca.FieldByName('codigo').AsInteger;
    except
      on exc : exception do
        ShowMessage(exc.Message);
    end;
  finally
    FreeAndNil(QBusca);
  end;
end;

procedure TFImportaExportaArquivo.GravaClientesBancos(pCodCliente, pCodBanco : integer);
var
  QClientes : TFDQuery;
begin
  try
    QClientes := TFDQuery.Create(nil);
      try
        QClientes.Connection := frmDataModule.UniConnection1;
        with QClientes do
        begin
          Close;
          SQL.Clear;
          SQL.Add('INSERT INTO clientes_credores (cod_cliente, cod_credor) ');
          SQL.Add('VALUES                                                  ');
          SQL.Add('  (:CodCliente, :CodCredor)                             ');
          ParamByName('CodCliente').AsInteger := pCodCliente;
          ParamByName('CodCredor').AsInteger := pCodBanco;
          ExecSQL;
        end;
      except

      end;
  finally
    FreeAndNil(QClientes);
  end;
end;

procedure TFImportaExportaArquivo.GravaComissao(pDescComissao : string);
var
  QComissao : TFDQuery;
begin
  QComissao := TFDQuery.Create(nil);
  try
    QComissao.Connection := frmDataModule.UniConnection1;
    try
      with QComissao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT                                          ');
        SQL.Add('  bc.*                                          ');
        SQL.Add('FROM                                            ');
        SQL.Add('  bancos_comissao bc                            ');
        SQL.Add('WHERE bc.descricao LIKE "' + pDescComissao + '" ');
        Open;
      end;
      if not QComissao.IsEmpty then
        QClienteCOD_BANCO_COMISSAO.AsInteger := QComissao.FieldByName('cod_banco').AsInteger;
    except
      //on exc : exception do
    end;
  finally
    FreeAndNil(QComissao);
  end;

end;

end.
