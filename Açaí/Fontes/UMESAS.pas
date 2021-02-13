unit UMESAS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ImgList, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Data.DB, System.ImageList, System.UITypes, Vcl.Mask, MidasLib,
  Vcl.Imaging.jpeg, QuickRpt, QRCtrls;

type
  TFMESAS = class(TForm)
    Panel4: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel1: TPanel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    Image29: TImage;
    Image30: TImage;
    Image31: TImage;
    Image32: TImage;
    Image33: TImage;
    Image34: TImage;
    Image35: TImage;
    Image36: TImage;
    Image37: TImage;
    Image38: TImage;
    Image39: TImage;
    Image40: TImage;
    Image41: TImage;
    Image42: TImage;
    Image43: TImage;
    Image44: TImage;
    Image45: TImage;
    Image46: TImage;
    Image47: TImage;
    Image48: TImage;
    Image49: TImage;
    Image50: TImage;
    Image51: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Panel2: TPanel;
    Image52: TImage;
    Image53: TImage;
    Label54: TLabel;
    Image54: TImage;
    Image55: TImage;
    Image56: TImage;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Image52Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMESAS: TFMESAS;

implementation

{$R *.dfm}

uses UMENU, uteclado;

procedure TFMESAS.FormCreate(Sender: TObject);
begin
LABEL1.Caption := DATETOSTR(NOW);
end;

procedure TFMESAS.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure TFMESAS.Image2Click(Sender: TObject);
begin
FMENU.SHOWMODAL;
end;

procedure TFMESAS.Image3Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFMESAS.Image52Click(Sender: TObject);
begin
FTECLADO.SHOWMODAL;
end;

end.
