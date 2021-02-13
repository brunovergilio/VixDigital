unit uclientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  Tfclientes = class(TForm)
    Panel10: TPanel;
    Panel11: TPanel;
    Label25: TLabel;
    Panel12: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Label30: TLabel;
    DBGrid1: TDBGrid;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image13MouseEnter(Sender: TObject);
    procedure Image13MouseLeave(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image14MouseEnter(Sender: TObject);
    procedure Image14MouseLeave(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure Image15MouseEnter(Sender: TObject);
    procedure Image15MouseLeave(Sender: TObject);
    procedure Image16MouseEnter(Sender: TObject);
    procedure Image16MouseLeave(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure Image17MouseEnter(Sender: TObject);
    procedure Image17MouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fclientes: Tfclientes;

implementation

{$R *.dfm}
USES UDM, ucadastro, uprocura;

procedure Tfclientes.DBGrid1DblClick(Sender: TObject);
begin
DM.IBTClifor.edit;
FCADASTRO.Edit14.Text := 'EDITA';
FCADASTRO.ShowModal;
end;

procedure Tfclientes.Image13Click(Sender: TObject);
begin
DM.IBTCLIFOR.Append;

DM.IBQGENClifor.Active := FALSE;
DM.IBQGENClifor.SQL.Text := 'select gen_id(G_CLIFOR,1) from rdb$database';
DM.IBQGENClifor.Active := TRUE;

FCADASTRO.DBEdit12.Text := FCADASTRO.DBEdit14.Text;

FCADASTRO.Edit14.Text := 'INSERE';
FCADASTRO.DBEdit5.Text := 'MUTUM';
FCADASTRO.DBEdit6.Text := '36955-000';
FCADASTRO.DBEdit7.Text := 'MG';

FCADASTRO.SHOWMODAL;
end;

procedure Tfclientes.Image13MouseEnter(Sender: TObject);
begin
IMAGE13.Picture.LoadFromFile('novo_b.png');
Label26.Font.Style := Label26.Font.Style + [TFontStyle.fsBold];
end;

procedure Tfclientes.Image13MouseLeave(Sender: TObject);
begin
IMAGE13.Picture := nil;
IMAGE13.Picture.LoadFromFile('novo.png');
Label26.Font.Style := Label26.Font.Style - [TFontStyle.fsBold];
end;

procedure Tfclientes.Image14Click(Sender: TObject);
begin
SHOWMESSAGE('Esta operação é irreversível. Antes de continuar é aconselhável que se faça um backup do sistema.');
If  MessageDlg('Tem certeza que deseja excluir o registro?',mtConfirmation,[mbyes,mbno],0)=mryes
  then
     begin
       DM.IBTCLIFOR.delete;
       DM.IBTCLIFOR.ApplyUpdates();
       DM.IBTransaction1.Commitretaining;
       DM.IBTCLIFOR.active := false;
       DM.IBTCLIFOR.active := true;
     end;
end;

procedure Tfclientes.Image14MouseEnter(Sender: TObject);
begin
IMAGE14.Picture.LoadFromFile('apagar_b.png');
Label27.Font.Style := Label27.Font.Style + [TFontStyle.fsBold];
end;

procedure Tfclientes.Image14MouseLeave(Sender: TObject);
begin
IMAGE14.Picture := nil;
IMAGE14.Picture.LoadFromFile('apagar.png');
Label27.Font.Style := Label27.Font.Style - [TFontStyle.fsBold];
end;

procedure Tfclientes.Image15Click(Sender: TObject);
begin
FPROCURA.EDIT2.TEXT := 'CLIFOR';
FPROCURA.DBGRID2.Visible := TRUE;
FPROCURA.SHOWMODAL;
end;

procedure Tfclientes.Image15MouseEnter(Sender: TObject);
begin
IMAGE15.Picture.LoadFromFile('procurar_b.png');
Label28.Font.Style := Label28.Font.Style + [TFontStyle.fsBold];
end;

procedure Tfclientes.Image15MouseLeave(Sender: TObject);
begin
IMAGE15.Picture := nil;
IMAGE15.Picture.LoadFromFile('C:\Smart Commerce\img\procurar.png');
Label28.Font.Style := Label28.Font.Style - [TFontStyle.fsBold];
end;

procedure Tfclientes.Image16MouseEnter(Sender: TObject);
begin
IMAGE16.Picture.LoadFromFile('imprimir_b.png');
Label29.Font.Style := Label29.Font.Style + [TFontStyle.fsBold];
end;

procedure Tfclientes.Image16MouseLeave(Sender: TObject);
begin
IMAGE16.Picture := nil;
IMAGE16.Picture.LoadFromFile('imprimir.png');
Label29.Font.Style := Label29.Font.Style - [TFontStyle.fsBold];
end;

procedure Tfclientes.Image17Click(Sender: TObject);
begin
DM.IBTClifor.edit;
FCADASTRO.Edit14.Text := 'EDITA';
FCADASTRO.ShowModal;
end;

procedure Tfclientes.Image17MouseEnter(Sender: TObject);
begin
IMAGE17.Picture.LoadFromFile('alterar_b.png');
Label30.Font.Style := Label30.Font.Style + [TFontStyle.fsBold];
end;

procedure Tfclientes.Image17MouseLeave(Sender: TObject);
begin
IMAGE17.Picture := nil;
IMAGE17.Picture.LoadFromFile('alterar.png');
Label30.Font.Style := Label30.Font.Style - [TFontStyle.fsBold];
end;

end.
