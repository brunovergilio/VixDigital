unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Soap.InvokeRegistry,
  System.Net.URLClient, Soap.Rio, Soap.SOAPHTTPClient, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    HTTPRIO1: THTTPRIO;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses ClienteService1;

procedure TForm1.Button1Click(Sender: TObject);
var
  vClienteService : ClienteService;
  vCliente : cliente;
  vClientePesquisa : pesquisarCliente;
  vClientePesquisa2 : pesquisarLstCliente;
begin
//  HTTPRIO1.HTTPWebNode.UserName := 'luanna.cer';
//  HTTPRIO1.HTTPWebNode.Password := 'Ativos@1';
  HTTPRIO1.HTTPWebNode.UserName := 'gilvan.pereira2';
  HTTPRIO1.HTTPWebNode.Password := '170130';

  vClientePesquisa := pesquisarCliente.Create;
  vClientePesquisa.cpfCnpj := '16478523748';

//  vClientePesquisa2 := pesquisarLstCliente.Create;
//  vClientePesquisa2.cpfCnpj := '10584292996';
  vClienteService := GetClienteService(False,
                                       'http://10.10.100.34:8680/rico-webservice/ClienteService?wsdl',
                                       HTTPRIO1);
  vClienteService.pesquisarCliente(vClientePesquisa);

  try
    //vClienteService.pesquisarCliente(vClientePesquisa); //'','78644218000176');
  except
    on exc : exception do
      Memo1.Lines.Add(exc.Message);
  end;



//  vCliente := GetClienteService(False,
//                                       'https://hmg-webservices.ativossa.com.br/rico-webservice/ClienteService?wsdl',
//                                       HTTPRIO1).pesquisarCliente('0000000000007375','');

  //vClienteService.pesquisarCliente('','78644218000176');

  //vCliente := vClienteService.
 // Memo1.Lines.Add(vCliente.nome);



end;

end.
