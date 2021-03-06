unit UAlterar_Senha;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, 
  Buttons, StdCtrls, AdvGlowButton, Vcl.ExtCtrls, Data.DB, // CREncryption,
  Vcl.Grids, Vcl.DBGrids, RzButton, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, 
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, 
  FireDAC.Comp.Client, FireDAC.DBX.Migrate;

type
  TFAlterar_Senha = class(TForm)
    Edt_SenhaAtual: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edt_SenhaNova: TEdit;
    Edt_SenhaNovaConfirmacao: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    LbNomeUsuario: TLabel;
    uniscript: TFDQuery;
    uniscriptaltera: TFDQuery;
    UniDataSource1: TDataSource;
    Panel3: TPanel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    procedure Edt_SenhaAtualKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure Edt_SenhaNovaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edt_SenhaNovaConfirmacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAlterar_Senha: TFAlterar_Senha;

implementation

{$R *.DFM}

uses
  umenu;

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

procedure TFAlterar_Senha.Edt_SenhaAtualKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_RETURN then Key := VK_TAB;
end;

procedure TFAlterar_Senha.Edt_SenhaNovaConfirmacaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if Key = VK_RETURN then Key := VK_TAB;
end;

procedure TFAlterar_Senha.Edt_SenhaNovaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_RETURN then Key := VK_TAB;
end;

procedure TFAlterar_Senha.FormActivate(Sender: TObject);
begin
LbNomeUsuario.Caption := FRMMenu.ComboUsuario.Text;
end;

procedure TFAlterar_Senha.RzToolButton1Click(Sender: TObject);
begin
{  if Edt_SenhaAtual.Text = '' then begin
    showmessage('Senha atual em branco.');
    Edt_SenhaAtual.Setfocus;
    //Exit;
  end;
}
  if Edt_SenhaNova.Text = '' then begin
    showmessage('Nova senha em branco.');
    Edt_SenhaNova.Setfocus;
    Exit;
  end;

  if Edt_SenhaNova.Text <> Edt_SenhaNovaConfirmacao.Text then begin
    showmessage('Confirma��o difere da Nova Senha.');
    Edt_SenhaNovaConfirmacao.Setfocus;
    Exit;
  end;

  uniscript.Close;
  uniscript.Sql.Text := 'select * from usuarios where upper(nome) = :pnome';
                        uniscript.ParambyName('pnome').AsString := FRMMenu.ComboUsuario.Text;
  uniscript.Open;

  if uniscript.RecordCount > 0 then begin
     if CRYPT('D',uniscript.FieldbyName('senha').AsString) = Edt_senhaatual.Text then begin

        uniscriptaltera.Close;
        uniscriptaltera.Sql.Text := 'update usuarios set senha = :psenha where codigo = :pcodigo';
                              uniscriptaltera.ParambyName('psenha').AsString := CRYPT('C',Edt_senhanova.Text);
                              uniscriptaltera.ParambyName('pcodigo').AsString := uniscript.FieldbyName('codigo').AsString;
        uniscriptaltera.ExecSql;
        uniscript.Close;
        //uniscript.ExecSql;

        showmessage('O sistema ser� finalizado.');

        Application.Terminate;
     end else begin
        showmessage('Senha incorreta.');
        Edt_SenhaAtual.Setfocus;
     end;
  end;
end;

procedure TFAlterar_Senha.RzToolButton2Click(Sender: TObject);
begin
Close;
end;

end.
