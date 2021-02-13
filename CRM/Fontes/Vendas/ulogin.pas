unit ulogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, 
  Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels, 
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, Vcl.Buttons, 
  sSpeedButton, AdvEdit, AdvEdBtn, AdvGlowButton, dxGDIPlusClasses, W7Classes, 
  W7Images, sSkinManager, ACBrBase, ACBrEnterTab, acImage, AdvFontCombo, 
  Data.DB, AdvCombo, CurvyControls, AdvSmoothListBox, AdvSmoothComboBox, 
  NxEdit6, Vcl.DBCtrls, RzButton, acPNG, inifiles, FireDAC.Stan.Intf, 
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, 
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, 
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.DBX.Migrate;

type
  TfrmLogin = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    uniscript: TFDQuery;
    UniQuery1: TFDQuery;
    uniscriptCODIGO: TFloatField;
    uniscriptTITULO: TStringField;
    uniscriptAVISO: TBlobField;
    uniscriptDATA: TSQLTimeStampField;
    uniscriptUSUARIO: TFloatField;
    uniscriptDTA_AGENDA: TSQLTimeStampField;
    uniscriptAGENDAR_AVISO: TStringField;
    ComboUsuario: TCurvyCombo;
    edtsenha: TCurvyEdit;
    Label1: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Label5: TLabel;
    btnlogin: TRzToolButton;
    procedure edtSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure ComboOrigemSelect(Sender: TObject);
    procedure ComboOrigemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboOrigemItemSelected(Sender: TObject; itemindex: Integer);
    procedure ComboUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboUsuarioSelect(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnloginClick(Sender: TObject);
  private
    { Private declarations }
  public
    var
      USUARIOLOGADO,
      USUARIOLOGADO_CODIGO,
      USUARIOLOGADO_NIVEL,
      USUARIOLOGADO_PERMITE_CLIENTE,
      USUARIOLOGADO_PERMITE_GERENCIADOR,
      USUARIOLOGADO_PERMITE_AGENDA,
      USUARIOLOGADO_PERMITE_IMPORTAR_ARQUIVOS,
      USUARIOLOGADO_PERMITE_CORRESPONDENCIAS,
      USUARIOLOGADO_PERMITE_BACKUP,
      USUARIOLOGADO_PERMITE_USUARIO,
      USUARIOLOGADO_PERMITE_EMAIL,
      USUARIOLOGADO_PERMITE_NOTIFICACOES: STRING
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses
  umenu, udatamodule, urelacaotelefonesblacklist, uusuarioscadastro;

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

procedure TfrmLogin.ComboOrigemSelect(Sender: TObject);
begin
ComboUsuario.SetFocus;
end;

procedure TfrmLogin.ComboOrigemItemSelected(Sender: TObject;
  itemindex: Integer);
begin
ComboUsuario.SetFocus;
end;

procedure TfrmLogin.ComboOrigemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then ComboUsuario.SetFocus;
end;

procedure TfrmLogin.edtSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then frmlogin.btnloginClick(Sender);
end;

procedure TfrmLogin.FormActivate(Sender: TObject);
var
  iArq: TIniFile;
begin
  try
    if fileexists(ExtractFilePath(Application.ExeName) + 'oracle_path.ini') then begin
      iArq := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'oracle_path.ini');
      ComboUsuario.Text := iArq.ReadString('BD', 'Last_user', '');
    end
    else begin
      Application.MessageBox('Arquivo ausente, desconhecido ou não configurado: ''oracle_path.ini''.','Atenção',MB_ICONHAND + MB_OK + MB_ICONQUESTION);
      Application.Terminate;
    end;
  except

  end;
  ComboUsuario.Setfocus;
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
APPLICATION.TERMINATE;
end;

procedure TfrmLogin.btnloginClick(Sender: TObject);
var
  iArq: TIniFile;
  Last_User : string;
begin
  uniscript.Close;
  uniscript.Sql.Text := 'select * from usuarios where upper(nome) = :pnome';
                        uniscript.ParambyName('pnome').AsString := ComboUsuario.Text;
  uniscript.Open;

  if uniscript.RecordCount > 0 then begin
     if crypt('D',uniscript.FieldbyName('senha').AsString) = Edtsenha.Text then begin

        Application.CreateForm(TFRMMENU, FRMMENU);
        FRMMENU.ESCONDETUDO;

        USUARIOLOGADO := COMBOUSUARIO.TEXT;
        USUARIOLOGADO_CODIGO := uniscript.FIELDBYNAME('CODIGO').ASSTRING;
        USUARIOLOGADO_NIVEL := uniscript.FIELDBYNAME('NIVEL').ASSTRING;

        FRMMENU.Label1.Caption := 'Usuário Logado: ' + ComboUsuario.Text;

//        if uniscript.FieldbyName('NIVEL').AsString = 'M' then FRMMENU.Menu_Arquivo.Visible := TRUE;
//        if uniscript.FieldbyName('NIVEL').AsString = 'M' then FRMMENU.Menu_Cadastros.Visible := TRUE;

{        FRMMENU.Panel_Supervisor.Visible := FALSE;
        FRMMENU.Panel_Operador.Visible := FALSE;
}
        frmmenu.Menu.Items.Items[0].Items[0].Enabled := False; //ContatoAtivo
        frmmenu.Menu.Items.Items[0].Items[1].Enabled := False; //ContatoReceptivo1
        frmmenu.Menu.Items.Items[0].Items[4].Enabled := False; //RetornodeSMS1
        frmmenu.Menu.Items.Items[0].Items[5].Enabled := False; //AoManualemLote1
        frmmenu.Menu.Items.Items[0].Items[6].Enabled := False; //ConsultadeAoManual1
        frmmenu.Menu.Items.Items[1].Enabled := False;          //Cadastros1
        frmmenu.Menu.Items.Items[2].Enabled := False;          //Configuraes1
        frmmenu.Menu.Items.Items[3].Enabled := False;          //Arquivos1
        frmmenu.Menu.Items.Items[4].Enabled := False;          //Relatrios1

        if uniscript.FieldbyName('NIVEL').AsString = 'O' then begin
 {         FRMMENU.Panel_Supervisor.Visible := FALSE;
          FRMMENU.Panel_Operador.Visible := TRUE;
 }
          frmmenu.Menu.Items.Items[0].Items[0].Enabled := true; //ContatoAtivo
          frmmenu.Menu.Items.Items[0].Items[1].Enabled := true; //ContatoReceptivo1
          frmmenu.Menu.Items.Items[0].Items[4].Enabled := False; //RetornodeSMS1
          frmmenu.Menu.Items.Items[0].Items[5].Enabled := False; //AoManualemLote1
          frmmenu.Menu.Items.Items[0].Items[6].Enabled := False; //ConsultadeAoManual1
          frmmenu.Menu.Items.Items[1].Enabled := False;          //Cadastros1
          frmmenu.Menu.Items.Items[2].Enabled := False;          //Configuraes1
          frmmenu.Menu.Items.Items[3].Enabled := False;          //Arquivos1
          frmmenu.Menu.Items.Items[4].Enabled := False;          //Relatrios1

          frmMenu.Button2Click(Sender);
        end;

        if uniscript.FieldbyName('NIVEL').AsString = 'S' then begin
{          FRMMENU.Panel_Supervisor.Visible := TRUE;
          FRMMENU.Panel_Operador.Visible := FALSE;
}
          frmmenu.Menu.Items.Items[0].Items[0].Enabled := True; //ContatoAtivo
          frmmenu.Menu.Items.Items[0].Items[1].Enabled := True; //ContatoReceptivo1
          frmmenu.Menu.Items.Items[0].Items[4].Enabled := True; //RetornodeSMS1
          frmmenu.Menu.Items.Items[0].Items[5].Enabled := True; //AoManualemLote1
          frmmenu.Menu.Items.Items[0].Items[6].Enabled := True; //ConsultadeAoManual1
          frmmenu.Menu.Items.Items[1].Enabled := True;          //Cadastros1
          frmmenu.Menu.Items.Items[2].Enabled := True;          //Configuraes1
          frmmenu.Menu.Items.Items[3].Enabled := True;          //Arquivos1
          frmmenu.Menu.Items.Items[4].Enabled := True;          //Relatrios1
        end;

        iArq := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'oracle_path.ini');
        iArq.WriteString('BD','Last_User',ComboUsuario.Text) ;
        iArq.Free;

        uniscript.Close;
        frmLogin.Visible := False;
        frmMenu.show;
     end else begin
        showmessage('Senha incorreta.');
        edtSenha.Setfocus;
     end;
  end else begin
        showmessage('Usuário incorreto');
        ComboUsuario.Setfocus;
  end;
end;

procedure TfrmLogin.ComboUsuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then edtSenha.SetFocus;
end;

procedure TfrmLogin.ComboUsuarioSelect(Sender: TObject);
begin
EdtSenha.SetFocus;
end;

end.
