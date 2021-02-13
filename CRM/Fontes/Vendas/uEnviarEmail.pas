unit uEnviarEmail;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls, Buttons, IdMessage, IdSMTP, IdSSLOpenSSL,
  NxEdit6, Vcl.CheckLst, RxLookup, AdvGlowButton;

type
  TFEnviarEmail = class(TForm)
    Panel1: TPanel;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    Label6: TLabel;
    Look_Banco: TRxDBLookupCombo;
    Label1: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label3: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    List_Remessas: TListBox;
    Label4: TLabel;
    ListBox1: TListBox;
    BtnRemessas: TSpeedButton;
    Label16: TLabel;
    CheckListBox1: TCheckListBox;
    RadioGroup1: TRadioGroup;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    NxSpinEdit61: TNxSpinEdit6;
    NxSpinEdit62: TNxSpinEdit6;
    Label7: TLabel;
    Label8: TLabel;
    ListBox2: TListBox;
    Label5: TLabel;
    AdvGlowButton1: TAdvGlowButton;
    procedure BtnEnviarClick(Sender: TObject);
    procedure BtnAnexarClick(Sender: TObject);
    procedure BuscaTroca;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEnviarEmail: TFEnviarEmail;

implementation

{$R *.DFM}

procedure TFEnviarEmail.BtnEnviarClick(Sender: TObject);
begin
// Address $1A5309C
end;

procedure TFEnviarEmail.AdvGlowButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFEnviarEmail.BtnAnexarClick(Sender: TObject);
begin
// Address $1A53D5C
end;

procedure TFEnviarEmail.BuscaTroca;
begin
// Address $1A53DD4
end;

procedure TFEnviarEmail.FormShow(Sender: TObject);
begin
// Address $1A53F78
end;

procedure TFEnviarEmail.FormCreate(Sender: TObject);
begin
// Address $1A554B4
end;

end.

