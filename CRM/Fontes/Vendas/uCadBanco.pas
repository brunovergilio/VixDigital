unit uCadBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, AdvEdit, advlued, DBAdvLe,
  Vcl.ExtCtrls, RzButton;

type
  TfrmCadBanco = class(TForm)
    DBAdvLUEdit2: TDBAdvLUEdit;
    DBAdvLUEdit1: TDBAdvLUEdit;
    Panel3: TPanel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    Notebook9: TNotebook;
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ALTERAINSERE: STRING;
  end;

var
  frmCadBanco: TfrmCadBanco;

implementation

{$R *.dfm}

uses uPesquisaBanco, udatamodule;

procedure TfrmCadBanco.RzToolButton1Click(Sender: TObject);
begin
  if not frmDataModule.UniConnection1.InTransaction then
    frmDataModule.UniConnection1.StartTransaction;
    begin
      frmPesquisaBanco.QBancos.post;
      frmDataModule.UniConnection1.Commit;
      frmPesquisaBanco.QBancos.close;
    end;
  Close;
end;

procedure TfrmCadBanco.RzToolButton2Click(Sender: TObject);
begin
  Close;
end;

end.
