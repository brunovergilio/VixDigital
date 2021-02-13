unit uusuariosgrupo;

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
  Tfrmgruposdeusuarios = class(TForm)
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
    uniQScriptCODIGO: TFMTBCDField;
    uniQScriptNOME_GRUPO: TStringField;
    uniQScriptUSR_CAD: TFMTBCDField;
    uniQScriptDTA_CAD: TSQLTimeStampField;
    uniQScriptAGE_NR_MAXIMO_DIA: TFMTBCDField;
    uniQScriptAGE_NR_DIA_PASSADO: TFMTBCDField;
    uniQScriptOPERACAOSTATUS: TStringField;
    uniQScriptAGE_NR_MAXIMO_USUARIO_CLIENTE: TFMTBCDField;
    uniQScriptFINALIZANEGOCIACAO: TFMTBCDField;
    uniQScriptPERMITE_ENVIO_AVISO: TFMTBCDField;
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
  frmgruposdeusuarios: Tfrmgruposdeusuarios;

implementation

{$R *.dfm}

uses
  uDataModule, uusuariosgrupocadastro;

procedure Tfrmgruposdeusuarios.FormActivate(Sender: TObject);
begin
  uniQScript.Close;
  uniQScript.Sql.Text := 'select * from usuario_grupo';
  uniQScript.Open;
  uniQScript.First;
end;

procedure Tfrmgruposdeusuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    uniQScript.Edit;
    uniQScript.Cancel;
  except end;
end;

procedure Tfrmgruposdeusuarios.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

procedure Tfrmgruposdeusuarios.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then RzToolButton1Click(Sender);
end;

procedure Tfrmgruposdeusuarios.btnalterarClick(Sender: TObject);
begin
  uniQScript.Edit;

  frmgruposdeusuarioscadastro.ShowModal;
  frmgruposdeusuarios.FormActivate(Sender);
end;

procedure Tfrmgruposdeusuarios.JvDBGrid1DblClick(Sender: TObject);
begin
  btnalterarClick(Sender);
end;

procedure Tfrmgruposdeusuarios.RzToolButton1Click(Sender: TObject);
begin
  uniQScript.Close;
  uniQScript.Sql.Text := 'select * from usuario_grupo where upper(nome_grupo) like (''%' + EDIT1.TEXT + '%'')';
  uniQScript.Open;
  uniQScript.First;
end;

procedure Tfrmgruposdeusuarios.RzToolButton3Click(Sender: TObject);
begin
  uniQScript.Open;
  uniQScript.Insert;
  frmgruposdeusuarioscadastro.alterainsere := 'INSERE';
  frmgruposdeusuarioscadastro.ShowModal;
  frmgruposdeusuarioscadastro.alterainsere := '';
  frmgruposdeusuarios.FormActivate(Sender);
end;

end.
