unit urelacaotelefonesblacklist;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, 
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RzButton, 
  Vcl.ExtCtrls, AdvUtil, Data.DB, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, 
  DBAdvGrid, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ComCtrls, Datasnap.DBClient, 
  AdvDateTimePicker, sDialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, 
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, 
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.DBX.Migrate,
  tmsAdvGridExcel;

type
  Tfrmrelacaotelefonesblacklist = class(TForm)
    Panel1: TPanel;
    btnfiltrar: TRzToolButton;
    btnexportar: TRzToolButton;
    btnretornar: TRzToolButton;
    btnretirar: TRzToolButton;
    Panel2: TPanel;
    Panel3: TPanel;
    RadioGroup1: TRadioGroup;
    RzToolButton1: TRzToolButton;
    DBAdvGrid1: TDBAdvGrid;
    uniscript: TFDQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    UniDataSource1: TDataSource;
    uniscriptCHECK_SELECAO: TBooleanField;
    uniscriptcombos: TFDQuery;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Button2: TButton;
    Button3: TButton;
    AdvDateTimePicker1: TAdvDateTimePicker;
    AdvDateTimePicker2: TAdvDateTimePicker;
    uniscriptBANCO: TFloatField;
    uniscriptCLIENTE: TFloatField;
    uniscriptNOME: TStringField;
    uniscriptTELEFONE: TStringField;
    uniscriptDATA_VALIDADE: TSQLTimeStampField;
    uniscriptDATA_CADASTRO: TSQLTimeStampField;
    uniscriptCOD_MOTIVO: TFloatField;
    uniscriptDESC_MOTIVO: TStringField;
    lblregistros: TLabel;
    sSaveDialog1: TsSaveDialog;
    AdvGridExcelIO1: TAdvGridExcelIO;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnfiltrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrelacaotelefonesblacklist: Tfrmrelacaotelefonesblacklist;

implementation

{$R *.dfm}

procedure Tfrmrelacaotelefonesblacklist.btnfiltrarClick(Sender: TObject);
var caminho_nome: string;
begin
  if UNISCRIPT.recordcount > 65500 then begin
     showmessage('Não foi possível exportar. Verifique a quantidade de registros, não deve exceder 65500.''Blacklist: 73''');
     exit;
  end;

  if sSaveDialog1.Execute then begin
    frmrelacaotelefonesblacklist.cursor := crhourglass;
    try
      advgridexcelio1.XLSExport(ExtractFilePath(sSaveDialog1.Filename) + ExtractFileName(sSaveDialog1.Filename));
    except
      frmrelacaotelefonesblacklist.cursor := crdefault;
      showmessage('Não foi possível exportar. ''Blacklist: 79''');
      exit;
    end;
    frmrelacaotelefonesblacklist.cursor := crdefault;
    showmessage('Arquivo exportado.');
  end;
end;


procedure Tfrmrelacaotelefonesblacklist.Button2Click(Sender: TObject);
var i: integer;
begin
 for i := 1 to DBAdvGrid1.RowCount - 1 do
    begin
      DBAdvGrid1.SetCheckBoxState(1,i,true);
    end;
end;

procedure Tfrmrelacaotelefonesblacklist.Button3Click(Sender: TObject);
var i: integer;
begin
 for i := 1 to DBAdvGrid1.RowCount - 1 do
    begin
      DBAdvGrid1.SetCheckBoxState(1,i,false);
    end;
end;

procedure Tfrmrelacaotelefonesblacklist.FormActivate(Sender: TObject);
begin
lblregistros.caption := 'Registros: 0';
AdvDateTimePicker2.DATE := NOW;
end;

procedure Tfrmrelacaotelefonesblacklist.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
uniscript.close;
end;

procedure Tfrmrelacaotelefonesblacklist.RzToolButton1Click(Sender: TObject);
  VAR I: INTEGER;
      WHERE1, WHERE2, WHERE3: STRING;
      filtro, filtro1, filtro2, ordem: string;
begin
{  COMBOBOX1.CLEAR;
  COMBOBOX2.CLEAR;
  COMBOBOX3.CLEAR;

  COMBOBOX1.ITEMS.ADD('<<TODOS>>');
  COMBOBOX2.ITEMS.ADD('<<TODOS>>');
  COMBOBOX3.ITEMS.ADD('<<TODOS>>');

  COMBOBOX1.TEXT := '<<TODOS>>';
  COMBOBOX2.TEXT := '<<TODOS>>';
  COMBOBOX3.TEXT := '<<TODOS>>';

  UNISCRIPTCOMBOS.CLOSE;
  UNISCRIPTCOMBOS.SQL.TEXT := 'select nome_grupo from usuario_grupo order by nome_grupo';
  UNISCRIPTCOMBOS.OPEN;
  UNISCRIPTCOMBOS.FIRST;
  WHILE NOT UNISCRIPTCOMBOS.EOF DO BEGIN
    COMBOBOX1.ITEMS.ADD(UNISCRIPTCOMBOS.FIELDBYNAME('NOME_GRUPO').ASSTRING);
    UNISCRIPTCOMBOS.NEXT;
  END;

  UNISCRIPTCOMBOS.CLOSE;
  UNISCRIPTCOMBOS.SQL.TEXT := 'select descricao from motivo_exclusao_telefone order by descricao;';
  UNISCRIPTCOMBOS.OPEN;
  UNISCRIPTCOMBOS.FIRST;
  WHILE NOT UNISCRIPTCOMBOS.EOF DO BEGIN
    COMBOBOX2.ITEMS.ADD(UNISCRIPTCOMBOS.FIELDBYNAME('descricao').ASSTRING);
    UNISCRIPTCOMBOS.NEXT;
  END;

  UNISCRIPTCOMBOS.CLOSE;
  UNISCRIPTCOMBOS.SQL.TEXT := 'select nome from usuarios order by nome';
  UNISCRIPTCOMBOS.OPEN;
  UNISCRIPTCOMBOS.FIRST;
  WHILE NOT UNISCRIPTCOMBOS.EOF DO BEGIN
    COMBOBOX3.ITEMS.ADD(UNISCRIPTCOMBOS.FIELDBYNAME('NOME').ASSTRING);
    UNISCRIPTCOMBOS.NEXT;
  END;

  UNISCRIPTCOMBOS.CLOSE;

  WHERE1 := COMBOBOX1.TEXT;
  IF WHERE1 = '<<TODOS>>' THEN WHERE1 := ''
  WHERE2 := COMBOBOX2.TEXT;
  WHERE3 := COMBOBOX3.TEXT;
}

  frmrelacaotelefonesblacklist.Cursor := crHourGlass;
  sleep(500);

  if radiogroup1.itemindex = 2 then begin
    UNISCRIPT.CLOSE;
    UNISCRIPT.SQL.TEXT := 'select blacklist.banco, blacklist.cliente, clientes.nome, blacklist.telefone, blacklist.datavalidade as DATA_VALIDADE, blacklist.data_cad AS DATA_CADASTRO, ' +
                          '       blacklist.motivo_exclusao_telefone_cod as Cod_Motivo, motivo_exclusao_telefone.descricao Desc_Motivo ' +
                          'from  (blacklist inner join clientes on blacklist.cliente = clientes.codigo) ' +
                          '       inner join motivo_exclusao_telefone ' +
                          '       on motivo_exclusao_telefone.codigo =  blacklist.motivo_exclusao_telefone_cod ' +
                          'where  blacklist.data_cad between :pinicial and :pfinal ';
                          UNISCRIPT.PARAMBYNAME('PINICIAL').asstring := datetostr(AdvDateTimePicker1.DATE) + ' ' +timetostr(AdvDateTimePicker1.time)+ ',000000';
                          UNISCRIPT.PARAMBYNAME('PFINAL').asstring   := datetostr(AdvDateTimePicker2.DATE) + ' ' +timetostr(AdvDateTimePicker2.time)+ ',000000';
    UNISCRIPT.OPEN;
  end;

  if radiogroup1.itemindex = 1 then begin
    UNISCRIPT.CLOSE;
    UNISCRIPT.SQL.TEXT := 'select blacklist.banco, blacklist.cliente, clientes.nome, blacklist.telefone, blacklist.datavalidade as DATA_VALIDADE, blacklist.data_cad AS DATA_CADASTRO, ' +
                          '       blacklist.motivo_exclusao_telefone_cod as Cod_Motivo, motivo_exclusao_telefone.descricao Desc_Motivo ' +
                          'from  (blacklist inner join clientes on blacklist.cliente = clientes.codigo) ' +
                          '       inner join motivo_exclusao_telefone ' +
                          '       on motivo_exclusao_telefone.codigo =  blacklist.motivo_exclusao_telefone_cod ' +
                          'where  blacklist.data_cad between :pinicial and :pfinal ' +
                          'and blacklist.cliente < 1';
                          UNISCRIPT.PARAMBYNAME('PINICIAL').asstring := datetostr(AdvDateTimePicker1.DATE) + ' ' +timetostr(AdvDateTimePicker1.time)+ ',000000';
                          UNISCRIPT.PARAMBYNAME('PFINAL').asstring   := datetostr(AdvDateTimePicker2.DATE) + ' ' +timetostr(AdvDateTimePicker2.time)+ ',000000';
    UNISCRIPT.OPEN;
  end;

  if radiogroup1.itemindex = 0 then begin
    UNISCRIPT.CLOSE;
    UNISCRIPT.SQL.TEXT := 'select blacklist.banco, blacklist.cliente, clientes.nome, blacklist.telefone, blacklist.datavalidade as DATA_VALIDADE, blacklist.data_cad AS DATA_CADASTRO, ' +
                          '       blacklist.motivo_exclusao_telefone_cod as Cod_Motivo, motivo_exclusao_telefone.descricao Desc_Motivo ' +
                          'from  (blacklist inner join clientes on blacklist.cliente = clientes.codigo) ' +
                          '       inner join motivo_exclusao_telefone ' +
                          '       on motivo_exclusao_telefone.codigo =  blacklist.motivo_exclusao_telefone_cod ' +
                          'where  blacklist.data_cad between :pinicial and :pfinal ' +
                          'and blacklist.cliente > 0';
                          UNISCRIPT.PARAMBYNAME('PINICIAL').asstring := datetostr(AdvDateTimePicker1.DATE) + ' ' +timetostr(AdvDateTimePicker1.time)+ ',000000';
                          UNISCRIPT.PARAMBYNAME('PFINAL').asstring   := datetostr(AdvDateTimePicker2.DATE) + ' ' +timetostr(AdvDateTimePicker2.time)+ ',000000';
    UNISCRIPT.OPEN;
  end;

  for I:=1 to DbAdvGrid1.rowCount-1 - DBAdvGrid1.FixedFooters do
      DbAdvGrid1.AddCheckBox(1,I,False,False);

  frmrelacaotelefonesblacklist.Cursor := crdefault;

  lblregistros.caption := 'Registros: ' +inttostr(UNISCRIPT.recordcount);
end;

end.
