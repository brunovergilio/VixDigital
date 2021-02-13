unit uselecionagrupodeusuarios;

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
  Tfrmselecionagrupodeusuarios = class(TForm)
    JvDBGrid1: TJvDBGrid;
    uniQScript: TFDQuery;
    UniDSQScript: TDataSource;
    Label2: TLabel;
    unigetid: TFDQuery;
    uniQScriptCODIGO: TFloatField;
    uniQScriptNOME_GRUPO: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure JvDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmselecionagrupodeusuarios: Tfrmselecionagrupodeusuarios;

implementation

{$R *.dfm}

uses
  uDataModule, ugrupogeralcadastro;

procedure Tfrmselecionagrupodeusuarios.FormActivate(Sender: TObject);
begin
  uniQScript.Close;
  uniQScript.Sql.Text := 'select * from usuario_grupo';
  uniQScript.Open;
  uniQScript.First;
end;

procedure Tfrmselecionagrupodeusuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    uniQScript.Edit;
    uniQScript.Cancel;
    uniQScript.Close;
  except end;
end;

procedure Tfrmselecionagrupodeusuarios.JvDBGrid1DblClick(Sender: TObject);
begin
  frmgrupogeralcadastro.UniQUsuarios.open;
  frmgrupogeralcadastro.UniQUsuarios.insert;

  unigetid.close;
  unigetid.sql.text := 'SELECT SEQ_CAMPANHA_USUARIOS.nextval as Sequences FROM DUAL';
  unigetid.open;

  frmgrupogeralcadastro.UniQUsuarios.FieldbyName('CODIGO').Value := unigetid.FieldByName('Sequences').Value;
  frmgrupogeralcadastro.UniQUsuarios.FieldbyName('CODIGO_CAMPANHA').AsString := FRMGRUPOGERALCADASTRO.DBAdvLUEdit1.TEXT;
  frmgrupogeralcadastro.UniQUsuarios.FieldbyName('GRUPO_USUARIO').Value := UniQScript.FieldByName('NOME_GRUPO').Value;
  frmgrupogeralcadastro.UniQUsuarios.post;
  frmDataModule.UniConnection1.Commit;

  unigetid.close;

  CLOSE;
end;

procedure Tfrmselecionagrupodeusuarios.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

end.
