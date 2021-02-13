unit Tdm;
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Vcl.AppEvnts, Data.DB;

type
  Tfdm = class(TForm)
    dsParam: TDataSource;
    dsUsuarios: TDataSource;
    DsTParam_Boleto: TDataSource;
    DsTParam_Itau: TDataSource;
    DsTParam_Telecom: TDataSource;
    DsQCalendario: TDataSource;
    dsQParam_BANCOST: TDataSource;
    dsQPARAM_SESC: TDataSource;
    dsQParam_HSBC: TDataSource;
    ApplicationEvents1: TApplicationEvents;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdm: Tfdm;

implementation

{$R *.DFM}


end.
