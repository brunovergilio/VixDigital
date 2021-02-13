unit untFiltroRelatorioRomaneioSeparacaoMercadoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  IBCustomDataSet, IBQuery, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppDB,
  ppDBPipe, ppPrnabl, ppCtrls, ppBands, ppCache, ppDesignLayer, ppParameter,
  Datasnap.DBClient, dxmdaset, ppVar, ppStrtch, ppRichTx, ppMemo;

type
  TFrmRomaneioSeparacaoMercadoria = class(TForm)
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
    cdsDados: TdxMemData;
    cdsDadosdescricao: TStringField;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppSystemVariable1: TppSystemVariable;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppDBText1: TppDBText;
    ppShape4: TppShape;
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
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    cdsDadosN1: TFloatField;
    cdsDadosN2: TFloatField;
    cdsDadosN3: TFloatField;
    cdsDadosN4: TFloatField;
    cdsDadosN5: TFloatField;
    cdsDadosN6: TFloatField;
    cdsDadosN7: TFloatField;
    cdsDadosN8: TFloatField;
    cdsDadosN9: TFloatField;
    cdsDadosN10: TFloatField;
    cdsDadosN11: TFloatField;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLine12: TppLine;
    MemoNotas: TppMemo;
    ppLabel5: TppLabel;
    ppLine13: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLabel6: TppLabel;
    ppQuantidadeTotal: TppLabel;
    ppLabel7: TppLabel;
    ppPesoTotal: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLabel8: TppLabel;
    cdsDadosN12: TFloatField;
    cdsDadosN13: TFloatField;
    cdsDadosN14: TFloatField;
    cdsDadosN15: TFloatField;
    cdsDadosN16: TFloatField;
    cdsDadosN17: TFloatField;
    cdsDadosN18: TFloatField;
    cdsDadosN19: TFloatField;
    cdsDadosQtde: TIntegerField;
    cdsDadosQtdeLinha: TFloatField;
    ppShape5: TppShape;
    ppDBText21: TppDBText;
    cdsDadosemitente: TStringField;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape6: TppShape;
    CampoEmitente: TppDBText;
    cdsDadosgrupo: TStringField;
    CampoGrupo: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppShape2: TppShape;
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
  FrmRomaneioSeparacaoMercadoria: TFrmRomaneioSeparacaoMercadoria;

implementation
Uses untUtil, untDados;

{$R *.dfm}

procedure TFrmRomaneioSeparacaoMercadoria.btnLimparClick(Sender: TObject);
begin
  if Application.MessageBox('Confirma a limpeza desse campo?', 'Atenção', MB_YESNO + MB_ICONQUESTION) = id_yes then
  begin
    listaNotas.Clear;
    edtNumNF.Clear;
    edtNumNF.SetFocus;
  end;
end;

procedure TFrmRomaneioSeparacaoMercadoria.btnAdicionarClick(Sender: TObject);
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

procedure TFrmRomaneioSeparacaoMercadoria.btnRelatorioClick(Sender: TObject);
var
  vField : String;
  vProx  : Integer;
  vQtdeTotal : Real;
  vPesoTotal : Real;
  vRota : String;
begin
  if listaNotas.Items.Count =0 then
    raise Exception.Create('Nenhuma nota foi informada para geração desse relatório.');

  Screen.Cursor := crHourGlass;

  cdsDados.Close;
  cdsDados.Open;
  vQtdeTotal := 0;
  vPesoTotal := 0;

  QryDados.Database := dmDados.ConexaoA;
  QryDados.Transaction := dmDados.TransacaoA;

  QryDados.SQL.Text :=
  'Select ' +
  '  vendas.NUMERONF, ' +
  '  ITENS001.DESCRICAO, ' +
  '  ITENS001.QUANTIDADE, ' +
  '  ITENS001.PESO, ' +
  '  emitente.nome, ' +
  '  estoque.nome ' +
  'from ' +
  '  ITENS001, emitente ' +
  'inner join vendas on (vendas.NUMERONF = ITENS001.NUMERONF) ' +
  'inner join estoque on (estoque.descricao = itens001.descricao) ' +
  'Where ' +
  '  vendas.NUMERONF in ('+RetListaNotas+') ' +
  'order by ' +
  '  estoque.nome, ITENS001.DESCRICAO ';

  QryDados.Open;
  while not QryDados.Eof do
  begin
    vQtdeTotal := vQtdeTotal + QryDados.FieldByName('Quantidade').AsFloat;
    vPesoTotal := vPesoTotal + (QryDados.FieldByName('Quantidade').AsFloat * QryDados.FieldByName('PESO').AsFloat);

    if not (cdsDados.Locate('descricao;emitente', VarArrayOf([QryDados.Fields[1].AsString, QryDados.Fields[4].AsString]),[])) then
    begin
      cdsDados.Append;
      cdsDados.FieldByName('descricao').AsString  := QryDados.Fields[1].AsString;
      cdsDados.FieldByName('N1'       ).AsFloat   := QryDados.Fields[2].AsFloat;
      cdsDados.FieldByName('Qtde'     ).AsInteger := 1;
      cdsDados.FieldByName('QtdeLinha').AsFloat   := QryDados.Fields[2].AsFloat;
      cdsDados.FieldByName('emitente' ).AsString  := QryDados.Fields[4].AsString;
      cdsDados.FieldByName('grupo'    ).AsString  := QryDados.Fields[5].AsString;
      cdsDados.Post;
    end
    else
    begin
      cdsDados.Edit;
      vProx  := cdsDados.FieldByName('Qtde').AsInteger + 1;
      vField := 'N' + IntToStr(vProx);
      cdsDados.FieldByName(vField).AsFloat := QryDados.Fields[2].AsFloat;
      cdsDados.FieldByName('Qtde'     ).AsInteger := vProx;
      cdsDados.FieldByName('QtdeLinha').AsFloat := cdsDados.FieldByName('QtdeLinha').AsFloat + QryDados.Fields[2].AsFloat;
      cdsDados.Post;
    end;
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
  ppQuantidadeTotal.Caption := FormatCurr('###,##0.00', vQtdeTotal);
  ppPesoTotal.Caption       := FormatCurr('###,##0.00', vPesoTotal);

  Relatorio.DataPipeline := DBPipeline;
  Relatorio.Print;

  Screen.Cursor := crDefault;
end;

procedure TFrmRomaneioSeparacaoMercadoria.btnRemoverClick(Sender: TObject);
begin
  listaNotas.DeleteSelected;
  edtNumNF.Clear;
  edtNumNF.SetFocus;
end;

procedure TFrmRomaneioSeparacaoMercadoria.edtNumNFKeyPress(Sender: TObject;
  var Key: Char);
begin
  if NOT (key IN ['0'..'9', #8, #13]) then
    key := #0;
  if (Key = #13) then
    btnAdicionarClick(Self);
end;

procedure TFrmRomaneioSeparacaoMercadoria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QryDados.Close;
  Action := caFree;
end;

procedure TFrmRomaneioSeparacaoMercadoria.FormShow(Sender: TObject);
begin
  edtNumNF.Clear;
  edtNumNF.SetFocus;
  listaNotas.Clear;
end;

function TFrmRomaneioSeparacaoMercadoria.RetListaNotas: WideString;
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
