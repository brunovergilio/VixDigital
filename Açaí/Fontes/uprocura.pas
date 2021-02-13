unit uprocura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  System.UITypes, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, db, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.ComCtrls;



type
  TFProcura = class(TForm)
    Image1: TImage;
    DBGrid4: TDBGrid;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Button7: TButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    procedure Button7Click(Sender: TObject);
    procedure DBGrid4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure DBGrid4CellClick(Column: TColumn);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProcura: TFProcura;

implementation

{$R *.dfm}
USES UDM, UMENU;

procedure TFProcura.Button7Click(Sender: TObject);
VAR
DATAMASK1, DATASQL1, D1, M1, A1, DATAMASK2, DATASQL2, D2, M2, A2: STRING;
begin
//INVERTE AS DATAS
DATAMASK1 := DATETOSTR(DATETIMEPICKER1.Date);
DATAMASK2 := DATETOSTR(DATETIMEPICKER2.Date);
D1 := COPY(DATAMASK1,0,2);
M1 := COPY(DATAMASK1,4,2);
A1 := COPY(DATAMASK1,7,4);
DATASQL1 := M1 + '/' + D1 + '/' + A1;
D2 := COPY(DATAMASK2,0,2);
M2 := COPY(DATAMASK2,4,2);
A2 := COPY(DATAMASK2,7,4);
DATASQL2 := M2 + '/' + D2 + '/' + A2;

FDM.IBQORCAMENTO.Active := FALSE;
FDM.IBQORCAMENTO.SQL.Text := 'select * FROM ORCAMENTO WHERE EMISSAO BETWEEN ' + #39 + DATASQL1 + #39 + ' AND ' + #39 + DATASQL2 + #39 + ' ORDER BY NUMERONF DESC';
FDM.IBQORCAMENTO.Active := TRUE;

DBGRID4.SETFOCUS;

FDM.IBQITENS005.Active := FALSE;
FDM.IBQITENS005.SQL.Text := 'select * FROM ITENS005 WHERE NUMERONF = ' + #39 + FDM.IBQORCAMENTONUMERONF.VALUE + #39;
FDM.IBQITENS005.Active := TRUE;
end;

procedure TFProcura.DBGrid4CellClick(Column: TColumn);
begin
FDM.IBQITENS005.Active := FALSE;
FDM.IBQITENS005.SQL.Text := 'select * FROM ITENS005 WHERE NUMERONF = ' + #39 + FDM.IBQORCAMENTONUMERONF.VALUE + #39;
FDM.IBQITENS005.Active := TRUE;

FMENU.EDIT5.TEXT := FDM.IBQITENS005NUMERONF.VALUE;
end;

procedure TFProcura.DBGrid4DblClick(Sender: TObject);
VAR
ALTURA, REGISTROS : INTEGER;
CUPOM, DATAMASK1, DATASQL1, D1, M1, A1, DATAMASK2, DATASQL2, D2, M2, A2: STRING;
begin
CUPOM := FDM.IBQORCAMENTONUMERONF.VALUE;

FDM.IBQORCAMENTO.Active := FALSE;
FDM.IBQORCAMENTO.SQL.Text := 'SELECT * FROM ORCAMENTO WHERE NUMERONF = ' + #39 + CUPOM + #39;
FDM.IBQORCAMENTO.Active := TRUE;

FDM.IBQITENS005.Active := FALSE;
FDM.IBQITENS005.SQL.Text := 'SELECT * FROM ITENS005 WHERE NUMERONF = ' + #39 + CUPOM + #39 + ' ORDER BY ANVISA';
FDM.IBQITENS005.Active := TRUE;

REGISTROS := FDM.IBQITENS005.RecordCount;
ALTURA := REGISTROS * 30;
fdm.QUICKREP1.Height := 680 + ALTURA;

FDM.QUICKREP1.PREVIEWMODAL; 

//INVERTE AS DATAS
DATAMASK1 := DATETOSTR(DATETIMEPICKER1.Date);
DATAMASK2 := DATETOSTR(DATETIMEPICKER2.Date);
D1 := COPY(DATAMASK1,0,2);
M1 := COPY(DATAMASK1,4,2);
A1 := COPY(DATAMASK1,7,4);
DATASQL1 := M1 + '/' + D1 + '/' + A1;
D2 := COPY(DATAMASK2,0,2);
M2 := COPY(DATAMASK2,4,2);
A2 := COPY(DATAMASK2,7,4);
DATASQL2 := M2 + '/' + D2 + '/' + A2;

FDM.IBQORCAMENTO.Active := FALSE;
FDM.IBQORCAMENTO.SQL.Text := 'select * FROM ORCAMENTO WHERE EMISSAO BETWEEN ' + #39 + DATASQL1 + #39 + ' AND ' + #39 + DATASQL2 + #39 + ' ORDER BY NUMERONF DESC';
FDM.IBQORCAMENTO.Active := TRUE;

DBGRID4.SETFOCUS;

FDM.IBQITENS005.Active := FALSE;
FDM.IBQITENS005.SQL.Text := 'select * FROM ITENS005 WHERE NUMERONF = ' + #39 + FDM.IBQORCAMENTONUMERONF.VALUE + #39;
FDM.IBQITENS005.Active := TRUE;
end;

procedure TFProcura.DBGrid4KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (KEY = VK_DOWN) OR (KEY = VK_UP) then
BEGIN
FDM.IBQITENS005.Active := FALSE;
FDM.IBQITENS005.SQL.Text := 'select * FROM ITENS005 WHERE NUMERONF = ' + #39 + FDM.IBQORCAMENTONUMERONF.VALUE + #39;
FDM.IBQITENS005.Active := TRUE;
END;

end;

procedure TFProcura.Edit1Change(Sender: TObject);
begin
fDM.IBQORCAMENTO.ACTIVE := FALSE;
fDM.IBQORCAMENTO.SQL.Text := 'SELECT * FROM ORCAMENTO WHERE CLIENTE LIKE ' + #39 + '%' + EDIT1.Text + '%' + #39 + ' ORDER BY CLIENTE';
fDM.IBQORCAMENTO.ACTIVE := TRUE;

FDM.IBQITENS005.Active := FALSE;
FDM.IBQITENS005.SQL.Text := 'select * FROM ITENS005 WHERE NUMERONF = ' + #39 + FDM.IBQORCAMENTONUMERONF.VALUE + #39;
FDM.IBQITENS005.Active := TRUE;
end;

procedure TFProcura.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if KEY = VK_RETURN then DBGRID4.SetFocus;
if KEY = VK_DOWN then
  BEGIN
    DBGRID4.SetFocus;
    FDM.IBQORCAMENTO.Next;
  END;
end;

procedure TFProcura.Edit3Change(Sender: TObject);
begin
fDM.IBQORCAMENTO.ACTIVE := FALSE;
fDM.IBQORCAMENTO.SQL.Text := 'SELECT * FROM ORCAMENTO WHERE NUMERONF LIKE ' + #39 + '%' + EDIT3.Text + '%' + #39 + ' ORDER BY NUMERONF';
fDM.IBQORCAMENTO.ACTIVE := TRUE;

FDM.IBQITENS005.Active := FALSE;
FDM.IBQITENS005.SQL.Text := 'select * FROM ITENS005 WHERE NUMERONF = ' + #39 + FDM.IBQORCAMENTONUMERONF.VALUE + #39;
FDM.IBQITENS005.Active := TRUE;
end;

procedure TFProcura.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if KEY = VK_DOWN then
  BEGIN
    DBGRID4.SetFocus;
    FDM.IBQORCAMENTO.Next;
  END;
end;

procedure TFProcura.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFProcura.FormActivate(Sender: TObject);
begin
EDIT3.SETFOCUS;
end;

procedure TFProcura.FormCreate(Sender: TObject);
begin
DateTimePicker1.Date := DATE;
DateTimePicker2.Date := DATE;
end;

procedure TFProcura.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY = VK_ESCAPE THEN
  BEGIN
    CLOSE;
  END;
end;

end.
