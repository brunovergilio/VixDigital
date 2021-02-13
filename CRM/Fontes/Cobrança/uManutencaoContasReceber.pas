unit uManutencaoContasReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.StdCtrls, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxGroupBox, dxCheckGroupBox, cxButtons, RzButton,
  Vcl.ExtCtrls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TfrmManutencaoContasReceber = class(TForm)
    Panel3: TPanel;
    RzToolButton2: TRzToolButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1credor: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1CPF_CNPJ: TcxGridDBColumn;
    cxGrid1DBTableView1DATAVENCTO: TcxGridDBColumn;
    cxGrid1DBTableView1DATARECEBIMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1VALORORIGINAL: TcxGridDBColumn;
    cxGrid1DBTableView1VALORREALIZADO: TcxGridDBColumn;
    cxGrid1DBTableView1VALORJUROS: TcxGridDBColumn;
    cxGrid1DBTableView1VALORMULTA: TcxGridDBColumn;
    cxGrid1DBTableView1VALORDESCONTO: TcxGridDBColumn;
    cxGrid1DBTableView1NUM_PARCELA: TcxGridDBColumn;
    cxGrid1DBTableView1selecionado: TcxGridDBColumn;
    cxGrid1DBTableView1NOSSO_NUMERO: TcxGridDBColumn;
    RzToolButton1: TRzToolButton;
    GroupBox1: TGroupBox;
    dxCheckGroupBox1: TdxCheckGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    cxDateEdit1: TcxDateEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    cxDateEdit2: TcxDateEdit;
    GroupBox5: TGroupBox;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
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
    QRelatorio: TFDQuery;
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
    mtRelatorioVALORCOMISSAO: TFloatField;
    mtRelatorioPERCENTUALCOMISSAO: TFloatField;
    mtRelatorioREPASSE: TFloatField;
    mtRelatorioselecionado: TBooleanField;
    mtRelatorioNOSSO_NUMERO: TStringField;
    dsRelatorio: TDataSource;
    RzToolButton3: TRzToolButton;
    cxStyleRepository1: TcxStyleRepository;
    cxVerde: TcxStyle;
    cxVermelho: TcxStyle;
    cxAmarelo: TcxStyle;
    mtRelatorioSTATUS: TStringField;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    procedure RzToolButton2Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  private
    { Private declarations }
    procedure GetContasReceber;
  public
    { Public declarations }
    vCPFCNPJ : string;
  end;

var
  frmManutencaoContasReceber: TfrmManutencaoContasReceber;

implementation

{$R *.dfm}

uses uRelContasReceber, udatamodule, ubancosempresas, FClientes;

procedure TfrmManutencaoContasReceber.cxButton1Click(Sender: TObject);
begin
  edtCodDevedor.Clear;
  edtNomeDevedor.Clear;
  FrmClientes.ShowModal;
end;

procedure TfrmManutencaoContasReceber.cxButton2Click(Sender: TObject);
begin
  edtCodCredor.Clear;
  edtNomeCredor.Clear;
  Application.CreateForm(tfrmcredores, frmcredores);
  frmcredores.ShowModal;
  frmcredores.Free;
end;

procedure TfrmManutencaoContasReceber.cxGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
   if (ARecord.Values[cxGrid1DBTableView1STATUS.Index] = 'A') then
     AStyle := cxVermelho;
end;

procedure TfrmManutencaoContasReceber.GetContasReceber;
var
  QComissaoGeral : TFDQuery;
  vTipoComissao : string;
begin
  QComissaoGeral := TFDQuery.Create(nil);
  try
    QComissaoGeral.Connection := frmDataModule.UniConnection1;
    try
//      if edtCodCredor.Text = '' then
//      begin
//        MessageDlg('Informe o credor.',mtInformation,[mbOk],0);
//        Exit;
//      end;
      with QRelatorio do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT                                                 ');
        SQL.Add('  ban.CODIGO,                                          ');
        SQL.Add('  ban.NOME AS credor,                                  ');
        SQL.Add('  ban.HONORARIO_DE,                                    ');
        SQL.Add('  ban.HONORARIOREAL_DE,                                ');
        SQL.Add('  cli.NOME,                                            ');
        SQL.Add('  cli.CPF_CNPJ,                                        ');
        SQL.Add('  pa.REGISTRO,                                         ');
        SQL.Add('  pa.NROPERACAO,                                       ');
        SQL.Add('  pa.DATAVENCTO,                                       ');
        SQL.Add('  CAST(pa.DATARECEBIMENTO AS DATE) AS DATARECEBIMENTO, ');
        SQL.Add('  pa.VALORORIGINAL,                                    ');
        SQL.Add('  pa.VALORREALIZADO,                                   ');
        SQL.Add('  pa.VALORJUROS,                                       ');
        SQL.Add('  pa.VALORMULTA,                                       ');
        SQL.Add('  pa.VALORDESCONTO,                                    ');
        SQL.Add('  pa.VALORHONORARIO,                                   ');
        SQL.Add('  pa.NUM_PARCELA,                                      ');
        SQL.Add('  pa.BOL_NOSSO_NUMERO,                                 ');
        SQL.Add('  pa.STATUS,                                           ');
        SQL.Add('  cli.cod_banco_comissao                               ');
        SQL.Add('FROM                                                   ');
        SQL.Add('  bancos ban                                           ');
        SQL.Add('  INNER JOIN clientes_credores cc                      ');
        SQL.Add('    ON cc.cod_credor = ban.CODIGO                      ');
        SQL.Add('  INNER JOIN clientes cli                              ');
        SQL.Add('    ON cli.CODIGO = cc.cod_cliente                     ');
        SQL.Add('  INNER JOIN parcelas pa                               ');
        SQL.Add('    ON pa.CLIENTE = cli.CPF_CNPJ                       ');
        SQL.Add('WHERE 1 = 1                                            ');
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
//        if cbxOpcoes.ItemIndex = 1 then
//          SQL.Add('AND pa.DATARECEBIMENTO IS NULL ')
//        else if cbxOpcoes.ItemIndex = 2 then
//          SQL.Add('AND pa.DATARECEBIMENTO IS NOT NULL ');
        if RadioButton10.Checked then
          SQL.Add('AND pa.status  = "L"')
        else if RadioButton11.Checked then
          SQL.Add('AND pa.status  = "N"');
        SQL.Add('GROUP BY pa.REGISTRO ');
        SQL.Add('ORDER BY ban.nome, cli.NOME, CAST(pa.DATAVENCTO AS DATE)');
//        if RadioButton3.Checked then
//          SQL.Add('cli.nome, pa.DATAVENCTO')
//        else if RadioButton4.Checked then
//          SQL.Add('pa.DATAVENCTO')
//        else if RadioButton5.Checked then
//          SQL.Add('pa.DATARECEBIMENTO')
//        else if RadioButton6.Checked then
//          SQL.Add('pa.VALORORIGINAL');
        Open;
      end;
      if QRelatorio.IsEmpty then
      begin
        MessageDlg('Nenhum registro foi encontrado.',mtInformation,[mbOk],0);
        Exit;
      end;
      mtRelatorio.Close;
      mtRelatorio.CreateDataSet;
      QRelatorio.First;

      mtRelatorio.DisableControls;
      while not QRelatorio.Eof do
      begin
        //vTipoComissao := VerificaComissao(QRelatorio.FieldByName('codigo').AsInteger); //caso use a comissão escalonada
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
        mtRelatorioSTATUS.AsString := QRelatorio.FieldByName('STATUS').AsString;

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
//        if RadioButton7.Checked then
//          mtRelatorioREPASSE.AsFloat := mtRelatorioVALORREALIZADO.AsFloat - mtRelatorioVALORCOMISSAO.AsFloat
//        else if RadioButton8.Checked then
//          mtRelatorioREPASSE.AsFloat := QRelatorio.FieldByName('VALORREALIZADO').AsFloat - mtRelatorioVALORCOMISSAO.AsFloat;
        mtRelatorio.Post;
        QRelatorio.Next;
      end;
      mtRelatorio.EnableControls;
      mtRelatorio.First;
    except
      on exc : exception do
        ShowMessage(exc.Message);
    end;
  finally
    FreeAndNil(QComissaoGeral);
  end;
end;

procedure TfrmManutencaoContasReceber.RzToolButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmManutencaoContasReceber.RzToolButton3Click(Sender: TObject);
begin
  GetContasReceber;
end;

end.
