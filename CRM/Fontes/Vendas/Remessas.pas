unit Remessas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBGrids, ExtCtrls, DBCtrls, Buttons, StdCtrls, RxLookup, Data.DB, Vcl.Grids;

type
  TfmRemessas = class(TForm)
    Grade_Remessas: TDBGrid;
    Panel1: TPanel;
    DBNavOperacoes: TDBNavigator;
    SpeedButton7: TSpeedButton;
    Panel2: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    Look_Banco: TRxDBLookupCombo;
    Label2: TLabel;
    CbOrdenar: TComboBox;
    BtnAtualizarGrade: TSpeedButton;
    SBtn_Relatorio: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRemessas: TfmRemessas;

implementation

{$R *.DFM}

end.
