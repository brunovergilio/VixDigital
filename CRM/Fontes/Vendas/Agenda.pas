unit Agenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, 
  ExtCtrls, ComCtrls, StdCtrls, Calendar, Buttons, DBCtrls, Data.DB, RzButton, 
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, AdvDateTimePicker, 
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, 
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, 
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, 
  FireDAC.DBX.Migrate;

type
  TfmAgenda = class(TForm)
    Label2: TLabel;
    JvDBGrid1: TJvDBGrid;
    Panel1: TPanel;
    btnalterar: TRzToolButton;
    Panel2: TPanel;
    Label1: TLabel;
    RzToolButton1: TRzToolButton;
    Edit1: TEdit;
    AdvDateTimePicker1: TAdvDateTimePicker;
    uniQAgenda: TFDQuery;
    UniDSQAgenda: TDataSource;
    RzToolButton2: TRzToolButton;
    Label3: TLabel;
    Edit2: TEdit;
    RzToolButton4: TRzToolButton;
    UniQUser: TFDQuery;
    UniDSQUser: TDataSource;
    UniQUserCODIGO: TFMTBCDField;
    UniQUserNOME: TStringField;
    UniQUserNIVEL: TStringField;
    UniQUserSENHA: TStringField;
    UniQUserCOBRADOR: TFMTBCDField;
    UniQUserDATA_MODIF: TSQLTimeStampField;
    UniQUserCOBRADOR_EXT: TStringField;
    UniQUserATIVO: TStringField;
    UniQUserGRUPOHORARIO: TFMTBCDField;
    UniQUserAGENDA_OUTROUSUARIO: TStringField;
    UniQUserMATRICULA: TStringField;
    UniQUserAGENDA_PRIORIDADE_ALTA: TStringField;
    UniQUserAGENDA_LIMITA: TStringField;
    UniQUserATIVONET: TStringField;
    UniQUserSENHANET: TStringField;
    UniQUserUSUARIO_GRUPO: TFMTBCDField;
    UniQUserDATA_ACESSO: TSQLTimeStampField;
    UniQUserGRUPO_DISCADOR: TStringField;
    UniQUserCONTAEMAIL: TFMTBCDField;
    UniQUserIDNET: TStringField;
    UniQUserAGENDA_CUMPRIROUTROUSUARIO: TStringField;
    UniQUserPERMITE_ALTERAR_SENHA: TStringField;
    UniQUserCODIGO_EXTERNO: TStringField;
    UniQUserPERMITE_SELECIONAR_CONTAEMAIL: TStringField;
    UniQUserPERMITE_LISTA_COBRANCA: TStringField;
    UniQUserPERMITE_CLIENTE: TStringField;
    UniQUserPERMITE_GERENCIADOR: TStringField;
    UniQUserPERMITE_AGENDA: TStringField;
    UniQUserPERMITE_IMPORTAR_ARQUIVOS: TStringField;
    UniQUserPERMITE_CORRESPONDENCIAS: TStringField;
    UniQUserPERMITE_BACKUP: TStringField;
    UniQUserPERMITE_USUARIO: TStringField;
    UniQUserPERMITE_EMAIL: TStringField;
    UniQUserPERMITE_NOTIFICACOES: TStringField;
    UniQUserANOTACOES: TBlobField;
    UniQUserUSUARIO_NOME_GRUPO: TStringField;
    uniQAgendaCODIGO: TFDAutoIncField;
    uniQAgendaDATA: TDateTimeField;
    uniQAgendaHORA: TSQLTimeStampField;
    uniQAgendaUSUARIO: TFMTBCDField;
    uniQAgendaBLOQUEADO: TStringField;
    uniQAgendaCLIENTE: TFMTBCDField;
    uniQAgendaCUMPRIDO: TStringField;
    uniQAgendaAVISAR: TStringField;
    uniQAgendaTEMPOANTESDEAVISAR: TFMTBCDField;
    uniQAgendaNOME: TStringField;
    uniQAgendaOBS: TBlobField;
    uniQAgendaPRIORIDADE: TStringField;
    uniQAgendaDATA_MODIF: TDateTimeField;
    uniQAgendaDTA_CAD: TDateTimeField;
    uniQAgendaUSR_CAD: TFMTBCDField;
    uniQAgendaUSR_CUMPRIDO: TFMTBCDField;
    uniQAgendaDTA_CUMPRIDO: TStringField;
    uniQAgendaREGISTRO: TIntegerField;
    uniQAgendaEVENTO: TStringField;
    uniQAgendaCPF_CNPJ: TStringField;
    RzToolButton3: TRzToolButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnalterarClick(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAgenda: TfmAgenda;

implementation

{$R *.DFM}

uses
  uDataModule, uagendacadastro, umenu, uFuncoes;

procedure TfmAgenda.btnalterarClick(Sender: TObject);
begin
  if uniQAgenda.IsEmpty then
    Abort;

  frmagendacadastro.uniQAgenda.Close;
  frmagendacadastro.uniQAgenda.Sql.Text := 'select * from agenda where registro = :pregistro';
  frmagendacadastro.uniQAgenda.ParambyName('pregistro').AsString := uniQAgenda.fieldbyname('registro').asstring;
  frmagendacadastro.uniQAgenda.Open;
  frmagendacadastro.uniQAgenda.Edit;

  frmagendacadastro.ShowModal;
  fmagenda.FormActivate(Sender);
  uniQAgenda.refresh;
end;

procedure TfmAgenda.Edit2Exit(Sender: TObject);
begin
  if Length(Edit2.Text) = 11 then
    Edit2.Text := FormataCPF(Edit2.Text)
  else if Length(Edit2.Text) = 13 then
    Edit2.Text := FormataCNPJ(Edit2.Text);
end;

procedure TfmAgenda.FormActivate(Sender: TObject);
begin
  with uniQAgenda do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                      ');
    SQL.Add('  a.*,                      ');
    SQL.Add('  c.CPF_CNPJ                ');
    SQL.Add('FROM                        ');
    SQL.Add('  agenda a                  ');
    SQL.Add('  INNER JOIN clientes c     ');
    SQL.Add('    ON c.CODIGO = a.CLIENTE ');
    SQL.Add('WHERE 1 = 1                 ');
    if frmMenu.USUARIOLOGADO_NIVEL <> 'M' then
    begin
      SQL.Add('AND a.usuario = :CodUsuario ');
      ParamByName('CodUsuario').AsInteger := frmMenu.USUARIOLOGADO_CODIGO.ToInteger;
    end;
    SQL.Add('ORDER BY a.codigo DESC ');
    Open;
  end;
  uniQAgenda.First;
end;

procedure TfmAgenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  uniquser.Close;
end;

procedure TfmAgenda.FormShow(Sender: TObject);
begin
  AdvDateTimePicker1.Date := Now;
end;

procedure TfmAgenda.RzToolButton1Click(Sender: TObject);
begin
  with uniQAgenda do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                      ');
    SQL.Add('  a.*,                      ');
    SQL.Add('  c.CPF_CNPJ                ');
    SQL.Add('FROM                        ');
    SQL.Add('  agenda a                  ');
    SQL.Add('  INNER JOIN clientes c     ');
    SQL.Add('    ON c.CODIGO = a.CLIENTE ');
    SQL.Add('WHERE 1 = 1                 ');
    if frmMenu.USUARIOLOGADO_NIVEL <> 'M' then
    begin
      SQL.Add('AND a.usuario = :CodUsuario ');
      ParamByName('CodUsuario').AsInteger := frmMenu.USUARIOLOGADO_CODIGO.ToInteger;
    end;
    if Edit1.Text <> '' then
      SQL.Add('AND UPPER (a.nome) like (''%' + EDIT1.TEXT + '%'')');
    SQL.Add('ORDER BY a.codigo DESC ');
    Open;
  end;
  uniQAgenda.First;
end;

procedure TfmAgenda.RzToolButton2Click(Sender: TObject);
begin
  with uniQAgenda do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                      ');
    SQL.Add('  a.*,                      ');
    SQL.Add('  c.CPF_CNPJ                ');
    SQL.Add('FROM                        ');
    SQL.Add('  agenda a                  ');
    SQL.Add('  INNER JOIN clientes c     ');
    SQL.Add('    ON c.CODIGO = a.CLIENTE ');
    SQL.Add('WHERE 1 = 1                 ');
    if frmMenu.USUARIOLOGADO_NIVEL <> 'M' then
    begin
      SQL.Add('AND a.usuario = :CodUsuario ');
      ParamByName('CodUsuario').AsInteger := frmMenu.USUARIOLOGADO_CODIGO.ToInteger;
    end;
    if Edit2.Text <> '' then
      SQL.Add('AND UPPER (c.CPF_CNPJ) like (''%' + EDIT2.TEXT + '%'')');
    SQL.Add('ORDER BY a.codigo DESC ');
    Open;
  end;

//  uniQAgenda.Close;
//  uniQAgenda.Sql.Text := 'select * from agenda where upper(CPF_CNPJ) like (''%' + EDIT2.TEXT + '%'') order by nome';
//  uniQAgenda.Open;
  uniQAgenda.First;
end;

procedure TfmAgenda.RzToolButton3Click(Sender: TObject);
begin
  if uniQAgenda.IsEmpty then
  Abort;

  if MessageDlg('Deseja realmente excluir este agendamento ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    frmagendacadastro.uniqagenda.Close;
    frmagendacadastro.uniqagenda.SQL.Clear;
    frmagendacadastro.uniqagenda.SQL.Add('DELETE                 ');
    frmagendacadastro.uniqagenda.SQL.Add('FROM                   ');
    frmagendacadastro.uniqagenda.SQL.Add('  agenda               ');
    frmagendacadastro.uniqagenda.SQL.Add('WHERE codigo = :codigo ');
    frmagendacadastro.uniqagenda.ParamByName('codigo').AsInteger := uniQAgendaCODIGO.AsInteger;
    frmagendacadastro.uniqagenda.ExecSQL;
    RzToolButton1.Click;
  end;
end;

procedure TfmAgenda.RzToolButton4Click(Sender: TObject);
begin
  with uniQAgenda do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                      ');
    SQL.Add('  a.*,                      ');
    SQL.Add('  c.CPF_CNPJ                ');
    SQL.Add('FROM                        ');
    SQL.Add('  agenda a                  ');
    SQL.Add('  INNER JOIN clientes c     ');
    SQL.Add('    ON c.CODIGO = a.CLIENTE ');
    SQL.Add('WHERE 1 = 1                 ');
    if frmMenu.USUARIOLOGADO_NIVEL <> 'M' then
    begin
      SQL.Add('AND a.usuario = :CodUsuario ');
      ParamByName('CodUsuario').AsInteger := frmMenu.USUARIOLOGADO_CODIGO.ToInteger;
    end;
    SQL.Add('  AND CAST(a.DATA AS DATE) = ''' + FormatDateTime('yyyy-mm-dd',AdvDateTimePicker1.Date) + '''');
    SQL.Add('ORDER BY a.codigo DESC ');
    Open;
  end;

//  uniQAgenda.Close;
//  uniQAgenda.Sql.Text := 'select * from agenda where data = (' + DateToStr(AdvDateTimePicker1.Date) + ') order by nome';
//  uniQAgenda.Open;
  uniQAgenda.First;
end;

end.
