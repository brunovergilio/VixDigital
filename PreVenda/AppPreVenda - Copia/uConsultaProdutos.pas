unit uConsultaProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB;

type
  TFrmConsultaProdutos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    edtPesquisa: TEdit;
    lblTitulo: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    rgOpcoes: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure edtPesquisaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure rgOpcoesClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FCodigo : String;
    FDescricao: String;
    FQtde : Real;
    FValUni: Double;
    FValTot : Double;
    FDescricao2 : String;
    FPeso : Double;
    FLivre1: String;
    FLivre2: String;
    FLivre3: String;
    FLivre4: String;
    FCFOP : String;



    FValido : Boolean;
  end;

var
  FrmConsultaProdutos: TFrmConsultaProdutos;

implementation
Uses uDmPesquisaProdutos, uFuncoes, untDmPreVenda, uPreVenda;

{$R *.dfm}

procedure TFrmConsultaProdutos.BitBtn1Click(Sender: TObject);
var
  vQtde : String;
begin
  vQtde := '1';
  if not InputQuery('Digite a Quantidade', 'Quantidade', vQtde) then
    Exit
  else
  begin
    vQtde := StringReplace(vQtde, '.', ',', [rfReplaceAll]);
    FQtde := StrTofloat(vQtde);
  end;
  FValido     := True;
  FDescricao  := DataSource1.DataSet.FieldByName('descricao').AsString;
  FDescricao2 := DataSource1.DataSet.FieldByName('descricao2').AsString;
  FCodigo     := DataSource1.DataSet.FieldByName('codigo').AsString;
  FPeso       :=  DataSource1.DataSet.FieldByName('Peso').AsFloat;
  FLivre1     :=  DataSource1.DataSet.FieldByName('Livre1').AsString;
  FLivre2     :=  DataSource1.DataSet.FieldByName('Livre2').AsString;
  FLivre3     :=  DataSource1.DataSet.FieldByName('Livre3').AsString;
  FLivre4     :=  DataSource1.DataSet.FieldByName('Livre4').AsString;
  //FQtde      := StrToInt(edtQtde.Text);
  FCFOP      := DataSource1.DataSet.FieldByName('CFOP').AsString;

  FValUni    := DataSource1.DataSet.FieldByName('preco').AsFloat;

  FValTot := FQtde * FValUni;

  //Self.Close;
  dmPreVenda.FOrigem := 'Produtos';

  dmPreVenda.InserirProduto(FCodigo, FDescricao2,
  FQtde, FValUni, FValTot, FPeso, FCFOP);

  FrmPreVenda.edtQtdeLinhas.Text:= CompletarZerosEsquerda(dmPreVenda.RetornaQtdeLinhas, 4);
  FrmPreVenda.edtTotalPreVenda.Text := FormatCurr('###,###,##0.00', dmPreVenda.RetornaTotalGeral);
  FrmPreVenda.FTotalVenda := dmPreVenda.RetornaTotalGeral;
  edtPesquisa.Clear;
end;

procedure TFrmConsultaProdutos.DBGrid1DblClick(Sender: TObject);
begin
  BitBtn1Click(Self);
end;

procedure TFrmConsultaProdutos.edtPesquisaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (edtPesquisa.Text = '') then
  begin
    dmPesquisaProdutos.Qry001.SQL.Text :=
      'Select  ' +
      'estoque.codigo, ' +
      'estoque.descricao as descricao,  estoque.descricao as descricao2, estoque.peso, estoque.cfop,' +
      'estoque.medida, ' +
      'estoque.preco, ' +
      'estoque.livre2, ' +
      'estoque.qtd_atual, ' +
      'estoque.livre1, ' +
      'estoque.livre2, ' +
      'estoque.livre3, ' +
      'estoque.livre4 ' +
      'from ' +
      'estoque Where estoque.descricao > '''' ' +
      'order by estoque.descricao ';
    dmPesquisaProdutos.Qry001.Open;
  end
  else
  begin
    if (rgOpcoes.ItemIndex = 0) then
    begin
      dmPesquisaProdutos.Qry001.SQL.Text :=
        'Select  ' +
        'estoque.codigo, ' +
        'estoque.descricao as descricao, estoque.descricao as descricao2, estoque.peso, estoque.cfop,' +
        'estoque.medida, ' +
        'estoque.preco, ' +
        'estoque.livre2, ' +
        'estoque.qtd_atual, ' +
        'estoque.livre1, ' +
        'estoque.livre2, ' +
        'estoque.livre3, ' +
        'estoque.livre4 ' +
        'from ' +
        'estoque  ' +
        'Where estoque.descricao > '''' AND ' +
        'lower(estoque.descricao) LIKE lower(:pNome) ' +
        'order by estoque.descricao ';
      dmPesquisaProdutos.Qry001.ParamByName('pNome').AsString := '%' + edtPesquisa.Text + '%';
      dmPesquisaProdutos.Qry001.Open;
    end
    else
    begin
      dmPesquisaProdutos.Qry001.SQL.Text :=
        'Select  ' +
        'estoque.codigo, ' +
        'estoque.descricao as descricao, estoque.descricao as descricao2, estoque.peso, estoque.cfop, ' +
        'estoque.medida, ' +
        'estoque.preco, ' +
        'estoque.livre2, ' +
        'estoque.qtd_atual, ' +
        'estoque.livre1, ' +
        'estoque.livre2, ' +
        'estoque.livre3, ' +
        'estoque.livre4 ' +
        'from ' +
        'estoque  ' +
        'Where estoque.descricao > '''' And ' +
        'estoque.codigo =:pCodigo ' +
        'order by estoque.descricao ';
      dmPesquisaProdutos.Qry001.ParamByName('pCodigo').AsString := edtPesquisa.Text;
      dmPesquisaProdutos.Qry001.Open;
    end;
  end;
end;

procedure TFrmConsultaProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (dmPesquisaProdutos.Qry001.Active) then
    dmPesquisaProdutos.Qry001.Close;
end;

procedure TFrmConsultaProdutos.FormShow(Sender: TObject);
begin
  dmPesquisaProdutos.Qry001.SQL.Text :=
  'Select  ' +
  'estoque.codigo, ' +
  'estoque.descricao as descricao, estoque.descricao as descricao2, estoque.peso, estoque.cfop, ' +
  'estoque.medida, ' +
  'estoque.preco, ' +
  'estoque.livre2, ' +
  'estoque.qtd_atual, ' +
  'estoque.livre1, ' +
  'estoque.livre2, ' +
  'estoque.livre3, ' +
  'estoque.livre4 ' +
  'from ' +
  'estoque Where estoque.descricao > '''' ' +
  'order by estoque.descricao ';
  dmPesquisaProdutos.Qry001.Open;

  FValido := False;
  edtPesquisa.SetFocus;
end;

procedure TFrmConsultaProdutos.rgOpcoesClick(Sender: TObject);
begin
  if rgOpcoes.ItemIndex = 0 then
  begin
    lblTitulo.Caption := 'Digite a Descrição do Produto';
    edtPesquisa.MaxLength := 60;
    edtPesquisa.Clear;
  end
  else
  begin
    lblTitulo.Caption := 'Digite o Código do Produto';
    edtPesquisa.MaxLength := 5;
    edtPesquisa.Clear;
  end;
  edtPesquisa.SetFocus;
end;

procedure TFrmConsultaProdutos.edtQtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if NOT (key IN ['0'..'9', #13, #32]) then
    Key := #0;
end;

end.
