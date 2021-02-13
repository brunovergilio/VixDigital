unit untContasReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  Vcl.StdCtrls, Data.DB, IBCustomDataSet, IBQuery, dxmdaset, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxCalendar, Vcl.Menus, cxButtons, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxGridExportLink, cxCheckBox, Vcl.Samples.Gauges, cxCurrencyEdit, cxBlobEdit,
  ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands, ppCtrls, ppVar,
  ppPrnabl, ppCache, ppDesignLayer, ppParameter, ppDB, ppDBPipe, ppModule,
  raCodMod, ppStrtch, ppRichTx;

type
  TFrmContasReceber = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    cbbCLientes: TcxComboBox;
    Label1: TLabel;
    QryClientes: TIBQuery;
    cdsClientes: TdxMemData;
    cdsClientesnome: TStringField;
    edtVctInicial: TcxDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtVctFinal: TcxDateEdit;
    edtNumNF: TcxTextEdit;
    Label4: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    QryDados01: TIBQuery;
    dsDados01: TDataSource;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cdsDados01: TdxMemData;
    cdsDados01marcar: TSmallintField;
    cdsDados01nome: TStringField;
    cdsDados01emissao: TDateField;
    cdsDados01vencimento: TDateField;
    cdsDados01valor: TFloatField;
    cdsDados01documento: TStringField;
    pnlProgresso: TPanel;
    Label5: TLabel;
    Gauge1: TGauge;
    Label6: TLabel;
    lblQtde: TLabel;
    lblValor: TLabel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cdsDados01id: TIntegerField;
    cxButton3: TcxButton;
    cxButton8: TcxButton;
    ppRelatorio: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppShape2: TppShape;
    ppDBText1: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape3: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    cdsRelatorio: TdxMemData;
    cdsRelatoriodocumento: TStringField;
    cdsRelatoriocliente: TStringField;
    cdsRelatorioemissao: TDateField;
    cdsRelatoriovencimento: TDateField;
    cdsRelatoriovalor: TFloatField;
    cdsRelatorioemitente: TStringField;
    dsRelatorio: TDataSource;
    DBRelatorio: TppDBPipeline;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppShape4: TppShape;
    ppSummaryBand1: TppSummaryBand;
    ppShape5: TppShape;
    ppLabel9: TppLabel;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppQtdeFaturada: TppLabel;
    ppTotalFaturado: TppLabel;
    cdsDados01endere: TStringField;
    cdsDados01comple: TStringField;
    cdsDados01cidade: TStringField;
    cdsDados01cep: TStringField;
    cdsDados01cgc: TStringField;
    cdsDados01ie: TStringField;
    cdsDados01fone: TStringField;
    ppDuplicata: TppReport;
    ppParameterList2: TppParameterList;
    cdsRelatorioendere: TStringField;
    cdsRelatoriocomple: TStringField;
    cdsRelatoriocidade: TStringField;
    cdsRelatoriocep: TStringField;
    cdsRelatoriocgc: TStringField;
    cdsRelatorioie: TStringField;
    cdsRelatoriofone: TStringField;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppShape8: TppShape;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText13: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppLine13: TppLine;
    ppDBText19: TppDBText;
    ppLabel25: TppLabel;
    ppDBText20: TppDBText;
    ppLabel26: TppLabel;
    ppDBText21: TppDBText;
    ppLabel27: TppLabel;
    ppDBText22: TppDBText;
    ppLabel28: TppLabel;
    ppDBText23: TppDBText;
    ppLabel29: TppLabel;
    ppDBText24: TppDBText;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDBText25: TppDBText;
    ppLabel32: TppLabel;
    ppDBText26: TppDBText;
    ppLabel33: TppLabel;
    ppDBText27: TppDBText;
    ppVariable1: TppVariable;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    raCodeModule1: TraCodeModule;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppVariable2: TppVariable;
    ppDBText12: TppDBText;
    ppExtenso: TppRichText;
    ppShape9: TppShape;
    ppSystemVariable2: TppSystemVariable;
    cdsRelatorioendereco_empresa: TStringField;
    cdsRelatoriobairro_empresa: TStringField;
    cdsRelatoriocidade_empresa: TStringField;
    cdsDados01endereco_empresa: TStringField;
    cdsDados01bairro_empresa: TStringField;
    cdsDados01cidade_empresa: TStringField;
    cdsDados01emitente: TStringField;
    Label7: TLabel;
    edtEmissaoFinal: TcxDateEdit;
    edtEmissaoInicial: TcxDateEdit;
    Label8: TLabel;
    cdsDados01cgc_empresa: TStringField;
    cdsDados01ie_empresa: TStringField;
    cdsRelatoriocgc_empresa: TStringField;
    cdsRelatorioie_empresa: TStringField;
    ppLabel34: TppLabel;
    ppDBText14: TppDBText;
    ppDBText17: TppDBText;
    ppLabel35: TppLabel;
    cdsDados01recebido: TFloatField;
    cdsDados01falta: TFloatField;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    ppLabel36: TppLabel;
    ppDBText28: TppDBText;
    ppLabel37: TppLabel;
    ppDBText29: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    cdsRelatoriorecebido: TFloatField;
    cdsRelatoriofalta: TFloatField;
    cxButton6: TcxButton;
    edtDesconto: TcxCurrencyEdit;
    QryAtualizacao: TIBQuery;
    cdsDados01registro: TStringField;
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxGrid1DBTableView1Column6PropertiesChange(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure ppExtensoPrint(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    FQtde  : Integer;
    FTotal : Real;
    FIndex : Integer;
    FIndex2: Integer;
    { Public declarations }
    procedure CalcularFaturamento;
  end;

var
  FrmContasReceber: TFrmContasReceber;

implementation
uses untDados, untUtil;

{$R *.dfm}

procedure TFrmContasReceber.CalcularFaturamento;
begin
  FQtde  := 0;
  FTotal := 0;

  cdsDados01.DisableControls;
  try
    cdsDados01.First;
    while not cdsDados01.Eof do
    begin
      if (cdsDados01marcar.AsInteger = 1) then
      begin
        FQtde := FQtde + 1;
        FTotal := FTotal + cdsDados01valor.AsFloat;
      end;
      cdsDados01.Next;
    end;
    lblQtde.Caption := 'Qtde de Títulos: ' + TextoAlinha(TAlinha.alDIREITA, 5, IntToStr(FQtde), '', '0');
    lblValor.Caption := 'Valor Faturado: ' + FormatFloat('R$ ,0.00;-R$ ,0.00', FTotal);
  finally
    cdsDados01.EnableControls;
    cdsDados01.Locate('id', FIndex, []);
  end;
end;

procedure TFrmContasReceber.cxButton1Click(Sender: TObject);
var
  vID : Integer;
begin
  vId := 0;

  cdsDados01.Close;
  cdsDados01.Open;

  if (cbbCLientes.ItemIndex = 0) then
    cbbCLientes.ItemIndex := -1;

  if (cbbCLientes.ItemIndex = -1) And (edtVctInicial.EditValue = Null) And
     (edtVctFinal.EditValue = Null) And (Trim(edtNumNF.Text) = '') And
     (edtEmissaoFinal.EditValue = Null) And (edtEmissaoInicial.EditValue = Null) then
    raise Exception.Create('É necessário realizar algum filtro !');

  pnlProgresso.Visible := True;

  QryDados01.Database := dmDados.ConexaoA;
  QryDados01.Transaction := dmDados.TransacaoA;

  QryDados01.SQL.Text :=
    'Select Cast(''1'' as integer) as marcar, ' +
    'Documento, receber.Nome, Vencimento, Valor_dupl, Emissao, ' +
    'clifor.endere, clifor.comple, clifor.cidade, clifor.cep, ' +
    'clifor.cgc, clifor.ie, clifor.fone, emitente.endereco, emitente.comple, ' +
    'emitente.municipio, emitente.nome, emitente.cgc, emitente.ie, ' +
    'receber.valor_rece, Valor_dupl-receber.valor_rece as falta, receber.registro ' +
    'From Receber, emitente '+
    'Inner join clifor on (clifor.nome = receber.nome) ' +
    'Where Valor_DUPL > 0 ';
  if (cbbCLientes.ItemIndex > -1) then
  begin
    QryDados01.SQL.Add(' AND receber.Nome =:pNome');
    QryDados01.ParamByName('pNome').AsString := cbbCLientes.Text;
  end;
  if (edtVctInicial.Date > 0) And (edtVctFinal.Date > 0) then
  begin
    QryDados01.SQL.Add(' And Vencimento Between :pDatIni And :pDatFim');
    QryDados01.ParamByName('pDatIni').AsDate := edtVctInicial.Date;
    QryDados01.ParamByName('pDatFim').AsDate := edtVctFinal.Date;
  end;
  if (edtEmissaoInicial.Date > 0) And (edtEmissaoInicial.Date > 0) then
  begin
    QryDados01.SQL.Add(' And emissao Between :pDatIni2 And :pDatFim2');
    QryDados01.ParamByName('pDatIni2').AsDate := edtEmissaoInicial.Date;
    QryDados01.ParamByName('pDatFim2').AsDate := edtEmissaoFinal.Date;
  end;
  if (Trim(edtNumNF.Text) <> '') then
  begin
    QryDados01.SQL.Add(' And Documento Like :pDoc');
    QryDados01.ParamByName('pDoc').AsString := '%' + edtNumNF.Text + '%';
  end;
  QryDados01.SQL.Add(' Order By documento, vencimento');
  QryDados01.Open;
  QryDados01.Last;
  QryDados01.First;

  Gauge1.MaxValue := QryDados01.RecordCount;

  while not QryDados01.Eof do
  begin
    Inc(vID);
    Gauge1.Progress := Gauge1.Progress + 1;

    Application.ProcessMessages;
    cdsDados01.Append;

    cdsDados01marcar.AsInteger := QryDados01.Fields[0].AsInteger;
    cdsDados01documento.AsString := QryDados01.Fields[1].AsString;
    cdsDados01nome.AsString := QryDados01.Fields[2].AsString;
    cdsDados01vencimento.AsDateTime := QryDados01.Fields[3].AsDateTime;
    cdsDados01valor.AsFloat := QryDados01.Fields[4].AsFloat;
    cdsDados01emissao.AsDateTime := QryDados01.Fields[5].AsDateTime;
    cdsDados01endere.AsString := QryDados01.Fields[6].AsString;
    cdsDados01comple.AsString := QryDados01.Fields[7].AsString;
    cdsDados01cidade.AsString := QryDados01.Fields[8].AsString;
    cdsDados01cep.AsString := QryDados01.Fields[9].AsString;
    cdsDados01cgc.AsString := QryDados01.Fields[10].AsString;
    cdsDados01ie.AsString := QryDados01.Fields[11].AsString;
    cdsDados01fone.AsString := QryDados01.Fields[12].AsString;

    cdsDados01endereco_empresa.AsString := QryDados01.Fields[13].AsString;
    cdsDados01bairro_empresa.AsString := QryDados01.Fields[14].AsString;
    cdsDados01cidade_empresa.AsString := QryDados01.Fields[15].AsString;
    cdsDados01emitente.AsString := QryDados01.Fields[16].AsString;
    cdsDados01cgc_empresa.AsString := QryDados01.Fields[17].AsString;
    cdsDados01ie_empresa.AsString := QryDados01.Fields[18].AsString;
    cdsDados01recebido.AsFloat := QryDados01.Fields[19].AsFloat;
    cdsDados01falta.AsFloat := QryDados01.Fields[20].AsFloat;
    cdsDados01registro.AsString := QryDados01.Fields[21].AsString;


    cdsDados01id.AsInteger := vID;

    cdsDados01.Post;

    QryDados01.Next;
  end;
  Gauge1.Progress := 0;
  QryDados01.Close;
  cdsDados01.First;

  Gauge1.Progress := 0;
  pnlProgresso.Visible := False;

  CalcularFaturamento;
end;

procedure TFrmContasReceber.cxButton2Click(Sender: TObject);
begin
  cbbCLientes.ItemIndex := -1;
  edtVctInicial.EditValue := Null;
  edtVctFinal.EditValue := Null;
  edtNumNF.Clear;
  lblQtde.Caption := 'Qtde de Títulos: 0000';
  lblValor.Caption := 'Valor Faturado: R$ 0,00';
  cdsDados01.Close;
  cdsRelatorio.Close;
  FTotal := 0;
  edtDesconto.Value := 0;
  cbbCLientes.SetFocus;
end;

procedure TFrmContasReceber.cxButton3Click(Sender: TObject);
begin
  if (FTotal = 0) then
    raise Exception.Create('Selecione algum título na lista !');

  cdsRelatorio.Close;
  cdsRelatorio.Open;

  cdsDados01.DisableControls;
  try
    cdsDados01.First;
    while not cdsDados01.Eof do
    begin
      if (cdsDados01marcar.AsInteger = 1) then
      begin
        cdsRelatorio.Append;
        cdsRelatoriodocumento.AsString := cdsDados01documento.AsString;
        cdsRelatoriocliente.AsString   := cdsDados01nome.AsString;
        cdsRelatorioemissao.AsDateTime := cdsDados01emissao.AsDateTime;
        cdsRelatoriovencimento.AsDateTime := cdsDados01vencimento.AsDateTime;
        cdsRelatoriovalor.AsFloat := cdsDados01valor.AsFloat;
        cdsRelatorioemitente.AsString := 'POINT PEÇAS';
        cdsRelatoriorecebido.AsFloat := cdsDados01recebido.AsFloat;
        cdsRelatoriofalta.AsFloat := cdsDados01falta.AsFloat;

        cdsRelatorio.Post;
      end;
      cdsDados01.Next;
    end;
  finally
    cdsDados01.EnableControls;
    cdsDados01.Locate('id', FIndex, []);
  end;
  ppQtdeFaturada.Caption  := TextoAlinha(TAlinha.alDIREITA, 5, IntToStr(FQtde), '', '0');
  ppTotalFaturado.Caption := FormatFloat('R$ ,0.00;-R$ ,0.00', FTotal);
  ppRelatorio.DataPipeline := DBRelatorio;
  ppRelatorio.Print;
end;

procedure TFrmContasReceber.cxButton4Click(Sender: TObject);
begin
  cdsDados01.DisableControls;
  try
    cdsDados01.First;
    while not cdsDados01.Eof do
    begin
      cdsDados01.Edit;
      cdsDados01marcar.AsInteger := 1;
      cdsDados01.Post;

      cdsDados01.Next;
    end;
  finally
    cdsDados01.First;
    cdsDados01.EnableControls;
    CalcularFaturamento;
  end;
end;

procedure TFrmContasReceber.cxButton5Click(Sender: TObject);
begin
  cdsDados01.DisableControls;
  try
    cdsDados01.First;
    while not cdsDados01.Eof do
    begin
      cdsDados01.Edit;
      cdsDados01marcar.AsInteger := 0;
      cdsDados01.Post;

      cdsDados01.Next;
    end;
  finally
    cdsDados01.First;
    cdsDados01.EnableControls;
    CalcularFaturamento;
  end;
end;

procedure TFrmContasReceber.cxButton6Click(Sender: TObject);
var
  vDesc : Real;
begin
  if edtDesconto.Value = 0 then
    raise Exception.Create('Informe o desconto a ser concedido !');
  if cdsDados01.RecordCount = 0 then
    raise Exception.Create('A lista de contas a receber está vazia !');

  if Application.MessageBox('Confirma o desconto?', 'Atenção', MB_YESNO + MB_ICONQUESTION) = id_yes then
  begin
    cdsDados01.DisableControls;
    try
      cdsDados01.First;
      while not cdsDados01.Eof do
      begin
        if (cdsDados01marcar.AsInteger = 1) then
        begin
          vDesc := cdsDados01valor.AsFloat * (edtDesconto.Value / 100);
          QryAtualizacao.SQL.Text :=
            'Update receber set valor_dupl =:NovoValor Where Registro =:Registro';
          QryAtualizacao.ParamByName('NovoValor').AsFloat  := cdsDados01valor.AsFloat - vDesc;
          QryAtualizacao.ParamByName('Registro' ).AsString := cdsDados01registro.AsString;
          QryAtualizacao.ExecSQL;
          QryAtualizacao.Close;
          QryAtualizacao.Transaction.CommitRetaining;
        end;
        cdsDados01.Next;
      end;
    finally
      cxButton1Click(Self);
      cdsDados01.First;
      cdsDados01.EnableControls;
    end;



  end;
end;

procedure TFrmContasReceber.cxButton8Click(Sender: TObject);
begin
  if (FTotal = 0) then
    raise Exception.Create('Selecione algum título na lista !');

  cdsRelatorio.Close;
  cdsRelatorio.Open;

  cdsDados01.DisableControls;
  try
    cdsDados01.First;
    while not cdsDados01.Eof do
    begin
      if (cdsDados01marcar.AsInteger = 1) then
      begin
        cdsRelatorio.Append;
        cdsRelatoriodocumento.AsString := cdsDados01documento.AsString;
        cdsRelatoriocliente.AsString   := cdsDados01nome.AsString;
        cdsRelatorioemissao.AsDateTime := cdsDados01emissao.AsDateTime;
        cdsRelatoriovencimento.AsDateTime := cdsDados01vencimento.AsDateTime;
        cdsRelatoriovalor.AsFloat := cdsDados01valor.AsFloat;
        cdsRelatorioemitente.AsString := cdsDados01emitente.AsString;
        cdsRelatorioendere.AsString := cdsDados01endere.AsString;
        cdsRelatoriocomple.AsString := cdsDados01comple.AsString;
        cdsRelatoriocidade.AsString := cdsDados01cidade.AsString;
        cdsRelatoriocep.AsString := cdsDados01cep.AsString;
        cdsRelatoriocgc.AsString := cdsDados01cgc.AsString;
        cdsRelatorioie.AsString := cdsDados01ie.AsString;
        cdsRelatoriofone.AsString := cdsDados01fone.AsString;

        cdsRelatorioendereco_empresa.AsString := cdsDados01endereco_empresa.AsString;
        cdsRelatoriobairro_empresa.AsString := cdsDados01bairro_empresa.AsString;
        cdsRelatoriocidade_empresa.AsString := cdsDados01cidade_empresa.AsString;
        cdsRelatoriocgc_empresa.AsString := cdsDados01cgc_empresa.AsString;
        cdsRelatorioie_empresa.AsString := cdsDados01ie_empresa.AsString;
      end;
      cdsDados01.Next;
    end;
  finally
    cdsDados01.EnableControls;
    cdsDados01.Locate('id', FIndex, []);
  end;
  ppDuplicata.DataPipeline := DBRelatorio;
  ppDuplicata.Print;
end;

procedure TFrmContasReceber.cxGrid1DBTableView1Column6PropertiesChange(
  Sender: TObject);
begin
  FIndex := cdsDados01id.AsInteger;

  cdsDados01.Edit;
  if cdsDados01marcar.AsInteger = 1 then
    cdsDados01marcar.AsInteger := 0
  else
    cdsDados01marcar.AsInteger := 1;
  cdsDados01.Post;
  CalcularFaturamento;
end;

procedure TFrmContasReceber.FormShow(Sender: TObject);
begin
  cbbCLientes.Clear;
  cdsClientes.Close;
  cdsClientes.Open;

  QryClientes.Database := dmDados.ConexaoA;
  QryClientes.Transaction := dmDados.TransacaoA;

  QryClientes.SQL.Text := 'Select nome from CLIFOR order by nome';
  QryClientes.Open;
  while not QryClientes.Eof do
  begin
    if not cdsClientes.Locate('nome', QryClientes.Fields[0].AsString, []) then
    begin
      cdsClientes.Append;
      cdsClientesnome.AsString := QryClientes.Fields[0].AsString;
      cdsClientes.Post;
    end;
    QryClientes.Next;
  end;
  QryClientes.Close;

  if (cdsClientes.RecordCount > 0) then
  begin
    cdsClientes.First;
    while not cdsClientes.Eof do
    begin
      cbbCLientes.Properties.Items.Add(cdsClientesnome.AsString);

      cdsClientes.Next;
    end;
  end;
  edtDesconto.Value := 0;
end;

procedure TFrmContasReceber.ppExtensoPrint(Sender: TObject);
begin
  ppExtenso.RichText := extenso(cdsRelatoriovalor.AsFloat);
end;

end.
