object DM: TDM
  OldCreateOrder = False
  Height = 480
  Width = 648
  object STAR_DB: TOraSession
    Options.Direct = True
    Username = 'creator'
    Password = '123456'
    Server = 'KLEPOV:1521:STARNEW'
    Left = 32
    Top = 16
  end
  object SelQ: TOraQuery
    Session = STAR_DB
    FetchAll = True
    Left = 96
    Top = 16
  end
  object InvoiceRegister: TOraQuery
    SQLUpdate.Strings = (
      
        'update customs_inv_register set SUPPLIER_NUMBER=:SUPPLIER_NUMBER' +
        ', comments=:comments, cource=:cource'
      'where inv_id=:inv_id')
    SQLRefresh.Strings = (
      'SELECT irf.*, ipp.IPP_COMMENT, irf.inv_id as inv_id_'
      'FROM customs_inv_register IRF, customs_price_pack ipp'
      'WHERE irf.INV_ID = :OLD_INV_ID and irf.ipp_id = ipp.ipp_id(+)')
    Session = STAR_DB
    SQL.Strings = (
      'begin'
      '  custom_pkg.get_custom_register(:ID_DEPARTMENTS_, :CURSOR_);'
      'end;')
    FetchAll = True
    RefreshOptions = [roAfterUpdate]
    Left = 232
    Top = 280
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEPARTMENTS_'
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
    object InvoiceRegisterINV_ID_: TFloatField
      FieldName = 'INV_ID_'
      Required = True
    end
    object InvoiceRegisterINV_DATE: TDateTimeField
      FieldName = 'INV_DATE'
      Required = True
    end
    object InvoiceRegisterCOMMENTS: TStringField
      FieldName = 'COMMENTS'
      Size = 512
    end
    object InvoiceRegisterINV_SUM: TFloatField
      FieldName = 'INV_SUM'
    end
    object InvoiceRegisterSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object InvoiceRegisterID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
      Required = True
    end
    object InvoiceRegisterS_ID_DEFAULT: TFloatField
      FieldName = 'S_ID_DEFAULT'
    end
    object InvoiceRegisterC_ID_DEFAULT: TFloatField
      FieldName = 'C_ID_DEFAULT'
    end
    object InvoiceRegisterSUPPLIER_DATE: TDateTimeField
      FieldName = 'SUPPLIER_DATE'
    end
    object InvoiceRegisterSUPPLIER_NUMBER: TStringField
      FieldName = 'SUPPLIER_NUMBER'
      Size = 50
    end
    object InvoiceRegisterTRUCK_DATE: TDateTimeField
      FieldName = 'TRUCK_DATE'
    end
    object InvoiceRegisterIN_FILE: TStringField
      FieldName = 'IN_FILE'
      Size = 100
    end
    object InvoiceRegisterIS_FILE: TFloatField
      FieldName = 'IS_FILE'
    end
    object InvoiceRegisterFOLDER: TFloatField
      FieldName = 'FOLDER'
    end
    object InvoiceRegisterS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Required = True
      Size = 150
    end
    object InvoiceRegisterQUANT: TFloatField
      FieldName = 'QUANT'
    end
    object InvoiceRegisterSUMM: TFloatField
      FieldName = 'SUMM'
    end
    object InvoiceRegisterD_CHECK: TFloatField
      FieldName = 'D_CHECK'
    end
    object InvoiceRegisterIPP_ID: TIntegerField
      FieldName = 'IPP_ID'
    end
    object InvoiceRegisterIPP_COMMENT: TStringField
      FieldName = 'IPP_COMMENT'
      Size = 256
    end
    object InvoiceRegisterCOURCE: TFloatField
      FieldName = 'COURCE'
    end
  end
  object InvoiceAsIs: TOraQuery
    SQLUpdate.Strings = (
      'update CUSTOMS_INV_DATA_AS_IS set '
      
        'TRUCKS=:TRUCKS, PACKING_MARKS=:PACKING_MARKS, DESCRIPTION=:DESCR' +
        'IPTION, TITLE=:TITLE'
      
        ', UNITS=:UNITS, HOL_COUNTRY=:HOL_COUNTRY, HOL_SUB_TYPE=:HOL_SUB_' +
        'TYPE, H_CODE=:H_CODE'
      
        ', PD=:PD, TROLLEY=:TROLLEY, HEIGHT=:HEIGHT, DIAMETR=:DIAMETR, PR' +
        'ICE=:PRICE, SUMM=:SUMM '
      'where INVOICE_DATA_AS_IS_ID = :INVOICE_DATA_AS_IS_ID')
    SQLRefresh.Strings = (
      
        'SELECT a.inv_id, a.invoice_data_as_is_id, a.order_number, a.heig' +
        'ht, a.diametr, a.trucks, a.title, a.packing_amount'
      
        '           , a.amount_in_the_pack, a.units, a.packing_marks, a.d' +
        'escription, a.hol_country, a.price, a.summ'
      
        '           , decode(upper(a.hol_country), '#39#39', '#39#1053#1080#1076#1077#1088#1083#1072#1085#1076#1099#39', e.co' +
        'untry) as county_ru'
      
        '           , case when (:split_rose=1 and :id_dep= 62 and lower(' +
        'a.hol_sub_type) = '#39'roses'#39') then a.hol_sub_type || (case when ins' +
        'tr(a.description,'#39' ECUA '#39') > 0 then '#39' ECUADOR'#39' else '#39' DUTCH'#39' end' +
        ' ) else a.hol_sub_type end hol_sub_type'
      
        '           , a.recognised, a.date_in, a.trolley, a.h_code, a.UPA' +
        'CK'
      '           , a.src_trolley, a.SRC_NAME'
      
        '           , dense_rank() over(PARTITION by trucks order by trol' +
        'ley, src_trolley) as trolley_calc'
      '           , a.pd, b.name_ru as pd_ru, b.id'
      '           , c.id as ft_id, c.STEM_WEIGHT, c.CUST_REGN'
      
        '           , case when (:split_rose=1 and :id_dep= 62 and lower(' +
        'a.hol_sub_type) = '#39'roses'#39') then c.orderby + (case when instr(a.d' +
        'escription,'#39' ECUA '#39') > 0 then 0.2 else 0.1 end ) else c.orderby ' +
        'end orderby'
      
        '           , case when (:split_rose=1 and :id_dep= 62 and lower(' +
        'a.hol_sub_type) = '#39'roses'#39') then c.name_cat_ru || (case when inst' +
        'r(a.description,'#39' ECUA '#39') > 0 then '#39' '#1101#1082#1074#1072#1076#1086#1088#39' else '#39' '#1075#1086#1083#1083#1072#1085#1076#1080#1103#39' ' +
        'end ) else c.name_cat_ru end f_type'
      '           , e.fito_id as FN_ID, e.fito_name as f_name_ru'
      
        '           , custom_pkg.show_weight_formula(c.id,a.description,a' +
        '.height,0) as type_dop'
      '           , :id_dep as id_dep'
      '        FROM customs_inv_data_as_is a, countries e'
      '            , fito_category b, customs_weight c'
      
        '            , (select fito_id, F_NAME, fito_name, name_code from' +
        ' FLOWER_FITO_ALL_NAMES where ID_DEP = :id_dep) e'
      '        where a.INVOICE_DATA_AS_IS_ID = :INVOICE_DATA_AS_IS_ID'
      '            and lower(a.hol_country) = lower(e.country_eng(+))'
      
        '            and upper(a.pd) = upper(b.name_eng(+)) and b.id_dep(' +
        '+) = :id_dep'
      
        '            and lower(a.hol_sub_type) = lower(c.name_cat(+)) and' +
        ' c.id_dep(+) = :id_dep'
      '            and ('
      
        '              upper(a.title) = upper(e.F_NAME(+)) and upper(a.h_' +
        'code) = upper(e.name_code(+))'
      '            )')
    Session = STAR_DB
    SQL.Strings = (
      'begin'
      
        '  custom_pkg.get_custom_register_asis(:INV_ID_, :SPLIT_ROSE_, :C' +
        'URSOR_);'
      'end;')
    MasterSource = InvoiceRegister_DS
    MasterFields = 'INV_ID_'
    DetailFields = 'INV_ID'
    FetchAll = True
    RefreshOptions = [roAfterUpdate]
    Left = 328
    Top = 280
    ParamData = <
      item
        DataType = ftFloat
        Name = 'INV_ID_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SPLIT_ROSE_'
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
      Required = True
    end
    object InvoiceAsIsINVOICE_DATA_AS_IS_ID: TFloatField
      FieldName = 'INVOICE_DATA_AS_IS_ID'
      Required = True
    end
    object InvoiceAsIsORDER_NUMBER: TFloatField
      FieldName = 'ORDER_NUMBER'
    end
    object InvoiceAsIsHEIGHT: TIntegerField
      FieldName = 'HEIGHT'
    end
    object InvoiceAsIsDIAMETR: TIntegerField
      FieldName = 'DIAMETR'
    end
    object InvoiceAsIsTRUCKS: TStringField
      FieldName = 'TRUCKS'
      Size = 30
    end
    object InvoiceAsIsTITLE: TStringField
      FieldName = 'TITLE'
      Size = 50
    end
    object InvoiceAsIsPACKING_AMOUNT: TFloatField
      FieldName = 'PACKING_AMOUNT'
    end
    object InvoiceAsIsAMOUNT_IN_THE_PACK: TFloatField
      FieldName = 'AMOUNT_IN_THE_PACK'
    end
    object InvoiceAsIsUNITS: TFloatField
      FieldName = 'UNITS'
    end
    object InvoiceAsIsPACKING_MARKS: TStringField
      FieldName = 'PACKING_MARKS'
      Size = 30
    end
    object InvoiceAsIsDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 150
    end
    object InvoiceAsIsHOL_COUNTRY: TStringField
      FieldName = 'HOL_COUNTRY'
      Size = 50
    end
    object InvoiceAsIsPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object InvoiceAsIsSUMM: TFloatField
      FieldName = 'SUMM'
    end
    object InvoiceAsIsCOUNTY_RU: TStringField
      FieldName = 'COUNTY_RU'
      Size = 50
    end
    object InvoiceAsIsHOL_SUB_TYPE: TStringField
      FieldName = 'HOL_SUB_TYPE'
      Size = 58
    end
    object InvoiceAsIsRECOGNISED: TIntegerField
      FieldName = 'RECOGNISED'
    end
    object InvoiceAsIsDATE_IN: TDateTimeField
      FieldName = 'DATE_IN'
    end
    object InvoiceAsIsTROLLEY: TIntegerField
      FieldName = 'TROLLEY'
    end
    object InvoiceAsIsH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 15
    end
    object InvoiceAsIsUPACK: TStringField
      FieldName = 'UPACK'
      Size = 10
    end
    object InvoiceAsIsSRC_TROLLEY: TStringField
      FieldName = 'SRC_TROLLEY'
    end
    object InvoiceAsIsSRC_NAME: TStringField
      FieldName = 'SRC_NAME'
      Size = 50
    end
    object InvoiceAsIsTROLLEY_CALC: TFloatField
      FieldName = 'TROLLEY_CALC'
    end
    object InvoiceAsIsPD: TStringField
      FieldName = 'PD'
      Size = 30
    end
    object InvoiceAsIsPD_RU: TStringField
      FieldName = 'PD_RU'
      Size = 30
    end
    object InvoiceAsIsID: TIntegerField
      FieldName = 'ID'
    end
    object InvoiceAsIsFT_ID: TIntegerField
      FieldName = 'FT_ID'
    end
    object InvoiceAsIsSTEM_WEIGHT: TFloatField
      FieldName = 'STEM_WEIGHT'
    end
    object InvoiceAsIsCUST_REGN: TStringField
      FieldName = 'CUST_REGN'
      Size = 15
    end
    object InvoiceAsIsORDERBY: TFloatField
      FieldName = 'ORDERBY'
    end
    object InvoiceAsIsF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Size = 30
    end
    object InvoiceAsIsFN_ID: TFloatField
      FieldName = 'FN_ID'
    end
    object InvoiceAsIsF_NAME_RU: TStringField
      FieldName = 'F_NAME_RU'
      Size = 256
    end
    object InvoiceAsIsTYPE_DOP: TStringField
      FieldName = 'TYPE_DOP'
      Size = 4000
    end
    object InvoiceAsIsID_DEP: TFloatField
      FieldName = 'ID_DEP'
    end
    object InvoiceAsIsSPLIT_ROSE: TFloatField
      FieldName = 'SPLIT_ROSE'
    end
    object InvoiceAsIsREMARK: TStringField
      FieldName = 'REMARK'
      Size = 50
    end
  end
  object InvoiceRegister_DS: TDataSource
    DataSet = InvoiceRegister
    Left = 232
    Top = 336
  end
  object InvoiceAsIs_DS: TDataSource
    DataSet = InvoiceAsIs
    Left = 328
    Top = 336
  end
  object CDS_FITO: TOraQuery
    SQLDelete.Strings = (
      'begin'
      '  CUSTOM_PKG.DEL_FITO(:ID);'
      'end;')
    SQLUpdate.Strings = (
      'begin'
      
        '  CUSTOM_PKG.SAVE_FITO(:ID_DEP, :NAME_ENG, :NAME_RU, :NAME_ENG_F' +
        'ULL, :ID);'
      'end;')
    SQLRefresh.Strings = (
      'SELECT * FROM fito_category'
      'WHERE ID = :OLD_ID')
    Session = STAR_DB
    SQL.Strings = (
      'begin'
      '  CUSTOM_PKG.GET_FITO(:ID_DEPARTMENTS_, :CURSOR_);'
      'end;')
    FetchAll = True
    RefreshOptions = [roAfterUpdate]
    FilterOptions = [foCaseInsensitive]
    Left = 160
    Top = 16
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEPARTMENTS_'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object CDS_FITOID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDS_FITONAME_ENG: TStringField
      FieldName = 'NAME_ENG'
      Size = 30
    end
    object CDS_FITONAME_RU: TStringField
      FieldName = 'NAME_RU'
      Size = 30
    end
    object CDS_FITOID_DEP: TIntegerField
      FieldName = 'ID_DEP'
    end
    object CDS_FITONAME_ENG_FULL: TStringField
      FieldName = 'NAME_ENG_FULL'
      Size = 30
    end
  end
  object DS_FITO: TDataSource
    DataSet = CDS_FITO
    Left = 160
    Top = 72
  end
  object OraStoredProc1: TOraStoredProc
    StoredProcName = 'SET_DEBT_ON_DEBETORS'
    SQL.Strings = (
      'begin'
      '  SET_DEBT_ON_DEBETORS(:ID_DEBT);'
      'end;')
    Left = 96
    Top = 136
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEBT'
        ParamType = ptInput
      end>
  end
  object CDS_NAMES: TOraQuery
    SQLDelete.Strings = (
      'begin'
      '  CUSTOM_PKG.DEL_FITO_NAMES(:FITO_ID);'
      'end;')
    SQLUpdate.Strings = (
      'declare msg varchar2(150);'
      'begin'
      
        '  CUSTOM_PKG.SAVE_FITO_NAMES(:ID_DEP, :F_NAME, :FITO_NAME, :NAME' +
        '_CODE, :FITO_ID, msg);'
      'end;')
    SQLRefresh.Strings = (
      'SELECT a.fito_id, a.f_name, a.fito_name, a.id_dep, a.name_code'
      '    FROM flower_fito_all_names a'
      '    WHERE a.fito_id = :fito_id')
    Session = STAR_DB
    SQL.Strings = (
      'begin'
      '  CUSTOM_PKG.GET_FITO_NAMES(:V_ID_DEP, :CURSOR_);'
      'end;')
    FetchAll = True
    RefreshOptions = [roAfterUpdate]
    FilterOptions = [foCaseInsensitive]
    Left = 224
    Top = 16
    ParamData = <
      item
        DataType = ftFloat
        Name = 'V_ID_DEP'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object CDS_NAMESFITO_ID: TFloatField
      FieldName = 'FITO_ID'
      Required = True
    end
    object CDS_NAMESF_NAME: TStringField
      FieldName = 'F_NAME'
      Size = 100
    end
    object CDS_NAMESFITO_NAME: TStringField
      FieldName = 'FITO_NAME'
      Size = 100
    end
    object CDS_NAMESID_DEP: TIntegerField
      FieldName = 'ID_DEP'
    end
    object CDS_NAMESNAME_CODE: TStringField
      FieldName = 'NAME_CODE'
    end
  end
  object DS_NAMES: TDataSource
    DataSet = CDS_NAMES
    Left = 224
    Top = 72
  end
  object frx_customs: TfrxReport
    Version = '4.12.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40513.591677708300000000
    ReportOptions.LastChange = 42551.588134629630000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 40
    Top = 232
    Datasets = <
      item
        DataSet = frx_inv_register
        DataSetName = 'frx_inv_register'
      end
      item
        DataSet = frx_selq
        DataSetName = 'frx_selq'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1111#1056#1109#1057#1039#1057#1027#1056#1029#1056#181#1056#1029#1056#1105#1056#181' '#1056#1108)
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baWidth
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[frx_inv_register."SUPPLIER_DATE"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        Condition = 'frx_selq."county_ru"'
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        DataSet = frx_selq
        DataSetName = 'frx_selq'
        RowCount = 0
        Stretched = True
        object Memo5: TfrxMemoView
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frx_selq
          DataSetName = 'frx_selq'
          DisplayFormat.FormatStr = '%s'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frx_selq."trucks"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 56.692950000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frx_selq
          DataSetName = 'frx_selq'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frx_selq."F_NAME_RU"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 468.661720000000000000
          Width = 249.448980000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = frx_selq
          DataSetName = 'frx_selq'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frx_selq."county_ru"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 374.173470000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            ',')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Top = 117.165430000000000000
        Width = 718.110700000000000000
        Condition = 'frx_selq."trucks"'
        StartNewPage = True
      end
    end
  end
  object frx_inv_register: TfrxDBDataset
    UserName = 'frx_inv_register'
    CloseDataSource = False
    FieldAliases.Strings = (
      'INV_ID=INV_ID'
      'INV_DATE=INV_DATE'
      'COMMENTS=COMMENTS'
      'INV_SUM=INV_SUM'
      'STATUS=STATUS'
      'ID_DEPARTMENTS=ID_DEPARTMENTS'
      'S_ID_DEFAULT=S_ID_DEFAULT'
      'C_ID_DEFAULT=C_ID_DEFAULT'
      'SUPPLIER_DATE=SUPPLIER_DATE'
      'SUPPLIER_NUMBER=SUPPLIER_NUMBER'
      'S_NAME_RU=S_NAME_RU'
      'QUANT=QUANT'
      'SUMM=SUMM'
      'IN_FILE=IN_FILE'
      'IS_FILE=IS_FILE'
      'FOLDER=FOLDER'
      'TRUCK_DATE=TRUCK_DATE')
    DataSet = InvoiceRegister
    BCDToCurrency = False
    Left = 40
    Top = 288
  end
  object frx_selq: TfrxDBDataset
    UserName = 'frx_selq'
    CloseDataSource = False
    DataSet = SelQ
    BCDToCurrency = False
    Left = 40
    Top = 344
  end
  object SelQ_ds: TDataSource
    DataSet = SelQ
    Left = 96
    Top = 72
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    ExportPictures = False
    AsText = False
    Background = False
    FastExport = True
    PageBreaks = False
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 40
    Top = 400
  end
  object CDS_WEIGHTS: TOraQuery
    SQLDelete.Strings = (
      'begin'
      '  CUSTOM_PKG.del_weights(:ID);'
      'end;')
    SQLUpdate.Strings = (
      'begin'
      
        '  CUSTOM_PKG.save_weights(:ID_DEP, :NAME_CAT, :NAME_CAT_RU, :ste' +
        'm_weight, :make_info, :CUST_REGN, :ORDERBY, :weight_pack, :weigh' +
        't_tank, :ID);'
      'end;')
    SQLRefresh.Strings = (
      'SELECT * FROM customs_weight'
      'WHERE ID = :OLD_ID')
    Session = STAR_DB
    SQL.Strings = (
      'begin'
      '  CUSTOM_PKG.get_weights(:V_ID_DEP, :CURSOR_);'
      'end;')
    FetchAll = True
    RefreshOptions = [roAfterUpdate]
    FilterOptions = [foCaseInsensitive]
    Left = 232
    Top = 152
    ParamData = <
      item
        DataType = ftFloat
        Name = 'V_ID_DEP'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object CDS_WEIGHTSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDS_WEIGHTSNAME_CAT: TStringField
      FieldName = 'NAME_CAT'
    end
    object CDS_WEIGHTSNAME_CAT_RU: TStringField
      FieldName = 'NAME_CAT_RU'
    end
    object CDS_WEIGHTSSTEM_WEIGHT: TFloatField
      FieldName = 'STEM_WEIGHT'
    end
    object CDS_WEIGHTSID_DEP: TIntegerField
      FieldName = 'ID_DEP'
    end
    object CDS_WEIGHTSMAKE_INFO: TIntegerField
      FieldName = 'MAKE_INFO'
    end
    object CDS_WEIGHTSCUST_REGN: TStringField
      FieldName = 'CUST_REGN'
      Size = 15
    end
    object CDS_WEIGHTSORDERBY: TIntegerField
      FieldName = 'ORDERBY'
    end
    object CDS_WEIGHTSWEIGHT_PACK: TFloatField
      FieldName = 'WEIGHT_PACK'
    end
    object CDS_WEIGHTSWEIGHT_TANK: TFloatField
      FieldName = 'WEIGHT_TANK'
    end
  end
  object DS_WEIGHTS: TDataSource
    DataSet = CDS_WEIGHTS
    Left = 232
    Top = 208
  end
  object CDS_W_FORMULA: TOraQuery
    SQLDelete.Strings = (
      'begin'
      '  custom_pkg.del_w_formula(:ID);'
      'end;')
    SQLUpdate.Strings = (
      'begin '
      
        '  custom_pkg.save_weight_formula(:ID_W, :FO_NAME, :FO_FIELD, :FO' +
        '_RULE, :FO_VALUE, :v_weight, :orderby, :id); '
      'end;')
    SQLRefresh.Strings = (
      'SELECT * FROM CUSTOMS_WEIGHT_FORMULA'
      'WHERE ID = :OLD_ID')
    Session = STAR_DB
    SQL.Strings = (
      
        'SELECT a.id, a.id_w, a.fo_name, a.fo_field, a.fo_rule, a.fo_valu' +
        'e,'
      '       a.v_weight, a.orderby, a.compiled_str'
      '  FROM customs_weight_formula a'
      'where a.id_w = :id')
    MasterSource = DS_WEIGHTS
    MasterFields = 'ID'
    DetailFields = 'ID_W'
    FetchAll = True
    RefreshOptions = [roAfterUpdate]
    FilterOptions = [foCaseInsensitive]
    Left = 336
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
      end>
    object CDS_W_FORMULAID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDS_W_FORMULAID_W: TIntegerField
      FieldName = 'ID_W'
      Required = True
    end
    object CDS_W_FORMULAFO_NAME: TStringField
      FieldName = 'FO_NAME'
      Size = 30
    end
    object CDS_W_FORMULAFO_FIELD: TIntegerField
      FieldName = 'FO_FIELD'
    end
    object CDS_W_FORMULAFO_RULE: TIntegerField
      FieldName = 'FO_RULE'
    end
    object CDS_W_FORMULAFO_VALUE: TStringField
      FieldName = 'FO_VALUE'
    end
    object CDS_W_FORMULAV_WEIGHT: TFloatField
      FieldName = 'V_WEIGHT'
    end
    object CDS_W_FORMULAORDERBY: TIntegerField
      FieldName = 'ORDERBY'
    end
    object CDS_W_FORMULACOMPILED_STR: TStringField
      FieldName = 'COMPILED_STR'
      Size = 1024
    end
  end
  object DS_W_FORMULA: TDataSource
    DataSet = CDS_W_FORMULA
    Left = 320
    Top = 208
  end
  object cdsTMP: TOraQuery
    Session = STAR_DB
    Left = 128
    Top = 232
  end
  object dsTMP: TDataSource
    DataSet = cdsTMP
    Left = 128
    Top = 288
  end
  object frxXMLExport1: TfrxXMLExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssRPages
    Left = 128
    Top = 400
  end
  object SelQ2: TOraQuery
    Session = STAR_DB
    FetchAll = True
    Left = 320
    Top = 16
  end
  object SelQ2_ds: TDataSource
    DataSet = SelQ2
    Left = 320
    Top = 72
  end
  object frx_selq2: TfrxDBDataset
    UserName = 'frx_selq2'
    CloseDataSource = False
    DataSet = SelQ2
    BCDToCurrency = False
    Left = 128
    Top = 344
  end
  object cds_custcoef: TOraQuery
    SQLDelete.Strings = (
      'begin'
      '  CUSTOM_PKG.del_custcoef(:ID);'
      'end;')
    SQLUpdate.Strings = (
      'begin'
      
        '  CUSTOM_PKG.save_custcoef(:ID, :id_w, :fs_country_id, :fo_value' +
        ', :ID_DEPARTMENTS);'
      'end;')
    SQLRefresh.Strings = (
      
        'SELECT a.id, a.id_w, a.fs_country_id, a.fo_value, a.ID_DEPARTMEN' +
        'TS'
      'FROM customs_weight_group_settings a'
      'WHERE ID = :OLD_ID')
    SQL.Strings = (
      'begin'
      '  creator.custom_pkg.get_custcoef(:V_ID_DEP, :CURSOR_);'
      'end;')
    FetchAll = True
    RefreshOptions = [roAfterUpdate]
    FilterOptions = [foCaseInsensitive]
    Left = 392
    Top = 16
    ParamData = <
      item
        DataType = ftFloat
        Name = 'V_ID_DEP'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object cds_custcoefID: TIntegerField
      FieldName = 'ID'
    end
    object cds_custcoefID_W: TIntegerField
      FieldName = 'ID_W'
    end
    object cds_custcoefFS_COUNTRY_ID: TIntegerField
      FieldName = 'FS_COUNTRY_ID'
    end
    object cds_custcoefFO_VALUE: TFloatField
      FieldName = 'FO_VALUE'
    end
    object cds_custcoefNAME_CAT_RU: TStringField
      FieldName = 'NAME_CAT_RU'
    end
    object cds_custcoefCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
    object cds_custcoefNAME_CAT: TStringField
      FieldName = 'NAME_CAT'
    end
    object cds_custcoefID_DEPARTMENTS: TIntegerField
      FieldName = 'ID_DEPARTMENTS'
    end
  end
  object ds_custcoef: TDataSource
    DataSet = cds_custcoef
    Left = 392
    Top = 72
  end
  object frx_selq3: TfrxDBDataset
    UserName = 'frx_selq3'
    CloseDataSource = False
    DataSet = SelQ3
    BCDToCurrency = False
    Left = 232
    Top = 400
  end
  object SelQ3: TOraQuery
    Session = STAR_DB
    FetchAll = True
    Left = 472
    Top = 16
  end
  object SelQ3_ds: TDataSource
    DataSet = SelQ3
    Left = 472
    Top = 72
  end
  object frxBIFFExport1: TfrxBIFFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    RowHeightScale = 1.000000000000000000
    ChunkSize = 0
    Inaccuracy = 10.000000000000000000
    FitPages = False
    Pictures = True
    ParallelPages = 0
    Left = 352
    Top = 408
  end
end
