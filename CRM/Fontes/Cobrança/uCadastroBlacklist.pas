unit uCadastroBlacklist;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  uCadastroBasico, Buttons, StdCtrls, ExtCtrls;

type
  TFCadastroBlackList = class(TForm)
    Panel2: TPanel;
    Btn_Desmarcar: TSpeedButton;
    Btn_Marcar: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadastroBlackList: TFCadastroBlackList;

implementation

{$R *.DFM}


end.
