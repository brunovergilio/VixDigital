unit uPesquisaContaCorrente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, RzButton,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid;

type
  TfrmPesquisaContaCorrente = class(TForm)
    Label2: TLabel;
    JvDBGrid1: TJvDBGrid;
    Panel1: TPanel;
    RzToolButton3: TRzToolButton;
    btnalterar: TRzToolButton;
    Panel2: TPanel;
    Label1: TLabel;
    RzToolButton1: TRzToolButton;
    Edit1: TEdit;
    dsPesquisa: TDataSource;
    QBancos: TFDQuery;
    QPesquisa: TFDQuery;
    QBancosCODIGO: TFDAutoIncField;
    QBancosCOD_BANCO: TIntegerField;
    QBancosAGENCIA: TStringField;
    QBancosAGENCIA_DIGITO: TStringField;
    QBancosAGENCIA_NOME: TStringField;
    QBancosCONTA: TStringField;
    QBancosCONTA_DIGITO: TStringField;
    QBancosCONTA_CORRENTISTA: TStringField;
    QBancosCONTA_NOME_CORRENTISTA: TStringField;
    QBancosCOD_CEDENTE: TIntegerField;
    QBancosDIGITO_CEDENTE: TIntegerField;
    QBancosLAYOUT: TStringField;
    QBancosNOSSONUMERO: TStringField;
    QBancosCARTEIRA: TStringField;
    QBancosCONVENIO: TStringField;
    QBancosENDERECO: TStringField;
    QBancosTIPO: TStringField;
    QBancosCEP: TStringField;
    QBancosUF: TStringField;
    QBancosCPF_CNPJ: TStringField;
    dsBancos: TDataSource;
    QBancosNOME_CEDENTE: TStringField;
    QPesquisaCODIGO: TIntegerField;
    QPesquisaCOD_BANCO: TIntegerField;
    QPesquisaAGENCIA: TStringField;
    QPesquisaAGENCIA_DIGITO: TStringField;
    QPesquisaAGENCIA_NOME: TStringField;
    QPesquisaCONTA: TStringField;
    QPesquisaCONTA_DIGITO: TStringField;
    QPesquisaCONTA_CORRENTISTA: TStringField;
    QPesquisaCONTA_NOME_CORRENTISTA: TStringField;
    QPesquisaCOD_CEDENTE: TIntegerField;
    QPesquisaDIGITO_CEDENTE: TIntegerField;
    QPesquisaLAYOUT: TStringField;
    QPesquisaNOSSONUMERO: TStringField;
    QPesquisaCARTEIRA: TStringField;
    QPesquisaCONVENIO: TStringField;
    QPesquisaENDERECO: TStringField;
    QPesquisaTIPO: TStringField;
    QPesquisaCEP: TStringField;
    QPesquisaUF: TStringField;
    QPesquisaCPF_CNPJ: TStringField;
    QPesquisaNOME_CEDENTE: TStringField;
    QPesquisadescricao: TStringField;
    QPesquisanum_banco: TIntegerField;
    QBancosCIDADE: TStringField;
    QPesquisaCIDADE: TStringField;
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaContaCorrente: TfrmPesquisaContaCorrente;

implementation

{$R *.dfm}

uses udatamodule, uCadContaCorrente, uPesquisaBanco;

procedure TfrmPesquisaContaCorrente.btnalterarClick(Sender: TObject);
begin
  QBancos.Close;
  QBancos.Sql.Text := 'select * from bancos_dados_bancarios where codigo = :Codigo';
  QBancos.ParamByName('Codigo').AsInteger := QPesquisaCODIGO.AsInteger;
  QBancos.Open;
  QBancos.Edit;

  Application.CreateForm(TfrmPesquisaBanco, frmPesquisaBanco);
  Application.CreateForm(TfrmCadContaCorrente, frmCadContaCorrente);
  frmPesquisaBanco.QBancos.Close;
  frmPesquisaBanco.QBancos.Sql.Text := 'select * from banco where codigo = :Codigo';
  frmPesquisaBanco.QBancos.ParamByName('Codigo').AsInteger := QPesquisaCOD_BANCO.AsInteger;
  frmPesquisaBanco.QBancos.Open;

  frmCadContaCorrente.edtBanco.Text := frmPesquisaBanco.QBancosnumero.AsString + ' - ' + frmPesquisaBanco.QBancosdescricao.AsString;
  frmCadContaCorrente.Edit1.Text := frmPesquisaBanco.QBancosnumero.AsString;
  frmCadContaCorrente.Edit2.Text := frmPesquisaBanco.QBancosdescricao.AsString;
  FreeAndNil(frmPesquisaBanco);

  //QBancos.Post;
  frmCadContaCorrente.ShowModal;
  FreeAndNil(frmCadContaCorrente);
  OnShow(Sender);
end;

procedure TfrmPesquisaContaCorrente.FormShow(Sender: TObject);
begin
  QPesquisa.Close;
  QPesquisa.SQL.Clear;
  QPesquisa.SQL.Add('SELECT                         ');
  QPesquisa.SQL.Add('  bd.*,                        ');
  QPesquisa.SQL.Add('  b.descricao,                 ');
  QPesquisa.SQL.Add('  b.numero as num_banco        ');
  QPesquisa.SQL.Add('FROM                           ');
  QPesquisa.SQL.Add('  bancos_dados_bancarios bd    ');
  QPesquisa.SQL.Add('  INNER JOIN banco b           ');
  QPesquisa.SQL.Add('    ON b.codigo = bd.COD_BANCO ');
  //QBancos.SQL.Add('WHERE UPPER(descricao) LIKE (''%:Descricao%'')');
  QPesquisa.SQL.Add('order by b.descricao');
  QPesquisa.Open;
  QPesquisa.First;
end;

procedure TfrmPesquisaContaCorrente.JvDBGrid1DblClick(Sender: TObject);
begin
  QBancos.Close;
  QBancos.Sql.Text := 'select * from bancos_dados_bancarios where codigo = :Codigo';
  QBancos.ParamByName('Codigo').AsInteger := QPesquisaCODIGO.AsInteger;
  QBancos.Open;
  QBancos.Edit;

  Application.CreateForm(TfrmPesquisaBanco, frmPesquisaBanco);
  Application.CreateForm(TfrmCadContaCorrente, frmCadContaCorrente);
  frmPesquisaBanco.QBancos.Close;
  frmPesquisaBanco.QBancos.Sql.Text := 'select * from banco where codigo = :Codigo';
  frmPesquisaBanco.QBancos.ParamByName('Codigo').AsInteger := QPesquisaCOD_BANCO.AsInteger;
  frmPesquisaBanco.QBancos.Open;

  frmCadContaCorrente.edtBanco.Text := frmPesquisaBanco.QBancosnumero.AsString + ' - ' + frmPesquisaBanco.QBancosdescricao.AsString;
  frmCadContaCorrente.Edit1.Text := frmPesquisaBanco.QBancosnumero.AsString;
  frmCadContaCorrente.Edit2.Text := frmPesquisaBanco.QBancosdescricao.AsString;
  FreeAndNil(frmPesquisaBanco);

  frmCadContaCorrente.ShowModal;
  FreeAndNil(frmCadContaCorrente);
  //QBancos.Post;
  OnShow(Sender);
end;

procedure TfrmPesquisaContaCorrente.RzToolButton1Click(Sender: TObject);
begin
  QPesquisa.Close;
  QPesquisa.SQL.Clear;
  QPesquisa.SQL.Add('SELECT                         ');
  QPesquisa.SQL.Add('  *,                           ');
  QPesquisa.SQL.Add('  b.descricao                  ');
  QPesquisa.SQL.Add('FROM                           ');
  QPesquisa.SQL.Add('  bancos_dados_bancarios bd    ');
  QPesquisa.SQL.Add('  INNER JOIN banco b           ');
  QPesquisa.SQL.Add('    ON b.codigo = bd.COD_BANCO ');
  QPesquisa.SQL.Add('WHERE UPPER(descricao) like (''%' + EDIT1.TEXT + '%'') order by b.descricao');
  //QBancos.ParamByName('Descricao').AsString := Edit1.Text;
  QPesquisa.Open;
  QPesquisa.First;
end;

procedure TfrmPesquisaContaCorrente.RzToolButton3Click(Sender: TObject);
begin
  Application.CreateForm(TfrmCadContaCorrente, frmCadContaCorrente);
  QBancos.Close;
  QBancos.Sql.Text := 'select * from bancos_dados_bancarios LIMIT 0';
  QBancos.Open;
  QBancos.Append;
  frmCadContaCorrente.ShowModal;
  FreeAndNil(frmCadContaCorrente);
  OnShow(Sender);
end;

end.
