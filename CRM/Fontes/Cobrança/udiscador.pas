unit udiscador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid;

type
  Tfrmdiscador = class(TForm)
    Panel_Supervisor: TPanel;
    Panel12: TPanel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    Panel16: TPanel;
    Panel18: TPanel;
    Panel2: TPanel;
    lblcampanha: TLabel;
    Label68: TLabel;
    Panel3: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    RzToolButton3: TRzToolButton;
    RzToolButton4: TRzToolButton;
    RzToolButton5: TRzToolButton;
    RzToolButton6: TRzToolButton;
    RzToolButton7: TRzToolButton;
    JvDBGrid1: TJvDBGrid;
    Panel4: TPanel;
    Label1: TLabel;
    JvDBGrid2: TJvDBGrid;
    procedure ComboBox1Change(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdiscador: Tfrmdiscador;

implementation

{$R *.dfm}

uses fclientes, umenu, uCliente;

procedure Tfrmdiscador.ComboBox1Change(Sender: TObject);
begin
edit1.setfocus;
end;

procedure Tfrmdiscador.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

procedure Tfrmdiscador.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then RzToolButton3Click(Sender);
end;

procedure Tfrmdiscador.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmmenu.show;
end;

procedure Tfrmdiscador.JvDBGrid1DblClick(Sender: TObject);
begin
frmclientes.uniQClientes.Close;
frmclientes.uniQClientes.Open;
if frmclientes.uniQClientesLista.recordcount > 0 then frmclientes.RzToolButton1Click(Sender);
end;

procedure Tfrmdiscador.RzToolButton3Click(Sender: TObject);
begin
if combobox1.itemindex = 0 then begin
  frmclientes.uniQClientesLista.Close;
  frmclientes.uniQClientesLista.Sql.Text := 'select * from clientes where upper(nome) like (''%' + EDIT1.TEXT + '%'') order by nome';
  frmclientes.uniQClientesLista.Open;
  frmclientes.uniQClientesLista.First;
end;

if combobox1.itemindex = 1 then begin
  frmclientes.uniQClientesLista.Close;
  frmclientes.uniQClientesLista.Sql.Text := 'select * from clientes where upper(cpf_cnpj) like (''%' + EDIT1.TEXT + '%'') order by nome';
  frmclientes.uniQClientesLista.Open;
  frmclientes.uniQClientesLista.First;
end;
end;

end.
