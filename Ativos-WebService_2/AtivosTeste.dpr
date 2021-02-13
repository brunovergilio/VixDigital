program AtivosTeste;

uses
  Vcl.Forms,
  UAtivos in 'UAtivos.pas' {frmAtivosteste},
  ClienteService1 in 'ClienteService1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmAtivosteste, frmAtivosteste);
  Application.Run;
end.
