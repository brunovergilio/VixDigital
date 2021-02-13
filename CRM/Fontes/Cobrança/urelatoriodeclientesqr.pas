unit urelatoriodeclientesqr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  Tfrelatoriodeclientes = class(TForm)
    QuickRep1: TQuickRep;
    QRBand2: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRBand3: TQRBand;
    QRLabel8: TQRLabel;
    QRExpr1: TQRExpr;
    QRBand1: TQRBand;
    Lb_Empresa: TQRLabel;
    QRDBImage1: TQRDBImage;
    LBEndereco: TQRLabel;
    LBCnpj: TQRLabel;
    QRShapeDataPagina: TQRShape;
    QRData: TQRSysData;
    QRPagina: TQRSysData;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frelatoriodeclientes: Tfrelatoriodeclientes;

implementation


uses uFiltroRelatoriodeClientes;

{$R *.dfm}

end.
