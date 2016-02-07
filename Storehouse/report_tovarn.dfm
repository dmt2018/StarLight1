object ReportTovarnForm: TReportTovarnForm
  Left = 379
  Top = 79
  Width = 428
  Height = 546
  Caption = #1058#1086#1074#1072#1088#1085#1099#1081' '#1086#1090#1095#1077#1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 420
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    Color = clSkyBlue
    TabOrder = 0
    object Label1: TLabel
      Left = 18
      Top = 15
      Width = 136
      Height = 16
      Align = alCustom
      Alignment = taCenter
      Anchors = [akLeft]
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1077#1088#1080#1086#1076':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Doc_DateTimePicker1: TDateTimePicker
      Left = 17
      Top = 40
      Width = 116
      Height = 24
      Date = 38276.859402847220000000
      Time = 38276.859402847220000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Doc_DateTimePicker2: TDateTimePicker
      Left = 138
      Top = 40
      Width = 116
      Height = 24
      Date = 38276.859402847220000000
      Time = 38276.859402847220000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 271
      Top = 37
      Width = 141
      Height = 28
      Cursor = crHandPoint
      Caption = #1087#1086#1082#1072#1079#1072#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Spacing = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 185
    Height = 387
    Align = alLeft
    BevelOuter = bvNone
    Color = clBackground
    TabOrder = 1
    object Bevel15: TBevel
      Left = 0
      Top = 306
      Width = 185
      Height = 41
      Shape = bsBottomLine
    end
    object Bevel7: TBevel
      Left = 0
      Top = 264
      Width = 185
      Height = 41
      Shape = bsBottomLine
    end
    object Label2: TLabel
      Left = 28
      Top = 19
      Width = 140
      Height = 16
      Align = alCustom
      Alignment = taCenter
      Anchors = [akTop]
      Caption = #1086#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1085#1072#1095#1072#1083#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 32
      Top = 60
      Width = 136
      Height = 16
      Align = alCustom
      Alignment = taCenter
      Anchors = [akTop]
      Caption = #1087#1088#1080#1093#1086#1076' ('#1087#1086#1089#1090#1072#1074#1082#1072')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 60
      Top = 102
      Width = 108
      Height = 16
      Align = alCustom
      Alignment = taCenter
      Anchors = [akTop]
      Caption = #1088#1072#1089#1093#1086#1076' ('#1082#1072#1089#1089#1072')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 97
      Top = 145
      Width = 71
      Height = 16
      Align = alCustom
      Alignment = taCenter
      Anchors = [akTop]
      Caption = #1089#1087#1080#1089#1072#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 114
      Top = 187
      Width = 54
      Height = 16
      Align = alCustom
      Alignment = taCenter
      Anchors = [akTop]
      Caption = #1091#1094#1077#1085#1082#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 57
      Top = 229
      Width = 111
      Height = 16
      Align = alCustom
      Alignment = taCenter
      Anchors = [akTop]
      Caption = #1082#1086#1088#1088#1077#1082#1094#1080#1103' (+/-)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 38
      Top = 274
      Width = 130
      Height = 16
      Align = alCustom
      Alignment = taCenter
      Anchors = [akTop]
      Caption = #1086#1089#1090#1072#1090#1086#1082' '#1085#1072' '#1082#1086#1085#1077#1094
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 66
      Top = 314
      Width = 95
      Height = 16
      Align = alCustom
      Alignment = taCenter
      Anchors = [akTop]
      Caption = #1076#1086#1083#1078#1085#1086' '#1073#1099#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel3: TBevel
      Left = 0
      Top = 0
      Width = 185
      Height = 48
      Shape = bsBottomLine
    end
    object Bevel1: TBevel
      Left = 0
      Top = 49
      Width = 185
      Height = 40
      Shape = bsBottomLine
    end
    object Bevel2: TBevel
      Left = 0
      Top = 88
      Width = 185
      Height = 49
      Shape = bsBottomLine
    end
    object Bevel4: TBevel
      Left = 0
      Top = 136
      Width = 185
      Height = 41
      Shape = bsBottomLine
    end
    object Bevel5: TBevel
      Left = 0
      Top = 176
      Width = 185
      Height = 41
      Shape = bsBottomLine
    end
    object Bevel6: TBevel
      Left = 0
      Top = 216
      Width = 185
      Height = 49
      Shape = bsBottomLine
    end
    object Label10: TLabel
      Left = 66
      Top = 356
      Width = 102
      Height = 16
      Align = alCustom
      Alignment = taCenter
      Anchors = [akTop]
      Caption = #1088#1072#1089#1093#1086#1076' '#1086#1073#1097#1080#1081
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 185
    Top = 81
    Width = 235
    Height = 387
    Align = alClient
    BevelOuter = bvNone
    Color = clWindow
    TabOrder = 2
    object Bevel14: TBevel
      Left = 2
      Top = 264
      Width = 233
      Height = 41
      Shape = bsBottomLine
      Style = bsRaised
    end
    object Bevel16: TBevel
      Left = 2
      Top = 305
      Width = 233
      Height = 41
      Shape = bsBottomLine
      Style = bsRaised
    end
    object Bevel8: TBevel
      Left = 0
      Top = 0
      Width = 233
      Height = 49
      Shape = bsBottomLine
      Style = bsRaised
    end
    object Bevel9: TBevel
      Left = 2
      Top = 48
      Width = 233
      Height = 41
      Shape = bsBottomLine
      Style = bsRaised
    end
    object Bevel10: TBevel
      Left = 2
      Top = 88
      Width = 233
      Height = 49
      Shape = bsBottomLine
      Style = bsRaised
    end
    object Bevel11: TBevel
      Left = 2
      Top = 136
      Width = 233
      Height = 41
      Shape = bsBottomLine
      Style = bsRaised
    end
    object Bevel12: TBevel
      Left = 2
      Top = 176
      Width = 233
      Height = 41
      Shape = bsBottomLine
      Style = bsRaised
    end
    object Bevel13: TBevel
      Left = 2
      Top = 216
      Width = 233
      Height = 49
      Shape = bsBottomLine
      Style = bsRaised
    end
    object R_Label1: TLabel
      Left = 14
      Top = 18
      Width = 6
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object R_Label2: TLabel
      Left = 14
      Top = 58
      Width = 6
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object R_Label3: TLabel
      Left = 14
      Top = 106
      Width = 6
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object R_Label4: TLabel
      Left = 14
      Top = 146
      Width = 6
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object R_Label5: TLabel
      Left = 14
      Top = 186
      Width = 6
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object R_Label6: TLabel
      Left = 14
      Top = 234
      Width = 6
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object R_Label7: TLabel
      Left = 14
      Top = 274
      Width = 6
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object R_Label8: TLabel
      Left = 15
      Top = 314
      Width = 6
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object R_Label9: TLabel
      Left = 16
      Top = 357
      Width = 6
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 468
    Width = 420
    Height = 51
    Align = alBottom
    BevelOuter = bvNone
    Color = clSkyBlue
    TabOrder = 3
    DesignSize = (
      420
      51)
    object BitBtn_Cancel: TBitBtn
      Left = 273
      Top = 19
      Width = 131
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      TabOrder = 0
      Kind = bkClose
    end
  end
  object OraStoredProc: TOraStoredProc
    StoredProcName = '"S_STOREHOUSE"."STORE_TOVREPORT"'
    SQL.Strings = (
      'begin'
      
        '  "S_STOREHOUSE"."STORE_TOVREPORT"(:IN_DATE1, :IN_DATE2, :IN_OTD' +
        'EL, :ALL_PRIHOD, :ALL_KASSA, :ALL_SPISANIE, :ALL_UTSENKA, :ALL_K' +
        'ORR);'
      'end;')
    Left = 313
    Top = 105
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'IN_DATE1'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'IN_DATE2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IN_OTDEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ALL_PRIHOD'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'ALL_KASSA'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'ALL_SPISANIE'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'ALL_UTSENKA'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'ALL_KORR'
        ParamType = ptOutput
      end>
  end
  object ost_SP: TOraStoredProc
    StoredProcName = '"S_STOREHOUSE"."RETURN_OSTATOK_TO_DATE_P_ALL"'
    Session = DM.OraSession
    SQL.Strings = (
      'begin'
      
        '  :RESULT := "S_STOREHOUSE"."RETURN_OSTATOK_TO_DATE_P_ALL"(:DDAT' +
        'E_END, :IN_OTDEL);'
      'end;')
    Left = 313
    Top = 161
    ParamData = <
      item
        DataType = ftFloat
        Name = 'RESULT'
        ParamType = ptOutput
      end
      item
        DataType = ftDateTime
        Name = 'DDATE_END'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IN_OTDEL'
        ParamType = ptInput
      end>
  end
  object ost_end_SP: TOraStoredProc
    StoredProcName = '"S_STOREHOUSE"."STORE_TOVREPORT"'
    Session = DM.OraSession
    SQL.Strings = (
      'begin'
      
        '  "S_STOREHOUSE"."STORE_TOVREPORT"(:IN_DATE1, :IN_DATE2, :IN_OTD' +
        'EL, :OST_BEGIN, :OST_END, :ALL_PRIHOD, :ALL_KASSA, :ALL_SPISANIE' +
        ', :ALL_UTSENKA, :ALL_KORR);'
      'end;')
    Left = 313
    Top = 209
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'IN_DATE1'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'IN_DATE2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IN_OTDEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OST_BEGIN'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'OST_END'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'ALL_PRIHOD'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'ALL_KASSA'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'ALL_SPISANIE'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'ALL_UTSENKA'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'ALL_KORR'
        ParamType = ptOutput
      end>
  end
  object OraQuery1: TOraQuery
    Session = DM.OraSession
    SQL.Strings = (
      'select'
      'sum(ostatok_p) as eee'
      'from'
      '('
      'select '
      'NOMENCLATURE.N_ID,'
      ''
      
        's_storehouse.RETURN_OSTATOK_TO_DATE_P(trunc(:DOC_DATE1), NOMENCL' +
        'ATURE.N_ID) as ostatok_p,'
      ''
      
        's_storehouse.RETURN_OSTATOK_TO_DATE_P(trunc(:DOC_DATE2), NOMENCL' +
        'ATURE.N_ID) as ostatok_end_p,'
      ''
      '('
      'select '
      'sum(store_doc_data.QUANTITY*PRICE) '
      'from store_doc_data '
      'where '
      '    store_doc_data.N_ID=NOMENCLATURE.N_ID '
      
        '    and (select store_doc.ID_DOC_TYPE from store_doc where store' +
        '_doc.ID_DOC=store_doc_data.ID_DOC and (trunc(store_doc.doc_date)' +
        ' between trunc(:DOC_DATE1) and trunc(:DOC_DATE2)))=1'
      ') '
      'as prihod_p,'
      ''
      ''
      '('
      'select '
      'sum(store_doc_data.QUANTITY*PRICE) '
      'from store_doc_data '
      'where '
      '    store_doc_data.N_ID=NOMENCLATURE.N_ID '
      
        '    and (select store_doc.ID_DOC_TYPE from store_doc where store' +
        '_doc.ID_DOC=store_doc_data.ID_DOC and (trunc(store_doc.doc_date)' +
        ' between trunc(:DOC_DATE1) and trunc(:DOC_DATE2)))=2'
      ') '
      'as spis_p,'
      ''
      ''
      ''
      '('
      'select '
      'sum(store_doc_data.QUANTITY*PRICE) '
      'from store_doc_data '
      'where '
      '    store_doc_data.N_ID=NOMENCLATURE.N_ID '
      
        '    and (select store_doc.ID_DOC_TYPE from store_doc where store' +
        '_doc.ID_DOC=store_doc_data.ID_DOC and (trunc(store_doc.doc_date)' +
        ' between trunc(:DOC_DATE1) and trunc(:DOC_DATE2)))=3'
      ') '
      'as utsen_p,'
      ''
      ''
      ''
      '('
      'select '
      'sum(store_doc_data.QUANTITY*PRICE) '
      'from store_doc_data '
      'where '
      '    store_doc_data.N_ID=NOMENCLATURE.N_ID '
      
        '    and (select store_doc.ID_DOC_TYPE from store_doc where store' +
        '_doc.ID_DOC=store_doc_data.ID_DOC and (trunc(store_doc.doc_date)' +
        ' between trunc(:DOC_DATE1) and trunc(:DOC_DATE2)))=4'
      ') '
      'as prod_p'
      ''
      ''
      ''
      'from '
      'NOMENCLATURE'
      'where'
      
        'NOMENCLATURE.N_ID in (select n_ID from NOMENCLATURE_FULL_VIEW wh' +
        'ere ID_DEPARTMENTS=:in_OTDEL)'
      ')')
    Left = 96
    Top = 265
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DOC_DATE1'
      end
      item
        DataType = ftUnknown
        Name = 'DOC_DATE2'
      end
      item
        DataType = ftUnknown
        Name = 'in_OTDEL'
      end>
  end
  object OraDataSource1: TOraDataSource
    DataSet = OraQuery1
    Left = 96
    Top = 305
  end
end
