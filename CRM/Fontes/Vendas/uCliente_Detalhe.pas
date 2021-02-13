unit uCliente_Detalhe;
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Vcl.AppEvnts, Data.DB, Vcl.Menus, Vcl.DBCtrls, RxToolEdit,
  RxDBComb, Vcl.DBCGrids, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.Buttons,
  Vcl.ComCtrls;

type
  TfrmCliente_Detalhe = class(TForm)
    PageControl1: TPageControl;
    tbCliente: TTabSheet;
    Panel1: TPanel;
    Label64: TLabel;
    Label3: TLabel;
    Lb_Nome: TLabel;
    Shape1: TShape;
    Label66: TLabel;
    Label22: TLabel;
    Label67: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Btn_LimpaClassificacao: TSpeedButton;
    Label8: TLabel;
    Shape2: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape27: TShape;
    Shape28: TShape;
    Label9: TLabel;
    Shape29: TShape;
    Label14: TLabel;
    Shape33: TShape;
    Label30: TLabel;
    Shape34: TShape;
    Label31: TLabel;
    Shape38: TShape;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Shape39: TShape;
    LbLocalidade: TLabel;
    Shape40: TShape;
    Btn_LimpaMotivoInadimplencia: TSpeedButton;
    Lb_Motivo_Inadimplencia: TLabel;
    Shape41: TShape;
    Shape42: TShape;
    Edt_Nome_Cliente: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Edt_CPF: TDBEdit;
    Edt_MCI: TDBEdit;
    ScrollBox_Endereco: TScrollBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Lb_Endereco_1: TLabel;
    Lb_Endereco_2: TLabel;
    LBCK_Pref_End1: TLabel;
    LBCK_Pref_End2: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    Shape20: TShape;
    Shape21: TShape;
    Shape22: TShape;
    Shape23: TShape;
    Shape24: TShape;
    Shape25: TShape;
    Shape26: TShape;
    Edt_ENDERECO: TDBEdit;
    Edt_SETOR: TDBEdit;
    Edt_CIDADE: TDBEdit;
    Edt_UF: TDBEdit;
    Edt_CEP: TDBEdit;
    Edt_NUMERO: TDBEdit;
    Edt_PONTO_REF1: TDBEdit;
    Edt_ENDENDERECO_1: TDBEdit;
    Edt_SETOR_1: TDBEdit;
    Edt_CIDADE_1: TDBEdit;
    Edt_UF_1: TDBEdit;
    Edt_CEP_1: TDBEdit;
    Edt_NUMERO_1: TDBEdit;
    Edt_PONTO_REF2: TDBEdit;
    CK_Pref_End1: TCheckBox;
    CK_Pref_End2: TCheckBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    LookRegioes: TDBLookupComboBox;
    Look_Classificacao: TDBLookupComboBox;
    DB_Fone1: TDBEdit;
    Db_Fone2: TDBEdit;
    Db_Contato: TDBEdit;
    Db_Fone_3: TDBEdit;
    Db_Fone_4: TDBEdit;
    DBEdit62: TDBEdit;
    PageControl4: TPageControl;
    TabSheet11: TTabSheet;
    DBMemo1: TDBMemo;
    TabSheet_Agendamentos: TTabSheet;
    DBGrid_Eventos_Cliente: TDBGrid;
    TbControleImpressao: TTabSheet;
    Panel10: TPanel;
    DBCtrlGrid4: TDBCtrlGrid;
    DBText2: TDBText;
    DBCheckBox4: TDBCheckBox;
    Panel11: TPanel;
    SpeedButton1: TSpeedButton;
    CK_Fone_Pref1: TCheckBox;
    CK_Fone_Pref2: TCheckBox;
    CK_Fone_Pref3: TCheckBox;
    CK_Fone_Pref4: TCheckBox;
    CK_Fone_Pref5: TCheckBox;
    CK_Fone_Pref6: TCheckBox;
    DBEdit4: TDBEdit;
    DBSexo: TRxDBComboBox;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DbLocalidade: TDBEdit;
    EdtMotivoInadimplencia: TDBEdit;
    EdtDescMotivoInadimplencia: TDBEdit;
    ClassCli_Cobo: TComboEdit;
    ClassCli_Panel: TPanel;
    Panel5: TPanel;
    DBNavigatorCliente: TDBNavigator;
    tbReferencia: TTabSheet;
    Panel3: TPanel;
    DBCtrlGrid1: TDBCtrlGrid;
    Shape30: TShape;
    Label10: TLabel;
    Label11: TLabel;
    Shape31: TShape;
    Label12: TLabel;
    Shape32: TShape;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Shape47: TShape;
    Shape48: TShape;
    Shape49: TShape;
    Shape50: TShape;
    Shape51: TShape;
    Shape52: TShape;
    Shape54: TShape;
    Label13: TLabel;
    Label32: TLabel;
    Shape35: TShape;
    Shape36: TShape;
    Label33: TLabel;
    Label34: TLabel;
    Shape37: TShape;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Panel4: TPanel;
    DBNavigatorReferencia: TDBNavigator;
    Pop_Endereco: TPopupMenu;
    End_2: TMenuItem;
    PopupCPF_CGC: TPopupMenu;
    mnuCopiarCPF_CGC_SemMasca: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCliente_Detalhe: TfrmCliente_Detalhe;

implementation

{$R *.DFM}

uses FClientes;


end.
