unit ucadastrodeavisos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, 
  RzButton, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, 
  JvExDBGrids, JvDBGrid, AdvMemo, DBAdvMemo, Vcl.StdCtrls, AdvEdit, advlued, 
  DBAdvLe, AdvDateTimePicker, AdvDBDateTimePicker, System.Rtti, 
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt, 
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, sMemo, 
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, 
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, 
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def, 
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, 
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Comp.DataSet, 
  FireDAC.DBX.Migrate;

type
  TfrmCadastrodeAvisos = class(TForm)
    uniscript: TFDQuery;
    JvDBGrid1: TJvDBGrid;
    Panel1: TPanel;
    TabControl1: TTabControl;
    btnfiltrar: TRzToolButton;
    DBAdvLUEdit1: TDBAdvLUEdit;
    DBAdvLUEdit3: TDBAdvLUEdit;
    DBAdvLUEdit4: TDBAdvLUEdit;
    Label1: TLabel;
    DBCheckBox1: TDBCheckBox;
    Button1: TButton;
    DBMemo1: TDBMemo;
    qryAVISO: TFDQuery;
    Conexao: TFDConnection;
    JvDBGrid2: TJvDBGrid;
    uniscriptCODIGO: TFloatField;
    uniscriptTITULO: TStringField;
    uniscriptAVISO: TBlobField;
    uniscriptDATA: TSQLTimeStampField;
    uniscriptUSUARIO: TFloatField;
    uniscriptDTA_AGENDA: TSQLTimeStampField;
    btnfiltradata: TRzToolButton;
    AdvDBDateTimePicker1: TAdvDBDateTimePicker;
    AdvDBDateTimePicker2: TAdvDBDateTimePicker;
    Bevel1: TBevel;
    uniscriptAGENDAR_AVISO: TStringField;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    btnfiltratexto: TRzToolButton;
    unigetid: TFDQuery;
    UniDataSource1: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure btnfiltrarClick(Sender: TObject);
    procedure btnfiltradataClick(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure btnfiltratextoClick(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
  private
    { Private declarations }
    INSERE_ALTERA: STRING;
  public
    { Public declarations }
  end;

var
  frmCadastrodeAvisos: TfrmCadastrodeAvisos;

implementation

{$R *.dfm}

uses
  uavisosfiltro, ulogin, udatamodule;

procedure TfrmCadastrodeAvisos.btnfiltradataClick(Sender: TObject);
begin
frmCadastrodeAvisos.FormShow(Sender);
end;

procedure TfrmCadastrodeAvisos.btnfiltrarClick(Sender: TObject);
begin
frmavisosfiltro.showmodal;
end;

procedure TfrmCadastrodeAvisos.btnfiltratextoClick(Sender: TObject);
begin
INSERE_ALTERA := 'ALTERA';
end;

procedure TfrmCadastrodeAvisos.Button1Click(Sender: TObject);
var
contador: integer;
begin

contador := 0;

QRYAVISO.CLOSE;
QRYAVISO.SQL.TEXT := 'SELECT * FROM AVISO';
QRYAVISO.OPEN;

WHILE NOT QRYAVISO.EOF DO BEGIN
  contador := contador + 1;
  UNISCRIPT.INSERT;
  DBAdvLUEdit1.Text :=  QRYAVISO.Fieldbyname('CODIGO').AsString;
  AdvDBDateTimePicker1.DateTime :=  QRYAVISO.Fieldbyname('DATA').AsDateTime;
  AdvDBDateTimePicker2.DateTime :=  QRYAVISO.Fieldbyname('DTA_AGENDA').AsDateTime;
  DBMEMO1.Text :=  QRYAVISO.Fieldbyname('AVISO').AsString;
  DBAdvLUEdit4.Text :=  QRYAVISO.Fieldbyname('TITULO').AsString;
  DBAdvLUEdit3.Text :=  QRYAVISO.Fieldbyname('USUARIO').AsString;
  //DBAdvLUEdit1.Text := '-1';
  TRY UNISCRIPT.POST; EXCEPT END;

  QRYAVISO.NEXT;
END;

frmDataModule.UniConnection1.Commit;

end;

procedure TfrmCadastrodeAvisos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
uniscript.close;
end;

procedure TfrmCadastrodeAvisos.FormShow(Sender: TObject);
begin
frmCadastrodeAvisos.uniscript.close;
frmCadastrodeAvisos.uniscript.sql.text := 'select * from aviso';
frmCadastrodeAvisos.uniscript.open;
end;


procedure TfrmCadastrodeAvisos.RzToolButton1Click(Sender: TObject);
begin
IF INSERE_ALTERA = 'INSERE' THEN BEGIN
  unigetid.close;
  unigetid.sql.text := 'SELECT *SEQ_AVISO.nextval as Sequences FROM DUAL';
  unigetid.open;

  uniscript.edit;
  DBAdvLUEdit1.Text := unigetid.FieldByName('Sequences').AsString;
  uniscript.post;

  frmDataModule.UniConnection1.Commit;

  unigetid.close;

  INSERE_ALTERA := '';
END
ELSE BEGIN
  uniscript.post;
  unigetid.close;
END;
  {  try
    uniscript.edit;
    DBAdvLUEdit1.Text := GetID('SEQ_AVISO');
    uniscript.post;

  except
    uniscript.cancel;
  end;
}end;

procedure TfrmCadastrodeAvisos.RzToolButton2Click(Sender: TObject);
begin
INSERE_ALTERA := '';
uniscript.CANCEL;
end;

procedure TfrmCadastrodeAvisos.RzToolButton3Click(Sender: TObject);
begin
INSERE_ALTERA := 'INSERE';

  try
    uniscript.append;
    AdvDBDateTimePicker1.DateTime := Now;
    AdvDBDateTimePicker2.DateTime := Now;
    DBAdvLUEdit3.Text :=  frmlogin.USUARIOLOGADO_CODIGO;

    DBAdvLUEdit4.SETFOCUS;
  except

  end;
{
  try
    unitable1.append;
    AdvDBDateTimePicker1.DateTime := Now;
    AdvDBDateTimePicker2.DateTime := Now;
    DBAdvLUEdit3.Text :=  frmlogin.USUARIOLOGADO_CODIGO;
    //DBAdvLUEdit1.Text :=  '0';

    DBAdvLUEdit4.SETFOCUS;
  except

  end;
}
end;

end.
