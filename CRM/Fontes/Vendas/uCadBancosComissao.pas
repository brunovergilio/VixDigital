unit uCadBancosComissao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.StdCtrls, AdvEdit,
  advlued, DBAdvLe, Vcl.ExtCtrls;

type
  TfrmCadBancosComissao = class(TForm)
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
  end;

var
  frmCadBancosComissao: TfrmCadBancosComissao;

implementation

{$R *.dfm}

uses ucadastrodebancosempresas, ubancosempresas;

procedure TfrmCadBancosComissao.RzToolButton1Click(Sender: TObject);
begin
  frmcadastrodebancosempresas.QBancosComissaocod_banco.AsInteger := frmcredores.UniQCredoresCODIGO.AsInteger;
  frmcadastrodebancosempresas.QBancosComissao.Post;
  Close;
end;

procedure TfrmCadBancosComissao.RzToolButton2Click(Sender: TObject);
begin
  Close;
end;

end.
