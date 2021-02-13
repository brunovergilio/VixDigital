unit uenviaemail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tfenviaemail = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fenviaemail: Tfenviaemail;

implementation

{$R *.dfm}
USES UDM, USMARTNOTAS;

procedure Tfenviaemail.Button1Click(Sender: TObject);
begin
LABEL1.Visible := FALSE;
LABEL2.Visible := FALSE;
LABEL3.Visible := TRUE;
BUTTON1.Visible := FALSE;
BUTTON2.Visible := FALSE;
Showmessage('Clique OK e aguarde um instante, por favor. A tela pode travar alguns segundos...');

Screen.Cursor := crHourGlass;
FENVIAEMAIL.Update;

LABEL1.Caption := 'Por favor, aguarde a mensagem de confirmação.';
LABEL2.Caption := '';
BUTTON1.Visible := FALSE;
BUTTON2.Visible := FALSE;
try
  begin// Conectar ao servidor
    FSMARTNOTAS.IdSMTP.Connect();
    FSMARTNOTAS.IdSMTP.Authenticate;
    FSMARTNOTAS.IdSMTP.Send(FSMARTNOTAS.IdMessage);
    Application.MessageBox('Email enviado com sucesso!', 'Confirmação',MB_ICONINFORMATION +   MB_OK);
  end
except
  begin
    LABEL1.Visible := TRUE;
    LABEL2.Visible := TRUE;
    LABEL3.Visible := FALSE;
    BUTTON1.Visible := TRUE;
    BUTTON2.Visible := TRUE;
    SHOWMESSAGE('Erro ao enviar e-mail. Por favor, entre em contato com o suporte.');
    CLOSE;
  end;
end;

LABEL1.Visible := TRUE;
LABEL2.Visible := TRUE;
LABEL3.Visible := FALSE;
BUTTON1.Visible := TRUE;
BUTTON2.Visible := TRUE;

Screen.Cursor := crDefault;

CLOSE;
end;

procedure Tfenviaemail.Button2Click(Sender: TObject);
begin
CLOSE;
end;

procedure Tfenviaemail.FormActivate(Sender: TObject);
begin
LABEL1.Visible := TRUE;
LABEL2.Visible := TRUE;
LABEL3.Visible := FALSE;
LABEL2.Caption := DM.IBTORCAMENTOEMAIL.Value + ' ?';
end;

end.
