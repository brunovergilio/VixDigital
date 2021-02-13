unit uDmPesquisaCliente;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBQuery;

type
  TdmPesquisaCliente = class(TDataModule)
    Qry001: TIBQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPesquisaCliente: TdmPesquisaCliente;

implementation
Uses untDMPrincipal;

{$R *.dfm}

end.
