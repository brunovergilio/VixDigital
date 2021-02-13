unit uPesquisaSituacaoNegociacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmPesquisaSituacaoNegociacao = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    RzToolButton1: TRzToolButton;
    Edit1: TEdit;
    Panel1: TPanel;
    RzToolButton3: TRzToolButton;
    btnalterar: TRzToolButton;
    JvDBGrid1: TJvDBGrid;
    QSituacao: TFDQuery;
    dsSituacao: TDataSource;
    QSituacaocodigo: TFDAutoIncField;
    QSituacaodescricao: TStringField;
    QSituacaosigla: TStringField;
    QSituacaostatus: TStringField;
    RzToolButton2: TRzToolButton;
    procedure btnalterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaSituacaoNegociacao: TfrmPesquisaSituacaoNegociacao;

implementation

{$R *.dfm}

uses udatamodule, uCadSituacaoNegociacao;

procedure TfrmPesquisaSituacaoNegociacao.btnalterarClick(Sender: TObject);
begin
  QSituacao.Edit;
  Application.CreateForm(TfrmCadSituacaoNegociacao, frmCadSituacaoNegociacao);
  frmCadSituacaoNegociacao.ShowModal;
  frmCadSituacaoNegociacao.Free;
  RzToolButton1.Click;
end;

procedure TfrmPesquisaSituacaoNegociacao.FormShow(Sender: TObject);
begin
  with QSituacao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT               ');
    SQL.Add('  s.*                ');
    SQL.Add('FROM                 ');
    SQL.Add('  situacao s         ');
    SQL.Add('WHERE s.status = "A" ');
    SQL.Add('ORDER BY s.descricao ');
    Open;
  end;
end;

procedure TfrmPesquisaSituacaoNegociacao.RzToolButton1Click(Sender: TObject);
begin
  with QSituacao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT               ');
    SQL.Add('  s.*                ');
    SQL.Add('FROM                 ');
    SQL.Add('  situacao s         ');
    SQL.Add('WHERE s.status = "A" ');
    SQL.Add('  AND upper(s.descricao) like (''%' + EDIT1.TEXT + '%'')');
    SQL.Add('ORDER BY s.descricao ');
    Open;
  end;
end;

procedure TfrmPesquisaSituacaoNegociacao.RzToolButton2Click(Sender: TObject);
begin
  if QSituacao.IsEmpty then
    Abort;
  if MessageDlg('Deseja realmente excluir?',mtConfirmation,[mbYes,mbNo], 0) = mrYes then
  begin
    QSituacao.Edit;
    QSituacaostatus.AsString := 'I';
    QSituacao.Post;

    with QSituacao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT               ');
      SQL.Add('  s.*                ');
      SQL.Add('FROM                 ');
      SQL.Add('  situacao s         ');
      SQL.Add('WHERE s.status = "A" ');
      SQL.Add('ORDER BY s.descricao ');
      Open;
    end;
  end;
end;

procedure TfrmPesquisaSituacaoNegociacao.RzToolButton3Click(Sender: TObject);
begin
  Application.CreateForm(TfrmCadSituacaoNegociacao, frmCadSituacaoNegociacao);
  frmCadSituacaoNegociacao.alterainsere := 'INSERE';
  with QSituacao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT       ');
    SQL.Add('  s.*        ');
    SQL.Add('FROM         ');
    SQL.Add('  situacao s ');
    SQL.Add('LIMIT 0      ');
    Open;
  end;
  frmCadSituacaoNegociacao.ShowModal;
  frmCadSituacaoNegociacao.Free;
  RzToolButton1.Click;
end;

end.
