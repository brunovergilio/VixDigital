unit UR_Correspondencia_DUX;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, QRCtrls, gtCstDocEng, gtPDFEng, gtQRXportIntf, gtRTFEng,
  gtHTMLEng, gtXLSEng, gtTXTEng, gtJPEGEng;

type
  TQR_Correspondencia_DUX = class(TQuickRep)
    DetailBand1: TQRBand;
    Lb_Empresa: TQRLabel;
    Lb_Endereco: TQRLabel;
    Lb_Cep: TQRLabel;
    QRLabel1: TQRLabel;
    Lb_Banco: TQRLabel;
    Mem_Operacoes: TQRMemo;
    LB_Linha1: TQRLabel;
    Lb_Linha2: TQRLabel;
    Lb_Linha3: TQRLabel;
    Lb_Nome_Cliente: TQRLabel;
    Lb_Endereco_Cliente: TQRLabel;
    Lb_Cep_Cliente: TQRLabel;
    Lb_Dia: TQRLabel;
    Lb_Mes: TQRLabel;
    Lb_Ano: TQRLabel;
    Lb_Decimo_Terceiro: TQRLabel;
    gtDocSettings: TgtDocSettings;
    gtPDFEngine: TgtPDFEngine;
    gtQRExportPDF: TgtQRExportInterface;
    gtRTFEngine: TgtRTFEngine;
    gtQRExportRTF: TgtQRExportInterface;
    gtHTMLEngine: TgtHTMLEngine;
    gtQRExportHTML: TgtQRExportInterface;
    gtExcelEngine: TgtExcelEngine;
    gtQRExportXLS: TgtQRExportInterface;
    gtTextEngine: TgtTextEngine;
    gtQRExportTXT: TgtQRExportInterface;
    gtJPEGEngine: TgtJPEGEngine;
    gtQRExportJPEG: TgtQRExportInterface;
    Lb_Linha4: TQRLabel;
    lbAgencias: TQRLabel;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QR_Correspondencia_DUX: TQR_Correspondencia_DUX;

implementation

{$R *.DFM}

procedure TQR_Correspondencia_DUX.DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
// Address $12DC118
end;

procedure TQR_Correspondencia_DUX.QuickRepBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
// Address $12DD9D4
end;

end.
