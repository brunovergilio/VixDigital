unit uCadInadimplencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.StdCtrls, AdvEdit,
  advlued, DBAdvLe, Vcl.ExtCtrls;

type
  TfrmCadInadimplencia = class(TForm)
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
  frmCadInadimplencia: TfrmCadInadimplencia;

implementation

{$R *.dfm}

uses udatamodule, uPesquisaInadimplencia, uFuncoes;

procedure TfrmCadInadimplencia.RzToolButton1Click(Sender: TObject);
begin
  if not frmDataModule.UniConnection1.InTransaction then
    frmDataModule.UniConnection1.StartTransaction;
  begin
    if ALTERAINSERE = 'INSERE' then
    begin
      //QEventos.Appe;
      DBAdvLUEdit1.Text := IntToStr(GetID('codigo','negativacao_parametro'));
      frmPesquisaInadimplencia.QInadimplenciaTIPO.AsInteger := 1;
      frmPesquisaInadimplencia.QInadimplencia.post;

     frmDataModule.UniConnection1.Commit;

     ALTERAINSERE := '';
    end
    else
    begin
      frmPesquisaInadimplencia.QInadimplencia.EDIT;
      frmPesquisaInadimplencia.QInadimplencia.post;
      frmDataModule.UniConnection1.Commit;
    end;
  // except
       // Rollback all changes in database made after StartTransaction if an error was raised
  //     frmDataModule.UniConnection1.Rollback;
   end;

  Close;
end;

procedure TfrmCadInadimplencia.RzToolButton2Click(Sender: TObject);
begin
  Close;
end;

end.
