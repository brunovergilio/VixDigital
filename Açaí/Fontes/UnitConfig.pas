unit UnitConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFCONFIG = class(TForm)
    SpeedButton1: TSpeedButton;
    RadioGroup1: TRadioGroup;
    Memo1: TMemo;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCONFIG: TFCONFIG;

implementation

{$R *.dfm}

procedure TFCONFIG.FormActivate(Sender: TObject);
begin
memo1.Lines.LoadFromFile('C:\SMART COMMERCE\CONFIG.INI');
if MEMO1.Lines[0] = 'A4' THEN
  BEGIN
    RADIOGROUP1.ItemIndex := 0;
  END;

if MEMO1.Lines[0] = 'A5' THEN
  BEGIN
    RADIOGROUP1.ItemIndex := 1;
  END;
end;

end.
