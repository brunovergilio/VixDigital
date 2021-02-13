unit uagendacadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, 
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.TabNotBk, AdvEdit, advlued, 
  DBAdvLe, Vcl.DBCtrls, RzButton, AdvCombo, Lucombo, dblucomb, Data.DB, 
  ACBrBase, ACBrEnterTab, JvComponentBase, JvEnterTab, AdvOfficeTabSet, 
  AdvOfficeTabSetStylers, RzTabs, AdvOfficeButtons, DBAdvOfficeButtons, 
  AdvDBComboBox, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, 
  AdvDateTimePicker, AdvDBDateTimePicker, cxGraphics, cxControls, 
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxCustomListBox, 
  cxCheckListBox, cxDBCheckListBox, AdvDBLookupComboBox, FireDAC.Stan.Intf, 
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, 
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, 
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.DBX.Migrate, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  Tfrmagendacadastro = class(TForm)
    Panel3: TPanel;
    Panel4: TPanel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    DBAdvLUEdit2: TDBAdvLUEdit;
    unigetid: TFDQuery;
    uniqagenda: TFDQuery;
    AdvDBDateTimePicker1: TAdvDBDateTimePicker;
    AdvDBDateTimePicker2: TAdvDBDateTimePicker;
    DBAdvLUEdit1: TDBAdvLUEdit;
    DBAdvLUEdit3: TDBAdvLUEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    udsqagenda: TDataSource;
    DBAdvLUEdit5: TDBAdvLUEdit;
    DBEditRegistro: TDBAdvLUEdit;
    AdvDBDateTimePicker3: TAdvDBDateTimePicker;
    uniqagendaCODIGO: TFDAutoIncField;
    uniqagendaDATA: TDateTimeField;
    uniqagendaHORA: TSQLTimeStampField;
    uniqagendaUSUARIO: TFMTBCDField;
    uniqagendaBLOQUEADO: TStringField;
    uniqagendaCLIENTE: TFMTBCDField;
    uniqagendaCUMPRIDO: TStringField;
    uniqagendaAVISAR: TStringField;
    uniqagendaTEMPOANTESDEAVISAR: TFMTBCDField;
    uniqagendaNOME: TStringField;
    uniqagendaOBS: TBlobField;
    uniqagendaPRIORIDADE: TStringField;
    uniqagendaDATA_MODIF: TDateTimeField;
    uniqagendaDTA_CAD: TDateTimeField;
    uniqagendaUSR_CAD: TFMTBCDField;
    uniqagendaUSR_CUMPRIDO: TFMTBCDField;
    uniqagendaDTA_CUMPRIDO: TStringField;
    uniqagendaREGISTRO: TIntegerField;
    uniqagendaEVENTO: TStringField;
    Label1: TLabel;
    QUser: TFDQuery;
    edtUsuario: TcxLookupComboBox;
    dsUser: TDataSource;
    QUserCODIGO: TFMTBCDField;
    QUserNOME: TStringField;
    QUserNIVEL: TStringField;
    QUserSENHA: TStringField;
    QUserCOBRADOR: TFMTBCDField;
    QUserDATA_MODIF: TSQLTimeStampField;
    QUserCOBRADOR_EXT: TStringField;
    QUserATIVO: TStringField;
    QUserGRUPOHORARIO: TFMTBCDField;
    QUserAGENDA_OUTROUSUARIO: TStringField;
    QUserMATRICULA: TStringField;
    QUserAGENDA_PRIORIDADE_ALTA: TStringField;
    QUserAGENDA_LIMITA: TStringField;
    QUserATIVONET: TStringField;
    QUserSENHANET: TStringField;
    QUserUSUARIO_GRUPO: TFMTBCDField;
    QUserDATA_ACESSO: TSQLTimeStampField;
    QUserGRUPO_DISCADOR: TStringField;
    QUserCONTAEMAIL: TFMTBCDField;
    QUserIDNET: TStringField;
    QUserAGENDA_CUMPRIROUTROUSUARIO: TStringField;
    QUserPERMITE_ALTERAR_SENHA: TStringField;
    QUserCODIGO_EXTERNO: TStringField;
    QUserPERMITE_SELECIONAR_CONTAEMAIL: TStringField;
    QUserPERMITE_LISTA_COBRANCA: TStringField;
    QUserPERMITE_CLIENTE: TStringField;
    QUserPERMITE_GERENCIADOR: TStringField;
    QUserPERMITE_AGENDA: TStringField;
    QUserPERMITE_IMPORTAR_ARQUIVOS: TStringField;
    QUserPERMITE_CORRESPONDENCIAS: TStringField;
    QUserPERMITE_BACKUP: TStringField;
    QUserPERMITE_USUARIO: TStringField;
    QUserPERMITE_EMAIL: TStringField;
    QUserPERMITE_NOTIFICACOES: TStringField;
    QUserANOTACOES: TBlobField;
    QUserUSUARIO_NOME_GRUPO: TStringField;
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure AdvDBComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBAdvLUEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    ALTERAINSERE: STRING;
  end;

var
  frmagendacadastro: Tfrmagendacadastro;

implementation

{$R *.dfm}

uses
  uDataModule, uagenda, FClientes, ueventosoperador, uCliente, umenu, uFuncoes;

procedure Tfrmagendacadastro.AdvDBComboBox2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
KEY := 0;
end;

procedure Tfrmagendacadastro.DBAdvLUEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F2 then
    FrmClientes.ShowModal;
  if FrmClientes.vOK then
  begin
    uniqagendaCLIENTE.AsInteger := FrmClientes.uniQClientesCODIGO.AsInteger;
    uniqagendaNOME.AsString := FrmClientes.uniQClientesNOME.AsString;
  end;
end;

procedure Tfrmagendacadastro.FormActivate(Sender: TObject);
begin
  DBAdvLUEdit2.setfocus;
  uniqagenda.edit;
  //uniqagendaHORA.AsDateTime := Now;
  //uniqagendaDATA.AsDateTime := Date;
  uniqagenda.post;
end;

procedure Tfrmagendacadastro.FormShow(Sender: TObject);
begin
  with QUser do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT          ');
    SQL.Add('  u.*           ');
    SQL.Add('FROM            ');
    SQL.Add('  usuarios u    ');
    //SQL.Add('order by u.nome ');
//    SQL.Add('WHERE u.CODIGO = :CodUser ');
//    if uniqagendaUSUARIO.AsInteger > 0 then
//      ParamByName('CodUser').AsInteger := uniqagendaUSUARIO.AsInteger
//    else
//      ParamByName('CodUser').AsInteger := frmMenu.USUARIOLOGADO_CODIGO.ToInteger;
    Open;
  end;
  edtUsuario.Text := '';
  if uniqagendaUSUARIO.AsInteger > 0 then
    QUser.Locate('codigo',uniqagendaUSUARIO.AsInteger,[])
  else
    QUser.Locate('codigo',frmMenu.USUARIOLOGADO_CODIGO,[]);

  edtUsuario.Text := QUser.FieldByName('nome').AsString;

  if frmMenu.USUARIOLOGADO_NIVEL = 'M' then
  begin
    DBAdvLUEdit1.Enabled := True;
    //DBAdvLUEdit5.Enabled := True;
    edtUsuario.Enabled := True;
    Label1.Enabled := True;
  end
  else
  begin
    DBAdvLUEdit1.Enabled := False;
    //DBAdvLUEdit5.Enabled := False;
    edtUsuario.Enabled := False;
    Label1.Enabled := False;
  end;
end;

procedure Tfrmagendacadastro.RzToolButton1Click(Sender: TObject);
begin
//try
  uniqagenda.edit;
  uniqagendaUSUARIO.AsInteger := uniqagendaUSR_CAD.AsInteger;
  frmMenu.TrayIcon1.BalloonTitle := 'Agendamento';
  frmMenu.TrayIcon1.BalloonHint := uniqagendaNOME.AsString + #13 +
                                   DBAdvLUEdit2.Text + #13 +
                                   FormatDateTime('dd/mm/yyyy',uniqagendaDATA.AsDateTime);
  //TrayIcon1.Visible := True;
  uniqagendaDATA.AsDateTime := AdvDBDateTimePicker1.Date;
  uniqagendaUSUARIO.AsInteger := QUserCODIGO.AsInteger;
  uniqagendaUSR_CAD.AsInteger := QUserCODIGO.AsInteger;
  uniqagenda.post;

//  unigetid.close;
  uniqagenda.close;

  ALTERAINSERE := '';

  //insere o evento
  frmclientes.UniQEventosCobranca.Open;
  frmclientes.UniQEventosCobranca.Insert;
  frmclientes.uniQClientesOperacoes.Open;
  frmeventosoperador.DBAdvLUEdit1.Text := datetostr(now) + ' ' + timetostr(now);
  frmeventosoperador.DBAdvLUEdit2.Text := FRMMenu.USUARIOLOGADO_CODIGO;
  frmeventosoperador.DBAdvLUEdit14.Text := frmclientes.uniQClientesOperacoes.fieldbyname('Nroperacao').asstring;
  frmeventosoperador.DBAdvLUEdit4.Text := frmclientescadastro.Edt_CPF.Text;
  frmeventosoperador.dbmemo1.Lines.Add('Agendamento: ' + Datetostr(AdvDBDateTimePicker1.Date));
  //frmeventosoperador.dbRadiogroup1.itemindex := 0;
  frmclientes.UniQEventosCobranca.fieldbyname('Lista').asstring := 'Agendamento: ' + Datetostr(AdvDBDateTimePicker1.Date);

  if frmeventosoperador.DBAdvLUEdit14.Text = '' then frmeventosoperador.DBAdvLUEdit14.Text := '0';

  frmeventosoperador.DBEdtRegistro.Text := IntToStr(GetID('codigo','eventoscobranca')); //unigetid.FieldByName('Sequences').AsString;

  try
    frmclientes.UniQEventosCobranca.eDIT;
    frmeventosoperador.DBAdvLUEdCod_evento.Text := frmeventosoperador.DBAdvLUEdit3.Text;
    if frmeventosoperador.DBAdvLUEdit3.text = '' then
      frmeventosoperador.DBAdvLUEdCod_evento.Text := '42';
    frmclientes.UniQEventosCobranca.post;
  except showmessage('Erro ao gravar. Ln 126'); end;
  //fim insere o evento

//except Application.MessageBox('Ocorreu um erro. ln 127','Atenção',MB_ICONHAND + MB_OK + MB_ICONQUESTION); end;

  frmDataModule.UniConnection1.Commit;
  FrmClientes.uniQClientesAgenda.Close;
  FrmClientes.uniQClientesAgenda.Open;


  frmMenu.TrayIcon1.ShowBalloonHint;
  Close;
end;

procedure Tfrmagendacadastro.RzToolButton2Click(Sender: TObject);
begin
//  uniqagenda.Delete;
//  uniqagenda.cancel;
  uniqagenda.close;
  //frmDataModule.UniConnection1.Rollback;
  Close;
end;

end.
