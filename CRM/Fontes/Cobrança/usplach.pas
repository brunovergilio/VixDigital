unit usplach;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, AdvProgr, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.XPMan;

type
  Tsplash = class(TForm)
    Button1: TButton;
    Timer1: TTimer;
    AdvProgress1: TAdvProgress;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  splash: Tsplash;

implementation

{$R *.dfm}

uses ulogin;


end.
