unit uoperadoresselecaodegrupo;

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
  Tfrmoperadoresselecaodegrupo = class(TForm)
    uniQScript: TFDQuery;
    UniDSQScript: TDataSource;
    unigetid: TFDQuery;
    DBGrid1: TDBGrid;
    uniQScriptCODIGO: TIntegerField;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmoperadoresselecaodegrupo: Tfrmoperadoresselecaodegrupo;

implementation

{$R *.dfm}

uses
  uDataModule, ugrupogeralcadastro, uFuncoes;

procedure Tfrmoperadoresselecaodegrupo.DBGrid1DblClick(Sender: TObject);
begin
  frmgrupogeralcadastro.UniQOperadorGrupo.open;
  frmgrupogeralcadastro.UniQOperadorGrupo.insert;

//  unigetid.close;
//  unigetid.sql.text := 'SELECT SEQ_CAMPANHA_GRUPO_OPERADOR.nextval as Sequences FROM DUAL';
//  unigetid.open;

  frmgrupogeralcadastro.UniQOperadorGrupo.FieldbyName('CODIGO').Value := GetID('codigo','campanha_grupo_operador');
  frmgrupogeralcadastro.UniQOperadorGrupo.FieldbyName('CODIGO_CAMPANHA').AsString := FRMGRUPOGERALCADASTRO.DBAdvLUEdit1.TEXT;
  frmgrupogeralcadastro.UniQOperadorGrupo.FieldbyName('GRUPO_OPERADOR').AsString := UniQScript.FieldByName('CODIGO').AsString;
  frmgrupogeralcadastro.UniQOperadorGrupo.post;

//  unigetid.close;

  CLOSE;
end;

procedure Tfrmoperadoresselecaodegrupo.FormActivate(Sender: TObject);
begin
  uniQScript.Close;
  uniQScript.Sql.Text := 'select * from operador_grupo';
  uniQScript.Open;
  uniQScript.First;
end;

procedure Tfrmoperadoresselecaodegrupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    uniQScript.Edit;
    uniQScript.Cancel;
    uniQScript.Close;
  except end;
end;

procedure Tfrmoperadoresselecaodegrupo.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

end.
