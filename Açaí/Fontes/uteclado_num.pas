unit uteclado_num;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFTECLADO_NUM = class(TForm)
    Image1: TImage;
    Image2: TImage;
    procedure Image1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTECLADO_NUM: TFTECLADO_NUM;

implementation

{$R *.dfm}

procedure TFTECLADO_NUM.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY = VK_ESCAPE THEN
  BEGIN
    CLOSE;
  END;
end;

procedure TFTECLADO_NUM.Image1Click(Sender: TObject);
begin
CLOSE;
end;

procedure TFTECLADO_NUM.Image2Click(Sender: TObject);
begin
CLOSE;
end;

end.
