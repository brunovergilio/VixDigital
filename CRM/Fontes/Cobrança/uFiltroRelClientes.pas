unit uFiltroRelClientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, RxLookup, ExtCtrls, CheckLst, Buttons, ToolEdit,
  CurrEdit;

type
  TFFiltroRelClientes = class(TForm)
    PageControl1: TPageControl;
    Tbfiltros: TTabSheet;
    Label1: TLabel;
    Label5: TLabel;
    Label17: TLabel;
    Label9: TLabel;
    Look_Banco: TRxDBLookupCombo;
    RgClassificacao_Operacao: TRadioGroup;
    RgClassificacaoCliente: TRadioGroup;
    Look_Classificacao_Cliente: TRxDBLookupCombo;
    List_Classificacao: TListBox;
    Look_Classificacao_Operacao: TRxDBLookupCombo;
    List_Classificacao_Operacao: TListBox;
    RgBanco: TRadioGroup;
    List_banco: TListBox;
    Combo_Tipo_Pessoa: TComboBox;
    Label4: TLabel;
    CkLst_Situacao: TCheckListBox;
    Btn_Todas_Remessas: TSpeedButton;
    Btn_Remessas_Office: TSpeedButton;
    Btn_Remessas_ICE: TSpeedButton;
    Label11: TLabel;
    SpeedButton1: TSpeedButton;
    List_Remessas: TListBox;
    tbOpcoes: TTabSheet;
    Label6: TLabel;
    Label7: TLabel;
    Bevel4: TBevel;
    Label8: TLabel;
    Lb_Filtro_Valor: TLabel;
    Label10: TLabel;
    CbOrdem: TComboBox;
    RbValorDivida: TRadioButton;
    RbValorVencido: TRadioButton;
    RbValorNominal: TRadioButton;
    Panel1: TPanel;
    RbModeloAnalitico: TRadioButton;
    RbModeloSintetico: TRadioButton;
    RbModeloCarteira: TRadioButton;
    RbModeloSintetico2: TRadioButton;
    RbModeloSPC: TRadioButton;
    RbValorAtualizado: TRadioButton;
    EdtdAtualizacao: TDateEdit;
    Ck_Observacoes: TCheckBox;
    Edt_Vlr_Inicial: TCurrencyEdit;
    Edt_Vlr_Final: TCurrencyEdit;
    Ck_Ultimo_Evento: TCheckBox;
    Panel2: TPanel;
    Btn_Sair: TBitBtn;
    Btn_Visualizar: TBitBtn;
    Bevel1: TBevel;
    Label2: TLabel;
    Look_Codade: TRxDBLookupCombo;
    RgCidadeCliente: TRadioGroup;
    ListCidade: TListBox;
    Ck_Endereco: TCheckBox;
    Ck_Situacao: TCheckBox;
    Label3: TLabel;
    Dt_Inicio: TDateEdit;
    Label12: TLabel;
    Dt_Fim: TDateEdit;
    RgUFCliente: TRadioGroup;
    BtnUFCliente: TSpeedButton;
    ListUFCliente: TListBox;
    Panel_Clientes: TPanel;
    Label13: TLabel;
    Btn_Busca_Cliente: TSpeedButton;
    lbQtdeClientes: TLabel;
    Lista_Clientes: TListBox;
    RbModeloSintetico3: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure Look_Classificacao_ClienteCloseUp(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure List_ClassificacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Btn_SairClick(Sender: TObject);
    procedure Look_Classificacao_OperacaoCloseUp(Sender: TObject);
    procedure Btn_VisualizarClick(Sender: TObject);
    procedure RbValorAtualizadoClick(Sender: TObject);
    procedure Look_BancoCloseUp(Sender: TObject);
    procedure RbValorDividaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Btn_Todas_RemessasClick(Sender: TObject);
    procedure RbModeloAnaliticoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Look_CodadeCloseUp(Sender: TObject);
    procedure BtnUFClienteClick(Sender: TObject);
    procedure Btn_Busca_ClienteClick(Sender: TObject);
    procedure Lista_ClientesKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Lista_ClientesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure RbModeloSintetico3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFiltroRelClientes: TFFiltroRelClientes;

implementation

{$R *.DFM}

procedure TFFiltroRelClientes.FormCreate(Sender: TObject);
begin
// Address $188DCF0
end;

procedure TFFiltroRelClientes.Look_Classificacao_ClienteCloseUp(Sender: TObject);
begin
// Address $188DD28
end;

procedure TFFiltroRelClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// Address $188DDE8
end;

procedure TFFiltroRelClientes.List_ClassificacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
// Address $188DE04
end;

procedure TFFiltroRelClientes.Btn_SairClick(Sender: TObject);
begin
// Address $188DE74
end;

procedure TFFiltroRelClientes.Look_Classificacao_OperacaoCloseUp(Sender: TObject);
begin
// Address $188DE7C
end;

procedure TFFiltroRelClientes.Btn_VisualizarClick(Sender: TObject);
begin
// Address $188DFFC
end;

procedure TFFiltroRelClientes.RbValorAtualizadoClick(Sender: TObject);
begin
// Address $1893D70
end;

procedure TFFiltroRelClientes.Look_BancoCloseUp(Sender: TObject);
begin
// Address $1899C78
end;

procedure TFFiltroRelClientes.RbValorDividaClick(Sender: TObject);
begin
// Address $1899D38
end;

procedure TFFiltroRelClientes.SpeedButton1Click(Sender: TObject);
begin
// Address $1899E60
end;

procedure TFFiltroRelClientes.Btn_Todas_RemessasClick(Sender: TObject);
begin
// Address $189A108
end;

procedure TFFiltroRelClientes.RbModeloAnaliticoClick(Sender: TObject);
begin
// Address $189A438
end;

procedure TFFiltroRelClientes.FormShow(Sender: TObject);
begin
// Address $189A4F0
end;

procedure TFFiltroRelClientes.Look_CodadeCloseUp(Sender: TObject);
begin
// Address $188DF3C
end;

procedure TFFiltroRelClientes.BtnUFClienteClick(Sender: TObject);
begin
// Address $189A51C
end;

procedure TFFiltroRelClientes.Btn_Busca_ClienteClick(Sender: TObject);
begin
// Address $189AA9C
end;

procedure TFFiltroRelClientes.Lista_ClientesKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
// Address $189ACA4
end;

procedure TFFiltroRelClientes.Lista_ClientesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $189AD10
end;

procedure TFFiltroRelClientes.RbModeloSintetico3Click(Sender: TObject);
begin
// Address $189AD2C
end;

end.
