unit uRemessas;
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Vcl.AppEvnts, Data.DB, RxLookup, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmRemessas = class(TForm)
    Bevel1: TBevel;
    Grade_Remessas: TDBGrid;
    Panel1: TPanel;
    SBtn_Relatorio: TSpeedButton;
    DBNavOperacoes: TDBNavigator;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BtnAtualizarGrade: TSpeedButton;
    Look_Banco: TRxDBLookupCombo;
    CbOrdenar: TComboBox;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRemessas: TfrmRemessas;

implementation

{$R *.DFM}


end.
