unit uMensagemAssociada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, AdvGlowButton, Vcl.ExtCtrls;

type
  TfMensagemAssociada = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    Memo1: TMemo;
    Panel4: TPanel;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    procedure AdvGlowButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMensagemAssociada: TfMensagemAssociada;

implementation

{$R *.dfm}

procedure TfMensagemAssociada.AdvGlowButton2Click(Sender: TObject);
begin
Close;
end;

end.
