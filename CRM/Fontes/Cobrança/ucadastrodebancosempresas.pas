unit ucadastrodebancosempresas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, 
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.TabNotBk, AdvEdit, advlued, 
  DBAdvLe, Vcl.DBCtrls, RzButton, AdvCombo, Lucombo, dblucomb, Data.DB, 
  ACBrBase, ACBrEnterTab, JvComponentBase, JvEnterTab, AdvOfficeTabSet, 
  AdvOfficeTabSetStylers, RzTabs, AdvOfficeButtons, DBAdvOfficeButtons, 
  AdvDBComboBox, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.Mask, 
  RzEdit, RzDBEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, 
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, 
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, 
  FireDAC.DBX.Migrate, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDBEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCurrencyEdit;

type
  Tfrmcadastrodebancosempresas = class(TForm)
    Panel3: TPanel;
    Panel4: TPanel;
    TabbedNotebook1: TTabbedNotebook;
    Notebook1: TNotebook;
    Notebook7: TNotebook;
    Notebook8: TNotebook;
    Notebook9: TNotebook;
    DBAdvLUEdit1: TDBAdvLUEdit;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    unigetid: TFDQuery;
    DBAdvLUEdit3: TDBAdvLUEdit;
    DBAdvLUEdit5: TDBAdvLUEdit;
    DBAdvLUEdit6: TDBAdvLUEdit;
    DBAdvLUEdit7: TDBAdvLUEdit;
    DBAdvLUEdit8: TDBAdvLUEdit;
    DBAdvLUEdit9: TDBAdvLUEdit;
    DBAdvLUEdit10: TDBAdvLUEdit;
    DBAdvLUEdit11: TDBAdvLUEdit;
    DBAdvLUEdit12: TDBAdvLUEdit;
    DBAdvOfficeCheckBox1: TDBAdvOfficeCheckBox;
    DBAdvOfficeCheckBox2: TDBAdvOfficeCheckBox;
    DBAdvOfficeCheckBox3: TDBAdvOfficeCheckBox;
    DBAdvOfficeCheckBox4: TDBAdvOfficeCheckBox;
    DBAdvOfficeCheckBox5: TDBAdvOfficeCheckBox;
    DBAdvOfficeCheckBox8: TDBAdvOfficeCheckBox;
    DBAdvOfficeCheckBox9: TDBAdvOfficeCheckBox;
    DBAdvOfficeCheckBox10: TDBAdvOfficeCheckBox;
    DBAdvOfficeCheckBox11: TDBAdvOfficeCheckBox;
    DBAdvOfficeCheckBox12: TDBAdvOfficeCheckBox;
    DBAdvOfficeCheckBox6: TDBAdvOfficeCheckBox;
    DBAdvOfficeCheckBox13: TDBAdvOfficeCheckBox;
    DBAdvOfficeCheckBox14: TDBAdvOfficeCheckBox;
    DBAdvOfficeCheckBox7: TDBAdvOfficeCheckBox;
    AdvDBComboBox1: TAdvDBComboBox;
    DBAdvLUEdit13: TDBAdvLUEdit;
    DBAdvLUEdit14: TDBAdvLUEdit;
    Label1: TLabel;
    DBAdvLUEdit15: TDBAdvLUEdit;
    Label2: TLabel;
    DBAdvLUEdit16: TDBAdvLUEdit;
    DBAdvLUEdit17: TDBAdvLUEdit;
    Label3: TLabel;
    DBAdvLUEdit18: TDBAdvLUEdit;
    DBAdvLUEdit19: TDBAdvLUEdit;
    DBAdvLUEdit20: TDBAdvLUEdit;
    Label4: TLabel;
    DBAdvLUEdit21: TDBAdvLUEdit;
    DBAdvLUEdit22: TDBAdvLUEdit;
    Label5: TLabel;
    DBAdvLUEdit23: TDBAdvLUEdit;
    DBAdvLUEdit26: TDBAdvLUEdit;
    DBAdvOfficeCheckBox15: TDBAdvOfficeCheckBox;
    DBAdvOfficeCheckBox16: TDBAdvOfficeCheckBox;
    Label6: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    RzToolButton3: TRzToolButton;
    RzToolButton4: TRzToolButton;
    JvDBGrid1: TJvDBGrid;
    DSQCadastroComissoes: TDataSource;
    UniQCadastroComissoes: TFDQuery;
    RzToolButton6: TRzToolButton;
    Label7: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    DBMemo1: TDBMemo;
    DBAdvOfficeCheckBox17: TDBAdvOfficeCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    DBAdvLUEdit2: TDBAdvLUEdit;
    RzDBNumericEdit1: TRzDBNumericEdit;
    RzDBNumericEdit2: TRzDBNumericEdit;
    DBAdvLUEdit24: TRzDBNumericEdit;
    cxDBMaskEdit1: TcxDBMaskEdit;
    Label8: TLabel;
    Notebook2: TNotebook;
    Label9: TLabel;
    RzToolButton5: TRzToolButton;
    RzToolButton7: TRzToolButton;
    RzToolButton8: TRzToolButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QBancosComissao: TFDQuery;
    dsBancosComissao: TDataSource;
    QBancosComissaocodigo: TFDAutoIncField;
    QBancosComissaocod_banco: TIntegerField;
    QBancosComissaodescricao: TStringField;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    QBancosComValores: TFDQuery;
    dsBancosComValores: TDataSource;
    QBancosComValorescodigo: TFDAutoIncField;
    QBancosComValorescod_banco_comissao: TIntegerField;
    QBancosComValoresvalor_de: TFloatField;
    QBancosComValoresvalor_ate: TFloatField;
    QBancosComValoresvalor_comissao: TFloatField;
    cxGrid2DBTableView1valor_de: TcxGridDBColumn;
    cxGrid2DBTableView1valor_ate: TcxGridDBColumn;
    cxGrid2DBTableView1valor_comissao: TcxGridDBColumn;
    RzToolButton9: TRzToolButton;
    RzToolButton11: TRzToolButton;
    QBancosComissaostatus: TStringField;
    QBancosComValoresstatus: TStringField;
    QBancosComValoresdias_de: TIntegerField;
    QBancosComValoresdias_ate: TIntegerField;
    cxGrid2DBTableView1dias_de: TcxGridDBColumn;
    cxGrid2DBTableView1dias_ate: TcxGridDBColumn;
    UniQCadastroComissoesCODIGO: TFMTBCDField;
    UniQCadastroComissoesCODIGO_CREDOR: TIntegerField;
    UniQCadastroComissoesNOME_CREDOR: TStringField;
    UniQCadastroComissoesDIAS_INICIAL: TFMTBCDField;
    UniQCadastroComissoesDIAS_FINAL: TFMTBCDField;
    UniQCadastroComissoesCCM: TFMTBCDField;
    UniQCadastroComissoesCMULTA: TFMTBCDField;
    UniQCadastroComissoesCJUROS: TFMTBCDField;
    UniQCadastroComissoesCHONORARIO: TFMTBCDField;
    UniQCadastroComissoesCSALDO: TFMTBCDField;
    UniQCadastroComissoesCOPERADOR: TFMTBCDField;
    UniQCadastroComissoesACHECK: TStringField;
    UniQCadastroComissoesAMULTA: TFMTBCDField;
    UniQCadastroComissoesAJUROS: TFMTBCDField;
    UniQCadastroComissoesAHONORARIO: TFMTBCDField;
    UniQCadastroComissoesAVALORHONOR: TFMTBCDField;
    UniQCadastroComissoesADESCONTO: TFMTBCDField;
    DBCheckBox1: TDBCheckBox;
    Label61: TLabel;
    cbxGrupo: TComboBox;
    QGrupo: TFDQuery;
    procedure FormShow(Sender: TObject);
    procedure ChecaChecks;
    procedure RzToolButton1Click(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBAdvLUEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBAdvLUEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBAdvLUEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBAdvLUEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure AdvDBComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzToolButton3Click(Sender: TObject);
    procedure RzToolButton6Click(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox15Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox16Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox1Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox3Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox5Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox9Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox11Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox10Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox12Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox13Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox14Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox7Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox2Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox4Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox8Click(Sender: TObject);
    procedure DBAdvOfficeCheckBox6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBAdvOfficeCheckBox17Click(Sender: TObject);
    procedure DBAdvLUEdit3Exit(Sender: TObject);
    procedure DBAdvLUEdit11Exit(Sender: TObject);
    procedure DBAdvLUEdit4Exit(Sender: TObject);
    procedure RzToolButton5Click(Sender: TObject);
    procedure dsBancosComissaoDataChange(Sender: TObject; Field: TField);
    procedure RzToolButton9Click(Sender: TObject);
    procedure QBancosComValoresBeforePost(DataSet: TDataSet);
    procedure RzToolButton7Click(Sender: TObject);
    procedure RzToolButton8Click(Sender: TObject);
    procedure RzToolButton11Click(Sender: TObject);
    procedure cxGrid2DBTableView1valor_dePropertiesEditValueChanged(
      Sender: TObject);
    procedure cxGrid2DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid2DBTableView1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure GetComissao;
    procedure GetComissaoValores;
    procedure CarregaGrupoBanco;
  public
    { Public declarations }
    ALTERAINSERE: STRING;
  end;

var
  frmcadastrodebancosempresas: Tfrmcadastrodebancosempresas;

implementation

{$R *.dfm}

uses
  ubancosempresas, ucadastrodecomissoeseatualizacao, udatamodule, uFuncoes,
  uCadBancosComissao, FClientes;

procedure Tfrmcadastrodebancosempresas.CarregaGrupoBanco;
begin
  with QGrupo do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT            ');
    SQL.Add('  bg.codigo,      ');
    SQL.Add('  bg.nome         ');
    SQL.Add('FROM              ');
    SQL.Add('  bancos_grupo bg ');
    SQL.Add('ORDER BY bg.nome  ');
    Open;
  end;

  cbxGrupo.Items.Clear;
  cbxGrupo.Items.AddObject('Selecione o grupo',TObject(0));
  QGrupo.First;

  while not QGrupo.Eof do
  begin
    cbxGrupo.Items.AddObject(QGrupo.FieldByName('nome').AsString,TObject(QGrupo.FieldByName('codigo').AsInteger));
    QGrupo.Next;
  end;

end;

procedure Tfrmcadastrodebancosempresas.ChecaChecks;
begin
  DBAdvLUEdit13.Enabled := False;
  DBAdvLUEdit14.Enabled := False;
  DBAdvLUEdit15.Enabled := False;
  DBAdvLUEdit16.Enabled := False;
  DBAdvLUEdit17.Enabled := False;
  DBAdvLUEdit18.Enabled := False;
  DBAdvLUEdit19.Enabled := False;
  DBAdvLUEdit20.Enabled := False;
  DBAdvLUEdit21.Enabled := False;
  DBAdvLUEdit22.Enabled := False;
  DBAdvLUEdit23.Enabled := False;
  DBAdvLUEdit24.Enabled := False;
  RzDBNumericEdit1.Enabled := False;
  RzDBNumericEdit2.Enabled := False;
  DBAdvLUEdit26.Enabled := False;

  if DBAdvOfficeCheckBox1.Checked = true then begin
    DBAdvLUEdit13.Enabled := True;
    DBAdvLUEdit14.Enabled := True;
  end;

  if DBAdvOfficeCheckBox2.Checked = true then begin
    DBAdvLUEdit15.Enabled := True;
    DBAdvLUEdit16.Enabled := True;
  end;

  if DBAdvOfficeCheckBox3.Checked = true then begin
    DBAdvLUEdit17.Enabled := True;
    DBAdvLUEdit18.Enabled := True;
  end;

  if DBAdvOfficeCheckBox4.Checked = true then begin
    DBAdvLUEdit20.Enabled := True;
    DBAdvLUEdit21.Enabled := True;
  end;

  if DBAdvOfficeCheckBox5.Checked = true then begin
    DBAdvLUEdit19.Enabled := True;
  end;

  if DBAdvOfficeCheckBox9.Checked = true then begin
    DBAdvLUEdit22.Enabled := True;
    DBAdvLUEdit23.Enabled := True;
  end;

  if DBAdvOfficeCheckBox8.Checked = true then begin
    DBAdvLUEdit24.Enabled := True;
  end;

  if DBAdvOfficeCheckBox6.Checked = true then begin
    RzDBNumericEdit1.Enabled := True;
  end;

  if DBAdvOfficeCheckBox17.Checked = true then begin
    RzDBNumericEdit2.Enabled := True;
  end;

  if DBAdvOfficeCheckBox7.Checked = true then begin
    DBAdvLUEdit26.Enabled := True;
  end;

//  if DBAdvOfficeCheckBox16.checked = true then DBAdvOfficeCheckBox15.checked := false;
//  if DBAdvOfficeCheckBox15.checked = true then DBAdvOfficeCheckBox16.checked := false;
end;

procedure Tfrmcadastrodebancosempresas.cxGrid2DBTableView1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
var
  AGridSite: TcxGridSite;
  AGridView: TcxGridDBTableView;
begin
  if Key = VK_RETURN then
  begin
    AGridSite := Sender as TcxGridSite;
    AGridView := AGridSite.GridView as TcxGridDBTableView;
    AGridView.Controller.FocusNextRecord(AGridView.Controller.FocusedRecordIndex, not (ssShift in Shift), true, false, false);
    Key := 0;
  end;
end;

procedure Tfrmcadastrodebancosempresas.cxGrid2DBTableView1KeyPress(
  Sender: TObject; var Key: Char);
var
  AGridView: TcxGridDBTableView;
  ASite: TcxGridSite;
begin
//  if key = #13 then
//    cxGrid2DBTableView1.DataController.Controller.FocusNextItem(AGridView.Controller.FocusedRecordIndex, True, true, false, false);
end;

procedure Tfrmcadastrodebancosempresas.cxGrid2DBTableView1valor_dePropertiesEditValueChanged(
  Sender: TObject);
begin
  QBancosComValores.Post;
  QBancosComValores.Edit;
  QBancosComValores.Post;
end;

procedure Tfrmcadastrodebancosempresas.AdvDBComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure Tfrmcadastrodebancosempresas.DBAdvLUEdit11Exit(Sender: TObject);
begin
  frmcredores.UniQCredoresFONE.AsString := FormatarTelefone(frmcredores.UniQCredoresFONE.AsString);
end;

procedure Tfrmcadastrodebancosempresas.DBAdvLUEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
if (Key = #13) then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmcadastrodebancosempresas.DBAdvLUEdit3Exit(Sender: TObject);
begin
  if frmcredores.UniQCredoresCNPJ.AsString <> '' then
    frmcredores.UniQCredoresCNPJ.AsString := FormataCNPJ(frmcredores.UniQCredoresCNPJ.AsString);
end;

procedure Tfrmcadastrodebancosempresas.DBAdvLUEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
if (Key = #13) then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmcadastrodebancosempresas.DBAdvLUEdit4Exit(Sender: TObject);
begin
  frmcredores.UniQCredoresCEP.EditMask := '00000\-9999;1;_';
end;

procedure Tfrmcadastrodebancosempresas.DBAdvLUEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
if (Key = #13) then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmcadastrodebancosempresas.DBAdvLUEdit5KeyPress(Sender: TObject;
  var Key: Char);
begin
if (Key = #13) then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmcadastrodebancosempresas.DBAdvOfficeCheckBox10Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmcadastrodebancosempresas.DBAdvOfficeCheckBox11Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmcadastrodebancosempresas.DBAdvOfficeCheckBox12Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmcadastrodebancosempresas.DBAdvOfficeCheckBox13Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmcadastrodebancosempresas.DBAdvOfficeCheckBox14Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmcadastrodebancosempresas.DBAdvOfficeCheckBox15Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmcadastrodebancosempresas.DBAdvOfficeCheckBox16Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmcadastrodebancosempresas.DBAdvOfficeCheckBox17Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmcadastrodebancosempresas.DBAdvOfficeCheckBox1Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmcadastrodebancosempresas.DBAdvOfficeCheckBox2Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmcadastrodebancosempresas.DBAdvOfficeCheckBox3Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmcadastrodebancosempresas.DBAdvOfficeCheckBox4Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmcadastrodebancosempresas.DBAdvOfficeCheckBox5Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmcadastrodebancosempresas.DBAdvOfficeCheckBox6Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmcadastrodebancosempresas.DBAdvOfficeCheckBox7Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmcadastrodebancosempresas.DBAdvOfficeCheckBox8Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmcadastrodebancosempresas.DBAdvOfficeCheckBox9Click(
  Sender: TObject);
begin
ChecaChecks;
end;

procedure Tfrmcadastrodebancosempresas.dsBancosComissaoDataChange(
  Sender: TObject; Field: TField);
begin
  if QBancosComissaocodigo.AsInteger > 0 then
    GetComissaoValores;
end;

procedure Tfrmcadastrodebancosempresas.FormActivate(Sender: TObject);
begin
  checachecks;

  try
    UniQCadastroComissoes.Open;
  except end;

  if DBRadioGroup1.ItemIndex = -1 then DBRadioGroup1.ItemIndex := 0;
end;

procedure Tfrmcadastrodebancosempresas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmcadastrodebancosempresas.alterainsere := '';
end;

procedure Tfrmcadastrodebancosempresas.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  //if (Key = #13) then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmcadastrodebancosempresas.FormShow(Sender: TObject);
begin
  DBAdvLUEdit2.DataSource := frmcredores.UniDSQCredores;
  DBAdvLUEdit2.DataField := 'NOME';
  QBancosComValores.Close;
  GetComissao;
  CarregaGrupoBanco;


//      if FrmClientes.uniQClientesListaCOD_BANCO_COMISSAO.AsInteger > 0 then
//      begin
//        QComissao.Locate('codigo',FrmClientes.uniQClientesListaCOD_BANCO_COMISSAO.AsInteger);
//        cbxComissao.ItemIndex := cbxComissao.Items.IndexOf(QComissao.FieldByName('descricao').AsString);
//      end
//      else
//        cbxComissao.ItemIndex := 0;


  if frmcredores.UniQCredoresCOD_BANCOS_GRUPO.AsInteger > 0 then
  begin
    QGrupo.Locate('codigo',frmcredores.UniQCredoresCOD_BANCOS_GRUPO.AsInteger,[]);
    cbxGrupo.ItemIndex := cbxGrupo.Items.IndexOf(QGrupo.FieldByName('nome').AsString);
  end
  else
    cbxGrupo.ItemIndex := 0;
  TabbedNotebook1.PageIndex := 0;
  DBAdvLUEdit2.SETFOCUS;
end;

procedure Tfrmcadastrodebancosempresas.GetComissao;
begin
  with QBancosComissao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                    ');
    SQL.Add('  *                       ');
    SQL.Add('FROM                      ');
    SQL.Add('  bancos_comissao         ');
    SQL.Add('WHERE cod_banco = :Codigo ');
    SQL.Add('AND status = "A"          ');
    SQL.Add('ORDER BY descricao        ');
    ParamByName('Codigo').AsInteger := frmcredores.UniQCredoresCODIGO.AsInteger;
    Open;
  end;
  QBancosComissao.First;
end;

procedure Tfrmcadastrodebancosempresas.GetComissaoValores;
begin
  with QBancosComValores do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                                    ');
    SQL.Add('  bcv.*                                   ');
    SQL.Add('FROM                                      ');
    SQL.Add('  bancos_comissao_valores bcv             ');
    SQL.Add('  INNER JOIN bancos_comissao bc           ');
    SQL.Add('    ON bc.codigo = bcv.cod_banco_comissao ');
    SQL.Add('WHERE bcv.cod_banco_comissao = :Codigo    ');
    SQL.Add('AND bcv.status = "A"                      ');
    ParamByName('Codigo').AsInteger := QBancosComissaocodigo.AsInteger;
    Open;
  end;
end;

procedure Tfrmcadastrodebancosempresas.QBancosComValoresBeforePost(
  DataSet: TDataSet);
begin
  QBancosComValorescod_banco_comissao.AsInteger := QBancosComissaocodigo.AsInteger;
end;

procedure Tfrmcadastrodebancosempresas.RzToolButton11Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    QBancosComValores.Edit;
    QBancosComValoresstatus.AsString := 'I';
    QBancosComValores.Post;
    GetComissaoValores;
  end;
end;

procedure Tfrmcadastrodebancosempresas.RzToolButton1Click(Sender: TObject);
begin
  if not frmDataModule.UniConnection1.InTransaction then
    frmDataModule.UniConnection1.StartTransaction;
    BEGIN
        IF ALTERAINSERE = 'INSERE' THEN
        BEGIN

          FRMCREDORES.uniQCredores.edit;
          DBAdvLUEdit1.Text := IntToStr(GetID('codigo','bancos'));

          if cbxGrupo.ItemIndex > 0 then
            FRMCREDORES.UniQCredoresCOD_BANCOS_GRUPO.AsInteger := Integer(cbxGrupo.Items.Objects[cbxGrupo.ItemIndex]);

          FRMCREDORES.uniQCredores.post;
      //    FRMCREDORES.uniQBancosEmpresas.CommitUpdates;


       // Commit the current transaction to reflect changes in database if no errors were raised
       frmDataModule.UniConnection1.Commit;

      ALTERAINSERE := '';
    END
    ELSE
    BEGIN
      FRMCREDORES.uniQCredores.EDIT;
      if cbxGrupo.ItemIndex > 0 then
        FRMCREDORES.UniQCredoresCOD_BANCOS_GRUPO.AsInteger := Integer(cbxGrupo.Items.Objects[cbxGrupo.ItemIndex]);
      FRMCREDORES.uniQCredores.post;
      frmDataModule.UniConnection1.Commit;
      FRMCREDORES.uniQCredores.close;
    END;
  // except
       // Rollback all changes in database made after StartTransaction if an error was raised
  //     frmDataModule.UniConnection1.Rollback;
   end;

  Close;
end;

procedure Tfrmcadastrodebancosempresas.RzToolButton2Click(Sender: TObject);
begin
  FRMCREDORES.uniQCredores.Cancel;
  Close;
end;

procedure Tfrmcadastrodebancosempresas.RzToolButton3Click(Sender: TObject);
begin
//  exit;
  //checa se salvou, senão salva
  if DBAdvLUEdit1.Text = '' then begin
    Application.MessageBox('Grave o Credor antes de continuar.','Atenção',MB_ICONHAND + MB_OK + MB_ICONQUESTION);
    exit;
  end;
  //fim checa se salvou, senão salva

  uniQCadastroComissoes.Open;
  uniQCadastroComissoes.Insert;
  frmcomissaoeatualizacao.DBAdvLUEdit1.Text := DBAdvLUEdit1.Text;
  frmcomissaoeatualizacao.DBAdvLUEdit2.Text := DBAdvLUEdit2.Text;

  UniQCadastroComissoes.FIELDBYNAME('acheck').Value := 'FALSE';

  frmcomissaoeatualizacao.DBAdvLUEdit7.Enabled := FALSE;
  frmcomissaoeatualizacao.DBAdvLUEdit8.Enabled := FALSE;
  frmcomissaoeatualizacao.DBAdvLUEdit9.Enabled := FALSE;
  frmcomissaoeatualizacao.DBAdvLUEdit10.Enabled := FALSE;
  frmcomissaoeatualizacao.DBAdvLUEdit11.Enabled := FALSE;
  
  frmcomissaoeatualizacao.alterainsere := 'INSERE';
  frmcomissaoeatualizacao.ShowModal;
  //frmcomissaoeatualizacao.alterainsere := '';
end;

procedure Tfrmcadastrodebancosempresas.RzToolButton4Click(Sender: TObject);
begin
//  exit;
  //checa se tem em algum cadastro
  if uniQCadastroComissoes.RecordCount = 0 then begin
    exit;
  end;
  //fim checa se tem em algum cadastro
  if Application.MessageBox('Esta operação é irreversível. Deseja continuar?','Atenção',MB_ICONHAND + MB_YESNO + MB_ICONQUESTION) = mrYES then
    try uniQCadastroComissoes.Delete; except end;
end;

procedure Tfrmcadastrodebancosempresas.RzToolButton5Click(Sender: TObject);
begin
  with QBancosComissao do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT            ');
    SQL.Add('  *               ');
    SQL.Add('FROM              ');
    SQL.Add('  bancos_comissao ');
    SQL.Add('LIMIT 0           ');
    Open;
    Append;
  end;
  Application.CreateForm(TfrmCadBancosComissao, frmCadBancosComissao);
  frmCadBancosComissao.ShowModal;
  frmCadBancosComissao.Free;
  GetComissao;
end;

procedure Tfrmcadastrodebancosempresas.RzToolButton6Click(Sender: TObject);
begin
//  exit;
  //checa se salvou, senão salva
  if DBAdvLUEdit1.Text = '' then begin
    Application.MessageBox('Grave o Credor antes de continuar.','Atenção',MB_ICONHAND + MB_OK + MB_ICONQUESTION);
    exit;
  end;
  //fim checa se salvou, senão salva

  //checa se tem em algum cadastro
  if uniQCadastroComissoes.RecordCount = 0 then begin
    exit;
  end;
  //fim checa se tem em algum cadastro

  try
    uniQCadastroComissoes.Edit;
    frmcomissaoeatualizacao.alterainsere := 'ALTERA';
    frmcomissaoeatualizacao.ShowModal;
    frmcomissaoeatualizacao.alterainsere := '';
  except

  end;
end;

procedure Tfrmcadastrodebancosempresas.RzToolButton7Click(Sender: TObject);
begin
  Application.CreateForm(TfrmCadBancosComissao, frmCadBancosComissao);
  QBancosComissao.Edit;
  frmCadBancosComissao.ShowModal;
  frmCadBancosComissao.Free;
end;

procedure Tfrmcadastrodebancosempresas.RzToolButton8Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
  begin
    QBancosComissao.Edit;
    QBancosComissaostatus.AsString := 'I';
    QBancosComissao.Post;
    GetComissao;
  end;
end;

procedure Tfrmcadastrodebancosempresas.RzToolButton9Click(Sender: TObject);
begin
  with QBancosComValores do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                                 ');
    SQL.Add('  bcv.*                                ');
    SQL.Add('FROM                                   ');
    SQL.Add('  bancos_comissao_valores bcv          ');
    SQL.Add('WHERE bcv.cod_banco_comissao = :Codigo ');
    SQL.Add('AND status = "A"                       ');
    ParamByName('Codigo').AsInteger := QBancosComissaocodigo.AsInteger;
    Open;
    Append;
  end;
end;

end.
