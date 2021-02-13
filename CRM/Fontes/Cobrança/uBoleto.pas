unit uBoleto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxGroupBox, dxCheckGroupBox, RzButton, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, ACBrBoleto,
  ACBrBoletoFCFortesFr, ACBrBase, ACBrBoletoConversao, ACBrUtil, DateUtils,
  ShellApi, Vcl.Menus, cxButtons, cxButtonEdit, Vcl.ComCtrls, dxSkinsCore,
  dxSkinsDefaultPainters;

type
  TfrmBoleto = class(TForm)
    Panel1: TPanel;
    dsContasReceber: TDataSource;
    QContasReceber: TFDQuery;
    ACBrBoleto1: TACBrBoleto;
    ACBrBoletoFCFortes1: TACBrBoletoFCFortes;
    QBanco: TFDQuery;
    QDadosBanco: TFDQuery;
    QDadosBancoCODIGO: TFDAutoIncField;
    QDadosBancoCOD_BANCO: TIntegerField;
    QDadosBancoAGENCIA: TStringField;
    QDadosBancoAGENCIA_DIGITO: TStringField;
    QDadosBancoAGENCIA_NOME: TStringField;
    QDadosBancoCONTA: TStringField;
    QDadosBancoCONTA_DIGITO: TStringField;
    QDadosBancoCONTA_CORRENTISTA: TStringField;
    QDadosBancoCONTA_NOME_CORRENTISTA: TStringField;
    QDadosBancoCOD_CEDENTE: TIntegerField;
    QDadosBancoDIGITO_CEDENTE: TIntegerField;
    QDadosBancoLAYOUT: TStringField;
    QDadosBancoNOSSONUMERO: TStringField;
    QDadosBancoCARTEIRA: TStringField;
    QDadosBancoCONVENIO: TStringField;
    QDadosBancoENDERECO: TStringField;
    QDadosBancoTIPO: TStringField;
    QDadosBancoCEP: TStringField;
    QDadosBancoUF: TStringField;
    QDadosBancoCPF_CNPJ: TStringField;
    QDadosBancoNOME_CEDENTE: TStringField;
    QDadosBancoCIDADE: TStringField;
    QDadosBanconumero: TIntegerField;
    mtContasReceber: TFDMemTable;
    mtContasReceberDATAREFERENCIA: TStringField;
    mtContasReceberDATAVENCTO: TStringField;
    mtContasReceberNROPERACAO: TStringField;
    mtContasReceberBOL_NOSSO_NUMERO: TStringField;
    mtContasReceberNOME: TStringField;
    mtContasReceberVALORPREVISTO: TFMTBCDField;
    mtContasReceberIMPRESSO: TBooleanField;
    mtContasReceberREMESSA: TBooleanField;
    mtContasReceberREGISTRO: TIntegerField;
    mtContasReceberSELECIONADO: TBooleanField;
    mtContasReceberCPF_CNPJ: TStringField;
    mtContasReceberENDERECO: TStringField;
    mtContasReceberSETOR: TStringField;
    mtContasReceberCIDADE: TStringField;
    mtContasReceberUF: TStringField;
    mtContasReceberCEP: TStringField;
    mtContasReceberBOL_IMPRESSO: TBooleanField;
    mtContasReceberBOL_REMESSA: TBooleanField;
    OpenDialog1: TOpenDialog;
    mtContasReceberSTATUS: TStringField;
    PopupMenu1: TPopupMenu;
    M1: TMenuItem;
    D1: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxVerde: TcxStyle;
    cxVermelho: TcxStyle;
    mtContasReceberPDF: TBooleanField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    RzToolButton4: TRzToolButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edtDataIni: TMaskEdit;
    edtDataFim: TMaskEdit;
    dxCheckGroupBox1: TdxCheckGroupBox;
    edtCodDevedor: TEdit;
    edtNomeDevedor: TEdit;
    cxButton1: TcxButton;
    GroupBox2: TGroupBox;
    cbxBanco: TComboBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1SELECIONADO: TcxGridDBColumn;
    cxGrid1DBTableView1PDF: TcxGridDBColumn;
    cxGrid1DBTableView1DATAREFERENCIA: TcxGridDBColumn;
    cxGrid1DBTableView1DATAVENCTO: TcxGridDBColumn;
    cxGrid1DBTableView1NROPERACAO: TcxGridDBColumn;
    cxGrid1DBTableView1BOL_NOSSO_NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1VALORPREVISTO: TcxGridDBColumn;
    cxGrid1DBTableView1IMPRESSO: TcxGridDBColumn;
    cxGrid1DBTableView1REMESSA: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel3: TPanel;
    RzToolButton2: TRzToolButton;
    RzToolButton8: TRzToolButton;
    RzToolButton1: TRzToolButton;
    RzToolButton3: TRzToolButton;
    RzToolButton6: TRzToolButton;
    Panel4: TPanel;
    RzToolButton7: TRzToolButton;
    RzToolButton12: TRzToolButton;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    edtCaminhoRetorno: TEdit;
    RzToolButton5: TRzToolButton;
    dsRetorno: TDataSource;
    mtRetorno: TFDMemTable;
    mtRetornoSelecionado: TBooleanField;
    mtRetornoValorRecebido: TFloatField;
    mtRetornoDocumento: TStringField;
    mtRetornoSeuNumero: TStringField;
    mtRetornoCarteira: TStringField;
    mtRetornoNossoNumero: TStringField;
    mtRetornoDataOcorrencia: TDateField;
    mtRetornoDataProcessamento: TDateField;
    mtRetornoOcorrencia: TStringField;
    mtRetornoValorDocumento: TFloatField;
    mtRetornoValorJuros: TFloatField;
    mtRetornoValorTaxa: TFloatField;
    mtRetornoValorPago: TFloatField;
    cxGrid2DBTableView1Selecionado: TcxGridDBColumn;
    cxGrid2DBTableView1Documento: TcxGridDBColumn;
    cxGrid2DBTableView1NossoNumero: TcxGridDBColumn;
    cxGrid2DBTableView1DataOcorrencia: TcxGridDBColumn;
    cxGrid2DBTableView1DataProcessamento: TcxGridDBColumn;
    cxGrid2DBTableView1Ocorrencia: TcxGridDBColumn;
    cxGrid2DBTableView1ValorRecebido: TcxGridDBColumn;
    cxGrid2DBTableView1ValorDocumento: TcxGridDBColumn;
    cxGrid2DBTableView1ValorJuros: TcxGridDBColumn;
    cxGrid2DBTableView1ValorTaxa: TcxGridDBColumn;
    cxGrid2DBTableView1ValorPago: TcxGridDBColumn;
    mtRetornoMotivoRejeicao: TStringField;
    cxGrid2DBTableView1MotivoRejeicao: TcxGridDBColumn;
    mtRetornoSacadoNome: TStringField;
    mtRetornoSacadoCPFCNPJ: TStringField;
    cxGrid2DBTableView1SacadoNome: TcxGridDBColumn;
    cxGrid2DBTableView1SacadoCPFCNPJ: TcxGridDBColumn;
    cxAmarelo: TcxStyle;
    procedure RzToolButton4Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure cxGrid1DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure RzToolButton8Click(Sender: TObject);
    procedure RzToolButton6Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1PDFPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure RzToolButton12Click(Sender: TObject);
    procedure cxGrid2DBTableView1SelecionadoPropertiesEditValueChanged(
      Sender: TObject);
    procedure RzToolButton5Click(Sender: TObject);
    procedure cxGrid2DBTableView1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  private
    { Private declarations }
    vCodBanco : integer;
    pImprime,
    pRemessa : boolean;
    procedure GetContasReceber;
    procedure GeraBoleto(pTipo : TACBrTipoOcorrencia);
    procedure ConfigACBrBoleto(pCancela : boolean);
    procedure AlteraParcelaBoleto(pTitulo : TACBrTitulo; pCancela : boolean);
    procedure GetBancos;
    procedure MoveArquivo;
    function GetNossoProximoNumero : string;
  public
    { Public declarations }
    vCPFCNPJ : string;
  end;

var
  frmBoleto: TfrmBoleto;

implementation

{$R *.dfm}

uses udatamodule, FClientes, uFuncoes;

{ TfrmBoleto }

procedure TfrmBoleto.AlteraParcelaBoleto(pTitulo : TACBrTitulo; pCancela : boolean);
var
  QParcelas : TFDQuery;
begin
  QParcelas := TFDQuery.Create(nil);
  try
    QParcelas.Connection := frmDataModule.UniConnection1;
    try
      with QParcelas do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE                             ');
        SQL.Add('  parcelas                         ');
        SQL.Add('SET                                ');
        SQL.Add('  BOL_NOSSO_NUMERO = :pNossoNumero ');
        if pImprime = True then
          SQL.Add('  , BOL_IMPRESSO = "S" ');
        if pRemessa = True then
          SQL.Add('  , BOL_REMESSA = "S" ');
        if pCancela = True then
          SQL.Add('  , STATUS = "A" ');  //ACORDO QUEBRADO
        SQL.Add('WHERE registro = :registro         ');
        ParamByName('pNossoNumero').AsString := pTitulo.NossoNumero;
        ParamByName('registro').AsInteger := mtContasReceberREGISTRO.AsInteger;
        ExecSQL;
      end;

      with QParcelas do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE                             ');
        SQL.Add('  bancos_dados_bancarios           ');
        SQL.Add('SET                                ');
        SQL.Add('  NOSSONUMERO = :pNossoNumero      ');
        SQL.Add('WHERE codigo = :pCodigo         ');
        ParamByName('pNossoNumero').AsString := pTitulo.NossoNumero;
        ParamByName('pCodigo').AsInteger := Integer(cbxBanco.Items.Objects[cbxBanco.ItemIndex]);
        ExecSQL;
      end;

    except
      on exc : exception do
        ShowMessage(exc.Message);
    end;
  finally
    FreeAndNil(QParcelas);
  end;
end;

procedure TfrmBoleto.ConfigACBrBoleto(pCancela : boolean);
begin
  with QDadosBanco do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                         ');
    SQL.Add('  b.numero,                    ');
    SQL.Add('  bd.*                         ');
    SQL.Add('FROM                           ');
    SQL.Add('  bancos_dados_bancarios bd    ');
    SQL.Add('  INNER JOIN banco b           ');
    SQL.Add('    ON b.codigo = bd.COD_BANCO ');
    SQL.Add('WHERE bd.codigo = :Codigo      ');
    ParamByName('Codigo').AsInteger := Integer(cbxBanco.Items.Objects[cbxBanco.ItemIndex]);
    Open;
  end;

  with ACBrBoleto1 do
  begin
    //DADOS DO BANCO
    if QDadosBanconumero.AsInteger = 756 then //SICOOB
    begin
      Banco.TipoCobranca := cobBancoob; //cobBancoDoBrasilSICOOB;
      Banco.LayoutVersaoArquivo := 87;
      Banco.LayoutVersaoLote := 45;
      Cedente.Convenio := '      ';
      Cedente.Modalidade := '01 - Simples com Registro';
    end;

    //DADOS DO CENDETE
    Cedente.Nome := QDadosBancoCONTA_NOME_CORRENTISTA.AsString;
    Cedente.FantasiaCedente := QDadosBancoCONTA_NOME_CORRENTISTA.AsString;
    if QDadosBancoTIPO.AsString = 'F' then
      Cedente.TipoInscricao := pFisica
    else
      Cedente.TipoInscricao := pJuridica;
    Cedente.Agencia := QDadosBancoAGENCIA.AsString;
    Cedente.AgenciaDigito := QDadosBancoAGENCIA_DIGITO.AsString;

    Cedente.CNPJCPF := QDadosBancoCPF_CNPJ.AsString;
    Cedente.CodigoCedente := QDadosBancoCOD_CEDENTE.AsString;
    Cedente.Conta := QDadosBancoCONTA.AsString;
    Cedente.ContaDigito := QDadosBancoCONTA_DIGITO.AsString;
    Cedente.Logradouro := QDadosBancoENDERECO.AsString;
    Cedente.CEP := QDadosBancoCEP.AsString;
    Cedente.UF := QDadosBancoUF.AsString;
    ACBrBoletoFC.DirLogo := ExtractFilePath(Application.ExeName) + 'Boletos\LogosBoleto\Colorido';
    ACBrBoletoFC.Filtro := fiNenhum;
    ACBrBoletoFC.LayOut := lFatura;
    if pCancela = True then
    begin
      if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Boletos\ArqRemessa\Cancelados\' +
                             FormatDateTime('yyyy', Now) +
                             FormatDateTime('mm', Now) +
                             FormatDateTime('dd', Now)) then
        ForceDirectories(ExtractFilePath(Application.ExeName) + 'Boletos\ArqRemessa\Cancelados\' +
                         FormatDateTime('yyyy', Now) +
                         FormatDateTime('mm', Now) +
                         FormatDateTime('dd', Now));
        DirArqRemessa := ExtractFilePath(Application.ExeName) + 'Boletos\ArqRemessa\Cancelados\' +
                         FormatDateTime('yyyy', Now) +
                         FormatDateTime('mm', Now) +
                         FormatDateTime('dd', Now);
    end
    else
    begin
      if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Boletos\ArqRemessa\Processados\' +
                             FormatDateTime('yyyy', Now) +
                             FormatDateTime('mm', Now) +
                             FormatDateTime('dd', Now)) then
        ForceDirectories(ExtractFilePath(Application.ExeName) + 'Boletos\ArqRemessa\Processados\' +
                         FormatDateTime('yyyy', Now) +
                         FormatDateTime('mm', Now) +
                         FormatDateTime('dd', Now));
        DirArqRemessa := ExtractFilePath(Application.ExeName) + 'Boletos\ArqRemessa\Processados\' +
                         FormatDateTime('yyyy', Now) +
                         FormatDateTime('mm', Now) +
                         FormatDateTime('dd', Now);
    end;
    NomeArqRemessa := FormatDateTime('DDMMYYHHMMSS',Now) + '.ret';

    if QDadosBancoLAYOUT.AsString = 'c240' then
      LayoutRemessa := c240
    else
      LayoutRemessa := c400;
  end;
end;

procedure TfrmBoleto.cxButton1Click(Sender: TObject);
begin
  edtCodDevedor.Clear;
  edtNomeDevedor.Clear;
  FrmClientes.ShowModal;
end;

procedure TfrmBoleto.cxGrid1DBTableView1PDFPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  Titulo : TACBrTitulo;
begin
  if mtContasReceberBOL_NOSSO_NUMERO.AsString <> '' then
  begin
    ConfigACBrBoleto(False);

    ACBrBoleto1.ListadeBoletos.Clear;
    ACBrBoletoFCFortes1.LayOut := lFatura;

    //SICOOB
    Titulo := ACBrBoleto1.CriarTituloNaLista;
    with Titulo do
    begin
      OcorrenciaOriginal.Tipo := toRemessaRegistrar;

      DataProcessamento := Now;
      Vencimento := StrToDate(mtContasReceberDATAVENCTO.AsString);
      DataDocumento := StrToDate(mtContasReceberDATAREFERENCIA.AsString);
      NumeroDocumento := mtContasReceberNROPERACAO.AsString;
      EspecieDoc := 'DM';
      EspecieMod := 'R$';
      Aceite := atNao;
      DataProcessamento := Now;
      NossoNumero :=  mtContasReceberBOL_NOSSO_NUMERO.AsString;
      Carteira := QDadosBancoCARTEIRA.AsString;
      SeuNumero := mtContasReceberREGISTRO.AsString;
      ValorDocumento := mtContasReceberVALORPREVISTO.AsFloat;
      Sacado.NomeSacado := mtContasReceberNOME.AsString;
      Sacado.CNPJCPF := mtContasReceberCPF_CNPJ.AsString;
      Sacado.Logradouro := mtContasReceberENDERECO.AsString;
      Sacado.Bairro := mtContasReceberSETOR.AsString;
      Sacado.Cidade := mtContasReceberCIDADE.AsString;
      Sacado.UF := mtContasReceberUF.AsString;
      Sacado.CEP := mtContasReceberCEP.AsString;
      ValorAbatimento   := 0;
      DataAbatimento    := 0;

      ACBrBoleto1.Imprimir;
    end;
  end
  else
    MessageDlg('Gere o boleto para poder visualizá-lo.',mtInformation,[mbOk],0);
end;

procedure TfrmBoleto.cxGrid1DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
   if (ARecord.Values[cxGrid1DBTableView1STATUS.Index] = 'PAGO') then
     AStyle := cxVerde
   else if (ARecord.Values[cxGrid1DBTableView1STATUS.Index] = 'ACORDO QUEBRADO') then
     AStyle := cxVermelho;
end;

procedure TfrmBoleto.cxGrid2DBTableView1SelecionadoPropertiesEditValueChanged(
  Sender: TObject);
begin
  if mtRetornoValorRecebido.AsFloat = 0 then
  begin
    mtRetorno.Edit;
    mtRetornoSelecionado.AsBoolean := False;
    mtRetorno.Post;
  end;
end;

procedure TfrmBoleto.cxGrid2DBTableView1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
//   if (ARecord.Values[cxGrid2DBTableView1ValorRecebido.Index] <= 0) then
//     AStyle := cxAmarelo;
end;

procedure TfrmBoleto.D1Click(Sender: TObject);
begin
  mtContasReceber.First;
  while not  mtContasReceber.Eof do
  begin
    mtContasReceber.Edit;
    mtContasReceberSELECIONADO.AsBoolean := False;
    mtContasReceber.Post;
    mtContasReceber.Next;
  end;
  mtContasReceber.First;
end;

procedure TfrmBoleto.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  edtDataIni.EditText := DateToStr(StartOfTheMonth(Date));
  edtDataFim.EditText := DateToStr(EndOfTheMonth(Now));
  edtCaminhoRetorno.Text := ExtractFilePath(Application.ExeName) + 'Boletos\ArqRetorno\';
  GetBancos;
  GetContasReceber;
end;

procedure TfrmBoleto.GeraBoleto(pTipo : TACBrTipoOcorrencia);
var
  Titulo : TACBrTitulo;
  vParcela   : Integer;
  vDiretorio : string;
begin
  ACBrBoleto1.ListadeBoletos.Clear;
  vParcela := 0;
  ACBrBoletoFCFortes1.LayOut := lFatura;

  //SICOOB
  mtContasReceber.First;
  mtContasReceber.DisableControls;
  while not mtContasReceber.Eof do
  begin
    if mtContasReceberselecionado.AsBoolean then
    begin
      Inc(vParcela);

      if pImprime then
      begin
        vDiretorio := ExtractFilePath(Application.ExeName) + 'Boletos\PDF\' +
                               FormatDateTime('yyyy', Now) +
                               FormatDateTime('mm', Now) +
                               FormatDateTime('dd', Now);
        if not DirectoryExists(vDiretorio) then
          ForceDirectories(vDiretorio);
        ACBrBoletoFCFortes1.NomeArquivo := vDiretorio + '\PAGTO ' + mtContasReceberNROPERACAO.AsString;
      end;
      Titulo := ACBrBoleto1.CriarTituloNaLista;
      with Titulo do
      begin
        OcorrenciaOriginal.Tipo := pTipo;;

        DataProcessamento := Now;
        Vencimento := StrToDate(mtContasReceberDATAVENCTO.AsString);
        DataDocumento := StrToDate(mtContasReceberDATAREFERENCIA.AsString);
        NumeroDocumento := mtContasReceberNROPERACAO.AsString;
        EspecieDoc := 'DM';
        EspecieMod := 'R$';
        Aceite := atNao;
        DataProcessamento := Now;
        if mtContasReceberBOL_NOSSO_NUMERO.AsString = '' then
        begin
          NossoNumero :=  GetNossoProximoNumero
          //DataProcessamento - salvar no tabela parcelas
        end
        else
        begin
          NossoNumero :=  mtContasReceberBOL_NOSSO_NUMERO.AsString;
        end;
        Carteira := QDadosBancoCARTEIRA.AsString;
        SeuNumero := mtContasReceberREGISTRO.AsString;
        ValorDocumento := mtContasReceberVALORPREVISTO.AsFloat;
        Sacado.NomeSacado := mtContasReceberNOME.AsString;
        Sacado.CNPJCPF := mtContasReceberCPF_CNPJ.AsString;
        Sacado.Logradouro := mtContasReceberENDERECO.AsString;
        Sacado.Bairro := mtContasReceberSETOR.AsString;
        Sacado.Cidade := mtContasReceberCIDADE.AsString;
        Sacado.UF := mtContasReceberUF.AsString;
        Sacado.CEP := mtContasReceberCEP.AsString;
        ValorAbatimento   := 0;
        DataAbatimento    := 0;

        if pTipo = toRemessaRegistrar then
          AlteraParcelaBoleto(Titulo, False)
        else
          AlteraParcelaBoleto(Titulo, True);
        if pImprime then
        begin
          ACBrBoletoFCFortes1.GerarPDF;
          ACBrBoleto1.ListadeBoletos.Clear;
        end;
      end;
    end;
    mtContasReceber.Next;
  end;

  if not pImprime then
//  begin
//    ACBrBoletoFCFortes1.GerarPDF;
    //ACBrBoleto1.Imprimir;
//  end
//  else
    ACBrBoleto1.GerarRemessa(1);

  mtContasReceber.EnableControls;
end;

procedure TfrmBoleto.GetBancos;
begin
  with QBanco do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                          ');
    SQL.Add('  bd.codigo,                    ');
    SQL.Add('  CONCAT(                       ');
    SQL.Add('    "BANCO: ",                  ');
    SQL.Add('    b.numero,                   ');
    SQL.Add('    "-",                        ');
    SQL.Add('    b.descricao,                ');
    SQL.Add('    " AG: ",                    ');
    SQL.Add('    bd.AGENCIA,                 ');
    SQL.Add('    " C/C: ",                   ');
    SQL.Add('    bd.CONTA,                   ');
    SQL.Add('    " CORRENTISTA: ",           ');
    SQL.Add('    bd.CONTA_NOME_CORRENTISTA   ');
    SQL.Add('  ) AS banco                    ');
    SQL.Add('FROM                            ');
    SQL.Add('  bancos_dados_bancarios bd     ');
    SQL.Add('  INNER JOIN banco b            ');
    SQL.Add('    ON b.codigo = bd.COD_BANCO  ');
    SQL.Add('ORDER BY b.descricao            ');
    Open;
  end;

  QBanco.First;
  while not QBanco.Eof do
  begin
    cbxBanco.Items.AddObject(QBanco.FieldByName('banco').AsString,TObject(QBanco.FieldByName('codigo').AsInteger));
    QBanco.Next;
  end;
  cbxBanco.ItemIndex := 0;
end;

procedure TfrmBoleto.GetContasReceber;
begin
  with QContasReceber do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                                       ');
    SQL.Add('  c.NOME,                                    ');
    SQL.Add('  c.CPF_CNPJ,                                ');
    SQL.Add('  c.ENDERECO,                                ');
    SQL.Add('  c.SETOR,                                   ');
    SQL.Add('  c.CIDADE,                                  ');
    SQL.Add('  c.UF,                                      ');
    SQL.Add('  c.CEP,                                     ');
    SQL.Add('  p.*                                        ');
    SQL.Add('FROM                                         ');
    SQL.Add('  parcelas p                                 ');
    SQL.Add('  INNER JOIN clientes c                      ');
    SQL.Add('    ON c.CPF_CNPJ = p.CLIENTE                ');
    SQL.Add('WHERE p.bol_cod_banco = :CodBanco            ');
    SQL.Add('  AND STR_TO_DATE(p.DATAVENCTO, ''%d/%m/%Y'') BETWEEN :D1 ');
    SQL.Add('  AND :D2 ');
    if dxCheckGroupBox1.CheckBox.Checked = True then
    begin
      SQL.Add('  AND c.CPF_CNPJ = :CPFCNPJ                ');
      ParamByName('CPFCNPJ').AsString := vCPFCNPJ;
    end;
    SQL.Add('ORDER BY c.NOME,                             ');
    SQL.Add('  CAST(p.DATAVENCTO AS DATE)                 ');
    ParamByName('CodBanco').AsInteger := Integer(cbxBanco.Items.Objects[cbxBanco.ItemIndex]);
    ParamByName('D1').AsDate := StrToDate(edtDataIni.Text);
    ParamByName('D2').AsDate := StrToDate(edtDataFim.Text);
    Open;
  end;

  mtContasReceber.Close;
  mtContasReceber.CreateDataSet;

  QContasReceber.First;
  mtContasReceber.DisableControls;
  while not QContasReceber.Eof do
  begin
    //só vai mostrar parcelas que não tenham sido gerado o boleto e que não estejam com acordo quebrado
//    if (QContasReceber.FieldByName('BOL_NOSSO_NUMERO').AsString = '') and
//       (QContasReceber.FieldByName('STATUS').AsString <> 'A') then
//    begin
      mtContasReceber.Append;
      mtContasReceberSELECIONADO.AsBoolean := False;
      if QContasReceber.FieldByName('BOL_IMPRESSO').AsString = 'S' then
        mtContasReceberBOL_IMPRESSO.AsBoolean := True
      else
        mtContasReceberBOL_IMPRESSO.AsBoolean := False;
      if QContasReceber.FieldByName('BOL_REMESSA').AsString = 'S' then
        mtContasReceberBOL_REMESSA.AsBoolean := True
      else
        mtContasReceberBOL_REMESSA.AsBoolean := False;
      mtContasReceberDATAREFERENCIA.AsString := QContasReceber.FieldByName('DATAREFERENCIA').AsString;
      mtContasReceberDATAVENCTO.AsString := QContasReceber.FieldByName('DATAVENCTO').AsString;
      mtContasReceberNROPERACAO.AsString := QContasReceber.FieldByName('NROPERACAO').AsString;
      mtContasReceberBOL_NOSSO_NUMERO.AsString := QContasReceber.FieldByName('BOL_NOSSO_NUMERO').AsString;
      mtContasReceberCPF_CNPJ.AsString := QContasReceber.FieldByName('CLIENTE').AsString;
      mtContasReceberNOME.AsString := QContasReceber.FieldByName('NOME').AsString;
      mtContasReceberENDERECO.AsString := QContasReceber.FieldByName('ENDERECO').AsString;
      mtContasReceberSETOR.AsString := QContasReceber.FieldByName('SETOR').AsString;
      mtContasReceberCIDADE.AsString := QContasReceber.FieldByName('CIDADE').AsString;
      mtContasReceberUF.AsString := QContasReceber.FieldByName('UF').AsString;
      mtContasReceberCEP.AsString := QContasReceber.FieldByName('CEP').AsString;
      mtContasReceberVALORPREVISTO.AsFloat := QContasReceber.FieldByName('VALORPREVISTO').AsFloat;
      mtContasReceberREGISTRO.AsInteger := QContasReceber.FieldByName('REGISTRO').AsInteger;
      if QContasReceber.FieldByName('STATUS').AsString = 'A' then
        mtContasReceberSTATUS.AsString := 'ACORDO QUEBRADO'
      else if QContasReceber.FieldByName('STATUS').AsString = 'N' then
        mtContasReceberSTATUS.AsString := 'NEGOCIADO'
      else if QContasReceber.FieldByName('STATUS').AsString = 'L' then
        mtContasReceberSTATUS.AsString := 'PAGO';
      mtContasReceber.Post;
//    end;
    QContasReceber.Next;
  end;
  mtContasReceber.First;
  mtContasReceber.EnableControls;
end;

function TfrmBoleto.GetNossoProximoNumero : string;
var
  QNossoNumero : TFDQuery;
begin
  QNossoNumero := TFDQuery.Create(nil);
  try
    QNossoNumero.Connection := frmDataModule.UniConnection1;
    try
      with QNossoNumero do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT                                        ');
        SQL.Add('  b.NOSSONUMERO                               ');
        SQL.Add('FROM                                          ');
        SQL.Add('  bancos_dados_bancarios b                    ');
        SQL.Add('ORDER BY CAST(b.NOSSONUMERO AS UNSIGNED) DESC ');
        SQL.Add('LIMIT 1                                       ');
        Open;
      end;
      Result := (QNossoNumero.Fields[0].AsLargeInt + 1).ToString;
    except

    end;
  finally
    FreeAndNil(QNossoNumero);
  end;
end;

procedure TfrmBoleto.M1Click(Sender: TObject);
begin
  mtContasReceber.First;
  while not  mtContasReceber.Eof do
  begin
    mtContasReceber.Edit;
    mtContasReceberSELECIONADO.AsBoolean := True;
    mtContasReceber.Post;
    mtContasReceber.Next;
  end;
  mtContasReceber.First;
end;

procedure TfrmBoleto.MoveArquivo;
var
  vRec : TSearchRec;
  vArq,
  i : integer;
begin
  vArq := FindFirst(edtCaminhoRetorno.Text + '*.ret',faAnyFile, vRec);
  while vArq = 0 do
  begin
    if not FilesExists(edtCaminhoRetorno.Text + 'Processados') then
      ForceDirectories(edtCaminhoRetorno.Text + 'Processados');
    MoveFile(PChar(edtCaminhoRetorno.Text + vRec.Name),PChar(edtCaminhoRetorno.Text + 'Processados\' + vRec.Name));
    vArq := FindNext(vRec);
  end;
  FindClose(vRec);
  RzToolButton5.Click;
end;

procedure TfrmBoleto.RzToolButton12Click(Sender: TObject);
var
  i : Integer;
  QBuscaBoleto : TFDQuery;
begin
  QBuscaBoleto := TFDQuery.Create(nil);
  try
    QBuscaBoleto.Connection := frmDataModule.UniConnection1;
    try
      mtRetorno.First;
      while not mtRetorno.Eof do
      begin
        if mtRetornoSelecionado.AsBoolean = True then
        begin
          with QBuscaBoleto do
          begin
            Close;
            SQL.Clear;
            SQL.Add('UPDATE                                ');
            SQL.Add('  parcelas                            ');
            SQL.Add('SET                                   ');
            SQL.Add('  DATARECEBIMENTO = :Datarec,         ');
            SQL.Add('  VALORREALIZADO = :Valor,            ');
            SQL.Add('  STATUS = "L"                        ');
            SQL.Add('WHERE registro = :Registro            ');
            SQL.Add('  AND BOL_NOSSO_NUMERO = :NossoNumero ');
            ParamByName('Datarec').AsDate := mtRetornoDataOcorrencia.AsDateTime;
            ParamByName('Valor').AsFloat := mtRetornoValorRecebido.AsFloat;
            ParamByName('Registro').AsInteger := mtRetornoSeuNumero.AsString.ToInteger;
            ParamByName('NossoNumero').AsString := mtRetornoNossoNumero.AsString;
            ExecSQL;
          end;
        end;
        mtRetorno.Next;
      end;
      MoveArquivo;
      GetContasReceber;

      MessageDlg('Arquivo(s) processado(s) com sucesso.',mtInformation,[mbOk],0);
      PageControl1.ActivePageIndex := 0;
    except
      on exc : exception do
        ShowMessage(exc.Message);
    end;
  finally
    FreeAndNil(QBuscaBoleto);
  end;
end;

procedure TfrmBoleto.RzToolButton1Click(Sender: TObject);
var
  vBoletoCancelado : boolean;
begin
  //verifico se existe boleto cancelado
  vBoletoCancelado := False;
  mtContasReceber.First;
  while not mtContasReceber.Eof do
  begin
    if mtContasReceberSELECIONADO.AsBoolean then
    begin
      if mtContasReceberSTATUS.AsString = 'ACORDO QUEBRADO' then
        vBoletoCancelado := True;
    end;
    mtContasReceber.Next;
  end;
  mtContasReceber.First;

  if vBoletoCancelado = True then
    MessageDlg('Não é possivel gerar remessa de boleto cancelado. Verifique',mtError,[mbOk], 0)
  else
  begin
    ConfigACBrBoleto(False);

    pImprime := False;
    pRemessa := True;

    GeraBoleto(toRemessaRegistrar);

    GetContasReceber;

    MessageDlg('Remessa gerada com sucesso.',mtInformation,[mbOk],0);
  end;
end;

procedure TfrmBoleto.RzToolButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmBoleto.RzToolButton3Click(Sender: TObject);
begin
  ConfigACBrBoleto(False);

  pImprime := True;
  pRemessa := False;

  GeraBoleto(toRemessaRegistrar);

  GetContasReceber;
  MessageDlg('Boleto gerado com sucesso.',mtInformation,[mbOk],0);
end;

procedure TfrmBoleto.RzToolButton4Click(Sender: TObject);
begin
  GetContasReceber;
end;

procedure TfrmBoleto.RzToolButton5Click(Sender: TObject);
var
  vRec : TSearchRec;
  vArq,
  i : integer;
begin
  mtRetorno.Close;
  mtRetorno.CreateDataSet;

  //Configurar banco
  ConfigACBrBoleto(False);

  vArq := FindFirst(edtCaminhoRetorno.Text + '*.ret',faAnyFile, vRec);
  while vArq = 0 do
  begin
    ACBrBoleto1.NomeArqRetorno := edtCaminhoRetorno.Text + vRec.Name;
    ACBrBoleto1.LerRetorno;
    for i := 0 to ACBrBoleto1.ListadeBoletos.Count-1 do
    begin
      with ACBrBoleto1.ListadeBoletos.Objects[i] do
      begin
        mtRetorno.Append;
        if ValorRecebido > 0 then
          mtRetornoSelecionado.AsBoolean := True
        else
          mtRetornoSelecionado.AsBoolean := False;
        mtRetornoDocumento.AsString := NumeroDocumento;
        mtRetornoSeuNumero.AsString := SeuNumero;
        mtRetornoCarteira.AsString := Carteira;
        mtRetornoNossoNumero.AsString := NossoNumero;
        mtRetornoDataOcorrencia.AsDateTime := DataOcorrencia;
        mtRetornoDataProcessamento.AsDateTime := DataProcessamento;
        mtRetornoOcorrencia.AsString := OcorrenciaOriginal.Descricao;
        mtRetornoValorRecebido.AsFloat := ValorRecebido;
        mtRetornoValorDocumento.AsFloat := ValorDocumento;
        mtRetornoValorJuros.AsFloat := ValorMoraJuros;
        mtRetornoValorTaxa.AsFloat := ValorDespesaCobranca;
        mtRetornoValorPago.AsFloat := ValorPago;
        mtRetornoMotivoRejeicao.AsString := MotivoRejeicaoComando.Text;
        mtRetornoSacadoNome.AsString := Sacado.NomeSacado;
        if Length(Sacado.CNPJCPF) = 11 then
          mtRetornoSacadoCPFCNPJ.AsString := FormataCPF(Sacado.CNPJCPF)
        else
          mtRetornoSacadoCPFCNPJ.AsString := FormataCNPJ(Sacado.CNPJCPF);
        mtRetorno.Post;
      end;
    end;
    vArq := FindNext(vRec);
  end;
  FindClose(vRec);
end;

procedure TfrmBoleto.RzToolButton6Click(Sender: TObject);
var
  vBoletoCancelado : boolean;
begin
  //verifico se existe boleto com remessa
  vBoletoCancelado := False;
  mtContasReceber.First;
  while not mtContasReceber.Eof do
  begin
    if mtContasReceberSELECIONADO.AsBoolean then
    begin
      if mtContasReceberBOL_NOSSO_NUMERO.AsString = '' then
        vBoletoCancelado := True;
    end;
    mtContasReceber.Next;
  end;
  mtContasReceber.First;

  if vBoletoCancelado = True then
    MessageDlg('Não é possivel cancelar boleto que não tenha sido gerado. Verifique',mtError,[mbOk], 0)
  else
  begin
    ConfigACBrBoleto(True);

    pImprime := False;
    pRemessa := True;

    GeraBoleto(toRemessaBaixar);

    GetContasReceber;
    MessageDlg('Boleto cancelado com sucesso.',mtInformation,[mbOk],0);
  end;
end;

procedure TfrmBoleto.RzToolButton8Click(Sender: TObject);
begin
  ShellExecute(Application.HANDLE, 'open', PChar(ExtractFilePath(Application.ExeName) + 'Boletos\PDF'),nil,nil,SW_SHOWNORMAL);
end;

end.
