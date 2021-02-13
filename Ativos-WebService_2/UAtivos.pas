unit UAtivos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Soap.InvokeRegistry,
  System.Net.URLClient, Vcl.StdCtrls, Soap.Rio, Soap.SOAPHTTPClient;

type
  TfrmAtivosteste = class(TForm)
    HTTPRIO1: THTTPRIO;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtivosteste: TfrmAtivosteste;

implementation

{$R *.dfm}

uses ClienteService1;

procedure TfrmAtivosteste.Button1Click(Sender: TObject);
var
  LClienteService : ClienteService;
  LLstCliente: pesquisarLstClienteResponse;
  LCliente: cliente;
  LEndereco: endereco;
  LAcordo: acordo;
begin
  HTTPRIO1.HTTPWebNode.UserName := 'gilvan.pereira2';
  HTTPRIO1.HTTPWebNode.Password := '170130';

  LClienteService := GetClienteService(False,
                                       'https://hmg-webservices.ativossa.com.br/rico-webservice/ClienteService?wsdl',
                                       HTTPRIO1);

  LLstCliente :=  LClienteService.pesquisarLstCliente('','16478523748');

  Memo1.Lines.Clear;
  Memo1.Lines.Add(Format('Resposta da consulta "pesquisarLstCliente" contem (%d) registro(s)', [Length(LLstCliente)]));

  for LCliente in LLstCliente do
  begin
    Memo1.Lines.Add('');
    Memo1.Lines.Add('*****************************************');
    Memo1.Lines.Add('ID Oper.: ' + IntToStr(Lcliente.idOperacao));
    Memo1.Lines.Add('Nome....: ' + Lcliente.nome);
    Memo1.Lines.Add('NDG.....: ' + Lcliente.ndg);
    Memo1.Lines.Add('CPFCNPJ.: ' + Lcliente.cpfCnpj);
    if Lcliente.tipoPessoa = tipoPessoa(0) then
      Memo1.Lines.Add('Tipo....: Física')
    else
      Memo1.Lines.Add('Tipo....: Jurídica');

    Memo1.Lines.Add('Dt.Nasc.: ' + DateToStr(Lcliente.dataNascimento.AsDateTime));
    Memo1.Lines.Add('Email...: ' + Lcliente.email);

    for LEndereco in LCliente.enderecos do
    begin
      Memo1.Lines.Add('***************Endereço***************');
      Memo1.Lines.Add('Rua...: ' + LEndereco.logradouro);
      Memo1.Lines.Add('Nro...: ' + LEndereco.numero);
      Memo1.Lines.Add('Bairro: ' + LEndereco.bairro);
      Memo1.Lines.Add('Cidade: ' + LEndereco.cidade);
      Memo1.Lines.Add('');
    end;

    for LAcordo in LCliente.acordos do
    begin
      Memo1.Lines.Add('***************Acordo***************');
      Memo1.Lines.Add('Nro.Acordo....: ' + IntToStr(LAcordo.numeroAcordo));
      Memo1.Lines.Add('Dt.Acordo.....: ' + DateTostr(LAcordo.dataAcordo.AsDateTime));
      Memo1.Lines.Add('Dt.Aprovação..: ' + DateTostr(LAcordo.dataAprovacao.AsDateTime));
      Memo1.Lines.Add('Resp.Aprovação: ' + LAcordo.responsavelAprovacao);
      Memo1.Lines.Add('');
    end;

  end;
end;

end.
