unit untMaster;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Grids, Vcl.StdCtrls,
  dxGDIPlusClasses, Vcl.ExtCtrls;

type
  TFrmMaster = class(TForm)
    MainMenu1: TMainMenu;
    Relatrios1: TMenuItem;
    StatusBar1: TStatusBar;
    RomaneiodeSeparaodeMercadorias1: TMenuItem;
    Image1: TImage;
    RomaneiodeEntregadeMercadorias1: TMenuItem;
    ContasaReceber1: TMenuItem;
    RelatriodeVendasporPerodo1: TMenuItem;
    RelatriodeComprasporPerodo1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure RomaneiodeSeparaodeMercadorias1Click(Sender: TObject);
    procedure RomaneiodeEntregadeMercadorias1Click(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
    procedure RelatriodeVendasporPerodo1Click(Sender: TObject);
    procedure RelatriodeComprasporPerodo1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMaster: TFrmMaster;

implementation

Uses
  untDados, untFiltroRelatorioRomaneioSeparacaoMercadoria,
  untFiltroRelatorioRomaneioEntregaMercadoria, untContasReceber,
  untFiltroRelatorioVendas, untFiltroRelatorioCompras, untUtil;

{$R *.dfm}

procedure TFrmMaster.ContasaReceber1Click(Sender: TObject);
var
  TelaContasReceber : TFrmContasReceber;
begin
  TelaContasReceber := TFrmContasReceber.Create(nil);
  try
    TelaContasReceber.ShowModal;
  finally
    TelaContasReceber.Free;
  end;
end;

procedure TFrmMaster.FormCreate(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := 'Point Peças';
end;

procedure TFrmMaster.FormShow(Sender: TObject);
begin
  Image1.Picture.LoadFromFile(LerIni('DADOS', 'CAMINHO_LOGO'));
end;

procedure TFrmMaster.RelatriodeComprasporPerodo1Click(Sender: TObject);
var
  TelaFiltroRelatorioCompras : TFrmRelatorioCompras;
begin
  TelaFiltroRelatorioCompras := TFrmRelatorioCompras.Create(nil);
  try
    TelaFiltroRelatorioCompras.ShowModal;
  finally
    TelaFiltroRelatorioCompras.Free;
  end;
end;

procedure TFrmMaster.RelatriodeVendasporPerodo1Click(Sender: TObject);

var
  TelaFiltroRelatorioVendas : TFrmRelatorioVendas;
begin
  TelaFiltroRelatorioVendas := TFrmRelatorioVendas.Create(nil);
  try
    TelaFiltroRelatorioVendas.ShowModal;
  finally
    TelaFiltroRelatorioVendas.Free;
  end;
end;

procedure TFrmMaster.RomaneiodeEntregadeMercadorias1Click(Sender: TObject);
var
  TelaFiltroRomaneioEntregaMercadoria : TFrmRomaneioEntregaMercadoria;
begin
  TelaFiltroRomaneioEntregaMercadoria := TFrmRomaneioEntregaMercadoria.Create(nil);
  try
    TelaFiltroRomaneioEntregaMercadoria.ShowModal;
  finally
    TelaFiltroRomaneioEntregaMercadoria.Free;
  end;
end;

procedure TFrmMaster.RomaneiodeSeparaodeMercadorias1Click(Sender: TObject);
var
  TelaFiltroRomaneioSeparacaoMercadoria : TFrmRomaneioSeparacaoMercadoria;
begin
  TelaFiltroRomaneioSeparacaoMercadoria := TFrmRomaneioSeparacaoMercadoria.Create(nil);
  try
    TelaFiltroRomaneioSeparacaoMercadoria.ShowModal;
  finally
    TelaFiltroRomaneioSeparacaoMercadoria.Free;
  end;
end;

end.
