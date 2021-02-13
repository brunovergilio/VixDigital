unit uRelImportacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.ComCtrls, dxCore,
  cxDateUtils, RzButton, Vcl.ExtCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Vcl.StdCtrls, cxButtons, cxGroupBox, dxCheckGroupBox, QuickRpt,
  QRCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, DateUtils, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, cxGridExportLink,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfrmRelImportacoes = class(TForm)
    dxCheckGroupBox2: TdxCheckGroupBox;
    Label1: TLabel;
    edtCodCredor: TEdit;
    edtNomeCredor: TEdit;
    cxButton2: TcxButton;
    dxCheckGroupBox1: TdxCheckGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    Panel3: TPanel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRelatorio: TFDQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    RzToolButton3: TRzToolButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dsRealtorio: TDataSource;
    SaveDialog1: TSaveDialog;
    QRelatorioCredor: TStringField;
    QRelatorioUltima_importacao: TSQLTimeStampField;
    cxGrid1DBTableView1Credor: TcxGridDBColumn;
    cxGrid1DBTableView1Ultima_importacao: TcxGridDBColumn;
    procedure RzToolButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
  private
    { Private declarations }
    procedure GetImpressao;
  public
    { Public declarations }
  end;

var
  frmRelImportacoes: TfrmRelImportacoes;

implementation

{$R *.dfm}

uses udatamodule, ubancosempresas;

procedure TfrmRelImportacoes.cxButton2Click(Sender: TObject);
begin
  edtCodCredor.Clear;
  edtNomeCredor.Clear;
  Application.CreateForm(tfrmcredores, frmcredores);
  frmcredores.ShowModal;
  frmcredores.Free;
end;

procedure TfrmRelImportacoes.FormShow(Sender: TObject);
begin
  cxDateEdit1.Date := StartOfTheMonth(Now);
  cxDateEdit2.Date := EndOfTheMonth(Now);
end;

procedure TfrmRelImportacoes.GetImpressao;
begin
  with QRelatorio do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                                ');
    SQL.Add('  b.NOME AS Credor,                   ');
    SQL.Add('  MAX(c.DTA_CAD) as Ultima_importacao ');
    SQL.Add('FROM                                  ');
    SQL.Add('  clientes c                          ');
    SQL.Add('  INNER JOIN clientes_credores cc     ');
    SQL.Add('    ON cc.cod_cliente = c.CODIGO      ');
    SQL.Add('  INNER JOIN bancos b                 ');
    SQL.Add('    ON b.CODIGO = cc.cod_credor       ');
    SQL.Add('WHERE 1 = 1                           ');
    if dxCheckGroupBox1.CheckBox.Checked then
    begin
      SQL.Add('AND CAST(c.DTA_CAD AS DATE) BETWEEN :D1       ');
      SQL.Add('  AND :D2                       ');
      ParamByName('D1').AsDate := cxDateEdit1.Date;
      ParamByName('D2').AsDate := cxDateEdit2.Date;
    end;
    if dxCheckGroupBox2.CheckBox.Checked then
    begin
      SQL.Add('  AND cc.cod_credor = :CodCredor ');
      ParamByName('CodCredor').AsInteger := StrToInt(edtCodCredor.Text);
    end;
    SQL.Add('GROUP BY cc.cod_credor            ');
    SQL.Add('ORDER BY b.nome,                  ');
    SQL.Add('  c.DTA_CAD DESC                  ');
    Open;
  end;
end;

procedure TfrmRelImportacoes.RzToolButton1Click(Sender: TObject);
begin
  GetImpressao;
  if not QRelatorio.IsEmpty then
  begin
    QuickRep1.Prepare;
    QuickRep1.Preview;
  end;
end;

procedure TfrmRelImportacoes.RzToolButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmRelImportacoes.RzToolButton3Click(Sender: TObject);
begin
  GetImpressao;
  SaveDialog1.Filter := 'Excel (*.xls) |*.xls|XML (*.xml) |*.xml|Arquivo Texto (*.txt) |*.txt|Página Web (*.html)|*.html';
  SaveDialog1.Title := 'Exportar Dados';
  SaveDialog1.DefaultExt:= 'xls';
  if SaveDialog1.Execute then
    ExportGridToExcel(SaveDialog1.FileName, cxGrid1, True, True);
end;

end.
