program PrjVendas;

uses
  Forms,
  uPreVenda in 'uPreVenda.pas' {FrmPreVenda},
  uFuncoes in 'uFuncoes.pas',
  uDM in 'uDM.pas' {dm: TDataModule},
  uDmPreVenda in 'uDmPreVenda.pas' {dmPreVenda: TDataModule},
  uConsultaCFOP in 'uConsultaCFOP.pas' {FrmConsultaCFOP},
  uConsultaProdutos in 'uConsultaProdutos.pas' {FrmConsultaProdutos},
  uConsultaCliente in 'uConsultaCliente.pas' {FrmConsultaCliente},
  uConsultaVendedor in 'uConsultaVendedor.pas' {FrmConsultaVendedor},
  uConsultaTransportadora in 'uConsultaTransportadora.pas' {FrmConsultaTransportadora},
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
