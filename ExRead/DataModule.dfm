object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 552
  Width = 710
  object STAR_DB: TOraSession
    Options.Direct = True
    Username = 'creator'
    Password = '123456'
    Server = 'KLEPOV:1521:STARNEW'
    BeforeConnect = STAR_DBBeforeConnect
    HomeName = 'OraHome92'
    Left = 24
    Top = 16
  end
  object ForceQ: TOraQuery
    Session = STAR_DB
    Left = 600
    Top = 208
  end
  object InvoiceRegister: TOraQuery
    SQLUpdate.Strings = (
      'select 1 from dual')
    SQLRefresh.Strings = (
      'select a.*'
      '          , a.inv_id as inv_id_'
      '          , (AS_IS_POS - READY_POS) as past_num'
      '          , case when AS_IS_POS = 0 then 100 else'
      
        '                case when READY_POS = 0 then 0 else round( (READ' +
        'Y_POS / AS_IS_POS) * 100, 2 )'
      '                    end end procent_d'
      '    from ('
      '        select a.*'
      '              -- Oaiu'
      
        '              , case when b.INV_ID is null then 0 else 1 end pri' +
        'ce'
      
        '              , case when b.INV_ID is not null and b.finished =1' +
        ' then 1 else 0 end price_done'
      '              -- as_is'
      
        '              , ( select count(1) from invoice_data_as_is z wher' +
        'e z.inv_id = a.inv_id ) as AS_IS_POS'
      
        '              , ( select count(1) from invoice_data_as_is z wher' +
        'e z.inv_id = a.inv_id and z.recognised=1 ) as READY_POS'
      
        '              , ( select sum(z.total_amount) from invoice_data_a' +
        's_is z where z.inv_id = a.inv_id ) as TOTAL_SUM_AS_IS'
      '              -- to_be'
      
        '              , ( select count(1) from invoice_data y where y.in' +
        'v_id = a.inv_id ) as TO_BE_POS'
      
        '              , ( select sum(y.TOTAL_SUM) from invoice_data y wh' +
        'ere y.inv_id = a.inv_id ) as TOTAL_SUM_TO_BE'
      '        from ('
      
        '            SELECT /*+ INDEX_JOIN(S) */ IR.INV_ID, IR.INV_DATE, ' +
        'IR.COMMENTS, IR.INV_SUM, IR.SENDED_TO_WAREHOUSE,'
      
        '                  IR.WAREHOUSE_SENDED_DATE, IR.SUPPLIER_DATE, IR' +
        '.SUPPLIER_NUMBER, IR.IPP_ID,'
      
        '                  IR.ID_DEPARTMENTS, IR.inv_minus, IR.in_file, c' +
        'ase when IR.in_file is null then 0 else 1 end is_file,'
      
        '                  case when IR.inv_minus = 0 then 0 else 1 end i' +
        's_minus,'
      
        '                  IR.COMMENTS || '#39' ('#39' || TO_CHAR(IR.INV_DATE,'#39'DD' +
        '.MM.YYYY'#39') || '#39')'#39' INVOICE_TITLE,'
      
        '                  IR.S_ID_DEFAULT, IR.C_ID_DEFAULT, IR.minus_inv' +
        '_id'
      '                  , s.s_name_ru'
      '            FROM INVOICE_REGISTER IR, SUPPLIERS S'
      '            WHERE ir.inv_id = :inv_id'
      '                  and ir.s_id_default = s.s_id'
      '        ) a'
      '        , PREPARE_PRICE_LIST_INDEX b'
      '        where a.inv_id = b.inv_id(+)'
      '    ) a')
    Session = STAR_DB
    SQL.Strings = (
      'begin'
      
        '  creator.INVOICE_PKG.GET_INV_REGISTER_NEW(:ID_DEPARTMENTS_, :SH' +
        'OW_SHORT_, :pARCHIVE, :v_office, :pNom, :CURSOR_);'
      'end;')
    FetchAll = True
    RefreshOptions = [roAfterUpdate]
    BeforeOpen = InvoiceRegisterBeforeOpen
    BeforeRefresh = InvoiceRegisterBeforeOpen
    Left = 168
    Top = 16
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEPARTMENTS_'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'SHOW_SHORT_'
      end
      item
        DataType = ftUnknown
        Name = 'pARCHIVE'
      end
      item
        DataType = ftUnknown
        Name = 'v_office'
      end
      item
        DataType = ftString
        Name = 'pNom'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object InvoiceRegisterINV_ID: TFloatField
      FieldName = 'INV_ID'
      Required = True
    end
    object InvoiceRegisterINV_DATE: TDateTimeField
      FieldName = 'INV_DATE'
      Required = True
    end
    object InvoiceRegisterCOMMENTS: TStringField
      FieldName = 'COMMENTS'
      Size = 1024
    end
    object InvoiceRegisterINV_SUM: TFloatField
      FieldName = 'INV_SUM'
    end
    object InvoiceRegisterSENDED_TO_WAREHOUSE: TIntegerField
      FieldName = 'SENDED_TO_WAREHOUSE'
    end
    object InvoiceRegisterWAREHOUSE_SENDED_DATE: TDateTimeField
      FieldName = 'WAREHOUSE_SENDED_DATE'
    end
    object InvoiceRegisterSUPPLIER_DATE: TDateTimeField
      FieldName = 'SUPPLIER_DATE'
    end
    object InvoiceRegisterSUPPLIER_NUMBER: TStringField
      FieldName = 'SUPPLIER_NUMBER'
      Size = 50
    end
    object InvoiceRegisterIPP_ID: TFloatField
      FieldName = 'IPP_ID'
    end
    object InvoiceRegisterID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
      Required = True
    end
    object InvoiceRegisterINV_MINUS: TIntegerField
      FieldName = 'INV_MINUS'
    end
    object InvoiceRegisterIN_FILE: TStringField
      FieldName = 'IN_FILE'
      Size = 80
    end
    object InvoiceRegisterIS_FILE: TFloatField
      FieldName = 'IS_FILE'
    end
    object InvoiceRegisterIS_MINUS: TFloatField
      FieldName = 'IS_MINUS'
    end
    object InvoiceRegisterINVOICE_TITLE: TStringField
      FieldName = 'INVOICE_TITLE'
      Size = 1037
    end
    object InvoiceRegisterS_ID_DEFAULT: TFloatField
      FieldName = 'S_ID_DEFAULT'
    end
    object InvoiceRegisterC_ID_DEFAULT: TFloatField
      FieldName = 'C_ID_DEFAULT'
    end
    object InvoiceRegisterMINUS_INV_ID: TFloatField
      FieldName = 'MINUS_INV_ID'
    end
    object InvoiceRegisterS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Required = True
      Size = 150
    end
    object InvoiceRegisterIPP_COMMENT: TStringField
      FieldName = 'IPP_COMMENT'
      Size = 256
    end
    object InvoiceRegisterPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object InvoiceRegisterPRICE_DONE: TFloatField
      FieldName = 'PRICE_DONE'
    end
    object InvoiceRegisterAS_IS_POS: TFloatField
      FieldName = 'AS_IS_POS'
    end
    object InvoiceRegisterREADY_POS: TFloatField
      FieldName = 'READY_POS'
    end
    object InvoiceRegisterTOTAL_SUM_AS_IS: TFloatField
      FieldName = 'TOTAL_SUM_AS_IS'
    end
    object InvoiceRegisterTO_BE_POS: TFloatField
      FieldName = 'TO_BE_POS'
    end
    object InvoiceRegisterTOTAL_SUM_TO_BE: TFloatField
      FieldName = 'TOTAL_SUM_TO_BE'
    end
    object InvoiceRegisterTOTAL_SUM_FROM_MINUS: TFloatField
      FieldName = 'TOTAL_SUM_FROM_MINUS'
    end
    object InvoiceRegisterD_CHECK: TFloatField
      FieldName = 'D_CHECK'
    end
    object InvoiceRegisterINV_ID_: TFloatField
      FieldName = 'INV_ID_'
      Required = True
    end
    object InvoiceRegisterPAST_NUM: TFloatField
      FieldName = 'PAST_NUM'
    end
    object InvoiceRegisterPROCENT_D: TFloatField
      FieldName = 'PROCENT_D'
    end
    object InvoiceRegisterID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object InvoiceRegisterBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object InvoiceRegisterOFFICE: TStringField
      FieldName = 'OFFICE'
    end
    object InvoiceRegisterIARCHIVE: TIntegerField
      FieldName = 'IARCHIVE'
    end
    object InvoiceRegisterCOUNTRY_GTD: TIntegerField
      FieldName = 'COUNTRY_GTD'
    end
  end
  object InvoiceAsIs: TOraQuery
    SQLUpdate.Strings = (
      'begin'
      'update invoice_data_as_is set '
      
        'DESCRIPTION=:DESCRIPTION, SKU=:SKU, UNITS=:UNITS, HOL_SUB_TYPE=:' +
        'HOL_SUB_TYPE'
      ', SHORT_CODE=:SHORT_CODE, SHORT_NAME=:SHORT_NAME'
      ', AMOUNT_PER_UNIT=:AMOUNT_PER_UNIT, TOTAL_AMOUNT=:TOTAL_AMOUNT'
      ', REMARKS=:REMARKS, SPEC_LENGTH=:SPEC_LENGTH'
      ', SPEC_WIDTH=:SPEC_WIDTH, SPEC_HIGHT=:SPEC_HIGHT'
      ', HOL_COLOUR=:HOL_COLOUR, SPEC_HEADS=:SPEC_HEADS'
      ', SPEC_HEADS_SHRUB=:SPEC_HEADS_SHRUB, SPEC_VD2=:SPEC_VD2'
      ', TROLLEY=:TROLLEY, TRUCK=:TRUCK'
      ', NOM_NEW=:NOM_NEW'
      ', NOM_ADD=:NOM_ADD'
      ', NOM_START=:NOM_START'
      ', NOM_END=:NOM_END'
      ', NOM_SPECIAL=:NOM_SPECIAL'
      ', NOM_PACK=:NOM_PACK'
      ', SRC_TROLLEY=:SRC_TROLLEY'
      'where INVOICE_DATA_AS_IS_ID = :INVOICE_DATA_AS_IS_ID'
      ';'
      'commit;'
      'end;')
    SQLRefresh.Strings = (
      'SELECT * FROM INVOICE_DATA_AS_IS'
      '        WHERE INVOICE_DATA_AS_IS_ID = :INVOICE_DATA_AS_IS_ID')
    Session = STAR_DB
    SQL.Strings = (
      'begin'
      '  creator.INVOICE_PKG.GET_INV_REGISTER_ASIS(:INV_ID_, :CURSOR_);'
      'end;')
    MasterSource = InvoiceRegister_DS
    MasterFields = 'inv_id_'
    FetchAll = True
    RefreshOptions = [roAfterUpdate]
    Left = 264
    Top = 16
    ParamData = <
      item
        DataType = ftFloat
        Name = 'INV_ID_'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object InvoiceAsIsINV_ID: TFloatField
      FieldName = 'INV_ID'
    end
    object InvoiceAsIsORDER_NUMBER: TFloatField
      FieldName = 'ORDER_NUMBER'
    end
    object InvoiceAsIsORDER_MARKNAME: TStringField
      FieldName = 'ORDER_MARKNAME'
      Size = 50
    end
    object InvoiceAsIsPACKING_MARKS: TStringField
      FieldName = 'PACKING_MARKS'
      Size = 50
    end
    object InvoiceAsIsPACKING_CODE: TStringField
      FieldName = 'PACKING_CODE'
      Size = 50
    end
    object InvoiceAsIsDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 150
    end
    object InvoiceAsIsUNITS: TFloatField
      FieldName = 'UNITS'
    end
    object InvoiceAsIsSKU: TStringField
      FieldName = 'SKU'
      Size = 50
    end
    object InvoiceAsIsAMOUNT_IN_THE_PACK: TFloatField
      FieldName = 'AMOUNT_IN_THE_PACK'
    end
    object InvoiceAsIsINVOICE_DATA_AS_IS_ID: TFloatField
      FieldName = 'INVOICE_DATA_AS_IS_ID'
    end
    object InvoiceAsIsHOL_COLOUR: TStringField
      FieldName = 'HOL_COLOUR'
      Size = 50
    end
    object InvoiceAsIsHOL_SUB_TYPE: TStringField
      FieldName = 'HOL_SUB_TYPE'
      Size = 50
    end
    object InvoiceAsIsMARKS_CONTENT: TStringField
      FieldName = 'MARKS_CONTENT'
      Size = 50
    end
    object InvoiceAsIsMARKS_NAMES: TStringField
      FieldName = 'MARKS_NAMES'
      Size = 50
    end
    object InvoiceAsIsSHORT_CODE: TStringField
      FieldName = 'SHORT_CODE'
      Size = 50
    end
    object InvoiceAsIsSHORT_NAME: TStringField
      FieldName = 'SHORT_NAME'
      Size = 50
    end
    object InvoiceAsIsRECOGNISED: TIntegerField
      FieldName = 'RECOGNISED'
    end
    object InvoiceAsIsBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
      Size = 30
    end
    object InvoiceAsIsTRANSLATION: TStringField
      FieldName = 'TRANSLATION'
      Size = 1024
    end
    object InvoiceAsIsAMOUNT_PER_UNIT: TFloatField
      FieldName = 'AMOUNT_PER_UNIT'
    end
    object InvoiceAsIsTOTAL_AMOUNT: TFloatField
      FieldName = 'TOTAL_AMOUNT'
    end
    object InvoiceAsIsREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 256
    end
    object InvoiceAsIsSPEC_LENGTH: TFloatField
      FieldName = 'SPEC_LENGTH'
    end
    object InvoiceAsIsSPEC_HEADS: TStringField
      FieldName = 'SPEC_HEADS'
    end
    object InvoiceAsIsSPEC_HEADS_SHRUB: TStringField
      FieldName = 'SPEC_HEADS_SHRUB'
    end
    object InvoiceAsIsSPEC_VD2: TStringField
      FieldName = 'SPEC_VD2'
    end
    object InvoiceAsIsSPEC_WIDTH: TFloatField
      FieldName = 'SPEC_WIDTH'
    end
    object InvoiceAsIsSPEC_HIGHT: TFloatField
      FieldName = 'SPEC_HIGHT'
    end
    object InvoiceAsIsTROLLEY: TFloatField
      FieldName = 'TROLLEY'
    end
    object InvoiceAsIsTRUCK: TIntegerField
      FieldName = 'TRUCK'
    end
    object InvoiceAsIsCLIENT: TStringField
      FieldName = 'CLIENT'
      Size = 30
    end
    object InvoiceAsIsSRC_TROLLEY: TStringField
      FieldName = 'SRC_TROLLEY'
    end
    object InvoiceAsIsID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object InvoiceAsIsDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object InvoiceAsIsVOLUME: TFloatField
      FieldName = 'VOLUME'
    end
    object InvoiceAsIsVOLDRY: TFloatField
      FieldName = 'VOLDRY'
    end
    object InvoiceAsIsNOM_NEW: TIntegerField
      FieldName = 'NOM_NEW'
    end
    object InvoiceAsIsNOM_START: TIntegerField
      FieldName = 'NOM_START'
    end
    object InvoiceAsIsCOUNTRY_: TStringField
      FieldName = 'COUNTRY_'
      Size = 50
    end
    object InvoiceAsIsNOM_END: TIntegerField
      FieldName = 'NOM_END'
    end
    object InvoiceAsIsNOM_ADD: TIntegerField
      FieldName = 'NOM_ADD'
    end
    object InvoiceAsIsNOM_SPECIAL: TIntegerField
      FieldName = 'NOM_SPECIAL'
    end
    object InvoiceAsIsNOM_PACK: TIntegerField
      FieldName = 'NOM_PACK'
    end
    object InvoiceAsIsNOM_PACK_HOL: TIntegerField
      FieldName = 'NOM_PACK_HOL'
    end
    object InvoiceAsIsREPLACEMENT: TStringField
      FieldName = 'REPLACEMENT'
      Size = 150
    end
  end
  object InvoiceRegister_DS: TDataSource
    DataSet = InvoiceRegister
    Left = 168
    Top = 72
  end
  object InvoiceAsIs_DS: TDataSource
    DataSet = InvoiceAsIs
    Left = 264
    Top = 72
  end
  object InvoiceData: TOraQuery
    SQLUpdate.Strings = (
      'select 1 from dual')
    SQLRefresh.Strings = (
      
        'SELECT :D_CHECK, ind.inv_id, ind.n_id, ind.units, price_per_unit' +
        ', total_sum, ind.amount_in_the_pack, invoice_data_id, ind.invoic' +
        'e_data_as_is_id, full_name,'
      
        '        F_NAME, F_NAME_RU, len, colour, nom.country, s_name_ru, ' +
        'hol_marks as inv_marks,  rus_marks, diameter, FT_ID, f_type, FST' +
        '_ID, f_sub_type,'
      
        '        cust_coef, gtd, nom.h_code, sended_to_warehouse, PACK, S' +
        'TORNED_DATA,'
      
        '        DECODE(STORNED_DATA,0,'#39#1053#1077' '#1089#1090#1086#1088#1085#1080#1088#1086#1074#1072#1085#1086#39','#39#1057#1090#1086#1088#1085#1080#1088#1086#1074#1072#1085#1086#39') ' +
        'STORNED_TEXT,'
      '        nom.REMARKS, CODE, nom.BAR_CODE, is_photo, photo'
      
        '        , count(nom.n_id) over(partition by nom.n_id, STORNED_DA' +
        'TA) as nn'
      '        , src.truck, src.trolley, src.SRC_TROLLEY, src.CLIENT'
      
        '        , dense_rank() over(PARTITION by src.truck order by src.' +
        'order_number, src.trolley, src.src_trolley) as trolley_calc'
      '        , ind.units as units_print'
      '        , nom.compiled_name_otdel, nom.h_name'
      '        , ind.GTD_COUNTRY'
      '        , c.country as gtd_country_name'
      '    FROM invoice_data ind, invoice_data_as_is src,'
      '         nomenclature_mat_view nom,  COUNTRIES c'
      '    WHERE ind.invoice_data_id = :invoice_data_id'
      '          and ind.n_id = nom.n_id'
      
        '          and ind.invoice_data_as_is_id  = src.invoice_data_as_i' +
        's_id(+)'
      '          and ind.GTD_COUNTRY = c.c_id(+)'
      '    order by n_id, STORNED_DATA, abs(units)')
    Session = STAR_DB
    SQL.Strings = (
      'begin'
      '  INVOICE_PKG.GET_INV_REGISTER_DONE(:INV_ID_, :CURSOR_);'
      'end;')
    MasterSource = InvoiceRegister_DS
    MasterFields = 'inv_id_'
    FetchAll = True
    Left = 352
    Top = 16
    ParamData = <
      item
        DataType = ftFloat
        Name = 'INV_ID_'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object InvoiceDataD_CHECK: TFloatField
      FieldName = 'D_CHECK'
    end
    object InvoiceDataINV_ID: TFloatField
      FieldName = 'INV_ID'
    end
    object InvoiceDataN_ID: TFloatField
      FieldName = 'N_ID'
    end
    object InvoiceDataUNITS: TFloatField
      FieldName = 'UNITS'
    end
    object InvoiceDataPRICE_PER_UNIT: TFloatField
      FieldName = 'PRICE_PER_UNIT'
    end
    object InvoiceDataTOTAL_SUM: TFloatField
      FieldName = 'TOTAL_SUM'
    end
    object InvoiceDataAMOUNT_IN_THE_PACK: TFloatField
      FieldName = 'AMOUNT_IN_THE_PACK'
    end
    object InvoiceDataINVOICE_DATA_ID: TFloatField
      FieldName = 'INVOICE_DATA_ID'
    end
    object InvoiceDataINVOICE_DATA_AS_IS_ID: TFloatField
      FieldName = 'INVOICE_DATA_AS_IS_ID'
    end
    object InvoiceDataFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Size = 515
    end
    object InvoiceDataF_NAME: TStringField
      FieldName = 'F_NAME'
      Size = 256
    end
    object InvoiceDataF_NAME_RU: TStringField
      FieldName = 'F_NAME_RU'
      Size = 256
    end
    object InvoiceDataLEN: TIntegerField
      FieldName = 'LEN'
    end
    object InvoiceDataCOLOUR: TStringField
      FieldName = 'COLOUR'
      Size = 50
    end
    object InvoiceDataCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
    object InvoiceDataS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Size = 150
    end
    object InvoiceDataINV_MARKS: TStringField
      FieldName = 'INV_MARKS'
      Size = 4000
    end
    object InvoiceDataRUS_MARKS: TStringField
      FieldName = 'RUS_MARKS'
      Size = 4000
    end
    object InvoiceDataDIAMETER: TFloatField
      FieldName = 'DIAMETER'
    end
    object InvoiceDataFT_ID: TFloatField
      FieldName = 'FT_ID'
    end
    object InvoiceDataF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Size = 50
    end
    object InvoiceDataFST_ID: TFloatField
      FieldName = 'FST_ID'
    end
    object InvoiceDataF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Size = 50
    end
    object InvoiceDataCUST_COEF: TFloatField
      FieldName = 'CUST_COEF'
    end
    object InvoiceDataGTD: TStringField
      FieldName = 'GTD'
      Size = 30
    end
    object InvoiceDataH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 80
    end
    object InvoiceDataSENDED_TO_WAREHOUSE: TIntegerField
      FieldName = 'SENDED_TO_WAREHOUSE'
    end
    object InvoiceDataPACK: TFloatField
      FieldName = 'PACK'
    end
    object InvoiceDataHOL_PACK: TIntegerField
      FieldName = 'HOL_PACK'
    end
    object InvoiceDataSTORNED_DATA: TIntegerField
      FieldName = 'STORNED_DATA'
    end
    object InvoiceDataSTORNED_TEXT: TStringField
      FieldName = 'STORNED_TEXT'
      Size = 15
    end
    object InvoiceDataREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 256
    end
    object InvoiceDataCODE: TFloatField
      FieldName = 'CODE'
    end
    object InvoiceDataBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
      Size = 30
    end
    object InvoiceDataIS_PHOTO: TFloatField
      FieldName = 'IS_PHOTO'
    end
    object InvoiceDataPHOTO: TStringField
      FieldName = 'PHOTO'
      Size = 80
    end
    object InvoiceDataNN: TFloatField
      FieldName = 'NN'
    end
    object InvoiceDataTRUCK: TIntegerField
      FieldName = 'TRUCK'
    end
    object InvoiceDataTROLLEY: TFloatField
      FieldName = 'TROLLEY'
    end
    object InvoiceDataSRC_TROLLEY: TStringField
      FieldName = 'SRC_TROLLEY'
      Size = 61
    end
    object InvoiceDataCLIENT: TStringField
      FieldName = 'CLIENT'
      Size = 30
    end
    object InvoiceDataTROLLEY_CALC: TFloatField
      FieldName = 'TROLLEY_CALC'
    end
    object InvoiceDataUNITS_PRINT: TFloatField
      FieldName = 'UNITS_PRINT'
    end
    object InvoiceDataCOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 500
    end
    object InvoiceDataH_NAME: TStringField
      FieldName = 'H_NAME'
      Size = 256
    end
    object InvoiceDataNOPRINT: TIntegerField
      FieldName = 'NOPRINT'
    end
    object InvoiceDataNOTUSE: TIntegerField
      FieldName = 'NOTUSE'
    end
    object InvoiceDataFN_ID: TFloatField
      FieldName = 'FN_ID'
    end
    object InvoiceDataC_ID: TFloatField
      FieldName = 'C_ID'
    end
    object InvoiceDataS_ID: TFloatField
      FieldName = 'S_ID'
    end
    object InvoiceDataCOL_ID: TFloatField
      FieldName = 'COL_ID'
    end
    object InvoiceDataHT_ID: TFloatField
      FieldName = 'HT_ID'
    end
    object InvoiceDataWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object InvoiceDataWEIGHTDRY: TFloatField
      FieldName = 'WEIGHTDRY'
    end
    object InvoiceDataVBN: TIntegerField
      FieldName = 'VBN'
    end
    object InvoiceDataTNVED: TStringField
      FieldName = 'TNVED'
      Size = 50
    end
    object InvoiceDataHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
    end
    object InvoiceDataGTD_COUNTRY: TIntegerField
      FieldName = 'GTD_COUNTRY'
    end
    object InvoiceDataGTD_COUNTRY_NAME: TStringField
      FieldName = 'GTD_COUNTRY_NAME'
      Size = 50
    end
    object InvoiceDataNOM_NEW: TIntegerField
      FieldName = 'NOM_NEW'
    end
    object InvoiceDataNOM_START: TIntegerField
      FieldName = 'NOM_START'
    end
    object InvoiceDataNOM_END: TIntegerField
      FieldName = 'NOM_END'
    end
    object InvoiceDataNOM_ADD: TIntegerField
      FieldName = 'NOM_ADD'
    end
    object InvoiceDataNOM_SPECIAL: TIntegerField
      FieldName = 'NOM_SPECIAL'
    end
    object InvoiceDataPARENT: TFloatField
      FieldName = 'PARENT'
    end
    object InvoiceDataHOL_COLOR: TStringField
      FieldName = 'HOL_COLOR'
      Size = 50
    end
    object InvoiceDataNAME_CODE: TStringField
      FieldName = 'NAME_CODE'
      Size = 30
    end
    object InvoiceDataNSI_NAME: TStringField
      FieldName = 'NSI_NAME'
      Size = 50
    end
  end
  object InvoiceData_DS: TDataSource
    DataSet = InvoiceData
    Left = 352
    Top = 72
  end
  object SeekNomenclature: TOraQuery
    Session = STAR_DB
    SQL.Strings = (
      'SELECT '
      '  * '
      'FROM '
      '  NOMENCLATURE '
      'WHERE '
      '  H_CODE = :SKU')
    MasterSource = InvoiceAsIs_DS
    Left = 288
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'SKU'
      end>
  end
  object FlowerTypes: TOraQuery
    Session = STAR_DB
    SQL.Strings = (
      'select * from flower_types')
    Left = 456
    Top = 400
    object FlowerTypesFT_ID: TFloatField
      FieldName = 'FT_ID'
      Required = True
    end
    object FlowerTypesF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Required = True
      Size = 30
    end
    object FlowerTypesFT_MASK: TStringField
      FieldName = 'FT_MASK'
      Size = 50
    end
  end
  object Nomenclature: TOraQuery
    SQLRefresh.Strings = (
      'select H_NAME from nomenclature where n_id = :n_id')
    Session = STAR_DB
    SQL.Strings = (
      'begin'
      
        '  INVOICE_PKG.GET_NOMENCLATURE(:ID_DEPARTMENTS_, :v_office, :CUR' +
        'SOR_);'
      'end;')
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    BeforeOpen = NomenclatureBeforeOpen
    BeforeRefresh = NomenclatureBeforeOpen
    Left = 104
    Top = 184
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEPARTMENTS_'
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
    object NomenclatureCOMPILED_NAME: TStringField
      FieldName = 'COMPILED_NAME'
      Size = 299
    end
    object NomenclatureFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Size = 515
    end
    object NomenclatureF_NAME: TStringField
      FieldName = 'F_NAME'
      Size = 256
    end
    object NomenclatureF_NAME_RU: TStringField
      FieldName = 'F_NAME_RU'
      Size = 256
    end
    object NomenclatureF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Size = 50
    end
    object NomenclatureF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Size = 50
    end
    object NomenclatureN_ID: TFloatField
      FieldName = 'N_ID'
    end
    object NomenclatureFN_ID: TFloatField
      FieldName = 'FN_ID'
    end
    object NomenclatureFT_ID: TFloatField
      FieldName = 'FT_ID'
    end
    object NomenclatureFST_ID: TFloatField
      FieldName = 'FST_ID'
    end
    object NomenclatureS_ID: TFloatField
      FieldName = 'S_ID'
    end
    object NomenclatureC_ID: TFloatField
      FieldName = 'C_ID'
    end
    object NomenclatureCOL_ID: TFloatField
      FieldName = 'COL_ID'
    end
    object NomenclatureH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 50
    end
    object NomenclatureH_NAME: TStringField
      FieldName = 'H_NAME'
      Size = 256
    end
    object NomenclatureCODE: TFloatField
      FieldName = 'CODE'
    end
    object NomenclatureBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
      Size = 30
    end
    object NomenclatureLEN: TIntegerField
      FieldName = 'LEN'
    end
    object NomenclaturePACK: TIntegerField
      FieldName = 'PACK'
    end
    object NomenclatureVBN: TIntegerField
      FieldName = 'VBN'
    end
    object NomenclatureHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
    end
    object NomenclatureWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object NomenclatureWEIGHTDRY: TFloatField
      FieldName = 'WEIGHTDRY'
    end
    object NomenclatureS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Size = 150
    end
    object NomenclatureCOLOUR: TStringField
      FieldName = 'COLOUR'
      Size = 50
    end
    object NomenclatureCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
    object NomenclatureTYPE_SUBTYPE: TStringField
      FieldName = 'TYPE_SUBTYPE'
      Size = 103
    end
    object NomenclatureF_NAMES: TStringField
      FieldName = 'F_NAMES'
      Size = 515
    end
    object NomenclatureCUST_COEF: TFloatField
      FieldName = 'CUST_COEF'
    end
    object NomenclaturePRICE: TFloatField
      FieldName = 'PRICE'
    end
    object NomenclaturePRICE_DATE: TDateTimeField
      FieldName = 'PRICE_DATE'
    end
    object NomenclatureDIAMETER: TFloatField
      FieldName = 'DIAMETER'
    end
    object NomenclatureHT_ID: TFloatField
      FieldName = 'HT_ID'
    end
    object NomenclatureIS_PHOTO: TFloatField
      FieldName = 'IS_PHOTO'
    end
    object NomenclaturePHOTO: TStringField
      FieldName = 'PHOTO'
      Size = 30
    end
    object NomenclatureREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 256
    end
    object NomenclatureCOMPILED_NAME_POT: TStringField
      FieldName = 'COMPILED_NAME_POT'
      Size = 350
    end
    object NomenclatureQUANTITY: TFloatField
      FieldName = 'QUANTITY'
    end
    object NomenclatureCOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 350
    end
    object NomenclatureID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object NomenclatureTNVED: TStringField
      FieldName = 'TNVED'
      Size = 50
    end
    object NomenclatureNOM_NEW: TIntegerField
      FieldName = 'NOM_NEW'
    end
    object NomenclatureNOM_START: TIntegerField
      FieldName = 'NOM_START'
    end
    object NomenclatureNOM_END: TIntegerField
      FieldName = 'NOM_END'
    end
    object NomenclatureHOL_COLOR: TStringField
      FieldName = 'HOL_COLOR'
      Size = 50
    end
    object NomenclatureNAME_CODE: TStringField
      FieldName = 'NAME_CODE'
    end
    object NomenclatureHOL_PACK: TIntegerField
      FieldName = 'HOL_PACK'
    end
    object NomenclatureNSI_NAME: TStringField
      FieldName = 'NSI_NAME'
      Size = 50
    end
  end
  object Nomenclature_DS: TDataSource
    DataSet = Nomenclature
    Left = 104
    Top = 232
  end
  object SelQ: TOraQuery
    Session = STAR_DB
    Left = 96
    Top = 16
  end
  object SeekRecognised: TOraQuery
    Session = STAR_DB
    MasterSource = InvoiceAsIs_DS
    Left = 288
    Top = 376
  end
  object OldDict: TQuery
    DatabaseName = 'OldDictDB'
    SQL.Strings = (
      'select '
      'TITLE, '
      'TITLERU,'
      'CODE,'
      'MARK,'
      'FLOW,'
      'UNIT,'
      'HFL'
      'from "OldDb/DICT.dbf" '
      'where'
      '/*filter*/ 1=1')
    Left = 600
    Top = 104
    object OldDictTITLE: TStringField
      FieldName = 'TITLE'
      Origin = 'OLDDICTDB."DICT.DBF".TITLE'
      Size = 45
    end
    object OldDictTITLERU: TStringField
      FieldName = 'TITLERU'
      Origin = 'OLDDICTDB."DICT.DBF".TITLERU'
      Size = 25
    end
    object OldDictFLOW: TSmallintField
      FieldName = 'FLOW'
      Origin = 'OLDDICTDB."DICT.DBF".FLOW'
    end
    object OldDictMARK: TSmallintField
      FieldName = 'MARK'
      Origin = 'OLDDICTDB."DICT.DBF".MARK'
    end
    object OldDictUNIT: TSmallintField
      FieldName = 'UNIT'
      Origin = 'OLDDICTDB."DICT.DBF".UNIT'
    end
    object OldDictCODE: TStringField
      FieldName = 'CODE'
      Origin = 'OLDDICTDB."DICT.DBF".CODE'
      Size = 13
    end
    object OldDictHFL: TFloatField
      FieldName = 'HFL'
      Origin = 'OLDDICTDB."DICT.DBF".HFL'
    end
  end
  object OldDict_DS: TDataSource
    DataSet = OldDict
    Left = 600
    Top = 152
  end
  object DBOldDict: TDatabase
    DatabaseName = 'OldDictDB'
    DriverName = 'STANDARD'
    LoginPrompt = False
    SessionName = 'Default'
    TransIsolation = tiDirtyRead
    Left = 600
    Top = 48
  end
  object StorProc: TOraStoredProc
    Session = STAR_DB
    Left = 96
    Top = 72
  end
  object NomSpecs: TOraQuery
    Session = STAR_DB
    SQL.Strings = (
      'begin'
      '  creator.INVOICE_PKG.GET_SPEC_VIEW(:N_ID_, :CURSOR_);'
      'end;')
    Left = 536
    Top = 408
    ParamData = <
      item
        DataType = ftFloat
        Name = 'N_ID_'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object NomSpecsN_ID: TFloatField
      FieldName = 'N_ID'
      Required = True
    end
    object NomSpecsHS_ID: TFloatField
      FieldName = 'HS_ID'
      Required = True
    end
    object NomSpecsSC_ID: TFloatField
      FieldName = 'SC_ID'
    end
    object NomSpecsHS_VAL: TStringField
      FieldName = 'HS_VAL'
      Size = 50
    end
    object NomSpecsORD: TFloatField
      FieldName = 'ORD'
      Required = True
    end
    object NomSpecsSPEC_CODE: TStringField
      FieldName = 'SPEC_CODE'
      Size = 5
    end
    object NomSpecsSPEC_NAME: TStringField
      FieldName = 'SPEC_NAME'
      Size = 256
    end
    object NomSpecsSPEC_HOL_NAME: TStringField
      FieldName = 'SPEC_HOL_NAME'
      Size = 256
    end
    object NomSpecsADDITION: TStringField
      FieldName = 'ADDITION'
      Size = 5
    end
    object NomSpecsRUSSIAN_ADDITION: TStringField
      FieldName = 'RUSSIAN_ADDITION'
      Size = 5
    end
    object NomSpecsNEED_TRANSLATION: TIntegerField
      FieldName = 'NEED_TRANSLATION'
    end
    object NomSpecsCONTENT_HOL: TStringField
      FieldName = 'CONTENT_HOL'
      Size = 56
    end
    object NomSpecsCONTENT_RUS: TStringField
      FieldName = 'CONTENT_RUS'
      Size = 56
    end
  end
  object NomSpecs_DS: TOraDataSource
    DataSet = NomSpecs
    Left = 536
    Top = 456
  end
  object DataSource1: TDataSource
    DataSet = SeekNomenclature
    Left = 384
    Top = 328
  end
  object Nomenclature2: TOraQuery
    SQLRefresh.Strings = (
      'begin'
      
        '  creator.INVOICE2_PKG.GET_NOMENCLATURE_ID(:ID_DEPARTMENTS_, :N_' +
        'ID_, :inv_id_, :vSupplier, :CURSOR_);'
      'end;')
    Session = STAR_DB
    SQL.Strings = (
      'begin'
      
        '  creator.INVOICE2_PKG.GET_NOMENCLATURE_ID(:ID_DEPARTMENTS_, :N_' +
        'ID_, :inv_id_, :vSupplier, :CURSOR_);'
      'end;')
    FetchAll = True
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = Nomenclature2BeforeOpen
    BeforeRefresh = Nomenclature2BeforeRefresh
    Left = 232
    Top = 184
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEPARTMENTS_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'N_ID_'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'inv_id_'
      end
      item
        DataType = ftUnknown
        Name = 'vSupplier'
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Nomenclature2COMPILED_NAME: TStringField
      FieldName = 'COMPILED_NAME'
      Size = 299
    end
    object Nomenclature2FULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Size = 515
    end
    object Nomenclature2F_NAME: TStringField
      FieldName = 'F_NAME'
      Size = 256
    end
    object Nomenclature2F_NAME_RU: TStringField
      FieldName = 'F_NAME_RU'
      Size = 256
    end
    object Nomenclature2F_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Size = 50
    end
    object Nomenclature2F_TYPE: TStringField
      FieldName = 'F_TYPE'
      Size = 50
    end
    object Nomenclature2N_ID: TFloatField
      FieldName = 'N_ID'
    end
    object Nomenclature2FN_ID: TFloatField
      FieldName = 'FN_ID'
    end
    object Nomenclature2FT_ID: TFloatField
      FieldName = 'FT_ID'
    end
    object Nomenclature2FST_ID: TFloatField
      FieldName = 'FST_ID'
    end
    object Nomenclature2S_ID: TFloatField
      FieldName = 'S_ID'
    end
    object Nomenclature2C_ID: TFloatField
      FieldName = 'C_ID'
    end
    object Nomenclature2COL_ID: TFloatField
      FieldName = 'COL_ID'
    end
    object Nomenclature2H_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 50
    end
    object Nomenclature2H_NAME: TStringField
      FieldName = 'H_NAME'
      Size = 256
    end
    object Nomenclature2CODE: TFloatField
      FieldName = 'CODE'
    end
    object Nomenclature2BAR_CODE: TStringField
      FieldName = 'BAR_CODE'
      Size = 30
    end
    object Nomenclature2LEN: TIntegerField
      FieldName = 'LEN'
    end
    object Nomenclature2PACK: TIntegerField
      FieldName = 'PACK'
    end
    object Nomenclature2VBN: TIntegerField
      FieldName = 'VBN'
    end
    object Nomenclature2HOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
    end
    object Nomenclature2WEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object Nomenclature2WEIGHTDRY: TFloatField
      FieldName = 'WEIGHTDRY'
    end
    object Nomenclature2S_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Size = 150
    end
    object Nomenclature2COLOUR: TStringField
      FieldName = 'COLOUR'
      Size = 50
    end
    object Nomenclature2COUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
    object Nomenclature2TYPE_SUBTYPE: TStringField
      FieldName = 'TYPE_SUBTYPE'
      Size = 103
    end
    object Nomenclature2F_NAMES: TStringField
      FieldName = 'F_NAMES'
      Size = 515
    end
    object Nomenclature2CUST_COEF: TFloatField
      FieldName = 'CUST_COEF'
    end
    object Nomenclature2DIAMETER: TFloatField
      FieldName = 'DIAMETER'
    end
    object Nomenclature2HT_ID: TFloatField
      FieldName = 'HT_ID'
    end
    object Nomenclature2IS_PHOTO: TFloatField
      FieldName = 'IS_PHOTO'
    end
    object Nomenclature2PHOTO: TStringField
      FieldName = 'PHOTO'
      Size = 30
    end
    object Nomenclature2REMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 256
    end
    object Nomenclature2RUS_MARKS: TStringField
      FieldName = 'RUS_MARKS'
      Size = 4000
    end
    object Nomenclature2COMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 350
    end
    object Nomenclature2UNITS: TFloatField
      FieldName = 'UNITS'
    end
    object Nomenclature2ID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Nomenclature2TNVED: TStringField
      FieldName = 'TNVED'
      Size = 50
    end
    object Nomenclature2NOM_NEW: TIntegerField
      FieldName = 'NOM_NEW'
    end
    object Nomenclature2NOM_START: TIntegerField
      FieldName = 'NOM_START'
    end
    object Nomenclature2NOM_END: TIntegerField
      FieldName = 'NOM_END'
    end
    object Nomenclature2HOL_COLOR: TStringField
      FieldName = 'HOL_COLOR'
      Size = 50
    end
    object Nomenclature2NAME_CODE: TStringField
      FieldName = 'NAME_CODE'
    end
    object Nomenclature2HOL_PACK: TIntegerField
      FieldName = 'HOL_PACK'
    end
  end
  object Nomenclature2_DS: TDataSource
    DataSet = Nomenclature2
    Left = 232
    Top = 232
  end
  object CDS_COUNTRY2: TOraQuery
    SQL.Strings = (
      'begin'
      '  creator.NOMENCLATURE_PKG.SELECT_COUNTRY(:CURSOR_);'
      'end;')
    FilterOptions = [foCaseInsensitive]
    Left = 480
    Top = 104
    ParamData = <
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptInputOutput
        Value = 'Object'
      end>
    object CDS_COUNTRY2C_ID: TIntegerField
      FieldName = 'C_ID'
      Required = True
    end
    object CDS_COUNTRY2COUNTRY: TStringField
      FieldName = 'COUNTRY'
      Required = True
      Size = 50
    end
  end
  object DS_COUNTRY2: TOraDataSource
    DataSet = CDS_COUNTRY2
    Left = 480
    Top = 176
  end
  object Nomenclature_one: TOraQuery
    SQLRefresh.Strings = (
      'begin'
      
        '  creator.INVOICE_PKG.GET_NOMENCLATURE_ID(:ID_DEPARTMENTS_, :N_I' +
        'D_, :CURSOR_);'
      'end;')
    Session = STAR_DB
    SQL.Strings = (
      'begin'
      
        '  INVOICE_PKG.GET_NOMENCLATURE_ID(:ID_DEPARTMENTS_, :N_ID_, :CUR' +
        'SOR_);'
      'end;')
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = Nomenclature_oneBeforeOpen
    BeforeRefresh = Nomenclature_oneBeforeOpen
    Left = 344
    Top = 184
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEPARTMENTS_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'N_ID_'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Nomenclature_oneCOMPILED_NAME: TStringField
      FieldName = 'COMPILED_NAME'
      Size = 299
    end
    object Nomenclature_oneFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Size = 515
    end
    object Nomenclature_oneF_NAME: TStringField
      FieldName = 'F_NAME'
      Size = 256
    end
    object Nomenclature_oneF_NAME_RU: TStringField
      FieldName = 'F_NAME_RU'
      Size = 256
    end
    object Nomenclature_oneF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Size = 50
    end
    object Nomenclature_oneF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Size = 50
    end
    object Nomenclature_oneN_ID: TFloatField
      FieldName = 'N_ID'
    end
    object Nomenclature_oneFN_ID: TFloatField
      FieldName = 'FN_ID'
    end
    object Nomenclature_oneFT_ID: TFloatField
      FieldName = 'FT_ID'
    end
    object Nomenclature_oneFST_ID: TFloatField
      FieldName = 'FST_ID'
    end
    object Nomenclature_oneS_ID: TFloatField
      FieldName = 'S_ID'
    end
    object Nomenclature_oneC_ID: TFloatField
      FieldName = 'C_ID'
    end
    object Nomenclature_oneCOL_ID: TFloatField
      FieldName = 'COL_ID'
    end
    object Nomenclature_oneH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 50
    end
    object Nomenclature_oneH_NAME: TStringField
      FieldName = 'H_NAME'
      Size = 256
    end
    object Nomenclature_oneCODE: TFloatField
      FieldName = 'CODE'
    end
    object Nomenclature_oneBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
      Size = 30
    end
    object Nomenclature_oneLEN: TIntegerField
      FieldName = 'LEN'
    end
    object Nomenclature_onePACK: TIntegerField
      FieldName = 'PACK'
    end
    object Nomenclature_oneVBN: TIntegerField
      FieldName = 'VBN'
    end
    object Nomenclature_oneHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
    end
    object Nomenclature_oneWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object Nomenclature_oneWEIGHTDRY: TFloatField
      FieldName = 'WEIGHTDRY'
    end
    object Nomenclature_oneS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Size = 150
    end
    object Nomenclature_oneCOLOUR: TStringField
      FieldName = 'COLOUR'
      Size = 50
    end
    object Nomenclature_oneCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
    object Nomenclature_oneTYPE_SUBTYPE: TStringField
      FieldName = 'TYPE_SUBTYPE'
      Size = 103
    end
    object Nomenclature_oneF_NAMES: TStringField
      FieldName = 'F_NAMES'
      Size = 515
    end
    object Nomenclature_oneCUST_COEF: TFloatField
      FieldName = 'CUST_COEF'
    end
    object Nomenclature_oneDIAMETER: TFloatField
      FieldName = 'DIAMETER'
    end
    object Nomenclature_oneHT_ID: TFloatField
      FieldName = 'HT_ID'
    end
    object Nomenclature_oneIS_PHOTO: TFloatField
      FieldName = 'IS_PHOTO'
    end
    object Nomenclature_onePHOTO: TStringField
      FieldName = 'PHOTO'
      Size = 30
    end
    object Nomenclature_oneREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 256
    end
    object Nomenclature_oneRUS_MARKS: TStringField
      FieldName = 'RUS_MARKS'
      Size = 4000
    end
    object Nomenclature_oneCOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 350
    end
    object Nomenclature_oneUNITS: TFloatField
      FieldName = 'UNITS'
    end
    object Nomenclature_oneID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Nomenclature_oneTNVED: TStringField
      FieldName = 'TNVED'
      Size = 50
    end
    object Nomenclature_oneNOM_NEW: TIntegerField
      FieldName = 'NOM_NEW'
    end
    object Nomenclature_oneNOM_START: TIntegerField
      FieldName = 'NOM_START'
    end
    object Nomenclature_oneNOM_END: TIntegerField
      FieldName = 'NOM_END'
    end
    object Nomenclature_oneHOL_COLOR: TStringField
      FieldName = 'HOL_COLOR'
      Size = 50
    end
    object Nomenclature_oneNAME_CODE: TStringField
      FieldName = 'NAME_CODE'
    end
    object Nomenclature_oneHOL_PACK: TIntegerField
      FieldName = 'HOL_PACK'
    end
  end
  object Nomenclature_one_DS: TDataSource
    DataSet = Nomenclature_one
    Left = 344
    Top = 232
  end
  object SelPrntPreview: TOraQuery
    Session = STAR_DB
    SQL.Strings = (
      'select a.* from ('
      
        'SELECT a.*, nvl(c.TROLLEY,0) as TROLLEY, nvl(c.TRUCK,0) as TRUCK' +
        ', '
      
        'case when r.ID_DEPARTMENTS=61 then c.order_number||'#39'.'#39'||c.src_tr' +
        'olley else c.src_trolley end src_trolley'
      ', c.order_number'
      
        '           , dense_rank() over(PARTITION by c.truck order by c.o' +
        'rder_number, c.trolley, c.src_trolley) as trolley_calc'
      
        'FROM  PPRNT_VIEW a, INVOICE_DATA b, INVOICE_DATA_AS_IS c, invoic' +
        'e_register r'
      'where a.n_id=b.n_id and a.INVOICE_ID = b.INVOICE_DATA_ID'
      '      and b.INVOICE_DATA_AS_IS_ID = c.INVOICE_DATA_AS_IS_ID(+)'
      '      and b.inv_id = :idd and b.inv_id = r.inv_id'
      ') a      '
      'order by TRUCK, trolley_calc')
    FetchAll = True
    Left = 448
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idd'
      end>
    object SelPrntPreviewN_ID: TFloatField
      FieldName = 'N_ID'
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
      Size = 50
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
    object SelPrntPreviewTROLLEY: TFloatField
      FieldName = 'TROLLEY'
    end
    object SelPrntPreviewTRUCK: TFloatField
      FieldName = 'TRUCK'
    end
    object SelPrntPreviewSRC_TROLLEY: TStringField
      FieldName = 'SRC_TROLLEY'
      Size = 61
    end
    object SelPrntPreviewORDER_NUMBER: TFloatField
      FieldName = 'ORDER_NUMBER'
    end
    object SelPrntPreviewTROLLEY_CALC: TFloatField
      FieldName = 'TROLLEY_CALC'
    end
  end
  object CDS_PRINT: TOraQuery
    Session = STAR_DB
    SQL.Strings = (
      'begin'
      '  INVOICE_PKG.PRINT_INVOICE(:V_INV_ID, :CURSOR_);'
      'end;')
    FetchAll = True
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    BeforeOpen = NomenclatureBeforeOpen
    BeforeRefresh = NomenclatureBeforeOpen
    Left = 64
    Top = 304
    ParamData = <
      item
        DataType = ftFloat
        Name = 'V_INV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object CDS_PRINTN_ID: TFloatField
      FieldName = 'N_ID'
    end
    object CDS_PRINTUNITS: TFloatField
      FieldName = 'UNITS'
    end
    object CDS_PRINTF_NAME: TStringField
      FieldName = 'F_NAME'
      Size = 256
    end
    object CDS_PRINTF_NAME_RU: TStringField
      FieldName = 'F_NAME_RU'
      Size = 256
    end
    object CDS_PRINTCOLOUR: TStringField
      FieldName = 'COLOUR'
      Size = 50
    end
    object CDS_PRINTCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
    object CDS_PRINTS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Size = 150
    end
    object CDS_PRINTRUS_MARKS: TStringField
      FieldName = 'RUS_MARKS'
      Size = 4000
    end
    object CDS_PRINTH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 50
    end
    object CDS_PRINTBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
      Size = 30
    end
    object CDS_PRINTTROLLEY: TFloatField
      FieldName = 'TROLLEY'
    end
    object CDS_PRINTTRUCK: TFloatField
      FieldName = 'TRUCK'
    end
    object CDS_PRINTSRC_TROLLEY: TStringField
      FieldName = 'SRC_TROLLEY'
    end
    object CDS_PRINTTROLLEY_CALC: TFloatField
      FieldName = 'TROLLEY_CALC'
    end
    object CDS_PRINTF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Size = 50
    end
    object CDS_PRINTF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Size = 50
    end
  end
  object DS_PRINT: TDataSource
    DataSet = CDS_PRINT
    Left = 64
    Top = 352
  end
  object frx_print: TfrxReport
    Version = '4.12.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38617.641811064800000000
    ReportOptions.LastChange = 41068.062905081000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 65
    Top = 408
    Datasets = <
      item
        DataSet = frx_print_db
        DataSetName = 'frx_print_db'
      end
      item
        DataSet = frx_print_index
        DataSetName = 'frx_print_index'
      end>
    Variables = <
      item
        Name = ' UserCat'
        Value = Null
      end
      item
        Name = 'PrintMark'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'tahoma'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Columns = 2
      ColumnWidth = 100.000000000000000000
      ColumnPositions.Strings = (
        '0'
        '100')
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'tahoma'
        Font.Style = []
        Height = 26.456692910000000000
        ParentFont = False
        Top = 200.315090000000000000
        Width = 377.953000000000000000
        ColumnWidth = 343.937007874016000000
        DataSet = frx_print_db
        DataSetName = 'frx_print_db'
        RowCount = 0
        Stretched = True
        object frx_print_dbUNITS: TfrxMemoView
          Align = baLeft
          Width = 30.236240000000000000
          Height = 26.456710000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'UNITS'
          DataSet = frx_print_db
          DataSetName = 'frx_print_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_print_db."UNITS"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frx_print_dbF_NAME_RU: TfrxMemoView
          Align = baLeft
          Left = 30.236240000000000000
          Width = 321.259927950000000000
          Height = 26.456710000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frx_print_db
          DataSetName = 'frx_print_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            '[frx_print_db."F_NAME_RU"] [frx_print_db."RUS_MARKS"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Align = baLeft
          Left = 351.496167950000000000
          Width = 18.897650000000000000
          Height = 26.456710000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 26.456692910000000000
        Top = 151.181200000000000000
        Width = 377.953000000000000000
        Condition = 'frx_print_db."TROLLEY_CALC"'
        KeepTogether = True
        OutlineText = 'frx_print_db."TROLLEY_CALC"'
        object frx_print_dbTROLLEY: TfrxMemoView
          Align = baLeft
          Left = 30.236240000000000000
          Width = 79.370130000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = frx_print_db
          DataSetName = 'frx_print_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_print_db."SRC_TROLLEY"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frx_print_indexS_NAME_RU: TfrxMemoView
          Align = baLeft
          Left = 109.606370000000000000
          Width = 260.787325910000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = frx_print_index
          DataSetName = 'frx_print_index'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ' [frx_print_index."S_NAME_RU"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Width = 30.236240000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataSet = frx_print_db
          DataSetName = 'frx_print_db'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_print_db."TRUCK"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 287.244280000000000000
        Width = 755.906000000000000000
        object Memo3: TfrxMemoView
          Left = 623.622450000000000000
          Top = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Page] '#1056#1105#1056#183' [TotalPages]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 26.456692910000000000
        Top = 102.047310000000000000
        Visible = False
        Width = 377.953000000000000000
        Condition = 'frx_print_db."TRUCK"'
        OutlineText = 'frx_print_db."TRUCK"'
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Align = baWidth
          Width = 755.906000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          CharSpacing = 1.000000000000000000
          Color = 15987699
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              #1056#152#1056#1029#1056#1030#1056#1109#1056#8470#1057#1027' '#1074#8222#8211'[frx_print_index."INV_ID"] '#1056#1109#1057#8218' [frx_print_index' +
              '."INV_DATE"] ( [frx_print_index."S_NAME_RU"] '#1074#8222#8211'[frx_print_index' +
              '."SUPPLIER_NUMBER"] )')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frx_print_db: TfrxDBDataset
    UserName = 'frx_print_db'
    CloseDataSource = False
    FieldAliases.Strings = (
      'N_ID=N_ID'
      'UNITS=UNITS'
      'F_NAME=F_NAME'
      'F_NAME_RU=F_NAME_RU'
      'COLOUR=COLOUR'
      'COUNTRY=COUNTRY'
      'S_NAME_RU=S_NAME_RU'
      'RUS_MARKS=RUS_MARKS'
      'H_CODE=H_CODE'
      'BAR_CODE=BAR_CODE'
      'TROLLEY=TROLLEY'
      'TRUCK=TRUCK'
      'SRC_TROLLEY=SRC_TROLLEY'
      'TROLLEY_CALC=TROLLEY_CALC')
    DataSet = CDS_PRINT
    BCDToCurrency = False
    Left = 65
    Top = 463
  end
  object frx_print_index: TfrxDBDataset
    UserName = 'frx_print_index'
    CloseDataSource = False
    FieldAliases.Strings = (
      'INV_ID=INV_ID'
      'INV_DATE=INV_DATE'
      'COMMENTS=COMMENTS'
      'INV_SUM=INV_SUM'
      'SENDED_TO_WAREHOUSE=SENDED_TO_WAREHOUSE'
      'WAREHOUSE_SENDED_DATE=WAREHOUSE_SENDED_DATE'
      'SUPPLIER_DATE=SUPPLIER_DATE'
      'SUPPLIER_NUMBER=SUPPLIER_NUMBER'
      'IPP_ID=IPP_ID'
      'ID_DEPARTMENTS=ID_DEPARTMENTS'
      'INV_MINUS=INV_MINUS'
      'IS_MINUS=IS_MINUS'
      'INVOICE_TITLE=INVOICE_TITLE'
      'S_ID_DEFAULT=S_ID_DEFAULT'
      'C_ID_DEFAULT=C_ID_DEFAULT'
      'MINUS_INV_ID=MINUS_INV_ID'
      'S_NAME_RU=S_NAME_RU'
      'PRICE=PRICE'
      'PRICE_DONE=PRICE_DONE'
      'AS_IS_POS=AS_IS_POS'
      'READY_POS=READY_POS'
      'TOTAL_SUM_AS_IS=TOTAL_SUM_AS_IS'
      'TO_BE_POS=TO_BE_POS'
      'TOTAL_SUM_TO_BE=TOTAL_SUM_TO_BE'
      'PAST_NUM=PAST_NUM'
      'PROCENT_D=PROCENT_D'
      'INV_ID_=INV_ID_'
      'IN_FILE=IN_FILE'
      'IS_FILE=IS_FILE')
    DataSet = InvoiceRegister
    BCDToCurrency = False
    Left = 145
    Top = 463
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'xls'
    FileName = 'file1'
    Filter = 'Microsoft Excel Workbook (*.xls)|*.XLS'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 138
    Top = 310
  end
  object qStore: TQuery
    SessionName = 'Default'
    SQL.Strings = (
      
        'SELECT A, B, C FROM "C:\_work\delphi\StarLight\_'#1062#1074#1077#1090#1099' '#1088#1077#1075#1080#1086#1085#1099'\Ex' +
        'Read\out\PERM.DBF"')
    Left = 600
    Top = 280
    object qStoreA: TStringField
      FieldName = 'A'
      Size = 40
    end
    object qStoreB: TStringField
      FieldName = 'B'
      Size = 25
    end
    object qStoreC: TStringField
      FieldName = 'C'
      Size = 13
    end
  end
  object dStore: TDataSource
    DataSet = qStore
    Left = 600
    Top = 336
  end
  object inv_table: TTable
    TableName = 'C:\_work\delphi\StarLight\_'#1062#1074#1077#1090#1099' '#1088#1077#1075#1080#1086#1085#1099'\ExRead\out\PERM.DBF'
    Left = 524
    Top = 276
    object inv_tableA: TStringField
      FieldName = 'A'
      Size = 40
    end
    object inv_tableB: TStringField
      FieldName = 'B'
      Size = 25
    end
    object inv_tableC: TStringField
      FieldName = 'C'
      Size = 13
    end
  end
  object inv_table_ds: TDataSource
    DataSet = inv_table
    Left = 524
    Top = 332
  end
  object SelQ2: TOraQuery
    Session = STAR_DB
    Left = 96
    Top = 128
  end
end
