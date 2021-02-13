unit uCadClassificacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.StdCtrls, AdvEdit,
  advlued, DBAdvLe, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmCadClassificacao = class(TForm)
    Panel1: TPanel;
    DBAdvLUEdit1: TDBAdvLUEdit;
    Panel3: TPanel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    DBAdvLUEdit2: TDBAdvLUEdit;
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ALTERAINSERE: STRING;
  end;

var
  frmCadClassificacao: TfrmCadClassificacao;

implementation

{$R *.dfm}

uses udatamodule, uFuncoes, uPesquisaClassificacao;

procedure TfrmCadClassificacao.RzToolButton1Click(Sender: TObject);
begin
  if not frmDataModule.UniConnection1.InTransaction then
    frmDataModule.UniConnection1.StartTransaction;
  begin
    if ALTERAINSERE = 'INSERE' then
    begin
      //QEventos.Appe;
      DBAdvLUEdit1.Text := IntToStr(GetID('codigo','class_cliente'));
      frmPesquisaClassificacao.QClassificacao.post;

     frmDataModule.UniConnection1.Commit;

     ALTERAINSERE := '';
    end
    else
    begin
      frmPesquisaClassificacao.QClassificacao.EDIT;
      frmPesquisaClassificacao.QClassificacao.post;
      frmDataModule.UniConnection1.Commit;
    end;
  // except
       // Rollback all changes in database made after StartTransaction if an error was raised
  //     frmDataModule.UniConnection1.Rollback;
   end;

  Close;
end;

procedure TfrmCadClassificacao.RzToolButton2Click(Sender: TObject);
begin
  Close;
end;

end.
