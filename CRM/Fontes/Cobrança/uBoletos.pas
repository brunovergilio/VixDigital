unit uBoletos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, RzButton, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, cxCheckBox, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Menus, ACBrBoleto, ACBrBoletoFCFortesFr, ACBrBase, ACBrUtil, ACBrBoletoConversao;

type
  TfrmBoletos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel3: TPanel;
    RzToolButton2: TRzToolButton;
    RzToolButton8: TRzToolButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QContasReceber: TFDQuery;
    mtContasReceber: TFDMemTable;
    mtContasReceberselecionado: TBooleanField;
    dsContasReceber: TDataSource;
    mtContasReceberdocumento: TStringField;
    mtContasReceberemissao: TDateField;
    mtContasRecebervencimento: TDateField;
    mtContasReceberdata_pagto: TDateField;
    mtContasRecebervalor: TFloatField;
    mtContasRecebervalor_pago: TFloatField;
    mtContasRecebervalor_atual: TFloatField;
    cxGrid1DBTableView1selecionado: TcxGridDBColumn;
    cxGrid1DBTableView1documento: TcxGridDBColumn;
    cxGrid1DBTableView1emissao: TcxGridDBColumn;
    cxGrid1DBTableView1vencimento: TcxGridDBColumn;
    cxGrid1DBTableView1data_pagto: TcxGridDBColumn;
    cxGrid1DBTableView1valor: TcxGridDBColumn;
    cxGrid1DBTableView1valor_pago: TcxGridDBColumn;
    cxGrid1DBTableView1valor_atual: TcxGridDBColumn;
    mtContasReceberhistorico: TStringField;
    cxGrid1DBTableView1historico: TcxGridDBColumn;
    Edt_Nome: TDBEdit;
    PopupMenu1: TPopupMenu;
    M1: TMenuItem;
    D1: TMenuItem;
    cbxBanco: TComboBox;
    Label2: TLabel;
    ACBrBoletoFCFortes1: TACBrBoletoFCFortes;
    ACBrBoleto1: TACBrBoleto;
    procedure RzToolButton2Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure RzToolButton8Click(Sender: TObject);
    procedure cxGrid1DBTableView1selecionadoPropertiesEditValueChanged(
      Sender: TObject);
  private
    { Private declarations }
    procedure MarcaDesmarcaCheck(pTIpo : boolean);
    procedure GeraBoleto;
    procedure ConfigACBrBoleto;
  public
    { Public declarations }
    procedure CarregaContas(pCodCliente : integer);
  end;

var
  frmBoletos: TfrmBoletos;

implementation

{$R *.dfm}

uses udatamodule, FClientes;

procedure TfrmBoletos.CarregaContas(pCodCliente: integer);
begin
  with QContasReceber do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                        ');
    SQL.Add('  c.NOME,                     ');
    SQL.Add('  p.*                         ');
    SQL.Add('FROM                          ');
    SQL.Add('  parcelas p                  ');
    SQL.Add('  INNER JOIN clientes c       ');
    SQL.Add('    ON c.CPF_CNPJ = p.CLIENTE ');
    SQL.Add('WHERE c.CODIGO = :Codigo      ');
    ParamByName('Codigo').AsInteger := pCodCliente;
    Open;
  end;

  mtContasReceber.Close;
  mtContasReceber.CreateDataSet;
  QContasReceber.First;
  while not QContasReceber.Eof do
  begin
    mtContasReceber.Append;
    mtContasReceberselecionado.AsBoolean := False;
    mtContasReceberdocumento.AsString := QContasReceber.FieldByName('nroperacao').AsString;
    mtContasReceberemissao.AsDateTime := StrToDate(QContasReceber.FieldByName('datareferencia').AsString);
    mtContasRecebervencimento.AsDateTime := StrToDate(QContasReceber.FieldByName('datavencto').AsString);
    if QContasReceber.FieldByName('datarecebimento').AsString <> '' then
      mtContasReceberdata_pagto.AsDateTime := StrToDate(QContasReceber.FieldByName('datarecebimento').AsString);
    mtContasRecebervalor.AsFloat := QContasReceber.FieldByName('valorprevisto').AsFloat;
    mtContasRecebervalor_pago.AsFloat := QContasReceber.FieldByName('valorrealizado').AsFloat;
    mtContasRecebervalor_atual.AsFloat := QContasReceber.FieldByName('valorprevisto').AsFloat - QContasReceber.FieldByName('valorrealizado').AsFloat;
    mtContasReceberhistorico.AsString := '';
    mtContasReceber.Post;
    QContasReceber.Next;
  end;
  mtContasReceber.First;
end;

procedure TfrmBoletos.ConfigACBrBoleto;
begin
  with ACBrBoleto1 do
  begin
    //DADOS DO BANCO
    Banco.TipoCobranca := cobBancoob; //cobBancoDoBrasilSICOOB;
    Banco.LayoutVersaoArquivo := 87;
    Banco.LayoutVersaoLote := 45;

    //DADOS DO CENDETE
    Cedente.Nome := 'Associação Comercial e Empresarial de Timóteo - ACE';
    Cedente.FantasiaCedente := 'Associação Comercial e Empresarial de Timóteo - ACE';
    Cedente.TipoInscricao := pJuridica;
    Cedente.Convenio := '      ';
    Cedente.Modalidade := '01 - Simples com Registro';
    Cedente.Agencia := '4036';
    Cedente.AgenciaDigito := '3';
    Cedente.Conta := '60114005';
    Cedente.ContaDigito := '2';
    Cedente.CNPJCPF := '20.182.275/0001-09;';
    Cedente.CodigoCedente := '174955';
    Cedente.Logradouro := 'Rua 31 Março';
    Cedente.CEP := '35180-028';
    Cedente.UF := 'MG';
    ACBrBoletoFC.DirLogo := 'C:\Desenvolvimento\Delphi\VixDigital\CRM\Boletos\LogosBoleto\Colorido';
    ACBrBoletoFC.Filtro := fiNenhum;
    ACBrBoletoFC.LayOut := lFatura;
    DirArqRemessa := 'C:\Desenvolvimento\Delphi\VixDigital\CRM\Boletos\ArqRemessa';
    NomeArqRemessa := FormatDateTime('DDMMYYHHMMSS',Now) + '.ret';
    LayoutRemessa := c240;
  end;
end;

procedure TfrmBoletos.cxGrid1DBTableView1selecionadoPropertiesEditValueChanged(
  Sender: TObject);
begin
  mtContasReceber.Post;
end;

procedure TfrmBoletos.D1Click(Sender: TObject);
begin
  MarcaDesmarcaCheck(False);
end;

procedure TfrmBoletos.GeraBoleto;
var
  Titulo : TACBrTitulo;
  vNossoNumero,
  vParcela   : Integer;
begin
  ACBrBoleto1.ListadeBoletos.Clear;
  vParcela := 0;
  ACBrBoletoFCFortes1.LayOut := lFatura;

  //SICOOB
  mtContasReceber.First;
  if cbxBanco.ItemIndex = 2 then
  begin
    while not mtContasReceber.Eof do
    begin
      if mtContasReceberselecionado.AsBoolean then
      begin
        Inc(vParcela);

        Titulo := ACBrBoleto1.CriarTituloNaLista;
        with Titulo do
        begin
          OcorrenciaOriginal.Tipo := toRemessaRegistrar;

          Vencimento := mtContasRecebervencimento.AsDateTime;
          DataDocumento := mtContasReceberemissao.AsDateTime;
          NumeroDocumento := mtContasReceberdocumento.AsString;
          EspecieDoc := 'DM';
          EspecieMod := 'R$';
          Aceite := atNao;
          DataProcessamento := Now;
          //if not mtcontarecebernossonumero <> '' then

            NossoNumero := IntToStrZero(947039,6);
          Carteira := '1';
          //SeuNumero := mtContasReceber
          ValorDocumento := mtContasRecebervalor.AsFloat;
          Sacado.NomeSacado := FrmClientes.uniQClientesNOME.AsString;
          Sacado.CNPJCPF := FrmClientes.uniQClientesCPF_CNPJ.AsString;
          Sacado.Logradouro := FrmClientes.uniQClientesENDERECO.AsString;
          Sacado.Bairro := FrmClientes.uniQClientesSETOR.AsString;
          Sacado.Cidade := FrmClientes.uniQClientesCIDADE.AsString;
          Sacado.UF := FrmClientes.uniQClientesUF.AsString;
          Sacado.CEP := FrmClientes.uniQClientesCEP.AsString;
          ValorAbatimento   := 0;
          DataAbatimento    := 0;
//          Mensagem.Add('MULTA DE 2% APÓS DATA DE VENCIMENTO');
//          Mensagem.Add('JUROS DE 0,33% AO DIA APÓS DATA DE VENCIMENTO');
//          Mensagem.Add('SUJEITO A PROTESTOS');
        end;
      end;
      mtContasReceber.Next;
    end;
  end;
end;

procedure TfrmBoletos.M1Click(Sender: TObject);
begin
  MarcaDesmarcaCheck(True);
end;

procedure TfrmBoletos.MarcaDesmarcaCheck(pTIpo: boolean);
begin
  mtContasReceber.First;
  while not mtContasReceber.Eof do
  begin
    mtContasReceber.Edit;
    mtContasReceberselecionado.AsBoolean := pTIpo;
    mtContasReceber.Post;
    mtContasReceber.Next;
  end;
  mtContasReceber.First;
end;

procedure TfrmBoletos.RzToolButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmBoletos.RzToolButton8Click(Sender: TObject);
begin
  ConfigACBrBoleto;
  GeraBoleto;
  //ACBrBoleto1.GerarRemessa(1); //sequencial
  ACBrBoleto1.Imprimir;
end;

end.
