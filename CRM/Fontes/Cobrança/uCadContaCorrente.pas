unit uCadContaCorrente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, RzButton, Vcl.ExtCtrls;

type
  TfrmCadContaCorrente = class(TForm)
    Notebook9: TNotebook;
    Panel3: TPanel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    SpeedButton3: TSpeedButton;
    Label1: TLabel;
    edtBanco: TEdit;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    procedure SpeedButton3Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure DBEdit12Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadContaCorrente: TfrmCadContaCorrente;

implementation

{$R *.dfm}

uses uPesquisaContaCorrente, uPesquisaBanco, uFuncoes;

procedure TfrmCadContaCorrente.DBEdit12Enter(Sender: TObject);
begin
  frmPesquisaContaCorrente.QBancosCPF_CNPJ.AsString := SoNumero(frmPesquisaContaCorrente.QBancosCPF_CNPJ.AsString)
end;

procedure TfrmCadContaCorrente.DBEdit12Exit(Sender: TObject);
begin
  if frmPesquisaContaCorrente.QBancosTIPO.AsString = 'F' then
    frmPesquisaContaCorrente.QBancosCPF_CNPJ.AsString := FormataCPF(frmPesquisaContaCorrente.QBancosCPF_CNPJ.AsString)
  else if frmPesquisaContaCorrente.QBancosTIPO.AsString = 'J' then
    frmPesquisaContaCorrente.QBancosCPF_CNPJ.AsString := FormataCNPJ(frmPesquisaContaCorrente.QBancosCPF_CNPJ.AsString);
end;

procedure TfrmCadContaCorrente.RzToolButton1Click(Sender: TObject);
begin
  frmPesquisaContaCorrente.QBancos.Post;
  Close;
end;

procedure TfrmCadContaCorrente.RzToolButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadContaCorrente.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TfrmPesquisaBanco, frmPesquisaBanco);
  frmPesquisaBanco.vPesquisa := True;
  frmPesquisaBanco.ShowModal;
  edtBanco.Text := frmPesquisaBanco.QBancosnumero.AsString + ' - ' + frmPesquisaBanco.QBancosdescricao.AsString;
  Edit1.Text := frmPesquisaBanco.QBancosnumero.AsString;
  Edit2.Text := frmPesquisaBanco.QBancosdescricao.AsString;
  frmPesquisaContaCorrente.QBancosCOD_BANCO.AsInteger := frmPesquisaBanco.QBancoscodigo.AsInteger;
//  Edit3.Text := frmPesquisaContaCorrente.QBancosAGENCIA.AsString;
//  Edit4.Text := frmPesquisaContaCorrente.QBancosAGENCIA_DIGITO.AsString;
  FreeAndNil(frmPesquisaBanco);
end;

end.
