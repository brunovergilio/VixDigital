unit uConsultaCFOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmConsultaCFOP = class(TForm)
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
    Qry001: TFDQuery;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure rgOpcoesClick(Sender: TObject);
    procedure edtPesquisaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FNome: String;
    FCFOP : String;
    FNome2: String;
    FIntegracao : String;
  end;

var
  FrmConsultaCFOP: TFrmConsultaCFOP;

implementation


{$R *.dfm}

procedure TFrmConsultaCFOP.BitBtn1Click(Sender: TObject);
begin
  FNome       := DataSource1.DataSet.FieldByName('nome').AsString;
  FCFOP       := DataSource1.DataSet.FieldByName('CFOP').AsString;
  FNome2      := DataSource1.DataSet.FieldByName('nome2').AsString;
  FIntegracao := DataSource1.DataSet.FieldByName('Integracao').AsString;
end;

procedure TFrmConsultaCFOP.DBGrid1DblClick(Sender: TObject);
begin
  BitBtn1Click(Self);
  Self.Close;
end;

procedure TFrmConsultaCFOP.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  if (rgOpcoes.ItemIndex = 1) then
  begin
    if NOT (key IN ['0'..'9', #13, #8]) then
      Key := #0;
  end;
end;

procedure TFrmConsultaCFOP.edtPesquisaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (edtPesquisa.Text = '') then
  begin
    Qry001.SQL.Text :=
    'Select cfop, nome, nome as nome2, integracao From ICM Where cfop > '''' And Cast(substring(cfop from 1 for 1) as integer) >= 1 order by nome';
    Qry001.Open;
  end
  else
  begin
    if (rgOpcoes.ItemIndex = 0) then
    begin
      Qry001.SQL.Text :=
      'Select cfop, nome, nome as nome2, integracao From ICM Where cfop > '''' And Cast(substring(cfop from 1 for 1) as integer) >= 1 AND lower(nome) LIKE lower(:pNome) order by nome';
      Qry001.ParamByName('pNome').AsString :=  edtPesquisa.Text + '%';
      Qry001.Open;
    end
    else
    begin
      Qry001.SQL.Text :=
      'Select cfop, nome, nome as nome2, integracao From ICM Where cfop > '''' And Cast(substring(cfop from 1 for 1) as integer) >= 1 AND cfop LIKE :cfop order by nome';
      Qry001.ParamByName('cfop').AsString := edtPesquisa.Text + '%';
      Qry001.Open;
    end;
  end;
end;

procedure TFrmConsultaCFOP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (Qry001.Active) then
    Qry001.Close;
end;

procedure TFrmConsultaCFOP.FormShow(Sender: TObject);
begin
  Qry001.SQL.Text :=
  'Select cfop, nome, nome as nome2, integracao From ICM WHERE cfop > '''' And Cast(substring(cfop from 1 for 1) as integer) >= 1 order by nome';
  Qry001.Open;
  edtPesquisa.SetFocus;
end;

procedure TFrmConsultaCFOP.rgOpcoesClick(Sender: TObject);
begin
  if rgOpcoes.ItemIndex = 0 then
  begin
    lblTitulo.Caption := 'Digite a Descrição do CFOP';
    edtPesquisa.MaxLength := 60;
    edtPesquisa.Clear;
  end
  else
  begin
    lblTitulo.Caption := 'Digite o Código do CFOP';
    edtPesquisa.MaxLength := 4;
    edtPesquisa.Clear;
  end;
  edtPesquisa.SetFocus;
end;

end.
