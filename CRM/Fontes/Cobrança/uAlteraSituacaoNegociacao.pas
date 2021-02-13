unit uAlteraSituacaoNegociacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmAlteraSituacaoNegociacao = class(TForm)
    Panel3: TPanel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    cbxSituacao: TComboBox;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    lblSituacao: TLabel;
    QSituacao: TFDQuery;
    dsSituacao: TDataSource;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    MaskEdit1: TMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
  private
    { Private declarations }
    procedure CarregaSituacaoCombo;
    function RetornaSiglaSituacao : string;
  public
    { Public declarations }
  end;

var
  frmAlteraSituacaoNegociacao: TfrmAlteraSituacaoNegociacao;

implementation

{$R *.dfm}

uses udatamodule, FClientes, uSenhaMaster;

{ TfrmAlteraSituacaoNegociacao }

procedure TfrmAlteraSituacaoNegociacao.CarregaSituacaoCombo;
begin
  with QSituacao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT               ');
    SQL.Add('  s.*                ');
    SQL.Add('FROM                 ');
    SQL.Add('  situacao s         ');
    SQL.Add('WHERE s.status = "A" ');
    SQL.Add('ORDER BY s.descricao ');
    Open;
  end;
  cbxSituacao.Text := '';
  cbxSituacao.Items.Clear;
  cbxSituacao.Items.Add('SEM ALTERAÇÃO');
  while not QSituacao.Eof do
  begin
    cbxSituacao.Items.AddObject(QSituacao.FieldByName('sigla').AsString + ' - ' + QSituacao.FieldByName('descricao').AsString,TObject(QSituacao.FieldByName('codigo').AsInteger));
    QSituacao.Next;
  end;
  cbxSituacao.ItemIndex := 0;
end;

procedure TfrmAlteraSituacaoNegociacao.FormShow(Sender: TObject);
begin
  with QSituacao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                 ');
    SQL.Add('  s.*                  ');
    SQL.Add('FROM                   ');
    SQL.Add('  situacao s           ');
    SQL.Add('WHERE s.sigla = :Sigla ');
    ParamByName('Sigla').AsString := FrmClientes.uniQClientesOperacoes.FieldByName('status').AsString;
    Open;
  end;
  lblSituacao.Caption := QSituacao.FieldByName('sigla').AsString + ' - ' + QSituacao.FieldByName('descricao').AsString;

  CarregaSituacaoCombo;
end;

function TfrmAlteraSituacaoNegociacao.RetornaSiglaSituacao: string;
begin
  with QSituacao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                 ');
    SQL.Add('  s.*                  ');
    SQL.Add('FROM                   ');
    SQL.Add('  situacao s           ');
    SQL.Add('WHERE s.codigo = :Codigo ');
    ParamByName('Codigo').AsInteger := Integer(cbxSituacao.Items.Objects[cbxSituacao.ItemIndex]);
    Open;
  end;
  Result := QSituacao.FieldByName('sigla').AsString;
end;

procedure TfrmAlteraSituacaoNegociacao.RzToolButton1Click(Sender: TObject);
begin
  if cbxSituacao.ItemIndex > 0 then
  begin
    Application.CreateForm(TfrmSenhaMaster, frmSenhaMaster);
    frmSenhaMaster.ShowModal;
    frmSenhaMaster.Free;
    if not frmSenhaMaster.vLiberaAcesso then
    begin
      MessageDlg('Senha incorreta. Alteração de Situação não efetuada.',mtError,[mbOk],0);
      Exit;
    end
    else
    begin
//      ShowMessage(FrmClientes.uniQClientesOperacoes.FieldByName('registro').AsString);
      try
        FrmClientes.uniQClientesOperacoes.Edit;
        FrmClientes.uniQClientesOperacoes.Post;
        FrmClientes.uniQClientesOperacoes.Edit;
      except

      end;
//      if FrmClientes.uniQClientesOperacoes.FieldByName('Status').AsString <> 'N' then
//      begin
//        MessageDlg('É necessário fazer um acordo para receber esta parcela.',mtInformation,[mbOk],0);
//        Abort;
//      end;
//      if (FrmClientes.uniQClientesOperacoes.FieldByName('Status').AsString = 'N') and
//         (FrmClientes.uniQClientesOperacoes.FieldByName('VALORRECEBIDO').AsFloat > 0) then
      //begin
        with FrmClientes.uniQClientesParcelas do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT                       ');
          SQL.Add('  *                          ');
          SQL.Add('FROM                         ');
          SQL.Add('  parcelas                   ');
          SQL.Add('WHERE cliente = :Cliente     ');
          SQL.Add('  AND NROPERACAO = :operacao ');
          ParamByName('Cliente').AsString := FrmClientes.uniQClientesListaCPF_CNPJ.AsString;
          ParamByName('operacao').AsString := FrmClientes.uniQClientesOperacoes.FieldByName('nroperacao').AsString;
          Open;
        end;
        FrmClientes.uniQClientesParcelas.Edit;
        if FrmClientes.uniQClientesOperacoes.FieldByName('VALORRECEBIDO').AsFloat > 0 then
        begin
          FrmClientes.uniQClientesOperacoes.FieldByName('DATAREC').AsDateTime := StrToDate(MaskEdit1.Text);
          FrmClientes.uniQClientesParcelasDATARECEBIMENTO.AsDateTime := FrmClientes.uniQClientesOperacoes.FieldByName('DATAREC').AsDateTime;
          FrmClientes.uniQClientesParcelasVALORREALIZADO.AsFloat := FrmClientes.uniQClientesOperacoes.FieldByName('VALORRECEBIDO').AsFloat;
        end;
        FrmClientes.uniQClientesParcelasSTATUS.AsString := RetornaSiglaSituacao;
        if FrmClientes.uniQClientesParcelasSTATUS.AsString = 'A' then
          FrmClientes.uniQClientesParcelasBOL_REMESSA.AsString := 'N';
        try
          FrmClientes.uniQClientesParcelas.Post;
        except

        end;
      //end;
      FrmClientes.uniQClientesOperacoes.FieldByName('status').AsString := RetornaSiglaSituacao;
      try
        FrmClientes.uniQClientesOperacoes.Post;
      except

      end;
      Close;
    end;
  end;
end;

procedure TfrmAlteraSituacaoNegociacao.RzToolButton2Click(Sender: TObject);
begin
  Close;
end;

end.
