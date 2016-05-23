object DM: TDM
  OldCreateOrder = False
  Height = 574
  Width = 793
  object STAR_DB: TOraSession
    Options.Direct = True
    Username = 'creator'
    Password = '123456'
    Server = 'KLEPOV:1521:STARNEW'
    AutoCommit = False
    LoginPrompt = False
    AfterConnect = STAR_DBAfterConnect
    BeforeConnect = STAR_DBBeforeConnect
    Left = 16
    Top = 16
  end
  object PPL_Index: TOraQuery
    SQLRefresh.Strings = (
      
        'select a.PRIME_COAST_COEFFICIENT, a.PROFIT_COEFFITIENT, a.EXCHAN' +
        'GE_RATE,'
      '        a.FINISHED, a.USE_CUST_COEF, a.ID_DEPARTMENTS,'
      '        a.inv_id, a.inv_id2, a.inv_id3, a.inv_id4, a.PACK_ID'
      '        , a.ppli_id_old'
      '    from PREPARE_PRICE_LIST_INDEX a'
      '    where  a.ppli_id = :old_ppli_id')
    Session = STAR_DB
    SQL.Strings = (
      'begin'
      '  price_pkg.get_prices(:ID_DEPT_, :v_office, :CURSOR_);'
      'end;')
    FetchAll = True
    BeforeOpen = PPL_IndexBeforeOpen
    BeforeRefresh = PPL_IndexBeforeOpen
    Left = 96
    Top = 152
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEPT_'
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
    object PPL_IndexPPLI_ID: TFloatField
      FieldName = 'PPLI_ID'
      Required = True
    end
    object PPL_IndexPPL_COMMENT: TStringField
      FieldName = 'PPL_COMMENT'
      Size = 100
    end
    object PPL_IndexPPL_DATE: TDateTimeField
      FieldName = 'PPL_DATE'
      Required = True
    end
    object PPL_IndexPRIME_COAST_COEFFICIENT: TFloatField
      FieldName = 'PRIME_COAST_COEFFICIENT'
    end
    object PPL_IndexPROFIT_COEFFITIENT: TFloatField
      FieldName = 'PROFIT_COEFFITIENT'
    end
    object PPL_IndexEXCHANGE_RATE: TFloatField
      FieldName = 'EXCHANGE_RATE'
      Required = True
      DisplayFormat = '0.00'
    end
    object PPL_IndexFINISHED: TIntegerField
      FieldName = 'FINISHED'
      Required = True
    end
    object PPL_IndexUSE_CUST_COEF: TIntegerField
      FieldName = 'USE_CUST_COEF'
      Required = True
    end
    object PPL_IndexID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
    end
    object PPL_IndexINV_ID: TFloatField
      FieldName = 'INV_ID'
    end
    object PPL_IndexINV_DATE: TDateTimeField
      FieldName = 'INV_DATE'
    end
    object PPL_IndexSENDED_TO_WAREHOUSE: TIntegerField
      FieldName = 'SENDED_TO_WAREHOUSE'
    end
    object PPL_IndexS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Required = True
      Size = 150
    end
    object PPL_IndexIS_MINUS: TFloatField
      FieldName = 'IS_MINUS'
    end
    object PPL_IndexCOMMENTS: TStringField
      FieldName = 'COMMENTS'
      Size = 1024
    end
    object PPL_IndexINV_ID2: TFloatField
      FieldName = 'INV_ID2'
    end
    object PPL_IndexINV_ID3: TFloatField
      FieldName = 'INV_ID3'
    end
    object PPL_IndexINV_ID4: TFloatField
      FieldName = 'INV_ID4'
    end
    object PPL_IndexPACK_ID: TIntegerField
      FieldName = 'PACK_ID'
    end
    object PPL_IndexALL_INV: TStringField
      FieldName = 'ALL_INV'
      Size = 166
    end
    object PPL_IndexPPLI_ID_OLD: TFloatField
      FieldName = 'PPLI_ID_OLD'
    end
  end
  object PPL_Index_DS: TOraDataSource
    DataSet = PPL_Index
    Left = 96
    Top = 200
  end
  object CreatePPLIndex: TOraStoredProc
    StoredProcName = 'PRICE_PKG.CREATE_PPL_INDEX'
    Session = STAR_DB
    SQL.Strings = (
      'begin'
      
        '  PRICE_PKG.CREATE_PPL_INDEX(:IN_PPL_COMMENT, :IN_PRIME_COAST_CO' +
        'EFFITIENT, :IN_PROFIT_COEFFITIENT, :IN_EXCHANGE_RATE, :IN_USE_CU' +
        'ST_COEF, :IN_ID_DEPARTMENTS, :OUT_PPLI_ID, :OUT_SUCCESS, :MESS_)' +
        ';'
      'end;')
    Left = 176
    Top = 152
    ParamData = <
      item
        DataType = ftString
        Name = 'IN_PPL_COMMENT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_PRIME_COAST_COEFFITIENT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_PROFIT_COEFFITIENT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_EXCHANGE_RATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_USE_CUST_COEF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_ID_DEPARTMENTS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OUT_PPLI_ID'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'OUT_SUCCESS'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'MESS_'
        ParamType = ptOutput
      end>
  end
  object PPL_DS: TOraDataSource
    DataSet = PPL
    Left = 264
    Top = 200
  end
  object LoadInvoice: TOraStoredProc
    StoredProcName = 'PRICE_PKG.LOAD_INVOICE'
    Session = STAR_DB
    SQL.Strings = (
      'begin'
      '  PRICE_PKG.LOAD_INVOICE(:IN_INV_ID, :IN_PPLI_ID, :IN_IPP_ID);'
      'end;')
    Left = 344
    Top = 152
    ParamData = <
      item
        DataType = ftFloat
        Name = 'IN_INV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_PPLI_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_IPP_ID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'PRICE_PKG.LOAD_INVOICE:0'
  end
  object ForceQ: TOraQuery
    Session = STAR_DB
    FetchAll = True
    Left = 96
    Top = 312
  end
  object LoadStock: TOraStoredProc
    StoredProcName = 'PRICE_PKG.LOAD_STOCK2'
    Session = STAR_DB
    SQL.Strings = (
      'begin'
      
        '  PRICE_PKG.LOAD_STOCK2(:IN_PPLI_ID, :IN_ID_DEPARTMENTS, :IN_FT,' +
        ' :IN_FST, :IN_SUP, :IN_ID_STORE_TYPE);'
      'end;')
    Left = 432
    Top = 152
    ParamData = <
      item
        DataType = ftFloat
        Name = 'IN_PPLI_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_ID_DEPARTMENTS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IN_FT'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IN_FST'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IN_SUP'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IN_ID_STORE_TYPE'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'PRICE_PKG.LOAD_STOCK2:0'
  end
  object UpdatePPL: TOraStoredProc
    StoredProcName = 'UPDATE_PPL'
    Session = STAR_DB
    SQL.Strings = (
      'begin'
      '  UPDATE_PPL(:IN_PPLI_ID);'
      'end;')
    Left = 520
    Top = 152
    ParamData = <
      item
        DataType = ftFloat
        Name = 'IN_PPLI_ID'
        ParamType = ptInput
      end>
  end
  object PriceList: TOraQuery
    SQLUpdate.Strings = (
      'begin'
      'if (:STICKERS <> :OLD_STICKERS) then'
      
        '  update STICKERS_TO_PRINT set STICKERS = :STICKERS where N_ID =' +
        ' :N_ID;'
      '  if sql%notfound then'
      
        '    insert into STICKERS_TO_PRINT values(:N_ID, :STICKERS, NULL)' +
        ';'
      '  end if; '
      'end if;'
      'end;')
    SQLRefresh.Strings = (
      
        'select DECODE(STP.STICKERS, NULL, 0, STP.STICKERS) STICKERS, p.s' +
        'pec_price, p.best_price'
      'from STICKERS_TO_PRINT STP, price_list p'
      'where STP.N_ID = :N_ID and STP.N_ID = p.N_ID')
    Session = STAR_DB
    SQL.Strings = (
      'begin'
      
        '  creator.PRICE_PKG.GET_PRICE(:ID_DEPT, :VID_, :V_OFFICE, :CURSO' +
        'R_);'
      'end;')
    FetchAll = True
    RefreshOptions = [roAfterUpdate]
    Options.StrictUpdate = False
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = PriceListBeforeOpen
    BeforeRefresh = PriceListBeforeOpen
    Left = 88
    Top = 16
    ParamData = <
      item
        Name = 'ID_DEPT'
        ParamType = ptInput
        Value = Null
        ExtDataType = 107
      end
      item
        Name = 'VID_'
        ParamType = ptInput
        Value = Null
        ExtDataType = 107
      end
      item
        DataType = ftUnknown
        Name = 'V_OFFICE'
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        Value = 'Object'
      end>
    object PriceListD_CHECKED: TFloatField
      FieldName = 'D_CHECKED'
    end
    object PriceListN_ID: TFloatField
      FieldName = 'N_ID'
    end
    object PriceListPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object PriceListPRICE_DATE: TDateTimeField
      FieldName = 'PRICE_DATE'
    end
    object PriceListCOMPILED_NAME: TStringField
      FieldName = 'COMPILED_NAME'
      Size = 299
    end
    object PriceListFT_ID: TFloatField
      FieldName = 'FT_ID'
    end
    object PriceListF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Size = 50
    end
    object PriceListFST_ID: TFloatField
      FieldName = 'FST_ID'
    end
    object PriceListF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Size = 50
    end
    object PriceListLEN: TIntegerField
      FieldName = 'LEN'
    end
    object PriceListS_ID: TFloatField
      FieldName = 'S_ID'
    end
    object PriceListS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Size = 150
    end
    object PriceListCOL_ID: TFloatField
      FieldName = 'COL_ID'
    end
    object PriceListCOLOUR: TStringField
      FieldName = 'COLOUR'
      Size = 50
    end
    object PriceListCODE: TStringField
      FieldName = 'CODE'
      Size = 40
    end
    object PriceListBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
      Size = 40
    end
    object PriceListC_ID: TFloatField
      FieldName = 'C_ID'
    end
    object PriceListCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
    object PriceListID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
    end
    object PriceListDEPT: TStringField
      FieldName = 'DEPT'
      Size = 100
    end
    object PriceListFN_ID: TFloatField
      FieldName = 'FN_ID'
    end
    object PriceListF_NAME_RU: TStringField
      FieldName = 'F_NAME_RU'
      Size = 256
    end
    object PriceListQUANTITY: TFloatField
      FieldName = 'QUANTITY'
    end
    object PriceListPACK: TIntegerField
      FieldName = 'PACK'
    end
    object PriceListH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 80
    end
    object PriceListSTICKERS: TFloatField
      FieldName = 'STICKERS'
    end
    object PriceListGREAT_NAME: TStringField
      FieldName = 'GREAT_NAME'
      Size = 350
    end
    object PriceListGREAT_NAME_F: TStringField
      FieldName = 'GREAT_NAME_F'
      Size = 372
    end
    object PriceListIS_PHOTO: TFloatField
      FieldName = 'IS_PHOTO'
    end
    object PriceListPHOTO: TStringField
      FieldName = 'PHOTO'
      Size = 30
    end
    object PriceListCOMPILED_NAME_POT: TStringField
      FieldName = 'COMPILED_NAME_POT'
      Size = 551
    end
    object PriceListPICS: TStringField
      FieldName = 'PICS'
      Size = 4000
    end
    object PriceListORD: TFloatField
      FieldName = 'ORD'
    end
    object PriceListID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object PriceListBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object PriceListSPEC_PRICE: TIntegerField
      FieldName = 'SPEC_PRICE'
    end
    object PriceListBEST_PRICE: TIntegerField
      FieldName = 'BEST_PRICE'
    end
  end
  object PriceList_DS: TOraDataSource
    DataSet = PriceList
    Left = 88
    Top = 64
  end
  object PPL: TOraQuery
    SQLUpdate.Strings = (
      'begin'
      '  if :OLD_PROFIT_COEFFITIENT = :PROFIT_COEFFITIENT then'
      '     UPDATE PREPARE_PRICE_LIST '
      
        '       SET FINAL_PRICE = :FINAL_PRICE, spec_price = :spec_price,' +
        ' best_price = :best_price, date_change=sysdate '
      '       WHERE PPL_ID = :OLD_PPL_ID;'
      '  else'
      '     UPDATE PREPARE_PRICE_LIST '
      
        '       SET FINAL_PRICE = round((:PRICE_PCC*:PROFIT_COEFFITIENT),' +
        '2), PRICE_PCC_PC = round((:PRICE_PCC*:PROFIT_COEFFITIENT),2), sp' +
        'ec_price = :spec_price, best_price = :best_price, PROFIT_COEFFIT' +
        'IENT = :PROFIT_COEFFITIENT, date_change=sysdate '
      '       WHERE PPL_ID = :OLD_PPL_ID;'
      '  end if;'
      ''
      '  if :client_price is not null then'
      '    update ppl_client_price set spec_price = :FINAL_PRICE '
      
        '    where PPLI_ID = :OLD_PPLI_ID and n_id =:OLD_n_id and id_clie' +
        'nts = :OLD_id_clients;'
      '  end if;'
      'end;')
    SQLRefresh.Strings = (
      'select a.ppli_id, a.ppl_id, a.coming_date, a.invoice_amount'
      
        '       --, nvl(pd.total_quantity,0) - nvl(pd.left_quantity,0) - ' +
        'nvl(d.DISTRIBUTED_NUMBER_to_zhirar,0) as DISTRIBUTED_NUMBER'
      
        '       --, nvl(pd.left_quantity,0) +  nvl(d.DISTRIBUTED_NUMBER_t' +
        'o_zhirar,0) as obshak'
      ''
      
        '--       , case when DISTRIBUTED_NUMBER_forOrder > nvl(pd.total_' +
        'quantity,0)-nvl(pd.left_quantity,0)-nvl(d.DISTRIBUTED_NUMBER_to_' +
        'zhirar,0) then DISTRIBUTED_NUMBER_forOrder else nvl(pd.total_qua' +
        'ntity,0) - nvl(pd.left_quantity,0) - nvl(d.DISTRIBUTED_NUMBER_to' +
        '_zhirar,0) end as DISTRIBUTED_NUMBER'
      
        '--       , case when DISTRIBUTED_NUMBER_forOrder > nvl(pd.total_' +
        'quantity,0)-nvl(pd.left_quantity,0)-nvl(d.DISTRIBUTED_NUMBER_to_' +
        'zhirar,0) then case when (nvl(pd.total_quantity,0) - DISTRIBUTED' +
        '_NUMBER_forOrder) < 0 then 0 else (nvl(pd.total_quantity,0) - DI' +
        'STRIBUTED_NUMBER_forOrder) end'
      
        '--           else nvl(pd.left_quantity,0) +  nvl(d.DISTRIBUTED_N' +
        'UMBER_to_zhirar,0) end obshak'
      ''
      
        '       , a.stock_amount, a.left_amount, a.given_amount, a.hol_pr' +
        'ice, a.ruble_price'
      '       , case'
      '          when :OLD_PPLI_ID_old = 0 then a.last_price'
      '          else'
      '            case'
      
        '              when z.final_price is null then case when nvl(stoc' +
        'k_amount,0) = 0 then null else a.final_price end'
      '              else z.final_price'
      '            end'
      '          end last_price'
      '       , a.price_pcc, a.price_pcc_pc, a.n_id'
      '       , a.final_price'
      
        '       , a.inv_total_sum, a.stok_total_sum, a.inv_total_profit, ' +
        'a.came_type, a.nid_rownum, a.f_sub_type'
      
        '       , a.compiled_name_otdel, a.total_sum, a.cust_coef, a.h_co' +
        'de, a.col, a.rus_marks, a.INVOICE_DATA_ID, a.compiled_name_pot, ' +
        'a.f_type'
      
        '       , decode(a.hol_type,'#39'RO'#39','#39'1 '#1056#1086#1079#1072' '#1075#1086#1083#1083#1072#1085#1076#1080#1103#39', '#39'EC'#39','#39'2 '#1056#1086#1079#1072 +
        ' '#1101#1082#1074#1072#1076#1086#1088#39', '#39'CH'#39','#39'3 '#1061#1088#1080#1079#1072#1085#1090#1077#1084#1072#39', '#39'GR'#39','#39'4 '#1047#1077#1083#1077#1085#1100#39', '#39'CA'#39','#39'5 '#1061#1088#1080#1079#1072#1085#1090 +
        #1077#1084#1072#39', '#39'LI'#39','#39'6 '#1051#1080#1083#1080#1103#39', '#39'OT'#39','#39'7 '#1044#1088#1091#1075#1086#1077#39', '#39#39' ) as hol_type'
      
        '       , case when nid_rownum=1 then a.stok_total_profit else 0 ' +
        'end stok_total_profit'
      
        '       , case when nid_rownum=1 then a.inv_total_profit+a.stok_t' +
        'otal_profit else a.inv_total_profit end total_profit'
      
        '       , a.country, a.colour, to_char(nvl(a.bar_code,a.code)) as' +
        ' bar_code'
      
        '       , a.ft_id, a.fst_id, a.col_id, a.len, a.type_subtype, a.s' +
        'pec_price, a.best_price, a.discount'
      '       , a.inv_id, a.inv_id2, a.inv_id3, a.inv_id4'
      
        '       , case when a.inv_total_profit > 0 then 1 else 0 end as l' +
        'oss_profit'
      
        '       , case when trunc(a.RUBLE_PRICE) = trunc(a.FINAL_PRICE) a' +
        'nd const_office = 1 then 1 else 0 end as eq_price'
      '       , a.id_clients, client_price'
      '       , c.nick'
      '       , nvl(spec,0) as SPEC'
      '       , inv.TO_CLIENT'
      '       , decode(c.nick,'#39'M URLO'#39',1,0) as paint_super'
      '       , PROFIT_COEFFITIENT'
      '    from ('
      
        '        SELECT a.ppli_id, ppl_id, coming_date, invoice_amount, c' +
        'ase when STOCK_AMOUNT < 0 then 0 else stock_amount end STOCK_AMO' +
        'UNT, left_amount, given_amount, hol_price, ruble_price, last_pri' +
        'ce'
      
        '          , price_pcc, price_pcc_pc, a.n_id, final_price, inv_to' +
        'tal_sum, stok_total_sum'
      
        '          , (final_price - price_pcc * curr_cust_coef) * (invoic' +
        'e_amount - nvl(c.total_client_quantity,0)) as inv_total_profit'
      '          , stok_total_profit'
      
        '          , compiled_name_otdel, (total_sum - nvl(final_price*c.' +
        'total_client_quantity,0)) as total_sum, cust_coef, h_code, nvl(C' +
        'OL,0) as col'
      
        '          , rus_marks, INVOICE_DATA_ID, compiled_name_pot, f_typ' +
        'e, hol_type, f_sub_type'
      
        '          , case when INVOICE_DATA_ID is null then '#39#1057#1082#1083#1072#1076#39' else ' +
        #39#1048#1085#1074#1086#1081#1089#1099#39' end came_type'
      
        '          , row_number() over(partition by a.n_id order by ppl_i' +
        'd) as nid_rownum'
      
        '          , country, colour, bar_code, code, ft_id, fst_id, col_' +
        'id, len, type_subtype, a.spec_price, best_price, discount'
      '          , inv_id, inv_id2, inv_id3, inv_id4'
      
        '          , null id_clients, null client_price, null as client_q' +
        'uantity, c.total_client_quantity'
      '          , instr(remarks,'#39'"!"'#39') as spec'
      '          , a.PROFIT_COEFFITIENT'
      '        FROM ppl_view a'
      
        '        left outer join (select b.n_id, sum(b.quantity) as total' +
        '_client_quantity from ppl_client_price b where b.PPLI_ID = :OLD_' +
        'PPLI_ID group by b.n_id) c on c.n_id = a.n_id'
      '          WHERE a.PPL_ID = :OLD_PPL_ID'
      
        '           and not exists (select 1 from ppl_client_price b wher' +
        'e b.PPLI_ID = a.PPLI_ID and b.n_id = a.n_id and b.INVOICE_DATA_I' +
        'D = a.INVOICE_DATA_ID)'
      ''
      '        union all'
      ''
      
        '        SELECT a.ppli_id, ppl_id, coming_date, invoice_amount, 0' +
        ' as stock_amount, left_amount, given_amount, hol_price, ruble_pr' +
        'ice, last_price'
      
        '          , price_pcc, price_pcc_pc, a.n_id, b.spec_price as fin' +
        'al_price, inv_total_sum, stok_total_sum'
      
        '          , (b.spec_price - price_pcc * curr_cust_coef) * b.quan' +
        'tity as inv_total_profit'
      '          , 0 as stok_total_profit'
      
        '          , compiled_name_otdel, nvl(b.spec_price*b.quantity, to' +
        'tal_sum) as total_sum'
      '          , cust_coef, h_code, nvl(COL,0) as col'
      
        '          , rus_marks, a.INVOICE_DATA_ID, compiled_name_pot, f_t' +
        'ype, hol_type, f_sub_type'
      
        '          , case when a.INVOICE_DATA_ID is null then '#39#1057#1082#1083#1072#1076#39' els' +
        'e '#39#1048#1085#1074#1086#1081#1089#1099#39' end came_type'
      
        '          , row_number() over(partition by a.n_id order by ppl_i' +
        'd) as nid_rownum'
      
        '          , country, colour, bar_code, code, ft_id, fst_id, col_' +
        'id, len, type_subtype, a.spec_price, best_price, discount'
      '          , inv_id, inv_id2, inv_id3, inv_id4'
      
        '          , b.id_clients, b.spec_price as client_price, null as ' +
        'client_quantity, null as total_client_quantity'
      '          , instr(remarks,'#39'"!"'#39') as spec'
      '          , a.PROFIT_COEFFITIENT'
      '        FROM ppl_view a'
      
        '        inner join ppl_client_price b on b.PPLI_ID = a.PPLI_ID a' +
        'nd b.n_id = a.n_id and b.INVOICE_DATA_ID = a.INVOICE_DATA_ID'
      '          WHERE a.PPL_ID = :OLD_PPL_ID'
      ''
      '    ) a'
      '/*'
      '    left outer join'
      '      ('
      
        '        select sum(left_quantity) as left_quantity, sum(total_qu' +
        'antity) as total_quantity, n_id'
      '        from prepare_distribution pd, PREPARE_PRICE_LIST_INDEX p'
      
        '        where p.ppli_id = :OLD_PPLI_ID and pd.DIST_IND_ID in (se' +
        'lect d.DIST_IND_ID from distributions_invoices d where d.inv_id ' +
        'in (p.inv_id, p.inv_id2, p.inv_id3, p.inv_id4) or d.inv_id in (s' +
        'elect z.inv_id from invoice_register z where z.ipp_id = p.PACK_I' +
        'D ) )'
      '          and pd.id_store_main is null'
      '          group by pd.n_id'
      '      ) pd on pd.n_id = a.n_id'
      ''
      '    left outer join'
      '      ('
      
        '        select c.d_n_id, nvl(SUM(c.DQ),0) as DISTRIBUTED_NUMBER_' +
        'to_zhirar'
      '        from DISTRIBUTION_VIEW c, PREPARE_PRICE_LIST_INDEX p'
      
        '          where p.ppli_id = :OLD_PPLI_ID and c.DIST_IND_ID in (s' +
        'elect d.DIST_IND_ID from distributions_invoices d where d.inv_id' +
        ' in (p.inv_id, p.inv_id2, p.inv_id3, p.inv_id4) or d.inv_id in (' +
        'select z.inv_id from invoice_register z where z.ipp_id = p.PACK_' +
        'ID ) )'
      
        '           and c.id_clients in (const_dir,const_main) and c.INVO' +
        'ICE_DATA_ID is not null and c.id_store_main is null'
      '          group by c.d_n_id'
      '        union all'
      
        '        select c.n_id as d_n_id, sum(c.units) as DISTRIBUTED_NUM' +
        'BER_to_zhirar'
      '        from invoice_data c, PREPARE_PRICE_LIST_INDEX p'
      
        '          where p.ppli_id = :OLD_PPLI_ID and (c.inv_id in (p.inv' +
        '_id, p.inv_id2, p.inv_id3, p.inv_id4) or c.inv_id in (select z.i' +
        'nv_id from invoice_register z where z.ipp_id = p.PACK_ID ) )'
      '            and c.to_client = '#39'MAIN'#39
      '          group by c.n_id'
      '      ) d on d.d_n_id = a.n_id'
      ''
      '    left outer join'
      '      ('
      
        '        select c.o_n_id, nvl(SUM(c.DQ),0) as DISTRIBUTED_NUMBER_' +
        'forOrder'
      '        from DISTRIBUTION_VIEW c, PREPARE_PRICE_LIST_INDEX p'
      
        '          where p.ppli_id = :OLD_PPLI_ID and c.DIST_IND_ID in (s' +
        'elect d.DIST_IND_ID from distributions_invoices d where d.inv_id' +
        ' in (p.inv_id, p.inv_id2, p.inv_id3, p.inv_id4) or d.inv_id in (' +
        'select z.inv_id from invoice_register z where z.ipp_id = p.PACK_' +
        'ID ) )'
      
        '           and c.INVOICE_DATA_ID is not null and c.id_store_main' +
        ' is null'
      '          group by c.o_n_id'
      '      ) for_order on for_order.o_n_id = a.n_id'
      '*/'
      '    left outer join'
      '      ('
      
        '        select z.n_id, max(nvl(p.SPEC_PRICE, z.final_price)) as ' +
        'final_price'
      '          from PREPARE_PRICE_LIST z'
      
        '            left outer join invoice_data d on d.INVOICE_DATA_ID ' +
        '= z.INVOICE_DATA_ID'
      
        '            left outer join ppl_client_price p on p.ppli_id = :O' +
        'LD_PPLI_ID_old and p.INVOICE_DATA_ID = z.INVOICE_DATA_ID'
      
        '          where z.ppli_id = :OLD_PPLI_ID_old and z.ppli_id <> :O' +
        'LD_PPLI_ID --and d.TO_CLIENT is null'
      '          group by z.n_id'
      '      ) z on z.n_id = a.n_id'
      ''
      '    left outer join clients c on c.id_clients = a.id_clients'
      
        '    left outer join invoice_data inv on inv.INVOICE_DATA_ID = a.' +
        'INVOICE_DATA_ID')
    Session = STAR_DB
    SQL.Strings = (
      'begin'
      '  price_pkg.get_ppl_list(:V_PPLI_ID, :v_PPLI_ID_old, :CURSOR_);'
      'end;')
    RefreshOptions = [roAfterUpdate]
    FilterOptions = [foCaseInsensitive]
    AfterPost = PPLAfterPost
    Left = 264
    Top = 152
    ParamData = <
      item
        DataType = ftFloat
        Name = 'V_PPLI_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'v_PPLI_ID_old'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptInputOutput
        Value = 'Object'
      end>
    object PPLPPLI_ID: TFloatField
      FieldName = 'PPLI_ID'
    end
    object PPLPPL_ID: TFloatField
      FieldName = 'PPL_ID'
    end
    object PPLCOMING_DATE: TDateTimeField
      FieldName = 'COMING_DATE'
    end
    object PPLINVOICE_AMOUNT: TFloatField
      FieldName = 'INVOICE_AMOUNT'
    end
    object PPLDISTRIBUTED_NUMBER: TFloatField
      FieldName = 'DISTRIBUTED_NUMBER'
    end
    object PPLOBSHAK: TFloatField
      FieldName = 'OBSHAK'
    end
    object PPLSTOCK_AMOUNT: TFloatField
      FieldName = 'STOCK_AMOUNT'
    end
    object PPLLEFT_AMOUNT: TFloatField
      FieldName = 'LEFT_AMOUNT'
    end
    object PPLGIVEN_AMOUNT: TFloatField
      FieldName = 'GIVEN_AMOUNT'
    end
    object PPLHOL_PRICE: TFloatField
      FieldName = 'HOL_PRICE'
    end
    object PPLRUBLE_PRICE: TFloatField
      FieldName = 'RUBLE_PRICE'
    end
    object PPLLAST_PRICE: TFloatField
      FieldName = 'LAST_PRICE'
    end
    object PPLPRICE_PCC: TFloatField
      FieldName = 'PRICE_PCC'
    end
    object PPLPRICE_PCC_PC: TFloatField
      FieldName = 'PRICE_PCC_PC'
    end
    object PPLN_ID: TFloatField
      FieldName = 'N_ID'
    end
    object PPLFINAL_PRICE: TFloatField
      FieldName = 'FINAL_PRICE'
    end
    object PPLINV_TOTAL_SUM: TFloatField
      FieldName = 'INV_TOTAL_SUM'
    end
    object PPLSTOK_TOTAL_SUM: TFloatField
      FieldName = 'STOK_TOTAL_SUM'
    end
    object PPLINV_TOTAL_PROFIT: TFloatField
      FieldName = 'INV_TOTAL_PROFIT'
    end
    object PPLCAME_TYPE: TStringField
      FieldName = 'CAME_TYPE'
      Size = 7
    end
    object PPLNID_ROWNUM: TFloatField
      FieldName = 'NID_ROWNUM'
    end
    object PPLF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Size = 50
    end
    object PPLCOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 400
    end
    object PPLTOTAL_SUM: TFloatField
      FieldName = 'TOTAL_SUM'
    end
    object PPLCUST_COEF: TFloatField
      FieldName = 'CUST_COEF'
    end
    object PPLH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 80
    end
    object PPLCOL: TFloatField
      FieldName = 'COL'
    end
    object PPLRUS_MARKS: TStringField
      FieldName = 'RUS_MARKS'
      Size = 4000
    end
    object PPLINVOICE_DATA_ID: TFloatField
      FieldName = 'INVOICE_DATA_ID'
    end
    object PPLCOMPILED_NAME_POT: TStringField
      FieldName = 'COMPILED_NAME_POT'
      Size = 4000
    end
    object PPLF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Size = 50
    end
    object PPLHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
      Size = 16
    end
    object PPLSTOK_TOTAL_PROFIT: TFloatField
      FieldName = 'STOK_TOTAL_PROFIT'
    end
    object PPLTOTAL_PROFIT: TFloatField
      FieldName = 'TOTAL_PROFIT'
    end
    object PPLCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
    object PPLCOLOUR: TStringField
      FieldName = 'COLOUR'
      Size = 50
    end
    object PPLBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
      Size = 40
    end
    object PPLFT_ID: TFloatField
      FieldName = 'FT_ID'
    end
    object PPLFST_ID: TFloatField
      FieldName = 'FST_ID'
    end
    object PPLCOL_ID: TFloatField
      FieldName = 'COL_ID'
    end
    object PPLLEN: TIntegerField
      FieldName = 'LEN'
    end
    object PPLTYPE_SUBTYPE: TStringField
      FieldName = 'TYPE_SUBTYPE'
      Size = 103
    end
    object PPLSPEC_PRICE: TIntegerField
      FieldName = 'SPEC_PRICE'
    end
    object PPLBEST_PRICE: TIntegerField
      FieldName = 'BEST_PRICE'
    end
    object PPLDISCOUNT: TFloatField
      FieldName = 'DISCOUNT'
    end
    object PPLINV_ID: TFloatField
      FieldName = 'INV_ID'
    end
    object PPLINV_ID2: TFloatField
      FieldName = 'INV_ID2'
    end
    object PPLINV_ID3: TFloatField
      FieldName = 'INV_ID3'
    end
    object PPLINV_ID4: TFloatField
      FieldName = 'INV_ID4'
    end
    object PPLLOSS_PROFIT: TFloatField
      FieldName = 'LOSS_PROFIT'
    end
    object PPLEQ_PRICE: TFloatField
      FieldName = 'EQ_PRICE'
    end
    object PPLID_CLIENTS: TFloatField
      FieldName = 'ID_CLIENTS'
    end
    object PPLCLIENT_PRICE: TFloatField
      FieldName = 'CLIENT_PRICE'
    end
    object PPLNICK: TStringField
      FieldName = 'NICK'
    end
    object PPLSPEC: TFloatField
      FieldName = 'SPEC'
    end
    object PPLTO_CLIENT: TStringField
      FieldName = 'TO_CLIENT'
      Size = 30
    end
    object PPLPAINT_SUPER: TFloatField
      FieldName = 'PAINT_SUPER'
    end
    object PPLPPLI_ID_OLD: TFloatField
      FieldName = 'PPLI_ID_OLD'
    end
    object PPLPROFIT_COEFFITIENT: TFloatField
      FieldName = 'PROFIT_COEFFITIENT'
    end
  end
  object StoreProc: TOraStoredProc
    Session = STAR_DB
    Left = 600
    Top = 152
  end
  object SelPriceList: TOraQuery
    Session = STAR_DB
    SQL.Strings = (
      'SELECT '
      '  N_ID,'
      '  COMPILED_NAME,'
      '  PRICE,'
      '  COUNTRY,'
      '  H_CODE,'
      
        '  DECODE(colour,'#39'   '#39',NULL,'#39' '#39',NULL,NULL,NULL, '#39#1094#1074'. '#39' || colour)' +
        ' colour,'
      '  GET_RUS_MARKS(N_ID) RUS_MARKS'
      '  '
      'FROM PRICE_LIST_VIEW'
      'WHERE id_office=const_office and FST_ID = :FST_ID'
      'ORDER BY 2')
    Left = 584
    Top = 288
    ParamData = <
      item
        DataType = ftFloat
        Name = 'FST_ID'
        ParamType = ptInput
        Value = 447.000000000000000000
      end>
    object SelPriceListN_ID: TFloatField
      FieldName = 'N_ID'
      Required = True
    end
    object SelPriceListCOMPILED_NAME: TStringField
      FieldName = 'COMPILED_NAME'
      Size = 299
    end
    object SelPriceListPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object SelPriceListCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Required = True
      Size = 50
    end
    object SelPriceListH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 50
    end
    object SelPriceListCOLOUR: TStringField
      FieldName = 'COLOUR'
      Size = 54
    end
    object SelPriceListRUS_MARKS: TStringField
      FieldName = 'RUS_MARKS'
      Size = 4000
    end
  end
  object SelQ: TOraQuery
    Session = STAR_DB
    Left = 16
    Top = 64
  end
  object InvoReg: TOraQuery
    Session = STAR_DB
    SQL.Strings = (
      'begin'
      '  price_pkg.get_not_loaded_inv(:ID_DEPT_, :CURSOR_);'
      'end;')
    FetchAll = True
    Left = 160
    Top = 16
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEPT_'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptInputOutput
        Value = 'Object'
      end>
    object InvoRegINV_ID: TFloatField
      FieldName = 'INV_ID'
      Required = True
    end
    object InvoRegINV_DATE: TDateTimeField
      FieldName = 'INV_DATE'
      Required = True
    end
    object InvoRegCOMMENTS: TStringField
      FieldName = 'COMMENTS'
      Size = 1024
    end
    object InvoRegINV_SUM: TFloatField
      FieldName = 'INV_SUM'
    end
    object InvoRegIPP_ID: TFloatField
      FieldName = 'IPP_ID'
    end
    object InvoRegIPP_COMMENT: TStringField
      FieldName = 'IPP_COMMENT'
      Size = 267
    end
    object InvoRegID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
      Required = True
    end
    object InvoRegDEPT_NAME: TStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 100
    end
    object InvoRegINV_MINUS: TIntegerField
      FieldName = 'INV_MINUS'
    end
    object InvoRegMINUS_INV_ID: TFloatField
      FieldName = 'MINUS_INV_ID'
    end
    object InvoRegIS_MINUS: TFloatField
      FieldName = 'IS_MINUS'
    end
    object InvoRegS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Required = True
      Size = 150
    end
    object InvoRegTOTAL_SUM: TFloatField
      FieldName = 'TOTAL_SUM'
    end
    object InvoRegPAST_NUM: TFloatField
      FieldName = 'PAST_NUM'
    end
  end
  object InvoReg_DS: TOraDataSource
    DataSet = InvoReg
    Left = 160
    Top = 64
  end
  object SelPrntPreview: TOraQuery
    Session = STAR_DB
    SQL.Strings = (
      'SELECT '
      '  * '
      'FROM PPRNT_VIEW')
    Left = 656
    Top = 288
    object SelPrntPreviewN_ID: TFloatField
      FieldName = 'N_ID'
      Required = True
    end
    object SelPrntPreviewTITLE: TStringField
      FieldName = 'TITLE'
      Size = 256
    end
    object SelPrntPreviewPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object SelPrntPreviewCODE: TFloatField
      FieldName = 'CODE'
    end
    object SelPrntPreviewH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 40
    end
    object SelPrntPreviewCOLOUR: TStringField
      FieldName = 'COLOUR'
      Size = 100
    end
    object SelPrntPreviewF_NAME_RU: TStringField
      FieldName = 'F_NAME_RU'
      Size = 256
    end
    object SelPrntPreviewCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
    object SelPrntPreviewRUS_MARKS: TStringField
      FieldName = 'RUS_MARKS'
      Size = 1024
    end
    object SelPrntPreviewBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
      Size = 30
    end
    object SelPrntPreviewPRINT_CODE: TFloatField
      FieldName = 'PRINT_CODE'
    end
    object SelPrntPreviewPACK_PRICE: TFloatField
      FieldName = 'PACK_PRICE'
    end
    object SelPrntPreviewINVOICE_ID: TFloatField
      FieldName = 'INVOICE_ID'
    end
    object SelPrntPreviewPACKQ: TIntegerField
      FieldName = 'PACKQ'
    end
  end
  object SavePrice: TOraStoredProc
    StoredProcName = 'PRICE_PKG.SAVE_PRICES'
    Session = STAR_DB
    SQL.Strings = (
      'begin'
      '  PRICE_PKG.SAVE_PRICES(:IN_PPLI_ID, :OUT_RES);'
      'end;')
    Left = 680
    Top = 152
    ParamData = <
      item
        DataType = ftFloat
        Name = 'IN_PPLI_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OUT_RES'
        ParamType = ptInputOutput
      end>
  end
  object SelFST_PriceList: TOraQuery
    Session = STAR_DB
    SQL.Strings = (
      'SELECT DISTINCT FST_ID,F_SUB_TYPE FROM PRICE_LIST_VIEW'
      'WHERE id_office=const_office and FT_ID = :FT_ID')
    Left = 480
    Top = 400
    ParamData = <
      item
        DataType = ftFloat
        Name = 'FT_ID'
        ParamType = ptInput
        Value = 128.000000000000000000
      end>
    object SelFST_PriceListFST_ID: TFloatField
      FieldName = 'FST_ID'
      Required = True
    end
    object SelFST_PriceListF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Required = True
      Size = 50
    end
  end
  object SelFST_PriceList_DS: TOraDataSource
    DataSet = SelFST_PriceList
    Left = 480
    Top = 448
  end
  object SelFT_PriceList: TOraQuery
    Session = STAR_DB
    SQL.Strings = (
      'SELECT DISTINCT FT_ID, F_TYPE FROM PRICE_LIST_VIEW '
      'where id_office=const_office')
    Left = 480
    Top = 288
    object SelFT_PriceListFT_ID: TFloatField
      FieldName = 'FT_ID'
      Required = True
    end
    object SelFT_PriceListF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Required = True
      Size = 50
    end
  end
  object OraDataSource1: TOraDataSource
    DataSet = ForceQ
    Left = 96
    Top = 368
  end
  object SelFT_PriceList_DS: TOraDataSource
    DataSet = SelFT_PriceList
    Left = 480
    Top = 336
  end
  object InvoPriceReg: TOraQuery
    Session = STAR_DB
    SQL.Strings = (
      'begin'
      '  price_pkg.get_loaded_inv(:ID_DEPT_, :CURSOR_);'
      'end;')
    FetchAll = True
    Left = 248
    Top = 16
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEPT_'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptInputOutput
        Value = 'Object'
      end>
    object InvoPriceRegINV_ID: TFloatField
      FieldName = 'INV_ID'
      Required = True
    end
    object InvoPriceRegINV_DATE: TDateTimeField
      FieldName = 'INV_DATE'
      Required = True
    end
    object InvoPriceRegCOMMENTS: TStringField
      FieldName = 'COMMENTS'
      Size = 1024
    end
    object InvoPriceRegINV_SUM: TFloatField
      FieldName = 'INV_SUM'
    end
    object InvoPriceRegIPP_ID: TFloatField
      FieldName = 'IPP_ID'
    end
    object InvoPriceRegIPP_COMMENT: TStringField
      FieldName = 'IPP_COMMENT'
      Size = 267
    end
    object InvoPriceRegTOTAL_SUM: TFloatField
      FieldName = 'TOTAL_SUM'
    end
    object InvoPriceRegID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
      Required = True
    end
    object InvoPriceRegDEPT_NAME: TStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 100
    end
    object InvoPriceRegINV_MINUS: TIntegerField
      FieldName = 'INV_MINUS'
    end
    object InvoPriceRegMINUS_INV_ID: TFloatField
      FieldName = 'MINUS_INV_ID'
    end
    object InvoPriceRegIS_MINUS: TFloatField
      FieldName = 'IS_MINUS'
    end
    object InvoPriceRegS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Required = True
      Size = 150
    end
  end
  object InvoPriceReg_DS: TOraDataSource
    DataSet = InvoPriceReg
    Left = 248
    Top = 64
  end
  object cds_ppl_price: TOraQuery
    Session = STAR_DB
    SQL.Strings = (
      
        'SELECT sum(invoice_amount) as invoice_amount, sum(stock_amount) ' +
        'as stock_amount, final_price, h_code, rus_marks, compiled_name_p' +
        'ot, f_type'
      '  FROM ppl_view '
      '  WHERE PPLI_ID = :PPLI_ID'
      
        'group by final_price, h_code, rus_marks, compiled_name_pot, f_ty' +
        'pe'
      'order by compiled_name_pot')
    MasterSource = PPL_Index_DS
    MasterFields = 'PPLI_ID'
    DetailFields = 'PPLI_ID'
    RefreshOptions = [roAfterUpdate]
    FilterOptions = [foCaseInsensitive]
    AfterPost = PPLAfterPost
    Left = 264
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PPLI_ID'
      end>
    object cds_ppl_priceINVOICE_AMOUNT: TFloatField
      FieldName = 'INVOICE_AMOUNT'
    end
    object cds_ppl_priceSTOCK_AMOUNT: TFloatField
      FieldName = 'STOCK_AMOUNT'
    end
    object cds_ppl_priceFINAL_PRICE: TFloatField
      FieldName = 'FINAL_PRICE'
    end
    object cds_ppl_priceH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 50
    end
    object cds_ppl_priceRUS_MARKS: TStringField
      FieldName = 'RUS_MARKS'
      Size = 4000
    end
    object cds_ppl_priceCOMPILED_NAME_POT: TStringField
      FieldName = 'COMPILED_NAME_POT'
      Size = 4000
    end
    object cds_ppl_priceF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Required = True
      Size = 50
    end
  end
  object ds_ppl_price: TOraDataSource
    DataSet = cds_ppl_price
    Left = 264
    Top = 352
  end
  object ds_SelPrntPreview: TOraDataSource
    DataSet = SelPrntPreview
    Left = 656
    Top = 344
  end
  object PPL_OLD: TOraQuery
    SQLUpdate.Strings = (
      'UPDATE PREPARE_PRICE_LIST '
      'SET FINAL_PRICE = :FINAL_PRICE '
      'WHERE (PPL_ID = :OLD_PPL_ID)')
    SQLRefresh.Strings = (
      
        'SELECT ppli_id, ppl_id, coming_date, invoice_amount, stock_amoun' +
        't,'
      
        '       left_amount, given_amount, hol_price, ruble_price, last_p' +
        'rice,'
      
        '       price_pcc, price_pcc_pc, n_id, final_price, great_name, G' +
        'REAT_NAME_F,'
      
        '       inv_total_sum, stok_total_sum, inv_total_profit, stok_tot' +
        'al_profit,'
      ''
      '       case when hol_type = '#39'RO'#39' then '#39'1 '#1056#1086#1079#1072' '#1075#1086#1083#1083#1072#1085#1076#1080#1103#39' else'
      '       case when hol_type = '#39'EC'#39' then '#39'2 '#1056#1086#1079#1072' '#1101#1082#1074#1072#1076#1086#1088#39' else'
      '       case when hol_type = '#39'CH'#39' then '#39'3 '#1061#1088#1080#1079#1072#1085#1090#1077#1084#1072#39' else'
      '       case when hol_type = '#39'GR'#39' then '#39'4 '#1047#1077#1083#1077#1085#1100#39' else'
      '       case when hol_type = '#39'CA'#39' then '#39'5 '#1061#1088#1080#1079#1072#1085#1090#1077#1084#1072#39' else'
      '       case when hol_type = '#39'LI'#39' then '#39'6 '#1051#1080#1083#1080#1103#39' else'
      '       case when hol_type = '#39'OT'#39' then '#39'7 '#1044#1088#1091#1075#1086#1077#39' else'
      '       case when hol_type = '#39'none'#39' then '#39#39' else '#39#39
      '       end end end end end end end end hol_type,'
      ''
      
        '       compiled_name, total_sum,total_profit,cust_coef, h_code, ' +
        'nvl(COL,0) as col'
      '       , rus_marks, INVOICE_DATA_ID, compiled_name_pot, f_type'
      
        '       , case when INVOICE_DATA_ID is null then '#39#1057#1082#1083#1072#1076#39' else '#39#1055#1086 +
        #1089#1090#1072#1074#1082#1072#39' end came_type '
      '  FROM ppl_view '
      '  WHERE (PPL_ID = :OLD_PPL_ID)')
    Session = STAR_DB
    SQL.Strings = (
      
        'SELECT ppli_id, ppl_id, coming_date, invoice_amount, stock_amoun' +
        't,'
      
        '       left_amount, given_amount, hol_price, ruble_price, last_p' +
        'rice,'
      
        '       price_pcc, price_pcc_pc, n_id, final_price, great_name, G' +
        'REAT_NAME_F,'
      
        '       inv_total_sum, stok_total_sum, inv_total_profit, stok_tot' +
        'al_profit,'
      ''
      '       case when hol_type = '#39'RO'#39' then '#39'1 '#1056#1086#1079#1072' '#1075#1086#1083#1083#1072#1085#1076#1080#1103#39' else'
      '       case when hol_type = '#39'EC'#39' then '#39'2 '#1056#1086#1079#1072' '#1101#1082#1074#1072#1076#1086#1088#39' else'
      '       case when hol_type = '#39'CH'#39' then '#39'3 '#1061#1088#1080#1079#1072#1085#1090#1077#1084#1072#39' else'
      '       case when hol_type = '#39'GR'#39' then '#39'4 '#1047#1077#1083#1077#1085#1100#39' else'
      '       case when hol_type = '#39'CA'#39' then '#39'5 '#1061#1088#1080#1079#1072#1085#1090#1077#1084#1072#39' else'
      '       case when hol_type = '#39'LI'#39' then '#39'6 '#1051#1080#1083#1080#1103#39' else'
      '       case when hol_type = '#39'OT'#39' then '#39'7 '#1044#1088#1091#1075#1086#1077#39' else'
      '       case when hol_type = '#39'none'#39' then '#39#39' else '#39#39
      '       end end end end end end end end hol_type,'
      ''
      
        '       compiled_name, total_sum,total_profit,cust_coef, h_code, ' +
        'nvl(COL,0) as col'
      '       , rus_marks, INVOICE_DATA_ID, compiled_name_pot, f_type'
      
        '       , case when INVOICE_DATA_ID is null then '#39#1057#1082#1083#1072#1076#39' else '#39#1055#1086 +
        #1089#1090#1072#1074#1082#1072#39' end came_type '
      '  FROM ppl_view '
      '  WHERE PPLI_ID = :PPLI_ID'
      'order by compiled_name_pot')
    RefreshOptions = [roAfterUpdate]
    FilterOptions = [foCaseInsensitive]
    AfterPost = PPLAfterPost
    Left = 344
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PPLI_ID'
      end>
    object FloatField1: TFloatField
      FieldName = 'PPLI_ID'
      Required = True
    end
    object FloatField2: TFloatField
      FieldName = 'PPL_ID'
      Required = True
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'COMING_DATE'
    end
    object FloatField3: TFloatField
      FieldName = 'INVOICE_AMOUNT'
      Required = True
    end
    object FloatField4: TFloatField
      FieldName = 'STOCK_AMOUNT'
    end
    object FloatField5: TFloatField
      FieldName = 'LEFT_AMOUNT'
      Required = True
    end
    object FloatField6: TFloatField
      FieldName = 'GIVEN_AMOUNT'
      Required = True
    end
    object FloatField7: TFloatField
      FieldName = 'HOL_PRICE'
    end
    object FloatField8: TFloatField
      FieldName = 'RUBLE_PRICE'
    end
    object FloatField9: TFloatField
      FieldName = 'LAST_PRICE'
    end
    object FloatField10: TFloatField
      FieldName = 'PRICE_PCC'
    end
    object FloatField11: TFloatField
      FieldName = 'PRICE_PCC_PC'
    end
    object FloatField12: TFloatField
      FieldName = 'N_ID'
      Required = True
    end
    object FloatField13: TFloatField
      FieldName = 'FINAL_PRICE'
    end
    object StringField1: TStringField
      FieldName = 'GREAT_NAME'
      Size = 350
    end
    object StringField2: TStringField
      FieldName = 'GREAT_NAME_F'
      Size = 372
    end
    object StringField3: TStringField
      FieldName = 'HOL_TYPE'
      Size = 16
    end
    object StringField4: TStringField
      FieldName = 'COMPILED_NAME'
      Size = 299
    end
    object FloatField14: TFloatField
      FieldName = 'TOTAL_SUM'
    end
    object FloatField15: TFloatField
      FieldName = 'TOTAL_PROFIT'
    end
    object FloatField16: TFloatField
      FieldName = 'CUST_COEF'
      Required = True
    end
    object StringField5: TStringField
      FieldName = 'H_CODE'
      Size = 30
    end
    object FloatField17: TFloatField
      FieldName = 'COL'
    end
    object StringField6: TStringField
      FieldName = 'RUS_MARKS'
      Size = 4000
    end
    object FloatField18: TFloatField
      FieldName = 'INVOICE_DATA_ID'
    end
    object StringField7: TStringField
      FieldName = 'COMPILED_NAME_POT'
      Size = 338
    end
    object StringField8: TStringField
      FieldName = 'CAME_TYPE'
      Size = 8
    end
    object StringField9: TStringField
      FieldName = 'F_TYPE'
      Required = True
      Size = 50
    end
    object FloatField19: TFloatField
      FieldName = 'INV_TOTAL_SUM'
    end
    object FloatField20: TFloatField
      FieldName = 'STOK_TOTAL_SUM'
    end
    object FloatField21: TFloatField
      FieldName = 'INV_TOTAL_PROFIT'
    end
    object FloatField22: TFloatField
      FieldName = 'STOK_TOTAL_PROFIT'
    end
  end
  object OraQuery1: TOraQuery
    SQLUpdate.Strings = (
      'UPDATE PREPARE_PRICE_LIST '
      
        'SET FINAL_PRICE = :FINAL_PRICE, spec_price = :spec_price, best_p' +
        'rice = :best_price, date_change=sysdate '
      'WHERE (PPL_ID = :OLD_PPL_ID)')
    SQLRefresh.Strings = (
      
        'SELECT ppli_id, ppl_id, coming_date, invoice_amount, stock_amoun' +
        't,'
      
        '       left_amount, given_amount, hol_price, ruble_price, last_p' +
        'rice,'
      
        '       price_pcc, price_pcc_pc, n_id, final_price, great_name, G' +
        'REAT_NAME_F,'
      
        '       inv_total_sum, stok_total_sum, inv_total_profit, stok_tot' +
        'al_profit,'
      ''
      '       case when hol_type = '#39'RO'#39' then '#39'1 '#1056#1086#1079#1072' '#1075#1086#1083#1083#1072#1085#1076#1080#1103#39' else'
      '       case when hol_type = '#39'EC'#39' then '#39'2 '#1056#1086#1079#1072' '#1101#1082#1074#1072#1076#1086#1088#39' else'
      '       case when hol_type = '#39'CH'#39' then '#39'3 '#1061#1088#1080#1079#1072#1085#1090#1077#1084#1072#39' else'
      '       case when hol_type = '#39'GR'#39' then '#39'4 '#1047#1077#1083#1077#1085#1100#39' else'
      '       case when hol_type = '#39'CA'#39' then '#39'5 '#1061#1088#1080#1079#1072#1085#1090#1077#1084#1072#39' else'
      '       case when hol_type = '#39'LI'#39' then '#39'6 '#1051#1080#1083#1080#1103#39' else'
      '       case when hol_type = '#39'OT'#39' then '#39'7 '#1044#1088#1091#1075#1086#1077#39' else'
      '       case when hol_type = '#39'none'#39' then '#39#39' else '#39#39
      '       end end end end end end end end hol_type,'
      ''
      
        '       compiled_name, total_sum,total_profit,cust_coef, h_code, ' +
        'nvl(COL,0) as col'
      '       , rus_marks, INVOICE_DATA_ID, compiled_name_pot, f_type'
      
        '       , case when INVOICE_DATA_ID is null then '#39#1057#1082#1083#1072#1076#39' else '#39#1055#1086 +
        #1089#1090#1072#1074#1082#1072#39' end came_type '
      '       , ft_id, fst_id, col_id, len, type_subtype'
      '       , spec_price, best_price, discount'
      '  FROM ppl_view '
      '  WHERE (PPL_ID = :OLD_PPL_ID)')
    Session = STAR_DB
    SQL.Strings = (
      
        'select ppli_id, ppl_id, coming_date, invoice_amount, stock_amoun' +
        't,'
      
        '       left_amount, given_amount, hol_price, ruble_price, last_p' +
        'rice,'
      '       price_pcc, price_pcc_pc, n_id, final_price,'
      '       inv_total_sum, stok_total_sum, inv_total_profit, '
      '       compiled_name_otdel, total_sum, cust_coef, h_code, col'
      '       , rus_marks, INVOICE_DATA_ID, compiled_name_pot, f_type'
      '       , came_type,  nid_rownum, f_sub_type,'
      '       '
      '       case when hol_type = '#39'RO'#39' then '#39'1 '#1056#1086#1079#1072' '#1075#1086#1083#1083#1072#1085#1076#1080#1103#39' else'
      '       case when hol_type = '#39'EC'#39' then '#39'2 '#1056#1086#1079#1072' '#1101#1082#1074#1072#1076#1086#1088#39' else'
      '       case when hol_type = '#39'CH'#39' then '#39'3 '#1061#1088#1080#1079#1072#1085#1090#1077#1084#1072#39' else'
      '       case when hol_type = '#39'GR'#39' then '#39'4 '#1047#1077#1083#1077#1085#1100#39' else'
      '       case when hol_type = '#39'CA'#39' then '#39'5 '#1061#1088#1080#1079#1072#1085#1090#1077#1084#1072#39' else'
      '       case when hol_type = '#39'LI'#39' then '#39'6 '#1051#1080#1083#1080#1103#39' else'
      '       case when hol_type = '#39'OT'#39' then '#39'7 '#1044#1088#1091#1075#1086#1077#39' else'
      '       case when hol_type = '#39'none'#39' then '#39#39' else '#39#39
      '       end end end end end end end end hol_type'
      ''
      
        '       , case when nid_rownum=1 then stok_total_profit else 0 en' +
        'd stok_total_profit'
      
        '       , case when nid_rownum=1 then total_profit else total_pro' +
        'fit-stok_total_profit end total_profit'
      
        '       , country, colour, to_char(nvl(bar_code,code)) as bar_cod' +
        'e'
      '       , ft_id, fst_id, col_id, len, type_subtype'
      '       , spec_price, best_price, discount'
      ''
      ''
      
        ', case when inv_total_profit > 0 then 1 else 0 end as loss_profi' +
        't'
      
        ', case when trunc(RUBLE_PRICE) = trunc(FINAL_PRICE) and const_of' +
        'fice = 1 then 1 else 0 end as eq_price'
      ''
      ''
      'from ('
      '       '
      
        'SELECT ppli_id, ppl_id, coming_date, invoice_amount, stock_amoun' +
        't,'
      
        '       left_amount, given_amount, hol_price, ruble_price, last_p' +
        'rice,'
      '       price_pcc, price_pcc_pc, n_id, final_price, '
      
        '       inv_total_sum, stok_total_sum, inv_total_profit, stok_tot' +
        'al_profit,'
      
        '       compiled_name_otdel, total_sum, total_profit, cust_coef, ' +
        'h_code, nvl(COL,0) as col'
      
        '       , rus_marks, INVOICE_DATA_ID, compiled_name_pot, f_type, ' +
        'hol_type, f_sub_type'
      
        '       , case when INVOICE_DATA_ID is null then '#39#1057#1082#1083#1072#1076#39' else '#39#1048#1085 +
        #1074#1086#1081#1089#1099#39' end came_type '
      
        '       , row_number() over(partition by n_id order by ppl_id) as' +
        ' nid_rownum'
      '       , country, colour, bar_code, code'
      '       , ft_id, fst_id, col_id, len, type_subtype'
      '       , spec_price, best_price, discount'
      '  FROM ppl_view '
      '  WHERE PPLI_ID = :PPLI_ID'
      ')  '
      'order by compiled_name_pot')
    MasterSource = PPL_Index_DS
    MasterFields = 'PPLI_ID'
    DetailFields = 'PPLI_ID'
    RefreshOptions = [roAfterUpdate]
    FilterOptions = [foCaseInsensitive]
    AfterPost = PPLAfterPost
    Left = 344
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PPLI_ID'
      end>
    object FloatField23: TFloatField
      FieldName = 'PPLI_ID'
    end
    object FloatField24: TFloatField
      FieldName = 'PPL_ID'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'COMING_DATE'
    end
    object FloatField25: TFloatField
      FieldName = 'INVOICE_AMOUNT'
    end
    object FloatField26: TFloatField
      FieldName = 'STOCK_AMOUNT'
    end
    object FloatField27: TFloatField
      FieldName = 'LEFT_AMOUNT'
    end
    object FloatField28: TFloatField
      FieldName = 'GIVEN_AMOUNT'
    end
    object FloatField29: TFloatField
      FieldName = 'HOL_PRICE'
    end
    object FloatField30: TFloatField
      FieldName = 'RUBLE_PRICE'
    end
    object FloatField31: TFloatField
      FieldName = 'LAST_PRICE'
    end
    object FloatField32: TFloatField
      FieldName = 'PRICE_PCC'
    end
    object FloatField33: TFloatField
      FieldName = 'PRICE_PCC_PC'
    end
    object FloatField34: TFloatField
      FieldName = 'N_ID'
    end
    object FloatField35: TFloatField
      FieldName = 'FINAL_PRICE'
    end
    object FloatField36: TFloatField
      FieldName = 'INV_TOTAL_SUM'
    end
    object FloatField37: TFloatField
      FieldName = 'STOK_TOTAL_SUM'
    end
    object FloatField38: TFloatField
      FieldName = 'INV_TOTAL_PROFIT'
    end
    object StringField10: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 400
    end
    object FloatField39: TFloatField
      FieldName = 'TOTAL_SUM'
    end
    object FloatField40: TFloatField
      FieldName = 'CUST_COEF'
    end
    object StringField11: TStringField
      FieldName = 'H_CODE'
      Size = 80
    end
    object FloatField41: TFloatField
      FieldName = 'COL'
    end
    object StringField12: TStringField
      FieldName = 'RUS_MARKS'
      Size = 4000
    end
    object FloatField42: TFloatField
      FieldName = 'INVOICE_DATA_ID'
    end
    object StringField13: TStringField
      FieldName = 'COMPILED_NAME_POT'
      Size = 4000
    end
    object StringField14: TStringField
      FieldName = 'F_TYPE'
      Size = 50
    end
    object StringField15: TStringField
      FieldName = 'CAME_TYPE'
      Size = 7
    end
    object FloatField43: TFloatField
      FieldName = 'NID_ROWNUM'
    end
    object StringField16: TStringField
      FieldName = 'F_SUB_TYPE'
      Size = 50
    end
    object StringField17: TStringField
      FieldName = 'HOL_TYPE'
      Size = 16
    end
    object FloatField44: TFloatField
      FieldName = 'STOK_TOTAL_PROFIT'
    end
    object FloatField45: TFloatField
      FieldName = 'TOTAL_PROFIT'
    end
    object StringField18: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
    object StringField19: TStringField
      FieldName = 'COLOUR'
      Size = 50
    end
    object StringField20: TStringField
      FieldName = 'BAR_CODE'
      Size = 40
    end
    object FloatField46: TFloatField
      FieldName = 'FT_ID'
    end
    object FloatField47: TFloatField
      FieldName = 'FST_ID'
    end
    object FloatField48: TFloatField
      FieldName = 'COL_ID'
    end
    object IntegerField1: TIntegerField
      FieldName = 'LEN'
    end
    object StringField21: TStringField
      FieldName = 'TYPE_SUBTYPE'
      Size = 103
    end
    object IntegerField2: TIntegerField
      FieldName = 'SPEC_PRICE'
    end
    object IntegerField3: TIntegerField
      FieldName = 'BEST_PRICE'
    end
    object FloatField49: TFloatField
      FieldName = 'DISCOUNT'
    end
    object FloatField50: TFloatField
      FieldName = 'LOSS_PROFIT'
    end
    object FloatField51: TFloatField
      FieldName = 'EQ_PRICE'
    end
  end
end
