unit uteclado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.StdCtrls;

type
  TFTECLADO = class(TForm)
    StringGrid2: TStringGrid;
    Panel7: TPanel;
    Panel1: TPanel;
    Label17: TLabel;
    Edit1: TEdit;
    Image10: TImage;
    Image18: TImage;
    Image17: TImage;
    Image12: TImage;
    procedure Image1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure StringGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTECLADO: TFTECLADO;

implementation

{$R *.dfm}

procedure TFTECLADO.FormCreate(Sender: TObject);
begin
StringGrid2.ColWidths[0] := 100;
StringGrid2.ColWidths[1] := 100;
StringGrid2.ColWidths[2] := 60;
StringGrid2.RowHeights[0] := 20;
StringGrid2.RowHeights[1] := 20;
StringGrid2.RowHeights[2] := 20;
StringGrid2.RowHeights[3] := 20;
StringGrid2.RowHeights[4] := 20;
StringGrid2.RowHeights[5] := 20;
StringGrid2.Cells[0,0]:= 'Telefone';
StringGrid2.Cells[1,0]:= 'Cliente';
StringGrid2.Cells[2,0]:= 'Cliente2';
StringGrid2.Cells[0,1]:= '99999-9999';
StringGrid2.Cells[1,1]:= 'José';
StringGrid2.Cells[2,1]:= 'Maria';
StringGrid2.Cells[0,2]:= '9888-8888';
StringGrid2.Cells[1,2]:= 'João';
StringGrid2.Cells[2,2]:= 'Joana';
StringGrid2.Cells[0,3]:= '9877-7777';
StringGrid2.Cells[1,3]:= 'Maria';
StringGrid2.Cells[2,3]:= 'Mário';
StringGrid2.Cells[0,4]:= '9866-6666';
StringGrid2.Cells[1,4]:= 'Joaquim';
StringGrid2.Cells[2,4]:= 'Joaquina';
StringGrid2.Cells[0,5]:= '9855-5555';
StringGrid2.Cells[1,5]:= 'Francisco';
StringGrid2.Cells[2,5]:= 'Fabiane';

end;

procedure TFTECLADO.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY = VK_ESCAPE THEN
  BEGIN
    CLOSE;
  END;
end;

procedure TFTECLADO.Image18Click(Sender: TObject);
begin
CLOSE;
end;

procedure TFTECLADO.Image1Click(Sender: TObject);
begin
CLOSE;
end;

procedure TFTECLADO.StringGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY = VK_ESCAPE THEN
  BEGIN
    CLOSE;
  END;
end;

end.
