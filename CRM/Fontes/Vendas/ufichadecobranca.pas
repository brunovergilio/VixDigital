unit ufichadecobranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls;

type
  Tfrmfichadecobranca = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Panel1: TPanel;
    btnfiltrar: TRzToolButton;
    procedure btnfiltrarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfichadecobranca: Tfrmfichadecobranca;

implementation

{$R *.dfm}

uses FClientes, uCliente, URFicha_Cobranca_Telecom,
  ulocalizacaoavancadadeclientes;

procedure Tfrmfichadecobranca.btnfiltrarClick(Sender: TObject);
begin
  if edit2.text <> '' then begin
    FRMCLIENTES.uniQClientes.Close;
    FRMCLIENTES.uniQClientes.Sql.Text := 'select * from clientes where upper(nome) = :PNOME';
                                         FRMCLIENTES.uniQClientes.PARAMBYNAME('PNOME').VALUE := EDIT2.TEXT;
    FRMCLIENTES.uniQClientes.Open;
    FRMCLIENTES.uniQClientes.First;
  end
  else begin
    FRMCLIENTES.uniQClientes.Close;
    FRMCLIENTES.uniQClientes.Sql.Text := 'select * from clientes';
    FRMCLIENTES.uniQClientes.Open;
    FRMCLIENTES.uniQClientes.First;
  end;

    FRMCLIENTES.uniQClientesReferencia.OPEN;
    FRMCLIENTES.uniQClientesOperacoes.OPEN;
    FRMCLIENTES.uniQClientesParcelas.OPEN;
    FRMCLIENTES.uniQClientesAgenda.OPEN;
    FRMCLIENTES.UniQScriptCobranca.OPEN;

    QRFichaCobranca_Telecom.Preview;

    FRMCLIENTES.uniQClientesReferencia.CLOSE;
    FRMCLIENTES.uniQClientesOperacoes.CLOSE;
    FRMCLIENTES.uniQClientesParcelas.CLOSE;
    FRMCLIENTES.uniQClientesAgenda.CLOSE;
    FRMCLIENTES.UniQScriptCobranca.CLOSE;

    FRMCLIENTES.uniQClientes.Close;
end;

procedure Tfrmfichadecobranca.Button1Click(Sender: TObject);
begin
frmlocalizacaoavancadadeclientes.SHOWMODAL;
EDIT2.TEXT := frmlocalizacaoavancadadeclientes.uniQClientes.FIELDBYNAME('NOME').VALUE;
frmlocalizacaoavancadadeclientes.uniQClientes.CLOSE;
end;

end.
