unit uPesquisaGrupoCredor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, RzButton,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmPesquisaGrupoCredor = class(TForm)
    Label2: TLabel;
    JvDBGrid1: TJvDBGrid;
    Panel1: TPanel;
    btnInserir: TRzToolButton;
    btnalterar: TRzToolButton;
    Panel2: TPanel;
    Label1: TLabel;
    RzToolButton1: TRzToolButton;
    Edit1: TEdit;
    QGrupoCredor: TFDQuery;
    dsGrupoCredor: TDataSource;
    QGrupoCredorcodigo: TFDAutoIncField;
    QGrupoCredornome: TStringField;
    QGrupoCredorativo: TStringField;
    procedure btnInserirClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vPesquisa : boolean;
  end;

var
  frmPesquisaGrupoCredor: TfrmPesquisaGrupoCredor;

implementation

{$R *.dfm}

uses udatamodule, uCadGrupoCredor;

procedure TfrmPesquisaGrupoCredor.btnalterarClick(Sender: TObject);
begin
  QGrupoCredor.Edit;
  Application.CreateForm(TfrmCadGrupoCredor, frmCadGrupoCredor);
  frmCadGrupoCredor.ShowModal;
  FreeAndNil(frmCadGrupoCredor);
  OnShow(Sender);
end;

procedure TfrmPesquisaGrupoCredor.FormShow(Sender: TObject);
begin
  if vPesquisa then
  begin
    btnInserir.Caption := 'Selecionar';
    btnalterar.Visible := False;
  end;
  QGrupoCredor.Close;
  QGrupoCredor.Sql.Text := 'select * from bancos_grupo order by nome';
  QGrupoCredor.Open;
  QGrupoCredor.First;
end;

procedure TfrmPesquisaGrupoCredor.JvDBGrid1DblClick(Sender: TObject);
begin
  if vPesquisa then
    Close
  else
  begin
    QGrupoCredor.Edit;
    Application.CreateForm(TfrmCadGrupoCredor, frmCadGrupoCredor);
    frmCadGrupoCredor.ShowModal;
    FreeAndNil(frmCadGrupoCredor);
    OnShow(Sender);
  end;
end;

procedure TfrmPesquisaGrupoCredor.RzToolButton1Click(Sender: TObject);
begin
  QGrupoCredor.Close;
  QGrupoCredor.Sql.Text := 'select * from bancos_grupo where upper(nome) like (''%' + EDIT1.TEXT + '%'') order by nome';
  QGrupoCredor.Open;
  QGrupoCredor.First;
end;

procedure TfrmPesquisaGrupoCredor.btnInserirClick(Sender: TObject);
begin
  if vPesquisa then
    Close
  else
  begin
    Application.CreateForm(TfrmCadGrupoCredor, frmCadGrupoCredor);
    QGrupoCredor.Close;
    QGrupoCredor.Sql.Text := 'select * from bancos_grupo LIMIT 0';
    QGrupoCredor.Open;
    frmCadGrupoCredor.ShowModal;
    FreeAndNil(frmCadGrupoCredor);
    OnShow(Sender);
  end;
end;

end.
