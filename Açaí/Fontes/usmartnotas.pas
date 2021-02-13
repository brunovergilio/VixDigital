unit usmartnotas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, System.UITypes, QRPDFFilt,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdPOP3,
  IdMessage, IdAttachment,IdAttachmentFile, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, Vcl.DBCtrls, Vcl.Mask;

type
  TFSmartNotas = class(TForm)
    Panel16: TPanel;
    Panel17: TPanel;
    Image18: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Panel18: TPanel;
    Label31: TLabel;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    Image1: TImage;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Image2: TImage;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    procedure Image18MouseEnter(Sender: TObject);
    procedure Image18MouseLeave(Sender: TObject);
    procedure Image24MouseEnter(Sender: TObject);
    procedure Image24MouseLeave(Sender: TObject);
    procedure Image25MouseEnter(Sender: TObject);
    procedure Image25MouseLeave(Sender: TObject);
    procedure Image26MouseEnter(Sender: TObject);
    procedure Image26MouseLeave(Sender: TObject);
    procedure Image27MouseEnter(Sender: TObject);
    procedure Image27MouseLeave(Sender: TObject);
    procedure Label31Click(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure Image2MouseEnter(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Image18Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSmartNotas: TFSmartNotas;
  FormatoBR: TFormatSettings;
  FormatoUS: TFormatSettings;

implementation

{$R *.dfm}
USES UDM, uenvianota, UMENU;

procedure TFSmartNotas.Image18Click(Sender: TObject);
begin
FENVIANOTA.ShowModal;
end;

procedure TFSmartNotas.Image18MouseEnter(Sender: TObject);
begin
IMAGE18.Picture.LoadFromFile('novo_b.png');
Label38.Font.Style := Label38.Font.Style + [TFontStyle.fsBold];
end;

procedure TFSmartNotas.Image18MouseLeave(Sender: TObject);
begin
IMAGE18.Picture := nil;
IMAGE18.Picture.LoadFromFile('novo.png');
Label38.Font.Style := Label38.Font.Style - [TFontStyle.fsBold];
end;

procedure TFSmartNotas.Image1MouseEnter(Sender: TObject);
begin
IMAGE1.Picture.LoadFromFile('estoque_b.png');
Label1.Font.Style := Label1.Font.Style + [TFontStyle.fsBold];
end;

procedure TFSmartNotas.Image1MouseLeave(Sender: TObject);
begin
IMAGE1.Picture := nil;
IMAGE1.Picture.LoadFromFile('estoque.png');
Label1.Font.Style := Label1.Font.Style - [TFontStyle.fsBold];
end;

procedure TFSmartNotas.Image24MouseEnter(Sender: TObject);
begin
IMAGE24.Picture.LoadFromFile('apagar_b.png');
Label39.Font.Style := Label39.Font.Style + [TFontStyle.fsBold];
end;

procedure TFSmartNotas.Image24MouseLeave(Sender: TObject);
begin
IMAGE24.Picture := nil;
IMAGE24.Picture.LoadFromFile('apagar.png');
Label39.Font.Style := Label39.Font.Style - [TFontStyle.fsBold];
end;

procedure TFSmartNotas.Image25MouseEnter(Sender: TObject);
begin
IMAGE25.Picture.LoadFromFile('procurar_b.png');
Label40.Font.Style := Label40.Font.Style + [TFontStyle.fsBold];
end;

procedure TFSmartNotas.Image25MouseLeave(Sender: TObject);
begin
IMAGE25.Picture := nil;
IMAGE25.Picture.LoadFromFile('procurar.png');
Label40.Font.Style := Label40.Font.Style - [TFontStyle.fsBold];
end;

procedure TFSmartNotas.Image26MouseEnter(Sender: TObject);
begin
IMAGE26.Picture.LoadFromFile('imprimir_b.png');
Label41.Font.Style := Label41.Font.Style + [TFontStyle.fsBold];
end;

procedure TFSmartNotas.Image26MouseLeave(Sender: TObject);
begin
IMAGE26.Picture := nil;
IMAGE26.Picture.LoadFromFile('imprimir.png');
Label41.Font.Style := Label41.Font.Style - [TFontStyle.fsBold];
end;

procedure TFSmartNotas.Image27MouseEnter(Sender: TObject);
begin
IMAGE27.Picture.LoadFromFile('alterar_b.png');
Label42.Font.Style := Label42.Font.Style + [TFontStyle.fsBold];
end;

procedure TFSmartNotas.Image27MouseLeave(Sender: TObject);
begin
IMAGE27.Picture := nil;
IMAGE27.Picture.LoadFromFile('alterar.png');
Label42.Font.Style := Label42.Font.Style - [TFontStyle.fsBold];
end;

procedure TFSmartNotas.Image2MouseEnter(Sender: TObject);
begin
IMAGE2.Picture.LoadFromFile('config_b.png');
Label2.Font.Style := Label2.Font.Style + [TFontStyle.fsBold];
end;

procedure TFSmartNotas.Image2MouseLeave(Sender: TObject);
begin
IMAGE2.Picture := nil;
IMAGE2.Picture.LoadFromFile('config.png');
Label2.Font.Style := Label2.Font.Style - [TFontStyle.fsBold];
end;

procedure TFSmartNotas.Label31Click(Sender: TObject);
begin
close;
end;

end.
