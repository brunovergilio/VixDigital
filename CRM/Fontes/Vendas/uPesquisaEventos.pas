unit uPesquisaEventos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmPesquisaEventos = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    RzToolButton1: TRzToolButton;
    Edit1: TEdit;
    Panel1: TPanel;
    RzToolButton3: TRzToolButton;
    btnalterar: TRzToolButton;
    JvDBGrid1: TJvDBGrid;
    dsEventos: TDataSource;
    QEventos: TFDQuery;
    QEventosCOD_EVENTO: TFMTBCDField;
    QEventosDESC_EVENTO: TStringField;
    QEventosDATA_MODIF: TSQLTimeStampField;
    QEventosSOLUCAO: TStringField;
    QEventosCLASSIFICACAO: TFMTBCDField;
    QEventosINSERIR_ACORDO: TStringField;
    QEventosPAGA_COMISSAO: TStringField;
    QEventosPERMITE_AGENDAR: TStringField;
    QEventosATIVO: TStringField;
    QEventosDTA_CAD: TSQLTimeStampField;
    QEventosUSR_CAD: TFMTBCDField;
    QEventosCOD_EXTERNO: TStringField;
    QEventosMOSTRAR_SOLUCAO: TStringField;
    QEventosAGENDAR_DIAS: TFMTBCDField;
    QEventosCOD_EXTERNO1: TStringField;
    QEventosCLASS_CLIENTE: TStringField;
    QEventosPERMITE_SEGUNDO_EVENTO_DIA: TStringField;
    QEventosFIXA_AGENDAR_DIAS: TStringField;
    QEventosCLASS_OPERACAO: TStringField;
    QEventosCLASS_CLIENTE_CODIGO: TFMTBCDField;
    QEventosCLASS_OPERACAO_CODIGO: TFMTBCDField;
    QEventosMOTIVOINADIMPLENCIA: TFMTBCDField;
    QEventosFIXAR_MOTIVOINADIMPLENCIA: TStringField;
    QEventosPRIORIDADE_EXPORTACAO: TFMTBCDField;
    QEventosVALIDO_CONTATO: TStringField;
    QEventosFONE_CONTATO: TStringField;
    QEventosFIXAR_CONTROLE_IMP: TStringField;
    QEventosCONTROLE_IMP: TFMTBCDField;
    QEventosPESO: TFMTBCDField;
    QEventosMOTIVORETORNO: TFMTBCDField;
    QEventosFIXAR_MOTIVORETORNO: TStringField;
    QEventosFIXAR_CONTROLE_IMP_OPERACAO: TStringField;
    QEventosCONTROLE_IMP_OPERACAO: TFMTBCDField;
    QEventosCOR_EVENTO: TStringField;
    QEventosFIXAR_REMOVER_CONTROLEIMP: TFMTBCDField;
    QEventosFIXAR_PREFERENCIAL: TFMTBCDField;
    QEventosFIXAR_MENSAGEIRO_INSTANTANEO: TFMTBCDField;
    QEventosVALIDACAO_CAMPO: TFMTBCDField;
    QEventosOCULTAR_EVENTO_CLIENTE: TStringField;
    QEventosDESC_CLASSIFICACAO: TStringField;
    procedure RzToolButton1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RzToolButton3Click(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaEventos: TfrmPesquisaEventos;

implementation

{$R *.dfm}

uses udatamodule, uCadEventos, ucadastrodebancosempresas, ubancosempresas;

procedure TfrmPesquisaEventos.btnalterarClick(Sender: TObject);
begin
  QEventos.Edit;
  Application.CreateForm(TfrmCadEventos, frmCadEventos);
  frmCadEventos.ComboBox1.ItemIndex := QEventosCLASSIFICACAO.AsInteger -1;
  frmCadEventos.ShowModal;
  frmCadEventos.Free;
  RzToolButton1.Click;
end;

procedure TfrmPesquisaEventos.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
    RzToolButton1Click(Sender);
end;

procedure TfrmPesquisaEventos.FormShow(Sender: TObject);
begin
  with QEventos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                        ');
    SQL.Add('  *,                          ');
    SQL.Add('  CASE                        ');
    SQL.Add('    WHEN classificacao = 1    ');
    SQL.Add('    THEN "1 - PRODUTIVO"      ');
    SQL.Add('    WHEN classificacao = 2    ');
    SQL.Add('    THEN "2 - IMPRODUTIVO"    ');
    SQL.Add('    WHEN classificacao = 3    ');
    SQL.Add('    THEN "3 - SISTEMA"        ');
    SQL.Add('    WHEN classificacao = 4    ');
    SQL.Add('    THEN "4 - INFORMATIVO"    ');
    SQL.Add('    WHEN classificacao = 5    ');
    SQL.Add('    THEN "5 - ADMINISTRATIVO" ');
    SQL.Add('  END AS DESC_CLASSIFICACAO   ');
    SQL.Add('FROM                          ');
    SQL.Add('  eventos_cod                 ');
    SQL.Add('ORDER BY desc_evento          ');
    Open;
  end;
end;

procedure TfrmPesquisaEventos.RzToolButton1Click(Sender: TObject);
begin
  with QEventos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                        ');
    SQL.Add('  *,                          ');
    SQL.Add('  CASE                        ');
    SQL.Add('    WHEN classificacao = 1    ');
    SQL.Add('    THEN "1 - PRODUTIVO"      ');
    SQL.Add('    WHEN classificacao = 2    ');
    SQL.Add('    THEN "2 - IMPRODUTIVO"    ');
    SQL.Add('    WHEN classificacao = 3    ');
    SQL.Add('    THEN "3 - SISTEMA"        ');
    SQL.Add('    WHEN classificacao = 4    ');
    SQL.Add('    THEN "4 - INFORMATIVO"    ');
    SQL.Add('    WHEN classificacao = 5    ');
    SQL.Add('    THEN "5 - ADMINISTRATIVO" ');
    SQL.Add('  END AS DESC_CLASSIFICACAO   ');
    SQL.Add('FROM                          ');
    SQL.Add('  eventos_cod                 ');
    SQL.Add('WHERE upper(desc_evento) like (''%' + EDIT1.TEXT + '%'')');
    Open;
  end;
end;

procedure TfrmPesquisaEventos.RzToolButton3Click(Sender: TObject);
begin
  Application.CreateForm(TfrmCadEventos, frmCadEventos);
  frmCadEventos.alterainsere := 'INSERE';
  with QEventos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                        ');
    SQL.Add('  *,                          ');
    SQL.Add('  CASE                        ');
    SQL.Add('    WHEN classificacao = 1    ');
    SQL.Add('    THEN "1 - PRODUTIVO"      ');
    SQL.Add('    WHEN classificacao = 2    ');
    SQL.Add('    THEN "2 - IMPRODUTIVO"    ');
    SQL.Add('    WHEN classificacao = 3    ');
    SQL.Add('    THEN "3 - SISTEMA"        ');
    SQL.Add('    WHEN classificacao = 4    ');
    SQL.Add('    THEN "4 - INFORMATIVO"    ');
    SQL.Add('    WHEN classificacao = 5    ');
    SQL.Add('    THEN "5 - ADMINISTRATIVO" ');
    SQL.Add('  END AS DESC_CLASSIFICACAO   ');
    SQL.Add('FROM                          ');
    SQL.Add('  eventos_cod                 ');
    SQL.Add('WHERE 1 = 2                   ');
    Open;
    Append;
  end;
  frmCadEventos.ShowModal;
  frmCadEventos.Free;
  RzToolButton1.Click;
end;

end.
