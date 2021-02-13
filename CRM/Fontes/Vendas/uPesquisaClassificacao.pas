unit uPesquisaClassificacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  JvExDBGrids, JvDBGrid, Vcl.StdCtrls, RzButton, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmPesquisaClassificacao = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    RzToolButton1: TRzToolButton;
    Edit1: TEdit;
    Panel1: TPanel;
    RzToolButton3: TRzToolButton;
    btnalterar: TRzToolButton;
    JvDBGrid1: TJvDBGrid;
    QClassificacao: TFDQuery;
    QClassificacaoCODIGO: TFMTBCDField;
    QClassificacaoDESCRICAO: TStringField;
    QClassificacaoDTA_CAD: TSQLTimeStampField;
    QClassificacaoUSUARIO: TFMTBCDField;
    QClassificacaoDATA_MODIF: TSQLTimeStampField;
    QClassificacaoATIVO: TStringField;
    QClassificacaoSENHA_REMOVER_CLASSIFICACAO: TStringField;
    QClassificacaoSENHA_INSERIR_CLASSIFICACAO: TStringField;
    dsClassificacao: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaClassificacao: TfrmPesquisaClassificacao;

implementation

{$R *.dfm}

uses udatamodule;

end.
