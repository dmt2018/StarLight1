object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 473
  Width = 824
  object sale_session: TOraSession
    Options.Charset = 'CL8MSWIN1251'
    Options.Direct = True
    Username = 'CREATOR'
    Password = '123456'
    Server = 'KLEPOV:1521:STARNEW'
    AutoCommit = False
    AfterConnect = sale_sessionAfterConnect
    Left = 32
    Top = 16
  end
  object Q_CLIENTS: TOraQuery
    Session = sale_session
    SQL.Strings = (
      'SELECT C.ID_CLIENTS, C.NICK, C.FIO, C.CCODE,'
      '    C.TTYPE, C.ID_CLIENTS_GROUPS, C.BLOCK1, C.BLOCK2'
      ', c.GROUP_NAME, c.TTYPE_NAME, c.PREFIX'
      '    FROM CLIENTS_VIEW2 C '
      ' where id_office = :v_office'
      ' ORDER BY C.FIO')
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
    object Q_CLIENTSTTYPE_NAME: TStringField
      FieldName = 'TTYPE_NAME'
      Required = True
      Size = 50
    end
    object Q_CLIENTSPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 5
    end
  end
  object Q_CLIENTS_DS: TOraDataSource
    DataSet = Q_CLIENTS
    Left = 120
    Top = 72
  end
  object SelQ: TOraQuery
    Session = sale_session
    SQL.Strings = (
      'SELECT C.ID_CLIENTS, C.NICK, C.FIO, C.CCODE,'
      '    C.TTYPE, C.ID_CLIENTS_GROUPS, C.BLOCK1, C.BLOCK2'
      '    FROM CLIENTS C WHERE (C.ACTIVE=1 or C.active is NULL)'
      ' ORDER BY C.NICK')
    FetchAll = True
    AutoCommit = False
    FilterOptions = [foCaseInsensitive]
    Left = 32
    Top = 80
  end
  object CDS_MSTORE: TOraQuery
    SQLUpdate.Strings = (
      'declare pp number(10,2);'
      'begin'
      'if (:N_ID > 0) then'
      '  if :price_percent=0 or :price_percent is NULL THEN '
      '    :PRICE := :PRICE;'
      '  else'
      
        '    :PRICE := :price_list + round((:price_list * :price_percent ' +
        '/ 100),2);'
      '  end if; '
      
        '  select price into pp from price_list where n_id = :N_ID and id' +
        '_office=const_office;'
      ''
      '  if :SPEC_PRICE = 1 then'
      '    :PRICE := pp;'
      '    :price_percent := NULL;'
      '  end if;'
      ''
      '  delete from STORE_DOC_DATA_TEMP where n_id = :n_id;'
      
        '  if (:QUANTITY is not null and :QUANTITY <> 0 and :PRICE <> 0 a' +
        'nd pp <> 0) then'
      
        '    INSERT INTO STORE_DOC_DATA_TEMP (ID_DOC_DATA, N_ID, QUANTITY' +
        ', store_type, PRICE, PRICE_LIST) '
      
        '    VALUES (STORE_DOC_DATA_TEMP_SET_ID.NEXTVAL, :N_ID, :QUANTITY' +
        ', :STORE_TYPE, :PRICE, pp)'
      '    RETURNING ID_DOC_DATA INTO :added;'
      '  end if;'
      'end if;'
      'end;')
    SQLRefresh.Strings = (
      
        'select a.QUANTITY, a.price_list, a.QUANTITY_NOW, a.added, a.pric' +
        'e_percent '
      
        ' , case WHEN a.added = 0 or a.added is null THEN (a.price_list +' +
        ' round((a.price_list * a.price_percent / 100),2)) ELSE price END' +
        ' price'
      
        ' , case WHEN a.added = 0 or a.added is null THEN (a.price_list +' +
        ' round((a.price_list * a.price_percent / 100),2)) * QUANTITY ELS' +
        'E QUANTITY_PRICE END QUANTITY_PRICE'
      'from ('
      '  select a.QUANTITY, a.QUANTITY_PRICE'
      
        '    , CASE WHEN a.STORE_TYPE=1 THEN nvl(s.SPEC_PRICE, a.PRICE_LI' +
        'ST) ELSE a.PRICE_LIST END price_list'
      
        '    , CASE WHEN a.STORE_TYPE=1 THEN nvl(s.SPEC_PRICE, a.PRICE) E' +
        'LSE a.PRICE END price'
      
        '    , a.QUANTITY_NOW, a.added, round(a.price_percent,1) as price' +
        '_percent'
      '  from store_docdatatemp_view a'
      
        '  left outer join ppl_client_price_current s on s.n_id = a.n_id ' +
        'and s.ID_CLIENTS = :cur_client'
      
        '  WHERE a.STORE_TYPE = :STORE_TYPE and a.N_ID = :N_ID and id_off' +
        'ice = const_office'
      ') a')
    Session = sale_session
    SQL.Strings = (
      'begin'
      
        '  sales_pkg.get_sklad(:STORE_, :ID_DEP_, :PRICE_PART_, :BUTTON_,' +
        ' :QUANTITY_, :V_OFFICE, :V_CLIENT, :CURSOR_);'
      'end;')
    FetchAll = True
    AutoCommit = False
    RefreshOptions = [roAfterUpdate]
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = CDS_MSTOREBeforeOpen
    BeforeRefresh = CDS_MSTOREBeforeOpen
    Left = 248
    Top = 64
    ParamData = <
      item
        DataType = ftFloat
        Name = 'STORE_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ID_DEP_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRICE_PART_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUTTON_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QUANTITY_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'V_OFFICE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'V_CLIENT'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptInputOutput
        Value = 'Object'
      end>
    object CDS_MSTOREN_ID: TFloatField
      FieldName = 'N_ID'
    end
    object CDS_MSTORECODE: TStringField
      FieldName = 'CODE'
      Size = 40
    end
    object CDS_MSTOREH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 50
    end
    object CDS_MSTOREF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Size = 50
    end
    object CDS_MSTOREF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Size = 50
    end
    object CDS_MSTOREFT_ID: TFloatField
      FieldName = 'FT_ID'
    end
    object CDS_MSTOREFST_ID: TFloatField
      FieldName = 'FST_ID'
    end
    object CDS_MSTOREFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Size = 372
    end
    object CDS_MSTORESPESIFICATION: TStringField
      FieldName = 'SPESIFICATION'
      Size = 4000
    end
    object CDS_MSTOREQUANTITY_NOW: TFloatField
      FieldName = 'QUANTITY_NOW'
    end
    object CDS_MSTORESTORE_TYPE_NAME: TStringField
      FieldName = 'STORE_TYPE_NAME'
      Size = 30
    end
    object CDS_MSTORESTORE_TYPE: TFloatField
      FieldName = 'STORE_TYPE'
    end
    object CDS_MSTOREHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
    end
    object CDS_MSTOREHOL_SUB_TYPE: TStringField
      FieldName = 'HOL_SUB_TYPE'
      Size = 50
    end
    object CDS_MSTOREPRICE_LIST: TFloatField
      FieldName = 'PRICE_LIST'
    end
    object CDS_MSTOREQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object CDS_MSTOREADDED: TFloatField
      FieldName = 'ADDED'
    end
    object CDS_MSTOREID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
    end
    object CDS_MSTORECOLOUR: TStringField
      FieldName = 'COLOUR'
      Size = 50
    end
    object CDS_MSTORECOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
    object CDS_MSTORERESERV: TFloatField
      FieldName = 'RESERV'
    end
    object CDS_MSTOREPRICE_DIFFERENCE: TFloatField
      FieldName = 'PRICE_DIFFERENCE'
    end
    object CDS_MSTORESUM_PRICE_DIFFERENCE: TFloatField
      FieldName = 'SUM_PRICE_DIFFERENCE'
    end
    object CDS_MSTOREPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object CDS_MSTOREQUANTITY_PRICE: TFloatField
      FieldName = 'QUANTITY_PRICE'
    end
    object CDS_MSTOREPRICE_PERCENT: TFloatField
      FieldName = 'PRICE_PERCENT'
    end
    object CDS_MSTORENBUTTON: TFloatField
      FieldName = 'NBUTTON'
    end
    object CDS_MSTOREBUT_NAME: TStringField
      FieldName = 'BUT_NAME'
      FixedChar = True
      Size = 3
    end
    object CDS_MSTOREOUR_CODE: TStringField
      FieldName = 'OUR_CODE'
      Size = 40
    end
    object CDS_MSTOREIS_PHOTO: TFloatField
      FieldName = 'IS_PHOTO'
    end
    object CDS_MSTOREPHOTO: TStringField
      FieldName = 'PHOTO'
      Size = 30
    end
    object CDS_MSTORECOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 350
    end
    object CDS_MSTOREID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object CDS_MSTOREBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object CDS_MSTORENOTUSE: TIntegerField
      FieldName = 'NOTUSE'
    end
    object CDS_MSTORECUR_CLIENT: TFloatField
      FieldName = 'CUR_CLIENT'
    end
    object CDS_MSTORESPEC_PRICE: TIntegerField
      FieldName = 'SPEC_PRICE'
    end
  end
  object DS_MSTORE: TOraDataSource
    DataSet = CDS_MSTORE
    Left = 248
    Top = 120
  end
  object CDS_USTORE: TOraQuery
    SQLUpdate.Strings = (
      'declare pp number(10,2);'
      'begin'
      'if (:N_ID > 0) then'
      '  if :price_percent=0 or :price_percent is NULL THEN '
      '    :PRICE := :PRICE;'
      '  else'
      
        '    :PRICE := :price_list + round((:price_list * :price_percent ' +
        '/ 100),2);'
      '  end if; '
      
        '  select price into pp from price_list where n_id = :N_ID and id' +
        '_office=const_office;'
      ''
      '  delete from STORE_DOC_DATA_TEMP where n_id = :n_id;'
      '  if (:QUANTITY <> 0 and :PRICE <> 0 and pp <> 0) then'
      
        '    INSERT INTO STORE_DOC_DATA_TEMP (ID_DOC_DATA, N_ID, QUANTITY' +
        ', store_type, PRICE, PRICE_LIST) '
      
        '    VALUES (STORE_DOC_DATA_TEMP_SET_ID.NEXTVAL, :N_ID, :QUANTITY' +
        ', :STORE_TYPE, :PRICE, pp)'
      '    RETURNING ID_DOC_DATA INTO :added;'
      '  end if;'
      'end if;'
      'end;')
    SQLRefresh.Strings = (
      
        'select a.QUANTITY, a.PRICE_LIST, a.QUANTITY_NOW, a.added, round(' +
        'a.price_percent,1) as price_percent,'
      
        'case WHEN a.added = 0 or a.added is null THEN (a.price_list + ro' +
        'und((a.price_list * a.price_percent / 100),2)) ELSE price END pr' +
        'ice,'
      
        'case WHEN a.added = 0 or a.added is null THEN (a.price_list + ro' +
        'und((a.price_list * a.price_percent / 100),2)) * QUANTITY ELSE Q' +
        'UANTITY_PRICE END QUANTITY_PRICE'
      'from store_docdatatemp_view a'
      
        'WHERE a.STORE_TYPE = :STORE_TYPE and a.N_ID = :N_ID and id_offic' +
        'e = const_office')
    Session = sale_session
    SQL.Strings = (
      'begin'
      
        '  sales_pkg.get_sklad(:STORE_, :ID_DEP_, :PRICE_PART_, :BUTTON_,' +
        ' :QUANTITY_, :V_OFFICE, :V_CLIENT, :CURSOR_);'
      'end;')
    FetchAll = True
    AutoCommit = False
    RefreshOptions = [roAfterUpdate]
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = CDS_USTOREBeforeOpen
    BeforeRefresh = CDS_USTOREBeforeOpen
    Left = 336
    Top = 64
    ParamData = <
      item
        DataType = ftFloat
        Name = 'STORE_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ID_DEP_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRICE_PART_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUTTON_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QUANTITY_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'V_OFFICE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'V_CLIENT'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptInputOutput
        Value = 'Object'
      end>
    object CDS_USTOREN_ID: TFloatField
      FieldName = 'N_ID'
    end
    object CDS_USTORECODE: TStringField
      FieldName = 'CODE'
      Size = 40
    end
    object CDS_USTOREH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 50
    end
    object CDS_USTOREF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Size = 50
    end
    object CDS_USTOREF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Size = 50
    end
    object CDS_USTOREFT_ID: TFloatField
      FieldName = 'FT_ID'
    end
    object CDS_USTOREFST_ID: TFloatField
      FieldName = 'FST_ID'
    end
    object CDS_USTOREFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Size = 372
    end
    object CDS_USTORESPESIFICATION: TStringField
      FieldName = 'SPESIFICATION'
      Size = 4000
    end
    object CDS_USTOREQUANTITY_NOW: TFloatField
      FieldName = 'QUANTITY_NOW'
    end
    object CDS_USTORESTORE_TYPE_NAME: TStringField
      FieldName = 'STORE_TYPE_NAME'
      Size = 30
    end
    object CDS_USTORESTORE_TYPE: TFloatField
      FieldName = 'STORE_TYPE'
    end
    object CDS_USTOREHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
    end
    object CDS_USTOREHOL_SUB_TYPE: TStringField
      FieldName = 'HOL_SUB_TYPE'
      Size = 50
    end
    object CDS_USTOREPRICE_LIST: TFloatField
      FieldName = 'PRICE_LIST'
    end
    object CDS_USTOREQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object CDS_USTOREADDED: TFloatField
      FieldName = 'ADDED'
    end
    object CDS_USTOREID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
    end
    object CDS_USTORECOLOUR: TStringField
      FieldName = 'COLOUR'
      Size = 50
    end
    object CDS_USTORECOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
    object CDS_USTORERESERV: TFloatField
      FieldName = 'RESERV'
    end
    object CDS_USTOREPRICE_DIFFERENCE: TFloatField
      FieldName = 'PRICE_DIFFERENCE'
    end
    object CDS_USTORESUM_PRICE_DIFFERENCE: TFloatField
      FieldName = 'SUM_PRICE_DIFFERENCE'
    end
    object CDS_USTOREPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object CDS_USTOREQUANTITY_PRICE: TFloatField
      FieldName = 'QUANTITY_PRICE'
    end
    object CDS_USTOREPRICE_PERCENT: TFloatField
      FieldName = 'PRICE_PERCENT'
    end
    object CDS_USTORENBUTTON: TFloatField
      FieldName = 'NBUTTON'
    end
    object CDS_USTOREBUT_NAME: TStringField
      FieldName = 'BUT_NAME'
      FixedChar = True
      Size = 3
    end
    object CDS_USTOREOUR_CODE: TStringField
      FieldName = 'OUR_CODE'
      Size = 40
    end
    object CDS_USTOREIS_PHOTO: TFloatField
      FieldName = 'IS_PHOTO'
    end
    object CDS_USTOREPHOTO: TStringField
      FieldName = 'PHOTO'
      Size = 30
    end
    object CDS_USTORECOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 350
    end
    object CDS_USTOREID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object CDS_USTOREBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object CDS_USTORENOTUSE: TIntegerField
      FieldName = 'NOTUSE'
    end
    object CDS_USTORECUR_CLIENT: TFloatField
      FieldName = 'CUR_CLIENT'
    end
    object CDS_USTORESPEC_PRICE: TIntegerField
      FieldName = 'SPEC_PRICE'
    end
  end
  object DS_USTORE: TOraDataSource
    DataSet = CDS_USTORE
    Left = 336
    Top = 120
  end
  object CDS_NULLSTORE: TOraQuery
    SQLUpdate.Strings = (
      'declare pp number(10,2);'
      'begin'
      'if (:N_ID > 0) then'
      '  if :price_percent=0 or :price_percent is NULL THEN '
      '    :PRICE := :PRICE;'
      '  else'
      
        '    :PRICE := :price_list + round((:price_list * :price_percent ' +
        '/ 100),2);'
      '  end if; '
      
        '  select price into pp from price_list where n_id = :N_ID and id' +
        '_office=const_office;'
      ''
      '  if :SPEC_PRICE = 1 then'
      '    :PRICE := pp;'
      '    :price_percent := NULL;'
      '  end if;'
      ''
      '  delete from STORE_DOC_DATA_TEMP where n_id = :n_id;'
      '  if (:QUANTITY <> 0 and :PRICE <> 0 and :price_list <> 0) then'
      
        '    INSERT INTO STORE_DOC_DATA_TEMP (ID_DOC_DATA, N_ID, QUANTITY' +
        ', store_type, PRICE, PRICE_LIST) '
      
        '    VALUES (STORE_DOC_DATA_TEMP_SET_ID.NEXTVAL, :N_ID, :QUANTITY' +
        ', :STORE_TYPE, :PRICE, pp)'
      '    RETURNING ID_DOC_DATA INTO :added;'
      '  end if;'
      'end if;'
      'end;')
    SQLRefresh.Strings = (
      
        'select a.QUANTITY, a.PRICE_LIST, a.QUANTITY_NOW, a.added, round(' +
        'a.price_percent,1) as price_percent,'
      
        'case WHEN a.added = 0 or a.added is null THEN (a.price_list + ro' +
        'und((a.price_list * a.price_percent / 100),2)) ELSE price END pr' +
        'ice,'
      
        'case WHEN a.added = 0 or a.added is null THEN (a.price_list + ro' +
        'und((a.price_list * a.price_percent / 100),2)) * QUANTITY ELSE Q' +
        'UANTITY_PRICE END QUANTITY_PRICE'
      'from store_docdatatemp_view a'
      
        'WHERE a.STORE_TYPE = :STORE_TYPE and a.N_ID = :N_ID and id_offic' +
        'e = const_office')
    Session = sale_session
    SQL.Strings = (
      'begin'
      
        '  sales_pkg.get_sklad(:STORE_, :ID_DEP_, :PRICE_PART_, :BUTTON_,' +
        ' :QUANTITY_, :V_OFFICE, :V_CLIENT, :CURSOR_);'
      'end;')
    FetchAll = True
    AutoCommit = False
    RefreshOptions = [roAfterUpdate]
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = CDS_NULLSTOREBeforeOpen
    BeforeRefresh = CDS_NULLSTOREBeforeOpen
    Left = 424
    Top = 64
    ParamData = <
      item
        DataType = ftFloat
        Name = 'STORE_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ID_DEP_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRICE_PART_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BUTTON_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QUANTITY_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'V_OFFICE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'V_CLIENT'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptInputOutput
        Value = 'Object'
      end>
    object CDS_NULLSTOREN_ID: TFloatField
      FieldName = 'N_ID'
    end
    object CDS_NULLSTORECODE: TStringField
      FieldName = 'CODE'
      Size = 40
    end
    object CDS_NULLSTOREH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 50
    end
    object CDS_NULLSTOREF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Size = 50
    end
    object CDS_NULLSTOREF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Size = 50
    end
    object CDS_NULLSTOREFT_ID: TFloatField
      FieldName = 'FT_ID'
    end
    object CDS_NULLSTOREFST_ID: TFloatField
      FieldName = 'FST_ID'
    end
    object CDS_NULLSTOREFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Size = 372
    end
    object CDS_NULLSTORESPESIFICATION: TStringField
      FieldName = 'SPESIFICATION'
      Size = 4000
    end
    object CDS_NULLSTOREQUANTITY_NOW: TFloatField
      FieldName = 'QUANTITY_NOW'
    end
    object CDS_NULLSTORESTORE_TYPE_NAME: TStringField
      FieldName = 'STORE_TYPE_NAME'
      Size = 30
    end
    object CDS_NULLSTORESTORE_TYPE: TFloatField
      FieldName = 'STORE_TYPE'
    end
    object CDS_NULLSTOREHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
    end
    object CDS_NULLSTOREHOL_SUB_TYPE: TStringField
      FieldName = 'HOL_SUB_TYPE'
      Size = 50
    end
    object CDS_NULLSTOREPRICE_LIST: TFloatField
      FieldName = 'PRICE_LIST'
    end
    object CDS_NULLSTOREQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object CDS_NULLSTOREADDED: TFloatField
      FieldName = 'ADDED'
    end
    object CDS_NULLSTOREID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
    end
    object CDS_NULLSTORECOLOUR: TStringField
      FieldName = 'COLOUR'
      Size = 50
    end
    object CDS_NULLSTORECOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
    object CDS_NULLSTORERESERV: TFloatField
      FieldName = 'RESERV'
    end
    object CDS_NULLSTOREPRICE_DIFFERENCE: TFloatField
      FieldName = 'PRICE_DIFFERENCE'
    end
    object CDS_NULLSTORESUM_PRICE_DIFFERENCE: TFloatField
      FieldName = 'SUM_PRICE_DIFFERENCE'
    end
    object CDS_NULLSTOREPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object CDS_NULLSTOREQUANTITY_PRICE: TFloatField
      FieldName = 'QUANTITY_PRICE'
    end
    object CDS_NULLSTOREPRICE_PERCENT: TFloatField
      FieldName = 'PRICE_PERCENT'
    end
    object CDS_NULLSTORENBUTTON: TFloatField
      FieldName = 'NBUTTON'
    end
    object CDS_NULLSTOREBUT_NAME: TStringField
      FieldName = 'BUT_NAME'
      FixedChar = True
      Size = 3
    end
    object CDS_NULLSTOREOUR_CODE: TStringField
      FieldName = 'OUR_CODE'
      Size = 40
    end
    object CDS_NULLSTOREIS_PHOTO: TFloatField
      FieldName = 'IS_PHOTO'
    end
    object CDS_NULLSTOREPHOTO: TStringField
      FieldName = 'PHOTO'
      Size = 30
    end
    object CDS_NULLSTORECOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 350
    end
    object CDS_NULLSTOREID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object CDS_NULLSTOREBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object CDS_NULLSTORENOTUSE: TIntegerField
      FieldName = 'NOTUSE'
    end
    object CDS_NULLSTORECUR_CLIENT: TFloatField
      FieldName = 'CUR_CLIENT'
    end
    object CDS_NULLSTORESPEC_PRICE: TIntegerField
      FieldName = 'SPEC_PRICE'
    end
  end
  object DS_NULLSTORE: TOraDataSource
    DataSet = CDS_NULLSTORE
    Left = 424
    Top = 120
  end
  object OraProc: TOraStoredProc
    Session = sale_session
    Left = 32
    Top = 136
  end
  object doc: TOraQuery
    Session = sale_session
    SQL.Strings = (
      'begin'
      
        '  STORE_PKG.GET_DOC_VIEW_CLIENT(:ID_DEP_, :DOC_NUMBER_, :DOC_DAT' +
        'E1_, :DOC_DATE2_, :ID_DOC_TYPE_, :FIO_, :NICK_, :v_office, :CURS' +
        'OR_);'
      'end;')
    FetchAll = True
    AutoCommit = False
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = docBeforeOpen
    BeforeRefresh = docBeforeOpen
    Left = 104
    Top = 208
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEP_'
        ParamType = ptInput
        Value = 62.000000000000000000
      end
      item
        DataType = ftString
        Name = 'DOC_NUMBER_'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DOC_DATE1_'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DOC_DATE2_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ID_DOC_TYPE_'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIO_'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NICK_'
        ParamType = ptInput
      end
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
    object docID_DOC: TFloatField
      FieldName = 'ID_DOC'
      Required = True
    end
    object docDOC_NUMBER: TFloatField
      FieldName = 'DOC_NUMBER'
    end
    object docID_DOC_TYPE: TIntegerField
      FieldName = 'ID_DOC_TYPE'
      Required = True
    end
    object docID_DEPARTMENTS: TIntegerField
      FieldName = 'ID_DEPARTMENTS'
      Required = True
    end
    object docDEPARTMENT_NAME: TStringField
      FieldName = 'DEPARTMENT_NAME'
      Required = True
      Size = 100
    end
    object docOPERATOR_NAME: TStringField
      FieldName = 'OPERATOR_NAME'
      Size = 255
    end
    object docDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
      Required = True
    end
    object docDOC_DATE_REAL: TDateTimeField
      FieldName = 'DOC_DATE_REAL'
      Required = True
    end
    object docID_CLIENT: TIntegerField
      FieldName = 'ID_CLIENT'
    end
    object docNICK: TStringField
      FieldName = 'NICK'
      Required = True
    end
    object docFIO: TStringField
      FieldName = 'FIO'
      Required = True
      Size = 255
    end
    object docQUANTITY_ALL: TFloatField
      FieldName = 'QUANTITY_ALL'
    end
    object docPRICE_ALL: TFloatField
      FieldName = 'PRICE_ALL'
    end
    object docSUM_PRICE_OLD: TFloatField
      FieldName = 'SUM_PRICE_OLD'
    end
    object docSUM_PRICE_NEW: TFloatField
      FieldName = 'SUM_PRICE_NEW'
    end
    object docSUM_PRICE_DIFFERENCE: TFloatField
      FieldName = 'SUM_PRICE_DIFFERENCE'
    end
    object docCOMMENTS: TStringField
      FieldName = 'COMMENTS'
      Size = 255
    end
    object docINV_ID: TFloatField
      FieldName = 'INV_ID'
    end
    object docORDER_ID: TFloatField
      FieldName = 'ORDER_ID'
    end
    object docSUPPLIER_DATE: TDateTimeField
      FieldName = 'SUPPLIER_DATE'
    end
    object docSUPPLIER_NUMBER: TStringField
      FieldName = 'SUPPLIER_NUMBER'
      Size = 50
    end
    object docSUPLIER: TStringField
      FieldName = 'SUPLIER'
      Size = 1024
    end
    object docID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object docBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object docID_CASH_TMP: TFloatField
      FieldName = 'ID_CASH_TMP'
    end
  end
  object STORE_VIEW: TOraQuery
    Session = sale_session
    SQL.Strings = (
      'begin'
      
        '   creator.STORE_PKG.GET_STORE_VIEW(:ID_DEP_, :STORE_, :BUTTON_,' +
        ' :v_office, :CURSOR_);'
      'end;')
    FetchAll = True
    AutoCommit = False
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = STORE_VIEWBeforeOpen
    BeforeRefresh = STORE_VIEWBeforeOpen
    Left = 32
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_DEP_'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'STORE_'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BUTTON_'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'v_office'
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        Value = 'Object'
      end>
    object STORE_VIEWN_ID: TFloatField
      FieldName = 'N_ID'
    end
    object STORE_VIEWFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Size = 350
    end
    object STORE_VIEWF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Size = 50
    end
    object STORE_VIEWF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Size = 50
    end
    object STORE_VIEWCODE: TStringField
      FieldName = 'CODE'
      Size = 40
    end
    object STORE_VIEWH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 50
    end
    object STORE_VIEWLEN: TIntegerField
      FieldName = 'LEN'
    end
    object STORE_VIEWPACK: TIntegerField
      FieldName = 'PACK'
    end
    object STORE_VIEWCOLOUR: TStringField
      FieldName = 'COLOUR'
      Size = 50
    end
    object STORE_VIEWCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
    object STORE_VIEWQUANTITY: TFloatField
      FieldName = 'QUANTITY'
    end
    object STORE_VIEWPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object STORE_VIEWFT_ID: TFloatField
      FieldName = 'FT_ID'
    end
    object STORE_VIEWFST_ID: TFloatField
      FieldName = 'FST_ID'
    end
    object STORE_VIEWC_ID: TFloatField
      FieldName = 'C_ID'
    end
    object STORE_VIEWCOL_ID: TFloatField
      FieldName = 'COL_ID'
    end
    object STORE_VIEWS_ID: TFloatField
      FieldName = 'S_ID'
    end
    object STORE_VIEWS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Size = 150
    end
    object STORE_VIEWQUANTITY_PRICE: TFloatField
      FieldName = 'QUANTITY_PRICE'
    end
    object STORE_VIEWNBUTTON: TFloatField
      FieldName = 'NBUTTON'
    end
    object STORE_VIEWRESERV: TFloatField
      FieldName = 'RESERV'
    end
    object STORE_VIEWSPESIFICATION: TStringField
      FieldName = 'SPESIFICATION'
      Size = 4000
    end
    object STORE_VIEWHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
      Size = 1
    end
    object STORE_VIEWHOL_SUB_TYPE: TStringField
      FieldName = 'HOL_SUB_TYPE'
      Size = 1
    end
    object STORE_VIEWBUT_NAME: TStringField
      FieldName = 'BUT_NAME'
      FixedChar = True
      Size = 3
    end
    object STORE_VIEWCOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 350
    end
    object STORE_VIEWID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object STORE_VIEWBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
  end
  object STORE_VIEW_DS: TOraDataSource
    DataSet = STORE_VIEW
    Left = 32
    Top = 256
  end
  object DOC_DS: TOraDataSource
    DataSet = doc
    Left = 104
    Top = 256
  end
  object doc_data_ds: TOraDataSource
    DataSet = doc_data
    Left = 168
    Top = 256
  end
  object doc_data: TOraQuery
    Session = sale_session
    SQL.Strings = (
      
        'SELECT a.ID_DOC, a.N_ID, a.CODE, a.H_CODE, F_TYPE, F_SUB_TYPE, F' +
        'ULL_NAME,'
      'QUANTITY, QUANTITY_NOW, STORE_TYPE_NAME, STORE_TYPE, PRICE_LIST,'
      
        'QUANTITY_PRICE, PRICE_PERCENT, PRICE, GTD, SPESIFICATION, compil' +
        'ed_name_otdel, bb.spec_price'
      'from'
      'store_docdata_view a'
      'inner join price_list bb ON a.n_id = bb.n_id '
      'where'
      'ID_DOC=:ID_DOC'
      'order by compiled_name_otdel')
    MasterSource = DOC_DS
    MasterFields = 'ID_DOC'
    DetailFields = 'ID_DOC'
    FetchRows = 20
    AutoCommit = False
    FilterOptions = [foCaseInsensitive]
    Left = 168
    Top = 208
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DOC'
        ParamType = ptInput
      end>
    object doc_dataID_DOC: TFloatField
      FieldName = 'ID_DOC'
      Required = True
    end
    object doc_dataN_ID: TFloatField
      FieldName = 'N_ID'
      Required = True
    end
    object doc_dataCODE: TStringField
      FieldName = 'CODE'
      Size = 40
    end
    object doc_dataH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 80
    end
    object doc_dataF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Required = True
      Size = 50
    end
    object doc_dataF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Required = True
      Size = 50
    end
    object doc_dataFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Size = 372
    end
    object doc_dataQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Required = True
    end
    object doc_dataQUANTITY_NOW: TFloatField
      FieldName = 'QUANTITY_NOW'
    end
    object doc_dataSTORE_TYPE_NAME: TStringField
      FieldName = 'STORE_TYPE_NAME'
      Required = True
      Size = 30
    end
    object doc_dataSTORE_TYPE: TIntegerField
      FieldName = 'STORE_TYPE'
    end
    object doc_dataPRICE_LIST: TFloatField
      FieldName = 'PRICE_LIST'
    end
    object doc_dataQUANTITY_PRICE: TFloatField
      FieldName = 'QUANTITY_PRICE'
    end
    object doc_dataPRICE_PERCENT: TFloatField
      FieldName = 'PRICE_PERCENT'
    end
    object doc_dataPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object doc_dataGTD: TStringField
      FieldName = 'GTD'
      Size = 50
    end
    object doc_dataSPESIFICATION: TStringField
      FieldName = 'SPESIFICATION'
      Size = 4000
    end
    object doc_dataCOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 500
    end
    object doc_dataSPEC_PRICE: TIntegerField
      FieldName = 'SPEC_PRICE'
    end
  end
  object frxReport1: TfrxReport
    Version = '4.12.11'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39796.688377118100000000
    ReportOptions.LastChange = 42672.961699930560000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure DMPMemo17OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  TfrxBand(Sender).Visible := <fr_doc_data_ds."spec_price"><>1;'
      
        '  //if masterdata2.Visible = true then Footer2.Visible := true e' +
        'lse Footer2.Visible := false;      '
      'end;'
      ''
      'procedure MasterData2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  TfrxBand(Sender).Visible := <fr_doc_data_ds."spec_price">=1;'
      
        ' // if TfrxBand(Sender).Visible = true then Footer2.Visible := t' +
        'rue else Footer2.Visible := false;                              ' +
        '                                                     '
      'end;'
      ''
      'procedure Footer2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        ' //if MasterData2.rowcount<>0 then TfrxBand(Sender).Visible:=tru' +
        'e else TfrxBand(Sender).Visible:=false;'
      
        ' if count(masterdata2)<>0 then Footer2.Visible := true else Foot' +
        'er2.Visible := false;     '
      'end;'
      ''
      'procedure Footer1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        ' if count(masterdata1)<>0 then Footer1.Visible := true else Foot' +
        'er1.Visible := false;    '
      'end;'
      ''
      'procedure Footer3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Footer2OnAfterCalcHeight(Sender: TfrxComponent);'
      'begin'
      
        '//  if masterdata2.Visible = true then Footer2.Visible := true e' +
        'lse Footer2.Visible := false;  '
      'end;'
      ''
      'begin'
      '// Footer2.Visible := masterdata2.visible;'
      '// footer1.visible := masterdata1.visible;'
      
        'if count(masterdata1)<>0 then Footer1.Visible := true else Foote' +
        'r1.Visible := false;'
      
        'if count(masterdata2)<>0 then Footer2.Visible := true else Foote' +
        'r2.Visible := false;    '
      'end.')
    OnUserFunction = frxReport1UserFunction
    Left = 434
    Top = 200
    Datasets = <
      item
        DataSet = fr_doc_data_ds
        DataSetName = 'fr_doc_data_ds'
      end
      item
        DataSet = fr_DOC_DS
        DataSetName = 'fr_DOC_DS'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxDMPPage
      PaperWidth = 210.819863845504600000
      PaperHeight = 296.862308276425900000
      PaperSize = 9
      LeftMargin = 7.619995078753180000
      RightMargin = 2.539998359584390000
      TopMargin = 4.497913761764030000
      BottomMargin = 4.497913761764030000
      FontStyle = []
      object ReportTitle1: TfrxReportTitle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        Height = 170.000000000000000000
        ParentFont = False
        Top = 17.000000000000000000
        Width = 758.400000000000000000
        object DMPMemo1: TfrxDMPMemoView
          Align = baWidth
          Width = 758.400000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#1108#1056#187#1056#176#1056#1169#1056#1029#1056#176#1057#1039' '#1056#1111#1057#1026#1056#1109#1056#1169#1056#176#1056#182#1056#1105' '#1074#8222#8211' [fr_DOC_DS."DOC_NUMBER"]')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo2: TfrxDMPMemoView
          Align = baWidth
          Top = 17.000000000000000000
          Width = 758.400000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          HAlign = haCenter
          Memo.UTF8 = (
            '[fr_DOC_DS."DEPARTMENT_NAME"]')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo3: TfrxDMPMemoView
          Top = 51.000000000000000000
          Width = 144.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169' '#1056#1108#1056#187#1056#1105#1056#181#1056#1029#1057#8218#1056#176':')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo4: TfrxDMPMemoView
          Top = 68.000000000000000000
          Width = 144.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Memo.UTF8 = (
            #1056#164#1056#152#1056#1115' / '#1056#1029#1056#176#1056#183#1056#1030#1056#176#1056#1029#1056#1105#1056#181':')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo5: TfrxDMPMemoView
          Top = 85.000000000000000000
          Width = 144.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176':')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo6: TfrxDMPMemoView
          Left = 153.600000000000000000
          Top = 51.000000000000000000
          Width = 595.200000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Memo.UTF8 = (
            '[fr_DOC_DS."NICK"]')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo7: TfrxDMPMemoView
          Left = 153.600000000000000000
          Top = 68.000000000000000000
          Width = 595.200000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Memo.UTF8 = (
            '[fr_DOC_DS."FIO"]')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo8: TfrxDMPMemoView
          Left = 153.600000000000000000
          Top = 85.000000000000000000
          Width = 595.200000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Memo.UTF8 = (
            '[fr_DOC_DS."DOC_DATE"]')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo11: TfrxDMPMemoView
          Align = baLeft
          Top = 136.000000000000000000
          Width = 518.400000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#183#1056#1030#1056#176#1056#1029#1056#1105#1056#181)
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo12: TfrxDMPMemoView
          Align = baLeft
          Left = 662.400000000000000000
          Top = 136.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176' '#1057#1027#1057#1107#1056#1112#1056#1112#1057#1107)
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo13: TfrxDMPMemoView
          Align = baLeft
          Left = 585.600000000000000000
          Top = 136.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#166#1056#181#1056#1029#1056#176)
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo14: TfrxDMPMemoView
          Align = baLeft
          Left = 518.400000000000000000
          Top = 136.000000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109)
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo37: TfrxDMPMemoView
          Top = 102.000000000000000000
          Width = 144.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Memo.UTF8 = (
            #1056#152#1056#1029#1057#8222#1056#1109#1057#1026#1056#1112#1056#176#1057#8224#1056#1105#1057#1039':')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo38: TfrxDMPMemoView
          Left = 153.600000000000000000
          Top = 102.000000000000000000
          Width = 595.200000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Memo.UTF8 = (
            '[fr_DOC_DS."COMMENTS"]')
          TruncOutboundText = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Courier New'
        Font.Style = []
        Height = 17.000000000000000000
        ParentFont = False
        Top = 221.000000000000000000
        Width = 758.400000000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = fr_doc_data_ds
        DataSetName = 'fr_doc_data_ds'
        RowCount = 0
        Stretched = True
        object DMPMemo17: TfrxDMPMemoView
          Align = baLeft
          Width = 518.400000000000000000
          Height = 17.000000000000000000
          OnBeforePrint = 'DMPMemo17OnBeforePrint'
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Memo.UTF8 = (
            '[fr_doc_data_ds."COMPILED_NAME_OTDEL"]')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo18: TfrxDMPMemoView
          Align = baLeft
          Left = 662.400000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[fr_doc_data_ds."QUANTITY_PRICE"]')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo19: TfrxDMPMemoView
          Align = baLeft
          Left = 585.600000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[fr_doc_data_ds."PRICE"]')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo20: TfrxDMPMemoView
          Align = baLeft
          Left = 518.400000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          HAlign = haCenter
          Memo.UTF8 = (
            '[fr_doc_data_ds."QUANTITY"]')
          TruncOutboundText = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        Height = 102.000000000000000000
        ParentFont = False
        Top = 255.000000000000000000
        Width = 758.400000000000000000
        OnBeforePrint = 'Footer1OnBeforePrint'
        object DMPMemo9: TfrxDMPMemoView
          Top = 17.000000000000000000
          Width = 230.400000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#183#1056#1105#1057#8224#1056#1105#1056#8470'/'#1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109'/'#1056#1119#1056#1109#1056#1169#1057#8249#1057#8218#1056#1109#1056#1110':')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo22: TfrxDMPMemoView
          Left = 240.000000000000000000
          Top = 17.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[COUNT(MasterData1)] / [SUM(<fr_doc_data_ds."QUANTITY">,MasterDa' +
              'ta1)] /')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo23: TfrxDMPMemoView
          Left = 508.800000000000000000
          Top = 17.000000000000000000
          Width = 249.600000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftTop, ftBottom]
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo27: TfrxDMPMemoView
          Left = 326.400000000000000000
          Top = 17.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            '[SUM(<fr_doc_data_ds."QUANTITY_PRICE">,MasterData1)]')
          TruncOutboundText = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        Height = 85.000000000000000000
        ParentFont = False
        Top = 697.000000000000000000
        Width = 758.400000000000000000
        object DMPMemo28: TfrxDMPMemoView
          Width = 758.400000000000000000
          Height = 17.000000000000000000
          Visible = False
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Memo.UTF8 = (
            
              '* '#1056#166#1056#181#1056#1029#1057#8249' '#1056#1029#1056#176' '#1057#8218#1056#1109#1056#1030#1056#176#1057#1026' '#1056#1030' '#1056#1029#1056#176#1057#1027#1057#8218#1056#1109#1057#1039#1057#8240#1056#181#1056#8470' '#1056#1029#1056#176#1056#1108#1056#187#1056#176#1056#1169#1056#1029#1056 +
              #1109#1056#8470' '#1057#1026#1056#176#1057#1027#1057#1027#1057#8225#1056#1105#1057#8218#1056#176#1056#1029#1057#8249' '#1056#1030' '#1057#1026#1057#1107#1056#177#1056#187#1057#1039#1057#8230' '#1056#1111#1056#1109' '#1056#1108#1057#1107#1057#1026#1057#1027#1057#1107)
          TruncOutboundText = False
        end
        object DMPMemo29: TfrxDMPMemoView
          Left = 259.200000000000000000
          Top = 17.000000000000000000
          Width = 499.200000000000000000
          Height = 17.000000000000000000
          Visible = False
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176' '#1056#1029#1056#176#1056#1108#1056#187#1056#176#1056#1169#1056#1029#1056#1109#1056#8470' '#1056#1030' '#1056#8226#1056#1030#1057#1026#1056#1109' = ')
          TruncOutboundText = False
        end
        object DMPMemo30: TfrxDMPMemoView
          Align = baLeft
          Top = 17.000000000000000000
          Width = 259.200000000000000000
          Height = 17.000000000000000000
          Visible = False
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          TruncOutboundText = False
        end
        object DMPMemo31: TfrxDMPMemoView
          Top = 34.000000000000000000
          Width = 758.400000000000000000
          Height = 17.000000000000000000
          Visible = False
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Memo.UTF8 = (
            
              #1056#1116#1056#176#1056#1108#1056#187#1056#176#1056#1169#1056#1029#1056#176#1057#1039' '#1056#1111#1056#1109#1056#1169#1056#187#1056#181#1056#182#1056#1105#1057#8218' '#1056#1109#1056#1111#1056#187#1056#176#1057#8218#1056#181' '#1056#1030' '#1057#1026#1057#1107#1056#177#1056#187#1057#1039#1057#8230 +
              ' '#1056#1111#1056#1109' '#1056#1108#1057#1107#1057#1026#1057#1027#1057#1107' '#1056#8226#1056#1030#1057#1026#1056#1109', '#1057#1107#1057#1027#1057#8218#1056#176#1056#1029#1056#1109#1056#1030#1056#187#1056#181#1056#1029#1056#1029#1056#1109#1056#1112#1057#1107' '#1056#166#1056#8216' '#1056#160#1056 +
              #1109#1057#1027#1057#1027#1056#1105#1056#1105)
          TruncOutboundText = False
        end
        object DMPMemo32: TfrxDMPMemoView
          Top = 51.000000000000000000
          Width = 758.400000000000000000
          Height = 17.000000000000000000
          Visible = False
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Memo.UTF8 = (
            
              #1056#1029#1056#176' '#1056#1169#1056#176#1057#8218#1057#1107' '#1056#183#1056#176#1057#8225#1056#1105#1057#1027#1056#187#1056#181#1056#1029#1056#1105#1057#1039' '#1056#1169#1056#181#1056#1029#1056#181#1056#182#1056#1029#1057#8249#1057#8230' '#1057#1027#1057#1026#1056#181#1056#1169#1057#1027#1057#8218 +
              #1056#1030' '#1056#1029#1056#176' '#1057#1026#1056#176#1057#1027#1057#8225#1056#181#1057#8218#1056#1029#1057#8249#1056#8470' '#1057#1027#1057#8225#1056#181#1057#8218' ('#1056#1105#1056#187#1056#1105' '#1056#1108#1056#176#1057#1027#1057#1027#1057#1107') '#1056#1119#1056#1115#1056#1038#1056#1118 +
              #1056#1106#1056#8217#1056#169#1056#152#1056#1113#1056#1106',')
          TruncOutboundText = False
        end
        object DMPMemo33: TfrxDMPMemoView
          Top = 68.000000000000000000
          Width = 153.600000000000000000
          Height = 17.000000000000000000
          Visible = False
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Memo.UTF8 = (
            #1056#1029#1056#1109' '#1056#1029#1056#181' '#1056#1029#1056#1105#1056#182#1056#181' '#1056#1108#1057#1107#1057#1026#1057#1027#1056#176' ')
          TruncOutboundText = False
        end
        object DMPMemo34: TfrxDMPMemoView
          Left = 393.600000000000000000
          Top = 68.000000000000000000
          Width = 364.800000000000000000
          Height = 17.000000000000000000
          Visible = False
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Memo.UTF8 = (
            
              #1056#177#1056#181#1056#183' '#1056#1030#1057#8249#1057#1027#1057#8218#1056#176#1056#1030#1056#187#1056#181#1056#1029#1056#1105#1057#1039' '#1056#1169#1056#1109#1056#1111#1056#1109#1056#187#1056#1029#1056#1105#1057#8218#1056#181#1056#187#1057#1034#1056#1029#1056#1109#1056#1110#1056#1109' '#1057#1027#1057 +
              #8225#1056#181#1057#8218#1056#176'.')
          TruncOutboundText = False
        end
        object DMPMemo35: TfrxDMPMemoView
          Left = 153.600000000000000000
          Top = 68.000000000000000000
          Width = 240.000000000000000000
          Height = 17.000000000000000000
          Visible = False
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          TruncOutboundText = False
        end
      end
      object MasterData2: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        Height = 17.000000000000000000
        ParentFont = False
        Top = 374.000000000000000000
        Width = 758.400000000000000000
        OnBeforePrint = 'MasterData2OnBeforePrint'
        DataSet = fr_doc_data_ds
        DataSetName = 'fr_doc_data_ds'
        RowCount = 0
        Stretched = True
        object DMPMemo10: TfrxDMPMemoView
          Align = baLeft
          Width = 518.400000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftLeft, ftTop]
          Memo.UTF8 = (
            '[fr_doc_data_ds."COMPILED_NAME_OTDEL"]')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo16: TfrxDMPMemoView
          Align = baLeft
          Left = 662.400000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8 = (
            '[fr_doc_data_ds."QUANTITY_PRICE"]')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo40: TfrxDMPMemoView
          Align = baLeft
          Left = 585.600000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8 = (
            '[fr_doc_data_ds."PRICE"]')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo41: TfrxDMPMemoView
          Align = baLeft
          Left = 518.400000000000000000
          Width = 67.200000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fr_doc_data_ds."QUANTITY"]')
          TruncOutboundText = False
          VAlign = vaCenter
        end
      end
      object Footer2: TfrxFooter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        Height = 51.000000000000000000
        ParentFont = False
        Top = 408.000000000000000000
        Width = 758.400000000000000000
        OnAfterCalcHeight = 'Footer2OnAfterCalcHeight'
        OnBeforePrint = 'Footer2OnBeforePrint'
        object DMPMemo42: TfrxDMPMemoView
          Top = 17.000000000000000000
          Width = 230.400000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#183#1056#1105#1057#8224#1056#1105#1056#8470'/'#1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109'/'#1056#1119#1056#1109#1056#1169#1057#8249#1057#8218#1056#1109#1056#1110':')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo45: TfrxDMPMemoView
          Left = 240.000000000000000000
          Top = 17.000000000000000000
          Width = 76.800000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            
              '[COUNT(MasterData2)] / [SUM(<fr_doc_data_ds."QUANTITY">,MasterDa' +
              'ta2)] /')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo15: TfrxDMPMemoView
          Left = 508.800000000000000000
          Top = 17.000000000000000000
          Width = 249.600000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo39: TfrxDMPMemoView
          Left = 326.400000000000000000
          Top = 17.000000000000000000
          Width = 172.800000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            '[SUM(<fr_doc_data_ds."QUANTITY_PRICE">,MasterData2)]')
          TruncOutboundText = False
          VAlign = vaCenter
        end
      end
      object MasterData3: TfrxMasterData
        Top = 476.000000000000000000
        Width = 758.400000000000000000
        DataSet = fr_doc_data_ds
        DataSetName = 'fr_doc_data_ds'
        RowCount = 0
      end
      object Footer3: TfrxFooter
        Height = 170.000000000000000000
        Top = 493.000000000000000000
        Width = 758.400000000000000000
        object DMPMemo36: TfrxDMPMemoView
          Top = 102.000000000000000000
          Width = 758.400000000000000000
          Height = 34.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Memo.UTF8 = (
            
              #1056#1119#1056#1109#1056#1169#1057#8218#1056#1030#1056#181#1057#1026#1056#182#1056#1169#1056#176#1057#1035', '#1057#8225#1057#8218#1056#1109' '#1057#8218#1056#1109#1056#1030#1056#176#1057#1026' '#1056#1112#1056#1029#1056#1109#1056#8470' '#1056#1111#1057#1026#1056#1109#1056#1030#1056#181#1057#1026#1056 +
              #181#1056#1029', '#1056#1030#1057#1027#1056#181' '#1056#1111#1056#1109#1056#183#1056#1105#1057#8224#1056#1105#1056#1105' '#1056#1029#1056#176#1056#1169#1056#187#1056#181#1056#182#1056#176#1057#8240#1056#181#1056#1110#1056#1109' '#1056#1108#1056#176#1057#8225#1056#181#1057#1027#1057#8218#1056#1030 +
              #1056#176' '#1056#1105' '#1056#1111#1057#1026#1056#181#1056#1169#1056#1109#1057#1027#1057#8218#1056#176#1056#1030#1056#187#1056#181#1056#1029#1057#8249' '#1056#1030' '#1056#1111#1056#1109#1056#187#1056#1029#1056#1109#1056#1112' '#1056#1109#1056#177#1057#1033#1057#8216#1056#1112#1056#181'___' +
              '_________')
          TruncOutboundText = False
        end
        object DMPMemo43: TfrxDMPMemoView
          Left = 374.400000000000000000
          Top = 51.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1115#1057#8218#1056#1111#1057#1107#1057#1027#1057#8218#1056#1105#1056#187': ')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo44: TfrxDMPMemoView
          Left = 374.400000000000000000
          Top = 68.000000000000000000
          Width = 96.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#187#1057#1107#1057#8225#1056#1105#1056#187': ')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo46: TfrxDMPMemoView
          Left = 470.400000000000000000
          Top = 51.000000000000000000
          Width = 288.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Memo.UTF8 = (
            '[fr_DOC_DS."OPERATOR_NAME"]')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo47: TfrxDMPMemoView
          Left = 470.400000000000000000
          Top = 68.000000000000000000
          Width = 288.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            '[fr_DOC_DS."FIO"]')
          TruncOutboundText = False
        end
        object DMPMemo50: TfrxDMPMemoView
          Left = 268.800000000000000000
          Top = 17.000000000000000000
          Width = 489.600000000000000000
          Height = 34.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Memo.UTF8 = (
            
              '[Uppercase(Copy(Propis(<fr_DOC_DS."PRICE_ALL">),1,1))][Copy(Prop' +
              'is(<fr_DOC_DS."PRICE_ALL">),2,Length(Propis(<fr_DOC_DS."PRICE_AL' +
              'L">)))] [Ruble(<fr_DOC_DS."PRICE_ALL">,'#39#1057#1026#1057#1107#1056#177#1056#187#1057#1034';'#1057#1026#1057#1107#1056#177#1056#187#1057#1039';'#1057#1026 +
              #1057#1107#1056#177#1056#187#1056#181#1056#8470#39')] [ROUND(FRAC(<fr_DOC_DS."PRICE_ALL">)*100)] [Kopeik' +
              'a(ROUND(FRAC(<fr_DOC_DS."PRICE_ALL">)*100),'#39#1056#1109#1056#1111#1056#181#1056#8470#1056#1108#1056#176';'#1056#1108#1056#1109#1056#1111#1056 +
              #181#1056#8470#1056#1108#1056#1105';'#1056#1108#1056#1109#1056#1111#1056#181#1056#181#1056#1108#39')]')
          TruncOutboundText = False
        end
        object DMPMemo21: TfrxDMPMemoView
          Left = 9.600000000000000000
          Top = 17.000000000000000000
          Width = 144.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Memo.UTF8 = (
            #1056#8217#1057#1027#1056#181#1056#1110#1056#1109' '#1056#1108' '#1056#1109#1056#1111#1056#187#1056#176#1057#8218#1056#181':')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo24: TfrxDMPMemoView
          Left = 163.200000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Memo.UTF8 = (
            
              '[fr_DOC_DS."QUANTITY_ALL"] / [SUM(<fr_doc_data_ds."QUANTITY">,Ma' +
              'sterData1)+SUM(<fr_doc_data_ds."QUANTITY">,MasterData2)]')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo25: TfrxDMPMemoView
          Left = 9.600000000000000000
          Width = 144.000000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#183#1056#1105#1057#8224#1056#1105#1056#8470'/'#1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109':')
          TruncOutboundText = False
          VAlign = vaCenter
        end
        object DMPMemo26: TfrxDMPMemoView
          Left = 163.200000000000000000
          Top = 17.000000000000000000
          Width = 105.600000000000000000
          Height = 17.000000000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8 = (
            '[fr_DOC_DS."PRICE_ALL"]')
          TruncOutboundText = False
          VAlign = vaCenter
        end
      end
    end
  end
  object fr_doc_data_ds: TfrxDBDataset
    UserName = 'fr_doc_data_ds'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_DOC=ID_DOC'
      'N_ID=N_ID'
      'CODE=CODE'
      'H_CODE=H_CODE'
      'F_TYPE=F_TYPE'
      'F_SUB_TYPE=F_SUB_TYPE'
      'FULL_NAME=FULL_NAME'
      'QUANTITY=QUANTITY'
      'QUANTITY_NOW=QUANTITY_NOW'
      'STORE_TYPE_NAME=STORE_TYPE_NAME'
      'STORE_TYPE=STORE_TYPE'
      'PRICE_LIST=PRICE_LIST'
      'QUANTITY_PRICE=QUANTITY_PRICE'
      'PRICE_PERCENT=PRICE_PERCENT'
      'PRICE=PRICE'
      'GTD=GTD'
      'SPESIFICATION=SPESIFICATION'
      'COMPILED_NAME_OTDEL=COMPILED_NAME_OTDEL'
      'SPEC_PRICE=SPEC_PRICE')
    DataSource = doc_data_ds
    BCDToCurrency = False
    Left = 434
    Top = 248
  end
  object fr_DOC_DS: TfrxDBDataset
    UserName = 'fr_DOC_DS'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_DOC=ID_DOC'
      'DOC_NUMBER=DOC_NUMBER'
      'ID_DOC_TYPE=ID_DOC_TYPE'
      'ID_DEPARTMENTS=ID_DEPARTMENTS'
      'DEPARTMENT_NAME=DEPARTMENT_NAME'
      'OPERATOR_NAME=OPERATOR_NAME'
      'DOC_DATE=DOC_DATE'
      'DOC_DATE_REAL=DOC_DATE_REAL'
      'ID_CLIENT=ID_CLIENT'
      'NICK=NICK'
      'FIO=FIO'
      'QUANTITY_ALL=QUANTITY_ALL'
      'PRICE_ALL=PRICE_ALL'
      'SUM_PRICE_OLD=SUM_PRICE_OLD'
      'SUM_PRICE_NEW=SUM_PRICE_NEW'
      'SUM_PRICE_DIFFERENCE=SUM_PRICE_DIFFERENCE'
      'COMMENTS=COMMENTS'
      'INV_ID=INV_ID'
      'ORDER_ID=ORDER_ID'
      'SUPPLIER_DATE=SUPPLIER_DATE'
      'SUPPLIER_NUMBER=SUPPLIER_NUMBER'
      'SUPLIER=SUPLIER'
      'ID_OFFICE=ID_OFFICE'
      'BRIEF=BRIEF'
      'ID_CASH_TMP=ID_CASH_TMP')
    DataSource = DOC_DS
    BCDToCurrency = False
    Left = 434
    Top = 301
  end
  object frxUserDataSet1: TfrxUserDataSet
    UserName = 'frxUserDataSet1'
    Left = 434
    Top = 355
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    PageBreaks = False
    SaveToFile = False
    UseIniSettings = False
    Left = 530
    Top = 268
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
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 530
    Top = 216
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
    Left = 528
    Top = 320
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
    Left = 630
    Top = 320
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
    Left = 628
    Top = 216
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    DeleteEmptyColumns = True
    Left = 627
    Top = 272
  end
  object OraSQL_Scan: TOraSQL
    Session = sale_session
    SQL.Strings = (
      
        'insert into STORE_DOC_DATA_TEMP (N_ID, QUANTITY) values (:N_ID, ' +
        ':QUANTITY);')
    Left = 649
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'N_ID'
      end
      item
        DataType = ftUnknown
        Name = 'QUANTITY'
      end>
  end
  object Scan: TOraQuery
    SQLUpdate.Strings = (
      'begin'
      '  if (:added > 0) then'
      
        '     update STORE_DOC_DATA_TEMP set QUANTITY=+:QUANTITY where ID' +
        '_DOC_DATA=:added;'
      '  else'
      
        '     INSERT INTO STORE_DOC_DATA_TEMP (ID_DOC_DATA, N_ID, QUANTIT' +
        'Y, store_type, PRICE, PRICE_LIST) '
      
        '     VALUES (STORE_DOC_DATA_TEMP_SET_ID.NEXTVAL, :N_ID, :QUANTIT' +
        'Y, :STORE_TYPE, :PRICE_LIST, :PRICE_LIST)'
      '     RETURNING ID_DOC_DATA INTO :added;'
      '  end if;'
      'end;')
    SQLRefresh.Strings = (
      'WHERE'
      'added=:added')
    Session = sale_session
    SQL.Strings = (
      'select '
      'N_ID,'
      'case when ID_DEPARTMENTS = 62 then code else our_code end code,'
      'QUANTITY,'
      'price_list,'
      'store_type,'
      'ADDED'
      'from '
      'store_docdatatemp_view'
      'where'
      'decode(ID_DEPARTMENTS,62,code,our_code) = :CODE'
      'and ID_DEPARTMENTS = :ID_DEPARTMENTS '
      'and STORE_TYPE=1'
      'and id_office = const_office'
      '--(CODE = :CODE or our_code = :CODE)')
    AutoCommit = False
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    Options.CacheLobs = False
    Options.FieldsOrigin = True
    Options.ReturnParams = True
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    Left = 648
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODE'
      end
      item
        DataType = ftInteger
        Name = 'ID_DEPARTMENTS'
        ParamType = ptInput
      end>
  end
  object cds_reserv: TOraQuery
    SQLUpdate.Strings = (
      'begin'
      
        ' update ORDERS_CLIENTS set info = :info where ID_ORDERS_CLIENTS ' +
        '= :ID_ORDERS_CLIENTS;'
      ' commit;'
      'end;')
    Session = sale_session
    SQL.Strings = (
      'begin'
      
        '  creator.sales_pkg.get_orders_view(:ID_DEP_, :STATUS_, :ID_, :v' +
        '_office, :CURSOR_);'
      'end;')
    FetchAll = True
    AutoCommit = False
    RefreshOptions = [roAfterUpdate]
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = cds_reservBeforeOpen
    BeforeRefresh = cds_reservBeforeOpen
    Left = 256
    Top = 208
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEP_'
        ParamType = ptInput
        Value = 121.000000000000000000
      end
      item
        DataType = ftFloat
        Name = 'STATUS_'
        ParamType = ptInput
        Value = 10.000000000000000000
      end
      item
        DataType = ftFloat
        Name = 'ID_'
        ParamType = ptInput
        Value = 0.000000000000000000
      end
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
    object cds_reservINFO: TStringField
      FieldName = 'INFO'
      Size = 500
    end
    object cds_reservNN: TFloatField
      FieldName = 'NN'
    end
    object cds_reservID_ORDERS_CLIENTS: TFloatField
      FieldName = 'ID_ORDERS_CLIENTS'
      Required = True
    end
    object cds_reservID_ORDERS: TFloatField
      FieldName = 'ID_ORDERS'
      Required = True
    end
    object cds_reservID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object cds_reservD_DATE: TDateTimeField
      FieldName = 'D_DATE'
      Required = True
    end
    object cds_reservON_DATE: TDateTimeField
      FieldName = 'ON_DATE'
    end
    object cds_reservSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object cds_reservN_TYPE: TIntegerField
      FieldName = 'N_TYPE'
      Required = True
    end
    object cds_reservN_TYPE_NAME: TStringField
      FieldName = 'N_TYPE_NAME'
      Size = 6
    end
    object cds_reservNICK: TStringField
      FieldName = 'NICK'
      Required = True
    end
    object cds_reservFIO: TStringField
      FieldName = 'FIO'
      Required = True
      Size = 255
    end
    object cds_reservSTATUS_NAME: TStringField
      FieldName = 'STATUS_NAME'
      Size = 8
    end
    object cds_reservKOL: TFloatField
      FieldName = 'KOL'
    end
    object cds_reservID_ORDERS_CLIENTS_: TFloatField
      FieldName = 'ID_ORDERS_CLIENTS_'
      Required = True
    end
    object cds_reservPRICE_ALL: TFloatField
      FieldName = 'PRICE_ALL'
    end
    object cds_reservID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object cds_reservBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object cds_reservID_USER: TIntegerField
      FieldName = 'ID_USER'
    end
    object cds_reservINS_FIO: TStringField
      FieldName = 'INS_FIO'
      Size = 255
    end
    object cds_reservORDER_SEQ: TFloatField
      FieldName = 'ORDER_SEQ'
    end
  end
  object ds_reserv: TOraDataSource
    DataSet = cds_reserv
    Left = 256
    Top = 256
  end
  object ds_reserv_list: TOraDataSource
    DataSet = cds_reserv_list
    Left = 328
    Top = 256
  end
  object cds_reserv_list: TOraQuery
    Session = sale_session
    SQL.Strings = (
      'begin'
      
        '  creator.sales_pkg.get_reserv(:ID_ORDERS_CLIENTS_, :ID_DEP_, :C' +
        'URSOR_);'
      'end;')
    MasterSource = ds_reserv
    MasterFields = 'ID_ORDERS_CLIENTS_'
    DetailFields = 'ID_ORDERS_CLIENTS'
    FetchRows = 20
    AutoCommit = False
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = cds_reserv_listBeforeOpen
    Left = 328
    Top = 208
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_ORDERS_CLIENTS_'
        ParamType = ptInput
        Value = 345.000000000000000000
      end
      item
        DataType = ftFloat
        Name = 'ID_DEP_'
        ParamType = ptInput
        Value = 121.000000000000000000
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object cds_reserv_listSTORE_TYPE: TIntegerField
      FieldName = 'STORE_TYPE'
    end
    object cds_reserv_listID_DEPARTMENTS: TIntegerField
      FieldName = 'ID_DEPARTMENTS'
    end
    object cds_reserv_listFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Size = 350
    end
    object cds_reserv_listF_NAME: TStringField
      FieldName = 'F_NAME'
      Size = 256
    end
    object cds_reserv_listF_NAME_RU: TStringField
      FieldName = 'F_NAME_RU'
      Size = 256
    end
    object cds_reserv_listF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Size = 50
    end
    object cds_reserv_listF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Size = 50
    end
    object cds_reserv_listCODE: TStringField
      FieldName = 'CODE'
      Size = 40
    end
    object cds_reserv_listLEN: TIntegerField
      FieldName = 'LEN'
    end
    object cds_reserv_listPACK: TIntegerField
      FieldName = 'PACK'
    end
    object cds_reserv_listCOLOUR: TStringField
      FieldName = 'COLOUR'
      Size = 50
    end
    object cds_reserv_listCOL_ID: TFloatField
      FieldName = 'COL_ID'
    end
    object cds_reserv_listFT_ID: TFloatField
      FieldName = 'FT_ID'
    end
    object cds_reserv_listFST_ID: TFloatField
      FieldName = 'FST_ID'
    end
    object cds_reserv_listFN_ID: TFloatField
      FieldName = 'FN_ID'
    end
    object cds_reserv_listS_ID: TFloatField
      FieldName = 'S_ID'
    end
    object cds_reserv_listC_ID: TFloatField
      FieldName = 'C_ID'
    end
    object cds_reserv_listH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 50
    end
    object cds_reserv_listH_NAME: TStringField
      FieldName = 'H_NAME'
      Size = 256
    end
    object cds_reserv_listS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Size = 150
    end
    object cds_reserv_listCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
    object cds_reserv_listN_ID: TFloatField
      FieldName = 'N_ID'
    end
    object cds_reserv_listPRICE_LIST: TFloatField
      FieldName = 'PRICE_LIST'
    end
    object cds_reserv_listRESERV: TFloatField
      FieldName = 'RESERV'
    end
    object cds_reserv_listITOGO: TFloatField
      FieldName = 'ITOGO'
    end
    object cds_reserv_listID_ORDERS_LIST: TFloatField
      FieldName = 'ID_ORDERS_LIST'
    end
    object cds_reserv_listQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object cds_reserv_listQUANTITY_PRICE: TFloatField
      FieldName = 'QUANTITY_PRICE'
    end
    object cds_reserv_listID_ORDERS_CLIENTS: TFloatField
      FieldName = 'ID_ORDERS_CLIENTS'
    end
    object cds_reserv_listPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object cds_reserv_listPRICE_PERCENT: TFloatField
      FieldName = 'PRICE_PERCENT'
    end
    object cds_reserv_listSPESIFICATION: TStringField
      FieldName = 'SPESIFICATION'
      Size = 4000
    end
    object cds_reserv_listSTORE_TYPE_NAME: TStringField
      FieldName = 'STORE_TYPE_NAME'
      Size = 30
    end
    object cds_reserv_listCOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 350
    end
    object cds_reserv_listOUR_CODE: TStringField
      FieldName = 'OUR_CODE'
      Size = 40
    end
    object cds_reserv_listSTORE: TFloatField
      FieldName = 'STORE'
    end
    object cds_reserv_listNOTUSE: TIntegerField
      FieldName = 'NOTUSE'
    end
  end
  object fr_reserv: TfrxDBDataset
    UserName = 'fr_reserv'
    CloseDataSource = False
    FieldAliases.Strings = (
      'INFO=INFO'
      'NN=NN'
      'ID_ORDERS_CLIENTS=ID_ORDERS_CLIENTS'
      'ID_ORDERS=ID_ORDERS'
      'ID_CLIENTS=ID_CLIENTS'
      'D_DATE=D_DATE'
      'ON_DATE=ON_DATE'
      'STATUS=STATUS'
      'N_TYPE=N_TYPE'
      'N_TYPE_NAME=N_TYPE_NAME'
      'NICK=NICK'
      'FIO=FIO'
      'STATUS_NAME=STATUS_NAME'
      'KOL=KOL'
      'ID_ORDERS_CLIENTS_=ID_ORDERS_CLIENTS_'
      'PRICE_ALL=PRICE_ALL'
      'ID_OFFICE=ID_OFFICE'
      'BRIEF=BRIEF'
      'ID_USER=ID_USER'
      'INS_FIO=INS_FIO'
      'ORDER_SEQ=ORDER_SEQ')
    DataSource = ds_reserv
    BCDToCurrency = False
    Left = 730
    Top = 216
  end
  object fr_reserv_list: TfrxDBDataset
    UserName = 'fr_reserv_list'
    CloseDataSource = True
    FieldAliases.Strings = (
      'STORE_TYPE=STORE_TYPE'
      'ID_DEPARTMENTS=ID_DEPARTMENTS'
      'FULL_NAME=FULL_NAME'
      'F_NAME=F_NAME'
      'F_NAME_RU=F_NAME_RU'
      'F_TYPE=F_TYPE'
      'F_SUB_TYPE=F_SUB_TYPE'
      'CODE=CODE'
      'LEN=LEN'
      'PACK=PACK'
      'COLOUR=COLOUR'
      'COL_ID=COL_ID'
      'FT_ID=FT_ID'
      'FST_ID=FST_ID'
      'FN_ID=FN_ID'
      'S_ID=S_ID'
      'C_ID=C_ID'
      'H_CODE=H_CODE'
      'H_NAME=H_NAME'
      'S_NAME_RU=S_NAME_RU'
      'COUNTRY=COUNTRY'
      'N_ID=N_ID'
      'PRICE_LIST=PRICE_LIST'
      'RESERV=RESERV'
      'ITOGO=ITOGO'
      'ID_ORDERS_LIST=ID_ORDERS_LIST'
      'QUANTITY=QUANTITY'
      'QUANTITY_PRICE=QUANTITY_PRICE'
      'ID_ORDERS_CLIENTS=ID_ORDERS_CLIENTS'
      'PRICE=PRICE'
      'PRICE_PERCENT=PRICE_PERCENT'
      'SPESIFICATION=SPESIFICATION'
      'STORE_TYPE_NAME=STORE_TYPE_NAME'
      'COMPILED_NAME_OTDEL=COMPILED_NAME_OTDEL'
      'OUR_CODE=OUR_CODE')
    DataSource = ds_reserv_list
    BCDToCurrency = False
    Left = 730
    Top = 277
  end
  object DS_TYPES: TOraDataSource
    DataSet = CDS_TYPES
    Left = 648
    Top = 136
  end
  object CDS_TYPES: TOraQuery
    Session = sale_session
    SQL.Strings = (
      'SELECT a.ft_id, a.f_type'
      '  FROM ft_view a'
      '  where a.id_departments = :id_dep')
    FetchAll = True
    AutoCommit = False
    FilterOptions = [foCaseInsensitive]
    Left = 584
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_dep'
      end>
    object CDS_TYPESFT_ID: TFloatField
      FieldName = 'FT_ID'
      Required = True
    end
    object CDS_TYPESF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Required = True
      Size = 50
    end
  end
  object fst_view: TOraQuery
    SQLDelete.Strings = (
      'delete from buttons_set_sale '
      '  where ft_id = :fst_id and id_dep = :id_departments')
    SQLUpdate.Strings = (
      'begin'
      '  if (:nbutton > 0) then'
      '    update buttons_set_sale set nbutton= :nbutton'
      '    where ft_id = :fst_id and id_dep = :id_departments;'
      '    if sql%notfound then'
      
        '       insert into buttons_set_sale values (:FST_ID,:id_departme' +
        'nts,:nbutton,1);'
      '    end if;'
      '  else'
      '    delete from buttons_set_sale '
      '      where ft_id = :fst_id and id_dep = :id_departments;'
      '  end if;'
      '  commit;'
      'end;')
    SQLRefresh.Strings = (
      'SELECT a.fst_id, a.f_sub_type, a.id_departments, b.nbutton'
      '      FROM fst_view a, buttons_set_sale b'
      '         WHERE a.id_departments = :id_departments'
      '              and a.id_departments = b.id_dep(+)'
      '              and a.fst_id = b.ft_id(+)'
      '              and a.fst_id = :fst_id'
      'order by nbutton, f_sub_type')
    Session = sale_session
    SQL.Strings = (
      'begin'
      '  store_pkg.select_subtypes_sale(:ID_DEP_, 1, :CURSOR_);'
      'end;')
    FetchAll = True
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    AfterPost = fst_viewAfterPost
    Left = 183
    Top = 347
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEP_'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object fst_viewFST_ID: TFloatField
      FieldName = 'FST_ID'
      Required = True
    end
    object fst_viewF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Required = True
      Size = 50
    end
    object fst_viewID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
      Required = True
    end
    object fst_viewNBUTTON: TIntegerField
      FieldName = 'NBUTTON'
    end
  end
  object fst_view_ds: TDataSource
    DataSet = fst_view
    Left = 183
    Top = 403
  end
  object ft_view: TOraQuery
    SQLDelete.Strings = (
      'delete from buttons_set_sale '
      '  where ft_id = :ft_id and id_dep = :id_departments')
    SQLUpdate.Strings = (
      'begin'
      '  if (:nbutton > 0) then'
      '    update buttons_set_sale set nbutton= :nbutton'
      '    where ft_id = :ft_id and id_dep = :id_departments;'
      '    if sql%notfound then'
      
        '       insert into buttons_set_sale values (:FT_ID,:id_departmen' +
        'ts,:nbutton,0);'
      '    end if;'
      '  else'
      '    delete from buttons_set_sale '
      '      where ft_id = :ft_id and id_dep = :id_departments;'
      '  end if;'
      '  commit;'
      'end;')
    SQLRefresh.Strings = (
      'SELECT a.ft_id, a.f_type, a.id_departments, b.nbutton'
      '      FROM ft_view a, buttons_set_sale b'
      '         WHERE a.id_departments = :id_departments'
      '              and a.id_departments = b.id_dep(+)'
      '              and a.ft_id = b.ft_id(+)'
      '              and a.ft_id = :ft_id'
      'order by nbutton, f_type')
    Session = sale_session
    SQL.Strings = (
      'begin'
      '  store_pkg.select_subtypes_sale(:ID_DEP_, 0, :CURSOR_);'
      'end;')
    FetchAll = True
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    AfterPost = ft_viewAfterPost
    Left = 111
    Top = 347
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEP_'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object ft_viewFT_ID: TFloatField
      FieldName = 'FT_ID'
      Required = True
    end
    object ft_viewF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Required = True
      Size = 50
    end
    object ft_viewID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
      Required = True
    end
    object ft_viewNBUTTON: TIntegerField
      FieldName = 'NBUTTON'
    end
  end
  object ft_view_ds: TDataSource
    DataSet = ft_view
    Left = 111
    Top = 403
  end
  object CDS_SALES: TOraQuery
    SQLUpdate.Strings = (
      'begin'
      'if (:N_ID > 0) then'
      '  if :price_percent=0 or :price_percent is NULL THEN '
      '    :PRICE := :PRICE;'
      '  else'
      
        '    :PRICE := :price_list + round((:price_list * :price_percent ' +
        '/ 100),2);'
      '  end if; '
      ''
      '  if :SPEC_PRICE = 1 then'
      '    :PRICE := :price_list;'
      '    :price_percent := NULL;'
      '  end if;'
      ''
      '  delete from STORE_DOC_DATA_TEMP where n_id = :n_id;'
      '  if (:QUANTITY <> 0 and :PRICE <> 0 and :price_list <> 0) then'
      
        '    INSERT INTO STORE_DOC_DATA_TEMP (ID_DOC_DATA, N_ID, QUANTITY' +
        ', store_type, PRICE, PRICE_LIST) '
      
        '    VALUES (STORE_DOC_DATA_TEMP_SET_ID.NEXTVAL, :N_ID, :QUANTITY' +
        ', :STORE_TYPE, :PRICE, :PRICE_LIST)'
      '    RETURNING ID_DOC_DATA INTO :added;'
      '  end if;'
      'end if;'
      'end;')
    SQLRefresh.Strings = (
      
        'select a.QUANTITY, a.PRICE_LIST, a.QUANTITY_NOW, a.added, round(' +
        'a.price_percent,1) as price_percent,'
      
        'case WHEN a.added = 0 or a.added is null THEN (a.price_list + ro' +
        'und((a.price_list * a.price_percent / 100),2)) ELSE price END pr' +
        'ice,'
      
        'case WHEN a.added = 0 or a.added is null THEN (a.price_list + ro' +
        'und((a.price_list * a.price_percent / 100),2)) * QUANTITY ELSE Q' +
        'UANTITY_PRICE END QUANTITY_PRICE'
      'from store_docdatatemp_view a'
      
        'WHERE a.STORE_TYPE = :STORE_TYPE and a.N_ID = :N_ID and id_offic' +
        'e = const_office')
    Session = sale_session
    SQL.Strings = (
      'begin'
      
        '  sales_pkg.get_sklad_sale(:ID_DEP_, :PRICE_PART_, :v_office, :C' +
        'URSOR_);'
      'end;')
    FetchAll = True
    AutoCommit = False
    RefreshOptions = [roAfterUpdate]
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = CDS_SALESBeforeOpen
    AfterPost = CDS_SALESAfterPost
    BeforeRefresh = CDS_SALESBeforeOpen
    Left = 512
    Top = 64
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEP_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PRICE_PART_'
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
    object CDS_SALESN_ID: TFloatField
      FieldName = 'N_ID'
    end
    object CDS_SALESCODE: TStringField
      FieldName = 'CODE'
      Size = 40
    end
    object CDS_SALESH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 50
    end
    object CDS_SALESF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Size = 50
    end
    object CDS_SALESF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Size = 50
    end
    object CDS_SALESFT_ID: TFloatField
      FieldName = 'FT_ID'
    end
    object CDS_SALESFST_ID: TFloatField
      FieldName = 'FST_ID'
    end
    object CDS_SALESFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Size = 372
    end
    object CDS_SALESSPESIFICATION: TStringField
      FieldName = 'SPESIFICATION'
      Size = 4000
    end
    object CDS_SALESQUANTITY_NOW: TFloatField
      FieldName = 'QUANTITY_NOW'
    end
    object CDS_SALESSTORE_TYPE_NAME: TStringField
      FieldName = 'STORE_TYPE_NAME'
      Size = 30
    end
    object CDS_SALESSTORE_TYPE: TFloatField
      FieldName = 'STORE_TYPE'
    end
    object CDS_SALESHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
    end
    object CDS_SALESHOL_SUB_TYPE: TStringField
      FieldName = 'HOL_SUB_TYPE'
      Size = 50
    end
    object CDS_SALESPRICE_LIST: TFloatField
      FieldName = 'PRICE_LIST'
    end
    object CDS_SALESQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object CDS_SALESADDED: TFloatField
      FieldName = 'ADDED'
    end
    object CDS_SALESID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
    end
    object CDS_SALESCOLOUR: TStringField
      FieldName = 'COLOUR'
      Size = 50
    end
    object CDS_SALESCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
    object CDS_SALESRESERV: TFloatField
      FieldName = 'RESERV'
    end
    object CDS_SALESPRICE_DIFFERENCE: TFloatField
      FieldName = 'PRICE_DIFFERENCE'
    end
    object CDS_SALESSUM_PRICE_DIFFERENCE: TFloatField
      FieldName = 'SUM_PRICE_DIFFERENCE'
    end
    object CDS_SALESPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object CDS_SALESQUANTITY_PRICE: TFloatField
      FieldName = 'QUANTITY_PRICE'
    end
    object CDS_SALESPRICE_PERCENT: TFloatField
      FieldName = 'PRICE_PERCENT'
    end
    object CDS_SALESNBUTTON: TFloatField
      FieldName = 'NBUTTON'
    end
    object CDS_SALESBUT_NAME: TStringField
      FieldName = 'BUT_NAME'
      FixedChar = True
      Size = 3
    end
    object CDS_SALESCOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 350
    end
    object CDS_SALESOUR_CODE: TStringField
      FieldName = 'OUR_CODE'
      Size = 40
    end
    object CDS_SALESIS_PHOTO: TFloatField
      FieldName = 'IS_PHOTO'
    end
    object CDS_SALESPHOTO: TStringField
      FieldName = 'PHOTO'
      Size = 30
    end
    object CDS_SALESID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object CDS_SALESBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object CDS_SALESNOTUSE: TIntegerField
      FieldName = 'NOTUSE'
    end
    object CDS_SALESSPEC_PRICE: TIntegerField
      FieldName = 'SPEC_PRICE'
    end
  end
  object DS_SALES: TOraDataSource
    DataSet = CDS_SALES
    Left = 512
    Top = 120
  end
  object cds_Order: TOraQuery
    LocalUpdate = True
    SQL.Strings = (
      'select'
      
        'a.ID_ORDERS_CLIENTS, o.date_truck as  ON_DATE, c.FIO, o.id_order' +
        's'
      'from'
      'ORDERS_CLIENTS a, clients c, orders o'
      'where'
      '/*Filter*/ 1=1'
      'and a.STATUS is null'
      'and a.active = 1'
      'and a.ID_CLIENTS = :ID_CLIENTS'
      'and a.id_clients = c.id_clients'
      'and a.id_orders = o.id_orders'
      'order by o.date_truck')
    Left = 272
    Top = 320
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_CLIENTS'
        ParamType = ptInput
        Value = 161
      end>
    object cds_OrderID_ORDERS_CLIENTS: TFloatField
      FieldName = 'ID_ORDERS_CLIENTS'
      Required = True
    end
    object cds_OrderON_DATE: TDateTimeField
      FieldName = 'ON_DATE'
    end
    object cds_OrderFIO: TStringField
      FieldName = 'FIO'
      Required = True
      Size = 255
    end
    object cds_OrderID_ORDERS: TFloatField
      FieldName = 'ID_ORDERS'
      Required = True
    end
  end
  object ds_Order: TOraDataSource
    DataSet = cds_Order
    Left = 272
    Top = 376
  end
end
