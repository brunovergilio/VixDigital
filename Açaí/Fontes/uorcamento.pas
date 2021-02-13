unit uorcamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.TabNotBk;

type
  TFORCAMENTO = class(TForm)
    Bevel1: TBevel;
    Label2: TLabel;
    Label3: TLabel;
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
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    Bevel2: TBevel;
    Bevel13: TBevel;
    Bevel14: TBevel;
    Bevel15: TBevel;
    Bevel5: TBevel;
    Bevel16: TBevel;
    Bevel17: TBevel;
    Bevel18: TBevel;
    Bevel19: TBevel;
    Bevel20: TBevel;
    Bevel21: TBevel;
    Bevel22: TBevel;
    Bevel6: TBevel;
    Bevel23: TBevel;
    Bevel3: TBevel;
    EQ3: TEdit;
    EQ4: TEdit;
    EQ5: TEdit;
    EQ6: TEdit;
    EQ7: TEdit;
    EQ8: TEdit;
    EQ9: TEdit;
    EQ10: TEdit;
    EQ11: TEdit;
    EQ12: TEdit;
    EQ13: TEdit;
    EQ14: TEdit;
    EQ15: TEdit;
    EQ16: TEdit;
    EQ17: TEdit;
    EQ18: TEdit;
    EQ19: TEdit;
    EQ20: TEdit;
    EQ21: TEdit;
    EQ22: TEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    EVU1: TEdit;
    EVU2: TEdit;
    EVU3: TEdit;
    EVU4: TEdit;
    EVU5: TEdit;
    EVU6: TEdit;
    EVU7: TEdit;
    EVU8: TEdit;
    EVU9: TEdit;
    EVU10: TEdit;
    EVU11: TEdit;
    EVU12: TEdit;
    EVU13: TEdit;
    EVU14: TEdit;
    EVU15: TEdit;
    EVU16: TEdit;
    EVU17: TEdit;
    EVU18: TEdit;
    EVU19: TEdit;
    EVU20: TEdit;
    EVU21: TEdit;
    EVU22: TEdit;
    Panel7: TPanel;
    EVT1: TEdit;
    EVT2: TEdit;
    EVT3: TEdit;
    EVT4: TEdit;
    EVT5: TEdit;
    EVT6: TEdit;
    EVT7: TEdit;
    EVT8: TEdit;
    EVT9: TEdit;
    EVT10: TEdit;
    EVT11: TEdit;
    EVT12: TEdit;
    EVT13: TEdit;
    EVT14: TEdit;
    EVT15: TEdit;
    EVT16: TEdit;
    EVT17: TEdit;
    EVT18: TEdit;
    EVT19: TEdit;
    EVT20: TEdit;
    EVT21: TEdit;
    EVT22: TEdit;
    EQ1: TEdit;
    EQ2: TEdit;
    Bevel4: TBevel;
    Memo1: TMemo;
    Bevel24: TBevel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure EQ1Enter(Sender: TObject);
    procedure EQ1Exit(Sender: TObject);
    procedure EQ2Exit(Sender: TObject);
    procedure EQ3Enter(Sender: TObject);
    procedure EQ3Exit(Sender: TObject);
    procedure EQ4Enter(Sender: TObject);
    procedure EQ4Exit(Sender: TObject);
    procedure EQ5Enter(Sender: TObject);
    procedure EQ5Exit(Sender: TObject);
    procedure EQ6Enter(Sender: TObject);
    procedure EQ6Exit(Sender: TObject);
    procedure EQ7Enter(Sender: TObject);
    procedure EQ7Exit(Sender: TObject);
    procedure EQ8Enter(Sender: TObject);
    procedure EQ8Exit(Sender: TObject);
    procedure EQ9Enter(Sender: TObject);
    procedure EQ9Exit(Sender: TObject);
    procedure EQ10Enter(Sender: TObject);
    procedure EQ10Exit(Sender: TObject);
    procedure EQ11Enter(Sender: TObject);
    procedure EQ11Exit(Sender: TObject);
    procedure EQ12Enter(Sender: TObject);
    procedure EQ12Exit(Sender: TObject);
    procedure EQ13Enter(Sender: TObject);
    procedure EQ13Exit(Sender: TObject);
    procedure EQ14Enter(Sender: TObject);
    procedure EQ14Exit(Sender: TObject);
    procedure EQ15Enter(Sender: TObject);
    procedure EQ15Exit(Sender: TObject);
    procedure EQ16Enter(Sender: TObject);
    procedure EQ16Exit(Sender: TObject);
    procedure EQ17Enter(Sender: TObject);
    procedure EQ17Exit(Sender: TObject);
    procedure EQ18Enter(Sender: TObject);
    procedure EQ18Exit(Sender: TObject);
    procedure EQ19Enter(Sender: TObject);
    procedure EQ19Exit(Sender: TObject);
    procedure EQ20Enter(Sender: TObject);
    procedure EQ20Exit(Sender: TObject);
    procedure EQ21Enter(Sender: TObject);
    procedure EQ21Exit(Sender: TObject);
    procedure EQ22Enter(Sender: TObject);
    procedure EQ22Exit(Sender: TObject);
    procedure EQ2Enter(Sender: TObject);
    procedure EQ1KeyPress(Sender: TObject; var Key: Char);
    procedure EQ2KeyPress(Sender: TObject; var Key: Char);
    procedure EQ3KeyPress(Sender: TObject; var Key: Char);
    procedure EQ4KeyPress(Sender: TObject; var Key: Char);
    procedure EQ5KeyPress(Sender: TObject; var Key: Char);
    procedure EQ6KeyPress(Sender: TObject; var Key: Char);
    procedure EQ7KeyPress(Sender: TObject; var Key: Char);
    procedure EQ8KeyPress(Sender: TObject; var Key: Char);
    procedure EQ9KeyPress(Sender: TObject; var Key: Char);
    procedure EQ10KeyPress(Sender: TObject; var Key: Char);
    procedure EQ11KeyPress(Sender: TObject; var Key: Char);
    procedure EQ12KeyPress(Sender: TObject; var Key: Char);
    procedure EQ13KeyPress(Sender: TObject; var Key: Char);
    procedure EQ14KeyPress(Sender: TObject; var Key: Char);
    procedure EQ15KeyPress(Sender: TObject; var Key: Char);
    procedure EQ16KeyPress(Sender: TObject; var Key: Char);
    procedure EQ17KeyPress(Sender: TObject; var Key: Char);
    procedure EQ18KeyPress(Sender: TObject; var Key: Char);
    procedure EQ19KeyPress(Sender: TObject; var Key: Char);
    procedure EQ20KeyPress(Sender: TObject; var Key: Char);
    procedure EQ21KeyPress(Sender: TObject; var Key: Char);
    procedure EQ22KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure EVU1Enter(Sender: TObject);
    procedure EVU2Enter(Sender: TObject);
    procedure EVU3Enter(Sender: TObject);
    procedure EVU4Enter(Sender: TObject);
    procedure EVU5Enter(Sender: TObject);
    procedure EVU6Enter(Sender: TObject);
    procedure EVU7Enter(Sender: TObject);
    procedure EVU8Enter(Sender: TObject);
    procedure EVU9Enter(Sender: TObject);
    procedure EVU10Enter(Sender: TObject);
    procedure EVU11Enter(Sender: TObject);
    procedure EVU12Enter(Sender: TObject);
    procedure EVU13Enter(Sender: TObject);
    procedure EVU14Enter(Sender: TObject);
    procedure EVU15Enter(Sender: TObject);
    procedure EVU16Enter(Sender: TObject);
    procedure EVU17Enter(Sender: TObject);
    procedure EVU18Enter(Sender: TObject);
    procedure EVU19Enter(Sender: TObject);
    procedure EVU20Enter(Sender: TObject);
    procedure EVU21Enter(Sender: TObject);
    procedure EVU22Enter(Sender: TObject);
    procedure EVU1Exit(Sender: TObject);
    procedure EVU2Exit(Sender: TObject);
    procedure EVU3Exit(Sender: TObject);
    procedure EVU4Exit(Sender: TObject);
    procedure EVU5Exit(Sender: TObject);
    procedure EVU6Exit(Sender: TObject);
    procedure EVU7Exit(Sender: TObject);
    procedure EVU8Exit(Sender: TObject);
    procedure EVU9Exit(Sender: TObject);
    procedure EVU10Exit(Sender: TObject);
    procedure EVU11Exit(Sender: TObject);
    procedure EVU12Exit(Sender: TObject);
    procedure EVU13Exit(Sender: TObject);
    procedure EVU14Exit(Sender: TObject);
    procedure EVU15Exit(Sender: TObject);
    procedure EVU16Exit(Sender: TObject);
    procedure EVU17Exit(Sender: TObject);
    procedure EVU18Exit(Sender: TObject);
    procedure EVU19Exit(Sender: TObject);
    procedure EVU20Exit(Sender: TObject);
    procedure EVU21Exit(Sender: TObject);
    procedure EVU22Exit(Sender: TObject);
    procedure EVU1KeyPress(Sender: TObject; var Key: Char);
    procedure EVU2KeyPress(Sender: TObject; var Key: Char);
    procedure EVU3KeyPress(Sender: TObject; var Key: Char);
    procedure EVU4KeyPress(Sender: TObject; var Key: Char);
    procedure EVU5KeyPress(Sender: TObject; var Key: Char);
    procedure EVU6KeyPress(Sender: TObject; var Key: Char);
    procedure EVU7KeyPress(Sender: TObject; var Key: Char);
    procedure EVU8KeyPress(Sender: TObject; var Key: Char);
    procedure EVU9KeyPress(Sender: TObject; var Key: Char);
    procedure EVU10KeyPress(Sender: TObject; var Key: Char);
    procedure EVU11KeyPress(Sender: TObject; var Key: Char);
    procedure EVU12KeyPress(Sender: TObject; var Key: Char);
    procedure EVU13KeyPress(Sender: TObject; var Key: Char);
    procedure EVU14KeyPress(Sender: TObject; var Key: Char);
    procedure EVU15KeyPress(Sender: TObject; var Key: Char);
    procedure EVU16KeyPress(Sender: TObject; var Key: Char);
    procedure EVU17KeyPress(Sender: TObject; var Key: Char);
    procedure EVU18KeyPress(Sender: TObject; var Key: Char);
    procedure EVU19KeyPress(Sender: TObject; var Key: Char);
    procedure EVU20KeyPress(Sender: TObject; var Key: Char);
    procedure EVU21KeyPress(Sender: TObject; var Key: Char);
    procedure EVU22KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORCAMENTO: TFORCAMENTO;

implementation

{$R *.dfm}

procedure TFORCAMENTO.Button1Click(Sender: TObject);
VAR
PRECO: STRING;
begin
MEMO1.LINES.LoadFromFile('precos.ini');
PRECO := MEMO1.Lines[1];
DELETE(PRECO,1,3);
EVU1.TEXT := PRECO;
PRECO := MEMO1.Lines[2];
DELETE(PRECO,1,3);
EVU2.TEXT := PRECO;
PRECO := MEMO1.Lines[3];
DELETE(PRECO,1,3);
EVU3.TEXT := PRECO;
PRECO := MEMO1.Lines[4];
DELETE(PRECO,1,3);
EVU4.TEXT := PRECO;
PRECO := MEMO1.Lines[5];
DELETE(PRECO,1,3);
EVU5.TEXT := PRECO;
PRECO := MEMO1.Lines[6];
DELETE(PRECO,1,3);
EVU6.TEXT := PRECO;
PRECO := MEMO1.Lines[7];
DELETE(PRECO,1,3);
EVU7.TEXT := PRECO;
PRECO := MEMO1.Lines[8];
DELETE(PRECO,1,3);
EVU8.TEXT := PRECO;
PRECO := MEMO1.Lines[9];
DELETE(PRECO,1,3);
EVU9.TEXT := PRECO;
PRECO := MEMO1.Lines[10];
DELETE(PRECO,1,3);
EVU10.TEXT := PRECO;
PRECO := MEMO1.Lines[11];
DELETE(PRECO,1,3);
EVU11.TEXT := PRECO;
PRECO := MEMO1.Lines[12];
DELETE(PRECO,1,3);
EVU12.TEXT := PRECO;
PRECO := MEMO1.Lines[13];
DELETE(PRECO,1,3);
EVU13.TEXT := PRECO;
PRECO := MEMO1.Lines[14];
DELETE(PRECO,1,3);
EVU14.TEXT := PRECO;
PRECO := MEMO1.Lines[15];
DELETE(PRECO,1,3);
EVU15.TEXT := PRECO;
PRECO := MEMO1.Lines[16];
DELETE(PRECO,1,3);
EVU16.TEXT := PRECO;
PRECO := MEMO1.Lines[17];
DELETE(PRECO,1,3);
EVU17.TEXT := PRECO;
PRECO := MEMO1.Lines[18];
DELETE(PRECO,1,3);
EVU18.TEXT := PRECO;
PRECO := MEMO1.Lines[19];
DELETE(PRECO,1,3);
EVU19.TEXT := PRECO;
PRECO := MEMO1.Lines[20];
DELETE(PRECO,1,3);
EVU20.TEXT := PRECO;
PRECO := MEMO1.Lines[21];
DELETE(PRECO,1,3);
EVU21.TEXT := PRECO;
PRECO := MEMO1.Lines[22];
DELETE(PRECO,1,3);
EVU22.TEXT := PRECO;
end;

procedure TFORCAMENTO.EQ9Enter(Sender: TObject);
begin
LABEL10.Font.Color := CLRED;
LABEL10.Font.Style := LABEL10.Font.Style + [fsBold];
LABEL10.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EQ9Exit(Sender: TObject);
begin
LABEL10.Font.Color := CLBLACK;
LABEL10.Font.Style := LABEL10.Font.Style - [fsBold];
LABEL10.Font.SIZE := 10;
EVU9.Text := FormatFloat('#.00', StrtoFloat(EVU9.Text));
EVT9.Text := FormatFloat('#.00', STRTOFLOAT(EQ9.TEXT) * STRTOFLOAT(EVU9.TEXT));
end;

procedure TFORCAMENTO.EQ9KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.Button2Click(Sender: TObject);
begin
CLOSE;
end;

procedure TFORCAMENTO.EQ10Enter(Sender: TObject);
begin
LABEL11.Font.Color := CLRED;
LABEL11.Font.Style := LABEL11.Font.Style + [fsBold];
LABEL11.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EQ10Exit(Sender: TObject);
begin
LABEL11.Font.Color := CLBLACK;
LABEL11.Font.Style := LABEL11.Font.Style - [fsBold];
LABEL11.Font.SIZE := 10;
EVU10.Text := FormatFloat('#.00', StrtoFloat(EVU10.Text));
EVT10.Text := FormatFloat('#.00', STRTOFLOAT(EQ10.TEXT) * STRTOFLOAT(EVU10.TEXT));
end;

procedure TFORCAMENTO.EQ10KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EQ11Enter(Sender: TObject);
begin
LABEL12.Font.Color := CLRED;
LABEL12.Font.Style := LABEL12.Font.Style + [fsBold];
LABEL12.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EQ11Exit(Sender: TObject);
begin
LABEL12.Font.Color := CLBLACK;
LABEL12.Font.Style := LABEL12.Font.Style - [fsBold];
LABEL12.Font.SIZE := 10;
EVU11.Text := FormatFloat('#.00', StrtoFloat(EVU11.Text));
EVT11.Text := FormatFloat('#.00', STRTOFLOAT(EQ11.TEXT) * STRTOFLOAT(EVU11.TEXT));
end;

procedure TFORCAMENTO.EQ11KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EQ12Enter(Sender: TObject);
begin
LABEL13.Font.Color := CLRED;
LABEL13.Font.Style := LABEL13.Font.Style + [fsBold];
LABEL13.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EQ12Exit(Sender: TObject);
begin
LABEL13.Font.Color := CLBLACK;
LABEL13.Font.Style := LABEL13.Font.Style - [fsBold];
LABEL13.Font.SIZE := 10;
EVU12.Text := FormatFloat('#.00', StrtoFloat(EVU12.Text));
EVT12.Text := FormatFloat('#.00', STRTOFLOAT(EQ12.TEXT) * STRTOFLOAT(EVU12.TEXT));
end;

procedure TFORCAMENTO.EQ12KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EQ13Enter(Sender: TObject);
begin
LABEL14.Font.Color := CLRED;
LABEL14.Font.Style := LABEL14.Font.Style + [fsBold];
LABEL14.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EQ13Exit(Sender: TObject);
begin
LABEL14.Font.Color := CLBLACK;
LABEL14.Font.Style := LABEL14.Font.Style - [fsBold];
LABEL14.Font.SIZE := 10;
EVU13.Text := FormatFloat('#.00', StrtoFloat(EVU13.Text));
EVT13.Text := FormatFloat('#.00', STRTOFLOAT(EQ13.TEXT) * STRTOFLOAT(EVU13.TEXT));
end;

procedure TFORCAMENTO.EQ13KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EQ14Enter(Sender: TObject);
begin
LABEL15.Font.Color := CLRED;
LABEL15.Font.Style := LABEL15.Font.Style + [fsBold];
LABEL15.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EQ14Exit(Sender: TObject);
begin
LABEL15.Font.Color := CLBLACK;
LABEL15.Font.Style := LABEL15.Font.Style - [fsBold];
LABEL15.Font.SIZE := 10;
EVU14.Text := FormatFloat('#.00', StrtoFloat(EVU14.Text));
EVT14.Text := FormatFloat('#.00', STRTOFLOAT(EQ14.TEXT) * STRTOFLOAT(EVU14.TEXT));
end;

procedure TFORCAMENTO.EQ14KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EQ15Enter(Sender: TObject);
begin
LABEL16.Font.Color := CLRED;
LABEL16.Font.Style := LABEL16.Font.Style + [fsBold];
LABEL16.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EQ15Exit(Sender: TObject);
begin
LABEL16.Font.Color := CLBLACK;
LABEL16.Font.Style := LABEL16.Font.Style - [fsBold];
LABEL16.Font.SIZE := 10;
EVU15.Text := FormatFloat('#.00', StrtoFloat(EVU15.Text));
EVT15.Text := FormatFloat('#.00', STRTOFLOAT(EQ15.TEXT) * STRTOFLOAT(EVU15.TEXT));
end;

procedure TFORCAMENTO.EQ15KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EQ16Enter(Sender: TObject);
begin
LABEL17.Font.Color := CLRED;
LABEL17.Font.Style := LABEL17.Font.Style + [fsBold];
LABEL17.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EQ16Exit(Sender: TObject);
begin
LABEL17.Font.Color := CLBLACK;
LABEL17.Font.Style := LABEL17.Font.Style - [fsBold];
LABEL17.Font.SIZE := 10;
EVU16.Text := FormatFloat('#.00', StrtoFloat(EVU16.Text));
EVT16.Text := FormatFloat('#.00', STRTOFLOAT(EQ16.TEXT) * STRTOFLOAT(EVU16.TEXT));
end;

procedure TFORCAMENTO.EQ16KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EQ17Enter(Sender: TObject);
begin
LABEL18.Font.Color := CLRED;
LABEL18.Font.Style := LABEL18.Font.Style + [fsBold];
LABEL18.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EQ17Exit(Sender: TObject);
begin
LABEL18.Font.Color := CLBLACK;
LABEL18.Font.Style := LABEL18.Font.Style - [fsBold];
LABEL18.Font.SIZE := 10;
EVU17.Text := FormatFloat('#.00', StrtoFloat(EVU17.Text));
EVT17.Text := FormatFloat('#.00', STRTOFLOAT(EQ17.TEXT) * STRTOFLOAT(EVU17.TEXT));
end;

procedure TFORCAMENTO.EQ17KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EQ18Enter(Sender: TObject);
begin
LABEL19.Font.Color := CLRED;
LABEL19.Font.Style := LABEL19.Font.Style + [fsBold];
LABEL19.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EQ18Exit(Sender: TObject);
begin
LABEL19.Font.Color := CLBLACK;
LABEL19.Font.Style := LABEL19.Font.Style - [fsBold];
LABEL19.Font.SIZE := 10;
EVU18.Text := FormatFloat('#.00', StrtoFloat(EVU18.Text));
EVT18.Text := FormatFloat('#.00', STRTOFLOAT(EQ18.TEXT) * STRTOFLOAT(EVU18.TEXT));
end;

procedure TFORCAMENTO.EQ18KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EQ19Enter(Sender: TObject);
begin
LABEL20.Font.Color := CLRED;
LABEL20.Font.Style := LABEL20.Font.Style + [fsBold];
LABEL20.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EQ19Exit(Sender: TObject);
begin
LABEL20.Font.Color := CLBLACK;
LABEL20.Font.Style := LABEL20.Font.Style - [fsBold];
LABEL20.Font.SIZE := 10;
EVU19.Text := FormatFloat('#.00', StrtoFloat(EVU19.Text));
EVT19.Text := FormatFloat('#.00', STRTOFLOAT(EQ19.TEXT) * STRTOFLOAT(EVU19.TEXT));
end;

procedure TFORCAMENTO.EQ19KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EQ20Enter(Sender: TObject);
begin
LABEL21.Font.Color := CLRED;
LABEL21.Font.Style := LABEL21.Font.Style + [fsBold];
LABEL21.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EQ20Exit(Sender: TObject);
begin
LABEL21.Font.Color := CLBLACK;
LABEL21.Font.Style := LABEL21.Font.Style - [fsBold];
LABEL21.Font.SIZE := 10;
EVU20.Text := FormatFloat('#.00', StrtoFloat(EVU20.Text));
EVT20.Text := FormatFloat('#.00', STRTOFLOAT(EQ20.TEXT) * STRTOFLOAT(EVU20.TEXT));
end;

procedure TFORCAMENTO.EQ20KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EQ21Enter(Sender: TObject);
begin
LABEL22.Font.Color := CLRED;
LABEL22.Font.Style := LABEL22.Font.Style + [fsBold];
LABEL22.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EQ21Exit(Sender: TObject);
begin
LABEL22.Font.Color := CLBLACK;
LABEL22.Font.Style := LABEL22.Font.Style - [fsBold];
LABEL22.Font.SIZE := 10;
EVU21.Text := FormatFloat('#.00', StrtoFloat(EVU21.Text));
EVT21.Text := FormatFloat('#.00', STRTOFLOAT(EQ21.TEXT) * STRTOFLOAT(EVU21.TEXT));
end;

procedure TFORCAMENTO.EQ21KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EQ22Enter(Sender: TObject);
begin
LABEL23.Font.Color := CLRED;
LABEL23.Font.Style := LABEL23.Font.Style + [fsBold];
LABEL23.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EQ22Exit(Sender: TObject);
begin
LABEL23.Font.Color := CLBLACK;
LABEL23.Font.Style := LABEL23.Font.Style - [fsBold];
LABEL23.Font.SIZE := 10;
EVU22.Text := FormatFloat('#.00', StrtoFloat(EVU22.Text));
EVT22.Text := FormatFloat('#.00', STRTOFLOAT(EQ22.TEXT) * STRTOFLOAT(EVU22.TEXT));
end;

procedure TFORCAMENTO.EQ22KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EQ1Enter(Sender: TObject);
begin
LABEL2.Font.Color := CLRED;
LABEL2.Font.Style := LABEL2.Font.Style + [fsBold];
LABEL2.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EQ1Exit(Sender: TObject);
begin
LABEL2.Font.Color := CLBLACK;
LABEL2.Font.Style := LABEL2.Font.Style - [fsBold];
LABEL2.Font.SIZE := 10;
EVU1.Text := FormatFloat('#.00', StrtoFloat(EVU1.Text));
EVT1.Text := FormatFloat('#.00', STRTOFLOAT(EQ1.TEXT) * STRTOFLOAT(EVU1.TEXT));
end;

procedure TFORCAMENTO.EQ1KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EQ2Enter(Sender: TObject);
begin
LABEL3.Font.Color := CLRED;
LABEL3.Font.Style := LABEL3.Font.Style + [fsBold];
LABEL3.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EQ2Exit(Sender: TObject);
begin
LABEL3.Font.Color := CLBLACK;
LABEL3.Font.Style := LABEL3.Font.Style - [fsBold];
LABEL3.Font.SIZE := 10;
EVU2.Text := FormatFloat('#.00', StrtoFloat(EVU2.Text));
EVT2.Text := FormatFloat('#.00', STRTOFLOAT(EQ2.TEXT) * STRTOFLOAT(EVU2.TEXT));
end;

procedure TFORCAMENTO.EQ2KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EQ3Enter(Sender: TObject);
begin
LABEL4.Font.Color := CLRED;
LABEL4.Font.Style := LABEL4.Font.Style + [fsBold];
LABEL4.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EQ3Exit(Sender: TObject);
begin
LABEL4.Font.Color := CLBLACK;
LABEL4.Font.Style := LABEL4.Font.Style - [fsBold];
LABEL4.Font.SIZE := 10;
EVU3.Text := FormatFloat('#.00', StrtoFloat(EVU3.Text));
EVT3.Text := FormatFloat('#.00', STRTOFLOAT(EQ3.TEXT) * STRTOFLOAT(EVU3.TEXT));
end;

procedure TFORCAMENTO.EQ3KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EQ4Enter(Sender: TObject);
begin
LABEL5.Font.Color := CLRED;
LABEL5.Font.Style := LABEL5.Font.Style + [fsBold];
LABEL5.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EQ4Exit(Sender: TObject);
begin
LABEL5.Font.Color := CLBLACK;
LABEL5.Font.Style := LABEL5.Font.Style - [fsBold];
LABEL5.Font.SIZE := 10;
EVU4.Text := FormatFloat('#.00', StrtoFloat(EVU4.Text));
EVT4.Text := FormatFloat('#.00', STRTOFLOAT(EQ4.TEXT) * STRTOFLOAT(EVU4.TEXT));
end;

procedure TFORCAMENTO.EQ4KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EQ5Enter(Sender: TObject);
begin
LABEL6.Font.Color := CLRED;
LABEL6.Font.Style := LABEL6.Font.Style + [fsBold];
LABEL6.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EQ5Exit(Sender: TObject);
begin
LABEL6.Font.Color := CLBLACK;
LABEL6.Font.Style := LABEL6.Font.Style - [fsBold];
LABEL6.Font.SIZE := 10;
EVU5.Text := FormatFloat('#.00', StrtoFloat(EVU5.Text));
EVT5.Text := FormatFloat('#.00', STRTOFLOAT(EQ5.TEXT) * STRTOFLOAT(EVU5.TEXT));
end;

procedure TFORCAMENTO.EQ5KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EQ6Enter(Sender: TObject);
begin
LABEL7.Font.Color := CLRED;
LABEL7.Font.Style := LABEL7.Font.Style + [fsBold];
LABEL7.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EQ6Exit(Sender: TObject);
begin
LABEL7.Font.Color := CLBLACK;
LABEL7.Font.Style := LABEL7.Font.Style - [fsBold];
LABEL7.Font.SIZE := 10;
EVU6.Text := FormatFloat('#.00', StrtoFloat(EVU6.Text));
EVT6.Text := FormatFloat('#.00', STRTOFLOAT(EQ6.TEXT) * STRTOFLOAT(EVU6.TEXT));
end;

procedure TFORCAMENTO.EQ6KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EQ7Enter(Sender: TObject);
begin
LABEL8.Font.Color := CLRED;
LABEL8.Font.Style := LABEL8.Font.Style + [fsBold];
LABEL8.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EQ7Exit(Sender: TObject);
begin
LABEL8.Font.Color := CLBLACK;
LABEL8.Font.Style := LABEL8.Font.Style - [fsBold];
LABEL8.Font.SIZE := 10;
EVU7.Text := FormatFloat('#.00', StrtoFloat(EVU7.Text));
EVT7.Text := FormatFloat('#.00', STRTOFLOAT(EQ7.TEXT) * STRTOFLOAT(EVU7.TEXT));
end;

procedure TFORCAMENTO.EQ7KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EQ8Enter(Sender: TObject);
begin
LABEL9.Font.Color := CLRED;
LABEL9.Font.Style := LABEL9.Font.Style + [fsBold];
LABEL9.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EQ8Exit(Sender: TObject);
begin
LABEL9.Font.Color := CLBLACK;
LABEL9.Font.Style := LABEL9.Font.Style - [fsBold];
LABEL9.Font.SIZE := 10;
EVU8.Text := FormatFloat('#.00', StrtoFloat(EVU8.Text));
EVT8.Text := FormatFloat('#.00', STRTOFLOAT(EQ8.TEXT) * STRTOFLOAT(EVU8.TEXT));
end;

procedure TFORCAMENTO.EQ8KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EVU10Enter(Sender: TObject);
begin
LABEL11.Font.Color := CLRED;
LABEL11.Font.Style := LABEL11.Font.Style + [fsBold];
LABEL11.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EVU10Exit(Sender: TObject);
begin
LABEL11.Font.Color := CLBLACK;
LABEL11.Font.Style := LABEL11.Font.Style - [fsBold];
LABEL11.Font.SIZE := 10;
EVU10.Text := FormatFloat('#.00', StrtoFloat(EVU10.Text));
EVT10.Text := FormatFloat('#.00', STRTOFLOAT(EQ10.TEXT) * STRTOFLOAT(EVU10.TEXT));
end;

procedure TFORCAMENTO.EVU10KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EVU11Enter(Sender: TObject);
begin
LABEL12.Font.Color := CLRED;
LABEL12.Font.Style := LABEL12.Font.Style + [fsBold];
LABEL12.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EVU11Exit(Sender: TObject);
begin
LABEL12.Font.Color := CLBLACK;
LABEL12.Font.Style := LABEL12.Font.Style - [fsBold];
LABEL12.Font.SIZE := 10;
EVU11.Text := FormatFloat('#.00', StrtoFloat(EVU11.Text));
EVT11.Text := FormatFloat('#.00', STRTOFLOAT(EQ11.TEXT) * STRTOFLOAT(EVU11.TEXT));
end;

procedure TFORCAMENTO.EVU11KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EVU12Enter(Sender: TObject);
begin
LABEL13.Font.Color := CLRED;
LABEL13.Font.Style := LABEL13.Font.Style + [fsBold];
LABEL13.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EVU12Exit(Sender: TObject);
begin
LABEL13.Font.Color := CLBLACK;
LABEL13.Font.Style := LABEL13.Font.Style - [fsBold];
LABEL13.Font.SIZE := 10;
EVU12.Text := FormatFloat('#.00', StrtoFloat(EVU12.Text));
EVT12.Text := FormatFloat('#.00', STRTOFLOAT(EQ12.TEXT) * STRTOFLOAT(EVU12.TEXT));
end;

procedure TFORCAMENTO.EVU12KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EVU13Enter(Sender: TObject);
begin
LABEL14.Font.Color := CLRED;
LABEL14.Font.Style := LABEL14.Font.Style + [fsBold];
LABEL14.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EVU13Exit(Sender: TObject);
begin
LABEL14.Font.Color := CLBLACK;
LABEL14.Font.Style := LABEL14.Font.Style - [fsBold];
LABEL14.Font.SIZE := 10;
EVU13.Text := FormatFloat('#.00', StrtoFloat(EVU13.Text));
EVT13.Text := FormatFloat('#.00', STRTOFLOAT(EQ13.TEXT) * STRTOFLOAT(EVU13.TEXT));
end;

procedure TFORCAMENTO.EVU13KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EVU14Enter(Sender: TObject);
begin
LABEL15.Font.Color := CLRED;
LABEL15.Font.Style := LABEL15.Font.Style + [fsBold];
LABEL15.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EVU14Exit(Sender: TObject);
begin
LABEL15.Font.Color := CLBLACK;
LABEL15.Font.Style := LABEL15.Font.Style - [fsBold];
LABEL15.Font.SIZE := 10;
EVU14.Text := FormatFloat('#.00', StrtoFloat(EVU14.Text));
EVT14.Text := FormatFloat('#.00', STRTOFLOAT(EQ14.TEXT) * STRTOFLOAT(EVU14.TEXT));
end;

procedure TFORCAMENTO.EVU14KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EVU15Enter(Sender: TObject);
begin
LABEL16.Font.Color := CLRED;
LABEL16.Font.Style := LABEL16.Font.Style + [fsBold];
LABEL16.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EVU15Exit(Sender: TObject);
begin
LABEL16.Font.Color := CLBLACK;
LABEL16.Font.Style := LABEL16.Font.Style - [fsBold];
LABEL16.Font.SIZE := 10;
EVU15.Text := FormatFloat('#.00', StrtoFloat(EVU15.Text));
EVT15.Text := FormatFloat('#.00', STRTOFLOAT(EQ15.TEXT) * STRTOFLOAT(EVU15.TEXT));
end;

procedure TFORCAMENTO.EVU15KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EVU16Enter(Sender: TObject);
begin
LABEL17.Font.Color := CLRED;
LABEL17.Font.Style := LABEL17.Font.Style + [fsBold];
LABEL17.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EVU16Exit(Sender: TObject);
begin
LABEL17.Font.Color := CLBLACK;
LABEL17.Font.Style := LABEL17.Font.Style - [fsBold];
LABEL17.Font.SIZE := 10;
EVU16.Text := FormatFloat('#.00', StrtoFloat(EVU16.Text));
EVT16.Text := FormatFloat('#.00', STRTOFLOAT(EQ16.TEXT) * STRTOFLOAT(EVU16.TEXT));
end;

procedure TFORCAMENTO.EVU16KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EVU17Enter(Sender: TObject);
begin
LABEL18.Font.Color := CLRED;
LABEL18.Font.Style := LABEL18.Font.Style + [fsBold];
LABEL18.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EVU17Exit(Sender: TObject);
begin
LABEL18.Font.Color := CLBLACK;
LABEL18.Font.Style := LABEL18.Font.Style - [fsBold];
LABEL18.Font.SIZE := 10;
EVU17.Text := FormatFloat('#.00', StrtoFloat(EVU17.Text));
EVT17.Text := FormatFloat('#.00', STRTOFLOAT(EQ17.TEXT) * STRTOFLOAT(EVU17.TEXT));
end;

procedure TFORCAMENTO.EVU17KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EVU18Enter(Sender: TObject);
begin
LABEL19.Font.Color := CLRED;
LABEL19.Font.Style := LABEL19.Font.Style + [fsBold];
LABEL19.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EVU18Exit(Sender: TObject);
begin
LABEL19.Font.Color := CLBLACK;
LABEL19.Font.Style := LABEL19.Font.Style - [fsBold];
LABEL19.Font.SIZE := 10;
EVU18.Text := FormatFloat('#.00', StrtoFloat(EVU18.Text));
EVT18.Text := FormatFloat('#.00', STRTOFLOAT(EQ18.TEXT) * STRTOFLOAT(EVU18.TEXT));
end;

procedure TFORCAMENTO.EVU18KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EVU19Enter(Sender: TObject);
begin
LABEL20.Font.Color := CLRED;
LABEL20.Font.Style := LABEL20.Font.Style + [fsBold];
LABEL20.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EVU19Exit(Sender: TObject);
begin
LABEL20.Font.Color := CLBLACK;
LABEL20.Font.Style := LABEL20.Font.Style - [fsBold];
LABEL20.Font.SIZE := 10;
EVU19.Text := FormatFloat('#.00', StrtoFloat(EVU19.Text));
EVT19.Text := FormatFloat('#.00', STRTOFLOAT(EQ19.TEXT) * STRTOFLOAT(EVU19.TEXT));
end;

procedure TFORCAMENTO.EVU19KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EVU1Enter(Sender: TObject);
begin
LABEL2.Font.Color := CLRED;
LABEL2.Font.Style := LABEL2.Font.Style + [fsBold];
LABEL2.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EVU1Exit(Sender: TObject);
begin
LABEL2.Font.Color := CLBLACK;
LABEL2.Font.Style := LABEL2.Font.Style - [fsBold];
LABEL2.Font.SIZE := 10;
EVU1.Text := FormatFloat('#.00', StrtoFloat(EVU1.Text));
EVT1.Text := FormatFloat('#.00', STRTOFLOAT(EQ1.TEXT) * STRTOFLOAT(EVU1.TEXT));
end;

procedure TFORCAMENTO.EVU1KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EVU20Enter(Sender: TObject);
begin
LABEL21.Font.Color := CLRED;
LABEL21.Font.Style := LABEL21.Font.Style + [fsBold];
LABEL21.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EVU20Exit(Sender: TObject);
begin
LABEL21.Font.Color := CLBLACK;
LABEL21.Font.Style := LABEL21.Font.Style - [fsBold];
LABEL21.Font.SIZE := 10;
EVU20.Text := FormatFloat('#.00', StrtoFloat(EVU20.Text));
EVT20.Text := FormatFloat('#.00', STRTOFLOAT(EQ20.TEXT) * STRTOFLOAT(EVU20.TEXT));
end;

procedure TFORCAMENTO.EVU20KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EVU21Enter(Sender: TObject);
begin
LABEL22.Font.Color := CLRED;
LABEL22.Font.Style := LABEL22.Font.Style + [fsBold];
LABEL22.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EVU21Exit(Sender: TObject);
begin
LABEL22.Font.Color := CLBLACK;
LABEL22.Font.Style := LABEL22.Font.Style - [fsBold];
LABEL22.Font.SIZE := 10;
EVU21.Text := FormatFloat('#.00', StrtoFloat(EVU21.Text));
EVT21.Text := FormatFloat('#.00', STRTOFLOAT(EQ21.TEXT) * STRTOFLOAT(EVU21.TEXT));
end;

procedure TFORCAMENTO.EVU21KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EVU22Enter(Sender: TObject);
begin
LABEL2.Font.Color := CLRED;
LABEL2.Font.Style := LABEL2.Font.Style + [fsBold];
LABEL2.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EVU22Exit(Sender: TObject);
begin
LABEL2.Font.Color := CLBLACK;
LABEL2.Font.Style := LABEL2.Font.Style - [fsBold];
LABEL2.Font.SIZE := 10;
EVU22.Text := FormatFloat('#.00', StrtoFloat(EVU22.Text));
EVT22.Text := FormatFloat('#.00', STRTOFLOAT(EQ22.TEXT) * STRTOFLOAT(EVU22.TEXT));
end;

procedure TFORCAMENTO.EVU22KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EVU2Enter(Sender: TObject);
begin
LABEL3.Font.Color := CLRED;
LABEL3.Font.Style := LABEL3.Font.Style + [fsBold];
LABEL3.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EVU2Exit(Sender: TObject);
begin
LABEL3.Font.Color := CLBLACK;
LABEL3.Font.Style := LABEL3.Font.Style - [fsBold];
LABEL3.Font.SIZE := 10;
EVU2.Text := FormatFloat('#.00', StrtoFloat(EVU2.Text));
EVT2.Text := FormatFloat('#.00', STRTOFLOAT(EQ2.TEXT) * STRTOFLOAT(EVU2.TEXT));
end;

procedure TFORCAMENTO.EVU2KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EVU3Enter(Sender: TObject);
begin
LABEL4.Font.Color := CLRED;
LABEL4.Font.Style := LABEL4.Font.Style + [fsBold];
LABEL4.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EVU3Exit(Sender: TObject);
begin
LABEL4.Font.Color := CLBLACK;
LABEL4.Font.Style := LABEL4.Font.Style - [fsBold];
LABEL4.Font.SIZE := 10;
EVU3.Text := FormatFloat('#.00', StrtoFloat(EVU3.Text));
EVT3.Text := FormatFloat('#.00', STRTOFLOAT(EQ3.TEXT) * STRTOFLOAT(EVU3.TEXT));
end;

procedure TFORCAMENTO.EVU3KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EVU4Enter(Sender: TObject);
begin
LABEL5.Font.Color := CLRED;
LABEL5.Font.Style := LABEL5.Font.Style + [fsBold];
LABEL5.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EVU4Exit(Sender: TObject);
begin
LABEL5.Font.Color := CLBLACK;
LABEL5.Font.Style := LABEL5.Font.Style - [fsBold];
LABEL5.Font.SIZE := 10;
EVU4.Text := FormatFloat('#.00', StrtoFloat(EVU4.Text));
EVT4.Text := FormatFloat('#.00', STRTOFLOAT(EQ4.TEXT) * STRTOFLOAT(EVU4.TEXT));
end;

procedure TFORCAMENTO.EVU4KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EVU5Enter(Sender: TObject);
begin
LABEL6.Font.Color := CLRED;
LABEL6.Font.Style := LABEL6.Font.Style + [fsBold];
LABEL6.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EVU5Exit(Sender: TObject);
begin
LABEL6.Font.Color := CLBLACK;
LABEL6.Font.Style := LABEL6.Font.Style - [fsBold];
LABEL6.Font.SIZE := 10;
EVU5.Text := FormatFloat('#.00', StrtoFloat(EVU5.Text));
EVT5.Text := FormatFloat('#.00', STRTOFLOAT(EQ5.TEXT) * STRTOFLOAT(EVU5.TEXT));
end;

procedure TFORCAMENTO.EVU5KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EVU6Enter(Sender: TObject);
begin
LABEL7.Font.Color := CLRED;
LABEL7.Font.Style := LABEL7.Font.Style + [fsBold];
LABEL7.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EVU6Exit(Sender: TObject);
begin
LABEL7.Font.Color := CLBLACK;
LABEL7.Font.Style := LABEL7.Font.Style - [fsBold];
LABEL7.Font.SIZE := 10;
EVU6.Text := FormatFloat('#.00', StrtoFloat(EVU6.Text));
EVT6.Text := FormatFloat('#.00', STRTOFLOAT(EQ6.TEXT) * STRTOFLOAT(EVU6.TEXT));
end;

procedure TFORCAMENTO.EVU6KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EVU7Enter(Sender: TObject);
begin
LABEL8.Font.Color := CLRED;
LABEL8.Font.Style := LABEL8.Font.Style + [fsBold];
LABEL8.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EVU7Exit(Sender: TObject);
begin
LABEL8.Font.Color := CLBLACK;
LABEL8.Font.Style := LABEL8.Font.Style - [fsBold];
LABEL8.Font.SIZE := 10;
EVU7.Text := FormatFloat('#.00', StrtoFloat(EVU7.Text));
EVT7.Text := FormatFloat('#.00', STRTOFLOAT(EQ7.TEXT) * STRTOFLOAT(EVU7.TEXT));
end;

procedure TFORCAMENTO.EVU7KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EVU8Enter(Sender: TObject);
begin
LABEL9.Font.Color := CLRED;
LABEL9.Font.Style := LABEL9.Font.Style + [fsBold];
LABEL9.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EVU8Exit(Sender: TObject);
begin
LABEL9.Font.Color := CLBLACK;
LABEL9.Font.Style := LABEL9.Font.Style - [fsBold];
LABEL9.Font.SIZE := 10;
EVU8.Text := FormatFloat('#.00', StrtoFloat(EVU8.Text));
EVT8.Text := FormatFloat('#.00', STRTOFLOAT(EQ8.TEXT) * STRTOFLOAT(EVU8.TEXT));
end;

procedure TFORCAMENTO.EVU8KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.EVU9Enter(Sender: TObject);
begin
LABEL10.Font.Color := CLRED;
LABEL10.Font.Style := LABEL10.Font.Style + [fsBold];
LABEL10.Font.SIZE := 11;
end;

procedure TFORCAMENTO.EVU9Exit(Sender: TObject);
begin
LABEL10.Font.Color := CLBLACK;
LABEL10.Font.Style := LABEL10.Font.Style - [fsBold];
LABEL10.Font.SIZE := 10;
EVU9.Text := FormatFloat('#.00', StrtoFloat(EVU9.Text));
EVT9.Text := FormatFloat('#.00', STRTOFLOAT(EQ9.TEXT) * STRTOFLOAT(EVU9.TEXT));
end;

procedure TFORCAMENTO.EVU9KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFORCAMENTO.FormActivate(Sender: TObject);
begin
FORCAMENTO.EQ1.SETFOCUS;
end;

end.
