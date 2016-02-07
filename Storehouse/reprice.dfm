object repriceForm: TrepriceForm
  Left = 399
  Top = 215
  Caption = #1053#1072#1082#1083#1072#1076#1085#1099#1077' '#1087#1077#1088#1077#1086#1094#1077#1085#1082#1080
  ClientHeight = 516
  ClientWidth = 966
  Color = clBtnFace
  Constraints.MinHeight = 550
  Constraints.MinWidth = 770
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'arial'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel3: TPanel
    Left = 0
    Top = 82
    Width = 966
    Height = 320
    Align = alClient
    BevelOuter = bvNone
    Color = clWindow
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object grid_rp: TcxGrid
      Left = 0
      Top = 0
      Width = 966
      Height = 320
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      object grid_rp_v: TcxGridDBTableView
        PopupMenu = spis_menu
        OnDblClick = grid_rp_vDblClick
        OnKeyDown = grid_rp_vKeyDown
        OnKeyPress = grid_rp_vKeyPress
        NavigatorButtons.ConfirmDelete = False
        FilterBox.Position = fpTop
        OnCellClick = grid_rp_vCellClick
        OnCustomDrawCell = grid_rp_vCustomDrawCell
        DataController.DataSource = DOC_DATA_DS
        DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription, fcoSoftCompare]
        DataController.Filter.OnChanged = grid_rp_vDataControllerFilterChanged
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skCount
            Position = spFooter
          end
          item
            Kind = skCount
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0'
            Kind = skSum
            Column = rp_ADDED_1
          end
          item
            Format = '0'
            Kind = skCount
            Column = rp_CODE
          end
          item
            Format = '0'
            Kind = skSum
            Column = rp_QUANTITY
          end
          item
            Format = '0.00'
            Kind = skSum
            Column = rp_PRICE
          end
          item
            Format = '0.00'
            Kind = skSum
            Column = rp_PRICE_LIST
          end
          item
            Format = '0.00'
            Kind = skSum
            Column = rp_sum_price_difference
          end
          item
            Kind = skCount
          end
          item
            Kind = skSum
          end
          item
            Format = '0'
            Kind = skCount
          end
          item
            Kind = skSum
          end
          item
            Format = '0.00'
            Kind = skSum
          end
          item
            Format = '0'
            Kind = skSum
          end
          item
            Format = '0'
            Kind = skSum
          end
          item
            Format = '0'
            Kind = skCount
          end
          item
            Format = '0'
            Kind = skSum
          end
          item
            Format = '0.00'
            Kind = skSum
          end
          item
            Format = '0'
            Kind = skSum
          end
          item
            Format = '0'
            Kind = skCount
          end
          item
            Format = '0.00'
            Kind = skSum
          end
          item
            Format = '0.00'
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1092#1080#1083#1100#1090#1088#1086#1074
        FilterRow.Visible = True
        OptionsBehavior.CellHints = True
        OptionsCustomize.ColumnMoving = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
        OptionsView.Footer = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderEndEllipsis = True
        object np_pics: TcxGridDBColumn
          Caption = #1048#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
          DataBinding.ValueType = 'Variant'
          PropertiesClassName = 'TcxImageProperties'
          Properties.GraphicClassName = 'TJPEGImage'
          Properties.ImmediatePost = True
          Properties.ReadOnly = True
          Properties.Stretch = True
          Visible = False
          MinWidth = 130
          Options.Editing = False
          Options.Filtering = False
          Options.FilteringFilteredItemsList = False
          Options.FilteringMRUItemsList = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 130
        end
        object rp_store_type_name: TcxGridDBColumn
          Caption = #1057#1082#1083#1072#1076
          DataBinding.FieldName = 'STORE_TYPE_NAME'
          MinWidth = 60
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Styles.Content = st_small
          Width = 60
        end
        object rp_ADDED_1: TcxGridDBColumn
          Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1086
          DataBinding.FieldName = 'ADDED_1'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.DisplayChecked = #1044#1072
          Properties.DisplayUnchecked = #1053#1077#1090
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            00000000000000000000175C160328A328912BA62FCD27A02760000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000029A5299652D47AFF72F4A5FF39B74CF8238C23240000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000002AA829894BCD6DFF74F097FF77F08DFF63E692FF28A229B10000
            0000000000000000000000000000000000000000000000000000000000001658
            16012BAB2A904ACC6BFF6FEB94FF76EE8AFF77F08CFF72F192FF44C561FF269B
            2647000000000000000000000000000000000000000000000000175C17022CAE
            2B9E4BCE6FFF69E48BFF70E785FF73F19CFF74F39CFF72EF88FF65EA94FF2DA9
            32D81B6E1B0600000000000000000000000000000000000000002CB12C804ACE
            6EFF61DA7FFF68DE7DFF68E897FF39BA48F342C55CFB70F194FF68E982FF4DD2
            74FF29A3287B000000000000000000000000000000000000000031B736D45CD8
            87FF5FD473FF62E391FF36B841EC2AA829342BAA2AA060E48EFF68E87DFF5FE6
            86FF36B647F624902325000000000000000000000000000000002EB42D9F4ED2
            75FF55D880FF34B83DE629A4282E00000000238D221F3ABC4BF767EC8FFF5BDF
            6FFF53DC81FF2AA72DC3186318020000000000000000000000002080200B2DB3
            2D792DB22C852699261B0000000000000000000000002BAB2A8252D87BFF5BE0
            73FF51D96AFF44CA68FF29A52975000000000000000000000000000000000000
            000000000000000000000000000000000000000000001D741D0830B136DA5BE3
            89FF4ED55FFF4DD973FF36B748F8259825320000000000000000000000000000
            000000000000000000000000000000000000000000000000000028A1283C3DC2
            54FC53DC76FF44CE55FF4DD87AFF2DAB33DA1F7D1F0D00000000000000000000
            0000000000000000000000000000000000000000000000000000000000002BAD
            2B8649D16FFF47D15FFF44CE57FF49D274FF2AA62AA900000000000000000000
            0000000000000000000000000000000000000000000000000000000000001C6F
            1B042DAF2FC44DD87AFF43CD55FF47D262FF41C661FF29A5286A000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00002490231A31B539E54DD97AFF42CC52FF4EDA79FF2DAC31D1000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000028A1273536BA44F34FDB7EFF49D374FF2AA92BA8000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000002AA6293F2BAD2BB32BAB2A9222892210}
          HeaderGlyphAlignmentHorz = taCenter
          MinWidth = 50
          Options.Editing = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.ShowCaption = False
          Styles.Content = st_prihod
          Width = 50
        end
        object rp_H_CODE: TcxGridDBColumn
          Caption = #1040#1088#1090#1080#1082#1091#1083
          DataBinding.FieldName = 'H_CODE'
          MinWidth = 100
          Options.Editing = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 100
        end
        object rp_FULL_NAME: TcxGridDBColumn
          Caption = #1053#1072#1079#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'COMPILED_NAME_OTDEL'
          Options.Editing = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.Moving = False
          Width = 150
        end
        object rp_f_type: TcxGridDBColumn
          Caption = #1043#1088#1091#1087#1087#1072
          DataBinding.FieldName = 'F_TYPE'
          Options.Editing = False
          Options.Moving = False
          Width = 100
        end
        object rp_F_SUB_TYPE: TcxGridDBColumn
          Caption = #1055#1086#1076#1075#1088#1091#1087#1087#1072
          DataBinding.FieldName = 'F_SUB_TYPE'
          Options.Editing = False
          Options.Moving = False
          Width = 120
        end
        object rp_S_NAME_RU: TcxGridDBColumn
          Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
          DataBinding.FieldName = 'S_NAME_RU'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          Options.Editing = False
          Styles.Content = st_small
          Width = 80
        end
        object rp_SPESIFICATION: TcxGridDBColumn
          Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
          DataBinding.FieldName = 'SPESIFICATION'
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          MinWidth = 80
          Options.Editing = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.Moving = False
          Styles.Content = st_small
          Width = 100
        end
        object rp_CODE: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'CODE'
          FooterAlignmentHorz = taCenter
          MinWidth = 100
          Options.Editing = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.HorzSizing = False
          Options.Moving = False
          Styles.Content = st_small
          Width = 100
        end
        object np_our_code: TcxGridDBColumn
          Caption = #1042#1085#1091#1090#1088'. '#1082#1086#1076
          DataBinding.FieldName = 'our_code'
          HeaderAlignmentHorz = taCenter
          MinWidth = 90
          Options.Editing = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.HorzSizing = False
          Options.Moving = False
          Styles.Content = st_small
          Width = 90
        end
        object rp_QUANTITY: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086
          DataBinding.FieldName = 'QUANTITY_NOW'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ImmediatePost = True
          Properties.SpinButtons.Visible = False
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          MinWidth = 60
          Options.Editing = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 60
        end
        object rp_PRICE: TcxGridDBColumn
          Caption = #1053#1086#1074#1072#1103' '#1094#1077#1085#1072
          DataBinding.FieldName = 'PRICE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
          HeaderAlignmentHorz = taCenter
          MinWidth = 90
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.HorzSizing = False
          Options.Moving = False
          Styles.Content = st_prihod
          Width = 90
        end
        object rp_PRICE_LIST: TcxGridDBColumn
          Caption = #1057#1090#1072#1088#1072#1103' '#1094#1077#1085#1072
          DataBinding.FieldName = 'PRICE_LIST'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          MinWidth = 95
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.HorzSizing = False
          Options.Moving = False
          Styles.Content = st_prihod
          Width = 95
        end
        object rp_PRICE_DIFFERENCE: TcxGridDBColumn
          Caption = #1055#1077#1088#1077#1086#1094#1077#1085#1082#1072
          DataBinding.FieldName = 'PRICE_DIFFERENCE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
          HeaderAlignmentHorz = taCenter
          MinWidth = 80
          Options.Editing = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
        end
        object rp_sum_price_difference: TcxGridDBColumn
          Caption = #1055#1077#1088#1077#1086#1094#1077#1085#1077#1085#1086' '#1085#1072
          DataBinding.FieldName = 'sum_price_difference'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
          HeaderAlignmentHorz = taCenter
          MinWidth = 90
          Options.Editing = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 90
        end
        object grid_rp_vPHOTO: TcxGridDBColumn
          DataBinding.FieldName = 'PHOTO'
          Visible = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
        end
        object grid_rp_vNOTUSE: TcxGridDBColumn
          DataBinding.FieldName = 'NOTUSE'
          Visible = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
        end
        object grid_rp_vN_ID: TcxGridDBColumn
          DataBinding.FieldName = 'N_ID'
          Visible = False
          Options.FilteringPopup = False
          Options.FilteringPopupMultiSelect = False
        end
      end
      object grid_rp_l: TcxGridLevel
        GridView = grid_rp_v
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 966
    Height = 40
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object Panel7: TPanel
      Left = 682
      Top = 2
      Width = 282
      Height = 36
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        282
        36)
      object DBText3: TDBText
        Left = 109
        Top = 11
        Width = 52
        Height = 16
        Alignment = taRightJustify
        Anchors = []
        AutoSize = True
        DataField = 'DOC_NUMBER'
        DataSource = DOC_DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 172
        Top = 11
        Width = 14
        Height = 16
        Anchors = []
        Caption = #1086#1090
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DocDate_Label: TLabel
        Left = 200
        Top = 11
        Width = 31
        Height = 16
        Anchors = []
        Caption = #1044#1072#1090#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel11: TPanel
      Left = 2
      Top = 2
      Width = 680
      Height = 36
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Label3: TLabel
        Left = 9
        Top = 11
        Width = 184
        Height = 16
        Caption = #1053#1040#1050#1051#1040#1044#1053#1040#1071' '#1055#1045#1056#1045#1054#1062#1045#1053#1050#1048' - '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 40
    Width = 966
    Height = 42
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    DesignSize = (
      966
      42)
    object Label2: TLabel
      Left = 196
      Top = 14
      Width = 82
      Height = 16
      Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 12
      Top = 14
      Width = 31
      Height = 16
      Caption = #1044#1072#1090#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditComments: TEdit
      Left = 288
      Top = 10
      Width = 480
      Height = 22
      Anchors = [akLeft, akRight]
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 775
      Top = 8
      Width = 176
      Height = 25
      Anchors = [akRight]
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' (F10)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
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
    end
    object de_reprice: TcxDateEdit
      Left = 48
      Top = 10
      Cursor = crHandPoint
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
      TabOrder = 2
      Width = 121
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 402
    Width = 966
    Height = 47
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clSkyBlue
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 3
    object DocInfo_Panel: TPanel
      Left = 2
      Top = 2
      Width = 393
      Height = 43
      Align = alLeft
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      Visible = False
      object Label10: TLabel
        Left = 5
        Top = 6
        Width = 59
        Height = 15
        Caption = #1054#1087#1077#1088#1072#1090#1086#1088':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DB_OPERATOR_NAME: TDBText
        Left = 70
        Top = 6
        Width = 437
        Height = 17
        DataField = 'OPERATOR_NAME'
        DataSource = DOC_DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 5
        Top = 24
        Width = 150
        Height = 15
        Caption = #1056#1077#1072#1083#1100#1085#1072#1103' '#1076#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DB_DOC_DATE_REAL: TDBText
        Left = 161
        Top = 24
        Width = 341
        Height = 17
        DataField = 'DOC_DATE_REAL'
        DataSource = DOC_DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
    end
    object Panel9: TPanel
      Left = 664
      Top = 2
      Width = 300
      Height = 43
      Align = alRight
      BevelOuter = bvNone
      Color = clSkyBlue
      TabOrder = 1
      object BitBtn_Cancel: TcxButton
        Left = 6
        Top = 6
        Width = 140
        Height = 30
        Cursor = crHandPoint
        Cancel = True
        Caption = ' '#1054#1090#1084#1077#1085#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ModalResult = 2
        ParentFont = False
        TabOrder = 0
        Colors.Default = clBtnFace
        Colors.Normal = clBtnFace
        Colors.Hot = clSkyBlue
        Colors.Pressed = clSkyBlue
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
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        Spacing = 6
      end
      object BitBtnSave: TcxButton
        Left = 148
        Top = 6
        Width = 145
        Height = 30
        Cursor = crHandPoint
        Caption = ' OK (Ctrl+Enter) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ModalResult = 1
        ParentFont = False
        TabOrder = 1
        Colors.Default = clBtnFace
        Colors.Normal = clBtnFace
        Colors.Hot = clSkyBlue
        Colors.Pressed = clSkyBlue
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000340B0000340B000000010000000000007B1111007B16
          16007B1C1C00841C1C00842323008F2323007B2A2A00842A2A008F2A2A00982A
          2A008F312A00842A3100843131008F31310098313100A131310084383800A138
          3800AB383800B6383800AB404000B6404000C0404000844848008F484800B648
          4800C048480084505000A1505000AB505000B6505000C050500098585000A158
          5000845858008F585800A1585800AB585800B6585800C0585800A16A58008F60
          600098606000AB606000B6606000C06060008F6A6A00A16A6A00AB6A6A00B66A
          6A00A1736A008F73730098737300A1737300B6737300C0737300AB7B7B00CA7B
          7B0084848400AB848400B6848400C0848400C08F8400988F8F00C08F8F00CA8F
          8F00B6989800C0989800CA989800A1A1A100ABA1A100D4A1A100ABABA100A1AB
          AB00ABABAB00CAABAB00D4ABAB00B6B6B600C0B6B600D4B6B600E0B6B600B6C0
          C000C0C0C000CAC0C000D4C0C000CACACA00D4D4CA00D4D4D400E0D4D400E0E0
          D400EAE0D400E0E0E000EAE0E000F4E0E000EAEAE000F4EAE000EAEAEA00F4EA
          EA00F4F4EA00F4F4F400FFF4F400FFFFF400FF00FF00FFFFFF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000666666666666
          6666666666666666666666666666666666666666661E191A111B454545454545
          454545240102040C66666666281E1A1A141B332F43546265635E5B2401020415
          0C666666281E1A1A14222904213C5C636462602B010204150C666666281E1A1A
          14232E02072456606364632B010204150C666666281E1A1A14233402020C4D59
          6064672C010204150C666666281E1A1A112A350101023F525961673101020415
          0C666666281E1A1A112A421818173A4555606731010204140C666666281E1A1A
          1424413C3B3834343C44502608090E190C666666281E1A1A1A1A1A1A1A1A1A1A
          1919191A1A1A1A1A0C666666281E14191E2727272727272727272727272D1F1A
          0C666666280E0A1C36434B4B4B4B4B4B4B4B4B4B4B4F371A0C66666628093D62
          616161616161616161616161615C37150C666666280940676363636363636363
          63636363645C37140C66666628094067616161616161616161616161635C3714
          0C666666280940675B4E5252525252525252524D585C37140C66666628094067
          615C5C5C5C5C5C5C5C5C5C5C615C37140C666666280940675C53535353535353
          535353525B5C37140C666666280940675E5858585858585858585858605C3714
          0C666666280940675E5858585858585858585858605C37140C66666628094067
          5B52535353535353535353525B5C37140C666666280940676464646464646464
          64646464645C37150C66666666093D514D4D4D4D4D4D4D4D4D4D4D4D4D4D3611
          6666666666666666666666666666666666666666666666666666}
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        Spacing = 6
      end
    end
    object cb_pics: TCheckBox
      Left = 497
      Top = 2
      Width = 167
      Height = 43
      Align = alRight
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103
      TabOrder = 2
      OnClick = cb_picsClick
    end
    object AddedCB: TCheckBox
      Left = 336
      Top = 2
      Width = 161
      Height = 43
      Align = alRight
      Caption = #1090#1086#1083#1100#1082#1086' '#1076#1086#1073#1072#1074#1083#1077#1085#1085#1099#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = AddedCBClick
    end
  end
  object Panel10: TPanel
    Left = 0
    Top = 449
    Width = 966
    Height = 3
    Align = alBottom
    BevelOuter = bvNone
    Ctl3D = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 4
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 495
    Width = 966
    Height = 21
    Panels = <
      item
        Text = ' dfgdfg'
        Width = 300
      end
      item
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Text = ' dfgdfgdfg'
        Width = 50
      end>
  end
  object Panel_fill: TPanel
    Left = 362
    Top = 204
    Width = 193
    Height = 65
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 6
    Visible = False
    object Label13: TLabel
      Left = 8
      Top = 35
      Width = 111
      Height = 13
      Caption = 'Delete - '#1079#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 48
      Width = 90
      Height = 13
      Caption = 'Enter - '#1087#1088#1080#1084#1077#1085#1080#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object te_search: TcxTextEdit
      Left = 8
      Top = 7
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
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
      TabOrder = 0
      OnKeyDown = te_searchKeyDown
      Width = 177
    end
  end
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 452
    Width = 966
    Height = 43
    Align = dalBottom
    BarManager = bm_sales
  end
  object doc: TOraQuery
    LocalUpdate = True
    Session = DM.OraSession
    SQL.Strings = (
      'select'
      
        'ID_DOC, DOC_NUMBER, ID_DOC_TYPE, ID_DEPARTMENTS, DEPARTMENT_NAME' +
        ', OPERATOR_NAME, '
      
        'DOC_DATE, DOC_DATE_REAL, ID_CLIENT, NICK, FIO, QUANTITY_ALL, PRI' +
        'CE_ALL, '
      
        'SUM_PRICE_OLD, SUM_PRICE_NEW, SUM_PRICE_DIFFERENCE, COMMENTS, IN' +
        'V_ID, ORDER_ID, '
      'SUPPLIER_DATE, SUPPLIER_NUMBER, SUPLIER'
      'FROM '
      'STORE_DOC_VIEW2'
      'where '
      'ID_DOC=:ID_DOC')
    FetchRows = 20
    AutoCommit = False
    Options.FieldsOrigin = True
    Left = 128
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_DOC'
      end>
  end
  object DOC_DATA: TOraQuery
    Session = DM.OraSession
    SQL.Strings = (
      'SELECT '
      
        'N_ID, COUNTRY, COLOUR, SPESIFICATION, FST_ID, HOL_SUB_TYPE, HOL_' +
        'TYPE, H_CODE, '
      
        'F_TYPE, F_SUB_TYPE, FT_ID, FULL_NAME, CODE, ID_DOC, QUANTITY, QU' +
        'ANTITY_NOW, '
      
        'STORE_TYPE, GTD, PRICE, QUANTITY_PRICE, PRICE_PERCENT, PRICE_DIF' +
        'FERENCE, '
      
        'SUM_PRICE_DIFFERENCE, PRICE_LIST, STORE_TYPE_NAME, S_NAME_RU, co' +
        'mpiled_name_otdel, '
      'photo, our_code, notuse'
      'from'
      'store_docdata_view'
      'where'
      'ID_DOC=:ID_DOC')
    MasterSource = DOC_DS
    AutoCommit = False
    FilterOptions = [foCaseInsensitive]
    Left = 168
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_DOC'
      end>
  end
  object DOC_DATA_DS: TOraDataSource
    DataSet = DOC_DATA
    Left = 168
    Top = 208
  end
  object DOC_DS: TOraDataSource
    DataSet = doc
    Left = 128
    Top = 208
  end
  object ActionList1: TActionList
    Left = 48
    Top = 165
    object DocSave_Action: TAction
      Caption = 'DocSave_Action'
      ShortCut = 16397
      OnExecute = DocSave_ActionExecute
    end
    object ctrl_enter: TAction
      Caption = 'ctrl_enter'
      ShortCut = 121
      OnExecute = BitBtn2Click
    end
    object aFilterType: TAction
      Caption = 'aFilterType'
      ShortCut = 16416
      OnExecute = aFilterTypeExecute
    end
    object aSearchArticle: TAction
      Caption = 'aSearchArticle'
      ShortCut = 16449
      OnExecute = aSearchArticleExecute
    end
    object aSearchName: TAction
      Caption = 'aSearchName'
      ShortCut = 16462
      OnExecute = aSearchNameExecute
    end
    object aSearchOurCode: TAction
      Caption = 'aSearchOurCode'
      ShortCut = 16450
      OnExecute = aSearchOurCodeExecute
    end
  end
  object spis_menu: TPopupMenu
    Left = 80
    Top = 165
    object spis_m1: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' EXCEL'
      OnClick = spis_m1Click
    end
    object spis_m2: TMenuItem
      Caption = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1090#1072#1073#1083#1080#1094#1091
      OnClick = spis_m2Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mnLoadFooter: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1080#1090#1086#1075#1086#1074#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103' '#1074' '#1073#1091#1092#1077#1088
      OnClick = mnLoadFooterClick
    end
    object mnLoadCell: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1103#1095#1077#1081#1082#1091' '#1074' '#1073#1091#1092#1077#1088
      OnClick = mnLoadCellClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object mnRepriceFromFile: TMenuItem
      Caption = #1055#1077#1088#1077#1086#1094#1077#1085#1082#1072' '#1095#1077#1088#1077#1079' '#1092#1072#1081#1083
      OnClick = mnRepriceFromFileClick
    end
    object mnRepriceFromStore: TMenuItem
      Caption = #1055#1077#1088#1077#1086#1094#1077#1085#1082#1072' '#1089#1086' '#1089#1082#1083#1072#1076#1072' '#1052#1057#1050
      OnClick = mnRepriceFromStoreClick
    end
    object mnRepriceFromStoreSel: TMenuItem
      Caption = #1055#1077#1088#1077#1086#1094#1077#1085#1082#1072' '#1089#1086' '#1089#1082#1083#1072#1076#1072' '#1052#1057#1050' '#1087#1086' '#1074#1099#1073#1088#1072#1085#1085#1099#1084
      OnClick = mnRepriceFromStoreSelClick
    end
  end
  object SaveDialog14: TSaveDialog
    Filter = #1060#1072#1081#1083#1099' EXCEL (*.xls)|*.xls'
    Left = 80
    Top = 199
  end
  object DOCNEW1_DATA_DS: TOraDataSource
    DataSet = DOCNEW1_DATA
    Left = 208
    Top = 208
  end
  object DOCNEW1_DATA: TOraQuery
    SQLUpdate.Strings = (
      'begin'
      ''
      'delete from STORE_DOC_DATA_TEMP where ID_DOC_DATA=:added;'
      ''
      
        'IF ((:PRICE <> :OLD_PRICE and :PRICE_LIST <> :PRICE) or :ADDED_1' +
        ' = 1) THEN '
      
        ' INSERT INTO STORE_DOC_DATA_TEMP (ID_DOC_DATA, N_ID, QUANTITY, s' +
        'tore_type, PRICE, PRICE_LIST) '
      
        ' VALUES (STORE_DOC_DATA_TEMP_SET_ID.NEXTVAL, :N_ID, :QUANTITY_NO' +
        'W, :STORE_TYPE, :PRICE, :PRICE_LIST);'
      
        '  creator.LOG_ERR('#39'program'#39', 1, STORE_DOC_DATA_TEMP_SET_ID.CURRV' +
        'AL, '#39':N_ID='#39'||:N_ID);'
      'end if;  '
      ''
      'end;')
    SQLRefresh.Strings = (
      
        'select added, CASE WHEN added is not NULL and added<>0 THEN 1 EL' +
        'SE 0 END added_1'
      'from store_docdatatemp_view a'
      'where N_ID = :OLD_N_ID')
    Session = DM.OraSession
    SQL.Strings = (
      
        'select a.N_ID, CODE, H_CODE, F_TYPE, F_SUB_TYPE, a.FT_ID, a.FST_' +
        'ID, full_name, QUANTITY_NOW,'
      
        '  store_type_name, STORE_TYPE, price, price_list, QUANTITY, QUAN' +
        'TITY_PRICE, added,'
      
        '  CASE WHEN added is not NULL and added<>0 THEN 1 ELSE 0 END add' +
        'ed_1,'
      
        '  spesification, S_NAME_RU, price_difference, sum_price_differen' +
        'ce, compiled_name_otdel, '
      '  photo, our_code, a.notuse'
      'from store_docdatatemp_view a'
      
        '     , (SELECT a.fst_id, a.nbutton, a.f_char FROM buttons_set a ' +
        'where id_dep = :ID_DEPARTMENTS) b'
      'where a.ID_DEPARTMENTS=:ID_DEPARTMENTS'
      '      and a.fst_id = b.fst_id(+)'
      '      and a.id_office in (1,:v_office)'
      'ORDER BY b.nbutton, a.compiled_name_otdel')
    AutoCommit = False
    RefreshOptions = [roAfterUpdate]
    Options.CacheLobs = False
    Options.FieldsOrigin = True
    Options.ReturnParams = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = DOCNEW1_DATABeforeOpen
    AfterPost = DOCNEW1_DATAAfterPost
    BeforeRefresh = DOCNEW1_DATABeforeOpen
    Left = 208
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
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 248
    Top = 169
    PixelsPerInch = 96
    object st_prihod: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 10223615
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'arial'
      Font.Pitch = fpFixed
      Font.Style = []
    end
    object st_reprice: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 14352088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
    end
    object st_small: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
    end
    object stNotUse: TcxStyle
      AssignedValues = [svColor]
      Color = 14145495
    end
  end
  object bm_sales: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    LookAndFeel.Kind = lfOffice11
    MenuAnimations = maFade
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = False
    Left = 320
    Top = 291
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'tb_legend'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 337
      FloatTop = 200
      FloatClientWidth = 202
      FloatClientHeight = 111
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
        end
        item
          Visible = True
          ItemName = 'dxBarStatic3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic7'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic8'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic11'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic12'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic1'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic2'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxBarStatic3: TdxBarStatic
      Caption = 'F10 - '#1086#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088#1099
      Category = 0
      Hint = 'F10 - '#1086#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088#1099
      Visible = ivAlways
    end
    object dxBarStatic4: TdxBarStatic
      Caption = 'Ctrl+'#1055#1088#1086#1073#1077#1083' - '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1103' '#1087#1086' '#1075#1088#1091#1087#1087#1072#1084
      Category = 0
      Hint = 'Ctrl+'#1055#1088#1086#1073#1077#1083' - '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1103' '#1087#1086' '#1075#1088#1091#1087#1087#1072#1084
      Visible = ivAlways
    end
    object dxBarStatic7: TdxBarStatic
      Caption = 'Ctrl+A - '#1087#1086#1080#1089#1082' '#1087#1086' '#1072#1088#1090#1080#1082#1083#1091
      Category = 0
      Hint = 'Ctrl+A - '#1087#1086#1080#1089#1082' '#1087#1086' '#1072#1088#1090#1080#1082#1083#1091
      Visible = ivAlways
    end
    object dxBarStatic8: TdxBarStatic
      Caption = 'Ctrl+N - '#1087#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102
      Category = 0
      Hint = 'Ctrl+N - '#1087#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102
      Visible = ivAlways
    end
    object dxBarStatic11: TdxBarStatic
      Caption = 'Ctrl+B - '#1087#1086#1080#1089#1082' '#1087#1086' '#1074#1085#1091#1090#1088'. '#1082#1086#1076#1091
      Category = 0
      Hint = 'Ctrl+B - '#1087#1086#1080#1089#1082' '#1087#1086' '#1074#1085#1091#1090#1088'. '#1082#1086#1076#1091
      Visible = ivAlways
    end
    object dxBarStatic12: TdxBarStatic
      Caption = 'ENTER - '#1087#1088#1086#1089#1084#1086#1090#1088' '#1087#1086#1083#1085#1086#1081' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
      Category = 0
      Hint = 'ENTER - '#1087#1088#1086#1089#1084#1086#1090#1088' '#1087#1086#1083#1085#1086#1081' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
      Visible = ivAlways
    end
    object dxBarStatic1: TdxBarStatic
      Category = 0
      Style = stNotUse
      Visible = ivAlways
      BorderStyle = sbsRaised
      Width = 50
    end
    object dxBarStatic2: TdxBarStatic
      Caption = ' - '#1085#1077#1080#1089#1087#1086#1083#1100#1079#1091#1077#1084#1072#1103' '#1087#1086#1079#1080#1094#1080#1103
      Category = 0
      Hint = ' - '#1085#1077#1080#1089#1087#1086#1083#1100#1079#1091#1077#1084#1072#1103' '#1087#1086#1079#1080#1094#1080#1103
      Visible = ivAlways
    end
  end
end
