unit uCadSituacaoNegociacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.StdCtrls, AdvEdit,
  advlued, DBAdvLe, Vcl.ExtCtrls;

type
  TfrmCadSituacaoNegociacao = class(TForm)
    Panel1: TPanel;
    DBAdvLUEdit1: TDBAdvLUEdit;
    Panel3: TPanel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    DBAdvLUEdit2: TDBAdvLUEdit;
    DBAdvLUEdit3: TDBAdvLUEdit;
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    alterainsere : string;
  end;

var
  frmCadSituacaoNegociacao: TfrmCadSituacaoNegociacao;

implementation

{$R *.dfm}

uses uPesquisaSituacaoNegociacao, udatamodule, uFuncoes;

procedure TfrmCadSituacaoNegociacao.RzToolButton1Click(Sender: TObject);
begin
  if not frmDataModule.UniConnection1.InTransaction then
    frmDataModule.UniConnection1.StartTransaction;
  begin
    if ALTERAINSERE = 'INSERE' then
    begin
      //DBAdvLUEdit1.Text := IntToStr(GetID('codigo','situacao'));
      frmPesquisaSituacaoNegociacao.QSituacao.post;

     frmDataModule.UniConnection1.Commit;

     ALTERAINSERE := '';
    end
    else
    begin
      frmPesquisaSituacaoNegociacao.QSituacao.Edit;
      frmPesquisaSituacaoNegociacao.QSituacao.Post;
      frmDataModule.UniConnection1.Commit;
    end;
   end;
  Close;
end;

procedure TfrmCadSituacaoNegociacao.RzToolButton2Click(Sender: TObject);
begin
  Close;
end;

end.
