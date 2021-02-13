unit ulocalizacaoavancadadeclientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, 
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.TabNotBk, Vcl.StdCtrls, Vcl.Buttons, 
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, AdvEdit, advlued, DBAdvLe, 
  RzButton, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, 
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, 
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, 
  FireDAC.DBX.Migrate;

type
  Tfrmlocalizacaoavancadadeclientes = class(TForm)
    uniscript: TFDQuery;
    uniscriptCODIGO: TFloatField;
    uniscriptNOME: TStringField;
    uniscriptTIPOPESSOA: TStringField;
    uniscriptCPF: TStringField;
    uniscriptCGC: TStringField;
    uniscriptCONTACORRENTE: TStringField;
    uniscriptREGIAO: TFloatField;
    uniscriptENDERECO: TStringField;
    uniscriptNUMERO: TStringField;
    uniscriptSETOR: TStringField;
    uniscriptCIDADE: TStringField;
    uniscriptUF: TStringField;
    uniscriptCEP: TStringField;
    uniscriptFONE: TStringField;
    uniscriptFAXCEL: TStringField;
    uniscriptENDENDERECO_1: TStringField;
    uniscriptNUMERO_1: TStringField;
    uniscriptSETOR_1: TStringField;
    uniscriptCIDADE_1: TStringField;
    uniscriptUF_1: TStringField;
    uniscriptCEP_1: TStringField;
    uniscriptFONE_1: TStringField;
    uniscriptFAXCEL_1: TStringField;
    uniscriptCONTATO_1: TStringField;
    uniscriptFOTO: TBlobField;
    uniscriptCONTATO: TStringField;
    uniscriptMCI: TFloatField;
    uniscriptDEVOLVERBB: TStringField;
    uniscriptREMESSABB: TFloatField;
    uniscriptOBS: TBlobField;
    uniscriptDTA_NASCIMENTO: TSQLTimeStampField;
    uniscriptCOD_CLASSIFICACAO: TFloatField;
    uniscriptDATA_MODIF: TSQLTimeStampField;
    uniscriptPONTO_REF1: TStringField;
    uniscriptPONTO_REF2: TStringField;
    uniscriptAGENCIA: TStringField;
    uniscriptLOCALIDADE: TStringField;
    uniscriptSETOR_FAT: TStringField;
    uniscriptROTA: TStringField;
    uniscriptQUADRA: TStringField;
    uniscriptLOTE: TStringField;
    uniscriptSUBLOTE: TStringField;
    uniscriptEND_PREFERENCIAL: TStringField;
    uniscriptFONE_PREFERENCIAL: TStringField;
    uniscriptE_MAIL: TStringField;
    uniscriptE_MAIL1: TStringField;
    uniscriptNRIDENTIDADE: TStringField;
    uniscriptSEXO: TStringField;
    uniscriptLOCAL_TRABALHO: TStringField;
    uniscriptCARGO_TRABALHO: TStringField;
    uniscriptSALARIO_TRABALHO: TFloatField;
    uniscriptNATURALIDADE: TStringField;
    uniscriptESTADOCIVIL: TStringField;
    uniscriptSCORE: TFloatField;
    uniscriptBEHAVIOR: TFloatField;
    uniscriptMOTIVOINADIMPLENCIA: TFloatField;
    uniscriptDTA_CAD: TSQLTimeStampField;
    uniscriptUSR_CAD: TFloatField;
    uniscriptMOTIVORETORNO: TFloatField;
    uniscriptCODIGO_EXTERNO: TStringField;
    uniscriptSCORE1: TFloatField;
    uniscriptORIGEMDOSDADOS: TStringField;
    uniscriptCOLUMN2: TStringField;
    Panel1: TPanel;
    Panel2: TPanel;
    TabbedNotebook1: TTabbedNotebook;
    Notebook1: TNotebook;
    Notebook2: TNotebook;
    Notebook3: TNotebook;
    Notebook4: TNotebook;
    Notebook5: TNotebook;
    Notebook6: TNotebook;
    Notebook7: TNotebook;
    Notebook8: TNotebook;
    Notebook9: TNotebook;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    UniDSQClientes: TDataSource;
    uniQClientes: TFDQuery;
    JvDBGrid1: TJvDBGrid;
    Edit2: TEdit;
    BitBtn2: TBitBtn;
    Edit3: TEdit;
    BitBtn3: TBitBtn;
    Edit4: TEdit;
    BitBtn4: TBitBtn;
    Edit5: TEdit;
    BitBtn5: TBitBtn;
    Edit7: TEdit;
    BitBtn7: TBitBtn;
    Edit8: TEdit;
    BitBtn8: TBitBtn;
    Edit9: TEdit;
    BitBtn9: TBitBtn;
    Edit10: TEdit;
    BitBtn10: TBitBtn;
    Edit11: TEdit;
    BitBtn11: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit6: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit14: TEdit;
    Edit15: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    BitBtn6: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    Label9: TLabel;
    Label10: TLabel;
    DBAdvLUEdit1: TDBAdvLUEdit;
    DBAdvLUEdit2: TDBAdvLUEdit;
    GroupBox1: TGroupBox;
    DBAdvLUEdit3: TDBAdvLUEdit;
    DBAdvLUEdit4: TDBAdvLUEdit;
    DBAdvLUEdit5: TDBAdvLUEdit;
    DBAdvLUEdit6: TDBAdvLUEdit;
    DBAdvLUEdit7: TDBAdvLUEdit;
    DBAdvLUEdit8: TDBAdvLUEdit;
    DBAdvLUEdit9: TDBAdvLUEdit;
    DBAdvLUEdit10: TDBAdvLUEdit;
    GroupBox2: TGroupBox;
    DBAdvLUEdit11: TDBAdvLUEdit;
    DBAdvLUEdit12: TDBAdvLUEdit;
    DBAdvLUEdit13: TDBAdvLUEdit;
    DBAdvLUEdit14: TDBAdvLUEdit;
    DBAdvLUEdit15: TDBAdvLUEdit;
    DBAdvLUEdit16: TDBAdvLUEdit;
    DBAdvLUEdit17: TDBAdvLUEdit;
    DBAdvLUEdit18: TDBAdvLUEdit;
    DBAdvLUEdit19: TDBAdvLUEdit;
    DBAdvLUEdit20: TDBAdvLUEdit;
    Panel3: TPanel;
    btnfiltratexto: TRzToolButton;
    UniDataSource1: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure btnfiltratextoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlocalizacaoavancadadeclientes: Tfrmlocalizacaoavancadadeclientes;

implementation

{$R *.dfm}

uses
  FClientes, uCliente;

procedure Tfrmlocalizacaoavancadadeclientes.BitBtn10Click(Sender: TObject);
begin
  uniQClientes.Close;
  uniQClientes.Sql.Text := 'select * from clientes_referencia ' +
                           'inner join clientes on clientes.codigo = clientes_referencia.cliente ' +
                           'where UPPER(clientes_referencia.nome) like :PNOME_REFERENCIA';
                           uniQClientes.ParambyName('PNOME_REFERENCIA').ASSTRING := '%' + EDIT7.TEXT + '%';
  uniQClientes.Open;
  uniQClientes.First;
end;

procedure Tfrmlocalizacaoavancadadeclientes.BitBtn11Click(Sender: TObject);
begin
  uniQClientes.Close;
  uniQClientes.Sql.Text := 'select * from clientes_referencia ' +
                           'inner join clientes on clientes.codigo = clientes_referencia.cliente ' +
                           'where UPPER(clientes_referencia.fone1) like :PNOME_FONE1';
                           uniQClientes.ParambyName('PNOME_FONE1').ASSTRING := '%' + EDIT10.TEXT + '%';
  uniQClientes.Open;
  uniQClientes.First;
end;

procedure Tfrmlocalizacaoavancadadeclientes.BitBtn12Click(Sender: TObject);
begin
  uniQClientes.Close;
  uniQClientes.Sql.Text := 'select * from operacoes ' +
                           'inner join clientes on clientes.codigo = operacoes.cliente ' +
                           'where UPPER(operacoes.nrficha) like :ppar';
                           uniQClientes.ParambyName('ppar').ASSTRING := EDIT12.TEXT + '%';
  uniQClientes.Open;
  uniQClientes.First;
end;

procedure Tfrmlocalizacaoavancadadeclientes.BitBtn14Click(Sender: TObject);
begin
  uniQClientes.Close;
  uniQClientes.Sql.Text := 'select * from operacoes ' +
                           'inner join clientes on clientes.codigo = operacoes.cliente ' +
                           'where UPPER(operacoes.nr_carta_acordo) like :ppar';
                           uniQClientes.ParambyName('ppar').ASSTRING := EDIT14.TEXT + '%';
  uniQClientes.Open;
  uniQClientes.First;

end;

procedure Tfrmlocalizacaoavancadadeclientes.BitBtn15Click(Sender: TObject);
begin
  uniQClientes.Close;
  uniQClientes.Sql.Text := 'select * from operacoes ' +
                           'inner join clientes on clientes.codigo = operacoes.cliente ' +
                           'where UPPER(operacoes.conta) like :ppar';
                           uniQClientes.ParambyName('ppar').ASSTRING := EDIT15.TEXT + '%';
  uniQClientes.Open;
  uniQClientes.First;
end;

procedure Tfrmlocalizacaoavancadadeclientes.BitBtn1Click(Sender: TObject);
begin
  uniQClientes.Close;
  uniQClientes.Sql.Text := 'select * from clientes where upper(nome) like (''%' + EDIT1.TEXT + '%'') order by nome';
  uniQClientes.Open;
  uniQClientes.First;
end;

procedure Tfrmlocalizacaoavancadadeclientes.BitBtn2Click(Sender: TObject);
begin
  uniQClientes.Close;
  uniQClientes.Sql.Text := 'select * from clientes where upper(codigo) like (''%' + EDIT2.TEXT + '%'') order by nome';
  uniQClientes.Open;
  uniQClientes.First;
end;

procedure Tfrmlocalizacaoavancadadeclientes.BitBtn3Click(Sender: TObject);
begin
  uniQClientes.Close;
  uniQClientes.Sql.Text := 'select * from clientes where upper(cnpj) like (''%' + EDIT3.TEXT + '%'') order by nome';
  uniQClientes.Open;
  uniQClientes.First;
end;

procedure Tfrmlocalizacaoavancadadeclientes.BitBtn4Click(Sender: TObject);
begin
  uniQClientes.Close;
  uniQClientes.Sql.Text := 'select * from clientes where upper(fone) like (''%' + EDIT4.TEXT + '%'') order by nome';
  uniQClientes.Open;
  uniQClientes.First;
end;

procedure Tfrmlocalizacaoavancadadeclientes.BitBtn5Click(Sender: TObject);
begin
  uniQClientes.Close;
  uniQClientes.Sql.Text := 'select * from clientes where upper(e_mail) like (''%' + EDIT5.TEXT + '%'') order by nome';
  uniQClientes.Open;
  uniQClientes.First;
end;

procedure Tfrmlocalizacaoavancadadeclientes.BitBtn6Click(Sender: TObject);
begin
  uniQClientes.Close;
  uniQClientes.Sql.Text := 'select * from operacoes ' +
                           'inner join clientes on clientes.codigo = operacoes.cliente ' +
                           'where UPPER(operacoes.nroperacao) like :ppar';
                           uniQClientes.ParambyName('ppar').ASSTRING := EDIT6.TEXT + '%';
  uniQClientes.Open;
  uniQClientes.First;
end;

procedure Tfrmlocalizacaoavancadadeclientes.BitBtn7Click(Sender: TObject);
begin
  uniQClientes.Close;
  uniQClientes.Sql.Text := 'select * from clientes_referencia ' +
                           'inner join clientes on clientes.codigo = clientes_referencia.cliente ' +
                           'where UPPER(clientes_referencia.cpf) like :PNOME_cpf';
                           uniQClientes.ParambyName('PNOME_cpf').ASSTRING := '%' + EDIT11.TEXT + '%';
  uniQClientes.Open;
  uniQClientes.First;
end;

procedure Tfrmlocalizacaoavancadadeclientes.BitBtn8Click(Sender: TObject);
begin
  uniQClientes.Close;
  uniQClientes.Sql.Text := 'select * from clientes where upper(cpf) like (''%' + EDIT8.TEXT + '%'') order by nome';
  uniQClientes.Open;
  uniQClientes.First;
end;

procedure Tfrmlocalizacaoavancadadeclientes.BitBtn9Click(Sender: TObject);
begin
  uniQClientes.Close;
  uniQClientes.Sql.Text := 'select * from clientes where upper(mci) like (''%' + EDIT9.TEXT + '%'') order by nome';
  uniQClientes.Open;
  uniQClientes.First;
end;

procedure Tfrmlocalizacaoavancadadeclientes.btnfiltratextoClick(
  Sender: TObject);
begin
FrmClientes.uniQClientes.Close;
FrmClientes.uniQClientes.Sql.Text := 'select * from clientes where codigo = :pcodigo';
                                       FrmClientes.uniQClientes.ParambyName('pcodigo').Value := uniQClientes.fieldbyName('codigo').Value;
FrmClientes.uniQClientes.Open;

frmclientescadastro.showmodal;
FrmClientes.uniQClientes.Close;
end;

procedure Tfrmlocalizacaoavancadadeclientes.Edit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = vk_return then BitBTN1Click(Sender);
end;

procedure Tfrmlocalizacaoavancadadeclientes.FormActivate(Sender: TObject);
begin
TabbedNotebook1.PageIndex := 0;
end;

end.
