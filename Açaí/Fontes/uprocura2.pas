unit uprocura2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, db, Vcl.Grids, Vcl.DBGrids, math, Vcl.Mask, Vcl.Buttons;

type
  TFProcura2 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Edit2: TEdit;
    DBEdit2: TDBEdit;
    Edit3: TEdit;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3Change(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProcura2: TFProcura2;

implementation

{$R *.dfm}
USES UDM, UMENU, ucadastro, upedidoloja;

procedure TFProcura2.DBGrid1DblClick(Sender: TObject);
begin
      //VAI LANÇAR OS DADOS LÁ NO ORÇAMENTO E NOS LABELS DA TELA DE VENDAS
      FPEDIDOLOJA.LABEL31.CAPTION := FDM.IBQCLIFORFONE.VALUE;
      FPEDIDOLOJA.LABEL21.CAPTION := FDM.IBQCLIFORNOME.VALUE;
      FPEDIDOLOJA.LABEL22.CAPTION := FDM.IBQCLIFORENDERE.VALUE;
      FPEDIDOLOJA.LABEL23.CAPTION := FDM.IBQCLIFORIDENTIFICADOR1.VALUE; //COMPLEMENTO
      FPEDIDOLOJA.LABEL25.CAPTION := FDM.IBQCLIFOROBS.VALUE;  //REFERÊNCIA
      FPEDIDOLOJA.LABEL24.CAPTION := FDM.IBQCLIFORCOMPLE.VALUE;
      FPEDIDOLOJA.LABEL26.CAPTION := FDM.IBQCLIFORCIDADE.VALUE;

      CLOSE;
end;

procedure TFProcura2.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if KEY = VK_RETURN THEN
    BEGIN
      //VAI LANÇAR OS DADOS LÁ NO ORÇAMENTO E NOS LABELS DA TELA DE VENDAS
      FPEDIDOLOJA.LABEL31.CAPTION := FDM.IBQCLIFORFONE.VALUE;
      FPEDIDOLOJA.LABEL21.CAPTION := FDM.IBQCLIFORNOME.VALUE;
      FPEDIDOLOJA.LABEL22.CAPTION := FDM.IBQCLIFORENDERE.VALUE;
      FPEDIDOLOJA.LABEL23.CAPTION := FDM.IBQCLIFORIDENTIFICADOR1.VALUE; //COMPLEMENTO
      FPEDIDOLOJA.LABEL25.CAPTION := FDM.IBQCLIFOROBS.VALUE;  //REFERÊNCIA
      FPEDIDOLOJA.LABEL24.CAPTION := FDM.IBQCLIFORCOMPLE.VALUE;
      FPEDIDOLOJA.LABEL26.CAPTION := FDM.IBQCLIFORCIDADE.VALUE;
      
      CLOSE;
    END;
end;

procedure TFProcura2.Edit1Change(Sender: TObject);
begin
fDM.IBQCLIFOR.ACTIVE := FALSE;
fDM.IBQCLIFOR.SQL.Text := 'SELECT * FROM CLIFOR WHERE NOME LIKE ' + #39 + '%' + EDIT1.Text + '%' + #39 + ' ORDER BY NOME';
fDM.IBQCLIFOR.ACTIVE := TRUE;
end;

procedure TFProcura2.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if KEY = VK_RETURN then DBGRID1.SetFocus;
  BEGIN
      if KEY = VK_DOWN then
        BEGIN
          DBGRID1.SetFocus;
          FDM.IBQCLIFOR.Next;
        END;
  END;
end;

procedure TFProcura2.Edit3Change(Sender: TObject);
begin
fDM.IBQCLIFOR.ACTIVE := FALSE;
fDM.IBQCLIFOR.SQL.Text := 'SELECT * FROM CLIFOR WHERE FONE LIKE ' + #39 + '%' + EDIT3.Text + '%' + #39 + ' ORDER BY FONE';
fDM.IBQCLIFOR.ACTIVE := TRUE;
end;

procedure TFProcura2.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if KEY = VK_DOWN then
  BEGIN
    DBGRID1.SetFocus;
    FDM.IBQCLIFOR.Next;
  END;
end;

procedure TFProcura2.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFProcura2.FormActivate(Sender: TObject);
begin
DBGRID1.Columns[0].Width := 200;
DBGRID1.Columns[1].Width := 120;
DBGRID1.Columns[3].Width := 100;

EDIT3.SetFocus;
end;

procedure TFProcura2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if KEY = VK_ESCAPE then CLOSE;
end;

procedure TFProcura2.SpeedButton1Click(Sender: TObject);
begin
FCADASTRO.SHOWMODAL;
end;

end.








