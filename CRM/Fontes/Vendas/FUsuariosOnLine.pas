{--------------------------------------------------------------------------------+
|  SISTEMA...............: IndPCP (E TAMBEM AUTOR DO VESTISPCP - DESCONTINUADO)  |
|  PORTE DE EMPRESA......: Destinado para Micro Empresas                         |
|  SEGMENTO..............: Com�rcio em geral e industrias (vestu�rio)            |  
|  LINGUAGEM/DB..........: Delphi 10.3 Rio   / Firebird 2.5                      | 
|--------------------------------------------------------------------------------|
|                                                                                |
|  AUTOR/PROGRAMADOR.....: Adriano Zanini (2019)                                 |
|  E-MAIL................: fontes@altaica.com.br                                 ||--------------------------------------------------------------------------------||  Voc� n�o pode comercializar o codigo-fonte. Nem mesmo parcialmente!           ||  Comercialize somente o sistema compilado (com o nome/interface que desejar).  |
+--------------------------------------------------------------------------------}


unit FUsuariosOnLine;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, FFrameBarra, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
   TFrmUsuariosOnLine = class(TForm)
      Panel1: TPanel;
      BtnSair: TBitBtn;
      ListBoxUserName: TListBox;
    FrmFrameBarra1: TFrmFrameBarra;
    db_UsuarioLog: TFDQuery;
    QryUsuario: TFDQuery;
      procedure BtnSairClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormShow(Sender: TObject);
      procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmUsuariosOnLine: TFrmUsuariosOnLine;

implementation


{$R *.dfm}

uses FUsuarios;

procedure TFrmUsuariosOnLine.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFrmUsuariosOnLine.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QryUsuario.Close;
  Action := cafree;
end;

procedure TFrmUsuariosOnLine.FormShow(Sender: TObject);
begin
   QryUsuario.Open;
   ListBoxUserName.Items.Clear;
   QryUsuario.First;
   While not QryUsuario.eof do
   begin
      // se o usu�rio estiver ativo, ent�o adicion�-lo na lista
      If QryUsuario.FieldByName('ONLINE').AsString = 'S' then
      begin
         ListBoxUserName.Items.Add(QryUsuario.FieldByName('UserName').AsString);
      end;
      QryUsuario.next;
   end;
   QryUsuario.First;

end;

procedure TFrmUsuariosOnLine.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

   If (Key = VK_ESCAPE) or (Key = VK_RETURN) then
      close;

end;

end.
