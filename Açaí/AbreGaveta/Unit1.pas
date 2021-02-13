unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, ACBrBase, ACBrGAV;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    ACBrGAV1: TACBrGAV;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
IF COMBOBOX1.TEXT = 'gavImpressoraComum' THEN ACBrGAV1.MODELO := gavImpressoraComum;
IF COMBOBOX1.TEXT = 'gavImpressoraECF' THEN ACBrGAV1.MODELO := gavImpressoraECF;
IF COMBOBOX1.TEXT = 'gavNenhuma' THEN ACBrGAV1.MODELO := gavNenhuma;
IF COMBOBOX1.TEXT = 'gavSerialGerbo' THEN ACBrGAV1.MODELO := gavSerialGerbo;
IF COMBOBOX1.TEXT = 'gavSerialMenno' THEN ACBrGAV1.MODELO := gavSerialMenno;
ACBrGAV1.PORTA := COMBOBOX2.TEXT;
ACBrGAV1.STRCOMANDO := 'Ch(15)';
ACBrGAV1.ABREGAVETA;
end;

end.
