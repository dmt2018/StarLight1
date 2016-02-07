object DM: TDM
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Height = 575
  Width = 801
  object OraSession1: TOraSession
    Options.Charset = 'CL8MSWIN1251'
    Options.Direct = True
    Username = 'CREATOR'
    Password = '123456'
    Server = 'KLEPOV:1521:STARNEW'
    LoginPrompt = False
    AfterConnect = OraSession1AfterConnect
    Left = 24
    Top = 16
  end
  object Ora_SQL: TOraSQL
    Session = OraSession1
    SQL.Strings = (
      
        'CREATE USER "ASD" PROFILE "DEFAULT" IDENTIFIED BY "aaa" DEFAULT ' +
        'TABLESPACE "STARLIGHT" ACCOUNT UNLOCK;'
      'GRANT "CONNECT" TO "ASD"')
    Left = 112
    Top = 200
  end
  object Q_CLIENTS: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'begin'
      '  cash_pkg.show_clients(:v_office, :CURSOR_);'
      'end;')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = Q_CLIENTSBeforeOpen
    BeforeRefresh = Q_CLIENTSBeforeOpen
    Left = 320
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'v_office'
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptInputOutput
        Value = 'Object'
      end>
    object Q_CLIENTSID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object Q_CLIENTSNICK: TStringField
      FieldName = 'NICK'
    end
    object Q_CLIENTSFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object Q_CLIENTSDDATE: TDateTimeField
      FieldName = 'DDATE'
      Required = True
    end
    object Q_CLIENTSCCODE: TStringField
      FieldName = 'CCODE'
      Required = True
      Size = 13
    end
    object Q_CLIENTSREGION: TIntegerField
      FieldName = 'REGION'
      Required = True
    end
    object Q_CLIENTSTTYPE: TIntegerField
      FieldName = 'TTYPE'
      Required = True
    end
    object Q_CLIENTSID_CLIENTS_GROUPS: TIntegerField
      FieldName = 'ID_CLIENTS_GROUPS'
      Required = True
    end
    object Q_CLIENTSREGIONS_NAME: TStringField
      FieldName = 'REGIONS_NAME'
      Required = True
      Size = 255
    end
    object Q_CLIENTSGR_NAME: TStringField
      FieldName = 'GR_NAME'
      Required = True
      Size = 255
    end
    object Q_CLIENTSTTYPE_NAME: TStringField
      FieldName = 'TTYPE_NAME'
      Required = True
      Size = 50
    end
    object Q_CLIENTSCORRECTOR: TStringField
      FieldName = 'CORRECTOR'
    end
    object Q_CLIENTSPHONE: TStringField
      FieldName = 'PHONE'
      Size = 1024
    end
    object Q_CLIENTSBLOCK1: TIntegerField
      FieldName = 'BLOCK1'
      Required = True
    end
    object Q_CLIENTSBLOCK2: TIntegerField
      FieldName = 'BLOCK2'
      Required = True
    end
    object Q_CLIENTSREG_TYPE_NAME: TStringField
      FieldName = 'REG_TYPE_NAME'
    end
    object Q_CLIENTSSALES: TFloatField
      FieldName = 'SALES'
    end
    object Q_CLIENTSNN: TFloatField
      FieldName = 'NN'
    end
    object Q_CLIENTSCOUNTS: TIntegerField
      FieldName = 'COUNTS'
      Required = True
    end
    object Q_CLIENTSDEB_CLIENT: TIntegerField
      FieldName = 'DEB_CLIENT'
    end
  end
  object Q_CLIENTS_DS: TOraDataSource
    DataSet = Q_CLIENTS
    Left = 320
    Top = 192
  end
  object OPERATIONS: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT id_operations, t_short, t_long, t_type as t_type_, dolg, '
      
        'case when t_type=0 then '#39#1050#1072#1089#1089#1086#1074#1099#1077' '#1086#1087#1077#1088#1072#1094#1080#1080#39' else '#39#1044#1077#1073#1077#1090#1086#1088#1089#1082#1080#1077' '#1086#1087 +
        #1077#1088#1072#1094#1080#1080#39' end as t_type  '
      'FROM OPERATIONS'
      'where /*Filter*/ 1=1'
      'ORDER BY t_type , T_LONG')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 320
    Top = 16
    object OPERATIONSID_OPERATIONS: TIntegerField
      FieldName = 'ID_OPERATIONS'
      Required = True
    end
    object OPERATIONST_SHORT: TStringField
      FieldName = 'T_SHORT'
      Required = True
      Size = 3
    end
    object OPERATIONST_LONG: TStringField
      FieldName = 'T_LONG'
      Required = True
      Size = 50
    end
    object OPERATIONST_TYPE_: TIntegerField
      FieldName = 'T_TYPE_'
      Required = True
    end
    object OPERATIONSDOLG: TIntegerField
      FieldName = 'DOLG'
    end
    object OPERATIONST_TYPE: TStringField
      FieldName = 'T_TYPE'
    end
  end
  object OPERATIONS_DS: TOraDataSource
    DataSet = OPERATIONS
    Left = 320
    Top = 72
  end
  object Q_SQL: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT OLMER.PARAMS_SET_ID.nextval from DUAL')
    Left = 24
    Top = 64
  end
  object Q_DEBETORS: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'select * from VIEW_DEBETORS '
      'where (id_office=:v_office or :v_office=0)')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = Q_DEBETORSBeforeOpen
    BeforeRefresh = Q_DEBETORSBeforeOpen
    Left = 112
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'v_office'
        ParamType = ptInput
      end>
    object Q_DEBETORSNICK: TStringField
      FieldName = 'NICK'
      Required = True
    end
    object Q_DEBETORSFIO: TStringField
      FieldName = 'FIO'
      Required = True
      Size = 255
    end
    object Q_DEBETORSDOSTAVKA: TIntegerField
      FieldName = 'DOSTAVKA'
    end
    object Q_DEBETORSID_DEBETORS: TFloatField
      FieldName = 'ID_DEBETORS'
      Required = True
    end
    object Q_DEBETORSID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object Q_DEBETORSLAST_DDATE: TDateTimeField
      FieldName = 'LAST_DDATE'
    end
    object Q_DEBETORSSTATE: TIntegerField
      FieldName = 'STATE'
      Required = True
    end
    object Q_DEBETORSBEZNAL: TIntegerField
      FieldName = 'BEZNAL'
      Required = True
    end
    object Q_DEBETORSMARK: TIntegerField
      FieldName = 'MARK'
    end
    object Q_DEBETORSDEBET: TFloatField
      FieldName = 'DEBET'
      Required = True
    end
    object Q_DEBETORSCREDIT_DAYS: TIntegerField
      FieldName = 'CREDIT_DAYS'
      Required = True
    end
    object Q_DEBETORSINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
    object Q_DEBETORSDDATE: TDateTimeField
      FieldName = 'DDATE'
      Required = True
    end
    object Q_DEBETORSRUBL: TIntegerField
      FieldName = 'RUBL'
      Required = True
    end
    object Q_DEBETORSCHART: TFloatField
      FieldName = 'CHART'
      Required = True
    end
    object Q_DEBETORSBLOCK1: TIntegerField
      FieldName = 'BLOCK1'
      Required = True
    end
    object Q_DEBETORSPHONE: TStringField
      FieldName = 'PHONE'
      Size = 1024
    end
    object Q_DEBETORSREGION: TIntegerField
      FieldName = 'REGION'
      Required = True
    end
    object Q_DEBETORSGROUP_NAME: TStringField
      FieldName = 'GROUP_NAME'
      Required = True
      Size = 255
    end
    object Q_DEBETORSID_CLIENTS_GROUPS: TIntegerField
      FieldName = 'ID_CLIENTS_GROUPS'
      Required = True
    end
    object Q_DEBETORSKKK: TStringField
      FieldName = 'KKK'
      Required = True
    end
    object Q_DEBETORSMARK_KOL: TFloatField
      FieldName = 'MARK_KOL'
    end
    object Q_DEBETORSMAX_DATE: TDateTimeField
      FieldName = 'MAX_DATE'
    end
    object Q_DEBETORSCHART2: TFloatField
      FieldName = 'CHART2'
    end
    object Q_DEBETORSIS_LOCK: TIntegerField
      FieldName = 'IS_LOCK'
    end
    object Q_DEBETORSLOCK_FOR: TIntegerField
      FieldName = 'LOCK_FOR'
    end
    object Q_DEBETORSLOCK_CLIENT: TStringField
      FieldName = 'LOCK_CLIENT'
    end
    object Q_DEBETORSSALES: TFloatField
      FieldName = 'SALES'
    end
    object Q_DEBETORSWW: TStringField
      FieldName = 'WW'
    end
    object Q_DEBETORSBLOCK2: TIntegerField
      FieldName = 'BLOCK2'
      Required = True
    end
    object Q_DEBETORSCHART_GROUP: TFloatField
      FieldName = 'CHART_GROUP'
    end
    object Q_DEBETORSCHART_FOR_GROUP: TFloatField
      FieldName = 'CHART_FOR_GROUP'
    end
    object Q_DEBETORSID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_DEBETORSBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object Q_DEBETORSGROUP_MAX_DATE: TDateTimeField
      FieldName = 'GROUP_MAX_DATE'
    end
    object Q_DEBETORSITOG_DISCOUNT: TFloatField
      FieldName = 'ITOG_DISCOUNT'
    end
    object Q_DEBETORSINN: TStringField
      FieldName = 'INN'
      Size = 50
    end
  end
  object Q_DEBETORS_DS: TOraDataSource
    DataSet = Q_DEBETORS
    Left = 112
    Top = 72
  end
  object OraStoredProc1: TOraStoredProc
    StoredProcName = 'SET_DEBT_ON_DEBETORS'
    Session = OraSession1
    SQL.Strings = (
      'begin'
      '  SET_DEBT_ON_DEBETORS(:ID_DEBT);'
      'end;')
    Left = 112
    Top = 136
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEBT'
        ParamType = ptInput
      end>
  end
  object prichast: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      
        'SELECT C.ID_CLIENTS, C.NICK, C.FIO, b.name, case when a.id_clien' +
        'ts is not null then 1 else 0 end aa'
      'FROM CLIENTS C, CLIENTS_GROUPS b, debetors a '
      
        'WHERE C.ID_CLIENTS_GROUPS in ( select ID_CLIENTS_GROUPS FROM CLI' +
        'ENTS WHERE UPPER(fio) like :p1 )'
      'and (c.id_office=:v_office or :v_office=0)'
      'and c.ID_CLIENTS_GROUPS = b.ID_CLIENTS_GROUPS'
      'and c.id_clients = a.id_clients(+)'
      'ORDER BY c.FIO')
    MasterSource = Q_DEBETORS_DS
    MasterFields = 'ID_CLIENTS_GROUPS'
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = prichastBeforeOpen
    BeforeRefresh = prichastBeforeOpen
    Left = 416
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p1'
      end
      item
        DataType = ftUnknown
        Name = 'v_office'
      end>
    object prichastID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object prichastNICK: TStringField
      FieldName = 'NICK'
      Required = True
    end
    object prichastFIO: TStringField
      FieldName = 'FIO'
      Required = True
      Size = 255
    end
    object prichastNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 255
    end
    object prichastAA: TFloatField
      FieldName = 'AA'
    end
  end
  object prichast_DS: TOraDataSource
    DataSet = prichast
    Left = 416
    Top = 72
  end
  object frxReport1: TfrxReport
    Version = '4.12.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38722.475799513900000000
    ReportOptions.LastChange = 40989.986930185190000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 240
    Top = 432
    Datasets = <
      item
        DataSet = frx_client_debt
        DataSetName = 'frx_client_debt'
      end
      item
        DataSet = frx_debetors
        DataSetName = 'frx_debetors'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 200.314960630000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#181#1056#177#1056#1105#1057#8218#1056#1109#1057#1026#1057#1027#1056#1108#1056#176#1057#1039' '#1056#1108#1056#176#1057#1026#1057#8218#1056#1109#1057#8225#1056#1108#1056#176)
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 7.559060000000000000
          Top = 105.826840000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1118#1056#181#1056#187#1056#181#1057#8222#1056#1109#1056#1029#1057#8249)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 812.598950000000000000
          Top = 132.283550000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#8221#1056#176#1056#1029#1056#1029#1057#8249#1056#181' '#1056#1029#1056#176':  [<Date>] [<Time>]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 7.559060000000000000
          Top = 37.795300000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169)
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 7.559060000000000000
          Top = 60.472480000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#164#1056#152#1056#1115' / '#1056#1029#1056#176#1056#183#1056#1030#1056#176#1056#1029#1056#1105#1056#181)
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 7.559060000000000000
          Top = 83.149660000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#8220#1057#1026#1057#1107#1056#1111#1056#1111#1056#176)
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 498.897960000000000000
          Top = 37.795300000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#8216#1056#181#1056#183#1056#1029#1056#176#1056#187)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 498.897960000000000000
          Top = 60.472480000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1038#1057#8218#1056#176#1057#1026#1057#8249#1056#8470)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 498.897960000000000000
          Top = 83.149660000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#160#1057#1107#1056#177#1056#187#1056#181#1056#1030#1057#8249#1056#8470)
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 634.961040000000000000
          Top = 37.795300000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#8221#1056#1109#1056#187#1056#1110)
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 634.961040000000000000
          Top = 60.472480000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1056#1109#1056#1111#1056#181#1057#1026#1056#176#1057#8224#1056#1105#1056#1105)
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 634.961040000000000000
          Top = 83.149660000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#8212#1056#176#1056#1169#1056#1109#1056#187#1056#182'.')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 132.283550000000000000
          Top = 37.795300000000000000
          Width = 340.157480314961000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NICK'
          DataSet = frx_debetors
          DataSetName = 'frx_debetors'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frx_debetors."NICK"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 132.283550000000000000
          Top = 60.472480000000000000
          Width = 340.157480314961000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FIO'
          DataSet = frx_debetors
          DataSetName = 'frx_debetors'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frx_debetors."FIO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 132.283550000000000000
          Top = 83.149660000000000000
          Width = 340.157480314961000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'GROUP_NAME'
          DataSet = frx_debetors
          DataSetName = 'frx_debetors'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frx_debetors."GROUP_NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 759.685530000000000000
          Top = 37.795300000000000000
          Width = 264.566929130000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frx_debetors
          DataSetName = 'frx_debetors'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frx_debetors."DEBET"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 759.685530000000000000
          Top = 60.472480000000000000
          Width = 264.566929133858000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frx_debetors
          DataSetName = 'frx_debetors'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frx_debetors."LAST_DDATE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 759.685530000000000000
          Top = 83.149660000000000000
          Width = 264.566929133858000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frx_debetors
          DataSetName = 'frx_debetors'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frx_debetors."CHART"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 132.283550000000000000
          Top = 105.826840000000000000
          Width = 340.157700000000000000
          Height = 52.913420000000000000
          ShowHint = False
          DataSet = frx_debetors
          DataSetName = 'frx_debetors'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frx_debetors."PHONE"]')
          ParentFont = False
        end
        object CheckBox1: TfrxCheckBoxView
          Left = 589.606680000000000000
          Top = 37.795300000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          CheckColor = clBlack
          CheckStyle = csCross
          DataField = 'BEZNAL'
          DataSet = frx_debetors
          DataSetName = 'frx_debetors'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object CheckBox2: TfrxCheckBoxView
          Left = 589.606680000000000000
          Top = 60.472480000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          CheckColor = clBlack
          CheckStyle = csCross
          DataField = 'STATE'
          DataSet = frx_debetors
          DataSetName = 'frx_debetors'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object CheckBox3: TfrxCheckBoxView
          Left = 589.606680000000000000
          Top = 83.149660000000000000
          Width = 18.897650000000000000
          Height = 18.897650000000000000
          ShowHint = False
          CheckColor = clBlack
          CheckStyle = csCross
          DataField = 'RUBL'
          DataSet = frx_debetors
          DataSetName = 'frx_debetors'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 60.472480000000000000
          Top = 181.417440000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1056#1109#1056#1111#1056#181#1057#1026#1056#176#1057#8224#1056#1105#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 241.889854090000000000
          Top = 181.417440000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1056#1111#1056#181#1057#1026#1056#176#1057#8224#1056#1105#1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 381.732464090000000000
          Top = 181.417440000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 309.921394090000000000
          Top = 181.417440000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#1108#1056#187#1056#176#1056#1169#1056#1029#1056#176#1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Left = 464.882124090000000000
          Top = 181.417440000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1056#1111#1056#187#1056#176#1057#8218#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 1613.748556300000000000
          Top = 181.417440000000000000
          Width = 60.472440940000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#1109#1056#187#1056#1110)
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Align = baLeft
          Left = 548.031730390000000000
          Top = 181.417440000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1057#1107#1057#1026#1057#1027)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 151.181200000000000000
          Top = 181.417440000000000000
          Width = 90.708654090000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1056#1030#1056#1030#1056#1109#1056#1169#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 1674.331182200000000000
          Top = 181.417440000000000000
          Width = 94.488181650000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#152#1056#1029#1057#8222#1056#1109#1057#1026#1056#1112#1056#176#1057#8224#1056#1105#1057#1039)
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Align = baLeft
          Top = 181.417440000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Align = baLeft
          Left = 593.386090390000000000
          Top = 181.417440000000000000
          Width = 52.913385830000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1056#1108#1056#1105#1056#1169#1056#1108#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          Align = baLeft
          Left = 646.299476220000000000
          Top = 181.417440000000000000
          Width = 30.236215590000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Align = baLeft
          Left = 676.535691810000000000
          Top = 181.417440000000000000
          Width = 68.031505830000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112'. '#1057#1027#1056#1108#1056#1105#1056#1169'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 1557.166360000000000000
          Top = 181.417440000000000000
          Width = 56.692915830000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#160#1056#176#1057#1027#1057#8225#1056#181#1057#8218)
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Align = baLeft
          Left = 827.716803940000000000
          Top = 181.417440000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#1109#1056#187#1056#1110)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          Align = baWidth
          Left = 910.866410240000000000
          Top = 181.417440000000000000
          Width = 646.299949760000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#152#1056#1029#1057#8222#1056#1109#1057#1026#1056#1112#1056#176#1057#8224#1056#1105#1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Align = baLeft
          Left = 744.567197640000000000
          Top = 181.417440000000000000
          Width = 83.149606300000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clActiveBorder
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#160#1056#176#1057#1027#1057#8225#1056#181#1057#8218)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 279.685220000000000000
        Width = 1046.929810000000000000
        DataSet = frx_client_debt
        DataSetName = 'frx_client_debt'
        RowCount = 0
        Stretched = True
        object Memo31: TfrxMemoView
          Align = baLeft
          Left = 60.472382360000000000
          Width = 90.708622360000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'R_DDATE'
          DataSet = frx_client_debt
          DataSetName = 'frx_client_debt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd.mm.yy hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_client_debt."R_DDATE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Align = baLeft
          Left = 151.181004720000000000
          Width = 90.708622360000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'D_DATE'
          DataSet = frx_client_debt
          DataSetName = 'frx_client_debt'
          DisplayFormat.FormatStr = 'dd.mm.yy hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_client_debt."D_DATE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Align = baLeft
          Left = 241.889627080000000000
          Width = 68.031442360000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'T_SHORT'
          DataSet = frx_client_debt
          DataSetName = 'frx_client_debt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_client_debt."T_SHORT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Align = baLeft
          Left = 309.921069440000000000
          Width = 71.810972360000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'INVOICE'
          DataSet = frx_client_debt
          DataSetName = 'frx_client_debt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_client_debt."INVOICE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Align = baLeft
          Left = 381.732041800000000000
          Width = 83.149562360000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'SUMM'
          DataSet = frx_client_debt
          DataSetName = 'frx_client_debt'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frx_client_debt."SUMM"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Align = baLeft
          Left = 464.881604160000000000
          Width = 83.149606300000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'IN_RUB'
          DataSet = frx_client_debt
          DataSetName = 'frx_client_debt'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frx_client_debt."IN_RUB"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Align = baLeft
          Left = 548.031210460000000000
          Width = 45.354311180000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'RATE'
          DataSet = frx_client_debt
          DataSetName = 'frx_client_debt'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_client_debt."RATE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Align = baLeft
          Left = 827.716181480000000000
          Width = 83.149606300000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'CHART'
          DataSet = frx_client_debt
          DataSetName = 'frx_client_debt'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frx_client_debt."CHART"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Align = baWidth
          Left = 910.865787780000000000
          Width = 136.064022220000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'INFO'
          DataSet = frx_client_debt
          DataSetName = 'frx_client_debt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frx_client_debt."INFO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          Align = baLeft
          Left = 593.385521640000000000
          Width = 52.913371180000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frx_client_debt
          DataSetName = 'frx_client_debt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_client_debt."DISCOUNT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          Align = baLeft
          Left = 646.298892820000000000
          Width = 30.236191180000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frx_client_debt
          DataSetName = 'frx_client_debt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_client_debt."DISC_PROC"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          Align = baLeft
          Left = 676.535084000000000000
          Width = 68.031491180000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frx_client_debt
          DataSetName = 'frx_client_debt'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frx_client_debt."ITOG_DISCOUNT"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Align = baLeft
          Left = 744.566575180000000000
          Width = 83.149606300000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frx_client_debt
          DataSetName = 'frx_client_debt'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frx_client_debt."DOLG"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Width = 60.472382360000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frx_client_debt
          DataSetName = 'frx_client_debt'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = 'dd.mm.yy hh:mm'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_client_debt."NICK"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 359.055350000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 971.339210000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Page#]')
          ParentFont = False
        end
      end
    end
  end
  object frx_debetors: TfrxDBDataset
    UserName = 'frx_debetors'
    CloseDataSource = False
    DataSource = Q_DEBETORS_DS
    BCDToCurrency = False
    Left = 320
    Top = 432
  end
  object frx_client_debt: TfrxDBDataset
    UserName = 'frx_client_debt'
    CloseDataSource = False
    DataSet = Q_CLIENT_DEBT
    BCDToCurrency = False
    Left = 320
    Top = 480
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'#174
    Subject = 'FastReport'#174' PDF export'
    Creator = 'FastReport'#174' (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 408
    Top = 432
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 408
    Top = 480
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Background = True
    Creator = 'FastReport'#174
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 488
    Top = 432
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport http://www.fast-report.com'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 488
    Top = 480
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 560
    Top = 432
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = False
    Left = 560
    Top = 480
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 648
    Top = 432
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 648
    Top = 480
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'xls'
    FileName = 'file1'
    Filter = 'Microsoft Excel Workbook (*.xls)|*.XLS'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 50
    Top = 350
  end
  object Q_OPER_SEARCH: TOraQuery
    SQLUpdate.Strings = (
      'UPDATE CLIENT_DEBT'
      'SET'
      '  IN_RUB = :IN_RUB,'
      '  SUMM = :SUMM,'
      '  INVOICE = :INVOICE,'
      '  DEBET = (:SUMM - :IN_RUB),'
      '  RATE = :RATE,'
      '  INFO = :INFO,'
      '  D_DATE = :D_DATE'
      'WHERE'
      '  ID_CLIENT_DEBT = :OLD_ID_CLIENT_DEBT')
    SQLRefresh.Strings = (
      'WHERE'
      '  CD.ID_CLIENT_DEBT = :ID_CLIENT_DEBT')
    Session = OraSession1
    SQL.Strings = (
      'SELECT '
      'rownum nn, '
      'a.ID_CLIENT_DEBT,'
      'a.ID_DEBETORS,'
      'a.DEBET,'
      'a.RATE,'
      'a.D_DATE,'
      'a.R_DDATE,'
      'a.OPERATION,'
      'a.INVOICE,'
      'a.SUMM,'
      'a.INFO,'
      'a.IN_RUB, '
      'a.T_SHORT, '
      'a.T_LONG, '
      'a.NICK,'
      'a.active,'
      'a.brief'
      'FROM ('
      'SELECT'
      'CA.ID_CLIENT_DEBT,'
      'CA.ID_DEBETORS,'
      'CA.DEBET,'
      'CA.RATE,'
      'CA.D_DATE,'
      'CA.R_DDATE,'
      'CA.OPERATION,'
      'lpad (CA.INVOICE,10,'#39' '#39') as INVOICE,'
      '--CA.INVOICE,'
      'CA.SUMM,'
      'CA.INFO,'
      'CA.IN_RUB, '
      'CA.active,'
      'O.T_SHORT, '
      'O.T_LONG, '
      'C.NICK, '
      'f.brief'
      'FROM'
      'CLIENT_DEBT CA, '
      'DEBETORS D, '
      'OPERATIONS O, '
      'CLIENTS C'
      ', offices f'
      'WHERE CA.ID_DEBETORS = D.ID_DEBETORS '
      'and (d.id_office=:v_office or :v_office=0)'
      'AND CA.ACTIVE >= 1'
      'and trunc(CA.R_DDATE) between :p1 and :p2'
      'AND (o.ID_OPERATIONS = :p3 or :p3 = 0)'
      'AND CA.OPERATION = O.ID_OPERATIONS '
      'AND D.ID_CLIENTS = C.Id_Clients'
      'and d.id_office = f.ID_OFFICE'
      'ORDER BY CA.D_DATE'
      ') a')
    FetchAll = True
    BeforeOpen = Q_OPER_SEARCHBeforeOpen
    BeforeRefresh = Q_OPER_SEARCHBeforeOpen
    Left = 528
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'v_office'
      end
      item
        DataType = ftUnknown
        Name = 'p1'
      end
      item
        DataType = ftUnknown
        Name = 'p2'
      end
      item
        DataType = ftUnknown
        Name = 'p3'
      end>
    object Q_OPER_SEARCHNN: TFloatField
      FieldName = 'NN'
    end
    object Q_OPER_SEARCHID_CLIENT_DEBT: TFloatField
      FieldName = 'ID_CLIENT_DEBT'
      Required = True
    end
    object Q_OPER_SEARCHID_DEBETORS: TFloatField
      FieldName = 'ID_DEBETORS'
      Required = True
    end
    object Q_OPER_SEARCHDEBET: TFloatField
      FieldName = 'DEBET'
      Required = True
      DisplayFormat = '0.00'
    end
    object Q_OPER_SEARCHRATE: TFloatField
      FieldName = 'RATE'
      Required = True
      DisplayFormat = '0.0000'
    end
    object Q_OPER_SEARCHD_DATE: TDateTimeField
      FieldName = 'D_DATE'
      Required = True
    end
    object Q_OPER_SEARCHR_DDATE: TDateTimeField
      FieldName = 'R_DDATE'
      Required = True
    end
    object Q_OPER_SEARCHOPERATION: TIntegerField
      FieldName = 'OPERATION'
      Required = True
    end
    object Q_OPER_SEARCHINVOICE: TStringField
      FieldName = 'INVOICE'
      Size = 10
    end
    object Q_OPER_SEARCHSUMM: TFloatField
      FieldName = 'SUMM'
      Required = True
      DisplayFormat = '0.00'
    end
    object Q_OPER_SEARCHINFO: TStringField
      FieldName = 'INFO'
      Size = 255
    end
    object Q_OPER_SEARCHIN_RUB: TFloatField
      FieldName = 'IN_RUB'
      Required = True
      DisplayFormat = '0.00'
    end
    object Q_OPER_SEARCHT_SHORT: TStringField
      FieldName = 'T_SHORT'
      Required = True
      Size = 3
    end
    object Q_OPER_SEARCHT_LONG: TStringField
      FieldName = 'T_LONG'
      Required = True
      Size = 50
    end
    object Q_OPER_SEARCHNICK: TStringField
      FieldName = 'NICK'
      Required = True
    end
    object Q_OPER_SEARCHACTIVE: TIntegerField
      FieldName = 'ACTIVE'
    end
    object Q_OPER_SEARCHBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
  end
  object Q_OPER_SEARCH_DS: TOraDataSource
    DataSet = Q_OPER_SEARCH
    Left = 640
    Top = 16
  end
  object frx_prichast: TfrxDBDataset
    UserName = 'frx_prichast'
    CloseDataSource = False
    DataSet = prichast
    BCDToCurrency = False
    Left = 240
    Top = 488
  end
  object Q_CLIENT_DEBT: TOraQuery
    SQLUpdate.Strings = (
      'UPDATE CLIENT_DEBT'
      'SET'
      '  IN_RUB = :IN_RUB,'
      '  SUMM = :SUMM,'
      '  INVOICE = :INVOICE,'
      '  DEBET = (:SUMM - :IN_RUB),'
      '  RATE = :RATE,'
      '  INFO = :INFO,'
      '  D_DATE = :D_DATE'
      'WHERE'
      '  ID_CLIENT_DEBT = :OLD_ID_CLIENT_DEBT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ID_CLIENT_DEBT = :OLD_ID_CLIENT_DEBT')
    Session = OraSession1
    SQL.Strings = (
      
        'SELECT rownum nn, a.ID_CLIENT_DEBT, a.ID_DEBETORS, a.DEBET, a.RA' +
        'TE, a.D_DATE, a.R_DDATE, a.OPERATION,'
      
        'a.INVOICE, a.SUMM, a.INFO, a.DISCOUNT, a.disc_proc, a.IN_RUB, a.' +
        'T_SHORT, a.T_LONG, a.t_type,'
      
        'a.NICK, a.IS_LOCK, a.LOCK_FOR, a.dolg, a.itog_discount, a.chart,' +
        ' a.active'
      'FROM ('
      
        'SELECT CA.ID_CLIENT_DEBT, CA.ID_DEBETORS, CA.DEBET, CA.RATE, CA.' +
        'D_DATE, CA.R_DDATE, CA.OPERATION,'
      
        'CA.INVOICE, CA.SUMM, CA.INFO, CA.IN_RUB, CA.DISCOUNT, CA.disc_pr' +
        'oc, ca.active, O.T_SHORT, '
      'O.T_LONG, O.t_type, C.NICK, D.IS_LOCK, D.LOCK_FOR,'
      'round(ca.DEBET/ca.RATE,2) as dolg,'
      
        'case when (CA.SUMM <> 0 or CA.DISCOUNT <> 0) then round((CA.DISC' +
        'OUNT + (ca.SUMM/100)*CA.disc_proc),2) else 0 end itog_discount,'
      
        'sum(round(ca.DEBET/ca.RATE,2)) over(partition by ca.ID_DEBETORS ' +
        'order by Ca.D_date, rownum ) as CHART'
      'FROM'
      'CLIENT_DEBT CA, '
      'DEBETORS D, '
      'OPERATIONS O, '
      'CLIENTS C'
      'WHERE'
      'CA.ID_DEBETORS = D.ID_DEBETORS '
      'AND CA.ID_DEBETORS = :ID_DEBETORS '
      'AND CA.ACTIVE >= 1'
      'AND CA.OPERATION = O.ID_OPERATIONS '
      'AND D.ID_CLIENTS = C.Id_Clients'
      'ORDER BY CA.D_DATE'
      ') a'
      'WHERE'
      '/*Filter*/ 1=1')
    MasterSource = Q_DEBETORS_DS
    MasterFields = 'ID_DEBETORS'
    FetchAll = True
    AfterOpen = Q_CLIENT_DEBTAfterOpen
    AfterRefresh = Q_CLIENT_DEBTAfterOpen
    Left = 416
    Top = 312
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEBETORS'
        ParamType = ptInput
        Value = 20813.000000000000000000
      end>
    object Q_CLIENT_DEBTNN: TFloatField
      FieldName = 'NN'
    end
    object Q_CLIENT_DEBTID_CLIENT_DEBT: TFloatField
      FieldName = 'ID_CLIENT_DEBT'
      Required = True
    end
    object Q_CLIENT_DEBTID_DEBETORS: TFloatField
      FieldName = 'ID_DEBETORS'
      Required = True
    end
    object Q_CLIENT_DEBTDEBET: TFloatField
      FieldName = 'DEBET'
      Required = True
      DisplayFormat = '0.00'
    end
    object Q_CLIENT_DEBTRATE: TFloatField
      FieldName = 'RATE'
      Required = True
      DisplayFormat = '0.0000'
    end
    object Q_CLIENT_DEBTD_DATE: TDateTimeField
      FieldName = 'D_DATE'
      Required = True
    end
    object Q_CLIENT_DEBTR_DDATE: TDateTimeField
      FieldName = 'R_DDATE'
      Required = True
    end
    object Q_CLIENT_DEBTOPERATION: TIntegerField
      FieldName = 'OPERATION'
      Required = True
    end
    object Q_CLIENT_DEBTINVOICE: TStringField
      FieldName = 'INVOICE'
      Size = 10
    end
    object Q_CLIENT_DEBTSUMM: TFloatField
      FieldName = 'SUMM'
      Required = True
      DisplayFormat = '0.00'
    end
    object Q_CLIENT_DEBTINFO: TStringField
      FieldName = 'INFO'
      Size = 255
    end
    object Q_CLIENT_DEBTIN_RUB: TFloatField
      FieldName = 'IN_RUB'
      Required = True
      DisplayFormat = '0.00'
    end
    object Q_CLIENT_DEBTT_SHORT: TStringField
      FieldName = 'T_SHORT'
      Required = True
      Size = 3
    end
    object Q_CLIENT_DEBTT_LONG: TStringField
      FieldName = 'T_LONG'
      Required = True
      Size = 50
    end
    object Q_CLIENT_DEBTT_TYPE: TIntegerField
      FieldName = 'T_TYPE'
      Required = True
    end
    object Q_CLIENT_DEBTNICK: TStringField
      FieldName = 'NICK'
      Required = True
    end
    object Q_CLIENT_DEBTCHART: TFloatField
      FieldName = 'CHART'
      DisplayFormat = '0.00'
    end
    object Q_CLIENT_DEBTACTIVE: TIntegerField
      FieldName = 'ACTIVE'
    end
    object Q_CLIENT_DEBTDISCOUNT: TFloatField
      FieldName = 'DISCOUNT'
    end
    object Q_CLIENT_DEBTDISC_PROC: TIntegerField
      FieldName = 'DISC_PROC'
    end
    object Q_CLIENT_DEBTIS_LOCK: TIntegerField
      FieldName = 'IS_LOCK'
    end
    object Q_CLIENT_DEBTLOCK_FOR: TIntegerField
      FieldName = 'LOCK_FOR'
    end
    object Q_CLIENT_DEBTDOLG: TFloatField
      FieldName = 'DOLG'
    end
    object Q_CLIENT_DEBTITOG_DISCOUNT: TFloatField
      FieldName = 'ITOG_DISCOUNT'
    end
  end
  object Q_CLIENT_DEBT_DS: TOraDataSource
    DataSet = Q_CLIENT_DEBT
    Left = 552
    Top = 312
  end
  object OraQuery1: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'select '
      '  a.nick, a.fio, a.dostavka, a.id_debetors, a.id_clients,'
      
        '  a.last_ddate, a.state, a.beznal, a.mark, a.debet, a.credit_day' +
        's,'
      '  a.info, a.ddate, a.rubl, a.chart, a.block1, a.phone, a.region,'
      
        '  a.group_name, a.id_clients_groups, a.kkk, a.mark_kol, trunc(a.' +
        'max_date) as max_date,'
      '  a.chart2, a.is_lock, a.lock_for, a.lock_client, a.sales, a.ww'
      'from view_debetors a'
      'order by a.group_name, a.fio')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 216
    Top = 16
    object StringField1: TStringField
      FieldName = 'NICK'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'FIO'
      Required = True
      Size = 255
    end
    object IntegerField1: TIntegerField
      FieldName = 'DOSTAVKA'
    end
    object FloatField1: TFloatField
      FieldName = 'ID_DEBETORS'
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'LAST_DDATE'
    end
    object IntegerField3: TIntegerField
      FieldName = 'STATE'
      Required = True
    end
    object IntegerField4: TIntegerField
      FieldName = 'BEZNAL'
      Required = True
    end
    object IntegerField5: TIntegerField
      FieldName = 'MARK'
    end
    object FloatField2: TFloatField
      FieldName = 'DEBET'
      Required = True
    end
    object IntegerField6: TIntegerField
      FieldName = 'CREDIT_DAYS'
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'DDATE'
      Required = True
    end
    object IntegerField7: TIntegerField
      FieldName = 'RUBL'
      Required = True
    end
    object FloatField3: TFloatField
      FieldName = 'CHART'
      Required = True
    end
    object IntegerField8: TIntegerField
      FieldName = 'BLOCK1'
      Required = True
    end
    object StringField4: TStringField
      FieldName = 'PHONE'
      Size = 1024
    end
    object IntegerField9: TIntegerField
      FieldName = 'REGION'
      Required = True
    end
    object StringField5: TStringField
      FieldName = 'GROUP_NAME'
      Required = True
      Size = 255
    end
    object IntegerField10: TIntegerField
      FieldName = 'ID_CLIENTS_GROUPS'
      Required = True
    end
    object StringField6: TStringField
      FieldName = 'KKK'
      Required = True
    end
    object FloatField4: TFloatField
      FieldName = 'MARK_KOL'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'MAX_DATE'
    end
    object FloatField5: TFloatField
      FieldName = 'CHART2'
    end
    object IntegerField11: TIntegerField
      FieldName = 'IS_LOCK'
    end
    object IntegerField12: TIntegerField
      FieldName = 'LOCK_FOR'
    end
    object StringField7: TStringField
      FieldName = 'LOCK_CLIENT'
    end
    object FloatField6: TFloatField
      FieldName = 'SALES'
    end
    object StringField8: TStringField
      FieldName = 'WW'
      Size = 2
    end
  end
end
