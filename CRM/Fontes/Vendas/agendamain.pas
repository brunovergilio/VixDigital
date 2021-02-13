unit agendamain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxStyles, cxEdit, cxScheduler,
  cxSchedulerStorage, cxSchedulerCustomControls, cxSchedulerCustomResourceView,
  cxSchedulerDayView, cxSchedulerDateNavigator, cxSchedulerHolidays,
  cxSchedulerTimeGridView, cxSchedulerUtils, cxSchedulerWeekView,
  cxSchedulerYearView, cxSchedulerGanttView, cxSchedulerRecurrence,
  cxSchedulerTreeListBrowser, cxSchedulerRibbonStyleEventEditor, Data.DB, JvMemoryDataset,
  cxClasses, cxSchedulerDBStorage, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.IBBase, FireDAC.Comp.UI, Vcl.ToolWin, Vcl.ComCtrls,
  cxSchedulerAgendaView, dxBarBuiltInMenu, Vcl.StdCtrls, Vcl.Buttons, RzButton,
  Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls, AdvUtil, Vcl.Grids, AdvObj, BaseGrid,
  AdvGrid, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, cxLocalization, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPSCore, dxPScxSchedulerLnk, dxPSStdGrLnk, dxPSLbxLnk, dxPSChLbxLnk,
  dxPSContainerLnk;

type
  TfrmAgenda = class(TForm)
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    cxSchedulerDBStorage1: TcxSchedulerDBStorage;
    cxScheduler1: TcxScheduler;
    JvMemoryData1: TJvMemoryData;
    JvMemoryData2: TJvMemoryData;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    JvMemoryData2ID: TIntegerField;
    JvMemoryData2NOME: TStringField;
    FDQuery1RESOURCEID: TIntegerField;
    FDQuery1CAPTION: TStringField;
    FDQuery1START_AGE: TSQLTimeStampField;
    FDQuery1FINISH: TSQLTimeStampField;
    FDQuery1STATE: TIntegerField;
    FDQuery1ACTUALFINISH: TIntegerField;
    FDQuery1ACTUALSTART: TIntegerField;
    FDQuery1EVENTTYPE: TIntegerField;
    FDQuery1LABELCOLOR: TIntegerField;
    FDQuery1LOCATION: TStringField;
    FDQuery1MESSAGEM: TStringField;
    FDQuery1OPTIONS: TIntegerField;
    FDQuery1RECURRENCEINDEX: TIntegerField;
    FDQuery1RECURRENCEINFO: TMemoField;
    FDQuery1REMINDERDATE: TSQLTimeStampField;
    FDQuery1REMINDERMINUTESBEFORESTART: TIntegerField;
    FDQuery1REMINDERRESOURCESDATA: TMemoField;
    FDQuery1TASKCOMPLETEFIELD: TIntegerField;
    FDQuery1TASKINDEXFIELD: TIntegerField;
    FDQuery1TASKLINKSFIELD: TMemoField;
    FDQuery1TASKSTATUSFIELD: TIntegerField;
    FDQuery1ID: TStringField;
    FDQuery1PARENTID: TStringField;
    cxSchedulerHolidays1: TcxSchedulerHolidays;
    JvMemoryData1RESOURCEID: TIntegerField;
    JvMemoryData1CAPTION: TStringField;
    JvMemoryData1START_AGE: TSQLTimeStampField;
    JvMemoryData1FINISH: TSQLTimeStampField;
    JvMemoryData1STATE: TIntegerField;
    JvMemoryData1ACTUALFINISH: TIntegerField;
    JvMemoryData1ACTUALSTART: TIntegerField;
    JvMemoryData1EVENTTYPE: TIntegerField;
    JvMemoryData1LABELCOLOR: TIntegerField;
    JvMemoryData1LOCATION: TStringField;
    JvMemoryData1MESSAGEM: TStringField;
    JvMemoryData1OPTIONS: TIntegerField;
    JvMemoryData1RECURRENCEINDEX: TIntegerField;
    JvMemoryData1RECURRENCEINFO: TMemoField;
    JvMemoryData1REMINDERDATE: TSQLTimeStampField;
    JvMemoryData1REMINDERMINUTESBEFORESTART: TIntegerField;
    JvMemoryData1REMINDERRESOURCESDATA: TMemoField;
    JvMemoryData1TASKCOMPLETEFIELD: TIntegerField;
    JvMemoryData1TASKINDEXFIELD: TIntegerField;
    JvMemoryData1TASKLINKSFIELD: TMemoField;
    JvMemoryData1TASKSTATUSFIELD: TIntegerField;
    JvMemoryData1ID: TStringField;
    JvMemoryData1PARENTID: TStringField;
    JvMemoryData2COR: TIntegerField;
    JvMemoryData2INDEX: TIntegerField;
    fdresourcesgrid: TFDQuery;
    DataSource5: TDataSource;
    fdresourcesgridID: TIntegerField;
    fdresourcesgridNOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure JvMemoryData1BeforePost(DataSet: TDataSet);
    procedure JvMemoryData1BeforeDelete(DataSet: TDataSet);
    procedure bbNovoClick(Sender: TObject);
    procedure AdvStringGrid1Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnimp0Click(Sender: TObject);
    procedure btnTransmitirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgenda: TfrmAgenda;

implementation

{$R *.dfm}

uses udatamodule;

procedure TfrmAgenda.AdvStringGrid1Click(Sender: TObject);
begin
    JvMemoryData2.Active := false;
    FDQuery2.close;
    FDQuery2.sql.Clear;
    FDQuery2.sql.Add('select * from Agenda_Recursos where id=:pid');
    FDQuery2.ParamByName('pid').AsString := fdresourcesgrid.FieldByName('id').AsString;
    FDQuery2.open;
    JvMemoryData2.LoadFromDataSet(FDQuery2, 0, lmAppend);
    JvMemoryData2.Active := true;
end;

procedure TfrmAgenda.bbNovoClick(Sender: TObject);
begin
cxScheduler1.GoToDate(date);
end;

procedure TfrmAgenda.btnimp0Click(Sender: TObject);
begin
FrmAgenda.Update;
FrmAgenda.Update;
end;

procedure TfrmAgenda.btnNovoClick(Sender: TObject);
begin
    JvMemoryData2.Active := false;
    FDQuery2.close;
    FDQuery2.sql.Clear;
    FDQuery2.sql.Add('select * from Agenda_Recursos');
    FDQuery2.open;
    JvMemoryData2.LoadFromDataSet(FDQuery2, 0, lmAppend);
    JvMemoryData2.Active := true;
end;

procedure TfrmAgenda.btnTransmitirClick(Sender: TObject);
begin
showmessage('Indisponível.');
end;

procedure TfrmAgenda.FormCreate(Sender: TObject);
begin
  FDQuery1.Active := true;
  FDQuery2.Active := true;
  fdresourcesgrid.Active := true;
  JvMemoryData1.LoadFromDataSet(FDQuery1, 0, lmAppend);
  JvMemoryData2.LoadFromDataSet(FDQuery2, 0, lmAppend);
  // cxSchedulerHolidays1.AddHoliday('Brasil', 'Independencia do Brasil', 2017/09/07);
  //cxSchedulerHolidays1.SaveToFile('c:\agenda\feriados3.hol');
  cxSchedulerHolidays1.SaveToFile('feriados3.hol');
end;

procedure TfrmAgenda.JvMemoryData1BeforeDelete(DataSet: TDataSet);
var
  Qry: TFDQuery;
begin
  try
    Qry := TFDQuery.Create(self);
    Qry.Connection:= Dados.Conexao;
    Qry.sql.clear;
    Qry.sql.Add('delete from Agenda_Personalizada where id=:pid');
    Qry.ParamByName('pid').AsString := JvMemoryData1.FieldByName('id')
      .AsString;
    Qry.ExecSQL;
  finally
    Qry.Free;
  end;
end;

procedure TfrmAgenda.JvMemoryData1BeforePost(DataSet: TDataSet);
var
  Qry: TFDQuery;
begin
  try
    Qry := TFDQuery.Create(self);
    Qry.Connection:= Dados.Conexao;
    Qry.sql.clear;
    Qry.sql.Add('select * from Agenda_Personalizada where id=:pid');
    Qry.ParamByName('pid').AsString := JvMemoryData1.FieldByName('id')
      .AsString;
    Qry.open;
    with Qry do
    begin
      if eof = false then
      begin
        edit;
        copyfields(JvMemoryData1);
      end
      else
      begin
        append;
        copyfields(JvMemoryData1);
      end;
      post;
    end;
  finally
    Qry.Free;
  end;
end;

end.
