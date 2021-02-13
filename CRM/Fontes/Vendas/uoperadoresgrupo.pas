unit uoperadoresgrupo;

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
  Tfrmoperadoresgrupo = class(TForm)
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
    uniQScriptNOME_GRUPO: TStringField;
    uniQScriptUSR_CAD: TFMTBCDField;
    uniQScriptDTA_CAD: TSQLTimeStampField;
    uniQScriptAGE_NR_MAXIMO_DIA: TFMTBCDField;
    uniQScriptAGE_NR_DIA_PASSADO: TFMTBCDField;
    uniQScriptOPERACAOSTATUS: TStringField;
    uniQScriptAGE_NR_MAXIMO_USUARIO_CLIENTE: TFMTBCDField;
    uniQScriptFINALIZANEGOCIACAO: TFMTBCDField;
    uniQScriptPERMITE_ENVIO_AVISO: TFMTBCDField;
    uniQScriptCODIGO: TIntegerField;
    procedure FormActivate(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzToolButton1Click(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmoperadoresgrupo: Tfrmoperadoresgrupo;

implementation

{$R *.dfm}

uses
  uDataModule, uoperadoresgrupocadastro;

procedure Tfrmoperadoresgrupo.FormActivate(Sender: TObject);
begin
  uniQScript.Close;
  uniQScript.Sql.Text := 'select * from operador_grupo';
  uniQScript.Open;
  uniQScript.First;
end;

procedure Tfrmoperadoresgrupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    uniQScript.Edit;
    uniQScript.Cancel;
  except end;
end;

procedure Tfrmoperadoresgrupo.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

procedure Tfrmoperadoresgrupo.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then RzToolButton1Click(Sender);
end;

procedure Tfrmoperadoresgrupo.btnalterarClick(Sender: TObject);
begin
  uniQScript.Edit;
  frmoperadoresgrupocadastro.ShowModal;
  frmoperadoresgrupo.FormActivate(Sender);
end;

procedure Tfrmoperadoresgrupo.JvDBGrid1DblClick(Sender: TObject);
begin
  btnalterarClick(Sender);
end;

procedure Tfrmoperadoresgrupo.RzToolButton1Click(Sender: TObject);
begin
  uniQScript.Close;
  uniQScript.Sql.Text := 'select * from operador_grupo where upper(nome_grupo) like (''%' + EDIT1.TEXT + '%'')';
  uniQScript.Open;
  uniQScript.First;
end;

procedure Tfrmoperadoresgrupo.RzToolButton3Click(Sender: TObject);
begin
  uniQScript.Open;
  uniQScript.Insert;

  frmoperadoresgrupocadastro.alterainsere := 'INSERE';
  frmoperadoresgrupocadastro.ShowModal;
  frmoperadoresgrupocadastro.alterainsere := '';
  frmoperadoresgrupo.FormActivate(Sender);
end;

end.
