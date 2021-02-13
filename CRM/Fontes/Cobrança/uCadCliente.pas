unit uCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, dxBarBuiltInMenu, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPC, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxCurrencyEdit, cxDBEdit;

type
  TfrmCadCliente = class(TForm)
    Panel3: TPanel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    cxTabSheet2: TcxTabSheet;
    cxPageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    DBMemo1: TDBMemo;
    Label36: TLabel;
    cxPageControl3: TcxPageControl;
    cxTabSheet6: TcxTabSheet;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    cxTabSheet7: TcxTabSheet;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    QClassificacao: TFDQuery;
    QInadimplencia: TFDQuery;
    dsClassificacao: TDataSource;
    dsInadimplencia: TDataSource;
    QClassificacaoDESCRICAO: TStringField;
    QClassificacaoDTA_CAD: TSQLTimeStampField;
    QClassificacaoUSUARIO: TFMTBCDField;
    QClassificacaoDATA_MODIF: TSQLTimeStampField;
    QClassificacaoATIVO: TStringField;
    QClassificacaoSENHA_REMOVER_CLASSIFICACAO: TStringField;
    QClassificacaoSENHA_INSERIR_CLASSIFICACAO: TStringField;
    QInadimplenciaTIPO: TFMTBCDField;
    QInadimplenciaDESCRICAO: TStringField;
    QInadimplenciaCONTADOR_REMESSA: TFMTBCDField;
    QInadimplenciaCONTADOR_RETORNO: TFMTBCDField;
    QInadimplenciaCODIGO_ENTIDADE: TStringField;
    QInadimplenciaCODIGO_ASSOCIADO: TStringField;
    QInadimplenciaCODIGO: TFMTBCDField;
    QClassificacaoCODIGO: TFMTBCDField;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLookupComboBox2: TcxLookupComboBox;
    cxTabSheet5: TcxTabSheet;
    DBEdit30: TDBEdit;
    Label37: TLabel;
    SpeedButton3: TSpeedButton;
    Label38: TLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Label39: TLabel;
    MaskEdit1: TMaskEdit;
    Label40: TLabel;
    ComboBox1: TComboBox;
    DBEdit36: TDBEdit;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    Label45: TLabel;
    DBEdit39: TDBEdit;
    Label46: TLabel;
    DBEdit40: TDBEdit;
    Label47: TLabel;
    DBEdit41: TDBEdit;
    Label48: TLabel;
    DBEdit42: TDBEdit;
    Label49: TLabel;
    DBEdit43: TDBEdit;
    Label50: TLabel;
    Label51: TLabel;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    Label52: TLabel;
    DBEdit46: TDBEdit;
    Label53: TLabel;
    DBEdit47: TDBEdit;
    Label54: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    ComboBox2: TComboBox;
    cxTabSheet8: TcxTabSheet;
    Label55: TLabel;
    DBEdit48: TDBEdit;
    Label56: TLabel;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    Label57: TLabel;
    Label58: TLabel;
    DBEdit51: TDBEdit;
    Label59: TLabel;
    DBEdit52: TDBEdit;
    Label60: TLabel;
    DBEdit53: TDBEdit;
    cxTabSheet9: TcxTabSheet;
    cbxComissao: TComboBox;
    Label61: TLabel;
    QComissao: TFDQuery;
    Label62: TLabel;
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit37Exit(Sender: TObject);
    procedure DBEdit44Exit(Sender: TObject);
    procedure DBEdit45Exit(Sender: TObject);
  private
    { Private declarations }
    procedure GravaOperacao;
    procedure CarregaComissao;
    procedure GravaClientesBancos(pCodCliente, pCodBanco : integer);
    function ExisteReferencia(pCodCliente : integer) : boolean;
  public
    { Public declarations }
  end;

var
  frmCadCliente: TfrmCadCliente;

implementation

{$R *.dfm}

uses uCliente, FClientes, uFuncoes, udatamodule, uCadClassificacao,
  uPesquisaClassificacao, uCadInadimplencia, uPesquisaInadimplencia, uMenu,
  uselecionacredor;

procedure TfrmCadCliente.CarregaComissao;
var
  QCredor : TFDQuery;
begin
  QCredor := TFDQuery.Create(nil);
  try
    QCredor.Connection := frmDataModule.UniConnection1;
    try
      with QCredor do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT                             ');
        SQL.Add('  cc.cod_credor                    ');
        SQL.Add('FROM                               ');
        SQL.Add('  clientes_credores cc             ');
        SQL.Add('WHERE cc.cod_cliente = :CodCliente ');
        ParamByName('CodCliente').AsInteger := FrmClientes.uniQClientesCODIGO.AsInteger;
        Open;
      end;

      with QComissao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT                         ');
        SQL.Add('  bc.codigo,                   ');
        SQL.Add('  bc.descricao                 ');
        SQL.Add('FROM                           ');
        SQL.Add('  bancos_comissao bc           ');
        SQL.Add('WHERE bc.cod_banco = :CodBanco ');
        ParamByName('CodBanco').AsInteger := QCredor.Fields[0].AsInteger;
        Open;
      end;

      cbxComissao.Items.Clear;
      cbxComissao.Items.AddObject('Selecione a comissão',TObject(0));
      QComissao.First;

      while not QComissao.Eof do
      begin
        cbxComissao.Items.AddObject(QComissao.FieldByName('descricao').AsString,TObject(QComissao.FieldByName('codigo').AsInteger));
        QComissao.Next;
      end;

      if FrmClientes.uniQClientesListaCOD_BANCO_COMISSAO.AsInteger > 0 then
      begin
        QComissao.Locate('codigo',FrmClientes.uniQClientesListaCOD_BANCO_COMISSAO.AsInteger);
        cbxComissao.ItemIndex := cbxComissao.Items.IndexOf(QComissao.FieldByName('descricao').AsString);
      end
      else
        cbxComissao.ItemIndex := 0;
    except

    end;
  finally
    FreeAndNil(QCredor);
  end;
end;

procedure TfrmCadCliente.DBEdit2Exit(Sender: TObject);
begin
  if FrmClientes.uniQClientesTIPOPESSOA.AsString = 'F' then
    FrmClientes.uniQClientesCPF_CNPJ.AsString := FormataCPF(FrmClientes.uniQClientesCPF_CNPJ.AsString)
  else if FrmClientes.uniQClientesTIPOPESSOA.AsString = 'J' then
    FrmClientes.uniQClientesCPF_CNPJ.AsString := FormataCNPJ(FrmClientes.uniQClientesCPF_CNPJ.AsString);
end;

procedure TfrmCadCliente.DBEdit37Exit(Sender: TObject);
begin
  FrmClientes.uniQClientesReferenciaCPF.AsString := FormataCPF(FrmClientes.uniQClientesReferenciaCPF.AsString)
end;

procedure TfrmCadCliente.DBEdit44Exit(Sender: TObject);
begin
  FrmClientes.uniQClientesReferenciaFONE1.AsString := FormatarTelefone(FrmClientes.uniQClientesReferenciaFONE1.AsString);
end;

procedure TfrmCadCliente.DBEdit45Exit(Sender: TObject);
begin
  FrmClientes.uniQClientesReferenciaFONE2.AsString := FormatarTelefone(FrmClientes.uniQClientesReferenciaFONE2.AsString);
end;

procedure TfrmCadCliente.DBEdit5Exit(Sender: TObject);
begin
  FrmClientes.uniQClientesFONE.AsString := FormatarTelefone(FrmClientes.uniQClientesFONE.AsString);
end;

procedure TfrmCadCliente.DBEdit7Exit(Sender: TObject);
begin
  FrmClientes.uniQClientesFAXCEL.AsString := FormatarTelefone(FrmClientes.uniQClientesFAXCEL.AsString);
end;

procedure TfrmCadCliente.DBRadioGroup1Click(Sender: TObject);
begin
  if DBRadioGroup1.ItemIndex = 0 then
  begin
    Label2.Caption := 'CPF';
    Label3.Caption := 'RG';
  end
  else
  begin
    Label2.Caption := 'CNPJ';
    Label3.Caption := 'IE';
  end;
end;

function TfrmCadCliente.ExisteReferencia(pCodCliente : integer): boolean;
var
  QOperacao : TFDQuery;
begin
  try
    QOperacao := TFDQuery.Create(nil);
    try
      QOperacao.Connection := frmDataModule.UniConnection1;
      with QOperacao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT                       ');
        SQL.Add('  cr.codigo                  ');
        SQL.Add('FROM                         ');
        SQL.Add('  clientes_referencia cr     ');
        SQL.Add('  INNER JOIN clientes c      ');
        SQL.Add('    ON c.CODIGO = cr.CLIENTE ');
        SQL.Add('WHERE cr.CLIENTE = :codigo   ');
        ParamByName('codigo').AsInteger := pCodCliente;
        Open;
      end;
      if QOperacao.IsEmpty then
        Result := False
      else
        Result := True;
    except
      on exc : exception do
        MessageDlg('Ocorreu um erro ao gravar as operações: ' + exc.Message,mtError,[mbOk],0);
    end;
  finally
    FreeAndNil(QOperacao);
  end;
end;

procedure TfrmCadCliente.FormShow(Sender: TObject);
begin
  QClassificacao.Close;
  QClassificacao.Open;
  QInadimplencia.Close;
  QInadimplencia.Open;
  FrmClientes.UniQClientesVeiculos.Close;
  FrmClientes.UniQClientesVeiculos.Open;
  FrmClientes.UniQClientesVeiculos.Append;

  DBEdit30.Text := '';

  if FrmClientes.uniQClientes.State = dsInsert then
    FrmClientes.uniQClientesTIPOPESSOA.AsString := 'F'
  else
  begin
    if FrmClientes.uniQClientesCOD_CLASSIFICACAO.AsInteger > 0 then
    begin
      QClassificacao.Locate('codigo',FrmClientes.uniQClientesCOD_CLASSIFICACAO.AsInteger,[]);
      cxLookupComboBox1.Text := QClassificacaoDESCRICAO.AsString;
    end;
    if FrmClientes.uniQClientesMOTIVOINADIMPLENCIA.AsInteger > 0 then
    begin
      QInadimplencia.Locate('codigo',FrmClientes.uniQClientesMOTIVOINADIMPLENCIA.AsInteger,[]);
      cxLookupComboBox2.Text := QInadimplenciaDESCRICAO.AsString;
    end;
  end;
  CarregaComissao;
  cxPageControl1.ActivePageIndex := 0;
  cxPageControl2.ActivePageIndex := 0;
  DBEdit1.SetFocus;
end;

procedure TfrmCadCliente.GravaClientesBancos(pCodCliente, pCodBanco: integer);
var
  QClientes : TFDQuery;
begin
  try
    QClientes := TFDQuery.Create(nil);
      try
        QClientes.Connection := frmDataModule.UniConnection1;
        with QClientes do
        begin
          Close;
          SQL.Clear;
          SQL.Add('INSERT INTO clientes_credores (cod_cliente, cod_credor) ');
          SQL.Add('VALUES                                                  ');
          SQL.Add('  (:CodCliente, :CodCredor)                             ');
          ParamByName('CodCliente').AsInteger := pCodCliente;
          ParamByName('CodCredor').AsInteger := pCodBanco;
          ExecSQL;
        end;
      except

      end;
  finally
    FreeAndNil(QClientes);
  end;
end;

procedure TfrmCadCliente.GravaOperacao;
var
  QOperacao : TFDQuery;
begin
  try
    QOperacao := TFDQuery.Create(nil);
    try
      QOperacao.Connection := frmDataModule.UniConnection1;
      with QOperacao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('INSERT INTO operacoes ( ');
        SQL.Add('  REGISTRO,             ');
        SQL.Add('  cliente,              ');
        SQL.Add('  nroperacao,           ');
        SQL.Add('  remessa,              ');
        SQL.Add('  DATAVENCTO,           ');
        SQL.Add('  VALORNOMINAL,         ');
        SQL.Add('  STATUS,               ');
        SQL.Add('  usr_cad,              ');
        SQL.Add('  DTA_CAD,              ');
        SQL.Add('  credor                ');
        SQL.Add(')                       ');
        SQL.Add('VALUES                  ');
        SQL.Add('  (                     ');
        SQL.Add('    :pregistro,         ');
        SQL.Add('    :pcliente,          ');
        SQL.Add('    :pnroperacao,       ');
        SQL.Add('    :premessa,          ');
        SQL.Add('    :pDATAVENCTO,       ');
        SQL.Add('    :pVALORNOMINAL,     ');
        SQL.Add('    :pstatus,           ');
        SQL.Add('    :pusr_cad,          ');
        SQL.Add('    :pDTA_CAD,          ');
        SQL.Add('    :pcredor            ');
        SQL.Add('  )                     ');
        ParamByName('pregistro').AsInteger := GetID('registro','operacoes');
        ParamByName('pcliente').AsString := FrmClientes.uniQClientesCPF_CNPJ.AsString;
        ParamByName('pnroperacao').AsInteger := 0;
        ParamByName('premessa').AsString := FormatDateTime('yyyyMMdd',now) + fselecionacredor.uniQScriptCODIGO.AsString + IntToStr(GetID('codigo','remessas'));
        ParamByName('pDATAVENCTO').AsDateTime := StrToDate(MaskEdit1.Text);
        ParamByName('pVALORNOMINAL').AsFloat := cxCurrencyEdit1.Value;
        case ComboBox1.ItemIndex of
          0 : ParamByName('pstatus').AsString := 'S';
          1 : ParamByName('pstatus').AsString := 'R';
          2 : ParamByName('pstatus').AsString := 'N';
          3 : ParamByName('pstatus').AsString := 'A';
          4 : ParamByName('pstatus').AsString := 'O';
          5 : ParamByName('pstatus').AsString := 'D';
          6 : ParamByName('pstatus').AsString := 'L';
          7 : ParamByName('pstatus').AsString := 'R';
          8 : ParamByName('pstatus').AsString := 'N';
        end;
        ParamByName('pusr_cad').AsInteger := frmMenu.USUARIOLOGADO_CODIGO.ToInteger;
        ParamByName('pDTA_CAD').AsDate := Now;
        ParamByName('pcredor').AsInteger := fselecionacredor.uniQScriptCODIGO.AsInteger;
        ExecSQL;
      end;
    except
      on exc : exception do
        MessageDlg('Ocorreu um erro ao gravar as operações: ' + exc.Message,mtError,[mbOk],0);
    end;
  finally
    FreeAndNil(QOperacao);
  end;
end;

procedure TfrmCadCliente.RzToolButton1Click(Sender: TObject);
begin
  if FrmClientes.uniQClientes.State = dsInsert then
    FrmClientes.uniQClientesCODIGO.AsInteger := GetID('codigo','clientes');

  //verifico se existe registro na tabela de referencia
  if ExisteReferencia(FrmClientes.uniQClientesCODIGO.AsInteger) then
  begin
    FrmClientes.uniQClientesReferencia.Edit;
    FrmClientes.uniQClientesReferenciaTIPO.AsInteger := ComboBox2.ItemIndex;
    FrmClientes.uniQClientesReferencia.Post;
  end
  else if FrmClientes.uniQClientesReferenciaNOME.AsString <> '' then
  begin
    FrmClientes.uniQClientesReferenciaCODIGO.AsInteger := GetID('codigo','clientes_referencia');
    FrmClientes.uniQClientesReferenciaCLIENTE.AsInteger := FrmClientes.uniQClientesCODIGO.AsInteger;
    FrmClientes.uniQClientesReferenciaTIPO.AsInteger := ComboBox2.ItemIndex;
    FrmClientes.uniQClientesReferencia.Post;
  end;
  if cxLookupComboBox1.Text <> '' then
    FrmClientes.uniQClientesCOD_CLASSIFICACAO.AsInteger := QClassificacaoCODIGO.AsInteger;
  if cxLookupComboBox2.Text <> '' then
    FrmClientes.uniQClientesMOTIVOINADIMPLENCIA.AsInteger := QInadimplenciaCODIGO.AsInteger;
  FrmClientes.uniQClientesDTA_CAD.AsDateTime := Now;
  FrmClientes.uniQClientesUSR_CAD.AsInteger := StrToInt(frmmenu.usuariologado_codigo);

  if FrmClientes.UniQClientesVeiculosmodelo.AsString <> '' then
  begin
    FrmClientes.UniQClientesVeiculoscliente.AsInteger := FrmClientes.uniQClientesCODIGO.AsInteger;
    FrmClientes.UniQClientesVeiculos.Post;
  end;

  if cbxComissao.ItemIndex > 0 then
    FrmClientes.uniQClientesCOD_BANCO_COMISSAO.AsInteger := Integer(cbxComissao.Items.Objects[cbxComissao.ItemIndex]);

  FrmClientes.uniQClientes.Post;

  if fselecionacredor.uniQScriptNOME.AsString <> '' then
  begin
    //gravar na tabela de operacao
    GravaOperacao;
    GravaClientesBancos(FrmClientes.uniQClientesCODIGO.AsInteger, fselecionacredor.uniQScriptCODIGO.AsInteger);

  end;
  FrmClientes.RzToolButton1.Click;
  Close;
end;

procedure TfrmCadCliente.RzToolButton2Click(Sender: TObject);
begin
  FrmClientes.uniQClientes.Cancel;;
  Close;
end;

procedure TfrmCadCliente.SpeedButton1Click(Sender: TObject);
begin
  if frmMenu.USUARIOLOGADO_NIVEL <> 'O' then
  begin
    Application.CreateForm(TfrmCadClassificacao, frmCadClassificacao);
    Application.CreateForm(TfrmPesquisaClassificacao, frmPesquisaClassificacao);
    frmPesquisaClassificacao.QClassificacao.Close;
    frmPesquisaClassificacao.QClassificacao.Open;
    frmPesquisaClassificacao.QClassificacao.Append;
    frmCadClassificacao.alterainsere := 'INSERE';
    frmCadClassificacao.ShowModal;
    frmCadClassificacao.Free;
    frmPesquisaClassificacao.Free;
    QClassificacao.Close;
    QClassificacao.Open;
  end;
end;

procedure TfrmCadCliente.SpeedButton2Click(Sender: TObject);
begin
  if frmMenu.USUARIOLOGADO_NIVEL <> 'O' then
  begin
    Application.CreateForm(TfrmCadInadimplencia, frmCadInadimplencia);
    Application.CreateForm(TfrmPesquisaInadimplencia, frmPesquisaInadimplencia);
    frmPesquisaInadimplencia.QInadimplencia.Close;
    frmPesquisaInadimplencia.QInadimplencia.Open;
    frmPesquisaInadimplencia.QInadimplencia.Append;
    frmCadInadimplencia.alterainsere := 'INSERE';
    frmCadInadimplencia.ShowModal;
    frmCadInadimplencia.Free;
    frmPesquisaInadimplencia.Free;
    QInadimplencia.Close;
    QInadimplencia.Open;
  end;
end;

procedure TfrmCadCliente.SpeedButton3Click(Sender: TObject);
begin
  fselecionacredor.ShowModal;
end;

end.
