unit UMAIN;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg, acPNG;

type
  TFMAIN = class(TForm)
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    Image2: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMAIN: TFMAIN;

implementation

{$R *.dfm}

end.
