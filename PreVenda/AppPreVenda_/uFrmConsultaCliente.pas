unit uFrmConsultaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB;

type
  TFrmConsultaCliente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    edtPesquisa: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure edtPesquisaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FNome: String;
    FCGC : String;
    FEndereco : String;
    FBairro : String;
    FNomeCliente : String;
    FCondicao : String;
  end;

var
  FrmConsultaCliente: TFrmConsultaCliente;

implementation
Uses uDmPesquisaCliente;

{$R *.dfm}

procedure TFrmConsultaCliente.BitBtn1Click(Sender: TObject);
begin
  FNome      := DataSource1.DataSet.FieldByName('nome').AsString;
  FNomeCliente := DataSource1.DataSet.FieldByName('nome_cliente').AsString;
  FCGC       := DataSource1.DataSet.FieldByName('CGC').AsString;
  FEndereco  := DataSource1.DataSet.FieldByName('Endere').AsString;
  FBairro    := DataSource1.DataSet.FieldByName('Comple').AsString;
  FCondicao  := DataSource1.DataSet.FieldByName('Identificador2').AsString;
end;

procedure TFrmConsultaCliente.DBGrid1DblClick(Sender: TObject);
begin
  BitBtn1Click(Self);
  Self.Close;
end;

procedure TFrmConsultaCliente.edtPesquisaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  dmPesquisaCliente.Qry001.Transaction.CommitRetaining;
  dmPesquisaCliente.Qry001.Close;
  if (edtPesquisa.Text = '') then
  begin
    dmPesquisaCliente.Qry001.SQL.Text :=
      'Select  ' +
      'clifor.cgc, ' +
      'clifor.nome as nome, clifor.nome as nome_cliente, ' +
      'clifor.endere, ' +
      'clifor.comple, ' +
      'clifor.cidade, clifor.identificador2, clifor.FONE ' +
      'from ' +
      'clifor  ' +
      'Where clifor.nome > '''' ' +
      'order by clifor.nome ';
    dmPesquisaCliente.Qry001.Open;
  end
  else
  begin
    dmPesquisaCliente.Qry001.SQL.Text :=
      'Select  ' +
      'clifor.cgc, ' +
      'clifor.nome as nome, clifor.nome as nome_cliente, ' +
      'clifor.endere, ' +
      'clifor.comple, ' +
      'clifor.cidade, clifor.identificador2, clifor.FONE ' +
      'from ' +
      'clifor  ' +
      'Where clifor.nome > '''' AND ' +
      'lower(clifor.nome) LIKE lower(:pNome) ' +
      'order by clifor.nome ';
    dmPesquisaCliente.Qry001.ParamByName('pNome').AsString := '%' + edtPesquisa.Text + '%';
    dmPesquisaCliente.Qry001.Open;
  end;
end;

procedure TFrmConsultaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (dmPesquisaCliente.Qry001.Active) then
    dmPesquisaCliente.Qry001.Close;
end;

procedure TFrmConsultaCliente.FormShow(Sender: TObject);
begin
  dmPesquisaCliente.Qry001.SQL.Text :=
  'Select  ' +
  'clifor.cgc, ' +
  'clifor.nome as nome, clifor.nome as nome_cliente, ' +
  'clifor.endere, ' +
  'clifor.comple, ' +
  'clifor.cidade, clifor.identificador2, clifor.FONE ' +
  'from ' +
  'clifor  ' +
  'Where clifor.nome > '''' ' +
  'order by clifor.nome ';
  dmPesquisaCliente.Qry001.Open;
  edtPesquisa.SetFocus;
end;

end.