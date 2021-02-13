unit uDMPrincipal;

interface

uses
  SysUtils, Classes, DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, 
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, 
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Comp.Client,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait;

type
  TDmPrincipal = class(TDataModule)
    IBTransaction1: TFDTransaction;
    ConexaoPrincipal: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmPrincipal: TDmPrincipal;

implementation
uses
  uFuncoes;

{$R *.dfm}

procedure TDmPrincipal.DataModuleCreate(Sender: TObject);
var
  vPath : String;
begin
  ConexaoPrincipal.Connected := False;
  vPath := LerIni('DADOS', 'CAMINHO_BD');
  ConexaoPrincipal.ConnectionName := vPath;
  ConexaoPrincipal.Connected := True;
end;

end.
