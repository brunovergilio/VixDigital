unit uAguarde;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, acPNG, Vcl.ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.StdCtrls, cxProgressBar, dxGDIPlusClasses, Vcl.ComCtrls;

type
  TfrmAguarde = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    ProgressBar1: TProgressBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAguarde: TfrmAguarde;

implementation

{$R *.dfm}

end.
