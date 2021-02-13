unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    DBGrid1: TDBGrid;
    QOperacoes: TFDQuery;
    QOperacoesCLIENTE: TStringField;
    QOperacoesNROPERACAO: TStringField;
    QOperacoesREMESSA: TStringField;
    QOperacoesMCI: TFMTBCDField;
    QOperacoesCOBRADOR: TFMTBCDField;
    QOperacoesSTATUS: TStringField;
    QOperacoesBANCO: TFMTBCDField;
    QOperacoesAGENCIA: TStringField;
    QOperacoesCONTA: TStringField;
    QOperacoesNRFICHA: TFMTBCDField;
    QOperacoesDEVOLVER: TStringField;
    QOperacoesMOTIVO: TFMTBCDField;
    QOperacoesDEVOLVERBB: TStringField;
    QOperacoesMOTIVOBB: TFMTBCDField;
    QOperacoesREMESSABB: TFMTBCDField;
    QOperacoesCODPRODUTO: TStringField;
    QOperacoesMODALIDADEBB: TStringField;
    QOperacoesDATAGRAV: TStringField;
    QOperacoesDATAVENCTO: TDateTimeField;
    QOperacoesDATADEVOLUCAO: TStringField;
    QOperacoesVALORDIVIDA: TFMTBCDField;
    QOperacoesVALORMINIMO: TFMTBCDField;
    QOperacoesVALORVENCIDO: TFMTBCDField;
    QOperacoesVALORRECEBIDO: TFMTBCDField;
    QOperacoesVALORNOMINAL: TFMTBCDField;
    QOperacoesVALORABATIMENTO: TFMTBCDField;
    QOperacoesVALORPROTESTO: TFMTBCDField;
    QOperacoesPERC_DESCONTO: TFMTBCDField;
    QOperacoesPERC_MULTA: TFMTBCDField;
    QOperacoesPERC_ENCARGO: TFMTBCDField;
    QOperacoesAGENCIANOVA: TStringField;
    QOperacoesOPERACAONOVA: TStringField;
    QOperacoesDATACELEBRACAO: TStringField;
    QOperacoesMOTIVORETOMADA: TStringField;
    QOperacoesDATAREC: TStringField;
    QOperacoesDATAFIMTERCERIZACAO: TStringField;
    QOperacoesNRTERCERIZACAO: TFMTBCDField;
    QOperacoesTIPOOPERACAO: TStringField;
    QOperacoesATUALIZADOATE: TStringField;
    QOperacoesFORMAATUALIZACAO: TStringField;
    QOperacoesCONDNEGOCIAIS: TStringField;
    QOperacoesGARANTIASREAIS: TStringField;
    QOperacoesPRAZOPERMPARC: TStringField;
    QOperacoesTIPOPAGTO: TStringField;
    QOperacoesF1NOME: TStringField;
    QOperacoesF1ENDERECO: TStringField;
    QOperacoesF1BAIRRO: TStringField;
    QOperacoesF1CIDADE: TStringField;
    QOperacoesF1UF: TStringField;
    QOperacoesF1CEP: TStringField;
    QOperacoesF1FONE: TStringField;
    QOperacoesF1FAX: TStringField;
    QOperacoesF2NOME: TStringField;
    QOperacoesF2ENDERECO: TStringField;
    QOperacoesF2BAIRRO: TStringField;
    QOperacoesF2CIDADE: TStringField;
    QOperacoesF2UF: TStringField;
    QOperacoesF2CEP: TStringField;
    QOperacoesF2FONE: TStringField;
    QOperacoesF2FAX: TStringField;
    QOperacoesHISTORICO: TBlobField;
    QOperacoesNR_CARTA_ACORDO: TFMTBCDField;
    QOperacoesDIAS_ATRASO: TFMTBCDField;
    QOperacoesDATA_MODIF: TStringField;
    QOperacoesCOD_CLASSIFICACAO: TFMTBCDField;
    QOperacoesVALORJURO: TFMTBCDField;
    QOperacoesVALORMULTA: TFMTBCDField;
    QOperacoesVALORHONORARIO: TFMTBCDField;
    QOperacoesFATORPARCELAMENTO: TFMTBCDField;
    QOperacoesENVIOBANCO: TStringField;
    QOperacoesPERC_HONORARIOS: TFMTBCDField;
    QOperacoesPERC_JUROS: TFMTBCDField;
    QOperacoesID_1: TStringField;
    QOperacoesID_2: TStringField;
    QOperacoesID_3: TStringField;
    QOperacoesF1CPF: TStringField;
    QOperacoesF2CPF: TStringField;
    QOperacoesNUMERONOTA: TStringField;
    QOperacoesNRPROCESSO: TStringField;
    QOperacoesPERC_JUROS_CONTRATO: TFMTBCDField;
    QOperacoesUSUARIO_LIB_DESC: TFMTBCDField;
    QOperacoesHORA_LIB_DESC: TStringField;
    QOperacoesVALORIOF: TFMTBCDField;
    QOperacoesVALORCORRECAO: TFMTBCDField;
    QOperacoesID_4: TStringField;
    QOperacoesGRUPO: TStringField;
    QOperacoesCLASSEPRINCIPAL: TStringField;
    QOperacoesCLASSECONSUMO: TStringField;
    QOperacoesTIPOARRECADACAO: TStringField;
    QOperacoesSCORE: TStringField;
    QOperacoesDEVOLUCAO_USR: TFMTBCDField;
    QOperacoesLIQUIDACAO_DATA: TStringField;
    QOperacoesLIQUIDACAO_USR: TFMTBCDField;
    QOperacoesDTA_CAD: TStringField;
    QOperacoesUSR_CAD: TFMTBCDField;
    QOperacoesREGISTRO: TIntegerField;
    QOperacoesCREDOR: TStringField;
    QOperacoesULTIMO_ACIONAMENTO: TDateTimeField;
    QOperacoesOPERADOREMACAO: TStringField;
    QOperacoesDATAHORAACAO: TSQLTimeStampField;
    QClientesCredores: TFDQuery;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    Button1: TButton;
    QClientesCredorescodigo: TFDAutoIncField;
    QClientesCredorescod_cliente: TIntegerField;
    QClientesCredorescod_credor: TIntegerField;
    QBuscaCliente: TFDQuery;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    function RetornaCodCliente(pCPFCNPJ : string) : integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  with QOperacoes do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from operacoes GROUP BY cliente');
    Open;
  end;
  QOperacoes.First;

  with QClientesCredores do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from clientes_credores limit 0');
    Open;
  end;
  while not QOperacoes.Eof do
  begin
    Label1.Caption := 'TOTAL: ' + QOperacoes.RecordCount.ToString;
    QClientesCredores.Append;
    QClientesCredorescod_cliente.AsInteger := RetornaCodCliente(QOperacoesCLIENTE.AsString);
    QClientesCredorescod_credor.AsInteger := QOperacoesCREDOR.AsInteger;
    QClientesCredores.Post;
    QOperacoes.Next;
  end;
end;

function TForm1.RetornaCodCliente(pCPFCNPJ: string): integer;
begin
  with QBuscaCliente do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                  ');
    SQL.Add('  c.CODIGO              ');
    SQL.Add('FROM                    ');
    SQL.Add('  clientes c            ');
    SQL.Add('WHERE c.CPF_CNPJ = :CPF ');
    ParamByName('CPF').AsString := pCPFCNPJ;
    Open;
  end;
  Result := QBuscaCliente.Fields[0].AsInteger;
end;

end.
