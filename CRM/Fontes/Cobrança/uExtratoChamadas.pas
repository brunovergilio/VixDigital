unit uExtratoChamadas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.StdCtrls, AdvGlowButton, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxCheckBox, cxButtonEdit, Vcl.Menus,
  cxGridExportLink;

type
  TfrmExtratoChamadas = class(TForm)
    GroupBox1: TGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    mtImportacao: TFDMemTable;
    mtImportacaoselecionado: TBooleanField;
    mtImportacaocod_importacao: TIntegerField;
    mtImportacaodescricao: TStringField;
    mtImportacaodata_criacao: TDateTimeField;
    dsImportacao: TDataSource;
    cxGrid1DBTableView1selecionado: TcxGridDBColumn;
    cxGrid1DBTableView1descricao: TcxGridDBColumn;
    cxGrid1DBTableView1data_criacao: TcxGridDBColumn;
    dsExtrato: TDataSource;
    mtExtrato: TFDMemTable;
    mtExtratoselecionado: TBooleanField;
    mtExtratodata: TDateTimeField;
    mtExtratoorigem: TIntegerField;
    mtExtratodestino: TStringField;
    mtExtratofinalizado: TStringField;
    cxGrid2DBTableView1selecionado: TcxGridDBColumn;
    cxGrid2DBTableView1data: TcxGridDBColumn;
    cxGrid2DBTableView1origem: TcxGridDBColumn;
    cxGrid2DBTableView1destino: TcxGridDBColumn;
    cxGrid2DBTableView1finalizado: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    M1: TMenuItem;
    D1: TMenuItem;
    AdvGlowButton3: TAdvGlowButton;
    mtExtratonome: TStringField;
    mtExtratotelefone: TStringField;
    mtExtratocpf: TStringField;
    mtExtratodossie: TStringField;
    mtExtratobanco: TStringField;
    cxGrid2DBTableView1nome: TcxGridDBColumn;
    cxGrid2DBTableView1telefone: TcxGridDBColumn;
    cxGrid2DBTableView1cpf: TcxGridDBColumn;
    cxGrid2DBTableView1dossie: TcxGridDBColumn;
    cxGrid2DBTableView1banco: TcxGridDBColumn;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1nome: TcxGridDBColumn;
    cxGridDBTableView1telefone: TcxGridDBColumn;
    cxGridDBTableView1cpf: TcxGridDBColumn;
    cxGridDBTableView1dossie: TcxGridDBColumn;
    cxGridDBTableView1banco: TcxGridDBColumn;
    SaveDialog1: TSaveDialog;
    procedure FormShow(Sender: TObject);
    procedure dsImportacaoDataChange(Sender: TObject; Field: TField);
    procedure M1Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure cxGrid1DBTableView1selecionadoPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure AdvGlowButton3Click(Sender: TObject);
  private
    { Private declarations }
    procedure GetImportacoes;
  public
    { Public declarations }
  end;

var
  frmExtratoChamadas: TfrmExtratoChamadas;

implementation

{$R *.dfm}

uses udatamodule;

{ TfrmExtratoChamadas }

procedure TfrmExtratoChamadas.AdvGlowButton3Click(Sender: TObject);
begin
  mtExtrato.Filtered := False;
  mtExtrato.Filter := '';
  mtExtrato.Filter := 'selecionado=True';
  mtExtrato.Filtered := True;

  SaveDialog1.Filter := 'Excel (*.xls) |*.xls|XML (*.xml) |*.xml|Arquivo Texto (*.txt) |*.txt|Página Web (*.html)|*.html';
  SaveDialog1.Title := 'Exportar Dados';
  SaveDialog1.DefaultExt:= 'xls';
  if SaveDialog1.Execute then
    ExportGridToExcel(SaveDialog1.FileName, cxGrid3, True, True);

  mtExtrato.Filtered := False;
end;

procedure TfrmExtratoChamadas.cxGrid1DBTableView1selecionadoPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  QImportacao : TFDQuery;
begin
  QImportacao := TFDQuery.Create(nil);
  try
    QImportacao.Connection := frmDataModule.UniConnection1;

    if MessageDlg('Deseja realmente excluir esta importação?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
    begin
      try
        with QImportacao do
        begin
          Close;
          SQL.Clear;
          SQL.Add('update                        ');
          SQL.Add('  extrato_chamadas            ');
          SQL.Add('  SET status = "I"            ');
          SQL.Add('WHERE cod_importacao = :Codigo ');
          ParamByName('Codigo').AsInteger := mtImportacaocod_importacao.AsInteger;
          ExecSQL;
        end;
        GetImportacoes;
        MessageDlg('Importação excluída com sucesso.',mtInformation, [mbOk],0);
      except

      end;
    end;
  finally
    FreeAndNil(QImportacao);
  end;
end;

procedure TfrmExtratoChamadas.D1Click(Sender: TObject);
begin
  mtExtrato.DisableControls;
  mtExtrato.First;
  while not mtExtrato.Eof do
  begin
    mtExtrato.Edit;
    mtExtratoselecionado.AsBoolean := False;
    mtExtrato.Post;
    mtExtrato.Next;
  end;
  mtExtrato.First;
  mtExtrato.EnableControls;
end;

procedure TfrmExtratoChamadas.dsImportacaoDataChange(Sender: TObject;
  Field: TField);
var
  QExtrato : TFDQuery;
begin
  QExtrato := TFDQuery.Create(nil);
  try
    QExtrato.Connection := frmDataModule.UniConnection1;

    mtExtrato.Close;
    mtExtrato.CreateDataSet;
    try
      with QExtrato do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT                            ');
        SQL.Add('  ec.*                            ');
        SQL.Add('FROM                              ');
        SQL.Add('  extrato_chamadas ec             ');
        SQL.Add('WHERE ec.cod_importacao = :Codigo '); //sem ordey by para mostrar igual ao arquivo
        ParamByName('Codigo').AsInteger := mtImportacaocod_importacao.AsInteger;
        Open;
      end;

      QExtrato.First;
      mtExtrato.DisableControls;
      while not QExtrato.Eof do
      begin
        mtExtrato.Append;
        mtExtratoselecionado.AsBoolean := False;
        mtExtratonome.AsString := QExtrato.FieldByName('nome').AsString;
        mtExtratotelefone.AsString := QExtrato.FieldByName('telefone').AsString;
        mtExtratocpf.AsString := QExtrato.FieldByName('cpf').AsString;
        mtExtratodossie.AsString := QExtrato.FieldByName('dossie').AsString;
        mtExtratobanco.AsString := QExtrato.FieldByName('banco').AsString;
        mtExtratodata.AsDateTime := QExtrato.FieldByName('data').AsDateTime;
        mtExtratoorigem.AsInteger := QExtrato.FieldByName('origem').AsInteger;
        mtExtratodestino.AsString := QExtrato.FieldByName('destino').AsString;
        mtExtratofinalizado.AsString := QExtrato.FieldByName('finalizado').AsString;
        mtExtrato.Post;
        QExtrato.Next;
      end;
      mtExtrato.EnableControls;
      mtExtrato.First;
    except

    end;
  finally
    FreeAndNil(QExtrato);
  end;
end;

procedure TfrmExtratoChamadas.FormShow(Sender: TObject);
begin
  GetImportacoes;
end;

procedure TfrmExtratoChamadas.GetImportacoes;
var
  QImportacao : TFDQuery;
begin
  QImportacao := TFDQuery.Create(nil);
  try
    QImportacao.Connection := frmDataModule.UniConnection1;

    mtImportacao.Close;
    mtImportacao.CreateDataSet;
    try
      with QImportacao do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT                        ');
        SQL.Add('  ec.cod_importacao,          ');
        SQL.Add('  ec.descricao,               ');
        SQL.Add('  ec.data_criacao             ');
        SQL.Add('FROM                          ');
        SQL.Add('  extrato_chamadas ec         ');
        SQL.Add('WHERE ec.status = "A"         ');
        SQL.Add('GROUP BY ec.cod_importacao    ');
        SQL.Add('ORDER BY ec.data_criacao DESC ');
        Open;
      end;

      QImportacao.First;
      while not QImportacao.Eof do
      begin
        mtImportacao.Append;
        mtImportacaocod_importacao.AsInteger := QImportacao.FieldByName('cod_importacao').AsInteger;
        mtImportacaodescricao.AsString := QImportacao.FieldByName('descricao').AsString;
        mtImportacaodata_criacao.AsDateTime := QImportacao.FieldByName('data_criacao').AsDateTime;
        mtImportacao.Post;
        QImportacao.Next;
      end;

    except

    end;
  finally
    FreeAndNil(QImportacao);
  end;
end;

procedure TfrmExtratoChamadas.M1Click(Sender: TObject);
begin
  mtExtrato.DisableControls;
  mtExtrato.First;
  while not mtExtrato.Eof do
  begin
    mtExtrato.Edit;
    mtExtratoselecionado.AsBoolean := True;
    mtExtrato.Post;
    mtExtrato.Next;
  end;
  mtExtrato.First;
  mtExtrato.EnableControls;
end;

end.
