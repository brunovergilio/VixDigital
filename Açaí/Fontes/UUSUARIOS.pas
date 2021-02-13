unit UUSUARIOS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls;

type
  TFUSUARIOS = class(TForm)
    Bevel1: TBevel;
    Bevel2: TBevel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUSUARIOS: TFUSUARIOS;

implementation

{$R *.dfm}
USES UDM;

procedure TFUSUARIOS.Button1Click(Sender: TObject);
begin
FDM.IBTUSUARIOS.Edit;
FDM.IBTUSUARIOS.Post;
FDM.IBTUSUARIOS.ApplyUpdates;
end;

procedure TFUSUARIOS.Button2Click(Sender: TObject);
begin
FDM.IBTUSUARIOS.Edit;
FDM.IBTUSUARIOS.Cancel;
CLOSE;
end;

procedure TFUSUARIOS.Button3Click(Sender: TObject);
begin
FDM.IBTUSUARIOS.Insert;
end;

procedure TFUSUARIOS.Button4Click(Sender: TObject);
begin
FDM.IBTUSUARIOS.DELETE;
end;

procedure TFUSUARIOS.FormActivate(Sender: TObject);
begin
FDM.IBTUsuarios.Active := TRUE;
end;

end.
