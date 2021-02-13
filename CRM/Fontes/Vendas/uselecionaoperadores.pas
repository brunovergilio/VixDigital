unit uselecionaoperadores;

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
  Tfrmselecionaoperadores = class(TForm)
    uniQScript: TFDQuery;
    UniDSQScript: TDataSource;
    unigetid: TFDQuery;
    uniQScriptCODIGO: TFMTBCDField;
    uniQScriptNOME: TStringField;
    uniQScriptNIVEL: TStringField;
    uniQScriptSENHA: TStringField;
    uniQScriptCOBRADOR: TFMTBCDField;
    uniQScriptDATA_MODIF: TSQLTimeStampField;
    uniQScriptCOBRADOR_EXT: TStringField;
    uniQScriptATIVO: TStringField;
    uniQScriptGRUPOHORARIO: TFMTBCDField;
    uniQScriptAGENDA_OUTROUSUARIO: TStringField;
    uniQScriptMATRICULA: TStringField;
    uniQScriptAGENDA_PRIORIDADE_ALTA: TStringField;
    uniQScriptAGENDA_LIMITA: TStringField;
    uniQScriptATIVONET: TStringField;
    uniQScriptSENHANET: TStringField;
    uniQScriptUSUARIO_GRUPO: TFMTBCDField;
    uniQScriptDATA_ACESSO: TSQLTimeStampField;
    uniQScriptGRUPO_DISCADOR: TStringField;
    uniQScriptCONTAEMAIL: TFMTBCDField;
    uniQScriptIDNET: TStringField;
    uniQScriptAGENDA_CUMPRIROUTROUSUARIO: TStringField;
    uniQScriptPERMITE_ALTERAR_SENHA: TStringField;
    uniQScriptCODIGO_EXTERNO: TStringField;
    uniQScriptPERMITE_SELECIONAR_CONTAEMAIL: TStringField;
    uniQScriptPERMITE_LISTA_COBRANCA: TStringField;
    uniQScriptPERMITE_CLIENTE: TStringField;
    uniQScriptPERMITE_GERENCIADOR: TStringField;
    uniQScriptPERMITE_AGENDA: TStringField;
    uniQScriptPERMITE_IMPORTAR_ARQUIVOS: TStringField;
    uniQScriptPERMITE_CORRESPONDENCIAS: TStringField;
    uniQScriptPERMITE_BACKUP: TStringField;
    uniQScriptPERMITE_USUARIO: TStringField;
    uniQScriptPERMITE_EMAIL: TStringField;
    uniQScriptPERMITE_NOTIFICACOES: TStringField;
    uniQScriptANOTACOES: TBlobField;
    uniQScriptUSUARIO_NOME_GRUPO: TStringField;
    DBGrid1: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmselecionaoperadores: Tfrmselecionaoperadores;

implementation

{$R *.dfm}

uses
  uDataModule, uoperadoresgrupocadastro, uFuncoes;

procedure Tfrmselecionaoperadores.DBGrid1DblClick(Sender: TObject);
begin
  frmoperadoresgrupocadastro.UniQOperadorGrupoOperador.open;
  frmoperadoresgrupocadastro.UniQOperadorGrupoOperador.insert;

//  unigetid.close;
//  unigetid.sql.text := 'SELECT SEQ_OPERADOR_GRUPO_OPERADORES.nextval as Sequences FROM DUAL';
//  unigetid.open;

  frmoperadoresgrupocadastro.UniQOperadorGrupoOperador.FieldbyName('CODIGO').Value := GetID('codigo','operador_grupo_operadores'); //unigetid.FieldByName('Sequences').Value;
  frmoperadoresgrupocadastro.UniQOperadorGrupoOperador.FieldbyName('GRUPO').AsString := FRMOPERADORESGRUPOCADASTRO.DBAdvLUEdit1.TEXT;
  frmoperadoresgrupocadastro.UniQOperadorGrupoOperador.FieldbyName('OPERADOR').AsString := UniQScript.FieldByName('CODIGO').AsString;
  frmoperadoresgrupocadastro.UniQOperadorGrupoOperador.post;

  Close;

end;

procedure Tfrmselecionaoperadores.FormActivate(Sender: TObject);
begin
  uniQScript.Close;
  uniQScript.Sql.Text := 'select * from usuarios where nivel = ''O''';
  uniQScript.Open;
  uniQScript.First;
end;

procedure Tfrmselecionaoperadores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    uniQScript.Edit;
    uniQScript.Cancel;
    uniQScript.Close;
  except
  end;
end;

end.
