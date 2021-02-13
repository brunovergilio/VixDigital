unit untFiltroRelatorioCompras;

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
  TFrmRelatorioCompras = class(TForm)
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
    dbDadosDetalhes: TppDBPipeline;
    dsDetalhes: TDataSource;
    ppShape10: TppShape;
    ppSystemVariable2: TppSystemVariable;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppTitleBand2: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppShape11: TppShape;
    ppDBText13: TppDBText;
    ppShape12: TppShape;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppShape13: TppShape;
    ppDBText12: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppShape14: TppShape;
    ppLabel19: TppLabel;
    ppDBCalc3: TppDBCalc;
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FTotalGeral : Real;
  end;

var
  FrmRelatorioCompras: TFrmRelatorioCompras;

implementation
uses untDados;

{$R *.dfm}

procedure TFrmRelatorioCompras.cxButton3Click(Sender: TObject);
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
    '  Compras.NUMERONF, ' +
    '  Compras.emissao, ' +
    '  Compras.fornecedor, ' +
    '  Compras.total, ' +
    '  Compras.operacao, ' +
    '  Coalesce(icm.CFOP, ''N/A'') as cfop, ' +
    '  emitente.nome as nome_emitente ' +
    ' from ' +
    '  Compras, emitente ' +
    ' inner join icm on (icm.NOME = Compras.operacao) ' +
    ' Where Compras.emissao BETWEEN :p1 And :p2 ' +
    ' order by ' +
    ' Compras.NUMERONF ' ;
  QryDados.ParamByName('p1').AsDate := edtDataInicial.Date;
  QryDados.ParamByName('p2').AsDate := edtDataFinal.Date;
  QryDados.Open;
  while not QryDados.Eof do
  begin
    FTotalGeral := FTotalGeral + QryDados.Fields[3].AsFloat;

    cdsMaster.Append;
    cdsMasternumeronf.AsString := QryDados.Fields[0].AsString;
    cdsMasteremissao.AsDateTime := QryDados.Fields[1].AsDateTime;
    cdsMastercliente.AsString := QryDados.Fields[2].AsString;
    cdsMastertotal.AsFloat := QryDados.Fields[3].AsFloat;
    cdsMasteroperacao.AsString := QryDados.Fields[4].AsString;
    cdsMastercfop.AsString := QryDados.Fields[5].AsString;
    cdsMasternome_emitente.AsString := QryDados.Fields[6].AsString;
    cdsMaster.Post;

    if not(cdsDetalhes.Locate('cfop;emitente', VarArrayOf([QryDados.Fields[5].AsString, QryDados.Fields[6].AsString]),[])) then
    begin
      cdsDetalhes.Append;
      cdsDetalhescfop.AsString := QryDados.Fields[5].AsString;
      cdsDetalhesdescricao.AsString := QryDados.Fields[4].AsString;
      cdsDetalhestotal.AsFloat := QryDados.Fields[3].AsFloat;
      cdsDetalhesemitente.AsString := QryDados.Fields[6].AsString;
      cdsDetalhes.Post;
    end
    else
    begin
      cdsDetalhes.Edit;
      cdsDetalhestotal.AsFloat := cdsDetalhestotal.AsFloat + QryDados.Fields[3].AsFloat;;
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
