unit senha_cancelamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask;

type
  Tfsenha_cancelamento = class(TForm)
    MaskEdit1: TMaskEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fsenha_cancelamento: Tfsenha_cancelamento;

implementation

{$R *.dfm}
USES UDM, UMENU, upedidoloja;

procedure Tfsenha_cancelamento.Button1Click(Sender: TObject);
var
var_numeronf: string;
begin

var_numeronf := FMENU.Edit5.Text;

//showmessage(var_numeronf);

IF MASKEDIT1.Text = '12-05-81' THEN
BEGIN
      FDM.IBQORCAMENTO.Active := FALSE;
      FDM.IBQORCAMENTO.SQL.Text := 'UPDATE ORCAMENTO SET STATUS = ''ABERTO'' WHERE NUMERONF = ' + #39 + var_numeronf + #39;
      FDM.IBQORCAMENTO.ExecSQL;

      SHOWMESSAGE('Status do Pedido alterado.');

      FDM.IBTransaction1.Commit;

      FMENU.COMBOBOX1.Text := 'Abertos';
      FMENU.ComboBox1Change(Sender);

      FDM.IBQORCAMENTO.Active := FALSE;
      FDM.IBQORCAMENTO.SQL.Text := 'SELECT * FROM ORCAMENTO WHERE NUMERONF = ''' + var_numeronf + '''';
      FDM.IBQORCAMENTO.Active := TRUE;

      CLOSE;
END
ELSE
    BEGIN
    SHOWMESSAGE('Senha incorreta.');
    MASKEDIT1.SetFocus;
    END;
end;

procedure Tfsenha_cancelamento.Button2Click(Sender: TObject);
begin
CLOSE;
end;

procedure Tfsenha_cancelamento.FormActivate(Sender: TObject);
begin
MASKEDIT1.Text := '';
MASKEDIT1.SetFocus;
end;

procedure Tfsenha_cancelamento.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY = VK_RETURN THEN BUTTON1.SETFOCUS;
end;

end.
