unit UCOZINHA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ImgList, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Data.DB, System.ImageList, System.UITypes, Vcl.Mask, MidasLib,
  Vcl.Imaging.jpeg, QuickRpt, QRCtrls;

type
  TFCOZINHA = class(TForm)
    Panel4: TPanel;
    Image1: TImage;
    Panel5: TPanel;
    Label11: TLabel;
    QRShape1: TQRShape;
    StringGrid1: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image52: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Label16: TLabel;
    Panel3: TPanel;
    Image10: TImage;
    procedure Image2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCOZINHA: TFCOZINHA;

implementation

{$R *.dfm}

uses UMESAS, UDM;

procedure TFCOZINHA.Button1Click(Sender: TObject);
begin
FMESAS.SHOWMODAL;
end;

procedure TFCOZINHA.FormCreate(Sender: TObject);
begin
LABEL1.Caption := DATETOSTR(NOW);
StringGrid1.ColWidths[0] := 100;
StringGrid1.ColWidths[1] := 50;
StringGrid1.ColWidths[2] := 30;
StringGrid1.ColWidths[3] := 200;
StringGrid1.ColWidths[4] := 70;
StringGrid1.RowHeights[0] := 20;
StringGrid1.RowHeights[1] := 20;
StringGrid1.RowHeights[2] := 20;
StringGrid1.RowHeights[3] := 20;
StringGrid1.RowHeights[4] := 20;
StringGrid1.RowHeights[5] := 20;
StringGrid1.Cells[0,0]:= '000001';
StringGrid1.Cells[0,1]:= '';
StringGrid1.Cells[0,2]:= '000002';
StringGrid1.Cells[0,3]:= '';
StringGrid1.Cells[0,4]:= '000003';
StringGrid1.Cells[0,5]:= '';
StringGrid1.Cells[1,0]:= '';
StringGrid1.Cells[1,1]:= '1';
StringGrid1.Cells[1,2]:= '';
StringGrid1.Cells[1,3]:= '1';
StringGrid1.Cells[1,4]:= '';
StringGrid1.Cells[1,5]:= '3';
StringGrid1.Cells[2,0]:= '';
StringGrid1.Cells[2,1]:= 'UN x';
StringGrid1.Cells[2,2]:= '';
StringGrid1.Cells[2,3]:= 'UN x';
StringGrid1.Cells[2,4]:= '';
StringGrid1.Cells[2,5]:= 'UN x';
StringGrid1.Cells[3,0]:= 'BALA DE MENTA';
StringGrid1.Cells[3,1]:= '       0,50  =';
StringGrid1.Cells[3,2]:= 'ÁGUA MINERAL';
StringGrid1.Cells[3,3]:= '       3,50  =';
StringGrid1.Cells[3,4]:= 'COCA COLA';
StringGrid1.Cells[3,5]:= '       4,50  =';
StringGrid1.Cells[4,0]:= '';
StringGrid1.Cells[4,1]:= '0,50';
StringGrid1.Cells[4,2]:= '';
StringGrid1.Cells[4,3]:= '4,50';
StringGrid1.Cells[4,4]:= '';
StringGrid1.Cells[4,5]:= '13,50';
end;

procedure TFCOZINHA.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY = VK_ESCAPE THEN
  BEGIN
    APPLICATION.Terminate; //ESC
  END;
IF KEY = VK_F2 THEN
  BEGIN
    SHOWMESSAGE('Abre Cupom'); //F2
  END;
IF KEY = VK_F3 THEN
  BEGIN
    SHOWMESSAGE('Fecha Cupom - Cartão'); //F3
  END;
IF KEY = VK_F4 THEN
  BEGIN
    SHOWMESSAGE('Altera Item'); //F4
  END;
IF KEY = VK_F6 THEN
  BEGIN
    SHOWMESSAGE('Cancela Cupom'); //F6
  END;
IF KEY = VK_F7 THEN
  BEGIN
    SHOWMESSAGE('Fecha Cupom - Direto Dinheiro'); //F7
  END;
IF KEY = VK_F8 THEN
  BEGIN
    SHOWMESSAGE('Desconto'); //F8
  END;
IF KEY = VK_F10 THEN
  BEGIN
    SHOWMESSAGE('Menu'); //F10
  END;
end;

procedure TFCOZINHA.Image10Click(Sender: TObject);
begin
CLOSE;
end;

procedure TFCOZINHA.Image2Click(Sender: TObject);
begin
Application.Minimize;
end;

end.
