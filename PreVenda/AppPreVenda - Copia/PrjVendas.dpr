program PrjVendas;

uses
  Forms,
  uPreVenda in 'uPreVenda.pas' {FrmPreVenda},
  uFuncoes in 'uFuncoes.pas',
  uDMPrincipal in 'uDMPrincipal.pas' {DmPrincipal: TDataModule},
  untDmPreVenda in 'untDmPreVenda.pas' {dmPreVenda: TDataModule},
  uConsultaCFOP in 'uConsultaCFOP.pas' {FrmConsultaCFOP},
  uDmPesquisaProdutos in 'uDmPesquisaProdutos.pas' {dmPesquisaProdutos: TDataModule},
  uConsultaProdutos in 'uConsultaProdutos.pas' {FrmConsultaProdutos},
  uDmPesquisaCFOP in 'uDmPesquisaCFOP.pas' {dmPesquisaCFOP: TDataModule},
  uConsultaCliente in 'uConsultaCliente.pas' {FrmConsultaCliente},
  uDmPesquisaCliente in 'uDmPesquisaCliente.pas' {dmPesquisaCliente: TDataModule},
  uConsultaVendedor in 'uConsultaVendedor.pas' {FrmConsultaVendedor},
  uDmPesquisaVendedor in 'uDmPesquisaVendedor.pas' {dmPesquisaVendedor: TDataModule},
  uConsultaTransportadora in 'uConsultaTransportadora.pas' {FrmConsultaTransportadora},
  uDmPesquisaTransportadora in 'uDmPesquisaTransportadora.pas' {dmPesquisaTransportadora: TDataModule},
  uConsultarVendasEmitidas in 'uConsultarVendasEmitidas.pas' {FrmConsultarVendasEmitidas},
  uOpcoesBoleto in 'uOpcoesBoleto.pas' {FrmOpcoesBoleto},
  uTipoVenda in 'uTipoVenda.pas' {FrmTipoVenda},
  uPrincipal in 'uPrincipal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
