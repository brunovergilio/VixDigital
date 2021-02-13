unit ulancaproduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, MATH;

type
  Tflancaproduto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label6: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  flancaproduto: Tflancaproduto;

implementation

{$R *.dfm}
USES UDM, USMARTNOTAS, UNOTAS, UPROCURA2, uos;

procedure Tflancaproduto.Button1Click(Sender: TObject);
var
CUSTO, VENDA, PESO, total, RENTAB, CONT: real;
begin
IF FPROCURA2.Edit2.Text = 'OS' THEN
BEGIN
      TRY
        BEGIN
          if EDIT2.Text = '0' then EDIT2.Text := '1';
          if EDIT2.Text = '' then EDIT2.Text := '1';

          DM.IBTITENS005.OPEN;
          DM.IBTITENS005.Append;

          DM.IBTITENS005NUMERONF.VALUE := FOS.DBEDIT12.TEXT;

          DM.IBQGENITENS005.Active := FALSE;
          DM.IBQGENITENS005.SQL.Text := 'select gen_id(G_ITENS005,1) from rdb$database';
          DM.IBQGENITENS005.Active := TRUE;

          DM.IBTITENS005REGISTRO.Value := FPROCURA2.DBEDIT2.TEXT;
          DM.IBTITENS005CODIGO.VALUE := DM.IBQESTOQUECODIGO.VALUE;
          DM.IBTITENS005DESCRICAO.VALUE := DM.IBQESTOQUEDESCRICAO.VALUE;
          DM.IBTITENS005MEDIDA.VALUE := DM.IBQESTOQUEMEDIDA.VALUE;
          DM.IBTITENS005QUANTIDADE.VALUE := STRTOFLOAT(EDIT2.Text);
          if edit3.Text = '' then EDIT3.Text := FLOATTOSTR(DM.IBQESTOQUEPRECO.VALUE);
          DM.IBTITENS005UNITARIO.VALUE := STRTOFLOAT(EDIT3.Text);
          DM.IBTITENS005TOTAL.VALUE := STRTOFLOAT(EDIT2.Text) * DM.IBTITENS005UNITARIO.VALUE;
          DM.IBTITENS005PESO.VALUE := DM.IBQESTOQUEPESO.VALUE;
          DM.IBTITENS005CUSTO.VALUE := SimpleRoundTo(DM.IBQESTOQUECUSTOCOMPR.VALUE,-2);
          DM.IBTITENS005SINCRONIA.VALUE := DM.IBTITENS005UNITARIO.VALUE - DM.IBTITENS005CUSTO.VALUE;
          DM.IBTITENS005XPED.VALUE := FLOATTOSTR(SimpleRoundTo(DM.IBTITENS005SINCRONIA.VALUE/DM.IBTITENS005UNITARIO.VALUE*100,-3));
          //SERVIÇO OU PRODUTO
          DM.IBTITENS005NUMEROOS.VALUE := DM.IBQESTOQUETIPO_ITEM.VALUE;

          DM.IBTITENS005.Post;
          DM.IBTITENS005.ApplyUpdates();
          DM.IBTransaction1.Commitretaining;
          DM.IBTITENS005.ACTIVE := FALSE;
          DM.IBTITENS005.ACTIVE := TRUE;

          dm.IBQITENS005.ACTIVE := FALSE;
          DM.IBQITENS005.SQL.Text := 'select * FROM ITENS005 WHERE NUMERONF = ' + #39 + FOS.DBEDIT12.TEXT + #39;
          dm.IBQITENS005.ACTIVE := TRUE;

          //JOGA O TOTAL NA EDIT DO FORM NOTAS
          IF FOS.Edit6.Text = '' then FOS.Edit6.Text := '0';

          FOS.EDIT2.TEXT := FormatFloat('#.00', FOS.PEGATOTAL);

          FOS.Edit7.Text := FLOATTOSTR(PESO);
          FOS.Edit7.Text := FormatFloat('#.00', StrtoFloat(FOS.Edit7.Text));

          CLOSE;
        END
      EXCEPT
          BEGIN
            DM.IBTITENS005.CANCEL;
            DM.IBTITENS005.CLOSE;
            SHOWMESSAGE('Ocorreu um erro na gravação dos dados. Verifique a quantidade, ou se já existe este produto lançado nessa nota.');
          END;
      END;
END
ELSE
BEGIN
      TRY
        BEGIN
          if EDIT2.Text = '0' then EDIT2.Text := '1';
          if EDIT2.Text = '' then EDIT2.Text := '1';

          DM.IBTITENS004.OPEN;
          DM.IBTITENS004.Append;

          DM.IBTITENS004NUMERONF.VALUE := FNOTAS.DBEDIT12.TEXT;

          DM.IBQGENITENS004.Active := FALSE;
          DM.IBQGENITENS004.SQL.Text := 'select gen_id(G_ITENS004,1) from rdb$database';
          DM.IBQGENITENS004.Active := TRUE;

          DM.IBTITENS004REGISTRO.Value := FPROCURA2.DBEDIT1.TEXT;
          DM.IBTITENS004CODIGO.VALUE := DM.IBQESTOQUECODIGO.VALUE;
          DM.IBTITENS004DESCRICAO.VALUE := DM.IBQESTOQUEDESCRICAO.VALUE;
          DM.IBTITENS004MEDIDA.VALUE := DM.IBQESTOQUEMEDIDA.VALUE;
          DM.IBTITENS004QUANTIDADE.VALUE := STRTOFLOAT(EDIT2.Text);
          if edit3.Text = '' then EDIT3.Text := FLOATTOSTR(DM.IBQESTOQUEPRECO.VALUE);
          DM.IBTITENS004UNITARIO.VALUE := STRTOFLOAT(EDIT3.Text);
          DM.IBTITENS004TOTAL.VALUE := STRTOFLOAT(EDIT2.Text) * DM.IBTITENS004UNITARIO.VALUE;
          DM.IBTITENS004PESO.VALUE := DM.IBQESTOQUEPESO.VALUE;
          DM.IBTITENS004CUSTO.VALUE := SimpleRoundTo(DM.IBQESTOQUECUSTOCOMPR.VALUE,-2);
          DM.IBTITENS004SINCRONIA.VALUE := DM.IBTITENS004UNITARIO.VALUE - DM.IBTITENS004CUSTO.VALUE;
          DM.IBTITENS004XPED.VALUE := FLOATTOSTR(SimpleRoundTo(DM.IBTITENS004SINCRONIA.VALUE/DM.IBTITENS004UNITARIO.VALUE*100,-3));
          //SERVIÇO OU PRODUTO
          DM.IBTITENS004NUMEROOS.VALUE := DM.IBQESTOQUETIPO_ITEM.VALUE;

          DM.IBTITENS004.Post;
          DM.IBTITENS004.ApplyUpdates();
          DM.IBTransaction1.Commitretaining;
          DM.IBTITENS004.ACTIVE := FALSE;
          DM.IBTITENS004.ACTIVE := TRUE;

          dm.IBQITENS004.ACTIVE := FALSE;
          DM.IBQITENS004.SQL.Text := 'select * FROM ITENS004 WHERE NUMERONF = ' + #39 + FNOTAS.DBEDIT12.TEXT + #39;
          dm.IBQITENS004.ACTIVE := TRUE;

          //FAZ A SOMA DA NOTA

          VENDA := 0;
          PESO := 0;
          RENTAB := 0;
          CONT := 0;
          CUSTO := 0;
          TOTAL := 0;

          DM.IBQITENS004.First;
          while NOT DM.IBQITENS004.Eof do
              BEGIN
                CONT := CONT + 1;
                PESO := PESO + DM.IBQITENS004PESO.Value;
                TOTAL := TOTAL + DM.IBQITENS004TOTAL.Value;
                VENDA := VENDA + DM.IBQITENS004TOTAL.Value;
                CUSTO := CUSTO + (DM.IBQITENS004CUSTO.Value * DM.IBQITENS004QUANTIDADE.Value);
                DM.IBQITENS004.Next;
              END;

          //JOGA O TOTAL NA EDIT DO FORM NOTAS

          FNOTAS.EDIT5.Text := FLOATTOSTR(TOTAL);
          FNOTAS.Edit5.Text := FormatFloat('#.00', StrtoFloat(FNOTAS.Edit5.Text));
          IF FNOTAS.Edit6.Text = '' then FNOTAS.Edit6.Text := '0';
          FNOTAS.Edit2.Text := FLOATTOSTR(STRTOFLOAT(FNOTAS.Edit5.TEXT)-STRTOFLOAT(FNOTAS.Edit6.TEXT));
          FNOTAS.Edit2.Text := FormatFloat('#.00', StrtoFloat(FNOTAS.Edit2.Text));
          FNOTAS.Edit6.Text := FormatFloat('#.00', StrtoFloat(FNOTAS.Edit6.Text));
          FNOTAS.Edit7.Text := FLOATTOSTR(PESO);
          FNOTAS.Edit7.Text := FormatFloat('#.00', StrtoFloat(FNOTAS.Edit7.Text));
          FNOTAS.Edit5.Text := FormatFloat('#.00', StrtoFloat(FNOTAS.Edit5.Text));

          CLOSE;
        END
      EXCEPT
          BEGIN
            DM.IBTITENS004.CANCEL;
            DM.IBTITENS004.CLOSE;
            SHOWMESSAGE('Ocorreu um erro na gravação dos dados. Verifique a quantidade, ou se já existe este produto lançado nessa nota.');
          END;
      END;
END;
end;

procedure Tflancaproduto.Button2Click(Sender: TObject);
begin
DM.IBTITENS004.CANCEL;
Close;
end;

procedure Tflancaproduto.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  CUSTO, VENDA, PESO, total, RENTAB, cont: real;
begin

IF FPROCURA2.Edit2.Text = 'OS' THEN 
BEGIN
      if KEY = VK_ESCAPE then
        BEGIN
          DM.IBTITENS005.CANCEL;
          CLOSE;
        END;

      if KEY = VK_RETURN then
      TRY
        BEGIN
          if EDIT2.Text = '0' then EDIT2.Text := '1';
          if EDIT2.Text = '' then EDIT2.Text := '1';

          DM.IBTITENS005.OPEN;
          DM.IBTITENS005.Append;

          DM.IBTITENS005NUMERONF.VALUE := FOS.DBEDIT12.TEXT;

          DM.IBQGENITENS005.Active := FALSE;
          DM.IBQGENITENS005.SQL.Text := 'select gen_id(G_ITENS005,1) from rdb$database';
          DM.IBQGENITENS005.Active := TRUE;

          DM.IBTITENS005REGISTRO.Value := FPROCURA2.DBEDIT2.TEXT;
          DM.IBTITENS005CODIGO.VALUE := DM.IBQESTOQUECODIGO.VALUE;
          DM.IBTITENS005DESCRICAO.VALUE := DM.IBQESTOQUEDESCRICAO.VALUE;
          DM.IBTITENS005MEDIDA.VALUE := DM.IBQESTOQUEMEDIDA.VALUE;
          DM.IBTITENS005QUANTIDADE.VALUE := STRTOFLOAT(EDIT2.Text);
          if edit3.Text = '' then EDIT3.Text := FLOATTOSTR(DM.IBQESTOQUEPRECO.VALUE);
          DM.IBTITENS005UNITARIO.VALUE := STRTOFLOAT(EDIT3.Text);
          DM.IBTITENS005TOTAL.VALUE := STRTOFLOAT(EDIT2.Text) * DM.IBTITENS005UNITARIO.VALUE;
          DM.IBTITENS005PESO.VALUE := DM.IBQESTOQUEPESO.VALUE;
          DM.IBTITENS005CUSTO.VALUE := SimpleRoundTo(DM.IBQESTOQUECUSTOCOMPR.VALUE,-2);
          DM.IBTITENS005SINCRONIA.VALUE := DM.IBTITENS005UNITARIO.VALUE - DM.IBTITENS005CUSTO.VALUE;
          DM.IBTITENS005XPED.VALUE := FLOATTOSTR(SimpleRoundTo(DM.IBTITENS005SINCRONIA.VALUE/DM.IBTITENS005UNITARIO.VALUE*100,-3));
          //SERVIÇO OU PRODUTO
          DM.IBTITENS005NUMEROOS.VALUE := DM.IBQESTOQUETIPO_ITEM.VALUE;

          DM.IBTITENS005.Post;
          DM.IBTITENS005.ApplyUpdates();
          DM.IBTransaction1.Commitretaining;
          DM.IBTITENS005.ACTIVE := FALSE;
          DM.IBTITENS005.ACTIVE := TRUE;

          dm.IBQITENS005.ACTIVE := FALSE;
          DM.IBQITENS005.SQL.Text := 'select * FROM ITENS005 WHERE NUMERONF = ' + #39 + FOS.DBEDIT12.TEXT + #39;
          dm.IBQITENS005.ACTIVE := TRUE;

          //JOGA O TOTAL NA EDIT DO FORM NOTAS
          IF FOS.Edit6.Text = '' then FOS.Edit6.Text := '0';

          FOS.EDIT2.TEXT := FormatFloat('#.00', FOS.PEGATOTAL);

          FOS.Edit7.Text := FLOATTOSTR(PESO);
          FOS.Edit7.Text := FormatFloat('#.00', StrtoFloat(FOS.Edit7.Text));

          CLOSE;
        END
      EXCEPT
          BEGIN
            DM.IBTITENS005.CANCEL;
            DM.IBTITENS005.CLOSE;
            SHOWMESSAGE('Ocorreu um erro na gravação dos dados. Verifique a quantidade, ou se já existe este produto lançado nessa nota.');
          END;
      END;
END
ELSE
BEGIN
      if KEY = VK_ESCAPE then
        BEGIN
          DM.IBTITENS004.CANCEL;
          CLOSE;
        END;

      if KEY = VK_RETURN then
      TRY
        BEGIN
          if EDIT2.Text = '0' then EDIT2.Text := '1';
          if EDIT2.Text = '' then EDIT2.Text := '1';

          DM.IBTITENS004.OPEN;
          DM.IBTITENS004.Append;

          DM.IBTITENS004NUMERONF.VALUE := FNOTAS.DBEDIT12.TEXT;

          DM.IBQGENITENS004.Active := FALSE;
          DM.IBQGENITENS004.SQL.Text := 'select gen_id(G_ITENS004,1) from rdb$database';
          DM.IBQGENITENS004.Active := TRUE;

          DM.IBTITENS004REGISTRO.Value := FPROCURA2.DBEDIT1.TEXT;
          DM.IBTITENS004CODIGO.VALUE := DM.IBQESTOQUECODIGO.VALUE;
          DM.IBTITENS004DESCRICAO.VALUE := DM.IBQESTOQUEDESCRICAO.VALUE;
          DM.IBTITENS004MEDIDA.VALUE := DM.IBQESTOQUEMEDIDA.VALUE;
          DM.IBTITENS004QUANTIDADE.VALUE := STRTOFLOAT(EDIT2.Text);
          if edit3.Text = '' then EDIT3.Text := FLOATTOSTR(DM.IBQESTOQUEPRECO.VALUE);
          DM.IBTITENS004UNITARIO.VALUE := STRTOFLOAT(EDIT3.Text);
          DM.IBTITENS004TOTAL.VALUE := STRTOFLOAT(EDIT2.Text) * DM.IBTITENS004UNITARIO.VALUE;
          DM.IBTITENS004PESO.VALUE := DM.IBQESTOQUEPESO.VALUE;
          DM.IBTITENS004CUSTO.VALUE := SimpleRoundTo(DM.IBQESTOQUECUSTOCOMPR.VALUE,-2);
          DM.IBTITENS004SINCRONIA.VALUE := DM.IBTITENS004UNITARIO.VALUE - DM.IBTITENS004CUSTO.VALUE;
          DM.IBTITENS004XPED.VALUE := FLOATTOSTR(SimpleRoundTo(DM.IBTITENS004SINCRONIA.VALUE/DM.IBTITENS004UNITARIO.VALUE*100,-3));
          //SERVIÇO OU PRODUTO
          DM.IBTITENS004NUMEROOS.VALUE := DM.IBQESTOQUETIPO_ITEM.VALUE;

          DM.IBTITENS004.Post;
          DM.IBTITENS004.ApplyUpdates();
          DM.IBTransaction1.Commitretaining;
          DM.IBTITENS004.ACTIVE := FALSE;
          DM.IBTITENS004.ACTIVE := TRUE;

          dm.IBQITENS004.ACTIVE := FALSE;
          DM.IBQITENS004.SQL.Text := 'select * FROM ITENS004 WHERE NUMERONF = ' + #39 + FNOTAS.DBEDIT12.TEXT + #39;
          dm.IBQITENS004.ACTIVE := TRUE;

          //FAZ A SOMA DA NOTA

          VENDA := 0;
          PESO := 0;
          RENTAB := 0;
          CONT := 0;
          CUSTO := 0;
          TOTAL := 0;

          DM.IBQITENS004.First;
          while NOT DM.IBQITENS004.Eof do
              BEGIN
                CONT := CONT + 1;
                PESO := PESO + DM.IBQITENS004PESO.Value;
                TOTAL := TOTAL + DM.IBQITENS004TOTAL.Value;
                VENDA := VENDA + DM.IBQITENS004TOTAL.Value;
                CUSTO := CUSTO + (DM.IBQITENS004CUSTO.Value * DM.IBQITENS004QUANTIDADE.Value);
                DM.IBQITENS004.Next;
              END;

          //JOGA O TOTAL NA EDIT DO FORM NOTAS

          FNOTAS.EDIT5.Text := FLOATTOSTR(TOTAL);
          FNOTAS.Edit5.Text := FormatFloat('#.00', StrtoFloat(FNOTAS.Edit5.Text));
          IF FNOTAS.Edit6.Text = '' then FNOTAS.Edit6.Text := '0';
          FNOTAS.Edit2.Text := FLOATTOSTR(STRTOFLOAT(FNOTAS.Edit5.TEXT)-STRTOFLOAT(FNOTAS.Edit6.TEXT));
          FNOTAS.Edit2.Text := FormatFloat('#.00', StrtoFloat(FNOTAS.Edit2.Text));
          FNOTAS.Edit6.Text := FormatFloat('#.00', StrtoFloat(FNOTAS.Edit6.Text));
          FNOTAS.Edit7.Text := FLOATTOSTR(PESO);
          FNOTAS.Edit7.Text := FormatFloat('#.00', StrtoFloat(FNOTAS.Edit7.Text));
          FNOTAS.Edit5.Text := FormatFloat('#.00', StrtoFloat(FNOTAS.Edit5.Text));

          CLOSE;
        END
      EXCEPT
          BEGIN
            DM.IBTITENS004.CANCEL;
            DM.IBTITENS004.CLOSE;
            SHOWMESSAGE('Ocorreu um erro na gravação dos dados. Verifique a quantidade, ou se já existe este produto lançado nessa nota.');
          END;
      END;
END;

end;

procedure Tflancaproduto.Edit3Exit(Sender: TObject);
begin
TRY
      BEGIN
          if EDIT3.Text = '' then EDIT3.Text := '0,00';
          Edit3.text := formatfloat('0.00',STRTOFLOAT(EDIT3.Text));
      END
EXCEPT
      BEGIN
          SHOWMESSAGE('Este campo não pode ficar vazio, e só aceita números. Favor preencher corretamente.');
          Edit3.text := formatfloat('0.00',STRTOFLOAT(EDIT3.Text));
          EDIT2.SetFocus;
      END;
END;
end;

procedure Tflancaproduto.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if KEY = VK_RETURN then EDIT2.SetFocus;
end;

procedure Tflancaproduto.FormActivate(Sender: TObject);
begin
EDIT3.Text := FLOATTOSTR(DM.IBQESTOQUEPRECO.VALUE);
Edit3.Text := FormatFloat('#.00', StrtoFloat(FLANCAPRODUTO.Edit3.Text));
EDIT2.Text := '0';
EDIT3.SetFocus;
end;

end.
