unit uFiltroRelatoriodeClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, 
  Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, 
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, 
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, 
  FireDAC.Comp.Client, FireDAC.DBX.Migrate;

type
  Tfrmfiltrorelatoriosdeclientes = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ListBox1: TListBox;
    RadioGroup1: TRadioGroup;
    Panel1: TPanel;
    btnfiltrar: TRzToolButton;
    btnretornar: TRzToolButton;
    UniDataSource1: TDataSource;
    uniscript: TFDQuery;
    procedure btnretornarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfiltrorelatoriosdeclientes: Tfrmfiltrorelatoriosdeclientes;

implementation

uses
  urelatoriodeclientesqr;

{$R *.dfm}

procedure Tfrmfiltrorelatoriosdeclientes.btnretornarClick(Sender: TObject);
begin

  UNISCRIPT.CLOSE;
  UNISCRIPT.SQL.TEXT := 'select * FROM CLIENTES';
  UNISCRIPT.OPEN;
  UNISCRIPT.FIRST;

  frelatoriodeclientes.quickrep1.Preview;
end;

procedure Tfrmfiltrorelatoriosdeclientes.FormShow(Sender: TObject);
begin
  COMBOBOX1.CLEAR;
  COMBOBOX2.CLEAR;
  COMBOBOX3.CLEAR;
  COMBOBOX4.CLEAR;

  COMBOBOX1.ITEMS.ADD('<<TODOS>>');
  COMBOBOX2.ITEMS.ADD('<<TODOS>>');
  COMBOBOX3.ITEMS.ADD('<<NENHUM>>');
  COMBOBOX4.ITEMS.ADD('<<NENHUM>>');

  COMBOBOX1.ITEMINDEX := 0;
  COMBOBOX2.ITEMINDEX := 0;
  COMBOBOX3.TEXT := '<<NENHUM>>';
  COMBOBOX4.TEXT := '<<NENHUM>>';

  UNISCRIPT.CLOSE;
  UNISCRIPT.SQL.TEXT := 'select * FROM origemdosdados';
  UNISCRIPT.OPEN;
  UNISCRIPT.FIRST;
  WHILE NOT UNISCRIPT.EOF DO BEGIN
    COMBOBOX1.ITEMS.ADD(UNISCRIPT.FIELDBYNAME('EMPRESA').ASSTRING);
    UNISCRIPT.NEXT;
  END;

  UNISCRIPT.CLOSE;
  UNISCRIPT.SQL.TEXT := 'select * FROM CLASS_CLIENTE';
  UNISCRIPT.OPEN;
  UNISCRIPT.FIRST;
  WHILE NOT UNISCRIPT.EOF DO BEGIN
    COMBOBOX2.ITEMS.ADD(UNISCRIPT.FIELDBYNAME('DESCRICAO').ASSTRING);
    UNISCRIPT.NEXT;
  END;

  UNISCRIPT.CLOSE;
  UNISCRIPT.SQL.TEXT := 'select * FROM CLASS_CLIENTE';
  UNISCRIPT.OPEN;
  UNISCRIPT.FIRST;
  WHILE NOT UNISCRIPT.EOF DO BEGIN
    COMBOBOX3.ITEMS.ADD(UNISCRIPT.FIELDBYNAME('DESCRICAO').ASSTRING);
    UNISCRIPT.NEXT;
  END;


  UNISCRIPT.CLOSE;
end;

end.
