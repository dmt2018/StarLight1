object DM: TDM
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Height = 489
  Width = 658
  object OraSession1: TOraSession
    Options.Charset = 'CL8MSWIN1251'
    Options.Direct = True
    Username = 'CREATOR'
    Password = '123456'
    Server = 'KLEPOV:1521:STARNEW'
    AfterConnect = OraSession1AfterConnect
    Left = 32
    Top = 16
  end
  object Q_CLIENTS: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT E.* FROM CLIENTS_VIEW2 E '
      'where (id_office = :v_office or :v_office = 0)'
      '--VIEW_CLIENTS E')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = Q_CLIENTSBeforeOpen
    BeforeRefresh = Q_CLIENTSBeforeOpen
    Left = 120
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'v_office'
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
    object Q_CLIENTSGROUP_NAME: TStringField
      FieldName = 'GROUP_NAME'
      Required = True
      Size = 255
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
    object Q_CLIENTSCOUNT: TIntegerField
      FieldName = 'COUNT'
      Required = True
    end
    object Q_CLIENTSREG_TYPE_NAME: TStringField
      FieldName = 'REG_TYPE_NAME'
      Size = 50
    end
  end
  object Q_CLIENTS_DS: TOraDataSource
    DataSet = Q_CLIENTS
    Left = 120
    Top = 64
  end
  object OPERATIONS: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT id_operations, t_short, t_long, t_type, dolg,'
      
        'case when t_type=0 then '#39#1050#1072#1089#1089#1086#1074#1099#1077' '#1086#1087#1077#1088#1072#1094#1080#1080#39' else '#39#1044#1077#1073#1077#1090#1086#1088#1089#1082#1080#1077' '#1086#1087 +
        #1077#1088#1072#1094#1080#1080#39' end as type_name  '
      'FROM OPERATIONS'
      'where T_TYPE = 0 and id_office = 1'
      'ORDER BY T_LONG')
    FilterOptions = [foCaseInsensitive]
    Left = 120
    Top = 120
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
    object OPERATIONST_TYPE: TIntegerField
      FieldName = 'T_TYPE'
      Required = True
    end
    object OPERATIONSDOLG: TIntegerField
      FieldName = 'DOLG'
    end
    object OPERATIONSTYPE_NAME: TStringField
      FieldName = 'TYPE_NAME'
    end
  end
  object OPERATIONS_DS: TOraDataSource
    DataSet = OPERATIONS
    Left = 120
    Top = 168
  end
  object Q_CASH: TOraQuery
    SQLUpdate.Strings = (
      'UPDATE CASH'
      'SET'
      '  INVOICE = :INVOICE,'
      '  SUMM = :SUMM,'
      '  IN_RUB = :IN_RUB,'
      '  OUT_RUB = :OUT_RUB,'
      '  IN_USD = :IN_USD,'
      '  OUT_USD = :OUT_USD,'
      '  IN_EU = :IN_EU,'
      '  OUT_EU = :OUT_EU,'
      '  INFO = :INFO,'
      '  CORRECTOR = :CORRECTOR,'
      '  DDATE_DONE = :DDATE_DONE,'
      '  CORRECTOR2 = :CORRECTOR2,'
      '  COR_DATE = :COR_DATE,'
      '  r_paydesk = :r_paydesk'
      'WHERE'
      '  ID_CASH = :OLD_ID_CASH')
    SQLRefresh.Strings = (
      'SELECT CA.* FROM CASH CA WHERE CA.ID_CASH = :ID_CASH')
    Session = OraSession1
    SQL.Strings = (
      'begin'
      
        '  CASH_PKG.SHOW_KASS_DAY(:P_DATE1, :P_DATE2, :V_OFFICE, :CURSOR_' +
        ');'
      'end;')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = Q_CASHBeforeOpen
    BeforePost = Q_CASHBeforePost
    BeforeRefresh = Q_CASHBeforeOpen
    Left = 240
    Top = 16
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'P_DATE1'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'P_DATE2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'V_OFFICE'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptInputOutput
        Value = 'Object'
      end>
    object Q_CASHID_CASH: TFloatField
      FieldName = 'ID_CASH'
      Required = True
    end
    object Q_CASHID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object Q_CASHPAYDESK: TIntegerField
      FieldName = 'PAYDESK'
      Required = True
    end
    object Q_CASHOPERATION: TIntegerField
      FieldName = 'OPERATION'
      Required = True
    end
    object Q_CASHINVOICE: TFloatField
      FieldName = 'INVOICE'
    end
    object Q_CASHSUMM: TFloatField
      FieldName = 'SUMM'
    end
    object Q_CASHIN_RUB: TFloatField
      FieldName = 'IN_RUB'
    end
    object Q_CASHOUT_RUB: TFloatField
      FieldName = 'OUT_RUB'
    end
    object Q_CASHIN_USD: TFloatField
      FieldName = 'IN_USD'
    end
    object Q_CASHOUT_USD: TFloatField
      FieldName = 'OUT_USD'
    end
    object Q_CASHIN_EU: TFloatField
      FieldName = 'IN_EU'
    end
    object Q_CASHOUT_EU: TFloatField
      FieldName = 'OUT_EU'
    end
    object Q_CASHINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
    object Q_CASHCORRECTOR: TStringField
      FieldName = 'CORRECTOR'
    end
    object Q_CASHDDATE_IN: TDateTimeField
      FieldName = 'DDATE_IN'
      Required = True
    end
    object Q_CASHDDATE_DONE: TDateTimeField
      FieldName = 'DDATE_DONE'
    end
    object Q_CASHR_DDATE: TDateTimeField
      FieldName = 'R_DDATE'
      Required = True
    end
    object Q_CASHD_CHECKED: TIntegerField
      FieldName = 'D_CHECKED'
      Required = True
    end
    object Q_CASHR_PAYDESK: TIntegerField
      FieldName = 'R_PAYDESK'
      Required = True
    end
    object Q_CASHCORRECTOR2: TStringField
      FieldName = 'CORRECTOR2'
    end
    object Q_CASHCOR_DATE: TDateTimeField
      FieldName = 'COR_DATE'
    end
    object Q_CASHT_SHORT: TStringField
      FieldName = 'T_SHORT'
      Required = True
      Size = 3
    end
    object Q_CASHT_LONG: TStringField
      FieldName = 'T_LONG'
      Required = True
      Size = 50
    end
    object Q_CASHNICK: TStringField
      FieldName = 'NICK'
    end
    object Q_CASHFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object Q_CASHID_CLIENTS_GROUPS: TIntegerField
      FieldName = 'ID_CLIENTS_GROUPS'
      Required = True
    end
    object Q_CASHGROUP_NAME: TStringField
      FieldName = 'GROUP_NAME'
      Required = True
      Size = 255
    end
    object Q_CASHCC: TFloatField
      FieldName = 'CC'
    end
    object Q_CASHID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_CASHBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object Q_CASHCASH_SEQ: TFloatField
      FieldName = 'CASH_SEQ'
    end
  end
  object Q_CASH_DS: TOraDataSource
    DataSet = Q_CASH
    Left = 320
    Top = 16
  end
  object Q_SQL: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT OLMER.PARAMS_SET_ID.nextval from DUAL')
    Left = 128
    Top = 240
  end
  object Q_CASH_S: TOraQuery
    SQLUpdate.Strings = (
      'UPDATE CASH'
      'SET'
      '  INVOICE = :INVOICE,'
      '  SUMM = :SUMM,'
      '  IN_RUB = :IN_RUB,'
      '  OUT_RUB = :OUT_RUB,'
      '  IN_USD = :IN_USD,'
      '  OUT_USD = :OUT_USD,'
      '  IN_EU = :IN_EU,'
      '  OUT_EU = :OUT_EU,'
      '  INFO = :INFO,'
      '  CORRECTOR = :CORRECTOR,'
      '  DDATE_DONE = :DDATE_DONE,'
      '  CORRECTOR2 = :CORRECTOR2,'
      '  COR_DATE = :COR_DATE,'
      '  D_CHECKED = :D_CHECKED'
      'WHERE'
      '  ID_CASH = :OLD_ID_CASH')
    SQLRefresh.Strings = (
      'SELECT CA.* FROM CASH CA WHERE CA.ID_CASH = :ID_CASH')
    Session = OraSession1
    SQL.Strings = (
      'begin'
      
        '  cash_pkg.show_kass_deps(:P_DATE1, :P_DATE2, :v_office, :CURSOR' +
        '_);'
      'end;')
    FetchAll = True
    RefreshOptions = [roAfterUpdate]
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = Q_CASH_SBeforeOpen
    BeforePost = Q_CASH_SBeforePost
    BeforeRefresh = Q_CASH_SBeforeOpen
    Left = 240
    Top = 72
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'P_DATE1'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'P_DATE2'
        ParamType = ptInput
      end
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
    object Q_CASH_SCHECKED: TFloatField
      FieldName = 'CHECKED'
    end
    object Q_CASH_SID_CASH: TFloatField
      FieldName = 'ID_CASH'
      Required = True
    end
    object Q_CASH_SID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object Q_CASH_SPAYDESK: TIntegerField
      FieldName = 'PAYDESK'
      Required = True
    end
    object Q_CASH_SOPERATION: TIntegerField
      FieldName = 'OPERATION'
      Required = True
    end
    object Q_CASH_SINVOICE: TFloatField
      FieldName = 'INVOICE'
    end
    object Q_CASH_SSUMM: TFloatField
      FieldName = 'SUMM'
    end
    object Q_CASH_SIN_RUB: TFloatField
      FieldName = 'IN_RUB'
    end
    object Q_CASH_SOUT_RUB: TFloatField
      FieldName = 'OUT_RUB'
    end
    object Q_CASH_SIN_USD: TFloatField
      FieldName = 'IN_USD'
    end
    object Q_CASH_SOUT_USD: TFloatField
      FieldName = 'OUT_USD'
    end
    object Q_CASH_SIN_EU: TFloatField
      FieldName = 'IN_EU'
    end
    object Q_CASH_SOUT_EU: TFloatField
      FieldName = 'OUT_EU'
    end
    object Q_CASH_SINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
    object Q_CASH_SCORRECTOR: TStringField
      FieldName = 'CORRECTOR'
    end
    object Q_CASH_SDDATE_IN: TDateTimeField
      FieldName = 'DDATE_IN'
      Required = True
    end
    object Q_CASH_SDDATE_DONE: TDateTimeField
      FieldName = 'DDATE_DONE'
    end
    object Q_CASH_SR_DDATE: TDateTimeField
      FieldName = 'R_DDATE'
      Required = True
    end
    object Q_CASH_SD_CHECKED: TIntegerField
      FieldName = 'D_CHECKED'
      Required = True
    end
    object Q_CASH_SCORRECTOR2: TStringField
      FieldName = 'CORRECTOR2'
    end
    object Q_CASH_SCOR_DATE: TDateTimeField
      FieldName = 'COR_DATE'
    end
    object Q_CASH_SR_PAYDESK: TIntegerField
      FieldName = 'R_PAYDESK'
      Required = True
    end
    object Q_CASH_ST_SHORT: TStringField
      FieldName = 'T_SHORT'
      Required = True
      Size = 3
    end
    object Q_CASH_ST_LONG: TStringField
      FieldName = 'T_LONG'
      Required = True
      Size = 50
    end
    object Q_CASH_SNICK: TStringField
      FieldName = 'NICK'
    end
    object Q_CASH_SFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object Q_CASH_SID_CLIENTS_GROUPS: TIntegerField
      FieldName = 'ID_CLIENTS_GROUPS'
      Required = True
    end
    object Q_CASH_SID_DEBETORS: TFloatField
      FieldName = 'ID_DEBETORS'
    end
    object Q_CASH_SIS_LOCK: TIntegerField
      FieldName = 'IS_LOCK'
    end
    object Q_CASH_SIS_LOC_FOR: TFloatField
      FieldName = 'IS_LOC_FOR'
    end
    object Q_CASH_SGROUP_NAME: TStringField
      FieldName = 'GROUP_NAME'
      Required = True
      Size = 255
    end
    object Q_CASH_SIS_SALE: TFloatField
      FieldName = 'IS_SALE'
    end
    object Q_CASH_SOLD_ID_DEBETORS: TFloatField
      FieldName = 'OLD_ID_DEBETORS'
    end
    object Q_CASH_SRUBL: TIntegerField
      FieldName = 'RUBL'
    end
    object Q_CASH_SBEZNAL: TIntegerField
      FieldName = 'BEZNAL'
    end
    object Q_CASH_SID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_CASH_SBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object Q_CASH_SCASH_SEQ: TFloatField
      FieldName = 'CASH_SEQ'
    end
  end
  object Q_CASH_S_DS: TOraDataSource
    DataSet = Q_CASH_S
    Left = 320
    Top = 72
  end
  object Q_DEBETORS: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT '
      
        'D.*, C.PHONE, C.REGION, C.NICK, C.FIO, G.NAME AS GROUP_NAME, oc.' +
        'brief'
      'FROM DEBETORS D, CLIENTS C, CLIENTS_GROUPS G, offices oc'
      
        'WHERE D.ID_CLIENTS=C.ID_CLIENTS AND C.ID_CLIENTS_GROUPS=G.ID_CLI' +
        'ENTS_GROUPS'
      '  and (c.ID_OFFICE = :v_office or :v_office = 0)'
      '  and c.id_office = oc.ID_OFFICE'
      'ORDER BY C.NICK')
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = Q_DEBETORSBeforeOpen
    BeforeRefresh = Q_DEBETORSBeforeOpen
    Left = 240
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'v_office'
      end>
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
    object Q_DEBETORSDEBET: TFloatField
      FieldName = 'DEBET'
      Required = True
      DisplayFormat = '0.00'
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
      DisplayFormat = '0.00'
    end
    object Q_DEBETORSPHONE: TStringField
      FieldName = 'PHONE'
      Size = 1024
    end
    object Q_DEBETORSREGION: TIntegerField
      FieldName = 'REGION'
      Required = True
    end
    object Q_DEBETORSNICK: TStringField
      FieldName = 'NICK'
      Required = True
    end
    object Q_DEBETORSFIO: TStringField
      FieldName = 'FIO'
      Required = True
      Size = 255
    end
    object Q_DEBETORSGROUP_NAME: TStringField
      FieldName = 'GROUP_NAME'
      Required = True
      Size = 255
    end
    object Q_DEBETORSMARK: TIntegerField
      FieldName = 'MARK'
    end
    object Q_DEBETORSIS_LOCK: TIntegerField
      FieldName = 'IS_LOCK'
    end
    object Q_DEBETORSLOCK_FOR: TIntegerField
      FieldName = 'LOCK_FOR'
    end
    object Q_DEBETORSID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_DEBETORSDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object Q_DEBETORSBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
  end
  object Q_DEBETORS_DS: TOraDataSource
    DataSet = Q_DEBETORS
    Left = 336
    Top = 360
  end
  object Q_CLIENT_DEBT: TOraQuery
    SQLUpdate.Strings = (
      'begin'
      
        '  cash_pkg.edit_debetor_list(:ID_CLIENT_DEBT, :ID_DEBETORS, (:SU' +
        'MM - :IN_RUB - :DISCOUNT - ((:SUMM/100)*:DISC_PROC)), :RATE, :D_' +
        'DATE, :R_DDATE, :OPERATION, :INVOICE, :SUMM, :IN_RUB, :INFO, :DI' +
        'SCOUNT, :DISC_PROC, :id_office);'
      'end;')
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
      'a.DISCOUNT,'
      'a.disc_proc,'
      'a.IN_RUB, '
      'a.T_SHORT, '
      'a.T_LONG, '
      'a.t_type,'
      'a.NICK,'
      'a.chart,'
      'a.active, a.ID_OFFICE, a.brief'
      'FROM ('
      'SELECT'
      'CA.ID_CLIENT_DEBT,'
      'CA.ID_DEBETORS,'
      'CA.DEBET,'
      'CA.RATE,'
      'CA.D_DATE,'
      'CA.R_DDATE,'
      'CA.OPERATION,'
      'CA.INVOICE,'
      'CA.SUMM,'
      'CA.INFO,'
      'CA.IN_RUB, '
      'CA.DISCOUNT,'
      'CA.disc_proc,'
      'ca.active,'
      'O.T_SHORT, '
      'O.T_LONG, '
      'O.t_type,'
      'C.NICK,'
      
        'sum(round(ca.DEBET/ca.RATE,2)) over(partition by ca.ID_DEBETORS ' +
        'order by Ca.D_date, rownum ) as CHART'
      ', c.ID_OFFICE, oc.brief'
      'FROM'
      'CLIENT_DEBT CA, '
      'DEBETORS D, '
      'OPERATIONS O, '
      'CLIENTS C, offices oc'
      'WHERE'
      'CA.ID_DEBETORS = D.ID_DEBETORS '
      'AND CA.ID_DEBETORS = :ID_DEBETORS '
      'AND CA.ACTIVE >= 1'
      'AND CA.OPERATION = O.ID_OPERATIONS '
      'AND D.ID_CLIENTS = C.Id_Clients'
      'and c.id_office = oc.ID_OFFICE'
      'ORDER BY CA.D_DATE'
      ') a'
      'WHERE'
      '/*Filter*/ 1=1')
    MasterSource = DS_CL_DEBETORS
    MasterFields = 'ID_DEBETORS'
    FilterOptions = [foCaseInsensitive]
    AfterPost = Q_CLIENT_DEBTAfterPost
    Left = 368
    Top = 152
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEBETORS'
        ParamType = ptInput
        Value = 7.000000000000000000
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
    end
    object Q_CLIENT_DEBTRATE: TFloatField
      FieldName = 'RATE'
      Required = True
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
    end
    object Q_CLIENT_DEBTINFO: TStringField
      FieldName = 'INFO'
      Size = 255
    end
    object Q_CLIENT_DEBTDISCOUNT: TFloatField
      FieldName = 'DISCOUNT'
    end
    object Q_CLIENT_DEBTDISC_PROC: TIntegerField
      FieldName = 'DISC_PROC'
    end
    object Q_CLIENT_DEBTIN_RUB: TFloatField
      FieldName = 'IN_RUB'
      Required = True
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
    end
    object Q_CLIENT_DEBTACTIVE: TIntegerField
      FieldName = 'ACTIVE'
    end
    object Q_CLIENT_DEBTID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_CLIENT_DEBTBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
  end
  object Q_CLIENT_DEBT_DS: TOraDataSource
    DataSet = Q_CLIENT_DEBT
    Left = 368
    Top = 208
  end
  object Q_CLIENT_DEBT_A: TOraQuery
    SQLUpdate.Strings = (
      'begin'
      
        '  cash_pkg.edit_debetor_list(:ID_CLIENT_DEBT, :ID_DEBETORS, (:SU' +
        'MM - :IN_RUB - :DISCOUNT - ((:SUMM/100)*:DISC_PROC)), :RATE, :D_' +
        'DATE, :R_DDATE, :OPERATION, :INVOICE, :SUMM, :IN_RUB, :INFO, :DI' +
        'SCOUNT, :DISC_PROC, :id_office);'
      'end;')
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
      'a.DISCOUNT,'
      'a.disc_proc,'
      'a.IN_RUB, '
      'a.T_SHORT, '
      'a.T_LONG,'
      'a.t_type, '
      'a.NICK,'
      'a.chart,'
      'a.active, a.ID_OFFICE, a.brief'
      'FROM ('
      'SELECT '
      'CD.ID_CLIENT_DEBT,'
      'CD.ID_DEBETORS,'
      'CD.DEBET,'
      'CD.RATE,'
      'CD.D_DATE,'
      'CD.R_DDATE,'
      'CD.OPERATION,'
      'CD.INVOICE,'
      'CD.SUMM,'
      'CD.INFO,'
      'CD.IN_RUB, '
      'CD.active,'
      'CD.DISCOUNT,'
      'CD.disc_proc,'
      'O.T_SHORT, '
      'O.T_LONG, '
      'O.t_type,'
      'C.NICK,'
      
        'sum(round(cd.DEBET/cd.RATE,2)) over(partition by 1 /*cd.ID_debet' +
        'ors*/ order by Cd.D_date, rownum ) as CHART'
      ', c.ID_OFFICE, oc.brief'
      
        'FROM CLIENT_DEBT CD, DEBETORS D, OPERATIONS O, CLIENTS C, office' +
        's oc'
      'WHERE '
      'CD.ID_DEBETORS=D.ID_DEBETORS'
      'AND CD.ACTIVE >= 1 '
      'AND CD.ID_DEBETORS IN '
      
        '( SELECT D.ID_DEBETORS FROM DEBETORS D, CLIENTS C WHERE D.ID_CLI' +
        'ENTS=C.ID_CLIENTS AND C.ID_CLIENTS_GROUPS=:P1) '
      'AND CD.OPERATION=O.ID_OPERATIONS '
      'AND D.ID_CLIENTS = C.Id_Clients'
      'and c.id_office = oc.ID_OFFICE'
      'ORDER BY /*D.ID_DEBETORS,*/ CD.D_DATE'
      ') a'
      'WHERE'
      '/*Filter*/ 1=1')
    FilterOptions = [foCaseInsensitive]
    AfterPost = Q_CLIENT_DEBT_AAfterPost
    Left = 488
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P1'
      end>
    object Q_CLIENT_DEBT_ANN: TFloatField
      FieldName = 'NN'
    end
    object Q_CLIENT_DEBT_AID_CLIENT_DEBT: TFloatField
      FieldName = 'ID_CLIENT_DEBT'
      Required = True
    end
    object Q_CLIENT_DEBT_AID_DEBETORS: TFloatField
      FieldName = 'ID_DEBETORS'
      Required = True
    end
    object Q_CLIENT_DEBT_ADEBET: TFloatField
      FieldName = 'DEBET'
      Required = True
    end
    object Q_CLIENT_DEBT_ARATE: TFloatField
      FieldName = 'RATE'
      Required = True
    end
    object Q_CLIENT_DEBT_AD_DATE: TDateTimeField
      FieldName = 'D_DATE'
      Required = True
    end
    object Q_CLIENT_DEBT_AR_DDATE: TDateTimeField
      FieldName = 'R_DDATE'
      Required = True
    end
    object Q_CLIENT_DEBT_AOPERATION: TIntegerField
      FieldName = 'OPERATION'
      Required = True
    end
    object Q_CLIENT_DEBT_AINVOICE: TStringField
      FieldName = 'INVOICE'
      Size = 10
    end
    object Q_CLIENT_DEBT_ASUMM: TFloatField
      FieldName = 'SUMM'
      Required = True
    end
    object Q_CLIENT_DEBT_AINFO: TStringField
      FieldName = 'INFO'
      Size = 255
    end
    object Q_CLIENT_DEBT_ADISCOUNT: TFloatField
      FieldName = 'DISCOUNT'
    end
    object Q_CLIENT_DEBT_ADISC_PROC: TIntegerField
      FieldName = 'DISC_PROC'
    end
    object Q_CLIENT_DEBT_AIN_RUB: TFloatField
      FieldName = 'IN_RUB'
      Required = True
    end
    object Q_CLIENT_DEBT_AT_SHORT: TStringField
      FieldName = 'T_SHORT'
      Required = True
      Size = 3
    end
    object Q_CLIENT_DEBT_AT_LONG: TStringField
      FieldName = 'T_LONG'
      Required = True
      Size = 50
    end
    object Q_CLIENT_DEBT_AT_TYPE: TIntegerField
      FieldName = 'T_TYPE'
      Required = True
    end
    object Q_CLIENT_DEBT_ANICK: TStringField
      FieldName = 'NICK'
      Required = True
    end
    object Q_CLIENT_DEBT_ACHART: TFloatField
      FieldName = 'CHART'
    end
    object Q_CLIENT_DEBT_AACTIVE: TIntegerField
      FieldName = 'ACTIVE'
    end
    object Q_CLIENT_DEBT_AID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_CLIENT_DEBT_ABRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
  end
  object Q_CLIENT_DEBT_A_DS: TOraDataSource
    DataSet = Q_CLIENT_DEBT_A
    Left = 488
    Top = 208
  end
  object OraStoredProc1: TOraStoredProc
    StoredProcName = 'SET_DEBT_ON_DEBETORS'
    Session = OraSession1
    SQL.Strings = (
      'begin'
      '  SET_DEBT_ON_DEBETORS(:ID_DEBT);'
      'end;')
    Left = 32
    Top = 240
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEBT'
        ParamType = ptInput
      end>
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'xls'
    FileName = 'file1'
    Filter = 'Microsoft Excel Workbook (*.xls)|*.XLS'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 26
    Top = 134
  end
  object CDS_CL_DEBETORS: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'begin'
      
        '  cash_pkg.show_dep_clients(:ID_CL_GROUPS_, :ID_CL_, :v_office, ' +
        ':CURSOR_);'
      'end;')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = CDS_CL_DEBETORSBeforeOpen
    Left = 248
    Top = 152
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_CL_GROUPS_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ID_CL_'
        ParamType = ptInput
      end
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
    object CDS_CL_DEBETORSID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object CDS_CL_DEBETORSNICK: TStringField
      FieldName = 'NICK'
    end
    object CDS_CL_DEBETORSFIO: TStringField
      FieldName = 'FIO'
      Required = True
      Size = 255
    end
    object CDS_CL_DEBETORSDDATE: TDateTimeField
      FieldName = 'DDATE'
      Required = True
    end
    object CDS_CL_DEBETORSCCODE: TStringField
      FieldName = 'CCODE'
      Required = True
      Size = 13
    end
    object CDS_CL_DEBETORSREGION: TIntegerField
      FieldName = 'REGION'
      Required = True
    end
    object CDS_CL_DEBETORSTTYPE: TIntegerField
      FieldName = 'TTYPE'
      Required = True
    end
    object CDS_CL_DEBETORSID_CLIENTS_GROUPS: TIntegerField
      FieldName = 'ID_CLIENTS_GROUPS'
      Required = True
    end
    object CDS_CL_DEBETORSGROUP_NAME: TStringField
      FieldName = 'GROUP_NAME'
      Required = True
      Size = 255
    end
    object CDS_CL_DEBETORSBLOCK1: TIntegerField
      FieldName = 'BLOCK1'
      Required = True
    end
    object CDS_CL_DEBETORSBLOCK2: TIntegerField
      FieldName = 'BLOCK2'
      Required = True
    end
    object CDS_CL_DEBETORSID_DEBETORS: TFloatField
      FieldName = 'ID_DEBETORS'
    end
    object CDS_CL_DEBETORSSALES: TFloatField
      FieldName = 'SALES'
    end
    object CDS_CL_DEBETORSIS_LOCK: TIntegerField
      FieldName = 'IS_LOCK'
    end
    object CDS_CL_DEBETORSPHONE: TStringField
      FieldName = 'PHONE'
      Size = 1024
    end
    object CDS_CL_DEBETORSBEZNAL: TIntegerField
      FieldName = 'BEZNAL'
    end
    object CDS_CL_DEBETORSRUBL: TIntegerField
      FieldName = 'RUBL'
    end
    object CDS_CL_DEBETORSSTATE: TIntegerField
      FieldName = 'STATE'
    end
    object CDS_CL_DEBETORSDEBET: TFloatField
      FieldName = 'DEBET'
    end
    object CDS_CL_DEBETORSCREDIT_DAYS: TIntegerField
      FieldName = 'CREDIT_DAYS'
    end
    object CDS_CL_DEBETORSLAST_DDATE: TDateTimeField
      FieldName = 'LAST_DDATE'
    end
    object CDS_CL_DEBETORSIS_LOC_FOR: TFloatField
      FieldName = 'IS_LOC_FOR'
    end
    object CDS_CL_DEBETORSMAX_DATE: TDateTimeField
      FieldName = 'MAX_DATE'
    end
    object CDS_CL_DEBETORSID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object CDS_CL_DEBETORSBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
  end
  object DS_CL_DEBETORS: TOraDataSource
    DataSet = CDS_CL_DEBETORS
    Left = 248
    Top = 208
  end
  object Q_DELETED: TOraQuery
    SQLUpdate.Strings = (
      'UPDATE CASH'
      'SET'
      '  INVOICE = :INVOICE,'
      '  SUMM = :SUMM,'
      '  IN_RUB = :IN_RUB,'
      '  OUT_RUB = :OUT_RUB,'
      '  IN_USD = :IN_USD,'
      '  OUT_USD = :OUT_USD,'
      '  IN_EU = :IN_EU,'
      '  OUT_EU = :OUT_EU,'
      '  INFO = :INFO,'
      '  CORRECTOR = :CORRECTOR,'
      '  DDATE_DONE = :DDATE_DONE,'
      '  CORRECTOR2 = :CORRECTOR2,'
      '  COR_DATE = :COR_DATE'
      'WHERE'
      '  ID_CASH = :OLD_ID_CASH')
    SQLRefresh.Strings = (
      'SELECT CA.* FROM CASH CA WHERE CA.ID_CASH = :ID_CASH')
    Session = OraSession1
    SQL.Strings = (
      'SELECT '
      'CA.ID_CASH,'
      'CA.ID_CLIENTS,'
      'CA.PAYDESK,'
      'CA.OPERATION,'
      'CA.INVOICE,'
      'CA.SUMM,'
      'CA.IN_RUB,'
      'CA.OUT_RUB,'
      'CA.IN_USD,'
      'CA.OUT_USD,'
      'CA.IN_EU,'
      'CA.OUT_EU,'
      'CA.INFO,'
      'CA.CORRECTOR,'
      'CA.DDATE_IN,'
      'CA.DDATE_DONE,'
      'CA.R_DDATE,'
      'CA.D_CHECKED,'
      'CA.R_PAYDESK,'
      'CA.CORRECTOR2,'
      'CA.COR_DATE,'
      'O.T_SHORT, '
      'O.T_LONG, '
      'C.NICK, '
      'C.FIO,'
      'ca.USER_DELETED,'
      'ca.date_deleted,'
      'ca.COME_FROM, '
      'c.ID_OFFICE, '
      'c.brief'
      'FROM '
      'CASH_DELETED CA, '
      'OPERATIONS O, '
      'CLIENTS_VIEW2 C '
      'WHERE '
      '/*Filter*/ 1=1'
      'and (c.ID_OFFICE = :v_office or :v_office = 0)'
      'AND CA.ID_CLIENTS=C.ID_CLIENTS '
      'AND CA.OPERATION=O.ID_OPERATIONS '
      'AND CA.R_DDATE >= :p_date1 '
      'AND CA.R_DDATE <= :p_date2 '
      'and ( CA.COME_FROM = :choise_ or :choise_ = -1 )'
      'ORDER BY  CA.R_DDATE, CA.DDATE_IN')
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = Q_DELETEDBeforeOpen
    BeforeRefresh = Q_DELETEDBeforeOpen
    Left = 240
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'v_office'
      end
      item
        DataType = ftUnknown
        Name = 'p_date1'
      end
      item
        DataType = ftUnknown
        Name = 'p_date2'
      end
      item
        DataType = ftUnknown
        Name = 'choise_'
      end>
    object Q_DELETEDID_CASH: TFloatField
      FieldName = 'ID_CASH'
      Required = True
    end
    object Q_DELETEDID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object Q_DELETEDPAYDESK: TIntegerField
      FieldName = 'PAYDESK'
      Required = True
    end
    object Q_DELETEDOPERATION: TIntegerField
      FieldName = 'OPERATION'
      Required = True
    end
    object Q_DELETEDINVOICE: TFloatField
      FieldName = 'INVOICE'
    end
    object Q_DELETEDSUMM: TFloatField
      FieldName = 'SUMM'
    end
    object Q_DELETEDIN_RUB: TFloatField
      FieldName = 'IN_RUB'
    end
    object Q_DELETEDOUT_RUB: TFloatField
      FieldName = 'OUT_RUB'
    end
    object Q_DELETEDIN_USD: TFloatField
      FieldName = 'IN_USD'
    end
    object Q_DELETEDOUT_USD: TFloatField
      FieldName = 'OUT_USD'
    end
    object Q_DELETEDIN_EU: TFloatField
      FieldName = 'IN_EU'
    end
    object Q_DELETEDOUT_EU: TFloatField
      FieldName = 'OUT_EU'
    end
    object Q_DELETEDINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
    object Q_DELETEDCORRECTOR: TStringField
      FieldName = 'CORRECTOR'
    end
    object Q_DELETEDDDATE_IN: TDateTimeField
      FieldName = 'DDATE_IN'
      Required = True
    end
    object Q_DELETEDDDATE_DONE: TDateTimeField
      FieldName = 'DDATE_DONE'
    end
    object Q_DELETEDR_DDATE: TDateTimeField
      FieldName = 'R_DDATE'
      Required = True
    end
    object Q_DELETEDD_CHECKED: TIntegerField
      FieldName = 'D_CHECKED'
      Required = True
    end
    object Q_DELETEDR_PAYDESK: TIntegerField
      FieldName = 'R_PAYDESK'
      Required = True
    end
    object Q_DELETEDCORRECTOR2: TStringField
      FieldName = 'CORRECTOR2'
    end
    object Q_DELETEDCOR_DATE: TDateTimeField
      FieldName = 'COR_DATE'
    end
    object Q_DELETEDT_SHORT: TStringField
      FieldName = 'T_SHORT'
      Size = 3
    end
    object Q_DELETEDT_LONG: TStringField
      FieldName = 'T_LONG'
      Size = 50
    end
    object Q_DELETEDNICK: TStringField
      FieldName = 'NICK'
    end
    object Q_DELETEDFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object Q_DELETEDUSER_DELETED: TStringField
      FieldName = 'USER_DELETED'
      Required = True
    end
    object Q_DELETEDDATE_DELETED: TDateTimeField
      FieldName = 'DATE_DELETED'
      Required = True
    end
    object Q_DELETEDCOME_FROM: TIntegerField
      FieldName = 'COME_FROM'
      Required = True
    end
    object Q_DELETEDID_OFFICE: TFloatField
      FieldName = 'ID_OFFICE'
    end
    object Q_DELETEDBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
  end
  object Q_DELETED_DS: TOraDataSource
    DataSet = Q_DELETED
    Left = 336
    Top = 280
  end
  object Query1: TQuery
    SessionName = 'ses1'
    SQL.Strings = (
      'select * from "DB\kas.dbf" WHERE mark<2 order by DAT')
    Left = 496
    Top = 288
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 560
    Top = 288
  end
  object Table1: TTable
    SessionName = 'ses1'
    TableName = 'W:\FLOWERS\DATA\kas.dbf'
    TableType = ttFoxPro
    Left = 496
    Top = 347
  end
  object DataSource2: TDataSource
    DataSet = Table1
    Left = 560
    Top = 347
  end
  object Table2: TTable
    SessionName = 'ses1'
    TableName = 'db\kas_all.dbf'
    TableType = ttFoxPro
    Left = 496
    Top = 403
  end
  object DataSource3: TDataSource
    DataSet = Table2
    Left = 560
    Top = 403
  end
  object Session1: TSession
    SessionName = 'ses1'
    Left = 440
    Top = 320
  end
end
