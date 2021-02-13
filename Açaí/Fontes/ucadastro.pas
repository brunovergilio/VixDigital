unit ucadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls;

type
  TFCadastro = class(TForm)
    Panel10: TPanel;
    Panel12: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    Edit14: TEdit;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    EDIT4: TMaskEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    MaskEdit1: TMaskEdit;
    Label12: TLabel;
    Label13: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
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
  FCadastro: TFCadastro;

implementation

{$R *.dfm}

uses udm, UMENU, uprocura2;

procedure TFCadastro.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFCadastro.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFCadastro.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFCadastro.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFCadastro.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFCadastro.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFCadastro.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFCadastro.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFCadastro.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFCadastro.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFCadastro.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFCadastro.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFCadastro.FormActivate(Sender: TObject);
begin
EDIT2.Clear;
EDIT3.Clear;
EDIT4.Clear;
EDIT5.Clear;
EDIT6.Clear;
EDIT7.Clear;
EDIT8.Clear;
EDIT9.Clear;
EDIT10.Clear;
EDIT11.Clear;
MASKEDIT1.Clear;
FCADASTRO.Edit2.SetFocus;
end;

procedure TFCadastro.Image1MouseEnter(Sender: TObject);
begin
IMAGE1.Picture.LoadFromFile('C:\Smart Commerce\img\novo_b.png');
Label1.Font.Style := Label1.Font.Style + [TFontStyle.fsBold];
//PANEL5.Visible := FALSE;
//PANEL6.Visible := TRUE;
//PANEL6.Align := ALCLIENT;
end;

procedure TFCadastro.Image1MouseLeave(Sender: TObject);
begin
IMAGE1.Picture := nil;
IMAGE1.Picture.LoadFromFile('C:\Smart Commerce\img\novo.png');
Label1.Font.Style := Label1.Font.Style - [TFontStyle.fsBold];
//PANEL5.Visible := TRUE;
//PANEL6.Visible := FALSE;
//PANEL5.Align := ALCLIENT;
end;

procedure TFCadastro.SpeedButton1Click(Sender: TObject);
begin

//PRIMEIRO DE TUDO, VERIFICA SE JÁ EXISTE UM CLIENTE COM ESSE NOME
fDM.IBQCLIFOR.ACTIVE := FALSE;
fDM.IBQCLIFOR.SQL.Text := 'SELECT * FROM CLIFOR WHERE NOME = ' + #39 + EDIT2.Text + #39;
fDM.IBQCLIFOR.ACTIVE := TRUE;

IF fDM.IBQCLIFOR.RECORDCOUNT > 0 THEN 
  BEGIN
    SHOWMESSAGE('Já existe um cliente com este nome.');
    EXIT;
  END;                                              

      TRY
           FDM.IBQGENCLIFOR.Active := FALSE;
           FDM.IBQGENCLIFOR.SQL.Text := 'select gen_id(G_CLIFOR,1) from rdb$database';
           FDM.IBQGENCLIFOR.Active := TRUE;

           FDM.IBQCLIFOR.Active := FALSE;
           FDM.IBQCLIFOR.SQL.Text :=  'INSERT INTO CLIFOR (NOME, CONTATO, FONE, ENDERE, COMPLE, CEP, CIDADE, ESTADO, IDENTIFICADOR1, OBS, CELULAR, REGISTRO) VALUES ' +
                                         '(' + #39 + EDIT2.Text + #39 + ',' +
                                         #39 + EDIT3.Text + #39 + ',' +
                                         #39 + EDIT4.Text + #39 + ',' +
                                         #39 + EDIT5.Text + #39 + ',' +
                                         #39 + EDIT6.Text + #39 + ',' +
                                         #39 + EDIT7.Text + #39 + ',' +
                                         #39 + EDIT8.Text + #39 + ',' +
                                         #39 + EDIT9.Text + #39 + ',' +
                                         #39 + EDIT10.Text + #39 + ',' +
                                         #39 + EDIT11.Text + #39 + ',' +
                                         #39 + MASKEDIT1.Text + #39 + ',' +
                                         #39 + DBEDIT3.Text + #39 + ')';
           FDM.IBQCLIFOR.ExecSQL;

           FDM.IBTransaction1.CommitRetaining;

           fDM.IBQCLIFOR.ACTIVE := FALSE;
           fDM.IBQCLIFOR.SQL.Text := 'SELECT * FROM CLIFOR WHERE NOME = ' + #39 + EDIT2.Text + #39;
           fDM.IBQCLIFOR.ACTIVE := TRUE;

           FDM.IBQGENCLIFOR.Active := FALSE;

          //VAI LANÇAR OS DADOS LÁ NO ORÇAMENTO E NOS LABELS DA TELA DE VENDAS
          {FMENU.LABEL31.CAPTION := FDM.IBQCLIFORFONE.VALUE;
          FMENU.LABEL21.CAPTION := FDM.IBQCLIFORNOME.VALUE;
          FMENU.LABEL22.CAPTION := FDM.IBQCLIFORENDERE.VALUE;
          FMENU.LABEL23.CAPTION := FDM.IBQCLIFORIDENTIFICADOR1.VALUE;
          FMENU.LABEL24.CAPTION := FDM.IBQCLIFORCOMPLE.VALUE;
          FMENU.LABEL25.CAPTION := FDM.IBQCLIFOROBS.VALUE;
          FMENU.LABEL26.CAPTION := FDM.IBQCLIFORCIDADE.VALUE;
          }
          FPROCURA2.CLOSE;
          Close;
      EXCEPT
        SHOWMESSAGE('Erro de gravação. Verifique se já não existe cliente com este nome, ou entre em contato com o suporte.');
      END;
end;

procedure TFCadastro.SpeedButton2Click(Sender: TObject);
begin
Close;
end;

end.
