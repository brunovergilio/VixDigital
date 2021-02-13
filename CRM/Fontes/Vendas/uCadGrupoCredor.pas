unit uCadGrupoCredor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  AdvEdit, advlued, DBAdvLe;

type
  TfrmCadGrupoCredor = class(TForm)
    Notebook9: TNotebook;
    DBAdvLUEdit1: TDBAdvLUEdit;
    Panel3: TPanel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadGrupoCredor: TfrmCadGrupoCredor;

implementation

{$R *.dfm}

uses uPesquisaGrupoCredor, udatamodule;

procedure TfrmCadGrupoCredor.RzToolButton1Click(Sender: TObject);
begin
  if not frmDataModule.UniConnection1.InTransaction then
    frmDataModule.UniConnection1.StartTransaction;
    begin
      frmPesquisaGrupoCredor.QGrupoCredor.post;
      frmDataModule.UniConnection1.Commit;
      frmPesquisaGrupoCredor.QGrupoCredor.close;
    end;
  Close;
end;

procedure TfrmCadGrupoCredor.RzToolButton2Click(Sender: TObject);
begin
  Close;
end;

end.
