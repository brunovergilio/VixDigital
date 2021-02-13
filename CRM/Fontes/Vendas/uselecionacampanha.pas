unit uselecionacampanha;

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
  JvExDBGrids, JvDBGrid, RzButton, System.ImageList, Vcl.ImgList, cxImageList;

type
  Tfrmselecionacampanha = class(TForm)
    JvDBGrid1: TJvDBGrid;
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmselecionacampanha: Tfrmselecionacampanha;

implementation

{$R *.dfm}

uses
  uDataModule, umenu, FClientes, udiscador, ucliente;

procedure Tfrmselecionacampanha.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

procedure Tfrmselecionacampanha.FormActivate(Sender: TObject);
begin
frmmenu.script.close;
frmmenu.script.sql.text := 'select * from campanha_crm';
{'select campanha_crm.* ' +
'from campanha_crm where codigo in ' +
'(select campanha_grupo_operador.codigo_campanha from campanha_grupo_operador where grupo_operador in ' +
'(select operador_grupo_operadores.grupo as grupo_operador from operador_grupo_operadores where operador in ' +
'(select usuarios.codigo as operador from usuarios where usuarios.codigo = :pusuario))) ' +
'and upper(campanha_crm.ativo_check) = ''TRUE'' ';
}
//frmmenu.script.parambyname('pusuario').asstring := frmmenu.USUARIOLOGADO_CODIGO;
frmmenu.script.open;
end;

procedure Tfrmselecionacampanha.JvDBGrid1DblClick(Sender: TObject);
begin
Close;
{FrmClientes.lblcampanha.caption := frmmenu.script.fieldbyname('NOME').AsString;
FrmClientes.ShowModal;
}
Frmdiscador.lblcampanha.caption := frmmenu.script.fieldbyname('NOME').AsString;
//frmmenu.hide;
//Frmdiscador.Show;
frmclientes.uniQClientes.Close;
frmclientes.uniQClientes.Open;
frmClientesCadastro.ShowModal;
end;

end.