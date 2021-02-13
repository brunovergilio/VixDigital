unit uMotivodePausa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CheckLst,
  AdvGlowButton, Vcl.ExtCtrls;

type
  TfMotivodePausa = class(TForm)
    Panel4: TPanel;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    Panel2: TPanel;
    Label1: TLabel;
    CheckListBox1: TCheckListBox;
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMotivodePausa: TfMotivodePausa;

implementation

{$R *.dfm}

procedure TfMotivodePausa.AdvGlowButton2Click(Sender: TObject);
begin
Close;
end;

procedure TfMotivodePausa.AdvGlowButton5Click(Sender: TObject);
begin
Close;
end;

end.
