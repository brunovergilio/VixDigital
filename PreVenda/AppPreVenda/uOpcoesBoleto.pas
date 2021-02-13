unit uOpcoesBoleto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, 
  Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, 
  Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, 
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, 
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, 
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, 
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, 
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, 
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, 
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, 
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, 
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, 
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, 
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, 
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, 
  cxButtons, ACBrBoleto, ACBrBoletoFCFR, ACBrBase, Data.DB, FireDAC.Stan.Intf, 
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, 
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, 
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ACBrBoletoConversao;

type
  TFrmOpcoesBoleto = class(TForm)
    Panel1: TPanel;
    rgOpcoes: TRadioGroup;
    Panel2: TPanel;
    cxButton2: TcxButton;
    ACBrBoletoBradesco: TACBrBoleto;
    QryBoletos: TFDQuery;
    QryAux: TFDQuery;
    cxButton1: TcxButton;
    ACBrBoletoCaixa: TACBrBoleto;
    procedure cxButton2Click(Sender: TObject);
    function GetNossoNumeroBradesco(pNF, pDoc:String) : String;
    function GetNossoNumeroCaixa(pNF, pDoc:String) : String;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FNota:String;
  end;

var
  FrmOpcoesBoleto: TFrmOpcoesBoleto;

implementation
uses
  uDM, uFuncoes;

{$R *.dfm}

procedure TFrmOpcoesBoleto.cxButton1Click(Sender: TObject);
var
  Titulo : TACBrTitulo;
  vInd   : Integer;
begin
  vInd := 0;
//  ACBrBoletoFCFRBradesco.DirLogo := ExtractFilePath(Application.ExeName);
//  ACBrBoletoFCFRBradesco.FastReportFile := ExtractFilePath(Application.ExeName) + 'BoletoFatura.fr3';
//  ACBrBoletoFCFRBradesco.LayOut := lFatura;
//
//  ACBrBoletoFCFRCaixa.DirLogo := ExtractFilePath(Application.ExeName);
//  ACBrBoletoFCFRCaixa.FastReportFile := ExtractFilePath(Application.ExeName) + 'BoletoFatura.fr3';
//  ACBrBoletoFCFRCaixa.LayOut := lFatura;

  QryBoletos.Close;
  QryBoletos.SQL.Text :=
    'Select Receber.Vencimento, Receber.Emissao, Receber.NossoNum, ' +
    ' Receber.Valor_Dupl, CliFor.Nome, CliFor.CGC, CliFor.Endere, ' +
    ' CliFor.Comple, CliFor.Cidade, CliFor.Estado, CliFor.Cep, Receber.Documento ' +
    ' From Receber ' +
    ' Inner Join CliFor on (CliFor.Nome = Receber.Nome) ' +
    ' Where Receber.NumeroNF =:pNF ' +
    ' Order By Receber.Vencimento';
  QryBoletos.ParamByName('pNF').AsString := FNota;
  QryBoletos.Open;
  QryBoletos.Last;
  QryBoletos.First;

  if (rgOpcoes.ItemIndex = 1) then
  begin
    ACBrBoletoBradesco.ListadeBoletos.Clear;
    while not QryBoletos.Eof do
    begin
      Inc(vInd);
      Titulo := ACBrBoletoBradesco.CriarTituloNaLista;
      Titulo.TotalParcelas := QryBoletos.RecordCount;
      with Titulo do
      begin
        Titulo.Parcela    := vInd;
        LocalPagamento    := 'PAGAVEL PREFERENCIALMENTE NA REDE BRADESCO OU BRADESCO EXPRESSO';
        Vencimento        := QryBoletos.FieldByName('Vencimento').AsDateTime;
        DataDocumento     := QryBoletos.FieldByName('Emissao').AsDateTime;
        NumeroDocumento   := QryBoletos.FieldByName('Documento').AsString;
        EspecieDoc        := 'DM';
        EspecieMod        := 'R$';
        Aceite            := atNao;
        DataProcessamento := Date;

        if (QryBoletos.FieldByName('NossoNum').AsString <> '') then
          NossoNumero     := QryBoletos.FieldByName('NossoNum').AsString
        else
          NossoNumero     := GetNossoNumeroBradesco(FNota, QryBoletos.FieldByName('Documento').AsString);

        Carteira          := '09';
        ValorDocumento    := QryBoletos.FieldByName('Valor_Dupl').AsFloat;
        Sacado.NomeSacado := QryBoletos.FieldByName('Nome').AsString;
        Sacado.CNPJCPF    := QryBoletos.FieldByName('CGC').AsString;
        Sacado.Logradouro := QryBoletos.FieldByName('Endere').AsString;
        Sacado.Bairro     := QryBoletos.FieldByName('Comple').AsString;
        Sacado.Cidade     := QryBoletos.FieldByName('Cidade').AsString;
        Sacado.UF         := QryBoletos.FieldByName('Estado').AsString;
        Sacado.CEP        := QryBoletos.FieldByName('CEP').AsString;
        ValorAbatimento   := 0;
        DataAbatimento    := 0;
        Mensagem.Add       ('MULTA DE 2% APÓS DATA DE VENCIMENTO');
        Mensagem.Add       ('JUROS DE 0,33% AO DIA APÓS DATA DE VENCIMENTO');
        Mensagem.Add       ('SUJEITO A PROTESTOS');
      end;
      QryBoletos.Next;
    end;
    QryBoletos.Close;
    ACBrBoletoBradesco.Imprimir;
  end
  else
  begin
    //Boleto da Caixa
    ACBrBoletoCaixa.ListadeBoletos.Clear;
    while not QryBoletos.Eof do
    begin
      Inc(vInd);
      Titulo := ACBrBoletoCaixa.CriarTituloNaLista;
      Titulo.TotalParcelas := QryBoletos.RecordCount;

      with Titulo do
      begin
        Titulo.Parcela    := vInd;
        LocalPagamento    := 'PAGÁVEL EM QUALQUER AGÊNCIA BANCÁRIA ATÉ O VENCIMENTO';
        Vencimento        := QryBoletos.FieldByName('Vencimento').AsDateTime;
        DataDocumento     := QryBoletos.FieldByName('Emissao').AsDateTime;
        NumeroDocumento   := QryBoletos.FieldByName('Documento').AsString;
        EspecieDoc        := 'DM';
        EspecieMod        := 'R$';
        Aceite            := atNao;
        DataProcessamento := Date;

        if (QryBoletos.FieldByName('NossoNum').AsString <> '') then
          NossoNumero     := QryBoletos.FieldByName('NossoNum').AsString
        else
          NossoNumero     := GetNossoNumeroCaixa(FNota, QryBoletos.FieldByName('Documento').AsString);


        Carteira          := 'SR';
        ValorDocumento    := QryBoletos.FieldByName('Valor_Dupl').AsFloat;
        Sacado.NomeSacado := QryBoletos.FieldByName('Nome').AsString;
        Sacado.CNPJCPF    := QryBoletos.FieldByName('CGC').AsString;
        Sacado.Logradouro := QryBoletos.FieldByName('Endere').AsString;
        Sacado.Bairro     := QryBoletos.FieldByName('Comple').AsString;
        Sacado.Cidade     := QryBoletos.FieldByName('Cidade').AsString;
        Sacado.UF         := QryBoletos.FieldByName('Estado').AsString;
        Sacado.CEP        := QryBoletos.FieldByName('CEP').AsString;
        ValorAbatimento   := 0;
        DataAbatimento    := 0;
        Mensagem.Add       ('MULTA DE 2% APÓS DATA DE VENCIMENTO');
        Mensagem.Add       ('JUROS DE 0,33% AO DIA APÓS DATA DE VENCIMENTO');
        Mensagem.Add       ('SUJEITO A PROTESTOS');
      end;
      QryBoletos.Next;
    end;
    QryBoletos.Close;
    try
      ACBrBoletoCaixa.Imprimir;
    except
      on E : Exception do
        ShowMessage(E.ClassName+' com Erro : '+E.Message);
    end;
  end;
end;

procedure TFrmOpcoesBoleto.cxButton2Click(Sender: TObject);
var
  Titulo : TACBrTitulo;
  vInd   : Integer;
begin
  vInd := 0;
//  ACBrBoletoFCFRBradesco.DirLogo := ExtractFilePath(Application.ExeName);
//  ACBrBoletoFCFRBradesco.FastReportFile := ExtractFilePath(Application.ExeName) + 'BoletoCarne.fr3';
//  ACBrBoletoFCFRBradesco.LayOut := lCarne;
//
//  ACBrBoletoFCFRCaixa.DirLogo := ExtractFilePath(Application.ExeName);
//  ACBrBoletoFCFRCaixa.FastReportFile := ExtractFilePath(Application.ExeName) + 'BoletoCarne.fr3';
//  ACBrBoletoFCFRCaixa.LayOut := lCarne;

  QryBoletos.Close;
  QryBoletos.SQL.Text :=
    'Select Receber.Vencimento, Receber.Emissao, Receber.NossoNum, ' +
    ' Receber.Valor_Dupl, CliFor.Nome, CliFor.CGC, CliFor.Endere, ' +
    ' CliFor.Comple, CliFor.Cidade, CliFor.Estado, CliFor.Cep, Receber.Documento ' +
    ' From Receber ' +
    ' Inner Join CliFor on (CliFor.Nome = Receber.Nome) ' +
    ' Where Receber.NumeroNF =:pNF ' +
    ' Order By Receber.Vencimento';
  QryBoletos.ParamByName('pNF').AsString := FNota;
  QryBoletos.Open;
  QryBoletos.Last;
  QryBoletos.First;

  if (rgOpcoes.ItemIndex = 1) then
  begin
    //Boleto do Bradesco
    ACBrBoletoBradesco.ListadeBoletos.Clear;
    while not QryBoletos.Eof do
    begin
      Inc(vInd);
      Titulo := ACBrBoletoBradesco.CriarTituloNaLista;
      Titulo.TotalParcelas := QryBoletos.RecordCount;

      with Titulo do
      begin
        Titulo.Parcela    := vInd;
        LocalPagamento    := 'PAGAVEL PREFERENCIALMENTE NA REDE BRADESCO OU BRADESCO EXPRESSO';
        Vencimento        := QryBoletos.FieldByName('Vencimento').AsDateTime;
        DataDocumento     := QryBoletos.FieldByName('Emissao').AsDateTime;
        NumeroDocumento   := QryBoletos.FieldByName('Documento').AsString;
        EspecieDoc        := 'DM';
        EspecieMod        := 'R$';
        Aceite            := atNao;
        DataProcessamento := Date;

        if (QryBoletos.FieldByName('NossoNum').AsString <> '10') then
          NossoNumero     := QryBoletos.FieldByName('NossoNum').AsString
        else
          NossoNumero     := GetNossoNumeroBradesco(FNota, QryBoletos.FieldByName('Documento').AsString);


        Carteira          := '09';
        ValorDocumento    := QryBoletos.FieldByName('Valor_Dupl').AsFloat;
        Sacado.NomeSacado := QryBoletos.FieldByName('Nome').AsString;
        Sacado.CNPJCPF    := QryBoletos.FieldByName('CGC').AsString;
        Sacado.Logradouro := QryBoletos.FieldByName('Endere').AsString;
        Sacado.Bairro     := QryBoletos.FieldByName('Comple').AsString;
        Sacado.Cidade     := QryBoletos.FieldByName('Cidade').AsString;
        Sacado.UF         := QryBoletos.FieldByName('Estado').AsString;
        Sacado.CEP        := QryBoletos.FieldByName('CEP').AsString;
        ValorAbatimento   := 0;
        DataAbatimento    := 0;
        Mensagem.Add       ('MULTA DE 2% APÓS DATA DE VENCIMENTO');
        Mensagem.Add       ('JUROS DE 0,33% AO DIA APÓS DATA DE VENCIMENTO');
        Mensagem.Add       ('SUJEITO A PROTESTOS');
      end;
      QryBoletos.Next;
    end;
    QryBoletos.Close;
    try
      ACBrBoletoBradesco.Imprimir;
    except
      on E : Exception do
        ShowMessage(E.ClassName+' com Erro : '+E.Message);
    end;
  end
  else
  begin
    //Boleto da Caixa
    ACBrBoletoCaixa.ListadeBoletos.Clear;
    while not QryBoletos.Eof do
    begin
      Inc(vInd);
      Titulo := ACBrBoletoCaixa.CriarTituloNaLista;
      Titulo.TotalParcelas := QryBoletos.RecordCount;

      with Titulo do
      begin
        Titulo.Parcela    := vInd;
        LocalPagamento    := 'PAGÁVEL EM QUALQUER AGÊNCIA BANCÁRIA ATÉ O VENCIMENTO';
        Vencimento        := QryBoletos.FieldByName('Vencimento').AsDateTime;
        DataDocumento     := QryBoletos.FieldByName('Emissao').AsDateTime;
        NumeroDocumento   := QryBoletos.FieldByName('Documento').AsString;
        EspecieDoc        := 'DM';
        EspecieMod        := 'R$';
        Aceite            := atNao;
        DataProcessamento := Date;

        if (QryBoletos.FieldByName('NossoNum').AsString <> '') then
          NossoNumero     := QryBoletos.FieldByName('NossoNum').AsString
        else
          NossoNumero     := GetNossoNumeroCaixa(FNota, QryBoletos.FieldByName('Documento').AsString);


        Carteira          := 'SR';
        ValorDocumento    := QryBoletos.FieldByName('Valor_Dupl').AsFloat;
        Sacado.NomeSacado := QryBoletos.FieldByName('Nome').AsString;
        Sacado.CNPJCPF    := QryBoletos.FieldByName('CGC').AsString;
        Sacado.Logradouro := QryBoletos.FieldByName('Endere').AsString;
        Sacado.Bairro     := QryBoletos.FieldByName('Comple').AsString;
        Sacado.Cidade     := QryBoletos.FieldByName('Cidade').AsString;
        Sacado.UF         := QryBoletos.FieldByName('Estado').AsString;
        Sacado.CEP        := QryBoletos.FieldByName('CEP').AsString;
        ValorAbatimento   := 0;
        DataAbatimento    := 0;
        Mensagem.Add       ('MULTA DE 2% APÓS DATA DE VENCIMENTO');
        Mensagem.Add       ('JUROS DE 0,33% AO DIA APÓS DATA DE VENCIMENTO');
        Mensagem.Add       ('SUJEITO A PROTESTOS');
      end;
      QryBoletos.Next;
    end;
    QryBoletos.Close;
    try
      ACBrBoletoCaixa.Imprimir;
    except
      on E : Exception do
        ShowMessage(E.ClassName+' com Erro : '+E.Message);
    end;
  end;
end;

function TFrmOpcoesBoleto.GetNossoNumeroCaixa(pNF, pDoc: String): String;
var
  vUltimoNN : Integer;
begin
  vUltimoNN := StrToInt(LerIni('BOLETO_CAIXA', 'NOSSONUMERO_ULTIMO'));
  vUltimoNN := vUltimoNN + 1;
  GravarIni('BOLETO_CAIXA', 'NOSSONUMERO_ULTIMO', CompletarZerosEsquerda(vUltimoNN,15));
  //Atualiza no Banco de Dados
  QryAux.SQL.Text :=
    'Update Receber Set NossoNum =:pNN ' +
    ' Where NumeroNF =:pNF And Documento=:pDoc ';
  QryAux.ParamByName('pNN' ).AsString := CompletarZerosEsquerda(vUltimoNN,15);
  QryAux.ParamByName('pNF' ).AsString := pNF;
  QryAux.ParamByName('pDOC').AsString := pDoc;
  QryAux.ExecSQL;
  QryAux.Close;
  QryAux.Transaction.CommitRetaining;

  Result := CompletarZerosEsquerda(vUltimoNN,15);
end;

function TFrmOpcoesBoleto.GetNossoNumeroBradesco(pNF, pDoc: String): String;
var
  vUltimoNN : Integer;
begin
  vUltimoNN := StrToInt(LerIni('BOLETO_BRADESCO', 'NOSSONUMERO_ULTIMO'));
  vUltimoNN := vUltimoNN + 1;
  GravarIni('BOLETO_BRADESCO', 'NOSSONUMERO_ULTIMO', CompletarZerosEsquerda(vUltimoNN,11));

  //Atualiza no Banco de Dados
  QryAux.SQL.Text :=
    'Update Receber Set NossoNum =:pNN ' +
    ' Where NumeroNF =:pNF And Documento=:pDoc ';
  QryAux.ParamByName('pNN' ).AsString := CompletarZerosEsquerda(vUltimoNN,11);
  QryAux.ParamByName('pNF' ).AsString := pNF;
  QryAux.ParamByName('pDOC').AsString := pDoc;
  QryAux.ExecSQL;
  QryAux.Close;
  QryAux.Transaction.CommitRetaining;

  Result := CompletarZerosEsquerda(vUltimoNN,11);
end;

end.
