unit uRelEventosCobranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, RzButton, Vcl.ExtCtrls,
  Vcl.StdCtrls, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.Menus, cxButtons, cxGridExportLink,
  QRCtrls, QuickRpt, DateUtils;

type
  TfrmRelEventosCobranca = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QEventos: TFDQuery;
    dsEventos: TDataSource;
    QEventosCPF_CNPJ: TStringField;
    QEventosNOME: TStringField;
    QEventosFONE: TStringField;
    QEventosFONE_1: TStringField;
    QEventosFAXCEL: TStringField;
    QEventosFAXCEL_1: TStringField;
    QEventosFONE_PREFERENCIAL: TStringField;
    QEventosDATAHORA: TSQLTimeStampField;
    QEventosNOME_1: TStringField;
    QEventosHISTORICOBLOB: TBlobField;
    cxGrid1DBTableView1CPF_CNPJ: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1FONE: TcxGridDBColumn;
    cxGrid1DBTableView1FONE_1: TcxGridDBColumn;
    cxGrid1DBTableView1DATAHORA: TcxGridDBColumn;
    cxGrid1DBTableView1NOME_1: TcxGridDBColumn;
    cxGrid1DBTableView1HISTORICOBLOB: TcxGridDBColumn;
    GroupBox1: TGroupBox;
    Panel3: TPanel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    Label3: TLabel;
    edtCodCredor: TEdit;
    edtNomeCredor: TEdit;
    cxButton2: TcxButton;
    Label1: TLabel;
    Label4: TLabel;
    edtInicio: TcxDateEdit;
    edtFim: TcxDateEdit;
    Label2: TLabel;
    edtCodDevedor: TEdit;
    edtNomeDevedor: TEdit;
    cxButton1: TcxButton;
    GroupBox2: TGroupBox;
    rbTela: TRadioButton;
    rbImpressao: TRadioButton;
    rbExcel: TRadioButton;
    Label5: TLabel;
    SaveDialog1: TSaveDialog;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRBand2: TQRBand;
    QRGroup1: TQRGroup;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    cbxUsuario: TComboBox;
    QUsuario: TFDQuery;
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure GetEventos;
    procedure GetUsuarios;
  public
    { Public declarations }
    vCPFCNPJ : string;
  end;

var
  frmRelEventosCobranca: TfrmRelEventosCobranca;

implementation

{$R *.dfm}

uses udatamodule, FClientes, ubancosempresas;

procedure TfrmRelEventosCobranca.cxButton1Click(Sender: TObject);
begin
  edtCodDevedor.Clear;
  edtNomeDevedor.Clear;
  FrmClientes.ShowModal;
end;

procedure TfrmRelEventosCobranca.cxButton2Click(Sender: TObject);
begin
  edtCodCredor.Clear;
  edtNomeCredor.Clear;
  Application.CreateForm(tfrmcredores, frmcredores);
  frmcredores.ShowModal;
  frmcredores.Free;
end;

procedure TfrmRelEventosCobranca.FormShow(Sender: TObject);
begin
  GetUsuarios;
  edtInicio.Date := StartOfTheMonth(Now);
  edtFim.Date := EndOfTheMonth(Now);
end;

procedure TfrmRelEventosCobranca.GetEventos;
begin
  try
    with QEventos do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT                            ');
      SQL.Add('  cli.CPF_CNPJ,                   ');
      SQL.Add('  cli.NOME,                       ');
      SQL.Add('  cli.FONE,                       ');
      SQL.Add('  cli.FONE_1,                     ');
      SQL.Add('  cli.FAXCEL,                     ');
      SQL.Add('  cli.FAXCEL_1,                   ');
      SQL.Add('  cli.FONE_PREFERENCIAL,          ');
      SQL.Add('  eve.DATAHORA,                   ');
      SQL.Add('  u.NOME,                         ');
      SQL.Add('  eve.HISTORICOBLOB               ');
      SQL.Add('FROM                              ');
      SQL.Add('  clientes cli                    ');
      SQL.Add('  INNER JOIN eventoscobranca eve  ');
      SQL.Add('    ON eve.CLIENTE = cli.CPF_CNPJ ');
      SQL.Add('  INNER JOIN usuarios u           ');
      SQL.Add('    ON u.CODIGO = eve.USUARIO     ');
      SQL.Add('  INNER JOIN clientes_credores cc ');
      SQL.Add('    ON cc.cod_cliente = cli.CODIGO ');
      SQL.Add('WHERE 1 = 1                        ');
      if edtCodCredor.Text <> '' then
      begin
        SQL.Add('  AND cc.cod_credor = :CodCredor ');
        ParamByName('CodCredor').AsInteger := StrToInt(edtCodCredor.Text);
      end;
      if edtCodDevedor.Text <> '' then
      begin
        SQL.Add('  AND cli.CPF_CNPJ = :CPFCNPJ ');
        ParamByName('CPFCNPJ').AsString := vCPFCNPJ;
      end;
      if (edtInicio.Date > 0) and (edtFim.Date > 0) then
      begin
        SQL.Add('  AND CAST(datahora AS DATE) BETWEEN :D1 ');
        SQL.Add('  AND :D2                                ');
        ParamByName('D1').AsDate := edtInicio.Date;
        ParamByName('D2').AsDate := edtFim.Date;
      end;
      if cbxUsuario.ItemIndex > 0 then
      begin
        SQL.Add('  AND eve.usuario = :CodUsuario ');
        ParamByName('CodUsuario').AsInteger := Integer(cbxUsuario.Items.Objects[cbxUsuario.ItemIndex]);
      end;
      SQL.Add('ORDER BY cli.NOME                 ');
      Open;
    end;

    if QEventos.IsEmpty then
      MessageDlg('Nenhum registro foi encontrado.',mtInformation,[mbOk],0);
  except
    on exc : exception do
      MessageDlg('Ocorreu um erro ao gerar o relatório: ' + exc.Message, mtError,[mbOk],0);
  end;
end;

procedure TfrmRelEventosCobranca.GetUsuarios;
begin
  with QUsuario do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT          ');
    SQL.Add('  u.CODIGO,     ');
    SQL.Add('  u.NOME        ');
    SQL.Add('FROM            ');
    SQL.Add('  usuarios u    ');
    SQL.Add('ORDER BY u.nome ');
    Open;
  end;

  cbxUsuario.Items.Clear;
  cbxUsuario.Items.AddObject('Selecione o usuário',TObject(0));
  QUsuario.First;

  while not QUsuario.Eof do
  begin
    cbxUsuario.Items.AddObject(QUsuario.FieldByName('nome').AsString,TObject(QUsuario.FieldByName('codigo').AsInteger));
    QUsuario.Next;
  end;

end;

procedure TfrmRelEventosCobranca.RzToolButton1Click(Sender: TObject);
begin
  GetEventos;
  if rbImpressao.Checked then
  begin
    QuickRep1.Preview;
  end
  else if rbExcel.Checked then
  begin
    SaveDialog1.Filter := 'Excel (*.xls) |*.xls|XML (*.xml) |*.xml|Arquivo Texto (*.txt) |*.txt|Página Web (*.html)|*.html';
    SaveDialog1.Title := 'Exportar Dados';
    SaveDialog1.DefaultExt:= 'xls';
    if SaveDialog1.Execute then
        ExportGridToExcel(SaveDialog1.FileName, cxGrid1, True, True);
  end
end;

procedure TfrmRelEventosCobranca.RzToolButton2Click(Sender: TObject);
begin
  Close;
end;

end.
