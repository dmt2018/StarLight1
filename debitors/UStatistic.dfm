object frm_statistic: Tfrm_statistic
  Left = 491
  Top = 252
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' '#1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
  ClientHeight = 441
  ClientWidth = 595
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 595
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 593
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'Label1'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 43
    end
    object cxDateEdit1: TcxDateEdit
      Left = 168
      Top = 27
      Properties.DateOnError = deToday
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      OnKeyDown = cxDateEdit1KeyDown
      Width = 110
    end
    object cxLabel1: TcxLabel
      Left = 8
      Top = 27
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1076#1080#1072#1087#1086#1087#1079#1086#1085' '#1076#1072#1090':'
    end
    object cxDateEdit2: TcxDateEdit
      Left = 281
      Top = 27
      Properties.DateOnError = deToday
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      OnKeyDown = cxDateEdit2KeyDown
      Width = 110
    end
    object btn_search: TcxButton
      Left = 399
      Top = 27
      Width = 122
      Height = 41
      Caption = #1055#1086#1080#1089#1082' (Enter)'
      TabOrder = 2
      OnClick = btn_searchClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000B8BF081037AEEE80177EDC70F8CF034000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001F97EA851AA6F5FF4EF5FDFF34C6F9FF0176EDC5000000000000
        000000000000A5A0A0139A95957E928E8ECA938F8EF2928D8DF48F8B8BCE9593
        9485B2B3B6AF67B2D8FF4DF5FEFF38D8FDFF32CAFCFF057BEEEF000000000000
        0000A5A1A14C999595ECB6B1B2FFC2BDBDFFBEB8B9FFB7B0B1FFB0A9AAFFA39D
        9EFFA6A1A1FFE8E6E6FF79CADDFF30C9FCFF19A1F6FF0582EF9B00000000AAA5
        A54BA6A2A2FBDDDADAFFD4D0D0FFB0ACACFF9F9B9BFF9C9797FFA29C9DFFAFA8
        A9FFB0A9AAFFACA8A8FFD1CDCDFF63ACD6FF0F8EEE9F259EEB02B3AFAF11A09B
        9BEAECE9E9FFD7D3D3FFA39F9EF9D2CAC0D9EEE3D3C7EEE3D4C7D0CAC3D89C97
        97F8A9A3A3FFB0A9AAFFA4A0A0FFAFB2B6B969A1C60300000000A7A2A277CECA
        CBFFF0EDEEFFA6A2A0F9F0E1C3C7FDE1ADBFFEE2B2BFFEE5BCBFFDE8C5BFF0E6
        D5C69C9797F8AFA8A9FFA49E9EFF9191948A0000000000000000A19C9CC2EEEB
        EBFFC9C6C6FFD4C9B5DDFDDD98C5FEDA93C0FEDEA2BFFEE2B2BFFEE5BCBFFDE8
        C4BFD1CAC2D8A19C9CFFB1AAABFF8E8A8AD50000000000000000A09C9CE8EFEC
        ECFFB3AFAFFFF0DDB3D1FEDD95CFFED989C4FED990BFFEDEA2BFFEE2B2BFFEE5
        BCBFEFE3D1C79C9797FFB7B0B1FF938E8EFB9C97970100000000A19C9CE8E1DE
        DEFFB0ACACFFF0DDB1D4FFE8B6DFFEE3A7D5FED888C3FED990BFFEDEA2BFFEE2
        B2BFEFE3CFC79F9A9AFFBEB8B9FF959090FB0000000000000000A39E9EC1CDC9
        C9FFBCB7B7FFD6C9AFE1FEEEC8E7FFF3DAEDFEE3A8D6FED98BC4FEDA93C0FDE0
        A9BFD3CABDD8AFABABFFC4BEBFFF938F8FD40000000000000000A7A2A275B5B0
        B0FFCCC7C7FFAAA4A1F9F2E2BADBFEEEC9E7FFE9B9E0FEDF99D0FEDD96C6F1DF
        BAC7A49F9DF8D3CFCFFFB9B4B5FF9A9595890000000000000000ADA8A810A39E
        9EE9C1BDBDFFC2BDBDFFAAA4A1F9D7C9ACE2F1DCACD5F1DCACD2D5C8B0DDA7A2
        9FF8D5D2D2FFDFDCDCFF9C9797F2A5A1A11A000000000000000000000000A9A4
        A448A6A1A1FAC1BDBDFFCCC7C7FFBBB7B7FFB0ACACFFB2AFAEFFC8C5C5FFF0ED
        EDFFEEEBEBFFA9A5A5FDA39E9E58000000000000000000000000000000000000
        0000A9A5A548A39E9EEAB5B1B1FFCECACAFFE1DEDEFFEFECECFFF1EFEFFFD2CF
        CFFFA29E9DF0A9A5A55700000000000000000000000000000000000000000000
        000000000000ADA9A811A8A3A379A19D9DC7A39E9EEFA39E9EF0A09B9BCBABA7
        A680B7B3B3160000000000000000000000000000000000000000}
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
    end
    object cxCheckBox1: TcxCheckBox
      Left = 164
      Top = 51
      Caption = #1089#1084#1086#1090#1088#1077#1090#1100' '#1074#1089#1102' '#1075#1088#1091#1087#1087#1091
      ParentFont = False
      Style.BorderStyle = ebsOffice11
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Pitch = fpFixed
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 4
      Width = 185
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 595
    Height = 327
    Align = alClient
    TabOrder = 1
    object gr_stat: TcxGrid
      Left = 1
      Top = 1
      Width = 593
      Height = 325
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      object gr_stat_v: TcxGridDBTableView
        PopupMenu = PopupMenu1
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = stat_query_ds
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0.00'
            Kind = skSum
            Column = gr_stat_vSUMM
          end
          item
            Format = '0.00'
            Kind = skSum
            Column = gr_stat_vIN_RUB
          end
          item
            Format = '0'
            Kind = skCount
            Column = gr_stat_vT_LONG
          end
          item
            Format = '0.00'
            Kind = skSum
            Column = gr_stat_vitog_discount
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1086#1074
        FilterRow.Visible = True
        OptionsBehavior.CellHints = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHorzSizing = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
        OptionsView.ColumnAutoWidth = True
        OptionsView.DataRowHeight = 25
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderEndEllipsis = True
        OptionsView.HeaderHeight = 25
        object gr_stat_vT_LONG: TcxGridDBColumn
          Caption = #1054#1055#1045#1056#1040#1062#1048#1071
          DataBinding.FieldName = 'T_LONG'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 200
          Options.Editing = False
          Options.Grouping = False
          Options.Moving = False
        end
        object gr_stat_vSUMM: TcxGridDBColumn
          Caption = #1053#1040#1050#1051#1040#1044#1053#1067#1045
          DataBinding.FieldName = 'SUMM'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Vert = taVCenter
          Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 100
          Options.Editing = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 100
        end
        object gr_stat_vIN_RUB: TcxGridDBColumn
          Caption = #1054#1055#1051#1040#1058#1040
          DataBinding.FieldName = 'IN_RUB'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Vert = taVCenter
          Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 100
          Options.Editing = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.Grouping = False
          Options.Moving = False
          Width = 100
        end
        object gr_stat_vitog_discount: TcxGridDBColumn
          Caption = #1057#1050#1048#1044#1050#1040
          DataBinding.FieldName = 'itog_discount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.ReadOnly = True
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 100
          Options.Editing = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.Grouping = False
          Options.Moving = False
          Width = 100
        end
      end
      object gr_stat_l: TcxGridLevel
        GridView = gr_stat_v
      end
    end
    object gr_stat_rate: TcxGrid
      Left = 1
      Top = 1
      Width = 593
      Height = 325
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      object gr_stat_rate_v: TcxGridDBTableView
        PopupMenu = PopupMenu1
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = stat_query_ds
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0.00'
            Kind = skAverage
            Column = cxGridDBColumn1
          end
          item
            Format = '0.00'
            Kind = skSum
            Column = cxGridDBColumn4
          end
          item
            Format = '0.0'
            Kind = skSum
            Column = gr_stat_rate_vColumn1
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1086#1074
        FilterRow.Visible = True
        OptionsBehavior.CellHints = True
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnHorzSizing = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
        OptionsView.ColumnAutoWidth = True
        OptionsView.DataRowHeight = 25
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderEndEllipsis = True
        OptionsView.HeaderHeight = 25
        object cxGridDBColumn1: TcxGridDBColumn
          Caption = #1050#1091#1088#1089
          DataBinding.FieldName = 'rate'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
          Properties.ReadOnly = True
          HeaderAlignmentVert = vaCenter
          MinWidth = 80
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = #1052#1080#1085'. '#1076#1072#1090#1072
          DataBinding.FieldName = 'min_date'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 130
          Options.Editing = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 130
        end
        object cxGridDBColumn3: TcxGridDBColumn
          Caption = #1052#1072#1082#1089'. '#1076#1072#1090#1072
          DataBinding.FieldName = 'max_date'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = True
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 130
          Options.Editing = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 130
        end
        object cxGridDBColumn4: TcxGridDBColumn
          Caption = #1054#1087#1083#1072#1090#1072
          DataBinding.FieldName = 'in_rub'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
          Properties.ReadOnly = True
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 100
          Options.Editing = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.Grouping = False
          Options.Moving = False
          Width = 100
        end
        object gr_stat_rate_vColumn1: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = 'summ'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
          Properties.ReadOnly = True
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 100
          Options.Editing = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.Grouping = False
          Options.Moving = False
        end
      end
      object gr_stat_rate_l: TcxGridLevel
        GridView = gr_stat_rate_v
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 408
    Width = 595
    Height = 33
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      595
      33)
    object btn_close: TcxButton
      Left = 477
      Top = 3
      Width = 114
      Height = 25
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      ModalResult = 2
      TabOrder = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000181862042929A59326269B3B000000000000000000000000000000000000
        00000000000021218A3126269B94181863050000000000000000000000001818
        64042A2AA9A94D4DD0FF3535B4F226269B3B0000000000000000000000000000
        000022228C312F2FA9EC4242C5FF26269BAD1818630500000000191966042B2B
        ACA94E4ED1FF6969E2FF6969E9FF3636B5F226269B3B00000000000000002323
        8E322F2FABED4E4ED8FF4747D2FF4444C9FF26269BAD181863052B2BAE8E4949
        CDFF6060D9FF6868DDFF7070E7FF6C6CEDFF3636B5F226269B3B232391323131
        AEED5252DCFF4444CEFF4242CCFF4747D2FF4242C6FF26269B942828A0313434
        B8EC5E5EDEFF6868DEFF7070E7FF7575EEFF6D6DEFFF3636B5F23333B1ED5A5A
        E2FF4D4DD5FF4343CDFF4242CDFF4D4DD8FF2F2FA9ED23239233000000002828
        A0313535B9EC6464E4FF7070E7FF7676EEFF7777F1FF6C6CEFFF6363E9FF5A5A
        DEFF4C4CD4FF4444CEFF4D4DD8FF2F2FABED2424943300000000000000000000
        00002828A0313535B9EC6868E9FF7575EEFF7777F0FF7272EEFF6767E7FF5A5A
        DEFF4D4DD5FF4E4ED9FF3030ADED252596330000000000000000000000000000
        0000000000002828A1313636BAEC6D6DEEFF7777F0FF7272EEFF6767E7FF5A5A
        DEFF5454DEFF3131B0ED25259933000000000000000000000000000000000000
        00000000000027279E313636BBEC6D6DEEFF7777F0FF7272EEFF6767E7FF5A5A
        DEFF5454DEFF3232B3F226269B3B000000000000000000000000000000000000
        00002828A0313636BDEC6868EAFF7575EEFF7777F0FF7272EEFF6767E7FF5A5A
        DEFF4D4DD5FF4E4EDAFF3232B3F226269B3B0000000000000000000000002828
        A2313636BEEC6464E5FF7070E7FF7676EEFF7777F1FF6B6BEEFF6363E9FF5A5A
        DEFF4C4CD4FF4444CEFF4D4DD9FF3232B3F226269B3B000000002929A4313636
        C0EC5E5EDFFF6868DEFF7070E7FF7575EEFF6C6CEFFF3636BCED3535BAEC5A5A
        E3FF4D4DD5FF4343CDFF4242CCFF4D4DD9FF3232B3F226269B3B2E2EB9904B4B
        D2FF6060D9FF6868DDFF7070E7FF6B6BEDFF3737BEED2929A7332828A1313434
        B9EC5353DEFF4444CEFF4242CCFF4848D3FF4343CAFF2929A68D1E1E77042F2F
        BAAA5151D7FF6969E2FF6868E9FF3838C0ED2A2AA93300000000000000002828
        A0313333B8EC4E4EDAFF4848D3FF4545CEFF2A2AA9A21A1A6B02000000001E1E
        77042F2FBAAA4F4FD7FF3838C1ED2B2BAC330000000000000000000000000000
        00002828A0313333B8EC4343CCFF2B2BACA21B1B6D0200000000000000000000
        00001E1E77042E2EB9922B2BAE33000000000000000000000000000000000000
        0000000000002828A0312B2BAE891B1B6F020000000000000000}
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
    end
  end
  object stat_query: TOraQuery
    SQL.Strings = (
      'begin'
      
        '  CASH_PKG.show_statistic(:ID_DEBETORS_, :ID_GROUP_, :DATE_BEGIN' +
        '_, :DATE_END_, :CURSOR_);'
      'end;')
    Left = 312
    Top = 105
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEBETORS_'
        ParamType = ptInput
        Value = 19664.000000000000000000
      end
      item
        DataType = ftFloat
        Name = 'ID_GROUP_'
        ParamType = ptInput
        Value = 0.000000000000000000
      end
      item
        DataType = ftDateTime
        Name = 'DATE_BEGIN_'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATE_END_'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptInputOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'CASH_PKG.show_statistic'
  end
  object stat_query_ds: TOraDataSource
    DataSet = stat_query
    Left = 344
    Top = 105
  end
  object ActionList1: TActionList
    Left = 384
    Top = 125
    object aEnter: TAction
      Caption = 'aEnter'
      OnExecute = btn_searchClick
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 384
    Top = 160
    object f1: TMenuItem
      Caption = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072' '#1080#1090#1086#1075#1086#1074#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103' '
      OnClick = f1Click
    end
  end
end
