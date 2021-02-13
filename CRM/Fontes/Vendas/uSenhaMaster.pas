unit uSenhaMaster;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmSenhaMaster = class(TForm)
    Panel3: TPanel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    Edit1: TEdit;
    Label1: TLabel;
    QSenha: TFDQuery;
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    vLiberaAcesso : boolean;
  end;

var
  frmSenhaMaster: TfrmSenhaMaster;

implementation

{$R *.dfm}

uses udatamodule, uclientesnegociacao;

function Crypt(Action, Src: String): String;
Label Fim;
var KeyLen : Integer;
       KeyPos : Integer;
       OffSet : Integer;
       Dest, Key : String;
       SrcPos : Integer;
       SrcAsc : Integer;
       TmpSrcAsc : Integer;
       Range : Integer;
begin
       if (Src = '') Then
       begin
               Result:= '';
               Goto Fim;
       end;
       Key := 'Schelter#';
       Dest := '';
       KeyLen := Length(Key);
       KeyPos := 0;
       SrcPos := 0;
       SrcAsc := 0;
       Range := 256;
       if (Action = UpperCase('C')) then
       begin
               Randomize;
               OffSet := Random(Range);
               Dest := Format('%1.2x',[OffSet]);
               for SrcPos := 1 to Length(Src) do
               begin
                       Application.ProcessMessages;
                       SrcAsc := (Ord(Src[srcPos]) + OffSet) Mod 255;
                       if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;

                       SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
                       Dest := Dest + Format('%1.2x',[srcAsc]);
                       OffSet := SrcAsc;
               end;
       end
       Else if (Action = UpperCase('D')) then
       begin
               OffSet := StrToInt('$' + copy(Src,1,2));//<--------------- adiciona o $ entra as aspas simples
               SrcPos := 3;
               repeat
                       SrcAsc := StrToInt('$' + copy(Src,SrcPos,2));//<--------------- adiciona o $ entra as aspas simples
                       if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
                       TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
                       if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
                       else TmpSrcAsc := TmpSrcAsc - OffSet;
                       Dest := Dest + Chr(TmpSrcAsc);
                       OffSet := SrcAsc;
                       SrcPos := SrcPos + 2;
               until (SrcPos >= Length(Src));
       end;
       Result:= Dest;
Fim:
end;


procedure TfrmSenhaMaster.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
    RzToolButton1.Click;
end;

procedure TfrmSenhaMaster.RzToolButton1Click(Sender: TObject);
begin
  with QSenha do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                 ');
    SQL.Add('  u.codigo,            ');
    SQL.Add('  u.NOME,              ');
    SQL.Add('  u.SENHA              ');
    SQL.Add('FROM                   ');
    SQL.Add('  usuarios u           ');
    SQL.Add('WHERE u.NIVEL = "M"    ');
    Open;
  end;
  vLiberaAcesso := False;
  QSenha.First;
  while not QSenha.Eof do
  begin
    if crypt('D',QSenha.FieldbyName('senha').AsString) = Edit1.Text then
      vLiberaAcesso := True;
    QSenha.Next;
  end;
  Close;
end;

procedure TfrmSenhaMaster.RzToolButton2Click(Sender: TObject);
begin
  vLiberaAcesso := False;
  Close;
end;

end.
