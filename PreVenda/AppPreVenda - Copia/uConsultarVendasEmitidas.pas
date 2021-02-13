unit uConsultarVendasEmitidas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, 
  Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, 
  cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsCore, 
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, 
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, 
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, 
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, 
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, 
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, 
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, 
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, 
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, 
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, 
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, 
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, 
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, 
  Vcl.StdCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, 
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, 
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, 
  cxGrid, Vcl.Menus, cxButtons, cxCurrencyEdit, ACBrBoleto, ACBrBoletoFCFR, 
  ACBrBase, AcbrUtil, cxButtonEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, 
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, 
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, 
  FireDAC.Comp.Client, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFrmConsultarVendasEmitidas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    edtDataInicial: TcxDateEdit;
    Label1: TLabel;
    edtDataFinal: TcxDateEdit;
    Label2: TLabel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    btnListarNotas: TcxButton;
    QryNotas: TFDQuery;
    dsNotas: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    btnNota: TcxButton;
    btnBoleto: TcxButton;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    QryCancelar: TFDQuery;
    edtNumNF: TcxTextEdit;
    Label3: TLabel;
    cxButton1: TcxButton;
    QryEsoque: TFDQuery;
    procedure btnListarNotasClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnNotaClick(Sender: TObject);
    procedure btnBoletoClick(Sender: TObject);
    procedure cxGrid1DBTableView1Column7PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultarVendasEmitidas: TFrmConsultarVendasEmitidas;

implementation
uses
  uDMPrincipal, uPreVenda, uOpcoesBoleto, uFuncoes;

{$R *.dfm}

procedure TFrmConsultarVendasEmitidas.btnListarNotasClick(Sender: TObject);
begin
  if (edtDataInicial.EditValue = Null) And (edtDataFinal.EditValue = Null) then
    raise Exception.Create('Informe a Data Inicial e Data Final de Emissão.');

  QryNotas.Close;
  QryNotas.SQL.Text :=
    'Select NumeroNF, Emissao, Cliente, Total, operacao, '+
    ' case  ' +
    ' When flg_imp = ''S'' Then ''Sim'' Else ''Não'' End as impressa ' +
    ' From Vendas Where Emissao Between :pDatIni And :pDatFim '+
    ' Order By Emissao desc, NumeroNF desc';
  QryNotas.ParamByName('pDatIni').AsDate := edtDataInicial.Date;
  QryNotas.ParamByName('pDatFim').AsDate := edtDataFinal.Date;
  QryNotas.Open;
end;

procedure TFrmConsultarVendasEmitidas.btnNotaClick(Sender: TObject);
begin
  FrmPreVenda.ImprimirDocumentoVenda(dsNotas.DataSet.Fields[0].AsString);
end;

procedure TFrmConsultarVendasEmitidas.cxButton1Click(Sender: TObject);
begin
  if (Trim(edtNumNF.Text) = '') then
    raise Exception.Create('Informe o Nº da Nota Fiscal.');

  QryNotas.Close;
  QryNotas.SQL.Text :=
    'Select NumeroNF, Emissao, Cliente, Total, operacao, '+
    ' case  ' +
    ' When flg_imp = ''S'' Then ''Sim'' Else ''Não'' End as impressa ' +
    ' From Vendas Where NumeroNF Like :pNF '+
    ' Order By Emissao desc, NumeroNF desc';
  QryNotas.ParamByName('pNF').AsString := '%' + edtNumNF.Text + '%';
  QryNotas.Open;
end;

procedure TFrmConsultarVendasEmitidas.cxGrid1DBTableView1Column7PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if Copy(dsNotas.DataSet.FieldByName('NumeroNF').AsString,1,3) <> 'SIM' then
    raise Exception.Create('Para cancelar uma NF-e use o sistema SMALL');

  if Application.MessageBox('Confirma esse Cancelamento?', 'Atenção', MB_YESNO + MB_ICONQUESTION) = id_yes then
  begin
    QryCancelar.SQL.Text :=
      'Delete from Vendas Where NumeroNF =:pCodigo';
    QryCancelar.ParamByName('pCodigo').AsString := dsNotas.DataSet.FieldByName('NumeroNF').AsString;
    QryCancelar.ExecSQL;
    QryCancelar.Close;

    QryCancelar.SQL.Text :=
      'Select * from Itens001 Where NumeroNF =:pCodigo';
    QryCancelar.ParamByName('pCodigo').AsString := dsNotas.DataSet.FieldByName('NumeroNF').AsString;
    QryCancelar.Open;
    QryCancelar.First;
    while not QryCancelar.Eof do
    begin
      QryEsoque.SQL.Text := 'Update Estoque Set Qtd_atual = (Qtd_Atual + :pQtd) Where Codigo =:pCodigo';
      QryEsoque.ParamByName('pQtd').AsInteger := QryCancelar.FieldByName('quantidade').AsInteger;
      QryEsoque.ParamByName('pCodigo').AsString := QryCancelar.FieldByName('codigo').AsString;
      QryEsoque.ExecSQL;
      QryEsoque.Close;

      QryCancelar.Next;
    end;


    QryCancelar.SQL.Text :=
      'Delete from Receber Where NumeroNF =:pCodigo';
    QryCancelar.ParamByName('pCodigo').AsString := dsNotas.DataSet.FieldByName('NumeroNF').AsString;
    QryCancelar.ExecSQL;
    QryCancelar.Close;

    QryCancelar.SQL.Text :=
      'Delete from Caixa Where historico like :pCodigo';
    QryCancelar.ParamByName('pCodigo').AsString := '%' + Copy(dsNotas.DataSet.FieldByName('NumeroNF').AsString,4,12) + '%';
    QryCancelar.ExecSQL;
    QryCancelar.Close;

    QryCancelar.Transaction.Commit;

    btnListarNotasClick(Self);

    Application.MessageBox('Venda Cancelada com Sucesso', 'Atenção', MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure TFrmConsultarVendasEmitidas.btnBoletoClick(Sender: TObject);
var
  FrmOpcoesBoleto : TFrmOpcoesBoleto;
begin
  FrmOpcoesBoleto := TFrmOpcoesBoleto.Create(nil);
  try
    FrmOpcoesBoleto.FNota := dsNotas.DataSet.FieldByName('NumeroNF').AsString;
    FrmOpcoesBoleto.ShowModal;
  finally
    FrmOpcoesBoleto.Free;
  end;
end;

procedure TFrmConsultarVendasEmitidas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QryNotas.Close;
  Action := caFree;
end;

procedure TFrmConsultarVendasEmitidas.FormShow(Sender: TObject);
var
  vInfoBol : String;
begin
  vInfoBol := LerIni('BOLETO_BRADESCO', 'INFOBOL');
  if (vInfoBol = '1') then
  begin
    btnBoleto.Visible := True;
    btnNota.Left := 497;
  end
  else
  begin
    btnBoleto.Visible := False;
    btnNota.Left := 685;
  end;

  edtDataInicial.Date := Date-1;
  edtDataFinal.Date   := Date;
  btnListarNotasClick(Self);

end;

end.
