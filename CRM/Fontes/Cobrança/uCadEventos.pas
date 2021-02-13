unit uCadEventos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, AdvEdit, advlued, DBAdvLe,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, RzButton;

type
  TfrmCadEventos = class(TForm)
    Panel1: TPanel;
    DBAdvLUEdit1: TDBAdvLUEdit;
    Panel3: TPanel;
    RzToolButton1: TRzToolButton;
    RzToolButton2: TRzToolButton;
    DBAdvLUEdit2: TDBAdvLUEdit;
    ComboBox1: TComboBox;
    Label1: TLabel;
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ALTERAINSERE: STRING;
  end;

var
  frmCadEventos: TfrmCadEventos;

implementation

{$R *.dfm}

uses udatamodule, uFuncoes, uPesquisaEventos;

procedure TfrmCadEventos.RzToolButton1Click(Sender: TObject);
begin
  if not frmDataModule.UniConnection1.InTransaction then
    frmDataModule.UniConnection1.StartTransaction;
  begin
    if ALTERAINSERE = 'INSERE' then
    begin
      //QEventos.Appe;
      DBAdvLUEdit1.Text := IntToStr(GetID('cod_evento','eventos_cod'));
      frmPesquisaEventos.QEventosCLASSIFICACAO.AsInteger := ComboBox1.ItemIndex + 1;
      frmPesquisaEventos.QEventos.post;

     frmDataModule.UniConnection1.Commit;

     ALTERAINSERE := '';
    end
    else
    begin
      frmPesquisaEventos.QEventos.EDIT;
      frmPesquisaEventos.QEventosCLASSIFICACAO.AsInteger := ComboBox1.ItemIndex + 1;
      frmPesquisaEventos.QEventos.post;
      frmDataModule.UniConnection1.Commit;
    end;
  // except
       // Rollback all changes in database made after StartTransaction if an error was raised
  //     frmDataModule.UniConnection1.Rollback;
   end;

  Close;
end;

procedure TfrmCadEventos.RzToolButton2Click(Sender: TObject);
begin
  Close;
end;

end.
