unit urelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls;

type
  TFRELATORIOS = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Button7: TButton;
    MASKEDIT1: TDateTimePicker;
    MASKEDIT2: TDateTimePicker;
    MASKEDIT3: TDateTimePicker;
    MASKEDIT4: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRELATORIOS: TFRELATORIOS;

implementation

{$R *.dfm}
USES UDM, UMENU;

procedure TFRELATORIOS.Button1Click(Sender: TObject);
VAR
DATAMASK1, DATAMASK2, DATASQL1, DATASQL2, D1, M1, A1, D2, M2, A2 : STRING;
TOTAL, CREDITO, DEBITO, DINHEIRO, OUTROS : REAL;
begin
    //INVERTE AS DATAS
    DATAMASK1 := DATETOSTR(MASKEDIT1.DATE);
    DATAMASK2 := DATETOSTR(MASKEDIT2.DATE);
    D1 := COPY(DATAMASK1,0,2);
    M1 := COPY(DATAMASK1,4,2);
    A1 := COPY(DATAMASK1,7,4);
    D2 := COPY(DATAMASK2,0,2);
    M2 := COPY(DATAMASK2,4,2);
    A2 := COPY(DATAMASK2,7,4);
    DATASQL1 := M1 + '/' + D1 + '/' + A1;
    DATASQL2 := M2 + '/' + D2 + '/' + A2;

    FDM.IBQORCAMENTO.Active := FALSE;
    FDM.IBQORCAMENTO.SQL.Text := 'SELECT * FROM ORCAMENTO WHERE EMISSAO BETWEEN ' + #39 + DATASQL1 + #39 +
                              ' AND ' + #39 + DATASQL2 + #39 + ' ORDER BY NUMERONF DESC';
    FDM.IBQORCAMENTO.Active := TRUE;

    //FAZ A SOMA DO TOTAL

    TOTAL := 0;
    CREDITO := 0;
    DEBITO := 0;
    DINHEIRO := 0;
    OUTROS := 0;

    FDM.IBQORCAMENTO.First;
    WHILE NOT FDM.IBQORCAMENTO.Eof DO
    BEGIN
     TOTAL := TOTAL + FDM.IBQORCAMENTOTOTAL.VALUE;
     CREDITO := CREDITO + FDM.IBQORCAMENTOB1.VALUE;
     DEBITO := DEBITO + FDM.IBQORCAMENTOB2.VALUE;
     DINHEIRO := DINHEIRO + FDM.IBQORCAMENTOB3.VALUE;
     FDM.IBQORCAMENTO.Next;
    END;

    FDM.IBQORCAMENTO.First;

    OUTROS := TOTAL - CREDITO - DEBITO - DINHEIRO;

    FDM.QRLABEL63.CAPTION := FormatFloat('#.00', TOTAL);
    FDM.QRLABEL25.CAPTION := FormatFloat('#.00', CREDITO);
    FDM.QRLABEL26.CAPTION := FormatFloat('#.00', DEBITO);
    FDM.QRLABEL27.CAPTION := FormatFloat('#.00', DINHEIRO);
    FDM.QRLABEL119.CAPTION := FormatFloat('#.00', OUTROS);

    FDM.QRLABEL58.CAPTION := 'Período: ' + DATAMASK1 + ' a ' + DATAMASK2;

    FDM.QUICKREP2.PREVIEW;
end;

procedure TFRELATORIOS.Button7Click(Sender: TObject);
VAR
DATAMASK1, DATAMASK2, DATASQL1, DATASQL2, D1, M1, A1, D2, M2, A2 : STRING;
TOTAL : REAL;
begin
    //INVERTE AS DATAS
    DATAMASK1 := DATETOSTR(MASKEDIT3.DATE);
    DATAMASK2 := DATETOSTR(MASKEDIT4.DATE);
    D1 := COPY(DATAMASK1,0,2);
    M1 := COPY(DATAMASK1,4,2);
    A1 := COPY(DATAMASK1,7,4);
    D2 := COPY(DATAMASK2,0,2);
    M2 := COPY(DATAMASK2,4,2);
    A2 := COPY(DATAMASK2,7,4);
    DATASQL1 := M1 + '/' + D1 + '/' + A1;
    DATASQL2 := M2 + '/' + D2 + '/' + A2;

    FDM.IBQPRODUTOSMAISVENDIDOS.Active := FALSE;

    //AQUI QUE ELE VAI FAZER A FILTRAGEM

    //PERÍODO (1)
    FDM.IBQPRODUTOSMAISVENDIDOS.SQL.Text :=
    'SELECT ITENS005.CODIGO, ITENS005.DESCRICAO, ESTOQUE.qtd_atual, ' +
    'SUM(ITENS005.QUANTIDADE) AS PRODUTOTALVENDIDO ' +
    'FROM orcamento ' +
    'INNER JOIN ' +
    '(ITENS005 INNER JOIN ESTOQUE ON ITENS005.DESCRICAO = ESTOQUE.DESCRICAO) ON ORCAMENTO.NUMERONF = ITENS005.NUMERONF ' +
    'WHERE ORCAMENTO.EMISSAO BETWEEN ' + #39 + DATASQL1 + #39 + ' AND ' + #39 + DATASQL2 + #39 +
    ' GROUP BY ' +
    'ITENS005.CODIGO, ITENS005.DESCRICAO, ESTOQUE.qtd_atual ' +
    'ORDER BY PRODUTOTALVENDIDO DESC ';
    FDM.IBQPRODUTOSMAISVENDIDOS.Active := TRUE;

    FDM.QRLABEL77.CAPTION := 'Período: ' + DATAMASK1 + ' a ' + DATAMASK2;

    FDM.QUICKREP3.PREVIEW;
end;

procedure TFRELATORIOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    FMENU.CORES_FECHA;
    FMENU.ComboBox1Change(Sender);
end;

procedure TFRELATORIOS.FormCreate(Sender: TObject);
begin
MASKEDIT1.Date := DATE;
MASKEDIT2.Date := DATE;
MASKEDIT3.Date := DATE;
MASKEDIT4.Date := DATE;
end;

procedure TFRELATORIOS.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if KEY = VK_ESCAPE THEN CLOSE;

end;

end.
