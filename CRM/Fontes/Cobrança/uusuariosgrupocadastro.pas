unit uusuariosgrupocadastro;

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
  Tfrmgruposdeusuarioscadastro = class(TForm)
    Panel3: TPanel;
    Panel4: TPanel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    DBAdvLUEdit1: TDBAdvLUEdit;
    DBAdvLUEdit2: TDBAdvLUEdit;
    unigetid: TFDQuery;
    procedure FormShow(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvDBComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    ALTERAINSERE: STRING;
  end;

var
  frmgruposdeusuarioscadastro: Tfrmgruposdeusuarioscadastro;

implementation

{$R *.dfm}

uses
  uusuariosgrupo, uDataModule, uFuncoes;


procedure Tfrmgruposdeusuarioscadastro.AdvDBComboBox2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
KEY := 0;
end;

procedure Tfrmgruposdeusuarioscadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  alterainsere := '';
end;

procedure Tfrmgruposdeusuarioscadastro.FormShow(Sender: TObject);
begin
DBAdvLUEdit2.SETFOCUS;
end;

procedure Tfrmgruposdeusuarioscadastro.RzToolButton1Click(Sender: TObject);
begin
  IF ALTERAINSERE = 'INSERE' THEN BEGIN
//    unigetid.close;
//    unigetid.sql.text := 'SELECT SEQ_USUARIOS_GRUPO.nextval as Sequences FROM DUAL';
//    unigetid.open;

    frmgruposdeusuarios.uniqscript.edit;
    DBAdvLUEdit1.Text := IntToStr(GetID('codigo','usuario_grupo')); //unigetid.FieldByName('Sequences').AsString;
    frmgruposdeusuarios.uniqscript.post;

    frmDataModule.UniConnection1.Commit;

//    unigetid.close;

    ALTERAINSERE := '';
  END
  ELSE BEGIN
    frmgruposdeusuarios.uniqscript.edit;
    frmgruposdeusuarios.uniqscript.post;
    frmDataModule.UniConnection1.Commit;

    unigetid.close;

    ALTERAINSERE := '';
  END;

  Close;
end;

procedure Tfrmgruposdeusuarioscadastro.RzToolButton2Click(Sender: TObject);
begin
  frmgruposdeusuarios.uniqscript.edit;
  Close;
end;

end.
