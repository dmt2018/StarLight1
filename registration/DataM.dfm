object DM: TDM
  OldCreateOrder = False
  Height = 565
  Width = 1018
  object OraSession1: TOraSession
    Options.Charset = 'CL8MSWIN1251'
    Options.Direct = True
    Username = 'CREATOR'
    Password = '123456'
    Server = 'ROZNICA:1521:orcl'
    AfterConnect = OraSession1AfterConnect
    Left = 32
    Top = 16
  end
  object Q_CLIENTS: TOraQuery
    SQLUpdate.Strings = (
      'update clients set count=:count where id_clients=:id_clients')
    SQLRefresh.Strings = (
      'where id_clients=:id_clients')
    Session = OraSession1
    SQL.Strings = (
      'SELECT * from CLIENTS_VIEW2')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 32
    Top = 144
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
    object Q_CLIENTSCOUNT: TIntegerField
      FieldName = 'COUNT'
      Required = True
    end
    object Q_CLIENTSREG_TYPE_NAME: TStringField
      FieldName = 'REG_TYPE_NAME'
      Size = 50
    end
    object Q_CLIENTSSALES: TFloatField
      FieldName = 'SALES'
    end
    object Q_CLIENTSEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object Q_CLIENTSADDRESS: TStringField
      FieldName = 'ADDRESS'
      Size = 1024
    end
    object Q_CLIENTSID_OFFICE: TFloatField
      FieldName = 'ID_OFFICE'
    end
    object Q_CLIENTSBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object Q_CLIENTSPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 5
    end
    object Q_CLIENTSCITY: TStringField
      FieldName = 'CITY'
      Size = 255
    end
    object Q_CLIENTSMARK: TStringField
      FieldName = 'MARK'
      Required = True
      Size = 11
    end
    object Q_CLIENTSID_OFFICE_SRC: TIntegerField
      FieldName = 'ID_OFFICE_SRC'
    end
    object Q_CLIENTSINN: TStringField
      FieldName = 'INN'
      Size = 50
    end
  end
  object Q_CLIENTS_DS: TOraDataSource
    DataSet = Q_CLIENTS
    Left = 112
    Top = 144
  end
  object Ora_SQL: TOraSQL
    Session = OraSession1
    SQL.Strings = (
      
        'CREATE USER "ASD" PROFILE "DEFAULT" IDENTIFIED BY "aaa" DEFAULT ' +
        'TABLESPACE "STARLIGHT" ACCOUNT UNLOCK;'
      'GRANT "CONNECT" TO "ASD"')
    Left = 488
    Top = 472
  end
  object Q_IDD_DS: TOraDataSource
    DataSet = Q_IDD
    Left = 664
    Top = 472
  end
  object Q_IDD: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT OLMER.PARAMS_SET_ID.nextval from DUAL')
    Left = 536
    Top = 472
  end
  object Q_GROUPS: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT a.*, o.BRIEF FROM CLIENTS_GROUPS a, offices o'
      
        'where (a.ID_OFFICE = 1 or a.id_office=1) and a.id_office = o.id_' +
        'office')
    FetchAll = True
    AfterOpen = Q_GROUPSAfterOpen
    Left = 32
    Top = 424
    object Q_GROUPSID_CLIENTS_GROUPS: TIntegerField
      FieldName = 'ID_CLIENTS_GROUPS'
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
    Left = 112
    Top = 424
  end
  object Q_TYPES: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      
        'SELECT a.ID_CLIENT_TYPES, a.NAME, a.ID_OFFICE, o.BRIEF FROM BOOK' +
        'S_CLIENT_TYPES a, offices o'
      
        'where (a.ID_OFFICE = 1 or a.id_office=1) and a.id_office = o.id_' +
        'office')
    AfterOpen = Q_TYPESAfterOpen
    AfterRefresh = Q_TYPESAfterOpen
    Left = 32
    Top = 312
    object Q_TYPESID_CLIENT_TYPES: TIntegerField
      FieldName = 'ID_CLIENT_TYPES'
      Required = True
    end
    object Q_TYPESNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 50
    end
    object Q_TYPESID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_TYPESBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
  end
  object Q_TYPES_DS: TOraDataSource
    DataSet = Q_TYPES
    Left = 112
    Top = 312
  end
  object Q_REGIONS: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      
        'SELECT a.ID_REGIONS, a.NAME, a.ID_OFFICE, o.BRIEF FROM BOOKS_REG' +
        'IONS a, offices o'
      
        'where (a.ID_OFFICE = 1 or a.id_office=1) and a.id_office = o.id_' +
        'office')
    AfterOpen = Q_REGIONSAfterOpen
    AfterRefresh = Q_REGIONSAfterOpen
    Left = 32
    Top = 256
    object Q_REGIONSID_REGIONS: TIntegerField
      FieldName = 'ID_REGIONS'
      Required = True
    end
    object Q_REGIONSNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 255
    end
    object Q_REGIONSID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_REGIONSBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
  end
  object Q_REGIONS_DS: TOraDataSource
    DataSet = Q_REGIONS
    Left = 112
    Top = 256
  end
  object Q_ADVERT: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      
        'SELECT a.ID_ADVERTISMENTS, a.NAME, a.ID_OFFICE, o.BRIEF FROM BOO' +
        'KS_ADVERTISMENTS a, offices o'
      
        'where (a.ID_OFFICE = 1 or a.id_office=1) and a.id_office = o.id_' +
        'office')
    AfterOpen = Q_ADVERTAfterOpen
    AfterRefresh = Q_ADVERTAfterOpen
    Left = 32
    Top = 200
    object Q_ADVERTID_ADVERTISMENTS: TIntegerField
      FieldName = 'ID_ADVERTISMENTS'
      Required = True
    end
    object Q_ADVERTNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 255
    end
    object Q_ADVERTID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_ADVERTBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
  end
  object Q_ADVERT_DS: TOraDataSource
    DataSet = Q_ADVERT
    Left = 112
    Top = 200
  end
  object Q_SQL_DS: TOraDataSource
    DataSet = Q_SQL
    Left = 920
    Top = 416
  end
  object Q_SQL: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT OLMER.PARAMS_SET_ID.nextval from DUAL WHERE ID:=ID')
    Left = 824
    Top = 416
  end
  object Q_G_CL: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      
        'SELECT C.ID_CLIENTS, C.FIO, C.NICK, G.NAME AS GROUP_NAME, T.NAME' +
        ' AS TTYPE_NAME FROM CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, CLIE' +
        'NTS_VIEW C '
      
        'WHERE C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS AND C.TTYPE = T.' +
        'ID_CLIENT_TYPES AND C.ID_CLIENTS_GROUPS=:ID_CLIENTS_GROUPS ORDER' +
        ' BY C.NICK')
    MasterSource = Q_GROUPS_DS
    MasterFields = 'ID'
    FetchAll = True
    Left = 32
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_CLIENTS_GROUPS'
      end>
    object Q_G_CLID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object Q_G_CLFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object Q_G_CLNICK: TStringField
      FieldName = 'NICK'
    end
    object Q_G_CLGROUP_NAME: TStringField
      FieldName = 'GROUP_NAME'
      Required = True
      Size = 255
    end
    object Q_G_CLTTYPE_NAME: TStringField
      FieldName = 'TTYPE_NAME'
      Required = True
      Size = 50
    end
  end
  object Q_G_CL_DS: TOraDataSource
    DataSet = Q_G_CL
    Left = 112
    Top = 368
  end
  object Q_EMPL: TOraQuery
    SQLUpdate.Strings = (
      
        'update clients set active=:active, staff=:staff where id_clients' +
        '=:id_clients')
    Session = OraSession1
    SQL.Strings = (
      'SELECT E.* FROM EMPLOYEES_VIEW E')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 240
    Top = 144
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
      Required = True
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
    object Q_EMPLREGIONS_NAME: TStringField
      FieldName = 'REGIONS_NAME'
      Size = 255
    end
    object Q_EMPLREGION: TIntegerField
      FieldName = 'REGION'
      Required = True
    end
  end
  object Q_EMPL_DS: TOraDataSource
    DataSet = Q_EMPL
    Left = 320
    Top = 144
  end
  object Q_TITLES: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      
        'SELECT a.ID_JOB_TITLES, a.NAME, a.ID_OFFICE, o.BRIEF FROM BOOKS_' +
        'JOB_TITLES a, offices o'
      
        'where (a.ID_OFFICE = 1 or a.id_office=1) and a.id_office = o.id_' +
        'office')
    AfterOpen = Q_TITLESAfterOpen
    AfterRefresh = Q_TITLESAfterOpen
    Left = 240
    Top = 320
    object Q_TITLESID_JOB_TITLES: TIntegerField
      FieldName = 'ID_JOB_TITLES'
      Required = True
    end
    object Q_TITLESNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 100
    end
    object Q_TITLESBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object Q_TITLESID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
  end
  object Q_TITLES_DS: TOraDataSource
    DataSet = Q_TITLES
    Left = 320
    Top = 320
  end
  object Q_JOBS: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      
        'SELECT EJ.*, J.NAME FROM BOOKS_JOB_TITLES J, EMPLOYEES_JOB_TITLE' +
        'S EJ WHERE EJ.ID_JOB_TITLES = J.ID_JOB_TITLES AND EJ.ID_EMPLOYEE' +
        'S =:ID_CLIENTS ORDER BY NAME')
    MasterSource = Q_EMPL_DS
    MasterFields = 'ID_CLIENTS'
    Left = 240
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_CLIENTS'
      end>
    object Q_JOBSID_EMPLOYEES: TIntegerField
      FieldName = 'ID_EMPLOYEES'
      Required = True
    end
    object Q_JOBSID_JOB_TITLES: TIntegerField
      FieldName = 'ID_JOB_TITLES'
      Required = True
    end
    object Q_JOBSNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 100
    end
  end
  object Q_JOBS_DS: TOraDataSource
    DataSet = Q_JOBS
    Left = 320
    Top = 256
  end
  object Q_DEPART: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT ID_DEPARTMENTS, NAME FROM BOOKS_DEPARTMENTS ORDER BY NAME')
    AfterOpen = Q_DEPARTAfterOpen
    AfterRefresh = Q_DEPARTAfterOpen
    Left = 424
    Top = 264
    object Q_DEPARTID_DEPARTMENTS: TIntegerField
      FieldName = 'ID_DEPARTMENTS'
      Required = True
    end
    object Q_DEPARTNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 100
    end
  end
  object Q_DEPART_DS: TOraDataSource
    DataSet = Q_DEPART
    Left = 504
    Top = 264
  end
  object Q_DEPS: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      
        'SELECT ED.*, BD.NAME FROM BOOKS_DEPARTMENTS BD, EMPLOYEES_DEPART' +
        'MENTS ED WHERE ED.ID_DEPARTMENTS = BD.ID_DEPARTMENTS AND ED.ID_E' +
        'MPLOYEES =:ID_CLIENTS ORDER BY NAME')
    MasterSource = Q_EMPL_DS
    MasterFields = 'ID_CLIENTS'
    Left = 240
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_CLIENTS'
      end>
    object Q_DEPSID_EMPLOYEES: TIntegerField
      FieldName = 'ID_EMPLOYEES'
      Required = True
    end
    object Q_DEPSID_DEPARTMENTS: TIntegerField
      FieldName = 'ID_DEPARTMENTS'
      Required = True
    end
    object Q_DEPSNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 100
    end
  end
  object Q_DEPS_DS: TOraDataSource
    DataSet = Q_DEPS
    Left = 320
    Top = 200
  end
  object DEPS_EMPL: TOraQuery
    SQL.Strings = (
      
        'SELECT E.FIO, E.ID_CLIENTS, E.STAFF FROM clients E WHERE E.ID_cl' +
        'ients IN (SELECT ED.ID_EMPLOYEES FROM EMPLOYEES_DEPARTMENTS ED W' +
        'HERE ED.ID_DEPARTMENTS =: ID_DEPARTMENTS) ORDER BY E.FIO')
    MasterSource = Q_DEPART_DS
    MasterFields = 'ID_DEPARTMENTS'
    Left = 424
    Top = 144
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_DEPARTMENTS'
        ParamType = ptInput
        Value = 141
      end>
    object DEPS_EMPLFIO: TStringField
      FieldName = 'FIO'
      Required = True
      Size = 255
    end
    object DEPS_EMPLID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object DEPS_EMPLSTAFF: TIntegerField
      FieldName = 'STAFF'
      Required = True
    end
  end
  object DEPS_EMPL_DS: TOraDataSource
    DataSet = DEPS_EMPL
    Left = 504
    Top = 144
  end
  object JOBS_EMPL: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      
        'SELECT EJ.*, J.NAME FROM BOOKS_JOB_TITLES J, EMPLOYEES_JOB_TITLE' +
        'S EJ WHERE EJ.ID_JOB_TITLES = J.ID_JOB_TITLES AND EJ.ID_EMPLOYEE' +
        'S =:ID_CLIENTS')
    MasterSource = DEPS_EMPL_DS
    MasterFields = 'ID_CLIENTS'
    Left = 424
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_CLIENTS'
        ParamType = ptInput
      end>
    object JOBS_EMPLID_EMPLOYEES: TIntegerField
      FieldName = 'ID_EMPLOYEES'
      Required = True
    end
    object JOBS_EMPLID_JOB_TITLES: TIntegerField
      FieldName = 'ID_JOB_TITLES'
      Required = True
    end
    object JOBS_EMPLNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 100
    end
  end
  object JOBS_EMPL_DS: TOraDataSource
    DataSet = JOBS_EMPL
    Left = 504
    Top = 200
  end
  object Q_EMPL_VIEW: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT C.*, '
      'R.NAME AS REGION_NAME'
      'FROM CLIENTS C, BOOKS_REGIONS R'
      'WHERE C.REGION = R.ID_REGIONS(+)')
    Left = 776
    Top = 200
    object Q_EMPL_VIEWID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object Q_EMPL_VIEWFIO: TStringField
      FieldName = 'FIO'
      Required = True
      Size = 255
    end
    object Q_EMPL_VIEWNICK: TStringField
      FieldName = 'NICK'
      Required = True
    end
    object Q_EMPL_VIEWCCODE: TStringField
      FieldName = 'CCODE'
      Required = True
      Size = 13
    end
    object Q_EMPL_VIEWREGION: TIntegerField
      FieldName = 'REGION'
      Required = True
    end
    object Q_EMPL_VIEWADDRESS: TStringField
      FieldName = 'ADDRESS'
      Size = 1024
    end
    object Q_EMPL_VIEWU_ADDRESS: TStringField
      FieldName = 'U_ADDRESS'
      Size = 1024
    end
    object Q_EMPL_VIEWPHONE: TStringField
      FieldName = 'PHONE'
      Size = 1024
    end
    object Q_EMPL_VIEWPASSPORT: TStringField
      FieldName = 'PASSPORT'
      Size = 1024
    end
    object Q_EMPL_VIEWCONTACT: TStringField
      FieldName = 'CONTACT'
      Size = 100
    end
    object Q_EMPL_VIEWCONT_PHONE: TStringField
      FieldName = 'CONT_PHONE'
      Size = 1024
    end
    object Q_EMPL_VIEWEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object Q_EMPL_VIEWWWW: TStringField
      FieldName = 'WWW'
      Size = 50
    end
    object Q_EMPL_VIEWINN: TStringField
      FieldName = 'INN'
      Size = 50
    end
    object Q_EMPL_VIEWREG_SVID: TStringField
      FieldName = 'REG_SVID'
      Size = 50
    end
    object Q_EMPL_VIEWKPP: TStringField
      FieldName = 'KPP'
    end
    object Q_EMPL_VIEWOKATO: TStringField
      FieldName = 'OKATO'
    end
    object Q_EMPL_VIEWBANK: TStringField
      FieldName = 'BANK'
      Size = 1024
    end
    object Q_EMPL_VIEWAGREEMENT: TStringField
      FieldName = 'AGREEMENT'
      Required = True
      Size = 50
    end
    object Q_EMPL_VIEWADVERTISMENT: TIntegerField
      FieldName = 'ADVERTISMENT'
      Required = True
    end
    object Q_EMPL_VIEWDDATE: TDateTimeField
      FieldName = 'DDATE'
      Required = True
    end
    object Q_EMPL_VIEWBLOCK1: TIntegerField
      FieldName = 'BLOCK1'
      Required = True
    end
    object Q_EMPL_VIEWBLOCK2: TIntegerField
      FieldName = 'BLOCK2'
      Required = True
    end
    object Q_EMPL_VIEWFLOWERS: TIntegerField
      FieldName = 'FLOWERS'
      Required = True
    end
    object Q_EMPL_VIEWPLANTS: TIntegerField
      FieldName = 'PLANTS'
    end
    object Q_EMPL_VIEWMARK: TStringField
      FieldName = 'MARK'
      Required = True
      Size = 10
    end
    object Q_EMPL_VIEWTTYPE: TIntegerField
      FieldName = 'TTYPE'
      Required = True
    end
    object Q_EMPL_VIEWID_CLIENTS_GROUPS: TIntegerField
      FieldName = 'ID_CLIENTS_GROUPS'
      Required = True
    end
    object Q_EMPL_VIEWCORRECTOR: TStringField
      FieldName = 'CORRECTOR'
    end
    object Q_EMPL_VIEWDATE_COR: TDateTimeField
      FieldName = 'DATE_COR'
    end
    object Q_EMPL_VIEWCORRECTOR_COR: TStringField
      FieldName = 'CORRECTOR_COR'
    end
    object Q_EMPL_VIEWDUTIES: TStringField
      FieldName = 'DUTIES'
      Size = 1024
    end
    object Q_EMPL_VIEWINSURANCE: TStringField
      FieldName = 'INSURANCE'
      Size = 50
    end
    object Q_EMPL_VIEWDATE_IN: TDateTimeField
      FieldName = 'DATE_IN'
    end
    object Q_EMPL_VIEWDATE_OUT: TDateTimeField
      FieldName = 'DATE_OUT'
    end
    object Q_EMPL_VIEWL_SERVICE: TStringField
      FieldName = 'L_SERVICE'
      Size = 10
    end
    object Q_EMPL_VIEWSTAFF: TIntegerField
      FieldName = 'STAFF'
    end
    object Q_EMPL_VIEWACTIVE: TIntegerField
      FieldName = 'ACTIVE'
    end
    object Q_EMPL_VIEWLOGIN: TStringField
      FieldName = 'LOGIN'
    end
    object Q_EMPL_VIEWINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
    object Q_EMPL_VIEWREG_TYPE: TIntegerField
      FieldName = 'REG_TYPE'
      Required = True
    end
    object Q_EMPL_VIEWCOUNT: TIntegerField
      FieldName = 'COUNT'
      Required = True
    end
    object Q_EMPL_VIEWDOSTAVKA: TIntegerField
      FieldName = 'DOSTAVKA'
    end
    object Q_EMPL_VIEWID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_EMPL_VIEWDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object Q_EMPL_VIEWPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 5
    end
    object Q_EMPL_VIEWID_CITY: TIntegerField
      FieldName = 'ID_CITY'
    end
    object Q_EMPL_VIEWREGION_NAME: TStringField
      FieldName = 'REGION_NAME'
      Size = 255
    end
  end
  object Q_EMPL_VIEW_DS: TOraDataSource
    DataSet = Q_EMPL_VIEW
    Left = 776
    Top = 256
  end
  object Q_CLIENT_VIEW: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT C.*, '
      
        'case when c.id_office > 1 then o.OFFICE_NAME else case when c.re' +
        'g_type = 0 then '#39#1057#1090#1072#1088#1083#1072#1081#1090#39' else '#39#1057#1090#1072#1088#1083#1072#1081#1090' '#1050#1101#1096' & '#1050#1077#1088#1088#1080#39' end end a' +
        's reg_type_name,'
      
        'G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, R.NAME AS REGION_NAM' +
        'E, A.NAME AS ADVERT '
      ', s.city'
      'FROM CLIENTS_GROUPS G, '
      '    BOOKS_CLIENT_TYPES T, '
      '    BOOKS_ADVERTISMENTS A, '
      '    CLIENTS C, '
      '    BOOKS_REGIONS R, '
      '    offices o,'
      '    books_cities s '
      'WHERE C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS '
      '   AND C.TTYPE = T.ID_CLIENT_TYPES '
      '   AND C.ADVERTISMENT = A.ID_ADVERTISMENTS '
      '   AND C.REGION = R.ID_REGIONS'
      '   and c.id_office = o.ID_OFFICE'
      '   and c.id_city = s.id_city(+)')
    Left = 456
    Top = 16
    object Q_CLIENT_VIEWID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
    end
    object Q_CLIENT_VIEWFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object Q_CLIENT_VIEWNICK: TStringField
      FieldName = 'NICK'
    end
    object Q_CLIENT_VIEWCCODE: TStringField
      FieldName = 'CCODE'
      Size = 13
    end
    object Q_CLIENT_VIEWREGION: TIntegerField
      FieldName = 'REGION'
    end
    object Q_CLIENT_VIEWADDRESS: TStringField
      FieldName = 'ADDRESS'
      Size = 1024
    end
    object Q_CLIENT_VIEWU_ADDRESS: TStringField
      FieldName = 'U_ADDRESS'
      Size = 1024
    end
    object Q_CLIENT_VIEWPHONE: TStringField
      FieldName = 'PHONE'
      Size = 1024
    end
    object Q_CLIENT_VIEWPASSPORT: TStringField
      FieldName = 'PASSPORT'
      Size = 1024
    end
    object Q_CLIENT_VIEWCONTACT: TStringField
      FieldName = 'CONTACT'
      Size = 100
    end
    object Q_CLIENT_VIEWCONT_PHONE: TStringField
      FieldName = 'CONT_PHONE'
      Size = 1024
    end
    object Q_CLIENT_VIEWEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object Q_CLIENT_VIEWWWW: TStringField
      FieldName = 'WWW'
      Size = 50
    end
    object Q_CLIENT_VIEWINN: TStringField
      FieldName = 'INN'
      Size = 50
    end
    object Q_CLIENT_VIEWREG_SVID: TStringField
      FieldName = 'REG_SVID'
      Size = 50
    end
    object Q_CLIENT_VIEWKPP: TStringField
      FieldName = 'KPP'
    end
    object Q_CLIENT_VIEWOKATO: TStringField
      FieldName = 'OKATO'
    end
    object Q_CLIENT_VIEWBANK: TStringField
      FieldName = 'BANK'
      Size = 1024
    end
    object Q_CLIENT_VIEWAGREEMENT: TStringField
      FieldName = 'AGREEMENT'
      Size = 50
    end
    object Q_CLIENT_VIEWADVERTISMENT: TIntegerField
      FieldName = 'ADVERTISMENT'
    end
    object Q_CLIENT_VIEWDDATE: TDateTimeField
      FieldName = 'DDATE'
    end
    object Q_CLIENT_VIEWBLOCK1: TIntegerField
      FieldName = 'BLOCK1'
    end
    object Q_CLIENT_VIEWBLOCK2: TIntegerField
      FieldName = 'BLOCK2'
    end
    object Q_CLIENT_VIEWFLOWERS: TIntegerField
      FieldName = 'FLOWERS'
    end
    object Q_CLIENT_VIEWPLANTS: TIntegerField
      FieldName = 'PLANTS'
    end
    object Q_CLIENT_VIEWMARK: TStringField
      FieldName = 'MARK'
      Size = 11
    end
    object Q_CLIENT_VIEWTTYPE: TIntegerField
      FieldName = 'TTYPE'
    end
    object Q_CLIENT_VIEWID_CLIENTS_GROUPS: TIntegerField
      FieldName = 'ID_CLIENTS_GROUPS'
    end
    object Q_CLIENT_VIEWCORRECTOR: TStringField
      FieldName = 'CORRECTOR'
    end
    object Q_CLIENT_VIEWDATE_COR: TDateTimeField
      FieldName = 'DATE_COR'
    end
    object Q_CLIENT_VIEWCORRECTOR_COR: TStringField
      FieldName = 'CORRECTOR_COR'
    end
    object Q_CLIENT_VIEWDUTIES: TStringField
      FieldName = 'DUTIES'
      Size = 1024
    end
    object Q_CLIENT_VIEWINSURANCE: TStringField
      FieldName = 'INSURANCE'
      Size = 50
    end
    object Q_CLIENT_VIEWDATE_IN: TDateTimeField
      FieldName = 'DATE_IN'
    end
    object Q_CLIENT_VIEWDATE_OUT: TDateTimeField
      FieldName = 'DATE_OUT'
    end
    object Q_CLIENT_VIEWL_SERVICE: TStringField
      FieldName = 'L_SERVICE'
      Size = 10
    end
    object Q_CLIENT_VIEWSTAFF: TIntegerField
      FieldName = 'STAFF'
    end
    object Q_CLIENT_VIEWACTIVE: TIntegerField
      FieldName = 'ACTIVE'
    end
    object Q_CLIENT_VIEWLOGIN: TStringField
      FieldName = 'LOGIN'
    end
    object Q_CLIENT_VIEWINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
    object Q_CLIENT_VIEWREG_TYPE: TIntegerField
      FieldName = 'REG_TYPE'
    end
    object Q_CLIENT_VIEWCOUNT: TIntegerField
      FieldName = 'COUNT'
    end
    object Q_CLIENT_VIEWDOSTAVKA: TIntegerField
      FieldName = 'DOSTAVKA'
    end
    object Q_CLIENT_VIEWID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_CLIENT_VIEWDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object Q_CLIENT_VIEWPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 5
    end
    object Q_CLIENT_VIEWID_CITY: TIntegerField
      FieldName = 'ID_CITY'
    end
    object Q_CLIENT_VIEWREG_TYPE_NAME: TStringField
      FieldName = 'REG_TYPE_NAME'
      Size = 50
    end
    object Q_CLIENT_VIEWGROUP_NAME: TStringField
      FieldName = 'GROUP_NAME'
      Required = True
      Size = 255
    end
    object Q_CLIENT_VIEWTTYPE_NAME: TStringField
      FieldName = 'TTYPE_NAME'
      Size = 50
    end
    object Q_CLIENT_VIEWREGION_NAME: TStringField
      FieldName = 'REGION_NAME'
      Size = 255
    end
    object Q_CLIENT_VIEWADVERT: TStringField
      FieldName = 'ADVERT'
      Size = 255
    end
    object Q_CLIENT_VIEWCITY: TStringField
      FieldName = 'CITY'
      Size = 255
    end
  end
  object Q_CLIENT_VIEW_DS: TOraDataSource
    DataSet = Q_CLIENT_VIEW
    Left = 456
    Top = 80
  end
  object Q_SEARCH: TOraQuery
    LocalUpdate = True
    Session = OraSession1
    SQL.Strings = (
      
        'SELECT C.*, G.NAME AS GROUP_NAME, T.NAME AS TTYPE_NAME, R.NAME A' +
        'S REGION_NAME, A.NAME AS ADVERT, o.BRIEF, s.city'
      
        'FROM CLIENTS C, CLIENTS_GROUPS G, BOOKS_CLIENT_TYPES T, BOOKS_AD' +
        'VERTISMENTS A, BOOKS_REGIONS R, offices o, books_cities s'
      'WHERE C.ID_CLIENTS_GROUPS = G.ID_CLIENTS_GROUPS '
      '  AND C.TTYPE = T.ID_CLIENT_TYPES '
      '  AND C.ADVERTISMENT = A.ID_ADVERTISMENTS '
      '  AND C.REGION = R.ID_REGIONS'
      '  and c.id_office = o.id_office'
      '  and c.id_city = s.id_city(+)')
    FilterOptions = [foCaseInsensitive]
    Left = 240
    Top = 424
    object Q_SEARCHID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object Q_SEARCHFIO: TStringField
      FieldName = 'FIO'
      Required = True
      Size = 255
    end
    object Q_SEARCHNICK: TStringField
      FieldName = 'NICK'
      Required = True
    end
    object Q_SEARCHCCODE: TStringField
      FieldName = 'CCODE'
      Required = True
      Size = 13
    end
    object Q_SEARCHREGION: TIntegerField
      FieldName = 'REGION'
      Required = True
    end
    object Q_SEARCHADDRESS: TStringField
      FieldName = 'ADDRESS'
      Size = 1024
    end
    object Q_SEARCHU_ADDRESS: TStringField
      FieldName = 'U_ADDRESS'
      Size = 1024
    end
    object Q_SEARCHPHONE: TStringField
      FieldName = 'PHONE'
      Size = 1024
    end
    object Q_SEARCHPASSPORT: TStringField
      FieldName = 'PASSPORT'
      Size = 1024
    end
    object Q_SEARCHCONTACT: TStringField
      FieldName = 'CONTACT'
      Size = 100
    end
    object Q_SEARCHCONT_PHONE: TStringField
      FieldName = 'CONT_PHONE'
      Size = 1024
    end
    object Q_SEARCHEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object Q_SEARCHWWW: TStringField
      FieldName = 'WWW'
      Size = 50
    end
    object Q_SEARCHINN: TStringField
      FieldName = 'INN'
      Size = 50
    end
    object Q_SEARCHREG_SVID: TStringField
      FieldName = 'REG_SVID'
      Size = 50
    end
    object Q_SEARCHKPP: TStringField
      FieldName = 'KPP'
    end
    object Q_SEARCHOKATO: TStringField
      FieldName = 'OKATO'
    end
    object Q_SEARCHBANK: TStringField
      FieldName = 'BANK'
      Size = 1024
    end
    object Q_SEARCHAGREEMENT: TStringField
      FieldName = 'AGREEMENT'
      Required = True
      Size = 50
    end
    object Q_SEARCHADVERTISMENT: TIntegerField
      FieldName = 'ADVERTISMENT'
      Required = True
    end
    object Q_SEARCHDDATE: TDateTimeField
      FieldName = 'DDATE'
      Required = True
    end
    object Q_SEARCHBLOCK1: TIntegerField
      FieldName = 'BLOCK1'
      Required = True
    end
    object Q_SEARCHBLOCK2: TIntegerField
      FieldName = 'BLOCK2'
      Required = True
    end
    object Q_SEARCHFLOWERS: TIntegerField
      FieldName = 'FLOWERS'
      Required = True
    end
    object Q_SEARCHPLANTS: TIntegerField
      FieldName = 'PLANTS'
    end
    object Q_SEARCHMARK: TStringField
      FieldName = 'MARK'
      Required = True
      Size = 10
    end
    object Q_SEARCHTTYPE: TIntegerField
      FieldName = 'TTYPE'
      Required = True
    end
    object Q_SEARCHID_CLIENTS_GROUPS: TIntegerField
      FieldName = 'ID_CLIENTS_GROUPS'
      Required = True
    end
    object Q_SEARCHCORRECTOR: TStringField
      FieldName = 'CORRECTOR'
    end
    object Q_SEARCHDATE_COR: TDateTimeField
      FieldName = 'DATE_COR'
    end
    object Q_SEARCHCORRECTOR_COR: TStringField
      FieldName = 'CORRECTOR_COR'
    end
    object Q_SEARCHDUTIES: TStringField
      FieldName = 'DUTIES'
      Size = 1024
    end
    object Q_SEARCHINSURANCE: TStringField
      FieldName = 'INSURANCE'
      Size = 50
    end
    object Q_SEARCHDATE_IN: TDateTimeField
      FieldName = 'DATE_IN'
    end
    object Q_SEARCHDATE_OUT: TDateTimeField
      FieldName = 'DATE_OUT'
    end
    object Q_SEARCHL_SERVICE: TStringField
      FieldName = 'L_SERVICE'
      Size = 10
    end
    object Q_SEARCHSTAFF: TIntegerField
      FieldName = 'STAFF'
    end
    object Q_SEARCHACTIVE: TIntegerField
      FieldName = 'ACTIVE'
    end
    object Q_SEARCHLOGIN: TStringField
      FieldName = 'LOGIN'
    end
    object Q_SEARCHINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
    object Q_SEARCHREG_TYPE: TIntegerField
      FieldName = 'REG_TYPE'
      Required = True
    end
    object Q_SEARCHCOUNT: TIntegerField
      FieldName = 'COUNT'
      Required = True
    end
    object Q_SEARCHDOSTAVKA: TIntegerField
      FieldName = 'DOSTAVKA'
    end
    object Q_SEARCHID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_SEARCHDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object Q_SEARCHPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 5
    end
    object Q_SEARCHID_CITY: TIntegerField
      FieldName = 'ID_CITY'
    end
    object Q_SEARCHGROUP_NAME: TStringField
      FieldName = 'GROUP_NAME'
      Size = 255
    end
    object Q_SEARCHTTYPE_NAME: TStringField
      FieldName = 'TTYPE_NAME'
      Size = 50
    end
    object Q_SEARCHREGION_NAME: TStringField
      FieldName = 'REGION_NAME'
      Size = 255
    end
    object Q_SEARCHADVERT: TStringField
      FieldName = 'ADVERT'
      Size = 255
    end
    object Q_SEARCHBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object Q_SEARCHCITY: TStringField
      FieldName = 'CITY'
      Size = 255
    end
  end
  object Q_SEARCH_DS: TOraDataSource
    DataSet = Q_SEARCH
    Left = 320
    Top = 424
  end
  object OraSQL1: TOraSQL
    Session = OraSession1
    SQL.Strings = (
      
        'CREATE USER "ASD" PROFILE "DEFAULT" IDENTIFIED BY "aaa" DEFAULT ' +
        'TABLESPACE "STARLIGHT" ACCOUNT UNLOCK;'
      'GRANT "CONNECT" TO "ASD"')
    Left = 824
    Top = 480
  end
  object SaveDialog: TSaveDialog
    FileName = 'file1'
    Filter = 
      'Text files (*.txt)|*.TXT|Comma separated values (*.csv)|*.CSV|HT' +
      'ML file (*.htm)|*.HTM|Rich Text Format (*.rtf)|*.RTF|Microsoft E' +
      'xcel Workbook (*.xls)|*.XLS'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 34
    Top = 70
  end
  object cds_adress: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT a.address'
      '  FROM client_address a'
      '  where a.id_clients = :p1')
    Left = 552
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p1'
      end>
    object cds_adressADDRESS: TStringField
      FieldName = 'ADDRESS'
      Size = 1024
    end
  end
  object ds_adress: TOraDataSource
    DataSet = cds_adress
    Left = 624
    Top = 344
  end
  object OraQuery1: TOraQuery
    Left = 824
    Top = 96
  end
end
