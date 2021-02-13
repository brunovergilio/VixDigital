unit untFiltroRelatorioVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls,
  dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  Vcl.StdCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.Menus,
  cxButtons, Data.DB, IBCustomDataSet, IBQuery, dxmdaset, ppComm, ppRelatv,
  ppDB, ppDBPipe, ppProd, ppClass, ppReport, ppCtrls, ppBands, ppPrnabl,
  ppCache, ppDesignLayer, ppParameter, ppStrtch, ppSubRpt, ppVar;

type
  TFrmRelatorioVendas = class(TForm)
    Panel1: TPanel;
    edtDataInicial: TcxDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtDataFinal: TcxDateEdit;
    Panel2: TPanel;
    cxButton3: TcxButton;
    QryDados: TIBQuery;
    cdsMaster: TdxMemData;
    cdsMasternumeronf: TStringField;
    cdsMasterstatus: TStringField;
    cdsMasteremissao: TDateField;
    cdsMastercliente: TStringField;
    cdsMastertotal: TFloatField;
    cdsMasteroperacao: TStringField;
    cdsMastercfop: TStringField;
    DBDados: TppDBPipeline;
    dsDados: TDataSource;
    Relatorio: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    lblDataInicial: TppLabel;
    lblDataFinal: TppLabel;
    ppLabel4: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLabel10: TppLabel;
    ppDBText1: TppDBText;
    ppShape4: TppShape;
    cdsMasternome_emitente: TStringField;
    cdsDetalhes: TdxMemData;
    cdsDetalhescfop: TStringField;
    cdsDetalhesdescricao: TStringField;
    cdsDetalhestotal: TFloatField;
    cdsDetalhesemitente: TStringField;
    ppSummaryBand1: TppSummaryBand;
    ppShape5: TppShape;
    ppLabel11: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    dbDadosDetalhes: TppDBPipeline;
    dsDetalhes: TDataSource;
    CampoEmitente: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppShape8: TppShape;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppShape9: TppShape;
    ppLabel15: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine2: TppLine;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppShape10: TppShape;
    ppSystemVariable2: TppSystemVariable;
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FTotalGeral : Real;
  end;

var
  FrmRelatorioVendas: TFrmRelatorioVendas;

implementation
uses untDados;

{$R *.dfm}

procedure TFrmRelatorioVendas.cxButton3Click(Sender: TObject);
begin
  if (edtDataFinal.EditValue = null) Or (edtDataFinal.EditValue = null) then
    raise Exception.Create('Informe a Data Inicial e a Data Final');

  cdsMaster.Close;
  cdsMaster.Open;
  cdsDetalhes.Close;
  cdsDetalhes.Open;
  FTotalGeral := 0;

  QryDados.Database := dmDados.ConexaoA;
  QryDados.Transaction := dmDados.TransacaoA;

  QryDados.SQL.Text :=
    'Select ' +
    '  vendas.NUMERONF, ' +
    '  vendas.STATUS, ' +
    '  vendas.emissao, ' +
    '  vendas.cliente, ' +
    '  vendas.total, ' +
    '  vendas.operacao, ' +
    '  Coalesce(icm.CFOP, ''N/A'') as cfop, ' +
    '  emitente.nome as nome_emitente ' +
    ' from ' +
    '  vendas, emitente ' +
    ' inner join icm on (icm.NOME = vendas.operacao) ' +
    ' Where vendas.emissao BETWEEN :p1 And :p2 ' +
    ' order by ' +
    ' vendas.NUMERONF ' ;
  QryDados.ParamByName('p1').AsDate := edtDataInicial.Date;
  QryDados.ParamByName('p2').AsDate := edtDataFinal.Date;
  QryDados.Open;
  while not QryDados.Eof do
  begin
    FTotalGeral := FTotalGeral + QryDados.Fields[4].AsFloat;

    cdsMaster.Append;
    cdsMasternumeronf.AsString := QryDados.Fields[0].AsString;
    cdsMasterstatus.AsString := QryDados.Fields[1].AsString;
    cdsMasteremissao.AsDateTime := QryDados.Fields[2].AsDateTime;
    cdsMastercliente.AsString := QryDados.Fields[3].AsString;
    cdsMastertotal.AsFloat := QryDados.Fields[4].AsFloat;
    cdsMasteroperacao.AsString := QryDados.Fields[5].AsString;
    cdsMastercfop.AsString := QryDados.Fields[6].AsString;
    cdsMasternome_emitente.AsString := QryDados.Fields[7].AsString;
    cdsMaster.Post;

    if not(cdsDetalhes.Locate('cfop;emitente', VarArrayOf([QryDados.Fields[6].AsString, QryDados.Fields[7].AsString]),[])) then
    begin
      cdsDetalhes.Append;
      cdsDetalhescfop.AsString := QryDados.Fields[6].AsString;
      cdsDetalhesdescricao.AsString := QryDados.Fields[5].AsString;
      cdsDetalhestotal.AsFloat := QryDados.Fields[4].AsFloat;
      cdsDetalhesemitente.AsString := QryDados.Fields[7].AsString;
      cdsDetalhes.Post;
    end
    else
    begin
      cdsDetalhes.Edit;
      cdsDetalhestotal.AsFloat := cdsDetalhestotal.AsFloat + QryDados.Fields[4].AsFloat;;
      cdsDetalhes.Post;
    end;
    QryDados.Next;
  end;
  QryDados.Close;

  lblDataInicial.Caption := edtDataInicial.Text;
  lblDataFinal.Caption   := edtDataFinal.Text;

  Relatorio.DataPipeline := DBDados;
  Relatorio.Print;
end;

end.
