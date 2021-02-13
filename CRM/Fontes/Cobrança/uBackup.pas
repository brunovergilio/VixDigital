unit uBackup;
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Vcl.AppEvnts, Data.DB, Vcl.ComCtrls, Vcl.FileCtrl;

type
  TfrmBackup = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label2: TLabel;
    Buton_Backup: TButton;
    EdBackupTitle: TEdit;
    BtnCancel: TButton;
    Memo_Andamento: TMemo;
    TabSheet2: TTabSheet;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Btn_Restaurar: TButton;
    Button6: TButton;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    MeFiles: TMemo;
    Memo_Restaurar: TMemo;
    Panel4: TPanel;
    Panel5: TPanel;
    FileListBox1: TFileListBox;
    Panel6: TPanel;
    DriveComboBox1: TDriveComboBox;
    Panel7: TPanel;
    DirectoryListBox1: TDirectoryListBox;
    Panel1: TPanel;
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBackup: TfrmBackup;

implementation

{$R *.DFM}


end.
