unit uFFiltro_RelRemessas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, RxLookup, Buttons, Menus, AdvGlowButton;

type
  TFiltro_RelRemessas = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    Look_Banco: TRxDBLookupCombo;
    CK_Fases: TCheckBox;
    Lb_Modelo: TLabel;
    Cb_Modelo: TComboBox;
    Radio_Tipo_Pessoa: TRadioGroup;
    PopupLimparConteudo_UF: TPopupMenu;
    MenuItem5: TMenuItem;
    PopupLimparConteudo_Remessas: TPopupMenu;
    MenuItem2: TMenuItem;
    PopupLimparConteudo_ICE: TPopupMenu;
    MenuItem3: TMenuItem;
    Group_Registros: TGroupBox;
    Ri_Registros: TListBox;
    Panel2: TPanel;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label6: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label8: TLabel;
    Edit2: TEdit;
    Label9: TLabel;
    Button1: TButton;
    ListUFCliente: TListBox;
    Bevel1: TBevel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    ComboBox1: TComboBox;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Btn_VisualizarClick(Sender: TObject);
    procedure List_RemessasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnRemessasClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Look_BancoChange(Sender: TObject);
    procedure Btn_Adc_RegioesClick(Sender: TObject);
    procedure Ri_RegioesKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Cb_ModeloChange(Sender: TObject);
    procedure ListUFClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnUFClienteClick(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure Btn_Adc_RegistrosClick(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Filtro_RelRemessas: TFiltro_RelRemessas;

implementation

{$R *.DFM}

procedure TFiltro_RelRemessas.FormCreate(Sender: TObject);
begin
// Address $1629DC4
end;

procedure TFiltro_RelRemessas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// Address $1629DE8
end;

procedure TFiltro_RelRemessas.SpeedButton2Click(Sender: TObject);
begin
// Address $1629E28
end;

procedure TFiltro_RelRemessas.Btn_VisualizarClick(Sender: TObject);
begin
// Address $1629E30
end;

procedure TFiltro_RelRemessas.List_RemessasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
// Address $1633A74
end;

procedure TFiltro_RelRemessas.AdvGlowButton2Click(Sender: TObject);
begin
close;
end;

procedure TFiltro_RelRemessas.AdvGlowButton5Click(Sender: TObject);
begin
close;
end;

procedure TFiltro_RelRemessas.BtnRemessasClick(Sender: TObject);
begin
// Address $1633AE4
end;

procedure TFiltro_RelRemessas.FormShow(Sender: TObject);
begin
// Address $1633CCC
end;

procedure TFiltro_RelRemessas.Look_BancoChange(Sender: TObject);
begin
// Address $1633D74
end;

procedure TFiltro_RelRemessas.Btn_Adc_RegioesClick(Sender: TObject);
begin
// Address $163419C
end;

procedure TFiltro_RelRemessas.Ri_RegioesKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
// Address $163498C
end;

procedure TFiltro_RelRemessas.Cb_ModeloChange(Sender: TObject);
begin
// Address $16349FC
end;

procedure TFiltro_RelRemessas.ListUFClienteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
// Address $1634E7C
end;

procedure TFiltro_RelRemessas.BtnUFClienteClick(Sender: TObject);
begin
// Address $1634EEC
end;

procedure TFiltro_RelRemessas.MenuItem5Click(Sender: TObject);
begin
// Address $16353F8
end;

procedure TFiltro_RelRemessas.MenuItem2Click(Sender: TObject);
begin
// Address $163540C
end;

procedure TFiltro_RelRemessas.MenuItem3Click(Sender: TObject);
begin
// Address $1635420
end;

procedure TFiltro_RelRemessas.Btn_Adc_RegistrosClick(Sender: TObject);
begin
// Address $1636838
end;

end.
