unit uRelContasReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, QuickRpt,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, QRCtrls, Vcl.StdCtrls, DateUtils, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons, cxControls,
  cxContainer, cxEdit, cxGroupBox, dxCheckGroupBox, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, RzButton,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxGridExportLink;

type
  TfrmRelContasReceber = class(TForm)
    QuickRep1: TQuickRep;
    QRelatorio: TFDQuery;
    QRBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRBand2: TQRBand;
    QRGroup1: TQRGroup;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape5: TQRShape;
    QRDBText13: TQRDBText;
    QComissao: TFDQuery;
    mtRelatorio: TFDMemTable;
    mtRelatoriocredor: TStringField;
    mtRelatorioNOME: TStringField;
    mtRelatorioCPF_CNPJ: TStringField;
    mtRelatorioNROPERACAO: TStringField;
    mtRelatorioDATAVENCTO: TStringField;
    mtRelatorioDATARECEBIMENTO: TStringField;
    mtRelatorioVALORORIGINAL: TFMTBCDField;
    mtRelatorioVALORREALIZADO: TFMTBCDField;
    mtRelatorioVALORJUROS: TFMTBCDField;
    mtRelatorioVALORMULTA: TFMTBCDField;
    mtRelatorioVALORDESCONTO: TFMTBCDField;
    mtRelatorioVALORHONORARIO: TFMTBCDField;
    mtRelatorioNUM_PARCELA: TStringField;
    mtRelatoriocod_banco_comissao: TIntegerField;
    QRDBText14: TQRDBText;
    mtRelatorioVALORCOMISSAO: TFloatField;
    mtRelatorioPERCENTUALCOMISSAO: TFloatField;
    QRDBText15: TQRDBText;
    GroupBox1: TGroupBox;
    dxCheckGroupBox1: TdxCheckGroupBox;
    cxDateEdit1: TcxDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox2: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    Panel3: TPanel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    cxDateEdit2: TcxDateEdit;
    QRBand4: TQRBand;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel22: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRBand5: TQRBand;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRLabel23: TQRLabel;
    QRShape8: TQRShape;
    QRDBText16: TQRDBText;
    mtRelatorioREPASSE: TFloatField;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    GroupBox3: TGroupBox;
    cbxOpcoes: TComboBox;
    GroupBox4: TGroupBox;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    GroupBox5: TGroupBox;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    RzToolButton3: TRzToolButton;
    dsRelatorio: TDataSource;
    mtRelatorioselecionado: TBooleanField;
    mtRelatorioNOSSO_NUMERO: TStringField;
    dxCheckGroupBox2: TdxCheckGroupBox;
    Label1: TLabel;
    edtCodCredor: TEdit;
    edtNomeCredor: TEdit;
    cxButton2: TcxButton;
    dxCheckGroupBox3: TdxCheckGroupBox;
    Label2: TLabel;
    edtCodDevedor: TEdit;
    edtNomeDevedor: TEdit;
    cxButton1: TcxButton;
    QRLabel24: TQRLabel;
    QRDBText17: TQRDBText;
    mtRelatorioVALORNOMINAL: TFloatField;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr1: TQRExpr;
    dxCheckGroupBox4: TdxCheckGroupBox;
    QUsuario: TFDQuery;
    cbxUsuario: TComboBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1credor: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1CPF_CNPJ: TcxGridDBColumn;
    cxGrid1DBTableView1NROPERACAO: TcxGridDBColumn;
    cxGrid1DBTableView1DATAVENCTO: TcxGridDBColumn;
    cxGrid1DBTableView1DATARECEBIMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1VALORORIGINAL: TcxGridDBColumn;
    cxGrid1DBTableView1VALORREALIZADO: TcxGridDBColumn;
    cxGrid1DBTableView1VALORJUROS: TcxGridDBColumn;
    cxGrid1DBTableView1VALORMULTA: TcxGridDBColumn;
    cxGrid1DBTableView1VALORDESCONTO: TcxGridDBColumn;
    cxGrid1DBTableView1VALORHONORARIO: TcxGridDBColumn;
    cxGrid1DBTableView1NUM_PARCELA: TcxGridDBColumn;
    cxGrid1DBTableView1VALORCOMISSAO: TcxGridDBColumn;
    cxGrid1DBTableView1PERCENTUALCOMISSAO: TcxGridDBColumn;
    cxGrid1DBTableView1REPASSE: TcxGridDBColumn;
    cxGrid1DBTableView1VALORNOMINAL: TcxGridDBColumn;
    RzToolButton4: TRzToolButton;
    SaveDialog1: TSaveDialog;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
  private
    { Private declarations }
    procedure GetContasReceber;
    procedure Imprime;
    procedure GetUsuarios;

    function VerificaComissao(pCodCredor : integer) : string;
  public
    { Public declarations }
    vCPFCNPJ : string;
  end;

var
  frmRelContasReceber: TfrmRelContasReceber;

implementation

{$R *.dfm}

uses udatamodule, ubancosempresas, FClientes, uManutencaoContasReceber;

procedure TfrmRelContasReceber.cxButton1Click(Sender: TObject);
begin
  edtCodDevedor.Clear;
  edtNomeDevedor.Clear;
  FrmClientes.ShowModal;
end;

procedure TfrmRelContasReceber.cxButton2Click(Sender: TObject);
begin
  edtCodCredor.Clear;
  edtNomeCredor.Clear;
  Application.CreateForm(tfrmcredores, frmcredores);
  frmcredores.ShowModal;
  frmcredores.Free;
end;

procedure TfrmRelContasReceber.FormShow(Sender: TObject);
begin
  cxDateEdit1.Date := StartOfTheMonth(Now);
  cxDateEdit2.Date := EndOfTheMonth(Now);
  GetUsuarios;
end;

procedure TfrmRelContasReceber.GetContasReceber;
var
  QComissaoGeral : TFDQuery;
  vTipoComissao : string;
begin
  QComissaoGeral := TFDQuery.Create(nil);
  try
    QComissaoGeral.Connection := frmDataModule.UniConnection1;
    try
      mtRelatorio.Close;
      mtRelatorio.CreateDataSet;
      with QRelatorio do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT                                                 ');
        SQL.Add('  op.VALORNOMINAL,                                     ');
        SQL.Add('  ban.CODIGO,                                          ');
        SQL.Add('  ban.NOME AS credor,                                  ');
        SQL.Add('  ban.HONORARIO_DE,                                    ');
        SQL.Add('  ban.HONORARIOREAL_DE,                                ');
        SQL.Add('  cli.NOME,                                            ');
        SQL.Add('  cli.CPF_CNPJ,                                        ');
        SQL.Add('  pa.REGISTRO,                                         ');
        SQL.Add('  pa.NROPERACAO,                                       ');
        SQL.Add('  pa.DATAVENCTO,                                       ');
        SQL.Add('  pa.DATARECEBIMENTO,                                  ');
        SQL.Add('  pa.VALORORIGINAL,                                    ');
        SQL.Add('  pa.VALORREALIZADO,                                   ');
        SQL.Add('  pa.VALORJUROS,                                       ');
        SQL.Add('  pa.VALORMULTA,                                       ');
        SQL.Add('  pa.VALORDESCONTO,                                    ');
        SQL.Add('  pa.VALORHONORARIO,                                   ');
        SQL.Add('  pa.NUM_PARCELA,                                      ');
        SQL.Add('  pa.BOL_NOSSO_NUMERO,                                 ');
        SQL.Add('  cli.cod_banco_comissao                               ');
        SQL.Add('FROM                                                   ');
        SQL.Add('  bancos ban                                           ');
        SQL.Add('  INNER JOIN clientes_credores cc                      ');
        SQL.Add('    ON cc.cod_credor = ban.CODIGO                      ');
        SQL.Add('  INNER JOIN clientes cli                              ');
        SQL.Add('    ON cli.CODIGO = cc.cod_cliente                     ');
        SQL.Add('  INNER JOIN parcelas pa                               ');
        SQL.Add('    ON pa.CLIENTE = cli.CPF_CNPJ                       ');
        SQL.Add('  INNER JOIN operacoes op                              ');
        SQL.Add('    ON op.CLIENTE = pa.CLIENTE                         ');
        SQL.Add('    AND op.NROPERACAO = pa.NROPERACAO                  ');
        SQL.Add('WHERE 1 = 1                                            ');
        if cbxUsuario.ItemIndex > 0 then
        begin
          SQL.Add('  AND pa.cobrador = :CodUsuario ');
          ParamByName('CodUsuario').AsInteger := Integer(cbxUsuario.Items.Objects[cbxUsuario.ItemIndex]);
        end;

        if dxCheckGroupBox2.CheckBox.Checked then
        begin
          SQL.Add('  AND ban.CODIGO = :CodBanco                         ');
          ParamByName('CodBanco').AsInteger := StrToInt(edtCodCredor.Text);
        end;
        if dxCheckGroupBox3.CheckBox.Checked then
        begin
          SQL.Add('  AND cli.CPF_CNPJ = :CPFCNPJ    ');
          ParamByName('CPFCNPJ').AsString := vCPFCNPJ;
        end;

        if dxCheckGroupBox1.CheckBox.Checked then
        begin
          if RadioButton1.Checked then
          begin
            SQL.Add('  AND STR_TO_DATE(pa.DATARECEBIMENTO, ''%d/%m/%Y'') BETWEEN :D1 ');
            SQL.Add('  AND :D2 ');
          end
          else
          begin
            SQL.Add('  AND STR_TO_DATE(pa.DATAVENCTO, ''%d/%m/%Y'') BETWEEN :D1 ');
            SQL.Add('  AND :D2 ');
          end;
          ParamByName('D1').AsDate := cxDateEdit1.Date;
          ParamByName('D2').AsDate := cxDateEdit2.Date;
        end;
        if cbxOpcoes.ItemIndex = 1 then
          SQL.Add('AND pa.DATARECEBIMENTO IS NULL ')
        else if cbxOpcoes.ItemIndex = 2 then
          SQL.Add('AND pa.DATARECEBIMENTO IS NOT NULL ');
        if RadioButton10.Checked then
          SQL.Add('AND pa.status  = "L"')
        else if RadioButton11.Checked then
          SQL.Add('AND pa.status  = "N"');
        SQL.Add('GROUP BY pa.REGISTRO ');
        SQL.Add('ORDER BY ban.nome, ');
        if RadioButton3.Checked then
          SQL.Add('cli.nome, pa.REGISTRO')
        else if RadioButton4.Checked then
          SQL.Add('pa.REGISTRO')
        else if RadioButton5.Checked then
          SQL.Add('pa.DATARECEBIMENTO')
        else if RadioButton6.Checked then
          SQL.Add('pa.VALORORIGINAL');
        //SQL.SaveToFile('D:\teste.txt');
        Open;
      end;
      if QRelatorio.IsEmpty then
      begin
        MessageDlg('Nenhum registro foi encontrado.',mtInformation,[mbOk],0);
        Exit;
      end;
      QRelatorio.First;

      while not QRelatorio.Eof do
      begin
        vTipoComissao := VerificaComissao(QRelatorio.FieldByName('codigo').AsInteger); //caso use a comissão escalonada
        mtRelatorio.Append;
        mtRelatorioselecionado.AsBoolean := False;
        mtRelatoriocredor.AsString := QRelatorio.FieldByName('credor').AsString;
        mtRelatorioNOME.AsString := QRelatorio.FieldByName('NOME').AsString;
        mtRelatorioCPF_CNPJ.AsString := QRelatorio.FieldByName('cpf_cnpj').AsString;
        mtRelatorioNROPERACAO.AsString := QRelatorio.FieldByName('NROPERACAO').AsString;
        //if QRelatorio.FieldByName('DATAVENCTO').AsDateTime > 0 then
        mtRelatorioNOSSO_NUMERO.AsString := QRelatorio.FieldByName('BOL_NOSSO_NUMERO').AsString;
        mtRelatorioDATAVENCTO.AsString := QRelatorio.FieldByName('DATAVENCTO').AsString;
        mtRelatorioDATARECEBIMENTO.AsString := Copy(QRelatorio.FieldByName('DATARECEBIMENTO').AsString,0,10);
        mtRelatorioVALORNOMINAL.AsFloat := QRelatorio.FieldByName('VALORNOMINAL').AsFloat;
        mtRelatorioVALORORIGINAL.AsFloat := QRelatorio.FieldByName('VALORORIGINAL').AsFloat;
        mtRelatorioVALORREALIZADO.AsFloat := QRelatorio.FieldByName('VALORREALIZADO').AsFloat +
                                            (QRelatorio.FieldByName('VALORREALIZADO').AsFloat *
                                             QRelatorio.FieldByName('HONORARIOREAL_DE').AsFloat) / 100;
        mtRelatorioVALORJUROS.AsString := QRelatorio.FieldByName('VALORJUROS').AsString;
        mtRelatorioVALORMULTA.AsString := QRelatorio.FieldByName('VALORMULTA').AsString;
        mtRelatorioVALORDESCONTO.AsString := QRelatorio.FieldByName('VALORDESCONTO').AsString;
        mtRelatorioVALORHONORARIO.AsFloat := QRelatorio.FieldByName('HONORARIOREAL_DE').AsFloat;
        mtRelatorioNUM_PARCELA.AsString := QRelatorio.FieldByName('NUM_PARCELA').AsString;
        mtRelatoriocod_banco_comissao.AsInteger := QRelatorio.FieldByName('cod_banco_comissao').AsInteger;

        if vTipoComissao = 'geral' then
        begin
          with QComissaoGeral do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT                                           ');
            SQL.Add('  bcv.*                                          ');
            SQL.Add('FROM                                             ');
            SQL.Add('  bancos_comissao_valores bcv                    ');
            SQL.Add('WHERE bcv.cod_banco_comissao = :CodBancoComissao ');
            SQL.Add('  AND bcv.valor_de <= :Valor                     ');
            SQL.Add('  AND bcv.valor_ate >= :Valor                    ');
            ParamByName('CodBancoComissao').AsInteger := mtRelatoriocod_banco_comissao.AsInteger;
            ParamByName('Valor').AsFloat := mtRelatorioVALORREALIZADO.AsFloat;
            Open;
          end;
          mtRelatorioPERCENTUALCOMISSAO.AsFloat := QComissaoGeral.FieldByName('valor_comissao').AsFloat;
        end
        else
          mtRelatorioPERCENTUALCOMISSAO.AsFloat := QRelatorio.FieldByName('honorario_de').AsFloat;
        mtRelatorioVALORCOMISSAO.AsFloat := (mtRelatorioPERCENTUALCOMISSAO.AsFloat * mtRelatorioVALORREALIZADO.AsFloat) / 100;
        if RadioButton7.Checked then
          mtRelatorioREPASSE.AsFloat := mtRelatorioVALORREALIZADO.AsFloat - mtRelatorioVALORCOMISSAO.AsFloat
        else if RadioButton8.Checked then
          mtRelatorioREPASSE.AsFloat := QRelatorio.FieldByName('VALORREALIZADO').AsFloat - mtRelatorioVALORCOMISSAO.AsFloat;
        mtRelatorio.Post;
        QRelatorio.Next;
      end;
      mtRelatorio.First;
    except
      on exc : exception do
        ShowMessage(exc.Message);
    end;
  finally
    FreeAndNil(QComissaoGeral);
  end;
end;

procedure TfrmRelContasReceber.GetUsuarios;
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

procedure TfrmRelContasReceber.Imprime;
begin
  GetContasReceber;
  if mtRelatorio.RecordCount > 0 then
    QuickRep1.Preview;
end;

procedure TfrmRelContasReceber.RzToolButton1Click(Sender: TObject);
begin
  Imprime;
end;

procedure TfrmRelContasReceber.RzToolButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmRelContasReceber.RzToolButton3Click(Sender: TObject);
begin
  GetContasReceber;
  if mtRelatorio.RecordCount > 0 then
  begin
    Application.CreateForm(TfrmManutencaoContasReceber, frmManutencaoContasReceber);
    frmManutencaoContasReceber.ShowModal;
    FreeAndNil(frmManutencaoContasReceber);
  end;
end;

procedure TfrmRelContasReceber.RzToolButton4Click(Sender: TObject);
begin
  GetContasReceber;
  if mtRelatorio.RecordCount > 0 then
  begin
    SaveDialog1.Filter := 'Excel (*.xls) |*.xls|XML (*.xml) |*.xml|Arquivo Texto (*.txt) |*.txt|Página Web (*.html)|*.html';
    SaveDialog1.Title := 'Exportar Dados';
    SaveDialog1.DefaultExt:= 'xls';
    if SaveDialog1.Execute then
      ExportGridToExcel(SaveDialog1.FileName, cxGrid1, True, True);
  end;
end;

function TfrmRelContasReceber.VerificaComissao(pCodCredor: integer) : string;
begin
  with QComissao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT               ');
    SQL.Add('  b.HONORARIO_CHECK, ');
    SQL.Add('  b.HONORARIO_DE     ');
    SQL.Add('FROM                 ');
    SQL.Add('  bancos b           ');
//    SQL.Add('SELECT                              ');
//    SQL.Add('  c.CODIGO AS comissao_unica,       ');
//    SQL.Add('  bc.codigo AS comissao_geral       ');
//    SQL.Add('FROM                                ');
//    SQL.Add('  bancos b                          ');
//    SQL.Add('  LEFT JOIN comissoeseatualizacao c ');
//    SQL.Add('    ON c.CODIGO_CREDOR = b.CODIGO   ');
//    SQL.Add('  LEFT JOIN bancos_comissao bc      ');
//    SQL.Add('    ON bc.cod_banco = c.CODIGO      ');
    SQL.Add('WHERE b.CODIGO = :CodBanco          ');
    ParamByName('CodBanco').AsInteger := pCodCredor;
    Open;
  end;
  if QComissao.FieldByName('HONORARIO_CHECK').AsString = 'True' then
    Result := 'unica'
  else
    Result := 'geral';
end;

end.
