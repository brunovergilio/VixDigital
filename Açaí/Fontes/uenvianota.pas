unit uenvianota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls;

type
  Tfenvianota = class(TForm)
    Label1: TLabel;
    Button2: TButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBMemo1: TDBMemo;
    Button3: TButton;
    ProgressBar1: TProgressBar;
    DBEdit4: TDBEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fenvianota: Tfenvianota;

implementation

{$R *.dfm}
USES UDM, USMARTNOTAS, UMENU;

procedure Tfenvianota.Button2Click(Sender: TObject);
begin
CLOSE;
end;

procedure Tfenvianota.Button3Click(Sender: TObject);
VAR
ENTRADAS: REAL;
begin

Showmessage('Clique OK e aguarde um instante, por favor. A tela pode travar por alguns segundos...');

PROGRESSBAR1.Visible := TRUE;
PROGRESSBAR1.Max := 10;

FENVIANOTA.Update;

//APURAR O TOTAL A SER LANÇADO
ENTRADAS := 0;
DM.IBQALTERACA.FIRST;
WHILE NOT DM.IBQALTERACA.EOF DO
  BEGIN
      ENTRADAS := ENTRADAS + DM.IBQALTERACATOTAL.Value;
      DM.IBQALTERACA.NEXT;
  END;

PROGRESSBAR1.Position := 1;
FENVIANOTA.Update;

//LANÇAR
DM.IBTCAIXA.OPEN;
DM.IBTCAIXA.Append;

DM.IBQGENCAIXA.Active := FALSE;
DM.IBQGENCAIXA.SQL.Text := 'select gen_id(G_CAIXA,1) from rdb$database';
DM.IBQGENCAIXA.Active := TRUE;

PROGRESSBAR1.Position := 3;
FENVIANOTA.Update;

IF LENGTH(DBEDIT4.TEXT) = 1 THEN DM.IBTCAIXAREGISTRO.VALUE := '000000000' + DBEDIT4.Text;
IF LENGTH(DBEDIT4.TEXT) = 2 THEN DM.IBTCAIXAREGISTRO.VALUE := '00000000' + DBEDIT4.Text;
IF LENGTH(DBEDIT4.TEXT) = 3 THEN DM.IBTCAIXAREGISTRO.VALUE := '0000000' + DBEDIT4.Text;
IF LENGTH(DBEDIT4.TEXT) = 4 THEN DM.IBTCAIXAREGISTRO.VALUE := '000000' + DBEDIT4.Text;
IF LENGTH(DBEDIT4.TEXT) = 5 THEN DM.IBTCAIXAREGISTRO.VALUE := '00000' + DBEDIT4.Text;
IF LENGTH(DBEDIT4.TEXT) = 6 THEN DM.IBTCAIXAREGISTRO.VALUE := '0000' + DBEDIT4.Text;
IF LENGTH(DBEDIT4.TEXT) = 7 THEN DM.IBTCAIXAREGISTRO.VALUE := '000' + DBEDIT4.Text;
IF LENGTH(DBEDIT4.TEXT) = 8 THEN DM.IBTCAIXAREGISTRO.VALUE := '00' + DBEDIT4.Text;
IF LENGTH(DBEDIT4.TEXT) = 9 THEN DM.IBTCAIXAREGISTRO.VALUE := '0' + DBEDIT4.Text;
IF LENGTH(DBEDIT4.TEXT) = 10 THEN DM.IBTCAIXAREGISTRO.VALUE := DBEDIT4.Text;

DM.IBTCAIXADATA.VALUE := DATE;
DM.IBTCAIXANOME.VALUE := 'Receitas de vendas';
DM.IBTCAIXAHISTORICO.VALUE := 'Vendas Mesas ';
DM.IBTCAIXAENTRADA.VALUE := ENTRADAS;
DM.IBTCAIXASAIDA.VALUE := 0;

DM.IBTCAIXA.Post;
DM.IBTCAIXA.ApplyUpdates;
DM.IBTransaction1.CommitRetaining;
DM.IBTCAIXA.CLOSE;

PROGRESSBAR1.Position := 5;
FENVIANOTA.Update;

//INSERIR A INSTRUÇÃO NO OBS - LANÇADO NO CAIXA
DM.IBQALTERACA.Active := FALSE;
DM.IBQALTERACA.SQL.Text := 'UPDATE ALTERACA SET OBS = ' + #39 + 'LANÇADO NO CAIXA' + #39 +
                           ', TIPO = ' + #39 + 'CAIXA' + #39 + ' WHERE OBS IS NULL';
DM.IBQALTERACA.Active := TRUE;


PROGRESSBAR1.Position := 7;
FENVIANOTA.Update;

//ZERANDO
DM.IBTALTERACA.CLOSE;
DM.IBTALTERACA.OPEN;
DM.IBTALTERACA.LAST;

PROGRESSBAR1.Position := 9;
FENVIANOTA.Update;

DM.IBQALTERACA.Active := FALSE;
DM.IBQALTERACA.SQL.Text := 'SELECT * FROM ALTERACA WHERE TIPO = ' + #39 + 'MESA' + #39 + ' AND OBS IS NULL ORDER BY DATA DESC';
DM.IBQALTERACA.Active := TRUE;
DM.IBQALTERACA.FIRST;

PROGRESSBAR1.Position := 10;
FENVIANOTA.Update;

DM.IBTALTERACA.Locate('CODIGO', DM.IBQALTERACACODIGO.VALUE ,[]);

SHOWMESSAGE('Caixa atualizado. Vendas: R$ ' + FormatFloat('0.00', ENTRADAS));

//--------------------------------------------------------------------------

PROGRESSBAR1.Visible := FALSE;

CLOSE;
end;

end.
