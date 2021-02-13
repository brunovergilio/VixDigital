unit ueventosoperador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, 
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.TabNotBk, AdvEdit, advlued, 
  DBAdvLe, Vcl.DBCtrls, RzButton, AdvCombo, Lucombo, dblucomb, Data.DB, 
  ACBrBase, ACBrEnterTab, JvComponentBase, JvEnterTab, AdvOfficeTabSet, 
  AdvOfficeTabSetStylers, RzTabs, AdvOfficeButtons, DBAdvOfficeButtons, 
  AdvDBComboBox, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, AdvMemo, 
  DBAdvMemo, AdvDBLookupComboBox, FireDAC.Stan.Intf, FireDAC.Stan.Option, 
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, 
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, 
  FireDAC.Comp.Client, FireDAC.DBX.Migrate;

type
  Tfrmeventosoperador = class(TForm)
    Panel3: TPanel;
    Panel4: TPanel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    DBAdvLUEdit1: TDBAdvLUEdit;
    DBAdvLUEdit2: TDBAdvLUEdit;
    DBAdvLUEdit14: TDBAdvLUEdit;
    DBAdvLUEdit15: TDBAdvLUEdit;
    Bevel5: TBevel;
    UniDSQEventos_cod: TDataSource;
    UniQEventos_cod: TFDQuery;
    DBAdvLUEdit4: TDBAdvLUEdit;
    unigetid: TFDQuery;
    DBEdtRegistro: TDBAdvLUEdit;
    Label1: TLabel;
    DBAdvLUEdCod_evento: TDBAdvLUEdit;
    DBAdvLUEdit3: TDBAdvLUEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBAdvLUEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBAdvLUEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBAdvLUEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBAdvLUEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure AdvDBComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure AdvDBLookupComboBox1CloseUp(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ALTERAINSERE: STRING;
  end;

var
  frmeventosoperador: Tfrmeventosoperador;

implementation

{$R *.dfm}

uses
  fclientes, ucliente, uDataModule, uAgenda, UMENU, uagendacadastro, uFuncoes;

procedure Tfrmeventosoperador.AdvDBComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure Tfrmeventosoperador.AdvDBLookupComboBox1CloseUp(Sender: TObject);
begin
dbmemo1.setfocus;
end;

procedure Tfrmeventosoperador.DBAdvLUEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
if (Key = #13) then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmeventosoperador.DBAdvLUEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
if (Key = #13) then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmeventosoperador.DBAdvLUEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
if (Key = #13) then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmeventosoperador.DBAdvLUEdit5KeyPress(Sender: TObject;
  var Key: Char);
begin
if (Key = #13) then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmeventosoperador.DBLookupComboBox1CloseUp(Sender: TObject);
begin
dbmemo1.SetFocus;
end;

procedure Tfrmeventosoperador.FormActivate(Sender: TObject);
begin
UniQEventos_cod.Active := True;
UniQEventos_cod.First;
UniQEventos_cod.Last;
UniQEventos_cod.First;
try DBLookupComboBox1.setfocus; except end;
end;

procedure Tfrmeventosoperador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmclientes.UniQEventosCobranca.Cancel;
  alterainsere := '';
  UniQEventos_cod.Active := False;
end;

procedure Tfrmeventosoperador.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
//if (Key = #13) then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmeventosoperador.RzToolButton1Click(Sender: TObject);
begin
  IF ALTERAINSERE = 'INSERE' THEN BEGIN
//    unigetid.close;
//    unigetid.sql.text := 'SELECT SEQ_EVENTOSCOBRANCA.nextval as Sequences FROM DUAL';
//    unigetid.open;

    DBEdtRegistro.Text := IntToStr(GetID('codigo','eventoscobranca'));

//    try
      frmclientes.UniQEventosCobranca.eDIT;
      DBAdvLUEdCod_evento.Text := DBAdvLUEdit3.Text;
      if DBAdvLUEdit3.text = '' then DBAdvLUEdCod_evento.Text := '42';
      frmclientes.UniQEventosCobranca.post;
//    except showmessage('Erro ao gravar. Ln 142'); end;

    frmDataModule.UniConnection1.Commit;

    ALTERAINSERE := '';
  END
  ELSE BEGIN
    frmclientes.UniQEventosCobranca.EDIT;
    frmclientes.UniQEventosCobranca.post;
    frmDataModule.UniConnection1.Commit;
  END;

//  try
    frmclientes.UniQEventosCobranca.EDIT;
    frmclientes.UniQEventosCobranca.post;
    frmclientes.UniQEventosCobranca.Refresh;
//  except end;

  unigetid.close;
  Close;
end;

procedure Tfrmeventosoperador.RzToolButton2Click(Sender: TObject);
begin
  frmclientes.UniQEventosCobranca.Cancel;
  Close;
end;

end.
