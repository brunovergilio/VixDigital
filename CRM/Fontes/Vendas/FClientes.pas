unit FClientes;

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
  JvExDBGrids, JvDBGrid, Vcl.TabNotBk, RzButton, math, FireDAC.Stan.Intf, 
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, 
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, 
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.DBX.Migrate;

type
  TFrmClientes = class(TForm)
    JvDBGrid1: TJvDBGrid;
    Panel1: TPanel;
    uniQClientes: TFDQuery;
    UniDSQClientes: TDataSource;
    uniDSClientesReferencia: TDataSource;
    uniQClientesReferencia: TFDQuery;
    uniQClientesOperacoes: TFDQuery;
    uniDSClientesOperacoes: TDataSource;
    uniDSClientesParcelas: TDataSource;
    uniQClientesParcelas: TFDQuery;
    uniDSClientesAgenda: TDataSource;
    uniQClientesAgenda: TFDQuery;
    UniDSScriptCobranca: TDataSource;
    UniQScriptCobranca: TFDQuery;
    UniDSQEventosCobranca: TDataSource;
    UniQEventosCobranca: TFDQuery;
    Panel3: TPanel;
    RzToolButton1: TRzToolButton;
    uniDSQClientesLista: TDataSource;
    uniQClientesLista: TFDQuery;
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Label10: TLabel;
    Edit3: TEdit;
    BitBtn2: TBitBtn;
    Label11: TLabel;
    Edit9: TEdit;
    BitBtn9: TBitBtn;
    Label13: TLabel;
    Edit2: TEdit;
    BitBtn3: TBitBtn;
    Label14: TLabel;
    Edit6: TEdit;
    BitBtn5: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    BitBtn6: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    RzToolButton2: TRzToolButton;
    Panel2: TPanel;
    uniQClientesParcelasNROPERACAO: TStringField;
    uniQClientesParcelasREMESSA: TStringField;
    uniQClientesParcelasDATAVENCTO: TStringField;
    uniQClientesParcelasAUT_: TFMTBCDField;
    uniQClientesParcelasNRLINHAC: TFMTBCDField;
    uniQClientesParcelasNRLINHAR: TFMTBCDField;
    uniQClientesParcelasNRREM: TFMTBCDField;
    uniQClientesParcelasDATAREFERENCIA: TStringField;
    uniQClientesParcelasSTATUS: TStringField;
    uniQClientesParcelasVALORPREVISTO: TFMTBCDField;
    uniQClientesParcelasVALORREALIZADO: TFMTBCDField;
    uniQClientesParcelasVALORJUROS: TFMTBCDField;
    uniQClientesParcelasVALORMULTA: TFMTBCDField;
    uniQClientesParcelasVALORDESCONTO: TFMTBCDField;
    uniQClientesParcelasPAGOCOB: TStringField;
    uniQClientesParcelasVALORPAGTOCOB: TFMTBCDField;
    uniQClientesParcelasRECBANCO: TStringField;
    uniQClientesParcelasCOMIEMP: TFMTBCDField;
    uniQClientesParcelasAGENCIA: TStringField;
    uniQClientesParcelasNUMERO: TFMTBCDField;
    uniQClientesParcelasNUMERONOTA: TFMTBCDField;
    uniQClientesParcelasRESUMO: TFMTBCDField;
    uniQClientesParcelasCOBRADOR: TFMTBCDField;
    uniQClientesParcelasBOL_DATA_EMISSAO: TStringField;
    uniQClientesParcelasBOL_DATA_ENVIO_REM: TStringField;
    uniQClientesParcelasBOL_REMESSA_ENVIO: TFMTBCDField;
    uniQClientesParcelasBOL_NUMERO: TStringField;
    uniQClientesParcelasBOL_NOSSO_NUMERO: TStringField;
    uniQClientesParcelasBOL_SITUACAO: TStringField;
    uniQClientesParcelasBOL_DESC_SITUACAO: TStringField;
    uniQClientesParcelasBOL_DATA_CANCELAMENTO: TStringField;
    uniQClientesParcelasBOL_DATA_ATU: TStringField;
    uniQClientesParcelasDATARECEBIMENTO: TStringField;
    uniQClientesParcelasVALORATRAZO: TFMTBCDField;
    uniQClientesParcelasVALORHONORARIO: TFMTBCDField;
    uniQClientesParcelasVALORPROTESTO: TFMTBCDField;
    uniQClientesParcelasBOL_NR_DOCUMENTO: TStringField;
    uniQClientesParcelasVALORORIGINAL: TFMTBCDField;
    uniQClientesParcelasOPERACAONOVA: TStringField;
    uniQClientesParcelasDATA_MODIF: TStringField;
    uniQClientesParcelasDATAFIMTERCEIRIZACAO: TDateTimeField;
    uniQClientesParcelasUSUARIO_REC: TFMTBCDField;
    uniQClientesParcelasDATARESUMO: TStringField;
    uniQClientesParcelasREC_DATA_EMISSAO: TStringField;
    uniQClientesParcelasBOL_LINHA_DIGITAVEL: TStringField;
    uniQClientesParcelasFASE: TFMTBCDField;
    uniQClientesParcelasATUALIZADOATE: TDateTimeField;
    uniQClientesParcelasUSUARIO_REPASSE: TFMTBCDField;
    uniQClientesParcelasDATA_REPASSE: TStringField;
    uniQClientesParcelasBOL_DATA_RETORNO_REM: TStringField;
    uniQClientesParcelasBOL_CODBARRAS: TStringField;
    uniQClientesParcelasNRREM50: TFMTBCDField;
    uniQClientesParcelasNRREM40: TFMTBCDField;
    uniQClientesParcelasNRREM97: TFMTBCDField;
    uniQClientesParcelasUSER_ID_97: TStringField;
    uniQClientesParcelasCOMISSAOBRUTA: TFMTBCDField;
    uniQClientesParcelasREDUTOR: TFMTBCDField;
    uniQClientesParcelasCOMISSAOLIQUIDA: TFMTBCDField;
    uniQClientesParcelasUFATUACAO: TStringField;
    uniQClientesParcelasTIPOPAGAMENTO: TStringField;
    uniQClientesParcelasPAGOATE30: TStringField;
    uniQClientesParcelasPERFORMANCE: TFMTBCDField;
    uniQClientesParcelasLOCATION: TStringField;
    uniQClientesParcelasTIPOREMUNERACAO: TStringField;
    uniQClientesParcelasNRREM41: TFMTBCDField;
    uniQClientesParcelasVALORCORRECAO: TFMTBCDField;
    uniQClientesParcelasCHQ_BANCO: TStringField;
    uniQClientesParcelasCHQ_AGENCIA: TStringField;
    uniQClientesParcelasCHQ_CONTA: TStringField;
    uniQClientesParcelasCHQ_NUMERO: TStringField;
    uniQClientesParcelasNRREM51: TFMTBCDField;
    uniQClientesParcelasNRREM52: TFMTBCDField;
    uniQClientesParcelasBOL_CONVENIO: TStringField;
    uniQClientesParcelasBOL_DATA_ENVIO: TStringField;
    uniQClientesParcelasVALOR_TAXA_ATUALIZACAO: TFMTBCDField;
    uniQClientesParcelasBOL_COD_REGISTRO: TStringField;
    uniQClientesParcelasVALOR_DESCONTO_PRINCIPAL: TBCDField;
    uniQClientesParcelasVALORATUALIZADO: TBCDField;
    uniQClientesParcelasBOL_VALOR_DESCONTO_ANTECIP: TBCDField;
    uniQClientesParcelasBOL_DATA_MAX_DESCONTO_ANTECIP: TStringField;
    uniQClientesParcelasREGISTRO: TFMTBCDField;
    uniQClientesParcelasCLIENTE: TStringField;
    uniQClientesListaCODIGO: TFMTBCDField;
    uniQClientesListaNOME: TStringField;
    uniQClientesListaTIPOPESSOA: TStringField;
    uniQClientesListaCPF_CNPJ: TStringField;
    uniQClientesListaCONTACORRENTE: TStringField;
    uniQClientesListaREGIAO: TFMTBCDField;
    uniQClientesListaENDERECO: TStringField;
    uniQClientesListaNUMERO: TStringField;
    uniQClientesListaSETOR: TStringField;
    uniQClientesListaCIDADE: TStringField;
    uniQClientesListaUF: TStringField;
    uniQClientesListaCEP: TStringField;
    uniQClientesListaFONE: TStringField;
    uniQClientesListaFAXCEL: TStringField;
    uniQClientesListaENDENDERECO_1: TStringField;
    uniQClientesListaNUMERO_1: TStringField;
    uniQClientesListaSETOR_1: TStringField;
    uniQClientesListaCIDADE_1: TStringField;
    uniQClientesListaUF_1: TStringField;
    uniQClientesListaCEP_1: TStringField;
    uniQClientesListaFONE_1: TStringField;
    uniQClientesListaFAXCEL_1: TStringField;
    uniQClientesListaCONTATO_1: TStringField;
    uniQClientesListaFOTO: TBlobField;
    uniQClientesListaCONTATO: TStringField;
    uniQClientesListaMCI: TFMTBCDField;
    uniQClientesListaDEVOLVERBB: TStringField;
    uniQClientesListaREMESSABB: TFMTBCDField;
    uniQClientesListaOBS: TBlobField;
    uniQClientesListaDTA_NASCIMENTO: TStringField;
    uniQClientesListaPONTO_REF1: TStringField;
    uniQClientesListaPONTO_REF2: TStringField;
    uniQClientesListaAGENCIA: TStringField;
    uniQClientesListaLOCALIDADE: TStringField;
    uniQClientesListaSETOR_FAT: TStringField;
    uniQClientesListaROTA: TStringField;
    uniQClientesListaQUADRA: TStringField;
    uniQClientesListaLOTE: TStringField;
    uniQClientesListaSUBLOTE: TStringField;
    uniQClientesListaEND_PREFERENCIAL: TStringField;
    uniQClientesListaFONE_PREFERENCIAL: TStringField;
    uniQClientesListaE_MAIL: TStringField;
    uniQClientesListaE_MAIL1: TStringField;
    uniQClientesListaNRIDENTIDADE: TStringField;
    uniQClientesListaSEXO: TStringField;
    uniQClientesListaLOCAL_TRABALHO: TStringField;
    uniQClientesListaCARGO_TRABALHO: TStringField;
    uniQClientesListaSALARIO_TRABALHO: TFMTBCDField;
    uniQClientesListaNATURALIDADE: TStringField;
    uniQClientesListaESTADOCIVIL: TStringField;
    uniQClientesListaSCORE: TFMTBCDField;
    uniQClientesListaBEHAVIOR: TFMTBCDField;
    uniQClientesListaDTA_CAD: TSQLTimeStampField;
    uniQClientesListaUSR_CAD: TFMTBCDField;
    uniQClientesListaMOTIVORETORNO: TFMTBCDField;
    uniQClientesListaCODIGO_EXTERNO: TStringField;
    uniQClientesListaSCORE1: TFMTBCDField;
    uniQClientesListaORIGEMDOSDADOS: TStringField;
    uniQClientesListaCOLUMN2: TStringField;
    uniQClientesListaDATA_MODIF: TSQLTimeStampField;
    uniQClientesListaCOD_CLASSIFICACAO: TIntegerField;
    uniQClientesListaMOTIVOINADIMPLENCIA: TIntegerField;
    uniQClientesReferenciaCODIGO: TFMTBCDField;
    uniQClientesReferenciaCLIENTE: TFMTBCDField;
    uniQClientesReferenciaNOME: TStringField;
    uniQClientesReferenciaENDERECO: TStringField;
    uniQClientesReferenciaBAIRRO: TStringField;
    uniQClientesReferenciaCIDADE: TStringField;
    uniQClientesReferenciaUF: TStringField;
    uniQClientesReferenciaFONE1: TStringField;
    uniQClientesReferenciaFONE2: TStringField;
    uniQClientesReferenciaCPF: TStringField;
    uniQClientesReferenciaRG: TStringField;
    uniQClientesReferenciaCEP: TStringField;
    uniQClientesReferenciaTIPO: TFMTBCDField;
    uniQClientesReferenciaLOCAL_TRABALHO: TStringField;
    uniQClientesReferenciaCARGO_TRABALHO: TStringField;
    uniQClientesReferenciaSALARIO_TRABALHO: TFMTBCDField;
    uniQClientesReferenciaFONE3: TStringField;
    uniQClientesReferenciaFONE4: TStringField;
    uniQClientesReferenciaFONE5: TStringField;
    uniQClientesReferenciaFONE6: TStringField;
    uniQClientesReferenciaE_MAIL: TStringField;
    uniQClientesReferenciaE_MAIL1: TStringField;
    uniQClientesCODIGO: TFMTBCDField;
    uniQClientesNOME: TStringField;
    uniQClientesTIPOPESSOA: TStringField;
    uniQClientesCPF_CNPJ: TStringField;
    uniQClientesCONTACORRENTE: TStringField;
    uniQClientesREGIAO: TFMTBCDField;
    uniQClientesENDERECO: TStringField;
    uniQClientesNUMERO: TStringField;
    uniQClientesSETOR: TStringField;
    uniQClientesCIDADE: TStringField;
    uniQClientesUF: TStringField;
    uniQClientesCEP: TStringField;
    uniQClientesFONE: TStringField;
    uniQClientesFAXCEL: TStringField;
    uniQClientesENDENDERECO_1: TStringField;
    uniQClientesNUMERO_1: TStringField;
    uniQClientesSETOR_1: TStringField;
    uniQClientesCIDADE_1: TStringField;
    uniQClientesUF_1: TStringField;
    uniQClientesCEP_1: TStringField;
    uniQClientesFONE_1: TStringField;
    uniQClientesFAXCEL_1: TStringField;
    uniQClientesCONTATO_1: TStringField;
    uniQClientesFOTO: TBlobField;
    uniQClientesCONTATO: TStringField;
    uniQClientesMCI: TFMTBCDField;
    uniQClientesDEVOLVERBB: TStringField;
    uniQClientesREMESSABB: TFMTBCDField;
    uniQClientesOBS: TBlobField;
    uniQClientesDTA_NASCIMENTO: TStringField;
    uniQClientesCOD_CLASSIFICACAO: TIntegerField;
    uniQClientesDATA_MODIF: TSQLTimeStampField;
    uniQClientesPONTO_REF1: TStringField;
    uniQClientesPONTO_REF2: TStringField;
    uniQClientesAGENCIA: TStringField;
    uniQClientesLOCALIDADE: TStringField;
    uniQClientesSETOR_FAT: TStringField;
    uniQClientesROTA: TStringField;
    uniQClientesQUADRA: TStringField;
    uniQClientesLOTE: TStringField;
    uniQClientesSUBLOTE: TStringField;
    uniQClientesEND_PREFERENCIAL: TStringField;
    uniQClientesFONE_PREFERENCIAL: TStringField;
    uniQClientesE_MAIL: TStringField;
    uniQClientesE_MAIL1: TStringField;
    uniQClientesNRIDENTIDADE: TStringField;
    uniQClientesSEXO: TStringField;
    uniQClientesLOCAL_TRABALHO: TStringField;
    uniQClientesCARGO_TRABALHO: TStringField;
    uniQClientesSALARIO_TRABALHO: TFMTBCDField;
    uniQClientesNATURALIDADE: TStringField;
    uniQClientesESTADOCIVIL: TStringField;
    uniQClientesSCORE: TFMTBCDField;
    uniQClientesBEHAVIOR: TFMTBCDField;
    uniQClientesMOTIVOINADIMPLENCIA: TIntegerField;
    uniQClientesDTA_CAD: TSQLTimeStampField;
    uniQClientesUSR_CAD: TFMTBCDField;
    uniQClientesMOTIVORETORNO: TFMTBCDField;
    uniQClientesCODIGO_EXTERNO: TStringField;
    uniQClientesSCORE1: TFMTBCDField;
    uniQClientesORIGEMDOSDADOS: TStringField;
    uniQClientesCOLUMN2: TStringField;
    UniDSQClientesVeiculos: TDataSource;
    UniQClientesVeiculos: TFDQuery;
    UniQClientesVeiculoscodigo: TFDAutoIncField;
    UniQClientesVeiculoscliente: TIntegerField;
    UniQClientesVeiculosmodelo: TStringField;
    UniQClientesVeiculosano: TStringField;
    UniQClientesVeiculosplaca: TStringField;
    UniQClientesVeiculoschassi: TStringField;
    UniQClientesVeiculosrenavam: TStringField;
    UniQClientesVeiculosmarca: TStringField;
    uniQClientesAgendaCODIGO: TFDAutoIncField;
    uniQClientesAgendaDATA: TDateTimeField;
    uniQClientesAgendaHORA: TSQLTimeStampField;
    uniQClientesAgendaUSUARIO: TFMTBCDField;
    uniQClientesAgendaBLOQUEADO: TStringField;
    uniQClientesAgendaCLIENTE: TFMTBCDField;
    uniQClientesAgendaCUMPRIDO: TStringField;
    uniQClientesAgendaAVISAR: TStringField;
    uniQClientesAgendaTEMPOANTESDEAVISAR: TFMTBCDField;
    uniQClientesAgendaNOME: TStringField;
    uniQClientesAgendaOBS: TBlobField;
    uniQClientesAgendaPRIORIDADE: TStringField;
    uniQClientesAgendaDATA_MODIF: TDateTimeField;
    uniQClientesAgendaDTA_CAD: TDateTimeField;
    uniQClientesAgendaUSR_CAD: TFMTBCDField;
    uniQClientesAgendaUSR_CUMPRIDO: TFMTBCDField;
    uniQClientesAgendaDTA_CUMPRIDO: TStringField;
    uniQClientesAgendaREGISTRO: TIntegerField;
    uniQClientesAgendaEVENTO: TStringField;
    uniQClientesAgendanome_usuario: TStringField;
    cbxCampanha: TComboBox;
    lblcampanha: TLabel;
    QCampanhaEstado: TFDQuery;
    edtRegistros: TEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOPESSOA: TcxGridDBColumn;
    cxGrid1DBTableView1CPF_CNPJ: TcxGridDBColumn;
    cxGrid1DBTableView1CONTACORRENTE: TcxGridDBColumn;
    cxGrid1DBTableView1REGIAO: TcxGridDBColumn;
    cxGrid1DBTableView1ENDERECO: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1SETOR: TcxGridDBColumn;
    cxGrid1DBTableView1CIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1UF: TcxGridDBColumn;
    cxGrid1DBTableView1CEP: TcxGridDBColumn;
    cxGrid1DBTableView1FONE: TcxGridDBColumn;
    cxGrid1DBTableView1FAXCEL: TcxGridDBColumn;
    cxGrid1DBTableView1ENDENDERECO_1: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO_1: TcxGridDBColumn;
    cxGrid1DBTableView1SETOR_1: TcxGridDBColumn;
    cxGrid1DBTableView1CIDADE_1: TcxGridDBColumn;
    cxGrid1DBTableView1UF_1: TcxGridDBColumn;
    cxGrid1DBTableView1CEP_1: TcxGridDBColumn;
    cxGrid1DBTableView1FONE_1: TcxGridDBColumn;
    cxGrid1DBTableView1FAXCEL_1: TcxGridDBColumn;
    cxGrid1DBTableView1CONTATO_1: TcxGridDBColumn;
    cxGrid1DBTableView1FOTO: TcxGridDBColumn;
    cxGrid1DBTableView1CONTATO: TcxGridDBColumn;
    cxGrid1DBTableView1MCI: TcxGridDBColumn;
    cxGrid1DBTableView1DEVOLVERBB: TcxGridDBColumn;
    cxGrid1DBTableView1REMESSABB: TcxGridDBColumn;
    cxGrid1DBTableView1OBS: TcxGridDBColumn;
    cxGrid1DBTableView1DTA_NASCIMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1PONTO_REF1: TcxGridDBColumn;
    cxGrid1DBTableView1PONTO_REF2: TcxGridDBColumn;
    cxGrid1DBTableView1AGENCIA: TcxGridDBColumn;
    cxGrid1DBTableView1LOCALIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1SETOR_FAT: TcxGridDBColumn;
    cxGrid1DBTableView1ROTA: TcxGridDBColumn;
    cxGrid1DBTableView1QUADRA: TcxGridDBColumn;
    cxGrid1DBTableView1LOTE: TcxGridDBColumn;
    cxGrid1DBTableView1SUBLOTE: TcxGridDBColumn;
    cxGrid1DBTableView1END_PREFERENCIAL: TcxGridDBColumn;
    cxGrid1DBTableView1FONE_PREFERENCIAL: TcxGridDBColumn;
    cxGrid1DBTableView1E_MAIL: TcxGridDBColumn;
    cxGrid1DBTableView1E_MAIL1: TcxGridDBColumn;
    cxGrid1DBTableView1NRIDENTIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1SEXO: TcxGridDBColumn;
    cxGrid1DBTableView1LOCAL_TRABALHO: TcxGridDBColumn;
    cxGrid1DBTableView1CARGO_TRABALHO: TcxGridDBColumn;
    cxGrid1DBTableView1SALARIO_TRABALHO: TcxGridDBColumn;
    cxGrid1DBTableView1NATURALIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1ESTADOCIVIL: TcxGridDBColumn;
    cxGrid1DBTableView1SCORE: TcxGridDBColumn;
    cxGrid1DBTableView1BEHAVIOR: TcxGridDBColumn;
    cxGrid1DBTableView1DTA_CAD: TcxGridDBColumn;
    cxGrid1DBTableView1USR_CAD: TcxGridDBColumn;
    cxGrid1DBTableView1MOTIVORETORNO: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO_EXTERNO: TcxGridDBColumn;
    cxGrid1DBTableView1SCORE1: TcxGridDBColumn;
    cxGrid1DBTableView1ORIGEMDOSDADOS: TcxGridDBColumn;
    cxGrid1DBTableView1COLUMN2: TcxGridDBColumn;
    cxGrid1DBTableView1DATA_MODIF: TcxGridDBColumn;
    cxGrid1DBTableView1COD_CLASSIFICACAO: TcxGridDBColumn;
    cxGrid1DBTableView1MOTIVOINADIMPLENCIA: TcxGridDBColumn;
    Label2: TLabel;
    uniQClientesListaCOD_BANCO_COMISSAO: TIntegerField;
    uniQClientesCOD_BANCO_COMISSAO: TIntegerField;
    UniQEventosCobrancaCODIGO: TFDAutoIncField;
    UniQEventosCobrancaCLIENTE: TStringField;
    UniQEventosCobrancaNROPERACAO: TStringField;
    UniQEventosCobrancaREMESSA: TFMTBCDField;
    UniQEventosCobrancaDATAHORA: TSQLTimeStampField;
    UniQEventosCobrancaUSUARIO: TFMTBCDField;
    UniQEventosCobrancaHISTORICO: TStringField;
    UniQEventosCobrancaCOD_EVENTO: TFMTBCDField;
    UniQEventosCobrancaDATA_MODIF: TSQLTimeStampField;
    UniQEventosCobrancaENVIADOBB: TStringField;
    UniQEventosCobrancaNRPROCESSO: TStringField;
    UniQEventosCobrancaNOMECONTATO: TStringField;
    UniQEventosCobrancaHISTORICO1: TStringField;
    UniQEventosCobrancaNR_PROPOSTA: TFMTBCDField;
    UniQEventosCobrancaCONTA: TStringField;
    UniQEventosCobrancaLISTA: TStringField;
    UniQEventosCobrancaSALDO: TFMTBCDField;
    UniQEventosCobrancaOPER_COD_CLASSIFICACAO: TFMTBCDField;
    UniQEventosCobrancaTELEFONES_STATUS: TFMTBCDField;
    UniQEventosCobrancaSUCESSO: TStringField;
    UniQEventosCobrancaREGISTRO: TFMTBCDField;
    UniQEventosCobrancaHISTORICOBLOB: TBlobField;
    UniQEventosCobrancaCOD_EVENTO_1: TFMTBCDField;
    UniQEventosCobrancaDESC_EVENTO: TStringField;
    UniQEventosCobrancaDATA_MODIF_1: TSQLTimeStampField;
    UniQEventosCobrancaSOLUCAO: TStringField;
    UniQEventosCobrancaCLASSIFICACAO: TFMTBCDField;
    UniQEventosCobrancaINSERIR_ACORDO: TStringField;
    UniQEventosCobrancaPAGA_COMISSAO: TStringField;
    UniQEventosCobrancaPERMITE_AGENDAR: TStringField;
    UniQEventosCobrancaATIVO: TStringField;
    UniQEventosCobrancaDTA_CAD: TSQLTimeStampField;
    UniQEventosCobrancaUSR_CAD: TFMTBCDField;
    UniQEventosCobrancaCOD_EXTERNO: TStringField;
    UniQEventosCobrancaMOSTRAR_SOLUCAO: TStringField;
    UniQEventosCobrancaAGENDAR_DIAS: TFMTBCDField;
    UniQEventosCobrancaCOD_EXTERNO1: TStringField;
    UniQEventosCobrancaCLASS_CLIENTE: TStringField;
    UniQEventosCobrancaPERMITE_SEGUNDO_EVENTO_DIA: TStringField;
    UniQEventosCobrancaFIXA_AGENDAR_DIAS: TStringField;
    UniQEventosCobrancaCLASS_OPERACAO: TStringField;
    UniQEventosCobrancaCLASS_CLIENTE_CODIGO: TFMTBCDField;
    UniQEventosCobrancaCLASS_OPERACAO_CODIGO: TFMTBCDField;
    UniQEventosCobrancaMOTIVOINADIMPLENCIA: TFMTBCDField;
    UniQEventosCobrancaFIXAR_MOTIVOINADIMPLENCIA: TStringField;
    UniQEventosCobrancaPRIORIDADE_EXPORTACAO: TFMTBCDField;
    UniQEventosCobrancaVALIDO_CONTATO: TStringField;
    UniQEventosCobrancaFONE_CONTATO: TStringField;
    UniQEventosCobrancaFIXAR_CONTROLE_IMP: TStringField;
    UniQEventosCobrancaCONTROLE_IMP: TFMTBCDField;
    UniQEventosCobrancaPESO: TFMTBCDField;
    UniQEventosCobrancaMOTIVORETORNO: TFMTBCDField;
    UniQEventosCobrancaFIXAR_MOTIVORETORNO: TStringField;
    UniQEventosCobrancaFIXAR_CONTROLE_IMP_OPERACAO: TStringField;
    UniQEventosCobrancaCONTROLE_IMP_OPERACAO: TFMTBCDField;
    UniQEventosCobrancaCOR_EVENTO: TStringField;
    UniQEventosCobrancaFIXAR_REMOVER_CONTROLEIMP: TFMTBCDField;
    UniQEventosCobrancaFIXAR_PREFERENCIAL: TFMTBCDField;
    UniQEventosCobrancaFIXAR_MENSAGEIRO_INSTANTANEO: TFMTBCDField;
    UniQEventosCobrancaVALIDACAO_CAMPO: TFMTBCDField;
    UniQEventosCobrancaOCULTAR_EVENTO_CLIENTE: TStringField;
    UniQEventosCobrancanome_usuario: TStringField;
    uniQClientesParcelasNUM_PARCELA: TStringField;
    uniQClientesParcelasBOL_IMPRESSO: TStringField;
    uniQClientesParcelasBOL_REMESSA: TStringField;
    uniQClientesParcelasBOL_COD_BANCO: TIntegerField;
    procedure FormActivate(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RzToolButton2Click(Sender: TObject);
    procedure UniQEventosCobrancaHISTORICOBLOBGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure uniQClientesOperacoesAfterOpen(DataSet: TDataSet);
    procedure Edit9Change(Sender: TObject);
    procedure cbxCampanhaCloseUp(Sender: TObject);
  private
    { Private declarations }
    procedure CarregaCampanhaCombo;
  public
    { Public declarations }
    vOK : boolean;
  end;

var
  FrmClientes: TFrmClientes;

implementation

{$R *.dfm}

uses
  uDataModule, UCliente, UMENU, uagendacadastro, uclientesnegociacao, uFuncoes,
  uRelContasReceber, uRelEventosCobranca, uBoleto, uManutencaoContasReceber;

procedure TFrmClientes.FormActivate(Sender: TObject);
begin
edit1.setfocus;
//SELECIONAR APENAS OS CLIENTES DA CAMPANHA
{
    uniQClientesLista.Close;
    uniQClientesLista.Open;
    uniQClientesLista.First;
    uniQClientes.Close;
    uniQClientes.Open;
}


{  try
    uniQClientesLista.Close;
    uniQClientesLista.Sql.Text := 'select clientes.codigo, clientes.nome, clientes.tipopessoa, ' +
                             'clientes.cpf_cnpj, clientes.cidade, clientes.uf, clientes.fone, clientes.faxcel, ' +
                             'clientes.contato ' +
                             'from clientes inner join operacoes on to_char(operacoes.cliente) = to_char(clientes.cpf_cnpj) ' +
                             'where operacoes.credor = :pcredor ' +
                             'group by clientes.codigo, clientes.nome, clientes.tipopessoa, clientes.cpf_cnpj, clientes.cidade, ' +
                             'clientes.uf, clientes.fone, clientes.faxcel, clientes.contato ' +
                             'order by nome';
                             uniQClientesLista.parambyname('pcredor').asfloat := FRMMENU.script.FIELDBYNAME('CREDOR').ASFLOAT;
    uniQClientesLista.Open;
    uniQClientesLista.First;
    uniQClientes.Close;
    uniQClientes.Open;
  except
    IF (FRMmenu.USUARIOLOGADO_NIVEL = 'S') OR (FRMmenu.USUARIOLOGADO_NIVEL = 'M') THEN BEGIN
      uniQClientesLista.Close;
      uniQClientesLista.Sql.Text := 'select clientes.codigo, clientes.nome, clientes.tipopessoa, ' +
                               'clientes.cpf_cnpj, clientes.cidade, clientes.uf, clientes.fone, clientes.faxcel, ' +
                               'clientes.contato ' +
                               'from clientes inner join operacoes on to_char(operacoes.cliente) = to_char(clientes.cpf_cnpj) ' +
                               'group by clientes.codigo, clientes.nome, clientes.tipopessoa, clientes.cpf_cnpj, clientes.cidade, ' +
                               'clientes.uf, clientes.fone, clientes.faxcel, clientes.contato ' +
                               'order by nome';
      uniQClientesLista.Open;
      uniQClientesLista.First;
      uniQClientes.Close;
      uniQClientes.Open;
    END ELSE CLOSE;
  end;
}
end;

procedure TFrmClientes.FormShow(Sender: TObject);
begin
  vOK := False;
  frmclientes.Edit1.Clear;
  frmclientes.Edit9.Clear;
  frmclientes.Edit12.Clear;
  frmclientes.Edit13.Clear;
  CarregaCampanhaCombo;
  if frmMenu.USUARIOLOGADO_NIVEL <> 'O' then
    frmclientes.BitBtn1.Click;
end;

procedure TFrmClientes.AdvGlowButton2Click(Sender: TObject);
begin
try
  uniQClientesLista.Edit;
  uniQClientesLista.Cancel;
except end;
Close;
end;

procedure TFrmClientes.AdvGlowButton5Click(Sender: TObject);
begin
  UniQClientesReferencia.Open;
  UniQClientesOperacoes.Open;
  UniQClientesParcelas.Open;
  UniQClientesAgenda.Open;
  UniQScriptCobranca.Open;
  UniQEventosCobranca.Close;
  UniQEventosCobranca.Open;
  UniQEventosCobranca.First;
  UniQEventosCobranca.Last;
  UniQEventosCobranca.First;

  frmClientesCadastro.ShowModal;
end;

procedure TFrmClientes.BitBtn12Click(Sender: TObject);
var
  vEstado : string;
begin
  try
    vEstado := '';
    with QCampanhaEstado do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT                                  ');
      SQL.Add('  ce.ESTADO                             ');
      SQL.Add('FROM                                    ');
      SQL.Add('  campanha_estado ce                    ');
      SQL.Add('WHERE ce.CODIGO_CAMPANHA = :CodCampanha ');
      ParamByName('CodCampanha').AsInteger := Integer(cbxCampanha.Items.Objects[cbxCampanha.ItemIndex]);
      Open;
    end;

    QCampanhaEstado.First;
    while not QCampanhaEstado.Eof do
    begin
      vEstado := vEstado + QCampanhaEstado.FieldByName('estado').AsString;
      QCampanhaEstado.Next;
      if not QCampanhaEstado.Eof then
        vEstado := vEstado + ''','''
    end;

    with uniQClientesLista do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT                                   ');
      SQL.Add('  cl.*                                   ');
      if frmMenu.USUARIOLOGADO_NIVEL = 'O' then
      begin
        SQL.Add('  ,a.CLIENTE,                          ');
        SQL.Add('  a.USR_CAD                            ');
      end;
      SQL.Add('FROM                                     ');
      SQL.Add('  campanha_crm c                         ');
      SQL.Add('  INNER JOIN campanha_credores cc        ');
      SQL.Add('    ON cc.CODIGO_CAMPANHA = c.CODIGO     ');
      SQL.Add('  INNER JOIN clientes_credores clb       ');
      SQL.Add('    ON clb.cod_credor = cc.CODIGO_CREDOR ');
      SQL.Add('  INNER JOIN clientes cl                 ');
      SQL.Add('    ON cl.CODIGO = clb.cod_cliente       ');
      SQL.Add('  INNER JOIN operacoes o                 ');
      SQL.Add('    ON cl.CODIGO = o.cliente             ');
      if frmMenu.USUARIOLOGADO_NIVEL = 'O' then
      begin
        SQL.Add('  LEFT JOIN agenda a                     ');
        SQL.Add('    ON a.CLIENTE = cl.CODIGO             ');
        SQL.Add('    AND a.DATA >= CURRENT_TIMESTAMP      ');
        SQL.Add('    AND a.USR_CAD <> :CodUser            ');
        SQL.Add('WHERE a.USR_CAD IS NULL                  ');
        if cbxCampanha.ItemIndex > 0 then
        begin
          SQL.Add('  AND c.CODIGO = :CodCampanha            ');
          ParamByName('CodCampanha').AsInteger :=  Integer(cbxCampanha.Items.Objects[cbxCampanha.ItemIndex]);
        end;
        SQL.Add('AND UPPER(o.nrficha) LIKE :ppar  ');
        if vEstado <> '' then
          SQL.Add('  AND cl.UF IN (''' + vEstado + ''')         ');
        ParamByName('CodUser').AsString := frmMenu.USUARIOLOGADO_CODIGO;
      end
      else
      begin
        SQL.Add('WHERE UPPER(o.nrficha) LIKE :ppar  ');
        if cbxCampanha.ItemIndex > 0 then
        begin
          SQL.Add('AND c.CODIGO = :CodCampanha            ');
          ParamByName('CodCampanha').AsInteger :=  Integer(cbxCampanha.Items.Objects[cbxCampanha.ItemIndex]);
        end;
        if vEstado <> '' then
          SQL.Add('  AND cl.UF IN (''' + vEstado + ''')         ');
      end;
      ParamByName('ppar').AsString := Edit12.Text + '%';
      SQL.Add('GROUP BY cl.CODIGO                       ');
      SQL.Add('ORDER BY cl.NOME                         ');
      Open;
    end;
    edtRegistros.Text := uniQClientesLista.RecordCount.ToString;
  except
    on exc : exception do
      ShowMessage(exc.Message);
  end;

//  try
//    if frmMenu.USUARIOLOGADO_NIVEL = 'O' then
//    begin
//      if Edit13.Text = '' then
//      begin
//        MessageDlg('Informe o N° da ficha para pesquisa.',mtInformation,[mbOk],0);
//        Exit;
//      end;
//      with uniQClientesLista do
//      begin
//        Close;
//        SQL.Clear;
//        SQL.Add('SELECT                               ');
//        SQL.Add('  c.*                                ');
//        SQL.Add('FROM                                 ');
//        SQL.Add('  operacoes o                        ');
//        SQL.Add('  INNER JOIN clientes c              ');
//        SQL.Add('    ON c.codigo = o.cliente          ');
//        SQL.Add('  LEFT JOIN agenda a                ');
//        SQL.Add('    ON a.CLIENTE = c.CODIGO         ');
//        SQL.Add('    AND a.DATA >= CURRENT_TIMESTAMP ');
//        SQL.Add('    AND a.USR_CAD <> :CodUser       ');
//        SQL.Add('WHERE a.USR_CAD IS NULL             ');
//        SQL.Add('AND UPPER(o.nrficha) LIKE :ppar  ');
//        ParamByName('CodUser').AsString := frmMenu.USUARIOLOGADO_CODIGO;
//        ParamByName('ppar').AsString := Edit13.Text + '%';
//        Open;
//        First;
//      end;
//    end
//    else
//    begin
//      with uniQClientesLista do
//      begin
//        Close;
//        SQL.Clear;
//        SQL.Add('SELECT                               ');
//        SQL.Add('  c.*                                ');
//        SQL.Add('FROM                                 ');
//        SQL.Add('  operacoes o                        ');
//        SQL.Add('  INNER JOIN clientes c              ');
//        SQL.Add('    ON c.codigo = o.cliente          ');
//        SQL.Add('WHERE UPPER(o.nrficha) LIKE :ppar ');
//        ParamByName('ppar').AsString := Edit13.Text + '%';
//        Open;
//        First;
//      end;
//    end;
//  except
//    on exc : exception do
//      ShowMessage(exc.Message);
//  end;

end;

procedure TFrmClientes.BitBtn14Click(Sender: TObject);
begin
  uniQClientesLista.Close;
  uniQClientesLista.Sql.Text := 'select * from operacoes ' +
                           'inner join clientes on clientes.codigo = operacoes.cliente ' +
                           'where UPPER(operacoes.nr_carta_acordo) like :ppar';
                           uniQClientesLista.ParambyName('ppar').ASSTRING := EDIT14.TEXT + '%';
  uniQClientesLista.Open;
  uniQClientesLista.First;
end;

procedure TFrmClientes.BitBtn15Click(Sender: TObject);
begin
  uniQClientesLista.Close;
  uniQClientesLista.Sql.Text := 'select * from operacoes ' +
                           'inner join clientes on clientes.codigo = operacoes.cliente ' +
                           'where UPPER(operacoes.conta) like :ppar';
                           uniQClientesLista.ParambyName('ppar').ASSTRING := EDIT15.TEXT + '%';
  uniQClientesLista.Open;
  uniQClientesLista.First;
end;

procedure TFrmClientes.BitBtn1Click(Sender: TObject);
var
  vEstado : string;
begin
  try
    vEstado := '';
    with QCampanhaEstado do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT                                  ');
      SQL.Add('  ce.ESTADO                             ');
      SQL.Add('FROM                                    ');
      SQL.Add('  campanha_estado ce                    ');
      SQL.Add('WHERE ce.CODIGO_CAMPANHA = :CodCampanha ');
      ParamByName('CodCampanha').AsInteger := Integer(cbxCampanha.Items.Objects[cbxCampanha.ItemIndex]);
      Open;
    end;

    QCampanhaEstado.First;
    while not QCampanhaEstado.Eof do
    begin
      vEstado := vEstado + QCampanhaEstado.FieldByName('estado').AsString;
      QCampanhaEstado.Next;
      if not QCampanhaEstado.Eof then
        vEstado := vEstado + ''','''
    end;

    if (frmMenu.USUARIOLOGADO_NIVEL = 'M') and
       (cbxCampanha.ItemIndex = 0) then
    begin
      with uniQClientesLista do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT                          ');
        SQL.Add('  cl.*                          ');
        SQL.Add('FROM                            ');
        SQL.Add('  clientes cl                   ');
        SQL.Add('WHERE UPPER(cl.nome) LIKE :Nome ');
        SQL.Add('GROUP BY cl.CODIGO              ');
        SQL.Add('ORDER BY cl.NOME                ');
        ParamByName('Nome').AsString := '%' + Edit1.Text + '%';
        Open;
      end;
    end
    else
    begin
      with uniQClientesLista do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT                                   ');
        SQL.Add('  cl.*                                   ');
        if frmMenu.USUARIOLOGADO_NIVEL = 'O' then
        begin
          SQL.Add('  ,a.CLIENTE,                          ');
          SQL.Add('  a.USR_CAD                            ');
        end;
        SQL.Add('FROM                                     ');
        SQL.Add('  campanha_crm c                         ');
        SQL.Add('  INNER JOIN campanha_credores cc        ');
        SQL.Add('    ON cc.CODIGO_CAMPANHA = c.CODIGO     ');
        SQL.Add('  INNER JOIN clientes_credores clb       ');
        SQL.Add('    ON clb.cod_credor = cc.CODIGO_CREDOR ');
        SQL.Add('  INNER JOIN clientes cl                 ');
        SQL.Add('    ON cl.CODIGO = clb.cod_cliente       ');
        if frmMenu.USUARIOLOGADO_NIVEL = 'O' then
        begin
          SQL.Add('  LEFT JOIN agenda a                     ');
          SQL.Add('    ON a.CLIENTE = cl.CODIGO             ');
          SQL.Add('    AND a.DATA >= CURRENT_TIMESTAMP      ');
          SQL.Add('    AND a.USR_CAD <> :CodUser            ');
          SQL.Add('WHERE a.USR_CAD IS NULL                  ');
          if cbxCampanha.ItemIndex > 0 then
          begin
            SQL.Add('  AND c.CODIGO = :CodCampanha            ');
            ParamByName('CodCampanha').AsInteger :=  Integer(cbxCampanha.Items.Objects[cbxCampanha.ItemIndex]);
          end;
          SQL.Add('  AND UPPER(cl.nome) LIKE :Nome          ');
          if vEstado <> '' then
            SQL.Add('  AND cl.UF IN (''' + vEstado + ''')         ');
          ParamByName('CodUser').AsString := frmMenu.USUARIOLOGADO_CODIGO;
        end
        else
        begin
          SQL.Add('WHERE UPPER(cl.nome) LIKE :Nome          ');
          if cbxCampanha.ItemIndex > 0 then
          begin
            SQL.Add('AND c.CODIGO = :CodCampanha            ');
            ParamByName('CodCampanha').AsInteger :=  Integer(cbxCampanha.Items.Objects[cbxCampanha.ItemIndex]);
          end;
          if vEstado <> '' then
            SQL.Add('  AND cl.UF IN (''' + vEstado + ''')         ');
        end;
        ParamByName('Nome').AsString := '%' + Edit1.Text + '%';
        SQL.Add('GROUP BY cl.CODIGO                       ');
        SQL.Add('ORDER BY cl.NOME                         ');
        Open;
      end;
    end;
    edtRegistros.Text := uniQClientesLista.RecordCount.ToString;
  except
    on exc : exception do
      ShowMessage(exc.Message);
  end;


  //  end
//    else
//    begin
//      with uniQClientesLista do
//      begin
//        Close;
//        SQL.Clear;
//        SQL.Add('SELECT                                                ');
//        SQL.Add('  *                                                   ');
//        SQL.Add('FROM                                                  ');
//        SQL.Add('  clientes                                            ');
//        SQL.Add('WHERE UPPER(nome) LIKE :Nome                          ');
//        if cbxCampanha.ItemIndex > 0 then
//        begin
//          SQL.Add('  AND c.CODIGO = :CodCampanha            ');
//          ParamByName('CodCampanha').AsInteger :=  Integer(cbxCampanha.Items.Objects[1]);
//        end;
//        SQL.Add('ORDER BY nome                                         ');
//        ParamByName('Nome').AsString := '%' + Edit1.Text + '%';
//        Open;
//        First;
//      end
//    end;


//  uniQClientesLista.Close;
//  uniQClientesLista.Sql.Text := 'select * from clientes where upper(nome) like (''%' + EDIT1.TEXT + '%'') order by nome';
//  uniQClientesLista.Open;
//  uniQClientesLista.First;

end;

procedure TFrmClientes.BitBtn2Click(Sender: TObject);
begin
//  with uniQClientesLista do
//  begin
//    Close;
//    SQL.Clear;
//    SQL.Add('select                          ');
//    SQL.Add('  c.*,                          ');
//    SQL.Add('  case                          ');
//    SQL.Add('    c.tipopessoa                ');
//    SQL.Add('    when ''F''                  ');
//    SQL.Add('    then CONCAT(                ');
//    SQL.Add('      SUBSTR(c.CPF_CNPJ, 1, 3), ');
//    SQL.Add('      ''.'',                    ');
//    SQL.Add('      SUBSTR(c.CPF_CNPJ, 4, 3), ');
//    SQL.Add('      ''.'',                    ');
//    SQL.Add('      SUBSTR(c.CPF_CNPJ, 7, 3), ');
//    SQL.Add('      ''-'',                    ');
//    SQL.Add('      SUBSTR(c.CPF_CNPJ, 10, 2) ');
//    SQL.Add('    )                           ');
//    SQL.Add('    else CONCAT(                ');
//    SQL.Add('      SUBSTR(c.CPF_CNPJ, 1, 2), ');
//    SQL.Add('      ''.'',                    ');
//    SQL.Add('      SUBSTR(c.CPF_CNPJ, 3, 3), ');
//    SQL.Add('      ''.'',                    ');
//    SQL.Add('      SUBSTR(c.CPF_CNPJ, 6, 3), ');
//    SQL.Add('      ''/'',                    ');
//    SQL.Add('      SUBSTR(c.CPF_CNPJ, 9, 4), ');
//    SQL.Add('      ''-'',                    ');
//    SQL.Add('      SUBSTR(c.CPF_CNPJ, 13, 2) ');
//    SQL.Add('    )                           ');
//    SQL.Add('  end as cpfcnpj                ');
//    SQL.Add('from                            ');
//    SQL.Add('  clientes c                    ');
//    SQL.Add('WHERE UPPER(nome) LIKE (''%' + EDIT1.TEXT + '%'') order by nome');
//    Open;
//  end;

  uniQClientesLista.Close;
  uniQClientesLista.Sql.Text := 'select * from clientes where upper(codigo) like (''%' + EDIT3.TEXT + '%'') order by nome';
  uniQClientesLista.Open;
  uniQClientesLista.First;
end;

procedure TFrmClientes.BitBtn3Click(Sender: TObject);
begin
  uniQClientesLista.Close;
  uniQClientesLista.Sql.Text := 'select * from clientes where upper(cnpj) like (''%' + EDIT3.TEXT + '%'') order by nome';
  uniQClientesLista.Open;
  uniQClientesLista.First;
end;

procedure TFrmClientes.BitBtn6Click(Sender: TObject);
var
  vEstado : string;
begin
  try
    vEstado := '';
    with QCampanhaEstado do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT                                  ');
      SQL.Add('  ce.ESTADO                             ');
      SQL.Add('FROM                                    ');
      SQL.Add('  campanha_estado ce                    ');
      SQL.Add('WHERE ce.CODIGO_CAMPANHA = :CodCampanha ');
      ParamByName('CodCampanha').AsInteger := Integer(cbxCampanha.Items.Objects[cbxCampanha.ItemIndex]);
      Open;
    end;

    QCampanhaEstado.First;
    while not QCampanhaEstado.Eof do
    begin
      vEstado := vEstado + QCampanhaEstado.FieldByName('estado').AsString;
      QCampanhaEstado.Next;
      if not QCampanhaEstado.Eof then
        vEstado := vEstado + ''','''
    end;

    with uniQClientesLista do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT                                   ');
      SQL.Add('  cl.*                                   ');
      if frmMenu.USUARIOLOGADO_NIVEL = 'O' then
      begin
        SQL.Add('  ,a.CLIENTE,                          ');
        SQL.Add('  a.USR_CAD                            ');
      end;
      SQL.Add('FROM                                     ');
      SQL.Add('  campanha_crm c                         ');
      SQL.Add('  INNER JOIN campanha_credores cc        ');
      SQL.Add('    ON cc.CODIGO_CAMPANHA = c.CODIGO     ');
      SQL.Add('  INNER JOIN clientes_credores clb       ');
      SQL.Add('    ON clb.cod_credor = cc.CODIGO_CREDOR ');
      SQL.Add('  INNER JOIN clientes cl                 ');
      SQL.Add('    ON cl.CODIGO = clb.cod_cliente       ');
      SQL.Add('  INNER JOIN operacoes o                 ');
      SQL.Add('    ON cl.CODIGO = o.cliente             ');
      if frmMenu.USUARIOLOGADO_NIVEL = 'O' then
      begin
        SQL.Add('  LEFT JOIN agenda a                     ');
        SQL.Add('    ON a.CLIENTE = cl.CODIGO             ');
        SQL.Add('    AND a.DATA >= CURRENT_TIMESTAMP      ');
        SQL.Add('    AND a.USR_CAD <> :CodUser            ');
        SQL.Add('WHERE a.USR_CAD IS NULL                  ');
        if cbxCampanha.ItemIndex > 0 then
        begin
          SQL.Add('  AND c.CODIGO = :CodCampanha            ');
          ParamByName('CodCampanha').AsInteger :=  Integer(cbxCampanha.Items.Objects[cbxCampanha.ItemIndex]);
        end;
        SQL.Add('AND UPPER(o.nroperacao) LIKE :ppar  ');
        if vEstado <> '' then
          SQL.Add('  AND cl.UF IN (''' + vEstado + ''')         ');
        ParamByName('CodUser').AsString := frmMenu.USUARIOLOGADO_CODIGO;
      end
      else
      begin
        SQL.Add('WHERE UPPER(o.nroperacao) LIKE :ppar  ');
        if cbxCampanha.ItemIndex > 0 then
        begin
          SQL.Add('AND c.CODIGO = :CodCampanha            ');
          ParamByName('CodCampanha').AsInteger :=  Integer(cbxCampanha.Items.Objects[cbxCampanha.ItemIndex]);
        end;
        if vEstado <> '' then
          SQL.Add('  AND cl.UF IN (''' + vEstado + ''')         ');
      end;
      ParamByName('ppar').AsString := Edit12.Text + '%';
      SQL.Add('GROUP BY cl.CODIGO                       ');
      SQL.Add('ORDER BY cl.NOME                         ');
      Open;
    end;
    edtRegistros.Text := uniQClientesLista.RecordCount.ToString;
  except
    on exc : exception do
      ShowMessage(exc.Message);
  end;

//  try
//    if frmMenu.USUARIOLOGADO_NIVEL = 'O' then
//    begin
//      if Edit12.Text = '' then
//      begin
//        MessageDlg('Informe o N° da operação para pesquisa.',mtInformation,[mbOk],0);
//        Exit;
//      end;
//      with uniQClientesLista do
//      begin
//        Close;
//        SQL.Clear;
//        SQL.Add('SELECT                               ');
//        SQL.Add('  c.*                                ');
//        SQL.Add('FROM                                 ');
//        SQL.Add('  operacoes o                        ');
//        SQL.Add('  INNER JOIN clientes c              ');
//        SQL.Add('    ON c.codigo = o.cliente          ');
//        SQL.Add('  LEFT JOIN agenda a                ');
//        SQL.Add('    ON a.CLIENTE = c.CODIGO         ');
//        SQL.Add('    AND a.DATA >= CURRENT_TIMESTAMP ');
//        SQL.Add('    AND a.USR_CAD <> :CodUser       ');
//        SQL.Add('WHERE a.USR_CAD IS NULL             ');
//        SQL.Add('AND UPPER(o.nroperacao) LIKE :ppar  ');
//        ParamByName('CodUser').AsString := frmMenu.USUARIOLOGADO_CODIGO;
//        ParamByName('ppar').AsString := Edit12.Text + '%';
//        Open;
//        First;
//      end;
//    end
//    else
//    begin
//      with uniQClientesLista do
//      begin
//        Close;
//        SQL.Clear;
//        SQL.Add('SELECT                               ');
//        SQL.Add('  c.*                                ');
//        SQL.Add('FROM                                 ');
//        SQL.Add('  operacoes o                        ');
//        SQL.Add('  INNER JOIN clientes c              ');
//        SQL.Add('    ON c.codigo = o.cliente          ');
//        SQL.Add('WHERE UPPER(o.nroperacao) LIKE :ppar ');
//        ParamByName('ppar').AsString := Edit12.Text + '%';
//        Open;
//        First;
//      end;
//    end;
//  except
//    on exc : exception do
//      ShowMessage(exc.Message);
//  end;
end;

procedure TFrmClientes.BitBtn9Click(Sender: TObject);
var
  vEstado : string;
begin
  try
    vEstado := '';
    with QCampanhaEstado do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT                                  ');
      SQL.Add('  ce.ESTADO                             ');
      SQL.Add('FROM                                    ');
      SQL.Add('  campanha_estado ce                    ');
      SQL.Add('WHERE ce.CODIGO_CAMPANHA = :CodCampanha ');
      ParamByName('CodCampanha').AsInteger := Integer(cbxCampanha.Items.Objects[cbxCampanha.ItemIndex]);
      Open;
    end;

    QCampanhaEstado.First;
    while not QCampanhaEstado.Eof do
    begin
      vEstado := vEstado + QCampanhaEstado.FieldByName('estado').AsString;
      QCampanhaEstado.Next;
      if not QCampanhaEstado.Eof then
        vEstado := vEstado + ''','''
    end;

    if (frmMenu.USUARIOLOGADO_NIVEL = 'M') and
       (cbxCampanha.ItemIndex = 0) then
    begin
      with uniQClientesLista do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT                          ');
        SQL.Add('  cl.*                          ');
        SQL.Add('FROM                            ');
        SQL.Add('  clientes cl                   ');
        SQL.Add('WHERE UPPER(cl.cpf_cnpj) LIKE :cpf     ');
        SQL.Add('GROUP BY cl.CODIGO              ');
        SQL.Add('ORDER BY cl.NOME                ');
        ParamByName('cpf').AsString := '%' + Edit9.Text + '%';
        Open;
      end;
    end
    else
    begin
      with uniQClientesLista do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT                                   ');
        SQL.Add('  cl.*                                   ');
        if frmMenu.USUARIOLOGADO_NIVEL = 'O' then
        begin
          SQL.Add('  ,a.CLIENTE,                          ');
          SQL.Add('  a.USR_CAD                            ');
        end;
        SQL.Add('FROM                                     ');
        SQL.Add('  campanha_crm c                         ');
        SQL.Add('  INNER JOIN campanha_credores cc        ');
        SQL.Add('    ON cc.CODIGO_CAMPANHA = c.CODIGO     ');
        SQL.Add('  INNER JOIN clientes_credores clb       ');
        SQL.Add('    ON clb.cod_credor = cc.CODIGO_CREDOR ');
        SQL.Add('  INNER JOIN clientes cl                 ');
        SQL.Add('    ON cl.CODIGO = clb.cod_cliente       ');
        if frmMenu.USUARIOLOGADO_NIVEL = 'O' then
        begin
          SQL.Add('  LEFT JOIN agenda a                     ');
          SQL.Add('    ON a.CLIENTE = cl.CODIGO             ');
          SQL.Add('    AND a.DATA >= CURRENT_TIMESTAMP      ');
          SQL.Add('    AND a.USR_CAD <> :CodUser            ');
          SQL.Add('WHERE a.USR_CAD IS NULL                  ');
          if cbxCampanha.ItemIndex > 0 then
          begin
            SQL.Add('  AND c.CODIGO = :CodCampanha            ');
            ParamByName('CodCampanha').AsInteger :=  Integer(cbxCampanha.Items.Objects[cbxCampanha.ItemIndex]);
          end;
          SQL.Add('AND UPPER(cl.cpf_cnpj) LIKE :cpf     ');
          if vEstado <> '' then
            SQL.Add('  AND cl.UF IN (''' + vEstado + ''')         ');
          ParamByName('CodUser').AsString := frmMenu.USUARIOLOGADO_CODIGO;
        end
        else
        begin
          SQL.Add('WHERE UPPER(cl.cpf_cnpj) LIKE :cpf     ');
          if cbxCampanha.ItemIndex > 0 then
          begin
            SQL.Add('AND c.CODIGO = :CodCampanha            ');
            ParamByName('CodCampanha').AsInteger :=  Integer(cbxCampanha.Items.Objects[cbxCampanha.ItemIndex]);
          end;
          if vEstado <> '' then
            SQL.Add('  AND cl.UF IN (''' + vEstado + ''')         ');
        end;
        ParamByName('cpf').AsString := '%' + Edit9.Text + '%';
        SQL.Add('GROUP BY cl.CODIGO                       ');
        SQL.Add('ORDER BY cl.NOME                         ');
        Open;
      end;
    end;
    edtRegistros.Text := uniQClientesLista.RecordCount.ToString;
  except
    on exc : exception do
      ShowMessage(exc.Message);
  end;

//  try
//    if frmMenu.USUARIOLOGADO_NIVEL = 'O' then
//    begin
//      if Edit9.Text = '' then
//      begin
//        MessageDlg('Informe um CPF/CNPJ para pesquisa.',mtInformation,[mbOk],0);
//        Exit;
//      end;
//      with uniQClientesLista do
//      begin
//        Close;
//        SQL.Clear;
//        SQL.Add('SELECT                              ');
//        SQL.Add('  c.*,                              ');
//        SQL.Add('  a.CLIENTE,                        ');
//        SQL.Add('  a.USR_CAD                         ');
//        SQL.Add('FROM                                ');
//        SQL.Add('  clientes c                        ');
//        SQL.Add('  LEFT JOIN agenda a                ');
//        SQL.Add('    ON a.CLIENTE = c.CODIGO         ');
//        SQL.Add('    AND a.DATA >= CURRENT_TIMESTAMP ');
//        SQL.Add('    AND a.USR_CAD <> :CodUser       ');
//        SQL.Add('WHERE a.USR_CAD IS NULL             ');
//        SQL.Add('AND UPPER(c.cpf_cnpj) LIKE :cpf     ');
//        SQL.Add('ORDER BY c.nome                     ');
//        ParamByName('CodUser').AsString := frmMenu.USUARIOLOGADO_CODIGO;
//        ParamByName('cpf').AsString := '%' + Edit9.Text + '%';
//        Open;
//      end;
//    end
//    else
//    begin
//      with uniQClientesLista do
//      begin
//        Close;
//        SQL.Clear;
//        SQL.Add('SELECT                                                ');
//        SQL.Add('  *                                                   ');
//        SQL.Add('FROM                                                  ');
//        SQL.Add('  clientes                                            ');
//        SQL.Add('WHERE UPPER(cpf_cnpj) LIKE :cpf                       ');
//        SQL.Add('ORDER BY nome                                         ');
//        ParamByName('cpf').AsString := '%' + Edit9.Text + '%';
//        Open;
//        First;
//      end;
//    end;
//  except
//    on exc : exception do
//      ShowMessage(exc.Message);
//  end;
end;

procedure TFrmClientes.CarregaCampanhaCombo;
var
  QCampanha : TFDQuery;
begin
  try
    QCampanha := TFDQuery.Create(nil);
    try
      QCampanha.Connection := frmDataModule.UniConnection1;
      with QCampanha do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT                                                                ');
        SQL.Add('  campanha_grupo_operador.*,                                          ');
        SQL.Add('  campanha_crm.codigo AS cod_campanha,                                ');
        SQL.Add('  campanha_crm.nome AS nome_campanha,                                 ');
        SQL.Add('  operador_grupo.nome_grupo,                                          ');
        SQL.Add('  operador_grupo_operadores.*,                                        ');
        SQL.Add('  usuarios.codigo,                                                    ');
        SQL.Add('  usuarios.nome                                                       ');
        SQL.Add('FROM                                                                  ');
        SQL.Add('  campanha_grupo_operador                                             ');
        SQL.Add('  INNER JOIN operador_grupo                                           ');
        SQL.Add('    ON campanha_grupo_operador.grupo_operador = operador_grupo.codigo ');
        SQL.Add('  INNER JOIN operador_grupo_operadores                                ');
        SQL.Add('    ON operador_grupo_operadores.grupo = operador_grupo.codigo        ');
        SQL.Add('  INNER JOIN usuarios                                                 ');
        SQL.Add('    ON usuarios.codigo = operador_grupo_operadores.operador           ');
        SQL.Add('  INNER JOIN campanha_crm                                             ');
        SQL.Add('    ON campanha_crm.codigo = campanha_grupo_operador.codigo_campanha  ');
        SQL.Add('WHERE campanha_crm.ativo_check = ''TRUE''                             ');
        if frmMenu.USUARIOLOGADO_NIVEL <> 'M' then
        begin
          SQL.Add('  AND usuarios.codigo = :Codigo                                       ');
          ParamByName('Codigo').AsInteger := frmMenu.USUARIOLOGADO_CODIGO.ToInteger;
        end;
        SQL.Add('GROUP BY campanha_crm.CODIGO                                          ');
        SQL.Add('ORDER BY nome_campanha                                                ');
        Open;
      end;
      cbxCampanha.Text := '';
      cbxCampanha.Items.Clear;
      cbxCampanha.Items.Add('TODOS');
      while not QCampanha.Eof do
      begin
        cbxCampanha.Items.AddObject(QCampanha.FieldByName('nome_campanha').AsString,TObject(QCampanha.FieldByName('cod_campanha').AsInteger));
        QCampanha.Next;
      end;
      cbxCampanha.ItemIndex := 0;
    except

    end;
  finally
    FreeAndNil(QCampanha);
  end;

end;

procedure TFrmClientes.cbxCampanhaCloseUp(Sender: TObject);
begin
  BitBtn1Click(Sender);
end;

procedure TFrmClientes.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then FrmClientes.BitBtn1Click(Sender);
end;

procedure TFrmClientes.Edit9Change(Sender: TObject);
var
  vString : string;
begin
  if Edit9.Text <> '' then
  begin
    if (Length(Edit9.Text) = 11) then
    begin
      Edit9.Text := FormataCPF(Edit9.Text);
      Edit9.SelStart := Length(Edit9.Text) + 1;
    end
    else if (Length(Edit9.Text) > 14) then
    begin
      Edit9.Text := SoNumero(Edit9.Text);
      Edit9.Text := FormataCNPJ(Edit9.Text);
      Edit9.SelStart := Length(Edit9.Text) + 1;
    end;
  end;
end;

procedure TFrmClientes.JvDBGrid1DblClick(Sender: TObject);
begin
//  if uniQClientesLista.recordcount > 0 then
//    RzToolButton1.Click;
end;

procedure TFrmClientes.RzToolButton1Click(Sender: TObject);
var
	var_valornominal,
	var_dias_atraso,
	var_perc_desconto,
	var_perc_multa,
	var_valormulta,
	var_perc_honorarios,
	var_valorhonorario,
	var_perc_juros,
	var_valorjuro,
  var_valorabatimento,
  var_subtotal,
  var_valorminimo,
  var_valordivida,
  emser,
  emser_corrigido,
  negociadas,
  renegociadas,
  liquidadas,
  ematraso : double;
  titulosemaberto : integer;
begin
  if uniQClientesLista.recordcount = 0 then
    exit;

  vOK := True;
  with UniQClientesReferencia do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                       ');
    SQL.Add('  cr.*                       ');
    SQL.Add('FROM                         ');
    SQL.Add('  clientes_referencia cr     ');
    SQL.Add('  INNER JOIN clientes c      ');
    SQL.Add('    ON c.CODIGO = cr.CLIENTE ');
    SQL.Add('WHERE c.CPF_CNPJ = :cpf_cnpj ');
    ParamByName('cpf_cnpj').AsString := uniQClientesListaCPF_CNPJ.AsString;
    Open;
  end;

  with UniQClientesVeiculos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                       ');
    SQL.Add('  cv.*                       ');
    SQL.Add('FROM                         ');
    SQL.Add('  clientes_veiculos cv       ');
    SQL.Add('  INNER JOIN clientes c      ');
    SQL.Add('    ON c.CODIGO = cv.CLIENTE ');
    SQL.Add('WHERE c.CODIGO = :codigo ');
    ParamByName('codigo').AsString := uniQClientesListaCODIGO.AsString;
    Open;
  end;

  with UniQClientesOperacoes do
  begin
    close;
    sql.Clear;
    SQL.Add('SELECT                            ');
    SQL.Add('  c.NOME AS nome_cliente,         ');
    SQL.Add('  ep.descricao AS empresa,        ');
    SQL.Add('  op.descricao AS operacao,       ');
    SQL.Add('  c.VAR1,                         ');
    SQL.Add('  c.VAR2,                         ');
    SQL.Add('  o.*,                            ');
    SQL.Add('  b.codigo,                       ');
    SQL.Add('  b.nome                          ');
    SQL.Add('FROM                              ');
    SQL.Add('  clientes c                      ');
    SQL.Add('  LEFT JOIN operacoes o           ');
    SQL.Add('    ON o.CLIENTE = c.CPF_CNPJ     ');
    SQL.Add('  LEFT JOIN bancos b              ');
    SQL.Add('    ON b.codigo = o.credor        ');
    SQL.Add('  INNER JOIN empresa_produto ep   ');
    SQL.Add('    ON ep.codigo = c.COD_EMPRESA  ');
    SQL.Add('  INNER JOIN operacao_produto op  ');
    SQL.Add('    ON op.codigo = c.COD_OPERACAO ');
    SQL.Add('WHERE c.CPF_CNPJ = :cpf_cnpj      ');
    SQL.Add('ORDER BY c.NOME                   ');


//    SQL.Add('SELECT                      ');
//    SQL.Add('  o.*,                      ');
//    SQL.Add('  b.codigo as cod_credor,   ');
//    SQL.Add('  b.nome                    ');
//    SQL.Add('FROM                        ');
//    SQL.Add('  operacoes o               ');
//    SQL.Add('  INNER JOIN bancos b       ');
//    SQL.Add('    ON b.codigo = o.credor  ');
//    SQL.Add('WHERE o.status <> "X"       ');
//    SQL.Add('  AND o.CLIENTE = :cpf_cnpj ');
    ParamByName('cpf_cnpj').AsString := uniQClientesListaCPF_CNPJ.AsString;
    Open;
  end;

  with uniQClientesParcelas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                         ');
    SQL.Add('  *                            ');
    SQL.Add('FROM                           ');
    SQL.Add('  parcelas                     ');
    SQL.Add('WHERE STATUS IN ("S","L", "N") ');
    SQL.Add('  AND cliente = :cpf_cnpj      ');
    //SQL.Add('ORDER BY registro DESC         ');
    SQL.Add('ORDER BY registro              ');
    ParamByName('cpf_cnpj').AsString := uniQClientesListaCPF_CNPJ.AsString;
    Open;
  end;

  with UniQEventosCobranca do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                                                     ');
    SQL.Add('  eventoscobranca.*,                                       ');
    SQL.Add('  eventos_cod.*,                                           ');
    SQL.Add('  usuarios.nome AS nome_usuario                            ');
    SQL.Add('FROM                                                       ');
    SQL.Add('  eventoscobranca                                          ');
    SQL.Add('  INNER JOIN eventos_cod                                   ');
    SQL.Add('    ON eventos_cod.cod_evento = eventoscobranca.cod_evento ');
    SQL.Add('  INNER JOIN usuarios                                      ');
    SQL.Add('    ON eventoscobranca.usuario = usuarios.codigo           ');
    SQL.Add('WHERE eventoscobranca.CLIENTE = :cpf_cnpj                  ');
    ParamByName('cpf_cnpj').AsString := uniQClientesListaCPF_CNPJ.AsString;
    Open;
  end;

  with uniQClientesAgenda do
  begin
    close;
    sql.Clear;
    SQL.Add('SELECT                      ');
    SQL.Add('  a.*,                      ');
    SQL.Add('  u.nome as nome_usuario    ');
    SQL.Add('FROM                        ');
    SQL.Add('  agenda a                  ');
    SQL.Add('  INNER JOIN usuarios u     ');
    SQL.Add('    ON u.CODIGO = a.USUARIO ');
    SQL.Add('WHERE a.CLIENTE = :codigo   ');
    if frmMenu.USUARIOLOGADO_NIVEL <> 'M' then
    begin
      SQL.Add('AND a.USR_CAD = :CodUser    ');
      ParamByName('CodUser').AsInteger := StrToInt(frmMenu.USUARIOLOGADO_CODIGO);
    end;
    SQL.Add('ORDER BY a.CODIGO DESC      ');
    ParamByName('codigo').AsInteger := uniQClientesListaCODIGO.AsInteger;
    Open;
  end;


  UniQClientesParcelas.Open;
  UniQScriptCobranca.Open;
  frmclientescadastro.lblemser.Caption := 'Em ser (Nominal): 0';
  frmclientescadastro.lblrenegociados.Caption := 'Renegociados: 0';
  frmclientescadastro.lblemaberto.Caption := 'Títulos em Aberto: 0';
    frmclientes.uniQClientesOperacoes.first;

    emser := 0;
    emser_corrigido := 0;
    negociadas  := 0;
    liquidadas := 0;
    ematraso := 0;
    titulosemaberto := 0;
    renegociadas := 0;

    frmclientes.uniQClientesOperacoes.disablecontrols;
    while not frmclientes.uniQClientesOperacoes.eof do
    begin
      if frmclientes.uniQClientesOperacoes.fieldbyname('status').AsString = 'S' then
        titulosemaberto := titulosemaberto + 1;
      if frmclientes.uniQClientesOperacoes.fieldbyname('status').AsString = 'S' then
        emser := emser + frmclientes.uniQClientesOperacoes.fieldbyname('valornominal').AsFloat;
      if frmclientes.uniQClientesOperacoes.fieldbyname('status').AsString = 'R' then
        RENEGOCIADAS := RENEGOCIADAS + frmclientes.uniQClientesOperacoes.fieldbyname('valornominal').AsFloat;
      if frmclientes.uniQClientesOperacoes.fieldbyname('status').AsString = 'N' then
        negociadas := negociadas + frmclientes.uniQClientesOperacoes.fieldbyname('valornominal').AsFloat;
      if frmclientes.uniQClientesOperacoes.fieldbyname('status').AsString = 'L' then
        liquidadas := emser + frmclientes.uniQClientesOperacoes.fieldbyname('valornominal').AsFloat;
      if frmclientes.uniQClientesOperacoes.fieldbyname('status').AsString = 'A' then
        ematraso := ematraso + frmclientes.uniQClientesOperacoes.fieldbyname('valornominal').AsFloat;

      frmclientescadastro.uniqcredores.close;
      frmclientescadastro.uniqcredores.SQL.Text := 'select * from bancos where codigo = :pcodigo';
      frmclientescadastro.uniqcredores.parambyname('pcodigo').AsString := frmclientes.uniQClientesOperacoes.fieldbyname('credor').AsString;
      frmclientescadastro.uniqcredores.open;

      try
      var_perc_desconto    := frmclientescadastro.uniqcredores.fieldbyname('descontomaximo_valor').AsFloat; except var_perc_desconto := 0; end;
      try
      var_valornominal     := frmclientes.uniQClientesOperacoes.fieldbyname('valornominal').AsFloat;except var_valornominal := 0; end;
      try
      var_dias_atraso      := now - frmclientes.uniQClientesOperacoes.fieldbyname('datavencto').AsDateTime;except var_dias_atraso := 0; end;
      try
      var_perc_multa       := frmclientescadastro.uniqcredores.fieldbyname('multa_a').AsFloat;except var_perc_multa := 0; end;
      try
      var_valormulta       := roundto(var_valornominal*var_perc_multa/100,-2);except var_valormulta := 0; end;
      try
      var_perc_juros       := frmclientescadastro.uniqcredores.fieldbyname('juros_a').AsFloat;except var_perc_juros := 0; end;
      try
      var_valorjuro        := roundto(var_valornominal*var_perc_juros/100,-2);except var_valorjuro := 0; end;
      try
      var_subtotal         := var_valornominal+var_valormulta+var_valorjuro;except var_subtotal := 0; end;
      try
      var_perc_honorarios  := frmclientescadastro.uniqcredores.fieldbyname('honorario_a').AsFloat;except var_perc_honorarios := 0; end;
      try
      var_valorhonorario   := roundto(var_subtotal * var_perc_honorarios / 100,-2);except var_valorhonorario := 0; end;
      try
      var_valordivida      := var_subtotal + var_valorhonorario;except var_valordivida := 0; end;
      try
      var_valorabatimento  := roundto(var_valordivida * var_perc_desconto / 100,-2);except var_valorabatimento := 0; end;
      try
      var_valorminimo      := var_valordivida - var_valorabatimento;except var_valorminimo := 0; end;

      frmclientes.uniQClientesOperacoes.edit;

      try
      frmclientes.uniQClientesOperacoes.fieldbyname('valorvencido').AsFloat := var_subtotal;
      frmclientes.uniQClientesOperacoes.fieldbyname('data_modif').AsFloat := now;

      if (frmclientes.uniQClientesOperacoes.fieldbyname('status').AsString = 'S') AND (ROUNDTO(now - frmclientes.uniQClientesOperacoes.fieldbyname('datavencto').AsDateTime,0)>0)
      then
      frmclientes.uniQClientesOperacoes.fieldbyname('DIAS_ATRASO').AsFloat := ROUNDTO(now - frmclientes.uniQClientesOperacoes.fieldbyname('datavencto').AsDateTime,0);

      frmclientes.uniQClientesOperacoes.edit;

      //try
        frmclientes.uniQClientesOperacoes.post;
      except
      end;

      frmclientes.uniQClientesOperacoes.next;
    end;
      frmclientes.uniQClientesOperacoes.first;
      frmclientes.uniQClientesOperacoes.enablecontrols;

      frmclientescadastro.lblemser.Caption := 'Em ser: R$ ' + formatfloat('###,###,###,###,##0.00',roundto(emser,-2));
      frmclientescadastro.lblrenegociados.Caption := 'Negociados: R$ ' + formatfloat('###,###,###,###,##0.00',roundto(negociadas,-2));
      frmclientescadastro.lblemaberto.Caption := 'Títulos em Aberto: ' + inttostr(titulosemaberto);
      frmclientesnegociacao.label26.Caption := 'Títulos em Aberto: ' + inttostr(titulosemaberto);

  //except frmdatamodule.uniconnection1.RollBack; end;

  try
    UniQEventosCobranca.Close;
    UniQEventosCobranca.Open;
  except end;
{  UniQEventosCobranca.First;
  UniQEventosCobranca.Last;
  UniQEventosCobranca.First;
}
  frmDataModule.UniConnection1.Commit;
  with UniQClientes do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                   ');
    SQL.Add('  c.*                    ');
    SQL.Add('FROM                     ');
    SQL.Add('  clientes c             ');
    SQL.Add('WHERE c.CODIGO = :codigo ');
    ParamByName('codigo').AsInteger := uniQClientesLista.FieldByName('codigo').AsInteger;
    Open;
  end;

  if frmRelContasReceber <> nil then
  begin
    frmRelContasReceber.edtCodDevedor.Text := uniQClientesCODIGO.AsString;
    frmRelContasReceber.edtNomeDevedor.Text := uniQClientesNOME.AsString;
    frmRelContasReceber.vCPFCNPJ := uniQClientesCPF_CNPJ.AsString;
  end
  else if frmRelEventosCobranca <> nil then
  begin
    frmRelEventosCobranca.edtCodDevedor.Text := uniQClientesCODIGO.AsString;
    frmRelEventosCobranca.edtNomeDevedor.Text := uniQClientesNOME.AsString;
    frmRelEventosCobranca.vCPFCNPJ := uniQClientesCPF_CNPJ.AsString;
  end
  else if frmBoleto <> nil then
  begin
    frmBoleto.edtCodDevedor.Text := uniQClientesCODIGO.AsString;
    frmBoleto.edtNomeDevedor.Text := uniQClientesNOME.AsString;
    frmBoleto.vCPFCNPJ := uniQClientesCPF_CNPJ.AsString;
  end
  else if frmManutencaoContasReceber <> nil then
  begin
    frmManutencaoContasReceber.edtCodDevedor.Text := uniQClientesCODIGO.AsString;
    frmManutencaoContasReceber.edtNomeDevedor.Text := uniQClientesNOME.AsString;
    frmManutencaoContasReceber.vCPFCNPJ := uniQClientesCPF_CNPJ.AsString;
  end;

  Close;
end;

procedure TFrmClientes.RzToolButton2Click(Sender: TObject);
begin
if uniQClientesLista.recordcount = 0 then exit;

frmagendacadastro.unigetid.close;
frmagendacadastro.unigetid.sql.text := 'SELECT SEQ_AGENDA.nextval as Sequences FROM DUAL';
frmagendacadastro.unigetid.open;

frmagendacadastro.UniQagenda.Open;
frmagendacadastro.UniQagenda.Insert;
frmagendacadastro.DBEditRegistro.Text := frmagendacadastro.unigetid.FieldByName('Sequences').AsString;

frmagendacadastro.AdvDBDateTimePicker1.Date := NOW;
frmagendacadastro.AdvDBDateTimePicker2.Time := NOW;
frmagendacadastro.AdvDBDateTimePicker3.Date := NOW;
frmagendacadastro.DBAdvLUEdit1.Text := uniQClientesLista.fieldbyname('CODIGO').AsString;
frmagendacadastro.DBAdvLUEdit3.Text := uniQClientesLista.fieldbyname('NOME').AsString;
frmagendacadastro.DBAdvLUEdit5.Text := FRMMenu.usuariologado_codigo;
//frmagendacadastro.DBAdvLUEdit4.Text := FRMMenu.usuariologado_codigo;

frmagendacadastro.alterainsere := 'INSERE';
frmagendacadastro.showmodal;
frmagendacadastro.unigetid.close;
frmagendacadastro.UniQagenda.cLOSE;
end;

procedure TFrmClientes.uniQClientesOperacoesAfterOpen(DataSet: TDataSet);
begin
  TFloatField(uniQClientesOperacoes.FieldByName('VALORNOMINAL')).DisplayFormat := '###,##0.00';
  TFloatField(uniQClientesOperacoes.FieldByName('PERC_MULTA')).DisplayFormat := '###,##0.00';
  TFloatField(uniQClientesOperacoes.FieldByName('VALORMULTA')).DisplayFormat := '###,##0.00';
  TFloatField(uniQClientesOperacoes.FieldByName('VALORJURO')).DisplayFormat := '###,##0.00';
  TFloatField(uniQClientesOperacoes.FieldByName('PERC_JUROS')).DisplayFormat := '###,##0.00';
  TFloatField(uniQClientesOperacoes.FieldByName('PERC_DESCONTO')).DisplayFormat := '###,##0.00';
  TFloatField(uniQClientesOperacoes.FieldByName('VALORABATIMENTO')).DisplayFormat := '###,##0.00';
  TFloatField(uniQClientesOperacoes.FieldByName('VALORDIVIDA')).DisplayFormat := '###,##0.00';
  TFloatField(uniQClientesOperacoes.FieldByName('VALORRECEBIDO')).DisplayFormat := '###,##0.00';
end;

procedure TFrmClientes.UniQEventosCobrancaHISTORICOBLOBGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := Sender.AsString;
end;

end.
