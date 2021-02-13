unit uos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Data.Win.ADODB, QRPDFFilt, math, Vcl.ComCtrls, Vcl.TabNotBk,
  Vcl.Samples.Spin;

type
  TFOs = class(TForm)
    Panel10: TPanel;
    Panel12: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edit14: TEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    Edit1: TEdit;
    Label14: TLabel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBEdit1: TDBEdit;
    Edit3: TEdit;
    DBGrid2: TDBGrid;
    Edit4: TEdit;
    SpeedButton5: TSpeedButton;
    QRPDFFilter1: TQRPDFFilter;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Label17: TLabel;
    Edit6: TEdit;
    Label18: TLabel;
    Edit5: TEdit;
    Label19: TLabel;
    Edit7: TEdit;
    Button1: TButton;
    Label22: TLabel;
    Edit9: TEdit;
    Label23: TLabel;
    DBEdit15: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label24: TLabel;
    Label25: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label26: TLabel;
    DBEdit16: TDBEdit;
    Label27: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label28: TLabel;
    DBEdit19: TDBEdit;
    Label21: TLabel;
    Memo1: TMemo;
    Label20: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    DBMemo1: TDBMemo;
    TabbedNotebook1: TTabbedNotebook;
    Panel4: TPanel;
    Panel5: TPanel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    Edit10: TEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Bevel4: TBevel;
    SpinButton1: TSpinButton;
    Label35: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    SpinButton2: TSpinButton;
    SpinButton3: TSpinButton;
    SpinButton4: TSpinButton;
    SpinButton5: TSpinButton;
    SpinButton6: TSpinButton;
    SpinButton7: TSpinButton;
    SpinButton8: TSpinButton;
    SpinButton9: TSpinButton;
    SpinButton10: TSpinButton;
    SpinButton11: TSpinButton;
    SpinButton12: TSpinButton;
    SpinButton13: TSpinButton;
    SpinButton14: TSpinButton;
    SpinButton15: TSpinButton;
    SpinButton16: TSpinButton;
    SpinButton17: TSpinButton;
    SpinButton18: TSpinButton;
    Shape1: TShape;
    Shape2: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Shape15: TShape;
    Shape16: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    Shape3: TShape;
    Shape20: TShape;
    Shape21: TShape;
    Shape22: TShape;
    Shape23: TShape;
    Shape24: TShape;
    Shape25: TShape;
    Shape26: TShape;
    Shape27: TShape;
    Shape28: TShape;
    Shape29: TShape;
    Shape30: TShape;
    Shape31: TShape;
    Shape32: TShape;
    Shape33: TShape;
    Shape34: TShape;
    Shape35: TShape;
    Shape36: TShape;
    Shape37: TShape;
    Shape38: TShape;
    Shape39: TShape;
    Shape40: TShape;
    Shape41: TShape;
    Shape42: TShape;
    Shape43: TShape;
    Shape44: TShape;
    Shape45: TShape;
    Shape46: TShape;
    Shape47: TShape;
    Shape48: TShape;
    Shape49: TShape;
    Shape50: TShape;
    Shape51: TShape;
    Shape52: TShape;
    Shape53: TShape;
    Shape54: TShape;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox33: TDBCheckBox;
    DBCheckBox34: TDBCheckBox;
    DBCheckBox35: TDBCheckBox;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Shape55: TShape;
    Shape56: TShape;
    Shape57: TShape;
    Shape58: TShape;
    Shape59: TShape;
    Shape60: TShape;
    Shape61: TShape;
    Shape62: TShape;
    Shape63: TShape;
    Shape64: TShape;
    Shape65: TShape;
    Shape66: TShape;
    Shape67: TShape;
    Shape68: TShape;
    Shape69: TShape;
    Shape70: TShape;
    Shape71: TShape;
    Shape72: TShape;
    Shape73: TShape;
    Shape74: TShape;
    Shape75: TShape;
    Shape76: TShape;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Bevel1: TBevel;
    Shape77: TShape;
    Shape78: TShape;
    Shape79: TShape;
    Shape80: TShape;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Shape81: TShape;
    Shape82: TShape;
    Shape83: TShape;
    Shape84: TShape;
    Shape85: TShape;
    Shape86: TShape;
    Shape87: TShape;
    Shape88: TShape;
    Shape89: TShape;
    Shape90: TShape;
    Shape91: TShape;
    Shape92: TShape;
    Shape93: TShape;
    Shape94: TShape;
    Shape95: TShape;
    Shape96: TShape;
    Shape97: TShape;
    Shape98: TShape;
    Shape99: TShape;
    Shape100: TShape;
    Shape101: TShape;
    Shape102: TShape;
    Shape103: TShape;
    Shape104: TShape;
    Shape105: TShape;
    Shape106: TShape;
    Shape107: TShape;
    Shape108: TShape;
    Shape109: TShape;
    Shape110: TShape;
    Shape111: TShape;
    Shape112: TShape;
    Shape113: TShape;
    Shape114: TShape;
    Shape115: TShape;
    Shape116: TShape;
    Shape117: TShape;
    Shape118: TShape;
    Shape119: TShape;
    Shape120: TShape;
    Shape121: TShape;
    Shape124: TShape;
    Shape125: TShape;
    Shape126: TShape;
    Shape127: TShape;
    Shape128: TShape;
    Shape129: TShape;
    Shape130: TShape;
    DBEdit38: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    SpinButton19: TSpinButton;
    SpinButton20: TSpinButton;
    SpinButton21: TSpinButton;
    SpinButton22: TSpinButton;
    SpinButton23: TSpinButton;
    SpinButton24: TSpinButton;
    SpinButton25: TSpinButton;
    SpinButton26: TSpinButton;
    SpinButton27: TSpinButton;
    SpinButton28: TSpinButton;
    SpinButton29: TSpinButton;
    SpinButton30: TSpinButton;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    DBCheckBox36: TDBCheckBox;
    DBCheckBox37: TDBCheckBox;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    DBCheckBox40: TDBCheckBox;
    DBCheckBox41: TDBCheckBox;
    DBCheckBox42: TDBCheckBox;
    DBCheckBox43: TDBCheckBox;
    DBCheckBox44: TDBCheckBox;
    DBCheckBox45: TDBCheckBox;
    DBCheckBox46: TDBCheckBox;
    DBCheckBox47: TDBCheckBox;
    DBCheckBox48: TDBCheckBox;
    DBCheckBox49: TDBCheckBox;
    DBCheckBox50: TDBCheckBox;
    DBCheckBox51: TDBCheckBox;
    DBCheckBox52: TDBCheckBox;
    DBCheckBox53: TDBCheckBox;
    DBCheckBox54: TDBCheckBox;
    DBCheckBox55: TDBCheckBox;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Shape122: TShape;
    Bevel2: TBevel;
    Label81: TLabel;
    Button3: TButton;
    MASKEDIT1: TDateTimePicker;
    MASKEDIT2: TDateTimePicker;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Edit6Exit(Sender: TObject);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure SpinButton1DownClick(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);
    procedure DBEdit39KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit40KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit41KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit42KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit44KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit45KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit46KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit47KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit48KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit49KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit50KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit51KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit52KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit53KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit54KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit55KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit56KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit68KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit69KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit70KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit71KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit72KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit73KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit74KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit75KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit76KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit77KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit78KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit79KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit39Exit(Sender: TObject);
    procedure DBEdit40Exit(Sender: TObject);
    procedure DBEdit41Exit(Sender: TObject);
    procedure DBEdit42Exit(Sender: TObject);
    procedure DBEdit43Exit(Sender: TObject);
    procedure DBEdit44Exit(Sender: TObject);
    procedure DBEdit45Exit(Sender: TObject);
    procedure DBEdit46Exit(Sender: TObject);
    procedure DBEdit47Exit(Sender: TObject);
    procedure DBEdit48Exit(Sender: TObject);
    procedure DBEdit49Exit(Sender: TObject);
    procedure DBEdit50Exit(Sender: TObject);
    procedure DBEdit51Exit(Sender: TObject);
    procedure DBEdit52Exit(Sender: TObject);
    procedure DBEdit53Exit(Sender: TObject);
    procedure DBEdit54Exit(Sender: TObject);
    procedure DBEdit55Exit(Sender: TObject);
    procedure DBEdit56Exit(Sender: TObject);
    procedure DBEdit68Exit(Sender: TObject);
    procedure DBEdit69Exit(Sender: TObject);
    procedure DBEdit70Exit(Sender: TObject);
    procedure DBEdit71Exit(Sender: TObject);
    procedure DBEdit72Exit(Sender: TObject);
    procedure DBEdit73Exit(Sender: TObject);
    procedure DBEdit74Exit(Sender: TObject);
    procedure DBEdit75Exit(Sender: TObject);
    procedure DBEdit76Exit(Sender: TObject);
    procedure DBEdit77Exit(Sender: TObject);
    procedure DBEdit78Exit(Sender: TObject);
    procedure DBEdit79Exit(Sender: TObject);
    procedure DBEdit43KeyPress(Sender: TObject; var Key: Char);
    procedure SpinButton2UpClick(Sender: TObject);
    procedure SpinButton3UpClick(Sender: TObject);
    procedure SpinButton4UpClick(Sender: TObject);
    procedure SpinButton5UpClick(Sender: TObject);
    procedure SpinButton6UpClick(Sender: TObject);
    procedure SpinButton7UpClick(Sender: TObject);
    procedure SpinButton8UpClick(Sender: TObject);
    procedure SpinButton9UpClick(Sender: TObject);
    procedure SpinButton10UpClick(Sender: TObject);
    procedure SpinButton11UpClick(Sender: TObject);
    procedure SpinButton12UpClick(Sender: TObject);
    procedure SpinButton13UpClick(Sender: TObject);
    procedure SpinButton14UpClick(Sender: TObject);
    procedure SpinButton15UpClick(Sender: TObject);
    procedure SpinButton16UpClick(Sender: TObject);
    procedure SpinButton17UpClick(Sender: TObject);
    procedure SpinButton18UpClick(Sender: TObject);
    procedure SpinButton19UpClick(Sender: TObject);
    procedure SpinButton20UpClick(Sender: TObject);
    procedure SpinButton21UpClick(Sender: TObject);
    procedure SpinButton22UpClick(Sender: TObject);
    procedure SpinButton23UpClick(Sender: TObject);
    procedure SpinButton24UpClick(Sender: TObject);
    procedure SpinButton25UpClick(Sender: TObject);
    procedure SpinButton26UpClick(Sender: TObject);
    procedure SpinButton27UpClick(Sender: TObject);
    procedure SpinButton28UpClick(Sender: TObject);
    procedure SpinButton29UpClick(Sender: TObject);
    procedure SpinButton30UpClick(Sender: TObject);
    procedure SpinButton2DownClick(Sender: TObject);
    procedure SpinButton3DownClick(Sender: TObject);
    procedure SpinButton4DownClick(Sender: TObject);
    procedure SpinButton5DownClick(Sender: TObject);
    procedure SpinButton6DownClick(Sender: TObject);
    procedure SpinButton7DownClick(Sender: TObject);
    procedure SpinButton8DownClick(Sender: TObject);
    procedure SpinButton9DownClick(Sender: TObject);
    procedure SpinButton10DownClick(Sender: TObject);
    procedure SpinButton11DownClick(Sender: TObject);
    procedure SpinButton12DownClick(Sender: TObject);
    procedure SpinButton13DownClick(Sender: TObject);
    procedure SpinButton14DownClick(Sender: TObject);
    procedure SpinButton15DownClick(Sender: TObject);
    procedure SpinButton16DownClick(Sender: TObject);
    procedure SpinButton17DownClick(Sender: TObject);
    procedure SpinButton18DownClick(Sender: TObject);
    procedure SpinButton19DownClick(Sender: TObject);
    procedure SpinButton20DownClick(Sender: TObject);
    procedure SpinButton21DownClick(Sender: TObject);
    procedure SpinButton22DownClick(Sender: TObject);
    procedure SpinButton23DownClick(Sender: TObject);
    procedure SpinButton24DownClick(Sender: TObject);
    procedure SpinButton25DownClick(Sender: TObject);
    procedure SpinButton26DownClick(Sender: TObject);
    procedure SpinButton27DownClick(Sender: TObject);
    procedure SpinButton28DownClick(Sender: TObject);
    procedure SpinButton29DownClick(Sender: TObject);
    procedure SpinButton30DownClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

  private

  public
   function PegaTotal: Real;

  end;

var
  FOs: TFOs;

implementation

{$R *.dfm}

uses udm, ucadastro, uprocura2, uestoque, uenviaemail, USENHA, UMENU, UORCAMENTO;

function TFOS.PegaTotal: Real;
var
TOTALITENS, TOTALPARCIAL, DESCONTO, TOTALDANOTA: REAL;
begin
IF FOS.EDIT2.TEXT = '' THEN FOS.EDIT2.TEXT := '0,00';
FOS.EDIT2.Text := FormatFloat('0.00', STRTOFLOAT(FOS.EDIT2.TEXT));

//ATT O TOTAL NA TABELA OS
dm.IBQITENS005.ACTIVE := FALSE;
DM.IBQITENS005.SQL.Text := 'select * FROM ITENS005 WHERE NUMERONF = ' + #39 + FOS.DBEDIT12.TEXT + #39;
dm.IBQITENS005.ACTIVE := TRUE;

TOTALITENS := 0;

DM.IBQITENS005.First;
while NOT DM.IBQITENS005.Eof do
    BEGIN
      TOTALITENS := TOTALITENS + DM.IBQITENS005TOTAL.Value;
      DM.IBQITENS005.Next;
    END;

IF FOS.DBEDIT39.TEXT = '' THEN FOS.DBEDIT39.TEXT := '0,00';
IF FOS.DBEDIT40.TEXT = '' THEN FOS.DBEDIT40.TEXT := '0,00';
IF FOS.DBEDIT41.TEXT = '' THEN FOS.DBEDIT41.TEXT := '0,00';
IF FOS.DBEDIT42.TEXT = '' THEN FOS.DBEDIT42.TEXT := '0,00';
IF FOS.DBEDIT43.TEXT = '' THEN FOS.DBEDIT43.TEXT := '0,00';
IF FOS.DBEDIT44.TEXT = '' THEN FOS.DBEDIT44.TEXT := '0,00';
IF FOS.DBEDIT45.TEXT = '' THEN FOS.DBEDIT45.TEXT := '0,00';
IF FOS.DBEDIT46.TEXT = '' THEN FOS.DBEDIT46.TEXT := '0,00';
IF FOS.DBEDIT47.TEXT = '' THEN FOS.DBEDIT47.TEXT := '0,00';
IF FOS.DBEDIT48.TEXT = '' THEN FOS.DBEDIT48.TEXT := '0,00';
IF FOS.DBEDIT49.TEXT = '' THEN FOS.DBEDIT49.TEXT := '0,00';
IF FOS.DBEDIT50.TEXT = '' THEN FOS.DBEDIT50.TEXT := '0,00';
IF FOS.DBEDIT51.TEXT = '' THEN FOS.DBEDIT51.TEXT := '0,00';
IF FOS.DBEDIT52.TEXT = '' THEN FOS.DBEDIT52.TEXT := '0,00';
IF FOS.DBEDIT53.TEXT = '' THEN FOS.DBEDIT53.TEXT := '0,00';
IF FOS.DBEDIT54.TEXT = '' THEN FOS.DBEDIT54.TEXT := '0,00';
IF FOS.DBEDIT55.TEXT = '' THEN FOS.DBEDIT55.TEXT := '0,00';
IF FOS.DBEDIT56.TEXT = '' THEN FOS.DBEDIT56.TEXT := '0,00';
IF FOS.DBEDIT68.TEXT = '' THEN FOS.DBEDIT68.TEXT := '0,00';
IF FOS.DBEDIT69.TEXT = '' THEN FOS.DBEDIT69.TEXT := '0,00';
IF FOS.DBEDIT70.TEXT = '' THEN FOS.DBEDIT70.TEXT := '0,00';
IF FOS.DBEDIT71.TEXT = '' THEN FOS.DBEDIT71.TEXT := '0,00';
IF FOS.DBEDIT72.TEXT = '' THEN FOS.DBEDIT72.TEXT := '0,00';
IF FOS.DBEDIT73.TEXT = '' THEN FOS.DBEDIT73.TEXT := '0,00';
IF FOS.DBEDIT74.TEXT = '' THEN FOS.DBEDIT74.TEXT := '0,00';
IF FOS.DBEDIT75.TEXT = '' THEN FOS.DBEDIT75.TEXT := '0,00';
IF FOS.DBEDIT76.TEXT = '' THEN FOS.DBEDIT76.TEXT := '0,00';
IF FOS.DBEDIT77.TEXT = '' THEN FOS.DBEDIT77.TEXT := '0,00';
IF FOS.DBEDIT78.TEXT = '' THEN FOS.DBEDIT78.TEXT := '0,00';
IF FOS.DBEDIT79.TEXT = '' THEN FOS.DBEDIT79.TEXT := '0,00';

IF FOS.EDIT5.TEXT = '' THEN FOS.EDIT5.TEXT := '0,00';
IF FOS.EDIT6.TEXT = '' THEN FOS.EDIT6.TEXT := '0,00';

FOS.EDIT2.Text := FormatFloat('0.00', (STRTOFLOAT(FOS.EDIT5.TEXT) - STRTOFLOAT(FOS.EDIT6.Text)));

TOTALPARCIAL :=    TOTALITENS +
STRTOFLOAT(FOS.DBEDIT39.TEXT) + 
STRTOFLOAT(FOS.DBEDIT40.TEXT) + 
STRTOFLOAT(FOS.DBEDIT41.TEXT) + 
STRTOFLOAT(FOS.DBEDIT42.TEXT) + 
STRTOFLOAT(FOS.DBEDIT43.TEXT) + 
STRTOFLOAT(FOS.DBEDIT44.TEXT) + 
STRTOFLOAT(FOS.DBEDIT45.TEXT) + 
STRTOFLOAT(FOS.DBEDIT46.TEXT) + 
STRTOFLOAT(FOS.DBEDIT47.TEXT) + 
STRTOFLOAT(FOS.DBEDIT48.TEXT) + 
STRTOFLOAT(FOS.DBEDIT49.TEXT) + 
STRTOFLOAT(FOS.DBEDIT50.TEXT) + 
STRTOFLOAT(FOS.DBEDIT51.TEXT) + 
STRTOFLOAT(FOS.DBEDIT52.TEXT) + 
STRTOFLOAT(FOS.DBEDIT53.TEXT) + 
STRTOFLOAT(FOS.DBEDIT54.TEXT) + 
STRTOFLOAT(FOS.DBEDIT55.TEXT) + 
STRTOFLOAT(FOS.DBEDIT56.TEXT) + 
STRTOFLOAT(FOS.DBEDIT68.TEXT) + 
STRTOFLOAT(FOS.DBEDIT69.TEXT) + 
STRTOFLOAT(FOS.DBEDIT70.TEXT) + 
STRTOFLOAT(FOS.DBEDIT71.TEXT) + 
STRTOFLOAT(FOS.DBEDIT72.TEXT) + 
STRTOFLOAT(FOS.DBEDIT73.TEXT) + 
STRTOFLOAT(FOS.DBEDIT74.TEXT) + 
STRTOFLOAT(FOS.DBEDIT75.TEXT) + 
STRTOFLOAT(FOS.DBEDIT76.TEXT) + 
STRTOFLOAT(FOS.DBEDIT77.TEXT) + 
STRTOFLOAT(FOS.DBEDIT78.TEXT) + 
STRTOFLOAT(FOS.DBEDIT79.TEXT);

DESCONTO := STRTOFLOAT(FOS.EDIT6.TEXT);

TOTALDANOTA := TOTALPARCIAL - DESCONTO;

FOS.EDIT5.Text := FormatFloat('0.00', TOTALPARCIAL);

//FORMATANDO 0.00

FOS.DBEDIT39.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT39.TEXT));
FOS.DBEDIT40.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT40.TEXT));
FOS.DBEDIT41.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT41.TEXT));
FOS.DBEDIT42.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT42.TEXT));
FOS.DBEDIT43.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT43.TEXT));
FOS.DBEDIT44.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT44.TEXT));
FOS.DBEDIT45.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT45.TEXT));
FOS.DBEDIT46.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT46.TEXT));
FOS.DBEDIT47.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT47.TEXT));
FOS.DBEDIT48.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT48.TEXT));
FOS.DBEDIT49.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT49.TEXT));
FOS.DBEDIT50.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT50.TEXT));
FOS.DBEDIT51.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT51.TEXT));
FOS.DBEDIT52.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT52.TEXT));
FOS.DBEDIT53.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT53.TEXT));
FOS.DBEDIT54.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT54.TEXT));
FOS.DBEDIT55.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT55.TEXT));
FOS.DBEDIT56.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT56.TEXT));
FOS.DBEDIT68.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT68.TEXT));
FOS.DBEDIT69.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT69.TEXT));
FOS.DBEDIT70.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT70.TEXT));
FOS.DBEDIT71.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT71.TEXT));
FOS.DBEDIT72.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT72.TEXT));
FOS.DBEDIT73.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT73.TEXT));
FOS.DBEDIT74.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT74.TEXT));
FOS.DBEDIT75.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT75.TEXT));
FOS.DBEDIT76.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT76.TEXT));
FOS.DBEDIT77.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT77.TEXT));
FOS.DBEDIT78.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT78.TEXT));
FOS.DBEDIT79.Text := FormatFloat('0.00', STRTOFLOAT(FOS.DBEDIT79.TEXT));

Result := TOTALDANOTA;
end;


procedure TFOs.Button1Click(Sender: TObject);
begin
IF DBGRID1.Columns[5].Visible = FALSE THEN
  BEGIN
    DBGRID1.Columns[5].Visible := TRUE;
    DBGRID1.Columns[6].Visible := TRUE;
    DBGRID1.Columns[7].Visible := TRUE;
//    LABEL20.Visible := TRUE;
//    EDIT8.Visible := TRUE;
  END
  ELSE
  BEGIN
    DBGRID1.Columns[5].Visible := FALSE;
    DBGRID1.Columns[6].Visible := FALSE;
    DBGRID1.Columns[7].Visible := FALSE;
//    LABEL20.Visible := FALSE;
//    EDIT8.Visible := FALSE;
  END;
end;

procedure TFOs.Button3Click(Sender: TObject);
begin
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFOs.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFOs.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFOs.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFOs.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFOs.DBEdit39Exit(Sender: TObject);
begin
IF DBEDIT39.TEXT <> '' THEN DBEDIT39.Text := FormatFloat('0.00', StrtoFloat(DBEDIT39.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit39KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFOs.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFOs.DBEdit40Exit(Sender: TObject);
begin
IF DBEDIT40.TEXT <> '' THEN DBEDIT40.Text := FormatFloat('0.00', StrtoFloat(DBEDIT40.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit40KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit41Exit(Sender: TObject);
begin
IF DBEDIT41.TEXT <> '' THEN DBEDIT41.Text := FormatFloat('0.00', StrtoFloat(DBEDIT41.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit41KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit42Exit(Sender: TObject);
begin
IF DBEDIT42.TEXT <> '' THEN DBEDIT42.Text := FormatFloat('0.00', StrtoFloat(DBEDIT42.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit42KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit43Exit(Sender: TObject);
begin
IF DBEDIT43.TEXT <> '' THEN DBEDIT43.Text := FormatFloat('0.00', StrtoFloat(DBEDIT43.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit43KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFOs.DBEdit44Exit(Sender: TObject);
begin
IF DBEDIT44.TEXT <> '' THEN DBEDIT44.Text := FormatFloat('0.00', StrtoFloat(DBEDIT44.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit44KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit45Exit(Sender: TObject);
begin
IF DBEDIT45.TEXT <> '' THEN DBEDIT45.Text := FormatFloat('0.00', StrtoFloat(DBEDIT45.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit45KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit46Exit(Sender: TObject);
begin
IF DBEDIT46.TEXT <> '' THEN DBEDIT46.Text := FormatFloat('0.00', StrtoFloat(DBEDIT46.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit46KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit47Exit(Sender: TObject);
begin
IF DBEDIT47.TEXT <> '' THEN DBEDIT47.Text := FormatFloat('0.00', StrtoFloat(DBEDIT47.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit47KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit48Exit(Sender: TObject);
begin
IF DBEDIT48.TEXT <> '' THEN DBEDIT48.Text := FormatFloat('0.00', StrtoFloat(DBEDIT48.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit48KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit49Exit(Sender: TObject);
begin
IF DBEDIT49.TEXT <> '' THEN DBEDIT49.Text := FormatFloat('0.00', StrtoFloat(DBEDIT49.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit49KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFOs.DBEdit50Exit(Sender: TObject);
begin
IF DBEDIT50.TEXT <> '' THEN DBEDIT50.Text := FormatFloat('0.00', StrtoFloat(DBEDIT50.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit50KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit51Exit(Sender: TObject);
begin
IF DBEDIT51.TEXT <> '' THEN DBEDIT51.Text := FormatFloat('0.00', StrtoFloat(DBEDIT51.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit51KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit52Exit(Sender: TObject);
begin
IF DBEDIT52.TEXT <> '' THEN DBEDIT52.Text := FormatFloat('0.00', StrtoFloat(DBEDIT52.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit52KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit53Exit(Sender: TObject);
begin
IF DBEDIT53.TEXT <> '' THEN DBEDIT53.Text := FormatFloat('0.00', StrtoFloat(DBEDIT53.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit53KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit54Exit(Sender: TObject);
begin
IF DBEDIT54.TEXT <> '' THEN DBEDIT54.Text := FormatFloat('0.00', StrtoFloat(DBEDIT54.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit54KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit55Exit(Sender: TObject);
begin
IF DBEDIT55.TEXT <> '' THEN DBEDIT55.Text := FormatFloat('0.00', StrtoFloat(DBEDIT55.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit55KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit56Exit(Sender: TObject);
begin
IF DBEDIT56.TEXT <> '' THEN DBEDIT56.Text := FormatFloat('0.00', StrtoFloat(DBEDIT56.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit56KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFOs.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFOs.DBEdit68Exit(Sender: TObject);
begin
IF DBEDIT68.TEXT <> '' THEN DBEDIT68.Text := FormatFloat('0.00', StrtoFloat(DBEDIT68.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit68KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit69Exit(Sender: TObject);
begin
IF DBEDIT69.TEXT <> '' THEN DBEDIT69.Text := FormatFloat('0.00', StrtoFloat(DBEDIT69.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit69KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFOs.DBEdit70Exit(Sender: TObject);
begin
IF DBEDIT70.TEXT <> '' THEN DBEDIT70.Text := FormatFloat('0.00', StrtoFloat(DBEDIT70.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit70KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit71Exit(Sender: TObject);
begin
IF DBEDIT71.TEXT <> '' THEN DBEDIT71.Text := FormatFloat('0.00', StrtoFloat(DBEDIT71.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit71KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit72Exit(Sender: TObject);
begin
IF DBEDIT72.TEXT <> '' THEN DBEDIT72.Text := FormatFloat('0.00', StrtoFloat(DBEDIT72.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit72KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit73Exit(Sender: TObject);
begin
IF DBEDIT73.TEXT <> '' THEN DBEDIT73.Text := FormatFloat('0.00', StrtoFloat(DBEDIT73.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit73KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit74Exit(Sender: TObject);
begin
IF DBEDIT74.TEXT <> '' THEN DBEDIT74.Text := FormatFloat('0.00', StrtoFloat(DBEDIT74.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit74KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit75Exit(Sender: TObject);
begin
IF DBEDIT75.TEXT <> '' THEN DBEDIT75.Text := FormatFloat('0.00', StrtoFloat(DBEDIT75.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit75KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit76Exit(Sender: TObject);
begin
IF DBEDIT76.TEXT <> '' THEN DBEDIT76.Text := FormatFloat('0.00', StrtoFloat(DBEDIT76.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit76KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit77Exit(Sender: TObject);
begin
IF DBEDIT77.TEXT <> '' THEN DBEDIT77.Text := FormatFloat('0.00', StrtoFloat(DBEDIT77.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit77KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit78Exit(Sender: TObject);
begin
IF DBEDIT78.TEXT <> '' THEN DBEDIT78.Text := FormatFloat('0.00', StrtoFloat(DBEDIT78.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit78KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit79Exit(Sender: TObject);
begin
IF DBEDIT79.TEXT <> '' THEN DBEDIT79.Text := FormatFloat('0.00', StrtoFloat(DBEDIT79.Text));
FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);
end;

procedure TFOs.DBEdit79KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;

end;

procedure TFOs.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFOs.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFOs.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;

end;

procedure TFOs.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if KEY = VK_RETURN then
  BEGIN
    EDIT3.Text := DM.IBQCliforNOME.Value;
    DBGRID2.Visible := FALSE;
    EDIT3.SetFocus;
    DBEDIT1.Text := EDIT3.Text;
  END;
end;

procedure TFOs.Edit3Change(Sender: TObject);
begin
DM.IBQCLIFOR.ACTIVE := FALSE;
DM.IBQCLIFOR.SQL.Text := 'SELECT * FROM CLIFOR WHERE UPPER(NOME) LIKE ' + #39 + EDIT3.Text + '%' + #39 + ' order by NOME';
DM.IBQCLIFOR.ACTIVE := TRUE;

//EDITS RECEBENDO OU MOSTRANDO OS DADOS DO CLIENTE
DBEDIT1.Text := EDIT3.Text;
end;

procedure TFOs.Edit3Exit(Sender: TObject);
begin
//EDITS RECEBENDO OU MOSTRANDO OS DADOS DO CLIENTE
DBEDIT1.Text := EDIT3.Text;
end;

procedure TFOs.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF EDIT3.Text = '' THEN
  BEGIN
    DM.IBQCLIFOR.ACTIVE := FALSE;
    DM.IBQCLIFOR.SQL.Text := 'SELECT * FROM CLIFOR ORDER BY NOME';
    DM.IBQCLIFOR.ACTIVE := TRUE;

    DBGRID2.Visible := TRUE;
  END;

if KEY = VK_DOWN then
  BEGIN
    DBGRID2.Visible := TRUE;
    DBGRID2.SetFocus;
    DM.IBQCLIFOR.Next;
  END;
end;

procedure TFOs.Edit6Exit(Sender: TObject);
VAR
VENDA, PESO, RENTAB, TOTAL, CONT, CUSTO : REAL;
begin

    //FAZ A SOMA DA NOTA

    VENDA := 0;
    PESO := 0;
    RENTAB := 0;
    TOTAL := 0;
    CONT := 0;
    CUSTO := 0;

    DM.IBQITENS005.First;
    while NOT DM.IBQITENS005.Eof do
        BEGIN
          CONT := CONT + 1;
          PESO := PESO + DM.IBQITENS005PESO.Value;
          TOTAL := TOTAL + DM.IBQITENS005TOTAL.Value;
          VENDA := VENDA + DM.IBQITENS005TOTAL.Value;
          CUSTO := CUSTO + (DM.IBQITENS005CUSTO.Value * DM.IBQITENS005QUANTIDADE.Value);
          DM.IBQITENS005.Next;
        END;

  try
    begin
      IF FOS.Edit6.Text = '' then FOS.Edit6.Text := '0';
      FOS.Edit2.Text := FLOATTOSTR(STRTOFLOAT(FOS.Edit5.TEXT)-STRTOFLOAT(FOS.Edit6.TEXT));
      FOS.Edit2.Text := FormatFloat('0.00', StrtoFloat(FOS.Edit2.Text));
      FOS.Edit5.Text := FormatFloat('0.00', StrtoFloat(FOS.Edit5.Text));
      FOS.Edit6.Text := FormatFloat('0.00', StrtoFloat(FOS.Edit6.Text));

//      FNOTAS.EDIT8.TEXT := FLOATTOSTR(100-(CUSTO/STRTOFLOAT(FNOTAS.EDIT2.TEXT)*100));
//      FNOTAS.Edit8.Text := FormatFloat('0.00', StrtoFloat(FNOTAS.Edit8.Text));
    end
  except
    showmessage('Ocorreu um erro no cálculo do valor da nota. Por favor, comunique ao suporte.');
  end;
end;

procedure TFOs.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if KEY = VK_RETURN then
BEGIN
  edit2.SetFocus;
END;
end;

procedure TFOs.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
If key = #13 then
   Begin
      Key := #0;
   end
   ELSE
   If (not(key in['0'..'9',#08])) and (not(key in[','])) then  key:=#0;
end;

procedure TFOs.FormActivate(Sender: TObject);
begin

//RETORNA COM TODOS OS PRAZOS PRA QUERY
//RENOVA A LISTA DO DBLOOKUPCOMBOBOX3
{DM.IBQPRAZOS.Active := FALSE;
DM.IBQPRAZOS.SQL.Text := 'SELECT * FROM PRAZODEPAGAMENTO';
DM.IBQPRAZOS.Active := TRUE;
DM.IBQPRAZOS.FIRST;
DM.IBQPRAZOS.LAST;
DM.IBQPRAZOS.FIRST;

DM.IBQFORMAS.Open;

DM.IBQFORMAS.First;
DM.IBQFORMAS.Last;
DM.IBQFORMAS.First;
}

DM.IBQICM.Open;
DM.IBQICM.First;
DM.IBQICM.Last;
DM.IBQICM.First;

if EDIT14.Text = 'INSERE' then
  BEGIN
      DM.IBQCLIFOR.ACTIVE := FALSE;
      DBGRID2.Visible := FALSE;

      dm.IBQITENS005.ACTIVE := FALSE;
      DM.IBQITENS005.SQL.Text := 'select * FROM ITENS005 WHERE NUMERONF = ' + #39 + FOS.DBEDIT12.TEXT + #39;
      dm.IBQITENS005.ACTIVE := TRUE;

//      DBCOMBOBOX1.Text := 'A Prazo';
      MEMO1.Lines.Clear;
      EDIT3.SetFocus;
  END;

if EDIT14.Text = 'EDITA' then
  BEGIN
      DBGRID2.Visible := FALSE;

      //MEMO COM AS INFORMAÇÕES DO CABEÇALHO

      MASKEDIT1.DATE := STRTODATE(DBMEMO1.Lines[0]);
      MASKEDIT2.DATE := STRTODATE(DBMEMO1.Lines[1]);
      EDIT11.Text := DBMEMO1.Lines[2];
      EDIT12.Text := DBMEMO1.Lines[3];
      EDIT13.Text := DBMEMO1.Lines[4];
      EDIT16.Text := DBMEMO1.Lines[5];
      EDIT17.Text := DBMEMO1.Lines[6];

      Memo1.Lines.Text := DM.IBTOSCOMPLEMENTO.Value;

      EDIT3.SetFocus;
  END;

if EDIT14.Text = 'OS' then
  BEGIN
      DM.IBQCLIFOR.ACTIVE := FALSE;
      DBGRID2.Visible := FALSE;

      dm.IBQITENS005.ACTIVE := FALSE;
      DM.IBQITENS005.SQL.Text := 'select * FROM ITENS005 WHERE NUMERONF = ' + #39 + FOS.DBEDIT12.TEXT + #39;
      dm.IBQITENS005.ACTIVE := TRUE;

//      MEMO1.Lines.Clear;
//      EDIT3.SetFocus;
  END;

end;

procedure TFOs.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_F2 then
  BEGIN

  END;

if key = vk_F7 then
  BEGIN

  END;
end;

procedure TFOs.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  if not (ActiveControl is TDBGrid) then
     begin
          Key := #0;
          Perform(WM_NEXTDLGCTL, 0, 0);
     end
     else
     if (ActiveControl is TDBGrid) then
          with TDBGrid(ActiveControl) do
                if selectedindex < (fieldcount -1) then
                      selectedindex := selectedindex +1
                else selectedindex := 0;
end;

procedure TFOs.SpeedButton1Click(Sender: TObject);
var
  TOTAL,TOTALDANOTA: REAL;
begin
//EDIT3.Text := DM.IBQCliforNOME.Value;
DBEDIT1.Text := EDIT3.TEXT;

Edit2.Text := stringReplace(Edit2.Text, '.', '', []);

            TRY
              BEGIN
            //RECALCULANDO O DESCONTO
              Edit2.Text := stringReplace(Edit2.Text, '.', '', []);
              Edit5.Text := stringReplace(Edit5.Text, '.', '', []);
                 try
                   begin
                     IF FOS.Edit6.Text = '' then FOS.Edit6.Text := '0';
//                     FOS.Edit2.Text := FLOATTOSTR(STRTOFLOAT(FOS.Edit5.TEXT)-STRTOFLOAT(FOS.Edit6.TEXT));
//                     FOS.Edit2.Text := FormatFloat('0.00', StrtoFloat(FOS.Edit2.Text));
                     FOS.EDIT2.TEXT := FormatFloat('0.00', FOS.PEGATOTAL);

                     FOS.Edit5.Text := FormatFloat('0.00', StrtoFloat(FOS.Edit5.Text));
                     FOS.Edit6.Text := FormatFloat('0.00', StrtoFloat(FOS.Edit6.Text));
                   end
                 except showmessage('Ocorreu um erro no cálculo do valor da nota. Por favor, comunique ao suporte.');
                 end;

                 Edit2.Text := stringReplace(Edit2.Text, '.', '', []);
                 TOTALDANOTA := STRTOFLOAT(EDIT2.Text);

                 //RODA A QUERY INSERINDO OS DADOS NA TABLE ITENS001
                 //FAZ A SOMA DA NOTA

                 TOTAL := 0;

                 DM.IBQITENS005.First;
                 while NOT DM.IBQITENS005.Eof do
                   BEGIN
                     TOTAL := TOTAL + DM.IBQITENS005TOTAL.Value;
                     DM.IBQITENS005.Next;
                   END;

                 EDIT1.Text := DBEDIT12.Text;

                       TRY
                         begin
                         DM.IBTOS.EDIT;
                         //INSERINDO OS ZEROS
                         DM.IBTOSNUMERONF.Value := DBEDIT12.Text;
                         IF LENGTH(DBEDIT12.TEXT) = 1 THEN DM.IBTOSNUMERONF.Value := '00000000000' + DBEDIT12.Text;
                         IF LENGTH(DBEDIT12.TEXT) = 2 THEN DM.IBTOSNUMERONF.Value := '0000000000' + DBEDIT12.Text;
                         IF LENGTH(DBEDIT12.TEXT) = 3 THEN DM.IBTOSNUMERONF.Value := '000000000' + DBEDIT12.Text;
                         IF LENGTH(DBEDIT12.TEXT) = 4 THEN DM.IBTOSNUMERONF.Value := '00000000' + DBEDIT12.Text;
                         IF LENGTH(DBEDIT12.TEXT) = 5 THEN DM.IBTOSNUMERONF.Value := '0000000' + DBEDIT12.Text;
                         IF LENGTH(DBEDIT12.TEXT) = 6 THEN DM.IBTOSNUMERONF.Value := '000000' + DBEDIT12.Text;
                         IF LENGTH(DBEDIT12.TEXT) = 7 THEN DM.IBTOSNUMERONF.Value := '00000' + DBEDIT12.Text;
                         IF LENGTH(DBEDIT12.TEXT) = 8 THEN DM.IBTOSNUMERONF.Value := '0000' + DBEDIT12.Text;
                         IF LENGTH(DBEDIT12.TEXT) = 9 THEN DM.IBTOSNUMERONF.Value := '000' + DBEDIT12.Text;
                         IF LENGTH(DBEDIT12.TEXT) = 10 THEN DM.IBTOSNUMERONF.Value := '00' + DBEDIT12.Text;
                         IF LENGTH(DBEDIT12.TEXT) = 11 THEN DM.IBTOSNUMERONF.Value := '0' + DBEDIT12.Text;
                         IF LENGTH(DBEDIT12.TEXT) = 12 THEN DM.IBTOSNUMERONF.Value := DBEDIT12.Text;
                         DM.IBTOSEMISSAO.Value := DATE;
                         DM.IBTOSSAIDAD.Value := DATE;
                         DM.IBTOSSAIDAH.Value := TIMETOSTR(NOW);
                         DM.IBTOSTOTAL.Value := STRTOFLOAT(EDIT2.TEXT);
                         DM.IBTOSEMAIL.Value := DBEDIT2.TEXT;
                         DM.IBTOSTRANSPORTADORA.Value := DBEDIT13.Text;
                         DM.IBTOSDESCONTO.Value := STRTOFLOAT(EDIT6.TEXT);
                         DM.IBTOSMERCADORIA.Value := STRTOFLOAT(EDIT5.TEXT);
                         DM.IBTOSPESOBRUTO.Value := STRTOFLOAT(EDIT7.Text);
                         DM.IBTOSPESOLIQUI.Value := STRTOFLOAT(EDIT7.Text);
                         DM.IBTOSVENDEDOR.Value := DBEDIT19.Text;
//                         DM.IBTOSIDENTIFICADOR1.Value :=
                         DM.IBTOSSTATUS.Value := 'Aguardando faturamento';
                         DM.IBTOSOPERACAO.Value := dm.IBQICMNOME.VALUE;
                         //CAMPO OBSERVAÇÕES
                         DM.IBTOSCOMPLEMENTO.Value := FOS.Memo1.Lines.Text;
                         DM.IBTOSVOLUMES.Value := STRTOFLOAT(EDIT9.Text);

                         //MEMO COM AS INFORMAÇÕES DO CABEÇALHO
                         DBMEMO1.Lines.Clear;
                         DBMEMO1.Lines.Add(DATETOSTR(MASKEDIT1.DATE));
                         DBMEMO1.Lines.Add(DATETOSTR(MASKEDIT2.DATE));
                         DBMEMO1.Lines.Add(EDIT11.Text);
                         DBMEMO1.Lines.Add(EDIT12.Text);
                         DBMEMO1.Lines.Add(EDIT13.Text);
                         DBMEMO1.Lines.Add(EDIT16.Text);
                         DBMEMO1.Lines.Add(EDIT17.Text);

                         DM.IBTOS.Post;
                         DM.IBTOS.ApplyUpdates();
                         DM.IBTransaction1.Commitretaining;

                         DM.IBTOS.ACTIVE := FALSE;
                         DM.IBTOS.ACTIVE := TRUE;

                         DM.IBTOS.Locate('NUMERONF', EDIT1.TEXT,[]);

                 //IMPRIMINDO
                         DM.IBQITENS005.Active := FALSE;
                         DM.IBQOS.Active := FALSE;
                         DM.IBQCLIFOR.Active := FALSE;

                         DM.IBQITENS005.SQL.Text := 'SELECT * FROM ITENS005 WHERE NUMERONF = ' + DBEDIT12.Text;
                         DM.IBQOS.SQL.Text := 'SELECT * FROM ORDEM WHERE NUMERONF = ' + DBEDIT12.Text;
                         DM.IBQCLIFOR.SQL.Text := 'SELECT * FROM CLIFOR WHERE NOME = ' + #39 + EDIT3.Text + #39;

                         DM.IBQITENS005.Active := TRUE;
                         DM.IBQOS.Active := TRUE;
                         DM.IBQCLIFOR.Active := TRUE;

                         DM.QUICKREP8.PREVIEW;

                         // exportar para pdf
                         DM.Quickrep8.ExportToFilter(TQRPDFDocumentFilter.Create('..\pedidos_pdf\' + 'OS_' + DM.IBTOSNUMERONF.Value + '_' + DM.IBTOSCLIENTE.Value + '.pdf'));

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

                         DM.IBTOS.Locate('NUMERONF', DM.IBQOSNUMERONF.VALUE ,[]);

                         DM.IBQITENS005.Active := FALSE;
                         DM.IBQITENS005.SQL.Text := 'select * FROM ITENS005 WHERE NUMERONF = ' + #39 + FOS.DBEDIT12.TEXT + #39;
                         DM.IBQITENS005.Active := TRUE;

                         //TERMINA IMPRESSÃO
                         Close;
                         end
                       EXCEPT
                         SHOWMESSAGE('Erro de gravação. Entre em contato com o suporte.');
                       END;
                      FOS.Edit2.Text := FormatFloat('0.00', StrtoFloat(FOS.Edit2.Text));
              END
            EXCEPT
              BEGIN
                SHOWMESSAGE('Não foi possível gravar o orçamento. Verifique o preenchimento de todos os campos, ou entre em contato com o suporte.');
              END;
            END;
end;

procedure TFOs.SpeedButton2Click(Sender: TObject);
begin
if EDIT14.Text = 'INSERE' then
BEGIN
    dm.IBQITENS005.ACTIVE := FALSE;
    DM.IBQITENS005.SQL.Text := 'DELETE FROM ITENS005 WHERE NUMERONF = ' + #39 + FOS.DBEDIT12.TEXT + #39;
    dm.IBQITENS005.ACTIVE := TRUE;

//    SHOWMESSAGE('O registro no momento é ' + DBEDIT14.Text);

    // VOLTA A NUMERAÇÃO DO ORÇAMENTO
    DM.IBQGENOS.Active := FALSE;
    DM.IBQGENOS.SQL.Text := 'select gen_id(G_ORDEM,-1) from rdb$database';
    DM.IBQGENOS.Active := TRUE;

//    SHOWMESSAGE('Cancelando, ele passou a ser ' + DBEDIT14.Text);
END;

DM.IBTORCAMENTO.Cancel;

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

DM.IBTOS.Locate('NUMERONF', DM.IBQOSNUMERONF.VALUE ,[]);
//DM.IBTORCAMENTO.LAST;

DM.IBQITENS005.Active := FALSE;
DM.IBQITENS005.SQL.Text := 'select * FROM ITENS005 WHERE NUMERONF = ' + #39 + FOS.DBEDIT12.TEXT + #39;
DM.IBQITENS005.Active := TRUE;

Close;
end;

procedure TFOs.SpeedButton3Click(Sender: TObject);
begin
DBEDIT1.TEXT := EDIT3.Text;

dm.IBTOS.EDIT;
//dm.IBTORCAMENTO.POST;
//dm.IBTORCAMENTO.EDIT;

FPROCURA2.EDIT2.Text := 'OS';

FPROCURA2.SHOWMODAL;
dm.IBQITENS005.ACTIVE := FALSE;
DM.IBQITENS005.SQL.Text := 'select * FROM ITENS005 WHERE NUMERONF = ' + #39 + FOS.DBEDIT12.TEXT + #39;
dm.IBQITENS005.ACTIVE := TRUE;
end;

procedure TFOs.SpeedButton4Click(Sender: TObject);
VAR
CUSTO, VENDA, PESO, TOTAL, RENTAB, CONT: REAL;
begin

//FAZ A SOMA DA NOTA

EDIT4.Text := DM.IBQITENS005REGISTRO.Value;

dm.IBQITENS005.ACTIVE := FALSE;
DM.IBQITENS005.SQL.Text := 'DELETE FROM ITENS005 WHERE REGISTRO = ' + #39 + EDIT4.Text + #39;
dm.IBQITENS005.ACTIVE := TRUE;

//ATT O TOTAL NA TABELA OS
dm.IBQITENS005.ACTIVE := FALSE;
DM.IBQITENS005.SQL.Text := 'select * FROM ITENS005 WHERE NUMERONF = ' + #39 + FOS.DBEDIT12.TEXT + #39;
dm.IBQITENS005.ACTIVE := TRUE;

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
          TOTAL := TOTAL + DM.IBQITENS005TOTAL.Value;
          VENDA := VENDA + DM.IBQITENS005TOTAL.Value;
          CUSTO := CUSTO + (DM.IBQITENS005CUSTO.Value * DM.IBQITENS005QUANTIDADE.Value);
          DM.IBQITENS005.Next;
        END;

FOS.EDIT5.Text := FLOATTOSTR(TOTAL);
//IF FOS.Edit6.Text = '' then FOS.Edit6.Text := '0';
//FOS.Edit2.Text := FLOATTOSTR(STRTOFLOAT(FOS.Edit5.TEXT)-STRTOFLOAT(FOS.Edit6.TEXT));
//FOS.Edit2.Text := FormatFloat('0.00', StrtoFloat(FOS.Edit2.Text));

FOS.EDIT2.TEXT := FormatFloat('0.00', PEGATOTAL);

FOS.Edit5.Text := FormatFloat('0.00', StrtoFloat(FOS.Edit5.Text));
FOS.Edit6.Text := FormatFloat('0.00', StrtoFloat(FOS.Edit6.Text));
FOS.Edit7.Text := FLOATTOSTR(PESO);
FOS.Edit7.Text := FormatFloat('0.00', StrtoFloat(FOS.Edit7.Text));

//FNOTAS.EDIT8.TEXT := FLOATTOSTR(100-(CUSTO/STRTOFLOAT(EDIT2.TEXT)*100));
//FNOTAS.Edit8.Text := FormatFloat('0.00', StrtoFloat(FNOTAS.Edit8.Text));

DM.IBTOS.EDIT;
DM.IBTOSMERCADORIA.Value := STRTOFLOAT(EDIT5.Text);
DM.IBTOSDESCONTO.Value := STRTOFLOAT(EDIT6.Text);
DM.IBTOSTOTAL.Value := STRTOFLOAT(EDIT2.Text);
DM.IBTOS.POST;
DM.IBTOS.ApplyUpdates();
DM.IBTransaction1.Commitretaining;

//NORMAL
dm.IBQITENS005.ACTIVE := FALSE;
DM.IBQITENS005.SQL.Text := 'select * FROM ITENS005 WHERE NUMERONF = ' + #39 + FOS.DBEDIT12.TEXT + #39;
dm.IBQITENS005.ACTIVE := TRUE;
end;

procedure TFOs.SpeedButton5Click(Sender: TObject);
begin
FESTOQUE.SHOWMODAL;
end;

procedure TFOs.SpinButton10DownClick(Sender: TObject);
begin
IF DBEDIT29.Text = '' THEN DBEDIT29.Text := '0';
IF DBEDIT29.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT29.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT29.TEXT) - 1);
end;

procedure TFOs.SpinButton10UpClick(Sender: TObject);
begin
IF   DBEDIT29.Text = ''
THEN DBEDIT29.Text := '1'
ELSE DBEDIT29.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT29.TEXT) + 1);
end;

procedure TFOs.SpinButton11DownClick(Sender: TObject);
begin
IF DBEDIT30.Text = '' THEN DBEDIT30.Text := '0';
IF DBEDIT30.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT30.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT30.TEXT) - 1);
end;

procedure TFOs.SpinButton11UpClick(Sender: TObject);
begin
IF   DBEDIT30.Text = ''
THEN DBEDIT30.Text := '1'
ELSE DBEDIT30.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT30.TEXT) + 1);
end;

procedure TFOs.SpinButton12DownClick(Sender: TObject);
begin
IF DBEDIT32.Text = '' THEN DBEDIT32.Text := '0';
IF DBEDIT32.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT32.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT32.TEXT) - 1);
end;

procedure TFOs.SpinButton12UpClick(Sender: TObject);
begin
IF   DBEDIT32.Text = ''
THEN DBEDIT32.Text := '1'
ELSE DBEDIT32.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT32.TEXT) + 1);
end;

procedure TFOs.SpinButton13DownClick(Sender: TObject);
begin
IF DBEDIT31.Text = '' THEN DBEDIT31.Text := '0';
IF DBEDIT31.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT31.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT31.TEXT) - 1);
end;

procedure TFOs.SpinButton13UpClick(Sender: TObject);
begin
IF   DBEDIT31.Text = ''
THEN DBEDIT31.Text := '1'
ELSE DBEDIT31.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT31.TEXT) + 1);
end;

procedure TFOs.SpinButton14DownClick(Sender: TObject);
begin
IF DBEDIT33.Text = '' THEN DBEDIT33.Text := '0';
IF DBEDIT33.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT33.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT33.TEXT) - 1);
end;

procedure TFOs.SpinButton14UpClick(Sender: TObject);
begin
IF   DBEDIT33.Text = ''
THEN DBEDIT33.Text := '1'
ELSE DBEDIT33.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT33.TEXT) + 1);
end;

procedure TFOs.SpinButton15DownClick(Sender: TObject);
begin
IF DBEDIT34.Text = '' THEN DBEDIT34.Text := '0';
IF DBEDIT34.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT34.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT34.TEXT) - 1);
end;

procedure TFOs.SpinButton15UpClick(Sender: TObject);
begin
IF   DBEDIT34.Text = ''
THEN DBEDIT34.Text := '1'
ELSE DBEDIT34.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT34.TEXT) + 1);
end;

procedure TFOs.SpinButton16DownClick(Sender: TObject);
begin
IF DBEDIT35.Text = '' THEN DBEDIT35.Text := '0';
IF DBEDIT35.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT35.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT35.TEXT) - 1);
end;

procedure TFOs.SpinButton16UpClick(Sender: TObject);
begin
IF   DBEDIT35.Text = ''
THEN DBEDIT35.Text := '1'
ELSE DBEDIT35.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT35.TEXT) + 1);
end;

procedure TFOs.SpinButton17DownClick(Sender: TObject);
begin
IF DBEDIT36.Text = '' THEN DBEDIT36.Text := '0';
IF DBEDIT36.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT36.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT36.TEXT) - 1);
end;

procedure TFOs.SpinButton17UpClick(Sender: TObject);
begin
IF   DBEDIT36.Text = ''
THEN DBEDIT36.Text := '1'
ELSE DBEDIT36.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT36.TEXT) + 1);
end;

procedure TFOs.SpinButton18DownClick(Sender: TObject);
begin
IF DBEDIT37.Text = '' THEN DBEDIT37.Text := '0';
IF DBEDIT37.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT37.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT37.TEXT) - 1);
end;

procedure TFOs.SpinButton18UpClick(Sender: TObject);
begin
IF   DBEDIT37.Text = ''
THEN DBEDIT37.Text := '1'
ELSE DBEDIT37.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT37.TEXT) + 1);
end;

procedure TFOs.SpinButton19DownClick(Sender: TObject);
begin
IF DBEDIT38.Text = '' THEN DBEDIT38.Text := '0';
IF DBEDIT38.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT38.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT38.TEXT) - 1);
end;

procedure TFOs.SpinButton19UpClick(Sender: TObject);
begin
IF   DBEDIT38.Text = ''
THEN DBEDIT38.Text := '1'
ELSE DBEDIT38.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT38.TEXT) + 1);
end;

procedure TFOs.SpinButton1DownClick(Sender: TObject);
begin
IF DBEDIT20.Text = '' THEN DBEDIT20.Text := '0';
IF DBEDIT20.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT20.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT20.TEXT) - 1);
end;

procedure TFOs.SpinButton1UpClick(Sender: TObject);
begin
IF   DBEDIT20.Text = ''
THEN DBEDIT20.Text := '1'
ELSE DBEDIT20.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT20.TEXT) + 1);
end;

procedure TFOs.SpinButton20DownClick(Sender: TObject);
begin
IF DBEDIT57.Text = '' THEN DBEDIT57.Text := '0';
IF DBEDIT57.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT57.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT57.TEXT) - 1);
end;

procedure TFOs.SpinButton20UpClick(Sender: TObject);
begin
IF   DBEDIT57.Text = ''
THEN DBEDIT57.Text := '1'
ELSE DBEDIT57.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT57.TEXT) + 1);
end;

procedure TFOs.SpinButton21DownClick(Sender: TObject);
begin
IF DBEDIT58.Text = '' THEN DBEDIT58.Text := '0';
IF DBEDIT58.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT58.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT58.TEXT) - 1);
end;

procedure TFOs.SpinButton21UpClick(Sender: TObject);
begin
IF   DBEDIT58.Text = ''
THEN DBEDIT58.Text := '1'
ELSE DBEDIT58.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT58.TEXT) + 1);
end;

procedure TFOs.SpinButton22DownClick(Sender: TObject);
begin
IF DBEDIT59.Text = '' THEN DBEDIT59.Text := '0';
IF DBEDIT59.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT59.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT59.TEXT) - 1);
end;

procedure TFOs.SpinButton22UpClick(Sender: TObject);
begin
IF   DBEDIT59.Text = ''
THEN DBEDIT59.Text := '1'
ELSE DBEDIT59.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT59.TEXT) + 1);
end;

procedure TFOs.SpinButton23DownClick(Sender: TObject);
begin
IF DBEDIT60.Text = '' THEN DBEDIT60.Text := '0';
IF DBEDIT60.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT60.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT60.TEXT) - 1);
end;

procedure TFOs.SpinButton23UpClick(Sender: TObject);
begin
IF   DBEDIT60.Text = ''
THEN DBEDIT60.Text := '1'
ELSE DBEDIT60.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT60.TEXT) + 1);
end;

procedure TFOs.SpinButton24DownClick(Sender: TObject);
begin
IF DBEDIT61.Text = '' THEN DBEDIT61.Text := '0';
IF DBEDIT61.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT61.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT61.TEXT) - 1);
end;

procedure TFOs.SpinButton24UpClick(Sender: TObject);
begin
IF   DBEDIT61.Text = ''
THEN DBEDIT61.Text := '1'
ELSE DBEDIT61.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT61.TEXT) + 1);
end;

procedure TFOs.SpinButton25DownClick(Sender: TObject);
begin
IF DBEDIT62.Text = '' THEN DBEDIT62.Text := '0';
IF DBEDIT62.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT62.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT62.TEXT) - 1);
end;

procedure TFOs.SpinButton25UpClick(Sender: TObject);
begin
IF   DBEDIT62.Text = ''
THEN DBEDIT62.Text := '1'
ELSE DBEDIT62.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT62.TEXT) + 1);
end;

procedure TFOs.SpinButton26DownClick(Sender: TObject);
begin
IF DBEDIT63.Text = '' THEN DBEDIT63.Text := '0';
IF DBEDIT63.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT63.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT63.TEXT) - 1);
end;

procedure TFOs.SpinButton26UpClick(Sender: TObject);
begin
IF   DBEDIT63.Text = ''
THEN DBEDIT63.Text := '1'
ELSE DBEDIT63.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT63.TEXT) + 1);
end;

procedure TFOs.SpinButton27DownClick(Sender: TObject);
begin
IF DBEDIT64.Text = '' THEN DBEDIT64.Text := '0';
IF DBEDIT64.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT64.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT64.TEXT) - 1);
end;

procedure TFOs.SpinButton27UpClick(Sender: TObject);
begin
IF   DBEDIT64.Text = ''
THEN DBEDIT64.Text := '1'
ELSE DBEDIT64.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT64.TEXT) + 1);
end;

procedure TFOs.SpinButton28DownClick(Sender: TObject);
begin
IF DBEDIT65.Text = '' THEN DBEDIT65.Text := '0';
IF DBEDIT65.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT65.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT65.TEXT) - 1);
end;

procedure TFOs.SpinButton28UpClick(Sender: TObject);
begin
IF   DBEDIT65.Text = ''
THEN DBEDIT65.Text := '1'
ELSE DBEDIT65.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT65.TEXT) + 1);
end;

procedure TFOs.SpinButton29DownClick(Sender: TObject);
begin
IF DBEDIT66.Text = '' THEN DBEDIT66.Text := '0';
IF DBEDIT66.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT66.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT66.TEXT) - 1);
end;

procedure TFOs.SpinButton29UpClick(Sender: TObject);
begin
IF   DBEDIT66.Text = ''
THEN DBEDIT66.Text := '1'
ELSE DBEDIT66.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT66.TEXT) + 1);
end;

procedure TFOs.SpinButton2DownClick(Sender: TObject);
begin
IF DBEDIT21.Text = '' THEN DBEDIT21.Text := '0';
IF DBEDIT21.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT21.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT21.TEXT) - 1);
end;

procedure TFOs.SpinButton2UpClick(Sender: TObject);
begin
IF   DBEDIT21.Text = ''
THEN DBEDIT21.Text := '1'
ELSE DBEDIT21.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT21.TEXT) + 1);

end;

procedure TFOs.SpinButton30DownClick(Sender: TObject);
begin
IF DBEDIT67.Text = '' THEN DBEDIT67.Text := '0';
IF DBEDIT67.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT67.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT67.TEXT) - 1);
end;

procedure TFOs.SpinButton30UpClick(Sender: TObject);
begin
IF   DBEDIT67.Text = ''
THEN DBEDIT67.Text := '1'
ELSE DBEDIT67.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT67.TEXT) + 1);
end;

procedure TFOs.SpinButton3DownClick(Sender: TObject);
begin
IF DBEDIT22.Text = '' THEN DBEDIT22.Text := '0';
IF DBEDIT22.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT22.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT22.TEXT) - 1);
end;

procedure TFOs.SpinButton3UpClick(Sender: TObject);
begin
IF   DBEDIT22.Text = ''
THEN DBEDIT22.Text := '1'
ELSE DBEDIT22.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT22.TEXT) + 1);
end;

procedure TFOs.SpinButton4DownClick(Sender: TObject);
begin
IF DBEDIT23.Text = '' THEN DBEDIT23.Text := '0';
IF DBEDIT23.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT23.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT23.TEXT) - 1);
end;

procedure TFOs.SpinButton4UpClick(Sender: TObject);
begin
IF   DBEDIT23.Text = ''
THEN DBEDIT23.Text := '1'
ELSE DBEDIT23.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT23.TEXT) + 1);
end;

procedure TFOs.SpinButton5DownClick(Sender: TObject);
begin
IF DBEDIT24.Text = '' THEN DBEDIT24.Text := '0';
IF DBEDIT24.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT24.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT24.TEXT) - 1);
end;

procedure TFOs.SpinButton5UpClick(Sender: TObject);
begin
IF   DBEDIT24.Text = ''
THEN DBEDIT24.Text := '1'
ELSE DBEDIT24.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT24.TEXT) + 1);
end;

procedure TFOs.SpinButton6DownClick(Sender: TObject);
begin
IF DBEDIT25.Text = '' THEN DBEDIT25.Text := '0';
IF DBEDIT25.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT25.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT25.TEXT) - 1);
end;

procedure TFOs.SpinButton6UpClick(Sender: TObject);
begin
IF   DBEDIT25.Text = ''
THEN DBEDIT25.Text := '1'
ELSE DBEDIT25.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT25.TEXT) + 1);
end;

procedure TFOs.SpinButton7DownClick(Sender: TObject);
begin
IF DBEDIT26.Text = '' THEN DBEDIT26.Text := '0';
IF DBEDIT26.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT26.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT26.TEXT) - 1);
end;

procedure TFOs.SpinButton7UpClick(Sender: TObject);
begin
IF   DBEDIT26.Text = ''
THEN DBEDIT26.Text := '1'
ELSE DBEDIT26.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT26.TEXT) + 1);
end;

procedure TFOs.SpinButton8DownClick(Sender: TObject);
begin
IF DBEDIT27.Text = '' THEN DBEDIT27.Text := '0';
IF DBEDIT27.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT27.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT27.TEXT) - 1);
end;

procedure TFOs.SpinButton8UpClick(Sender: TObject);
begin
IF   DBEDIT27.Text = ''
THEN DBEDIT27.Text := '1'
ELSE DBEDIT27.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT27.TEXT) + 1);
end;

procedure TFOs.SpinButton9DownClick(Sender: TObject);
begin
IF DBEDIT28.Text = '' THEN DBEDIT28.Text := '0';
IF DBEDIT28.TEXT = '0' THEN SHOWMESSAGE('Este número não pode ser negativo.')
ELSE DBEDIT28.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT28.TEXT) - 1);
end;

procedure TFOs.SpinButton9UpClick(Sender: TObject);
begin
IF   DBEDIT28.Text = ''
THEN DBEDIT28.Text := '1'
ELSE DBEDIT28.Text := FLOATTOSTR(STRTOFLOAT(DBEDIT28.TEXT) + 1);
end;

end.
