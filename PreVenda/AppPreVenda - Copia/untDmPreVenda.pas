unit untDmPreVenda;

interface

uses
  SysUtils, Classes, DB, DBClient, Forms, StrUtils, dxmdaset, FireDAC.Stan.Intf, 
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, 
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, 
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmPreVenda = class(TDataModule)
    Qry001: TFDQuery;
    QryAux: TFDQuery;
    QryAux2: TFDQuery;
    cdsProdutos: TdxMemData;
    cdsProdutoscodigo: TStringField;
    cdsProdutosDescricao: TStringField;
    cdsProdutosvlruni: TFloatField;
    cdsProdutosvlrTotal: TFloatField;
    cdsProdutosPeso: TFloatField;
    cdsProdutoscfop: TStringField;
    cdsProdutosqtde: TFloatField;
    cdsProdutoslivre1: TStringField;
    cdsProdutoslivre2: TStringField;
    cdsProdutoslivre3: TStringField;
    procedure cdsProdutosqtdeChange(Sender: TField);
    procedure cdsProdutosvlruniChange(Sender: TField);
  private
    { Private declarations }
  public
    FOrigem : String;

    { Public declarations }
    function GerarNumeroNF(pTipoVenda:String) : Integer;
    function AbrirCdsProdutos : TDataSet;
    procedure InserirProduto(pCodigo: String; pDsc: String; pQtde:Real; PVlrUni:Double; pVlrTot, pPeso:Double; pCFOP:String);
    function RetornaQtdeLinhas : Integer;
    function RetornaTotalGeral : Double;
    procedure RemoverItem;
    function ProximoRegProduto : String;
    function ProximoRegParcela : String;
    function BuscarICMS(Cliente, CFOP : String) : Double;
    function RetornaPesoTotal : Double;
    function ProximoRegCaixa: String;

    function QuebrarParcelas(pCondicao : String) : TStringList;
  end;

var
  dmPreVenda: TdmPreVenda;
  //cdsProdutos : TClientDataSet;

implementation
uses
  uDMPrincipal, uFuncoes, uPreVenda;

{$R *.dfm}

{ TDataModule1 }



{ TDataModule1 }

function TdmPreVenda.AbrirCdsProdutos : TDataSet;
begin
  cdsProdutos.Open;
  Result := cdsProdutos;
end;

function TdmPreVenda.BuscarICMS(Cliente, CFOP: String): Double;
var
  vEstado : String;
begin
  QryAux2.SQL.Text := 'Select estado From CliFor Where Nome =:Nome';
  QryAux2.ParamByName('Nome').AsString := Cliente;
  QryAux2.Open;
  vEstado := QryAux2.FieldByName('estado').AsString;
  QryAux2.Close;
  if (vEstado = '') then
    vEstado := 'ES_'
  else
    vEstado:= vEstado + '_';

  QryAux2.SQL.Text :=
    'Select ' + vEstado + ' From ICM Where Nome=:Nome';
  QryAux2.ParamByName('Nome').AsString := CFOP;
  QryAux2.Open;
  Result := QryAux2.Fields[0].AsFloat;
  QryAux2.Close;
end;

procedure TdmPreVenda.cdsProdutosqtdeChange(Sender: TField);
var
  vCodigo : String;
begin
  if (cdsProdutosqtde.Value > 0) And (FOrigem <> 'Produtos') then
  begin
    cdsProdutosvlrTotal.Value := cdsProdutosqtde.Value * cdsProdutosvlruni.Value;

    vCodigo := cdsProdutosCodigo.AsString;

    FrmPreVenda.FTotalVenda := RetornaTotalGeral;
    FrmPreVenda.edtTotalPreVenda.Text := FormatCurr('R$ ###,###,##0.00', FrmPreVenda.FTotalVenda);
    cdsProdutos.Locate('Codigo', vCodigo, []);
  end;
end;

procedure TdmPreVenda.cdsProdutosvlruniChange(Sender: TField);
var
  vCodigo : String;
begin
  if (cdsProdutosqtde.Value > 0) And (FOrigem <> 'Produtos') then
  begin
    cdsProdutosvlrTotal.Value := cdsProdutosqtde.Value * cdsProdutosvlruni.Value;

    vCodigo := cdsProdutosCodigo.AsString;

    FrmPreVenda.FTotalVenda := RetornaTotalGeral;
    FrmPreVenda.edtTotalPreVenda.Text := FormatCurr('R$ ###,###,##0.00', FrmPreVenda.FTotalVenda);
    cdsProdutos.Locate('Codigo', vCodigo, []);
  end;
end;

function TdmPreVenda.GerarNumeroNF(pTipoVenda:String): Integer;
begin
  if (pTipoVenda = 'Simples') then
  begin
    QryAux.SQL.Text :=
      'SELECT GEN_ID(G_VENDAS, 1) FROM RDB$DATABASE';
    QryAux.Open;
    Result := QryAux.Fields[0].AsInteger;
  end
  else
  begin
    QryAux.SQL.Text :=
      'Select GEN_ID(G_NFCE, 1) FROM RDB$DATABASE';
    QryAux.Open;
    Result  := QryAux.Fields[0].AsInteger;
  end;
end;

function TdmPreVenda.ProximoRegCaixa: String;
begin
  QryAux.SQL.Text :=
    'SELECT GEN_ID(G_CAIXA, 1) FROM RDB$DATABASE';
  QryAux.Open;
  Result := CompletarZerosEsquerda(QryAux.Fields[0].AsInteger,10);
end;


procedure TdmPreVenda.InserirProduto(pCodigo: String; pDsc: String; pQtde:Real; PVlrUni:Double; pVlrTot, pPeso:Double; pCFOP:String);
begin
  FOrigem := 'Produtos';

  cdsProdutos.Append;
  cdsProdutos.FieldByName('Codigo').AsString := pCodigo;
  cdsProdutos.FieldByName('Descricao').AsString := pDsc;
  cdsProdutos.FieldByName('qtde').AsFloat := pQtde;
  cdsProdutos.FieldByName('vlrUni').AsFloat := PVlrUni;
  cdsProdutos.FieldByName('vlrTotal').AsFloat := pVlrTot;
  cdsProdutos.FieldByName('Peso').AsFloat := pPeso;
  cdsProdutos.FieldByName('cfop').AsString := pCFOP;


  cdsProdutos.Post;

  FOrigem := '';
end;

function TdmPreVenda.ProximoRegParcela: String;
var
  vProx : Integer;
begin
  QryAux.SQL.Text :=
    'Select GEN_ID(G_RECEBER, 1) FROM RDB$DATABASE';
  QryAux.Open;
  vProx  := QryAux.Fields[0].AsInteger;
  Result := CompletarZerosEsquerda(vProx,10);
end;



function TdmPreVenda.ProximoRegProduto: String;
var
  vProx : Integer;
begin
  QryAux.SQL.Text :=
    'SELECT GEN_ID(G_ITENS001, 1) FROM RDB$DATABASE';
  QryAux.Open;
  vProx := QryAux.Fields[0].AsInteger;
  Result := CompletarZerosEsquerda(vProx,10);
end;

function TdmPreVenda.QuebrarParcelas(pCondicao:String): TStringList;
var
  strLinha: String;
  Parte : TStringList;
begin
  Parte := TStringList.Create;
  if (pCondicao <> '') And (AnsiContainsText(pCondicao, '/')) then
  begin
    strLinha := pCondicao;
    Parte.Delimiter := '/';
    Parte.DelimitedText := strLinha;
    Parte.Clear;
    ExtractStrings(['/'],[], PChar(strLinha), Parte);
  end
  else
  begin
    Parte.Add('0');
  end;
  Result := Parte;
end;

procedure TdmPreVenda.RemoverItem;
begin
  if (cdsProdutos <> nil) then
  begin
    if (cdsProdutos.RecordCount > 0) then
    begin
      cdsProdutos.Delete;
    end;
  end;
end;


function TdmPreVenda.RetornaPesoTotal: Double;
begin
  cdsProdutos.DisableControls;
  Result := 0;
  try
    cdsProdutos.First;
    while not cdsProdutos.Eof do
    begin
      Result := Result + ((cdsProdutos.FieldByName('peso').AsFloat) * (cdsProdutos.FieldByName('qtde').AsInteger));

      cdsProdutos.Next;
    end;
  finally
    cdsProdutos.First;
    cdsProdutos.EnableControls;
  end;
end;

function TdmPreVenda.RetornaQtdeLinhas: Integer;
begin
  Result := cdsProdutos.RecordCount;
end;

function TdmPreVenda.RetornaTotalGeral: Double;
begin
  cdsProdutos.DisableControls;
  Result := 0;
  try
    cdsProdutos.First;
    while not cdsProdutos.Eof do
    begin
      Result := Result + (cdsProdutos.FieldByName('vlrTotal').AsFloat);

      cdsProdutos.Next;
    end;
  finally
    cdsProdutos.First;
    cdsProdutos.EnableControls;
  end;
end;

end.
