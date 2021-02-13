unit URFicha_Cobranca_Telecom;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, QRCtrls, Vcl.ExtCtrls;

type
  TQRFichaCobranca_Telecom = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    QRLabel40: TQRLabel;
    QRShape1: TQRShape;
    QRLabel53: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel41: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel42: TQRLabel;
    QRDBText34: TQRDBText;
    QRDBText33: TQRDBText;
    QRLabel46: TQRLabel;
    PageFooterBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel38: TQRLabel;
    Lb_Total_Final: TQRLabel;
    Cabecalho_Eventos_Cobranca: TQRBand;
    QRLabel52: TQRLabel;
    Cabecalho_Agendamentos: TQRBand;
    QRLabel51: TQRLabel;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape2: TQRShape;
    dbClientes: TQRBand;
    QRLabel2: TQRLabel;
    Lb_CGC_CPf: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel48: TQRLabel;
    Observacao: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText44: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel13: TQRLabel;
    Total_Parcelas: TQRBand;
    QRLabel22: TQRLabel;
    Lb_Total_Original: TQRLabel;
    Lb_Total_Desconto: TQRLabel;
    Lb_Total_Pagar: TQRLabel;
    Lb_Valor_Divida: TQRLabel;
    Lb_Valor_Desconto: TQRLabel;
    Lb_Condicoes_Negociaveis: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    Lb_Valor_Juros: TQRLabel;
    Lb_Valor_Multa: TQRLabel;
    Lb_Valor_Atualizado: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel26: TQRLabel;
    Lb_Perc_Desconto: TQRLabel;
    Lb_Total_Juros: TQRLabel;
    Lb_Total_Multa: TQRLabel;
    Lb_Total_Atualizado: TQRLabel;
    Lb_Perc_DescTotal: TQRLabel;
    Lb_Valor_Original: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    procedure dbClientesBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure Sub_OperacoesBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure Cabecalho_Eventos_CobrancaBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure Cabecalho_AgendamentosBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure Sub_ParcelasBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure Total_ParcelasBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRFichaCobranca_Telecom: TQRFichaCobranca_Telecom;

implementation

{$R *.DFM}

uses fclientes;

procedure TQRFichaCobranca_Telecom.dbClientesBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
// Address $1448A3C
end;

procedure TQRFichaCobranca_Telecom.PageHeaderBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
// Address $1448C60
end;

procedure TQRFichaCobranca_Telecom.Sub_OperacoesBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
// Address $1448DC4
end;

procedure TQRFichaCobranca_Telecom.SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
// Address $144950C
end;

procedure TQRFichaCobranca_Telecom.Cabecalho_Eventos_CobrancaBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
// Address $1449580
end;

procedure TQRFichaCobranca_Telecom.Cabecalho_AgendamentosBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
// Address $144959C
end;

procedure TQRFichaCobranca_Telecom.QuickRepBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
// Address $14495B4
end;

procedure TQRFichaCobranca_Telecom.Sub_ParcelasBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
// Address $144998C
end;

procedure TQRFichaCobranca_Telecom.Total_ParcelasBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
// Address $1449DA4
end;

end.
