unit uCadastroBasico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBGrids, DBCtrls, Buttons, Db, Vcl.Grids;

type
  TFCadastroBasico = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    PanelCampos: TPanel;
    Bevel2: TBevel;
    DBGrid1: TDBGrid;
    DBNav: TDBNavigator;
    Btn_Sair: TSpeedButton;
    dsQCadastro: TDataSource;
    procedure Btn_SairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QCadastroNewRecord(DataSet: TDataSet);
    procedure ChangeComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadastroBasico: TFCadastroBasico;

implementation

{$R *.DFM}

procedure TFCadastroBasico.Btn_SairClick(Sender: TObject);
begin
// Address $18E6B88
end;

procedure TFCadastroBasico.FormCreate(Sender: TObject);
begin
// Address $18E6B90
end;

procedure TFCadastroBasico.QCadastroNewRecord(DataSet: TDataSet);
begin
// Address $18E72F4
end;

procedure TFCadastroBasico.ChangeComboBox;
begin
// Address $18E7414
end;

end.
