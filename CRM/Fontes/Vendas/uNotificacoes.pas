unit uNotificacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvGlowButton, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TfNotificacoes = class(TForm)
    Panel1: TPanel;
    AdvGlowButton2: TAdvGlowButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    procedure AdvGlowButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNotificacoes: TfNotificacoes;

implementation

{$R *.dfm}

procedure TfNotificacoes.AdvGlowButton2Click(Sender: TObject);
begin
close;
end;

end.
