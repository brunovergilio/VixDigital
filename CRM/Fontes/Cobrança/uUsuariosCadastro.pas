unit uUsuariosCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, 
  AdvGlowButton, Vcl.ExtCtrls, Vcl.StdCtrls, AdvEdit, advlued, DBAdvLe, Data.DB, 
  AdvCombo, Lucombo, dblucomb, AdvGraphicCheckLabel, DBAdvGraphicCheckLabel, 
  Vcl.ComCtrls, Vcl.TabNotBk, Vcl.DBCtrls, RzButton, acNoteBook, Vcl.Grids, 
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, 
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, 
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, 
  FireDAC.Comp.Client, FireDAC.DBX.Migrate; //, CREncryption;

type
 TfrmUsuariosCadastro = class(TForm)
  Panel1: TPanel;
  Panel2: TPanel;
  GroupBox2: TGroupBox;
  DBAdvGraphicCheckLabel1: TDBAdvGraphicCheckLabel;
  DBAdvGraphicCheckLabel2: TDBAdvGraphicCheckLabel;
  DBAdvGraphicCheckLabel3: TDBAdvGraphicCheckLabel;
  DBAdvGraphicCheckLabel4: TDBAdvGraphicCheckLabel;
  DBAdvGraphicCheckLabel5: TDBAdvGraphicCheckLabel;
  DBAdvGraphicCheckLabel6: TDBAdvGraphicCheckLabel;
  DBAdvGraphicCheckLabel7: TDBAdvGraphicCheckLabel;
  DBAdvGraphicCheckLabel9: TDBAdvGraphicCheckLabel;
  UniDSQUsuarios: TDataSource;
  uniQUsuarios: TFDQuery;
  TabbedNotebook1: TTabbedNotebook;
  Notebook1: TNotebook;
  GroupBox1: TGroupBox;
  Label1: TLabel;
  DBAdvLUEdit1: TDBAdvLUEdit;
  DBLUCombo1: TDBLUCombo;
  DBAdvLUEdit3: TDBAdvLUEdit;
  Notebook2: TNotebook;
  DBMemo1: TDBMemo;
  DBLookupComboBox1: TDBLookupComboBox;
  Label3: TLabel;
  uniQGruposUsuarios: TFDQuery;
  UniDSQGruposUsuarios: TDataSource;
  RzToolButton1: TRzToolButton;
  RzToolButton2: TRzToolButton;
  sNotebook1: TsNotebook;
  Label2: TLabel;
  JvDBGrid1: TJvDBGrid;
  Label4: TLabel;
  JvDBGrid2: TJvDBGrid;
  UniQCampanha: TFDQuery;
  UniDSQCampanha: TDataSource;
  UniQGrupoOperador: TFDQuery;
  UniDSQGrupoOperador: TDataSource;
  UniQOperador_Grupo_Operador: TFDQuery;
  UniDSQOperador_Grupo_Operador: TDataSource;
  unigetid: TFDQuery;
  DBEdtRegistro: TDBAdvLUEdit;
  DBAdvGraphicCheckLabel10: TDBAdvGraphicCheckLabel;
    uniQGruposUsuariosNOME_GRUPO: TStringField;
    uniQGruposUsuariosUSR_CAD: TFMTBCDField;
    uniQGruposUsuariosDTA_CAD: TSQLTimeStampField;
    uniQGruposUsuariosAGE_NR_MAXIMO_DIA: TFMTBCDField;
    uniQGruposUsuariosAGE_NR_DIA_PASSADO: TFMTBCDField;
    uniQGruposUsuariosOPERACAOSTATUS: TStringField;
    uniQGruposUsuariosAGE_NR_MAXIMO_USUARIO_CLIENTE: TFMTBCDField;
    uniQGruposUsuariosFINALIZANEGOCIACAO: TFMTBCDField;
    uniQGruposUsuariosPERMITE_ENVIO_AVISO: TFMTBCDField;
    UniQCampanhaCODIGO: TFMTBCDField;
    UniQCampanhaCODIGO_CAMPANHA: TIntegerField;
    UniQCampanhaGRUPO_OPERADOR: TIntegerField;
    UniQCampanhanome: TStringField;
    UniQGrupoOperadorNOME_GRUPO: TStringField;
    UniQGrupoOperadorUSR_CAD: TFMTBCDField;
    UniQGrupoOperadorDTA_CAD: TSQLTimeStampField;
    UniQGrupoOperadorAGE_NR_MAXIMO_DIA: TFMTBCDField;
    UniQGrupoOperadorAGE_NR_DIA_PASSADO: TFMTBCDField;
    UniQGrupoOperadorOPERACAOSTATUS: TStringField;
    UniQGrupoOperadorAGE_NR_MAXIMO_USUARIO_CLIENTE: TFMTBCDField;
    UniQGrupoOperadorFINALIZANEGOCIACAO: TFMTBCDField;
    UniQGrupoOperadorPERMITE_ENVIO_AVISO: TFMTBCDField;
    UniQOperador_Grupo_OperadorCODIGO: TFMTBCDField;
    UniQOperador_Grupo_OperadorGRUPO: TFMTBCDField;
    UniQOperador_Grupo_OperadorOPERADOR: TFMTBCDField;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label6: TLabel;
    uniQGruposUsuariosCODIGO: TIntegerField;
    UniQGrupoOperadorCODIGO: TIntegerField;
  procedure FormActivate(Sender: TObject);
  procedure FormClose(Sender: TObject; var Action: TCloseAction);
  procedure RzToolButton1Click(Sender: TObject);
  procedure RzToolButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
 private
  { Private declarations }
 public
  { Public declarations }
 end;

var
 frmUsuariosCadastro: TfrmUsuariosCadastro;

implementation

uses
  udatamodule, uFuncoes, FUsuarios;

{$R *.dfm}

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

procedure TfrmUsuariosCadastro.FormActivate(Sender: TObject);
begin
  TabbedNotebook1.PageIndex := 0;
  try
   DBAdvLUEdit1.SetFocus;
  except
  end;

  with uniQGruposUsuarios do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT           ');
    SQL.Add('  *              ');
    SQL.Add('FROM             ');
    SQL.Add('  operador_grupo ');
    Open;
  end;

  with UniQOperador_Grupo_Operador do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                          ');
    SQL.Add('  ogo.*                         ');
    SQL.Add('FROM                            ');
    SQL.Add('  operador_grupo_operadores ogo ');
    SQL.Add('WHERE ogo.OPERADOR = :Codigo    ');
    ParamByName('Codigo').AsInteger := FrmUsuarios.uniQUsuariosCODIGO.AsInteger;
    Open;
  end;

  with UniQGrupoOperador do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                    ');
    SQL.Add('  og.*                    ');
    SQL.Add('FROM                      ');
    SQL.Add('  operador_grupo og       ');
    SQL.Add('WHERE og.CODIGO = :Codigo ');
    ParamByName('Codigo').AsInteger := UniQOperador_Grupo_OperadorGRUPO.AsInteger;
    Open;
  end;

  with UniQCampanha do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                                                               ');
    SQL.Add('  campanha_grupo_operador.*,                                         ');
    SQL.Add('  campanha_crm.nome                                                  ');
    SQL.Add('FROM                                                                 ');
    SQL.Add('  campanha_grupo_operador                                            ');
    SQL.Add('  INNER JOIN campanha_crm                                            ');
    SQL.Add('    ON campanha_grupo_operador.codigo_campanha = campanha_crm.codigo ');
    SQL.Add('WHERE campanha_grupo_operador.GRUPO_OPERADOR = :Codigo               ');
    ParamByName('Codigo').AsInteger := UniQGrupoOperadorCODIGO.AsInteger;
    Open;
  end;
end;

procedure TfrmUsuariosCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 frmUsuariosCadastro.TabbedNotebook1.ActivePage := 'Dados Principais';
 try
  uniQUsuarios.Close;
 except
 end;
 uniQGruposUsuarios.Close;
 UniQGrupoOperador.Close;
 UniQOperador_Grupo_Operador.Close;
end;

procedure TfrmUsuariosCadastro.FormShow(Sender: TObject);
begin
  Edit1.Text := CRYPT('D',uniQUsuarios.FieldbyName('senha').AsString);
  Edit2.Text := CRYPT('D',uniQUsuarios.FieldbyName('senha').AsString);
end;

procedure TfrmUsuariosCadastro.RzToolButton1Click(Sender: TObject);
begin
  if Edit1.Text <> Edit2.Text then
  begin
    MessageDlg('As senhas não coincidem.',mtInformation,[mbOk],0);
    Abort;
  end;
// unigetid.Close;
// unigetid.sql.text := 'SELECT USUARIOS_CODIGO.nextval as Sequences FROM DUAL';
// unigetid.open;
//
 if uniQUsuarios.State = dsInsert then
   DBEdtRegistro.text := IntToStr(GetID('codigo','usuarios'));
// unigetid.Close;

 Try
  uniQUsuarios.Edit;
  uniQUsuarios.FieldByName('senha').AsString :=  CRYPT('C',Edit1.Text);
  uniQUsuarios.Post;
  frmDataModule.UniConnection1.Commit;
 except
  showmessage('Erro ao gravar. Nl 58');
 end;
 Close;
end;

procedure TfrmUsuariosCadastro.RzToolButton2Click(Sender: TObject);
begin
 Try
  uniQUsuarios.Cancel;
 except
  showmessage('Erro ao gravar. Nl 77');
 end;
 Close;
end;

end.
