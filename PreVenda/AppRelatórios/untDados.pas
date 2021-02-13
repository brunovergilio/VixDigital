unit untDados;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBDatabase, Vcl.Forms, IniFiles, untUtil,
  IBCustomDataSet, IBQuery;

type
  TdmDados = class(TDataModule)
    ConexaoA: TIBDatabase;
    TransacaoA: TIBTransaction;
    QRyDados: TIBQuery;
    procedure DataModuleCreate(Sender: TObject);
    function NotaExiste(pNota:String) : Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDados: TdmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmDados.DataModuleCreate(Sender: TObject);
var
  vPath1 : String;
begin
  vPath1 := LerIni('DADOS', 'CAMINHO_BD');

  try
    ConexaoA.DatabaseName := vPath1;
    ConexaoA.Params.Add('user_name=SYSDBA');
    ConexaoA.Params.Add('password=masterkey');
    ConexaoA.Params.Add('lc_ctype=ISO8859_1');
    ConexaoA.LoginPrompt := False;
    ConexaoA.Connected := True;
    except
    //raise Exception.Create('Erro ao Conectar no Banco de Dados');//
  end;
end;

function TdmDados.NotaExiste(pNota: String): Boolean;
var
  Achou : Boolean;
begin
  Achou := False;
  QRyDados.Database := ConexaoA;
  QRyDados.Transaction := TransacaoA;
  QRyDados.SQL.Text :=
      'Select Count(*) From vendas Where numeronf =:pNF';
  QryDados.ParamByName('pNF').AsString := pNota;
  QryDados.Open;
  if QryDados.Fields[0].AsInteger > 0 then
    Achou := True;
  QRyDados.Close;

  Result := Achou;
end;

end.
