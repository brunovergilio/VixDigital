unit uavisosfiltro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, AdvDateTimePicker;

type
  Tfrmavisosfiltro = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    AdvDateTimePicker1: TAdvDateTimePicker;
    AdvDateTimePicker2: TAdvDateTimePicker;
    btnfiltradata: TRzToolButton;
    btnfiltratexto: TRzToolButton;
    Edit1: TEdit;
    procedure btnfiltratextoClick(Sender: TObject);
    procedure btnfiltradataClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmavisosfiltro: Tfrmavisosfiltro;

implementation

{$R *.dfm}

uses ucadastrodeavisos;

procedure Tfrmavisosfiltro.btnfiltradataClick(Sender: TObject);
begin
frmCadastrodeAvisos.uniscript.close;
frmCadastrodeAvisos.uniscript.sql.text := 'select * from aviso where data between :pdata1 and :pdata2';
                                          frmCadastrodeAvisos.uniscript.parambyname('pdata1').Value := ADVDatetimePicker1.DateTime;
                                          frmCadastrodeAvisos.uniscript.parambyname('pdata2').Value := ADVDatetimePicker2.DateTime;
frmCadastrodeAvisos.uniscript.open;
end;

procedure Tfrmavisosfiltro.btnfiltratextoClick(Sender: TObject);
begin
frmCadastrodeAvisos.uniscript.close;
frmCadastrodeAvisos.uniscript.sql.text := 'select * from aviso where upper(titulo) like :ptitulo';
                                          frmCadastrodeAvisos.uniscript.parambyname('ptitulo').Value := '%' + Edit1.Text + '%';
frmCadastrodeAvisos.uniscript.open;
end;

procedure Tfrmavisosfiltro.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY = VK_RETURN THEN frmavisosfiltro.btnfiltratextoClick(Sender);
end;

procedure Tfrmavisosfiltro.FormShow(Sender: TObject);
begin
edit1.clear;
advdatetimepicker1.date := now;
advdatetimepicker2.date := now;
end;

end.
