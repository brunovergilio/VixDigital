unit uDmPesquisaVendedor;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBQuery;

type
  TdmPesquisaVendedor = class(TDataModule)
    Qry001: TIBQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPesquisaVendedor: TdmPesquisaVendedor;

implementation
Uses untDMPrincipal;

{$R *.dfm}

end.
