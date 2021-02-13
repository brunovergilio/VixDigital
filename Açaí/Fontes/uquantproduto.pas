unit uquantproduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask;

type
  Tfquantproduto = class(TForm)
    MaskEdit1: TMaskEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fquantproduto: Tfquantproduto;

implementation

{$R *.dfm}
USES UDM, UMENU;

procedure Tfquantproduto.Button1Click(Sender: TObject);
begin
IF MASKEDIT1.Text = '' THEN MASKEDIT1.Text := '1';
FMENU.Edit2.Text := MASKEDIT1.Text;
FMENU.LANCAPRODUTO;
CLOSE;
end;

procedure Tfquantproduto.Button2Click(Sender: TObject);
begin
CLOSE;
end;

procedure Tfquantproduto.FormActivate(Sender: TObject);
begin
MASKEDIT1.Text := '';
MASKEDIT1.SetFocus;
end;

procedure Tfquantproduto.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY = VK_RETURN THEN BUTTON1.SETFOCUS;
end;

procedure Tfquantproduto.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
//      Perform(Wm_NextDlgCtl,0,0);
      BUTTON1.SetFocus;
      Maskedit1.Text := FORMATFLOAT('0.00', STRTOFLOAT(MASKEDIT1.Text));
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

end.
