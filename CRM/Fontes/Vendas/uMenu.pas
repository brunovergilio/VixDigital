unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, 
  sSkinManager, dxGDIPlusClasses, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, 
  Vcl.StdCtrls, RzCommon, AdvSmoothMegaMenu, AdvSmoothMenu,
  AdvMenus, RzButton, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.TeeProcs, 
  VCLTee.Chart, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, 
  cxStyles, cxEdit, cxScheduler, cxSchedulerStorage, cxSchedulerCustomControls, 
  cxSchedulerCustomResourceView, cxSchedulerDayView, cxSchedulerAgendaView, 
  cxSchedulerDateNavigator, cxSchedulerHolidays, cxSchedulerTimeGridView, 
  cxSchedulerUtils, cxSchedulerWeekView, cxSchedulerYearView, 
  cxSchedulerGanttView, cxSchedulerRecurrence, dxBarBuiltInMenu, 
  cxSchedulerTreeListBrowser, cxSchedulerRibbonStyleEventEditor, Vcl.Grids, 
  Vcl.DBGrids, acPNG, AdvDBLookupComboBox, CurvyControls, inifiles, 
  VCLTee.Series, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, 
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, 
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, 
  FireDAC.DBX.Migrate, DateUtils, sPanel, AdvSmoothPanel, AdvSmoothLabel;

type
  TfrmMenu = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    PrinterSetupDialog1: TPrinterSetupDialog;
    Menu: TAdvMainMenu;
    Cobrana1: TMenuItem;
    ContatoAtivo1: TMenuItem;
    ContatoReceptivo1: TMenuItem;
    ConsultarAcordos1: TMenuItem;
    N4: TMenuItem;
    RetornodeSMS1: TMenuItem;
    AoManualemLote1: TMenuItem;
    ConsultadeAoManual1: TMenuItem;
    Cadastros1: TMenuItem;
    Devedores1: TMenuItem;
    tulos1: TMenuItem;
    ExclusodeDados1: TMenuItem;
    Configuraes1: TMenuItem;
    Campanha1: TMenuItem;
    GrupodeContatoAtivo1: TMenuItem;
    ResultadodeContatos1: TMenuItem;
    MotivosdeInadimplncia1: TMenuItem;
    Documentos1: TMenuItem;
    ermosdeAcordo1: TMenuItem;
    DemonstrativodeDbito1: TMenuItem;
    RecibosdePagamento1: TMenuItem;
    emplatedeEmail1: TMenuItem;
    emplatedeSMS1: TMenuItem;
    emplatedeBoleto1: TMenuItem;
    ConfiguraodeCoringas1: TMenuItem;
    Arquivos1: TMenuItem;
    ImportarTtulos1: TMenuItem;
    BaixarTtulos1: TMenuItem;
    ArquivosparaDownload1: TMenuItem;
    N6: TMenuItem;
    ArquivosdeBancoCNAB1: TMenuItem;
    N5: TMenuItem;
    AlteraodeStatusdeTtulo1: TMenuItem;
    ImportaodeHistricodeContatos1: TMenuItem;
    Relatrios1: TMenuItem;
    ClientesTtulos1: TMenuItem;
    AoAutomtica1: TMenuItem;
    EnviosdeSMS1: TMenuItem;
    HistricodeAes1: TMenuItem;
    Operao1: TMenuItem;
    HistricodeContatos1: TMenuItem;
    ProdutividadedeOperadores1: TMenuItem;
    EnriquecimentodeDados1: TMenuItem;
    Gesto1: TMenuItem;
    AnlisedeCarteiras1: TMenuItem;
    AnlisedeDesempenho1: TMenuItem;
    AnlisedeNegociaes1: TMenuItem;
    EfetividadedeNegociaes1: TMenuItem;
    EfetividadedeCobrana1: TMenuItem;
    Resultado1: TMenuItem;
    ComissodeOperadores1: TMenuItem;
    PagamentosRecebidos1: TMenuItem;
    PrestaodeContas1: TMenuItem;
    Panel_Supervisor: TPanel;
    G1: TMenuItem;
    I1: TMenuItem;
    script: TFDQuery;
    Button2: TButton;
    scriptCODIGO: TFloatField;
    scriptNOME: TStringField;
    scriptATIVO_CHECK: TStringField;
    scriptFILTRO_ORIGINAIS_CHECK: TStringField;
    scriptFILTRO_PARCELAS_CHECK: TStringField;
    scriptORDENACAO: TStringField;
    scriptPERIODO_DE: TDateTimeField;
    scriptPERIODO_ATE: TDateTimeField;
    scriptDIAS_DE_ATRASO_DE: TFloatField;
    scriptDIAS_DE_ATRASO_ATE: TFloatField;
    scriptVALOR_SALDO_DE: TFloatField;
    scriptVALOR_SALDO_ATE: TFloatField;
    scriptSCRIPT: TBlobField;
    scriptP_FISICA_CHECK: TStringField;
    scriptP_JURIDICA_CHECK: TStringField;
    scriptESTADOS: TBlobField;
    scriptCREDOR: TStringField;
    Credores2: TMenuItem;
    GerentesSupervisores2: TMenuItem;
    Categoria2: TMenuItem;
    ipodeNegcio2: TMenuItem;
    ipodeTtulo2: TMenuItem;
    ScoreFaixasde2: TMenuItem;
    FormadePagamento2: TMenuItem;
    BoletosPortador2: TMenuItem;
    ConfiguraodeEmail2: TMenuItem;
    Aging2: TMenuItem;
    Usurio2: TMenuItem;
    GruposdeOperadores1: TMenuItem;
    AlterarSenha1: TMenuItem;
    Usurios2: TMenuItem;
    GruposdeUsurios1: TMenuItem;
    a1: TMenuItem;
    N1: TMenuItem;
    pnllogin: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    btnlogin: TRzToolButton;
    Panel3: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    edtsenha: TCurvyEdit;
    Panel4: TPanel;
    uniscript: TFDQuery;
    UniQuery1: TFDQuery;
    uniscriptCODIGO: TFloatField;
    uniscriptTITULO: TStringField;
    uniscriptAVISO: TBlobField;
    uniscriptDATA: TSQLTimeStampField;
    uniscriptUSUARIO: TFloatField;
    uniscriptDTA_AGENDA: TSQLTimeStampField;
    uniscriptAGENDAR_AVISO: TStringField;
    ComboUsuario: TCurvyCombo;
    AdvMenuStyler1: TAdvMenuStyler;
    unidsscript: TDataSource;
    R1: TMenuItem;
    E1: TMenuItem;
    TrayIcon1: TTrayIcon;
    Timer1: TTimer;
    S1: TMenuItem;
    Panel16: TPanel;
    pnDashBoard: TPanel;
    AdvSmoothPanel1: TAdvSmoothPanel;
    lbCredores: TLabel;
    Image1: TImage;
    AdvSmoothPanel2: TAdvSmoothPanel;
    lbRecebimentoMes: TLabel;
    Image6: TImage;
    AdvSmoothPanel3: TAdvSmoothPanel;
    lbOperacoesImportadas: TLabel;
    Image5: TImage;
    AdvSmoothPanel4: TAdvSmoothPanel;
    lbTotalAtivos: TLabel;
    Image4: TImage;
    AdvSmoothPanel5: TAdvSmoothPanel;
    Image8: TImage;
    lbRecebidoHoje: TLabel;
    AdvSmoothPanel6: TAdvSmoothPanel;
    Image9: TImage;
    lbRenegociacoes: TLabel;
    AdvSmoothLabel1: TAdvSmoothLabel;
    Image2: TImage;
    B1: TMenuItem;
    B2: TMenuItem;
    C1: TMenuItem;
    C2: TMenuItem;
    C4: TMenuItem;
    G3: TMenuItem;
    U1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImportarTtulos1Click(Sender: TObject);
    procedure GrupodeContatoAtivo1Click(Sender: TObject);
    procedure ContatoAtivo1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ConsultarAcordos1Click(Sender: TObject);
    procedure GruposdeUsurios1Click(Sender: TObject);
    procedure Usurios2Click(Sender: TObject);
    procedure AlterarSenha1Click(Sender: TObject);
    procedure GruposdeOperadores1Click(Sender: TObject);
    procedure a1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnloginClick(Sender: TObject);
    procedure ComboUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboUsuarioSelect(Sender: TObject);
    procedure edtsenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Devedores1Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure PagamentosRecebidos1Click(Sender: TObject);
    procedure HistricodeContatos1Click(Sender: TObject);
    procedure B1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure B2Click(Sender: TObject);
    procedure G3Click(Sender: TObject);
    procedure C4Click(Sender: TObject);
    procedure U1Click(Sender: TObject);

  private
    { Private declarations }
    procedure GetDashBoard;
    procedure GetRecebimentos;
{  protected
    procedure CreateParams(var Params: TCreateParams); override;
}
  public
    procedure Escondetudo;
    var
      USUARIOLOGADO,
      USUARIOLOGADO_CODIGO,
      USUARIOLOGADO_NIVEL,
      USUARIOLOGADO_PERMITE_CLIENTE,
      USUARIOLOGADO_PERMITE_GERENCIADOR,
      USUARIOLOGADO_PERMITE_AGENDA,
      USUARIOLOGADO_PERMITE_IMPORTAR_ARQUIVOS,
      USUARIOLOGADO_PERMITE_CORRESPONDENCIAS,
      USUARIOLOGADO_PERMITE_BACKUP,
      USUARIOLOGADO_PERMITE_USUARIO,
      USUARIOLOGADO_PERMITE_EMAIL,
      USUARIOLOGADO_PERMITE_NOTIFICACOES: STRING
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

uses
  ShellApi, FUsuarios, FClientes, UDataModule, UAlterar_Senha, uAgenda, 
  UGerenciadorOperacoes_Filtro, uFFiltro_RelRemessas, uImportaExportaArquivo, 
  uEnviarEmail, uNotificacoes, uMensagemAssociada, uMotivodePausa, uBackup, 
  fAgencias, uAgenciasCadastro, ugruposagencias, ucadastrodeavisos, 
  ucadastrodebancosempresas, ubancosempresas, ulocalizacaoavancadadeclientes, 
  ucurvaabc, ufichadecobranca, urelacaotelefonesblacklist, 
  uFiltroRelatoriodeClientes, ugrupogeral, uusuariosgrupo, uoperadoresgrupo, 
  uusuarioscadastro, uselecionacampanha, uacordos, Agenda, ucliente,
  uPesquisaEventos, uCadCliente, uAlteraSituacaoNegociacao,
  uPesquisaSituacaoNegociacao, uRelContasReceber, uRelEventosCobranca, uBoleto,
  uCadBancosComissao, uPesquisaBanco, uPesquisaContaCorrente, uManutencaoContasReceber,
  uPesquisaGrupoCredor, uRelImportacoes;

{procedure TfrmMenu.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.ExStyle := Params.ExStyle OR WS_EX_APPWINDOW;
end;
}

function Crypt(Action, Src: String): String;
Label Fim;
var KeyLen : Integer;
       KeyPos : Integer;
       OffSet : Integer;
       Dest, Key : String;
       SrcPos : Integer;
       SrcAsc : Integer;
       TmpSrcAsc : Integer;
       Range : Integer;
begin
       if (Src = '') Then
       begin
               Result:= '';
               Goto Fim;
       end;
       Key := 'Schelter#';
       Dest := '';
       KeyLen := Length(Key);
       KeyPos := 0;
       SrcPos := 0;
       SrcAsc := 0;
       Range := 256;
       if (Action = UpperCase('C')) then
       begin
               Randomize;
               OffSet := Random(Range);
               Dest := Format('%1.2x',[OffSet]);
               for SrcPos := 1 to Length(Src) do
               begin
                       Application.ProcessMessages;
                       SrcAsc := (Ord(Src[srcPos]) + OffSet) Mod 255;
                       if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;

                       SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
                       Dest := Dest + Format('%1.2x',[srcAsc]);
                       OffSet := SrcAsc;
               end;
       end
       Else if (Action = UpperCase('D')) then
       begin
               OffSet := StrToInt('$' + copy(Src,1,2));//<--------------- adiciona o $ entra as aspas simples
               SrcPos := 3;
               repeat
                       SrcAsc := StrToInt('$' + copy(Src,SrcPos,2));//<--------------- adiciona o $ entra as aspas simples
                       if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
                       TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
                       if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
                       else TmpSrcAsc := TmpSrcAsc - OffSet;
                       Dest := Dest + Chr(TmpSrcAsc);
                       OffSet := SrcAsc;
                       SrcPos := SrcPos + 2;
               until (SrcPos >= Length(Src));
       end;
       Result:= Dest;
Fim:
end;

procedure TfrmMenu.a1Click(Sender: TObject);
begin
fmAgenda.showmodal;
end;

procedure TfrmMenu.AlterarSenha1Click(Sender: TObject);
begin
FAlterar_Senha.Showmodal;
end;

procedure TfrmMenu.B1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmBoleto, frmBoleto);
  frmBoleto.ShowModal;
  FreeAndNil(frmBoleto);
end;

procedure TfrmMenu.B2Click(Sender: TObject);
begin
  Application.CreateForm(TfrmPesquisaBanco, frmPesquisaBanco);
  frmPesquisaBanco.ShowModal;
  FreeAndNil(frmPesquisaBanco);
end;

procedure TfrmMenu.btnloginClick(Sender: TObject);
var
  iArq: TIniFile;
  Last_User: string;
  PERMITE_AGENDA,
  PERMITE_ALTERAR_SENHA,
  PERMITE_BACKUP,
  PERMITE_CLIENTE,
  PERMITE_CORRESPONDENCIAS,
  PERMITE_EMAIL,
  PERMITE_GERENCIADOR,
  PERMITE_IMPORTAR_ARQUIVOS,
  PERMITE_LISTA_COBRANCA,
  PERMITE_NOTIFICACOES,
  PERMITE_SELECIONAR_CONTAEMAIL,
  PERMITE_USUARIO: String;
begin
  uniscript.Close;
  uniscript.Sql.Text := 'select * from usuarios where upper(nome) = :pnome';
                        uniscript.ParambyName('pnome').AsString := ComboUsuario.Text;
  uniscript.Open;

  iArq := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'crm.ini');
  iArq.WriteString('BD','Last_user', ComboUsuario.Text) ;
  iArq.Free;

  if uniscript.RecordCount > 0 then begin
     if crypt('D',uniscript.FieldbyName('senha').AsString) = Edtsenha.Text then
     begin
     //if uniscript.FieldbyName('senha').AsString = Edtsenha.Text then begin

        USUARIOLOGADO := COMBOUSUARIO.TEXT;
        USUARIOLOGADO_CODIGO := uniscript.FIELDBYNAME('CODIGO').ASSTRING;
        USUARIOLOGADO_NIVEL := uniscript.FIELDBYNAME('NIVEL').ASSTRING;

        if uniscript.FIELDBYNAME('PERMITE_AGENDA').ASSTRING = 'True' then
          PERMITE_AGENDA := 'True';
        if uniscript.FIELDBYNAME('PERMITE_ALTERAR_SENHA').ASSTRING = 'True' then
          PERMITE_ALTERAR_SENHA := 'True';
        if uniscript.FIELDBYNAME('PERMITE_BACKUP').ASSTRING = 'True' then
          PERMITE_BACKUP := 'True';
        if uniscript.FIELDBYNAME('PERMITE_CLIENTE').ASSTRING = 'True' then
          PERMITE_CLIENTE := 'True';
        if uniscript.FIELDBYNAME('PERMITE_CORRESPONDENCIAS').ASSTRING = 'True' then
          PERMITE_CORRESPONDENCIAS := 'True';
        if uniscript.FIELDBYNAME('PERMITE_EMAIL').ASSTRING = 'True' then
          PERMITE_EMAIL := 'True';
        if uniscript.FIELDBYNAME('PERMITE_GERENCIADOR').ASSTRING = 'True' then
          PERMITE_GERENCIADOR := 'True';
        if uniscript.FIELDBYNAME('PERMITE_IMPORTAR_ARQUIVOS').ASSTRING = 'True' then
          PERMITE_IMPORTAR_ARQUIVOS := 'True';
        if uniscript.FIELDBYNAME('PERMITE_LISTA_COBRANCA').ASSTRING = 'True' then
          PERMITE_LISTA_COBRANCA := 'True';
        if uniscript.FIELDBYNAME('PERMITE_NOTIFICACOES').ASSTRING = 'True' then
          PERMITE_NOTIFICACOES := 'True';
        if uniscript.FIELDBYNAME('PERMITE_SELECIONAR_CONTAEMAIL').ASSTRING = 'True' then
          PERMITE_SELECIONAR_CONTAEMAIL := 'True';
        if uniscript.FIELDBYNAME('PERMITE_USUARIO').ASSTRING = 'True' then
          PERMITE_USUARIO := 'True';

        FRMMENU.Label1.Caption := 'Usuário Logado: ' + ComboUsuario.Text;

//        if uniscript.FieldbyName('NIVEL').AsString = 'M' then FRMMENU.Menu_Arquivo.Visible := TRUE;
//        if uniscript.FieldbyName('NIVEL').AsString = 'M' then FRMMENU.Menu_Cadastros.Visible := TRUE;

        if USUARIOLOGADO_NIVEL = 'M' then
          FRMMENU.Panel_Supervisor.Visible := True
        else
          FRMMENU.Panel_Supervisor.Visible := False;
//        FRMMENU.Panel_Operador.Visible := FALSE;

{        frmmenu.Menu.Items.Items[0].Visible := True;          //Cadastros1
        frmmenu.Menu.Items.Items[1].Visible := True;          //Cadastros1
        frmmenu.Menu.Items.Items[2].Visible := True;          //Configuraes1
        frmmenu.Menu.Items.Items[3].Visible := True;          //Arquivos1
        frmmenu.Menu.Items.Items[4].Visible := True;          //Relatrios1
        frmmenu.Menu.Items.Items[0].Items[0].Enabled := False; //ContatoAtivo
        frmmenu.Menu.Items.Items[0].Items[1].Enabled := False; //ContatoReceptivo1
        frmmenu.Menu.Items.Items[0].Items[4].Enabled := False; //RetornodeSMS1
        frmmenu.Menu.Items.Items[0].Items[5].Enabled := False; //AoManualemLote1
        frmmenu.Menu.Items.Items[0].Items[6].Enabled := False; //ConsultadeAoManual1
        frmmenu.Menu.Items.Items[1].Enabled := False;          //Cadastros1
        frmmenu.Menu.Items.Items[2].Enabled := False;          //Configuraes1
        frmmenu.Menu.Items.Items[3].Enabled := False;          //Arquivos1
        frmmenu.Menu.Items.Items[4].Enabled := False;          //Relatrios1
}

//vou desconsiderar isso para fazer o gerenciamento pelas permissões dos usuários
{        if (uniscript.FieldbyName('NIVEL').AsString = 'O') OR (uniscript.FieldbyName('NIVEL').AsString = 'C') then begin
         FRMMENU.Panel_Supervisor.Visible := FALSE;
//          FRMMENU.Panel_Operador.Visible := TRUE;

          frmmenu.Menu.Items.Items[0].Visible := True;          //Cadastros1
          frmmenu.Menu.Items.Items[0].Items[0].Enabled := true; //ContatoAtivo
          frmmenu.Menu.Items.Items[0].Items[1].Enabled := true; //ContatoReceptivo1
          frmmenu.Menu.Items.Items[0].Items[4].Enabled := False; //RetornodeSMS1
          frmmenu.Menu.Items.Items[0].Items[5].Enabled := False; //AoManualemLote1
          frmmenu.Menu.Items.Items[0].Items[6].Enabled := False; //ConsultadeAoManual1
          frmmenu.Menu.Items.Items[1].Enabled := False;          //Cadastros1
          frmmenu.Menu.Items.Items[2].Enabled := False;          //Configuraes1
          frmmenu.Menu.Items.Items[3].Enabled := False;          //Arquivos1
          frmmenu.Menu.Items.Items[4].Enabled := False;          //Relatrios1

          frmMenu.Button2Click(Sender);
        end;

        if uniscript.FieldbyName('NIVEL').AsString = 'S' then begin
          //FRMMENU.Panel_Supervisor.Visible := TRUE;
//          FRMMENU.Panel_Operador.Visible := FALSE;

          frmmenu.Menu.Items.Items[0].Visible := True;          //Cadastros1
          frmmenu.Menu.Items.Items[0].Items[0].Enabled := True; //ContatoAtivo
          frmmenu.Menu.Items.Items[0].Items[1].Enabled := True; //ContatoReceptivo1
          frmmenu.Menu.Items.Items[0].Items[4].Enabled := True; //RetornodeSMS1
          frmmenu.Menu.Items.Items[0].Items[5].Enabled := True; //AoManualemLote1
          frmmenu.Menu.Items.Items[0].Items[6].Enabled := True; //ConsultadeAoManual1
          frmmenu.Menu.Items.Items[1].Enabled := True;          //Cadastros1
          frmmenu.Menu.Items.Items[2].Enabled := True;          //Configuraes1
          frmmenu.Menu.Items.Items[3].Enabled := True;          //Arquivos1
          frmmenu.Menu.Items.Items[4].Enabled := True;          //Relatrios1
        end;

        if uniscript.FieldbyName('NIVEL').AsString = 'M' then begin
          //FRMMENU.Panel_Supervisor.Visible := TRUE;
        end;
}
// fim vou desconsiderar isso

{        frmmenu.Menu.Items.Items[0].Visible := True;          //Cadastros1
        frmmenu.Menu.Items.Items[0].Items[0].Visible := True; //ContatoAtivo
        frmmenu.Menu.Items.Items[0].Items[1].Visible := True; //ContatoReceptivo1
        frmmenu.Menu.Items.Items[0].Items[4].Visible := True; //RetornodeSMS1
        frmmenu.Menu.Items.Items[0].Items[5].Visible := True; //AoManualemLote1
        frmmenu.Menu.Items.Items[0].Items[6].Visible := True; //ConsultadeAoManual1
        frmmenu.Menu.Items.Items[1].Visible := True;          //Cadastros1
        frmmenu.Menu.Items.Items[2].Visible := True;          //Configuraes1
        frmmenu.Menu.Items.Items[3].Visible := True;          //Arquivos1
        frmmenu.Menu.Items.Items[4].Visible := True;          //Relatrios1
        frmmenu.Menu.Items.Items[0].Items[0].Enabled := True; //ContatoAtivo
        frmmenu.Menu.Items.Items[0].Items[1].Enabled := True; //ContatoReceptivo1
        frmmenu.Menu.Items.Items[0].Items[4].Enabled := True; //RetornodeSMS1
        frmmenu.Menu.Items.Items[0].Items[5].Enabled := True; //AoManualemLote1
        frmmenu.Menu.Items.Items[0].Items[6].Enabled := True; //ConsultadeAoManual1
        frmmenu.Menu.Items.Items[1].Enabled := True;          //Cadastros1
        frmmenu.Menu.Items.Items[2].Enabled := True;          //Configuraes1
        frmmenu.Menu.Items.Items[3].Enabled := True;          //Arquivos1
        frmmenu.Menu.Items.Items[4].Enabled := True;          //Relatrios1
}

//definindo o que o usuário pode ver
        Cadastros1.Visible := True;
        if USUARIOLOGADO_NIVEL = 'M' then
        begin
          Credores2.Enabled := True;
          E1.Enabled := True;
          Relatrios1.Visible := True;
        end
        else
        begin
          Credores2.Enabled := False;
          E1.Enabled := False;
        end;

        if PERMITE_AGENDA = 'True' then
          a1.enabled := True
        else
          a1.enabled := False;
        //if PERMITE_ALTERAR_SENHA = 'True' then AlterarSenha1.enabled := True else AlterarSenha1.enabled := False;
        if PERMITE_CLIENTE = 'True' then
        begin
          Cobrana1.Visible := True;
          ContatoAtivo1.Visible := True;
          ContatoAtivo1.enabled := True;
        end
        else
          ContatoAtivo1.enabled := False;

        if PERMITE_GERENCIADOR = 'True' then
        begin
          Configuraes1.Visible := True; {Configuraes1};
          Configuraes1.Enabled := True; {Configuraes1};
        end
        else
          Configuraes1.Enabled := False;

        if PERMITE_IMPORTAR_ARQUIVOS = 'True' then
        begin
          Arquivos1.Visible := True;
          ImportarTtulos1.enabled := True;
        end
        else
          ImportarTtulos1.enabled := False;

        if PERMITE_NOTIFICACOES = 'True' then
        begin
          Cobrana1.enabled := True;
        end
        else
          Cobrana1.enabled := False; {menu cobranças, e não notificações}

        if PERMITE_USUARIO = 'True' then begin
          Usurio2.Visible := True;
          Usurio2.enabled := True;
        end else Usurio2.enabled := False;
//fim definindo o que o usuário pode ver

        uniscript.Close;

        frmmenu.caption := frmmenu.caption + ' (' + USUARIOLOGADO + ')';

        //VERIFICAR SE O USUÁRIO É UM OPERADOR
//        if USUARIOLOGADO_NIVEL = 'O' then
//        begin




//********** TRECHO COMENTADO ABAIXO 31/03/2020 *****************************
//          uniscript.Close;
//          uniscript.sql.clear;
//          uniscript.sql.add('select campanha_grupo_operador.*, campanha_crm.nome as nome_campanha, operador_grupo.nome_grupo, operador_grupo_operadores.*, usuarios.codigo, usuarios.nome');
//          uniscript.sql.add('from campanha_grupo_operador inner join operador_grupo on campanha_grupo_operador.grupo_operador = operador_grupo.codigo');
//          uniscript.sql.add('inner join operador_grupo_operadores on operador_grupo_operadores.grupo = operador_grupo.codigo');
//          uniscript.sql.add('inner join usuarios on usuarios.codigo = operador_grupo_operadores.operador');
//          uniscript.sql.add('inner join campanha_crm on campanha_crm.codigo = campanha_grupo_operador.codigo_campanha');
//          uniscript.sql.add('where usuarios.codigo = :pusuariocodigo');
//          uniscript.sql.add('and campanha_crm.ativo_check = ''True''');
//          uniscript.parambyname('pusuariocodigo').asstring := USUARIOLOGADO_CODIGO;
//          uniscript.Open;
//
//          //VERIFICAR SE O OPERADOR ESTÁ EM ALGUMA LISTA
//          //SE ESTIVER EM MAIS DE UMA LISTA ATIVA, DAR ERRO
//          if uniscript.recordcount > 1 then begin
//            Application.MessageBox('O operador pertence a mais de uma lista/campanha ativa.','Atenção',MB_ICONHAND + MB_OK + MB_ICONQUESTION);
//            Exit;
//          end;
//          //SE NÃO ESTIVER EM NENHUMA, MANDAR PRO DASHBOARD
//          if uniscript.recordcount = 0 then begin
//            frmmenu.WindowState := wsmaximized;
//            frmmenu.Position := podefault;
//            pnllogin.Visible := False;
//            panel1.Visible := False;
//          end;
//          //SE ESTIVER EM 1 LISTA, ABRIR O CADASTRO DE CLIENTES.
//          if uniscript.recordcount = 1 then begin
//            escondetudo;
//            frmClientesCadastro.Caption := 'Campanha: ' +  uniscript.fieldbyname('nome_campanha').AsString;
//            frmClientesCadastro.showmodal;
//          end;
//          uniscript.Close;
//          uniscript.sql.clear;
//        end
//        else
//        begin
            frmmenu.WindowState := wsmaximized;
            frmmenu.Position := podefault;
            pnllogin.Visible := False;
            panel1.Visible := False;
            BorderIcons := BorderIcons + [biMaximize];

//        end;
//***********************************************************************
     end
     else
     begin
        showmessage('Senha incorreta.');
        edtSenha.Setfocus;
     end;
  end
  else
  begin
        showmessage('Usuário incorreto');
        ComboUsuario.Setfocus;
  end;
end;

procedure TfrmMenu.Button2Click(Sender: TObject);
begin
  script.close;
  script.sql.text :=  'select campanha_crm.* ' +
                      'from campanha_crm where codigo in ' +
                      '(select campanha_grupo_operador.codigo_campanha from campanha_grupo_operador where grupo_operador in ' +
                      '(select operador_grupo_operadores.grupo as grupo_operador from operador_grupo_operadores where operador in ' +
                      '(select usuarios.codigo as operador from usuarios where usuarios.codigo = :pcodigo))) ' +
                      'and upper(campanha_crm.ativo_check) = ''TRUE''';
  script.parambyname('pcodigo').asstring := FRMMENU.usuariologado_codigo;
  script.open;
end;

procedure TfrmMenu.C1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmPesquisaContaCorrente, frmPesquisaContaCorrente);
  frmPesquisaContaCorrente.ShowModal;
  FreeAndNil(frmPesquisaContaCorrente);
end;

procedure TfrmMenu.C2Click(Sender: TObject);
begin
  Application.CreateForm(TfrmManutencaoContasReceber, frmManutencaoContasReceber);
  frmManutencaoContasReceber.ShowModal;
  FreeAndNil(frmManutencaoContasReceber);
end;

procedure TfrmMenu.C4Click(Sender: TObject);
begin
  Application.CreateForm(tfrmcredores, frmcredores);
  frmcredores.ShowModal;
  frmcredores.Free;
end;

procedure TfrmMenu.ComboUsuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then edtSenha.SetFocus;
end;

procedure TfrmMenu.ComboUsuarioSelect(Sender: TObject);
begin
EdtSenha.SetFocus;
end;

procedure TfrmMenu.ConsultarAcordos1Click(Sender: TObject);
begin
frmacordos.showmodal;
end;

procedure TfrmMenu.ContatoAtivo1Click(Sender: TObject);
begin
  //Application.CreateForm(TFrmClientes, FrmClientes);
  FrmClientes.ShowModal;
  if FrmClientes.vOK then
  begin
    //Application.CreateForm(TfrmClientesCadastro, frmClientesCadastro);
    frmClientesCadastro.showmodal;
    //frmClientesCadastro.Free;
  end;
  //FrmClientes.Free;
end;

procedure TfrmMenu.Devedores1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmCadCliente, frmCadCliente);
  FrmClientes.uniQClientes.Close;
  FrmClientes.uniQClientes.Open;
  FrmClientes.uniQClientes.Append;
  FrmClientes.uniQClientesReferencia.Close;
  FrmClientes.uniQClientesReferencia.Open;
  FrmClientes.uniQClientesReferencia.Append;
  frmCadCliente.ShowModal;
  frmCadCliente.Free;
  //frmclientes.showMODAL;
  //frmclientesCadastro.showMODAL;
end;

procedure TfrmMenu.E1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmPesquisaEventos, frmPesquisaEventos);
  frmPesquisaEventos.ShowModal;
  frmPesquisaEventos.Free;
end;

procedure TfrmMenu.edtsenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then frmMenu.btnloginClick(Sender);
end;

procedure TfrmMenu.Escondetudo;
begin
frmmenu.Menu.Items.Items[0].Visible := False;          //Cadastros1
frmmenu.Menu.Items.Items[1].Visible := False;          //Cadastros1
frmmenu.Menu.Items.Items[2].Visible := False;          //Configuraes1
frmmenu.Menu.Items.Items[3].Visible := False;          //Arquivos1
frmmenu.Menu.Items.Items[4].Visible := False;          //Relatrios1
panel1.visible := false;
end;

procedure TfrmMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TfrmMenu.FormCreate(Sender: TObject);
var
  iArq: TIniFile;
begin
//  windows_systemshell.IDSistema := 2020;
//  windows_systemshell.executar;

  escondetudo;

  frmmenu.Width := 370;
  frmmenu.Height := 430;
  frmmenu.ClientWidth := 370;
  frmmenu.ClientHeight := 430;
  BorderIcons := BorderIcons - [biMaximize];
  //frmmenu.position := poScreenCenter;
  frmmenu.position := poMainFormCenter;
  pnllogin.align := alclient;
  frmmenu.update;

  frmmenu.caption := 'Click Cobranças 2020 (' + Label6.caption + ')';

  //ComboUsuario.Setfocus;
  try
    ComboUsuario.Setfocus;
  except
  end;
end;

procedure TfrmMenu.FormShow(Sender: TObject);
var
  iArq: TIniFile;
  Last_User : string;
begin
  iArq := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'oracle_path.ini');
  frmMenu.ComboUsuario.Text := iArq.ReadString('BD', 'Last_user', '');
  try
    ComboUsuario.Setfocus;
  except
  end;
    //Timer1.Enabled := True;

  if USUARIOLOGADO_NIVEL = 'M' then
  begin
    GetDashBoard;
    pnDashBoard.Visible := True
  end
  else
    pnDashBoard.Visible := False
end;

procedure TfrmMenu.G3Click(Sender: TObject);
begin
  Application.CreateForm(TfrmPesquisaGrupoCredor, frmPesquisaGrupoCredor);
  frmPesquisaGrupoCredor.ShowModal;
  FreeAndNil(frmPesquisaGrupoCredor);
end;

procedure TfrmMenu.GetDashBoard;
var
  QDashBoard : TFDQuery;
begin
  QDashBoard := TFDQuery.Create(nil);
  try
    QDashBoard.Connection := frmDataModule.UniConnection1;
    try
      with QDashBoard do //credores
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT     ');
        SQL.Add('  COUNT(*) ');
        SQL.Add('FROM       ');
        SQL.Add('  bancos   ');
        Open;
      end;
      lbCredores.Caption := IntToStr(QDashBoard.Fields[0].AsInteger);

      with QDashBoard do //renegociações
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT     ');
        SQL.Add('  COUNT(*) ');
        SQL.Add('FROM       ');
        SQL.Add('  parcelas ');
        Open;
      end;
      lbRenegociacoes.Caption := IntToStr(QDashBoard.Fields[0].AsInteger);

      with QDashBoard do //recebido hoje
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT                                                        ');
        SQL.Add('  SUM(valorrealizado)                                         ');
        SQL.Add('FROM                                                          ');
        SQL.Add('  parcelas                                                    ');
        SQL.Add('WHERE STR_TO_DATE(DATARECEBIMENTO, "%d/%m/%Y") = CURRENT_DATE ');
        Open;
      end;
      lbRecebidoHoje.Caption := FormatFloat('###,##0.00', QDashBoard.Fields[0].AsFloat);

      with QDashBoard do //total de parcelas
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT                                              ');
        SQL.Add('  SUM(valorprevisto) - SUM(VALORREALIZADO) AS total ');
        SQL.Add('FROM                                                ');
        SQL.Add('  parcelas                                          ');
        Open;
      end;
      lbTotalAtivos.Caption := FormatFloat('###,##0.00', QDashBoard.Fields[0].AsFloat);

      with QDashBoard do //total de operacoes importadas
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT      ');
        SQL.Add('  COUNT(*)  ');
        SQL.Add('FROM        ');
        SQL.Add('  operacoes ');
        Open;
      end;
      lbOperacoesImportadas.Caption := StringReplace(FormatFloat('###,##0.00',QDashBoard.Fields[0].AsFloat),',','.',[rfReplaceAll]);

      with QDashBoard do //total de recebimentos do mês
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT                                                     ');
        SQL.Add('  SUM(valorrealizado),                                     ');
        SQL.Add('  STR_TO_DATE(DATARECEBIMENTO, "%d/%m/%Y")                 ');
        SQL.Add('FROM                                                       ');
        SQL.Add('  parcelas                                                 ');
        SQL.Add('WHERE STR_TO_DATE(DATARECEBIMENTO, "%d/%m/%Y") BETWEEN :D1 ');
        SQL.Add('  AND :D2                                                  ');
        ParamByName('D1').AsDate := StartOfTheMonth(Now);
        ParamByName('D2').AsDate := EndOfTheMonth(Now);
        Open;
      end;
      lbRecebimentoMes.Caption := FormatFloat('###,##0.00', QDashBoard.Fields[0].AsFloat);
    except

    end;

  finally
    FreeAndNil(QDashBoard);
  end;
end;

procedure TfrmMenu.GetRecebimentos;
begin

end;

procedure TfrmMenu.GrupodeContatoAtivo1Click(Sender: TObject);
begin
frmgrupogeral.showmodal;
end;

procedure TfrmMenu.GruposdeOperadores1Click(Sender: TObject);
begin
frmoperadoresgrupo.SHOWMODAL;
end;

procedure TfrmMenu.GruposdeUsurios1Click(Sender: TObject);
begin
frmgruposdeusuarios.showmodal;
end;

procedure TfrmMenu.HistricodeContatos1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmRelEventosCobranca, frmRelEventosCobranca);
  frmRelEventosCobranca.ShowModal;
  frmRelEventosCobranca.Free;
end;

procedure TfrmMenu.ImportarTtulos1Click(Sender: TObject);
begin
FImportaExportaArquivo.ShowModal;
end;

procedure TfrmMenu.PagamentosRecebidos1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmRelContasReceber, frmRelContasReceber);
  frmRelContasReceber.ShowModal;
  FreeAndNil(frmRelContasReceber);
end;

procedure TfrmMenu.S1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmPesquisaSituacaoNegociacao, frmPesquisaSituacaoNegociacao);
  frmPesquisaSituacaoNegociacao.ShowModal;
  frmPesquisaSituacaoNegociacao.Free;
end;

procedure TfrmMenu.Timer1Timer(Sender: TObject);
var
  QAgenda : TFDQuery;
begin
  try
    QAgenda := TFDQuery.Create(nil);
    try
      QAgenda.Connection := frmDataModule.UniConnection1;
      with QAgenda do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT                                    ');
        SQL.Add('  a.NOME,                                 ');
        SQL.Add('  a.EVENTO,                               ');
        SQL.Add('  CAST(a.HORA AS TIME) AS horario         ');
        SQL.Add('FROM                                      ');
        SQL.Add('  agenda a                                ');
        SQL.Add('WHERE CAST(a.HORA AS DATE) = CURRENT_DATE ');
        SQL.Add('  AND a.USUARIO = :CodUser                ');
        SQL.Add('  AND a.AVISADO = "N"                     ');
        ParamByName('CodUser').AsString := frmMenu.USUARIOLOGADO_CODIGO;
        Open;
      end;
      Application.ProcessMessages;
      //ShowMessage(Copy(TimeToStr(IncMinute(Time,30)),0,5) + 'hora banco: ' + Copy(QAgenda.FieldByName('horario').AsString,0,5));
      if Copy(TimeToStr(IncMinute(Time,30)),0,5) = Copy(QAgenda.FieldByName('horario').AsString,0,5) then
      begin
        Timer1.Enabled := False;
        TrayIcon1.BalloonTitle := 'Agendamento';
        TrayIcon1.BalloonHint := QAgenda.FieldByName('nome').AsString + #13 +
                                 QAgenda.FieldByName('evento').AsString + #13 +
                                 QAgenda.FieldByName('horario').AsString;
        //TrayIcon1.Visible := True;
        TrayIcon1.ShowBalloonHint;
      end;
    except

    end;
  finally
    FreeAndNil(QAgenda);
  end;
end;

procedure TfrmMenu.U1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmRelImportacoes, frmRelImportacoes);
  frmRelImportacoes.ShowModal;
  FreeAndNil(frmRelImportacoes);
end;

procedure TfrmMenu.Usurios2Click(Sender: TObject);
begin
FrmUsuarios.ShowModal;
end;

end.
