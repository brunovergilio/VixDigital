unit udatamodule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Comp.Client, 
  IniFiles, Winapi.Windows, Forms,
  Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.DBX.Migrate, FireDAC.VCLUI.Wait,
  FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL, ACBrUtil,
  FireDAC.Comp.UI;

type
  TfrmDataModule = class(TDataModule)
    UniConnection1: TFDConnection;
    UniTransaction1: TFDTransaction;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ConectaBD;
  public
    { Public declarations }
  end;

var
  frmDataModule: TfrmDataModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses uFuncoes, uConfiguracaoBD;

{$R *.dfm}

procedure TfrmDataModule.ConectaBD;
var
   vFileConfig : TIniFile;
   vServer,
   vDataBase,
   vUserName,
   vPassword,
   vPort,
   vPass      : string;
begin
   vFileConfig := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'crm.ini');
   try
      vPass := IntToStrZero(StringCrc16('CLICK COB' + IntToStrZero(2020,8)),8);
      vServer := IfStrNull(LeINICrypt(vFileConfig,'CONEXAO','Server',vPass),'');
      vDataBase := IfStrNull(LeINICrypt(vFileConfig,'CONEXAO','Database',vPass),'');
      vUserName := IfStrNull(LeINICrypt(vFileConfig,'CONEXAO','UserName',vPass),'');
      vPassword := IfStrNull(LeINICrypt(vFileConfig,'CONEXAO','Password',vPass),'');
      vPort := IfStrNull(LeINICrypt(vFileConfig,'CONEXAO','Port',vPass),'');

      try
         UniConnection1.Connected := False;
         UniConnection1.Params.Clear;
         UniConnection1.Params.Add('Database=' + vDataBase);
         UniConnection1.Params.Add('Server=' + vServer);
         UniConnection1.Params.Add('User_Name=' + vUserName);
         UniConnection1.Params.Add('Password=' + vPassword);
         UniConnection1.Params.Add('Port=' + vPort);
         UniConnection1.Params.Add('DriverID=MySQL');
         UniConnection1.ResourceOptions.AutoConnect   := True;
         UniConnection1.ResourceOptions.AutoReconnect := True;
         UniConnection1.Connected := True;
      except
         on exc: exception do
         begin
            MessageDlg('Banco de dados não encontrado',mtError,[mbOk],0);
            Application.CreateForm(TfrmConfiguracaoBD, frmConfiguracaoBD);
            frmConfiguracaoBD.ShowModal;
            frmConfiguracaoBD.Free;
         end;
      end;
   finally
      FreeAndNil(vFileConfig);
   end;
end;

procedure TfrmDataModule.DataModuleCreate(Sender: TObject);
begin
  ConectaBD;
end;

end.
