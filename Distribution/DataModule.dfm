object DM: TDM
  OldCreateOrder = False
  Height = 516
  Width = 592
  object StarSess: TOraSession
    Options.Direct = True
    Username = 'creator'
    Password = '123456'
    Server = 'KLEPOV:1521:STARNEW'
    AutoCommit = False
    LoginPrompt = False
    BeforeConnect = StarSessBeforeConnect
    Left = 24
    Top = 24
  end
  object SelQ: TOraQuery
    Session = StarSess
    SQL.Strings = (
      'begin'
      
        '  distribution_pkg.CREATE_DISTRIBUTION_INDEX(:IN_DIST_DATE, :IN_' +
        'DIST_COMMENT, :IN_ID_DEPARTMENTS);'
      'end;')
    Left = 24
    Top = 128
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'IN_DIST_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IN_DIST_COMMENT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_ID_DEPARTMENTS'
        ParamType = ptInput
      end>
  end
  object SelOrderList: TOraQuery
    SQLRefresh.Strings = (
      'select'
      '  QUANTITY,'
      
        '  (SELECT SUM(QUANTITY) FROM DISTRIBUTIONS WHERE ID_ORDERS_LIST ' +
        '= OLV.ID_ORDERS_LIST) DISTRIBUTED_NUMBER'
      'from ORDERS_LIST_VIEW OLV '
      'WHERE ID_ORDERS_LIST = :OLD_ID_ORDERS_LIST')
    Session = StarSess
    SQL.Strings = (
      
        'SELECT a.ID_ORDERS_LIST, a.N_ID, a.QUANTITY, a.ID_ORDERS_CLIENTS' +
        ', a.TRUCK, a.WEIGHT,'
      
        '  a.COMPILED_NAME, a.great_name, a.great_name_f, a.ID_ORDERS_LIS' +
        'T as ID_ORDERS_LIST_, a.zatirka,'
      '  nvl(SUM(b.QUANTITY),0) as DISTRIBUTED_NUMBER, b.DIST_ID '
      'FROM '
      '  ORDERS_LIST_VIEW a, DISTRIBUTIONS b'
      'WHERE '
      '  a.ID_ORDERS_CLIENTS = :ID_ORDERS_CLIENTS_'
      '  and b.ID_ORDERS_LIST(+) = a.ID_ORDERS_LIST'
      '  and b.DIST_IND_ID(+) = :DIST_IND_ID'
      
        'group by a.ID_ORDERS_LIST, a.N_ID, a.QUANTITY, a.ID_ORDERS_CLIEN' +
        'TS, a.TRUCK, a.WEIGHT,'
      
        '         a.COMPILED_NAME, a.great_name, a.great_name_f, a.ID_ORD' +
        'ERS_LIST, '
      '         a.zatirka, b.DIST_ID'
      ''
      '  ')
    MasterSource = SelOrderClients_DS
    MasterFields = 'ID_ORDERS_CLIENTS_'
    BeforeOpen = SelOrderListBeforeOpen
    BeforeRefresh = SelOrderListBeforeOpen
    Left = 168
    Top = 344
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_ORDERS_CLIENTS_'
        ParamType = ptInput
        Value = 155.000000000000000000
      end
      item
        DataType = ftUnknown
        Name = 'DIST_IND_ID'
      end>
    object SelOrderListID_ORDERS_LIST: TFloatField
      FieldName = 'ID_ORDERS_LIST'
      Required = True
    end
    object SelOrderListN_ID: TFloatField
      FieldName = 'N_ID'
      Required = True
    end
    object SelOrderListQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Required = True
    end
    object SelOrderListID_ORDERS_CLIENTS: TFloatField
      FieldName = 'ID_ORDERS_CLIENTS'
      Required = True
    end
    object SelOrderListTRUCK: TIntegerField
      FieldName = 'TRUCK'
    end
    object SelOrderListWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object SelOrderListCOMPILED_NAME: TStringField
      FieldName = 'COMPILED_NAME'
      Size = 299
    end
    object SelOrderListGREAT_NAME: TStringField
      FieldName = 'GREAT_NAME'
      Size = 350
    end
    object SelOrderListGREAT_NAME_F: TStringField
      FieldName = 'GREAT_NAME_F'
      Size = 401
    end
    object SelOrderListID_ORDERS_LIST_: TFloatField
      FieldName = 'ID_ORDERS_LIST_'
      Required = True
    end
    object SelOrderListZATIRKA: TIntegerField
      FieldName = 'ZATIRKA'
    end
    object SelOrderListDISTRIBUTED_NUMBER: TFloatField
      FieldName = 'DISTRIBUTED_NUMBER'
    end
    object SelOrderListDIST_ID: TFloatField
      FieldName = 'DIST_ID'
    end
  end
  object StorProc: TOraStoredProc
    Session = StarSess
    Left = 248
    Top = 168
  end
  object SelDistrInd: TOraQuery
    SQLDelete.Strings = (
      'begin'
      '  distribution_pkg.DELETE_DISTRIBUTION_INDEX(:dist_ind_id);'
      'end;')
    Session = StarSess
    SQL.Strings = (
      'begin'
      
        '  creator.DISTRIBUTION_PKG.GET_DISTR_INDEX(:ID_DEP_, :STARTDATE,' +
        ' :STOPDATE, :CURSOR_);'
      'end;')
    BeforeOpen = SelDistrIndBeforeOpen
    BeforeRefresh = SelDistrIndBeforeOpen
    Left = 192
    Top = 24
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEP_'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'STARTDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'STOPDATE'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object SelDistrIndDIST_IND_ID: TFloatField
      FieldName = 'DIST_IND_ID'
      Required = True
    end
    object SelDistrIndDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Required = True
      Size = 256
    end
    object SelDistrIndDIST_DATE: TDateTimeField
      FieldName = 'DIST_DATE'
      Required = True
    end
    object SelDistrIndREADY: TIntegerField
      FieldName = 'READY'
    end
    object SelDistrIndSTR_INV: TStringField
      FieldName = 'STR_INV'
      Size = 4000
    end
    object SelDistrIndDISTRIB_SEQ: TFloatField
      FieldName = 'DISTRIB_SEQ'
    end
    object SelDistrIndIS_SENDED: TDateTimeField
      FieldName = 'IS_SENDED'
    end
    object SelDistrIndSTR_ORDERS: TStringField
      FieldName = 'STR_ORDERS'
      Size = 4000
    end
  end
  object SelDistrInd_DS: TOraDataSource
    DataSet = SelDistrInd
    Left = 192
    Top = 72
  end
  object SelOrderClients: TOraQuery
    Session = StarSess
    SQL.Strings = (
      'begin'
      '  creator.DISTRIBUTION_PKG.GET_ORDER_LIST(:ID_ORDER_, :CURSOR_);'
      'end;')
    BeforeOpen = SelOrderClientsBeforeOpen
    BeforeRefresh = SelOrderClientsBeforeOpen
    Left = 64
    Top = 344
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_ORDER_'
        ParamType = ptInput
        Value = 17.000000000000000000
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object SelOrderClientsID_ORDERS_CLIENTS: TFloatField
      FieldName = 'ID_ORDERS_CLIENTS'
      Required = True
    end
    object SelOrderClientsID_ORDERS: TFloatField
      FieldName = 'ID_ORDERS'
      Required = True
    end
    object SelOrderClientsID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object SelOrderClientsN_TRUCK: TIntegerField
      FieldName = 'N_TRUCK'
      Required = True
    end
    object SelOrderClientsCAPACITY: TFloatField
      FieldName = 'CAPACITY'
      Required = True
    end
    object SelOrderClientsD_DATE: TDateTimeField
      FieldName = 'D_DATE'
      Required = True
    end
    object SelOrderClientsPACK_: TIntegerField
      FieldName = 'PACK_'
    end
    object SelOrderClientsALPHA: TStringField
      FieldName = 'ALPHA'
      Size = 2
    end
    object SelOrderClientsN_TYPE: TIntegerField
      FieldName = 'N_TYPE'
      Required = True
    end
    object SelOrderClientsSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object SelOrderClientsON_DATE: TDateTimeField
      FieldName = 'ON_DATE'
    end
    object SelOrderClientsNICK: TStringField
      FieldName = 'NICK'
      Required = True
      Size = 23
    end
    object SelOrderClientsFIO: TStringField
      FieldName = 'FIO'
      Required = True
      Size = 255
    end
    object SelOrderClientsID_ORDERS_CLIENTS_: TFloatField
      FieldName = 'ID_ORDERS_CLIENTS_'
      Required = True
    end
  end
  object SelOrderClients_DS: TOraDataSource
    DataSet = SelOrderClients
    Left = 64
    Top = 392
  end
  object SelOrderList_DS: TOraDataSource
    DataSet = SelOrderList
    Left = 168
    Top = 392
  end
  object SelPrepDist: TOraQuery
    SQLRefresh.Strings = (
      'SELECT'
      '  LEFT_QUANTITY'
      '  , case when INVOICE_DATA_ID is null then 0 else '
      '      (select sum(ol.QUANTITY)'
      '       from orders_list ol, orders_clients oc'
      
        '       where ol.ID_ORDERS_CLIENTS = oc.ID_ORDERS_CLIENTS and oc.' +
        'ID_ORDERS = :OrderID and ol.active=1 and oc.active=1 and ol.n_id' +
        ' = :N_ID                       '
      '      )'
      '  end allorder'
      'FROM PREP_DIST_VIEW'
      'WHERE PREP_DIST_ID = :OLD_PREP_DIST_ID')
    Session = StarSess
    SQL.Strings = (
      'begin'
      
        '  DISTRIBUTION_PKG.GET_PREP_DISTR(:DIST_IND_ID_, :vClient, :CURS' +
        'OR_);'
      'end;')
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = SelPrepDistBeforeOpen
    BeforeRefresh = SelPrepDistBeforeOpen
    Left = 104
    Top = 24
    ParamData = <
      item
        DataType = ftFloat
        Name = 'DIST_IND_ID_'
        ParamType = ptInput
        Value = 61.000000000000000000
      end
      item
        DataType = ftUnknown
        Name = 'vClient'
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object SelPrepDistPREP_DIST_ID: TFloatField
      FieldName = 'PREP_DIST_ID'
      Required = True
    end
    object SelPrepDistDIST_IND_ID: TFloatField
      FieldName = 'DIST_IND_ID'
      Required = True
    end
    object SelPrepDistN_ID: TFloatField
      FieldName = 'N_ID'
      Required = True
    end
    object SelPrepDistINVOICE_DATA_ID: TFloatField
      FieldName = 'INVOICE_DATA_ID'
    end
    object SelPrepDistID_STORE_MAIN: TFloatField
      FieldName = 'ID_STORE_MAIN'
    end
    object SelPrepDistTOTAL_QUANTITY: TFloatField
      FieldName = 'TOTAL_QUANTITY'
      Required = True
    end
    object SelPrepDistLEFT_QUANTITY: TFloatField
      FieldName = 'LEFT_QUANTITY'
      Required = True
    end
    object SelPrepDistCOMPILED_NAME: TStringField
      FieldName = 'COMPILED_NAME'
      Size = 299
    end
    object SelPrepDistCOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 350
    end
    object SelPrepDistFT_ID: TFloatField
      FieldName = 'FT_ID'
      Required = True
    end
    object SelPrepDistFST_ID: TFloatField
      FieldName = 'FST_ID'
      Required = True
    end
    object SelPrepDistWHERE_FLOWER_IS: TStringField
      FieldName = 'WHERE_FLOWER_IS'
      Size = 6
    end
    object SelPrepDistNBUTTON: TFloatField
      FieldName = 'NBUTTON'
    end
    object SelPrepDistHOL_SUB_TYPE: TStringField
      FieldName = 'HOL_SUB_TYPE'
      Size = 50
    end
    object SelPrepDistF_NAME_RU: TStringField
      FieldName = 'F_NAME_RU'
      Required = True
      Size = 256
    end
    object SelPrepDistSTOCK: TFloatField
      FieldName = 'STOCK'
    end
    object SelPrepDistALLORDER: TFloatField
      FieldName = 'ALLORDER'
    end
    object SelPrepDistHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
      Size = 23
    end
    object SelPrepDistF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Required = True
      Size = 50
    end
    object SelPrepDistORDERID: TFloatField
      FieldName = 'ORDERID'
    end
    object SelPrepDistSALDO: TStringField
      FieldName = 'SALDO'
      Size = 83
    end
    object SelPrepDistITOG_PRICE: TFloatField
      FieldName = 'ITOG_PRICE'
    end
  end
  object SelPrepDist_DS: TOraDataSource
    DataSet = SelPrepDist
    Left = 104
    Top = 72
  end
  object SelOrderDistribution: TOraQuery
    Session = StarSess
    SQL.Strings = (
      'SELECT '
      '  DV.*,'
      '  DECODE(INVOICE_DATA_ID,'
      '         NULL, '#39#1089#1090#1086#1082#39','
      '         '#39#1080#1085#1074#1086#1081#1089#39') AS WHERE_FLOWER_IS'
      'FROM DISTRIBUTION_VIEW DV'
      'WHERE '
      '  ID_ORDERS_LIST = :ID_ORDERS_LIST_ AND'
      '  DIST_IND_ID = :DIST_IND_ID')
    MasterSource = SelOrderList_DS
    MasterFields = 'ID_ORDERS_LIST_'
    BeforeOpen = SelOrderDistributionBeforeOpen
    BeforeRefresh = SelOrderDistributionBeforeOpen
    Left = 272
    Top = 344
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_ORDERS_LIST_'
        ParamType = ptInput
        Value = 1160.000000000000000000
      end
      item
        DataType = ftUnknown
        Name = 'DIST_IND_ID'
      end>
    object SelOrderDistributionDIST_IND_ID: TFloatField
      FieldName = 'DIST_IND_ID'
      Required = True
    end
    object SelOrderDistributionDIST_ID: TFloatField
      FieldName = 'DIST_ID'
      Required = True
    end
    object SelOrderDistributionD_N_ID: TFloatField
      FieldName = 'D_N_ID'
      Required = True
    end
    object SelOrderDistributionDQ: TFloatField
      FieldName = 'DQ'
      Required = True
    end
    object SelOrderDistributionOQ: TIntegerField
      FieldName = 'OQ'
    end
    object SelOrderDistributionO_N_ID: TFloatField
      FieldName = 'O_N_ID'
    end
    object SelOrderDistributionPREP_DIST_ID: TFloatField
      FieldName = 'PREP_DIST_ID'
      Required = True
    end
    object SelOrderDistributionID_ORDERS_LIST: TFloatField
      FieldName = 'ID_ORDERS_LIST'
      Required = True
    end
    object SelOrderDistributionGREAT_NAME: TStringField
      FieldName = 'GREAT_NAME'
      Size = 4000
    end
    object SelOrderDistributionINVOICE_DATA_ID: TFloatField
      FieldName = 'INVOICE_DATA_ID'
    end
    object SelOrderDistributionID_STORE_MAIN: TFloatField
      FieldName = 'ID_STORE_MAIN'
    end
    object SelOrderDistributionID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
    end
    object SelOrderDistributionID_ORDERS: TFloatField
      FieldName = 'ID_ORDERS'
    end
    object SelOrderDistributionINVOICE_DATA_AS_IS_ID: TFloatField
      FieldName = 'INVOICE_DATA_AS_IS_ID'
    end
    object SelOrderDistributionORDER_MARKNAME: TStringField
      FieldName = 'ORDER_MARKNAME'
      Size = 30
    end
    object SelOrderDistributionPACKING_MARKS: TStringField
      FieldName = 'PACKING_MARKS'
      Size = 30
    end
    object SelOrderDistributionWHERE_FLOWER_IS: TStringField
      FieldName = 'WHERE_FLOWER_IS'
      Size = 6
    end
    object SelOrderDistributionGREAT_NAME_F: TStringField
      FieldName = 'GREAT_NAME_F'
      Size = 401
    end
  end
  object SelOrderDistribution_DS: TOraDataSource
    DataSet = SelOrderDistribution
    Left = 272
    Top = 392
  end
  object SelClients: TOraQuery
    Session = StarSess
    SQL.Strings = (
      'SELECT distinct ID_CLIENTS, FIO, NICK '
      'FROM ORDERS_CLIENTS_VIEW'
      'WHERE ID_ORDERS=:ID_ORDERS')
    BeforeOpen = SelClientsBeforeOpen
    Left = 336
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_ORDERS'
      end>
    object SelClientsID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object SelClientsFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object SelClientsNICK: TStringField
      FieldName = 'NICK'
    end
  end
  object SelDistribution: TOraQuery
    Session = StarSess
    SQL.Strings = (
      'SELECT '
      '  DISTRIBUTION_VIEW.*,'
      '  DECODE(INVOICE_DATA_ID,'
      '         NULL, '#39#1057#1090#1086#1082#39','
      '         '#39#1048#1085#1074#1086#1081#1089#39') AS WHERE_FLOWER_IS'
      ''
      'FROM '
      '  DISTRIBUTION_VIEW'
      'WHERE '
      '  ID_CLIENTS = :ID_CLIENTS'
      'ORDER BY'
      '  ORDER_MARKNAME,PACKING_MARKS')
    MasterSource = SelClients_DS
    Left = 248
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_CLIENTS'
      end>
    object SelDistributionDIST_IND_ID: TFloatField
      FieldName = 'DIST_IND_ID'
      Required = True
    end
    object SelDistributionDIST_ID: TFloatField
      FieldName = 'DIST_ID'
      Required = True
    end
    object SelDistributionD_N_ID: TFloatField
      FieldName = 'D_N_ID'
      Required = True
    end
    object SelDistributionDQ: TFloatField
      FieldName = 'DQ'
      Required = True
    end
    object SelDistributionOQ: TIntegerField
      FieldName = 'OQ'
    end
    object SelDistributionO_N_ID: TFloatField
      FieldName = 'O_N_ID'
    end
    object SelDistributionPREP_DIST_ID: TFloatField
      FieldName = 'PREP_DIST_ID'
      Required = True
    end
    object SelDistributionID_ORDERS_LIST: TFloatField
      FieldName = 'ID_ORDERS_LIST'
      Required = True
    end
    object SelDistributionGREAT_NAME: TStringField
      FieldName = 'GREAT_NAME'
      Size = 148
    end
    object SelDistributionINVOICE_DATA_ID: TFloatField
      FieldName = 'INVOICE_DATA_ID'
    end
    object SelDistributionID_STORE_MAIN: TFloatField
      FieldName = 'ID_STORE_MAIN'
    end
    object SelDistributionID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
    end
    object SelDistributionID_ORDERS: TFloatField
      FieldName = 'ID_ORDERS'
    end
    object SelDistributionINVOICE_DATA_AS_IS_ID: TFloatField
      FieldName = 'INVOICE_DATA_AS_IS_ID'
    end
    object SelDistributionORDER_MARKNAME: TStringField
      FieldName = 'ORDER_MARKNAME'
      Size = 30
    end
    object SelDistributionPACKING_MARKS: TStringField
      FieldName = 'PACKING_MARKS'
      Size = 30
    end
    object SelDistributionWHERE_FLOWER_IS: TStringField
      FieldName = 'WHERE_FLOWER_IS'
      Size = 6
    end
    object SelDistributionGREAT_NAME_F: TStringField
      FieldName = 'GREAT_NAME_F'
      Size = 372
    end
    object SelDistributionCOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 350
    end
    object SelDistributionHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
    end
    object SelDistributionF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Required = True
      Size = 50
    end
    object SelDistributionORD: TFloatField
      FieldName = 'ORD'
    end
    object SelDistributionFT_ID: TFloatField
      FieldName = 'FT_ID'
      Required = True
    end
  end
  object SelClients_DS: TOraDataSource
    DataSet = SelClients
    Left = 336
    Top = 224
  end
  object CDS_GOODS: TOraQuery
    SQLRefresh.Strings = (
      'select'
      '  (select nvl(SUM(c.DQ),0) from DISTRIBUTION_VIEW c '
      '     where c.DIST_IND_ID = :DIST_IND_ID and c.o_n_id = :n_id '
      '  ) as DISTRIBUTED_NUMBER,'
      '  (select case when SUM(c.DQ) is null then null else'
      
        '          case when max(c.INVOICE_DATA_ID) is NULL then '#39#1057#1090#1086#1082#39' e' +
        'lse '#39#1048#1085#1074#1086#1081#1089#39'end end'
      
        '          from DISTRIBUTION_VIEW c where c.DIST_IND_ID = :DIST_I' +
        'ND_ID and c.o_n_id = :n_id '
      '  ) as WHERE_FLOWER_IS'
      'from dual')
    Session = StarSess
    SQL.Strings = (
      'begin'
      
        '  creator.DISTRIBUTION_PKG.GET_GOODS(:DIST_IND_ID_, :vClient, :C' +
        'URSOR_);'
      'end;')
    BeforeOpen = CDS_GOODSBeforeOpen
    BeforeRefresh = CDS_GOODSBeforeOpen
    Left = 408
    Top = 24
    ParamData = <
      item
        DataType = ftFloat
        Name = 'DIST_IND_ID_'
        ParamType = ptInput
        Value = 18.000000000000000000
      end
      item
        DataType = ftUnknown
        Name = 'vClient'
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object CDS_GOODSDIST_IND_ID: TFloatField
      FieldName = 'DIST_IND_ID'
    end
    object CDS_GOODSN_ID: TFloatField
      FieldName = 'N_ID'
    end
    object CDS_GOODSN_ID_: TFloatField
      FieldName = 'N_ID_'
    end
    object CDS_GOODSQUANTITY: TFloatField
      FieldName = 'QUANTITY'
    end
    object CDS_GOODSQQ: TFloatField
      FieldName = 'QQ'
    end
    object CDS_GOODSCOMPILED_NAME: TStringField
      FieldName = 'COMPILED_NAME'
      Size = 299
    end
    object CDS_GOODSCOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 551
    end
    object CDS_GOODSF_NAME_RU: TStringField
      FieldName = 'F_NAME_RU'
      Size = 256
    end
    object CDS_GOODSFT_ID: TFloatField
      FieldName = 'FT_ID'
    end
    object CDS_GOODSZATIRKA: TIntegerField
      FieldName = 'ZATIRKA'
    end
    object CDS_GOODSHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
      Size = 23
    end
    object CDS_GOODSF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Size = 50
    end
    object CDS_GOODSF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Size = 50
    end
    object CDS_GOODSDISTRIBUTED_NUMBER: TFloatField
      FieldName = 'DISTRIBUTED_NUMBER'
    end
    object CDS_GOODSWHERE_FLOWER_IS: TStringField
      FieldName = 'WHERE_FLOWER_IS'
      Size = 6
    end
    object CDS_GOODSNBUTTON: TFloatField
      FieldName = 'NBUTTON'
    end
  end
  object DS_GOODS: TOraDataSource
    DataSet = CDS_GOODS
    Left = 408
    Top = 72
  end
  object CDS_ORDER_NID: TOraQuery
    SQLUpdate.Strings = (
      'select 1 from dual')
    Session = StarSess
    SQL.Strings = (
      'begin'
      
        '  creator.DISTRIBUTION_PKG.GET_ORDER_LIST_NID(:N_ID_, :DIST_IND_' +
        'ID_, :CURSOR_);'
      'end;')
    MasterSource = DS_GOODS
    MasterFields = 'n_id_'
    BeforeOpen = CDS_ORDER_NIDBeforeOpen
    AfterPost = CDS_ORDER_NIDAfterPost
    BeforeRefresh = CDS_ORDER_NIDBeforeOpen
    Left = 304
    Top = 24
    ParamData = <
      item
        DataType = ftFloat
        Name = 'N_ID_'
        ParamType = ptInput
        Value = 0.000000000000000000
      end
      item
        DataType = ftFloat
        Name = 'DIST_IND_ID_'
        ParamType = ptInput
        Value = 23.000000000000000000
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object CDS_ORDER_NIDID_ORDERS_CLIENTS: TFloatField
      FieldName = 'ID_ORDERS_CLIENTS'
    end
    object CDS_ORDER_NIDID_ORDERS: TFloatField
      FieldName = 'ID_ORDERS'
    end
    object CDS_ORDER_NIDID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
    end
    object CDS_ORDER_NIDN_TRUCK: TIntegerField
      FieldName = 'N_TRUCK'
    end
    object CDS_ORDER_NIDCAPACITY: TFloatField
      FieldName = 'CAPACITY'
    end
    object CDS_ORDER_NIDD_DATE: TDateTimeField
      FieldName = 'D_DATE'
    end
    object CDS_ORDER_NIDPACK_: TIntegerField
      FieldName = 'PACK_'
    end
    object CDS_ORDER_NIDALPHA: TStringField
      FieldName = 'ALPHA'
      Size = 2
    end
    object CDS_ORDER_NIDN_TYPE: TIntegerField
      FieldName = 'N_TYPE'
    end
    object CDS_ORDER_NIDSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object CDS_ORDER_NIDON_DATE: TDateTimeField
      FieldName = 'ON_DATE'
    end
    object CDS_ORDER_NIDNICK: TStringField
      FieldName = 'NICK'
      Size = 23
    end
    object CDS_ORDER_NIDFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object CDS_ORDER_NIDID_ORDERS_CLIENTS_: TFloatField
      FieldName = 'ID_ORDERS_CLIENTS_'
    end
    object CDS_ORDER_NIDN_ID: TFloatField
      FieldName = 'N_ID'
    end
    object CDS_ORDER_NIDQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object CDS_ORDER_NIDZATIRKA: TIntegerField
      FieldName = 'ZATIRKA'
    end
    object CDS_ORDER_NIDID_ORDERS_LIST: TFloatField
      FieldName = 'ID_ORDERS_LIST'
    end
    object CDS_ORDER_NIDFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Size = 515
    end
    object CDS_ORDER_NIDGREAT_NAME: TStringField
      FieldName = 'GREAT_NAME'
      Size = 350
    end
    object CDS_ORDER_NIDGREAT_NAME_F: TStringField
      FieldName = 'GREAT_NAME_F'
      Size = 372
    end
    object CDS_ORDER_NIDCOMPILED_NAME_OTDEL_ORD: TStringField
      FieldName = 'COMPILED_NAME_OTDEL_ORD'
      Size = 451
    end
    object CDS_ORDER_NIDIS_STOCK: TFloatField
      FieldName = 'IS_STOCK'
    end
    object CDS_ORDER_NIDDQ: TFloatField
      FieldName = 'DQ'
    end
    object CDS_ORDER_NIDDQ_CHECK: TFloatField
      FieldName = 'DQ_CHECK'
    end
    object CDS_ORDER_NIDGREAT_NAME2: TStringField
      FieldName = 'GREAT_NAME2'
      Size = 350
    end
    object CDS_ORDER_NIDGREAT_NAME_F2: TStringField
      FieldName = 'GREAT_NAME_F2'
      Size = 372
    end
    object CDS_ORDER_NIDDIST_ID: TFloatField
      FieldName = 'DIST_ID'
    end
    object CDS_ORDER_NIDCOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 451
    end
    object CDS_ORDER_NIDDISTRIBUTED_NUMBER: TFloatField
      FieldName = 'DISTRIBUTED_NUMBER'
    end
    object CDS_ORDER_NIDPREP_DIST_ID: TFloatField
      FieldName = 'PREP_DIST_ID'
    end
    object CDS_ORDER_NIDD_N_ID: TFloatField
      FieldName = 'D_N_ID'
    end
    object CDS_ORDER_NIDPRIORITY: TIntegerField
      FieldName = 'PRIORITY'
    end
  end
  object DS_ORDER_NID: TOraDataSource
    DataSet = CDS_ORDER_NID
    Left = 304
    Top = 72
  end
  object SelQ2: TOraQuery
    Session = StarSess
    Left = 24
    Top = 184
  end
  object srMain: TcxStyleRepository
    Left = 424
    Top = 152
    PixelsPerInch = 96
    object stEditColor: TcxStyle
      AssignedValues = [svColor]
      Color = 13565951
    end
    object stViewColor: TcxStyle
      AssignedValues = [svColor]
      Color = 15658734
    end
  end
end
