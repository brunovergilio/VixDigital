unit uacordos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, 
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, 
  dxSkinsCore, dxSkinsDefaultPainters, cxCustomData, cxFilter, cxData, 
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges, 
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, 
  cxCalendar, cxCheckBox, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, 
  Vcl.Mask, cxGridLevel, cxGridCustomTableView, cxGridTableView, 
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ComCtrls, 
  System.Actions, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, AdvGlowButton, 
  JvExDBGrids, JvDBGrid, RzButton, System.ImageList, Vcl.ImgList, cxImageList, 
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, 
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, 
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, 
  FireDAC.DBX.Migrate;

type
  Tfrmacordos = class(TForm)
    JvDBGrid1: TJvDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    uniQScript: TFDQuery;
    UniDSQScript: TDataSource;
    RzToolButton3: TRzToolButton;
    btnalterar: TRzToolButton;
    Label2: TLabel;
    RzToolButton1: TRzToolButton;
    uniQScriptCODIGO: TFloatField;
    uniQScriptNOME_GRUPO: TStringField;
    uniQScriptUSR_CAD: TFloatField;
    uniQScriptDTA_CAD: TSQLTimeStampField;
    uniQScriptAGE_NR_MAXIMO_DIA: TFloatField;
    uniQScriptAGE_NR_DIA_PASSADO: TFloatField;
    uniQScriptOPERACAOSTATUS: TStringField;
    uniQScriptAGE_NR_MAXIMO_USUARIO_CLIENTE: TFloatField;
    uniQScriptFINALIZANEGOCIACAO: TFloatField;
    uniQScriptPERMITE_ENVIO_AVISO: TFloatField;
    Label3: TLabel;
    Label4: TLabel;
    UniQPropostas: TFDQuery;
    UniDSQPropostas: TDataSource;
    UniQPropostasNR_PROPOSTA: TFloatField;
    UniQPropostasDATA: TStringField;
    UniQPropostasSITUACAO: TStringField;
    UniQPropostasCLIENTE: TFloatField;
    UniQPropostasBANCO: TFloatField;
    UniQPropostasVALOR_ORIGINAL_TOTAL: TFloatField;
    UniQPropostasVALOR_TOTAL: TFloatField;
    UniQPropostasVALOR_JUROS: TFloatField;
    UniQPropostasVALOR_MULTA: TFloatField;
    UniQPropostasVALOR_HONORARIO: TFloatField;
    UniQPropostasVALOR_DESCONTO: TFloatField;
    UniQPropostasVALOR_CORRECAO: TFloatField;
    UniQPropostasVALOR_PROTESTO: TFloatField;
    UniQPropostasDATA_ENTRADA: TStringField;
    UniQPropostasVALOR_ENTRADA: TFloatField;
    UniQPropostasDATA_PARCELA: TStringField;
    UniQPropostasVALOR_PARCELA: TFloatField;
    UniQPropostasNR_PARCELAS: TFloatField;
    UniQPropostasDATA_VALIDADE: TSQLTimeStampField;
    UniQPropostasUSR_CAD: TFloatField;
    UniQPropostasDTA_CAD: TStringField;
    UniQPropostasDATA_CANCELAMENTO: TStringField;
    UniQPropostasNR_PARCELAS_PAGAS: TFloatField;
    UniQPropostasNR_PARCELA_CANCELAMENTO: TFloatField;
    UniQPropostasUSR_CANCELAMENTO: TFloatField;
    UniQPropostasNRORIGINAL: TStringField;
    UniQPropostasDIASATRASO: TFloatField;
    UniQPropostasNR_CARTA_ACORDO: TFloatField;
    UniQPropostasCARTABOLETO: TStringField;
    UniQPropostasVALOR_TAXA_ATUALIZACAO: TFloatField;
    Edit2: TEdit;
    Edit3: TEdit;
    RzToolButton2: TRzToolButton;
    RzToolButton4: TRzToolButton;
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmacordos: Tfrmacordos;

implementation

{$R *.dfm}

uses
  uDataModule, uusuariosgrupocadastro, uusuariosgrupo;

procedure Tfrmacordos.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

end.
