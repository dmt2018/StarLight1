object DM: TDM
  OldCreateOrder = False
  Height = 520
  Width = 834
  object SelectSession: TOraSession
    Options.Charset = 'CL8MSWIN1251'
    Options.Direct = True
    Username = 'creator'
    Password = '123456'
    Server = 'roznica:1521:orcl'
    AutoCommit = False
    Connected = True
    Left = 24
    Top = 16
  end
  object DictView: TOraQuery
    SQLUpdate.Strings = (
      'select 1 from dual')
    SQLRefresh.Strings = (
      'select a.*, nvl(i.CHECKED,1) as CHECKED, u.nsi_name'
      'from creator.nomenclature_mat_view a'
      '  left outer join import_flowers_kov i'
      '       on i.NOM_CODE = a.code'
      '  left outer join nsi_units u'
      '       on u.nsi_units_id = a.vbn'
      'where a.n_id = :n_id')
    Session = SelectSession
    SQL.Strings = (
      'begin'
      
        '  creator.NOMENCLATURE2_PKG.GET_NOMENCLATURE(:DEPT_, :v_office, ' +
        ':CURSOR_);'
      'end;')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = DictViewBeforeOpen
    BeforeRefresh = DictViewBeforeOpen
    Left = 96
    Top = 16
    ParamData = <
      item
        DataType = ftFloat
        Name = 'DEPT_'
        ParamType = ptInput
        Value = 121.000000000000000000
      end
      item
        DataType = ftInteger
        Name = 'v_office'
        Value = 1
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object DictViewD_CHECK: TFloatField
      FieldName = 'D_CHECK'
    end
    object DictViewF_NAME: TStringField
      FieldName = 'F_NAME'
      Size = 256
    end
    object DictViewF_NAME_RU: TStringField
      FieldName = 'F_NAME_RU'
      Size = 256
    end
    object DictViewF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Size = 50
    end
    object DictViewF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Size = 50
    end
    object DictViewCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
    object DictViewTYPE_SUBTYPE: TStringField
      FieldName = 'TYPE_SUBTYPE'
      Size = 103
    end
    object DictViewN_ID: TFloatField
      FieldName = 'N_ID'
    end
    object DictViewFN_ID: TFloatField
      FieldName = 'FN_ID'
    end
    object DictViewFT_ID: TFloatField
      FieldName = 'FT_ID'
    end
    object DictViewFST_ID: TFloatField
      FieldName = 'FST_ID'
    end
    object DictViewS_ID: TFloatField
      FieldName = 'S_ID'
    end
    object DictViewC_ID: TFloatField
      FieldName = 'C_ID'
    end
    object DictViewCOL_ID: TFloatField
      FieldName = 'COL_ID'
    end
    object DictViewH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 50
    end
    object DictViewH_NAME: TStringField
      FieldName = 'H_NAME'
      Size = 256
    end
    object DictViewHT_ID: TFloatField
      FieldName = 'HT_ID'
    end
    object DictViewCODE: TStringField
      FieldName = 'CODE'
      Size = 40
    end
    object DictViewLEN: TIntegerField
      FieldName = 'LEN'
    end
    object DictViewPACK: TIntegerField
      FieldName = 'PACK'
    end
    object DictViewHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
    end
    object DictViewWEIGHT: TFloatField
      FieldName = 'WEIGHT'
      DisplayFormat = '0.0000000000'
    end
    object DictViewWEIGHTDRY: TFloatField
      FieldName = 'WEIGHTDRY'
      DisplayFormat = '0.0000000000'
    end
    object DictViewS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Size = 150
    end
    object DictViewCOLOUR: TStringField
      FieldName = 'COLOUR'
      Size = 50
    end
    object DictViewIS_PHOTO: TFloatField
      FieldName = 'IS_PHOTO'
    end
    object DictViewHOL_MARKS: TStringField
      FieldName = 'HOL_MARKS'
      Size = 4000
    end
    object DictViewRUS_MARKS: TStringField
      FieldName = 'RUS_MARKS'
      Size = 4000
    end
    object DictViewDIAMETER: TFloatField
      FieldName = 'DIAMETER'
    end
    object DictViewBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
      Size = 30
    end
    object DictViewCUST_COEF: TFloatField
      FieldName = 'CUST_COEF'
    end
    object DictViewREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 256
    end
    object DictViewPHOTO: TStringField
      FieldName = 'PHOTO'
      Size = 30
    end
    object DictViewGREAT_NAME_F: TStringField
      FieldName = 'GREAT_NAME_F'
      Size = 372
    end
    object DictViewCOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 350
    end
    object DictViewNAME_CODE: TStringField
      FieldName = 'NAME_CODE'
    end
    object DictViewNOPRINT: TIntegerField
      FieldName = 'NOPRINT'
    end
    object DictViewNOTUSE: TIntegerField
      FieldName = 'NOTUSE'
    end
    object DictViewNAMECODE: TStringField
      FieldName = 'NAMECODE'
    end
    object DictViewTNVED: TStringField
      FieldName = 'TNVED'
      Size = 50
    end
    object DictViewID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object DictViewBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object DictViewCHECKED: TFloatField
      FieldName = 'CHECKED'
    end
    object DictViewNOM_NEW: TIntegerField
      FieldName = 'NOM_NEW'
    end
    object DictViewNOM_START: TIntegerField
      FieldName = 'NOM_START'
    end
    object DictViewNOM_END: TIntegerField
      FieldName = 'NOM_END'
    end
    object DictViewHOL_COLOR: TStringField
      FieldName = 'HOL_COLOR'
      Size = 50
    end
    object DictViewHS_VAL: TStringField
      FieldName = 'HS_VAL'
      Size = 50
    end
    object DictViewVBN: TIntegerField
      FieldName = 'VBN'
    end
    object DictViewNSI_NAME: TStringField
      FieldName = 'NSI_NAME'
      Size = 50
    end
    object DictViewHOL_PACK: TIntegerField
      FieldName = 'HOL_PACK'
    end
  end
  object DictView_DS: TDataSource
    DataSet = DictView
    Left = 96
    Top = 72
  end
  object FlowerNames: TOraQuery
    SQLUpdate.Strings = (
      'select 1 from dual')
    SQLRefresh.Strings = (
      'select a.FN_ID, a.F_NAME_RU'
      
        ' , (SELECT count(1) FROM FLOWER_NAME_TRANSLATIONS where FN_ID = ' +
        'a.FN_ID) as cnt'
      'FROM FLOWER_NAMES a '
      'where a.FN_ID = :FN_ID')
    Session = SelectSession
    SQL.Strings = (
      'select a.FN_ID, a.F_NAME_RU, ID_DEPARTMENTS, a.id_office'
      
        ' , (SELECT count(1) FROM FLOWER_NAME_TRANSLATIONS where FN_ID = ' +
        'a.FN_ID) as cnt'
      
        ' , (SELECT count(1) FROM NOMENCLATURE WHERE FN_ID = a.FN_ID) as ' +
        'cnt_noms'
      'FROM FLOWER_NAMES a '
      'where ID_DEPARTMENTS = :ID_DEPARTMENTS '
      'and (id_office in (1,:v_office) or :v_office = 0)'
      'order by F_NAME_RU')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = FlowerNamesAfterOpen
    BeforePost = FlowerNamesBeforePost
    AfterPost = FlowerNamesAfterPost
    BeforeRefresh = FlowerNamesAfterOpen
    Left = 32
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_DEPARTMENTS'
      end
      item
        DataType = ftUnknown
        Name = 'v_office'
      end>
    object FlowerNamesFN_ID: TFloatField
      FieldName = 'FN_ID'
      Required = True
    end
    object FlowerNamesF_NAME_RU: TStringField
      FieldName = 'F_NAME_RU'
      Required = True
      Size = 256
    end
    object FlowerNamesCNT: TFloatField
      FieldName = 'CNT'
    end
    object FlowerNamesID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
      Required = True
    end
    object FlowerNamesCNT_NOMS: TFloatField
      FieldName = 'CNT_NOMS'
    end
    object FlowerNamesID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
  end
  object FlowerNames_DS: TDataSource
    DataSet = FlowerNames
    Left = 32
    Top = 216
  end
  object Countries: TOraQuery
    Session = SelectSession
    SQL.Strings = (
      'select rownum as nn, a.* from ('
      'SELECT COUNTRY, COUNTRY_ENG, C_ID, mnemo, BUH_CODE '
      'FROM COUNTRIES '
      'WHERE NOT (C_ID = 0) '
      'ORDER BY COUNTRY'
      ') a')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 336
    Top = 168
    object CountriesC_ID: TIntegerField
      FieldName = 'C_ID'
      Required = True
    end
    object CountriesCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Required = True
      Size = 50
    end
    object CountriesNN: TFloatField
      FieldName = 'NN'
    end
    object CountriesCOUNTRY_ENG: TStringField
      FieldName = 'COUNTRY_ENG'
      Size = 50
    end
    object CountriesMNEMO: TStringField
      FieldName = 'MNEMO'
      Size = 10
    end
    object CountriesBUH_CODE: TStringField
      FieldName = 'BUH_CODE'
      Size = 10
    end
  end
  object Countries_DS: TDataSource
    DataSet = Countries
    Left = 336
    Top = 216
  end
  object Suppliers: TOraQuery
    Session = SelectSession
    SQL.Strings = (
      'select rownum as nn, a.* from ('
      
        'SELECT S_ID, S_NAME_RU, C_ID, COUNTRY, NEED_CUST, id_office, ana' +
        'lyze_days'
      'FROM SUPPLIERS_VIEW '
      'WHERE (NOT (S_ID = 0)) and id_office = :v_office'
      'ORDER BY S_NAME_RU'
      ') a')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = SuppliersAfterOpen
    BeforeRefresh = SuppliersAfterOpen
    Left = 408
    Top = 168
    ParamData = <
      item
        Name = 'v_office'
        ParamType = ptInput
        Value = Null
        ExtDataType = 107
      end>
    object SuppliersS_ID: TFloatField
      FieldName = 'S_ID'
      Required = True
    end
    object SuppliersS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Required = True
      Size = 150
    end
    object SuppliersC_ID: TFloatField
      FieldName = 'C_ID'
      Required = True
    end
    object SuppliersNEED_CUST: TIntegerField
      FieldName = 'NEED_CUST'
      Required = True
    end
    object SuppliersCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
    object SuppliersNN: TFloatField
      FieldName = 'NN'
    end
    object SuppliersID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object SuppliersANALYZE_DAYS: TIntegerField
      FieldName = 'ANALYZE_DAYS'
    end
  end
  object Suppliers_DS: TDataSource
    DataSet = Suppliers
    Left = 408
    Top = 216
  end
  object FlowerTypes: TOraQuery
    Session = SelectSession
    SQL.Strings = (
      'select rownum as nn, a.* from ('
      
        'SELECT a.ft_id, a.f_type, a.ft_mask, a.ht_id, a.hol_type, a.id_o' +
        'ffice '
      
        ', (SELECT COUNT(1) from dual where exists (SELECT 1 FROM FLOWER_' +
        'SUBTYPES where FT_ID = a.FT_ID)) as cnt'
      'FROM FT_VIEW a'
      'WHERE ID_DEPARTMENTS = :ID_DEPARTMENTS '
      '   and (id_office in (1,:v_office) or :v_office = 0)'
      'order by f_type'
      ') a')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = FlowerTypesAfterOpen
    BeforeRefresh = FlowerTypesAfterOpen
    Left = 488
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_DEPARTMENTS'
      end
      item
        DataType = ftUnknown
        Name = 'v_office'
      end>
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
    object FlowerTypesHT_ID: TFloatField
      FieldName = 'HT_ID'
    end
    object FlowerTypesHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
      Size = 10
    end
    object FlowerTypesNN: TFloatField
      FieldName = 'NN'
    end
    object FlowerTypesCNT: TFloatField
      FieldName = 'CNT'
    end
    object FlowerTypesID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
  end
  object FlowerTypes_DS: TDataSource
    DataSet = FlowerTypes
    Left = 488
    Top = 216
  end
  object FlowerSubTypes: TOraQuery
    Session = SelectSession
    SQL.Strings = (
      'select rownum as nn, a.* from ('
      
        'SELECT fst_id, f_sub_type, hol_sub_type, ft_id, f_type, double_n' +
        'ame, ht_id, hol_type, mnemo, sub_weight, id_office, price_prefix' +
        ', tnved, sub_weight_dry'
      'FROM fst_view'
      'WHERE '
      'FT_ID = :FT_ID '
      ' and (id_office in (1,:v_office) or :v_office = 0)'
      'order by f_sub_type'
      ') a')
    MasterSource = FlowerTypes_DS
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = FlowerSubTypesAfterOpen
    BeforeRefresh = FlowerSubTypesAfterOpen
    Left = 584
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FT_ID'
      end
      item
        DataType = ftUnknown
        Name = 'v_office'
      end>
    object FlowerSubTypesFST_ID: TFloatField
      FieldName = 'FST_ID'
      Required = True
    end
    object FlowerSubTypesF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Required = True
      Size = 30
    end
    object FlowerSubTypesFT_ID: TFloatField
      FieldName = 'FT_ID'
      Required = True
    end
    object FlowerSubTypesHOL_SUB_TYPE: TStringField
      FieldName = 'HOL_SUB_TYPE'
      Size = 50
    end
    object FlowerSubTypesNN: TFloatField
      FieldName = 'NN'
    end
    object FlowerSubTypesMNEMO: TStringField
      FieldName = 'MNEMO'
    end
    object FlowerSubTypesSUB_WEIGHT: TFloatField
      FieldName = 'SUB_WEIGHT'
    end
    object FlowerSubTypesF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Required = True
      Size = 50
    end
    object FlowerSubTypesDOUBLE_NAME: TStringField
      FieldName = 'DOUBLE_NAME'
      Size = 2053
    end
    object FlowerSubTypesHT_ID: TFloatField
      FieldName = 'HT_ID'
    end
    object FlowerSubTypesHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
    end
    object FlowerSubTypesID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object FlowerSubTypesPRICE_PREFIX: TStringField
      FieldName = 'PRICE_PREFIX'
      Size = 50
    end
    object FlowerSubTypesTNVED: TStringField
      FieldName = 'TNVED'
      Size = 50
    end
    object FlowerSubTypesSUB_WEIGHT_DRY: TFloatField
      FieldName = 'SUB_WEIGHT_DRY'
    end
  end
  object FlowerSubTypes_DS: TDataSource
    DataSet = FlowerSubTypes
    Left = 584
    Top = 216
  end
  object Colours: TOraQuery
    SQLRefresh.Strings = (
      'SELECT '
      '  COL_ID,'
      '  COLOUR'
      'FROM '
      '  COLOURS '
      'WHERE'
      '  COL_ID = :OLD_COL_ID')
    Session = SelectSession
    SQL.Strings = (
      'select rownum as nn, a.* from ('
      'SELECT COL_ID, COLOUR, id_office '
      'FROM COLOURS '
      'where (id_office in (1,:v_office) or :v_office = 0)'
      'ORDER BY COLOUR'
      ') a')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = ColoursAfterOpen
    BeforeRefresh = ColoursAfterOpen
    Left = 680
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'v_office'
      end>
    object ColoursCOL_ID: TFloatField
      FieldName = 'COL_ID'
      Required = True
    end
    object ColoursCOLOUR: TStringField
      FieldName = 'COLOUR'
      Required = True
      Size = 50
    end
    object ColoursNN: TFloatField
      FieldName = 'NN'
    end
    object ColoursID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
  end
  object Colours_DS: TDataSource
    DataSet = Colours
    Left = 680
    Top = 216
  end
  object SelQ: TOraQuery
    Session = SelectSession
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 256
    Top = 16
  end
  object HolSpec: TOraQuery
    SQLRefresh.Strings = (
      'select rownum as nn, a.* ,'
      'case when a.need_translation = 1 and bb = 0 then 1 else 0 end tt'
      'from ('
      
        'SELECT a.hs_id, a.spec_code, a.spec_name, a.spec_hol_name, a.add' +
        'ition, a.russian_addition, a.need_translation'
      
        ', (select count(*) from SPECIFICATION_CONTENT b WHERE a.HS_ID = ' +
        'b.HS_ID) as bb '
      'FROM HOL_SPECIFICATIONS a'
      'where a.hs_id = :hs_id'
      ') a')
    Session = SelectSession
    SQL.Strings = (
      'select rownum as nn, a.* ,'
      'case when a.need_translation = 1 and bb = 0 then 1 else 0 end tt'
      'from ('
      
        'SELECT a.hs_id, a.spec_code, a.spec_name, a.spec_hol_name, a.add' +
        'ition, a.russian_addition, a.need_translation'
      
        ', (select count(*) from SPECIFICATION_CONTENT b WHERE a.HS_ID = ' +
        'b.HS_ID) as bb '
      'FROM HOL_SPECIFICATIONS a'
      'ORDER BY a.SPEC_CODE'
      ') a')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 424
    Top = 16
    object HolSpecHS_ID: TFloatField
      FieldName = 'HS_ID'
      Required = True
    end
    object HolSpecSPEC_CODE: TStringField
      FieldName = 'SPEC_CODE'
      Required = True
      Size = 5
    end
    object HolSpecSPEC_NAME: TStringField
      FieldName = 'SPEC_NAME'
      Size = 256
    end
    object HolSpecSPEC_HOL_NAME: TStringField
      FieldName = 'SPEC_HOL_NAME'
      Size = 256
    end
    object HolSpecADDITION: TStringField
      FieldName = 'ADDITION'
      Size = 5
    end
    object HolSpecRUSSIAN_ADDITION: TStringField
      FieldName = 'RUSSIAN_ADDITION'
      Size = 5
    end
    object HolSpecNEED_TRANSLATION: TIntegerField
      FieldName = 'NEED_TRANSLATION'
      Required = True
    end
    object HolSpecNN: TFloatField
      FieldName = 'NN'
    end
    object HolSpecTT: TFloatField
      FieldName = 'TT'
    end
  end
  object HolSpec_DS: TOraDataSource
    DataSet = HolSpec
    Left = 424
    Top = 72
  end
  object NomSpec: TOraQuery
    Session = SelectSession
    SQL.Strings = (
      'SELECT HS_ID,SPEC_CODE,SPEC_NAME,HS_VAL,CONTENT_RUS,ORD,sc_id '
      'FROM SPECIFICATION_VIEW '
      'WHERE N_ID = :N_ID ORDER BY SPEC_NAME')
    MasterSource = DictView_DS
    MasterFields = 'N_ID'
    FilterOptions = [foCaseInsensitive]
    Left = 168
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'N_ID'
      end>
    object NomSpecSPEC_CODE: TStringField
      FieldName = 'SPEC_CODE'
      Size = 5
    end
    object NomSpecHS_VAL: TStringField
      FieldName = 'HS_VAL'
      Size = 50
    end
    object NomSpecCONTENT_RUS: TStringField
      FieldName = 'CONTENT_RUS'
      Size = 50
    end
    object NomSpecHS_ID: TFloatField
      FieldName = 'HS_ID'
      Required = True
    end
    object NomSpecSPEC_NAME: TStringField
      FieldName = 'SPEC_NAME'
      Size = 256
    end
    object NomSpecORD: TFloatField
      FieldName = 'ORD'
    end
    object NomSpecSC_ID: TFloatField
      FieldName = 'SC_ID'
    end
  end
  object NomSpec_DS: TOraDataSource
    DataSet = NomSpec
    Left = 168
    Top = 72
  end
  object SpecContent: TOraQuery
    Session = SelectSession
    SQL.Strings = (
      'SELECT a.sc_id, a.hs_id, a.content_hol, a.content_rus '
      'FROM SPECIFICATION_CONTENT a'
      'WHERE a.HS_ID = :HS_ID'
      'order by a.content_hol')
    MasterSource = HolSpec_DS
    MasterFields = 'HS_ID'
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 512
    Top = 16
    ParamData = <
      item
        DataType = ftFloat
        Name = 'HS_ID'
        ParamType = ptInput
        Value = 69.000000000000000000
      end>
    object SpecContentSC_ID: TFloatField
      FieldName = 'SC_ID'
      Required = True
    end
    object SpecContentHS_ID: TFloatField
      FieldName = 'HS_ID'
      Required = True
    end
    object SpecContentCONTENT_HOL: TStringField
      FieldName = 'CONTENT_HOL'
      Required = True
      Size = 50
    end
    object SpecContentCONTENT_RUS: TStringField
      FieldName = 'CONTENT_RUS'
      Required = True
      Size = 50
    end
  end
  object SpecContent_DS: TOraDataSource
    DataSet = SpecContent
    Left = 512
    Top = 72
  end
  object StorProc: TOraStoredProc
    Session = SelectSession
    Left = 256
    Top = 72
  end
  object HColours: TOraQuery
    SQLRefresh.Strings = (
      'SELECT'
      '  H_COL_ID,'
      '  COL_ID,'
      '  HOL_COLOUR'
      'FROM'
      '  H_COLOURS'
      'WHERE'
      '  H_COL_ID = :OLD_H_COL_ID')
    Session = SelectSession
    SQL.Strings = (
      'select rownum as nn, a.* from ('
      'SELECT H_COL_ID, COL_ID, HOL_COLOUR, id_office'
      'FROM H_COLOURS'
      'WHERE COL_ID = :COL_ID and id_office = :v_office'
      'ORDER BY HOL_COLOUR'
      ') a')
    MasterSource = Colours_DS
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = HColoursAfterOpen
    BeforeRefresh = HColoursAfterOpen
    Left = 752
    Top = 168
    ParamData = <
      item
        DataType = ftFloat
        Name = 'COL_ID'
        ParamType = ptInput
        Value = 2768.000000000000000000
      end
      item
        DataType = ftUnknown
        Name = 'v_office'
      end>
    object HColoursH_COL_ID: TFloatField
      FieldName = 'H_COL_ID'
      Required = True
    end
    object HColoursCOL_ID: TFloatField
      FieldName = 'COL_ID'
      Required = True
    end
    object HColoursHOL_COLOUR: TStringField
      FieldName = 'HOL_COLOUR'
      Required = True
      Size = 50
    end
    object HColoursID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
  end
  object HColours_DS: TOraDataSource
    DataSet = HColours
    Left = 752
    Top = 216
  end
  object FlowerNameTranslations: TOraQuery
    SQLRefresh.Strings = (
      
        'SELECT a.fn_id, a.f_name, a.name_code, a.id_departments, a.fnt_i' +
        'd, a.remarks, b.f_name_ru'
      '  FROM flower_name_translations a, flower_names b'
      '  where a.fn_id = b.fn_id'
      '        and a.fnt_id = :OLD_FNT_ID')
    Session = SelectSession
    SQL.Strings = (
      
        'SELECT a.fn_id, a.f_name, a.name_code, a.id_departments, a.fnt_i' +
        'd, a.remarks, a.id_office, b.F_NAME_RU'
      '  FROM flower_name_translations a, FLOWER_NAMES b'
      '  where a.id_departments = :ID_DEPARTMENTS '
      '   and a.fn_id = b.fn_id'
      '   and (a.id_office in (1,:v_office) or :v_office = 0)'
      '  order by a.f_name')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = FlowerNameTranslationsAfterPost
    BeforeRefresh = FlowerNameTranslationsAfterPost
    Left = 232
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_DEPARTMENTS'
      end
      item
        DataType = ftUnknown
        Name = 'v_office'
      end>
    object FlowerNameTranslationsFN_ID: TFloatField
      FieldName = 'FN_ID'
      Required = True
    end
    object FlowerNameTranslationsF_NAME: TStringField
      FieldName = 'F_NAME'
      Required = True
      Size = 256
    end
    object FlowerNameTranslationsNAME_CODE: TStringField
      FieldName = 'NAME_CODE'
    end
    object FlowerNameTranslationsID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
      Required = True
    end
    object FlowerNameTranslationsFNT_ID: TFloatField
      FieldName = 'FNT_ID'
      Required = True
    end
    object FlowerNameTranslationsREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 30
    end
    object FlowerNameTranslationsID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object FlowerNameTranslationsF_NAME_RU: TStringField
      FieldName = 'F_NAME_RU'
      Size = 256
    end
  end
  object FlowerNameTranslations_DS: TOraDataSource
    DataSet = FlowerNameTranslations
    Left = 232
    Top = 216
  end
  object SaveDialog: TSaveDialog
    FileName = 'file1'
    Filter = 
      'Text files (*.txt)|*.TXT|HTML file (*.htm)|*.HTM|Microsoft Excel' +
      ' Workbook (*.xls)|*.XLS'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 26
    Top = 70
  end
  object FlowerNames_OLD: TOraQuery
    SQLRefresh.Strings = (
      'SELECT '
      '  FN_ID, '
      '  F_NAME_RU,'
      '  NAME_CODE'
      'FROM '
      '  FLOWER_NAMES '
      'WHERE'
      '  FN_ID = :OLD_FN_ID')
    Session = SelectSession
    SQL.Strings = (
      'select rownum as nn, a.* from ('
      
        'select a.FN_ID, a.F_NAME_RU, a.name_code, (SELECT COUNT(1) from ' +
        'dual where exists (SELECT 1 FROM FLOWER_NAME_TRANSLATIONS where ' +
        'FN_ID = a.FN_ID)) as cnt'
      'FROM FLOWER_NAMES a '
      'where ID_DEPARTMENTS = :ID_DEPARTMENTS'
      'order by F_NAME_RU'
      ') a')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 40
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_DEPARTMENTS'
      end>
    object FloatField1: TFloatField
      FieldName = 'FN_ID'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'F_NAME_RU'
      Required = True
      Size = 256
    end
    object FloatField2: TFloatField
      FieldName = 'NN'
    end
    object StringField2: TStringField
      FieldName = 'NAME_CODE'
    end
    object FloatField3: TFloatField
      FieldName = 'CNT'
    end
  end
  object FlowerNameTranslations_OLD: TOraQuery
    SQLRefresh.Strings = (
      'SELECT'
      '  FN_ID,'
      '  F_NAME,'
      '  FNT_ID,'
      '  DEFAULT_TRANSLATION'
      'FROM'
      '  FLOWER_NAME_TRANSLATIONS'
      'WHERE'
      '  FNT_ID = :OLD_FNT_ID')
    Session = SelectSession
    SQL.Strings = (
      'select rownum as nn, a.* from ('
      'SELECT FN_ID, F_NAME, FNT_ID, DEFAULT_TRANSLATION'
      'FROM FLOWER_NAME_TRANSLATIONS'
      'WHERE FN_ID = :FN_ID'
      'ORDER BY F_NAME'
      ') a')
    MasterSource = FlowerNames_DS
    MasterFields = 'FN_ID'
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 232
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FN_ID'
      end>
    object FloatField4: TFloatField
      FieldName = 'FN_ID'
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'F_NAME'
      Required = True
      Size = 256
    end
    object FloatField5: TFloatField
      FieldName = 'FNT_ID'
      Required = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'DEFAULT_TRANSLATION'
    end
    object FloatField6: TFloatField
      FieldName = 'NN'
    end
  end
  object FNameTransLink: TOraQuery
    SQLRefresh.Strings = (
      
        'SELECT a.fn_id, a.f_name, a.name_code, a.id_departments, a.fnt_i' +
        'd, a.remarks, b.f_name_ru'
      '  FROM flower_name_translations a, flower_names b'
      '  where a.fn_id = b.fn_id'
      '        and a.fnt_id = :OLD_FNT_ID')
    Session = SelectSession
    SQL.Strings = (
      
        'SELECT a.fn_id, a.f_name, a.name_code, a.id_departments, a.fnt_i' +
        'd, a.remarks, a.id_office'
      '  FROM flower_name_translations a'
      '  where a.id_departments = :ID_DEPARTMENTS '
      '    and (id_office in (1,:v_office) or :v_office = 0)'
      '    and a.FN_ID = :FN_ID'
      '  order by a.f_name')
    MasterSource = FlowerNames_DS
    MasterFields = 'FN_ID'
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = FNameTransLinkAfterOpen
    BeforeRefresh = FNameTransLinkAfterOpen
    Left = 128
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_DEPARTMENTS'
      end
      item
        DataType = ftUnknown
        Name = 'v_office'
      end
      item
        DataType = ftUnknown
        Name = 'FN_ID'
      end>
    object FNameTransLinkFN_ID: TFloatField
      FieldName = 'FN_ID'
      Required = True
    end
    object FNameTransLinkF_NAME: TStringField
      FieldName = 'F_NAME'
      Required = True
      Size = 256
    end
    object FNameTransLinkNAME_CODE: TStringField
      FieldName = 'NAME_CODE'
    end
    object FNameTransLinkID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
      Required = True
    end
    object FNameTransLinkFNT_ID: TFloatField
      FieldName = 'FNT_ID'
      Required = True
    end
    object FNameTransLinkREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 30
    end
    object FNameTransLinkID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
  end
  object FNameTransLink_DS: TOraDataSource
    DataSet = FNameTransLink
    Left = 128
    Top = 216
  end
  object repDict: TfrxReport
    Version = '4.12.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39785.824304097200000000
    ReportOptions.LastChange = 41569.958081724500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 400
    Top = 304
    Datasets = <
      item
        DataSet = frxDictView
        DataSetName = 'frxDictView'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 109.606370000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Align = baWidth
          Top = 1.559060000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1057#8218#1056#1169#1056#181#1056#187)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 45.133890000000000000
          Width = 476.220780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176': [Date]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Top = 90.708720000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#8220#1057#1026#1057#1107#1056#1111#1056#1111#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 109.606370000000000000
          Top = 90.708720000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 185.196970000000000000
          Top = 90.708720000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1106#1057#1026#1057#8218#1056#1105#1056#1108#1057#1107#1056#187)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 540.472790000000000000
          Top = 90.708720000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176' '#1057#1027#1057#1107#1056#1112#1056#1112#1057#1107)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 257.008040000000000000
          Top = 90.708720000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#183#1056#1030#1056#176#1056#1029#1056#1105#1056#181)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Align = baWidth
          Top = 21.456710000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#1109#1056#1112#1056#181#1056#1029#1056#1108#1056#187#1056#176#1057#8218#1057#1107#1057#1026#1056#176)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        DataSet = frxDictView
        DataSetName = 'frxDictView'
        RowCount = 0
        Stretched = True
        object fr_DOC_DSID_DOC: TfrxMemoView
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F_TYPE'
          DataSet = frxDictView
          DataSetName = 'frxDictView'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDictView."F_TYPE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fr_DOC_DSDOC_NUMBER: TfrxMemoView
          Left = 109.606370000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'CODE'
          DataSet = frxDictView
          DataSetName = 'frxDictView'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDictView."CODE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fr_DOC_DSNICK: TfrxMemoView
          Left = 185.196970000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'H_CODE'
          DataSet = frxDictView
          DataSetName = 'frxDictView'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDictView."H_CODE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fr_DOC_DSFIO: TfrxMemoView
          Left = 257.008040000000000000
          Width = 283.464505910000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'COMPILED_NAME_OTDEL'
          DataSet = frxDictView
          DataSetName = 'frxDictView'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDictView."COMPILED_NAME_OTDEL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fr_DOC_DSPRICE_ALL: TfrxMemoView
          Left = 540.472790000000000000
          Width = 177.637910000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F_NAME'
          DataSet = frxDictView
          DataSetName = 'frxDictView'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDictView."F_NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Page#]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          Left = 75.590600000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#183#1056#1105#1057#8224#1056#1105#1056#8470': ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDictView: TfrxDBDataset
    UserName = 'frxDictView'
    CloseDataSource = False
    FieldAliases.Strings = (
      'D_CHECK=D_CHECK'
      'F_NAME=F_NAME'
      'F_NAME_RU=F_NAME_RU'
      'F_SUB_TYPE=F_SUB_TYPE'
      'F_TYPE=F_TYPE'
      'COUNTRY=COUNTRY'
      'TYPE_SUBTYPE=TYPE_SUBTYPE'
      'N_ID=N_ID'
      'FN_ID=FN_ID'
      'FT_ID=FT_ID'
      'FST_ID=FST_ID'
      'S_ID=S_ID'
      'C_ID=C_ID'
      'COL_ID=COL_ID'
      'H_CODE=H_CODE'
      'H_NAME=H_NAME'
      'HT_ID=HT_ID'
      'CODE=CODE'
      'LEN=LEN'
      'PACK=PACK'
      'VBN=VBN'
      'HOL_TYPE=HOL_TYPE'
      'WEIGHT=WEIGHT'
      'WEIGHTDRY=WEIGHTDRY'
      'S_NAME_RU=S_NAME_RU'
      'COLOUR=COLOUR'
      'IS_PHOTO=IS_PHOTO'
      'HOL_MARKS=HOL_MARKS'
      'RUS_MARKS=RUS_MARKS'
      'DIAMETER=DIAMETER'
      'BAR_CODE=BAR_CODE'
      'CUST_COEF=CUST_COEF'
      'REMARKS=REMARKS'
      'PHOTO=PHOTO'
      'GREAT_NAME_F=GREAT_NAME_F'
      'COMPILED_NAME_OTDEL=COMPILED_NAME_OTDEL'
      'NAME_CODE=NAME_CODE'
      'NOPRINT=NOPRINT'
      'NOTUSE=NOTUSE'
      'NAMECODE=NAMECODE'
      'TNVED=TNVED'
      'ID_OFFICE=ID_OFFICE'
      'BRIEF=BRIEF'
      'CHECKED=CHECKED')
    DataSet = DictView
    BCDToCurrency = False
    Left = 472
    Top = 304
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
    Left = 544
    Top = 304
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 544
    Top = 360
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 544
    Top = 416
  end
  object cds_def_pack: TOraQuery
    SQLUpdate.Strings = (
      
        'update hol_subtype_def_pack set quantity = :quantity, hol_type =' +
        ' :hol_type, hol_subtype = :hol_subtype'
      
        '  where quantity = :old_quantity and hol_type = :old_hol_type an' +
        'd hol_subtype = :old_hol_subtype')
    SQLRefresh.Strings = (
      'SELECT quantity, hol_type, hol_subtype'
      '  FROM hol_subtype_def_pack'
      'where hol_subtype = :OLD_hol_subtype')
    Session = SelectSession
    SQL.Strings = (
      'SELECT a.quantity, a.hol_type, a.hol_subtype'
      '  FROM hol_subtype_def_pack a'
      'order by a.hol_subtype')
    MasterSource = Colours_DS
    FetchAll = True
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = HColoursAfterOpen
    BeforeRefresh = HColoursAfterOpen
    Left = 104
    Top = 352
    object cds_def_packQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Required = True
    end
    object cds_def_packHOL_TYPE: TIntegerField
      FieldName = 'HOL_TYPE'
    end
    object cds_def_packHOL_SUBTYPE: TStringField
      FieldName = 'HOL_SUBTYPE'
      Required = True
      Size = 50
    end
  end
  object ds_def_pack: TOraDataSource
    DataSet = cds_def_pack
    Left = 104
    Top = 400
  end
  object cds_units: TOraQuery
    SQLUpdate.Strings = (
      
        'update nsi_units set unit_code = :unit_code, nsi_name = :nsi_nam' +
        'e, symbol_national = :symbol_national, '
      
        '  symbol_international = :symbol_international, code_lettering_n' +
        'ational = :code_lettering_national, '
      '  code_lettering_international = :code_lettering_international'
      '  where nsi_units_id = :old_nsi_units_id')
    SQLRefresh.Strings = (
      'SELECT a.unit_code, a.nsi_name, a.symbol_national,'
      '       a.symbol_international, a.code_lettering_national,'
      '       a.code_lettering_international'
      '  FROM nsi_units a'
      'where nsi_units_id = :old_nsi_units_id')
    Session = SelectSession
    SQL.Strings = (
      
        'SELECT a.nsi_units_id, a.unit_code, a.nsi_name, a.symbol_nationa' +
        'l,'
      '       a.symbol_international, a.code_lettering_national,'
      '       a.code_lettering_international'
      '  FROM nsi_units a')
    FetchAll = True
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = HColoursAfterOpen
    BeforeRefresh = HColoursAfterOpen
    Left = 184
    Top = 352
    object cds_unitsNSI_UNITS_ID: TFloatField
      FieldName = 'NSI_UNITS_ID'
      Required = True
    end
    object cds_unitsUNIT_CODE: TIntegerField
      FieldName = 'UNIT_CODE'
      Required = True
    end
    object cds_unitsNSI_NAME: TStringField
      FieldName = 'NSI_NAME'
      Size = 50
    end
    object cds_unitsSYMBOL_NATIONAL: TStringField
      FieldName = 'SYMBOL_NATIONAL'
      Size = 50
    end
    object cds_unitsSYMBOL_INTERNATIONAL: TStringField
      FieldName = 'SYMBOL_INTERNATIONAL'
      Size = 50
    end
    object cds_unitsCODE_LETTERING_NATIONAL: TStringField
      FieldName = 'CODE_LETTERING_NATIONAL'
      Size = 50
    end
    object cds_unitsCODE_LETTERING_INTERNATIONAL: TStringField
      FieldName = 'CODE_LETTERING_INTERNATIONAL'
      Size = 50
    end
  end
  object ds_units: TOraDataSource
    DataSet = cds_units
    Left = 184
    Top = 400
  end
  object frxSelPrntPreview: TfrxDBDataset
    UserName = 'frxSelPrntPreview'
    CloseDataSource = False
    FieldAliases.Strings = (
      'D_CHECK=D_CHECK'
      'F_NAME=F_NAME'
      'F_NAME_RU=F_NAME_RU'
      'F_SUB_TYPE=F_SUB_TYPE'
      'F_TYPE=F_TYPE'
      'COUNTRY=COUNTRY'
      'TYPE_SUBTYPE=TYPE_SUBTYPE'
      'N_ID=N_ID'
      'FN_ID=FN_ID'
      'FT_ID=FT_ID'
      'FST_ID=FST_ID'
      'S_ID=S_ID'
      'C_ID=C_ID'
      'COL_ID=COL_ID'
      'H_CODE=H_CODE'
      'H_NAME=H_NAME'
      'HT_ID=HT_ID'
      'CODE=CODE'
      'LEN=LEN'
      'PACK=PACK'
      'HOL_TYPE=HOL_TYPE'
      'WEIGHT=WEIGHT'
      'WEIGHTDRY=WEIGHTDRY'
      'S_NAME_RU=S_NAME_RU'
      'COLOUR=COLOUR'
      'IS_PHOTO=IS_PHOTO'
      'HOL_MARKS=HOL_MARKS'
      'RUS_MARKS=RUS_MARKS'
      'DIAMETER=DIAMETER'
      'BAR_CODE=BAR_CODE'
      'CUST_COEF=CUST_COEF'
      'REMARKS=REMARKS'
      'PHOTO=PHOTO'
      'GREAT_NAME_F=GREAT_NAME_F'
      'COMPILED_NAME_OTDEL=COMPILED_NAME_OTDEL'
      'NAME_CODE=NAME_CODE'
      'NOPRINT=NOPRINT'
      'NOTUSE=NOTUSE'
      'NAMECODE=NAMECODE'
      'TNVED=TNVED'
      'ID_OFFICE=ID_OFFICE'
      'BRIEF=BRIEF'
      'CHECKED=CHECKED'
      'NOM_NEW=NOM_NEW'
      'NOM_START=NOM_START'
      'NOM_END=NOM_END'
      'HOL_COLOR=HOL_COLOR'
      'HS_VAL=HS_VAL'
      'VBN=VBN'
      'NSI_NAME=NSI_NAME'
      'HOL_PACK=HOL_PACK')
    DataSet = DictView
    BCDToCurrency = False
    Left = 369
    Top = 391
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 368
    Top = 439
  end
end
