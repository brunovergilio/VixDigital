unit uprodutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls;

type
  TFProdutos = class(TForm)
    Panel10: TPanel;
    Panel12: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    Label13: TLabel;
    Edit14: TEdit;
    SpeedButton2: TSpeedButton;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    Edit1: TEdit;
    DBEdit6: TDBEdit;
    Label4: TLabel;
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProdutos: TFProdutos;

implementation

{$R *.dfm}

uses udm, ucadastro;

procedure TFProdutos.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFProdutos.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFProdutos.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFProdutos.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFProdutos.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFProdutos.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFProdutos.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFProdutos.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFProdutos.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFProdutos.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFProdutos.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFProdutos.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFProdutos.FormActivate(Sender: TObject);
begin
DBEdit1.SetFocus;
end;

procedure TFProdutos.Image1MouseEnter(Sender: TObject);
begin
IMAGE1.Picture.LoadFromFile('C:\Smart Commerce\img\novo_b.png');
Label1.Font.Style := Label1.Font.Style + [TFontStyle.fsBold];
//PANEL5.Visible := FALSE;
//PANEL6.Visible := TRUE;
//PANEL6.Align := ALCLIENT;
end;

procedure TFProdutos.Image1MouseLeave(Sender: TObject);
begin
IMAGE1.Picture := nil;
IMAGE1.Picture.LoadFromFile('C:\Smart Commerce\img\novo.png');
Label1.Font.Style := Label1.Font.Style - [TFontStyle.fsBold];
//PANEL5.Visible := TRUE;
//PANEL6.Visible := FALSE;
//PANEL5.Align := ALCLIENT;
end;

procedure TFProdutos.SpeedButton1Click(Sender: TObject);
begin
EDIT1.Text := DBEDIT12.Text;

if EDIT14.Text = 'EDITA' then
  BEGIN
      TRY
        DM.IBTESTOQUE.Post;
        DM.IBTESTOQUE.ApplyUpdates();
        DM.IBTransaction1.Commitretaining;

        DM.IBTESTOQUE.ACTIVE := FALSE;
        DM.IBTESTOQUE.ACTIVE := TRUE;

        DM.IBTESTOQUE.Locate('REGISTRO', EDIT1.TEXT,[]);

        Close;

      EXCEPT
        SHOWMESSAGE('Erro de gravação. Entre em contato com o suporte.');
      END;
  END;

if EDIT14.Text = 'INSERE' then
  BEGIN
      TRY
        DM.IBTESTOQUE.Post;
        DM.IBTESTOQUE.ApplyUpdates();
        DM.IBTransaction1.Commitretaining;

        DM.IBTESTOQUE.ACTIVE := FALSE;
        DM.IBTESTOQUE.ACTIVE := TRUE;

        DM.IBTESTOQUE.Locate('REGISTRO', EDIT1.TEXT,[]);

        Close;

      EXCEPT
        SHOWMESSAGE('Erro de gravação. Entre em contato com o suporte.');
      END;
  END;

end;

procedure TFProdutos.SpeedButton2Click(Sender: TObject);
begin
Close;
end;

end.
