unit untDMPrincipal;

interface

uses
  SysUtils, Classes, IBDatabase, DB;

type
  TDmPrincipal = class(TDataModule)
    IBTransaction1: TIBTransaction;
    ConexaoPrincipal: TIBDatabase;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmPrincipal: TDmPrincipal;

implementation
uses untUtil;

{$R *.dfm}

procedure TDmPrincipal.DataModuleCreate(Sender: TObject);
var
  vPath : String;
begin
  ConexaoPrincipal.Connected := False;
  vPath := LerIni('DADOS', 'CAMINHO_BD');
  ConexaoPrincipal.DatabaseName := vPath;
  ConexaoPrincipal.Connected := True;
end;

end.
