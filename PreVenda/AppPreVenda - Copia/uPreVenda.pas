unit uPreVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, Grids, DBGrids, DB, ppComm, 
  ppRelatv, ppProd, ppClass, ppReport, ppBands, ppCache, ppDesignLayer, 
  ppParameter, ppCtrls, dxGDIPlusClasses, ppPrnabl, ppDB, ppDBPipe, ppStrtch, 
  ppMemo, MidasLib, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, 
  Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, 
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, 
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, 
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, 
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, 
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, 
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, 
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, 
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, 
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, 
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, 
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, 
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, ppEndUsr, 
  cxButtons, ppSubRpt, FireDAC.Stan.Intf, FireDAC.Stan.Option, 
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, 
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, 
  FireDAC.Comp.Client, IBX.IBCustomDataSet;


Const
  Alfabeto = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

type
  TFrmPreVenda = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    pnlDadosPreVenda: TPanel;
    btnInserir: TSpeedButton;
    btnCancelar: TSpeedButton;
    edtNumPreVenda: TEdit;
    Label1: TLabel;
    edtNomeCliente: TEdit;
    Label2: TLabel;
    SpeedButton3: TSpeedButton;
    edtEndereco: TEdit;
    Label3: TLabel;
    edtDocumento: TEdit;
    Label5: TLabel;
    edtCFOP: TEdit;
    Label6: TLabel;
    SpeedButton4: TSpeedButton;
    edtVendedor: TEdit;
    SpeedButton5: TSpeedButton;
    Label7: TLabel;
    edtTransportadora: TEdit;
    Label8: TLabel;
    SpeedButton6: TSpeedButton;
    edtDataEmissao: TDateTimePicker;
    Label10: TLabel;
    pnlProdutos: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    SpeedButton7: TSpeedButton;
    dsProdutos: TDataSource;
    edtDataSai: TDateTimePicker;
    Label11: TLabel;
    Label12: TLabel;
    edtQtdeLinhas: TEdit;
    edtTotalPreVenda: TEdit;
    Label13: TLabel;
    SpeedButton8: TSpeedButton;
    btnSalvar: TSpeedButton;
    edtDescontoFinal: TEdit;
    Label14: TLabel;
    RptDocumentoVenda: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLine2: TppLine;
    ppLine1: TppLine;
    ppLine4: TppLine;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppLine15: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppShape7: TppShape;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppShape8: TppShape;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine45: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape11: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppImage1: TppImage;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppShape15: TppShape;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel77: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLine56: TppLine;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    dsDocumentoVenda: TDataSource;
    DBDocumentoVenda: TppDBPipeline;
    QryDocumentoVenda: TFDQuery;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppShape16: TppShape;
    ppLabel30: TppLabel;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText44: TppDBText;
    ppLine57: TppLine;
    ppLabel93: TppLabel;
    ppFaturas: TppMemo;
    QryFatura: TFDQuery;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppDBText50: TppDBText;
    ppLine65: TppLine;
    ppDBText51: TppDBText;
    ppLine66: TppLine;
    ppDBText52: TppDBText;
    ppLine67: TppLine;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppLine74: TppLine;
    SpeedButton1: TSpeedButton;
    QryAux: TFDQuery;
    ppLabel94: TppLabel;
    ppDBText60: TppDBText;
    Label4: TLabel;
    edtObservacao: TEdit;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppLabel89: TppLabel;
    ppDBText68: TppDBText;
    ppLabel85: TppLabel;
    ppDBText69: TppDBText;
    btnAlterarTipoVenda: TSpeedButton;
    RptOrcamento: TppReport;
    ppParameterList2: TppParameterList;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppImage2: TppImage;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppShape9: TppShape;
    ppLabel95: TppLabel;
    ppShape17: TppShape;
    ppLine75: TppLine;
    ppLabel96: TppLabel;
    ppLine76: TppLine;
    ppLabel97: TppLabel;
    ppLine77: TppLine;
    ppShape18: TppShape;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppLine78: TppLine;
    ppLine79: TppLine;
    ppLine80: TppLine;
    ppLine81: TppLine;
    ppLine82: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppLine83: TppLine;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppLabel106: TppLabel;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppLabel107: TppLabel;
    ppDBText87: TppDBText;
    ppLine84: TppLine;
    ppShape19: TppShape;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppLine88: TppLine;
    ppLine89: TppLine;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppDBText95: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppTitleBand1: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppShape21: TppShape;
    ppLine90: TppLine;
    ppLabel112: TppLabel;
    ppLine91: TppLine;
    ppLabel113: TppLabel;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppLabel114: TppLabel;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    ppDBText112: TppDBText;
    ppLabel115: TppLabel;
    ppDBText113: TppDBText;
    ppLine94: TppLine;
    ppShape22: TppShape;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLine97: TppLine;
    ppLine98: TppLine;
    ppLine99: TppLine;
    ppShape23: TppShape;
    ppLine100: TppLine;
    ppLine101: TppLine;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppDBText114: TppDBText;
    ppDBText115: TppDBText;
    ppDBText116: TppDBText;
    ppDBText117: TppDBText;
    ppDBText118: TppDBText;
    ppDBText119: TppDBText;
    ppLine105: TppLine;
    ppLabel124: TppLabel;
    ppDBText122: TppDBText;
    ppShape20: TppShape;
    ppImage3: TppImage;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppDBText120: TppDBText;
    ppDBText121: TppDBText;
    ppLabel125: TppLabel;
    ppDBText123: TppDBText;
    Label9: TLabel;
    edtPercDesconto: TEdit;
    QryDocumentoVendaNUMERO_NF: TIBStringField;
    QryDocumentoVendaNUMERO_NF_COMPLETA: TIBStringField;
    QryDocumentoVendaSERIE_NF: TIntegerField;
    QryDocumentoVendaNATUREZA_OPERACAO: TIBStringField;
    QryDocumentoVendaNOME_EMITENTE: TIBStringField;
    QryDocumentoVendaENDERECO_EMITENTE: TIBStringField;
    QryDocumentoVendaBAIRRO_EMITENTE: TIBStringField;
    QryDocumentoVendaCIDADE_EMITENTE: TIBStringField;
    QryDocumentoVendaCEP_EMITENTE: TIBStringField;
    QryDocumentoVendaUF_EMITENTE: TIBStringField;
    QryDocumentoVendaTELEFONE_EMITENTE: TIBStringField;
    QryDocumentoVendaIE_EMITENTE: TIBStringField;
    QryDocumentoVendaCGC_EMITENTE: TIBStringField;
    QryDocumentoVendaNOME_CLIENTE: TIBStringField;
    QryDocumentoVendaCGC_CLIENTE: TIBStringField;
    QryDocumentoVendaENDERECO_CLIENTE: TIBStringField;
    QryDocumentoVendaBAIRRO_CLIENTE: TIBStringField;
    QryDocumentoVendaCEP_CLIENTE: TIBStringField;
    QryDocumentoVendaCIDADE_CLIENTE: TIBStringField;
    QryDocumentoVendaTELEFONE_CLIENTE: TIBStringField;
    QryDocumentoVendaESTADO_CLIENTE: TIBStringField;
    QryDocumentoVendaIE_CLIENTE: TIBStringField;
    QryDocumentoVendaDATA_EMISSA_NF: TDateField;
    QryDocumentoVendaDATA_SAIDA_NF: TDateField;
    QryDocumentoVendaHORA_SAIDA_NF: TIBStringField;
    QryDocumentoVendaBASE_CALCULO_ICMS: TFloatField;
    QryDocumentoVendaVALOR_ICMS: TFloatField;
    QryDocumentoVendaBASE_CALCULO_ICMS_SUBST: TFloatField;
    QryDocumentoVendaVALOR_ICMS_SUBST: TFloatField;
    QryDocumentoVendaTOTAL_PRODUTOS: TFloatField;
    QryDocumentoVendaTOTAL_NOTA: TFloatField;
    QryDocumentoVendaVALOR_FRETE: TFloatField;
    QryDocumentoVendaVALOR_SEGURO: TFloatField;
    QryDocumentoVendaVALOR_DESCONTO: TFloatField;
    QryDocumentoVendaOUTRAS_DESPESAS: TIntegerField;
    QryDocumentoVendaVALOR_IPI: TFloatField;
    QryDocumentoVendaNOME_TRANSPORTADORA: TIBStringField;
    QryDocumentoVendaFRETE_POR_CONTA: TIntegerField;
    QryDocumentoVendaANTT_TRANSPORTADORA: TIBStringField;
    QryDocumentoVendaPLACA_TRANSPORTADORA: TIBStringField;
    QryDocumentoVendaESTADO_TRANSPORTADORA: TIBStringField;
    QryDocumentoVendaCGC_TRANSPORTADORA: TIBStringField;
    QryDocumentoVendaENDERECO_TRANSPORTADORA: TIBStringField;
    QryDocumentoVendaBAIRRO_TRANSPORTADORA: TIBStringField;
    QryDocumentoVendaIE_TRANSPORTADORA: TIBStringField;
    QryDocumentoVendaQTDE_VOLUMES: TFloatField;
    QryDocumentoVendaESPECIE_VOLUMES: TIBStringField;
    QryDocumentoVendaMARCA_VOLUMES: TIBStringField;
    QryDocumentoVendaPESO_BRUTO_VOLUMES: TFloatField;
    QryDocumentoVendaPESO_LIQUIDO_VOLUMES: TFloatField;
    QryDocumentoVendaOBS_NF: TIBStringField;
    QryDocumentoVendaCODIGO_PRODUTO: TIBStringField;
    QryDocumentoVendaNOME_PRODUTO: TIBStringField;
    QryDocumentoVendaNCM_PRODUTO: TIBStringField;
    QryDocumentoVendaCST_PRODUTO: TIBStringField;
    QryDocumentoVendaCFOP_PRODUTO: TIBStringField;
    QryDocumentoVendaQTDE_PRODUTO: TFloatField;
    QryDocumentoVendaVALOR_UNITARIO_PRODUTO: TFloatField;
    QryDocumentoVendaVALOR_TOTAL_PRODUTO: TFloatField;
    QryDocumentoVendaBC_ICMS_PRODUTO: TIntegerField;
    QryDocumentoVendaVALOR_ICMS_PRODUTO: TIntegerField;
    QryDocumentoVendaVALOR_IPI_PRODUTO: TIntegerField;
    QryDocumentoVendaVALOR_IPI_PRODUTO1: TIntegerField;
    QryDocumentoVendaUNIDADE_MEDIDA_PRODUTO: TIBStringField;
    QryDocumentoVendaALIQ_ICMS_PRODUTO: TIntegerField;
    QryDocumentoVendaALIQ_IPI_PRODUTO: TIntegerField;
    QryDocumentoVendaNOME_VENDEDOR: TIBStringField;
    Edit1: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure edtDescontoFinalExit(Sender: TObject);
    procedure edtDescontoFinalKeyPress(Sender: TObject; var Key: Char);
    procedure ImprimirDocumentoVenda(pNF:String);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RptDocumentoVendaPrintingComplete(Sender: TObject);
    procedure btnAlterarTipoVendaClick(Sender: TObject);
    procedure edtPercDescontoExit(Sender: TObject);
  private
    { Private declarations }
    FPlaca : String;
    FCFOP  : String;
    FNomeCliente : String;
    FCFOPProd : String;
    FCondicao : String;
    FTipoVenda : String;
    FIntegracao : String;
  public
    { Public declarations }
    FTotalVenda : Double;
  end;

var
  FrmPreVenda: TFrmPreVenda;

implementation
uses
  uFuncoes, uDMPrincipal, untDmPreVenda, uConsultaCliente, uConsultaCFOP,
  uConsultaVendedor, uConsultatransportadora, uConsultaProdutos,
  uConsultarVendasEmitidas, uTipoVenda;

{$R *.dfm}

procedure TFrmPreVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPreVenda.FormShow(Sender: TObject);
var
  FrmTipoVenda : TFrmTipoVenda;
begin
  try
    DmPrincipal.ConexaoPrincipal.Connected:= True;
  except
    raise Exception.Create('Erro ao Conectar com o Banco de Dados !');
  end;
  edtQtdeLinhas.Text := '000';
  edtTotalPreVenda.Text := '0,00';
  edtDescontoFinal.Text := '0,00';
  edtPercDesconto.Text  := '0,00';

  FrmTipoVenda := TFrmTipoVenda.Create(nil);
  try
    FrmTipoVenda.ShowModal;
    FTipoVenda := FrmTipoVenda.FTipoVenda;
  finally
    FrmTipoVenda.Free;
    btnInserirClick(Self);
  end;

dbgrid1.Options:=
[dgEditing,
dgTitles,
dgIndicator,
dgColumnResize,
dgColLines,
dgRowLines,
dgTabs,
dgConfirmDelete,
dgCancelOnExit];
end;

procedure TFrmPreVenda.ImprimirDocumentoVenda(pNF:String);
var
  vFaturas : WideString;
  Logo : String;
  vOpcao : String;
begin
  vOpcao := InputBox('OPÇÃO DE IMPRESSÃO', '1 = ORÇAMENTO OU 2 = MODELO NOTA FISCAL', '1');
  vFaturas := '';

  QryDocumentoVenda.Close;
  QryDocumentoVenda.ParamByName('pNF').AsString := pNF;
  QryDocumentoVenda.Open;

  QryFatura.SQL.Clear;
  QryFatura.SQL.Text :=
    'Select documento, valor_dupl, vencimento From receber where numeronf =:pNF';
  QryFatura.ParamByName('pNF').AsString := pNF;
  QryFatura.Open;
  while not QryFatura.Eof do
  begin
    vFaturas := vFaturas + QryFatura.Fields[0].AsString + ' ' + FormatCurr('###,##0.00', QryFatura.Fields[1].AsFloat) + ' ' +
                QryFatura.Fields[2].AsString + ' | ';

    QryFatura.Next;
  end;
  ppFaturas.Lines.Text := vFaturas;

  Logo := LerIni('DADOS', 'LOGO');
  if (Logo = 'N') then
  begin
    ppImage1.Picture := nil;
    ppImage2.Picture := nil;
    ppImage3.Picture := nil;
  end
  else
  begin
    ppImage1.Picture.LoadFromFile(LerIni('DADOS','CAMINHO_LOGO'));
    ppImage2.Picture.LoadFromFile(LerIni('DADOS','CAMINHO_LOGO'));
    ppImage3.Picture.LoadFromFile(LerIni('DADOS','CAMINHO_LOGO'));
  end;

  QryDocumentoVenda.Last;
  QryDocumentoVenda.First;
  if (QryDocumentoVenda.RecordCount > 7) then
    ppHeaderBand2.PrintOnLastPage := False
  else
    ppHeaderBand2.PrintOnLastPage := True;

  if (vOpcao = '1') then
    RptOrcamento.Print
  else
    RptDocumentoVenda.Print;
end;

procedure TFrmPreVenda.RptDocumentoVendaPrintingComplete(Sender: TObject);
begin
  QryAux.SQL.Text :=
    'Update vendas set flg_imp = ''S'' Where NUMERONF =:pNf';
  QryAux.ParamByName('pNf').AsString := dsDocumentoVenda.DataSet.FieldByName('numero_nf_completa').AsString;
  QryAux.ExecSQL;
  QryAux.Close;
  QryAux.Transaction.Commit;
end;

procedure TFrmPreVenda.btnInserirClick(Sender: TObject);
begin
  pnlDadosPreVenda.Enabled := True;

  edtNumPreVenda.Text := 'SALVE A VENDA';

  dsProdutos.DataSet := dmPreVenda.AbrirCdsProdutos;
  edtQtdeLinhas.Text := '0';
  btnCancelar.Enabled := True;
  btnInserir.Enabled := False;
  btnSalvar.Enabled := True;
  edtDataEmissao.Date := Date;
  edtDataSai.Date := Date;
  FTotalVenda := 0;
end;

procedure TFrmPreVenda.btnSalvarClick(Sender: TObject);
var
  ListaParcelas : TStringList;
  vInd    : Integer;
  vVenc   : TDate;
  vVlrPar : Double;
  vTotalMenosDesc : Real;

  vNumeroVenda : String;
  vTipoVenda   : String;
  vNumeroRegistro : String;
  vNumeroOriginal : String;
begin
  FCondicao := InputBox('Condição de Pagamento', 'Condição de Pagamento', '');
  if Trim(FCondicao) = '' then
    raise Exception.Create('Condição Inválida ! Utilize os prazos separados por barras. Ex: 10/30/90');

  edtDescontoFinal.Text := FormatCurr('###,###,##0.00', StrToFloat(edtDescontoFinal.Text));
  vTotalMenosDesc := FTotalVenda - StrToFloat(edtDescontoFinal.Text);
  edtTotalPreVenda.Text := FormatCurr('###,###,##0.00', vTotalMenosDesc);

  if Application.MessageBox('Confirma o Cadastro dessa Pré Venda ?', 'Atenção', MB_YESNO + MB_ICONQUESTION) = id_yes then
  begin
    //Valida os Campos

    if (Edit1.Text = '') then
      raise Exception.Create('O Campo [Indicar a operação] é Obrigatório !');

    if (edtNomeCliente.Text = '') then
      raise Exception.Create('O Campo [Nome do Cliente] é Obrigatório !');

    if (edtCFOP.Text = '') then
      raise Exception.Create('O Campo [CFOP] é Obrigatório !');

    if (edtVendedor.Text = '') then
      raise Exception.Create('O Campo [Vendedor] é Obrigatório !');

    if (edtTransportadora.Text = '') then
      raise Exception.Create('O Campo [Transportadora] é Obrigatório !');

    if (FPlaca = '') then
      raise Exception.Create('Essa transportadora não possui [PLACA]. Favor verificar o Cadastro !');

    if (edtDataEmissao.Date = 0) then
      raise Exception.Create('O Campo [Data de Emissão] é Obrigatório !');

    if (edtDataSai.Date = 0) then
      raise Exception.Create('O Campo [Data de Saída] é Obrigatório !');

    if (dmPreVenda.RetornaQtdeLinhas = 0) then
      raise Exception.Create('Informe os produtos dessa Pré Venda !');

    if (FIntegracao = '') then
      raise Exception.Create('O CFOP selecionado não possui integração configurada.');

    //Atualiza a Data da Última Compra do Cliente
    try
      dmPreVenda.Qry001.SQL.Text :=
        'Update CLIFOR Set UltimaCO =:pData Where Nome =:pNome';
      dmPreVenda.Qry001.ParamByName('pData').AsDate := edtDataEmissao.Date;
      dmPreVenda.Qry001.ParamByName('pNome').AsString := edtNomeCliente.Text;
      dmPreVenda.Qry001.ExecSQL;
      dmPreVenda.Qry001.Close;
      dmPreVenda.Qry001.Transaction.Commit;
    except
      raise Exception.Create('Não é possível gravar essa pré-venda.' + Chr(13) +
      'Feche o cadastro do cliente e abra-o novamente para que suas atualizações tenham efeito.');
    end;

    vNumeroVenda := IntToStr(dmPreVenda.GerarNumeroNF(FTipoVenda));
    vNumeroOriginal := vNumeroVenda;
    vNumeroRegistro := CompletarZerosEsquerda(StrToInt(vNumeroVenda), 09) + vTipoVenda;

    if (FTipoVenda = 'Simples') then
    begin
      vTipoVenda      := 'S';
      vNumeroVenda    := CompletarZerosEsquerda(StrToInt(vNumeroVenda), 09);
      vNumeroVenda    := 'SIM' + vNumeroVenda;
    end
    else
    begin
      vTipoVenda := 'N';
      vNumeroVenda := CompletarZerosEsquerda(StrToInt(vNumeroVenda), 09) + '001';
    end;

    vNumeroRegistro := vNumeroRegistro + vTipoVenda;

    //Inicia a Gravação da Nota Fiscal
    dmPreVenda.Qry001.SQL.Text :=
      'Insert Into Vendas (NumeroNF, Modelo, Vendedor, Cliente, Operacao, Emissao, ' +
      'DESCONTO, Volumes, Especie, Marca, Transporta, SaidaD, Total, Mercadoria, Emitida, registro,'+
      'placa, frete12, Frete, seguro, despesas, saidah, duplicatas, baseicm, baseiss, icms, ' +
      'ICMSSUBSTI, ISS, IPI, SERVICOS, PESOLIQUI, nsuh, nsu, nsud, anvisa, BASESUBSTI, dsc_obs, complemento, finnfe, indfinal, indpres) ' +

      'Values (:NumeroNF, :Modelo, :Vendedor, :Cliente, :Operacao, :Emissao, ' +
      ':DESCONTO, :Volumes, :Especie, :Marca, :Transporta, :SaidaD, :Total, :Mercadoria, :Emitida, :registro,'+
      ':placa, :frete12, :Frete, :seguro, :despesas, :saidah, :duplicatas, :baseicm, :baseiss, :icms, ' +
      ':ICMSSUBSTI, :ISS, :IPI, :SERVICOS, :PESOLIQUI, :nsuh, :nsu, :nsud, :anvisa, :BASESUBSTI, :dsc_obs, :complemento, :finnfe, :indfinal, :indpres)';

    dmPreVenda.Qry001.ParamByName('NumeroNF').AsString := vNumeroVenda;
    dmPreVenda.Qry001.ParamByName('Modelo'  ).AsString := '55';
    dmPreVenda.Qry001.ParamByName('Vendedor').AsString := edtVendedor.Text;
    dmPreVenda.Qry001.ParamByName('Cliente' ).AsString := edtNomeCliente.Text;
    dmPreVenda.Qry001.ParamByName('Operacao').AsString := edtCFOP.Text;
    dmPreVenda.Qry001.ParamByName('Emissao' ).AsDate   := edtDataEmissao.Date;
    dmPreVenda.Qry001.ParamByName('DESCONTO').AsCurrency := StrToFloat(edtDescontoFinal.Text);
    dmPreVenda.Qry001.ParamByName('Volumes' ).AsFloat  := StrToFloat(edtQtdeLinhas.Text);
    dmPreVenda.Qry001.ParamByName('Especie' ).AsString := 'VOLUMES';
    dmPreVenda.Qry001.ParamByName('Marca'   ).AsString := 'VARIAS';
    dmPreVenda.Qry001.ParamByName('Transporta').AsString := edtTransportadora.Text;
    dmPreVenda.Qry001.ParamByName('SaidaD').AsDate := edtDataSai.Date;
    dmPreVenda.Qry001.ParamByName('Total' ).AsFloat := FTotalVenda - StrToFloat(edtDescontoFinal.Text);
    dmPreVenda.Qry001.ParamByName('Mercadoria').AsFloat := FTotalVenda;
    dmPreVenda.Qry001.ParamByName('Emitida'   ).AsString := 'S';
    dmPreVenda.Qry001.ParamByName('registro'  ).AsString := vNumeroRegistro;
    dmPreVenda.Qry001.ParamByName('placa'     ).AsString := FPlaca;
    dmPreVenda.Qry001.ParamByName('frete12'   ).AsString := '0';

    dmPreVenda.Qry001.ParamByName('frete'    ).AsFloat := 0;
    dmPreVenda.Qry001.ParamByName('seguro'   ).AsFloat := 0;
    dmPreVenda.Qry001.ParamByName('despesas' ).AsFloat := 0;
    dmPreVenda.Qry001.ParamByName('saidah'   ).AsString := TimeToStr(Time);
    dmPreVenda.Qry001.ParamByName('duplicatas' ).AsFloat := 0;
    dmPreVenda.Qry001.ParamByName('baseicm'    ).AsFloat := 0;
    dmPreVenda.Qry001.ParamByName('baseiss'    ).AsFloat := 0;
    dmPreVenda.Qry001.ParamByName('icms'       ).AsFloat := 0;
    dmPreVenda.Qry001.ParamByName('icmssubsti' ).AsFloat := 0;
    dmPreVenda.Qry001.ParamByName('iss' ).AsFloat := 0;
    dmPreVenda.Qry001.ParamByName('ipi' ).AsFloat := 0;
    dmPreVenda.Qry001.ParamByName('servicos' ).AsFloat := 0;
    dmPreVenda.Qry001.ParamByName('PESOLIQUI').AsFloat := dmPreVenda.RetornaPesoTotal;
    dmPreVenda.Qry001.ParamByName('nsuh'     ).AsString := TimeToStr(Time);
    dmPreVenda.Qry001.ParamByName('nsu'      ).AsString := vNumeroRegistro;
    dmPreVenda.Qry001.ParamByName('nsud'     ).AsDate := Date;
    dmPreVenda.Qry001.ParamByName('anvisa'   ).AsInteger := 0;
    dmPreVenda.Qry001.ParamByName('BASESUBSTI').AsFloat := 0;
    dmPreVenda.Qry001.ParamByName('finnfe'    ).AsString := '1';
    dmPreVenda.Qry001.ParamByName('indfinal'  ).AsString := Edit1.Text;
    dmPreVenda.Qry001.ParamByName('indpres'   ).AsString := '1';
    dmPreVenda.Qry001.ParamByName('dsc_obs'   ).AsString := edtObservacao.Text;
    dmPreVenda.Qry001.ParamByName('complemento').AsString := edtObservacao.Text;


    dmPreVenda.Qry001.ExecSQL;
    dmPreVenda.Qry001.Close;
    dmPreVenda.Qry001.Transaction.Commit;

    //Inicia a Inserção dos Produtos
    dsProdutos.DataSet.DisableControls;
    try
      dsProdutos.DataSet.First;
      while not dsProdutos.DataSet.Eof do
      begin
        dmPreVenda.Qry001.SQL.Text :=
          'Insert Into Itens001 (NUMERONF, CODIGO, DESCRICAO, QUANTIDADE, UNITARIO, TOTAL, CFOP, REGISTRO,' +
          'IPI, ICM, ISS, MEDIDA, SINCRONIA, LISTA, CUSTO, PESO, BASE, BASEISS, CST_ICMS)' +

          'Values (:NUMERONF, :CODIGO, :DESCRICAO, :QUANTIDADE, :UNITARIO, :TOTAL, :CFOP, :REGISTRO, ' +
          ':IPI, :ICM, :ISS, :MEDIDA, :SINCRONIA, :LISTA, :CUSTO, :PESO, :BASE, :BASEISS, :CST_ICMS)';

        dmPreVenda.Qry001.ParamByName('NUMERONF'  ).AsString := vNumeroVenda;
        dmPreVenda.Qry001.ParamByName('CODIGO'    ).AsString := dsProdutos.DataSet.FieldByName('codigo').AsString;
        dmPreVenda.Qry001.ParamByName('DESCRICAO' ).AsString := dsProdutos.DataSet.FieldByName('descricao').AsString;
        dmPreVenda.Qry001.ParamByName('QUANTIDADE').AsFloat  := dsProdutos.DataSet.FieldByName('qtde').AsFloat;
        dmPreVenda.Qry001.ParamByName('UNITARIO'  ).AsFloat  := dsProdutos.DataSet.FieldByName('vlruni').AsFloat;
        dmPreVenda.Qry001.ParamByName('TOTAL'     ).AsFloat  := dsProdutos.DataSet.FieldByName('vlrtotal').AsFloat;

        if (dsProdutos.DataSet.FieldByName('cfop').AsString <> '') then
          dmPreVenda.Qry001.ParamByName('CFOP'      ).AsString := dsProdutos.DataSet.FieldByName('cfop').AsString
        else
          dmPreVenda.Qry001.ParamByName('CFOP'      ).AsString := FCFOP ;

        dmPreVenda.Qry001.ParamByName('REGISTRO'  ).AsString := dmPreVenda.ProximoRegProduto;

        dmPreVenda.Qry001.ParamByName('IPI'      ).AsFloat  := 0;
        dmPreVenda.Qry001.ParamByName('ICM'      ).AsFloat  := dmPreVenda.BuscarICMS(FNomeCliente, edtCFOP.Text);
        dmPreVenda.Qry001.ParamByName('ISS'      ).AsFloat  := 0;
        dmPreVenda.Qry001.ParamByName('MEDIDA'   ).AsString := 'UN';
        dmPreVenda.Qry001.ParamByName('SINCRONIA').AsFloat  := dsProdutos.DataSet.FieldByName('qtde').AsFloat;
        dmPreVenda.Qry001.ParamByName('LISTA'    ).AsFloat  := dsProdutos.DataSet.FieldByName('vlruni').AsFloat;
        dmPreVenda.Qry001.ParamByName('CUSTO'    ).AsFloat  := 0;
        dmPreVenda.Qry001.ParamByName('PESO'     ).AsFloat  := dsProdutos.DataSet.FieldByName('peso').AsFloat;
        dmPreVenda.Qry001.ParamByName('BASE'     ).AsFloat  := 0;
        dmPreVenda.Qry001.ParamByName('BASEISS'  ).AsFloat  := 0;
        dmPreVenda.Qry001.ParamByName('CST_ICMS'  ).AsString  := '0';


        dmPreVenda.Qry001.ExecSQL;
        dmPreVenda.Qry001.Close;
        dmPreVenda.Qry001.Transaction.Commit;

        //Baixa o Estoque

        dmPreVenda.Qry001.SQL.Text :=
          'Update Estoque Set QTD_ATUAL = (QTD_ATUAL - :pQtde) Where Codigo =:pCodigo';
        dmPreVenda.Qry001.ParamByName('pQtde'  ).AsFloat  := dsProdutos.DataSet.FieldByName('qtde').AsFloat;
        dmPreVenda.Qry001.ParamByName('pCodigo').AsString := dsProdutos.DataSet.FieldByName('codigo').AsString;
        dmPreVenda.Qry001.ExecSQL;
        dmPreVenda.Qry001.Close;
        dmPreVenda.Qry001.Transaction.Commit;

        dsProdutos.DataSet.Next;
      end;
    finally
      dsProdutos.DataSet.EnableControls;
    end;

    //Verifica se vai lançar no caixa ou no banco
    if (FIntegracao = 'Caixa') then
    begin
      //Gera Apenas o Caixa
      dmPreVenda.Qry001.SQL.Text :=
        'Insert Into Caixa (Data, Nome, Historico, Entrada, Saida, Saldo, Registro) ' +
        ' Values (:Data, :Nome, :Historico, :Entrada, :Saida, :Saldo, :Registro)';
      dmPreVenda.Qry001.ParamByName('Data' ).AsDate := Date;
      dmPreVenda.Qry001.ParamByName('Nome' ).AsString := edtCFOP.Text;
      dmPreVenda.Qry001.ParamByName('Historico' ).AsString := 'Venda Nº ' + CompletarZerosEsquerda(StrToInt(vNumeroOriginal), 9) + ' - ' + Copy(edtNomeCliente.Text,1,24);
      dmPreVenda.Qry001.ParamByName('entrada' ).AsFloat := FTotalVenda - StrToFloat(edtDescontoFinal.Text);
      dmPreVenda.Qry001.ParamByName('saida' ).AsFloat := 0;
      dmPreVenda.Qry001.ParamByName('Saldo' ).AsFloat := 0;
      dmPreVenda.Qry001.ParamByName('Registro' ).AsString := dmPreVenda.ProximoRegCaixa;
      dmPreVenda.Qry001.ExecSQL;
      dmPreVenda.Qry001.Close;
      dmPreVenda.Qry001.Transaction.Commit;
    end
    else
    begin
      //Gera Contas a Receber para XX dias
      ListaParcelas := TStringList.Create;

      ListaParcelas := dmPreVenda.QuebrarParcelas(FCondicao);

      vVlrPar  := (FTotalVenda - StrToFloat(edtDescontoFinal.Text)) / ListaParcelas.Count;

      for vInd := 0 to ListaParcelas.Count -1 do
      begin
        vVenc := edtDataSai.Date + StrToInt(ListaParcelas.Strings[vInd]);

        //Gera as Parcelas na Tabela de Recebimentos
        dmPreVenda.Qry001.SQL.Text :=
        'Insert Into Receber (HISTORICO, PORTADOR, DOCUMENTO, NOME, EMISSAO, VENCIMENTO, VALOR_DUPL, RECEBIMENT, VALOR_RECE, VALOR_JURO, ATIVO, CONTA, NOSSONUM, CODEBAR, NUMERONF, REGISTRO) ' +
        ' VALUES (:HISTORICO, :PORTADOR, :DOCUMENTO, :NOME, :EMISSAO, :VENCIMENTO, :VALOR_DUPL, :RECEBIMENT, :VALOR_RECE, :VALOR_JURO, :ATIVO, :CONTA, :NOSSONUM, :CODEBAR, :NUMERONF, :REGISTRO) ' ;

        dmPreVenda.Qry001.ParamByName('HISTORICO').AsString := 'Nota Fiscal: ' + CompletarZerosEsquerda(StrToInt(vNumeroOriginal), 9);
        dmPreVenda.Qry001.ParamByName('PORTADOR' ).AsString := 'Em Carteira';
        dmPreVenda.Qry001.ParamByName('DOCUMENTO').AsString := CompletarZerosEsquerda(StrToInt(vNumeroOriginal), 9) + Alfabeto[vInd + 1];
        dmPreVenda.Qry001.ParamByName('NOME'     ).AsString := edtNomeCliente.Text;
        dmPreVenda.Qry001.ParamByName('EMISSAO'  ).AsDate   := edtDataEmissao.Date;
        dmPreVenda.Qry001.ParamByName('VENCIMENTO').AsDate  := vVenc;
        dmPreVenda.Qry001.ParamByName('VALOR_DUPL' ).AsFloat := vVlrPar;
        dmPreVenda.Qry001.ParamByName('RECEBIMENT' ).Clear;
        dmPreVenda.Qry001.ParamByName('VALOR_RECE' ).AsFloat := 0;
        dmPreVenda.Qry001.ParamByName('VALOR_JURO'  ).AsFloat := 0;
        dmPreVenda.Qry001.ParamByName('ATIVO'  ).AsInteger := 0;
        dmPreVenda.Qry001.ParamByName('CONTA'  ).AsString := edtCFOP.Text;
        dmPreVenda.Qry001.ParamByName('NOSSONUM'  ).AsString := '';
        dmPreVenda.Qry001.ParamByName('CODEBAR'  ).AsString := '';
        dmPreVenda.Qry001.ParamByName('REGISTRO'  ).AsString := dmPreVenda.ProximoRegParcela;
        dmPreVenda.Qry001.ParamByName('NUMERONF'  ).AsString := vNumeroVenda;

        dmPreVenda.Qry001.ExecSQL;
        dmPreVenda.Qry001.Close;
        dmPreVenda.Qry001.Transaction.Commit;
      end;
    end;

    if (FTipoVenda = 'Simples') then
      ImprimirDocumentoVenda(vNumeroVenda);

    Application.MessageBox('Pré Venda Realizada com Sucesso !', 'Pré Venda', MB_OK + MB_ICONINFORMATION);

    btnAlterarTipoVendaClick(Self);
  end;
end;

procedure TFrmPreVenda.edtDescontoFinalExit(Sender: TObject);
var
  vTotalMenosDesc : Real;
begin
  edtDescontoFinal.Text := FormatCurr('###,###,##0.00', StrToFloat(edtDescontoFinal.Text));
  vTotalMenosDesc := FTotalVenda - StrToFloat(edtDescontoFinal.Text);
  edtTotalPreVenda.Text := FormatCurr('###,###,##0.00', vTotalMenosDesc);
end;

procedure TFrmPreVenda.edtDescontoFinalKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    edtDescontoFinalExit(Self);
end;

procedure TFrmPreVenda.edtPercDescontoExit(Sender: TObject);
var
  vTotalMenosDesc : Real;
begin
  edtDescontoFinal.Text := FormatCurr('###,###,##0.00', (StrToFloat(edtPercDesconto.Text)/100) * (FTotalVenda));
  edtPercDesconto.Text := FormatCurr('###,###,##0.00', StrToFloat(edtPercDesconto.Text));
  vTotalMenosDesc := FTotalVenda - ((StrToFloat(edtPercDesconto.Text)/100) * (FTotalVenda));
  edtTotalPreVenda.Text := FormatCurr('###,###,##0.00', vTotalMenosDesc);
end;

procedure TFrmPreVenda.btnCancelarClick(Sender: TObject);
begin
  pnlDadosPreVenda.Enabled := True;
  edtNumPreVenda.Text := '';
  dsProdutos.DataSet.Close;
  edtQtdeLinhas.Text := '0';
  edtTotalPreVenda.Text := '0,00';
  edtDescontoFinal.Text := '0,00';
  btnCancelar.Enabled := false;
  btnInserir.Enabled := true;
  btnSalvar.Enabled := False;

  //Limpa Campos
  edtNumPreVenda.Clear;
  edtNomeCliente.Clear;
  edtDocumento.Clear;
  edtEndereco.Clear;
  edtCFOP.Clear;
  edtVendedor.Clear;
  edtTransportadora.Clear;
  edtDataEmissao.Date := Date;
  edtDataSai.Date := Date;
  edtObservacao.Clear;
end;

procedure TFrmPreVenda.SpeedButton1Click(Sender: TObject);
var
  FrmConsultarVendasEmitidas : TFrmConsultarVendasEmitidas;
begin
  FrmConsultarVendasEmitidas := TFrmConsultarVendasEmitidas.Create(nil);
  try
    FrmConsultarVendasEmitidas.ShowModal;
  finally
    FrmConsultarVendasEmitidas.Free;
  end;
end;

procedure TFrmPreVenda.btnAlterarTipoVendaClick(Sender: TObject);
begin
  btnCancelarClick(Self);
  FormShow(Self);
end;

procedure TFrmPreVenda.SpeedButton3Click(Sender: TObject);
var
  TelaConsultaCliente : TFrmConsultaCliente;
begin
  TelaConsultaCliente := TFrmConsultaCliente.Create(nil);
  try
    TelaConsultaCliente.ShowModal;
    edtNomeCliente.Text := TelaConsultaCliente.FNome;
    edtDocumento.Text   := TelaConsultaCliente.FCGC;
    edtEndereco.Text    := TelaConsultaCliente.FEndereco + ' - ' + TelaConsultaCliente.FBairro;
    FNomeCliente        := TelaConsultaCliente.FNomeCliente;
    FCondicao           := TelaConsultaCliente.FCondicao;
  finally
    TelaConsultaCliente.Free;
  end;
end;

procedure TFrmPreVenda.SpeedButton4Click(Sender: TObject);
var
  TelaConsultaCFOP : TFrmConsultaCFOP;
begin
  TelaConsultaCFOP := TFrmConsultaCFOP.Create(nil);
  try
    TelaConsultaCFOP.ShowModal;
    edtCFOP.Text := TelaConsultaCFOP.FNome2;
    FCFOP        := TelaConsultaCFOP.FCFOP;
    FIntegracao  := TelaConsultaCFOP.FIntegracao;
  finally
    TelaConsultaCFOP.Free;
  end;
end;

procedure TFrmPreVenda.SpeedButton5Click(Sender: TObject);
var
  TelaConsultaVendedor : TFrmConsultaVendedor;
begin
  TelaConsultaVendedor := TFrmConsultaVendedor.Create(nil);
  try
    TelaConsultaVendedor.ShowModal;
    edtVendedor.Text := TelaConsultaVendedor.FNome;
  finally
    TelaConsultaVendedor.Free;
  end;
end;

procedure TFrmPreVenda.SpeedButton6Click(Sender: TObject);
var
  TelaConsultaTransportadora : TFrmConsultaTransportadora;
begin
  TelaConsultaTransportadora := TFrmConsultaTransportadora.Create(nil);
  FPlaca := '';
  try
    TelaConsultaTransportadora.ShowModal;
    edtTransportadora.Text := TelaConsultaTransportadora.FNome;
    FPlaca := TelaConsultaTransportadora.FPlaca;
  finally
    TelaConsultaTransportadora.Free;
  end;
end;

procedure TFrmPreVenda.SpeedButton7Click(Sender: TObject);
var
  TelaConsultaProdutos : TFrmConsultaProdutos;
begin
  if (edtNomeCliente.Text = '') then
    raise Exception.Create('Selecione um Cliente');

  TelaConsultaProdutos := TFrmConsultaProdutos.Create(nil);
  try
    TelaConsultaProdutos.ShowModal;
    {if (TelaConsultaProdutos.FValido) then
    begin
      dmPreVenda.InserirProduto(TelaConsultaProdutos.FCodigo, TelaConsultaProdutos.FDescricao2,
      TelaConsultaProdutos.FQtde, TelaConsultaProdutos.FValUni, TelaConsultaProdutos.FValTot, TelaConsultaProdutos.FPeso, TelaConsultaProdutos.FLivre1,
      TelaConsultaProdutos.FLivre2, TelaConsultaProdutos.FLivre3,
      TelaConsultaProdutos.FCFOP);
    end;}
  finally
    edtQtdeLinhas.Text:= CompletarZerosEsquerda(dmPreVenda.RetornaQtdeLinhas, 4);
    edtTotalPreVenda.Text := FormatCurr('###,###,##0.00', dmPreVenda.RetornaTotalGeral);
    FTotalVenda := dmPreVenda.RetornaTotalGeral;

    TelaConsultaProdutos.Free;
  end;
end;

procedure TFrmPreVenda.SpeedButton8Click(Sender: TObject);
begin
  if (dmPreVenda <> nil) then
  begin
    dmPreVenda.RemoverItem;
    edtQtdeLinhas.Text:= CompletarZerosEsquerda(dmPreVenda.RetornaQtdeLinhas, 4);
    edtTotalPreVenda.Text := FormatCurr('0.00', dmPreVenda.RetornaTotalGeral);
    FTotalVenda := dmPreVenda.RetornaTotalGeral
  end;
end;

end.
