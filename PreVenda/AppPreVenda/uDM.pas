unit uDM;

interface

uses
  SysUtils, Classes, DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, 
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, 
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Comp.Client,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI;

type
  Tdm = class(TDataModule)
    Transacao: TFDTransaction;
    ConexaoPrincipal: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation
uses
  uFuncoes;

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
var
  vPath : String;
begin
  ConexaoPrincipal.Connected := False;
  vPath := LerIni('DADOS', 'CAMINHO_BD');
  ConexaoPrincipal.ConnectionName := vPath;
  ConexaoPrincipal.Connected := True;
end;

end.
