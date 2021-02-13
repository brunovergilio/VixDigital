unit unotas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Data.Win.ADODB, QRPDFFilt, math, Vcl.ComCtrls;

type
  TFNotas = class(TForm)
    Panel10: TPanel;
    Panel12: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
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
    Edit14: TEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    Edit1: TEdit;
    Label14: TLabel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBEdit1: TDBEdit;
    Edit3: TEdit;
    DBGrid2: TDBGrid;
    Edit4: TEdit;
    SpeedButton5: TSpeedButton;
    QRPDFFilter1: TQRPDFFilter;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label17: TLabel;
    Edit6: TEdit;
    Label18: TLabel;
    Edit5: TEdit;
    Label19: TLabel;
    Edit7: TEdit;
    Button1: TButton;
    Label22: TLabel;
    Edit9: TEdit;
    Label23: TLabel;
    DBEdit15: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label24: TLabel;
    Label25: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label26: TLabel;
    DBEdit16: TDBEdit;
    Label27: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label28: TLabel;
    DBEdit19: TDBEdit;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Edit10: TEdit;
    Button2: TButton;
    Label21: TLabel;
    Memo1: TMemo;
    Label20: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    DBMemo1: TDBMemo;
    MASKEDIT1: TDateTimePicker;
    MASKEDIT2: TDateTimePicker;
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
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

  private

  public
    { Public declarations }
  end;

var
  FNotas: TFNotas;

implementation

{$R *.dfm}

uses udm, ucadastro, uprocura2, uestoque, uenviaemail, USENHA, UMENU,
  uorcamento;



procedure TFNotas.Button1Click(Sender: TObject);
begin
IF DBGRID1.Columns[5].Visible = FALSE THEN
  BEGIN
    DBGRID1.Columns[5].Visible := TRUE;
    DBGRID1.Columns[6].Visible := TRUE;
    DBGRID1.Columns[7].Visible := TRUE;
//    LABEL20.Visible := TRUE;
//    EDIT8.Visible := TRUE;
  END
  ELSE
  BEGIN
    DBGRID1.Columns[5].Visible := FALSE;
    DBGRID1.Columns[6].Visible := FALSE;
    DBGRID1.Columns[7].Visible := FALSE;
//    LABEL20.Visible := FALSE;
//    EDIT8.Visible := FALSE;
  END;
end;

procedure TFNotas.Button2Click(Sender: TObject);
VAR
PRECO: STRING;
begin
FORCAMENTO.EQ1.TEXT := '0';
FORCAMENTO.EQ2.TEXT := '0';
FORCAMENTO.EQ3.TEXT := '0';
FORCAMENTO.EQ4.TEXT := '0';
FORCAMENTO.EQ5.TEXT := '0';
FORCAMENTO.EQ6.TEXT := '0';
FORCAMENTO.EQ7.TEXT := '0';
FORCAMENTO.EQ8.TEXT := '0';
FORCAMENTO.EQ9.TEXT := '0';
FORCAMENTO.EQ10.TEXT := '0';
FORCAMENTO.EQ11.TEXT := '0';
FORCAMENTO.EQ12.TEXT := '0';
FORCAMENTO.EQ13.TEXT := '0';
FORCAMENTO.EQ14.TEXT := '0';
FORCAMENTO.EQ15.TEXT := '0';
FORCAMENTO.EQ16.TEXT := '0';
FORCAMENTO.EQ17.TEXT := '0';
FORCAMENTO.EQ18.TEXT := '0';
FORCAMENTO.EQ19.TEXT := '0';
FORCAMENTO.EQ20.TEXT := '0';
FORCAMENTO.EQ21.TEXT := '0';
FORCAMENTO.EQ22.TEXT := '0';

//coloca os preços

FORCAMENTO.MEMO1.LINES.LoadFromFile('precos.ini');
PRECO := FORCAMENTO.MEMO1.Lines[1];
DELETE(PRECO,1,3);
FORCAMENTO.EVU1.TEXT := PRECO;
PRECO := FORCAMENTO.MEMO1.Lines[2];
DELETE(PRECO,1,3);
FORCAMENTO.EVU2.TEXT := PRECO;
PRECO := FORCAMENTO.MEMO1.Lines[3];
DELETE(PRECO,1,3);
FORCAMENTO.EVU3.TEXT := PRECO;
PRECO := FORCAMENTO.MEMO1.Lines[4];
DELETE(PRECO,1,3);
FORCAMENTO.EVU4.TEXT := PRECO;
PRECO := FORCAMENTO.MEMO1.Lines[5];
DELETE(PRECO,1,3);
FORCAMENTO.EVU5.TEXT := PRECO;
PRECO := FORCAMENTO.MEMO1.Lines[6];
DELETE(PRECO,1,3);
FORCAMENTO.EVU6.TEXT := PRECO;
PRECO := FORCAMENTO.MEMO1.Lines[7];
DELETE(PRECO,1,3);
FORCAMENTO.EVU7.TEXT := PRECO;
PRECO := FORCAMENTO.MEMO1.Lines[8];
DELETE(PRECO,1,3);
FORCAMENTO.EVU8.TEXT := PRECO;
PRECO := FORCAMENTO.MEMO1.Lines[9];
DELETE(PRECO,1,3);
FORCAMENTO.EVU9.TEXT := PRECO;
PRECO := FORCAMENTO.MEMO1.Lines[10];
DELETE(PRECO,1,3);
FORCAMENTO.EVU10.TEXT := PRECO;
PRECO := FORCAMENTO.MEMO1.Lines[11];
DELETE(PRECO,1,3);
FORCAMENTO.EVU11.TEXT := PRECO;
PRECO := FORCAMENTO.MEMO1.Lines[12];
DELETE(PRECO,1,3);
FORCAMENTO.EVU12.TEXT := PRECO;
PRECO := FORCAMENTO.MEMO1.Lines[13];
DELETE(PRECO,1,3);
FORCAMENTO.EVU13.TEXT := PRECO;
PRECO := FORCAMENTO.MEMO1.Lines[14];
DELETE(PRECO,1,3);
FORCAMENTO.EVU14.TEXT := PRECO;
PRECO := FORCAMENTO.MEMO1.Lines[15];
DELETE(PRECO,1,3);
FORCAMENTO.EVU15.TEXT := PRECO;
PRECO := FORCAMENTO.MEMO1.Lines[16];
DELETE(PRECO,1,3);
FORCAMENTO.EVU16.TEXT := PRECO;
PRECO := FORCAMENTO.MEMO1.Lines[17];
DELETE(PRECO,1,3);
FORCAMENTO.EVU17.TEXT := PRECO;
PRECO := FORCAMENTO.MEMO1.Lines[18];
DELETE(PRECO,1,3);
FORCAMENTO.EVU18.TEXT := PRECO;
PRECO := FORCAMENTO.MEMO1.Lines[19];
DELETE(PRECO,1,3);
FORCAMENTO.EVU19.TEXT := PRECO;
PRECO := FORCAMENTO.MEMO1.Lines[20];
DELETE(PRECO,1,3);
FORCAMENTO.EVU20.TEXT := PRECO;
PRECO := FORCAMENTO.MEMO1.Lines[21];
DELETE(PRECO,1,3);
FORCAMENTO.EVU21.TEXT := PRECO;
PRECO := FORCAMENTO.MEMO1.Lines[22];
DELETE(PRECO,1,3);
FORCAMENTO.EVU22.TEXT := PRECO;

FORCAMENTO.SHOWMODAL;
end;

procedure TFNotas.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFNotas.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFNotas.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFNotas.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFNotas.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFNotas.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFNotas.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFNotas.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFNotas.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFNotas.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFNotas.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFNotas.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFNotas.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
VAR
TOTALEMPARCELAS: REAL;
begin
if KEY = VK_RETURN then
  BEGIN
    EDIT3.Text := DM.IBQCliforNOME.Value;
    DBGRID2.Visible := FALSE;
    EDIT3.SetFocus;
    DBEDIT1.Text := EDIT3.Text;

    //VERIFICA O CRÉDITO DO CLIENTE

    TOTALEMPARCELAS := 0;

    DM.IBQRECEBER.ACTIVE := FALSE;
    DM.IBQRECEBER.SQL.Text := 'SELECT * FROM RECEBER WHERE NOME = ' + #39 + EDIT3.Text + #39 +
                              'AND RECEBIMENT IS NULL';
    DM.IBQRECEBER.ACTIVE := TRUE;
    DM.IBQRECEBER.FIRST;
    WHILE NOT DM.IBQRECEBER.Eof DO
      BEGIN
        TOTALEMPARCELAS := TOTALEMPARCELAS + DM.IBQRECEBERVALOR_JURO.Value;
        DM.IBQRECEBER.Next;
      END;

   //LEVANDO A INFORMAÇÃO PARA O LABEL
   EDIT10.Text := FLOATTOSTR(TOTALEMPARCELAS);
   Edit10.Text := stringReplace(Edit10.Text, '.', '', []);
   Edit10.Text := FormatFloat('#.00', StrtoFloat(EDIT10.Text));

   IF TOTALEMPARCELAS = 0 THEN
   BEGIN
//        LABEL30.Font.Color := CLGREEN;
//        LABEL30.CAPTION := 'Crédito Liberado';
   END;

   IF TOTALEMPARCELAS <> 0 THEN
   BEGIN
//        LABEL30.Font.Color := CLRED;
//        LABEL30.CAPTION := 'Cliente em atraso. Valor: ' + EDIT10.Text;
   END;
  END;
end;

procedure TFNotas.Edit3Change(Sender: TObject);
begin
DM.IBQCLIFOR.ACTIVE := FALSE;
DM.IBQCLIFOR.SQL.Text := 'SELECT * FROM CLIFOR WHERE NOME LIKE ' + #39 + EDIT3.Text + '%' + #39 + ' order by NOME';
DM.IBQCLIFOR.ACTIVE := TRUE;

//EDITS RECEBENDO OU MOSTRANDO OS DADOS DO CLIENTE
DBEDIT1.Text := EDIT3.Text;
end;

procedure TFNotas.Edit3Exit(Sender: TObject);
begin
//EDITS RECEBENDO OU MOSTRANDO OS DADOS DO CLIENTE
DBEDIT1.Text := EDIT3.Text;
end;

procedure TFNotas.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF EDIT3.Text = '' THEN
  BEGIN
    DM.IBQCLIFOR.ACTIVE := FALSE;
    DM.IBQCLIFOR.SQL.Text := 'SELECT * FROM CLIFOR ORDER BY NOME';
    DM.IBQCLIFOR.ACTIVE := TRUE;

    DBGRID2.Visible := TRUE;
  END;

if KEY = VK_DOWN then
  BEGIN
    DBGRID2.Visible := TRUE;
    DBGRID2.SetFocus;
    DM.IBQCLIFOR.Next;
  END;
end;

procedure TFNotas.Edit6Exit(Sender: TObject);
VAR
VENDA, PESO, RENTAB, TOTAL, CONT, CUSTO : REAL;
begin

    //FAZ A SOMA DA NOTA

    VENDA := 0;
    PESO := 0;
    RENTAB := 0;
    TOTAL := 0;
    CONT := 0;
    CUSTO := 0;

    DM.IBQITENS004.First;
    while NOT DM.IBQITENS004.Eof do
        BEGIN
          CONT := CONT + 1;
          PESO := PESO + DM.IBQITENS004PESO.Value;
          TOTAL := TOTAL + DM.IBQITENS004TOTAL.Value;
          VENDA := VENDA + DM.IBQITENS004TOTAL.Value;
          CUSTO := CUSTO + (DM.IBQITENS004CUSTO.Value * DM.IBQITENS004QUANTIDADE.Value);
          DM.IBQITENS004.Next;
        END;

  try
    begin
      IF FNOTAS.Edit6.Text = '' then FNOTAS.Edit6.Text := '0';
      FNOTAS.Edit2.Text := FLOATTOSTR(STRTOFLOAT(FNOTAS.Edit5.TEXT)-STRTOFLOAT(FNOTAS.Edit6.TEXT));
      FNOTAS.Edit2.Text := FormatFloat('#.00', StrtoFloat(FNOTAS.Edit2.Text));
      FNOTAS.Edit5.Text := FormatFloat('#.00', StrtoFloat(FNOTAS.Edit5.Text));
      FNOTAS.Edit6.Text := FormatFloat('#.00', StrtoFloat(FNOTAS.Edit6.Text));

//      FNOTAS.EDIT8.TEXT := FLOATTOSTR(100-(CUSTO/STRTOFLOAT(FNOTAS.EDIT2.TEXT)*100));
//      FNOTAS.Edit8.Text := FormatFloat('#.00', StrtoFloat(FNOTAS.Edit8.Text));
    end
  except
    showmessage('Ocorreu um erro no cálculo do valor da nota. Por favor, comunique ao suporte.');
  end;
end;

procedure TFNotas.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if KEY = VK_RETURN then
BEGIN
  edit2.SetFocus;
END;
end;

procedure TFNotas.FormActivate(Sender: TObject);
begin

//RETORNA COM TODOS OS PRAZOS PRA QUERY
//RENOVA A LISTA DO DBLOOKUPCOMBOBOX3
{DM.IBQPRAZOS.Active := FALSE;
DM.IBQPRAZOS.SQL.Text := 'SELECT * FROM PRAZODEPAGAMENTO';
DM.IBQPRAZOS.Active := TRUE;
DM.IBQPRAZOS.FIRST;
DM.IBQPRAZOS.LAST;
DM.IBQPRAZOS.FIRST;

DM.IBQFORMAS.Open;

DM.IBQFORMAS.First;
DM.IBQFORMAS.Last;
DM.IBQFORMAS.First;
}

DM.IBQICM.Open;
DM.IBQICM.First;
DM.IBQICM.Last;
DM.IBQICM.First;

if EDIT14.Text = 'INSERE' then
  BEGIN
      DM.IBQCLIFOR.ACTIVE := FALSE;
      DBGRID2.Visible := FALSE;

      dm.IBQITENS004.ACTIVE := FALSE;
      DM.IBQITENS004.SQL.Text := 'select * FROM ITENS004 WHERE NUMERONF = ' + #39 + FNOTAS.DBEDIT12.TEXT + #39;
      dm.IBQITENS004.ACTIVE := TRUE;

//      DBCOMBOBOX1.Text := 'A Prazo';
      MEMO1.Lines.Clear;
      EDIT3.SetFocus;
  END;

if EDIT14.Text = 'EDITA' then
  BEGIN
      DBGRID2.Visible := FALSE;

      //MEMO COM AS INFORMAÇÕES DO CABEÇALHO

      MASKEDIT1.date := strtodate(DBMEMO1.Lines[0]);
      MASKEDIT2.date := strtodate(DBMEMO1.Lines[1]);
      EDIT11.Text := DBMEMO1.Lines[2];
      EDIT12.Text := DBMEMO1.Lines[3];
      EDIT13.Text := DBMEMO1.Lines[4];
      EDIT16.Text := DBMEMO1.Lines[5];
      EDIT17.Text := DBMEMO1.Lines[6];

      Memo1.Lines.Text := DM.IBTORCAMENTOCOMPLEMENTO.Value;

      EDIT3.SetFocus;
  END;

end;

procedure TFNotas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_F2 then
  BEGIN

  END;

if key = vk_F7 then
  BEGIN

  END;
end;

procedure TFNotas.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  if not (ActiveControl is TDBGrid) then
     begin
          Key := #0;
          Perform(WM_NEXTDLGCTL, 0, 0);
     end
     else
     if (ActiveControl is TDBGrid) then
          with TDBGrid(ActiveControl) do
                if selectedindex < (fieldcount -1) then
                      selectedindex := selectedindex +1
                else selectedindex := 0;
end;

procedure TFNotas.SpeedButton1Click(Sender: TObject);
var
  TOTAL,TOTALDANOTA: REAL;
begin
EDIT3.Text := DM.IBQCliforNOME.Value;
Edit2.Text := stringReplace(Edit2.Text, '.', '', []);

            TRY
              BEGIN
            //RECALCULANDO O DESCONTO
              Edit2.Text := stringReplace(Edit2.Text, '.', '', []);
              Edit5.Text := stringReplace(Edit5.Text, '.', '', []);
                 try
                   begin
                     IF FNOTAS.Edit6.Text = '' then FNOTAS.Edit6.Text := '0';
                     FNOTAS.Edit2.Text := FLOATTOSTR(STRTOFLOAT(FNOTAS.Edit5.TEXT)-STRTOFLOAT(FNOTAS.Edit6.TEXT));
                     FNOTAS.Edit2.Text := FormatFloat('#.00', StrtoFloat(FNOTAS.Edit2.Text));
                     FNOTAS.Edit5.Text := FormatFloat('#.00', StrtoFloat(FNOTAS.Edit5.Text));
                     FNOTAS.Edit6.Text := FormatFloat('#.00', StrtoFloat(FNOTAS.Edit6.Text));
                   end
                 except showmessage('Ocorreu um erro no cálculo do valor da nota. Por favor, comunique ao suporte.');
                 end;

                 Edit2.Text := stringReplace(Edit2.Text, '.', '', []);
                 TOTALDANOTA := STRTOFLOAT(EDIT2.Text);

                 //RODA A QUERY INSERINDO OS DADOS NA TABLE ITENS001
                 //FAZ A SOMA DA NOTA

                 TOTAL := 0;

                 DM.IBQITENS004.First;
                 while NOT DM.IBQITENS004.Eof do
                   BEGIN
                     TOTAL := TOTAL + DM.IBQITENS004TOTAL.Value;
                     DM.IBQITENS004.Next;
                   END;

                 EDIT1.Text := DBEDIT12.Text;

                       TRY
                         begin
                         DM.IBTORCAMENTO.EDIT;
                         //INSERINDO OS ZEROS
                         DM.IBTORCAMENTONUMERONF.Value := DBEDIT12.Text;
                         IF LENGTH(DBEDIT12.TEXT) = 1 THEN DM.IBTORCAMENTONUMERONF.Value := '00000000000' + DBEDIT12.Text;
                         IF LENGTH(DBEDIT12.TEXT) = 2 THEN DM.IBTORCAMENTONUMERONF.Value := '0000000000' + DBEDIT12.Text;
                         IF LENGTH(DBEDIT12.TEXT) = 3 THEN DM.IBTORCAMENTONUMERONF.Value := '000000000' + DBEDIT12.Text;
                         IF LENGTH(DBEDIT12.TEXT) = 4 THEN DM.IBTORCAMENTONUMERONF.Value := '00000000' + DBEDIT12.Text;
                         IF LENGTH(DBEDIT12.TEXT) = 5 THEN DM.IBTORCAMENTONUMERONF.Value := '0000000' + DBEDIT12.Text;
                         IF LENGTH(DBEDIT12.TEXT) = 6 THEN DM.IBTORCAMENTONUMERONF.Value := '000000' + DBEDIT12.Text;
                         IF LENGTH(DBEDIT12.TEXT) = 7 THEN DM.IBTORCAMENTONUMERONF.Value := '00000' + DBEDIT12.Text;
                         IF LENGTH(DBEDIT12.TEXT) = 8 THEN DM.IBTORCAMENTONUMERONF.Value := '0000' + DBEDIT12.Text;
                         IF LENGTH(DBEDIT12.TEXT) = 9 THEN DM.IBTORCAMENTONUMERONF.Value := '000' + DBEDIT12.Text;
                         IF LENGTH(DBEDIT12.TEXT) = 10 THEN DM.IBTORCAMENTONUMERONF.Value := '00' + DBEDIT12.Text;
                         IF LENGTH(DBEDIT12.TEXT) = 11 THEN DM.IBTORCAMENTONUMERONF.Value := '0' + DBEDIT12.Text;
                         IF LENGTH(DBEDIT12.TEXT) = 12 THEN DM.IBTORCAMENTONUMERONF.Value := DBEDIT12.Text;
                         DM.IBTORCAMENTOEMISSAO.Value := DATE;
                         DM.IBTORCAMENTOSAIDAD.Value := DATE;
                         DM.IBTORCAMENTOSAIDAH.Value := TIMETOSTR(NOW);
                         DM.IBTORCAMENTOTOTAL.Value := STRTOFLOAT(EDIT2.TEXT);
                         DM.IBTORCAMENTOEMAIL.Value := DBEDIT2.TEXT;
                         DM.IBTORCAMENTOTRANSPORTADORA.Value := DBEDIT13.Text;
                         DM.IBTORCAMENTODESCONTO.Value := STRTOFLOAT(EDIT6.TEXT);
                         DM.IBTORCAMENTOMERCADORIA.Value := TOTAL;
                         DM.IBTORCAMENTOPESOBRUTO.Value := STRTOFLOAT(EDIT7.Text);
                         DM.IBTORCAMENTOPESOLIQUI.Value := STRTOFLOAT(EDIT7.Text);
                         DM.IBTORCAMENTOVENDEDOR.Value := DBEDIT19.Text;
//                         DM.IBTORCAMENTOIDENTIFICADOR1.Value := DBEDIT16.Text; //AQUI ELE LANÇA OS GRUPOS DOS PRODUTOS, PRA DEPOIS AO EXPORTAR PRA VENDAS, PODER PUXAR NO RELATÓRIO  (ALIMENTOS OU CRISTÃOS)
                         DM.IBTORCAMENTOSTATUS.Value := 'Aguardando faturamento';
                         //CAMPO OBSERVAÇÕES
                         DM.IBTORCAMENTOCOMPLEMENTO.Value := FNOTAS.Memo1.Lines.Text;
                         DM.IBTORCAMENTOVOLUMES.Value := STRTOFLOAT(EDIT9.Text);

                         //MEMO COM AS INFORMAÇÕES DO CABEÇALHO
                         DBMEMO1.Lines.Clear;
                         DBMEMO1.Lines.Add(DATETOSTR(MASKEDIT1.DATE));
                         DBMEMO1.Lines.Add(DATETOSTR(MASKEDIT2.DATE));
                         DBMEMO1.Lines.Add(EDIT11.Text);
                         DBMEMO1.Lines.Add(EDIT12.Text);
                         DBMEMO1.Lines.Add(EDIT13.Text);
                         DBMEMO1.Lines.Add(EDIT16.Text);
                         DBMEMO1.Lines.Add(EDIT17.Text);

                         DM.IBTORCAMENTO.Post;
                         DM.IBTORCAMENTO.ApplyUpdates();
                         DM.IBTransaction1.Commitretaining;

                         DM.IBTORCAMENTO.ACTIVE := FALSE;
                         DM.IBTORCAMENTO.ACTIVE := TRUE;

                         DM.IBTORCAMENTO.Locate('NUMERONF', EDIT1.TEXT,[]);

                 //IMPRIMINDO
                         DM.IBQITENS004.Active := FALSE;
                         DM.IBQORCAMENTO.Active := FALSE;
                         DM.IBQCLIFOR.Active := FALSE;

                         DM.IBQITENS004.SQL.Text := 'SELECT * FROM ITENS004 WHERE NUMERONF = ' + DBEDIT12.Text;
                         DM.IBQORCAMENTO.SQL.Text := 'SELECT * FROM ORCAMENTO WHERE NUMERONF = ' + DBEDIT12.Text;
                         DM.IBQCLIFOR.SQL.Text := 'SELECT * FROM CLIFOR WHERE NOME = ' + #39 + EDIT3.Text + #39;

                         DM.IBQITENS004.Active := TRUE;
                         DM.IBQORCAMENTO.Active := TRUE;
                         DM.IBQCLIFOR.Active := TRUE;

                         DM.QUICKREP1.PREVIEW;

                         // exportar para pdf
                         DM.Quickrep1.ExportToFilter(TQRPDFDocumentFilter.Create('..\pedidos_pdf\' + 'Orçamento_' + DM.IBTORCAMENTONUMERONF.Value + '_' + DM.IBTORCAMENTOCLIENTE.Value + '.pdf'));

                         IF FMENU.EDITNIVEL.Text = '1' then
                             begin
                              DM.IBQORCAMENTO.Active := FALSE;
                              DM.IBQORCAMENTO.SQL.Text := 'SELECT * FROM ORCAMENTO ORDER BY NUMERONF DESC';
                              DM.IBQORCAMENTO.Active := TRUE;
                              DM.IBQORCAMENTO.FIRST;
                            end
                            else
                            begin
                              DM.IBQORCAMENTO.Active := FALSE;
                              DM.IBQORCAMENTO.SQL.Text := 'SELECT * FROM ORCAMENTO WHERE VENDEDOR = ' + #39 + FMENU.EDIT1.TEXT + #39 + ' ORDER BY NUMERONF DESC';
                              DM.IBQORCAMENTO.Active := TRUE;
                              DM.IBQORCAMENTO.FIRST;
                            end;

                         DM.IBTORCAMENTO.Locate('NUMERONF', DM.IBQORCAMENTONUMERONF.VALUE ,[]);

                         DM.IBQITENS004.Active := FALSE;
                         DM.IBQITENS004.SQL.Text := 'select * FROM ITENS004 WHERE NUMERONF = ' + #39 + FNOTAS.DBEDIT12.TEXT + #39;
                         DM.IBQITENS004.Active := TRUE;

                         //TERMINA IMPRESSÃO
                         Close;
                         end
                       EXCEPT
                         SHOWMESSAGE('Erro de gravação. Entre em contato com o suporte.');
                       END;
                      FNOTAS.Edit2.Text := FormatFloat('#.00', StrtoFloat(FNOTAS.Edit2.Text));
              END
            EXCEPT
              BEGIN
                SHOWMESSAGE('Não foi possível gravar o orçamento. Verifique o preenchimento de todos os campos, ou entre em contato com o suporte.');
              END;
            END;
end;

procedure TFNotas.SpeedButton2Click(Sender: TObject);
begin
if EDIT14.Text = 'INSERE' then
BEGIN
    dm.IBQITENS004.ACTIVE := FALSE;
    DM.IBQITENS004.SQL.Text := 'DELETE FROM ITENS004 WHERE NUMERONF = ' + #39 + FNOTAS.DBEDIT12.TEXT + #39;
    dm.IBQITENS004.ACTIVE := TRUE;

//    SHOWMESSAGE('O registro no momento é ' + DBEDIT14.Text);

    // VOLTA A NUMERAÇÃO DO ORÇAMENTO
    DM.IBQGENORCAMENTO.Active := FALSE;
    DM.IBQGENORCAMENTO.SQL.Text := 'select gen_id(G_ORCAMENTO,-1) from rdb$database';
    DM.IBQGENORCAMENTO.Active := TRUE;

//    SHOWMESSAGE('Cancelando, ele passou a ser ' + DBEDIT14.Text);
END;

DM.IBTORCAMENTO.Cancel;

      IF FMENU.EDITNIVEL.Text = '1' then
        begin
          DM.IBQORCAMENTO.Active := FALSE;
          DM.IBQORCAMENTO.SQL.Text := 'SELECT * FROM ORCAMENTO ORDER BY NUMERONF DESC';
          DM.IBQORCAMENTO.Active := TRUE;
          DM.IBQORCAMENTO.FIRST;
        end
        else
        begin
          DM.IBQORCAMENTO.Active := FALSE;
          DM.IBQORCAMENTO.SQL.Text := 'SELECT * FROM ORCAMENTO WHERE VENDEDOR = ' + #39 + FMENU.EDIT1.TEXT + #39 + ' ORDER BY NUMERONF DESC';
          DM.IBQORCAMENTO.Active := TRUE;
          DM.IBQORCAMENTO.FIRST;
        end;

DM.IBTORCAMENTO.Locate('NUMERONF', DM.IBQORCAMENTONUMERONF.VALUE ,[]);
//DM.IBTORCAMENTO.LAST;

DM.IBQITENS004.Active := FALSE;
DM.IBQITENS004.SQL.Text := 'select * FROM ITENS004 WHERE NUMERONF = ' + #39 + FNOTAS.DBEDIT12.TEXT + #39;
DM.IBQITENS004.Active := TRUE;

Close;
end;

procedure TFNotas.SpeedButton3Click(Sender: TObject);
begin
DBEDIT1.TEXT := EDIT3.Text;

dm.IBTORCAMENTO.EDIT;
//dm.IBTORCAMENTO.POST;
//dm.IBTORCAMENTO.EDIT;

FPROCURA2.EDIT2.Text := 'ORCAMENTO';

FPROCURA2.SHOWMODAL;
dm.IBQITENS004.ACTIVE := FALSE;
DM.IBQITENS004.SQL.Text := 'select * FROM ITENS004 WHERE NUMERONF = ' + #39 + FNOTAS.DBEDIT12.TEXT + #39;
dm.IBQITENS004.ACTIVE := TRUE;
end;

procedure TFNotas.SpeedButton4Click(Sender: TObject);
VAR
CUSTO, VENDA, PESO, TOTAL, RENTAB, CONT: REAL;
begin

//FAZ A SOMA DA NOTA

EDIT4.Text := DM.IBQITENS004REGISTRO.Value;

dm.IBQITENS004.ACTIVE := FALSE;
DM.IBQITENS004.SQL.Text := 'DELETE FROM ITENS004 WHERE REGISTRO = ' + #39 + EDIT4.Text + #39;
dm.IBQITENS004.ACTIVE := TRUE;

//ATT O TOTAL NA TABELA ORCAMENTO
dm.IBQITENS004.ACTIVE := FALSE;
DM.IBQITENS004.SQL.Text := 'select * FROM ITENS004 WHERE NUMERONF = ' + #39 + FNOTAS.DBEDIT12.TEXT + #39;
dm.IBQITENS004.ACTIVE := TRUE;

    //FAZ A SOMA DA NOTA

    VENDA := 0;
    PESO := 0;
    RENTAB := 0;
    CONT := 0;
    CUSTO := 0;
    TOTAL := 0;

    DM.IBQITENS004.First;
    while NOT DM.IBQITENS004.Eof do
        BEGIN
          CONT := CONT + 1;
          PESO := PESO + DM.IBQITENS004PESO.Value;
          TOTAL := TOTAL + DM.IBQITENS004TOTAL.Value;
          VENDA := VENDA + DM.IBQITENS004TOTAL.Value;
          CUSTO := CUSTO + (DM.IBQITENS004CUSTO.Value * DM.IBQITENS004QUANTIDADE.Value);
          DM.IBQITENS004.Next;
        END;

FNOTAS.EDIT5.Text := FLOATTOSTR(TOTAL);
IF FNOTAS.Edit6.Text = '' then FNOTAS.Edit6.Text := '0';
FNOTAS.Edit2.Text := FLOATTOSTR(STRTOFLOAT(FNOTAS.Edit5.TEXT)-STRTOFLOAT(FNOTAS.Edit6.TEXT));
FNOTAS.Edit2.Text := FormatFloat('#.00', StrtoFloat(FNOTAS.Edit2.Text));
FNOTAS.Edit5.Text := FormatFloat('#.00', StrtoFloat(FNOTAS.Edit5.Text));
FNOTAS.Edit6.Text := FormatFloat('#.00', StrtoFloat(FNOTAS.Edit6.Text));
FNOTAS.Edit7.Text := FLOATTOSTR(PESO);
FNOTAS.Edit7.Text := FormatFloat('#.00', StrtoFloat(FNOTAS.Edit7.Text));

//FNOTAS.EDIT8.TEXT := FLOATTOSTR(100-(CUSTO/STRTOFLOAT(EDIT2.TEXT)*100));
//FNOTAS.Edit8.Text := FormatFloat('#.00', StrtoFloat(FNOTAS.Edit8.Text));

DM.IBTORCAMENTO.EDIT;
DM.IBTORCAMENTOMERCADORIA.Value := STRTOFLOAT(EDIT5.Text);
DM.IBTORCAMENTODESCONTO.Value := STRTOFLOAT(EDIT6.Text);
DM.IBTORCAMENTOTOTAL.Value := STRTOFLOAT(EDIT2.Text);
DM.IBTORCAMENTO.POST;
DM.IBTORCAMENTO.ApplyUpdates();
DM.IBTransaction1.Commitretaining;


//NORMAL
dm.IBQITENS004.ACTIVE := FALSE;
DM.IBQITENS004.SQL.Text := 'select * FROM ITENS004 WHERE NUMERONF = ' + #39 + FNOTAS.DBEDIT12.TEXT + #39;
dm.IBQITENS004.ACTIVE := TRUE;
end;

procedure TFNotas.SpeedButton5Click(Sender: TObject);
begin
FESTOQUE.SHOWMODAL;
end;

end.
