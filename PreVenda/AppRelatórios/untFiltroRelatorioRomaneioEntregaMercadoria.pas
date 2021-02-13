unit untFiltroRelatorioRomaneioEntregaMercadoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  IBCustomDataSet, IBQuery, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppDB,
  ppDBPipe, ppPrnabl, ppCtrls, ppBands, ppCache, ppDesignLayer, ppParameter,
  Datasnap.DBClient, dxmdaset, ppVar, ppStrtch, ppRichTx, ppMemo;

type
  TFrmRomaneioEntregaMercadoria = class(TForm)
    edtNumNF: TEdit;
    Label1: TLabel;
    btnAdicionar: TBitBtn;
    btnRemover: TBitBtn;
    listaNotas: TListBox;
    btnLimpar: TBitBtn;
    QryDados: TIBQuery;
    btnRelatorio: TBitBtn;
    Relatorio: TppReport;
    dsDados: TDataSource;
    DBPipeline: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppSystemVariable1: TppSystemVariable;
    ppLine12: TppLine;
    MemoNotas: TppMemo;
    ppLabel5: TppLabel;
    ppLine13: TppLine;
    ppSummaryBand1: TppSummaryBand;
    CampoCliente: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    CampoNumeroNF: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText5: TppDBText;
    ppLabel8: TppLabel;
    ppDBText6: TppDBText;
    ppLabel9: TppLabel;
    ppDBText7: TppDBText;
    ppLabel10: TppLabel;
    ppDBText8: TppDBText;
    ppLabel11: TppLabel;
    ppDBText9: TppDBText;
    ppLabel12: TppLabel;
    ppDBText10: TppDBText;
    ppLine2: TppLine;
    cdsDados: TdxMemData;
    cdsDadosNUMERONF: TStringField;
    cdsDadosDESCRICAO: TStringField;
    cdsDadosQUANTIDADE: TFloatField;
    cdsDadoscodigo: TStringField;
    cdsDadosUNITARIO: TFloatField;
    cdsDadosTOTAL: TFloatField;
    cdsDadosCLIENTE: TStringField;
    cdsDadosFONE: TStringField;
    cdsDadosCEP: TStringField;
    cdsDadosCIDADE: TStringField;
    cdsDadosENDERE: TStringField;
    cdsDadosCOMPLE: TStringField;
    cdsDadostotalnf: TFloatField;
    cdsDadosnome: TStringField;
    CampoEmitente: TppDBText;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppShape3: TppShape;
    procedure FormShow(Sender: TObject);
    procedure edtNumNFKeyPress(Sender: TObject; var Key: Char);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FNotas : WideString;
    { Private declarations }
    function RetListaNotas : WideString;
  public
    { Public declarations }
  end;

var
  FrmRomaneioEntregaMercadoria: TFrmRomaneioEntregaMercadoria;

implementation
Uses untUtil, untDados;

{$R *.dfm}

procedure TFrmRomaneioEntregaMercadoria.btnLimparClick(Sender: TObject);
begin
  if Application.MessageBox('Confirma a limpeza desse campo?', 'Atenção', MB_YESNO + MB_ICONQUESTION) = id_yes then
  begin
    listaNotas.Clear;
    edtNumNF.Clear;
    edtNumNF.SetFocus;
  end;
end;

procedure TFrmRomaneioEntregaMercadoria.btnAdicionarClick(Sender: TObject);
var
  NumNF : String;
begin
  if Trim(edtNumNF.Text) <> '' then
  begin
    if Copy(edtNumNF.Text,1,3) <> 'SIM' then
      NumNF := TextoAlinha(TAlinha.alDIREITA, 9, edtNumNF.Text, '', '0') + '001'
    else
      NumNF := edtNumNF.Text;

    if not dmDados.NotaExiste(NumNF) then
    begin
      edtNumNF.SetFocus;
      raise Exception.Create('Essa Nota Fiscal não Exíste no Small');
    end
    else
    begin
      listaNotas.Items.Add(edtNumNF.Text);
      edtNumNF.Clear;
      edtNumNF.SetFocus;
    end;
  end
  else
  begin
    edtNumNF.SetFocus;
    raise Exception.Create('Informe o Número da Nota Fiscal');
  end;
end;

procedure TFrmRomaneioEntregaMercadoria.btnRelatorioClick(Sender: TObject);
var
  vRota : String;
begin
  if listaNotas.Items.Count =0 then
    raise Exception.Create('Nenhuma nota foi informada para geração desse relatório.');

  Screen.Cursor := crHourGlass;

  cdsDados.Close;
  cdsDados.Open;

  QryDados.Database := dmDados.ConexaoA;
  QryDados.Transaction := dmDados.TransacaoA;

  QryDados.SQL.Text :=
    'Select ' +
    '  vendas.NUMERONF, ' +
    '  ITENS001.DESCRICAO, ' +
    '  ITENS001.QUANTIDADE, ' +
    '  lpad(ITENS001.CODIGO, 5,''0'') as codigo, ' +
    '  ITENS001.UNITARIO, ' +
    '  ITENS001.TOTAL, ' +
    '  VENDAS.CLIENTE, ' +
    '  CLIFOR.FONE, ' +
    '  CLIFOR.CEP, ' +
    '  CLIFOR.CIDADE || '' - '' || CLIFOR.ESTADO AS CIDADE, ' +
    '  CLIFOR.ENDERE, ' +
    '  CLIFOR.COMPLE, ' +
    '  vendas.TOTAL as totalnf, ' +
    '  emitente.nome ' +
    '  from ' +
    '  ITENS001, emitente ' +
    'inner join vendas on (vendas.NUMERONF = ITENS001.NUMERONF) ' +
    'inner join CLIFOR on (CLIFOR.NOME = vendas.CLIENTE) ' +
    'Where ' +
    '  vendas.NUMERONF in ('+RetListaNotas+') ' +
    'order by ' +
    '  vendas.CLIENTE, VENDAS.NUMERONF, ITENS001.DESCRICAO ';

  QryDados.Open;
  while not QryDados.Eof do
  begin
    cdsDados.Append;
    cdsDadosNUMERONF.AsString := QryDados.Fields[0].AsString;
    cdsDadosDESCRICAO.AsString := QryDados.Fields[1].AsString;
    cdsDadosQUANTIDADE.AsFloat := QryDados.Fields[2].AsFloat;
    cdsDadoscodigo.AsString := QryDados.Fields[3].AsString;
    cdsDadosUNITARIO.AsFloat := QryDados.Fields[4].AsFloat;
    cdsDadosTOTAL.AsFloat := QryDados.Fields[5].AsFloat;
    cdsDadosCLIENTE.AsString := QryDados.Fields[6].AsString;
    cdsDadosFONE.AsString := QryDados.Fields[7].AsString;
    cdsDadosCEP.AsString := QryDados.Fields[8].AsString;
    cdsDadosCIDADE.AsString := QryDados.Fields[9].AsString;
    cdsDadosENDERE.AsString := QryDados.Fields[10].AsString;
    cdsDadosCOMPLE.AsString := QryDados.Fields[11].AsString;
    cdsDadostotalnf.AsString := QryDados.Fields[12].AsString;
    cdsDadosnome.AsString := QryDados.Fields[13].AsString;

    cdsDados.Post;

    QryDados.Next;
  end;
  QryDados.Close;

  vRota := InputBox('Informe a Rota', 'ROTA', '');
  if Trim(vRota) = '' then
  begin
    Screen.Cursor := crDefault;
    raise Exception.Create('O Relatório não poderá ser gerado sem informação da ROTA');
  end;

  MemoNotas.Lines.Text      := FNotas + Chr(13) + 'ROTA - ' + UpperCase(vRota);
  Relatorio.DataPipeline := DBPipeline;
  Relatorio.Print;

  Screen.Cursor := crDefault;
end;

procedure TFrmRomaneioEntregaMercadoria.btnRemoverClick(Sender: TObject);
begin
  listaNotas.DeleteSelected;
  edtNumNF.Clear;
  edtNumNF.SetFocus;
end;

procedure TFrmRomaneioEntregaMercadoria.edtNumNFKeyPress(Sender: TObject;
  var Key: Char);
begin
  if NOT (key IN ['0'..'9', #8, #13]) then
    key := #0;
  if (Key = #13) then
    btnAdicionarClick(Self);
end;

procedure TFrmRomaneioEntregaMercadoria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QryDados.Close;
  Action := caFree;
end;

procedure TFrmRomaneioEntregaMercadoria.FormShow(Sender: TObject);
begin
  edtNumNF.Clear;
  edtNumNF.SetFocus;
  listaNotas.Clear;
end;

function TFrmRomaneioEntregaMercadoria.RetListaNotas: WideString;
var
  vInd   : Integer;
  vSaida : String;
begin
  vSaida := '';
  FNotas := '';
  for vInd := 0 to listaNotas.Count - 1 do
  begin
    if Copy(listaNotas.Items[vInd],1,3) <> 'SIM' then
      vSaida := vSaida + '''' + TextoAlinha(TAlinha.alDIREITA, 9, listaNotas.Items[vInd], '', '0') + '001' + '''' + ','
    else
      vSaida := vSaida + '''' + listaNotas.Items[vInd] + '''' + ',';
    FNotas := FNotas + listaNotas.Items[vInd] + ', ';
  end;
  Delete(vSaida, Length(vSaida), 1);
  Delete(FNotas, Length(FNotas), 1);
  Result := vSaida;
end;

end.
