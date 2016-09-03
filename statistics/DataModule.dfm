object DM: TDM
  OldCreateOrder = False
  Height = 427
  Width = 516
  object stat_session: TOraSession
    Options.Direct = True
    Username = 'creator'
    Password = '123456'
    Server = 'KLEPOV:1521:STARNEW'
    LoginPrompt = False
    AfterConnect = stat_sessionAfterConnect
    HomeName = 'OraHome92'
    Left = 32
    Top = 16
  end
  object CDS_client_stat: TSmartQuery
    Session = stat_session
    SQL.Strings = (
      'begin'
      
        '  creator.statistic.GET_CLIENTS_HOURS(:DATE_B_, :DATE_E_, :CURSO' +
        'R_);'
      'end;')
    Left = 128
    Top = 160
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DATE_B_'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATE_E_'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
  end
  object DS_client_stat: TOraDataSource
    DataSet = CDS_client_stat
    Left = 128
    Top = 216
  end
  object Q_SQL: TOraSQL
    Session = stat_session
    Left = 216
    Top = 160
  end
  object CDS_sale_stat: TSmartQuery
    Session = stat_session
    SQL.Strings = (
      
        'select EXTRACT (HOUR FROM cast(ddate_done as timestamp)) as hour' +
        's ,count( EXTRACT (HOUR FROM cast(ddate_done as timestamp)) ) as' +
        ' counts '
      'FROM s_cash.cash '
      'where trunc(ddate_done)=:P1'
      'group by EXTRACT (HOUR FROM cast(ddate_done as timestamp))')
    Left = 128
    Top = 272
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'P1'
        ParamType = ptInput
      end>
  end
  object DS_sale_stat: TOraDataSource
    DataSet = CDS_sale_stat
    Left = 128
    Top = 328
  end
  object SP_EXECUTE: TOraStoredProc
    Session = stat_session
    Left = 232
    Top = 232
  end
  object DS_EXECUTE: TOraDataSource
    DataSet = SP_EXECUTE
    Left = 232
    Top = 296
  end
  object SQL_Q: TOraQuery
    Session = stat_session
    Left = 120
    Top = 16
  end
  object cds_summs: TSmartQuery
    Session = stat_session
    SQL.Strings = (
      'begin'
      
        '  creator.statistic.GET_CLIENTS_HOURS(:DATE_B_, :DATE_E_, :CURSO' +
        'R_);'
      'end;')
    Left = 200
    Top = 16
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DATE_B_'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATE_E_'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
  end
  object ds_summs: TOraDataSource
    DataSet = cds_summs
    Left = 200
    Top = 72
  end
  object cds_grants: TSmartQuery
    SQLDelete.Strings = (
      'delete from admin_programs_buttons a'
      'where a.id_programs = 19 and a.id_user =:id_user and a.tag=:tag')
    SQLUpdate.Strings = (
      'update admin_programs_buttons a set c_start =:c_start'
      'where a.id_programs = 19 and a.id_user =:id_user and a.tag=:tag')
    SQLRefresh.Strings = (
      'select a.*, b.nick, b.fio,'
      
        ' decode(a.tag, 1, '#39#1050#1083#1080#1077#1085#1090#1089#1082#1072#1103' '#1085#1072#1075#1088#1091#1079#1082#1072#39', 2, '#39#1055#1088#1086#1076#1072#1078#1080#39', 3, '#39#1044#1086#1093#1086#1076 +
        #1085#1086#1089#1090#1100#39', 4, '#39#1055#1088#1086#1076#1072#1078#1080' '#1087#1086' '#1088#1077#1075#1080#1086#1085#1072#1084#39', a.tag) as tag_name'
      'from admin_programs_buttons a, clients b'
      
        'where a.id_programs = 19 and a.id_user = b.id_clients and a.tag=' +
        ':tag')
    Session = stat_session
    SQL.Strings = (
      'select a.*, b.nick, b.fio,'
      
        ' decode(a.tag, 1, '#39#1050#1083#1080#1077#1085#1090#1089#1082#1072#1103' '#1085#1072#1075#1088#1091#1079#1082#1072#39', 2, '#39#1055#1088#1086#1076#1072#1078#1080#39', 3, '#39#1044#1086#1093#1086#1076 +
        #1085#1086#1089#1090#1100#39', 4, '#39#1055#1088#1086#1076#1072#1078#1080' '#1087#1086' '#1088#1077#1075#1080#1086#1085#1072#1084#39', a.tag) as tag_name'
      'from admin_programs_buttons a, clients b'
      'where a.id_programs = 19 and a.id_user = b.id_clients')
    Left = 360
    Top = 160
    object cds_grantsID_PROGRAMS: TIntegerField
      FieldName = 'ID_PROGRAMS'
      Required = True
    end
    object cds_grantsID_USER: TIntegerField
      FieldName = 'ID_USER'
      Required = True
    end
    object cds_grantsTAG: TIntegerField
      FieldName = 'TAG'
      Required = True
    end
    object cds_grantsC_START: TIntegerField
      FieldName = 'C_START'
    end
    object cds_grantsNICK: TStringField
      FieldName = 'NICK'
      Required = True
    end
    object cds_grantsFIO: TStringField
      FieldName = 'FIO'
      Required = True
      Size = 255
    end
    object cds_grantsTAG_NAME: TStringField
      FieldName = 'TAG_NAME'
      Size = 40
    end
  end
  object ds_grants: TOraDataSource
    DataSet = cds_grants
    Left = 360
    Top = 216
  end
  object StorProc: TOraStoredProc
    Left = 312
    Top = 24
  end
end
