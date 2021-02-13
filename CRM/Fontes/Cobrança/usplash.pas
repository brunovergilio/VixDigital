unit usplash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  AdvProgressBar, AdvOfficeImage;

type
  Tfsplash = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    lblstatus: TLabel;
    AdvProgressBar1: TAdvProgressBar;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fsplash: Tfsplash;

implementation

{$R *.dfm}

procedure Tfsplash.Timer1Timer(Sender: TObject);
begin
if advprogressbar1.position = 18 then lblstatus.caption := lblstatus.caption + '.';
Application.ProcessMessages;
end;

end.
