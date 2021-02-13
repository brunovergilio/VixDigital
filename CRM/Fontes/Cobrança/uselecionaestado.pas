unit uselecionaestado;

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
  Tfrmselecionaestado = class(TForm)
    uniQEstado: TFDQuery;
    UniDSQEstado: TDataSource;
    Label2: TLabel;
    unigetid: TFDQuery;
    uniQEstadoID: TFMTBCDField;
    uniQEstadoNOME: TStringField;
    uniQEstadoUF: TStringField;
    uniQEstadoPAIS: TIntegerField;
    DBGrid1: TDBGrid;
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
  frmselecionaestado: Tfrmselecionaestado;

implementation

{$R *.dfm}

uses
  uDataModule, ugrupogeralcadastro, uFuncoes;

procedure Tfrmselecionaestado.DBGrid1DblClick(Sender: TObject);
begin
  frmgrupogeralcadastro.UniQEstados.open;
  frmgrupogeralcadastro.UniQEstados.insert;

//  unigetid.close;
//  unigetid.sql.text := 'SELECT SEQ_CAMPANHA_ESTADO.nextval as Sequences FROM DUAL';
//  unigetid.open;

  frmgrupogeralcadastro.UniQEstados.FieldbyName('CODIGO').Value := GetID('codigo','campanha_estado');
  frmgrupogeralcadastro.UniQEstados.FieldbyName('CODIGO_CAMPANHA').AsString := FRMGRUPOGERALCADASTRO.DBAdvLUEdit1.TEXT;
  frmgrupogeralcadastro.UniQEstados.FieldbyName('ESTADO').Value := uniqestado.FieldByName('UF').Value;
  frmgrupogeralcadastro.UniQEstados.post;

  unigetid.close;

  CLOSE;
end;

procedure Tfrmselecionaestado.FormActivate(Sender: TObject);
begin
  uniQEstado.Close;
  uniQEstado.Sql.Text := 'select * from estado';
  uniQEstado.Open;
  uniQEstado.First;
end;

procedure Tfrmselecionaestado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    uniQEstado.Edit;
    uniQEstado.Cancel;
    uniQEstado.Close;
  except end;
end;

procedure Tfrmselecionaestado.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

end.
