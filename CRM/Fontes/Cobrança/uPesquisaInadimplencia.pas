unit uPesquisaInadimplencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmPesquisaInadimplencia = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    RzToolButton1: TRzToolButton;
    Edit1: TEdit;
    Panel1: TPanel;
    RzToolButton3: TRzToolButton;
    btnalterar: TRzToolButton;
    JvDBGrid1: TJvDBGrid;
    dsInadimplencia: TDataSource;
    QInadimplencia: TFDQuery;
    QInadimplenciaCODIGO: TFMTBCDField;
    QInadimplenciaTIPO: TFMTBCDField;
    QInadimplenciaDESCRICAO: TStringField;
    QInadimplenciaCONTADOR_REMESSA: TFMTBCDField;
    QInadimplenciaCONTADOR_RETORNO: TFMTBCDField;
    QInadimplenciaCODIGO_ENTIDADE: TStringField;
    QInadimplenciaCODIGO_ASSOCIADO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaInadimplencia: TfrmPesquisaInadimplencia;

implementation

{$R *.dfm}

uses udatamodule;

end.
