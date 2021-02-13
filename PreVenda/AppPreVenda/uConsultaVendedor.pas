unit uConsultaVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmConsultaVendedor = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    edtPesquisa: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Qry001: TFDQuery;
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
  end;

var
  FrmConsultaVendedor: TFrmConsultaVendedor;

implementation
Uses uDM;

{$R *.dfm}

procedure TFrmConsultaVendedor.BitBtn1Click(Sender: TObject);
begin
  FNome      := DataSource1.DataSet.FieldByName('nome').AsString;
end;

procedure TFrmConsultaVendedor.DBGrid1DblClick(Sender: TObject);
begin
  BitBtn1Click(Self);
  Self.Close;
end;

procedure TFrmConsultaVendedor.edtPesquisaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (edtPesquisa.Text = '') then
  begin
    Qry001.SQL.Text :=
      'Select  ' +
      'vendedor.nome as nome  ' +
      'from ' +
      'vendedor Where vendedor.nome > ''''  ' +
      'order by vendedor.nome ';
    Qry001.Open;
  end
  else
  begin
    Qry001.SQL.Text :=
      'Select  ' +
      'vendedor.nome as nome  ' +
      'from ' +
      'vendedor  ' +
      'Where ' +
      'lower(vendedor.nome) LIKE lower(:pNome) And vendedor.nome > '''' ' +
      'order by vendedor.nome ';
    Qry001.ParamByName('pNome').AsString := edtPesquisa.Text + '%';
    Qry001.Open;
  end;
end;

procedure TFrmConsultaVendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (Qry001.Active) then
    Qry001.Close;
end;

procedure TFrmConsultaVendedor.FormShow(Sender: TObject);
begin
  Qry001.SQL.Text :=
  'Select  ' +
  'vendedor.nome as nome  ' +
  'from ' +
  'vendedor Where vendedor.nome > '''' ' +
  'order by vendedor.nome ';
  Qry001.Open;
  edtPesquisa.SetFocus;
end;

end.