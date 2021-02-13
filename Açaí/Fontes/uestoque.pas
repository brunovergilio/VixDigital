unit uestoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFESTOQUE = class(TForm)
    Panel13: TPanel;
    Panel14: TPanel;
    Label32: TLabel;
    Panel15: TPanel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    DBGrid2: TDBGrid;
    procedure DBGrid2DblClick(Sender: TObject);
    procedure Image19Click(Sender: TObject);
    procedure Image19MouseEnter(Sender: TObject);
    procedure Image19MouseLeave(Sender: TObject);
    procedure Image20Click(Sender: TObject);
    procedure Image20MouseEnter(Sender: TObject);
    procedure Image20MouseLeave(Sender: TObject);
    procedure Image21Click(Sender: TObject);
    procedure Image21MouseEnter(Sender: TObject);
    procedure Image21MouseLeave(Sender: TObject);
    procedure Image22MouseEnter(Sender: TObject);
    procedure Image22MouseLeave(Sender: TObject);
    procedure Image23MouseEnter(Sender: TObject);
    procedure Image23Click(Sender: TObject);
    procedure Image23MouseLeave(Sender: TObject);
    procedure Label32Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FESTOQUE: TFESTOQUE;

implementation

{$R *.dfm}
USES UDM, uprodutos, uprocura;

procedure TFESTOQUE.DBGrid2DblClick(Sender: TObject);
begin
//DM.IBTESTOQUE.edit;
//FPRODUTOS.Edit14.Text := 'EDITA';
//FPRODUTOS.ShowModal;
end;

procedure TFESTOQUE.Image19Click(Sender: TObject);
begin
DM.IBTESTOQUE.Append;

DM.IBQGENESTOQUE.Active := FALSE;
DM.IBQGENESTOQUE.SQL.Text := 'select gen_id(G_ESTOQUE,1) from rdb$database';
DM.IBQGENESTOQUE.Active := TRUE;

FPRODUTOS.DBEdit12.Text := FPRODUTOS.DBEdit14.Text;

FPRODUTOS.Edit14.Text := 'INSERE';

FPRODUTOS.SHOWMODAL;

end;

procedure TFESTOQUE.Image19MouseEnter(Sender: TObject);
begin
IMAGE19.Picture.LoadFromFile('novo_b.png');
Label33.Font.Style := Label33.Font.Style + [TFontStyle.fsBold];
end;

procedure TFESTOQUE.Image19MouseLeave(Sender: TObject);
begin
IMAGE19.Picture := nil;
IMAGE19.Picture.LoadFromFile('novo.png');
Label33.Font.Style := Label33.Font.Style - [TFontStyle.fsBold];
end;

procedure TFESTOQUE.Image20Click(Sender: TObject);
begin
SHOWMESSAGE('Esta operação é irreversível. Antes de continuar é aconselhável que se faça um backup do sistema.');
If  MessageDlg('Tem certeza que deseja excluir o registro?',mtConfirmation,[mbyes,mbno],0)=mryes
  then
     begin
       DM.IBTESTOQUE.delete;
       DM.IBTESTOQUE.ApplyUpdates();
       DM.IBTransaction1.Commitretaining;
       DM.IBTESTOQUE.active := false;
       DM.IBTESTOQUE.active := true;
     end;
end;

procedure TFESTOQUE.Image20MouseEnter(Sender: TObject);
begin
IMAGE20.Picture.LoadFromFile('apagar_b.png');
Label34.Font.Style := Label34.Font.Style + [TFontStyle.fsBold];
end;

procedure TFESTOQUE.Image20MouseLeave(Sender: TObject);
begin
IMAGE20.Picture := nil;
IMAGE20.Picture.LoadFromFile('apagar.png');
Label34.Font.Style := Label34.Font.Style - [TFontStyle.fsBold];
end;

procedure TFESTOQUE.Image21Click(Sender: TObject);
begin
FPROCURA.EDIT2.TEXT := 'ESTOQUE';
FPROCURA.DBGRID1.Visible := TRUE;
FPROCURA.SHOWMODAL;
end;

procedure TFESTOQUE.Image21MouseEnter(Sender: TObject);
begin
IMAGE21.Picture.LoadFromFile('procurar_b.png');
Label35.Font.Style := Label35.Font.Style + [TFontStyle.fsBold];
end;

procedure TFESTOQUE.Image21MouseLeave(Sender: TObject);
begin
IMAGE21.Picture := nil;
IMAGE21.Picture.LoadFromFile('procurar.png');
Label35.Font.Style := Label35.Font.Style - [TFontStyle.fsBold];
end;

procedure TFESTOQUE.Image22MouseEnter(Sender: TObject);
begin
IMAGE22.Picture.LoadFromFile('imprimir_b.png');
Label36.Font.Style := Label36.Font.Style + [TFontStyle.fsBold];
end;

procedure TFESTOQUE.Image22MouseLeave(Sender: TObject);
begin
IMAGE22.Picture := nil;
IMAGE22.Picture.LoadFromFile('imprimir.png');
Label36.Font.Style := Label36.Font.Style - [TFontStyle.fsBold];
end;

procedure TFESTOQUE.Image23Click(Sender: TObject);
begin
DM.IBTESTOQUE.edit;
FPRODUTOS.Edit14.Text := 'EDITA';
FPRODUTOS.ShowModal;
end;

procedure TFESTOQUE.Image23MouseEnter(Sender: TObject);
begin
IMAGE23.Picture.LoadFromFile('alterar_b.png');
Label37.Font.Style := Label37.Font.Style + [TFontStyle.fsBold];
end;

procedure TFESTOQUE.Image23MouseLeave(Sender: TObject);
begin
IMAGE23.Picture := nil;
IMAGE23.Picture.LoadFromFile('alterar.png');
Label37.Font.Style := Label37.Font.Style - [TFontStyle.fsBold];
end;

procedure TFESTOQUE.Label32Click(Sender: TObject);
begin
close;
end;

end.
