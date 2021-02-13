unit usmartos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, System.UITypes, QRPDFFilt,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase, IdSMTP, IdPOP3,
  IdMessage, IdAttachment,IdAttachmentFile, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL;

type
  TFSmartOs = class(TForm)
    Panel16: TPanel;
    Panel17: TPanel;
    Image18: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Panel18: TPanel;
    Label31: TLabel;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    IdSMTP: TIdSMTP;
    IdPOP3: TIdPOP3;
    IdMessage: TIdMessage;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    Image3: TImage;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    QRPDFFilter1: TQRPDFFilter;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Image18Click(Sender: TObject);
    procedure Image18MouseEnter(Sender: TObject);
    procedure Image18MouseLeave(Sender: TObject);
    procedure Image24Click(Sender: TObject);
    procedure Image24MouseEnter(Sender: TObject);
    procedure Image24MouseLeave(Sender: TObject);
    procedure Image25Click(Sender: TObject);
    procedure Image25MouseEnter(Sender: TObject);
    procedure Image25MouseLeave(Sender: TObject);
    procedure Image26Click(Sender: TObject);
    procedure Image26MouseEnter(Sender: TObject);
    procedure Image26MouseLeave(Sender: TObject);
    procedure Image27Click(Sender: TObject);
    procedure Image27MouseEnter(Sender: TObject);
    procedure Image27MouseLeave(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure DBGrid3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Label31Click(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure Image3MouseEnter(Sender: TObject);
    procedure Image3MouseLeave(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSmartOs: TFSmartOs;
  FormatoBR: TFormatSettings;
  FormatoUS: TFormatSettings;

implementation

{$R *.dfm}
USES UDM, UOS, uprocura, uenviaemail, uenvianota, USENHA, UMENU;

procedure TFSmartOs.DBGrid3CellClick(Column: TColumn);
begin
DM.IBTOS.Locate('NUMERONF', DM.IBQOSNUMERONF.VALUE ,[]);

DM.IBQITENS005.Active := FALSE;
DM.IBQITENS005.SQL.Text := 'SELECT * FROM ITENS005 WHERE NUMERONF = ' + #39 + DM.IBTOSNUMERONF.Text + #39;
DM.IBQITENS005.Active := TRUE;
end;

procedure TFSmartOs.DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if DM.IBQOSSTATUS.Value = 'OS enviada para faturamento' then
   begin
       DBGrid3.Canvas.Font.Color := $00F4C84D;
       DBGrid3.Canvas.Font.Style  := DBGrid3.Canvas.Font.Style - [fsBold];
   end;
   if DM.IBQOSSTATUS.Value = 'OS aguardando faturamento' then
   begin
       DBGrid3.Canvas.Font.Color := clBlack;
       DBGrid3.Canvas.Font.Style  := DBGrid3.Canvas.Font.Style - [fsBold];
   end;
   DBGrid3.Canvas.FillRect(Rect);
   DBGrid3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFSmartOs.DBGrid3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
DM.IBTOS.Locate('NUMERONF', DM.IBQOSNUMERONF.VALUE ,[]);

DM.IBQITENS005.Active := FALSE;
DM.IBQITENS005.SQL.Text := 'SELECT * FROM ITENS005 WHERE NUMERONF = ' + #39 + DM.IBTOSNUMERONF.Text + #39;
DM.IBQITENS005.Active := TRUE;
end;

procedure TFSmartOs.FormActivate(Sender: TObject);
begin
      IF FMENU.EDITNIVEL.Text = '1' then
        begin
          DM.IBQOS.Active := FALSE;
          DM.IBQOS.SQL.Text := 'SELECT * FROM ORDEM ORDER BY NUMERONF DESC';
          DM.IBQOS.Active := TRUE;
          DM.IBQOS.FIRST;
        end
        else
        begin
          DM.IBQOS.Active := FALSE;
          DM.IBQOS.SQL.Text := 'SELECT * FROM ORDEM WHERE VENDEDOR = ' + #39 + FMENU.EDIT1.TEXT + #39 + ' ORDER BY NUMERONF DESC';
          DM.IBQOS.Active := TRUE;
          DM.IBQOS.FIRST;
        end;
end;

procedure TFSmartOs.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_F2 then
  begin

  end;
end;

procedure TFSmartOs.Image18Click(Sender: TObject);
begin
//ZERANDO OS EDITS
//FNOTAS.Edit1.Text := '';
FOS.Edit2.Text := '';
FOS.Edit3.Text := '';
//FOS.Edit4.Text := '';
FOS.Edit5.Text := '';
FOS.Edit6.Text := '';
FOS.Edit7.Text := '';
FOS.Edit11.Text := '';
FOS.Edit12.Text := '';
FOS.Edit13.Text := '';
FOS.Edit16.Text := '';
FOS.Edit17.Text := '';
FOS.MASKEdit1.date := now;
FOS.MASKEdit2.date := now;
//FOS.Edit8.Text := '';
//FOS.Edit9.Text := '';
//FOS.Edit14.Text := '';

DM.IBTOS.Append;
//TÔ CONSIDERANDO O NÚMERO DA NOTA COMO SENDO O MESMO NÚMERO DO REGISTRO
DM.IBQGENOS.Active := FALSE;
DM.IBQGENOS.SQL.Text := 'select gen_id(G_ORDEM,1) from rdb$database';
DM.IBQGENOS.Active := TRUE;

DM.IBTOSSTATUS.Value := 'OS AGUARDANDO FATURAMENTO';

DM.IBTCLIFOR.Active := TRUE;
DM.IBTCLIFOR.LAST;
DM.IBTCLIFOR.FIRST;

IF LENGTH(FOS.DBEDIT14.TEXT) = 1 THEN FOS.DBEDIT12.Text := '00000000000' + FOS.DBEDIT14.Text;
IF LENGTH(FOS.DBEDIT14.TEXT) = 2 THEN FOS.DBEDIT12.Text := '0000000000' + FOS.DBEDIT14.Text;
IF LENGTH(FOS.DBEDIT14.TEXT) = 3 THEN FOS.DBEDIT12.Text := '000000000' + FOS.DBEDIT14.Text;
IF LENGTH(FOS.DBEDIT14.TEXT) = 4 THEN FOS.DBEDIT12.Text := '00000000' + FOS.DBEDIT14.Text;
IF LENGTH(FOS.DBEDIT14.TEXT) = 5 THEN FOS.DBEDIT12.Text := '0000000' + FOS.DBEDIT14.Text;
IF LENGTH(FOS.DBEDIT14.TEXT) = 6 THEN FOS.DBEDIT12.Text := '000000' + FOS.DBEDIT14.Text;
IF LENGTH(FOS.DBEDIT14.TEXT) = 7 THEN FOS.DBEDIT12.Text := '00000' + FOS.DBEDIT14.Text;
IF LENGTH(FOS.DBEDIT14.TEXT) = 8 THEN FOS.DBEDIT12.Text := '0000' + FOS.DBEDIT14.Text;
IF LENGTH(FOS.DBEDIT14.TEXT) = 9 THEN FOS.DBEDIT12.Text := '000' + FOS.DBEDIT14.Text;
IF LENGTH(FOS.DBEDIT14.TEXT) = 10 THEN FOS.DBEDIT12.Text := '00' + FOS.DBEDIT14.Text;
IF LENGTH(FOS.DBEDIT14.TEXT) = 11 THEN FOS.DBEDIT12.Text := '0' + FOS.DBEDIT14.Text;
IF LENGTH(FOS.DBEDIT14.TEXT) = 12 THEN FOS.DBEDIT12.Text := FOS.DBEDIT14.Text;

IF LENGTH(FOS.DBEDIT14.TEXT) = 1 THEN DM.IBTOSREGISTRO.Value := '000000000' + FOS.DBEDIT14.Text;
IF LENGTH(FOS.DBEDIT14.TEXT) = 2 THEN DM.IBTOSREGISTRO.Value := '00000000' + FOS.DBEDIT14.Text;
IF LENGTH(FOS.DBEDIT14.TEXT) = 3 THEN DM.IBTOSREGISTRO.Value := '0000000' + FOS.DBEDIT14.Text;
IF LENGTH(FOS.DBEDIT14.TEXT) = 4 THEN DM.IBTOSREGISTRO.Value := '000000' + FOS.DBEDIT14.Text;
IF LENGTH(FOS.DBEDIT14.TEXT) = 5 THEN DM.IBTOSREGISTRO.Value := '00000' + FOS.DBEDIT14.Text;
IF LENGTH(FOS.DBEDIT14.TEXT) = 6 THEN DM.IBTOSREGISTRO.Value := '0000' + FOS.DBEDIT14.Text;
IF LENGTH(FOS.DBEDIT14.TEXT) = 7 THEN DM.IBTOSREGISTRO.Value := '000' + FOS.DBEDIT14.Text;
IF LENGTH(FOS.DBEDIT14.TEXT) = 8 THEN DM.IBTOSREGISTRO.Value := '00' + FOS.DBEDIT14.Text;
IF LENGTH(FOS.DBEDIT14.TEXT) = 9 THEN DM.IBTOSREGISTRO.Value := '0' + FOS.DBEDIT14.Text;
IF LENGTH(FOS.DBEDIT14.TEXT) = 10 THEN DM.IBTOSREGISTRO.Value := FOS.DBEDIT14.Text;

FOS.Edit14.Text := 'INSERE';

DM.IBQITENS005.Active := FALSE;
DM.IBQITENS005.SQL.Text := 'SELECT * FROM ITENS005 WHERE REGISTRO = ' + #39 + FOS.DBEdit12.Text + #39;
DM.IBQITENS005.Active := TRUE;

FOS.SHOWMODAL;
end;

procedure TFSmartOs.Image18MouseEnter(Sender: TObject);
begin
IMAGE18.Picture.LoadFromFile('novo_b.png');
Label38.Font.Style := Label38.Font.Style + [TFontStyle.fsBold];
end;

procedure TFSmartOs.Image18MouseLeave(Sender: TObject);
begin
IMAGE18.Picture := nil;
IMAGE18.Picture.LoadFromFile('novo.png');
Label38.Font.Style := Label38.Font.Style - [TFontStyle.fsBold];
end;

procedure TFSmartOs.Image1MouseEnter(Sender: TObject);
begin
//IMAGE1.Picture.LoadFromFile('estoque_b.png');
//Label1.Font.Style := Label1.Font.Style + [TFontStyle.fsBold];
end;

procedure TFSmartOs.Image1MouseLeave(Sender: TObject);
begin
//IMAGE1.Picture := nil;
//IMAGE1.Picture.LoadFromFile('estoque.png');
//Label1.Font.Style := Label1.Font.Style - [TFontStyle.fsBold];
end;

procedure TFSmartOs.Image24Click(Sender: TObject);
begin
IF DM.IBTOSSTATUS.Value = 'OS enviada para faturamento' THEN SHOWMESSAGE('OS já enviada para faturamento. Operação indisponível.')
ELSE
BEGIN
SHOWMESSAGE('Esta operação é irreversível. Antes de continuar é aconselhável que se faça um backup do sistema.');
If  MessageDlg('Tem certeza que deseja excluir o registro?',mtConfirmation,[mbyes,mbno],0)=mryes
  then
     begin
       DM.IBTOS.delete;
       DM.IBTOS.ApplyUpdates();
       DM.IBTransaction1.Commitretaining;
       DM.IBTOS.active := false;
       DM.IBTOS.active := true;
       DM.IBTOS.LAST;
      IF FMENU.EDITNIVEL.Text = '1' then
        begin
          DM.IBQOS.Active := FALSE;
          DM.IBQOS.SQL.Text := 'SELECT * FROM ORDEM ORDER BY NUMERONF DESC';
          DM.IBQOS.Active := TRUE;
          DM.IBQOS.FIRST;
        end
        else
        begin
          DM.IBQOS.Active := FALSE;
          DM.IBQOS.SQL.Text := 'SELECT * FROM ORDEM WHERE VENDEDOR = ' + #39 + FMENU.EDIT1.TEXT + #39 + ' ORDER BY NUMERONF DESC';
          DM.IBQOS.Active := TRUE;
          DM.IBQOS.FIRST;
        end;
     end;
END;
end;

procedure TFSmartOs.Image24MouseEnter(Sender: TObject);
begin
IMAGE24.Picture.LoadFromFile('apagar_b.png');
Label39.Font.Style := Label39.Font.Style + [TFontStyle.fsBold];
end;

procedure TFSmartOs.Image24MouseLeave(Sender: TObject);
begin
IMAGE24.Picture := nil;
IMAGE24.Picture.LoadFromFile('apagar.png');
Label39.Font.Style := Label39.Font.Style - [TFontStyle.fsBold];
end;

procedure TFSmartOs.Image25Click(Sender: TObject);
begin
FPROCURA.EDIT2.TEXT := 'OS';
FPROCURA.DBGRID4.Visible := TRUE;
FPROCURA.SHOWMODAL;
end;

procedure TFSmartOs.Image25MouseEnter(Sender: TObject);
begin
IMAGE25.Picture.LoadFromFile('procurar_b.png');
Label40.Font.Style := Label40.Font.Style + [TFontStyle.fsBold];
end;

procedure TFSmartOs.Image25MouseLeave(Sender: TObject);
begin
IMAGE25.Picture := nil;
IMAGE25.Picture.LoadFromFile('procurar.png');
Label40.Font.Style := Label40.Font.Style - [TFontStyle.fsBold];
end;

procedure TFSmartOs.Image26Click(Sender: TObject);
var
  Attachment: TIdAttachment;
begin
//IMPRIMINDO
DM.IBQITENS005.Active := FALSE;
DM.IBQOS.Active := FALSE;
DM.IBQCLIFOR.Active := FALSE;

DM.IBQITENS005.SQL.Text := 'SELECT * FROM ITENS005 WHERE NUMERONF = ' + #39 + DM.IBTOSNUMERONF.Value + #39;
DM.IBQOS.SQL.Text := 'SELECT * FROM ORDEM WHERE NUMERONF = ' + #39 + DM.IBTOSNUMERONF.Value + #39;
DM.IBQCLIFOR.SQL.Text := 'SELECT * FROM CLIFOR WHERE NOME = ' + #39 + DM.IBTOSCLIENTE.Value + #39;

DM.IBQITENS005.Active := TRUE;
DM.IBQOS.Active := TRUE;
DM.IBQCLIFOR.Active := TRUE;

DM.QUICKREP8.PREVIEW;

// exportar para pdf
DM.Quickrep8.ExportToFilter(TQRPDFDocumentFilter.Create('..\pedidos_pdf\' + 'OS_' + DM.IBTOSNUMERONF.Value + '_' + DM.IBTOSCLIENTE.Value + '.pdf'));
end;

procedure TFSmartOs.Image26MouseEnter(Sender: TObject);
begin
IMAGE26.Picture.LoadFromFile('imprimir_b.png');
Label41.Font.Style := Label41.Font.Style + [TFontStyle.fsBold];
end;

procedure TFSmartOs.Image26MouseLeave(Sender: TObject);
begin
IMAGE26.Picture := nil;
IMAGE26.Picture.LoadFromFile('imprimir.png');
Label41.Font.Style := Label41.Font.Style - [TFontStyle.fsBold];
end;

procedure TFSmartOs.Image27Click(Sender: TObject);
var
CUSTO, VENDA, peso, total, rentab, valorbruto, valorliquido, desconto, TOTALEMATRASO, CONT: real;
begin
IF DM.IBTOSSTATUS.Value = 'OS enviada para faturamento' THEN SHOWMESSAGE('OS já enviada para faturamento. Alteração indisponível.')
ELSE
BEGIN
      DM.IBTOS.edit;
      FOS.Edit14.Text := 'EDITA';
      FOS.EDIT3.Text := FOS.DBEDIT1.TEXT;
      DM.IBQClifor.Active := FALSE;
      DM.IBQClifor.SQL.Text := 'SELECT * FROM CLIFOR WHERE NOME = ' + #39 + FOS.Edit3.Text + #39;
      DM.IBQClifor.Active := TRUE;

    //FAZ A SOMA DA NOTA

    VENDA := 0;
    PESO := 0;
    RENTAB := 0;
    CONT := 0;
    CUSTO := 0;
    TOTAL := 0;

    DM.IBQITENS005.First;
    while NOT DM.IBQITENS005.Eof do
        BEGIN
          CONT := CONT + 1;
          PESO := PESO + DM.IBQITENS005PESO.Value;
          TOTAL := TOTAL + DM.IBQITENS005TOTAL.Value; // senão não calcula o edit2
          VENDA := VENDA + DM.IBQITENS005TOTAL.Value;
          CUSTO := CUSTO + (DM.IBQITENS005CUSTO.Value * DM.IBQITENS005QUANTIDADE.Value);
          DM.IBQITENS005.Next;
        END;

          //JOGA O TOTAL NA EDIT DO FORM NOTAS
            FOS.Edit6.Text := FLOATTOSTR(DM.IBTOSDESCONTO.Value);
            FOS.Edit5.Text := FLOATTOSTR(TOTAL);
            FOS.Edit7.Text := FLOATTOSTR(PESO);
            FOS.Edit5.Text := FormatFloat('0.00', StrtoFloat(FOS.Edit5.Text));
            IF FOS.Edit6.Text = '' then FOS.Edit6.Text := '0';


//            VALORBRUTO := STRTOFLOAT(FOS.Edit5.TEXT);
//            DESCONTO := STRTOFLOAT(FOS.Edit6.TEXT);
//            VALORLIQUIDO := VALORBRUTO - DESCONTO;
//            FOS.Edit2.Text := FLOATTOSTR(VALORLIQUIDO);
//            FOS.Edit2.Text := FormatFloat('#.00', VALORLIQUIDO);

            FOS.EDIT2.TEXT := FormatFloat('0.00', FOS.PEGATOTAL);

            FOS.Edit5.Text := FormatFloat('0.00', StrtoFloat(FOS.Edit5.Text));
            FOS.Edit6.Text := FormatFloat('0.00', StrtoFloat(FOS.Edit6.Text));
            FOS.Edit7.Text := FormatFloat('0.00', StrtoFloat(FOS.Edit7.Text));
          //CAMPO OBSERVAÇÕES
            FOS.Memo1.Lines.Add(DM.IBTOSCOMPLEMENTO.Value);
          //CAMPO VOLUMES
            FOS.Edit9.Text := FLOATTOSTR(DM.IBTOSVOLUMES.Value);

            FOS.Edit11.Text := '';
            FOS.Edit12.Text := '';
            FOS.Edit13.Text := '';
            FOS.Edit16.Text := '';
            FOS.Edit17.Text := '';
            FOS.MASKEdit1.date := now;
            FOS.MASKEdit2.date := now;

           //LEVANDO A INFORMAÇÃO PARA O LABEL (Não está em uso)
           FOS.EDIT10.Text := FLOATTOSTR(TOTALEMATRASO);
           FOS.Edit10.Text := stringReplace(FOS.Edit10.Text, '.', '', []);
           FOS.Edit10.Text := FormatFloat('0.00', StrtoFloat(FOS.EDIT10.Text));

      FOS.ShowModal;
END;
end;

procedure TFSmartOs.Image27MouseEnter(Sender: TObject);
begin
IMAGE27.Picture.LoadFromFile('alterar_b.png');
Label42.Font.Style := Label42.Font.Style + [TFontStyle.fsBold];
end;

procedure TFSmartOs.Image27MouseLeave(Sender: TObject);
begin
IMAGE27.Picture := nil;
IMAGE27.Picture.LoadFromFile('alterar.png');
Label42.Font.Style := Label42.Font.Style - [TFontStyle.fsBold];
end;

procedure TFSmartOs.Image3Click(Sender: TObject);
begin

DM.IBTOS.Locate('NUMERONF', DM.IBQOSNUMERONF.VALUE ,[]);

DM.IBQClifor.Active := FALSE;
DM.IBQClifor.SQL.Text := 'SELECT * FROM CLIFOR WHERE NOME = ' + #39 + DM.IBTOSCLIENTE.Value + #39;
DM.IBQClifor.Active := TRUE;

//CHAMA O FENVIANOTA
SHOWMESSAGE('Atenção, esta operação é irreversível. Depois de enviada para faturamento, a OS não poderá ser alterada ou deletada.');
FENVIANOTA.SHOWMODAL;
end;

procedure TFSmartOs.Image3MouseEnter(Sender: TObject);
begin
IMAGE3.Picture.LoadFromFile('nota_b.png');
Label2.Font.Style := Label2.Font.Style + [TFontStyle.fsBold];
end;

procedure TFSmartOs.Image3MouseLeave(Sender: TObject);
begin
IMAGE3.Picture := nil;
IMAGE3.Picture.LoadFromFile('nota.png');
Label2.Font.Style := Label2.Font.Style - [TFontStyle.fsBold];
end;

procedure TFSmartOs.Label31Click(Sender: TObject);
begin
close;
end;

end.
