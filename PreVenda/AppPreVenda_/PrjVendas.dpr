program PrjVendas;

uses
  Forms,
  untPreVenda in 'untPreVenda.pas' {FrmPreVenda},
  untUtil in 'untUtil.pas',
  untDMPrincipal in 'untDMPrincipal.pas' {DmPrincipal: TDataModule},
  untDmPreVenda in 'untDmPreVenda.pas' {dmPreVenda: TDataModule},
  uFrmConsultaCFOP in 'uFrmConsultaCFOP.pas' {FrmConsultaCFOP},
  uDmPesquisaProdutos in 'uDmPesquisaProdutos.pas' {dmPesquisaProdutos: TDataModule},
  uFrmConsultaProdutos in 'uFrmConsultaProdutos.pas' {FrmConsultaProdutos},
  uDmPesquisaCFOP in 'uDmPesquisaCFOP.pas' {dmPesquisaCFOP: TDataModule},
  uFrmConsultaCliente in 'uFrmConsultaCliente.pas' {FrmConsultaCliente},
  uDmPesquisaCliente in 'uDmPesquisaCliente.pas' {dmPesquisaCliente: TDataModule},
  uFrmConsultaVendedor in 'uFrmConsultaVendedor.pas' {FrmConsultaVendedor},
  uDmPesquisaVendedor in 'uDmPesquisaVendedor.pas' {dmPesquisaVendedor: TDataModule},
  uFrmConsultaTransportadora in 'uFrmConsultaTransportadora.pas' {FrmConsultaTransportadora},
  uDmPesquisaTransportadora in 'uDmPesquisaTransportadora.pas' {dmPesquisaTransportadora: TDataModule},
  uFrmConsultarVendasEmitidas in 'uFrmConsultarVendasEmitidas.pas' {FrmConsultarVendasEmitidas},
  uFrmOpcoesBoleto in 'uFrmOpcoesBoleto.pas' {FrmOpcoesBoleto},
  untFrmTipoVenda in 'untFrmTipoVenda.pas' {FrmTipoVenda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmPrincipal, DmPrincipal);
  Application.CreateForm(TFrmPreVenda, FrmPreVenda);
  Application.CreateForm(TdmPreVenda, dmPreVenda);
  Application.CreateForm(TdmPesquisaProdutos, dmPesquisaProdutos);
  Application.CreateForm(TdmPesquisaCFOP, dmPesquisaCFOP);
  Application.CreateForm(TdmPesquisaCliente, dmPesquisaCliente);
  Application.CreateForm(TdmPesquisaVendedor, dmPesquisaVendedor);
  Application.CreateForm(TdmPesquisaTransportadora, dmPesquisaTransportadora);
  Application.Run;
end.
