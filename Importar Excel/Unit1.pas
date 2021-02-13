unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Grids,
  uImportExcel, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.DApt, FireDAC.Comp.UI,
  System.MaskUtils, AdvCircularProgress, IniFiles, ACBrUtil;

type
  TForm1 = class(TForm)
    ImportExcel1: TImportExcel;
    StringGrid1: TStringGrid;
    ProgressBar1: TProgressBar;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    Conexao: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    QGravaDevedor: TFDQuery;
    FDMemTable1Nome: TStringField;
    FDMemTable1CPFCNPJ: TStringField;
    FDMemTable1tipo: TStringField;
    FDMemTable1sexo: TStringField;
    FDMemTable1dt_nascimento: TStringField;
    FDMemTable1doc_identidade: TStringField;
    FDMemTable1email1: TStringField;
    FDMemTable1email2: TStringField;
    FDMemTable1email3: TStringField;
    FDMemTable1email4: TStringField;
    FDMemTable1telefone1: TStringField;
    FDMemTable1telefone2: TStringField;
    FDMemTable1telefone3: TStringField;
    FDMemTable1telefone4: TStringField;
    FDMemTable1telefone5: TStringField;
    FDMemTable1telefone6: TStringField;
    FDMemTable1logradouro: TStringField;
    FDMemTable1numero: TStringField;
    FDMemTable1complemento: TStringField;
    FDMemTable1bairro: TStringField;
    FDMemTable1cidade: TStringField;
    FDMemTable1estado: TStringField;
    FDMemTable1cep: TStringField;
    FDMemTable1operacao: TStringField;
    FDMemTable1dt_vencto: TStringField;
    FDMemTable1valor_nominal: TFloatField;
    FDMemTable1situacao: TStringField;
    mtDevedor: TFDMemTable;
    mtDevedorNome: TStringField;
    mtDevedorCPFCNPJ: TStringField;
    mtDevedortipo: TStringField;
    mtDevedorsexo: TStringField;
    mtDevedordt_nascimento: TStringField;
    mtDevedordoc_identidade: TStringField;
    mtDevedoremail1: TStringField;
    mtDevedoremail2: TStringField;
    mtDevedoremail3: TStringField;
    mtDevedoremail4: TStringField;
    mtDevedortelefone1: TStringField;
    mtDevedortelefone2: TStringField;
    mtDevedortelefone3: TStringField;
    mtDevedortelefone4: TStringField;
    mtDevedortelefone5: TStringField;
    mtDevedortelefone6: TStringField;
    mtDevedorlogradouro: TStringField;
    mtDevedornumero: TStringField;
    mtDevedorcomplemento: TStringField;
    mtDevedorbairro: TStringField;
    mtDevedorcidade: TStringField;
    mtDevedorestado: TStringField;
    mtDevedorcep: TStringField;
    cxGrid1DBTableView1Nome: TcxGridDBColumn;
    cxGrid1DBTableView1CPFCNPJ: TcxGridDBColumn;
    cxGrid1DBTableView1tipo: TcxGridDBColumn;
    cxGrid1DBTableView1email1: TcxGridDBColumn;
    cxGrid1DBTableView1email2: TcxGridDBColumn;
    cxGrid1DBTableView1email3: TcxGridDBColumn;
    cxGrid1DBTableView1email4: TcxGridDBColumn;
    cxGrid1DBTableView1telefone1: TcxGridDBColumn;
    cxGrid1DBTableView1telefone2: TcxGridDBColumn;
    cxGrid1DBTableView1telefone3: TcxGridDBColumn;
    cxGrid1DBTableView1telefone4: TcxGridDBColumn;
    cxGrid1DBTableView1telefone5: TcxGridDBColumn;
    cxGrid1DBTableView1telefone6: TcxGridDBColumn;
    cxGrid1DBTableView1logradouro: TcxGridDBColumn;
    cxGrid1DBTableView1numero: TcxGridDBColumn;
    cxGrid1DBTableView1complemento: TcxGridDBColumn;
    cxGrid1DBTableView1bairro: TcxGridDBColumn;
    cxGrid1DBTableView1cidade: TcxGridDBColumn;
    cxGrid1DBTableView1estado: TcxGridDBColumn;
    cxGrid1DBTableView1cep: TcxGridDBColumn;
    Button2: TButton;
    QGravaDevedorCODIGO: TFMTBCDField;
    QGravaDevedorNOME: TStringField;
    QGravaDevedorTIPOPESSOA: TStringField;
    QGravaDevedorCPF_CNPJ: TStringField;
    QGravaDevedorCONTACORRENTE: TStringField;
    QGravaDevedorREGIAO: TFMTBCDField;
    QGravaDevedorENDERECO: TStringField;
    QGravaDevedorNUMERO: TStringField;
    QGravaDevedorSETOR: TStringField;
    QGravaDevedorCIDADE: TStringField;
    QGravaDevedorUF: TStringField;
    QGravaDevedorCEP: TStringField;
    QGravaDevedorFONE: TStringField;
    QGravaDevedorFAXCEL: TStringField;
    QGravaDevedorENDENDERECO_1: TStringField;
    QGravaDevedorNUMERO_1: TStringField;
    QGravaDevedorSETOR_1: TStringField;
    QGravaDevedorCIDADE_1: TStringField;
    QGravaDevedorUF_1: TStringField;
    QGravaDevedorCEP_1: TStringField;
    QGravaDevedorFONE_1: TStringField;
    QGravaDevedorFAXCEL_1: TStringField;
    QGravaDevedorCONTATO_1: TStringField;
    QGravaDevedorFOTO: TBlobField;
    QGravaDevedorCONTATO: TStringField;
    QGravaDevedorMCI: TFMTBCDField;
    QGravaDevedorDEVOLVERBB: TStringField;
    QGravaDevedorREMESSABB: TFMTBCDField;
    QGravaDevedorOBS: TBlobField;
    QGravaDevedorDTA_NASCIMENTO: TStringField;
    QGravaDevedorCOD_CLASSIFICACAO: TIntegerField;
    QGravaDevedorDATA_MODIF: TSQLTimeStampField;
    QGravaDevedorPONTO_REF1: TStringField;
    QGravaDevedorPONTO_REF2: TStringField;
    QGravaDevedorAGENCIA: TStringField;
    QGravaDevedorLOCALIDADE: TStringField;
    QGravaDevedorSETOR_FAT: TStringField;
    QGravaDevedorROTA: TStringField;
    QGravaDevedorQUADRA: TStringField;
    QGravaDevedorLOTE: TStringField;
    QGravaDevedorSUBLOTE: TStringField;
    QGravaDevedorEND_PREFERENCIAL: TStringField;
    QGravaDevedorFONE_PREFERENCIAL: TStringField;
    QGravaDevedorE_MAIL: TStringField;
    QGravaDevedorE_MAIL1: TStringField;
    QGravaDevedorNRIDENTIDADE: TStringField;
    QGravaDevedorSEXO: TStringField;
    QGravaDevedorLOCAL_TRABALHO: TStringField;
    QGravaDevedorCARGO_TRABALHO: TStringField;
    QGravaDevedorSALARIO_TRABALHO: TFMTBCDField;
    QGravaDevedorNATURALIDADE: TStringField;
    QGravaDevedorESTADOCIVIL: TStringField;
    QGravaDevedorSCORE: TFMTBCDField;
    QGravaDevedorBEHAVIOR: TFMTBCDField;
    QGravaDevedorMOTIVOINADIMPLENCIA: TIntegerField;
    QGravaDevedorDTA_CAD: TSQLTimeStampField;
    QGravaDevedorUSR_CAD: TFMTBCDField;
    QGravaDevedorMOTIVORETORNO: TFMTBCDField;
    QGravaDevedorCODIGO_EXTERNO: TStringField;
    QGravaDevedorSCORE1: TFMTBCDField;
    QGravaDevedorORIGEMDOSDADOS: TStringField;
    QGravaDevedorCOLUMN2: TStringField;
    QGravaDevedorCOD_BANCO_COMISSAO: TIntegerField;
    QMax: TFDQuery;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dsOperacao: TDataSource;
    mtOperacao: TFDMemTable;
    mtOperacaoCLIENTE: TStringField;
    mtOperacaoNROPERACAO: TStringField;
    mtOperacaoREMESSA: TStringField;
    mtOperacaoMCI: TFMTBCDField;
    mtOperacaoCOBRADOR: TFMTBCDField;
    mtOperacaoSTATUS: TStringField;
    mtOperacaoBANCO: TFMTBCDField;
    mtOperacaoAGENCIA: TStringField;
    mtOperacaoCONTA: TStringField;
    mtOperacaoNRFICHA: TFMTBCDField;
    mtOperacaoDEVOLVER: TStringField;
    mtOperacaoMOTIVO: TFMTBCDField;
    mtOperacaoDEVOLVERBB: TStringField;
    mtOperacaoMOTIVOBB: TFMTBCDField;
    mtOperacaoREMESSABB: TFMTBCDField;
    mtOperacaoCODPRODUTO: TStringField;
    mtOperacaoMODALIDADEBB: TStringField;
    mtOperacaoDATAGRAV: TStringField;
    mtOperacaoDATAVENCTO: TDateTimeField;
    mtOperacaoDATADEVOLUCAO: TStringField;
    mtOperacaoVALORDIVIDA: TFMTBCDField;
    mtOperacaoVALORMINIMO: TFMTBCDField;
    mtOperacaoVALORVENCIDO: TFMTBCDField;
    mtOperacaoVALORRECEBIDO: TFMTBCDField;
    mtOperacaoVALORNOMINAL: TFMTBCDField;
    mtOperacaoVALORABATIMENTO: TFMTBCDField;
    mtOperacaoVALORPROTESTO: TFMTBCDField;
    mtOperacaoPERC_DESCONTO: TFMTBCDField;
    mtOperacaoPERC_MULTA: TFMTBCDField;
    mtOperacaoPERC_ENCARGO: TFMTBCDField;
    mtOperacaoAGENCIANOVA: TStringField;
    mtOperacaoOPERACAONOVA: TStringField;
    mtOperacaoDATACELEBRACAO: TStringField;
    mtOperacaoMOTIVORETOMADA: TStringField;
    mtOperacaoDATAREC: TStringField;
    mtOperacaoDATAFIMTERCERIZACAO: TStringField;
    mtOperacaoNRTERCERIZACAO: TFMTBCDField;
    mtOperacaoTIPOOPERACAO: TStringField;
    mtOperacaoATUALIZADOATE: TStringField;
    mtOperacaoFORMAATUALIZACAO: TStringField;
    mtOperacaoCONDNEGOCIAIS: TStringField;
    mtOperacaoGARANTIASREAIS: TStringField;
    mtOperacaoPRAZOPERMPARC: TStringField;
    mtOperacaoTIPOPAGTO: TStringField;
    mtOperacaoF1NOME: TStringField;
    mtOperacaoF1ENDERECO: TStringField;
    mtOperacaoF1BAIRRO: TStringField;
    mtOperacaoF1CIDADE: TStringField;
    mtOperacaoF1UF: TStringField;
    mtOperacaoF1CEP: TStringField;
    mtOperacaoF1FONE: TStringField;
    mtOperacaoF1FAX: TStringField;
    mtOperacaoF2NOME: TStringField;
    mtOperacaoF2ENDERECO: TStringField;
    mtOperacaoF2BAIRRO: TStringField;
    mtOperacaoF2CIDADE: TStringField;
    mtOperacaoF2UF: TStringField;
    mtOperacaoF2CEP: TStringField;
    mtOperacaoF2FONE: TStringField;
    mtOperacaoF2FAX: TStringField;
    mtOperacaoHISTORICO: TBlobField;
    mtOperacaoNR_CARTA_ACORDO: TFMTBCDField;
    mtOperacaoDIAS_ATRASO: TFMTBCDField;
    mtOperacaoDATA_MODIF: TStringField;
    mtOperacaoCOD_CLASSIFICACAO: TFMTBCDField;
    mtOperacaoVALORJURO: TFMTBCDField;
    mtOperacaoVALORMULTA: TFMTBCDField;
    mtOperacaoVALORHONORARIO: TFMTBCDField;
    mtOperacaoFATORPARCELAMENTO: TFMTBCDField;
    mtOperacaoENVIOBANCO: TStringField;
    mtOperacaoPERC_HONORARIOS: TFMTBCDField;
    mtOperacaoPERC_JUROS: TFMTBCDField;
    mtOperacaoID_1: TStringField;
    mtOperacaoID_2: TStringField;
    mtOperacaoID_3: TStringField;
    mtOperacaoF1CPF: TStringField;
    mtOperacaoF2CPF: TStringField;
    mtOperacaoNUMERONOTA: TStringField;
    mtOperacaoNRPROCESSO: TStringField;
    mtOperacaoPERC_JUROS_CONTRATO: TFMTBCDField;
    mtOperacaoUSUARIO_LIB_DESC: TFMTBCDField;
    mtOperacaoHORA_LIB_DESC: TStringField;
    mtOperacaoVALORIOF: TFMTBCDField;
    mtOperacaoVALORCORRECAO: TFMTBCDField;
    mtOperacaoID_4: TStringField;
    mtOperacaoGRUPO: TStringField;
    mtOperacaoCLASSEPRINCIPAL: TStringField;
    mtOperacaoCLASSECONSUMO: TStringField;
    mtOperacaoTIPOARRECADACAO: TStringField;
    mtOperacaoSCORE: TStringField;
    mtOperacaoDEVOLUCAO_USR: TFMTBCDField;
    mtOperacaoLIQUIDACAO_DATA: TStringField;
    mtOperacaoLIQUIDACAO_USR: TFMTBCDField;
    mtOperacaoDTA_CAD: TStringField;
    mtOperacaoUSR_CAD: TFMTBCDField;
    mtOperacaoREGISTRO: TIntegerField;
    mtOperacaoCREDOR: TStringField;
    mtOperacaoULTIMO_ACIONAMENTO: TDateTimeField;
    mtOperacaoOPERADOREMACAO: TStringField;
    mtOperacaoDATAHORAACAO: TSQLTimeStampField;
    mtOperacaoDATACOMPRA: TStringField;
    mtOperacaoDATADISPONIVEL: TStringField;
    QOperacao: TFDQuery;
    QOperacaoCLIENTE: TStringField;
    QOperacaoNROPERACAO: TStringField;
    QOperacaoREMESSA: TStringField;
    QOperacaoMCI: TFMTBCDField;
    QOperacaoCOBRADOR: TFMTBCDField;
    QOperacaoSTATUS: TStringField;
    QOperacaoBANCO: TFMTBCDField;
    QOperacaoAGENCIA: TStringField;
    QOperacaoCONTA: TStringField;
    QOperacaoNRFICHA: TFMTBCDField;
    QOperacaoDEVOLVER: TStringField;
    QOperacaoMOTIVO: TFMTBCDField;
    QOperacaoDEVOLVERBB: TStringField;
    QOperacaoMOTIVOBB: TFMTBCDField;
    QOperacaoREMESSABB: TFMTBCDField;
    QOperacaoCODPRODUTO: TStringField;
    QOperacaoMODALIDADEBB: TStringField;
    QOperacaoDATAGRAV: TStringField;
    QOperacaoDATADEVOLUCAO: TStringField;
    QOperacaoVALORDIVIDA: TFMTBCDField;
    QOperacaoVALORMINIMO: TFMTBCDField;
    QOperacaoVALORVENCIDO: TFMTBCDField;
    QOperacaoVALORRECEBIDO: TFMTBCDField;
    QOperacaoVALORNOMINAL: TFMTBCDField;
    QOperacaoVALORABATIMENTO: TFMTBCDField;
    QOperacaoVALORPROTESTO: TFMTBCDField;
    QOperacaoPERC_DESCONTO: TFMTBCDField;
    QOperacaoPERC_MULTA: TFMTBCDField;
    QOperacaoPERC_ENCARGO: TFMTBCDField;
    QOperacaoAGENCIANOVA: TStringField;
    QOperacaoOPERACAONOVA: TStringField;
    QOperacaoDATACELEBRACAO: TStringField;
    QOperacaoMOTIVORETOMADA: TStringField;
    QOperacaoDATAREC: TStringField;
    QOperacaoDATAFIMTERCERIZACAO: TStringField;
    QOperacaoNRTERCERIZACAO: TFMTBCDField;
    QOperacaoTIPOOPERACAO: TStringField;
    QOperacaoATUALIZADOATE: TStringField;
    QOperacaoFORMAATUALIZACAO: TStringField;
    QOperacaoCONDNEGOCIAIS: TStringField;
    QOperacaoGARANTIASREAIS: TStringField;
    QOperacaoPRAZOPERMPARC: TStringField;
    QOperacaoTIPOPAGTO: TStringField;
    QOperacaoF1NOME: TStringField;
    QOperacaoF1ENDERECO: TStringField;
    QOperacaoF1BAIRRO: TStringField;
    QOperacaoF1CIDADE: TStringField;
    QOperacaoF1UF: TStringField;
    QOperacaoF1CEP: TStringField;
    QOperacaoF1FONE: TStringField;
    QOperacaoF1FAX: TStringField;
    QOperacaoF2NOME: TStringField;
    QOperacaoF2ENDERECO: TStringField;
    QOperacaoF2BAIRRO: TStringField;
    QOperacaoF2CIDADE: TStringField;
    QOperacaoF2UF: TStringField;
    QOperacaoF2CEP: TStringField;
    QOperacaoF2FONE: TStringField;
    QOperacaoF2FAX: TStringField;
    QOperacaoHISTORICO: TBlobField;
    QOperacaoNR_CARTA_ACORDO: TFMTBCDField;
    QOperacaoDIAS_ATRASO: TFMTBCDField;
    QOperacaoDATA_MODIF: TStringField;
    QOperacaoCOD_CLASSIFICACAO: TFMTBCDField;
    QOperacaoVALORJURO: TFMTBCDField;
    QOperacaoVALORMULTA: TFMTBCDField;
    QOperacaoVALORHONORARIO: TFMTBCDField;
    QOperacaoFATORPARCELAMENTO: TFMTBCDField;
    QOperacaoENVIOBANCO: TStringField;
    QOperacaoPERC_HONORARIOS: TFMTBCDField;
    QOperacaoPERC_JUROS: TFMTBCDField;
    QOperacaoID_1: TStringField;
    QOperacaoID_2: TStringField;
    QOperacaoID_3: TStringField;
    QOperacaoF1CPF: TStringField;
    QOperacaoF2CPF: TStringField;
    QOperacaoNUMERONOTA: TStringField;
    QOperacaoNRPROCESSO: TStringField;
    QOperacaoPERC_JUROS_CONTRATO: TFMTBCDField;
    QOperacaoUSUARIO_LIB_DESC: TFMTBCDField;
    QOperacaoHORA_LIB_DESC: TStringField;
    QOperacaoVALORIOF: TFMTBCDField;
    QOperacaoVALORCORRECAO: TFMTBCDField;
    QOperacaoID_4: TStringField;
    QOperacaoGRUPO: TStringField;
    QOperacaoCLASSEPRINCIPAL: TStringField;
    QOperacaoCLASSECONSUMO: TStringField;
    QOperacaoTIPOARRECADACAO: TStringField;
    QOperacaoSCORE: TStringField;
    QOperacaoDEVOLUCAO_USR: TFMTBCDField;
    QOperacaoLIQUIDACAO_DATA: TStringField;
    QOperacaoLIQUIDACAO_USR: TFMTBCDField;
    QOperacaoDTA_CAD: TStringField;
    QOperacaoUSR_CAD: TFMTBCDField;
    QOperacaoREGISTRO: TIntegerField;
    QOperacaoCREDOR: TStringField;
    QOperacaoULTIMO_ACIONAMENTO: TDateTimeField;
    QOperacaoOPERADOREMACAO: TStringField;
    QOperacaoDATAHORAACAO: TSQLTimeStampField;
    QOperacaoDATACOMPRA: TStringField;
    QOperacaoDATADISPONIVEL: TStringField;
    cxGrid2DBTableView1CLIENTE: TcxGridDBColumn;
    cxGrid2DBTableView1NROPERACAO: TcxGridDBColumn;
    cxGrid2DBTableView1REMESSA: TcxGridDBColumn;
    cxGrid2DBTableView1MCI: TcxGridDBColumn;
    cxGrid2DBTableView1COBRADOR: TcxGridDBColumn;
    cxGrid2DBTableView1STATUS: TcxGridDBColumn;
    cxGrid2DBTableView1BANCO: TcxGridDBColumn;
    cxGrid2DBTableView1AGENCIA: TcxGridDBColumn;
    cxGrid2DBTableView1CONTA: TcxGridDBColumn;
    cxGrid2DBTableView1NRFICHA: TcxGridDBColumn;
    cxGrid2DBTableView1DEVOLVER: TcxGridDBColumn;
    cxGrid2DBTableView1MOTIVO: TcxGridDBColumn;
    cxGrid2DBTableView1DEVOLVERBB: TcxGridDBColumn;
    cxGrid2DBTableView1MOTIVOBB: TcxGridDBColumn;
    cxGrid2DBTableView1REMESSABB: TcxGridDBColumn;
    cxGrid2DBTableView1CODPRODUTO: TcxGridDBColumn;
    cxGrid2DBTableView1MODALIDADEBB: TcxGridDBColumn;
    cxGrid2DBTableView1DATAGRAV: TcxGridDBColumn;
    cxGrid2DBTableView1DATAVENCTO: TcxGridDBColumn;
    cxGrid2DBTableView1DATADEVOLUCAO: TcxGridDBColumn;
    cxGrid2DBTableView1VALORDIVIDA: TcxGridDBColumn;
    cxGrid2DBTableView1VALORMINIMO: TcxGridDBColumn;
    cxGrid2DBTableView1VALORVENCIDO: TcxGridDBColumn;
    cxGrid2DBTableView1VALORRECEBIDO: TcxGridDBColumn;
    cxGrid2DBTableView1VALORNOMINAL: TcxGridDBColumn;
    cxGrid2DBTableView1VALORABATIMENTO: TcxGridDBColumn;
    cxGrid2DBTableView1VALORPROTESTO: TcxGridDBColumn;
    cxGrid2DBTableView1PERC_DESCONTO: TcxGridDBColumn;
    cxGrid2DBTableView1PERC_MULTA: TcxGridDBColumn;
    cxGrid2DBTableView1PERC_ENCARGO: TcxGridDBColumn;
    cxGrid2DBTableView1AGENCIANOVA: TcxGridDBColumn;
    cxGrid2DBTableView1OPERACAONOVA: TcxGridDBColumn;
    cxGrid2DBTableView1DATACELEBRACAO: TcxGridDBColumn;
    cxGrid2DBTableView1MOTIVORETOMADA: TcxGridDBColumn;
    cxGrid2DBTableView1DATAREC: TcxGridDBColumn;
    cxGrid2DBTableView1DATAFIMTERCERIZACAO: TcxGridDBColumn;
    cxGrid2DBTableView1NRTERCERIZACAO: TcxGridDBColumn;
    cxGrid2DBTableView1TIPOOPERACAO: TcxGridDBColumn;
    cxGrid2DBTableView1ATUALIZADOATE: TcxGridDBColumn;
    cxGrid2DBTableView1FORMAATUALIZACAO: TcxGridDBColumn;
    cxGrid2DBTableView1CONDNEGOCIAIS: TcxGridDBColumn;
    cxGrid2DBTableView1GARANTIASREAIS: TcxGridDBColumn;
    cxGrid2DBTableView1PRAZOPERMPARC: TcxGridDBColumn;
    cxGrid2DBTableView1TIPOPAGTO: TcxGridDBColumn;
    cxGrid2DBTableView1F1NOME: TcxGridDBColumn;
    cxGrid2DBTableView1F1ENDERECO: TcxGridDBColumn;
    cxGrid2DBTableView1F1BAIRRO: TcxGridDBColumn;
    cxGrid2DBTableView1F1CIDADE: TcxGridDBColumn;
    cxGrid2DBTableView1F1UF: TcxGridDBColumn;
    cxGrid2DBTableView1F1CEP: TcxGridDBColumn;
    cxGrid2DBTableView1F1FONE: TcxGridDBColumn;
    cxGrid2DBTableView1F1FAX: TcxGridDBColumn;
    cxGrid2DBTableView1F2NOME: TcxGridDBColumn;
    cxGrid2DBTableView1F2ENDERECO: TcxGridDBColumn;
    cxGrid2DBTableView1F2BAIRRO: TcxGridDBColumn;
    cxGrid2DBTableView1F2CIDADE: TcxGridDBColumn;
    cxGrid2DBTableView1F2UF: TcxGridDBColumn;
    cxGrid2DBTableView1F2CEP: TcxGridDBColumn;
    cxGrid2DBTableView1F2FONE: TcxGridDBColumn;
    cxGrid2DBTableView1F2FAX: TcxGridDBColumn;
    cxGrid2DBTableView1HISTORICO: TcxGridDBColumn;
    cxGrid2DBTableView1NR_CARTA_ACORDO: TcxGridDBColumn;
    cxGrid2DBTableView1DIAS_ATRASO: TcxGridDBColumn;
    cxGrid2DBTableView1DATA_MODIF: TcxGridDBColumn;
    cxGrid2DBTableView1COD_CLASSIFICACAO: TcxGridDBColumn;
    cxGrid2DBTableView1VALORJURO: TcxGridDBColumn;
    cxGrid2DBTableView1VALORMULTA: TcxGridDBColumn;
    cxGrid2DBTableView1VALORHONORARIO: TcxGridDBColumn;
    cxGrid2DBTableView1FATORPARCELAMENTO: TcxGridDBColumn;
    cxGrid2DBTableView1ENVIOBANCO: TcxGridDBColumn;
    cxGrid2DBTableView1PERC_HONORARIOS: TcxGridDBColumn;
    cxGrid2DBTableView1PERC_JUROS: TcxGridDBColumn;
    cxGrid2DBTableView1ID_1: TcxGridDBColumn;
    cxGrid2DBTableView1ID_2: TcxGridDBColumn;
    cxGrid2DBTableView1ID_3: TcxGridDBColumn;
    cxGrid2DBTableView1F1CPF: TcxGridDBColumn;
    cxGrid2DBTableView1F2CPF: TcxGridDBColumn;
    cxGrid2DBTableView1NUMERONOTA: TcxGridDBColumn;
    cxGrid2DBTableView1NRPROCESSO: TcxGridDBColumn;
    cxGrid2DBTableView1PERC_JUROS_CONTRATO: TcxGridDBColumn;
    cxGrid2DBTableView1USUARIO_LIB_DESC: TcxGridDBColumn;
    cxGrid2DBTableView1HORA_LIB_DESC: TcxGridDBColumn;
    cxGrid2DBTableView1VALORIOF: TcxGridDBColumn;
    cxGrid2DBTableView1VALORCORRECAO: TcxGridDBColumn;
    cxGrid2DBTableView1ID_4: TcxGridDBColumn;
    cxGrid2DBTableView1GRUPO: TcxGridDBColumn;
    cxGrid2DBTableView1CLASSEPRINCIPAL: TcxGridDBColumn;
    cxGrid2DBTableView1CLASSECONSUMO: TcxGridDBColumn;
    cxGrid2DBTableView1TIPOARRECADACAO: TcxGridDBColumn;
    cxGrid2DBTableView1SCORE: TcxGridDBColumn;
    cxGrid2DBTableView1DEVOLUCAO_USR: TcxGridDBColumn;
    cxGrid2DBTableView1LIQUIDACAO_DATA: TcxGridDBColumn;
    cxGrid2DBTableView1LIQUIDACAO_USR: TcxGridDBColumn;
    cxGrid2DBTableView1DTA_CAD: TcxGridDBColumn;
    cxGrid2DBTableView1USR_CAD: TcxGridDBColumn;
    cxGrid2DBTableView1REGISTRO: TcxGridDBColumn;
    cxGrid2DBTableView1CREDOR: TcxGridDBColumn;
    cxGrid2DBTableView1ULTIMO_ACIONAMENTO: TcxGridDBColumn;
    cxGrid2DBTableView1OPERADOREMACAO: TcxGridDBColumn;
    cxGrid2DBTableView1DATAHORAACAO: TcxGridDBColumn;
    cxGrid2DBTableView1DATACOMPRA: TcxGridDBColumn;
    cxGrid2DBTableView1DATADISPONIVEL: TcxGridDBColumn;
    QVerifica: TFDQuery;
    QParcela: TFDQuery;
    QParcelaCLIENTE: TStringField;
    QParcelaNROPERACAO: TStringField;
    QParcelaREMESSA: TStringField;
    QParcelaDATAVENCTO: TStringField;
    QParcelaAUT_: TFMTBCDField;
    QParcelaNRLINHAC: TFMTBCDField;
    QParcelaNRLINHAR: TFMTBCDField;
    QParcelaNRREM: TFMTBCDField;
    QParcelaDATAREFERENCIA: TStringField;
    QParcelaSTATUS: TStringField;
    QParcelaVALORPREVISTO: TFMTBCDField;
    QParcelaVALORREALIZADO: TFMTBCDField;
    QParcelaVALORJUROS: TFMTBCDField;
    QParcelaVALORMULTA: TFMTBCDField;
    QParcelaVALORDESCONTO: TFMTBCDField;
    QParcelaPAGOCOB: TStringField;
    QParcelaVALORPAGTOCOB: TFMTBCDField;
    QParcelaRECBANCO: TStringField;
    QParcelaCOMIEMP: TFMTBCDField;
    QParcelaAGENCIA: TStringField;
    QParcelaNUMERO: TFMTBCDField;
    QParcelaNUMERONOTA: TFMTBCDField;
    QParcelaRESUMO: TFMTBCDField;
    QParcelaCOBRADOR: TFMTBCDField;
    QParcelaBOL_DATA_EMISSAO: TStringField;
    QParcelaBOL_DATA_ENVIO_REM: TStringField;
    QParcelaBOL_REMESSA_ENVIO: TFMTBCDField;
    QParcelaBOL_NUMERO: TStringField;
    QParcelaBOL_NOSSO_NUMERO: TStringField;
    QParcelaBOL_SITUACAO: TStringField;
    QParcelaBOL_DESC_SITUACAO: TStringField;
    QParcelaBOL_DATA_CANCELAMENTO: TStringField;
    QParcelaBOL_DATA_ATU: TStringField;
    QParcelaDATARECEBIMENTO: TStringField;
    QParcelaVALORATRAZO: TFMTBCDField;
    QParcelaVALORHONORARIO: TFMTBCDField;
    QParcelaVALORPROTESTO: TFMTBCDField;
    QParcelaBOL_NR_DOCUMENTO: TStringField;
    QParcelaVALORORIGINAL: TFMTBCDField;
    QParcelaOPERACAONOVA: TStringField;
    QParcelaDATA_MODIF: TStringField;
    QParcelaDATAFIMTERCEIRIZACAO: TDateTimeField;
    QParcelaUSUARIO_REC: TFMTBCDField;
    QParcelaDATARESUMO: TStringField;
    QParcelaREC_DATA_EMISSAO: TStringField;
    QParcelaBOL_LINHA_DIGITAVEL: TStringField;
    QParcelaFASE: TFMTBCDField;
    QParcelaATUALIZADOATE: TDateTimeField;
    QParcelaUSUARIO_REPASSE: TFMTBCDField;
    QParcelaDATA_REPASSE: TStringField;
    QParcelaBOL_DATA_RETORNO_REM: TStringField;
    QParcelaBOL_CODBARRAS: TStringField;
    QParcelaNRREM50: TFMTBCDField;
    QParcelaNRREM40: TFMTBCDField;
    QParcelaNRREM97: TFMTBCDField;
    QParcelaUSER_ID_97: TStringField;
    QParcelaCOMISSAOBRUTA: TFMTBCDField;
    QParcelaREDUTOR: TFMTBCDField;
    QParcelaCOMISSAOLIQUIDA: TFMTBCDField;
    QParcelaUFATUACAO: TStringField;
    QParcelaTIPOPAGAMENTO: TStringField;
    QParcelaPAGOATE30: TStringField;
    QParcelaPERFORMANCE: TFMTBCDField;
    QParcelaLOCATION: TStringField;
    QParcelaTIPOREMUNERACAO: TStringField;
    QParcelaNRREM41: TFMTBCDField;
    QParcelaVALORCORRECAO: TFMTBCDField;
    QParcelaCHQ_BANCO: TStringField;
    QParcelaCHQ_AGENCIA: TStringField;
    QParcelaCHQ_CONTA: TStringField;
    QParcelaCHQ_NUMERO: TStringField;
    QParcelaNRREM51: TFMTBCDField;
    QParcelaNRREM52: TFMTBCDField;
    QParcelaBOL_CONVENIO: TStringField;
    QParcelaBOL_DATA_ENVIO: TStringField;
    QParcelaVALOR_TAXA_ATUALIZACAO: TFMTBCDField;
    QParcelaBOL_COD_REGISTRO: TStringField;
    QParcelaVALOR_DESCONTO_PRINCIPAL: TBCDField;
    QParcelaVALORATUALIZADO: TBCDField;
    QParcelaBOL_VALOR_DESCONTO_ANTECIP: TBCDField;
    QParcelaBOL_DATA_MAX_DESCONTO_ANTECIP: TStringField;
    QParcelaREGISTRO: TFMTBCDField;
    QParcelaNUM_PARCELA: TStringField;
    QMax2: TFDQuery;
    QOperacaoDATAVENCTO: TDateTimeField;
    Label1: TLabel;
    Button3: TButton;
    mtDevedorGeral: TFDMemTable;
    mtDevedorGeraltipo: TStringField;
    mtDevedorGeralnome: TStringField;
    mtDevedorGeralcpf: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    pParcela : string;
    procedure ImportaDevedor;
    procedure ImportaOperacao;
    procedure CarregaTemp;
    procedure CarregaTempOperacao;
    procedure CarregaTempGeral;
    procedure GravaClientesBancos(pCodCliente, pCodBanco : integer);
    procedure GravaParcela;
    procedure ConectaDB;


    function SoNumero(Valor : String): String;
    function FormataCPF(valor : string) : string;
    function FormataCNPJ(valor : string) : string;
    function IsAlphaNumerico(pVariavel : string) : boolean;
    function FormatarTelefone(Telefone : string) : string;
    function LeINICrypt(INI : TIniFile; Section, Ident, Pass : String) : String ;
    function IfStrNull(Str: String; Def: String): String;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
  ImportaDevedor;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ImportaOperacao;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  vFile: string;
begin
  if OpenDialog1.Execute then
  begin
    vFile := OpenDialog1.FileName;
    ImportExcel1.ExcelFile := vFile;
    ImportExcel1.ExcelParaStringGrid(StringGrid1,ProgressBar1);
    CarregaTempGeral;
    //ShowMessage('Processo finalizado');
  end;
end;

procedure TForm1.CarregaTemp;
var
  i,
  vMax : integer;
begin
  mtDevedor.Close;
  mtDevedor.CreateDataSet;
  mtDevedor.DisableControls;
  for i := 1 to Pred(StringGrid1.RowCount) do
  begin
    Application.ProcessMessages;
    mtDevedor.Append;
    if Length(SoNumero(StringGrid1.Cells[1,I])) = 14 then
    begin
      mtDevedortipo.asstring := 'J';
      mtDevedorCPFCNPJ.asstring        := FormataCNPJ(SoNumero(StringGrid1.Cells[1,I]));
    end
    else
    begin
      mtDevedortipo.asstring := 'F';
      mtDevedorCPFCNPJ.asstring        := FormataCPF(SoNumero(StringGrid1.Cells[1,I]));
    end;
    mtDevedorNome.asstring := StringGrid1.Cells[2,I];
    mtDevedorlogradouro.asstring := StringGrid1.Cells[3,I];
    mtDevedorbairro.asstring := StringGrid1.Cells[4,I];
    mtDevedorcidade.asstring := StringGrid1.Cells[5,I];
    mtDevedorestado.asstring := StringGrid1.Cells[6,I];
    mtDevedorcep.asstring := StringGrid1.Cells[7,I];
    if not IsAlphaNumerico(StringGrid1.Cells[8,I]) then
      mtDevedortelefone1.asstring      := FormatarTelefone(StringGrid1.Cells[8,I])
    else
      mtDevedortelefone1.asstring      := StringGrid1.Cells[8,I];
    if not IsAlphaNumerico(StringGrid1.Cells[9,I]) then
      mtDevedortelefone2.asstring      := FormatarTelefone(StringGrid1.Cells[9,I])
    else
      mtDevedortelefone2.asstring      := StringGrid1.Cells[9,I];
    if not IsAlphaNumerico(StringGrid1.Cells[10,I]) then
      mtDevedortelefone3.asstring      := FormatarTelefone(StringGrid1.Cells[10,I])
    else
      mtDevedortelefone3.asstring      := StringGrid1.Cells[10,I];
    mtDevedordt_nascimento.asstring      := StringGrid1.Cells[18,I];
    mtDevedoremail1.asstring      := StringGrid1.Cells[47,I];
    mtDevedoremail2.asstring      := StringGrid1.Cells[48,I];
    mtDevedoremail3.asstring      := StringGrid1.Cells[49,I];
    mtDevedoremail4.asstring      := StringGrid1.Cells[50,I];

    //mtDevedor.asstring := StringGrid1.Cells[2,I];

    mtDevedor.Post;
  end;
  //mtDevedor.EnableControls;
  mtDevedor.First;


  with QMax do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT        ');
    SQL.Add('  MAX(codigo) ');
    SQL.Add('FROM          ');
    SQL.Add('  clientes    ');
    Open;
  end;

  vMax := QMax.Fields[0].AsInteger;

  with QGravaDevedor do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT     ');
    SQL.Add('  *        ');
    SQL.Add('FROM       ');
    SQL.Add('  clientes ');
    SQL.Add('LIMIT 0    ');
    Open;
  end;

  //gravo na tabela de devedores
  while not mtDevedor.Eof do
  begin
    with QVerifica do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select codigo from clientes where cpf_cnpj = :pcpf_cnpj');
      ParamByName('pcpf_cnpj').AsString := mtDevedorCPFCNPJ.AsString;
      Open;
    end;
    if QVerifica.FieldByName('codigo').AsInteger = 0 then
    begin
      vMax := vMax + 1;
      Application.ProcessMessages;
      QGravaDevedor.Append;
      QGravaDevedorCODIGO.AsInteger := vMax;
      QGravaDevedorNOME.AsString := mtDevedorNome.AsString;
      QGravaDevedorTIPOPESSOA.AsString := mtDevedortipo.AsString;
      QGravaDevedorCPF_CNPJ.AsString := mtDevedorCPFCNPJ.AsString;
      QGravaDevedorDTA_NASCIMENTO.AsString := mtDevedordt_nascimento.AsString;
      QGravaDevedorENDERECO.AsString := mtDevedorlogradouro.AsString;
      QGravaDevedorNUMERO.AsString := mtDevedornumero.AsString;
      QGravaDevedorCIDADE.AsString := mtDevedorcidade.AsString;
      QGravaDevedorCEP.AsString := mtDevedorcep.AsString;
      QGravaDevedorUF.AsString := mtDevedorestado.AsString;
      QGravaDevedorSETOR.AsString := mtDevedorbairro.AsString;
      QGravaDevedorE_MAIL.AsString := mtDevedoremail1.AsString;
      QGravaDevedorE_MAIL1.AsString := mtDevedoremail2.AsString;
      QGravaDevedorFONE.AsString := mtDevedortelefone1.AsString;
      QGravaDevedorFAXCEL.AsString := mtDevedortelefone2.AsString;
      QGravaDevedorFONE_1.AsString := mtDevedortelefone3.AsString;
      QGravaDevedorFAXCEL_1.AsString := mtDevedortelefone4.AsString;
      QGravaDevedor.Post;
      GravaClientesBancos(vMax, 1);
    end;
    mtDevedor.Next;
  end;

  mtDevedor.EnableControls;

  Conexao.Commit;
end;

procedure TForm1.CarregaTempGeral;
var
  i,
  vMax : integer;
begin
  //gravo o devedor
  mtDevedorGeral.Close;
  mtDevedorGeral.CreateDataSet;
  mtDevedorGeral.DisableControls;
  for i := 1 to Pred(StringGrid1.RowCount) do
  begin
    Application.ProcessMessages;
    mtDevedorGeral.Append;
    mtDevedorGeralnome.asstring := StringGrid1.Cells[1,I];
    if Length(SoNumero(StringGrid1.Cells[2,I])) = 14 then
    begin
      mtDevedorGeraltipo.asstring := 'J';
      mtDevedorGeralcpf.asstring        := FormataCNPJ(SoNumero(StringGrid1.Cells[2,I]));
    end
    else
    begin
      mtDevedorGeraltipo.asstring := 'F';
      mtDevedorGeralcpf.asstring        := FormataCPF(SoNumero(StringGrid1.Cells[2,I]));
    end;
  end;

  with QMax do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT        ');
    SQL.Add('  MAX(codigo) ');
    SQL.Add('FROM          ');
    SQL.Add('  clientes    ');
    Open;
  end;

  vMax := QMax.Fields[0].AsInteger;

  with QGravaDevedor do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT     ');
    SQL.Add('  *        ');
    SQL.Add('FROM       ');
    SQL.Add('  clientes ');
    SQL.Add('LIMIT 0    ');
    Open;
  end;

  mtDevedorGeral.First;
  while not mtDevedorGeral.Eof do
  begin
    with QVerifica do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select codigo from clientes where cpf_cnpj = :pcpf_cnpj');
      if Length(SoNumero(StringGrid1.Cells[2,I])) = 14 then
        ParamByName('pcpf_cnpj').AsString := FormataCNPJ(SoNumero(StringGrid1.Cells[2,I]))
      else
        ParamByName('pcpf_cnpj').AsString := FormataCPF(SoNumero(StringGrid1.Cells[2,I]));
      Open;
    end;
    if QVerifica.FieldByName('codigo').AsInteger = 0 then
    begin
      vMax := vMax + 1;
      Application.ProcessMessages;
      QGravaDevedor.Append;
      QGravaDevedorCODIGO.AsInteger := vMax;
      QGravaDevedorNOME.AsString := mtDevedorGeralnome.AsString;
      QGravaDevedorTIPOPESSOA.AsString := mtDevedorGeraltipo.AsString;
      QGravaDevedorCPF_CNPJ.AsString := mtDevedorGeralcpf.AsString;
      QGravaDevedor.Post;
    end;
    mtDevedorGeral.Next;
  end;
end;

procedure TForm1.CarregaTempOperacao;
var
  i,
  vParc,
  vQtdeParc,
  vMax,
  vContador : integer;
begin
  vContador := 0;
  mtOperacao.Close;
  mtOperacao.CreateDataSet;
  mtOperacao.DisableControls;
  with QMax do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT          ');
    SQL.Add('  MAX(registro) ');
    SQL.Add('FROM            ');
    SQL.Add('  operacoes     ');
    Open;
  end;

  with QOperacao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT      ');
    SQL.Add('  *         ');
    SQL.Add('FROM        ');
    SQL.Add('  operacoes ');
    SQL.Add('LIMIT 0     ');
    Open;
  end;

  with QParcela do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT     ');
    SQL.Add('  *        ');
    SQL.Add('FROM       ');
    SQL.Add('  parcelas ');
    SQL.Add('LIMIT 0    ');
    Open;
  end;


  vMax := QMax.Fields[0].AsInteger;

  //gravando primeiro as parcelas canceladas
  for i := 1 to Pred(StringGrid1.RowCount) do
  begin
    inc(vContador);
    Application.ProcessMessages;
    vMax := vMax + 1;
    if StringGrid1.Cells[18,I] = 'CANCELADO' then
    begin
      pParcela := '1/1';
      QOperacao.Append;
      if Length(SoNumero(StringGrid1.Cells[2,I])) = 14 then
        QOperacaoCLIENTE.asstring        := FormataCNPJ(SoNumero(StringGrid1.Cells[2,I]))
      else
        QOperacaoCLIENTE.asstring        := FormataCPF(SoNumero(StringGrid1.Cells[2,I]));
      QOperacaoNROPERACAO.AsString := 'N' + IntToStr(vMax);
      QOperacaoREGISTRO.AsInteger := vMax;
      QOperacaoREMESSA.AsString := FormatDateTime('yyyyMMdd',now) + '1';
      QOperacaoCREDOR.AsString := '1';
      QOperacaoSTATUS.AsString := 'D';
      if StringGrid1.Cells[4,I] <> '' then
        QOperacaoDATAVENCTO.AsDateTime := StrToDateTime(StringGrid1.Cells[4,I]);
      if StringGrid1.Cells[8,I] <> '' then
      begin
        QOperacaoVALORDIVIDA.AsString := StringGrid1.Cells[8,I];
        QOperacaoVALORVENCIDO.AsString := StringGrid1.Cells[8,I];
      end
      else
      begin
        QOperacaoVALORDIVIDA.AsString := StringGrid1.Cells[6,I];
        QOperacaoVALORVENCIDO.AsString := StringGrid1.Cells[6,I];
      end;
      QOperacaoVALORRECEBIDO.AsFloat := 0;
      QOperacaoVALORNOMINAL.AsString := StringGrid1.Cells[6,I];
      QOperacaoVALORMULTA.AsString := StringGrid1.Cells[10,I];
      QOperacaoVALORJURO.AsString := StringGrid1.Cells[11,I];
      GravaParcela;
      QOperacao.Post;
      Application.ProcessMessages;
    end
    else if StringGrid1.Cells[18,I] <> 'CANCELADO' then
    begin
      if StringGrid1.Cells[24,I] = 'Q' then //uma unica parcela
      begin
        pParcela := '1/1';
        QOperacao.Append;
        if Length(SoNumero(StringGrid1.Cells[2,I])) = 14 then
          QOperacaoCLIENTE.asstring        := FormataCNPJ(SoNumero(StringGrid1.Cells[2,I]))
        else
          QOperacaoCLIENTE.asstring        := FormataCPF(SoNumero(StringGrid1.Cells[2,I]));
        QOperacaoNROPERACAO.AsString := 'N' + IntToStr(vMax);
        QOperacaoREGISTRO.AsInteger := vMax;
        QOperacaoREMESSA.AsString := FormatDateTime('yyyyMMdd',now) + '1';
        QOperacaoCREDOR.AsString := '1';
        if StringGrid1.Cells[18,I] = 'ABERTO' then
          QOperacaoSTATUS.AsString := 'N'
        else if StringGrid1.Cells[18,I] = 'LIQUIDADO' then
        begin
          QOperacaoSTATUS.AsString := 'L';
          QOperacaoVALORRECEBIDO.AsString := StringGrid1.Cells[26,I];
        end;
        if StringGrid1.Cells[4,I] <> '' then
          QOperacaoDATAVENCTO.AsDateTime := StrToDateTime(StringGrid1.Cells[4,I]);
        if StringGrid1.Cells[8,I] <> '' then
        begin
          QOperacaoVALORDIVIDA.AsString := StringGrid1.Cells[8,I];
          QOperacaoVALORVENCIDO.AsString := StringGrid1.Cells[8,I];
        end
        else
        begin
          QOperacaoVALORDIVIDA.AsString := StringGrid1.Cells[6,I];
          QOperacaoVALORVENCIDO.AsString := StringGrid1.Cells[6,I];
        end;
        QOperacaoVALORNOMINAL.AsString := StringGrid1.Cells[6,I];
        QOperacaoVALORMULTA.AsString := StringGrid1.Cells[10,I];
        QOperacaoVALORJURO.AsString := StringGrid1.Cells[11,I];
        GravaParcela;
        QOperacao.Post;
      end
      else //mais de uma parcela
      begin
        vQtdeParc := StrToInt(StringGrid1.Cells[15,I]);
        for vParc := 0 to StrToInt(StringGrid1.Cells[15,I]) -1 do
        begin
          pParcela := IntToStr(vParc + 1) + '/' + IntToStr(vQtdeParc);
          QOperacao.Append;
          if Length(SoNumero(StringGrid1.Cells[2,I])) = 14 then
            QOperacaoCLIENTE.asstring        := FormataCNPJ(SoNumero(StringGrid1.Cells[2,I]))
          else
            QOperacaoCLIENTE.asstring        := FormataCPF(SoNumero(StringGrid1.Cells[2,I]));
          QOperacaoNROPERACAO.AsString := 'N' + IntToStr(vMax);
          QOperacaoREGISTRO.AsInteger := vMax;
          QOperacaoREMESSA.AsString := FormatDateTime('yyyyMMdd',now) + '1';
          QOperacaoCREDOR.AsString := '1';

          if StringGrid1.Cells[18,I] = 'LIQUIDADO' then
          begin
            QOperacaoSTATUS.AsString := 'L';
            QOperacaoVALORRECEBIDO.AsString := StringGrid1.Cells[26,I];
            //if StringGrid1.Cells[4,I] <> '' then
            QOperacaoDATAVENCTO.AsDateTime := IncMonth(Now, -1);  //StrToDateTime(StringGrid1.Cells[4,I]);
          end
          else
          begin
            if vParc + 1 < StrToInt(StringGrid1.Cells[16,I]) then
            begin
              QOperacaoSTATUS.AsString := 'L';
              QOperacaoVALORRECEBIDO.AsString := StringGrid1.Cells[26,I];
              if vParc = 0 then
                QOperacaoDATAVENCTO.AsDateTime := StrToDateTime(StringGrid1.Cells[4,I])
              else
                QOperacaoDATAVENCTO.AsDateTime := IncMonth(StrToDateTime(StringGrid1.Cells[4,I]), vParc);
            end
            else
            begin
              QOperacaoSTATUS.AsString := 'N';
              QOperacaoDATAVENCTO.AsDateTime := IncMonth(StrToDateTime(StringGrid1.Cells[4,I]), vParc);
            end;
          end;
          QOperacaoVALORDIVIDA.AsString := StringGrid1.Cells[8,I];
          QOperacaoVALORVENCIDO.AsString := StringGrid1.Cells[8,I];
          QOperacaoVALORRECEBIDO.AsFloat := 0;
          QOperacaoVALORNOMINAL.AsString := StringGrid1.Cells[26,I];
          QOperacaoVALORMULTA.AsString := StringGrid1.Cells[10,I];
          QOperacaoVALORJURO.AsString := StringGrid1.Cells[11,I];
          GravaParcela;
          QOperacao.Post;
          Application.ProcessMessages;
          vMax := vMax + 1;
        end;
      end;
    end;
    Application.ProcessMessages;
  end;
end;

procedure TForm1.ConectaDB;
var
   vFileConfig : TIniFile;
   vServer,
   vDataBase,
   vUserName,
   vPassword,
   vPort,
   vPass      : string;
begin
   vFileConfig := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'crm.ini');
   try
      vPass := IntToStrZero(StringCrc16('CLICK COB' + IntToStrZero(2020,8)),8);
      vServer := IfStrNull(LeINICrypt(vFileConfig,'CONEXAO','Server',vPass),'');
      vDataBase := IfStrNull(LeINICrypt(vFileConfig,'CONEXAO','Database',vPass),'');
      vUserName := IfStrNull(LeINICrypt(vFileConfig,'CONEXAO','UserName',vPass),'');
      vPassword := IfStrNull(LeINICrypt(vFileConfig,'CONEXAO','Password',vPass),'');
      vPort := IfStrNull(LeINICrypt(vFileConfig,'CONEXAO','Port',vPass),'');

      try
         Conexao.Connected := False;
         Conexao.Params.Clear;
         Conexao.Params.Add('Database=' + vDataBase);
         Conexao.Params.Add('Server=' + vServer);
         Conexao.Params.Add('User_Name=' + vUserName);
         Conexao.Params.Add('Password=' + vPassword);
         Conexao.Params.Add('Port=' + vPort);
         Conexao.Params.Add('DriverID=MySQL');
         Conexao.ResourceOptions.AutoConnect   := True;
         Conexao.ResourceOptions.AutoReconnect := True;
         Conexao.Connected := True;
      except
         on exc: exception do
         begin
            ShowMessage('Banco de dados não encontrado');
         end;
      end;
   finally
      FreeAndNil(vFileConfig);
   end;
end;

function TForm1.FormataCNPJ(valor: string): string;
begin
  Result := '';
  Result := Copy(valor,1,2) + '.' +
            Copy(valor,3,3) + '.' +
            Copy(valor,6,3) + '/' +
            Copy(valor,9,4) + '-' +
            Copy(valor,13,2);
end;

function TForm1.FormataCPF(valor: string): string;
var
   aux : string;
begin
  if valor = '' then
  begin
    result := '';
    exit;
  end;
  Result := '';
  result := Copy(valor,1,3) + '.' +
            Copy(valor,4,3) + '.' +
            Copy(valor,7,3) + '-' +
            Copy(valor,10,2);

end;

function TForm1.FormatarTelefone(Telefone: string): string;
function SomenteNumero(snum : String) : String;
  VAR s1, s2: STRING;
    i: Integer;
  BEGIN
    s1 := snum;
    s2 := '';
    FOR i := 1 TO Length(s1) DO
      IF s1[i] IN ['0'..'9'] THEN
        s2 := s2 + s1[i];
    result := s2;
  End;
var sTel : String;
    bZero : Boolean;
    iDigitos : Integer;
begin
   //Obs: mascara prevê tratamento apenas para números brasileiros
   //Obs2: Esta função não leva em conta o código do país (Ex: 55, ou +55)

   sTel := SomenteNumero(Telefone); //Remove qualquer formatação que o usuário possa ter colocado.
   if sTel='' then
    Result := ''
   else
   begin
     if sTel[1]='0' then //Verifica se foi adicionado o 0 no início do número
     begin
       bZero:= True;
       sTel := Trim( copy(sTel,2,Length(sTel)) ); //Remove para fazer a formatação depois adiciona
     end
     else
       bZero := False;
     iDigitos := Length(sTel);
     //Formata de acordo com a quantidade de números encontrados.
     case iDigitos of
       8 : Result := FormatMaskText('9999-9999;0;_',sTel); //8 digitos SEM DDD (ex: 34552318)
       9 : Result := FormatMaskText('9 9999-9999;0;_',sTel); //9 digitos SEM DDD (ex: 991916889)
      10 : Result := FormatMaskText('(99) 9999-9999;0;_',sTel); //8 Digitos (convencional, ex: 7734552318)
      11 : Result := FormatMaskText('(99) 9 9999-9999;0;_',sTel); //9 Digitos (novos números, ex: 77991916889)
      12 : Result := FormatMaskText('99(99)9999-9999;0;_',sTel); //Se foram 12 digitos possívelmente digitou a operadora também
      13 : Result := FormatMaskText('99(99)9 9999-9999;0;_',sTel); //Se foram 13 digitos possívelmente digitou a operadora também
     else
       Result := Telefone; //Mantém na forma que o usuário digitou
     end;
     if bZero then //Para ficar com a preferência do usuário, se ele digitou o "0" eu mantenho.
       Result := '0'+Result;
   end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ConectaDB;
end;

procedure TForm1.GravaClientesBancos(pCodCliente, pCodBanco: integer);
var
  QClientes : TFDQuery;
begin
  try
    QClientes := TFDQuery.Create(nil);
      try
        QClientes.Connection := Conexao;
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

procedure TForm1.GravaParcela;
var
  vMax : integer;
begin
  with QMax2 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT        ');
    SQL.Add('  MAX(registro) ');
    SQL.Add('FROM          ');
    SQL.Add('  parcelas    ');
    Open;
  end;

  vMax := QMax2.Fields[0].AsInteger;

  QParcela.Append;
  QParcelaCLIENTE.AsString := QOperacaoCLIENTE.AsString;
  QParcelaNROPERACAO.AsString := QOperacaoNROPERACAO.AsString;
  QParcelaREMESSA.AsString := QOperacaoREMESSA.AsString;
  QParcelaDATAVENCTO.AsString := Copy(QOperacaoDATAVENCTO.AsString,0,10);
  QParcelaDATAREFERENCIA.AsString := DateToStr(Now);
  QParcelaSTATUS.AsString := QOperacaoSTATUS.AsString;
  QParcelaVALORPREVISTO.AsFloat := QOperacaoVALORNOMINAL.AsFloat;
  QParcelaVALORREALIZADO.AsFloat := QOperacaoVALORRECEBIDO.AsFloat;
  QParcelaVALORJUROS.AsFloat := QOperacaoVALORJURO.AsFloat;
  QParcelaVALORMULTA.AsFloat := QOperacaoVALORMULTA.AsFloat;
  QParcelaVALORORIGINAL.AsFloat := QOperacaoVALORNOMINAL.AsFloat;
  QParcelaREGISTRO.AsInteger := vMax + 1;
  QParcelaNUM_PARCELA.AsString := pParcela;
  QParcela.Post;
end;

function TForm1.IfStrNull(Str, Def: String): String;
begin
   if Str = '' then
      Result   := Def
   else
      Result   := Str;
end;

procedure TForm1.ImportaDevedor;
var
  vFile: string;
begin
  if OpenDialog1.Execute then
  begin
    vFile := OpenDialog1.FileName;
    ImportExcel1.ExcelFile := vFile;
    ImportExcel1.ExcelParaStringGrid(StringGrid1,ProgressBar1);
    CarregaTemp;
    ShowMessage('Processo finalizado');
  end;
end;

procedure TForm1.ImportaOperacao;
var
  vFile: string;
begin
  if OpenDialog1.Execute then
  begin
    vFile := OpenDialog1.FileName;
    ImportExcel1.ExcelFile := vFile;
    ImportExcel1.ExcelParaStringGrid(StringGrid1,ProgressBar1);
    CarregaTempOperacao;
    ShowMessage('Processo finalizado');
  end;
end;

function TForm1.IsAlphaNumerico(pVariavel: string): boolean;
var
  I : Integer;
begin
  for I := 1 to Length(pVariavel) do
    if not (pVariavel[I] in ['0'..'9']) then
    begin
      Result := True;
      Exit;
    end;
  Result := False;
end;

function TForm1.LeINICrypt(INI: TIniFile; Section, Ident, Pass: String): String;
var
  vStream  : TStringStream ;
  vCryptStr : String ;
begin
   vStream := TStringStream.Create('') ;
   try
      INI.ReadBinaryStream(Section, Ident, vStream) ;
      vCryptStr := vStream.DataString  ;
      Result   := StrCrypt(vCryptStr, Pass) ;
   finally
      FreeAndNil(vStream);
   end;
end;

function TForm1.SoNumero(Valor: String): String;
var
  i : Byte;
begin
   Result := '';
   for i := 1 to Length(Valor) do
      if Valor [i] in ['0'..'9'] then
         Result := Result + Valor [I];
end;

end.
