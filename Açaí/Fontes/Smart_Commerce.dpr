program Smart_Commerce;

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  DB,
  Grids,
  DBGrids,
  ExtCtrls,
  QuickRpt,
  StdCtrls,
  Buttons,
  QRCtrls,
  DBCtrls,
  Mask,
  FMTBcd,
  SqlExpr,
  Gauges,
  ComCtrls,
  UMAIN in 'UMAIN.pas' {FMAIN},
  udm in 'udm.pas' {fdm},
  ufechamesa in 'ufechamesa.pas' {ffechamesa},
  UMENU in 'UMENU.pas' {FMENU},
  uprocura in 'uprocura.pas' {FProcura},
  senha_cancelamento in 'senha_cancelamento.pas' {fsenha_cancelamento},
  senha_exclusao in 'senha_exclusao.pas' {fsenha_exclusao},
  urelatorios in 'urelatorios.pas' {FRELATORIOS},
  uprocura2 in 'uprocura2.pas' {FProcura2},
  ucadastro in 'ucadastro.pas' {FCadastro},
  UUSUARIOS in 'UUSUARIOS.pas' {FUSUARIOS},
  uquantproduto in 'uquantproduto.pas' {fquantproduto},
  upedidoloja in 'upedidoloja.pas' {fpedidoloja};

{$R *.res}

begin
  Application.Initialize;
  FMAIN := TFMAIN.Create(Application);
  FMAIN.ProgressBar1.Visible := TRUE;
  FMAIN.SHOW;
  FMAIN.UPDATE;
  FMAIN.ProgressBar1.Position := 5;
  FMAIN.ProgressBar1.Position := 10;
  FMAIN.Label1.CAPTION := 'Aguarde enquanto o sistema carrega as tabelas... (Produtos)';
  FMAIN.UPDATE;
  FMAIN.ProgressBar1.Position := 20;
  FMAIN.Label1.CAPTION := 'Aguarde enquanto o sistema carrega as tabelas... (Clientes)';
  FMAIN.ProgressBar1.Position := 25;
  FMAIN.UPDATE;
  FMAIN.Label1.CAPTION := 'Aguarde enquanto o sistema carrega as tabelas... (Usuários)';
  FMAIN.ProgressBar1.Position := 30;
  FMAIN.Label1.CAPTION := 'Aguarde enquanto o sistema carrega as tabelas... (Orçamentos)';
  FMAIN.UPDATE;
  FMAIN.ProgressBar1.Position := 35;
  FMAIN.Label1.CAPTION := 'Aguarde enquanto o sistema carrega as tabelas... (Notas)';
  FMAIN.ProgressBar1.Position := 40;
  FMAIN.Label1.CAPTION := 'Aguarde enquanto o sistema carrega as tabelas... (Itens das Notas)';
  FMAIN.UPDATE;
  Application.CreateForm(TFMENU, FMENU);
  Application.CreateForm(TFMAIN, FMAIN);
  Application.CreateForm(Tfdm, fdm);
  Application.CreateForm(Tffechamesa, ffechamesa);
  Application.CreateForm(TFProcura, FProcura);
  Application.CreateForm(Tfsenha_cancelamento, fsenha_cancelamento);
  Application.CreateForm(Tfsenha_exclusao, fsenha_exclusao);
  Application.CreateForm(TFRELATORIOS, FRELATORIOS);
  Application.CreateForm(TFProcura2, FProcura2);
  Application.CreateForm(TFCadastro, FCadastro);
  Application.CreateForm(TFUSUARIOS, FUSUARIOS);
  Application.CreateForm(Tfquantproduto, fquantproduto);
  Application.CreateForm(Tfpedidoloja, fpedidoloja);
  FMAIN.ProgressBar1.Position := 45;
  FMAIN.Label1.CAPTION := 'Aguarde enquanto o sistema carrega as tabelas... (Itens dos Orçamentos)';
  FMAIN.UPDATE;
  FMAIN.ProgressBar1.Position := 50;
  FMAIN.Label1.CAPTION := 'Aguarde enquanto o sistema cria os formulários... (Relatórios)';
  FMAIN.ProgressBar1.Position := 55;
  FMAIN.UPDATE;
  FMAIN.Label1.CAPTION := 'Aguarde enquanto o sistema cria os formulários... (Estoque)';
  FMAIN.ProgressBar1.Position := 60;
  FMAIN.UPDATE;
  FMAIN.Label1.CAPTION := 'Aguarde enquanto o sistema cria os formulários... (Envia e-mail)';
//  Application.CreateForm(Tfenvianota, fenvianota);
  FMAIN.ProgressBar1.Position := 65;
  FMAIN.UPDATE;
  FMAIN.Label1.CAPTION := 'Aguarde enquanto o sistema cria os formulários... (Envia nota)';
  FMAIN.ProgressBar1.Position := 70;
  FMAIN.UPDATE;
  FMAIN.Label1.CAPTION := 'Aguarde enquanto o sistema cria os formulários... (Data Module)';
  FMAIN.ProgressBar1.Position := 75;
  FMAIN.UPDATE;
  FMAIN.Label1.CAPTION := 'Aguarde enquanto o sistema cria os formulários... (Usuários)';
  FMAIN.ProgressBar1.Position := 90;
  FMAIN.UPDATE;
  FMAIN.Label1.CAPTION := 'Aguarde enquanto o sistema cria os formulários... (Finalizando...)';
//  Application.CreateForm(Tdm, dm);
  FMAIN.ProgressBar1.Position := 100;
  FMAIN.UPDATE;
  FMAIN.HIDE;
  FMAIN.ProgressBar1.Visible := FALSE;
  FMAIN.FREE;
  Application.Run;
end.
