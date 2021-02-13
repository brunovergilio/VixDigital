unit ugrupogeral;

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
  Tfrmgrupogeral = class(TForm)
    JvDBGrid1: TJvDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    uniQGrupoGeral: TFDQuery;
    UniDSQGrupoGeral: TDataSource;
    RzToolButton3: TRzToolButton;
    btnalterar: TRzToolButton;
    Label2: TLabel;
    RzToolButton1: TRzToolButton;
    Label3: TLabel;
    ComboBox1: TComboBox;
    RzToolButton2: TRzToolButton;
    UniQScript: TFDQuery;
    UniQScriptCODIGO: TFMTBCDField;
    UniQScriptNOME: TStringField;
    UniQScriptATIVO_CHECK: TStringField;
    UniQScriptFILTRO_ORIGINAIS_CHECK: TStringField;
    UniQScriptFILTRO_PARCELAS_CHECK: TStringField;
    UniQScriptORDENACAO: TStringField;
    UniQScriptPERIODO_DE: TDateTimeField;
    UniQScriptPERIODO_ATE: TDateTimeField;
    UniQScriptDIAS_DE_ATRASO_DE: TIntegerField;
    UniQScriptDIAS_DE_ATRASO_ATE: TIntegerField;
    UniQScriptVALOR_SALDO_DE: TIntegerField;
    UniQScriptVALOR_SALDO_ATE: TIntegerField;
    UniQScriptSCRIPT: TBlobField;
    UniQScriptP_FISICA_CHECK: TStringField;
    UniQScriptP_JURIDICA_CHECK: TStringField;
    UniQScriptESTADOS: TBlobField;
    UniQScriptCREDOR: TStringField;
    UniQScriptOPERACAO: TStringField;
    UniQScriptSTATUS: TStringField;
    UniQScriptULTIMO_ACIONAMENTO_DE: TDateTimeField;
    UniQScriptULTIMO_ACIONAMENTO_ATE: TDateTimeField;
    uniQGrupoGeralCODIGO: TFMTBCDField;
    uniQGrupoGeralNOME: TStringField;
    uniQGrupoGeralATIVO_CHECK: TStringField;
    uniQGrupoGeralFILTRO_ORIGINAIS_CHECK: TStringField;
    uniQGrupoGeralFILTRO_PARCELAS_CHECK: TStringField;
    uniQGrupoGeralORDENACAO: TStringField;
    uniQGrupoGeralPERIODO_DE: TDateTimeField;
    uniQGrupoGeralPERIODO_ATE: TDateTimeField;
    uniQGrupoGeralDIAS_DE_ATRASO_DE: TIntegerField;
    uniQGrupoGeralDIAS_DE_ATRASO_ATE: TIntegerField;
    uniQGrupoGeralVALOR_SALDO_DE: TIntegerField;
    uniQGrupoGeralVALOR_SALDO_ATE: TIntegerField;
    uniQGrupoGeralSCRIPT: TBlobField;
    uniQGrupoGeralP_FISICA_CHECK: TStringField;
    uniQGrupoGeralP_JURIDICA_CHECK: TStringField;
    uniQGrupoGeralESTADOS: TBlobField;
    uniQGrupoGeralCREDOR: TStringField;
    uniQGrupoGeralOPERACAO: TStringField;
    uniQGrupoGeralSTATUS: TStringField;
    uniQGrupoGeralULTIMO_ACIONAMENTO_DE: TDateTimeField;
    uniQGrupoGeralULTIMO_ACIONAMENTO_ATE: TDateTimeField;
    procedure FormActivate(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzToolButton1Click(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure uniQGrupoGeralCalcFields(DataSet: TDataSet);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RzToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgrupogeral: Tfrmgrupogeral;

implementation

{$R *.dfm}

uses
  uDataModule, ugrupogeralcadastro, UMENU;

procedure Tfrmgrupogeral.FormActivate(Sender: TObject);
begin
  RzToolButton2.VISIBLE := FALSE;

  IF (FRMMENU.USUARIOLOGADO_NIVEL = 'M') OR (FRMMENU.USUARIOLOGADO_NIVEL = 'S') THEN RzToolButton2.VISIBLE := TRUE;

  uniQGrupoGeral.Close;
  uniQGrupoGeral.Sql.Text := 'select * from campanha_crm where ativo_check <> ''X''';
  uniQGrupoGeral.Open;
  uniQGrupoGeral.First;
  uniQGrupoGeral.Last;
  uniQGrupoGeral.First;
end;

procedure Tfrmgrupogeral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
    uniQGrupoGeral.Edit;
    uniQGrupoGeral.Cancel;
  except end;
end;

procedure Tfrmgrupogeral.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

procedure Tfrmgrupogeral.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then RzToolButton1Click(Sender);
end;

procedure Tfrmgrupogeral.btnalterarClick(Sender: TObject);
begin
  uniQGrupoGeral.Edit;

  frmgrupogeralcadastro.uniQEstados.Close;
  frmgrupogeralcadastro.uniQEstados.SQL.Clear;
  frmgrupogeralcadastro.uniQEstados.SQL.Add('select * from campanha_estado WHERE codigo_campanha = :CodCampanha');
  frmgrupogeralcadastro.uniQEstados.ParamByName('CodCampanha').AsInteger := uniQGrupoGeralCODIGO.AsInteger;
  frmgrupogeralcadastro.uniQEstados.Open;

  frmgrupogeralcadastro.uniQEstados.Open;
  frmgrupogeralcadastro.uniQEstados.First;

  frmgrupogeralcadastro.uniQOperadorGrupo.Close;
  frmgrupogeralcadastro.uniQOperadorGrupo.Sql.Text := 'select campanha_grupo_operador.*, operador_grupo.nome_grupo from campanha_grupo_operador ' +
                                                      'inner join operador_grupo on campanha_grupo_operador.grupo_operador = operador_grupo.codigo';
  frmgrupogeralcadastro.uniQOperadorGrupo.Open;
  frmgrupogeralcadastro.uniQOperadorGrupo.First;

  frmgrupogeralcadastro.ShowModal;
  frmgrupogeral.FormActivate(Sender);
end;

procedure Tfrmgrupogeral.JvDBGrid1DblClick(Sender: TObject);
begin
  btnalterarClick(Sender);
end;

procedure Tfrmgrupogeral.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if UpperCase(uniQGrupoGeral.FieldByName('Ativo_Check').AsString) = 'TRUE' then begin
    JvDBGrid1.Canvas.Brush.Color := clWhite;
    JvDBGrid1.Canvas.Font.Color  := clBlack;
  end
  else begin
    JvDBGrid1.Canvas.Brush.Color := clSilver;
    JvDBGrid1.Canvas.Font.Color  := clGray;
  end;
  JvDBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure Tfrmgrupogeral.RzToolButton1Click(Sender: TObject);
begin
  uniQGrupoGeral.Close;

  if COMBOBOX1.TEXT = 'Ativo' then
  uniQGrupoGeral.Sql.Text := 'select * from campanha_crm where upper(nome) like (''%' + EDIT1.TEXT + '%'') ' +
                             'and upper(ativo_check) = ''TRUE''';
  if COMBOBOX1.TEXT = 'Inativo' then
  uniQGrupoGeral.Sql.Text := 'select * from campanha_crm where upper(nome) like (''%' + EDIT1.TEXT + '%'') ' +
                             'and upper(ativo_check) = ''FALSE''';
  if COMBOBOX1.TEXT = 'Todos' then
  uniQGrupoGeral.Sql.Text := 'select * from campanha_crm where upper(nome) like (''%' + EDIT1.TEXT + '%'')';

  uniQGrupoGeral.Open;
  uniQGrupoGeral.First;
end;

procedure Tfrmgrupogeral.RzToolButton2Click(Sender: TObject);
var
  var_registro: string;
begin
  if Application.MessageBox('Esta operação é irreversível. Deseja continuar?','Atenção',MB_ICONHAND + MB_YESNO + MB_ICONQUESTION) = mrYES then
    try
      var_registro := uniQGrupoGeral.fieldbyname('CODIGO').AsString;

      uniQScript.Close;
      uniQScript.Sql.Text := 'update campanha_crm set ativo_check = ''X'' where codigo = :pcodigo';
      uniQScript.ParambyName('pcodigo').AsString := var_registro;
      uniQScript.ExecSQL;

      frmDataModule.UniConnection1.Commit;

      uniQGrupoGeral.Refresh;
    except end;
end;

procedure Tfrmgrupogeral.RzToolButton3Click(Sender: TObject);
begin
  uniQGrupoGeral.Open;
  uniQGrupoGeral.Insert;

  frmgrupogeralcadastro.uniQEstados.Close;
  frmgrupogeralcadastro.uniQEstados.Sql.Text := 'select * from campanha_estado LIMIT 0';
  frmgrupogeralcadastro.uniQEstados.Open;
  frmgrupogeralcadastro.uniQEstados.First;

  frmgrupogeralcadastro.uniQOperador.Close;
  frmgrupogeralcadastro.uniQOperador.Sql.Text := 'select * from campanha_grupo_operador LIMIT 0';
  frmgrupogeralcadastro.uniQOperador.Open;
  frmgrupogeralcadastro.uniQOperador.First;

  uniQGrupoGeral.FIELDBYNAME('FILTRO_PARCELAS_CHECK').Value := 'FALSE';
  uniQGrupoGeral.FIELDBYNAME('FILTRO_ORIGINAIS_CHECK').Value := 'FALSE';
  uniQGrupoGeral.FIELDBYNAME('ATIVO_CHECK').Value := 'TRUE';
  uniQGrupoGeral.FIELDBYNAME('P_FISICA_CHECK').Value := 'FALSE';
  uniQGrupoGeral.FIELDBYNAME('P_JURIDICA_CHECK').Value := 'FALSE';

  frmgrupogeralcadastro.alterainsere := 'INSERE';

  frmgrupogeralcadastro.ShowModal;
  frmgrupogeralcadastro.alterainsere := '';
  frmgrupogeral.FormActivate(Sender);
end;

procedure Tfrmgrupogeral.uniQGrupoGeralCalcFields(DataSet: TDataSet);
begin
If (uniQGrupoGeral.FIELDBYNAME('ativo_check').AsString = 'True') then
uniQGrupoGeral.FIELDBYNAME('ativo').AsString := 'Sim';
If (uniQGrupoGeral.FIELDBYNAME('ativo_check').AsString = 'False') then
uniQGrupoGeral.FIELDBYNAME('ativo').AsString := 'Não';
end;

end.
