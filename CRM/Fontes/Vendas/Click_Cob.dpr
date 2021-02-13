program Click_Cob;

uses
  Vcl.Forms,
  inifiles,
  System.SysUtils,
  Winapi.Windows,
  udatamodule in 'udatamodule.pas' {frmDataModule: TDataModule},
  uMenu in 'uMenu.pas' {frmMenu},
  uUsuariosCadastro in 'uUsuariosCadastro.pas' {frmUsuariosCadastro},
  FUsuarios in 'FUsuarios.pas' {FrmUsuarios},
  FClientes in 'FClientes.pas' {FrmClientes},
  uCliente in 'uCliente.pas' {frmClientesCadastro},
  uCliente_Detalhe in 'uCliente_Detalhe.pas' {frmCliente_Detalhe},
  UAlterar_Senha in 'UAlterar_Senha.pas' {FAlterar_Senha},
  uImportaExportaArquivo in 'uImportaExportaArquivo.pas' {FImportaExportaArquivo},
  uNotificacoes in 'uNotificacoes.pas' {fNotificacoes},
  uMotivodePausa in 'uMotivodePausa.pas' {fMotivodePausa},
  ubancosempresas in 'ubancosempresas.pas' {frmcredores},
  ucadastrodebancosempresas in 'ucadastrodebancosempresas.pas' {frmcadastrodebancosempresas},
  urelacaotelefonesblacklist in 'urelacaotelefonesblacklist.pas' {frmrelacaotelefonesblacklist},
  ulegendacomissoes in 'ulegendacomissoes.pas' {frmlegendacomissoes},
  ucadastrodecomissoeseatualizacao in 'ucadastrodecomissoeseatualizacao.pas' {frmcomissaoeatualizacao},
  ugrupogeral in 'ugrupogeral.pas' {frmgrupogeral},
  ugrupogeralcadastro in 'ugrupogeralcadastro.pas' {frmgrupogeralcadastro},
  uselecionaestado in 'uselecionaestado.pas' {frmselecionaestado},
  uusuariosgrupo in 'uusuariosgrupo.pas' {frmgruposdeusuarios},
  uusuariosgrupocadastro in 'uusuariosgrupocadastro.pas' {frmgruposdeusuarioscadastro},
  ueventosoperador in 'ueventosoperador.pas' {frmeventosoperador},
  uclientesnegociacao in 'uclientesnegociacao.pas' {frmclientesnegociacao},
  usplash in 'usplash.pas' {fsplash},
  uoperadoresgrupocadastro in 'uoperadoresgrupocadastro.pas' {frmoperadoresgrupocadastro},
  uoperadoresgrupo in 'uoperadoresgrupo.pas' {frmoperadoresgrupo},
  uoperadoresselecaodegrupo in 'uoperadoresselecaodegrupo.pas' {frmoperadoresselecaodegrupo},
  uselecionaoperadores in 'uselecionaoperadores.pas' {frmselecionaoperadores},
  uselecionacampanha in 'uselecionacampanha.pas' {frmselecionacampanha},
  uacordos in 'uacordos.pas' {frmacordos},
  uagendacadastro in 'uagendacadastro.pas' {frmagendacadastro},
  Agenda in 'Agenda.pas' {fmAgenda},
  udiscador in 'udiscador.pas' {frmdiscador},
  uselecionacredor in 'uselecionacredor.pas' {fselecionacredor},
  uFuncoes in 'uFuncoes.pas',
  uConfiguracaoBD in 'uConfiguracaoBD.pas' {frmConfiguracaoBD},
  uPesquisaEventos in 'uPesquisaEventos.pas' {frmPesquisaEventos},
  uCadEventos in 'uCadEventos.pas' {frmCadEventos},
  uCadCliente in 'uCadCliente.pas' {frmCadCliente},
  uCadClassificacao in 'uCadClassificacao.pas' {frmCadClassificacao},
  uPesquisaClassificacao in 'uPesquisaClassificacao.pas' {frmPesquisaClassificacao},
  uCadInadimplencia in 'uCadInadimplencia.pas' {frmCadInadimplencia},
  uPesquisaInadimplencia in 'uPesquisaInadimplencia.pas' {frmPesquisaInadimplencia},
  uInstanciaUnicaApp in 'uInstanciaUnicaApp.pas',
  uSenhaMaster in 'uSenhaMaster.pas' {frmSenhaMaster},
  uCadBancosComissao in 'uCadBancosComissao.pas' {frmCadBancosComissao},
  uAlteraSituacaoNegociacao in 'uAlteraSituacaoNegociacao.pas' {frmAlteraSituacaoNegociacao},
  uCadSituacaoNegociacao in 'uCadSituacaoNegociacao.pas' {frmCadSituacaoNegociacao},
  uPesquisaSituacaoNegociacao in 'uPesquisaSituacaoNegociacao.pas' {frmPesquisaSituacaoNegociacao},
  uRelContasReceber in 'uRelContasReceber.pas' {frmRelContasReceber},
  uTraducao in 'uTraducao.pas',
  uRelEventosCobranca in 'uRelEventosCobranca.pas' {frmRelEventosCobranca},
  uBoletos in 'uBoletos.pas' {frmBoletos},
  uAguarde in 'uAguarde.pas' {frmAguarde},
  uBoleto in 'uBoleto.pas' {frmBoleto},
  uCadContaCorrente in 'uCadContaCorrente.pas' {frmCadContaCorrente},
  uCadBanco in 'uCadBanco.pas' {frmCadBanco},
  uPesquisaBanco in 'uPesquisaBanco.pas' {frmPesquisaBanco},
  uPesquisaContaCorrente in 'uPesquisaContaCorrente.pas' {frmPesquisaContaCorrente},
  uManutencaoContasReceber in 'uManutencaoContasReceber.pas' {frmManutencaoContasReceber},
  uCadGrupoCredor in 'uCadGrupoCredor.pas' {frmCadGrupoCredor},
  uPesquisaGrupoCredor in 'uPesquisaGrupoCredor.pas' {frmPesquisaGrupoCredor},
  uRelImportacoes in 'uRelImportacoes.pas' {frmRelImportacoes};

{$R *.res}
var
  iArq: TIniFile;
  Last_User : string;
  InstanciaInica : TInstanciaUnicaApp;
  Instancia: THandle;
  hwind:HWND;

begin
   InstanciaInica := TInstanciaUnicaApp.Create;
   Try
      InstanciaInica.Check;
    Application.Initialize;
    Application.MainFormOnTaskbar := True;
    TTraducao.ChangeValues;

    fsplash:=Tfsplash.Create(Application);
    fsplash.show;

    fsplash.lblstatus.Caption := 'Configurando acesso ao banco de dados...';
    fsplash.AdvProgressBar1.Position := 18;
    Application.ProcessMessages;

    Application.CreateForm(TfrmDataModule, frmDataModule);
  if frmDataModule.UniConnection1.Connected = False then
      Exit;
    fsplash.lblstatus.Caption := 'Acessando demais tabelas/formulários...';
    fsplash.AdvProgressBar1.Position := 64;
    Application.ProcessMessages;

    Application.CreateForm(TfrmMenu, frmMenu);

    fsplash.lblstatus.Caption := 'Conferindo perfis de usuários...';
    fsplash.AdvProgressBar1.Position := 82;
    Application.ProcessMessages;

      frmMenu.uniscript.Close;
      frmMenu.uniscript.Sql.Clear;
      frmMenu.uniscript.Sql.Text := 'select * from usuarios';// order by codigo';
      frmMenu.uniscript.Open;

    fsplash.AdvProgressBar1.Position := 91;
    Application.ProcessMessages;

      while not frmMenu.uniscript.Eof do begin
        frmMenu.ComboUsuario.Items.Add(frmMenu.uniscript.FieldByName('nome').AsString);
        frmMenu.uniscript.Next;
      end;
      frmMenu.uniscript.Close;

    fsplash.AdvProgressBar1.Position := 98;
    Application.ProcessMessages;

    Application.CreateForm(TfrmUsuariosCadastro, frmUsuariosCadastro);
    Application.CreateForm(TFrmUsuarios, FrmUsuarios);
    Application.CreateForm(TFrmClientes, FrmClientes);
    Application.CreateForm(TfrmClientesCadastro, frmClientesCadastro);
    Application.CreateForm(TfrmCliente_Detalhe, frmCliente_Detalhe);
    Application.CreateForm(TFAlterar_Senha, FAlterar_Senha);
    Application.CreateForm(Tfrmagendacadastro, frmagendacadastro);
    Application.CreateForm(TfmAgenda, fmAgenda);
    Application.CreateForm(TFImportaExportaArquivo, FImportaExportaArquivo);
    Application.CreateForm(TfNotificacoes, fNotificacoes);
    Application.CreateForm(TfMotivodePausa, fMotivodePausa);
    Application.CreateForm(Tfrmrelacaotelefonesblacklist, frmrelacaotelefonesblacklist);
    Application.CreateForm(Tfrmlegendacomissoes, frmlegendacomissoes);
    Application.CreateForm(Tfrmcomissaoeatualizacao, frmcomissaoeatualizacao);
    Application.CreateForm(Tfrmgrupogeral, frmgrupogeral);
    Application.CreateForm(Tfrmgrupogeralcadastro, frmgrupogeralcadastro);
    Application.CreateForm(Tfrmselecionaestado, frmselecionaestado);
    Application.CreateForm(Tfrmgruposdeusuarios, frmgruposdeusuarios);
    Application.CreateForm(Tfrmgruposdeusuarioscadastro, frmgruposdeusuarioscadastro);
    Application.CreateForm(Tfrmeventosoperador, frmeventosoperador);
    Application.CreateForm(Tfrmclientesnegociacao, frmclientesnegociacao);
    Application.CreateForm(Tfrmoperadoresgrupocadastro, frmoperadoresgrupocadastro);
    Application.CreateForm(Tfrmoperadoresgrupo, frmoperadoresgrupo);
    Application.CreateForm(Tfrmoperadoresselecaodegrupo, frmoperadoresselecaodegrupo);
    Application.CreateForm(Tfrmselecionaoperadores, frmselecionaoperadores);
    Application.CreateForm(Tfrmselecionacampanha, frmselecionacampanha);
    Application.CreateForm(Tfrmacordos, frmacordos);
    //Application.CreateForm(Tfrmcredores, frmcredores);
    //Application.CreateForm(Tfrmcadastrodebancosempresas, frmcadastrodebancosempresas);
    Application.CreateForm(Tfrmdiscador, frmdiscador);
    Application.CreateForm(Tfselecionacredor, fselecionacredor);

    fsplash.Hide;
    fsplash.Free;
    Application.Run;
   Finally
    FreeAndNil(InstanciaInica);
   End;
end.
