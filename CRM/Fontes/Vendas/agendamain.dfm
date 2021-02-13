object frmAgenda: TfrmAgenda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Agenda'
  ClientHeight = 640
  ClientWidth = 1280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxScheduler1: TcxScheduler
    Left = 0
    Top = 0
    Width = 1280
    Height = 640
    DateNavigator.ShowDatesContainingHolidaysInColor = True
    DateNavigator.ShowWeekNumbers = False
    ViewDay.Active = True
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BevelKind = bkFlat
    DialogsLookAndFeel.NativeStyle = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Roboto'
    Font.Style = []
    OptionsBehavior.ModalDialogs = True
    OptionsCustomize.DynamicSizing = True
    OptionsView.DayBorderColor = clGray
    OptionsView.ResourceHeaders.Height = 30
    OptionsView.ResourceHeaders.MultilineCaptions = True
    OptionsView.ResourcesPerPage = 20
    OptionsView.ShowEventsWithoutResource = True
    OptionsView.Style = svsClassic
    OptionsView.ViewPosition = vpRight
    OptionsView.WorkFinish = 0.791666666666666600
    ResourceNavigator.Visibility = snvAlways
    Storage = cxSchedulerDBStorage1
    TabOrder = 0
    Splitters = {
      01000000AE000000DB000000B3000000DB00000001000000E00000007F020000}
    StoredClientBounds = {0100000001000000FF0400007F020000}
  end
  object FDQuery1: TFDQuery
    SQL.Strings = (
      'select * from agenda_personalizada')
    Left = 120
    Top = 336
    object FDQuery1RESOURCEID: TIntegerField
      FieldName = 'RESOURCEID'

    end
    object FDQuery1CAPTION: TStringField
      FieldName = 'CAPTION'

      Size = 255
    end
    object FDQuery1START_AGE: TSQLTimeStampField
      FieldName = 'START_AGE'

    end
    object FDQuery1FINISH: TSQLTimeStampField
      FieldName = 'FINISH'

    end
    object FDQuery1STATE: TIntegerField
      FieldName = 'STATE'

    end
    object FDQuery1ACTUALFINISH: TIntegerField
      FieldName = 'ACTUALFINISH'

    end
    object FDQuery1ACTUALSTART: TIntegerField
      FieldName = 'ACTUALSTART'

    end
    object FDQuery1EVENTTYPE: TIntegerField
      FieldName = 'EVENTTYPE'

    end
    object FDQuery1LABELCOLOR: TIntegerField
      FieldName = 'LABELCOLOR'

    end
    object FDQuery1LOCATION: TStringField
      FieldName = 'LOCATION'

      Size = 255
    end
    object FDQuery1MESSAGEM: TStringField
      FieldName = 'MESSAGEM'

      Size = 255
    end
    object FDQuery1OPTIONS: TIntegerField
      FieldName = 'OPTIONS'

    end
    object FDQuery1RECURRENCEINDEX: TIntegerField
      FieldName = 'RECURRENCEINDEX'

    end
    object FDQuery1RECURRENCEINFO: TMemoField
      FieldName = 'RECURRENCEINFO'

      BlobType = ftMemo
    end
    object FDQuery1REMINDERDATE: TSQLTimeStampField
      FieldName = 'REMINDERDATE'

    end
    object FDQuery1REMINDERMINUTESBEFORESTART: TIntegerField
      FieldName = 'REMINDERMINUTESBEFORESTART'

    end
    object FDQuery1REMINDERRESOURCESDATA: TMemoField
      FieldName = 'REMINDERRESOURCESDATA'

      BlobType = ftMemo
    end
    object FDQuery1TASKCOMPLETEFIELD: TIntegerField
      FieldName = 'TASKCOMPLETEFIELD'

    end
    object FDQuery1TASKINDEXFIELD: TIntegerField
      FieldName = 'TASKINDEXFIELD'

    end
    object FDQuery1TASKLINKSFIELD: TMemoField
      FieldName = 'TASKLINKSFIELD'

      BlobType = ftMemo
    end
    object FDQuery1TASKSTATUSFIELD: TIntegerField
      FieldName = 'TASKSTATUSFIELD'

    end
    object FDQuery1ID: TStringField
      FieldName = 'ID'

      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 38
    end
    object FDQuery1PARENTID: TStringField
      FieldName = 'PARENTID'

      Size = 38
    end
  end
  object FDQuery2: TFDQuery
    SQL.Strings = (
      'select * from agenda_recursos')
    Left = 120
    Top = 392
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 200
    Top = 336
  end
  object DataSource2: TDataSource
    DataSet = FDQuery2
    Left = 200
    Top = 392
  end
  object cxSchedulerDBStorage1: TcxSchedulerDBStorage
    GenerateGUIDForID = True
    Reminders.DefaultReminder = True
    Reminders.TimeZoneDaylightSaving = True
    Resources.Items = <>
    Resources.DataSource = DataSource4
    Resources.ResourceColor = 'COR'
    Resources.ResourceID = 'ID'
    Resources.ResourceImageIndex = 'INDEX'
    Resources.ResourceName = 'NOME'
    CustomFields = <>
    DataSource = DataSource3
    FieldNames.ActualFinish = 'ACTUALFINISH'
    FieldNames.ActualStart = 'ACTUALSTART'
    FieldNames.Caption = 'CAPTION'
    FieldNames.EventType = 'EVENTTYPE'
    FieldNames.Finish = 'FINISH'
    FieldNames.ID = 'ID'
    FieldNames.LabelColor = 'LABELCOLOR'
    FieldNames.Location = 'LOCATION'
    FieldNames.Message = 'MESSAGEM'
    FieldNames.Options = 'OPTIONS'
    FieldNames.ParentID = 'PARENTID'
    FieldNames.RecurrenceIndex = 'RECURRENCEINDEX'
    FieldNames.RecurrenceInfo = 'RECURRENCEINFO'
    FieldNames.ReminderDate = 'REMINDERDATE'
    FieldNames.ReminderMinutesBeforeStart = 'REMINDERMINUTESBEFORESTART'
    FieldNames.ReminderResourcesData = 'REMINDERRESOURCESDATA'
    FieldNames.ResourceID = 'RESOURCEID'
    FieldNames.Start = 'START_AGE'
    FieldNames.State = 'STATE'
    FieldNames.TaskCompleteField = 'TASKCOMPLETEFIELD'
    FieldNames.TaskIndexField = 'TASKINDEXFIELD'
    FieldNames.TaskLinksField = 'TASKLINKSFIELD'
    FieldNames.TaskStatusField = 'TASKSTATUSFIELD'
    Left = 280
    Top = 272
  end
  object JvMemoryData1: TJvMemoryData
    FieldDefs = <
      item
        Name = 'RESOURCEID'
        DataType = ftInteger
      end
      item
        Name = 'CAPTION'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'START_AGE'
        DataType = ftTimeStamp
      end
      item
        Name = 'FINISH'
        DataType = ftTimeStamp
      end
      item
        Name = 'STATE'
        DataType = ftInteger
      end
      item
        Name = 'ACTUALFINISH'
        DataType = ftInteger
      end
      item
        Name = 'ACTUALSTART'
        DataType = ftInteger
      end
      item
        Name = 'EVENTTYPE'
        DataType = ftInteger
      end
      item
        Name = 'LABELCOLOR'
        DataType = ftInteger
      end
      item
        Name = 'LOCATION'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'MESSAGEM'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'OPTIONS'
        DataType = ftInteger
      end
      item
        Name = 'RECURRENCEINDEX'
        DataType = ftInteger
      end
      item
        Name = 'RECURRENCEINFO'
        DataType = ftMemo
      end
      item
        Name = 'REMINDERDATE'
        DataType = ftTimeStamp
      end
      item
        Name = 'REMINDERMINUTESBEFORESTART'
        DataType = ftInteger
      end
      item
        Name = 'REMINDERRESOURCESDATA'
        DataType = ftMemo
      end
      item
        Name = 'TASKCOMPLETEFIELD'
        DataType = ftInteger
      end
      item
        Name = 'TASKINDEXFIELD'
        DataType = ftInteger
      end
      item
        Name = 'TASKLINKSFIELD'
        DataType = ftMemo
      end
      item
        Name = 'TASKSTATUSFIELD'
        DataType = ftInteger
      end
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftString
        Size = 38
      end
      item
        Name = 'PARENTID'
        DataType = ftString
        Size = 38
      end>
    BeforePost = JvMemoryData1BeforePost
    BeforeDelete = JvMemoryData1BeforeDelete
    Left = 120
    Top = 200
    object JvMemoryData1RESOURCEID: TIntegerField
      FieldName = 'RESOURCEID'
    end
    object JvMemoryData1CAPTION: TStringField
      FieldName = 'CAPTION'
      Size = 255
    end
    object JvMemoryData1START_AGE: TSQLTimeStampField
      FieldName = 'START_AGE'
    end
    object JvMemoryData1FINISH: TSQLTimeStampField
      FieldName = 'FINISH'
    end
    object JvMemoryData1STATE: TIntegerField
      FieldName = 'STATE'
    end
    object JvMemoryData1ACTUALFINISH: TIntegerField
      FieldName = 'ACTUALFINISH'
    end
    object JvMemoryData1ACTUALSTART: TIntegerField
      FieldName = 'ACTUALSTART'
    end
    object JvMemoryData1EVENTTYPE: TIntegerField
      FieldName = 'EVENTTYPE'
    end
    object JvMemoryData1LABELCOLOR: TIntegerField
      FieldName = 'LABELCOLOR'
    end
    object JvMemoryData1LOCATION: TStringField
      FieldName = 'LOCATION'
      Size = 255
    end
    object JvMemoryData1MESSAGEM: TStringField
      FieldName = 'MESSAGEM'
      Size = 255
    end
    object JvMemoryData1OPTIONS: TIntegerField
      FieldName = 'OPTIONS'
    end
    object JvMemoryData1RECURRENCEINDEX: TIntegerField
      FieldName = 'RECURRENCEINDEX'
    end
    object JvMemoryData1RECURRENCEINFO: TMemoField
      FieldName = 'RECURRENCEINFO'
      BlobType = ftMemo
    end
    object JvMemoryData1REMINDERDATE: TSQLTimeStampField
      FieldName = 'REMINDERDATE'
    end
    object JvMemoryData1REMINDERMINUTESBEFORESTART: TIntegerField
      FieldName = 'REMINDERMINUTESBEFORESTART'
    end
    object JvMemoryData1REMINDERRESOURCESDATA: TMemoField
      FieldName = 'REMINDERRESOURCESDATA'
      BlobType = ftMemo
    end
    object JvMemoryData1TASKCOMPLETEFIELD: TIntegerField
      FieldName = 'TASKCOMPLETEFIELD'
    end
    object JvMemoryData1TASKINDEXFIELD: TIntegerField
      FieldName = 'TASKINDEXFIELD'
    end
    object JvMemoryData1TASKLINKSFIELD: TMemoField
      FieldName = 'TASKLINKSFIELD'
      BlobType = ftMemo
    end
    object JvMemoryData1TASKSTATUSFIELD: TIntegerField
      FieldName = 'TASKSTATUSFIELD'
    end
    object JvMemoryData1ID: TStringField
      FieldName = 'ID'
      Required = True
      Size = 38
    end
    object JvMemoryData1PARENTID: TStringField
      FieldName = 'PARENTID'
      Size = 38
    end
  end
  object JvMemoryData2: TJvMemoryData
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'COR'
        DataType = ftInteger
      end
      item
        Name = 'INDEX'
        DataType = ftInteger
      end>
    Left = 120
    Top = 272
    object JvMemoryData2ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object JvMemoryData2NOME: TStringField
      FieldName = 'NOME'
      Size = 255
    end
    object JvMemoryData2COR: TIntegerField
      FieldName = 'COR'
    end
    object JvMemoryData2INDEX: TIntegerField
      FieldName = 'INDEX'
    end
  end
  object DataSource3: TDataSource
    DataSet = JvMemoryData1
    Left = 200
    Top = 200
  end
  object DataSource4: TDataSource
    DataSet = JvMemoryData2
    Left = 200
    Top = 272
  end
  object cxSchedulerHolidays1: TcxSchedulerHolidays
    Locations = <
      item
        Name = 'Brasil'
        Visible = True
        Holidays = <
          item
            Date = 42736.000000000000000000
            Name = 'Confraterniza'#231#227'o Universal'
          end
          item
            Date = 42793.000000000000000000
            Name = 'Carnaval'
          end
          item
            Date = 42794.000000000000000000
            Name = 'Carnaval'
          end
          item
            Date = 42839.000000000000000000
            Name = 'Paix'#227'o de Cristo'
          end
          item
            Date = 42846.000000000000000000
            Name = 'Tiradentes'
          end
          item
            Date = 42856.000000000000000000
            Name = 'Dia do Trabalho'
          end
          item
            Date = 42901.000000000000000000
            Name = 'Corpus Christi'
          end
          item
            Date = 42985.000000000000000000
            Name = 'Independencia do Brasil'
          end
          item
            Date = 43094.000000000000000000
            Name = 'Natal'
          end
          item
            Date = 43020.000000000000000000
            Name = 'Nossa Sr.a Aparecida - Padroeira do Brasil'
          end
          item
            Date = 43041.000000000000000000
            Name = 'Finados'
          end
          item
            Date = 43054.000000000000000000
            Name = 'Proclama'#231#227'o da Rep'#250'blica'
          end
          item
            Date = 43094.000000000000000000
            Name = 'Natal'
          end>
      end>
    Left = 280
    Top = 200
  end
  object fdresourcesgrid: TFDQuery
    SQL.Strings = (
      'select * from agenda_recursos')
    Left = 120
    Top = 474
    object fdresourcesgridID: TIntegerField
      FieldName = 'ID'

      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = ',0.00'
    end
    object fdresourcesgridNOME: TStringField
      DisplayLabel = 'Profissional'
      FieldName = 'NOME'

      Size = 255
    end
  end
  object DataSource5: TDataSource
    DataSet = FDQuery2
    Left = 200
    Top = 472
  end
end
