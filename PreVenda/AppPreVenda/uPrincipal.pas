unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  AdvGlowButton, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    lbData: TLabel;
    Timer1: TTimer;
    pnBotoes: TPanel;
    lbDiaSemana: TLabel;
    lbHora: TLabel;
    pnLogin: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    AdvGlowButton1: TAdvGlowButton;
    FDQuery1: TFDQuery;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uDM;

procedure TfrmPrincipal.AdvGlowButton1Click(Sender: TObject);
var
  QUsuario : TFDQuery;
begin
  QUsuario := TFDQuery.Create(nil);
  try
    QUsuario.Connection := dm.ConexaoPrincipal;
    try
      with QUsuario do
      begin
        Close;
        SQL.Clear;
        SQL.Add('');
        Open;
      end;
    except
      on exc : exception do
        MessageDlg('Ocorreu um erro ao carregar o usuário: ' + exc.Message, mtError, [mbOk],0);
    end;
  finally
    FreeAndNil(QUsuario);
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  lbDiaSemana.Caption := UpperCase(FormatDateTime('DDDD',Date));
  lbData.Caption := FormatDateTime('DD',Date);
  lbData.Caption := lbData.Caption + ' DE ' + UpperCase(FormatDateTime('MMMM',Date));
  lbData.Caption := lbData.Caption + ' DE ' + UpperCase(FormatDateTime('YYYY',Date));
  Timer1.Enabled := True;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
   lbHora.Caption := TimeToStr(Time);
   Application.ProcessMessages;
end;

end.
