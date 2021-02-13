unit uoperadoresgrupocadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, 
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.TabNotBk, AdvEdit, advlued, 
  DBAdvLe, Vcl.DBCtrls, RzButton, AdvCombo, Lucombo, dblucomb, Data.DB, 
  ACBrBase, ACBrEnterTab, JvComponentBase, JvEnterTab, AdvOfficeTabSet, 
  AdvOfficeTabSetStylers, RzTabs, AdvOfficeButtons, DBAdvOfficeButtons, 
  AdvDBComboBox, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, 
  AdvDateTimePicker, AdvDBDateTimePicker, cxGraphics, cxControls, 
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxCustomListBox, 
  cxCheckListBox, cxDBCheckListBox, AdvDBLookupComboBox, FireDAC.Stan.Intf, 
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, 
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, 
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.DBX.Migrate;

type
  Tfrmoperadoresgrupocadastro = class(TForm)
    Panel3: TPanel;
    Panel4: TPanel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    DBAdvLUEdit1: TDBAdvLUEdit;
    DBAdvLUEdit2: TDBAdvLUEdit;
    unigetid: TFDQuery;
    Label2: TLabel;
    RzToolButton9: TRzToolButton;
    btnalterar: TRzToolButton;
    RzToolButton3: TRzToolButton;
    JvDBGrid1: TJvDBGrid;
    UniQOperadorGrupoOperador: TFDQuery;
    UniDSQOperadorGrupoOperador: TDataSource;
    UniDSQUsuarios: TDataSource;
    uniQUsuarios: TFDQuery;
    uniscript: TFDQuery;
    UniQOperadorGrupoOperadorCODIGO: TFMTBCDField;
    UniQOperadorGrupoOperadorGRUPO: TFMTBCDField;
    UniQOperadorGrupoOperadorOPERADOR: TFMTBCDField;
    UniQOperadorGrupoOperadornome: TStringField;
    procedure FormShow(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvDBComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzToolButton9Click(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ALTERAINSERE: STRING;
  end;

var
  frmoperadoresgrupocadastro: Tfrmoperadoresgrupocadastro;

implementation

{$R *.dfm}

uses
  uDataModule, uoperadoresgrupo, uselecionaoperadores, uFuncoes;

procedure Tfrmoperadoresgrupocadastro.AdvDBComboBox2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
KEY := 0;
end;

procedure Tfrmoperadoresgrupocadastro.btnalterarClick(Sender: TObject);
begin
  if DBAdvLUEdit1.Text <> '' then
    frmselecionaoperadores.ShowModal
  else
    showmessage('Antes de inserir, grave o grupo.');
  UniQOperadorGrupoOperador.Refresh;
end;

procedure Tfrmoperadoresgrupocadastro.FormActivate(Sender: TObject);
begin
    with UniQOperadorGrupoOperador do
    begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                                                         ');
    SQL.Add('  operador_grupo_operadores.*,                                 ');
    SQL.Add('  usuarios.nome                                                ');
    SQL.Add('FROM                                                           ');
    SQL.Add('  operador_grupo_operadores                                    ');
    SQL.Add('  INNER JOIN usuarios                                          ');
    SQL.Add('    ON operador_grupo_operadores.operador = usuarios.codigo    ');
    SQL.Add('  INNER JOIN operador_grupo                                    ');
    SQL.Add('    ON operador_grupo.CODIGO = operador_grupo_operadores.GRUPO ');
    SQL.Add('WHERE operador_grupo.CODIGO = :Codigo                          ');
    SQL.Add('ORDER BY usuarios.NOME                                         ');
    ParamByName('Codigo').AsInteger := frmoperadoresgrupo.uniQScriptCODIGO.AsInteger;
    UniQOperadorGrupoOperador.Open;
    end;
end;

procedure Tfrmoperadoresgrupocadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  alterainsere := '';
  UniQOperadorGrupoOperador.Close;
  UniQUsuarios.Close;
  UniScript.Close;
end;

procedure Tfrmoperadoresgrupocadastro.FormShow(Sender: TObject);
begin
  DBAdvLUEdit2.SETFOCUS;
end;

procedure Tfrmoperadoresgrupocadastro.RzToolButton1Click(Sender: TObject);
begin
  IF ALTERAINSERE = 'INSERE' THEN
  BEGIN
//    unigetid.close;
//    unigetid.sql.text := 'SELECT SEQ_OPERADOR_GRUPO.nextval as Sequences FROM DUAL';
//    unigetid.open;

    frmoperadoresgrupo.uniqscript.edit;
    DBAdvLUEdit1.Text := IntToStr(GetID('codigo','operador_grupo'));

    frmoperadoresgrupo.uniqscript.post;

    frmDataModule.UniConnection1.Commit;

    //unigetid.close;

    ALTERAINSERE := '';
  END
  ELSE
  BEGIN
    //frmoperadoresgrupo.uniqscript.edit;
    frmoperadoresgrupo.uniqscript.post;
    frmDataModule.UniConnection1.Commit;

    //unigetid.close;

    ALTERAINSERE := '';
  END;

  Close;
end;

procedure Tfrmoperadoresgrupocadastro.RzToolButton2Click(Sender: TObject);
begin
  frmoperadoresgrupo.uniqscript.edit;
  frmDataModule.UniConnection1.Rollback;
  Close;
end;

procedure Tfrmoperadoresgrupocadastro.RzToolButton3Click(Sender: TObject);
begin
  if Application.MessageBox('Esta operação é irreversível. Deseja continuar?','Atenção',MB_ICONHAND + MB_YESNO + MB_ICONQUESTION) = mrYES then
    try UniQOperadorGrupoOperador.Delete; except end;
UniQOperadorGrupoOperador.Refresh;
end;

procedure Tfrmoperadoresgrupocadastro.RzToolButton9Click(Sender: TObject);
begin
  if DBAdvLUEdit1.Text <> '' then
  begin
    UniQOperadorGrupoOperador.Close;
    UniQOperadorGrupoOperador.Sql.Clear;
    UniQOperadorGrupoOperador.Sql.Text := 'delete from operador_grupo_operadores where grupo = :grupo';
                          UniQOperadorGrupoOperador.ParamByName('GRUPO').AsString := DBADVLUEDIT1.Text;
    UniQOperadorGrupoOperador.ExecSQL;

    UniQUsuarios.Close;
    UniQUsuarios.Sql.Clear;
    UniQUsuarios.Sql.Text := 'select * from usuarios where nivel = ''O''';
    UniQUsuarios.Open;
    UniQUsuarios.First;

    UniScript.Close;
    UniScript.Sql.Clear;
    UniScript.Sql.Text := 'select * from operador_grupo_operadores';
    UniScript.Open;

    while not UniQUsuarios.Eof do
    begin
      UniScript.open;
      UniScript.insert;

//      unigetid.close;
//      unigetid.sql.text := 'SELECT SEQ_OPERADOR_GRUPO_OPERADORES.nextval as Sequences FROM DUAL';
//      unigetid.open;

      UniScript.FieldbyName('CODIGO').Value := GetID('codigo','operador_grupo_operadores'); //unigetid.FieldByName('Sequences').Value;
      UniScript.FieldbyName('GRUPO').AsString := DBAdvLUEdit1.TEXT;
      UniScript.FieldbyName('OPERADOR').Value := UniQUsuarios.FieldByName('CODIGO').Value;
      UniScript.post;

      UniQUsuarios.Next;
    end;

    UniQUsuarios.Close;
    unigetid.close;

    UniQOperadorGrupoOperador.Close;
    UniQOperadorGrupoOperador.Sql.Clear;
    UniQOperadorGrupoOperador.SQL.Add('SELECT                                                      ');
    UniQOperadorGrupoOperador.SQL.Add('  operador_grupo_operadores.*,                              ');
    UniQOperadorGrupoOperador.SQL.Add('  usuarios.nome                                             ');
    UniQOperadorGrupoOperador.SQL.Add('FROM                                                        ');
    UniQOperadorGrupoOperador.SQL.Add('  operador_grupo_operadores                                 ');
    UniQOperadorGrupoOperador.SQL.Add('  INNER JOIN usuarios                                       ');
    UniQOperadorGrupoOperador.SQL.Add('    ON operador_grupo_operadores.operador = usuarios.codigo ');
    UniQOperadorGrupoOperador.SQL.Add('GROUP BY usuarios.CODIGO                                    ');
    UniQOperadorGrupoOperador.SQL.Add('ORDER BY usuarios.NOME                                      ');
    UniQOperadorGrupoOperador.Open;
  end
  else
    showmessage('Antes de inserir, grave o grupo.');
UniQOperadorGrupoOperador.Refresh;
end;

end.
