unit FUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, 
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, 
  dxSkinsCore, dxSkinsDefaultPainters, cxCustomData, cxFilter, cxData, 
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, 
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, 
  cxCalendar, cxCheckBox, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, 
  Vcl.Mask, cxGridLevel, cxGridCustomTableView, cxGridTableView, 
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ComCtrls, 
  Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, AdvGlowButton, JvExDBGrids, JvDBGrid, 
  RzButton, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, 
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, 
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, 
  FireDAC.DBX.Migrate;

type
  TFrmUsuarios = class(TForm)
    JvDBGrid1: TJvDBGrid;
    Panel1: TPanel;
    uniQUsuarios: TFDQuery;
    UniDataSource1: TDataSource;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Edit1: TEdit;
    AdvGlowButton4: TAdvGlowButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button10: TButton;
    lbltotalativos: TLabel;
    lbltotalinativos: TLabel;
    lbltotal: TLabel;
    lbladministradores: TLabel;
    lbloperadores: TLabel;
    lblcobradores: TLabel;
    lblexterno: TLabel;
    UniQuery1: TFDQuery;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    uniQUsuariosCODIGO: TFMTBCDField;
    uniQUsuariosNOME: TStringField;
    uniQUsuariosNIVEL: TStringField;
    uniQUsuariosSENHA: TStringField;
    uniQUsuariosCOBRADOR: TFMTBCDField;
    uniQUsuariosDATA_MODIF: TSQLTimeStampField;
    uniQUsuariosCOBRADOR_EXT: TStringField;
    uniQUsuariosATIVO: TStringField;
    uniQUsuariosGRUPOHORARIO: TFMTBCDField;
    uniQUsuariosAGENDA_OUTROUSUARIO: TStringField;
    uniQUsuariosMATRICULA: TStringField;
    uniQUsuariosAGENDA_PRIORIDADE_ALTA: TStringField;
    uniQUsuariosAGENDA_LIMITA: TStringField;
    uniQUsuariosATIVONET: TStringField;
    uniQUsuariosSENHANET: TStringField;
    uniQUsuariosUSUARIO_GRUPO: TFMTBCDField;
    uniQUsuariosDATA_ACESSO: TSQLTimeStampField;
    uniQUsuariosGRUPO_DISCADOR: TStringField;
    uniQUsuariosCONTAEMAIL: TFMTBCDField;
    uniQUsuariosIDNET: TStringField;
    uniQUsuariosAGENDA_CUMPRIROUTROUSUARIO: TStringField;
    uniQUsuariosPERMITE_ALTERAR_SENHA: TStringField;
    uniQUsuariosCODIGO_EXTERNO: TStringField;
    uniQUsuariosPERMITE_SELECIONAR_CONTAEMAIL: TStringField;
    uniQUsuariosPERMITE_LISTA_COBRANCA: TStringField;
    uniQUsuariosPERMITE_CLIENTE: TStringField;
    uniQUsuariosPERMITE_GERENCIADOR: TStringField;
    uniQUsuariosPERMITE_AGENDA: TStringField;
    uniQUsuariosPERMITE_IMPORTAR_ARQUIVOS: TStringField;
    uniQUsuariosPERMITE_CORRESPONDENCIAS: TStringField;
    uniQUsuariosPERMITE_BACKUP: TStringField;
    uniQUsuariosPERMITE_USUARIO: TStringField;
    uniQUsuariosPERMITE_EMAIL: TStringField;
    uniQUsuariosPERMITE_NOTIFICACOES: TStringField;
    uniQUsuariosANOTACOES: TBlobField;
    uniQUsuariosUSUARIO_NOME_GRUPO: TStringField;
    procedure FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnRecriarClick(Sender: TObject);
    procedure btnLiberarClick(Sender: TObject);
    procedure btnBloquearClick(Sender: TObject);
    procedure cxGridDBDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsDadosStateChange(Sender: TObject);
    procedure FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbSairClick(Sender: TObject);
    procedure FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
    procedure pgControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure FrmFrameBotoes1SpbEditarClick(Sender: TObject);
    procedure QryDadosNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
  private
    { Private declarations }
    FTreeView_Listar  : TTreeView;
    FCategoria  : TStringList;
    FIteMMenu   : TStringList;

    FMudarAba : Boolean;
    procedure MudarAbaDetalhe;
    procedure ChecarModoEdicao;
    function EncontrarNo(aNome: string): TTreeNode;
    procedure ListarMenus;
    procedure ValidarCampos;
    procedure ReabrirQryAcesso;


  public
    { Public declarations }
  end;

var
  FrmUsuarios: TFrmUsuarios;

implementation

{$R *.dfm}

uses
  uDataModule, uUsuariosCadastro, uusuariosgrupo;

procedure TFrmUsuarios.FormActivate(Sender: TObject);
begin
  uniQUsuarios.Close;
  uniQUsuarios.Sql.Text := 'select * from usuarios order by codigo';
  uniQUsuarios.Open;
  uniQUsuarios.First;

  uniQuery1.Close;
  uniQuery1.Sql.Text := 'select count(codigo) as quantidade from usuarios ' +
                        'where nivel = ''M''';
  uniQuery1.Open;
  lbladministradores.caption := uniquery1.fieldbyname('quantidade').AsString;
  uniQuery1.Close;
  uniQuery1.Sql.Text := 'select count(codigo) as quantidade from usuarios ' +
                        'where nivel = ''C''';
  uniQuery1.Open;
  lblcobradores.caption := uniquery1.fieldbyname('quantidade').AsString;
  uniQuery1.Close;
  uniQuery1.Sql.Text := 'select count(codigo) as quantidade from usuarios ' +
                        'where nivel = ''O''';
  uniQuery1.Open;
  lbloperadores.caption := uniquery1.fieldbyname('quantidade').AsString;
  uniQuery1.Close;

  uniQuery1.Sql.Text := 'select count(codigo) as quantidade from usuarios ' +
                        'where nivel = ''E''';
  uniQuery1.Open;
  lblEXTERNO.caption := uniquery1.fieldbyname('quantidade').AsString;
  uniQuery1.Close;
  uniQuery1.Sql.Text := 'select count(codigo) as quantidade from usuarios ' +
                        'where ativo = ''T''';
  uniQuery1.Open;
  lbltotalativos.caption := uniquery1.fieldbyname('quantidade').AsString;
  uniQuery1.Close;
  uniQuery1.Sql.Text := 'select count(codigo) as quantidade from usuarios ' +
                        'where ativo = ''F''';
  uniQuery1.Open;
  lbltotalinativos.caption := uniquery1.fieldbyname('quantidade').AsString;
  uniQuery1.Close;
  uniQuery1.Sql.Text := 'select count(codigo) as quantidade from usuarios';
  uniQuery1.Open;
  lbltotal.caption := uniquery1.fieldbyname('quantidade').AsString;
  uniQuery1.Close;

end;

procedure TFrmUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  Action := CaFree;
//  FrmUsuarios := Nil;
try
  uniQUsuarios.Edit;
  uniQUsuarios.Cancel;
except end;
end;

procedure TFrmUsuarios.FormCreate(Sender: TObject);
begin
  //FrmFrameBotoes1.DataSource := dsDados;
  FTreeView_Listar      := TTreeView.Create(Self);
  FCategoria            := TStringList.Create;
  FIteMMenu             := TStringList.Create;
  FCategoria.Duplicates := dupIgnore;
  FIteMMenu.Duplicates  := dupIgnore;
  //QryDados.Open();

end;

procedure TFrmUsuarios.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
{  if  (QryDados.Active = False) then
  begin
    Informar('Tabela não está ativa.');
  end;
  ChecarModoEdicao();
  pgControl.ActivePageIndex := 1;
  FMudarAba := True;
  EditUsuario.SetFocus;
  QryDados.Append;
}
end;

procedure TFrmUsuarios.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
{  QueryMenu.Cancel;
  FrmFrameBotoes1.SpbCancelarClick(Sender);
  pgControl.ActivePageIndex := 0;
}
end;

procedure TFrmUsuarios.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
//  FrmFrameBotoes1.SpbEditarClick(Sender);
end;

procedure TFrmUsuarios.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
//  FrmFrameBotoes1.SpbExcluirClick(Sender);
end;

procedure TFrmUsuarios.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then FrmUsuarios.AdvGlowButton4Click(Sender);

end;

function TFrmUsuarios.EncontrarNo(aNome: string): TTreeNode;
var
  i: Integer;
begin

  Result := nil;
  with FTreeView_Listar.Items do
  begin
    for i := 0 to Pred(Count) do
      if Item[i].Text=aNome then
      begin
        Result := Item[i];
        Break;
      end;
  end;
end;

procedure TFrmUsuarios.AdvGlowButton4Click(Sender: TObject);
begin
//zUsuarios.locate('NOME',EDIT1.Text,[lopartialkey,loCaseInsensitive]);
  uniQUsuarios.Close;
  uniQUsuarios.Sql.Text := 'select * from usuarios where upper(nome) like (''%' + EDIT1.TEXT + '%'')';
  uniQUsuarios.Open;
  uniQUsuarios.First;
end;

procedure TFrmUsuarios.btnBloquearClick(Sender: TObject);
begin
{   try
     QueryMenu.close;
     QryUsuarioSetarAcesso.ParamByName('ID').AsInteger := QryDados.FieldByName('ID').AsInteger;
     QryUsuarioSetarAcesso.ParamByName('ACAO').AsString :='NAO';
     QryUsuarioSetarAcesso.ExecSQL;
   finally
     QueryMenu.Open;
   end;
}
end;

procedure TFrmUsuarios.btnLiberarClick(Sender: TObject);
begin
{   try
     QueryMenu.close;
     QryUsuarioSetarAcesso.ParamByName('ID').AsInteger := QryDados.FieldByName('ID').AsInteger;
     QryUsuarioSetarAcesso.ParamByName('ACAO').AsString :='SIM';
     QryUsuarioSetarAcesso.ExecSQL;
   finally
     QueryMenu.Open;
   end;
}
end;

procedure TFrmUsuarios.btnRecriarClick(Sender: TObject);
begin
{  if Pergunta('Esse processo irá recriar todos os Menus para este usuário... Continuar?') = false then
    exit;
  ListarMenus();
}
end;

procedure TFrmUsuarios.Button10Click(Sender: TObject);
begin
frmgruposdeusuarios.SHOWMODAL;
end;

procedure TFrmUsuarios.Button1Click(Sender: TObject);
begin
  uniQUsuarios.Close;
  uniQUsuarios.Sql.Text := 'select * from usuarios order by nome';
  uniQUsuarios.Open;
  uniQUsuarios.First;
end;

procedure TFrmUsuarios.Button2Click(Sender: TObject);
begin
  uniQUsuarios.Close;
  uniQUsuarios.Sql.Text := 'select * from usuarios order by usuario_nome_grupo';
  uniQUsuarios.Open;
  uniQUsuarios.First;
end;

procedure TFrmUsuarios.Button3Click(Sender: TObject);
begin
  uniQUsuarios.Close;
  uniQUsuarios.Sql.Text := 'select * from usuarios order by nivel';
  uniQUsuarios.Open;
  uniQUsuarios.First;
end;

procedure TFrmUsuarios.Button4Click(Sender: TObject);
begin
  uniQUsuarios.Close;
  uniQUsuarios.Sql.Text := 'select * from usuarios order by codigo';
  uniQUsuarios.Open;
  uniQUsuarios.First;
end;

procedure TFrmUsuarios.Button6Click(Sender: TObject);
begin
  uniQUsuarios.Close;
  uniQUsuarios.Sql.Text := 'select * from usuarios where ativo = ''T'' order by codigo';
  uniQUsuarios.Open;
  uniQUsuarios.First;
end;

procedure TFrmUsuarios.Button7Click(Sender: TObject);
begin
  uniQUsuarios.Close;
  uniQUsuarios.Sql.Text := 'select * from usuarios where ativo = ''F'' order by codigo';
  uniQUsuarios.Open;
  uniQUsuarios.First;

end;

procedure TFrmUsuarios.ChecarModoEdicao;
begin
{  procedure TFrmUsuarios.Button5Click(Sender: TObject);
begin

end;

if  (QryDados.State in [dsedit,dsinsert]) then
  begin
    Informar('Há um registro em edição no momento.');
    exit;
  end;
}
end;

procedure TFrmUsuarios.cxGridDBDblClick(Sender: TObject);
begin
  MudarAbaDetalhe();
end;

procedure TFrmUsuarios.dsDadosStateChange(Sender: TObject);
begin
{  if (FrmFrameBotoes1.DataSource.State in [dsInsert,dsEdit]) then
    FrmFrameBotoes1.AtivaEdicao
  else
    FrmFrameBotoes1.DesativaEdicao;
}
end;

procedure TFrmUsuarios.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
//  QryDados.Locate('ID',DlgProcurar.Configurar.Resultado.ToInteger,[]);

end;

procedure TFrmUsuarios.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmUsuarios.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
begin
  ValidarCampos();
  inherited;
  //if not (QryDados.State in [dsedit,dsinsert]) then
  //  exit;
{  FrmFrameBotoes1.SpbSalvarClick(Sender);
  if (QueryMenu.state in [dsEdit, dsInsert]) then
    QueryMenu.Post;
  ReabrirQryAcesso();
  pgControl.ActivePageIndex := 0;
}
end;

procedure TFrmUsuarios.JvDBGrid1DblClick(Sender: TObject);
begin
FrmUsuarios.RzToolButton2Click(Sender);
end;

procedure TFrmUsuarios.ListarMenus;
var
  I, IC      : Integer;
  mAction    : TAction;
begin
   FCategoria.Clear;
   FIteMMenu.Clear;
{
   for I := 0 to Pred(FrmPrincipal.ActionRibbon.ActionCount) do
   begin
     if FCategoria.IndexOf(FrmPrincipal.ActionRibbon.Actions[I].Category)<0 then
     begin
       FCategoria.Add(FrmPrincipal.ActionRibbon.Actions[I].Category);
     end;
   end;
   try
     QueryMenu.DisableControls;
     QueryMenu.Close;
     try
       QryExcluirAcesso.ParamByName('ID').AsInteger := QryDados.FieldByName('ID').AsInteger;
       QryExcluirAcesso.ExecSQL;
     finally
       QueryMenu.Open;
     end;
     for IC := 0 to FCategoria.Count-1 do
     begin
       for I := 0 to Pred(FrmPrincipal.ActionRibbon.ActionCount) do
       begin
         mAction := TAction(FrmPrincipal.ActionRibbon.Actions[I]);
         if FCategoria[IC] = mAction.Category   then
         begin
           QueryMenu.Append;
           QueryMenu.FieldByName('ID').AsInteger        := QryDados.FieldByName('ID').AsInteger;
           QueryMenu.FieldByName('CATEGORIA').AsString  := FCategoria[IC];
           QueryMenu.FieldByName('MENU').AsString       := UpperCase(mAction.Name);
           QueryMenu.FieldByName('TITULO').AsString     := StringReplace(mAction.Caption, '&','',[]);
           QueryMenu.FieldByName('ACESSO').AsString     := 'NAO';
           QueryMenu.Post;
         end;
       end;
     end;
   finally
     QueryMenu.EnableControls;
   end;
}
end;

procedure TFrmUsuarios.MudarAbaDetalhe;
begin
{  if not QryDados.Active then
    exit;
  if QryDados.Fields.FindField('ID') = nil then
    exit;
  if QryDados.FieldByName('ID').AsInteger < 1 then
    exit;
  ReabrirQryAcesso();
  FMudarAba := True;
  pgControl.ActivePageIndex := 1;
  QryDados.Edit; // colocar em edição
}
end;

procedure TFrmUsuarios.pgControlChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  MudarAbaDetalhe;
  AllowChange := FMudarAba;
end;

procedure TFrmUsuarios.QryDadosNewRecord(DataSet: TDataSet);
begin
//  QryDados.FieldByName('ACESSOVISIVEL').AsString := 'NAO';
end;

procedure TFrmUsuarios.ReabrirQryAcesso;
begin
{  QueryMenu.Close;
  QueryMenu.ParamByName('ID').AsInteger := QryDados.FieldByName('ID').AsInteger;
  QueryMenu.Open;
}
end;

procedure TFrmUsuarios.RzToolButton1Click(Sender: TObject);
begin
  frmUsuariosCadastro.uniQUsuarios.Open;
  frmUsuariosCadastro.uniQUsuarios.Insert;

  frmUsuariosCadastro.ShowModal;

  uniQUsuarios.Close;
  uniQUsuarios.Sql.Text := 'select * from usuarios order by codigo';
  uniQUsuarios.Open;
  uniQUsuarios.First;
end;

procedure TFrmUsuarios.RzToolButton2Click(Sender: TObject);
begin
  frmUsuariosCadastro.uniQUsuarios.Close;
  frmUsuariosCadastro.uniQUsuarios.Sql.Text := 'select * from usuarios where codigo = :pcodigo';
                                            frmUsuariosCadastro.uniQUsuarios.ParambyName('pcodigo').AsString := uniQUsuarios.FieldbyName('codigo').AsString;
  frmUsuariosCadastro.uniQUsuarios.Open;
  frmUsuariosCadastro.uniQUsuarios.Edit;

  frmUsuariosCadastro.ShowModal;

  uniQUsuarios.Close;
  uniQUsuarios.Sql.Text := 'select * from usuarios order by codigo';
  uniQUsuarios.Open;
  uniQUsuarios.First;
end;

procedure TFrmUsuarios.ValidarCampos;
begin
{  gbDados.SetFocus; // forçar foco sair dos campos edits para atualizar campos (problema com TSpeedButton que não tira o foco do objeto. Temos que forçar sair o foco).
  if QryDados.FieldByName('USERNAME').AsString = '' then
  begin
    Informar('Campo "Usuário" é obrigatorio.');
    EditUsuario.SetFocus;
    abort;
  end;
  if QryDados.FieldByName('SENHA').AsString = '' then
  begin
    Informar('Campo "Senha" é obrigatorio.');
    EditSenha.SetFocus;
    abort;
  end;
}
end;

end.
