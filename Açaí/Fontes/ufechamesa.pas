unit ufechamesa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ImgList, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Data.DB, System.ImageList, System.UITypes, Vcl.Mask, MidasLib,
  Vcl.Imaging.jpeg, QuickRpt, QRCtrls, Vcl.DBCtrls, DateUtils;

type
  Tffechamesa = class(TForm)
    Panel4: TPanel;
    Panel2: TPanel;
    Edit4: TEdit;
    Label16: TLabel;
    Panel3: TPanel;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    QRShape2: TQRShape;
    Label3: TLabel;
    Edit3: TEdit;
    Edit5: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit6: TEdit;
    QRShape4: TQRShape;
    Image3: TImage;
    Edit8: TEdit;
    Label8: TLabel;
    Image12: TImage;
    DBEdit3: TDBEdit;
    Edit7: TEdit;
    DBEdit1: TDBEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    procedure Image2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Image52Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ffechamesa: Tffechamesa;

implementation

{$R *.dfm}

uses uteclado, uteclado_num, UDM, UMENU;

procedure Tffechamesa.Button1Click(Sender: TObject);
begin
FTECLADO.SHOWMODAL;
end;

procedure Tffechamesa.Edit1Exit(Sender: TObject);
begin
IF EDIT1.Text = '' THEN EDIT1.TEXT := '0,00';
//EDIT5.TEXT :=  FLOATTOSTR(STRTOFLOAT(EDIT4.Text) + STRTOFLOAT(EDIT1.Text) + STRTOFLOAT(EDIT2.Text) + STRTOFLOAT(EDIT3.Text));
EDIT5.TEXT :=  FLOATTOSTR(STRTOFLOAT(EDIT4.Text) + STRTOFLOAT(EDIT1.Text) + STRTOFLOAT(EDIT2.Text));
EDIT5.Text := FORMATFLOAT('0.00', STRTOFLOAT(EDIT5.Text));

{EDIT6.TEXT :=  FLOATTOSTR(STRTOFLOAT(EDIT4.Text) + STRTOFLOAT(EDIT1.Text) + STRTOFLOAT(EDIT2.Text));
EDIT5.TEXT :=  FLOATTOSTR(STRTOFLOAT(EDIT6.Text) - STRTOFLOAT(EDIT3.Text));
EDIT6.Text := FORMATFLOAT('0.00', STRTOFLOAT(EDIT6.Text));
EDIT5.Text := FORMATFLOAT('0.00', STRTOFLOAT(EDIT5.Text));
}

//EDIT8.TEXT :=  FLOATTOSTR(STRTOFLOAT(EDIT5.Text) - STRTOFLOAT(FMENU.PANEL8.CAPTION));
EDIT8.Text := FORMATFLOAT('0.00', STRTOFLOAT(EDIT8.Text));
end;

procedure Tffechamesa.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
      EDIT1.Text := FORMATFLOAT('0.00', STRTOFLOAT(EDIT1.Text));
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure Tffechamesa.Edit2Exit(Sender: TObject);
begin
IF EDIT2.Text = '' THEN EDIT2.TEXT := '0,00';
//EDIT5.TEXT :=  FLOATTOSTR(STRTOFLOAT(EDIT4.Text) + STRTOFLOAT(EDIT1.Text) + STRTOFLOAT(EDIT2.Text) + STRTOFLOAT(EDIT3.Text));
EDIT5.TEXT :=  FLOATTOSTR(STRTOFLOAT(EDIT4.Text) + STRTOFLOAT(EDIT1.Text) + STRTOFLOAT(EDIT2.Text));
EDIT5.Text := FORMATFLOAT('0.00', STRTOFLOAT(EDIT5.Text));

//EDIT8.TEXT :=  FLOATTOSTR(STRTOFLOAT(EDIT5.Text) - STRTOFLOAT(FMENU.PANEL8.CAPTION));
EDIT8.Text := FORMATFLOAT('0.00', STRTOFLOAT(EDIT8.Text));
end;

procedure Tffechamesa.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
      EDIT2.Text := FORMATFLOAT('0.00', STRTOFLOAT(EDIT2.Text));
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure Tffechamesa.Edit3Exit(Sender: TObject);
begin
IF EDIT3.Text = '' THEN EDIT3.TEXT := '0,00';
//EDIT5.TEXT :=  FLOATTOSTR(STRTOFLOAT(EDIT4.Text) + STRTOFLOAT(EDIT1.Text) + STRTOFLOAT(EDIT2.Text) + STRTOFLOAT(EDIT3.Text));
EDIT5.TEXT :=  FLOATTOSTR(STRTOFLOAT(EDIT4.Text) + STRTOFLOAT(EDIT1.Text) + STRTOFLOAT(EDIT2.Text));
EDIT5.Text := FORMATFLOAT('0.00', STRTOFLOAT(EDIT5.Text));

//EDIT8.TEXT :=  FLOATTOSTR(STRTOFLOAT(EDIT5.Text) - STRTOFLOAT(FMENU.PANEL8.CAPTION));
EDIT8.Text := FORMATFLOAT('0.00', STRTOFLOAT(EDIT8.Text));
end;

procedure Tffechamesa.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
      EDIT3.Text := FORMATFLOAT('0.00', STRTOFLOAT(EDIT3.Text));
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then key:=#0;
end;

procedure Tffechamesa.Edit4Exit(Sender: TObject);
begin
IF EDIT4.Text = '' THEN EDIT4.TEXT := '0,00';
//EDIT5.TEXT :=  FLOATTOSTR(STRTOFLOAT(EDIT4.Text) + STRTOFLOAT(EDIT1.Text) + STRTOFLOAT(EDIT2.Text) + STRTOFLOAT(EDIT3.Text));
EDIT5.TEXT :=  FLOATTOSTR(STRTOFLOAT(EDIT4.Text) + STRTOFLOAT(EDIT1.Text) + STRTOFLOAT(EDIT2.Text));
EDIT5.Text := FORMATFLOAT('0.00', STRTOFLOAT(EDIT5.Text));

//EDIT8.TEXT :=  FLOATTOSTR(STRTOFLOAT(EDIT5.Text) - STRTOFLOAT(FMENU.PANEL8.CAPTION));
EDIT8.Text := FORMATFLOAT('0.00', STRTOFLOAT(EDIT8.Text));
end;

procedure Tffechamesa.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
      EDIT4.Text := FORMATFLOAT('0.00', STRTOFLOAT(EDIT4.Text));
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure Tffechamesa.FormActivate(Sender: TObject);
begin
EDIT4.Text := '0,00';
EDIT1.Text := '0,00';
EDIT2.Text := '0,00';
EDIT3.Text := '0,00';
EDIT5.Text := '0,00';
EDIT6.Text := '0,00';
EDIT8.Text := '0,00';

EDIT4.SETFOCUS;
Edit4.SelStart:= 0;
Edit4.SelLength:= 10000;
end;

procedure Tffechamesa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FMENU.cores_fecha;
FMENU.ComboBox1Change(Sender);
end;

procedure Tffechamesa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
VAR
ALTURA, REGISTROS : INTEGER;
        DATAMASK1, DATASQL1, DATASQL2, DATASQLCREDITO, DATASQLDEBITO, D1, M1, A1, DC1, MC1, AC1, DD1, MD1, AD1: STRING;
        DATA_CREDITO, DATA_DEBITO: tdatetime;
begin

IF KEY = VK_ESCAPE THEN
  BEGIN
    FMENU.CORES_FECHA;
    FMENU.ComboBox1Change(Sender);
    CLOSE;
  END;

IF KEY = VK_F12 THEN
  BEGIN
    Image3Click(Sender);
  END;
end;

procedure Tffechamesa.Image11Click(Sender: TObject);
begin
FTECLADO_NUM.ShowModal;
end;

procedure Tffechamesa.Image12Click(Sender: TObject);
begin
FMENU.CORES_FECHA;
FMENU.ComboBox1Change(Sender);
close;
end;

procedure Tffechamesa.Image1Click(Sender: TObject);
begin
FTECLADO_NUM.ShowModal;
end;

procedure Tffechamesa.Image2Click(Sender: TObject);
begin
FTECLADO_NUM.ShowModal;
end;

procedure Tffechamesa.Image3Click(Sender: TObject);
VAR
ALTURA, REGISTROS : INTEGER;
DATAMASK1, DATASQL1, DATASQL2, DATASQLCREDITO, DATASQLDEBITO, D1, M1, A1, DC1, MC1, AC1, DD1, MD1, AD1: STRING;
DATA_CREDITO, DATA_DEBITO: tdatetime;
begin

//IF EDIT6.TEXT = '0,00' THEN EDIT6.TEXT :=  FLOATTOSTR(STRTOFLOAT(EDIT5.Text)  STRTOFLOAT(EDIT3.Text));

FMENU.EDIT5.Text := FMENU.EDIT6.Text;

//INVERTE AS DATAS
DATAMASK1 := DATETOSTR(NOW);
D1 := COPY(DATAMASK1,0,2);
M1 := COPY(DATAMASK1,4,2);
A1 := COPY(DATAMASK1,7,4);
DATASQL1 := M1 + '/' + D1 + '/' + A1;

DATA_CREDITO := IncDay(DATE, 30);
DC1 := COPY(DATETOSTR(DATA_CREDITO),0,2);
MC1 := COPY(DATETOSTR(DATA_CREDITO),4,2);
AC1 := COPY(DATETOSTR(DATA_CREDITO),7,4);
DATASQLCREDITO := MC1 + '/' + DC1 + '/' + AC1;

DATA_DEBITO := IncDay(DATE, 1);
DD1 := COPY(DATETOSTR(DATA_DEBITO),0,2);
MD1 := COPY(DATETOSTR(DATA_DEBITO),4,2);
AD1 := COPY(DATETOSTR(DATA_DEBITO),7,4);
DATASQLDEBITO := MD1 + '/' + DD1 + '/' + AD1;

TRY
  BEGIN
      FDM.IBQORCAMENTO.Active := FALSE;
      FDM.IBQORCAMENTO.SQL.Text :=  'UPDATE ORCAMENTO SET ' +
                                    'B1 = ' + #39 + StringReplace(EDIT4.Text, ',', '.', [rfReplaceAll, rfIgnoreCase]) + #39 +
                                    ', B2 = ' + #39 + StringReplace(EDIT1.Text, ',', '.', [rfReplaceAll, rfIgnoreCase]) + #39 +
                                    ', B3 = ' + #39 + StringReplace(EDIT2.Text, ',', '.', [rfReplaceAll, rfIgnoreCase]) + #39 +
                                    ', DESCONTO = ' + #39 + StringReplace(EDIT3.Text, ',', '.', [rfReplaceAll, rfIgnoreCase]) + #39 +
//o total não pode mudar                                    ', TOTAL = ' + #39 + StringReplace(EDIT5.Text, ',', '.', [rfReplaceAll, rfIgnoreCase]) + #39 +
                                    ', STATUS = ' + #39 + 'FECHADO' + #39 +
                                    ' WHERE NUMERONF = '+
                                    #39 + FMENU.EDIT5.Text + #39;
      FDM.IBQORCAMENTO.EXECSQL;

      FDM.IBQORCAMENTO.Active := FALSE;
      FDM.IBQORCAMENTO.SQL.Text := 'SELECT * FROM ORCAMENTO WHERE NUMERONF = ' + #39 + FMENU.Edit5.Text + #39 + ' ORDER BY NUMERONF DESC';
      FDM.IBQORCAMENTO.Active := TRUE;

      FDM.IBQITENS005.Active := FALSE;
      FDM.IBQITENS005.SQL.Text := 'SELECT * FROM ITENS005 WHERE NUMERONF = ' + #39 + FMENU.Edit5.Text + #39;
      FDM.IBQITENS005.Active := TRUE;

          //LANÇA RECEITAS NO CAIXA (DINHEIRO E DÉBITO)
          IF (STRTOFLOAT(EDIT2.Text) > 0) OR  (STRTOFLOAT(EDIT1.Text) > 0) THEN
          BEGIN
              FDM.IBQGENCAIXA.Active := FALSE;
              FDM.IBQGENCAIXA.SQL.Text := 'select gen_id(G_CAIXA,1) from rdb$database';
              FDM.IBQGENCAIXA.Active := TRUE;

              IF LENGTH(DBEDIT3.TEXT) = 1 THEN EDIT7.Text := '000000000' + DBEDIT3.TEXT;
              IF LENGTH(DBEDIT3.TEXT) = 2 THEN EDIT7.Text := '00000000' + DBEDIT3.TEXT;
              IF LENGTH(DBEDIT3.TEXT) = 3 THEN EDIT7.Text := '0000000' + DBEDIT3.TEXT;
              IF LENGTH(DBEDIT3.TEXT) = 4 THEN EDIT7.Text := '000000' + DBEDIT3.TEXT;
              IF LENGTH(DBEDIT3.TEXT) = 5 THEN EDIT7.Text := '00000' + DBEDIT3.TEXT;
              IF LENGTH(DBEDIT3.TEXT) = 6 THEN EDIT7.Text := '0000' + DBEDIT3.TEXT;
              IF LENGTH(DBEDIT3.TEXT) = 7 THEN EDIT7.Text := '000' + DBEDIT3.TEXT;
              IF LENGTH(DBEDIT3.TEXT) = 8 THEN EDIT7.Text := '00' + DBEDIT3.TEXT;
              IF LENGTH(DBEDIT3.TEXT) = 9 THEN EDIT7.Text := '0' + DBEDIT3.TEXT;
              IF LENGTH(DBEDIT3.TEXT) = 10 THEN EDIT7.Text := DBEDIT3.TEXT;

              FDM.IBQCAIXA.Active := FALSE;
              FDM.IBQCAIXA.SQL.Text :=  'INSERT INTO CAIXA (DATA, HISTORICO, ENTRADA, SAIDA, REGISTRO) VALUES ' +
                                            '(' + #39 + DATASQL1 + #39 + ', ' +
                                            #39 + 'RECEBIMENTO COMANDA ' + EDIT10.TEXT + ' ' + FMENU.EDIT5.TEXT + #39 + ', ' +
                                            #39 + StringReplace(FORMATFLOAT('0.00', STRTOFLOAT(EDIT5.TEXT)), ',', '.', [rfReplaceAll, rfIgnoreCase]) + #39 + ',' +
                                            #39 + '0.00' + #39 + ', ' +
                                            #39 + EDIT7.Text + #39 + ')';
              FDM.IBQCAIXA.EXECSQL;
              FDM.IBQCAIXA.Active := FALSE;
          END;

          //LANÇA CARTÃO CRÉDITO NO RECEBER
          IF STRTOFLOAT(EDIT4.Text) > 0 THEN
          BEGIN
              FDM.IBQGENRECEBER.Active := FALSE;
              FDM.IBQGENRECEBER.SQL.Text := 'select gen_id(G_RECEBER,1) from rdb$database';
              FDM.IBQGENRECEBER.Active := TRUE;

              IF LENGTH(DBEDIT1.TEXT) = 1 THEN EDIT9.Text := '000000000' + DBEDIT1.TEXT;
              IF LENGTH(DBEDIT1.TEXT) = 2 THEN EDIT9.Text := '00000000' + DBEDIT1.TEXT;
              IF LENGTH(DBEDIT1.TEXT) = 3 THEN EDIT9.Text := '0000000' + DBEDIT1.TEXT;
              IF LENGTH(DBEDIT1.TEXT) = 4 THEN EDIT9.Text := '000000' + DBEDIT1.TEXT;
              IF LENGTH(DBEDIT1.TEXT) = 5 THEN EDIT9.Text := '00000' + DBEDIT1.TEXT;
              IF LENGTH(DBEDIT1.TEXT) = 6 THEN EDIT9.Text := '0000' + DBEDIT1.TEXT;
              IF LENGTH(DBEDIT1.TEXT) = 7 THEN EDIT9.Text := '000' + DBEDIT1.TEXT;
              IF LENGTH(DBEDIT1.TEXT) = 8 THEN EDIT9.Text := '00' + DBEDIT1.TEXT;
              IF LENGTH(DBEDIT1.TEXT) = 9 THEN EDIT9.Text := '0' + DBEDIT1.TEXT;
              IF LENGTH(DBEDIT1.TEXT) = 10 THEN EDIT9.Text := DBEDIT1.TEXT;

              FDM.IBQRECEBER.Active := FALSE;
              FDM.IBQRECEBER.SQL.Text :=  'INSERT INTO RECEBER (HISTORICO, PORTADOR, DOCUMENTO, EMISSAO, VENCIMENTO, VALOR_DUPL, VALOR_RECE, VALOR_JURO, NUMERONF, CONTA, NOME, REGISTRO) VALUES ' +
                                            '(' + #39 + 'REC. COMANDA ' + EDIT10.TEXT + ' ' + COPY(FMENU.EDIT5.TEXT,3,10) + #39 + ', ' +
                                            #39 + 'Em Carteira' + #39 + ', ' +
                                            #39 + COPY(FMENU.EDIT5.TEXT,3,10) + #39 + ', ' +
                                            #39 + DATASQL1 + #39 + ', ' +
                                            #39 + DATASQLCREDITO + #39 + ', ' +
                                            #39 + StringReplace(FORMATFLOAT('0.00', STRTOFLOAT(EDIT4.TEXT)), ',', '.', [rfReplaceAll, rfIgnoreCase]) + #39 + ',' +
                                            #39 + '0.00' + #39 + ', ' +
                                            #39 + StringReplace(FORMATFLOAT('0.00', STRTOFLOAT(EDIT4.TEXT)), ',', '.', [rfReplaceAll, rfIgnoreCase]) + #39 + ',' +
                                            #39 + FMENU.EDIT5.TEXT + #39 + ', ' +
                                            #39 + 'Receitas de Vendas' + #39 + ', ' +
                                            #39 + FDM.IBQORCAMENTOCLIENTE.VALUE + #39 + ', ' +
                                            #39 + EDIT9.Text + #39 + ')';
              FDM.IBQRECEBER.EXECSQL;
              FDM.IBQRECEBER.Active := FALSE;
          END;

{      REGISTROS := FDM.IBQITENS005.RecordCount;
      ALTURA := REGISTROS * 30;
      fdm.QUICKREP1.Height := 680 + ALTURA;
}
//      FDM.QUICKREP1.PREVIEWMODAL;

      IF FDM.IBQORCAMENTO.ACTIVE = TRUE THEN FDM.IBQORCAMENTO.Close;
      IF FDM.IBQITENS005.ACTIVE = TRUE THEN FDM.IBQITENS005.Close;

//      FMENU.COMMIT;

//      FMENU.CORES_FECHA;

//      FMENU.ComboBox1Change(Sender);

      CLOSE;
  END
  EXCEPT SHOWMESSAGE('Não foi possível finalizar. Por favor, entre em contato com o suporte. ''Error 379''');
END;
//ELSE SHOWMESSAGE('Valor incorreto.');
end;

procedure Tffechamesa.Image52Click(Sender: TObject);
begin
FTECLADO.SHOWMODAL;
end;

procedure Tffechamesa.Image5Click(Sender: TObject);
begin
fteclado_num.showmodal;
end;

end.
