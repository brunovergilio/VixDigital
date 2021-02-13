unit UGerenciadorOperacoes_Filtro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, Buttons, RxLookup, StdCtrls, Spin, CheckLst,
  Menus, AdvGlowButton, RxPlacemnt, Vcl.Mask, RxToolEdit;

type
  TFGerenciadorOperacoes_Filtro = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Btn_Todas_Remessas: TSpeedButton;
    Btn_Remessas_Office: TSpeedButton;
    Btn_Remessas_ICE: TSpeedButton;
    lcRemessa: TRxDBLookupCombo;
    List_Remessas: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    Remessa_Inicial: TRxDBLookupCombo;
    Remessa_Final: TRxDBLookupCombo;
    Label3: TLabel;
    tsPeriodosValores: TTabSheet;
    Panel3: TPanel;
    TabSheet3: TTabSheet;
    Panel4: TPanel;
    List_Classificacao: TListBox;
    Btn_Adc_Agencia: TSpeedButton;
    Lista_Agencias: TListBox;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    Edt_Nr_Inicial: TEdit;
    TabSheet4: TTabSheet;
    Panel5: TPanel;
    RgClassificacao: TRadioGroup;
    RgClassificacao_Operacao: TRadioGroup;
    List_Classificacao_Operacao: TListBox;
    TbCorrespondencia: TTabSheet;
    Panel6: TPanel;
    Lb_Texto_Corr: TLabel;
    Btn_Mais: TSpeedButton;
    Btn_Menos: TSpeedButton;
    Btn_Igual: TSpeedButton;
    Edt_Filtro_Correspondencia: TSpinEdit;
    ckControleImpressao: TCheckBox;
    Label22: TLabel;
    EdtRemessa_Inicial: TEdit;
    EdtRemessa_Final: TEdit;
    Label23: TLabel;
    Image1: TImage;
    CkLControle_Imp: TCheckListBox;
    Bevel1: TBevel;
    Label24: TLabel;
    BtnRemessas: TSpeedButton;
    List_MotivoRetomada: TListBox;
    Label6: TLabel;
    Look_Banco: TRxDBLookupCombo;
    BtnClassCliente: TSpeedButton;
    BtnClassOperacao: TSpeedButton;
    btnMotivosRetomada: TSpeedButton;
    RgMotivoRetomada: TRadioGroup;
    CkLst_Situacao: TCheckListBox;
    Label4: TLabel;
    GroupBox5: TGroupBox;
    Label17: TLabel;
    EdtdVencimentoInicial: TDateEdit;
    EdtdVencimentoFinal: TDateEdit;
    ckControleImpressao_Selecionado: TCheckBox;
    Group_Fone: TGroupBox;
    RbFone_Todos: TRadioButton;
    RbFone_Com: TRadioButton;
    RbFone_Sem: TRadioButton;
    RbFone_Inicia: TRadioButton;
    Tab_Eventos: TTabSheet;
    Panel8: TPanel;
    Rd_Periodo_Contato: TRadioButton;
    Lb_Texto_Contato: TRadioButton;
    Final_Evento: TDateEdit;
    Label40: TLabel;
    Inicio_Evento: TDateEdit;
    Label39: TLabel;
    Btn_Adc_Eventos: TSpeedButton;
    Lista_Eventos: TListBox;
    Btn_Mais_Contato: TSpeedButton;
    Btn_Menos_Contato: TSpeedButton;
    Btn_Igual_Contato: TSpeedButton;
    Edt_Contato: TSpinEdit;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label41: TLabel;
    Label42: TLabel;
    Btn_Adc_Eventos1: TSpeedButton;
    Lista_Eventos1: TListBox;
    BtnTipoOperacao: TSpeedButton;
    List_TipoOperacao: TListBox;
    RgTipoOperacao: TRadioGroup;
    Label11: TLabel;
    Cond_Negoicais: TComboBox;
    CkNaoIncluirSemContato: TCheckBox;
    cbCampanhaAMCelular: TComboBox;
    lbCampanhaAMCelular: TLabel;
    Lb_Texto_Agenda: TLabel;
    Btn_Mais_Agenda: TSpeedButton;
    Btn_Menos_Agenda: TSpeedButton;
    Btn_Igual_Agenda: TSpeedButton;
    Edt_Agenda: TSpinEdit;
    Ck_Null_Agenda: TCheckBox;
    DbPlanilhaCelpa: TRxDBLookupCombo;
    Lb_Planilha: TLabel;
    Group_RegiaoICE: TGroupBox;
    Btn_Adc_Regioes: TSpeedButton;
    Ri_Regioes: TListBox;
    Edt_Nr_Final: TEdit;
    Ck_Considera_DataFinal: TCheckBox;
    Bevel4: TBevel;
    Label31: TLabel;
    ListaAnterior: TCheckListBox;
    Label32: TLabel;
    Panel9: TPanel;
    RdLista_Agenda: TRadioButton;
    Label33: TLabel;
    RdLista_Todos: TRadioButton;
    RdLista_Normal: TRadioButton;
    Button1: TButton;
    Button2: TButton;
    RgCampanha: TComboBox;
    GroupBox9: TGroupBox;
    Ck_Alta: TCheckBox;
    Ck_Normal: TCheckBox;
    CkEspecial: TCheckBox;
    Label19: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    EdtdAtualizadoInicial: TDateEdit;
    EdtdAtualizadoFinal: TDateEdit;
    Label38: TLabel;
    Label44: TLabel;
    EdtDtFimInicial: TDateEdit;
    EdtDtFimFinal: TDateEdit;
    Label45: TLabel;
    Label37: TLabel;
    EdtdNegociacaoInicial: TDateEdit;
    EdtdNegociacaoFinal: TDateEdit;
    Lb_RetomadaOp: TLabel;
    Label48: TLabel;
    EdtdRetomadaInicial: TDateEdit;
    EdtdRetomadaFinal: TDateEdit;
    Label50: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Edt_Nr_Cob_Inicial: TEdit;
    Edt_Nr_Cob_Final: TEdit;
    Panel10: TPanel;
    Label51: TLabel;
    Label52: TLabel;
    Rd_ValorOperacao: TRadioButton;
    Rd_ValorCliente: TRadioButton;
    EdtValorDivida_Inicial: TEdit;
    EdtValorDivida_Final: TEdit;
    Panel11: TPanel;
    Label26: TLabel;
    Label53: TLabel;
    EdtValorVencido_Inicial: TEdit;
    Rd_ValorVencidoOperacao: TRadioButton;
    Rd_ValorVencidoCliente: TRadioButton;
    EdtValorVencido_Final: TEdit;
    PageControl2: TPageControl;
    Tab_UF_Cidade: TTabSheet;
    Tab_Bairro_Regiao: TTabSheet;
    TabSheet8: TTabSheet;
    CkExcetoLista: TCheckBox;
    RgAgencia: TRadioGroup;
    btnMotivosDevolucao: TSpeedButton;
    RgMotivoDevolucao: TRadioGroup;
    List_MotivoDevolucao: TListBox;
    ckOperacaoUnica: TCheckBox;
    Label5: TLabel;
    EdtValorNominal_Final: TEdit;
    Label18: TLabel;
    EdtValorNominal_Inicial: TEdit;
    lbDiasVencidosLeader: TLabel;
    Label36: TLabel;
    EdtDiasVencidosLeaderINI: TEdit;
    EdtDiasVencidosLeaderFIM: TEdit;
    BtnMotivoInadimplencia: TSpeedButton;
    RgMotivoInadimplencia: TRadioGroup;
    List_MotivoInadimplencia: TListBox;
    PopupLimparConteudo_Todos: TPopupMenu;
    Limpa_Tudo: TMenuItem;
    RgRemessa: TRadioGroup;
    TbLista: TTabSheet;
    Panel15: TPanel;
    GroupTipoAgencia: TGroupBox;
    RdAgenciaCliente: TRadioButton;
    RdAgenciaOperacao: TRadioButton;
    Rd_Dias_Vencido_Cli: TRadioButton;
    Rd_Dias_Vencido_Ope: TRadioButton;
    Panel_Modalidade: TPanel;
    LbModalidade: TListBox;
    EdtModalidade: TEdit;
    SpeedButton2: TSpeedButton;
    Lb_Modalidade: TLabel;
    Rd_Modalidade_Apenas: TRadioButton;
    Rd_Modalidade_Exceto: TRadioButton;
    Panel_Produtos: TPanel;
    LbProdutos: TListBox;
    EdtProduto: TEdit;
    BtnAdicionaProduto: TSpeedButton;
    Rd_Produto_Apenas: TRadioButton;
    Rd_Produto_Exceto: TRadioButton;
    Lb_Produtos: TLabel;
    Panel_Fase: TPanel;
    SpeedButton1: TSpeedButton;
    Ri_Fases: TListBox;
    Fase: TLabel;
    Panel16: TPanel;
    Label29: TLabel;
    BtnProdutoBloq_Todos: TSpeedButton;
    BtnProdutoBloq_Bloqueados: TSpeedButton;
    BtnProdutoBloq_Desbloqueados: TSpeedButton;
    RdProdutoBloq_Apenas: TRadioButton;
    RdProdutoBloq_Exceto: TRadioButton;
    TabAtivos: TTabSheet;
    Panel17: TPanel;
    Rd_Periodo_Contato_Ultimo: TRadioButton;
    TabFiltro: TTabSheet;
    Panel20: TPanel;
    GrpBx_Filtro: TGroupBox;
    FormStorage1: TFormStorage;
    RbFone_MSGInst: TRadioButton;
    GroupBox7: TGroupBox;
    Ck_Apenas: TRadioButton;
    Ck_Contendo: TRadioButton;
    TabSheetLocalidade: TTabSheet;
    BtnUFCliente: TSpeedButton;
    RgUFCliente: TRadioGroup;
    ListUFCliente: TListBox;
    Shape1: TShape;
    Shape2: TShape;
    BtnCidadeCliente: TSpeedButton;
    RgCidadeCliente: TRadioGroup;
    ListCidadeCliente: TListBox;
    Shape3: TShape;
    Shape4: TShape;
    BtnSetorCliente: TSpeedButton;
    RgSetorCliente: TRadioGroup;
    ListSetorCliente: TListBox;
    BtnRegiaoCliente: TSpeedButton;
    RgRegiaoCliente: TRadioGroup;
    ListRegiaoCliente: TListBox;
    Shape5: TShape;
    ListProfissaoCliente: TListBox;
    Btn_Profissao: TSpeedButton;
    RgProfissaoCliente: TRadioGroup;
    Shape6: TShape;
    ListLocalidade: TListBox;
    EdtLocalidade: TEdit;
    Btn_Localidade: TSpeedButton;
    RgLocalidade: TRadioGroup;
    Shape7: TShape;
    BtnLocalTrabalho: TSpeedButton;
    ListLocalTrabalhoCliente: TListBox;
    RgLocalTrabalhoCliente: TRadioGroup;
    CB_Filtros: TComboBox;
    Btn_GravaFiltro: TSpeedButton;
    Btn_AtualizaFiltro: TSpeedButton;
    Btn_TransfereFiltro: TSpeedButton;
    Btn_ExcluiFiltro: TSpeedButton;
    GroupBoxDDD: TGroupBox;
    SpdB_DDD: TSpeedButton;
    ListDDDClientes: TListBox;
    TotalCalculado_Panel: TPanel;
    EdtTotalCalculado_Final: TEdit;
    EdtTotalCalculado_Inicial: TEdit;
    LbTotalCalculado_2: TLabel;
    LbTotalCalculado_1: TLabel;
    CkValidosComoContato: TCheckBox;
    Rd_Apenas_DDD: TRadioButton;
    Rd_Exceto_DDD: TRadioButton;
    tsCobradoresClientes: TTabSheet;
    pnCobradoresClientes: TPanel;
    Label54: TLabel;
    Label55: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    lbBehavior: TLabel;
    Label65: TLabel;
    lbBehaviora: TLabel;
    Cb_Tipo_Pessoa: TComboBox;
    Panel_Cobrador: TPanel;
    Btn_Cobrador: TSpeedButton;
    Btn_Sem_Cobrador: TSpeedButton;
    List_Cobrador: TListBox;
    Edt_C_Acordo_INI: TEdit;
    Edt_C_Acordo_FIM: TEdit;
    Combo_Coobrigados: TComboBox;
    Combo_EMail: TComboBox;
    EdtScore_Ini: TEdit;
    EdtScore_Fim: TEdit;
    EdtBehavior_Ini: TEdit;
    EdtBehavior_Fim: TEdit;
    PanelFicha: TPanel;
    LBNrFicha: TLabel;
    LBNrFichas: TListBox;
    EdtNrFicha: TEdit;
    RDFicha_Apenas: TRadioButton;
    RDFicha_Exceto: TRadioButton;
    Button3: TButton;
    GroupBox11: TGroupBox;
    Label92: TLabel;
    Label93: TLabel;
    Edt_Idade_Valorini: TEdit;
    Edt_Idade_Valorfim: TEdit;
    lbValorMinimo: TLabel;
    edtValorMinimo_Inicial: TEdit;
    edtValorMinimo_Final: TEdit;
    lblValorMinimoA: TLabel;
    lbPorDia: TLabel;
    edtPorDia: TComboBox;
    Panel1: TPanel;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    Label7: TLabel;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    ListBox1: TListBox;
    Label8: TLabel;
    RadioGroup1: TRadioGroup;
    Panel7: TPanel;
    Label9: TLabel;
    ListBox2: TListBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Panel12: TPanel;
    Label10: TLabel;
    ListBox3: TListBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Panel13: TPanel;
    Label14: TLabel;
    Panel14: TPanel;
    Label16: TLabel;
    ListBox5: TListBox;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    Panel18: TPanel;
    Label20: TLabel;
    DateEdit1: TDateEdit;
    Label25: TLabel;
    DateEdit2: TDateEdit;
    Edit1: TEdit;
    Label27: TLabel;
    Edit2: TEdit;
    Panel19: TPanel;
    SpeedButton3: TSpeedButton;
    Label21: TLabel;
    ListBox4: TListBox;
    Edit3: TEdit;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    procedure lcRemessaCloseUp(Sender: TObject);
    procedure List_RemessasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure lcRemessaKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_Todas_RemessasClick(Sender: TObject);
    procedure Buscar_Operacoes;
    procedure Campo_Order_By_Novo;
    procedure Edt_AgenciaKeyDown;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnAdicionaProdutoClick(Sender: TObject);
    procedure EdtProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdtValorDivida_InicialExit(Sender: TObject);
    procedure BtnRemessasClick(Sender: TObject);
    procedure BtnClassClienteClick(Sender: TObject);
    procedure Btn_MenosClick(Sender: TObject);
    procedure Edt_AgendaChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Cond_NegoicaisChange(Sender: TObject);
    procedure Look_BancoChange(Sender: TObject);
    procedure Lb_Texto_ContatoClick(Sender: TObject);
    procedure Rd_Periodo_ContatoClick(Sender: TObject);
    procedure Btn_Mais_ContatoClick(Sender: TObject);
    procedure Btn_Adc_EventosClick(Sender: TObject);
    procedure Btn_Adc_RegioesClick(Sender: TObject);
    procedure Ri_RegioesKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Salvar_Dados_Lista_Filtro;
    procedure SpeedButton1Click(Sender: TObject);
    procedure RgCampanhaChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Btn_Sem_CobradorClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BtnAdicionaNrFichaClick(Sender: TObject);
    procedure ckOperacaoUnicaClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Btn_LocalidadeClick(Sender: TObject);
    procedure List_CobradorMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure Lista_AgenciasMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure List_ClassificacaoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure List_Classificacao_OperacaoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure List_MotivoRetomadaMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure List_MotivoDevolucaoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure List_TipoOperacaoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure List_MotivoInadimplenciaMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure List_GarantiasMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure ListProfissaoClienteMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure ListLocalidadeMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure LbProdutosMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure LbModalidadeMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure Ri_FasesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure lbNrFicha_CelpaMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure Lista_EventosMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure Lista_Eventos1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure Ri_RegioesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure Ri_Regioes_CEFMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure List_RemessasMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure ListUFClienteMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure ListCidadeClienteMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure ListSetorClienteMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure ListRegiaoClienteMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure Limpa_TudoClick(Sender: TObject);
    procedure List_CondicoesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure SpeedButton5Click;
    procedure RdProdutoBloq_ExcetoClick(Sender: TObject);
    procedure BtnAdcioneFichaClick(Sender: TObject);
    procedure LBNrFichasMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure EdtNrFichaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CB_FiltrosDropDown(Sender: TObject);
    procedure CB_FiltrosEnter(Sender: TObject);
    procedure Btn_GravaFiltroClick(Sender: TObject);
    procedure Btn_AtualizaFiltroClick(Sender: TObject);
    procedure Btn_ExcluiFiltroClick(Sender: TObject);
    procedure CB_FiltrosDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure ListLocalTrabalhoClienteMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure Btn_TransfereFiltroClick(Sender: TObject);
    procedure CB_FiltrosChange(Sender: TObject);
    procedure Edt_Idade_ValoriniKeyPress(Sender: TObject; var Key: Char);
    procedure CkDevolocaoNaoExisteClick(Sender: TObject);
    procedure SpdB_DDDClick(Sender: TObject);
    procedure ListDDDClientesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
    procedure RbFone_TodosClick(Sender: TObject);
    procedure edtPorDiaKeyPress(Sender: TObject; var Key: Char);
    procedure edtPorDiaExit(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGerenciadorOperacoes_Filtro: TFGerenciadorOperacoes_Filtro;

implementation

{$R *.DFM}

procedure TFGerenciadorOperacoes_Filtro.lcRemessaCloseUp(Sender: TObject);
begin
// Address $1270D1C
end;

procedure TFGerenciadorOperacoes_Filtro.List_RemessasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
// Address $1270DA8
end;

procedure TFGerenciadorOperacoes_Filtro.lcRemessaKeyPress(Sender: TObject; var Key: Char);
begin
// Address $1270E18
end;

procedure TFGerenciadorOperacoes_Filtro.Btn_Todas_RemessasClick(Sender: TObject);
begin
// Address $1270E38
end;

procedure TFGerenciadorOperacoes_Filtro.Buscar_Operacoes;
begin
// Address $12713C0
end;

procedure TFGerenciadorOperacoes_Filtro.Campo_Order_By_Novo;
begin
// Address $12872C4
end;

procedure TFGerenciadorOperacoes_Filtro.Edt_AgenciaKeyDown;
begin
// Address $1287B78
end;

procedure TFGerenciadorOperacoes_Filtro.FormCreate(Sender: TObject);
begin
// Address $1287B9C
end;

procedure TFGerenciadorOperacoes_Filtro.AdvGlowButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFGerenciadorOperacoes_Filtro.AdvGlowButton5Click(Sender: TObject);
begin
Close;
end;

procedure TFGerenciadorOperacoes_Filtro.BitBtn1Click(Sender: TObject);
begin
// Address $128897C
end;

procedure TFGerenciadorOperacoes_Filtro.FormShow(Sender: TObject);
begin
// Address $1288988
end;

procedure TFGerenciadorOperacoes_Filtro.BtnAdicionaProdutoClick(Sender: TObject);
begin
// Address $1288BDC
end;

procedure TFGerenciadorOperacoes_Filtro.EdtProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
// Address $1288BE4
end;

procedure TFGerenciadorOperacoes_Filtro.EdtValorDivida_InicialExit(Sender: TObject);
begin
// Address $1288C10
end;

procedure TFGerenciadorOperacoes_Filtro.BtnRemessasClick(Sender: TObject);
begin
// Address $1289A9C
end;

procedure TFGerenciadorOperacoes_Filtro.BtnClassClienteClick(Sender: TObject);
begin
// Address $1289D00
end;

procedure TFGerenciadorOperacoes_Filtro.Btn_MenosClick(Sender: TObject);
begin
// Address $128BF2C
end;

procedure TFGerenciadorOperacoes_Filtro.Edt_AgendaChange(Sender: TObject);
begin
// Address $128C3E0
end;

procedure TFGerenciadorOperacoes_Filtro.PageControl1Change(Sender: TObject);
begin
// Address $128C6E4
end;

procedure TFGerenciadorOperacoes_Filtro.Cond_NegoicaisChange(Sender: TObject);
begin
// Address $128C874
end;

procedure TFGerenciadorOperacoes_Filtro.Look_BancoChange(Sender: TObject);
begin
// Address $128C9A0
end;

procedure TFGerenciadorOperacoes_Filtro.Lb_Texto_ContatoClick(Sender: TObject);
begin
// Address $128CFB0
end;

procedure TFGerenciadorOperacoes_Filtro.Rd_Periodo_ContatoClick(Sender: TObject);
begin
// Address $128D078
end;

procedure TFGerenciadorOperacoes_Filtro.Btn_Mais_ContatoClick(Sender: TObject);
begin
// Address $128D19C
end;

procedure TFGerenciadorOperacoes_Filtro.Btn_Adc_EventosClick(Sender: TObject);
begin
// Address $128D480
end;

procedure TFGerenciadorOperacoes_Filtro.Btn_Adc_RegioesClick(Sender: TObject);
begin
// Address $128D608
end;

procedure TFGerenciadorOperacoes_Filtro.Ri_RegioesKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
// Address $128DBC4
end;

procedure TFGerenciadorOperacoes_Filtro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// Address $128DC34
end;

procedure TFGerenciadorOperacoes_Filtro.Button2Click(Sender: TObject);
begin
// Address $128EBB8
end;

procedure TFGerenciadorOperacoes_Filtro.Salvar_Dados_Lista_Filtro;
begin
// Address $128E110
end;

procedure TFGerenciadorOperacoes_Filtro.SpeedButton1Click(Sender: TObject);
begin
// Address $128F474
end;

procedure TFGerenciadorOperacoes_Filtro.RgCampanhaChange(Sender: TObject);
begin
// Address $128F990
end;

procedure TFGerenciadorOperacoes_Filtro.SpeedButton2Click(Sender: TObject);
begin
// Address $128F998
end;

procedure TFGerenciadorOperacoes_Filtro.Btn_Sem_CobradorClick(Sender: TObject);
begin
// Address $128F9A0
end;

procedure TFGerenciadorOperacoes_Filtro.SpeedButton3Click(Sender: TObject);
begin
// Address $128F9B4
end;

procedure TFGerenciadorOperacoes_Filtro.BtnAdicionaNrFichaClick(Sender: TObject);
begin
// Address $128FB64
end;

procedure TFGerenciadorOperacoes_Filtro.ckOperacaoUnicaClick(Sender: TObject);
begin
// Address $128FBE4
end;

procedure TFGerenciadorOperacoes_Filtro.BitBtn2Click(Sender: TObject);
begin
// Address $128FC58
end;

procedure TFGerenciadorOperacoes_Filtro.Btn_LocalidadeClick(Sender: TObject);
begin
// Address $128FD2C
end;

procedure TFGerenciadorOperacoes_Filtro.List_CobradorMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $128FD90
end;

procedure TFGerenciadorOperacoes_Filtro.Lista_AgenciasMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $128FDAC
end;

procedure TFGerenciadorOperacoes_Filtro.List_ClassificacaoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $128FDC8
end;

procedure TFGerenciadorOperacoes_Filtro.List_Classificacao_OperacaoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $128FDE4
end;

procedure TFGerenciadorOperacoes_Filtro.List_MotivoRetomadaMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $128FE00
end;

procedure TFGerenciadorOperacoes_Filtro.List_MotivoDevolucaoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $128FE1C
end;

procedure TFGerenciadorOperacoes_Filtro.List_TipoOperacaoMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $128FE38
end;

procedure TFGerenciadorOperacoes_Filtro.List_MotivoInadimplenciaMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $128FE54
end;

procedure TFGerenciadorOperacoes_Filtro.List_GarantiasMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $128FE70
end;

procedure TFGerenciadorOperacoes_Filtro.ListProfissaoClienteMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $128FE8C
end;

procedure TFGerenciadorOperacoes_Filtro.ListLocalidadeMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $128FEA8
end;

procedure TFGerenciadorOperacoes_Filtro.LbProdutosMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $128FEC4
end;

procedure TFGerenciadorOperacoes_Filtro.LbModalidadeMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $128FEE0
end;

procedure TFGerenciadorOperacoes_Filtro.Ri_FasesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $128FEFC
end;

procedure TFGerenciadorOperacoes_Filtro.lbNrFicha_CelpaMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $128FF18
end;

procedure TFGerenciadorOperacoes_Filtro.Lista_EventosMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $128FF34
end;

procedure TFGerenciadorOperacoes_Filtro.Lista_Eventos1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $128FF50
end;

procedure TFGerenciadorOperacoes_Filtro.Ri_RegioesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $128FF6C
end;

procedure TFGerenciadorOperacoes_Filtro.Ri_Regioes_CEFMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $128FF88
end;

procedure TFGerenciadorOperacoes_Filtro.List_RemessasMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $128FFA4
end;

procedure TFGerenciadorOperacoes_Filtro.ListUFClienteMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $128FFC0
end;

procedure TFGerenciadorOperacoes_Filtro.ListCidadeClienteMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $128FFDC
end;

procedure TFGerenciadorOperacoes_Filtro.ListSetorClienteMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $128FFF8
end;

procedure TFGerenciadorOperacoes_Filtro.ListRegiaoClienteMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $1290014
end;

procedure TFGerenciadorOperacoes_Filtro.Limpa_TudoClick(Sender: TObject);
begin
// Address $129004C
end;

procedure TFGerenciadorOperacoes_Filtro.List_CondicoesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $1290030
end;

procedure TFGerenciadorOperacoes_Filtro.SpeedButton5Click;
begin
// Address $1290430
end;

procedure TFGerenciadorOperacoes_Filtro.RdProdutoBloq_ExcetoClick(Sender: TObject);
begin
// Address $1290434
end;

procedure TFGerenciadorOperacoes_Filtro.BtnAdcioneFichaClick(Sender: TObject);
begin
// Address $129073C
end;

procedure TFGerenciadorOperacoes_Filtro.LBNrFichasMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $1290744
end;

procedure TFGerenciadorOperacoes_Filtro.EdtNrFichaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
// Address $1290760
end;

procedure TFGerenciadorOperacoes_Filtro.CB_FiltrosDropDown(Sender: TObject);
begin
// Address $129077C
end;

procedure TFGerenciadorOperacoes_Filtro.CB_FiltrosEnter(Sender: TObject);
begin
// Address $1290784
end;

procedure TFGerenciadorOperacoes_Filtro.Btn_GravaFiltroClick(Sender: TObject);
begin
// Address $1290CA4
end;

procedure TFGerenciadorOperacoes_Filtro.Btn_AtualizaFiltroClick(Sender: TObject);
begin
// Address $129C7D8
end;

procedure TFGerenciadorOperacoes_Filtro.Btn_ExcluiFiltroClick(Sender: TObject);
begin
// Address $12A7558
end;

procedure TFGerenciadorOperacoes_Filtro.CB_FiltrosDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
// Address $12A8520
end;

procedure TFGerenciadorOperacoes_Filtro.ListLocalTrabalhoClienteMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $12A87D8
end;

procedure TFGerenciadorOperacoes_Filtro.Btn_TransfereFiltroClick(Sender: TObject);
begin
// Address $12A87F4
end;

procedure TFGerenciadorOperacoes_Filtro.CB_FiltrosChange(Sender: TObject);
begin
// Address $12A8A18
end;

procedure TFGerenciadorOperacoes_Filtro.Edt_Idade_ValoriniKeyPress(Sender: TObject; var Key: Char);
begin
// Address $12A8A8C
end;

procedure TFGerenciadorOperacoes_Filtro.CkDevolocaoNaoExisteClick(Sender: TObject);
begin
// Address $12A8A9C
end;

procedure TFGerenciadorOperacoes_Filtro.SpdB_DDDClick(Sender: TObject);
begin
// Address $12A8B08
end;

procedure TFGerenciadorOperacoes_Filtro.ListDDDClientesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X: Integer; Y: Integer);
begin
// Address $12A8C4C
end;

procedure TFGerenciadorOperacoes_Filtro.RbFone_TodosClick(Sender: TObject);
begin
// Address $12A8C68
end;

procedure TFGerenciadorOperacoes_Filtro.edtPorDiaKeyPress(Sender: TObject; var Key: Char);
begin
// Address $12A8CB8
end;

procedure TFGerenciadorOperacoes_Filtro.edtPorDiaExit(Sender: TObject);
begin
// Address $12A8CC8
end;

end.
