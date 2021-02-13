unit uPesquisaBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, RzButton,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid;

type
  TfrmPesquisaBanco = class(TForm)
    Label2: TLabel;
    JvDBGrid1: TJvDBGrid;
    Panel1: TPanel;
    btnInserir: TRzToolButton;
    btnalterar: TRzToolButton;
    Panel2: TPanel;
    Label1: TLabel;
    RzToolButton1: TRzToolButton;
    Edit1: TEdit;
    dsBancos: TDataSource;
    QBancos: TFDQuery;
    QBancoscodigo: TFDAutoIncField;
    QBancosnumero: TIntegerField;
    QBancosdescricao: TStringField;
    QBancosstatus: TStringField;
    procedure RzToolButton1Click(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vPesquisa : boolean;
  end;

var
  frmPesquisaBanco: TfrmPesquisaBanco;

implementation

{$R *.dfm}

uses udatamodule, uCadBanco;

procedure TfrmPesquisaBanco.btnalterarClick(Sender: TObject);
begin
  QBancos.Edit;
  Application.CreateForm(TfrmCadBanco, frmCadBanco);
  frmCadBanco.ShowModal;
  FreeAndNil(frmCadBanco);
  OnShow(Sender);
end;

procedure TfrmPesquisaBanco.FormShow(Sender: TObject);
begin
  if vPesquisa then
  begin
    btnInserir.Caption := 'Selecionar';
    btnalterar.Visible := False;
  end;
  QBancos.Close;
  QBancos.Sql.Text := 'select * from banco order by descricao';
  QBancos.Open;
  QBancos.First;
end;

procedure TfrmPesquisaBanco.JvDBGrid1DblClick(Sender: TObject);
begin
  if vPesquisa then
    Close
  else
  begin
    QBancos.Edit;
    Application.CreateForm(TfrmCadBanco, frmCadBanco);
    frmCadBanco.ShowModal;
    FreeAndNil(frmCadBanco);
    OnShow(Sender);
  end;
end;

procedure TfrmPesquisaBanco.RzToolButton1Click(Sender: TObject);
begin
  QBancos.Close;
  QBancos.Sql.Text := 'select * from banco where upper(descricao) like (''%' + EDIT1.TEXT + '%'') order by descricao';
  QBancos.Open;
  QBancos.First;
end;

procedure TfrmPesquisaBanco.btnInserirClick(Sender: TObject);
begin
  if vPesquisa then
    Close
  else
  begin
    Application.CreateForm(TfrmCadBanco, frmCadBanco);
    QBancos.Close;
    QBancos.Sql.Text := 'select * from banco LIMIT 0';
    QBancos.Open;
    frmCadBanco.ShowModal;
    FreeAndNil(frmCadBanco);
    OnShow(Sender);
  end;
end;

end.
