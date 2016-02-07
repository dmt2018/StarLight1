object DM: TDM
  OldCreateOrder = False
  Height = 562
  Width = 641
  object OraSession1: TOraSession
    Options.Charset = 'CL8MSWIN1251'
    Options.Direct = True
    Username = 'creator'
    Password = '123456'
    Server = 'KLEPOV:1521:STARREG'
    LoginPrompt = False
    AfterConnect = OraSession1AfterConnect
    Left = 24
    Top = 16
  end
  object Q_CLAIMS: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT '
      'CLAIMS_ID, '
      'DDATE, '
      'N_TRACK, '
      'INV_ID, '
      'INV_DATE, '
      'SUPPLIER_DATE, '
      'SUPPLIER_NUMBER, '
      'ID_DEPARTMENTS,'
      'summ_inv, '
      'PERCENT2,'
      'DOP_INFO,'
      'name,'
      'sended_to_warehouse,'
      'INV_MINUS,'
      'MINUS_INV_ID,'
      'id_office,'
      'brief'
      'FROM '
      'claims_view'
      'WHERE '
      '/*Filter*/ (id_office=:v_office or :v_office = 0)'
      'and ID_DEPARTMENTS = :id_dep_'
      'and ((DDATE between :d1 and :d2) or :d2 is null)'
      'order by claims_id desc')
    BeforeOpen = Q_CLAIMSBeforeOpen
    BeforeRefresh = Q_CLAIMSBeforeOpen
    Left = 104
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'v_office'
      end
      item
        DataType = ftUnknown
        Name = 'id_dep_'
      end
      item
        DataType = ftUnknown
        Name = 'd1'
      end
      item
        DataType = ftUnknown
        Name = 'd2'
      end>
    object Q_CLAIMSCLAIMS_ID: TFloatField
      FieldName = 'CLAIMS_ID'
      Required = True
    end
    object Q_CLAIMSDDATE: TDateTimeField
      FieldName = 'DDATE'
      Required = True
    end
    object Q_CLAIMSN_TRACK: TIntegerField
      FieldName = 'N_TRACK'
      Required = True
    end
    object Q_CLAIMSINV_ID: TFloatField
      FieldName = 'INV_ID'
      Required = True
    end
    object Q_CLAIMSINV_DATE: TDateTimeField
      FieldName = 'INV_DATE'
      Required = True
    end
    object Q_CLAIMSSUPPLIER_DATE: TDateTimeField
      FieldName = 'SUPPLIER_DATE'
    end
    object Q_CLAIMSSUPPLIER_NUMBER: TStringField
      FieldName = 'SUPPLIER_NUMBER'
      Size = 50
    end
    object Q_CLAIMSID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
      Required = True
    end
    object Q_CLAIMSSUMM_INV: TFloatField
      FieldName = 'SUMM_INV'
    end
    object Q_CLAIMSPERCENT2: TFloatField
      FieldName = 'PERCENT2'
    end
    object Q_CLAIMSDOP_INFO: TStringField
      FieldName = 'DOP_INFO'
      Size = 255
    end
    object Q_CLAIMSNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 100
    end
    object Q_CLAIMSSENDED_TO_WAREHOUSE: TIntegerField
      FieldName = 'SENDED_TO_WAREHOUSE'
    end
    object Q_CLAIMSINV_MINUS: TIntegerField
      FieldName = 'INV_MINUS'
    end
    object Q_CLAIMSMINUS_INV_ID: TFloatField
      FieldName = 'MINUS_INV_ID'
    end
    object Q_CLAIMSID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
      Required = True
    end
    object Q_CLAIMSBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
  end
  object Q_CLAIMS_DS: TOraDataSource
    DataSet = Q_CLAIMS
    Left = 104
    Top = 72
  end
  object Q_INV: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT a.inv_id, a.inv_date, a.comments, a.inv_sum,'
      
        '       a.sended_to_warehouse, a.warehouse_sended_date, a.supplie' +
        'r_date,'
      
        '       a.supplier_number, a.ipp_id, a.ipp_comment, a.id_departme' +
        'nts,'
      
        '       a.dept_name, a.invoice_title, a.s_id_default, a.c_id_defa' +
        'ult,'
      '       a.ready_sum, a.as_is_sum, a.as_is_sum_not_processed,'
      '       a.ready_units, a.as_is_units, a.ready_pos, a.as_is_pos,'
      '       a.done_num, a.past_num, a.total_sum'
      '  FROM invoice_register_full a'
      'WHERE '
      '/*Filter*/ (id_office=:v_office)'
      'AND id_departments=:dep'
      'order by a.inv_date desc')
    FetchAll = True
    BeforeOpen = Q_INVBeforeOpen
    BeforeRefresh = Q_INVBeforeOpen
    Left = 200
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'v_office'
      end
      item
        DataType = ftUnknown
        Name = 'dep'
      end>
    object Q_INVINV_ID: TFloatField
      FieldName = 'INV_ID'
      Required = True
    end
    object Q_INVINV_DATE: TDateTimeField
      FieldName = 'INV_DATE'
      Required = True
    end
    object Q_INVCOMMENTS: TStringField
      FieldName = 'COMMENTS'
      Size = 1024
    end
    object Q_INVINV_SUM: TFloatField
      FieldName = 'INV_SUM'
    end
    object Q_INVSENDED_TO_WAREHOUSE: TIntegerField
      FieldName = 'SENDED_TO_WAREHOUSE'
    end
    object Q_INVWAREHOUSE_SENDED_DATE: TDateTimeField
      FieldName = 'WAREHOUSE_SENDED_DATE'
    end
    object Q_INVSUPPLIER_DATE: TDateTimeField
      FieldName = 'SUPPLIER_DATE'
    end
    object Q_INVSUPPLIER_NUMBER: TStringField
      FieldName = 'SUPPLIER_NUMBER'
      Size = 50
    end
    object Q_INVIPP_ID: TFloatField
      FieldName = 'IPP_ID'
    end
    object Q_INVIPP_COMMENT: TStringField
      FieldName = 'IPP_COMMENT'
      Size = 267
    end
    object Q_INVID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
      Required = True
    end
    object Q_INVDEPT_NAME: TStringField
      FieldName = 'DEPT_NAME'
      Required = True
      Size = 100
    end
    object Q_INVINVOICE_TITLE: TStringField
      FieldName = 'INVOICE_TITLE'
      Size = 1037
    end
    object Q_INVS_ID_DEFAULT: TFloatField
      FieldName = 'S_ID_DEFAULT'
    end
    object Q_INVC_ID_DEFAULT: TFloatField
      FieldName = 'C_ID_DEFAULT'
    end
    object Q_INVREADY_SUM: TFloatField
      FieldName = 'READY_SUM'
    end
    object Q_INVAS_IS_SUM: TFloatField
      FieldName = 'AS_IS_SUM'
    end
    object Q_INVAS_IS_SUM_NOT_PROCESSED: TFloatField
      FieldName = 'AS_IS_SUM_NOT_PROCESSED'
    end
    object Q_INVREADY_UNITS: TFloatField
      FieldName = 'READY_UNITS'
    end
    object Q_INVAS_IS_UNITS: TFloatField
      FieldName = 'AS_IS_UNITS'
    end
    object Q_INVREADY_POS: TFloatField
      FieldName = 'READY_POS'
    end
    object Q_INVAS_IS_POS: TFloatField
      FieldName = 'AS_IS_POS'
    end
    object Q_INVDONE_NUM: TFloatField
      FieldName = 'DONE_NUM'
    end
    object Q_INVPAST_NUM: TFloatField
      FieldName = 'PAST_NUM'
    end
    object Q_INVTOTAL_SUM: TFloatField
      FieldName = 'TOTAL_SUM'
    end
  end
  object Q_INV_DS: TOraDataSource
    DataSet = Q_INV
    Left = 200
    Top = 72
  end
  object Q_CLAIMS_LIST: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT '
      'C.CLAIMS_LIST_ID,'
      'C.TTYPE,'
      'C.S_ID,'
      'C.ID_CLIENTS,'
      'C.FN_ID,'
      'C.quantity, '
      'C.hfl, '
      'C.cust, '
      'C.defect, '
      'C.info,'
      'C.quantity2, '
      'C.hfl2, '
      'C.cust2, '
      'C.flower,'
      'S.S_NAME_RU, '
      'CL.NICK, '
      'N.COMPILED_NAME,'
      'N.F_NAME,'
      'case'
      ' when C.TTYPE=1 then '#39'Poor condition'#39
      ' when C.TTYPE=2 then '#39'Missing'#39
      ' when C.TTYPE=3 then '#39'Instead of...'#39
      'end as TTYPE_NAME'
      ', c.id_office'
      'FROM '
      'CLAIMS_LIST C, SUPPLIERS S, '
      'CLIENTS CL, NOMENCLATURE_MAT_VIEW N '
      'WHERE'
      '/*Filter*/ 1=1'
      'AND C.S_ID = S.S_ID '
      'AND C.ID_CLIENTS = CL.ID_CLIENTS '
      'AND C.FN_ID = N.N_ID '
      'AND C.CLAIMS_ID = :CLAIMS_ID'
      'ORDER BY N.COMPILED_NAME')
    MasterSource = Q_CLAIMS_DS
    MasterFields = 'CLAIMS_ID'
    FetchAll = True
    Left = 104
    Top = 144
    ParamData = <
      item
        DataType = ftFloat
        Name = 'CLAIMS_ID'
        ParamType = ptInput
        Value = 22.000000000000000000
      end>
    object Q_CLAIMS_LISTCLAIMS_LIST_ID: TFloatField
      FieldName = 'CLAIMS_LIST_ID'
      Required = True
    end
    object Q_CLAIMS_LISTTTYPE: TFloatField
      FieldName = 'TTYPE'
      Required = True
    end
    object Q_CLAIMS_LISTS_ID: TFloatField
      FieldName = 'S_ID'
      Required = True
    end
    object Q_CLAIMS_LISTID_CLIENTS: TFloatField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object Q_CLAIMS_LISTFN_ID: TFloatField
      FieldName = 'FN_ID'
      Required = True
    end
    object Q_CLAIMS_LISTQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Required = True
    end
    object Q_CLAIMS_LISTHFL: TFloatField
      FieldName = 'HFL'
      Required = True
    end
    object Q_CLAIMS_LISTCUST: TFloatField
      FieldName = 'CUST'
      Required = True
    end
    object Q_CLAIMS_LISTDEFECT: TStringField
      FieldName = 'DEFECT'
      Size = 255
    end
    object Q_CLAIMS_LISTINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
    object Q_CLAIMS_LISTQUANTITY2: TIntegerField
      FieldName = 'QUANTITY2'
    end
    object Q_CLAIMS_LISTHFL2: TFloatField
      FieldName = 'HFL2'
    end
    object Q_CLAIMS_LISTCUST2: TFloatField
      FieldName = 'CUST2'
    end
    object Q_CLAIMS_LISTFLOWER: TStringField
      FieldName = 'FLOWER'
      Size = 100
    end
    object Q_CLAIMS_LISTS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Required = True
      Size = 50
    end
    object Q_CLAIMS_LISTNICK: TStringField
      FieldName = 'NICK'
      Required = True
    end
    object Q_CLAIMS_LISTCOMPILED_NAME: TStringField
      FieldName = 'COMPILED_NAME'
      Size = 299
    end
    object Q_CLAIMS_LISTF_NAME: TStringField
      FieldName = 'F_NAME'
      Size = 256
    end
    object Q_CLAIMS_LISTTTYPE_NAME: TStringField
      FieldName = 'TTYPE_NAME'
      Size = 14
    end
    object Q_CLAIMS_LISTID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
  end
  object Q_CLAIMS_LIST_DS: TOraDataSource
    DataSet = Q_CLAIMS_LIST
    Left = 104
    Top = 200
  end
  object Q_CLIENTS: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT C.ID_CLIENTS, C.NICK, C.FIO, C.CCODE,'
      '    C.TTYPE, C.ID_CLIENTS_GROUPS, C.BLOCK1, C.BLOCK2'
      ', c.GROUP_NAME, c.TTYPE_NAME'
      '    FROM CLIENTS_VIEW2 C '
      '    where id_office = :v_office'
      ' ORDER BY C.FIO')
    Left = 384
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'v_office'
      end>
    object Q_CLIENTSNICK: TStringField
      FieldName = 'NICK'
      Required = True
    end
    object Q_CLIENTSID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object Q_CLIENTSFIO: TStringField
      FieldName = 'FIO'
      Required = True
      Size = 255
    end
  end
  object Q_CLIENTS_DS: TOraDataSource
    DataSet = Q_CLIENTS
    Left = 384
    Top = 72
  end
  object Q_FLOWERS: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT a.compiled_name, a.full_name, a.f_name, a.f_name_ru,'
      
        '       a.f_sub_type, a.f_type, a.id_departments, a.dept, a.ft_id' +
        ','
      
        '       a.hol_sub_type, a.sub_weight, a.ht_id, a.n_id, a.fn_id, a' +
        '.fst_id,'
      
        '       a.s_id, a.c_id, a.col_id, a.h_code, a.h_name, a.code, a.l' +
        'en,'
      
        '       a.pack, a.diameter, a.vbn, a.hol_type, a.weight, a.remark' +
        's,'
      
        '       a.s_name_ru, a.bar_code, a.cust_coef, a.photo, a.is_photo' +
        ','
      
        '       a.colour, a.country, a.type_subtype, a.hol_marks, a.rus_m' +
        'arks,'
      '       a.great_name, a.great_name_f, a.name_code'
      '  FROM nomenclature_mat_view a'
      'WHERE'
      '/*Filter*/ (id_office=:v_office)'
      'AND ID_DEPARTMENTS=:dep'
      'ORDER BY COMPILED_NAME')
    Left = 552
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'v_office'
      end
      item
        DataType = ftUnknown
        Name = 'dep'
      end>
    object Q_FLOWERSCOMPILED_NAME: TStringField
      FieldName = 'COMPILED_NAME'
      Size = 299
    end
    object Q_FLOWERSFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Size = 515
    end
    object Q_FLOWERSF_NAME: TStringField
      FieldName = 'F_NAME'
      Size = 256
    end
    object Q_FLOWERSF_NAME_RU: TStringField
      FieldName = 'F_NAME_RU'
      Required = True
      Size = 256
    end
    object Q_FLOWERSF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Required = True
      Size = 50
    end
    object Q_FLOWERSF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Required = True
      Size = 50
    end
    object Q_FLOWERSID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
      Required = True
    end
    object Q_FLOWERSDEPT: TStringField
      FieldName = 'DEPT'
      Required = True
      Size = 100
    end
    object Q_FLOWERSFT_ID: TFloatField
      FieldName = 'FT_ID'
      Required = True
    end
    object Q_FLOWERSHOL_SUB_TYPE: TStringField
      FieldName = 'HOL_SUB_TYPE'
      Size = 50
    end
    object Q_FLOWERSSUB_WEIGHT: TFloatField
      FieldName = 'SUB_WEIGHT'
    end
    object Q_FLOWERSHT_ID: TFloatField
      FieldName = 'HT_ID'
    end
    object Q_FLOWERSN_ID: TFloatField
      FieldName = 'N_ID'
      Required = True
    end
    object Q_FLOWERSFN_ID: TFloatField
      FieldName = 'FN_ID'
      Required = True
    end
    object Q_FLOWERSFST_ID: TFloatField
      FieldName = 'FST_ID'
      Required = True
    end
    object Q_FLOWERSS_ID: TFloatField
      FieldName = 'S_ID'
      Required = True
    end
    object Q_FLOWERSC_ID: TFloatField
      FieldName = 'C_ID'
      Required = True
    end
    object Q_FLOWERSCOL_ID: TFloatField
      FieldName = 'COL_ID'
      Required = True
    end
    object Q_FLOWERSH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 50
    end
    object Q_FLOWERSH_NAME: TStringField
      FieldName = 'H_NAME'
      Size = 256
    end
    object Q_FLOWERSCODE: TFloatField
      FieldName = 'CODE'
    end
    object Q_FLOWERSLEN: TIntegerField
      FieldName = 'LEN'
    end
    object Q_FLOWERSPACK: TIntegerField
      FieldName = 'PACK'
    end
    object Q_FLOWERSDIAMETER: TFloatField
      FieldName = 'DIAMETER'
    end
    object Q_FLOWERSVBN: TIntegerField
      FieldName = 'VBN'
      Required = True
    end
    object Q_FLOWERSHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
    end
    object Q_FLOWERSWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object Q_FLOWERSREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 256
    end
    object Q_FLOWERSS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Required = True
      Size = 150
    end
    object Q_FLOWERSBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
      Size = 30
    end
    object Q_FLOWERSCUST_COEF: TFloatField
      FieldName = 'CUST_COEF'
      Required = True
    end
    object Q_FLOWERSPHOTO: TStringField
      FieldName = 'PHOTO'
      Size = 30
    end
    object Q_FLOWERSIS_PHOTO: TFloatField
      FieldName = 'IS_PHOTO'
    end
    object Q_FLOWERSCOLOUR: TStringField
      FieldName = 'COLOUR'
      Required = True
      Size = 50
    end
    object Q_FLOWERSCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Required = True
      Size = 50
    end
    object Q_FLOWERSTYPE_SUBTYPE: TStringField
      FieldName = 'TYPE_SUBTYPE'
      Size = 103
    end
    object Q_FLOWERSHOL_MARKS: TStringField
      FieldName = 'HOL_MARKS'
      Size = 4000
    end
    object Q_FLOWERSRUS_MARKS: TStringField
      FieldName = 'RUS_MARKS'
      Size = 4000
    end
    object Q_FLOWERSGREAT_NAME: TStringField
      FieldName = 'GREAT_NAME'
      Size = 350
    end
    object Q_FLOWERSGREAT_NAME_F: TStringField
      FieldName = 'GREAT_NAME_F'
      Size = 372
    end
    object Q_FLOWERSNAME_CODE: TStringField
      FieldName = 'NAME_CODE'
    end
  end
  object DS_FLOWERS: TOraDataSource
    DataSet = Q_FLOWERS
    Left = 552
    Top = 72
  end
  object frxReport1: TfrxReport
    Version = '4.12.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40310.724103553240000000
    ReportOptions.LastChange = 40310.734614722220000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 224
    Top = 360
    Datasets = <
      item
        DataSet = frxDB_CLAIMS
        DataSetName = 'frxDB_CLAIMS'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 132.283550000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 30.236240000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1056#1111#1056#1105#1057#1027#1056#1109#1056#1108' '#1056#1111#1057#1026#1056#181#1057#8218#1056#181#1056#1029#1056#183#1056#1105#1056#8470)
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Top = 41.574830000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1115#1057#8218#1056#1169#1056#181#1056#187':')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 98.267780000000000000
          Top = 41.574830000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 98.267780000000000000
          Top = 60.472480000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            '[<Date>]')
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          Top = 94.488250000000000000
          Width = 45.354360000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Align = baLeft
          Left = 45.354360000000000000
          Top = 94.488250000000000000
          Width = 105.826840000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Align = baLeft
          Left = 151.181200000000000000
          Top = 94.488250000000000000
          Width = 83.149660000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211' '#1056#1112#1056#176#1057#8364#1056#1105#1056#1029#1057#8249)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Align = baLeft
          Left = 234.330860000000000000
          Top = 113.385900000000000000
          Width = 60.472418980000000000
          Height = 18.897625590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211)
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Align = baLeft
          Left = 294.803278980000000000
          Top = 113.385900000000000000
          Width = 83.149598980000000000
          Height = 18.897625590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Align = baLeft
          Left = 442.204887960000000000
          Top = 94.488250000000000000
          Width = 64.252010000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Align = baLeft
          Left = 377.952877960000000000
          Top = 94.488250000000000000
          Width = 64.252010000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '$')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Align = baWidth
          Left = 650.078915920000000000
          Top = 94.488250000000000000
          Width = 396.850894080000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#1109#1056#1111#1056#1109#1056#187#1056#1029#1056#1105#1057#8218#1056#181#1056#187#1057#1034#1056#1029#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Top = 60.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1029#1056#176' '#1056#1169#1056#176#1057#8218#1057#1107':')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 234.330860000000000000
          Top = 94.488250000000000000
          Width = 143.622078980000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1056#1029#1056#1030#1056#1109#1056#8470#1057#1027' '#1056#1030#1056#1029#1057#1107#1057#8218#1057#1026#1056#181#1056#1029#1056#1029#1056#1105#1056#8470)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 506.456897960000000000
          Top = 94.488250000000000000
          Width = 143.622078980000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#152#1056#1029#1056#1030#1056#1109#1056#8470#1057#1027' '#1056#1111#1056#1109#1057#1027#1057#8218#1056#176#1056#1030#1057#8240#1056#1105#1056#1108#1056#176)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 506.456897960000000000
          Top = 113.385900000000000000
          Width = 60.472418980000000000
          Height = 18.897625590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211)
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 566.929316940000000000
          Top = 113.385900000000000000
          Width = 83.149598980000000000
          Height = 18.897625590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176)
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 291.023810000000000000
        Width = 1046.929810000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 907.087200000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[PAGE#] of [TOTALPAGES#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 211.653680000000000000
        Width = 1046.929810000000000000
        DataSet = frxDB_CLAIMS
        DataSetName = 'frxDB_CLAIMS'
        RowCount = 0
        Stretched = True
        object Memo34: TfrxMemoView
          Align = baLeft
          Width = 45.354360000000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'CLAIMS_ID'
          DataSet = frxDB_CLAIMS
          DataSetName = 'frxDB_CLAIMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDB_CLAIMS."CLAIMS_ID"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Align = baLeft
          Left = 45.354360000000000000
          Width = 105.826840000000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'DDATE'
          DataSet = frxDB_CLAIMS
          DataSetName = 'frxDB_CLAIMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDB_CLAIMS."DDATE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Align = baLeft
          Left = 151.181200000000000000
          Width = 83.149660000000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'N_TRACK'
          DataSet = frxDB_CLAIMS
          DataSetName = 'frxDB_CLAIMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDB_CLAIMS."N_TRACK"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Align = baLeft
          Left = 234.330860000000000000
          Width = 60.472418980000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'INV_ID'
          DataSet = frxDB_CLAIMS
          DataSetName = 'frxDB_CLAIMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDB_CLAIMS."INV_ID"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Align = baLeft
          Left = 294.803278980000000000
          Width = 83.149598980000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'INV_DATE'
          DataSet = frxDB_CLAIMS
          DataSetName = 'frxDB_CLAIMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDB_CLAIMS."INV_DATE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Align = baLeft
          Left = 442.204887960000000000
          Width = 64.252010000000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'PERCENT2'
          DataSet = frxDB_CLAIMS
          DataSetName = 'frxDB_CLAIMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDB_CLAIMS."PERCENT2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Align = baLeft
          Left = 377.952877960000000000
          Width = 64.252010000000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'SUMM_INV'
          DataSet = frxDB_CLAIMS
          DataSetName = 'frxDB_CLAIMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxDB_CLAIMS."SUMM_INV"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Align = baLeft
          Left = 506.456897960000000000
          Width = 60.472480000000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'SUPPLIER_NUMBER'
          DataSet = frxDB_CLAIMS
          DataSetName = 'frxDB_CLAIMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDB_CLAIMS."SUPPLIER_NUMBER"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Align = baLeft
          Left = 566.929377960000000000
          Width = 83.149598980000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'SUPPLIER_DATE'
          DataSet = frxDB_CLAIMS
          DataSetName = 'frxDB_CLAIMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDB_CLAIMS."SUPPLIER_DATE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Align = baWidth
          Left = 650.078976940000000000
          Width = 396.850833060000000000
          Height = 18.897637800000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'DOP_INFO'
          DataSet = frxDB_CLAIMS
          DataSetName = 'frxDB_CLAIMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDB_CLAIMS."DOP_INFO"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDB_CLAIMS: TfrxDBDataset
    UserName = 'frxDB_CLAIMS'
    CloseDataSource = False
    DataSource = Q_CLAIMS_DS
    BCDToCurrency = False
    Left = 312
    Top = 360
  end
  object frxDB_CLAIMS_LIST: TfrxDBDataset
    UserName = 'frxDB_CLAIMS_LIST'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CLAIMS_LIST_ID=CLAIMS_LIST_ID'
      'S_ID=S_ID'
      'ID_CLIENTS=ID_CLIENTS'
      'FN_ID=FN_ID'
      'QUANTITY=QUANTITY'
      'HFL=HFL'
      'CUST=CUST'
      'DEFECT=DEFECT'
      'INFO=INFO'
      'QUANTITY2=QUANTITY2'
      'HFL2=HFL2'
      'CUST2=CUST2'
      'FLOWER=FLOWER'
      'S_NAME_RU=S_NAME_RU'
      'NICK=NICK'
      'COMPILED_NAME=COMPILED_NAME'
      'TTYPE_NAME=TTYPE_NAME'
      'TTYPE=TTYPE'
      'F_NAME=F_NAME')
    DataSource = Q_CLAIMS_LIST_DS
    BCDToCurrency = False
    Left = 312
    Top = 408
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
    Author = 'FastReport'#174
    Subject = 'FastReport'#174' PDF export'
    Creator = 'FastReport'#174' (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 408
    Top = 360
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
    Left = 408
    Top = 408
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
    Left = 408
    Top = 456
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
    Left = 488
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
    Left = 488
    Top = 408
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = False
    Left = 488
    Top = 456
  end
  object frxTXTExport1: TfrxTXTExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ScaleWidth = 1.000000000000000000
    ScaleHeight = 1.000000000000000000
    Borders = False
    Pseudogrpahic = False
    PageBreaks = True
    OEMCodepage = False
    EmptyLines = False
    LeadSpaces = False
    PrintAfter = False
    PrinterDialog = True
    UseSavedProps = True
    Left = 312
    Top = 464
  end
  object Q_NOM: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT a.inv_id, a.n_id, a.units, a.price_per_unit,'
      '       a.amount_in_the_pack, a.h_code,'
      '       a.full_name, a.len, a.colour, a.country, a.s_name_ru,'
      '       a.rus_marks, a.diameter, a.ft_id, a.f_type,'
      '       a.fst_id, a.f_sub_type, a.cust_coef, a.gtd,'
      '       a.pack'
      'FROM invoice_data_full a'
      'WHERE'
      '/*Filter*/ (id_office=:v_office)'
      'AND a.inv_id=:id'
      'ORDER BY a.f_type, a.f_sub_type, a.full_name')
    Left = 472
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'v_office'
      end
      item
        DataType = ftUnknown
        Name = 'id'
      end>
    object Q_NOMINV_ID: TFloatField
      FieldName = 'INV_ID'
      Required = True
    end
    object Q_NOMN_ID: TFloatField
      FieldName = 'N_ID'
      Required = True
    end
    object Q_NOMUNITS: TFloatField
      FieldName = 'UNITS'
      Required = True
    end
    object Q_NOMPRICE_PER_UNIT: TFloatField
      FieldName = 'PRICE_PER_UNIT'
      Required = True
    end
    object Q_NOMAMOUNT_IN_THE_PACK: TFloatField
      FieldName = 'AMOUNT_IN_THE_PACK'
    end
    object Q_NOMH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 50
    end
    object Q_NOMFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Size = 515
    end
    object Q_NOMLEN: TIntegerField
      FieldName = 'LEN'
    end
    object Q_NOMCOLOUR: TStringField
      FieldName = 'COLOUR'
      Required = True
      Size = 50
    end
    object Q_NOMCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Required = True
      Size = 50
    end
    object Q_NOMS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Required = True
      Size = 150
    end
    object Q_NOMRUS_MARKS: TStringField
      FieldName = 'RUS_MARKS'
      Size = 4000
    end
    object Q_NOMDIAMETER: TFloatField
      FieldName = 'DIAMETER'
    end
    object Q_NOMFT_ID: TFloatField
      FieldName = 'FT_ID'
      Required = True
    end
    object Q_NOMF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Required = True
      Size = 50
    end
    object Q_NOMFST_ID: TFloatField
      FieldName = 'FST_ID'
      Required = True
    end
    object Q_NOMF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Required = True
      Size = 50
    end
    object Q_NOMCUST_COEF: TFloatField
      FieldName = 'CUST_COEF'
      Required = True
    end
    object Q_NOMGTD: TStringField
      FieldName = 'GTD'
      Size = 30
    end
    object Q_NOMPACK: TIntegerField
      FieldName = 'PACK'
    end
  end
  object Q_NOM_DS: TOraDataSource
    DataSet = Q_NOM
    Left = 472
    Top = 72
  end
  object Ora_SQL: TOraQuery
    Session = OraSession1
    Left = 288
    Top = 16
  end
  object DS_TYPES: TOraDataSource
    DataSet = CDS_TYPES
    Left = 472
    Top = 200
  end
  object CDS_TYPES: TOraQuery
    SQL.Strings = (
      'SELECT a.ft_id, a.f_type'
      '  FROM ft_view a'
      
        '  where a.id_departments = :id_dep and id_office in (1,:v_office' +
        ')')
    FetchAll = True
    AutoCommit = False
    FilterOptions = [foCaseInsensitive]
    Left = 472
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_dep'
      end
      item
        DataType = ftUnknown
        Name = 'v_office'
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
end
