object DM: TDM
  OldCreateOrder = False
  Height = 410
  Width = 548
  object OraSession1: TOraSession
    Options.Charset = 'CL8MSWIN1251'
    Options.Direct = True
    Username = 'CREATOR'
    Password = '123456'
    Server = 'ROZNICA:1521:orcl'
    LoginPrompt = False
    AfterConnect = OraSession1AfterConnect
    Left = 32
    Top = 16
  end
  object Q_CLIENTS: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT C.ID_CLIENTS, C.NICK, C.FIO, C.CCODE,'
      '    C.TTYPE, C.ID_CLIENTS_GROUPS, C.BLOCK1, C.BLOCK2'
      '    , g.name as group_name'
      '    FROM CLIENTS C, clients_groups g '
      
        'WHERE (C.ACTIVE=1 or C.active is NULL) and C.ID_CLIENTS_GROUPS =' +
        ' g.ID_CLIENTS_GROUPS and c.ID_OFFICE = const_office'
      ' ORDER BY C.NICK')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 344
    Top = 16
    object Q_CLIENTSID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object Q_CLIENTSNICK: TStringField
      FieldName = 'NICK'
      Required = True
    end
    object Q_CLIENTSFIO: TStringField
      FieldName = 'FIO'
      Required = True
      Size = 255
    end
    object Q_CLIENTSCCODE: TStringField
      FieldName = 'CCODE'
      Required = True
      Size = 13
    end
    object Q_CLIENTSTTYPE: TIntegerField
      FieldName = 'TTYPE'
      Required = True
    end
    object Q_CLIENTSID_CLIENTS_GROUPS: TIntegerField
      FieldName = 'ID_CLIENTS_GROUPS'
      Required = True
    end
    object Q_CLIENTSBLOCK1: TIntegerField
      FieldName = 'BLOCK1'
      Required = True
    end
    object Q_CLIENTSBLOCK2: TIntegerField
      FieldName = 'BLOCK2'
      Required = True
    end
    object Q_CLIENTSGROUP_NAME: TStringField
      FieldName = 'GROUP_NAME'
      Required = True
      Size = 255
    end
  end
  object Q_CLIENTS_DS: TOraDataSource
    DataSet = Q_CLIENTS
    Left = 440
    Top = 16
  end
  object CASH_TMP: TOraQuery
    SQLUpdate.Strings = (
      'UPDATE CASH_TMP'
      'SET'
      '  IN_RUB = :IN_RUB,'
      '  OUT_RUB = :OUT_RUB,'
      '  IN_USD = :IN_USD,'
      '  OUT_USD = :OUT_USD,'
      '  IN_EU = :IN_EU,'
      '  OUT_EU = :OUT_EU,'
      '  INFO = :INFO,'
      '  CORRECTOR = :CORRECTOR,'
      '  DDATE_DONE = :DDATE_DONE,'
      '  R_PAYDESK = :R_PAYDESK,'
      '  DATE_CHANGE = sysdate'
      'WHERE'
      '  ID_CASH_TMP = :OLD_ID_CASH_TMP')
    SQLRefresh.Strings = (
      'select * from CASH_TMP'
      'WHERE'
      '  ID_CASH_TMP = :OLD_ID_CASH_TMP')
    Session = OraSession1
    SQL.Strings = (
      'begin'
      
        '  CASH_PKG.show_cach_tmp(:DDATE_, :PAYDESK_, :PAYDESK2_, :INVOIC' +
        'E_, :CURSOR_);'
      'end;')
    FetchAll = True
    RefreshOptions = [roAfterUpdate]
    BeforeEdit = CASH_TMPBeforeEdit
    BeforePost = CASH_TMPBeforePost
    Left = 128
    Top = 16
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DDATE_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PAYDESK_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PAYDESK2_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INVOICE_'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptInputOutput
        Value = ''
      end>
    object CASH_TMPID_CASH_TMP: TFloatField
      FieldName = 'ID_CASH_TMP'
      Required = True
    end
    object CASH_TMPID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object CASH_TMPPAYDESK: TIntegerField
      FieldName = 'PAYDESK'
      Required = True
    end
    object CASH_TMPOPERATION: TIntegerField
      FieldName = 'OPERATION'
      Required = True
    end
    object CASH_TMPINVOICE: TFloatField
      FieldName = 'INVOICE'
    end
    object CASH_TMPCORRECTOR: TStringField
      FieldName = 'CORRECTOR'
    end
    object CASH_TMPR_PAYDESK: TIntegerField
      FieldName = 'R_PAYDESK'
      Required = True
    end
    object CASH_TMPR_DDATE: TDateTimeField
      FieldName = 'R_DDATE'
      Required = True
    end
    object CASH_TMPDDATE_DONE: TDateTimeField
      FieldName = 'DDATE_DONE'
    end
    object CASH_TMPDDATE_IN: TStringField
      FieldName = 'DDATE_IN'
      Size = 17
    end
    object CASH_TMPSUMM: TFloatField
      FieldName = 'SUMM'
    end
    object CASH_TMPIN_RUB: TFloatField
      FieldName = 'IN_RUB'
    end
    object CASH_TMPOUT_RUB: TFloatField
      FieldName = 'OUT_RUB'
    end
    object CASH_TMPIN_USD: TFloatField
      FieldName = 'IN_USD'
    end
    object CASH_TMPOUT_USD: TFloatField
      FieldName = 'OUT_USD'
    end
    object CASH_TMPIN_EU: TFloatField
      FieldName = 'IN_EU'
    end
    object CASH_TMPOUT_EU: TFloatField
      FieldName = 'OUT_EU'
    end
    object CASH_TMPINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
    object CASH_TMPT_SHORT: TStringField
      FieldName = 'T_SHORT'
      Required = True
      Size = 3
    end
    object CASH_TMPT_LONG: TStringField
      FieldName = 'T_LONG'
      Required = True
      Size = 50
    end
    object CASH_TMPNICK: TStringField
      FieldName = 'NICK'
      Required = True
    end
    object CASH_TMPFIO: TStringField
      FieldName = 'FIO'
      Required = True
      Size = 255
    end
    object CASH_TMPDDATE_IN_: TDateTimeField
      FieldName = 'DDATE_IN_'
      Required = True
    end
    object CASH_TMPGROUP_NAME: TStringField
      FieldName = 'GROUP_NAME'
      Required = True
      Size = 255
    end
    object CASH_TMPCASH_SEQ: TFloatField
      FieldName = 'CASH_SEQ'
    end
  end
  object CASH_TMP_DS: TOraDataSource
    DataSet = CASH_TMP
    Left = 200
    Top = 16
  end
  object OPERATIONS: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'begin'
      '  cash_pkg.show_operations(:CURSOR_);'
      'end;')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 344
    Top = 72
    ParamData = <
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptInputOutput
        Value = 'Object'
      end>
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
    object OPERATIONSID_OPERATIONS: TIntegerField
      FieldName = 'ID_OPERATIONS'
      Required = True
    end
    object OPERATIONSID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
  end
  object OPERATIONS_DS: TOraDataSource
    DataSet = OPERATIONS
    Left = 440
    Top = 72
  end
  object Q_SQL: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT PARAMS_SET_ID.nextval from DUAL')
    Left = 128
    Top = 112
  end
  object Q_SQL_DS: TOraDataSource
    DataSet = Q_SQL
    Left = 200
    Top = 112
  end
  object Query1: TQuery
    SessionName = 'ses1'
    SQL.Strings = (
      'select * from "DB\kas.dbf" WHERE mark<2 order by DAT')
    Left = 328
    Top = 200
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 392
    Top = 200
  end
  object Table1: TTable
    SessionName = 'ses1'
    TableName = 'W:\FLOWERS\DATA\kas.dbf'
    TableType = ttFoxPro
    Left = 328
    Top = 259
  end
  object DataSource2: TDataSource
    DataSet = Table1
    Left = 392
    Top = 259
  end
  object Table2: TTable
    SessionName = 'ses1'
    TableName = 'db\kas_all.dbf'
    TableType = ttFoxPro
    Left = 328
    Top = 315
  end
  object DataSource3: TDataSource
    DataSet = Table2
    Left = 392
    Top = 315
  end
  object Session1: TSession
    SessionName = 'ses1'
    Left = 272
    Top = 232
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'xls'
    FileName = 'file1'
    Filter = 'Microsoft Excel Workbook (*.xls)|*.XLS'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 130
    Top = 190
  end
end
