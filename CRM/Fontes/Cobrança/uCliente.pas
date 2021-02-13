unit uCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Vcl.AppEvnts, Data.DB, System.Actions, Vcl.ActnList,
  Vcl.Menus, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.Mask, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, RxPlacemnt, RxToolEdit, RxDBCtrl, RxLookup, AdvGlowButton,
  ShellApi, math, RzButton, JvExDBGrids, JvDBGrid, AdvUtil, AdvObj, BaseGrid,
  AdvGrid, DBAdvGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.DBX.Migrate, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid;

type
  TfrmClientesCadastro = class(TForm)
    Panel_Cliente: TPanel;
    Panel_Eventos_Cobranca: TPanel;
    Lb_Eventos_Cobranca: TLabel;
    Panel4: TPanel;
    Panel7: TPanel;
    Panel_Telefones: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edt_Fone: TDBEdit;
    Edt_FaxCel: TDBEdit;
    Edt_Fone_1: TDBEdit;
    Edt_FaxCel_1: TDBEdit;
    Edt_Contato: TDBEdit;
    Edt_Contato_1: TDBEdit;
    Panel_Cliente_Endereco: TPanel;
    Panel_Cliente_Nome: TPanel;
    Lb_Nome: TLabel;
    Lb_Cpf: TLabel;
    Btn_ProximoCliente: TSpeedButton;
    Label3: TLabel;
    Edt_Nome: TDBEdit;
    Edt_CPF: TDBEdit;
    Edt_NRIDENTIDADE: TDBEdit;
    Panel_Endereco: TPanel;
    PageControl_Endereco: TPageControl;
    Tab_End1: TTabSheet;
    Label15: TLabel;
    Label16: TLabel;
    Label21: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label1: TLabel;
    Edt_PONTO_REF1: TDBEdit;
    Edt_SETOR: TDBEdit;
    Edt_ENDERECO: TDBEdit;
    Edt_CIDADE: TDBEdit;
    Edt_UF: TDBEdit;
    Edt_NUMERO: TDBEdit;
    Edt_CEP: TDBEdit;
    CK_Pref_End1: TCheckBox;
    Edt_email1: TDBEdit;
    Tab_End2: TTabSheet;
    TabCoobrigados: TTabSheet;
    DBGrid1: TDBGrid;
    Tab_Agendamentos: TTabSheet;
    DBGrid_Eventos_Cliente: TDBGrid;
    Tab_Observacao: TTabSheet;
    DbObservacao: TDBMemo;
    Tab_Script: TTabSheet;
    Btn_IncluirScript: TSpeedButton;
    DBGrid_ScriptCobranca: TDBGrid;
    tbVeiculos: TTabSheet;
    Panel_Divida: TPanel;
    LB_Dividas: TLabel;
    Panel_Operacoes: TPanel;
    DBGridOperacoes: TDBGrid;
    Panel_Parcelas: TPanel;
    LB_Parcelas: TLabel;
    DBGridParcelas: TDBGrid;
    Popup_Recibo: TPopupMenu;
    CancelarRecibo1: TMenuItem;
    N1: TMenuItem;
    ReciboTradicional1: TMenuItem;
    ReciboTAComplementar1: TMenuItem;
    ActionList: TActionList;
    Buscar_Novo_Cliente: TAction;
    Cliente_Anterior: TAction;
    Popup_Ficha_Operacao: TPopupMenu;
    FichadaOperao1: TMenuItem;
    CorrespdaOperao1: TMenuItem;
    FormStorage: TFormStorage;
    PopUp_Confg_Grade: TPopupMenu;
    Alterar1: TMenuItem;
    SalvarConfiguraesAtuais1: TMenuItem;
    ResetarConfiguraes1: TMenuItem;
    Pop_Endereco: TPopupMenu;
    End_2: TMenuItem;
    End_1: TMenuItem;
    CopiarpreadeTransferncia1: TMenuItem;
    mnuCopiarCPF_CGC_SemMasca: TMenuItem;
    mnuCopiarCPF_CGC_ComMasca: TMenuItem;
    Popup_ExcluirAgenda: TPopupMenu;
    RemoverAgenda: TMenuItem;
    PopupRetornoOperacao: TPopupMenu;
    GerarRetornoItau1: TMenuItem;
    HSBC_EnviarSolicitaoSaldoLIQUIDAO1: TMenuItem;
    HSBC_EnviarSolicitaoSaldoPARCELAS1: TMenuItem;
    HSBC_N2: TMenuItem;
    HSBC_CancelarSolicitaodeSaldo1: TMenuItem;
    HSBC_ReenviarArquivodeAcordo1: TMenuItem;
    AMCelularClassificar: TMenuItem;
    N2: TMenuItem;
    mnuCancelarAcordo: TMenuItem;
    PopupOrdem_Eventos: TPopupMenu;
    Pop_Notificacao: TPopupMenu;
    EnviarNotificaodeCessoporEmail1: TMenuItem;
    SalvarNotificaodeCesso1: TMenuItem;
    EnviarCartadeConfirmaodeCesso1: TMenuItem;
    SalvarCartadeConfirmaodeCesso1: TMenuItem;
    MensagemInternaAtivos1: TMenuItem;
    Pop_Ativos_Telefones: TPopupMenu;
    Excluirfone1: TMenuItem;
    ExcluirFone2: TMenuItem;
    ExcluirFone3: TMenuItem;
    ExcluirFone4: TMenuItem;
    ExcluirFone5: TMenuItem;
    ExcluirFone6: TMenuItem;
    Pop_Discador: TPopupMenu;
    Discar1: TMenuItem;
    AdicionarNumeroExcluido1: TMenuItem;
    VerNumeroExcluido1: TMenuItem;
    SpeedButton1: TSpeedButton;
    UniQEventosCobranca: TFDQuery;
    UniQCredores: TFDQuery;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    lblretomada: TLabel;
    lblemser: TLabel;
    lblemaberto: TLabel;
    Panel3: TPanel;
    Panel1: TPanel;
    Label5: TLabel;
    UniQConfereSA: TFDQuery;
    DBGridEventos: TDBGrid;
    Btn_LimpaClassificacao: TSpeedButton;
    Lb_MCI: TLabel;
    Lb_Classificacao: TLabel;
    LB_Nascimento: TLabel;
    Lookup_COD_CLASSIFICACAO: TRxDBLookupCombo;
    Edt_MCI: TDBEdit;
    DBEdit1: TDBEdit;
    CheckBox1: TCheckBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    RzToolButton7: TRzToolButton;
    RzToolButton1: TRzToolButton;
    RzToolButton6: TRzToolButton;
    RzToolButton4: TRzToolButton;
    UniQLock: TFDQuery;
    lblrenegociados: TLabel;
    UniQEventosCobrancaCLIENTE: TFloatField;
    UniQEventosCobrancaNROPERACAO: TStringField;
    UniQEventosCobrancaREMESSA: TFloatField;
    UniQEventosCobrancaDATAHORA: TSQLTimeStampField;
    UniQEventosCobrancaUSUARIO: TFloatField;
    UniQEventosCobrancaHISTORICO: TStringField;
    UniQEventosCobrancaCOD_EVENTO: TFloatField;
    UniQEventosCobrancaDATA_MODIF: TSQLTimeStampField;
    UniQEventosCobrancaENVIADOBB: TStringField;
    UniQEventosCobrancaNRPROCESSO: TStringField;
    UniQEventosCobrancaNOMECONTATO: TStringField;
    UniQEventosCobrancaHISTORICO1: TStringField;
    UniQEventosCobrancaNR_PROPOSTA: TFloatField;
    UniQEventosCobrancaCONTA: TStringField;
    UniQEventosCobrancaLISTA: TStringField;
    UniQEventosCobrancaSALDO: TFloatField;
    UniQEventosCobrancaOPER_COD_CLASSIFICACAO: TFloatField;
    UniQEventosCobrancaTELEFONES_STATUS: TFloatField;
    UniQEventosCobrancaSUCESSO: TStringField;
    UniQEventosCobrancaREGISTRO: TFloatField;
    Panel2: TPanel;
    Label26: TLabel;
    Panel_parcelas_resumo: TPanel;
    DBGrid3: TDBGrid;
    Label27: TLabel;
    uniDSParcelasResumo: TDataSource;
    uniQParcelasResumo: TFDQuery;
    uniQParcelasResumoCLIENTE: TFloatField;
    uniQParcelasResumoNROPERACAO: TStringField;
    uniQParcelasResumoREMESSA: TStringField;
    uniQParcelasResumoDATAVENCTO: TStringField;
    uniQParcelasResumoAUT_: TFloatField;
    uniQParcelasResumoNRLINHAC: TFloatField;
    uniQParcelasResumoNRLINHAR: TFloatField;
    uniQParcelasResumoNRREM: TFloatField;
    uniQParcelasResumoDATAREFERENCIA: TStringField;
    uniQParcelasResumoSTATUS: TStringField;
    uniQParcelasResumoVALORPREVISTO: TFloatField;
    uniQParcelasResumoVALORREALIZADO: TFloatField;
    uniQParcelasResumoVALORJUROS: TFloatField;
    uniQParcelasResumoVALORMULTA: TFloatField;
    uniQParcelasResumoVALORDESCONTO: TFloatField;
    uniQParcelasResumoPAGOCOB: TStringField;
    uniQParcelasResumoVALORPAGTOCOB: TFloatField;
    uniQParcelasResumoRECBANCO: TStringField;
    uniQParcelasResumoCOMIEMP: TFloatField;
    uniQParcelasResumoAGENCIA: TStringField;
    uniQParcelasResumoNUMERO: TFloatField;
    uniQParcelasResumoNUMERONOTA: TFloatField;
    uniQParcelasResumoRESUMO: TFloatField;
    uniQParcelasResumoCOBRADOR: TFloatField;
    uniQParcelasResumoBOL_DATA_EMISSAO: TStringField;
    uniQParcelasResumoBOL_DATA_ENVIO_REM: TStringField;
    uniQParcelasResumoBOL_REMESSA_ENVIO: TFloatField;
    uniQParcelasResumoBOL_NUMERO: TStringField;
    uniQParcelasResumoBOL_NOSSO_NUMERO: TStringField;
    uniQParcelasResumoBOL_SITUACAO: TStringField;
    uniQParcelasResumoBOL_DESC_SITUACAO: TStringField;
    uniQParcelasResumoBOL_DATA_CANCELAMENTO: TStringField;
    uniQParcelasResumoBOL_DATA_ATU: TStringField;
    uniQParcelasResumoDATARECEBIMENTO: TStringField;
    uniQParcelasResumoVALORATRAZO: TFloatField;
    uniQParcelasResumoVALORHONORARIO: TFloatField;
    uniQParcelasResumoVALORPROTESTO: TFloatField;
    uniQParcelasResumoBOL_NR_DOCUMENTO: TStringField;
    uniQParcelasResumoVALORORIGINAL: TFloatField;
    uniQParcelasResumoOPERACAONOVA: TStringField;
    uniQParcelasResumoDATA_MODIF: TStringField;
    uniQParcelasResumoDATAFIMTERCEIRIZACAO: TDateTimeField;
    uniQParcelasResumoUSUARIO_REC: TFloatField;
    uniQParcelasResumoDATARESUMO: TStringField;
    uniQParcelasResumoREC_DATA_EMISSAO: TStringField;
    uniQParcelasResumoBOL_LINHA_DIGITAVEL: TStringField;
    uniQParcelasResumoFASE: TFloatField;
    uniQParcelasResumoATUALIZADOATE: TDateTimeField;
    uniQParcelasResumoUSUARIO_REPASSE: TFloatField;
    uniQParcelasResumoDATA_REPASSE: TStringField;
    uniQParcelasResumoBOL_DATA_RETORNO_REM: TStringField;
    uniQParcelasResumoBOL_CODBARRAS: TStringField;
    uniQParcelasResumoNRREM50: TFloatField;
    uniQParcelasResumoNRREM40: TFloatField;
    uniQParcelasResumoNRREM97: TFloatField;
    uniQParcelasResumoUSER_ID_97: TStringField;
    uniQParcelasResumoCOMISSAOBRUTA: TFloatField;
    uniQParcelasResumoREDUTOR: TFloatField;
    uniQParcelasResumoCOMISSAOLIQUIDA: TFloatField;
    uniQParcelasResumoUFATUACAO: TStringField;
    uniQParcelasResumoTIPOPAGAMENTO: TStringField;
    uniQParcelasResumoPAGOATE30: TStringField;
    uniQParcelasResumoPERFORMANCE: TFloatField;
    uniQParcelasResumoLOCATION: TStringField;
    uniQParcelasResumoTIPOREMUNERACAO: TStringField;
    uniQParcelasResumoNRREM41: TFloatField;
    uniQParcelasResumoVALORCORRECAO: TFloatField;
    uniQParcelasResumoCHQ_BANCO: TStringField;
    uniQParcelasResumoCHQ_AGENCIA: TStringField;
    uniQParcelasResumoCHQ_CONTA: TStringField;
    uniQParcelasResumoCHQ_NUMERO: TStringField;
    uniQParcelasResumoNRREM51: TFloatField;
    uniQParcelasResumoNRREM52: TFloatField;
    uniQParcelasResumoBOL_CONVENIO: TStringField;
    uniQParcelasResumoBOL_DATA_ENVIO: TStringField;
    uniQParcelasResumoVALOR_TAXA_ATUALIZACAO: TFloatField;
    uniQParcelasResumoBOL_COD_REGISTRO: TStringField;
    uniQParcelasResumoVALOR_DESCONTO_PRINCIPAL: TFloatField;
    uniQParcelasResumoVALORATUALIZADO: TFloatField;
    uniQParcelasResumoBOL_VALOR_DESCONTO_ANTECIP: TFloatField;
    uniQParcelasResumoBOL_DATA_MAX_DESCONTO_ANTECIP: TStringField;
    uniQParcelasResumoREGISTRO: TFloatField;
    Panel5: TPanel;
    unifiltran: TFDQuery;
    Panel6: TPanel;
    RzToolButton5: TRzToolButton;
    RzToolButton8: TRzToolButton;
    RzToolButton9: TRzToolButton;
    UniQEventosCobrancaHISTORICOBLOB: TBlobField;
    DBEdit12: TDBEdit;
    RzToolButton10: TRzToolButton;
    RzToolButton11: TRzToolButton;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    PopupMenu1: TPopupMenu;
    E1: TMenuItem;
    PopupMenu2: TPopupMenu;
    Q1: TMenuItem;
    procedure Btn_ProximoClienteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGridOperacoesDblClick(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure DBGridOperacoesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGridEventosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzToolButton5Click(Sender: TObject);
    procedure RzToolButton8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
    procedure RzToolButton6Click(Sender: TObject);
    procedure RzToolButton7Click(Sender: TObject);
    procedure RzToolButton9Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton10Click(Sender: TObject);
    procedure RzToolButton11Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure Q1Click(Sender: TObject);
  private
    { Private declarations }
    function ExisteEvento : boolean;
  public
    { Public declarations }
  end;

var
  frmClientesCadastro: TfrmClientesCadastro;

implementation

{$R *.DFM}

uses
  uCliente_Detalhe, Fclientes, URFicha_Cobranca_Telecom, uAgenda, umenu, 
  ueventosoperador, udatamodule, uclientesnegociacao, uacordos, uagendacadastro,
  uFuncoes, uCadCliente, uAlteraSituacaoNegociacao, uBoletos;

procedure TfrmClientesCadastro.Btn_ProximoClienteClick(Sender: TObject);
var
  cod_cliente: integer;
begin
try
  FrmClientes.uniQClientes.Edit;
  FrmClientes.uniQClientes.Post;
  FrmDataModule.UniConnection1.Commit;
  FrmClientes.uniQClientesLista.Next;
  //frmClientesCadastro.FormActivate(Sender);
except end;
{  //  Verifica se o cliente está sendo atendido, ou se foi atendido no dia
  cod_cliente := FrmClientes.UniQClientes.FieldbyName('codigo').Value;
  UniQLock.Close;
  UniQLock.sql.text := 'select * from class_cliente where codigo = :pcodigo and ativo = ''S'' and descricao = :pdescricao';
                       uniqlock.parambyname('pcodigo').value := cod_cliente;
                       uniqlock.parambyname('pdescricao').value := frmmenu.script.fieldbyname('CODIGO').Value;
  UniQLock.Open;
  //Se estiver, passa pro próximo
  If uniqlock.recordcount > 0 then BEGIN
     SHOWMESSAGE('DD');
     frmClientesCadastro.Btn_ProximoClienteClick(Sender);
  END ELSE frmClientesCadastro.FormActivate(Sender);

  UniQLock.Close;
}
{  O supervisor tem uma tela onde pode ver os clientes que estão sendo atendidos,
  e terá um botão para desbloqueá-los
}
end;

procedure TfrmClientesCadastro.DBGrid3DblClick(Sender: TObject);
begin
if Panel_Parcelas_Resumo.Visible = False then
   Panel_Parcelas_Resumo.Visible := True
   else
   Panel_Parcelas_Resumo.Visible := False;
end;

procedure TfrmClientesCadastro.DBGridOperacoesDblClick(Sender: TObject);
begin
  if edt_nome.text = ''then
    exit;

  Application.CreateForm(TfrmAlteraSituacaoNegociacao, frmAlteraSituacaoNegociacao);
  frmAlteraSituacaoNegociacao.ShowModal;
  frmAlteraSituacaoNegociacao.Free;

  with FrmClientes.uniQClientesParcelas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                         ');
    SQL.Add('  *                            ');
    SQL.Add('FROM                           ');
    SQL.Add('  parcelas                     ');
    SQL.Add('WHERE STATUS IN ("S","L", "N") ');
    SQL.Add('  AND cliente = :cpf_cnpj      ');
    SQL.Add('ORDER BY registro              ');
    ParamByName('cpf_cnpj').AsString := FrmClientes.uniQClientesCPF_CNPJ.AsString;
    Open;
  end;


//if Panel_Parcelas_Resumo.Visible = False then
//   Panel_Parcelas_Resumo.Visible := True
//   else
//   Panel_Parcelas_Resumo.Visible := False;
end;

procedure TfrmClientesCadastro.DBGridOperacoesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (gdSelected in State) then
  begin
    DBGridOperacoes.Canvas.Brush.Color := clMoneyGreen;
    DBGridOperacoes.Canvas.FillRect(Rect);
    DBGridOperacoes.DefaultDrawDataCell(rect,Column.Field,state);
  end
  else if (FrmClientes.uniQClientesOperacoes.FieldByName('Status').AsString = 'N') THEN BEGIN
    DBGridOperacoes.Canvas.Brush.Color := clYellow;
    DBGridOperacoes.Canvas.Font.Color  := clBlack;
  end

  else if (FrmClientes.uniQClientesOperacoes.FieldByName('Status').AsString = 'S') THEN BEGIN
    DBGridOperacoes.Canvas.Brush.Color := clWhite;
    DBGridOperacoes.Canvas.Font.Color  := clBlack;
  end

  else if (FrmClientes.uniQClientesOperacoes.FieldByName('Status').AsString = 'L') THEN BEGIN
    DBGridOperacoes.Canvas.Brush.Color := clSilver;
    DBGridOperacoes.Canvas.Font.Color  := clGray;
  end

  else if (FrmClientes.uniQClientesOperacoes.FieldByName('Status').AsString = 'R') THEN BEGIN
    DBGridOperacoes.Canvas.Brush.Color := clSilver;
    DBGridOperacoes.Canvas.Font.Color  := clGray;
  end

  else if (FrmClientes.uniQClientesOperacoes.FieldByName('Status').AsString = 'A') THEN BEGIN
    DBGridOperacoes.Canvas.Brush.Color := clred;
    DBGridOperacoes.Canvas.Font.Color  := clblack;
  end;

  DBGridOperacoes.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfrmClientesCadastro.E1Click(Sender: TObject);
begin
  if frmMenu.USUARIOLOGADO_NIVEL <> 'O' then
  begin
    if MessageDlg('Deseja realmente excluir este veículo?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      FrmClientes.UniQClientesVeiculos.Delete;
  end;
end;

function TfrmClientesCadastro.ExisteEvento: boolean;
var
  QEvento : TFDQuery;
begin
  QEvento := TFDQuery.Create(nil);
  try
    QEvento.Connection := frmDataModule.UniConnection1;
    try
      with QEvento do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT                               ');
        SQL.Add('  e.CODIGO                           ');
        SQL.Add('FROM                                 ');
        SQL.Add('  eventoscobranca e                  ');
        SQL.Add('WHERE e.CLIENTE = :cliente           ');
        SQL.Add('  AND CAST(datahora AS DATE) = :DATA ');
        ParamByName('cliente').AsString := FrmClientes.uniQClientesCPF_CNPJ.AsString;
        ParamByName('data').AsDate := now;
        Open;
      end;
      if QEvento.IsEmpty then
        Result := False
      else
        Result := True;
    except
      on exc : exception do
        MessageDlg('Ocorreu um erro ao buscar o evento: ' + exc.Message,mtInformation,[mbOk], 0);
    end;
  finally
    FreeAndNil(QEvento);
  end;
end;

procedure TfrmClientesCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    FrmClientes.UniQClientesReferencia.Close;
    FrmClientes.UniQClientesOperacoes.Close;
    FrmClientes.UniQClientesParcelas.Close;
    FrmClientes.UniQScriptCobranca.Close;
    FrmClientes.UniQClientesAgenda.Close;
    Frmclientes.UniQEventosCobranca.Close;

//    FrmClientes.uniQClientes.Edit;
//    FrmClientes.uniQClientes.Post;
//    frmDataModule.UniConnection1.Commit;

    //frmmenu.showmodal;
  except end;
end;

procedure TfrmClientesCadastro.FormCreate(Sender: TObject);
begin
  Panel_parcelas_resumo.Left := (frmClientesCadastro.ClientWidth div 2) - (Panel_parcelas_resumo.Width div 2);
  Panel_parcelas_resumo.Top := (frmClientesCadastro.ClientHeight div 2) - (Panel_parcelas_resumo.Height div 2);
  Tab_Script.TabVisible := False;
  tbVeiculos.TabVisible := False;
  PageControl_Endereco.ActivePage := Tab_End1;
end;

procedure TfrmClientesCadastro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_f2 then frmClientesCadastro.Btn_ProximoClienteClick(Sender);
  if key = vk_f3 then frmClientesCadastro.SpeedButton1Click(Sender);
  if key = vk_f6 then frmClientesCadastro.RzToolButton9Click(Sender);
  if key = vk_escape then begin
   if Panel_Parcelas_Resumo.Visible = True then
   Panel_Parcelas_Resumo.Visible := False;
  end;
end;

procedure TfrmClientesCadastro.FormShow(Sender: TObject);
begin
  //chamando o primeiro cliente
  frmclientes.Edit1.Clear;
  frmclientes.Edit9.Clear;
  frmclientes.Edit12.Clear;
  frmclientes.Edit13.Clear;
  //if frmMenu.USUARIOLOGADO_NIVEL <> 'O' then --tirei 23/07/2020 pois estava dando problema ao abrir a tela
  //  frmclientes.BitBtn1.Click;



//  if not (frmclientes.Visible) then
//    frmclientes.RzToolButton1.Click;
//  if frmMenu.USUARIOLOGADO_NIVEL = 'M' then
//    RzToolButton9.Click
end;

procedure TfrmClientesCadastro.Q1Click(Sender: TObject);
var
  i : integer;
begin
  if MessageDlg('Deseja realmente quebrar este(s) acordo(s) ?',mtConfirmation,[mbYes,mbNo], 0) = mrYes then
  begin
    for I := 1 to DBGridOperacoes.SelectedRows.Count do
    begin
      FrmClientes.uniQClientesOperacoes.GotoBookmark(DBGridOperacoes.SelectedRows.Items[i-1]);
      if FrmClientes.uniQClientesOperacoes.FieldByName('Status').AsString = 'N' then
      begin
        with FrmClientes.uniQClientesParcelas do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT                       ');
          SQL.Add('  *                          ');
          SQL.Add('FROM                         ');
          SQL.Add('  parcelas                   ');
          SQL.Add('WHERE cliente = :Cliente     ');
          SQL.Add('  AND NROPERACAO = :operacao ');
          ParamByName('Cliente').AsString := FrmClientes.uniQClientesListaCPF_CNPJ.AsString;
          ParamByName('operacao').AsString := FrmClientes.uniQClientesOperacoes.FieldByName('nroperacao').AsString;
          Open;
        end;
        FrmClientes.uniQClientesParcelas.Edit;
        FrmClientes.uniQClientesParcelasSTATUS.AsString := 'A';
        FrmClientes.uniQClientesParcelas.Post;

        FrmClientes.uniQClientesOperacoes.Edit;
        FrmClientes.uniQClientesOperacoes.FieldByName('status').AsString := 'A';
        FrmClientes.uniQClientesOperacoes.Post;
      end;

      //ShowMessage(FrmClientes.uniQClientesOperacoes.FieldByName('NROPERACAO').AsString);
    end;
    FrmClientes.uniQClientesOperacoes.Refresh;
    with FrmClientes.uniQClientesParcelas do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT                         ');
      SQL.Add('  *                            ');
      SQL.Add('FROM                           ');
      SQL.Add('  parcelas                     ');
      SQL.Add('WHERE STATUS IN ("S","L", "N") ');
      SQL.Add('  AND cliente = :cpf_cnpj      ');
      SQL.Add('ORDER BY registro              ');
      ParamByName('cpf_cnpj').AsString := FrmClientes.uniQClientesCPF_CNPJ.AsString;
      Open;
    end;
    //
  end;
end;

procedure TfrmClientesCadastro.RzToolButton10Click(Sender: TObject);
begin
  if not FrmClientes.uniQClientesLista.IsEmpty then
  begin
    FrmClientes.uniQClientesLista.Next;
    FrmClientes.RzToolButton1.Click;
  end;

//  if frmMenu.USUARIOLOGADO_NIVEL = 'M' then
//  begin
//    FrmClientes.uniQClientesLista.Next;
//    FrmClientes.RzToolButton1.Click;
//  end
//  else if frmMenu.USUARIOLOGADO_NIVEL = 'O' then
//  begin
//    if ExisteEvento then
//    begin
//      FrmClientes.uniQClientesLista.Next;
//      FrmClientes.RzToolButton1.Click;
//    end
//    else
//      MessageDlg('Informe um evento primeiro.',mtInformation,[mbOk],0);
//  end;
end;

procedure TfrmClientesCadastro.RzToolButton11Click(Sender: TObject);
begin
  if not FrmClientes.uniQClientesLista.IsEmpty then
  begin
    FrmClientes.uniQClientesLista.Prior;
    FrmClientes.RzToolButton1.Click;
  end;

//  if frmMenu.USUARIOLOGADO_NIVEL = 'M' then
//  begin
//    FrmClientes.uniQClientesLista.Prior;
//    FrmClientes.RzToolButton1.Click;
//  end
//  else if frmMenu.USUARIOLOGADO_NIVEL = 'O' then
//  begin
//    if ExisteEvento then
//    begin
//      FrmClientes.uniQClientesLista.Prior;
//      FrmClientes.RzToolButton1.Click;
//    end
//    else
//      MessageDlg('Informe um evento primeiro.',mtInformation,[mbOk],0);
//  end;
end;

procedure TfrmClientesCadastro.RzToolButton1Click(Sender: TObject);
begin
  if edt_nome.text = '' then
    exit;
  Application.CreateForm(TfrmCadCliente, frmCadCliente);
  FrmClientes.uniQClientesLista.Refresh;
  FrmClientes.uniQClientes.Edit;
  //FrmClientes.uniQClientesReferencia.Edit;
  frmCadCliente.ComboBox2.ItemIndex := FrmClientes.uniQClientesReferenciaTIPO.AsInteger;
  frmCadCliente.ShowModal;
  frmCadCliente.Free;
  //frmCliente_Detalhe.Showmodal;
end;

procedure TfrmClientesCadastro.RzToolButton2Click(Sender: TObject);
begin
  if edt_nome.text = '' then
    exit;

  frmagendacadastro.UniQagenda.Open;
  frmagendacadastro.UniQagenda.Insert;
  frmagendacadastro.DBEditRegistro.Text := IntToStr(GetID('codigo','agenda')); //frmagendacadastro.unigetid.FieldByName('Sequences').AsString;

  frmagendacadastro.AdvDBDateTimePicker1.Date := Now;
  frmagendacadastro.AdvDBDateTimePicker2.Time := Now;
  frmagendacadastro.AdvDBDateTimePicker3.Date := Now;
//  frmagendacadastro.DBAdvLUEdit1.Text := frmclientes.uniQClientesLista.fieldbyname('CODIGO').AsString;
//  frmagendacadastro.DBAdvLUEdit3.Text := frmclientes.uniQClientesLista.fieldbyname('NOME').AsString;
  frmagendacadastro.DBAdvLUEdit1.Text := frmclientes.uniQClientes.fieldbyname('CODIGO').AsString;
  frmagendacadastro.DBAdvLUEdit3.Text := frmclientes.uniQClientes.fieldbyname('NOME').AsString;
  frmagendacadastro.DBAdvLUEdit5.Text := FRMMenu.usuariologado_codigo;
  //frmagendacadastro.DBAdvLUEdit4.Text := FRMMenu.usuariologado_codigo;
  frmagendacadastro.uniqagendaDTA_CAD.AsDateTime := Now;

  frmagendacadastro.alterainsere := 'INSERE';
  frmagendacadastro.showmodal;
  frmclientes.UniQEventosCobranca.Refresh;
  frmagendacadastro.unigetid.close;
  frmagendacadastro.UniQagenda.cLOSE;
end;

procedure TfrmClientesCadastro.RzToolButton3Click(Sender: TObject);
var
  registro_operacao: string;
begin
if edt_nome.text = '' then exit;
  //confere se tem 's'
  uniqconferesa.close;
  uniqconferesa.sql.text := 'select * from operacoes where cliente = :pcliente and (status = ''S'' or status = ''N'')';
                            uniqconferesa.parambyname('pcliente').asstring := frmclientes.uniQClientes.fieldbyname('cpf_cnpj').asstring;
  uniqconferesa.open;

  if uniqconferesa.recordcount > 0 then begin
    FRMCLIENTESNEGOCIACAO.SHOWMODAL;
  end
  else
  begin
    Application.MessageBox('Não há títulos ''Em ser''(S) ou ''Negociadas''(N).','Atenção',MB_ICONHAND + MB_OK + MB_ICONQUESTION);
    Exit;
  end;

  FrmClientes.RzToolButton1.Click;
//  FrmClientes.uniQClientesOperacoes.refresh;
//  FrmClientes.uniQEventoscobranca.refresh;
//  with FrmClientes.uniQClientesParcelas do
//  begin
//    Close;
//    SQL.Clear;
//    SQL.Add('SELECT                         ');
//    SQL.Add('  *                            ');
//    SQL.Add('FROM                           ');
//    SQL.Add('  parcelas                     ');
//    SQL.Add('WHERE STATUS IN ("S","L", "N") ');
//    SQL.Add('  AND cliente = :cpf_cnpj      ');
//    SQL.Add('ORDER BY cliente               ');
//    ParamByName('cpf_cnpj').AsString := FrmClientes.uniQClientesCPF_CNPJ.AsString;
//    Open;
//  end;
  uniqconferesa.close;
  //frmClientesCadastro.FormActivate(Sender);
end;

procedure TfrmClientesCadastro.RzToolButton4Click(Sender: TObject);
begin
if edt_nome.text = '' then exit;
end;

procedure TfrmClientesCadastro.RzToolButton5Click(Sender: TObject);
begin
if edt_nome.text = '' then exit;

  try
    frmclientes.UniQEventosCobranca.Open;
    frmclientes.UniQEventosCobranca.Insert;
  except end;

  frmeventosoperador.DBAdvLUEdit1.Text := datetostr(now) + ' ' + timetostr(now);
  frmeventosoperador.DBAdvLUEdit2.Text := FRMMenu.USUARIOLOGADO_CODIGO;
  frmeventosoperador.DBAdvLUEdit14.Text := frmclientes.uniQClientesOperacoes.fieldbyname('Nroperacao').asstring;
  frmeventosoperador.DBAdvLUEdit4.Text := Edt_CPF.Text;

  if frmeventosoperador.DBAdvLUEdit14.Text = '' then frmeventosoperador.DBAdvLUEdit14.Text := '0';
  frmeventosoperador.DBAdvLUEdit15.Text := '0';
  frmeventosoperador.alterainsere := 'INSERE';

  frmeventosoperador.RzToolButton1.Enabled := True;

  frmeventosoperador.showmodal;
end;

procedure TfrmClientesCadastro.RzToolButton6Click(Sender: TObject);
begin
if edt_nome.text = '' then exit;
end;

procedure TfrmClientesCadastro.RzToolButton7Click(Sender: TObject);
begin
  if edt_nome.text = '' then
    exit;

//  Application.CreateForm(TfrmBoletos, frmBoletos);
//  frmBoletos.CarregaContas(FrmClientes.uniQClientesCODIGO.AsInteger);
//  frmBoletos.ShowModal;
//  FreeAndNil(frmBoletos);
end;

procedure TfrmClientesCadastro.RzToolButton8Click(Sender: TObject);
begin
if edt_nome.text = '' then exit;

  IF frmclientes.UniQEventosCobranca.RECORDCOUNT > 0 THEN BEGIN
{    frmclientes.UniQEventosCobranca.Edit;
    frmeventosoperador.alterainsere := 'EDITA';
}
    frmeventosoperador.RzToolButton1.Enabled := False;

    frmeventosoperador.showmodal;
  END;
end;

procedure TfrmClientesCadastro.RzToolButton9Click(Sender: TObject);
begin
  frmclientes.ShowModal;
end;

procedure TfrmClientesCadastro.SpeedButton1Click(Sender: TObject);
begin
try
  FrmClientes.uniQClientes.Edit;
  FrmClientes.uniQClientes.Post;
  frmDataModule.UniConnection1.Commit;
  FrmClientes.uniQClientesLista.Prior;
//  frmClientesCadastro.FormActivate(Sender);
except end;
end;

procedure TfrmClientesCadastro.DBGridEventosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

end.
