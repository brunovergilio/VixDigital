program MassasTradicaoRelatorios;

uses
  Vcl.Forms,
  untMaster in 'untMaster.pas' {FrmMaster},
  untDados in 'untDados.pas' {dmDados: TDataModule},
  untFiltroRelatorioRomaneioEntregaMercadoria in 'untFiltroRelatorioRomaneioEntregaMercadoria.pas' {FrmRomaneioEntregaMercadoria},
  untUtil in 'untUtil.pas',
  untFiltroRelatorioRomaneioSeparacaoMercadoria in 'untFiltroRelatorioRomaneioSeparacaoMercadoria.pas' {FrmRomaneioSeparacaoMercadoria},
  untContasReceber in 'untContasReceber.pas' {FrmContasReceber},
  untFiltroRelatorioCompras in 'untFiltroRelatorioCompras.pas' {FrmRelatorioCompras},
  untFiltroRelatorioVendas in 'untFiltroRelatorioVendas.pas' {FrmRelatorioVendas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TFrmMaster, FrmMaster);
  Application.Run;
end.
