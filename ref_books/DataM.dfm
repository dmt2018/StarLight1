object DM: TDM
  OldCreateOrder = False
  Height = 424
  Width = 435
  object OraSession1: TOraSession
    Options.Charset = 'CL8MSWIN1251'
    Options.Direct = True
    Username = 'CREATOR'
    Password = '123456'
    Server = 'klepov:1521:STARNEW'
    LoginPrompt = False
    AfterConnect = OraSession1AfterConnect
    Left = 40
    Top = 16
  end
  object Q_ADVERT: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'begin'
      '  BOOKS.GET_ADVERTISMENTS(:V_OFFICE, :CURSOR_);'
      'end;')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 120
    Top = 16
    ParamData = <
      item
        DataType = ftFloat
        Name = 'V_OFFICE'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Q_ADVERTID_ADVERTISMENTS: TIntegerField
      FieldName = 'ID_ADVERTISMENTS'
      Required = True
    end
    object Q_ADVERTNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 255
    end
    object Q_ADVERTINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
    object Q_ADVERTID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_ADVERTNN: TFloatField
      FieldName = 'NN'
    end
    object Q_ADVERTBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
  end
  object Q_ADVERT_DS: TOraDataSource
    DataSet = Q_ADVERT
    Left = 208
    Top = 16
  end
  object Ora_SQL: TOraSQL
    Session = OraSession1
    SQL.Strings = (
      'SELECT PARAMS_SET_ID.nextval from DUAL')
    Left = 120
    Top = 304
  end
  object Q_TYPES: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'begin'
      '  BOOKS.GET_CLIENT_TYPES(:V_OFFICE, :CURSOR_);'
      'end;')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 120
    Top = 72
    ParamData = <
      item
        DataType = ftFloat
        Name = 'V_OFFICE'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Q_TYPESID_CLIENT_TYPES: TIntegerField
      FieldName = 'ID_CLIENT_TYPES'
      Required = True
    end
    object Q_TYPESNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 50
    end
    object Q_TYPESINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
    object Q_TYPEST_TYPE: TIntegerField
      FieldName = 'T_TYPE'
    end
    object Q_TYPESDISCOUNT: TFloatField
      FieldName = 'DISCOUNT'
    end
    object Q_TYPESID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_TYPESNN: TFloatField
      FieldName = 'NN'
    end
    object Q_TYPESBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
  end
  object Q_TYPES_DS: TOraDataSource
    DataSet = Q_TYPES
    Left = 208
    Top = 72
  end
  object Q_REGIONS: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'begin'
      '  BOOKS.GET_REGIONS(:V_OFFICE, :CURSOR_);'
      'end;')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 120
    Top = 128
    ParamData = <
      item
        DataType = ftFloat
        Name = 'V_OFFICE'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Q_REGIONSID_REGIONS: TIntegerField
      FieldName = 'ID_REGIONS'
      Required = True
    end
    object Q_REGIONSNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 255
    end
    object Q_REGIONSINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
    object Q_REGIONSID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_REGIONSNN: TFloatField
      FieldName = 'NN'
    end
    object Q_REGIONSBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object Q_REGIONSKLADR: TStringField
      FieldName = 'KLADR'
      Size = 15
    end
    object Q_REGIONSKOD: TStringField
      FieldName = 'KOD'
      Size = 4
    end
  end
  object Q_REGIONS_DS: TOraDataSource
    DataSet = Q_REGIONS
    Left = 208
    Top = 128
  end
  object Q_TITLES: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'begin'
      '  BOOKS.GET_JOB_TITLES(:V_OFFICE, :CURSOR_);'
      'end;')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 120
    Top = 240
    ParamData = <
      item
        DataType = ftFloat
        Name = 'V_OFFICE'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Q_TITLESID_JOB_TITLES: TIntegerField
      FieldName = 'ID_JOB_TITLES'
      Required = True
    end
    object Q_TITLESNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 100
    end
    object Q_TITLESINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
    object Q_TITLESID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_TITLESNN: TFloatField
      FieldName = 'NN'
    end
    object Q_TITLESBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
  end
  object Q_TITLES_DS: TOraDataSource
    DataSet = Q_TITLES
    Left = 208
    Top = 240
  end
  object Q_DEPS: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'begin'
      '  BOOKS.GET_DEPARTMENTS(:V_OFFICE, :CURSOR_);'
      'end;')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 120
    Top = 184
    ParamData = <
      item
        DataType = ftFloat
        Name = 'V_OFFICE'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Q_DEPSID_DEPARTMENTS: TIntegerField
      FieldName = 'ID_DEPARTMENTS'
      Required = True
    end
    object Q_DEPSNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 100
    end
    object Q_DEPSINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
    object Q_DEPSSTATE: TIntegerField
      FieldName = 'STATE'
    end
    object Q_DEPSID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_DEPSNN: TFloatField
      FieldName = 'NN'
    end
    object Q_DEPSBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
  end
  object Q_DEPS_DS: TOraDataSource
    DataSet = Q_DEPS
    Left = 208
    Top = 184
  end
  object SelQ: TOraQuery
    Left = 312
    Top = 328
  end
  object Q_CITIES: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'begin'
      '  BOOKS.GET_CITIES(:V_OFFICE, :CURSOR_);'
      'end;')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 296
    Top = 128
    ParamData = <
      item
        DataType = ftFloat
        Name = 'V_OFFICE'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Q_CITIESID_CITY: TIntegerField
      FieldName = 'ID_CITY'
      Required = True
    end
    object Q_CITIESCITY: TStringField
      FieldName = 'CITY'
      Required = True
      Size = 255
    end
    object Q_CITIESKOD: TStringField
      FieldName = 'KOD'
      Size = 10
    end
    object Q_CITIESID_REGION: TIntegerField
      FieldName = 'ID_REGION'
    end
    object Q_CITIESID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_CITIESBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object Q_CITIESNAME: TStringField
      FieldName = 'NAME'
      Size = 255
    end
  end
  object Q_CITIES_DS: TOraDataSource
    DataSet = Q_CITIES
    Left = 376
    Top = 128
  end
end
