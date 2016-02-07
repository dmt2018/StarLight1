object DM: TDM
  OldCreateOrder = False
  Height = 464
  Width = 792
  object OraSession1: TOraSession
    Options.Charset = 'CL8MSWIN1251'
    Options.Direct = True
    Username = 'CREATOR'
    Password = '123456'
    Server = 'KLEPOV:1521:STARNEW'
    LoginPrompt = False
    AfterConnect = OraSession1AfterConnect
    HomeName = 'OraHome92'
    Left = 32
    Top = 16
  end
  object Ora_SQL: TOraSQL
    Session = OraSession1
    SQL.Strings = (
      'SELECT OLMER.PARAMS_SET_ID.nextval from DUAL')
    Left = 280
    Top = 40
  end
  object Q_IDD: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT OLMER.PARAMS_SET_ID.nextval from DUAL')
    Left = 272
    Top = 112
  end
  object Q_EMPL: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      
        'SELECT NN, ACTIVE, CCODE, FIO, ID_CLIENTS, LOGIN, NICK, STAFF, C' +
        'OUNT, id_office, brief'
      'from employees_view '
      'where ( id_office = :v_office or :v_office = 0)')
    FetchAll = True
    AfterOpen = Q_EMPLAfterRefresh
    AfterScroll = Q_EMPLAfterScroll
    AfterRefresh = Q_EMPLAfterRefresh
    Left = 120
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'v_office'
        ParamType = ptInput
      end>
    object Q_EMPLNN: TFloatField
      FieldName = 'NN'
    end
    object Q_EMPLACTIVE: TIntegerField
      FieldName = 'ACTIVE'
    end
    object Q_EMPLCCODE: TStringField
      FieldName = 'CCODE'
      Required = True
      Size = 13
    end
    object Q_EMPLFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object Q_EMPLID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object Q_EMPLLOGIN: TStringField
      FieldName = 'LOGIN'
    end
    object Q_EMPLNICK: TStringField
      FieldName = 'NICK'
    end
    object Q_EMPLSTAFF: TIntegerField
      FieldName = 'STAFF'
    end
    object Q_EMPLCOUNT: TIntegerField
      FieldName = 'COUNT'
      Required = True
    end
    object Q_EMPLID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_EMPLBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
  end
  object Q_EMPL_DS: TOraDataSource
    DataSet = Q_EMPL
    Left = 200
    Top = 16
  end
  object Q_PROGS: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'begin'
      '  admins.get_programs(:CURSOR_);'
      'end;')
    FetchAll = True
    AfterOpen = Q_PROGSAfterOpen
    AfterRefresh = Q_PROGSAfterOpen
    Left = 120
    Top = 80
    ParamData = <
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Q_PROGSID_ADMIN_PROGRAMS: TIntegerField
      FieldName = 'ID_ADMIN_PROGRAMS'
      Required = True
    end
    object Q_PROGSNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 255
    end
    object Q_PROGSINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
  end
  object Q_PROGS_DS: TOraDataSource
    DataSet = Q_PROGS
    Left = 200
    Top = 80
  end
  object Q_GROUPS: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'begin'
      '  admins.get_role_group(:v_office, :CURSOR_);'
      'end;')
    FetchAll = True
    AfterOpen = Q_GROUPSAfterOpen
    AfterScroll = Q_GROUPSAfterScroll
    AfterRefresh = Q_GROUPSAfterOpen
    Left = 120
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'v_office'
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Q_GROUPSID_ROLE_GROUPS: TIntegerField
      FieldName = 'ID_ROLE_GROUPS'
      Required = True
    end
    object Q_GROUPSNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 255
    end
    object Q_GROUPSINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
    object Q_GROUPSID_DEP: TIntegerField
      FieldName = 'ID_DEP'
    end
    object Q_GROUPSDEP_NAME: TStringField
      FieldName = 'DEP_NAME'
      Size = 100
    end
    object Q_GROUPSID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_GROUPSBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
  end
  object Q_GROUPS_DS: TOraDataSource
    DataSet = Q_GROUPS
    Left = 200
    Top = 144
  end
  object Q_GR_PR: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'begin'
      '  admins.get_role_programs(:ROLE_, :v_office, :CURSOR_);'
      'end;')
    FetchAll = True
    Left = 120
    Top = 208
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ROLE_'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'v_office'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Q_GR_PRID_PROGRAMS: TIntegerField
      FieldName = 'ID_PROGRAMS'
      Required = True
    end
    object Q_GR_PRID_ROLE_GROUPS: TIntegerField
      FieldName = 'ID_ROLE_GROUPS'
      Required = True
    end
    object Q_GR_PRC_START: TIntegerField
      FieldName = 'C_START'
    end
    object Q_GR_PRC_EDIT: TIntegerField
      FieldName = 'C_EDIT'
    end
    object Q_GR_PRC_DEL: TIntegerField
      FieldName = 'C_DEL'
    end
    object Q_GR_PRC_PRINT: TIntegerField
      FieldName = 'C_PRINT'
    end
    object Q_GR_PRC_ADDIT: TIntegerField
      FieldName = 'C_ADDIT'
    end
    object Q_GR_PRNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 255
    end
  end
  object Q_GR_PR_DS: TOraDataSource
    DataSet = Q_GR_PR
    Left = 200
    Top = 208
  end
  object Q_EM_PR: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'begin'
      '  admins.get_role_user(:ROLE_, :v_office, :CURSOR_);'
      'end;')
    FetchAll = True
    Left = 120
    Top = 272
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ROLE_'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'v_office'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Q_EM_PRID_EMPLOYEES: TIntegerField
      FieldName = 'ID_EMPLOYEES'
      Required = True
    end
    object Q_EM_PRID_ROLE_GROUPS: TIntegerField
      FieldName = 'ID_ROLE_GROUPS'
      Required = True
    end
    object Q_EM_PRNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 255
    end
    object Q_EM_PRID_DEP: TIntegerField
      FieldName = 'ID_DEP'
    end
    object Q_EM_PRDEP_NAME: TStringField
      FieldName = 'DEP_NAME'
      Required = True
      Size = 100
    end
  end
  object Q_EM_PR_DS: TOraDataSource
    DataSet = Q_EM_PR
    Left = 200
    Top = 272
  end
  object Q_SET_CASH: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'begin'
      '  admins.get_cach(:v_office, :CURSOR_);'
      'end;')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 120
    Top = 328
    ParamData = <
      item
        DataType = ftInteger
        Name = 'v_office'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Q_SET_CASHN_CASH: TIntegerField
      FieldName = 'N_CASH'
      Required = True
    end
    object Q_SET_CASHID_CLIENTS: TFloatField
      FieldName = 'ID_CLIENTS'
    end
    object Q_SET_CASHFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object Q_SET_CASHLOGIN: TStringField
      FieldName = 'LOGIN'
    end
    object Q_SET_CASHNICK: TStringField
      FieldName = 'NICK'
    end
    object Q_SET_CASHID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_SET_CASHBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
  end
  object Q_SET_CASH_DS: TOraDataSource
    DataSet = Q_SET_CASH
    Left = 208
    Top = 328
  end
  object Q_SET_DEBITOR: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'begin'
      '  admins.get_debetors(:v_office, :CURSOR_);'
      'end;')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 112
    Top = 384
    ParamData = <
      item
        DataType = ftInteger
        Name = 'v_office'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Q_SET_DEBITORDEBETORS: TFloatField
      FieldName = 'DEBETORS'
    end
    object Q_SET_DEBITORFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object Q_SET_DEBITORLOGIN: TStringField
      FieldName = 'LOGIN'
    end
    object Q_SET_DEBITORNICK: TStringField
      FieldName = 'NICK'
    end
    object Q_SET_DEBITORID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_SET_DEBITORBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object Q_SET_DEBITORID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
    end
  end
  object Q_SET_DEBITOR_DS: TOraDataSource
    DataSet = Q_SET_DEBITOR
    Left = 216
    Top = 384
  end
end
