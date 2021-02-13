unit uRBasico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, QRCtrls, Vcl.ExtCtrls;

type
  TQrBasico = class(TQuickRep)
    QRBand1: TQRBand;
    Lb_Empresa: TQRLabel;
    QRDBImage1: TQRDBImage;
    LBEndereco: TQRLabel;
    LBCnpj: TQRLabel;
    QRShapeDataPagina: TQRShape;
    QRData: TQRSysData;
    QRPagina: TQRSysData;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QrBasico: TQrBasico;

implementation

{$R *.DFM}

procedure TQrBasico.QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
// Address $6DB788
end;

end.
