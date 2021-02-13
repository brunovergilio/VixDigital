unit senha_exclusao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask;

type
  Tfsenha_exclusao = class(TForm)
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
  fsenha_exclusao: Tfsenha_exclusao;

implementation

{$R *.dfm}
USES UDM, UMENU;

procedure Tfsenha_exclusao.Button1Click(Sender: TObject);
VAR
CODIGO_ESTOQUE_ATUAL, REGISTRO: STRING;
TOTAL, ESTOQUE_ATUAL, ESTOQUE_NOVO: REAL;
begin
IF MASKEDIT1.Text = '12-05-81' THEN
BEGIN
      TRY
      BEGIN
            TOTAL := 0;

            FDM.IBQORCAMENTO.Active := FALSE;
            FDM.IBQORCAMENTO.SQL.Text :=  'UPDATE ORCAMENTO SET TOTAL = ' +
                                      #39 + StringReplace(FORMATFLOAT('0.00', TOTAL), ',', '.', [rfReplaceAll, rfIgnoreCase]) + #39 +
                                      ' WHERE NUMERONF = '+
                                      #39 + FMENU.EDIT5.Text + #39;
            FDM.IBQORCAMENTO.Active := TRUE;

            FMENU.COMMIT;

            CLOSE;
      END
      FINALLY

      END;
END
ELSE
    BEGIN
    SHOWMESSAGE('Senha incorreta.');
    MASKEDIT1.SetFocus;
    END;


//ADEQUAR OS GRIDS
FDM.IBQORCAMENTO.Active := FALSE;
FDM.IBQORCAMENTO.SQL.Text := 'SELECT * FROM ORCAMENTO WHERE STATUS = ''ABERTO'' ORDER BY NUMERONF DESC';
FDM.IBQORCAMENTO.Active := TRUE;

FMENU.EDIT5.Text := FDM.IBQORCAMENTONUMERONF.VALUE;

TOTAL := 0;

FMENU.CORES_FECHA;
FMENU.ComboBox1Change(Sender);
end;

procedure Tfsenha_exclusao.Button2Click(Sender: TObject);
begin
CLOSE;
end;

procedure Tfsenha_exclusao.FormActivate(Sender: TObject);
begin
MASKEDIT1.Text := '';
MASKEDIT1.SetFocus;
end;

procedure Tfsenha_exclusao.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY = VK_RETURN THEN BUTTON1.SETFOCUS;
end;

end.
