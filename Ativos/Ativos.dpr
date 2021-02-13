program Ativos;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  ClienteService1 in 'ClienteService1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
