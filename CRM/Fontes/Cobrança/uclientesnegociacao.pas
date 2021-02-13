unit uclientesnegociacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, 
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.TabNotBk, AdvEdit, advlued, 
  DBAdvLe, Vcl.DBCtrls, RzButton, AdvCombo, Lucombo, dblucomb, Data.DB, 
  ACBrBase, JvComponentBase, JvEnterTab, AdvOfficeTabSet, 
  AdvOfficeTabSetStylers, RzTabs, AdvOfficeButtons, DBAdvOfficeButtons, 
  AdvDBComboBox, Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, RzDBGrid, 
  Datasnap.DBClient, AdvDateTimePicker, NxEdit6, Vcl.Mask, RzEdit, math,
  ACBrBoleto, ACBrBoletoFCFortesFr, NxColumns6, NxDBColumns6, NxGridView6, 
  NxControls6, NxCustomGrid6, NxVirtualGrid6, NxDBGrid6, FireDAC.Stan.Intf, 
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, 
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, 
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.DBX.Migrate, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxCheckBox, DateUtils,
  dxBarBuiltInMenu, cxPC;

type
  Tfrmclientesnegociacao = class(TForm)
    Panel3: TPanel;
    Panel4: TPanel;
    RzToolButton2: TRzToolButton;
    CDSNEGOCIACAO: TClientDataSet;
    CDSNEGOCIACAOSTATUS: TStringField;
    CDSNEGOCIACAONROPERACAO: TStringField;
    CDSNEGOCIACAODATAVENCTO: TDateField;
    CDSNEGOCIACAOVALORMINIMO: TFloatField;
    CDSNEGOCIACAOVALORMULTA: TFloatField;
    CDSNEGOCIACAOVALORJURO: TFloatField;
    CDSNEGOCIACAOVALORHONORARIO: TFloatField;
    CDSNEGOCIACAOVALORVENCIDO: TFloatField;
    CDSNEGOCIACAOVALORABATIMENTO: TFloatField;
    CDSNEGOCIACAOVALORDIVIDA: TFloatField;
    DSNEGOCIACAO: TDataSource;
    CDSNEGOCIACAOVALORNOMINAL: TFloatField;
    DBGrid1: TDBGrid;
    DataSource2: TDataSource;
    cdsparcelas: TClientDataSet;
    cdsparcelasDATAVENCTO: TDateField;
    cdsparcelasPARCELA: TIntegerField;
    cdsparcelasVALOR: TFloatField;
    cdsparcelasJUROS: TFloatField;
    cdsparcelasTOTAL: TFloatField;
    cdsparcelastotalalor: TAggregateField;
    cdsparcelastotalljuros: TAggregateField;
    cdsparcelastotaltotal: TAggregateField;
    uniQCredores: TFDQuery;
    RzToolButton8: TRzToolButton;
    unigetid: TFDQuery;
    uniscript: TFDQuery;
    ACBrBoleto1: TACBrBoleto;
    ACBrBoletoFCFortes1: TACBrBoletoFCFortes;
    CDSNEGOCIACAOREGISTRO: TIntegerField;
    CDSNEGOCIACAOcheck_titulo: TStringField;
    DSTOTAIS: TDataSource;
    CDSTOTAIS: TClientDataSet;
    CDSTOTAISTOTALDIVIDA: TFloatField;
    CDSTOTAISTOTALNOMINAL: TFloatField;
    CDSTOTAISTOTALMULTA: TFloatField;
    CDSTOTAISTOTALJURO: TFloatField;
    CDSTOTAISTOTALDESCONTO: TFloatField;
    CDSNEGOCIACAOdias_atraso: TIntegerField;
    CDSNEGOCIACAOperc_juros: TFloatField;
    Panel1: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    RzToolButton4: TRzToolButton;
    Panel5: TPanel;
    Label5: TLabel;
    Label1: TLabel;
    Label10: TLabel;
    ComboBox1: TComboBox;
    edtprimeira: TAdvDateTimePicker;
    NxSpinEdit61: TNxSpinEdit6;
    Panel6: TPanel;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    Label2: TLabel;
    Panel7: TPanel;
    Label14: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBAdvLUEdit8: TDBAdvLUEdit;
    LBLCREDOR: TLabel;
    Label12: TLabel;
    edtintervalo: TNxSpinEdit6;
    Label25: TLabel;
    Label26: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    RzToolButton1: TRzToolButton;
    RzNumericEdit1: TRzNumericEdit;
    CDSNEGOCIACAOOPERACAONOVA: TStringField;
    RzEditPrimeira: TRzNumericEdit;
    Label31: TLabel;
    RZNMULTA: TRzNumericEdit;
    RZNJUROS: TRzNumericEdit;
    RZNDESCO: TRzNumericEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1STATUS: TcxGridDBColumn;
    cxGrid1DBTableView1NROPERACAO: TcxGridDBColumn;
    cxGrid1DBTableView1DATAVENCTO: TcxGridDBColumn;
    cxGrid1DBTableView1VALORNOMINAL: TcxGridDBColumn;
    cxGrid1DBTableView1VALORMULTA: TcxGridDBColumn;
    cxGrid1DBTableView1VALORJURO: TcxGridDBColumn;
    cxGrid1DBTableView1VALORVENCIDO: TcxGridDBColumn;
    cxGrid1DBTableView1VALORABATIMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1VALORDIVIDA: TcxGridDBColumn;
    cxGrid1DBTableView1check_titulo: TcxGridDBColumn;
    cxGrid1DBTableView1dias_atraso: TcxGridDBColumn;
    cxGrid1DBTableView1perc_juros: TcxGridDBColumn;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel2: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Memo1: TMemo;
    cbxBanco: TComboBox;
    Label3: TLabel;
    QBanco: TFDQuery;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1PARCELA: TcxGridDBColumn;
    cxGrid2DBTableView1DATAVENCTO: TcxGridDBColumn;
    cxGrid2DBTableView1VALOR: TcxGridDBColumn;
    cxGrid2DBTableView1JUROS: TcxGridDBColumn;
    cxGrid2DBTableView1TOTAL: TcxGridDBColumn;
    cdsparcelasMULTA: TFloatField;
    cxGrid2DBTableView1MULTA: TcxGridDBColumn;
    cdsparcelastotalmulta: TAggregateField;
    CDSNEGOCIACAOCOD_CREDOR: TIntegerField;
    cdsparcelasDESCONTOS: TFloatField;
    cxGrid2DBTableView1DESCONTOS: TcxGridDBColumn;
    cdsparcelastotaldescontos: TAggregateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBAdvLUEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBAdvLUEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBAdvLUEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBAdvLUEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure AdvDBComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure RzToolButton4Click(Sender: TObject);
    procedure RzToolButton8Click(Sender: TObject);
    procedure DBGridOperacoesDblClick(Sender: TObject);
    procedure CDSNEGOCIACAOcheck_tituloChange(Sender: TField);
    procedure rznmultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rznjurosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rzndescoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure NxSpinEdit61Exit(Sender: TObject);
    procedure edtintervaloExit(Sender: TObject);
    procedure RZNDESCOExit(Sender: TObject);
    procedure RZNJUROSExit(Sender: TObject);
    procedure RZNDESCOKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RZNMULTAExit(Sender: TObject);
    procedure edtprimeiraExit(Sender: TObject);
    procedure RzEditPrimeiraExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1CloseUp(Sender: TObject);
  private
    TIPO_DESCONTO : STRING;
    VALORMINIMOPORPARCELA,
    MAXIMODIASPARCELAMENTO_VALOR,
    MAXIMOPARCELAS_VALOR,
    multaminima,
    jurosminimo,
    honorariominimo,
    descontomaximo,
    vJuros,
    vJurosProporcional,
    vMulta,
    vDescontos : double;
    pChamaAdmin : boolean;

    procedure GetBancos;
  public
    { Public declarations }
    ALTERAINSERE: STRING;
  end;

var
  frmclientesnegociacao: Tfrmclientesnegociacao;

implementation

{$R *.dfm}

uses
  fclientes, udatamodule, ueventosoperador, uCliente, umenu, uFuncoes,
  uSenhaMaster;

procedure Tfrmclientesnegociacao.AdvDBComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure Tfrmclientesnegociacao.CDSNEGOCIACAOcheck_tituloChange(
  Sender: TField);
begin
  CDSNEGOCIACAO.DisableControls;
  try
   if cdsparcelas.recordcount > 0 then
      frmclientesnegociacao.RzToolButton4Click(Sender);
  except end;
  CDSNEGOCIACAO.enableControls;
end;

procedure Tfrmclientesnegociacao.ComboBox1CloseUp(Sender: TObject);
begin
  if ComboBox1.ItemIndex = 0 then
    cbxBanco.Enabled := True
  else
    cbxBanco.Enabled := False;
end;

procedure Tfrmclientesnegociacao.ComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure Tfrmclientesnegociacao.ComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
key := #0;
end;

procedure Tfrmclientesnegociacao.DBAdvLUEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
if (Key = #13) then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmclientesnegociacao.DBAdvLUEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
if (Key = #13) then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmclientesnegociacao.DBAdvLUEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
if (Key = #13) then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmclientesnegociacao.DBAdvLUEdit5KeyPress(Sender: TObject;
  var Key: Char);
begin
if (Key = #13) then Perform(WM_NEXTDLGCTL,0,0);
end;

//procedure Tfrmclientesnegociacao.DBGridEh1DrawColumnCell(Sender: TObject;
//  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
//  State: TGridDrawState);
//begin
//  if CDSNEGOCIACAOCHECK_TITULO.ASSTRING = 'True' THEN BEGIN
//    DBGridEh1.Canvas.Brush.Color := clWhite;
//    DBGridEh1.Canvas.Font.Color  := clBlack;
//  END
//  ELSE BEGIN
//    DBGridEh1.Canvas.Brush.Color := clSilver;
//    DBGridEh1.Canvas.Font.Color  := clGray;
//  END;
//  DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
//end;

procedure Tfrmclientesnegociacao.DBGridOperacoesDblClick(Sender: TObject);
begin
CDSNEGOCIACAO.edit;
//dbcheckbox1.checked := not dbcheckbox1.checked;
if CDSNEGOCIACAOCHECK_TITULO.ASSTRING = 'True' then
   CDSNEGOCIACAOCHECK_TITULO.ASSTRING := 'False';
if CDSNEGOCIACAOCHECK_TITULO.ASSTRING = 'False' then
   CDSNEGOCIACAOCHECK_TITULO.ASSTRING := 'True';
CDSNEGOCIACAO.post;
end;

procedure Tfrmclientesnegociacao.edtintervaloExit(Sender: TObject);
begin
  if edtintervalo.value > 30 then edtintervalo.
    value := 30;
  RzToolButton4.Click;
end;

procedure Tfrmclientesnegociacao.edtprimeiraExit(Sender: TObject);
begin
  RzToolButton4.Click;
end;

procedure Tfrmclientesnegociacao.FormActivate(Sender: TObject);
VAR
  CREDOR_SELECIONADO: STRING;
  TOTALDIVIDA,TOTALDESCONTO,TOTALMULTA,TOTALJUROS, TOTALNOMINAL: DOUBLE;
begin
    label19.caption := '0';
    label20.caption := '0';
    label24.caption := '0,00';

    RzNumericEdit1.Value := 0;

    RzEditPrimeira.Value := 0;

    Try cdsnegociacao.CreateDataSet; except end;
    Try cdsparcelas.CreateDataSet; except end;
    Try cdstotais.CreateDataSet; except end;

    uniqcredores.close;
    uniqcredores.SQL.Text := 'select * from bancos where codigo = :pcodigo';
    uniqcredores.parambyname('pcodigo').AsString := frmclientes.uniQClientesOperacoes.fieldbyname('credor').AsString;
    uniqcredores.open;

    lblcredor.caption := frmclientes.uniQClientesOperacoes.fieldbyname('nome').AsString;

    Memo1.Lines.Clear;
    Memo1.Lines.Add(uniQCredores.FieldByName('informacoes_adicionais').AsString);

    CREDOR_SELECIONADO := frmclientes.uniQClientesOperacoes.fieldbyname('credor').AsString;
    TIPO_DESCONTO := uniqcredores.fieldbyname('TIPO_DESCONTO_PADRAO').asstring;

    try
      MAXIMOPARCELAS_VALOR := uniqcredores.fieldbyname('MAXIMOPARCELAS_VALOR').asfloat
    except
      MAXIMOPARCELAS_VALOR := 10000;
    end;

    TRY
      label20.caption := floattostr(MAXIMOPARCELAS_VALOR);
      NxSpinEdit61.Value := MAXIMOPARCELAS_VALOR;
    EXCEPT
    END;


    try
      VALORMINIMOPORPARCELA := uniqcredores.fieldbyname('VALOR_MINIMO_PARCELA').asfloat
    except
      VALORMINIMOPORPARCELA := 0.01;
    end;

    TRY
      label24.caption := FORMATFLOAT(',,,,,,,,,,,,##0.00',(ROUNDTO(VALORMINIMOPORPARCELA,-2)));
      RzEditPrimeira.Value := VALORMINIMOPORPARCELA;
    EXCEPT
    END;

    MAXIMODIASPARCELAMENTO_VALOR := 0;
    try
      MAXIMODIASPARCELAMENTO_VALOR := uniqcredores.fieldbyname('MAXIMODIASPARCELAMENTO_VALOR').asfloat
    except
      MAXIMODIASPARCELAMENTO_VALOR := 0;
    end;

    TRY
      label19.caption := floattostr(MAXIMODIASPARCELAMENTO_VALOR);
      edtprimeira.Date := Now;
      edtprimeira.Date := edtprimeira.Date + IncDay(MAXIMODIASPARCELAMENTO_VALOR - 1);
    EXCEPT
    END;

    LABEL28.CAPTION := TIPO_DESCONTO;

    try
      multaminima := uniqcredores.fieldbyname('multa_de').AsFloat;
    except
      multaminima := 0;
    end;
    try
      jurosminimo := uniqcredores.fieldbyname('juros_de').AsFloat;
    except
      jurosminimo := 0;
    end;
    try
      honorariominimo := uniqcredores.fieldbyname('honorario_de').AsFloat;
    except
      honorariominimo := 0;
    end;
    try
      descontomaximo := uniqcredores.fieldbyname('descontomaximo_valor').AsFloat;
    except
      descontomaximo := 0;
    end;

    label21.caption := FormatFloat('###,##0.00',multaminima);
    label18.caption := FormatFloat('###,##0.00',jurosminimo);
    label22.caption := FormatFloat('###,##0.00',descontomaximo);

    cdsnegociacao.open;
    cdsnegociacao.EmptyDataSet;

    rznmulta.value := 0;
    rznjuros.value := 0;
    rzndesco.value := 0;
    //edtprimeira.date := now;
    //edtintervalo.value := 0;

    NxSpinEdit61.Value := 1; //20/08/2020 a pedido do alex

    rznmulta.Value := multaminima;
    rznjuros.Value := jurosminimo;

    try
      cdsTOTAIS.Close;
      cdsTOTAIS.CreateDataSet;
    except
    end;
    cdstotais.open;
    cdstotais.EmptyDataSet;

    frmclientes.uniQClientesOperacoes.First;

    while not frmclientes.uniQClientesOperacoes.eof do
    begin
      if frmclientes.uniQClientesOperacoes.fieldbyname('CREDOR').ASSTRING = CREDOR_SELECIONADO then
        if (frmclientes.uniQClientesOperacoes.fieldbyname('STATUS').ASSTRING = 'S') or
           (frmclientes.uniQClientesOperacoes.fieldbyname('STATUS').ASSTRING = 'N') then
        begin
          if edtprimeira.Date - frmclientes.uniQClientesOperacoes.fieldbyname('datavencto').asdatetime > 0 then
          begin
            cdsnegociacao.append;

            CDSNEGOCIACAOSTATUS.asstring         := frmclientes.uniQClientesOperacoes.fieldbyname('status').asstring;
            CDSNEGOCIACAONROPERACAO.asstring     := frmclientes.uniQClientesOperacoes.fieldbyname('nroperacao').asstring;
            CDSNEGOCIACAOOPERACAONOVA.asstring   := frmclientes.uniQClientesOperacoes.fieldbyname('operacaonova').asstring;
            CDSNEGOCIACAODATAVENCTO.asdatetime   := frmclientes.uniQClientesOperacoes.fieldbyname('datavencto').asdatetime;
            CDSNEGOCIACAOVALORNOMINAL.asfloat    := frmclientes.uniQClientesOperacoes.fieldbyname('valornominal').asfloat;
            CDSNEGOCIACAOVALORMINIMO.asfloat     := frmclientes.uniQClientesOperacoes.fieldbyname('valorminimo').asfloat;
            CDSNEGOCIACAOVALORMULTA.asfloat      := frmclientes.uniQClientesOperacoes.fieldbyname('valormulta').asfloat;
            CDSNEGOCIACAOVALORJURO.asfloat       := frmclientes.uniQClientesOperacoes.fieldbyname('valorjuro').asfloat;
            CDSNEGOCIACAOVALORHONORARIO.asfloat  := frmclientes.uniQClientesOperacoes.fieldbyname('valorhonorario').asfloat;
            CDSNEGOCIACAOVALORVENCIDO.asfloat    := frmclientes.uniQClientesOperacoes.fieldbyname('valorvencido').asfloat;
            CDSNEGOCIACAOVALORABATIMENTO.asfloat := frmclientes.uniQClientesOperacoes.fieldbyname('valorabatimento').asfloat;
            CDSNEGOCIACAOVALORDIVIDA.asfloat     := frmclientes.uniQClientesOperacoes.fieldbyname('valordivida').asfloat;
            CDSNEGOCIACAOREGISTRO.asfloat        := frmclientes.uniQClientesOperacoes.fieldbyname('REGISTRO').asfloat;
            CDSNEGOCIACAOCOD_CREDOR.AsInteger    := frmclientes.uniQClientesOperacoes.fieldbyname('cod_credor').AsInteger;
            CDSNEGOCIACAOCHECK_TITULO.ASSTRING   := 'True';

            cdsnegociacao.edit;
            cdsnegociacao.post;
          end;
        end;
      frmclientes.uniQClientesOperacoes.next;
    end;
    if CDSNEGOCIACAO.RecordCount = 0 then
    begin
      MessageDlg('Não há dívidas vencidas para negociar. Verifique.',mtInformation,[mbOk],0);
      Exit;
    end;

    CDSNEGOCIACAO.FIRST;

    TOTALDIVIDA   := 0;
    TOTALDESCONTO := 0;
    TOTALMULTA    := 0;
    TOTALJUROS    := 0;
    TOTALNOMINAL  := 0;

    WHILE NOT CDSNEGOCIACAO.EOF DO
    BEGIN
      TOTALDIVIDA   := TOTALDIVIDA + CDSNEGOCIACAOVALORDIVIDA.asfloat;
      TOTALDESCONTO := TOTALDESCONTO + CDSNEGOCIACAOVALORABATIMENTO.asfloat;
      TOTALMULTA    := TOTALMULTA + CDSNEGOCIACAOVALORMULTA.asfloat;
      TOTALJUROS    := TOTALJUROS + CDSNEGOCIACAOVALORJURO.asfloat;
      TOTALNOMINAL  := TOTALNOMINAL + CDSNEGOCIACAOVALORNOMINAL.asfloat;

      CDSNEGOCIACAO.NEXT;
    END;

    cdstotais.insert;
    cdstotaisTOTALDIVIDA.value := TOTALDIVIDA;
    cdstotaisTOTALDESCONTO.value := TOTALDESCONTO;
    cdstotaisTOTALMULTA.value := TOTALMULTA;
    cdstotaisTOTALJURO.value := TOTALJUROS;
    cdstotaisTOTALNOMINAL.value := TOTALNOMINAL;
    cdstotais.post;

    uniqcredores.close;

    frmclientesnegociacao.RzToolButton4Click(Sender);
end;

procedure Tfrmclientesnegociacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
try
  cdsnegociacao.CLOSE;
  cdstotais.CLOSE;
  cdsparcelas.CLOSE;
  alterainsere := '';
except end;
end;

procedure Tfrmclientesnegociacao.FormShow(Sender: TObject);
begin
  GetBancos;
end;

procedure Tfrmclientesnegociacao.GetBancos;
begin
  with QBanco do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT                          ');
    SQL.Add('  bd.codigo,                    ');
    SQL.Add('  CONCAT(                       ');
    SQL.Add('    "BANCO: ",                  ');
    SQL.Add('    b.numero,                   ');
    SQL.Add('    "-",                        ');
    SQL.Add('    b.descricao,                ');
    SQL.Add('    " AG: ",                    ');
    SQL.Add('    bd.AGENCIA,                 ');
    SQL.Add('    " C/C: ",                   ');
    SQL.Add('    bd.CONTA,                   ');
    SQL.Add('    " CORRENTISTA: ",           ');
    SQL.Add('    bd.CONTA_NOME_CORRENTISTA   ');
    SQL.Add('  ) AS banco                    ');
    SQL.Add('FROM                            ');
    SQL.Add('  bancos_dados_bancarios bd     ');
    SQL.Add('  INNER JOIN banco b            ');
    SQL.Add('    ON b.codigo = bd.COD_BANCO  ');
    SQL.Add('ORDER BY b.descricao            ');
    Open;
  end;

  QBanco.First;
  cbxBanco.Items.Clear;
  while not QBanco.Eof do
  begin
    cbxBanco.Items.AddObject(QBanco.FieldByName('banco').AsString,TObject(QBanco.FieldByName('codigo').AsInteger));
    QBanco.Next;
  end;
  cbxBanco.ItemIndex := 0;
end;

procedure Tfrmclientesnegociacao.NxSpinEdit61Exit(Sender: TObject);
begin
  RzToolButton4.Click;
//  if nxspinedit61.value > MAXIMOPARCELAS_VALOR then
//    nxspinedit61.value := MAXIMOPARCELAS_VALOR;
end;

procedure Tfrmclientesnegociacao.RzEditPrimeiraExit(Sender: TObject);
begin
  RzToolButton4.Click;
end;

procedure Tfrmclientesnegociacao.RZNDESCOExit(Sender: TObject);
begin
  if rzndesco.value < descontomaximo then
    rzndesco.value := 0;
end;

procedure Tfrmclientesnegociacao.rzndescoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY = VK_RETURN THEN frmclientesnegociacao.RzToolButton4Click(Sender);
end;

procedure Tfrmclientesnegociacao.RZNDESCOKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if rzndesco.text = '' then
  begin
    rzndesco.text := '0';
    rzndesco.setfocus;
    rzndesco.selectall;
  end;
end;

procedure Tfrmclientesnegociacao.RZNJUROSExit(Sender: TObject);
begin
  if rznjuros.value < jurosminimo then
    rznjuros.value := jurosminimo;
end;

procedure Tfrmclientesnegociacao.rznjurosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF KEY = VK_RETURN THEN
    frmclientesnegociacao.RzToolButton4Click(Sender);
end;

procedure Tfrmclientesnegociacao.RZNMULTAExit(Sender: TObject);
begin
  if rznmulta.value < multaminima then
    rznmulta.value := multaminima;
end;

procedure Tfrmclientesnegociacao.rznmultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF KEY = VK_RETURN THEN frmclientesnegociacao.RzToolButton4Click(Sender);
end;

procedure Tfrmclientesnegociacao.RzToolButton1Click(Sender: TObject);
var
  valor_proposta_cliente, desconto_proposta_cliente, TOTALDIVIDA,
  fator, multa_juros,TOTALDESCONTO,TOTALMULTA,
  TOTALJUROS,TOTALNOMINAL, diferenca, valor_possivel, juros_proposta_cliente : double;
begin
try
  valor_proposta_cliente := RzNumericEdit1.Value;

    CDSNEGOCIACAO.FIRST;

    TOTALDIVIDA   := 0;
    TOTALDESCONTO := 0;
    TOTALMULTA    := 0;
    TOTALJUROS    := 0;
    TOTALNOMINAL  := 0;

    WHILE NOT CDSNEGOCIACAO.EOF DO
    BEGIN
      if cdsnegociacaocheck_titulo.asstring = 'True' then begin
        TOTALDESCONTO := TOTALDESCONTO + CDSNEGOCIACAOVALORABATIMENTO.asfloat;
        TOTALMULTA    := TOTALMULTA + CDSNEGOCIACAOVALORMULTA.asfloat;
        TOTALJUROS    := TOTALJUROS + CDSNEGOCIACAOVALORJURO.asfloat;
        TOTALNOMINAL  := TOTALNOMINAL + CDSNEGOCIACAOVALORNOMINAL.asfloat;
      end;
      CDSNEGOCIACAO.NEXT;
    END;

  if LABEL28.CAPTION = 'Sobre Juros + Multa' then begin
    TOTALDIVIDA := TOTALNOMINAL + TOTALMULTA + TOTALJUROS;
    desconto_proposta_cliente := roundto((TOTALDIVIDA - valor_proposta_cliente)/totaldivida*100,-2);
  end;

  if LABEL28.CAPTION = 'Sobre Total' then begin
    TOTALDIVIDA := TOTALNOMINAL + TOTALMULTA + TOTALJUROS;
    desconto_proposta_cliente := roundto(100-((valor_proposta_cliente)/TOTALDIVIDA*100),-2);
  end;

  showmessage('Cliente_Propõe: ' + floattostr(desconto_proposta_cliente) + '% :: Desc_Máx: ' + floattostr(descontomaximo) + '% :: Vr Mín: R$ ' + floattostr(roundto(TOTALDIVIDA-(TOTALDIVIDA*descontomaximo/100),-2)));

except end;
end;

procedure Tfrmclientesnegociacao.RzToolButton2Click(Sender: TObject);
begin
  frmDataModule.UniConnection1.RollBack;
  close;
end;

procedure Tfrmclientesnegociacao.RzToolButton4Click(Sender: TObject);
var
  count, i, nparcelas: integer;
  primeira_parcela, vencimento, data_inc: tdatetime;
  TOTALDIVIDA,
  TOTALPARCELAS,
  TOTALDESCONTO,
  TOTALMULTA,
  TOTALJUROS,
  TOTALNOMINAL,
  intervalo,
  VALOR_PARCELA,
  CHECA_PARCELA,
  DIFERENCA_CENTAVOS : double;
  VALOR_PRIMEIRA,
  VALOR_SALDO: Currency;

  //renan
  vValorTotal,
  vValorJuros,
  vValorDescontos,
  vTotalParc,
  vTotalDiv,
  vTotalMulta,
  vTotalJuros,
  vTotalDescontos : double;

  vDiferenca : double;
begin
  pChamaAdmin := False;

  if (NxSpinEdit61.Value = 1) and (RzEditPrimeira.Value > 0) then
    RzEditPrimeira.Value := 0;

  IF MAXIMODIASPARCELAMENTO_VALOR > 0 THEN
  begin
    if edtprimeira.date > now + MAXIMODIASPARCELAMENTO_VALOR then
    begin
      pChamaAdmin := True;
      //showmessage('Data da primeira parcela incorreta.');
      //edtprimeira.date := now;
      //exit;
    end
  end;

  if edtintervalo.value > 30 then
  begin
    showmessage('O número de dias entre parcelas não é permitido.');
    edtintervalo.clear;
    edtintervalo.value := 30;
    edtintervalo.setfocus;
    exit;
  end;

  IF MAXIMOPARCELAS_VALOR = 0 THEN
    MAXIMOPARCELAS_VALOR := 1;

  if nxspinedit61.value > MAXIMOPARCELAS_VALOR then
  begin
    pChamaAdmin := True;
//    showmessage('O número de parcelas não é permitido para este credor.');
//    nxspinedit61.clear;
//    nxspinedit61.value := MAXIMOPARCELAS_VALOR;
//    nxspinedit61.setfocus;
//    exit;
  end;

  if rznmulta.value < multaminima then
  begin
    showmessage('Multa abaixo do mínimo.');
    rznmulta.clear;
    rznmulta.value := 0;
    rznmulta.setfocus;
    exit;
  end;

  if rznjuros.value < jurosminimo then
  begin
    showmessage('Juro abaixo do mínimo.');
    rznjuros.clear;
    rznjuros.value := 0;
    rznjuros.setfocus;
    exit;
  end;

  if frmMenu.USUARIOLOGADO_NIVEL <> 'M' then
  begin
    if rzndesco.value > descontomaximo then
    begin
      if MessageDlg('Desconto acima do máximo. Deseja continuar mesmo assim?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      begin
        rzndesco.clear;
        rzndesco.value := 0;
        rzndesco.setfocus;
        rzndesco.selectall;
        exit;
      end
      else
      begin
        pChamaAdmin := True;


//        Application.CreateForm(TfrmSenhaMaster, frmSenhaMaster);
//        frmSenhaMaster.ShowModal;
//        frmSenhaMaster.Free;
//        if not frmSenhaMaster.vLiberaAcesso then
//        begin
//          MessageDlg('Senha incorreta. Desconto não concedido.',mtError,[mbOk],0);
//          RZNDESCO.Value := 0;
//          Exit;
//        end;
      end;
    end;
  end;

  CDSNEGOCIACAO.first;
  primeira_parcela := edtprimeira.Date;
  data_inc := primeira_parcela;

  vValorTotal := 0;
  vValorJuros := 0;
  vValorDescontos := 0;
  vDescontos := 0;
  vTotalParc := 0;
  vTotalDiv := 0;
  vTotalMulta := 0;
  vTotalJuros := 0;
  vTotalDescontos := 0;


  //no caso de desconto sobre juros e multa
  if TIPO_DESCONTO = 'Sobre Juros + Multa' THEN
  while not CDSNEGOCIACAO.eof do
  begin
    cdsnegociacao.edit;
    CDSNEGOCIACAODIAS_ATRASO.asfloat     := primeira_parcela - CDSNEGOCIACAO.fieldbyname('datavencto').asdatetime;
    if rznjuros.Value > 0 then
      CDSNEGOCIACAOPERC_JUROS.asfloat      := ROUNDTO(strtofloat(rznjuros.text) / 30,-4)
    else
      CDSNEGOCIACAOPERC_JUROS.asfloat      := 0;
    CDSNEGOCIACAOVALORMULTA.asfloat      := roundto(CDSNEGOCIACAO.fieldbyname('valornominal').asfloat * strtofloat(rznmulta.text) / 100,-2);
    CDSNEGOCIACAOVALORJURO.asfloat       := roundto(CDSNEGOCIACAO.fieldbyname('valornominal').asfloat *
                                            CDSNEGOCIACAOPERC_JUROS.asfloat * CDSNEGOCIACAODIAS_ATRASO.asfloat / 100,-2);
    CDSNEGOCIACAOVALORVENCIDO.asfloat    := roundto(CDSNEGOCIACAO.fieldbyname('valornominal').asfloat +
                                            CDSNEGOCIACAO.fieldbyname('valorjuro').asfloat + CDSNEGOCIACAO.fieldbyname('valormulta').asfloat,-2);
    if RZNDESCO.Value > 0 then
      CDSNEGOCIACAOVALORABATIMENTO.asfloat := roundto((CDSNEGOCIACAO.fieldbyname('valorjuro').asfloat +
                                                       CDSNEGOCIACAO.fieldbyname('valormulta').asfloat) *
                                                       strtofloat(rzndesco.text) / 100,-2) + RzNumericEdit1.Value
    else
      CDSNEGOCIACAOVALORABATIMENTO.asfloat := 0;

    CDSNEGOCIACAOVALORDIVIDA.asfloat     := roundto(CDSNEGOCIACAO.fieldbyname('valornominal').asfloat +
                                                    CDSNEGOCIACAO.fieldbyname('valorjuro').asfloat + CDSNEGOCIACAO.fieldbyname('valormulta').asfloat - CDSNEGOCIACAO.fieldbyname('valorabatimento').asfloat,-2);

    if cdsnegociacaocheck_titulo.asstring = 'True' then
    begin
      //vValorTotal := vValorTotal + roundto(CDSNEGOCIACAO.fieldbyname('valornominal').asfloat - CDSNEGOCIACAOVALORABATIMENTO.asfloat, -2) ;
      vValorTotal := vValorTotal + roundto(CDSNEGOCIACAO.fieldbyname('valornominal').asfloat, -2) ;
      vValorJuros := vValorJuros + CDSNEGOCIACAOVALORJURO.asfloat;
      vTotalDiv := vTotalDiv + roundto(CDSNEGOCIACAO.fieldbyname('valornominal').asfloat - CDSNEGOCIACAOVALORABATIMENTO.asfloat, -2);
      vValorDescontos := vValorDescontos + roundto(CDSNEGOCIACAOVALORABATIMENTO.asfloat, -2);
      //vTotalMulta := vTotalMulta + CDSNEGOCIACAOVALORMULTA.asfloat;
    end;
    cdsnegociacao.post;
    cdsnegociacao.next;
  END;
  //fim no caso de desconto sobre juros e multa

  //no caso de desconto sobre juros e multa
  if TIPO_DESCONTO = 'Sobre Total' THEN
  while not CDSNEGOCIACAO.eof do
  begin
    cdsnegociacao.edit;
    CDSNEGOCIACAODIAS_ATRASO.asfloat     := primeira_parcela - CDSNEGOCIACAO.fieldbyname('datavencto').asdatetime;
    CDSNEGOCIACAOPERC_JUROS.asfloat      := ROUNDTO(strtofloat(rznjuros.text) / 30,-4);
    CDSNEGOCIACAOVALORMULTA.asfloat      := roundto(CDSNEGOCIACAO.fieldbyname('valornominal').asfloat * strtofloat(rznmulta.text) / 100,-2);
    CDSNEGOCIACAOVALORJURO.asfloat       := roundto(CDSNEGOCIACAO.fieldbyname('valornominal').asfloat * CDSNEGOCIACAOPERC_JUROS.asfloat * CDSNEGOCIACAODIAS_ATRASO.asfloat / 100,-2);
    CDSNEGOCIACAOVALORVENCIDO.asfloat    := roundto(CDSNEGOCIACAO.fieldbyname('valornominal').asfloat + CDSNEGOCIACAO.fieldbyname('valorjuro').asfloat + CDSNEGOCIACAO.fieldbyname('valormulta').asfloat,-2);
    CDSNEGOCIACAOVALORABATIMENTO.asfloat := roundto(CDSNEGOCIACAOVALORVENCIDO.asfloat * strtofloat(rzndesco.text) / 100,-2) - RzNumericEdit1.Value;
    CDSNEGOCIACAOVALORDIVIDA.asfloat     := roundto(CDSNEGOCIACAO.fieldbyname('valornominal').asfloat + CDSNEGOCIACAO.fieldbyname('valorjuro').asfloat + CDSNEGOCIACAO.fieldbyname('valormulta').asfloat - CDSNEGOCIACAO.fieldbyname('valorabatimento').asfloat,-2);

    if cdsnegociacaocheck_titulo.asstring = 'True' then
    begin
      //vValorTotal := vValorTotal + roundto(CDSNEGOCIACAO.fieldbyname('valornominal').asfloat - CDSNEGOCIACAOVALORABATIMENTO.asfloat, -2);
      vValorTotal := vValorTotal + roundto(CDSNEGOCIACAO.fieldbyname('valornominal').asfloat, -2) ;
      vValorJuros := vValorJuros + CDSNEGOCIACAOVALORJURO.asfloat;
      vTotalDiv := vTotalDiv + roundto(CDSNEGOCIACAO.fieldbyname('valornominal').asfloat - CDSNEGOCIACAOVALORABATIMENTO.asfloat, -2);
      vValorDescontos := vValorDescontos + roundto(CDSNEGOCIACAOVALORABATIMENTO.asfloat, -2);
      //vTotalMulta := vTotalMulta + CDSNEGOCIACAOVALORMULTA.asfloat;
    end;
    cdsnegociacao.post;
    cdsnegociacao.next;
  END;
  //fim no caso de desconto sobre juros e multa



    Try
      cdstotais.Close;
      cdstotais.CreateDataSet;
    except
    end;
    cdstotais.open;
    cdstotais.EmptyDataSet;

    CDSNEGOCIACAO.FIRST;

    TOTALDIVIDA   := 0;
    TOTALDESCONTO := 0;
    TOTALMULTA    := 0;
    TOTALJUROS    := 0;
    TOTALNOMINAL  := 0;

    while not CDSNEGOCIACAO.EOF do
    begin
      if cdsnegociacaocheck_titulo.asstring = 'True' then
      begin
        TOTALDIVIDA   := TOTALDIVIDA + CDSNEGOCIACAOVALORDIVIDA.asfloat;
        TOTALDESCONTO := TOTALDESCONTO + CDSNEGOCIACAOVALORABATIMENTO.asfloat;
        TOTALMULTA    := TOTALMULTA + CDSNEGOCIACAOVALORMULTA.asfloat;
        TOTALJUROS    := TOTALJUROS + CDSNEGOCIACAOVALORJURO.asfloat;
        TOTALNOMINAL  := TOTALNOMINAL + CDSNEGOCIACAOVALORNOMINAL.asfloat;
      end;
      CDSNEGOCIACAO.NEXT;
    end;

    cdstotais.insert;
    cdstotaisTOTALDIVIDA.value := TOTALDIVIDA;
    cdstotaisTOTALDESCONTO.value := TOTALDESCONTO;
    cdstotaisTOTALMULTA.value := TOTALMULTA;
    cdstotaisTOTALJURO.value := TOTALJUROS;
    cdstotaisTOTALNOMINAL.value := TOTALNOMINAL;
    cdstotais.post;

    if rzeditprimeira.value > TOTALDIVIDA then begin
      showmessage('Valor da parcela é maior que o total da dívida');
//      rzeditprimeira.clear;
//      rzeditprimeira.value := 0;
//      rzeditprimeira.setfocus;
//      exit;
    end;

    Try
      cdsparcelas.Close;
      cdsparcelas.CreateDataSet;
    except
    end;

    count := 0;

    nparcelas := strtoint(NxSpinEdit61.Text);

    cdsparcelas.open;
    cdsparcelas.EmptyDataSet;
    vencimento := edtprimeira.date;
    intervalo := edtintervalo.Value;
    VALOR_PRIMEIRA := 0;
    VALOR_SALDO := 0;
    VALOR_PARCELA := 0;

      VALOR_SALDO := cdstotaistotaldivida.value;

//    IF RzEditPrimeira.Value = 0 THEN
//    begin
//      //VALOR_PRIMEIRA := roundto(cdstotaistotaldivida.value/nparcelas,-2);
//      IF VALOR_PRIMEIRA < VALORMINIMOPORPARCELA THEN
//      BEGIN
//        pChamaAdmin := True;
////        SHOWMESSAGE('Valor mínimo das parcelas não permitido. (ln676)');
////        nparcelas := 1;
//      END;
//    end
//    else
//    begin
//      VALOR_PRIMEIRA := RzEditPrimeira.Value;
//      IF VALOR_PRIMEIRA < VALORMINIMOPORPARCELA THEN
//      BEGIN
//        pChamaAdmin := True;
////        SHOWMESSAGE('Valor mínimo das parcelas não permitido. (ln682)');
////        RzEditPrimeira.Value := VALOR_SALDO;
////        VALOR_PRIMEIRA := cdstotaistotaldivida.value;
////        nparcelas := 1;
//      END;
//    end;

    vJuros := 0;
    vJurosProporcional := 0;

    if nparcelas = 1 then
      vValorTotal := TOTALNOMINAL;

    IF RzEditPrimeira.Value = 0 THEN
      VALOR_PRIMEIRA := vValorTotal / (nparcelas)
    else
      VALOR_PRIMEIRA := RzEditPrimeira.Value;

    VALOR_SALDO := VALOR_SALDO - VALOR_PRIMEIRA;

    if nparcelas > 1 then
      vValorTotal := vValorTotal - VALOR_PRIMEIRA;

    //vValorTotal := VALOR_SALDO - VALOR_PRIMEIRA;


    if nparcelas = 1 then
    begin
      VALOR_PARCELA := vValorTotal / (nparcelas);
      if CDSNEGOCIACAOVALORJURO.asfloat > 0 then
        vJuros := vValorJuros / nparcelas;
      if TOTALMULTA > 0 then
        vMulta := TOTALMULTA / nparcelas;
      if TOTALDESCONTO > 0 then
        vDescontos := TOTALDESCONTO / nparcelas;
    end;
    if nparcelas > 1 then
    begin
      VALOR_PARCELA := vValorTotal / (nparcelas-1);
      if CDSNEGOCIACAOVALORJURO.asfloat > 0 then
        if RzEditPrimeira.Value > 0 then
          vJuros := vValorJuros / (nparcelas - 1)
        else
          vJuros := vValorJuros / nparcelas;
      if TOTALMULTA > 0 then
        if RzEditPrimeira.Value > 0 then
          vMulta := TOTALMULTA / (nparcelas - 1)
        else
          vMulta := TOTALMULTA / nparcelas;
      if TOTALDESCONTO > 0 then
        if RzEditPrimeira.Value > 0 then
          vDescontos := TOTALDESCONTO / (nparcelas - 1)
        else
          vDescontos := TOTALDESCONTO / nparcelas;
    end;


    //if VALOR_PARCELA < VALORMINIMOPORPARCELA then
    //if CDSNEGOCIACAO.fieldbyname('valornominal').asfloat < VALORMINIMOPORPARCELA then
    if TOTALDIVIDA < VALORMINIMOPORPARCELA then
    begin
      MessageDlg('O valor da parcela não é permitido para este credor. Verifique.',mtInformation,[mbOk],0);
      Abort;
    end;

    IF VALOR_SALDO = 0 THEN
      CHECA_PARCELA := VALOR_PRIMEIRA
    ELSE
      CHECA_PARCELA := VALOR_PARCELA;

    //se o intervalo for igual a 0 dias (mês a mês)
    if edtintervalo.value = 0 then
    begin
      for i := 1 to nparcelas do
      begin
        cdsparcelas.append;
        count := count + 1;
        if i = 1 then
        begin
          data_inc := vencimento;
          //if VALOR_PRIMEIRA > 0 then
          if RzEditPrimeira.Value > 0 then
          begin
            cdsparcelasvalor.asfloat := roundto(VALOR_PRIMEIRA,-2);
            cdsparcelasjuros.asfloat := 0;
            cdsparcelasMULTA.AsFloat := 0;
            cdsparcelastotal.asfloat := roundto(VALOR_PRIMEIRA,-2);
            vTotalParc := vTotalParc + cdsparcelasvalor.asfloat;
            //vTotalMulta := vTotalMulta + roundto(vMulta, -2); //cdsparcelasMULTA.AsFloat;
          end
          else
          begin
            cdsparcelasvalor.asfloat := roundto(VALOR_PARCELA,-2);// - vJuros;

            if (vJuros > 0) then
              cdsparcelasjuros.asfloat := roundto(vJuros, -2);

            if vMulta > 0 then
              cdsparcelasMULTA.AsFloat := roundto(vMulta, -2);

            if vDescontos > 0 then
              cdsparcelasDESCONTOS.AsFloat := roundto(vDescontos, -2);

            cdsparcelasTOTAL.asfloat           := roundto((cdsparcelasVALOR.asfloat + vJuros + vMulta) - vDescontos, -2);// + cdsparcelasjuros.asfloat,-2);
            vTotalParc := vTotalParc + cdsparcelasvalor.asfloat;
          end
        end
        else
        begin
          data_inc := IncMonth(vencimento, i-1);
          cdsparcelasvalor.asfloat := roundto(VALOR_PARCELA,-2);// - vJuros;

          if (vJuros > 0) then
            cdsparcelasjuros.asfloat := roundto(vJuros, -2);

          if vMulta > 0 then
            cdsparcelasMULTA.AsFloat := roundto(vMulta, -2);

          if vDescontos > 0 then
            cdsparcelasDESCONTOS.AsFloat := roundto(vDescontos, -2);

          cdsparcelasTOTAL.asfloat           := roundto((cdsparcelasVALOR.asfloat + vJuros + vMulta) - vDescontos, -2);// + cdsparcelasjuros.asfloat,-2);
          vTotalParc := vTotalParc + cdsparcelasvalor.asfloat;
//          vTotalMulta := vTotalMulta + vMulta;
//          vTotalJuros := vTotalJuros + vJuros;
        end;
        cdsparcelasparcela.asfloat         := count;
        cdsparcelasdatavencto.asdatetime   := data_inc;
        if cdsparcelasvalor.asfloat > 0 then
          cdsparcelas.post;
      end;
    end;
    //fim se o intervalo for igual a 0 dias (mês a mês)

    //se o intervalo diferente de 0 dias (mês a mês)
    if edtintervalo.value > 0 then
    begin
      for i := 1 to nparcelas do
      begin
        cdsparcelas.append;
        count := count + 1;
        if i = 1 then
        begin
          vencimento := vencimento;
          cdsparcelasvalor.asfloat := roundto(VALOR_PRIMEIRA,-2);
        end
        else
        begin
          vencimento := vencimento + intervalo;
          cdsparcelasvalor.asfloat := roundto(VALOR_PARCELA,-2);
        end;

        cdsparcelasparcela.asfloat         := count;
        cdsparcelasdatavencto.asdatetime   := vencimento;

        if (vJuros > 0) then
          cdsparcelasjuros.asfloat := roundto(vJuros, -2);

        if vMulta > 0 then
          cdsparcelasMULTA.AsFloat := roundto(vMulta, -2);

        if vDescontos > 0 then
          cdsparcelasDESCONTOS.AsFloat := roundto(vDescontos, -2);

        cdsparcelasTOTAL.asfloat           := roundto((cdsparcelasVALOR.asfloat + vJuros + vMulta) - vDescontos, -2);// + cdsparcelasjuros.asfloat,-2);
        vTotalParc := vTotalParc + cdsparcelasvalor.asfloat;


//        cdsparcelasjuros.asfloat           := roundto(cdsparcelasvalor.asfloat * strtofloat(DBAdvLUEdit8.text)/100,-2);
//        cdsparcelasMULTA.AsFloat           := vMulta;
//        cdsparcelastotal.asfloat           := roundto(cdsparcelasvalor.asfloat + cdsparcelasjuros.asfloat,-2);
        if cdsparcelasvalor.asfloat > 0 then
          cdsparcelas.post;
      end;
    end;

    // ver se tem centavos sobrando
    TOTALPARCELAS := cdsparcelasTOTALTOTAL.Value;
    //TOTALPARCELAS := cdsparcelastotalalor.Value;
    vTotalMulta := cdsparcelastotalmulta.Value;
    vTotalJuros := cdsparcelastotalljuros.Value;
    if vDescontos > 0 then
      vTotalDescontos := cdsparcelastotaldescontos.Value;

    cdsparcelas.LAST;
    cdsparcelas.EDIT;
    if totalparcelas <> totaldivida then
    begin
      DIFERENCA_CENTAVOS := totaldivida - totalparcelas;
      cdsparcelastotal.asfloat := roundto(cdsparcelastotal.asfloat + DIFERENCA_CENTAVOS,-2);
    end;

    if vTotalParc <> TOTALNOMINAL then //cdsparcelastotalalor.Value then //vTotalDiv then
    begin
      //DIFERENCA_CENTAVOS := vTotalDiv - vTotalParc;
      DIFERENCA_CENTAVOS := TOTALNOMINAL - vTotalParc;
      cdsparcelasVALOR.asfloat := roundto(cdsparcelasVALOR.asfloat + DIFERENCA_CENTAVOS,-2);
    end;

    if vTotalJuros <> TOTALJUROS then
    begin
      DIFERENCA_CENTAVOS := TOTALJUROS - vTotalJuros;
      cdsparcelasJUROS.asfloat := roundto(cdsparcelasJUROS.asfloat + DIFERENCA_CENTAVOS,-2);
    end;

    if vTotalMulta <> TOTALMULTA then
    begin
      DIFERENCA_CENTAVOS := TOTALMULTA - vTotalMulta;
      cdsparcelasMULTA.asfloat := roundto(cdsparcelasMULTA.asfloat + DIFERENCA_CENTAVOS,-2);
    end;

    if vTotalDescontos <> TOTALDESCONTO then
    begin
      DIFERENCA_CENTAVOS := TOTALDESCONTO - vTotalDescontos;
      cdsparcelasDESCONTOS.asfloat := roundto(cdsparcelasDESCONTOS.asfloat + DIFERENCA_CENTAVOS,-2);
    end;
    cdsparcelas.POST;
    cdsparcelas.FIRST;


    // fim ver se tem centavos sobrando
    //fim se o intervalo diferente de 0 dias (mês a mês)
end;

procedure Tfrmclientesnegociacao.RzToolButton8Click(Sender: TObject);
var
  count, I, seq_PARCELAS, seq_operacoes, codigo_cliente,
  seq_operacoes_codigo: Integer;
  var_noperacao, quantidade_registros, var_credor, evento_parcelas, PRINCIPAL,
  NROPERACAOPRINCIPAL, NRACORDOANTERIOR, PARCELAS_EVENTO_ANTIGAS, PARCELAS_EVENTO_NOVAS: string;
  ultimadata : TDate;
  vNumParcela : integer;
  vValorDif,
  vValorParc,
  vValorOriginal : double;
begin
//arrumar aqui depois (renan 02/03/2020)
//IF DBTEXT6.Caption <> DBTEXT9.Caption THEN BEGIN
//  SHOWMESSAGE('Verifique os valores.');
//  EXIT;
//END;
  vNumParcela := 1;

IF cdsparcelas.RECORDCOUNT < 1 THEN begin
  SHOWMESSAGE('Verifique a quantidade de parcelas.');
  EXIT;
end;

PRINCIPAL := 'SIM';
count := 0;

  if pChamaAdmin then
  begin
    Application.CreateForm(TfrmSenhaMaster, frmSenhaMaster);
    frmSenhaMaster.ShowModal;
    frmSenhaMaster.Free;
    if not frmSenhaMaster.vLiberaAcesso then
    begin
      MessageDlg('Senha incorreta. Operação não realizada',mtError,[mbOk],0);
      RZNDESCO.Value := 0;
      Exit;
    end;
  end;

  vValorParc := CDSTOTAISTOTALNOMINAL.AsFloat / cdsparcelas.RecordCount;
  vValorDif := CDSTOTAISTOTALNOMINAL.AsFloat - (vValorParc * cdsparcelas.RecordCount);

  vValorOriginal := cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1];

 if MessageDlg('Deseja gravar o acordo?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
 begin
   //verifico o valor da divida para calcular o centavo

  cdsparcelas.last;
  ultimadata := cdsparcelas.FIELDBYNAME('DATAVENCTO').AsDateTime;
  cdsparcelas.FIRST;

  WHILE NOT cdsparcelas.EOF DO BEGIN
  //INSERE NOVA OPERAÇÃO <<PRINCIPAL>>
    IF PRINCIPAL = 'SIM' THEN
    BEGIN
//      unigetid.close;
//      unigetid.sql.text := 'SELECT SEQ_OPERACOES.nextval as Sequences FROM DUAL';
//      unigetid.open;
      seq_OPERACOES := GetID('registro','operacoes'); //unigetid.FieldByName('Sequences').Value;
      unigetid.close;

      uniscript.close;
      uniscript.SQL.Text := 'insert into OPERACOES (CLIENTE, DATAVENCTO, NROPERACAO, OPERACAONOVA, STATUS, VALORNOMINAL,' +
                            'VALORMULTA, VALORJURO, VALORABATIMENTO, VALORDIVIDA, ' +
                            'PERC_DESCONTO, PERC_JUROS, PERC_MULTA,' +
                            'TIPOOPERACAO, DTA_CAD, USR_CAD, REGISTRO, CREDOR, CONDNEGOCIAIS) values (' +
                            ':pCLIENTE, :pDATAVENCTO, :pNROPERACAO, :pOPERACAONOVA, :pSTATUS, :pVALORNOMINAL,' +
                            ':pVALORMULTA, :pVALORJURO, :pVALORABATIMENTO, :pVALORDIVIDA, ' +
                            ':pPERC_DESCONTO, :pPERC_JUROS, :pPERC_MULTA,' +
                            ':pTIPOOPERACAO, :pDTA_CAD, :pUSR_CAD, :pREGISTRO, :pCREDOR, :pCONDNEGOCIAIS)';
                             uniscript.parambyname('pCLIENTE').AsString := frmclientes.uniQClientesOperacoes.fieldbyname('CLIENTE').AsString;
                             uniscript.parambyname('pDATAVENCTO').AsDateTime := cdsparcelasDATAVENCTO.AsDateTime;
                             uniscript.parambyname('pNROPERACAO').AsString := 'N' + inttostr(seq_OPERACOES);
                             uniscript.parambyname('pOPERACAONOVA').AsString := 'N' + inttostr(seq_OPERACOES);
                             uniscript.parambyname('pSTATUS').AsString := 'N';
                             uniscript.parambyname('pPERC_DESCONTO').AsFloat := RZNDESCO.VALUE;
                             uniscript.parambyname('pPERC_JUROS').AsFloat := RZNJUROS.VALUE;
                             uniscript.parambyname('pPERC_MULTA').AsFloat := RZNMULTA.VALUE;
                             //uniscript.parambyname('pVALORNOMINAL').AsFloat := ROUNDTO(cdsparcelasTOTAL.VALUE,-2);
                             uniscript.parambyname('pVALORNOMINAL').AsFloat := ROUNDTO(cdsparcelas.FIELDBYNAME('VALOR').ASFLOAT,-2); //ROUNDTO(vValorOriginal / cdsparcelas.RecordCount,-2);

                             //uniscript.parambyname('pVALORJURO').AsFloat := ROUNDTO(cdstotaisTOTALJURO.VALUE,-2);
                             uniscript.parambyname('pVALORJURO').AsFloat := ROUNDTO(cdsparcelas.FIELDBYNAME('JUROS').ASFLOAT,-2);

                             uniscript.parambyname('pVALORMULTA').AsFloat :=  ROUNDTO(cdsparcelas.FIELDBYNAME('MULTA').ASFLOAT,-2); //ROUNDTO(cdstotaisTOTALMULTA.VALUE,-2);

                             uniscript.parambyname('pVALORABATIMENTO').AsFloat := ROUNDTO(cdsparcelasDESCONTOS.AsFloat,-2);
                             uniscript.parambyname('pVALORDIVIDA').AsFloat := ROUNDTO(cdsparcelasTOTAL.VALUE,-2);
                             uniscript.parambyname('pTIPOOPERACAO').AsString := 'Renegociada Proposta';
                             uniscript.parambyname('pDTA_CAD').AsString := DATETOSTR(NOW);
                             uniscript.parambyname('pUSR_CAD').AsFloat := strtofloat(FRMMenu.USUARIOLOGADO_CODIGO);
                             uniscript.parambyname('pREGISTRO').AsFloat := seq_OPERACOES;
                             uniscript.parambyname('pCREDOR').AsInteger := CDSNEGOCIACAOCOD_CREDOR.AsInteger; //frmclientes.uniQClientesOperacoes.fieldbyname('credor').AsString;;
                             uniscript.parambyname('pCONDNEGOCIAIS').AsString := 'Operação: ' + FORMATFLOAT(',,,,,,,,,,,,,,0.00',CDSTOTAISTOTALDIVIDA.VALUE) + ' em ' +
                                                                                 inttostr(cdsparcelas.recordcount) + ' parcela(s)';
      uniscript.execsql;
      uniscript.close;

      NROPERACAOPRINCIPAL := 'N' + inttostr(seq_OPERACOES);
      PARCELAS_EVENTO_NOVAS := PARCELAS_EVENTO_NOVAS + ',' + NROPERACAOPRINCIPAL;
      //PRINCIPAL := 'NÃO';
    END;
  //FIM INSERE NOVA OPERAÇÃO <<PRINCIPAL>>

//    unigetid.close;
//    unigetid.sql.text := 'SELECT SEQ_PARCELAS.nextval as Sequences FROM DUAL';
//    unigetid.open;
    seq_PARCELAS := GetID('registro','parcelas'); //unigetid.FieldByName('Sequences').Value;
    //unigetid.close;

    uniscript.close;
    uniscript.SQL.Text := 'insert into parcelas (REGISTRO, CLIENTE, NROPERACAO, OPERACAONOVA,' +
                           'DATAVENCTO, DATAREFERENCIA, STATUS, VALORPREVISTO, VALORJUROS, VALORMULTA,' +
                           'VALORDESCONTO, COBRADOR, VALORHONORARIO, VALORORIGINAL, DATA_MODIF, TIPOPAGAMENTO, ' +
                           'VALORATUALIZADO, NUM_PARCELA, BOL_COD_BANCO) values (' +
                           ':pREGISTRO, :pCLIENTE, :pNROPERACAO, :pOPERACAONOVA,' +
                           ':pDATAVENCTO, :pDATAREFERENCIA, :pSTATUS, :pVALORPREVISTO, :pVALORJUROS, :pVALORMULTA,' +
                           ':pVALORDESCONTO, :pCOBRADOR, :pVALORHONORARIO, :pVALORORIGINAL, :pDATA_MODIF, :pTIPOPAGAMENTO, ' +
                           ':pVALORATUALIZADO, :PNUM_PARCELA, :pBOL_COD_BANCO)';
                           uniscript.parambyname('pregistro').AsFloat := seq_PARCELAS;
                           uniscript.parambyname('pCLIENTE').AsString := frmclientes.uniQClientesOperacoes.fieldbyname('CLIENTE').AsString;
                           uniscript.parambyname('pNROPERACAO').AsString := 'N' + inttostr(seq_OPERACOES);
                           uniscript.parambyname('pOPERACAONOVA').AsString := 'N' + inttostr(seq_OPERACOES);
                           uniscript.parambyname('pDATAVENCTO').AsString := cdsparcelasDATAVENCTO.AsString;
                           uniscript.parambyname('pDATAREFERENCIA').AsString := DATETOSTR(NOW);
                           uniscript.parambyname('pSTATUS').AsString := 'N';
                           uniscript.parambyname('pVALORJUROS').AsFloat := ROUNDTO(cdsparcelas.FIELDBYNAME('JUROS').ASFLOAT,-2);
                           uniscript.parambyname('pVALORPREVISTO').AsFloat := ROUNDTO((cdsparcelas.FIELDBYNAME('VALOR').ASFLOAT +
                                                                                      cdsparcelas.FIELDBYNAME('JUROS').ASFLOAT +
                                                                                      cdsparcelas.FIELDBYNAME('MULTA').ASFLOAT) -
                                                                                      cdsparcelas.FIELDBYNAME('DESCONTOS').AsFloat,-2);
                           uniscript.parambyname('pCOBRADOR').AsFloat := strtofloat(FRMMenu.USUARIOLOGADO_CODIGO);
                           uniscript.parambyname('pVALORORIGINAL').AsFloat := ROUNDTO(cdsparcelas.FIELDBYNAME('VALOR').ASFLOAT,-2);

                           //coloquei este campo pois o desconto é sobre o juros e multa,
                           //então sempre vai mostrar o mesmo valor de desconto em todas as parcelas,
                           //como se cada parcela, recebeu 10% de desconto sobre o juros e multa
                           //uniscript.parambyname('pVALORDESCONTO').AsFloat := RZNDESCO.Value;
                           uniscript.parambyname('pVALORDESCONTO').AsFloat := cdsparcelas.FIELDBYNAME('DESCONTOS').AsFloat;

                           uniscript.parambyname('pVALORMULTA').AsFloat := ROUNDTO(cdsparcelas.FIELDBYNAME('MULTA').ASFLOAT,-2);

                           uniscript.parambyname('pVALORHONORARIO').AsFloat := 0;
                           uniscript.parambyname('pDATA_MODIF').AsString := DATETOSTR(NOW);
                           if ComboBox1.ITEMINDEX = 0 then
                             uniscript.parambyname('pTIPOPAGAMENTO').AsString := '0'
                           else
                             uniscript.parambyname('pTIPOPAGAMENTO').AsString := '1';
                           uniscript.parambyname('pVALORATUALIZADO').AsFloat := ROUNDTO(cdsparcelas.FIELDBYNAME('TOTAL').ASFLOAT,-2);
                           uniscript.parambyname('pNUM_PARCELA').AsString := IntToStr(vNumParcela) + '/' + cdsparcelas.RecordCount.ToString;
                           if ComboBox1.ItemIndex = 0 then
                             uniscript.parambyname('pBOL_COD_BANCO').AsInteger := Integer(cbxBanco.Items.Objects[cbxBanco.ItemIndex])
                           else
                             uniscript.parambyname('pBOL_COD_BANCO').Clear; //vai vir da tabela bancos_dados_bancarios (CODIGO)
    uniscript.execsql;

    evento_parcelas := evento_parcelas + '|' + uniscript.parambyname('pNROPERACAO').AsString;
  //FIM INSERE NOVA OPERAÇÃO

    vNumParcela := vNumParcela + 1;
    cdsparcelas.NEXT;
  END;

  CDSNEGOCIACAO.first;

  while not CDSNEGOCIACAO.eof do begin
    if UPPERCASE(CDSNEGOCIACAOCHECK_TITULO.VALUE) = 'TRUE' then
    begin
      NRACORDOANTERIOR := CDSNEGOCIACAOOPERACAONOVA.asstring;
      PARCELAS_EVENTO_ANTIGAS := PARCELAS_EVENTO_ANTIGAS + ',' + CDSNEGOCIACAONROPERACAO.asstring;

      UNISCRIPT.CLOSE;
      UNISCRIPT.SQL.TEXT := 'UPDATE OPERACOES SET STATUS = ''R'', OPERACAONOVA = :pOPERACAONOVA WHERE REGISTRO = :PREGISTRO';
                            UNISCRIPT.PARAMBYNAME('PREGISTRO').VALUE := CDSNEGOCIACAO.FIELDBYNAME('REGISTRO').VALUE;
                            UNISCRIPT.PARAMBYNAME('POPERACAONOVA').VALUE := NROPERACAOPRINCIPAL;
      UNISCRIPT.EXECSQL;
    end;
    CDSNEGOCIACAO.next;
  end;

  CDSNEGOCIACAO.first;

  //QUEBRA O ACORDO ANTERIOR
  UNISCRIPT.CLOSE;
  UNISCRIPT.SQL.TEXT := 'UPDATE OPERACOES SET STATUS = ''N'' WHERE nroperacao = :PNROPERACAO AND STATUS = ''N''';
                        UNISCRIPT.PARAMBYNAME('PNROPERACAO').VALUE := NRACORDOANTERIOR;
  UNISCRIPT.EXECSQL;

  UNISCRIPT.CLOSE;
  UNISCRIPT.SQL.TEXT := 'UPDATE PARCELAS SET STATUS = ''N'' WHERE nroperacao = :PNROPERACAO';
                        UNISCRIPT.PARAMBYNAME('PNROPERACAO').VALUE := NRACORDOANTERIOR;
  UNISCRIPT.EXECSQL;
  //FIM QUEBRA ACORDO ANTERIOR


  //insere o evento
  frmclientes.UniQEventosCobranca.Open;
  frmclientes.UniQEventosCobranca.Insert;
  frmeventosoperador.DBAdvLUEdit1.Text := datetostr(now) + ' ' + timetostr(now);
  frmeventosoperador.DBAdvLUEdit2.Text := FRMMenu.USUARIOLOGADO_CODIGO;
  frmeventosoperador.DBAdvLUEdit14.Text := frmclientes.uniQClientesOperacoes.fieldbyname('Nroperacao').asstring;
  frmeventosoperador.DBAdvLUEdit4.Text := frmclientescadastro.Edt_CPF.Text;
  frmeventosoperador.dbmemo1.Lines.Add('Operação ' + NROPERACAOPRINCIPAL + ': ' + FORMATFLOAT(',,,,,,,,,,,,,,0.00',CDSTOTAISTOTALDIVIDA.VALUE) + ' em ' + inttostr(cdsparcelas.recordcount) + ' parcela(s).');
  frmeventosoperador.dbmemo1.Lines.Add('Operações Antigas: ' + PARCELAS_EVENTO_ANTIGAS);
  frmeventosoperador.dbmemo1.Lines.Add('Operações Novas: ' + PARCELAS_EVENTO_NOVAS);
  //frmeventosoperador.dbRadiogroup1.itemindex := 0;
  frmclientes.UniQEventosCobranca.fieldbyname('Lista').asstring := 'Acordo';

  if frmeventosoperador.DBAdvLUEdit14.Text = '' then frmeventosoperador.DBAdvLUEdit14.Text := '0';
  frmeventosoperador.DBAdvLUEdit15.Text := '0';

//  unigetid.close;
//  unigetid.sql.text := 'SELECT SEQ_EVENTOSCOBRANCA.nextval as Sequences FROM DUAL';
//  unigetid.open;

  frmeventosoperador.DBEdtRegistro.Text := IntToStr(GetID('codigo','eventoscobranca')); //unigetid.FieldByName('Sequences').AsString;

//  unigetid.close;

  try
    frmclientes.UniQEventosCobranca.eDIT;
    frmclientes.UniQEventosCobrancaCod_Evento.AsString := '42';
    frmclientes.UniQEventosCobranca.post;
  except showmessage('Erro ao gravar. Ln 425'); end;
  //fim insere o evento

  frmDataModule.UniConnection1.Commit;
  CDSNEGOCIACAO.CLOSE;

  Close;
 END;
end;

end.
