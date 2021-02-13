unit UMENU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ImgList, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Data.DB, System.ImageList, System.UITypes, Vcl.Mask, MidasLib,
  Vcl.Imaging.jpeg, QuickRpt, QRCtrls, Vcl.DBCtrls, acPNG, ACBrBase, ACBrGAV;

type
  TFMENU = class(TForm)
    Panel2: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    ComboBox1: TComboBox;
    QRShape6: TQRShape;
    Panel3: TPanel;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image15: TImage;
    PANEL_SALGADAS: TPanel;
    PANEL_COMBOS: TPanel;
    PANEL_DOCES: TPanel;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    Image29: TImage;
    Image30: TImage;
    Image31: TImage;
    Image32: TImage;
    Image33: TImage;
    Image34: TImage;
    Image35: TImage;
    Image36: TImage;
    Image37: TImage;
    Image38: TImage;
    Image39: TImage;
    Image48: TImage;
    Image49: TImage;
    Image50: TImage;
    Image51: TImage;
    Image52: TImage;
    Image53: TImage;
    Image54: TImage;
    DBGrid1: TDBGrid;
    Label36: TLabel;
    Image3: TImage;
    Image13: TImage;
    PANEL_BEBIDAS: TPanel;
    Image40: TImage;
    Image41: TImage;
    Image42: TImage;
    Image43: TImage;
    Image44: TImage;
    Image45: TImage;
    Image46: TImage;
    Image47: TImage;
    Image14: TImage;
    Image57: TImage;
    Image58: TImage;
    Image59: TImage;
    Image55: TImage;
    Image56: TImage;
    Image60: TImage;
    Panel10: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Edit8: TEdit;
    Edit9: TEdit;
    Panel11: TPanel;
    Image4: TImage;
    Panel12: TPanel;
    Label27: TLabel;
    Label33: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label34: TLabel;
    Image5: TImage;
    MaskEdit1: TMaskEdit;
    Edit10: TEdit;
    Button1: TButton;
    Panel4: TPanel;
    Label16: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    Label35: TLabel;
    DBEdit1: TDBEdit;
    Edit5: TEdit;
    Edit3: TEdit;
    DBEdit2: TDBEdit;
    Edit4: TEdit;
    DBEdit3: TDBEdit;
    Edit7: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image6: TImage;
    Edit6: TEdit;
    ACBrGAV1: TACBrGAV;
    SpeedButton3: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Image43Click(Sender: TObject);
    procedure Image42Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure cores_abre;
    procedure cores_fecha;
    procedure COMMIT;
    procedure LANCAPRODUTO;
    procedure LANCACOMBO;
    procedure Image48Click(Sender: TObject);
    procedure Image50Click(Sender: TObject);
    procedure Image49Click(Sender: TObject);
    procedure Image51Click(Sender: TObject);
    procedure Image53Click(Sender: TObject);
    procedure Image54Click(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure Image19Click(Sender: TObject);
    procedure Image20Click(Sender: TObject);
    procedure Image21Click(Sender: TObject);
    procedure Image22Click(Sender: TObject);
    procedure Image23Click(Sender: TObject);
    procedure Image24Click(Sender: TObject);
    procedure Image25Click(Sender: TObject);
    procedure Image26Click(Sender: TObject);
    procedure Image27Click(Sender: TObject);
    procedure Image28Click(Sender: TObject);
    procedure Image29Click(Sender: TObject);
    procedure Image30Click(Sender: TObject);
    procedure Image31Click(Sender: TObject);
    procedure Image40Click(Sender: TObject);
    procedure Image41Click(Sender: TObject);
    procedure Image44Click(Sender: TObject);
    procedure Image45Click(Sender: TObject);
    procedure Image46Click(Sender: TObject);
    procedure Image47Click(Sender: TObject);
    procedure Image32Click(Sender: TObject);
    procedure Image33Click(Sender: TObject);
    procedure Image34Click(Sender: TObject);
    procedure Image35Click(Sender: TObject);
    procedure Image36Click(Sender: TObject);
    procedure Image37Click(Sender: TObject);
    procedure Image38Click(Sender: TObject);
    procedure Image39Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit8KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Edit10KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Image5MouseEnter(Sender: TObject);
    procedure Image5MouseLeave(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure Image59Click(Sender: TObject);
    procedure Image58Click(Sender: TObject);
    procedure Image57Click(Sender: TObject);
    procedure Image55Click(Sender: TObject);
    procedure Image56Click(Sender: TObject);
    procedure Image60Click(Sender: TObject);
    procedure Image52Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMENU: TFMENU;

implementation

{$R *.dfm}

uses UMESAS, UDM, uteclado, ufechamesa, UPROCURA, senha_cancelamento, urelatorios,
  senha_exclusao, UPROCURA2, UUSUARIOS, uquantproduto, upedidoloja;


procedure tFMENU.LANCAPRODUTO;
VAR
ETIQUETA, PRODUTOPESADO, S, LOCALIZA, LOCALIZA_CODIGO, CODIGO_ESTOQUE_ATUAL, MULTIPLICADOR: STRING;
I: INTEGER;
QUANTIDADE, TOTAL, PRECOPESADO, ESTOQUE_ATUAL, ESTOQUE_NOVO: REAL;
begin

TOTAL := 0;
QUANTIDADE := STRTOFLOAT(EDIT2.TEXT);

PRODUTOPESADO := '';
PRECOPESADO := 0;

IF LABEL16.CAPTION <> 'DEVOLVIDO' THEN
  BEGIN

     FDM.IBQESTOQUE.Active := FALSE;
     FDM.IBQESTOQUE.SQL.Text := 'SELECT * FROM ESTOQUE WHERE UPPER(DESCRICAO) = ' + #39 + EDIT1.Text + #39;
     FDM.IBQESTOQUE.Active := TRUE;

//   LANÇANDO O ITEM NA ITENS005
     TRY
         BEGIN
             FDM.IBQGENITENS005.Active := FALSE;
             FDM.IBQGENITENS005.SQL.Text := 'select gen_id(G_ITENS005,1) from rdb$database';
             FDM.IBQGENITENS005.Active := TRUE;

             IF LENGTH(DBEDIT2.TEXT) = 1 THEN EDIT4.Text := '00000000000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 2 THEN EDIT4.Text := '0000000000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 3 THEN EDIT4.Text := '000000000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 4 THEN EDIT4.Text := '00000000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 5 THEN EDIT4.Text := '0000000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 6 THEN EDIT4.Text := '000000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 7 THEN EDIT4.Text := '00000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 8 THEN EDIT4.Text := '0000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 9 THEN EDIT4.Text := '000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 10 THEN EDIT4.Text := '00' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 11 THEN EDIT4.Text := '0' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 12 THEN EDIT4.Text := DBEDIT2.TEXT;

             IF LENGTH(DBEDIT2.TEXT) = 1 THEN EDIT4.Text := '000000000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 2 THEN EDIT4.Text := '00000000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 3 THEN EDIT4.Text := '0000000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 4 THEN EDIT4.Text := '000000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 5 THEN EDIT4.Text := '00000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 6 THEN EDIT4.Text := '0000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 7 THEN EDIT4.Text := '000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 8 THEN EDIT4.Text := '00' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 9 THEN EDIT4.Text := '0' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 10 THEN EDIT4.Text := DBEDIT2.TEXT;

             BEGIN
                 FDM.IBQITENS005.Active := FALSE;
                 FDM.IBQITENS005.SQL.Text :=  'INSERT INTO ITENS005 (NUMERONF, CODIGO, DESCRICAO, MEDIDA, QUANTIDADE, UNITARIO, TOTAL, CUSTO, REGISTRO) VALUES ' +
                                               '(' + #39 + EDIT5.Text + #39 + ',' +
                                               #39 + FDM.IBQESTOQUECODIGO.Value + #39 + ',' +
                                               #39 + FDM.IBQESTOQUEDESCRICAO.Value + #39 + ',' +
                                               #39 + FDM.IBQESTOQUEMEDIDA.Value + #39 + ',' +
//                                               #39 + '1' + #39 + ',' +
                                               #39 + StringReplace(FORMATFLOAT('0.000', QUANTIDADE), ',', '.', [rfReplaceAll, rfIgnoreCase]) + #39 + ',' +
                                               #39 + StringReplace(FORMATFLOAT('0.00', FDM.IBQESTOQUEPRECO.Value), ',', '.', [rfReplaceAll, rfIgnoreCase]) + #39 + ',' +
                                               #39 + StringReplace(FORMATFLOAT('0.00', FDM.IBQESTOQUEPRECO.Value * QUANTIDADE), ',', '.', [rfReplaceAll, rfIgnoreCase]) + #39 + ',' +
                                               #39 + StringReplace(FORMATFLOAT('0.00', FDM.IBQESTOQUECUSTOCOMPR.Value), ',', '.', [rfReplaceAll, rfIgnoreCase]) + #39 + ',' +
                                               #39 + EDIT4.Text + #39 + ')';
                 FDM.IBQITENS005.Active := TRUE;
             END;

             //DANDO BAIXA NO ESTOQUE

             ESTOQUE_ATUAL := 0;
             ESTOQUE_NOVO := 0;

             ESTOQUE_ATUAL := FDM.IBQESTOQUEQTD_ATUAL.Value;
             CODIGO_ESTOQUE_ATUAL := FDM.IBQESTOQUECODIGO.Value;

             FDM.IBQESTOQUE.Active := FALSE;
             FDM.IBQESTOQUE.SQL.Text :=  'UPDATE ESTOQUE SET QTD_ATUAL = ' +
                                       #39 + StringReplace(FORMATFLOAT('0.00', (ESTOQUE_ATUAL - QUANTIDADE)), ',', '.', [rfReplaceAll, rfIgnoreCase]) + #39 +
//                                       #39 + StringReplace(FORMATFLOAT('0.00', (ESTOQUE_ATUAL - 1)), ',', '.', [rfReplaceAll, rfIgnoreCase]) + #39 +
                                       ' WHERE CODIGO = ' +
                                       #39 + CODIGO_ESTOQUE_ATUAL + #39;
             FDM.IBQESTOQUE.Active := TRUE;

             FDM.IBQITENS005.Active := FALSE;
             FDM.IBQITENS005.SQL.Text := 'SELECT * FROM ITENS005 WHERE NUMERONF = ' + #39 + Edit5.Text + #39;
             FDM.IBQITENS005.Active := TRUE;

            //COLOCANDO O TOTAL NO LABEL13 E NA TABELA ORÇAMENTO
            WHILE NOT FDM.IBQITENS005.EOF DO
              BEGIN
                  TOTAL := TOTAL + FDM.IBQITENS005TOTAL.VALUE;
                  FDM.IBQITENS005.NEXT;
              END;


            LABEL13.CAPTION := FORMATFLOAT('0.00', TOTAL);

            //TRANSFERIDO PRO BOTÃO GRAVAR
             {             //COLOCANDO O TOTAL NO LABEL13 E NA TABELA ORÇAMENTO
             WHILE NOT FDM.IBQITENS005.EOF DO
               BEGIN
                   TOTAL := TOTAL + FDM.IBQITENS005TOTAL.VALUE;
                   FDM.IBQITENS005.NEXT;
               END;

             LABEL13.CAPTION := FORMATFLOAT('0.00', TOTAL);

             FDM.IBQORCAMENTO.Active := FALSE;
             FDM.IBQORCAMENTO.SQL.Text :=  'UPDATE ORCAMENTO SET TOTAL = ' +
                                       #39 + StringReplace(FORMATFLOAT('0.00', TOTAL), ',', '.', [rfReplaceAll, rfIgnoreCase]) + #39 +
                                       ' WHERE NUMERONF = '+
                                       #39 + EDIT5.Text + #39;
             FDM.IBQORCAMENTO.Active := TRUE;
}
             COMMIT;
         END
     EXCEPT SHOWMESSAGE('Ocorreu um erro ao emitir o pedido. Por favor, entre em contato com o suporte.');
     END;
  END;
END;


procedure TFMENU.MaskEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_return then
  begin
    FMENU.SpeedButton5Click(Sender);
  end;
end;

procedure TFMENU.SpeedButton1Click(Sender: TObject);
begin
//EDIT8.Text := FDM.IBQITENS005OBSERVACAO.VALUE;

FDM.IBQITENS005.Active := FALSE;
FDM.IBQITENS005.SQL.Text :=  'UPDATE ITENS005 SET OBSERVACAO = ' +
                          #39 + EDIT8.Text + #39 +
                          ' WHERE REGISTRO = '+
                          #39 + EDIT9.Text + #39;
FDM.IBQITENS005.Active := TRUE;

COMMIT;

FDM.IBQITENS005.Active := FALSE;
FDM.IBQITENS005.SQL.Text := 'SELECT * FROM ITENS005 WHERE NUMERONF = ' + #39 + FMENU.Edit5.Text + #39;
FDM.IBQITENS005.Active := TRUE;

PANEL10.Visible := FALSE;
end;

procedure TFMENU.SpeedButton2Click(Sender: TObject);
begin
EDIT8.Text := EDIT8.Text + '(ESFIHA COM CATUPIRY)';
end;

procedure TFMENU.SpeedButton3Click(Sender: TObject);
begin
ACBrGAV1.ABREGAVETA;
SHOWMESSAGE('Conexão inválida.');
end;

procedure TFMENU.SpeedButton5Click(Sender: TObject);
begin
    FDM.IBQUsuarios.ACTIVE := FALSE;
    FDM.IBQUsuarios.SQL.TEXT := 'SELECT * FROM USUARIOS WHERE PORTADOR = ' + #39 + EDIT10.Text + #39;
    FDM.IBQUsuarios.ACTIVE := TRUE;

    EDIT1.Text := FDM.IBQUsuariosPORTADOR.VALUE;

    IF (EDIT10.Text <> '') AND (MASKEDIT1.Text <> '') then
      BEGIN
        IF MASKEDIT1.TEXT = FDM.IBQUsuariosNUMERO.VALUE THEN
          BEGIN
              FMENU.Panel11.Visible := FALSE;
              FMENU.Panel4.ALIGN := ALTOP;
              FMENU.PANEL2.VISIBLE := TRUE;
              FMENU.PANEL3.VISIBLE := TRUE;
              FMENU.PANEL4.VISIBLE := TRUE;
          END
        ELSE
          BEGIN
              SHOWMESSAGE('Senha incorreta.');
              MASKEDIT1.SetFocus;
          END;
      END
    ELSE
      BEGIN
      SHOWMESSAGE('Nome de usuário não encontrado ou senha inválida.');
      END;
end;

procedure TFMENU.SpeedButton6Click(Sender: TObject);
begin
APPLICATION.Terminate;
end;

procedure tFMENU.LANCACOMBO;
VAR
QUANTIDADE, PRODUTOPESADO, S, LOCALIZA, LOCALIZA_CODIGO, CODIGO_ESTOQUE_ATUAL, MULTIPLICADOR: STRING;
I: INTEGER;
TOTAL, PRECOPESADO, ESTOQUE_ATUAL, ESTOQUE_NOVO: REAL;
begin

TOTAL := 0;

PRODUTOPESADO := '';
PRECOPESADO := 0;

QUANTIDADE := EDIT2.Text;

IF LABEL16.CAPTION <> 'DEVOLVIDO' THEN
  BEGIN
     FDM.IBQESTOQUE.Active := FALSE;
     FDM.IBQESTOQUE.SQL.Text := 'SELECT * FROM ESTOQUE WHERE UPPER(DESCRICAO) = ' + #39 + EDIT1.Text + #39;
     FDM.IBQESTOQUE.Active := TRUE;

//   LANÇANDO O ITEM NA ITENS005

     TRY
         BEGIN
             FDM.IBQGENITENS005.Active := FALSE;
             FDM.IBQGENITENS005.SQL.Text := 'select gen_id(G_ITENS005,1) from rdb$database';
             FDM.IBQGENITENS005.Active := TRUE;

             IF LENGTH(DBEDIT2.TEXT) = 1 THEN EDIT4.Text := '00000000000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 2 THEN EDIT4.Text := '0000000000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 3 THEN EDIT4.Text := '000000000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 4 THEN EDIT4.Text := '00000000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 5 THEN EDIT4.Text := '0000000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 6 THEN EDIT4.Text := '000000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 7 THEN EDIT4.Text := '00000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 8 THEN EDIT4.Text := '0000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 9 THEN EDIT4.Text := '000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 10 THEN EDIT4.Text := '00' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 11 THEN EDIT4.Text := '0' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 12 THEN EDIT4.Text := DBEDIT2.TEXT;

             IF LENGTH(DBEDIT2.TEXT) = 1 THEN EDIT4.Text := '000000000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 2 THEN EDIT4.Text := '00000000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 3 THEN EDIT4.Text := '0000000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 4 THEN EDIT4.Text := '000000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 5 THEN EDIT4.Text := '00000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 6 THEN EDIT4.Text := '0000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 7 THEN EDIT4.Text := '000' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 8 THEN EDIT4.Text := '00' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 9 THEN EDIT4.Text := '0' + DBEDIT2.TEXT;
             IF LENGTH(DBEDIT2.TEXT) = 10 THEN EDIT4.Text := DBEDIT2.TEXT;

             BEGIN
                 FDM.IBQITENS005.Active := FALSE;
                 FDM.IBQITENS005.SQL.Text :=  'INSERT INTO ITENS005 (NUMERONF, CODIGO, DESCRICAO, MEDIDA, QUANTIDADE, UNITARIO, TOTAL, CUSTO, REGISTRO) VALUES ' +
                                               '(' + #39 + EDIT5.Text + #39 + ',' +
                                               #39 + FDM.IBQESTOQUECODIGO.Value + #39 + ',' +
                                               #39 + FDM.IBQESTOQUEDESCRICAO.Value + #39 + ',' +
                                               #39 + FDM.IBQESTOQUEMEDIDA.Value + #39 + ',' +
                                               #39 + QUANTIDADE + #39 + ',' +
//                                               #39 + StringReplace(FORMATFLOAT('0.000', STRTOFLOAT(EDIT2.TEXT)), ',', '.', [rfReplaceAll, rfIgnoreCase]) + #39 + ',' +
                                               #39 + StringReplace(FORMATFLOAT('0.00', FDM.IBQESTOQUEPRECO.Value), ',', '.', [rfReplaceAll, rfIgnoreCase]) + #39 + ',' +
                                               #39 + StringReplace(FORMATFLOAT('0.00', (FDM.IBQESTOQUEPRECO.Value * STRTOFLOAT(QUANTIDADE))), ',', '.', [rfReplaceAll, rfIgnoreCase]) + #39 + ',' +
                                               #39 + StringReplace(FORMATFLOAT('0.00', FDM.IBQESTOQUECUSTOCOMPR.Value), ',', '.', [rfReplaceAll, rfIgnoreCase]) + #39 + ',' +
                                               #39 + EDIT4.Text + #39 + ')';
                 FDM.IBQITENS005.Active := TRUE;
             END;

             //DANDO BAIXA NO ESTOQUE

             ESTOQUE_ATUAL := 0;
             ESTOQUE_NOVO := 0;

             ESTOQUE_ATUAL := FDM.IBQESTOQUEQTD_ATUAL.Value;
             CODIGO_ESTOQUE_ATUAL := FDM.IBQESTOQUECODIGO.Value;

             FDM.IBQESTOQUE.Active := FALSE;
             FDM.IBQESTOQUE.SQL.Text :=  'UPDATE ESTOQUE SET QTD_ATUAL = ' +
//                                       #39 + StringReplace(FORMATFLOAT('0.00', (ESTOQUE_ATUAL - STRTOFLOAT(EDIT2.TEXT))), ',', '.', [rfReplaceAll, rfIgnoreCase]) + #39 +
                                       #39 + StringReplace(FORMATFLOAT('0.00', (ESTOQUE_ATUAL - 1)), ',', '.', [rfReplaceAll, rfIgnoreCase]) + #39 +
                                       ' WHERE CODIGO = ' +
                                       #39 + CODIGO_ESTOQUE_ATUAL + #39;
             FDM.IBQESTOQUE.Active := TRUE;

             FDM.IBQITENS005.Active := FALSE;
             FDM.IBQITENS005.SQL.Text := 'SELECT * FROM ITENS005 WHERE NUMERONF = ' + #39 + Edit5.Text + #39;
             FDM.IBQITENS005.Active := TRUE;

             //COLOCANDO O TOTAL NO LABEL13 E NA TABELA ORÇAMENTO
             WHILE NOT FDM.IBQITENS005.EOF DO
               BEGIN
                   TOTAL := TOTAL + FDM.IBQITENS005TOTAL.VALUE;
                   FDM.IBQITENS005.NEXT;
               END;

             //TRANSFERIDO PRO BOTÃO GRAVAR
{             FDM.IBQORCAMENTO.Active := FALSE;
             FDM.IBQORCAMENTO.SQL.Text :=  'UPDATE ORCAMENTO SET TOTAL = ' +
                                       #39 + StringReplace(FORMATFLOAT('0.00', TOTAL), ',', '.', [rfReplaceAll, rfIgnoreCase]) + #39 +
                                       ' WHERE NUMERONF = '+
                                       #39 + EDIT5.Text + #39;
             FDM.IBQORCAMENTO.Active := TRUE;
}
             COMMIT;
         END
     EXCEPT SHOWMESSAGE('Ocorreu um erro ao emitir o pedido. Por favor, entre em contato com o suporte.');
     END;
  END;
END;

procedure TFMENU.ComboBox1Change(Sender: TObject);
var
total: real;
begin
IF COMBOBOX1.Text = 'Abertos' then
  begin
    FDM.IBQORCAMENTO.Active := FALSE;
    FDM.IBQORCAMENTO.SQL.Text := 'SELECT * FROM ORCAMENTO WHERE STATUS = ' + #39 + 'ABERTO' + #39 + ' ORDER BY NUMERONF DESC';
    FDM.IBQORCAMENTO.Active := TRUE;
  end;

IF COMBOBOX1.Text = 'Em Entrega' then
  begin
    FDM.IBQORCAMENTO.Active := FALSE;
    FDM.IBQORCAMENTO.SQL.Text := 'SELECT * FROM ORCAMENTO WHERE STATUS = ' + #39 + 'EM ENTREGA' + #39 + ' ORDER BY NUMERONF DESC';
    FDM.IBQORCAMENTO.Active := TRUE;
  end;

IF COMBOBOX1.Text = 'Fechados' then
  begin
    FDM.IBQORCAMENTO.Active := FALSE;
    FDM.IBQORCAMENTO.SQL.Text := 'SELECT * FROM ORCAMENTO WHERE STATUS = ' + #39 + 'FECHADO' + #39 + ' ORDER BY NUMERONF DESC';
    FDM.IBQORCAMENTO.Active := TRUE;
  end;

IF COMBOBOX1.Text = 'Devolvidos' then
  begin
    FDM.IBQORCAMENTO.Active := FALSE;
    FDM.IBQORCAMENTO.SQL.Text := 'SELECT * FROM ORCAMENTO WHERE STATUS = ' + #39 + 'DEVOLVIDO' + #39 + ' ORDER BY NUMERONF DESC';
    FDM.IBQORCAMENTO.Active := TRUE;
  end;

    EDIT5.TEXT :=  FDM.IBQORCAMENTONUMERONF.VALUE;

    FDM.IBQITENS005.Active := FALSE;
    FDM.IBQITENS005.SQL.Text := 'SELECT * FROM ITENS005 WHERE NUMERONF = ' + #39 + Edit5.Text + #39;
    FDM.IBQITENS005.Active := TRUE;

    fDM.IBQCLIFOR.ACTIVE := FALSE;
    fDM.IBQCLIFOR.SQL.Text := 'SELECT * FROM CLIFOR WHERE NOME = ' + #39 + FDM.IBQORCAMENTOCLIENTE.VALUE + #39;
    fDM.IBQCLIFOR.ACTIVE := TRUE;

    {FMENU.LABEL31.CAPTION := FDM.IBQCLIFORFONE.VALUE;
    FMENU.LABEL21.CAPTION := FDM.IBQCLIFORNOME.VALUE;
    FMENU.LABEL22.CAPTION := FDM.IBQCLIFORENDERE.VALUE;
    FMENU.LABEL23.CAPTION := FDM.IBQCLIFORIDENTIFICADOR1.VALUE; //COMPLEMENTO
    FMENU.LABEL25.CAPTION := FDM.IBQCLIFOROBS.VALUE;  //REFERÊNCIA
    FMENU.LABEL24.CAPTION := FDM.IBQCLIFORCOMPLE.VALUE;
    FMENU.LABEL26.CAPTION := FDM.IBQCLIFORCIDADE.VALUE;
    
    
    COMBOBOX5.Text := FDM.IBQORCAMENTOENTREGADOR.Value;
    COMBOBOX2.Text := FDM.IBQORCAMENTOTEMPODEENTREGA.Value;
    COMBOBOX3.Text := FDM.IBQORCAMENTOFORMA.Value;
    COMBOBOX4.Text := FDM.IBQORCAMENTOTROCO.Value;
    COMBOBOX6.Text := INTTOSTR(FDM.IBQORCAMENTOMESA.Value);
    COMBOBOX7.Text := FDM.IBQORCAMENTOSTATUS.Value;
    EDIT6.Text := FDM.IBQORCAMENTOOBSERVACAO.Value;
    }
    //COLOCANDO O TOTAL NO LABEL13 E NA TABELA ORÇAMENTO
    WHILE NOT FDM.IBQITENS005.EOF DO
      BEGIN
          TOTAL := TOTAL + FDM.IBQITENS005TOTAL.VALUE;
          FDM.IBQITENS005.NEXT;
      END;
end;

procedure tFMENU.COMMIT;
begin
FDM.IBTransaction1.CommitRetaining;
end;

procedure tFMENU.cores_abre;
begin
IMAGE60.PICTURE.LoadFromFile('f1_c.png');
IMAGE48.PICTURE.LoadFromFile('f2_c.png');
IMAGE50.PICTURE.LoadFromFile('f3.png');
IMAGE49.PICTURE.LoadFromFile('f4_c.png');
IMAGE51.PICTURE.LoadFromFile('f6.png');
IMAGE52.PICTURE.LoadFromFile('f7.png');
PANEL5.COLOR := CLWHITE;
PANEL_BEBIDAS.Visible := FALSE;
PANEL_COMBOS.Visible := FALSE;
PANEL_DOCES.Visible := FALSE;
PANEL_SALGADAS.Visible := FALSE;


//PANEL5.Enabled := TRUE;


PANEL2.Enabled := FALSE;
//PANEL1.Enabled := TRUE;

LABEL16.Caption := 'ABERTO';

{LABEL31.Caption := '';
LABEL4.Caption := '';
LABEL21.Caption := '';
LABEL22.Caption := '';
LABEL23.Caption := '';
LABEL24.Caption := '';
LABEL25.Caption := '';
LABEL26.Caption := '';

COMBOBOX5.Text := '';
COMBOBOX2.Text := '';
COMBOBOX3.Text := '';
COMBOBOX4.Text := '';
COMBOBOX6.Text := '';
COMBOBOX7.Text := 'ABERTO';
EDIT6.Text := '';
}
FDM.IBQENTREGADOR.ACTIVE := FALSE;
FDM.IBQENTREGADOR.SQL.Text := 'SELECT * FROM TRANSPOR';
FDM.IBQENTREGADOR.ACTIVE := TRUE;

FDM.IBQENTREGADOR.FIRST;

while NOT FDM.IBQENTREGADOR.Eof do
  BEGIN
    //COMBOBOX5.Items.Add(FDM.IBQENTREGADORNOME.Value);
    FDM.IBQENTREGADOR.NEXT;
  END;

EDIT1.TEXT := '';

//JOGANDO DADOS DO CLIENTE

fDM.IBQCLIFOR.ACTIVE := FALSE;
fDM.IBQCLIFOR.SQL.Text := 'SELECT * FROM CLIFOR WHERE NOME = ' + #39 + FDM.IBQORCAMENTOCLIENTE.VALUE + #39;
fDM.IBQCLIFOR.ACTIVE := TRUE;

{FMENU.LABEL31.CAPTION := FDM.IBQCLIFORFONE.VALUE;
FMENU.LABEL21.CAPTION := FDM.IBQCLIFORNOME.VALUE;
FMENU.LABEL22.CAPTION := FDM.IBQCLIFORENDERE.VALUE;
FMENU.LABEL23.CAPTION := FDM.IBQCLIFORIDENTIFICADOR1.VALUE; //COMPLEMENTO
FMENU.LABEL25.CAPTION := FDM.IBQCLIFOROBS.VALUE;  //REFERÊNCIA
FMENU.LABEL24.CAPTION := FDM.IBQCLIFORCOMPLE.VALUE;
FMENU.LABEL26.CAPTION := FDM.IBQCLIFORCIDADE.VALUE;

COMBOBOX5.Text := FDM.IBQORCAMENTOENTREGADOR.Value;
COMBOBOX2.Text := FDM.IBQORCAMENTOTEMPODEENTREGA.Value;
COMBOBOX3.Text := FDM.IBQORCAMENTOFORMA.Value;
COMBOBOX4.Text := FDM.IBQORCAMENTOTROCO.Value;
COMBOBOX6.Text := INTTOSTR(FDM.IBQORCAMENTOMESA.Value);
COMBOBOX7.Text := FDM.IBQORCAMENTOSTATUS.Value;
EDIT6.Text := FDM.IBQORCAMENTOOBSERVACAO.Value;
}
end;

procedure tFMENU.cores_fecha;
VAR
TOTAL: REAL;
begin
IMAGE60.PICTURE.LoadFromFile('f1.png');
IMAGE48.PICTURE.LoadFromFile('f2.png');
IMAGE50.PICTURE.LoadFromFile('f3_c.png');
IMAGE49.PICTURE.LoadFromFile('f4.png');
IMAGE51.PICTURE.LoadFromFile('f6_c.png');
//IMAGE52.PICTURE.LoadFromFile('f7_c.png');
PANEL5.COLOR := $00EAEAEA;
PANEL_BEBIDAS.Visible := FALSE;
PANEL_COMBOS.Visible := FALSE;
PANEL_DOCES.Visible := FALSE;
PANEL_SALGADAS.Visible := FALSE;
PANEL5.Enabled := FALSE;
PANEL2.Enabled := TRUE;
//PANEL1.Enabled := FALSE;
//PANEL13.VISIBLE := FALSE; //PEDIDOS LOJA 

LABEL16.Caption := 'FECHADO';
{
LABEL31.Caption := '';
LABEL4.Caption := '';
LABEL21.Caption := '';
LABEL22.Caption := '';
LABEL23.Caption := '';
LABEL24.Caption := '';
LABEL25.Caption := '';
LABEL26.Caption := '';

COMBOBOX5.Text := '';
COMBOBOX2.Text := '';
COMBOBOX3.Text := '';
COMBOBOX4.Text := '';
COMBOBOX6.Text := '';
COMBOBOX7.Text := '';
EDIT6.Text := '';
}

EDIT1.TEXT := '';

//ADEQUAR OS GRIDS
FDM.IBQORCAMENTO.Active := FALSE;
FDM.IBQORCAMENTO.SQL.Text := 'SELECT * FROM ORCAMENTO WHERE STATUS = ''ABERTO'' ORDER BY NUMERONF DESC';
FDM.IBQORCAMENTO.Active := TRUE;

EDIT5.Text := FDM.IBQORCAMENTONUMERONF.VALUE;

FDM.IBQITENS005.Active := FALSE;
FDM.IBQITENS005.SQL.Text := 'SELECT * FROM ITENS005 WHERE NUMERONF = ' + #39 + FMENU.Edit5.Text + #39;
FDM.IBQITENS005.Active := TRUE;

//COLOCANDO O TOTAL NO LABEL13 E NA TABELA ORÇAMENTO
TRY
  TOTAL := 0;

  WHILE NOT FDM.IBQITENS005.EOF DO
    BEGIN
        TOTAL := TOTAL + FDM.IBQITENS005TOTAL.VALUE;
        FDM.IBQITENS005.NEXT;
    END;

EXCEPT

END;

//COLOCANDO OS ENTREGADORES NO COMBO
FDM.IBQENTREGADOR.ACTIVE := FALSE;
FDM.IBQENTREGADOR.SQL.Text := 'SELECT * FROM TRANSPOR';
FDM.IBQENTREGADOR.ACTIVE := TRUE;

FDM.IBQENTREGADOR.FIRST;

while NOT FDM.IBQENTREGADOR.Eof do
  BEGIN
    //COMBOBOX5.Items.Add(FDM.IBQENTREGADORNOME.Value);
    FDM.IBQENTREGADOR.NEXT;
  END;

//JOGANDO DADOS DO CLIENTE

fDM.IBQCLIFOR.ACTIVE := FALSE;
fDM.IBQCLIFOR.SQL.Text := 'SELECT * FROM CLIFOR WHERE NOME = ' + #39 + FDM.IBQORCAMENTOCLIENTE.VALUE + #39;
fDM.IBQCLIFOR.ACTIVE := TRUE;

{FMENU.LABEL31.CAPTION := FDM.IBQCLIFORFONE.VALUE;
FMENU.LABEL21.CAPTION := FDM.IBQCLIFORNOME.VALUE;
FMENU.LABEL22.CAPTION := FDM.IBQCLIFORENDERE.VALUE;
FMENU.LABEL23.CAPTION := FDM.IBQCLIFORIDENTIFICADOR1.VALUE; //COMPLEMENTO
FMENU.LABEL25.CAPTION := FDM.IBQCLIFOROBS.VALUE;  //REFERÊNCIA
FMENU.LABEL24.CAPTION := FDM.IBQCLIFORCOMPLE.VALUE;
FMENU.LABEL26.CAPTION := FDM.IBQCLIFORCIDADE.VALUE;

COMBOBOX5.Text := FDM.IBQORCAMENTOENTREGADOR.Value;
COMBOBOX2.Text := FDM.IBQORCAMENTOTEMPODEENTREGA.Value;
COMBOBOX3.Text := FDM.IBQORCAMENTOFORMA.Value;
COMBOBOX4.Text := FDM.IBQORCAMENTOTROCO.Value;
COMBOBOX6.Text := INTTOSTR(FDM.IBQORCAMENTOMESA.Value);
COMBOBOX7.Text := FDM.IBQORCAMENTOSTATUS.Value;
EDIT6.Text := FDM.IBQORCAMENTOOBSERVACAO.Value;
}
end;


procedure TFMENU.DBGrid1CellClick(Column: TColumn);
VAR
TOTAL: REAL;
begin
EDIT5.Text := FDM.IBQORCAMENTONUMERONF.VALUE;

FDM.IBQITENS005.Active := FALSE;
FDM.IBQITENS005.SQL.Text := 'SELECT * FROM ITENS005 WHERE NUMERONF = ' + #39 + FMENU.Edit5.Text + #39;
FDM.IBQITENS005.Active := TRUE;

//COLOCANDO O TOTAL NO LABEL13 E NA TABELA ORÇAMENTO
WHILE NOT FDM.IBQITENS005.EOF DO
  BEGIN
      TOTAL := TOTAL + FDM.IBQITENS005TOTAL.VALUE;
      FDM.IBQITENS005.NEXT;
  END;

//JOGANDO DADOS DO CLIENTE

fDM.IBQCLIFOR.ACTIVE := FALSE;
fDM.IBQCLIFOR.SQL.Text := 'SELECT * FROM CLIFOR WHERE NOME = ' + #39 + FDM.IBQORCAMENTOCLIENTE.VALUE + #39;
fDM.IBQCLIFOR.ACTIVE := TRUE;

{FMENU.LABEL31.CAPTION := FDM.IBQCLIFORFONE.VALUE;
FMENU.LABEL21.CAPTION := FDM.IBQCLIFORNOME.VALUE;
FMENU.LABEL22.CAPTION := FDM.IBQCLIFORENDERE.VALUE;
FMENU.LABEL23.CAPTION := FDM.IBQCLIFORIDENTIFICADOR1.VALUE; //COMPLEMENTO
FMENU.LABEL25.CAPTION := FDM.IBQCLIFOROBS.VALUE;  //REFERÊNCIA
FMENU.LABEL24.CAPTION := FDM.IBQCLIFORCOMPLE.VALUE;
FMENU.LABEL26.CAPTION := FDM.IBQCLIFORCIDADE.VALUE;

COMBOBOX5.Text := FDM.IBQORCAMENTOENTREGADOR.Value;
COMBOBOX2.Text := FDM.IBQORCAMENTOTEMPODEENTREGA.Value;
COMBOBOX3.Text := FDM.IBQORCAMENTOFORMA.Value;
COMBOBOX4.Text := FDM.IBQORCAMENTOTROCO.Value;
COMBOBOX6.Text := INTTOSTR(FDM.IBQORCAMENTOMESA.Value);
COMBOBOX7.Text := FDM.IBQORCAMENTOSTATUS.Value;
EDIT6.Text := FDM.IBQORCAMENTOOBSERVACAO.Value;
}
End;

procedure TFMENU.DBGrid1DblClick(Sender: TObject);
begin 
IF FDM.IBQORCAMENTOSTATUS.Value = 'FECHADO' THEN fsenha_cancelamento.showmodal; 

//SHOWMESSAGE(FDM.IBQORCAMENTONUMERONF.Value);
      
IF FDM.IBQORCAMENTOSTATUS.Value = 'FECHADO' THEN 
  BEGIN
    SHOWMESSAGE('Para alterar o Pedido precisa estar com Status ''ABERTO''!');
    EXIT;
  END;

CORES_ABRE;
LABEL16.Caption := 'ALTERANDO';
EDIT5.Text := FDM.IBQORCAMENTONUMERONF.Value;
EDIT6.Text := FDM.IBQORCAMENTONUMERONF.Value;

IF FDM.IBQORCAMENTOOPERACAO.Value = 'LOJA' THEN 
  BEGIN
      FPEDIDOLOJA.LABEL37.CAPTION := 'Pedido Loja';
//      LABEL16.CAPTION := 'ABERTO - LOJA';
      FPEDIDOLOJA.LABEL37.CAPTION := 'Pedido Loja';
      FPEDIDOLOJA.panel13.COLOR := $00DFF9DB;
      FPEDIDOLOJA.panel2.COLOR := $00DFF9DB;
      FPEDIDOLOJA.checkbox50.CAPTION := 'TAÇA';
      FPEDIDOLOJA.checkbox51.CAPTION := 'VIAGEM';
      FPEDIDOLOJA.label14.VISIBLE := TRUE;
      FPEDIDOLOJA.combobox6.VISIBLE := TRUE;       
  END;
  
IF FDM.IBQORCAMENTOOPERACAO.Value = 'DELIVERY' THEN 
  BEGIN
      FPEDIDOLOJA.LABEL37.CAPTION := 'Pedido Delivery';
//      LABEL16.CAPTION := 'ABERTO - DELIVERY';
      FPEDIDOLOJA.LABEL37.CAPTION := 'Pedido Delivery';
      FPEDIDOLOJA.panel13.COLOR := CLSKYBLUE;
      FPEDIDOLOJA.panel2.COLOR := CLSKYBLUE;
      FPEDIDOLOJA.checkbox50.CAPTION := 'DELIVERY';
      FPEDIDOLOJA.checkbox51.CAPTION := 'IFOOD';
      FPEDIDOLOJA.label14.VISIBLE := FALSE;
      FPEDIDOLOJA.combobox6.VISIBLE := FALSE;       
  END;
FPEDIDOLOJA.SHOWMODAL;

COMMIT;

CORES_FECHA;
end;

procedure TFMENU.Edit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if KEY = VK_RETURN then MASKEDIT1.SetFocus;
end;

procedure TFMENU.Edit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if KEY = VK_RETURN then
  BEGIN
    SpeedButton1Click(Sender);
  END;
end;

procedure TFMENU.Button1Click(Sender: TObject);
begin
FMENU.Panel11.Visible := FALSE;
FMENU.Panel4.ALIGN := ALTOP;
FMENU.PANEL2.VISIBLE := TRUE;
FMENU.PANEL3.VISIBLE := TRUE;
FMENU.PANEL4.VISIBLE := TRUE;
end;

procedure TFMENU.FormActivate(Sender: TObject);
begin
CORES_FECHA;

DBGRID1.Columns[0].Width := 130;
DBGRID1.Columns[1].Width := 100;
DBGRID1.Columns[2].Width := 330;
DBGRID1.Columns[3].Width := 100;
DBGRID1.Columns[4].Width := 160;
DBGRID1.Columns[5].Width := 90;
DBGRID1.Columns[6].Width := 110;
DBGRID1.Columns[7].Width := 100;

FMENU.ComboBox1Change(Sender);
TRY EDIT10.SetFocus; EXCEPT END;
end;

procedure TFMENU.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if LABEL16.Caption <> 'FECHADO'
  then
      if MessageDlg('Finalize o pedido antes de sair.',mtInformation,[mbOk],0)=idok then CanClose:=false
    else
      APPLICATION.Terminate;
end;

procedure TFMENU.FormCreate(Sender: TObject);
Var
Serial:DWord;
DirLen,Flags: DWord;
DLabel : Array[0..11] of Char;
NSERIAL : CARDINAL;
begin
//CHECA A SEGURANÇA
GetVolumeInformation(PChar('c:\'),dLabel,12,@Serial,DirLen,Flags,nil,0);
NSERIAL := Serial;
  IF
      (NSERIAL <> $E03430E9) and  //SERVIDOR VIXDIG
      (NSERIAL <> $FC87A97D) and  //NOTEBOOK ALEX
      (NSERIAL <> $921BCC32) and  //TERMINAL ALEX
      (NSERIAL <> $DA098BDF) and  //OUTRO TERMINAL ALEX
      (NSERIAL <> $58DE971D) and  //DELL NOTEBOOK
      (NSERIAL <> $EA0DF241) //ORLLEANS
  THEN
      begin
      APPLICATION.Terminate;
      end;

PANEL10.Left := 628;
PANEL10.Top := 664;

LABEL1.Caption := DATETOSTR(NOW);

PANEL11.Align := ALCLIENT;
PANEL4.Align := ALNONE;

Panel12.Left := (Self.Width - Panel12.Width) div 2;
Panel12.Top := (Self.Height - Panel12.Height) div 2;

end;

procedure TFMENU.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY = VK_ESCAPE THEN
  BEGIN
    CLOSE;
  END;
IF KEY = VK_F1 THEN
  BEGIN
    Image60Click(Sender);
  END;
IF KEY = VK_F2 THEN
  BEGIN
    Image48Click(Sender);
  END;
IF KEY = VK_F3 THEN
  BEGIN
    Image50Click(Sender);
  END;
IF KEY = VK_F4 THEN
  BEGIN
    Image49Click(Sender);
  END;
IF KEY = VK_F6 THEN
  BEGIN
    Image51Click(Sender);
  END;
IF KEY = VK_F7 THEN
  BEGIN
//    Image52Click(Sender);
  END;
IF KEY = VK_F10 THEN
  BEGIN
    Image53Click(Sender);
  END;

IF (SSCTRL IN SHIFT) AND (KEY = VK_F10) AND (KEY = VK_F12) THEN
begin
  ComboBox1.TEXT := 'admin';
  MaskEdit1.TEXT := 'admin';
  SpeedButton5Click(Sender);
end;
end;

procedure TFMENU.Image10Click(Sender: TObject);
begin
PANEL_BEBIDAS.Visible := FALSE;
PANEL_COMBOS.Visible := FALSE;
PANEL_DOCES.Visible := FALSE;
PANEL_SALGADAS.Visible := TRUE;
PANEL_SALGADAS.Left := 10;
PANEL_SALGADAS.Top := 120;
PANEL_SALGADAS.Height := 420;
PANEL_SALGADAS.Width := 600;
end;

procedure TFMENU.Image11Click(Sender: TObject);
begin
PANEL_BEBIDAS.Visible := FALSE;
PANEL_COMBOS.Visible := FALSE;
PANEL_SALGADAS.Visible := FALSE;
PANEL_DOCES.Visible := TRUE;
PANEL_DOCES.Left := 10;
PANEL_DOCES.Top := 120;
PANEL_DOCES.Height := 420;
PANEL_DOCES.Width := 600;
end;

procedure TFMENU.Image12Click(Sender: TObject);
begin
PANEL_BEBIDAS.Visible := FALSE;
PANEL_DOCES.Visible := FALSE;
PANEL_SALGADAS.Visible := FALSE;
PANEL_COMBOS.Visible := TRUE;
PANEL_COMBOS.Left := 10;
PANEL_COMBOS.Top := 120;
PANEL_COMBOS.Height := 420;
PANEL_COMBOS.Width := 600;
end;

procedure TFMENU.Image13Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA DE CARNE PROMOÇÃO';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image14Click(Sender: TObject);
begin
EDIT1.TEXT := 'COCA-COLA';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image15Click(Sender: TObject);
begin
PANEL_DOCES.Visible := FALSE;
PANEL_SALGADAS.Visible := FALSE;
PANEL_COMBOS.Visible := FALSE;
PANEL_BEBIDAS.Visible := TRUE;
PANEL_BEBIDAS.Left := 10;
PANEL_BEBIDAS.Top := 120;
PANEL_BEBIDAS.Height := 420;
PANEL_BEBIDAS.Width := 600;
end;

procedure TFMENU.Image16Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA DE CARNE';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image17Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA DE CARNE COM QUEIJO';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image18Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA DE QUEIJO';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image19Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA DE CARNE COM REQUEIJÃO';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image20Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA DE ATUM';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image21Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA DE BACON';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image22Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA DE FRANGO COM QUEIJO';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image23Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA DE FRANGO COM CATUPIRY';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image24Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA DE CARNE SECA COM CATUPIRY';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image25Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA DE PALMITO';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image26Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA DE ESCAROLA';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image27Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA DE CALABRESA';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image28Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA À MODA';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image29Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA DE MARGHERITA';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image2Click(Sender: TObject);
begin
IF LABEL16.CAPTION <> 'FECHADO' THEN
  BEGIN
    fDM.IBQCLIFOR.ACTIVE := FALSE;
    fDM.IBQCLIFOR.SQL.Text := 'SELECT * FROM CLIFOR ORDER BY NOME';
    fDM.IBQCLIFOR.ACTIVE := TRUE;

    FProcura2.SHOWMODAL;
  END;
end;

procedure TFMENU.Image30Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA MEXICANA';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image31Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA ALHO E ÓLEO';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image32Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA DE BANANA';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image33Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA DE BRIGADEIRO';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image34Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA DE NUTELLA COM MORANGO';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image35Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA ROMEU E JULIETA';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image36Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA DE CARNE';
EDIT2.TEXT := '4';
LANCACOMBO;
EDIT1.TEXT := 'ESFIHA DE QUEIJO';
EDIT2.TEXT := '3';
LANCACOMBO;
EDIT1.TEXT := 'ESFIHA DE FRANGO COM QUEIJO';
EDIT2.TEXT := '3';
LANCACOMBO;
EDIT1.TEXT := 'REFRIGERANTE 600 ML';
EDIT2.TEXT := '1';
LANCAPRODUTO;
end;

procedure TFMENU.Image37Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA DE CARNE';
EDIT2.TEXT := '4';
LANCACOMBO;
EDIT1.TEXT := 'ESFIHA DE QUEIJO';
EDIT2.TEXT := '3';
LANCACOMBO;
EDIT1.TEXT := 'ESFIHA DE FRANGO COM QUEIJO';
EDIT2.TEXT := '3';
LANCACOMBO;
EDIT1.TEXT := 'ESFIHA À MODA';
EDIT2.TEXT := '3';
LANCACOMBO;
EDIT1.TEXT := 'ESFIHA DE CALABRESA';
EDIT2.TEXT := '2';
LANCACOMBO;
EDIT1.TEXT := 'REFRIGERANTE 1 LITRO E MEIO';
EDIT2.TEXT := '1';
LANCAPRODUTO;
end;

procedure TFMENU.Image38Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA DE CARNE';
EDIT2.TEXT := '10';
LANCACOMBO;
EDIT1.TEXT := 'ESFIHA DE QUEIJO';
EDIT2.TEXT := '5';
LANCACOMBO;
EDIT1.TEXT := 'ESFIHA DE CALABRESA';
EDIT2.TEXT := '3';
LANCACOMBO;
EDIT1.TEXT := 'ESFIHA DE BACON';
EDIT2.TEXT := '2';
LANCACOMBO;
EDIT1.TEXT := 'REFRIGERANTE 1 LITRO E MEIO';
EDIT2.TEXT := '1';
LANCAPRODUTO;
end;

procedure TFMENU.Image39Click(Sender: TObject);
begin
EDIT1.TEXT := 'ESFIHA DE CARNE';
EDIT2.TEXT := '10';
LANCACOMBO;
EDIT1.TEXT := 'ESFIHA DE QUEIJO';
EDIT2.TEXT := '10';
LANCACOMBO;
EDIT1.TEXT := 'ESFIHA DE FRANGO COM QUEIJO';
EDIT2.TEXT := '5';
LANCACOMBO;
EDIT1.TEXT := 'ESFIHA DE CALABRESA';
EDIT2.TEXT := '5';
LANCACOMBO;
EDIT1.TEXT := 'REFRIGERANTE 1 LITRO E MEIO';
EDIT2.TEXT := '2';
LANCAPRODUTO;
end;

procedure TFMENU.Image3Click(Sender: TObject);
VAR
TOTAL: REAL;
begin

//COMBOBOX1.Text := LABEL21.CAPTION;

FDM.IBQORCAMENTO.Active := FALSE;
//FDM.IBQORCAMENTO.SQL.Text := 'SELECT * FROM ORCAMENTO WHERE CLIENTE = ' + #39 + LABEL21.CAPTION + #39;
FDM.IBQORCAMENTO.Active := TRUE;

EDIT5.TEXT :=  FDM.IBQORCAMENTONUMERONF.VALUE;

FDM.IBQITENS005.Active := FALSE;
FDM.IBQITENS005.SQL.Text := 'SELECT * FROM ITENS005 WHERE NUMERONF = ' + #39 + Edit5.Text + #39;
FDM.IBQITENS005.Active := TRUE;

fDM.IBQCLIFOR.ACTIVE := FALSE;
fDM.IBQCLIFOR.SQL.Text := 'SELECT * FROM CLIFOR WHERE NOME = ' + #39 + FDM.IBQORCAMENTOCLIENTE.VALUE + #39;
fDM.IBQCLIFOR.ACTIVE := TRUE;

{FMENU.LABEL31.CAPTION := FDM.IBQCLIFORFONE.VALUE;
FMENU.LABEL21.CAPTION := FDM.IBQCLIFORNOME.VALUE;
FMENU.LABEL22.CAPTION := FDM.IBQCLIFORENDERE.VALUE;
FMENU.LABEL23.CAPTION := FDM.IBQCLIFORIDENTIFICADOR1.VALUE; //COMPLEMENTO
FMENU.LABEL25.CAPTION := FDM.IBQCLIFOROBS.VALUE;  //REFERÊNCIA
FMENU.LABEL24.CAPTION := FDM.IBQCLIFORCOMPLE.VALUE;
FMENU.LABEL26.CAPTION := FDM.IBQCLIFORCIDADE.VALUE;

COMBOBOX5.Text := FDM.IBQORCAMENTOENTREGADOR.Value;
COMBOBOX2.Text := FDM.IBQORCAMENTOTEMPODEENTREGA.Value;
COMBOBOX3.Text := FDM.IBQORCAMENTOFORMA.Value;
COMBOBOX4.Text := FDM.IBQORCAMENTOTROCO.Value;
COMBOBOX6.Text := INTTOSTR(FDM.IBQORCAMENTOMESA.Value);
COMBOBOX7.Text := FDM.IBQORCAMENTOSTATUS.Value;
EDIT6.Text := FDM.IBQORCAMENTOOBSERVACAO.Value;
}

//COLOCANDO O TOTAL NO LABEL13 E NA TABELA ORÇAMENTO
WHILE NOT FDM.IBQITENS005.EOF DO
  BEGIN
      TOTAL := TOTAL + FDM.IBQITENS005TOTAL.VALUE;
      FDM.IBQITENS005.NEXT;
  END;
end;

procedure TFMENU.Image40Click(Sender: TObject);
begin
EDIT1.TEXT := 'GUARANÁ';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image41Click(Sender: TObject);
begin
EDIT1.TEXT := 'ÁGUA SEM GÁS';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image42Click(Sender: TObject);
begin
EDIT1.TEXT := 'ÁGUA COM GÁS';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image43Click(Sender: TObject);
begin
EDIT1.TEXT := 'REFRIGERANTE 1 LITRO E MEIO';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image44Click(Sender: TObject);
begin
EDIT1.TEXT := 'REFRIGERANTE 600 ML';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image45Click(Sender: TObject);
begin
EDIT1.TEXT := 'SCHWEPPES 1 LITRO E MEIO';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image46Click(Sender: TObject);
begin
EDIT1.TEXT := 'SUCO LATA';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image47Click(Sender: TObject);
begin
EDIT1.TEXT := 'SUCO NATURAL';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image48Click(Sender: TObject);
VAR
DATAMASK1, DATASQL1, DATASQL2, D1, M1, A1: STRING;
begin

//INVERTE AS DATAS
DATAMASK1 := DATETOSTR(NOW);
D1 := COPY(DATAMASK1,0,2);
M1 := COPY(DATAMASK1,4,2);
A1 := COPY(DATAMASK1,7,4);
DATASQL1 := M1 + '/' + D1 + '/' + A1;

IF LABEL16.CAPTION = 'FECHADO' THEN
  BEGIN
      //TÔ CONSIDERANDO O NÚMERO DA NOTA COMO SENDO O MESMO NÚMERO DO REGISTRO
      FDM.IBQGENORCAMENTO.Active := FALSE;
      FDM.IBQGENORCAMENTO.SQL.Text := 'select gen_id(G_ORCAMENTO,1) from rdb$database';
      FDM.IBQGENORCAMENTO.Active := TRUE;

      IF LENGTH(DBEDIT1.TEXT) = 1 THEN EDIT5.Text := '00000000000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 2 THEN EDIT5.Text := '0000000000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 3 THEN EDIT5.Text := '000000000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 4 THEN EDIT5.Text := '00000000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 5 THEN EDIT5.Text := '0000000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 6 THEN EDIT5.Text := '000000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 7 THEN EDIT5.Text := '00000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 8 THEN EDIT5.Text := '0000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 9 THEN EDIT5.Text := '000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 10 THEN EDIT5.Text := '00' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 11 THEN EDIT5.Text := '0' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 12 THEN EDIT5.Text := DBEDIT1.TEXT;

      EDIT6.TEXT := EDIT5.TEXT;
      
      IF LENGTH(DBEDIT1.TEXT) = 1 THEN EDIT3.Text := '000000000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 2 THEN EDIT3.Text := '00000000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 3 THEN EDIT3.Text := '0000000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 4 THEN EDIT3.Text := '000000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 5 THEN EDIT3.Text := '00000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 6 THEN EDIT3.Text := '0000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 7 THEN EDIT3.Text := '000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 8 THEN EDIT3.Text := '00' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 9 THEN EDIT3.Text := '0' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 10 THEN EDIT3.Text := DBEDIT1.TEXT;

      FDM.IBQITENS005.Active := FALSE;
      FDM.IBQITENS005.SQL.Text := 'SELECT * FROM ITENS005 WHERE NUMERONF = ' + #39 + Edit5.Text + #39;
      FDM.IBQITENS005.Active := TRUE;

      TRY
        BEGIN
            FDM.IBQORCAMENTO.Active := FALSE;
            FDM.IBQORCAMENTO.SQL.Text :=  'INSERT INTO ORCAMENTO (NUMERONF, EMISSAO, REGISTRO, OPERACAO, STATUS) VALUES ' +
                                          '(' + #39 + EDIT5.Text + #39 + ',' +
                                          #39 + DATASQL1 + #39 + ',' +
                                          #39 + EDIT3.Text + #39 + ',' +
                                          #39 + 'DELIVERY' + #39 + ',' +
                                          #39 + 'ABERTO' + #39 + ')';
            FDM.IBQORCAMENTO.Active := TRUE;
        END
        EXCEPT SHOWMESSAGE('Ocorreu um erro ao abrir o pedido. Por favor, entre em contato com o suporte.');
      END;

      fDM.IBQCLIFOR.ACTIVE := FALSE;
      fDM.IBQCLIFOR.SQL.Text := 'SELECT * FROM CLIFOR ORDER BY NOME';
      fDM.IBQCLIFOR.ACTIVE := TRUE;

      CORES_ABRE;

      LABEL16.CAPTION := 'ABERTO - DELIVERY';
      FPEDIDOLOJA.LABEL37.CAPTION := 'Pedido Delivery';
      FPEDIDOLOJA.panel13.COLOR := CLSKYBLUE;
      FPEDIDOLOJA.panel2.COLOR := CLSKYBLUE;
      FPEDIDOLOJA.checkbox50.CAPTION := 'DELIVERY';
      FPEDIDOLOJA.checkbox51.CAPTION := 'IFOOD';
      FPEDIDOLOJA.label14.VISIBLE := FALSE;
      FPEDIDOLOJA.combobox6.VISIBLE := FALSE;       

      FPEDIDOLOJA.SHOWMODAL;

      COMMIT;

      CORES_FECHA;
  END
  ELSE SHOWMESSAGE('Já existe um pedido aberto.');
end;

procedure TFMENU.Image49Click(Sender: TObject);
begin
//IF LABEL16.CAPTION <> 'FECHADO' THEN FPROCURA.SHOWMODAL;
IF LABEL16.CAPTION = 'FECHADO' THEN FPROCURA.SHOWMODAL;
FMENU.ComboBox1Change(Sender);
end;

procedure TFMENU.Image50Click(Sender: TObject);
begin
//CORES_FECHA;
IF LABEL16.CAPTION = 'ABERTO' THEN
  BEGIN
    FFECHAMESA.EDIT10.TEXT := FDM.IBQORCAMENTOOPERACAO.TEXT;
    FFECHAMESA.SHOWMODAL;
  END;

IF LABEL16.CAPTION = 'ALTERANDO' THEN
  BEGIN
    FFECHAMESA.EDIT10.TEXT := FDM.IBQORCAMENTOOPERACAO.TEXT;
    FFECHAMESA.SHOWMODAL;
  END;
end;

procedure TFMENU.Image51Click(Sender: TObject);
begin
fsenha_EXCLUSAO.showmodal;
end;

procedure TFMENU.Image52Click(Sender: TObject);
VAR
ALTURA, REGISTROS : INTEGER;
CUPOM: STRING;
begin
CUPOM := FDM.IBQORCAMENTONUMERONF.VALUE;

FDM.IBQORCAMENTO.Active := FALSE;
FDM.IBQORCAMENTO.SQL.Text := 'SELECT * FROM ORCAMENTO WHERE NUMERONF = ' + #39 + CUPOM + #39;
FDM.IBQORCAMENTO.Active := TRUE;

FDM.IBQCLIFOR.ACTIVE := FALSE;
FDM.IBQCLIFOR.SQL.Text := 'SELECT * FROM CLIFOR WHERE NOME = ' + #39 + FDM.IBQORCAMENTOCLIENTE.VALUE + #39;
FDM.IBQCLIFOR.ACTIVE := TRUE;

FDM.IBQITENS005.Active := FALSE;
FDM.IBQITENS005.SQL.Text := 'SELECT * FROM ITENS005 WHERE NUMERONF = ' + #39 + CUPOM + #39 + ' ORDER BY ANVISA';
FDM.IBQITENS005.Active := TRUE;

REGISTROS := FDM.IBQITENS005.RecordCount;
ALTURA := REGISTROS * 30;
fdm.QUICKREP1.Height := 680 + ALTURA;

FDM.QUICKREP1.PREVIEWMODAL;         

FDM.IBQORCAMENTO.Active := FALSE;
FDM.IBQORCAMENTO.SQL.Text := 'SELECT * FROM ORCAMENTO WHERE STATUS = ' + #39 + 'ABERTO' + #39 + ' ORDER BY NUMERONF DESC';
FDM.IBQORCAMENTO.Active := TRUE;                                              

FDM.IBQITENS005.Active := FALSE;
end;

procedure TFMENU.Image53Click(Sender: TObject);
begin
FRELATORIOS.SHOWMODAL;

FDM.IBQORCAMENTO.Active := FALSE;
FDM.IBQORCAMENTO.SQL.Text := 'SELECT * FROM ORCAMENTO WHERE STATUS = ' + #39 + 'ABERTO' + #39 + ' ORDER BY NUMERONF DESC';
FDM.IBQORCAMENTO.Active := TRUE;                                              
end;

procedure TFMENU.Image54Click(Sender: TObject);
begin
if LABEL16.Caption <> 'FECHADO'
  then
      SHOWMessage('Finalize o pedido antes de sair.')
    else
      APPLICATION.Terminate;
end;

procedure TFMENU.Image55Click(Sender: TObject);
begin
EDIT1.TEXT := 'FANTA LARANJA';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image56Click(Sender: TObject);
begin
EDIT1.TEXT := 'FANTA UVA';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image57Click(Sender: TObject);
begin
EDIT1.TEXT := 'SCHWEPPES';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image58Click(Sender: TObject);
begin
EDIT1.TEXT := 'COCA ZERO';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image59Click(Sender: TObject);
begin
EDIT1.TEXT := 'SPRITE';
FQUANTPRODUTO.SHOWMODAL;
end;

procedure TFMENU.Image5Click(Sender: TObject);
begin
    FDM.IBQUsuarios.ACTIVE := FALSE;
    FDM.IBQUsuarios.SQL.TEXT := 'SELECT * FROM USUARIOS WHERE PORTADOR = ' + #39 + EDIT10.Text + #39;
    FDM.IBQUsuarios.ACTIVE := TRUE;

    EDIT1.Text := FDM.IBQUsuariosPORTADOR.VALUE;

    IF (EDIT10.Text <> '') AND (MASKEDIT1.Text <> '') then
      BEGIN
        IF MASKEDIT1.TEXT = FDM.IBQUsuariosNUMERO.VALUE THEN
          BEGIN
            FUSUARIOS.SHOWMODAL;
          END
        ELSE
          BEGIN
              SHOWMESSAGE('Senha incorreta.');
              MASKEDIT1.SetFocus;
          END;
      END
    ELSE
      BEGIN
      SHOWMESSAGE('Nome de usuário não encontrado ou senha inválida.');
      END;
end;

procedure TFMENU.Image5MouseEnter(Sender: TObject);
begin
IMAGE5.Picture.LoadFromFile('config_b.png');
Label34.Font.Style := Label34.Font.Style + [TFontStyle.fsBold];
end;

procedure TFMENU.Image5MouseLeave(Sender: TObject);
begin
IMAGE5.Picture := nil;
IMAGE5.Picture.LoadFromFile('config.png');
Label34.Font.Style := Label34.Font.Style - [TFontStyle.fsBold];
end;

procedure TFMENU.Image60Click(Sender: TObject);
VAR
DATAMASK1, DATASQL1, DATASQL2, D1, M1, A1: STRING;
begin

//INVERTE AS DATAS
DATAMASK1 := DATETOSTR(NOW);
D1 := COPY(DATAMASK1,0,2);
M1 := COPY(DATAMASK1,4,2);
A1 := COPY(DATAMASK1,7,4);
DATASQL1 := M1 + '/' + D1 + '/' + A1;

IF LABEL16.CAPTION = 'FECHADO' THEN
  BEGIN
      //TÔ CONSIDERANDO O NÚMERO DA NOTA COMO SENDO O MESMO NÚMERO DO REGISTRO
      FDM.IBQGENORCAMENTO.Active := FALSE;
      FDM.IBQGENORCAMENTO.SQL.Text := 'select gen_id(G_ORCAMENTO,1) from rdb$database';
      FDM.IBQGENORCAMENTO.Active := TRUE;

      IF LENGTH(DBEDIT1.TEXT) = 1 THEN EDIT5.Text := '00000000000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 2 THEN EDIT5.Text := '0000000000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 3 THEN EDIT5.Text := '000000000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 4 THEN EDIT5.Text := '00000000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 5 THEN EDIT5.Text := '0000000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 6 THEN EDIT5.Text := '000000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 7 THEN EDIT5.Text := '00000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 8 THEN EDIT5.Text := '0000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 9 THEN EDIT5.Text := '000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 10 THEN EDIT5.Text := '00' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 11 THEN EDIT5.Text := '0' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 12 THEN EDIT5.Text := DBEDIT1.TEXT;

      EDIT6.TEXT := EDIT5.TEXT;
      
      IF LENGTH(DBEDIT1.TEXT) = 1 THEN EDIT3.Text := '000000000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 2 THEN EDIT3.Text := '00000000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 3 THEN EDIT3.Text := '0000000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 4 THEN EDIT3.Text := '000000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 5 THEN EDIT3.Text := '00000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 6 THEN EDIT3.Text := '0000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 7 THEN EDIT3.Text := '000' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 8 THEN EDIT3.Text := '00' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 9 THEN EDIT3.Text := '0' + DBEDIT1.TEXT;
      IF LENGTH(DBEDIT1.TEXT) = 10 THEN EDIT3.Text := DBEDIT1.TEXT;

      FDM.IBQITENS005.Active := FALSE;
      FDM.IBQITENS005.SQL.Text := 'SELECT * FROM ITENS005 WHERE NUMERONF = ' + #39 + Edit5.Text + #39;
      FDM.IBQITENS005.Active := TRUE;

      TRY
        BEGIN
            FDM.IBQORCAMENTO.Active := FALSE;
            FDM.IBQORCAMENTO.SQL.Text :=  'INSERT INTO ORCAMENTO (NUMERONF, EMISSAO, REGISTRO, OPERACAO, STATUS) VALUES ' +
                                          '(' + #39 + EDIT5.Text + #39 + ',' +
                                          #39 + DATASQL1 + #39 + ',' +
                                          #39 + EDIT3.Text + #39 + ',' +
                                          #39 + 'LOJA' + #39 + ',' +
                                          #39 + 'ABERTO' + #39 + ')';
            FDM.IBQORCAMENTO.Active := TRUE;
        END
        EXCEPT SHOWMESSAGE('Ocorreu um erro ao abrir o pedido. Por favor, entre em contato com o suporte.');
      END;

      fDM.IBQCLIFOR.ACTIVE := FALSE;
      fDM.IBQCLIFOR.SQL.Text := 'SELECT * FROM CLIFOR ORDER BY NOME';
      fDM.IBQCLIFOR.ACTIVE := TRUE;

      CORES_ABRE;

      LABEL16.CAPTION := 'ABERTO - LOJA';
      FPEDIDOLOJA.LABEL37.CAPTION := 'Pedido Loja';
      FPEDIDOLOJA.panel13.COLOR := $00DFF9DB;
      FPEDIDOLOJA.panel2.COLOR := $00DFF9DB;
      FPEDIDOLOJA.checkbox50.CAPTION := 'TAÇA';
      FPEDIDOLOJA.checkbox51.CAPTION := 'VIAGEM';
      FPEDIDOLOJA.label14.VISIBLE := TRUE;
      FPEDIDOLOJA.combobox6.VISIBLE := TRUE;       

      FPEDIDOLOJA.SHOWMODAL;

      COMMIT;

      CORES_FECHA;
  END
  ELSE SHOWMESSAGE('Já existe um pedido aberto.');
end;

procedure TFMENU.Image6Click(Sender: TObject);
begin
CORES_ABRE;
LABEL16.Caption := 'ALTERANDO';
EDIT5.Text := FDM.IBQORCAMENTONUMERONF.Value;
end;

procedure TFMENU.Image7Click(Sender: TObject);
begin
If MessageBox(Handle, 'Este comando irá apagar o pedido definitivamente. Deseja continuar?', 'Favor confirmar...', 
MB_YESNO+MB_SYSTEMMODAL+MB_ICONQUESTION+MB_DEFBUTTON1) = ID_YES Then
FSENHA_CANCELAMENTO.SHOWMODAL;
end;

procedure TFMENU.Image8Click(Sender: TObject);
begin
fdm.IBQORCAMENTO.Prior;
end;

procedure TFMENU.Image9Click(Sender: TObject);
begin
fdm.IBQORCAMENTO.next;
end;

end.
