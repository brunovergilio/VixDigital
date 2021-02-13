unit FAgencias;

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
  System.Actions, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, AdvGlowButton, 
  JvExDBGrids, JvDBGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, 
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, 
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, 
  FireDAC.Comp.Client, FireDAC.DBX.Migrate;

type
  TfrmAgencias = class(TForm)
    JvDBGrid1: TJvDBGrid;
    Panel1: TPanel;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    uniScript: TFDQuery;
    UniDataSource1: TDataSource;
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
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
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
  frmAgencias: TfrmAgencias;

implementation

{$R *.dfm}

uses
  uDataModule, uAgenciasCadastro;

procedure TfrmAgencias.FormActivate(Sender: TObject);
begin
  uniscript.Close;
  uniscript.Sql.Text := 'select * from agencias';
  uniscript.Open;
  uniscript.First;
end;

procedure TfrmAgencias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  Action := CaFree;
//  FrmUsuarios := Nil;
end;

procedure TfrmAgencias.FormCreate(Sender: TObject);
begin
  //FrmFrameBotoes1.DataSource := dsDados;
  FTreeView_Listar      := TTreeView.Create(Self);
  FCategoria            := TStringList.Create;
  FIteMMenu             := TStringList.Create;
  FCategoria.Duplicates := dupIgnore;
  FIteMMenu.Duplicates  := dupIgnore;
  //QryDados.Open();

end;

procedure TfrmAgencias.FrmFrameBotoes1SpbAdicionarClick(Sender: TObject);
begin
{  if  (QryDados.Active = False) then
  begin
    Informar('Tabela n�o est� ativa.');
  end;
  ChecarModoEdicao();
  pgControl.ActivePageIndex := 1;
  FMudarAba := True;
  EditUsuario.SetFocus;
  QryDados.Append;
}
end;

procedure TfrmAgencias.FrmFrameBotoes1SpbCancelarClick(Sender: TObject);
begin
{  QueryMenu.Cancel;
  FrmFrameBotoes1.SpbCancelarClick(Sender);
  pgControl.ActivePageIndex := 0;
}
end;

procedure TfrmAgencias.FrmFrameBotoes1SpbEditarClick(Sender: TObject);
begin
//  FrmFrameBotoes1.SpbEditarClick(Sender);
end;

procedure TfrmAgencias.FrmFrameBotoes1SpbExcluirClick(Sender: TObject);
begin
//  FrmFrameBotoes1.SpbExcluirClick(Sender);
end;

procedure TfrmAgencias.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then frmAgencias.AdvGlowButton4Click(Sender);

end;

function TfrmAgencias.EncontrarNo(aNome: string): TTreeNode;
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

procedure TfrmAgencias.AdvGlowButton2Click(Sender: TObject);
begin
try
  uniscript.Edit;
  uniscript.Cancel;
except end;
Close;
end;

procedure TfrmAgencias.AdvGlowButton3Click(Sender: TObject);
begin
  frmAgenciasCadastro.uniscript.Open;
  frmAgenciasCadastro.uniscript.Insert;

  frmAgenciasCadastro.ShowModal;

  uniscript.Close;
  uniscript.Sql.Text := 'select * from agencias';
  uniscript.Open;
  uniscript.First;
end;

procedure TfrmAgencias.AdvGlowButton4Click(Sender: TObject);
begin
//zUsuarios.locate('NOME',EDIT1.Text,[lopartialkey,loCaseInsensitive]);
  uniscript.Close;
  uniscript.Sql.Text := 'select * from agencias where upper(nome) like (''%' + EDIT1.TEXT + '%'')';
  uniscript.Open;
  uniscript.First;
end;

procedure TfrmAgencias.AdvGlowButton5Click(Sender: TObject);
begin
  frmAgenciasCadastro.uniscript.Close;
  frmAgenciasCadastro.uniscript.Sql.Text := 'select * from agencias where prefixo = :pprefixo and nome = :pnome';
                                            frmAgenciasCadastro.uniscript.ParambyName('pprefixo').AsString := uniscript.FieldbyName('prefixo').AsString;
                                            frmAgenciasCadastro.uniscript.ParambyName('pnome').AsString := uniscript.FieldbyName('nome').AsString;
  frmAgenciasCadastro.uniscript.Open;
  frmAgenciasCadastro.uniscript.Edit;

  frmAgenciasCadastro.ShowModal;

  uniscript.Close;
  uniscript.Sql.Text := 'select * from agencias';
  uniscript.Open;
  uniscript.First;
end;

procedure TfrmAgencias.btnBloquearClick(Sender: TObject);
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

procedure TfrmAgencias.btnLiberarClick(Sender: TObject);
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

procedure TfrmAgencias.btnRecriarClick(Sender: TObject);
begin
{  if Pergunta('Esse processo ir� recriar todos os Menus para este usu�rio... Continuar?') = false then
    exit;
  ListarMenus();
}
end;

procedure TfrmAgencias.ChecarModoEdicao;
begin
{  if  (QryDados.State in [dsedit,dsinsert]) then
  begin
    Informar('H� um registro em edi��o no momento.');
    exit;
  end;
}
end;

procedure TfrmAgencias.cxGridDBDblClick(Sender: TObject);
begin
  MudarAbaDetalhe();
end;

procedure TfrmAgencias.dsDadosStateChange(Sender: TObject);
begin
{  if (FrmFrameBotoes1.DataSource.State in [dsInsert,dsEdit]) then
    FrmFrameBotoes1.AtivaEdicao
  else
    FrmFrameBotoes1.DesativaEdicao;
}
end;

procedure TfrmAgencias.FrmFrameBotoes1SpbProcurarClick(Sender: TObject);
begin
//  QryDados.Locate('ID',DlgProcurar.Configurar.Resultado.ToInteger,[]);

end;

procedure TfrmAgencias.FrmFrameBotoes1SpbSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAgencias.FrmFrameBotoes1SpbSalvarClick(Sender: TObject);
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

procedure TfrmAgencias.JvDBGrid1DblClick(Sender: TObject);
begin
frmAgencias.AdvGlowButton5Click(Sender);
end;

procedure TfrmAgencias.ListarMenus;
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

procedure TfrmAgencias.MudarAbaDetalhe;
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
  QryDados.Edit; // colocar em edi��o
}
end;

procedure TfrmAgencias.pgControlChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  MudarAbaDetalhe;
  AllowChange := FMudarAba;
end;

procedure TfrmAgencias.QryDadosNewRecord(DataSet: TDataSet);
begin
//  QryDados.FieldByName('ACESSOVISIVEL').AsString := 'NAO';
end;

procedure TfrmAgencias.ReabrirQryAcesso;
begin
{  QueryMenu.Close;
  QueryMenu.ParamByName('ID').AsInteger := QryDados.FieldByName('ID').AsInteger;
  QueryMenu.Open;
}
end;

procedure TfrmAgencias.ValidarCampos;
begin
{  gbDados.SetFocus; // for�ar foco sair dos campos edits para atualizar campos (problema com TSpeedButton que n�o tira o foco do objeto. Temos que for�ar sair o foco).
  if QryDados.FieldByName('USERNAME').AsString = '' then
  begin
    Informar('Campo "Usu�rio" � obrigatorio.');
    EditUsuario.SetFocus;
    abort;
  end;
  if QryDados.FieldByName('SENHA').AsString = '' then
  begin
    Informar('Campo "Senha" � obrigatorio.');
    EditSenha.SetFocus;
    abort;
  end;
}
end;

end.