unit uConfiguracaoBD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls, cxButtons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, IniFiles, ACBrUtil, ShellAPI;

type
  TfrmConfiguracaoBD = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtServer: TEdit;
    edtDatabase: TEdit;
    edtUserName: TEdit;
    edtPassword: TEdit;
    cxButton1: TcxButton;
    edtPort: TEdit;
    pnBotoes: TPanel;
    btnGravar: TcxButton;
    btnCancelar: TcxButton;
    ConexaoTeste: TFDConnection;
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    function TestaConexao : boolean;
  public
    { Public declarations }
  end;

var
  frmConfiguracaoBD: TfrmConfiguracaoBD;

implementation

{$R *.dfm}

uses uFuncoes;

{ TForm1 }

procedure TfrmConfiguracaoBD.btnGravarClick(Sender: TObject);
var
   vFileConfig : TIniFile;
   vPass : string;
begin
  inherited;
   if MessageDlg('Deseja realmente salvar estas informações?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
   begin
      vPass := IntToStrZero(StringCrc16('CLICK COB' + IntToStrZero(2020,8)),8);
      vFileConfig := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'crm.ini');
      try
         GravaINICrypt(vFileConfig,'CONEXAO','Server',edtServer.Text,vPass);
         GravaINICrypt(vFileConfig,'CONEXAO','Database',edtDatabase.Text,vPass);
         GravaINICrypt(vFileConfig,'CONEXAO','UserName',edtUserName.Text,vPass);
         GravaINICrypt(vFileConfig,'CONEXAO','Password',edtPassword.Text,vPass);
         GravaINICrypt(vFileConfig,'CONEXAO','Port',edtPort.Text,vPass);

         if MessageDlg('É necessário reiniciar o sistema para que as alterações teham sucesso. Deseja fazer isto agora?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
         begin
            //ShellExecute(0,'open',PChar(Application.ExeName),nil,nil,SW_SHOW);
            Application.Terminate();
         end;
      finally
         FreeAndNil(vFileConfig);
      end;
   end;
end;

procedure TfrmConfiguracaoBD.cxButton1Click(Sender: TObject);
begin
  if TestaConexao then
  begin
    MessageDlg('Conexão estabelecia com sucesso.',mtInformation,[mbOk],0);
    btnGravar.SetFocus;
  end;
end;

procedure TfrmConfiguracaoBD.FormShow(Sender: TObject);
var
   vFileConfig : TIniFile;
   vpass : string;
begin
  inherited;
   vFileConfig := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'crm.ini');
   vPass := IntToStrZero(StringCrc16('CLICK COB' + IntToStrZero(2020,8)),8);
   try
      edtServer.Text := LeINICrypt(vFileConfig,'CONEXAO','Server',vpass);
      edtDatabase.Text := LeINICrypt(vFileConfig,'CONEXAO','Database',vpass);
      edtUserName.Text := LeINICrypt(vFileConfig,'CONEXAO','UserName',vpass);
      edtPassword.Text := LeINICrypt(vFileConfig,'CONEXAO','Password',vpass);
      edtPort.Text := LeINICrypt(vFileConfig,'CONEXAO','Port',vpass);
   finally
      FreeAndNil(vFileConfig);
   end;
end;

function TfrmConfiguracaoBD.TestaConexao: boolean;
begin
  try
    ConexaoTeste.Connected := False;
    ConexaoTeste.Params.Clear;
    ConexaoTeste.Params.Add('Server=' + edtServer.Text);
    ConexaoTeste.Params.Add('Database=' + edtDatabase.Text);
    ConexaoTeste.Params.Add('User_Name=' + edtUserName.Text);
    ConexaoTeste.Params.Add('Password=' + edtPassword.Text);
    ConexaoTeste.Params.Add('Port=' + edtPort.Text);
    ConexaoTeste.Params.Add('DriverID=MySQL');
    ConexaoTeste.ResourceOptions.AutoConnect   := True;
    ConexaoTeste.ResourceOptions.AutoReconnect := True;
    ConexaoTeste.Connected := True;
    Result := True;
  except
    on exc: exception do
    begin
      Result := False;
      MessageDlg(PChar('Ocorreu um erro ao tentar realizar a conexão: ' + exc.Message),mtError,[mbOk],0);
      Abort;
    end;
  end;
end;

end.
