unit uDmPesquisaCFOP;

interface

uses
  SysUtils, Classes, DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, 
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, 
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, 
  FireDAC.Comp.Client;

type
  TdmPesquisaCFOP = class(TDataModule)
    Qry001: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPesquisaCFOP: TdmPesquisaCFOP;

implementation
uses
  uDMPrincipal;

{$R *.dfm}

end.
