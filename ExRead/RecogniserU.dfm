object InvoiceRecognise: TInvoiceRecognise
  Left = 608
  Top = 244
  Caption = '  '#1056#1072#1073#1086#1090#1072' '#1089' '#1080#1085#1074#1086#1081#1089#1072#1084#1080
  ClientHeight = 694
  ClientWidth = 1170
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 27
    Width = 1170
    Height = 667
    Align = alClient
    TabOrder = 0
    ExplicitTop = 0
    ExplicitHeight = 694
    object Panel9: TPanel
      Left = 1
      Top = 1
      Width = 1168
      Height = 184
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Caption = 'Panel9'
      ParentBackground = False
      TabOrder = 0
      object grid_invoices: TcxGrid
        Left = 2
        Top = 2
        Width = 1164
        Height = 180
        Hint = 'Ctrl+Tab '#1087#1077#1088#1077#1082#1083#1102#1095#1077#1085#1080#1077' '#1084#1077#1078#1076#1091' '#1090#1072#1073#1083#1080#1094#1072#1084#1080
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
        object grid_invoices_v: TcxGridDBTableView
          PopupMenu = PopupMenu1
          OnDblClick = grid_invoices_vDblClick
          NavigatorButtons.ConfirmDelete = False
          FilterBox.Position = fpTop
          OnCustomDrawCell = grid_invoices_vCustomDrawCell
          OnEditKeyPress = grid_invoices_vEditKeyPress
          DataController.DataSource = DM.InvoiceRegister_DS
          DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription, fcoSoftCompare]
          DataController.Filter.AutoDataSetFilter = True
          DataController.KeyFieldNames = 'INV_ID'
          DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
              Kind = skCount
              Column = INV_ID
            end
            item
              Format = '0'
              Kind = skSum
              Column = SENDED_TO_WAREHOUSE
            end
            item
              Format = '0'
              Kind = skSum
              Column = grid_invoices_vTO_BE_POS
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = grid_invoices_vTOTAL_SUM_TO_BE
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = TOTAL_SUM
            end
            item
              Format = '0'
              Kind = skSum
              Column = AS_IS_POS
            end
            item
              Format = '0'
              Kind = skSum
              Column = PAST_NUM
            end
            item
              Format = '0'
              Kind = skSum
              Column = READY_POS
            end
            item
              Kind = skCount
            end
            item
              Kind = skSum
            end
            item
              Format = '0'
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1092#1080#1083#1100#1090#1088#1086#1074
          FilterRow.Visible = True
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnCycle = True
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
          OptionsView.HeaderEndEllipsis = True
          Styles.Inactive = st_Inactive9
          object grid_invoices_vD_CHECK: TcxGridDBColumn
            DataBinding.FieldName = 'D_CHECK'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.DisplayChecked = #1076#1072
            Properties.DisplayUnchecked = #1085#1077#1090
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
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
            MinWidth = 30
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.HorzSizing = False
            Options.ShowCaption = False
            Options.Sorting = False
            Width = 30
          end
          object grid_invoices_vIS_MINUS: TcxGridDBColumn
            Caption = #1052#1080#1085#1091#1089
            DataBinding.FieldName = 'IS_MINUS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.DisplayChecked = #1044#1072
            Properties.DisplayUnchecked = #1053#1077#1090
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = True
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            OnGetCellHint = grid_invoices_vIS_MINUSGetCellHint
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 50
            Options.Filtering = False
            Options.HorzSizing = False
            Width = 50
          end
          object INV_ID: TcxGridDBColumn
            Caption = #8470' '#1080#1085#1074#1086#1081#1089#1072
            DataBinding.FieldName = 'INV_ID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 80
            Options.Editing = False
            Width = 80
          end
          object INV_DATE: TcxGridDBColumn
            Caption = #1044#1072#1090#1072' '#1074#1074#1086#1076#1072
            DataBinding.FieldName = 'INV_DATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 90
            Options.Editing = False
            Options.HorzSizing = False
            Width = 90
          end
          object grid_invoices_vS_NAME_RU: TcxGridDBColumn
            Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
            DataBinding.FieldName = 'S_NAME_RU'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            MinWidth = 50
            Options.Editing = False
            Width = 130
          end
          object SUPPLIER_DATE: TcxGridDBColumn
            Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090'-'#1082#1072
            DataBinding.FieldName = 'SUPPLIER_DATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
            Options.Editing = False
            Options.HorzSizing = False
            Width = 100
          end
          object SUPPLIER_NUMBER: TcxGridDBColumn
            Caption = #8470' '#1080#1085#1074'. '#1087#1086#1089#1090'-'#1082#1072
            DataBinding.FieldName = 'SUPPLIER_NUMBER'
            Options.Editing = False
            Width = 110
          end
          object grid_invoices_vPRICE: TcxGridDBColumn
            Caption = #1062#1077#1085#1099
            DataBinding.FieldName = 'PRICE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.DisplayChecked = #1076#1072
            Properties.DisplayUnchecked = #1085#1077#1090
            Properties.ImmediatePost = True
            Properties.ReadOnly = True
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            OnCustomDrawCell = grid_invoices_vPRICECustomDrawCell
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 60
            Options.Editing = False
            Options.HorzSizing = False
            Width = 60
          end
          object SENDED_TO_WAREHOUSE: TcxGridDBColumn
            Caption = #1057#1082#1083#1072#1076
            DataBinding.FieldName = 'SENDED_TO_WAREHOUSE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.DisplayChecked = #1076#1072
            Properties.DisplayUnchecked = #1085#1077#1090
            Properties.ImmediatePost = True
            Properties.ReadOnly = True
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 60
            Options.Editing = False
            Options.HorzSizing = False
            Width = 60
          end
          object grid_invoices_vWAREHOUSE_SENDED_DATE: TcxGridDBColumn
            Caption = #1044#1072#1090#1072' '#1087#1086#1076#1075#1088#1091#1079#1082#1080
            DataBinding.FieldName = 'WAREHOUSE_SENDED_DATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ShowTime = False
            HeaderAlignmentHorz = taCenter
            MinWidth = 110
            Options.Editing = False
            Options.HorzSizing = False
            Width = 110
          end
          object COMMENTS: TcxGridDBColumn
            Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
            DataBinding.FieldName = 'COMMENTS'
            Options.Editing = False
            Width = 100
          end
          object grid_invoices_vTO_BE_POS: TcxGridDBColumn
            Caption = #1043#1086#1090'. '#1087#1086#1079'.'
            DataBinding.FieldName = 'TO_BE_POS'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 70
            Options.Editing = False
            Options.HorzSizing = False
            Styles.Content = st_tobe
            Width = 70
          end
          object grid_invoices_vTOTAL_SUM_TO_BE: TcxGridDBColumn
            Caption = #1043#1086#1090#1086#1074#1099#1081' '#1089#1091#1084#1084#1072
            DataBinding.FieldName = 'TOTAL_SUM_TO_BE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 110
            Options.Editing = False
            Styles.Content = st_tobe
            Width = 110
          end
          object grid_invoices_vTOTAL_SUM_FROM_MINUS: TcxGridDBColumn
            Caption = #1056#1072#1079#1085#1080#1094#1072
            DataBinding.FieldName = 'TOTAL_SUM_FROM_MINUS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 70
            Options.Editing = False
            Styles.Content = st_tobe
            Width = 70
          end
          object TOTAL_SUM: TcxGridDBColumn
            Caption = #1057#1099#1088#1086#1081' '#1089#1091#1084#1084#1072
            DataBinding.FieldName = 'TOTAL_SUM_AS_IS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
            Options.Editing = False
            Styles.Content = st_asis
            Width = 100
          end
          object AS_IS_POS: TcxGridDBColumn
            Caption = #1055#1086#1079#1080#1094#1080#1081
            DataBinding.FieldName = 'AS_IS_POS'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 70
            Options.Editing = False
            Options.HorzSizing = False
            Styles.Content = st_asis
            Width = 70
          end
          object PAST_NUM: TcxGridDBColumn
            Caption = #1054#1089#1090#1072#1083#1086#1089#1100
            DataBinding.FieldName = 'PAST_NUM'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            OnCustomDrawCell = PAST_NUMCustomDrawCell
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 70
            Options.Editing = False
            Options.HorzSizing = False
            Styles.Content = st_asis
            Width = 70
          end
          object READY_POS: TcxGridDBColumn
            Caption = #1043#1086#1090#1086#1074#1086
            DataBinding.FieldName = 'READY_POS'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 70
            Options.Editing = False
            Options.HorzSizing = False
            Styles.Content = st_asis
            Width = 70
          end
          object procent_d: TcxGridDBColumn
            Caption = #1056#1072#1089#1087#1086#1079#1085#1072#1085#1086' %'
            DataBinding.FieldName = 'PROCENT_D'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            OnCustomDrawCell = procent_dCustomDrawCell
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
            Options.Editing = False
            Options.HorzSizing = False
            Styles.Content = st_asis
            Width = 100
          end
          object grid_invoices_vIS_FILE: TcxGridDBColumn
            Caption = #1060#1072#1081#1083
            DataBinding.FieldName = 'IS_FILE'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Images = ImageList2
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Properties.Items = <
              item
                Description = #1085#1077#1090
                Value = '0'
              end
              item
                Description = #1076#1072
                ImageIndex = 4
                Value = '1'
              end>
            Properties.ReadOnly = True
            Properties.ShowDescriptions = False
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 50
            Options.Editing = False
            Options.HorzSizing = False
            Width = 50
          end
          object grid_invoices_vINV_SUM: TcxGridDBColumn
            DataBinding.FieldName = 'INV_SUM'
            Visible = False
            Options.Editing = False
          end
          object grid_invoices_vOFFICE: TcxGridDBColumn
            Caption = #1054#1092#1080#1089' '#1074#1099#1075#1088'.'
            DataBinding.FieldName = 'OFFICE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 75
            Options.HorzSizing = False
            Options.Moving = False
            Width = 75
          end
          object grid_invoices_vS_ID_DEFAULT: TcxGridDBColumn
            DataBinding.FieldName = 'S_ID_DEFAULT'
            Visible = False
            Options.Editing = False
          end
          object grid_invoices_vC_ID_DEFAULT: TcxGridDBColumn
            DataBinding.FieldName = 'C_ID_DEFAULT'
            Visible = False
            Options.Editing = False
          end
          object grid_invoices_vinv_minus: TcxGridDBColumn
            DataBinding.FieldName = 'INV_MINUS'
            Visible = False
          end
          object grid_invoices_vINV_ID_: TcxGridDBColumn
            DataBinding.FieldName = 'INV_ID_'
            Visible = False
          end
          object grid_invoices_vMINUS_INV_ID: TcxGridDBColumn
            DataBinding.FieldName = 'MINUS_INV_ID'
            Visible = False
          end
          object grid_invoices_vPRICE_DONE: TcxGridDBColumn
            DataBinding.FieldName = 'PRICE_DONE'
            Visible = False
          end
          object grid_invoices_vID_DEPARTMENTS: TcxGridDBColumn
            DataBinding.FieldName = 'ID_DEPARTMENTS'
            Visible = False
          end
          object grid_invoices_vINVOICE_TITLE: TcxGridDBColumn
            DataBinding.FieldName = 'INVOICE_TITLE'
            Visible = False
          end
          object grid_invoices_vIN_FILE: TcxGridDBColumn
            DataBinding.FieldName = 'IN_FILE'
            Visible = False
          end
          object grid_invoices_vIPP_ID: TcxGridDBColumn
            Caption = #8470' '#1087#1072#1095#1082#1080
            DataBinding.FieldName = 'IPP_ID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 80
            Options.Editing = False
            Width = 80
          end
          object grid_invoices_vIPP_COMMENT: TcxGridDBColumn
            Caption = #1048#1085#1092#1086' '#1087#1072#1095#1082#1072
            DataBinding.FieldName = 'IPP_COMMENT'
            Options.Editing = False
            Width = 100
          end
          object grid_invoices_vID_OFFICE: TcxGridDBColumn
            DataBinding.FieldName = 'ID_OFFICE'
            Visible = False
          end
          object grid_invoices_vBRIEF: TcxGridDBColumn
            DataBinding.FieldName = 'BRIEF'
            Visible = False
          end
          object grid_invoices_vIARCHIVE: TcxGridDBColumn
            Caption = #1040#1088#1093#1080#1074
            DataBinding.FieldName = 'IARCHIVE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.DisplayChecked = #1076#1072
            Properties.DisplayUnchecked = #1085#1077#1090
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            HeaderAlignmentHorz = taCenter
            MinWidth = 60
            Options.Editing = False
            Options.HorzSizing = False
            Width = 60
          end
          object grid_invoices_vCOUNTRY_GTD: TcxGridDBColumn
            DataBinding.FieldName = 'COUNTRY_GTD'
            Visible = False
          end
          object grid_invoices_vIZAK: TcxGridDBColumn
            Caption = #1047#1072#1082#1072#1079
            DataBinding.FieldName = 'IARCHIVE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayChecked = #1076#1072
            Properties.DisplayUnchecked = #1085#1077#1090
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '2'
            Properties.ValueUnchecked = '0'
            HeaderAlignmentHorz = taCenter
            MinWidth = 60
            Options.Editing = False
            Options.HorzSizing = False
            Width = 60
          end
        end
        object grid_invoices_l: TcxGridLevel
          GridView = grid_invoices_v
        end
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 193
      Width = 1168
      Height = 473
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel6'
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      ExplicitHeight = 500
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1168
        Height = 217
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Caption = 'Panel2'
        ParentBackground = False
        TabOrder = 0
        object grid_fresh: TcxGrid
          Left = 2
          Top = 28
          Width = 1164
          Height = 187
          Hint = 'Ctrl+Tab '#1087#1077#1088#1077#1082#1083#1102#1095#1077#1085#1080#1077' '#1084#1077#1078#1076#1091' '#1090#1072#1073#1083#1080#1094#1072#1084#1080
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          object grid_fresh_v: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            FilterBox.Position = fpTop
            OnCustomDrawCell = grid_fresh_vCustomDrawCell
            DataController.DataSource = DM.InvoiceAsIs_DS
            DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription, fcoSoftCompare]
            DataController.Filter.AutoDataSetFilter = True
            DataController.KeyFieldNames = 'INVOICE_DATA_AS_IS_ID'
            DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
                Column = ORDER_NUMBER
              end
              item
                Format = '0'
                Kind = skSum
                Column = UNITS1
              end
              item
                Format = '0.00'
                Kind = skSum
                Column = TOTAL_AMOUNT1
              end>
            DataController.Summary.SummaryGroups = <>
            FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1092#1080#1083#1100#1090#1088#1086#1074
            FilterRow.Visible = True
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnCycle = True
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
            OptionsView.HeaderEndEllipsis = True
            Styles.Inactive = st_Inactive8
            object ORDER_NUMBER: TcxGridDBColumn
              Caption = #8470' '#1079#1072#1082#1072#1079#1072
              DataBinding.FieldName = 'ORDER_NUMBER'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              MinWidth = 75
              Options.Editing = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.HorzSizing = False
              Width = 75
            end
            object _ORDER_MARKNAME: TcxGridDBColumn
              Caption = #1047#1072#1082#1072#1079
              DataBinding.FieldName = 'ORDER_MARKNAME'
              Visible = False
              MinWidth = 70
              Options.Editing = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 120
            end
            object PACKING_MARKS: TcxGridDBColumn
              Caption = #8470' '#1082#1086#1088#1086#1073#1082#1080
              DataBinding.FieldName = 'PACKING_MARKS'
              MinWidth = 80
              Options.Editing = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 100
            end
            object PACKING_CODE: TcxGridDBColumn
              Caption = #1059#1087#1072#1082#1086#1074#1082#1072
              DataBinding.FieldName = 'PACKING_CODE'
              Visible = False
              MinWidth = 70
              Options.Editing = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 70
            end
            object DESCRIPTION: TcxGridDBColumn
              Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1079#1074#1072#1085#1080#1077
              DataBinding.FieldName = 'DESCRIPTION'
              MinWidth = 60
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Styles.Content = st_editable
              Width = 140
            end
            object SKU: TcxGridDBColumn
              Caption = #1040#1088#1090#1080#1082#1091#1083
              DataBinding.FieldName = 'SKU'
              MinWidth = 70
              Styles.Content = st_editable
              Width = 70
            end
            object UNITS1: TcxGridDBColumn
              Caption = #1050#1086#1083'-'#1074#1086
              DataBinding.FieldName = 'UNITS'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 60
              Options.HorzSizing = False
              Styles.Content = st_editable
              Width = 60
            end
            object AMOUNT_PER_UNIT1: TcxGridDBColumn
              Caption = #1062#1077#1085#1072
              DataBinding.FieldName = 'AMOUNT_PER_UNIT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 60
              Options.HorzSizing = False
              Styles.Content = st_editable
              Width = 60
            end
            object TOTAL_AMOUNT1: TcxGridDBColumn
              Caption = #1057#1091#1084#1084#1072
              DataBinding.FieldName = 'TOTAL_AMOUNT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 75
              Options.HorzSizing = False
              Styles.Content = st_editable
              Width = 75
            end
            object AMOUNT_IN_THE_PACK1: TcxGridDBColumn
              Caption = #1042' '#1087#1072#1095#1082#1077
              DataBinding.FieldName = 'AMOUNT_IN_THE_PACK'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 60
              Options.Editing = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.HorzSizing = False
              Width = 60
            end
            object HOL_SUB_TYPE: TcxGridDBColumn
              Caption = #1058#1080#1087' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
              DataBinding.FieldName = 'HOL_SUB_TYPE'
              MinWidth = 70
              Styles.Content = st_editable
              Width = 100
            end
            object HOL_COLOUR1: TcxGridDBColumn
              Caption = #1062#1074#1077#1090' '#1087#1086#1089#1090'.'
              DataBinding.FieldName = 'HOL_COLOUR'
              MinWidth = 70
              Styles.Content = st_editable
              Width = 90
            end
            object SHORT_CODE1: TcxGridDBColumn
              Caption = #1040#1091#1082#1094'. '#1082#1086#1076
              DataBinding.FieldName = 'SHORT_CODE'
              MinWidth = 60
              Styles.Content = st_editable
              Width = 80
            end
            object _MARKS_CONTENT1: TcxGridDBColumn
              Caption = #1057#1086#1076'. '#1076#1086#1087'. '#1082#1086#1076#1086#1074
              DataBinding.FieldName = 'MARKS_CONTENT'
              Visible = False
              MinWidth = 50
              Options.Editing = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 100
            end
            object _MARKS_NAMES1: TcxGridDBColumn
              Caption = #1044#1086#1087'. '#1082#1086#1076#1099
              DataBinding.FieldName = 'MARKS_NAMES'
              Visible = False
              MinWidth = 60
              Options.Editing = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 100
            end
            object SHORT_NAME1: TcxGridDBColumn
              Caption = #1053#1072#1079#1074#1072#1085#1080#1077
              DataBinding.FieldName = 'SHORT_NAME'
              MinWidth = 80
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Styles.Content = st_editable
              Width = 100
            end
            object grid_fresh_vTRUCK: TcxGridDBColumn
              Caption = #1052#1072#1096'.'
              DataBinding.FieldName = 'TRUCK'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DecimalPlaces = 0
              Properties.DisplayFormat = ',0'#39#39';-,0'#39#39
              Properties.Nullable = False
              Properties.NullString = '0'
              HeaderAlignmentHorz = taCenter
              MinWidth = 40
              Options.HorzSizing = False
              Styles.Content = st_editable
              Width = 40
            end
            object grid_fresh_vTROLLEY: TcxGridDBColumn
              Caption = #1058#1077#1083#1077#1078#1082#1072
              DataBinding.FieldName = 'TROLLEY'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.AssignedValues.MinValue = True
              Properties.DecimalPlaces = 0
              Properties.DisplayFormat = ',0'#39#39';-,0'#39#39
              Properties.MaxLength = 2
              Properties.MaxValue = 99.000000000000000000
              HeaderAlignmentHorz = taCenter
              MinWidth = 60
              Options.HorzSizing = False
              Styles.Content = st_editable
              Width = 60
            end
            object BAR_CODE1: TcxGridDBColumn
              Caption = #1064#1090#1088#1080#1093'-'#1082#1086#1076
              DataBinding.FieldName = 'BAR_CODE'
              MinWidth = 90
              Options.Editing = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.HorzSizing = False
              Width = 90
            end
            object TRANSLATION1: TcxGridDBColumn
              Caption = #1055#1077#1088#1077#1074#1086#1076
              DataBinding.FieldName = 'TRANSLATION'
              Visible = False
              MinWidth = 60
              Options.Editing = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 90
            end
            object _INVOICE_DATA_AS_IS_ID: TcxGridDBColumn
              Caption = #8470' ('#1089#1099#1088'.)'
              DataBinding.FieldName = 'INVOICE_DATA_AS_IS_ID'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Visible = False
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 70
              Options.Editing = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.HorzSizing = False
              Width = 70
            end
            object grid_fresh_vREMARKS: TcxGridDBColumn
              Caption = #1056#1077#1084#1072#1088#1082#1089
              DataBinding.FieldName = 'REMARKS'
              MinWidth = 60
              Styles.Content = st_editable
              Width = 90
            end
            object _grid_freshView1INV_ID: TcxGridDBColumn
              DataBinding.FieldName = 'INV_ID'
              Visible = False
              Options.Editing = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
            end
            object grid_fresh_vSPEC_LENGTH: TcxGridDBColumn
              Caption = #1044#1083#1080#1085#1072' S20'
              DataBinding.FieldName = 'SPEC_LENGTH'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = ',0.##'#39#39';-,0.##'#39#39
              HeaderAlignmentHorz = taCenter
              MinWidth = 70
              Options.HorzSizing = False
              Styles.Content = st_editable
              Width = 70
            end
            object grid_fresh_vSPEC_HEADS: TcxGridDBColumn
              Caption = #1043#1086#1083#1086#1074#1099' S22'
              DataBinding.FieldName = 'SPEC_HEADS'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.MaxLength = 20
              HeaderAlignmentHorz = taCenter
              MinWidth = 70
              Options.HorzSizing = False
              Styles.Content = st_editable
              Width = 70
            end
            object grid_fresh_vSPEC_HEADS_SHRUB: TcxGridDBColumn
              Caption = #1043#1086#1083#1086#1074#1099' S25'
              DataBinding.FieldName = 'SPEC_HEADS_SHRUB'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.MaxLength = 20
              HeaderAlignmentHorz = taCenter
              MinWidth = 70
              Options.HorzSizing = False
              Styles.Content = st_editable
              Width = 70
            end
            object grid_fresh_vSPEC_VD2: TcxGridDBColumn
              Caption = #1042' '#1082#1086#1088#1086#1073#1082#1077' VD2'
              DataBinding.FieldName = 'SPEC_VD2'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.MaxLength = 20
              HeaderAlignmentHorz = taCenter
              MinWidth = 85
              Options.HorzSizing = False
              Styles.Content = st_editable
              Width = 85
            end
            object grid_fresh_vSPEC_WIDTH: TcxGridDBColumn
              Caption = #1044#1080#1072#1084#1077#1090#1088' S01'
              DataBinding.FieldName = 'SPEC_WIDTH'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = ',0.##'#39#39';-,0.##'#39#39
              HeaderAlignmentHorz = taCenter
              MinWidth = 75
              Options.HorzSizing = False
              Styles.Content = st_editable
              Width = 75
            end
            object grid_fresh_vSPEC_HIGHT: TcxGridDBColumn
              Caption = #1042#1099#1089#1086#1090#1072' S02'
              DataBinding.FieldName = 'SPEC_HIGHT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = ',0.##'#39#39';-,0.##'#39#39
              HeaderAlignmentHorz = taCenter
              MinWidth = 75
              Options.HorzSizing = False
              Styles.Content = st_editable
              Width = 75
            end
            object grid_fresh_vRECOGNISED: TcxGridDBColumn
              DataBinding.FieldName = 'RECOGNISED'
              Visible = False
            end
            object grid_fresh_vCLIENT: TcxGridDBColumn
              Caption = #1050#1083#1080#1077#1085#1090
              DataBinding.FieldName = 'CLIENT'
              MinWidth = 50
              Options.Editing = False
              Width = 80
            end
            object grid_fresh_vVOLUME: TcxGridDBColumn
              Caption = #1042#1077#1089' ('#1074#1086#1076#1072')'
              DataBinding.FieldName = 'VOLUME'
              MinWidth = 60
              Options.Editing = False
            end
            object grid_fresh_vVOLDRY: TcxGridDBColumn
              Caption = #1042#1077#1089
              DataBinding.FieldName = 'VOLDRY'
              MinWidth = 60
              Options.Editing = False
            end
            object grid_fresh_vID_OFFICE: TcxGridDBColumn
              DataBinding.FieldName = 'ID_OFFICE'
              Visible = False
            end
            object grid_fresh_vDATE_CHANGE: TcxGridDBColumn
              DataBinding.FieldName = 'DATE_CHANGE'
              Visible = False
            end
            object grid_fresh_vCOUNTRY_: TcxGridDBColumn
              Caption = #1057#1090#1088#1072#1085#1072
              DataBinding.FieldName = 'COUNTRY_'
              MinWidth = 50
              Width = 100
            end
            object grid_fresh_vNOM_NEW: TcxGridDBColumn
              Caption = #1053#1086#1074#1080#1085#1082#1072
              DataBinding.FieldName = 'NOM_NEW'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.DisplayChecked = '1'
              Properties.DisplayUnchecked = '0'
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              MinWidth = 70
              Options.HorzSizing = False
              Styles.Content = st_editable
              Width = 70
            end
            object grid_fresh_vNOM_START: TcxGridDBColumn
              Caption = #1055#1088#1086#1076'. '#1089#1090#1072#1088#1090
              DataBinding.FieldName = 'NOM_START'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.DisplayChecked = '1'
              Properties.DisplayUnchecked = '0'
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              MinWidth = 80
              Options.HorzSizing = False
              Styles.Content = st_editable
              Width = 80
            end
            object grid_fresh_vNOM_END: TcxGridDBColumn
              Caption = #1055#1088#1086#1076'. '#1082#1086#1085'.'
              DataBinding.FieldName = 'NOM_END'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.DisplayChecked = '1'
              Properties.DisplayUnchecked = '0'
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              MinWidth = 70
              Options.HorzSizing = False
              Styles.Content = st_editable
              Width = 70
            end
            object grid_fresh_vNOM_ADD: TcxGridDBColumn
              Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1086
              DataBinding.FieldName = 'NOM_ADD'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.DisplayChecked = '1'
              Properties.DisplayUnchecked = '0'
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              MinWidth = 70
              Options.Editing = False
              Options.HorzSizing = False
              Width = 70
            end
            object grid_fresh_vNOM_SPECIAL: TcxGridDBColumn
              Caption = #1057#1087#1077#1094'. '#1087#1088#1077#1076#1083'.'
              DataBinding.FieldName = 'NOM_SPECIAL'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.DisplayChecked = '1'
              Properties.DisplayUnchecked = '0'
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              MinWidth = 80
              Options.HorzSizing = False
              Styles.Content = st_editable
              Width = 80
            end
            object grid_fresh_vNOM_PACK: TcxGridDBColumn
              Caption = #1042' '#1087#1072#1095#1082#1077
              DataBinding.FieldName = 'NOM_PACK'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              MinWidth = 70
              Options.HorzSizing = False
              Styles.Content = st_editable
              Width = 70
            end
            object grid_fresh_vSRC_TROLLEY: TcxGridDBColumn
              Caption = #8470' '#1090#1077#1083#1077#1078#1082#1080
              DataBinding.FieldName = 'SRC_TROLLEY'
              Styles.Content = st_editable
              Width = 120
            end
          end
          object grid_fresh_l: TcxGridLevel
            GridView = grid_fresh_v
          end
        end
        object BarDock_source: TdxBarDockControl
          Left = 2
          Top = 2
          Width = 1164
          Height = 26
          Align = dalTop
          BarManager = BarMan_invoice
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 225
        Width = 1168
        Height = 205
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 1
        ExplicitHeight = 232
        object BarDock_invoices: TdxBarDockControl
          Left = 2
          Top = 2
          Width = 1164
          Height = 27
          Align = dalTop
          BarManager = BarMan_invoice
        end
        object grid_done: TcxGrid
          Left = 2
          Top = 29
          Width = 1164
          Height = 174
          Hint = 'Ctrl+Tab '#1087#1077#1088#1077#1082#1083#1102#1095#1077#1085#1080#1077' '#1084#1077#1078#1076#1091' '#1090#1072#1073#1083#1080#1094#1072#1084#1080
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LookAndFeel.Kind = lfOffice11
          object grid_done_v: TcxGridDBTableView
            PopupMenu = pm_inv_data
            OnKeyDown = grid_done_vKeyDown
            OnKeyPress = grid_done_vKeyPress
            NavigatorButtons.ConfirmDelete = False
            FilterBox.Position = fpTop
            OnCellDblClick = grid_done_vCellDblClick
            OnCustomDrawCell = grid_done_vCustomDrawCell
            DataController.DataSource = DM.InvoiceData_DS
            DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription, fcoSoftCompare]
            DataController.Filter.AutoDataSetFilter = True
            DataController.KeyFieldNames = 'INVOICE_DATA_ID'
            DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
                Column = idD_CHECK
              end
              item
                Format = '0'
                Kind = skCount
                Column = H_CODE
              end
              item
                Format = '0'
                Kind = skSum
                Column = UNITS
              end
              item
                Format = '0.00'
                Kind = skSum
                Column = TOTAL_SUM2
              end
              item
                Format = '0'
                Kind = skMax
                Column = grid_done_vTRUCK
              end
              item
                Format = '0'
                Kind = skMax
                Column = grid_done_vTROLLEY_CALC
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
                Column = grid_done_vUNITS_PRINT
              end>
            DataController.Summary.SummaryGroups = <>
            FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1092#1080#1083#1100#1090#1088#1086#1074
            FilterRow.Visible = True
            OptionsBehavior.CellHints = True
            OptionsBehavior.FocusCellOnCycle = True
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
            OptionsView.HeaderEndEllipsis = True
            Styles.Inactive = st_Inactive9
            object N_ID: TcxGridDBColumn
              Tag = 999
              DataBinding.FieldName = 'N_ID'
              Visible = False
              Options.Editing = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
            end
            object idD_CHECK: TcxGridDBColumn
              Caption = #1054#1090#1084#1077#1095#1077#1085#1086
              DataBinding.FieldName = 'D_CHECK'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.DisplayChecked = #1076#1072
              Properties.DisplayUnchecked = #1085#1077#1090
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                000000000000000000000000000084CA84FF54B757FF00000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000084CA84FF52D47AFF72F4A5FF3EB850FF000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000008DD18DFF4ACC6BFF74F097FF77F08CFF63E692FF69BE6AFF0000
                0000000000000000000000000000000000000000000000000000000000000000
                000084CA84FF4ACC6BFF6FEB94FF76EE8AFF77F08CFF74F097FF44C55EFF0000
                0000000000000000000000000000000000000000000000000000000000007CCC
                7BFF49D16FFF69E48BFF70E785FF73F19CFF73F19CFF72EF88FF65EA94FF4DB6
                51FF00000000000000000000000000000000000000000000000095D795FF4ACC
                6BFF61DA7FFF68DE7DFF6FEB94FF3EB850FF44C55EFF74F097FF68E982FF49D1
                6FFF00000000000000000000000000000000000000000000000053C357FF5CD8
                87FF5FD473FF63E692FF41BD50FF000000007CCC7BFF60E48EFF68E87DFF5FE6
                86FF3DB84DFF00000000000000000000000000000000000000007CD07CFF49D1
                6FFF55D880FF41BD50FF0000000000000000000000003DB84DFF6FEB94FF5BDF
                6FFF53DC81FF5CBB5EFF00000000000000000000000000000000000000000000
                000095D795FF0000000000000000000000000000000095D795FF4DD879FF5BE0
                73FF51D96AFF44CA68FF00000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000004EBC53FF60E4
                8EFF4ED55FFF4DD973FF3DB84DFF000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000003FC2
                56FF53DC76FF43CD55FF4DD879FF4DB651FF0000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000008DD1
                8DFF49D16FFF47D15FFF43CD55FF49D16FFF71C572FF00000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00005DC15FFF4DD879FF43CD55FF47D262FF41C661FF00000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000045BC4EFF4DD879FF43CD55FF4DD879FF52BA56FF000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000003DB84DFF4FDB7EFF49D16FFF71C572FF000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000006AC56AFF86CE85FF00000000}
              HeaderGlyphAlignmentHorz = taCenter
              MinWidth = 30
              Options.HorzSizing = False
              Options.ShowCaption = False
              Width = 30
            end
            object H_CODE: TcxGridDBColumn
              Caption = #1040#1088#1090#1080#1082#1091#1083
              DataBinding.FieldName = 'H_CODE'
              FooterAlignmentHorz = taCenter
              MinWidth = 60
              Options.Editing = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 100
            end
            object grid_done_vCOMPILED_NAME_OTDEL: TcxGridDBColumn
              Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1086#1083#1085#1086#1077
              DataBinding.FieldName = 'COMPILED_NAME_OTDEL'
              OnGetCellHint = grid_done_vCOMPILED_NAME_OTDELGetCellHint
              MinWidth = 80
              Options.Editing = False
              Width = 200
            end
            object UNITS: TcxGridDBColumn
              Caption = #1050#1086#1083'-'#1074#1086
              DataBinding.FieldName = 'UNITS'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              MinWidth = 60
              Options.Editing = False
              Options.HorzSizing = False
              Width = 60
            end
            object PRICE_PER_UNIT: TcxGridDBColumn
              Caption = #1062#1077#1085#1072
              DataBinding.FieldName = 'PRICE_PER_UNIT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 65
              Options.Editing = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.HorzSizing = False
              Width = 65
            end
            object TOTAL_SUM2: TcxGridDBColumn
              Caption = #1057#1091#1084#1084#1072
              DataBinding.FieldName = 'TOTAL_SUM'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 80
              Options.Editing = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Options.HorzSizing = False
              Width = 80
            end
            object F_NAME_RU: TcxGridDBColumn
              Caption = #1053#1072#1079#1074#1072#1085#1080#1077
              DataBinding.FieldName = 'F_NAME_RU'
              MinWidth = 70
              Options.Editing = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 120
            end
            object RUS_MARKS: TcxGridDBColumn
              Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
              DataBinding.FieldName = 'RUS_MARKS'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              BestFitMaxWidth = 100
              MinWidth = 90
              Options.Editing = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 100
            end
            object LEN: TcxGridDBColumn
              Caption = #1044#1083#1080#1085#1072
              DataBinding.FieldName = 'LEN'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 60
              Options.Editing = False
              Options.HorzSizing = False
              Width = 60
            end
            object grid_done_vDIAMETER: TcxGridDBColumn
              Caption = #1044#1080#1072#1084#1077#1090#1088
              DataBinding.FieldName = 'DIAMETER'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 65
              Options.Editing = False
              Options.HorzSizing = False
              Width = 65
            end
            object PACK: TcxGridDBColumn
              Caption = #1042' '#1087#1072#1095#1082#1077
              DataBinding.FieldName = 'PACK'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 60
              Options.Editing = False
              Options.HorzSizing = False
              Width = 60
            end
            object grid_done_vNSI_NAME: TcxGridDBColumn
              Caption = #1045#1076'. '#1080#1079#1084#1077#1088'.'
              DataBinding.FieldName = 'NSI_NAME'
              Options.Editing = False
              Width = 100
            end
            object COLOUR: TcxGridDBColumn
              Caption = #1062#1074#1077#1090
              DataBinding.FieldName = 'COLOUR'
              MinWidth = 70
              Options.Editing = False
              Width = 70
            end
            object COUNTRY: TcxGridDBColumn
              Caption = #1057#1090#1088#1072#1085#1072
              DataBinding.FieldName = 'COUNTRY'
              MinWidth = 60
              Options.Editing = False
              Width = 70
            end
            object S_NAME_RU: TcxGridDBColumn
              Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
              DataBinding.FieldName = 'S_NAME_RU'
              MinWidth = 70
              Options.Editing = False
              Width = 100
            end
            object F_TYPE: TcxGridDBColumn
              Caption = #1043#1088#1091#1087#1087#1072
              DataBinding.FieldName = 'F_TYPE'
              MinWidth = 60
              Options.Editing = False
              Width = 70
            end
            object F_SUB_TYPE: TcxGridDBColumn
              Caption = #1055#1086#1076#1075#1088#1091#1087#1087#1072
              DataBinding.FieldName = 'F_SUB_TYPE'
              MinWidth = 70
              Options.Editing = False
              Width = 100
            end
            object CUST_COEF: TcxGridDBColumn
              Caption = #1058#1072#1084#1086#1078#1085#1103
              DataBinding.FieldName = 'CUST_COEF'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 70
              Options.Editing = False
              Options.HorzSizing = False
              Width = 70
            end
            object GTD: TcxGridDBColumn
              Caption = #1043#1058#1044
              DataBinding.FieldName = 'GTD'
              MinWidth = 90
              Options.Editing = False
              Width = 100
            end
            object grid_done_vGTD_COUNTRY_NAME: TcxGridDBColumn
              Caption = #1043#1058#1044' '#1057#1090#1088#1072#1085#1072
              DataBinding.FieldName = 'GTD_COUNTRY_NAME'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              Width = 120
            end
            object F_NAME: TcxGridDBColumn
              Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
              DataBinding.FieldName = 'F_NAME'
              MinWidth = 150
              Options.Editing = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 150
            end
            object REMARKS: TcxGridDBColumn
              Caption = #1056#1077#1084#1072#1088#1082#1089
              DataBinding.FieldName = 'REMARKS'
              MinWidth = 80
              Options.Editing = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 100
            end
            object CODE: TcxGridDBColumn
              Caption = #1064#1090#1088#1080#1093'-'#1082#1086#1076
              DataBinding.FieldName = 'CODE'
              MinWidth = 80
              Options.Editing = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
            end
            object BAR_CODE: TcxGridDBColumn
              Caption = #1064#1090#1088#1080#1093'-'#1082#1086#1076' '#1087#1086#1089#1090#1072#1074'.'
              DataBinding.FieldName = 'BAR_CODE'
              MinWidth = 120
              Options.Editing = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
            end
            object grid_done_vUNITS_PRINT: TcxGridDBColumn
              Caption = #1055#1077#1095#1072#1090#1100
              DataBinding.FieldName = 'UNITS_PRINT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.AssignedValues.MinValue = True
              Properties.DecimalPlaces = 0
              Properties.DisplayFormat = ',0'#39#39';-,0'#39#39
              Properties.NullString = '0'
              HeaderAlignmentHorz = taCenter
              MinWidth = 64
              Options.HorzSizing = False
              Options.Moving = False
              Styles.Content = st_asis
            end
            object grid_done_vTRUCK: TcxGridDBColumn
              Caption = #1052#1072#1096#1080#1085#1072
              DataBinding.FieldName = 'TRUCK'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 60
              Options.Editing = False
              Options.HorzSizing = False
              Styles.Content = st_asis
              Width = 60
            end
            object grid_done_vTROLLEY_CALC: TcxGridDBColumn
              Caption = #1058#1077#1083#1077#1078#1082#1072
              DataBinding.FieldName = 'TROLLEY_CALC'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.ReadOnly = True
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              MinWidth = 60
              Options.Editing = False
              Options.HorzSizing = False
              Width = 60
            end
            object grid_done_vSRC_TROLLEY: TcxGridDBColumn
              Caption = #8470' '#1058#1077#1083#1077#1078#1082#1080
              DataBinding.FieldName = 'SRC_TROLLEY'
              Options.Editing = False
              Styles.Content = st_asis
              Width = 100
            end
            object grid_done_vCLIENT: TcxGridDBColumn
              Caption = #1050#1083#1080#1077#1085#1090
              DataBinding.FieldName = 'CLIENT'
              Options.Editing = False
              Styles.Content = st_asis
              Width = 100
            end
            object INVOICE_DATA_AS_IS_ID2: TcxGridDBColumn
              Caption = #8470' '#1089#1099#1088#1086#1081
              DataBinding.FieldName = 'INVOICE_DATA_AS_IS_ID'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              FooterAlignmentHorz = taCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 70
              Options.Editing = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
            end
            object grid_done_vINV_ID: TcxGridDBColumn
              Tag = 999
              DataBinding.FieldName = 'INV_ID'
              Visible = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
            end
            object grid_done_vAMOUNT_IN_THE_PACK: TcxGridDBColumn
              Tag = 999
              DataBinding.FieldName = 'AMOUNT_IN_THE_PACK'
              Visible = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
            end
            object grid_done_vFULL_NAME: TcxGridDBColumn
              Tag = 999
              DataBinding.FieldName = 'FULL_NAME'
              Visible = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
            end
            object grid_done_vFT_ID: TcxGridDBColumn
              Tag = 999
              DataBinding.FieldName = 'FT_ID'
              Visible = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
            end
            object INVOICE_DATA_ID2: TcxGridDBColumn
              Tag = 999
              DataBinding.FieldName = 'INVOICE_DATA_ID'
              Visible = False
              Options.Editing = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
            end
            object STORNED_TEXT: TcxGridDBColumn
              Tag = 999
              Caption = #1057#1090#1086#1088#1085#1080#1088#1086#1074#1072#1085#1080#1077
              DataBinding.FieldName = 'STORNED_TEXT'
              Visible = False
              MinWidth = 90
              Options.Editing = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 100
            end
            object grid_done_vTROLLEY: TcxGridDBColumn
              Tag = 999
              DataBinding.FieldName = 'TROLLEY'
              Visible = False
              Styles.Content = st_asis
            end
            object grid_done_vFST_ID: TcxGridDBColumn
              Tag = 999
              DataBinding.FieldName = 'FST_ID'
              Visible = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
            end
            object grid_done_vSENDED_TO_WAREHOUSE: TcxGridDBColumn
              Tag = 999
              DataBinding.FieldName = 'SENDED_TO_WAREHOUSE'
              Visible = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
            end
            object grid_done_vSTORNED_DATA: TcxGridDBColumn
              Tag = 999
              Caption = #1057#1090#1086#1088#1085#1080#1088#1086#1074#1072#1085#1085#1099#1077' '#1087#1086#1079#1080#1094#1080#1080
              DataBinding.FieldName = 'STORNED_DATA'
              Visible = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
            end
            object grid_done_vINV_MARKS: TcxGridDBColumn
              Tag = 999
              DataBinding.FieldName = 'INV_MARKS'
              Visible = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
              Width = 200
            end
            object grid_done_vIS_PHOTO: TcxGridDBColumn
              Tag = 999
              DataBinding.FieldName = 'IS_PHOTO'
              Visible = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
            end
            object grid_done_vPHOTO: TcxGridDBColumn
              Tag = 999
              DataBinding.FieldName = 'PHOTO'
              Visible = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
            end
            object grid_done_vNN: TcxGridDBColumn
              Tag = 999
              Caption = #1054#1076#1080#1085#1072#1082#1086#1074#1099#1077' '#1087#1086#1079#1080#1094#1080#1080
              DataBinding.FieldName = 'NN'
              Visible = False
              Options.FilteringPopup = False
              Options.FilteringPopupMultiSelect = False
            end
            object grid_done_vH_NAME: TcxGridDBColumn
              Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
              DataBinding.FieldName = 'H_NAME'
              Visible = False
              Width = 200
            end
            object grid_done_vNOTUSE: TcxGridDBColumn
              Tag = 999
              Caption = #1053#1077' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1084#1099#1077' '#1087#1086#1079#1080#1094#1080#1080
              DataBinding.FieldName = 'NOTUSE'
              Visible = False
            end
            object grid_done_vNOPRINT: TcxGridDBColumn
              Tag = 999
              Caption = #1041#1077#1079' '#1087#1077#1095#1072#1090#1080
              DataBinding.FieldName = 'NOPRINT'
              Visible = False
            end
            object grid_done_vHOL_TYPE: TcxGridDBColumn
              Caption = #1043#1086#1083'. '#1090#1080#1087
              DataBinding.FieldName = 'HOL_TYPE'
              Visible = False
              Width = 70
            end
            object grid_done_vFN_ID: TcxGridDBColumn
              Tag = 999
              DataBinding.FieldName = 'FN_ID'
              Visible = False
            end
            object grid_done_vC_ID: TcxGridDBColumn
              Tag = 999
              DataBinding.FieldName = 'C_ID'
              Visible = False
            end
            object grid_done_vS_ID: TcxGridDBColumn
              Tag = 999
              DataBinding.FieldName = 'S_ID'
              Visible = False
            end
            object grid_done_vCOL_ID: TcxGridDBColumn
              Tag = 999
              DataBinding.FieldName = 'COL_ID'
              Visible = False
            end
            object grid_done_vHT_ID: TcxGridDBColumn
              Tag = 999
              DataBinding.FieldName = 'HT_ID'
              Visible = False
            end
            object grid_done_vWEIGHT: TcxGridDBColumn
              Caption = #1054#1073#1098#1077#1084' ('#1074#1086#1076#1072')'
              DataBinding.FieldName = 'WEIGHT'
              Visible = False
              Width = 100
            end
            object grid_done_vWEIGHTDRY: TcxGridDBColumn
              Caption = #1054#1073#1098#1077#1084
              DataBinding.FieldName = 'WEIGHTDRY'
              Visible = False
              Width = 100
            end
            object grid_done_vTNVED: TcxGridDBColumn
              Tag = 999
              DataBinding.FieldName = 'TNVED'
              Visible = False
            end
            object grid_done_vGTD_COUNTRY: TcxGridDBColumn
              Caption = #1057#1090#1088#1072#1085#1072' '#1043#1058#1044
              DataBinding.FieldName = 'GTD_COUNTRY'
              Visible = False
              Width = 100
            end
            object grid_done_vNOM_NEW: TcxGridDBColumn
              Caption = #1053#1086#1074#1080#1085#1082#1072
              DataBinding.FieldName = 'NOM_NEW'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.DisplayChecked = '1'
              Properties.DisplayUnchecked = '0'
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              HeaderAlignmentHorz = taCenter
              MinWidth = 60
              Options.Editing = False
              Options.HorzSizing = False
              Width = 60
            end
            object grid_done_vNOM_START: TcxGridDBColumn
              Caption = #1057#1090#1072#1088#1090
              DataBinding.FieldName = 'NOM_START'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.DisplayChecked = '1'
              Properties.DisplayUnchecked = '0'
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              HeaderAlignmentHorz = taCenter
              MinWidth = 60
              Options.Editing = False
              Options.HorzSizing = False
              Width = 60
            end
            object grid_done_vNOM_END: TcxGridDBColumn
              Caption = #1050#1086#1085#1077#1094
              DataBinding.FieldName = 'NOM_END'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.DisplayChecked = '1'
              Properties.DisplayUnchecked = '0'
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              HeaderAlignmentHorz = taCenter
              MinWidth = 60
              Options.Editing = False
              Options.HorzSizing = False
              Width = 60
            end
            object grid_done_vNOM_ADD: TcxGridDBColumn
              Caption = #1044#1086#1073#1072#1074#1082#1072
              DataBinding.FieldName = 'NOM_ADD'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.DisplayChecked = '1'
              Properties.DisplayUnchecked = '0'
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              HeaderAlignmentHorz = taCenter
              MinWidth = 60
              Options.Editing = False
              Options.HorzSizing = False
              Width = 60
            end
            object grid_done_vNOM_SPECIAL: TcxGridDBColumn
              Caption = #1057#1087#1077#1094'.'
              DataBinding.FieldName = 'NOM_SPECIAL'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.DisplayChecked = '1'
              Properties.DisplayUnchecked = '0'
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              HeaderAlignmentHorz = taCenter
              MinWidth = 60
              Options.Editing = False
              Options.HorzSizing = False
              Width = 60
            end
            object grid_done_vPARENT: TcxGridDBColumn
              Caption = #1050#1086#1088#1088#1077#1082#1094#1080#1103
              DataBinding.FieldName = 'PARENT'
              Styles.Content = st_Inactive8
              Width = 90
            end
            object grid_done_vHOL_COLOR: TcxGridDBColumn
              DataBinding.FieldName = 'HOL_COLOR'
              Visible = False
            end
            object grid_done_vNAME_CODE: TcxGridDBColumn
              DataBinding.FieldName = 'NAME_CODE'
              Visible = False
            end
            object grid_done_vVBN: TcxGridDBColumn
              Tag = 999
              DataBinding.FieldName = 'VBN'
              Visible = False
            end
            object grid_done_vHOL_PACK: TcxGridDBColumn
              DataBinding.FieldName = 'HOL_PACK'
              Visible = False
            end
          end
          object grid_done_l: TcxGridLevel
            GridView = grid_done_v
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 217
        Width = 1168
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salTop
        NativeBackground = False
        Control = Panel2
        Color = clGray
        ParentColor = False
      end
      object bdc_footer: TdxBarDockControl
        Left = 0
        Top = 430
        Width = 1168
        Height = 43
        Align = dalBottom
        BarManager = BarMan_invoice
        ExplicitTop = 457
      end
    end
    object spl_top1: TcxSplitter
      Left = 1
      Top = 185
      Width = 1168
      Height = 8
      HotZoneClassName = 'TcxMediaPlayer9Style'
      AlignSplitter = salTop
      NativeBackground = False
      Control = Panel9
      Color = clGray
      ParentColor = False
    end
  end
  object panel_progress: TPanel
    Left = 208
    Top = 96
    Width = 600
    Height = 60
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 1
    Visible = False
    object Label1: TLabel
      Left = 2
      Top = 2
      Width = 596
      Height = 25
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = #1048#1076#1077#1090' '#1086#1073#1088#1072#1073#1086#1090#1082#1072' '#1076#1072#1085#1085#1099#1093'...'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object cxProgressBar1: TcxProgressBar
      Left = 2
      Top = 27
      Align = alClient
      ParentFont = False
      Position = 90.000000000000000000
      Properties.BarStyle = cxbsGradientLEDs
      Properties.BeginColor = 16484996
      Properties.EndColor = 8454143
      Properties.PeakValue = 90.000000000000000000
      Properties.SolidTextColor = True
      Style.BorderStyle = ebsOffice11
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Pitch = fpFixed
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = True
      Style.Shadow = False
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Width = 596
    end
  end
  object Panel_fill: TPanel
    Left = 362
    Top = 204
    Width = 223
    Height = 101
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 6
    Visible = False
    object Label13: TLabel
      Left = 8
      Top = 69
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
      Top = 82
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
      Width = 209
    end
    object rgSearchNom: TRadioGroup
      Left = 8
      Top = 32
      Width = 209
      Height = 33
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        #1053#1072#1079#1074#1072#1085#1080#1077
        #1040#1088#1090#1080#1082#1091#1083
        #1050#1086#1076)
      TabOrder = 1
      OnClick = rgSearchNomClick
    end
  end
  object ImageList1: TImageList
    Left = 257
    Top = 97
    Bitmap = {
      494C010102000400A80110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000008AEF54008BF4B00088F3C00085
      F2C90082F1CF007FF0D3007CEFD5007AEFD60077EED60076EDD50074EDD30074
      EDCF0074EDC90074EDC00074EDAE0070E5470000000000000000000000000000
      000000000000208420442BA62FD82CA834D82CA633D82AA22FD82492244A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000394F7E74CDBFBFF48DAFBFF46D7
      FBFF45D5FBFF46D6FCFF46D6FCFF46D6FCFF46D6FCFF46D6FCFF46D5FBFF45D4
      FBFF44D2FBFF42CFFAFF44CBF9FF0074EDDB0000000000000000000000000000
      0000000000002185205D44CC6CFF49D871FF49D871FF44CC6DFF249424630000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000094F7B348DCFBFF43E6FDFF3CDC
      FDFF35D3FDFF30CCFDFF2FC8FCFF196B87FF186883FF2EC7FBFF2FC9FDFF2FC9
      FDFF2FC9FDFF2FC9FDFF3EC5F8FF0074EDAE0000000000000000000000000000
      0000000000002186215D44CC6AFF3ECB4FFF3DCB4EFF43CB6AFF249524630000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008BE64824B6F9FF53F6FEFF48ED
      FEFF41E3FDFF3AD9FDFF30C1EAFF000202FF000101FF2AB6E5FF2FC9FDFF2FC9
      FDFF2FC9FDFF39CFFCFF209BF2FF006FE2470000000000000000000000000000
      0000000000002287215D47CF6DFF42CF55FF3ECB4FFF43CB6AFF259625630000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000004F83010198F9D556EEFDFF50FA
      FEFF4CF4FEFF46EAFDFF3EE0FDFF2690A8FF2188A7FF2FCAFCFF2FC9FDFF2FC9
      FDFF2FC9FDFF43CFFAFF0176EDD600448C010000000000000000000000000000
      0000000000002288225D4BD271FF4CD65FFF43CF55FF44CC6BFF259725630000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000095F3612DC2FAFF56FE
      FEFF52FDFFFF4FF9FEFF4AF1FEFF0B2629FF0C2F36FF36D4FDFF31CCFDFF2FC9
      FDFF36CDFCFF28A7F4FF0075EB620000000024902346248F235C238E235C238D
      225C238B225C29A428984ED575FF58DE6CFF4DD760FF47CE6EFF28A1279D2083
      205F2082205F20811F5C1F801F5C1F7F1F460000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000005E9906039DFAE256F2
      FDFF50FDFFFF52FEFFFF51FCFEFF0A2020FF0C2A2DFF41E4FDFF3ADAFDFF34D1
      FDFF45D3FBFF037DEFE20051A1060000000031B736DE52D77AFF53D87AFF54D9
      7BFF55DA7CFF54D97CFF64EA92FF63E778FF59DF6CFF55DF81FF47CE6EFF44CC
      6BFF43CB69FF43CA68FF43CA6BFF2AA330DE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000009BF86D2FC5
      FBFF4EF8FEFF4EFCFFFF51FDFEFF071616FF0A2223FF4CF4FEFF46EBFDFF45E3
      FDFF2BAFF5FF007CEE6A000000000000000034BB3CDE64E38DFF68E17DFF6EE8
      84FF72ED89FF74F08BFF72F088FF6DED82FF65E879FF5BE06EFF51D964FF47D2
      5AFF40CD52FF3DCB4FFF48D770FF2DA836DE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000067A40804A1
      FBE550ECFDFF47F5FFFF4BF7FDFF030B0BFF071717FF52FDFEFF4FF9FEFF54E9
      FCFF0385F2E10057A506000000000000000034BC3CDE5EDB86FF60D874FF67E0
      7CFF6DE783FF71EC88FF74EF89FF73F089FF6EEE83FF66E97BFF5CE271FF52DA
      66FF48D35BFF41CD53FF48D770FF2EA936DE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000009D
      F86B2BC3FCFF44EDFEFF42ECF9FF000202FF040C0CFF4FFBFDFF56FEFEFF2BB6
      F7FF0084F16400000000000000000000000032BA37DE4DD375FF4ED475FF51D6
      77FF53D87AFF54D97CFF68EB96FF74EF89FF73F089FF67EC95FF51D778FF4DD4
      75FF4AD171FF47CE6DFF45CD6DFF2BA731DE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000064
      9D0603A2FBDF48E3FDFF38E0F6FF082225FF0B282BFF49F5FCFF52EAFCFF028D
      F4D800599F0400000000000000000000000029A02849289F275F289E275F289D
      275F279C265F2BAD2A9A54D97AFF70EB87FF73EF8AFF57DB7FFF2AA9299D2493
      245F2492235F2390235F238F235F238E23490000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000009DF65C23BDFCFF3DE4FEFF37E4FFFF3CEAFFFF4BF1FEFF21B1F8FF008B
      EF50000000000000000000000000000000000000000000000000000000000000
      0000000000002490245D51D778FF6BE480FF70EA85FF56DB7EFF28A128630000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000588A0100A2FCCA41DAFDFF31DEFEFF35E2FEFF42D9FCFF0094F8BF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002592245D4FD475FF63DB77FF6AE37EFF55D97DFF29A228630000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000095E73814B2FDFD41E2FEFF42E3FEFF11A9FAFB008BE52E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002593245D4CD272FF5BD26EFF62DA76FF53D77BFF29A428630000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000A4FD9631CBFDFF2FC8FCFF009DFA8D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002594255D4BD172FF59D782FF5FDD89FF51D67AFF29A529630000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000077B70C00A4FDBC00A2FCBB0079BF0A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002694254331B934D532BA38D532B938D530B634D52AA629490000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF000000F81F000000000000F81F00000000
      0000F81F000000000000F81F000000000000F81F000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F81F000000000000F81F000000000000F81F00000000
      0000F81F000000000000F81F0000000000000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Images = ImageList2
    Left = 201
    Top = 65
    object ASwitch: TAction
      Caption = 'ASwitch'
      ShortCut = 16393
      OnExecute = ASwitchExecute
    end
    object A_F4: TAction
      Caption = 'A_F4'
      ShortCut = 115
      OnExecute = A_F4Execute
    end
    object A_F2: TAction
      Caption = 'A_F2'
      ShortCut = 113
      OnExecute = A_F2Execute
    end
    object A_F3: TAction
      Caption = 'A_F3'
      ShortCut = 114
      OnExecute = A_F3Execute
    end
    object ASaveGridParams: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1087#1072#1088#1072#1084#1077#1090#1088#1099' '#1090#1072#1073#1083#1080#1094
      OnExecute = ASaveGridParamsExecute
    end
    object ALoadGridParams: TAction
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1087#1072#1088#1072#1084#1077#1090#1088#1099' '#1090#1072#1073#1083#1080#1094
      OnExecute = ALoadGridParamsExecute
    end
    object aResfresh: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      ShortCut = 116
      OnExecute = btn_refreshClick
    end
    object aArchive: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' / '#1091#1073#1088#1072#1090#1100' '#1074' '#1072#1088#1093#1080#1074
      ShortCut = 16466
      OnExecute = aArchiveExecute
    end
    object aSearchByArticle: TAction
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1072#1088#1090#1080#1082#1083#1091
      ShortCut = 16449
      OnExecute = aSearchByArticleExecute
    end
    object aSeachByName: TAction
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102
      ShortCut = 16462
      OnExecute = aSeachByNameExecute
    end
    object aSearchByCode: TAction
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1074#1085#1091#1090#1088#1077#1085#1085#1077#1084#1091' '#1082#1086#1076#1091
      ShortCut = 16450
      OnExecute = aSearchByCodeExecute
    end
    object aZak: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100'/'#1091#1073#1088#1072#1090#1100' '#1080#1079' '#1079#1072#1082#1072#1079#1072
      OnExecute = aZakExecute
    end
  end
  object ImageList2: TImageList
    Left = 329
    Top = 97
    Bitmap = {
      494C010105000C00A80110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C572087DA25E07330000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000B1670868F0B770F7BB6F0B6600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007A47071CF9CD85FDF9E7A7FECD801EA06F41070A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AB65
      0843CF812099CF82219BCF82219BEFB468F4F9F9C8FFF9F9C1FFE19F49D4CF82
      229BCF82219BCF82219BCF812099AB6508430000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E39D
      4ADCF9F6C1FEF9F9C5FEF9F9C8FFF9F9CAFEF9F9C8FEF9F9C8FFF9F9C8FEF9F9
      CAFEF9F9C7FFF9F7C1FEF9F0BFFEE5A04FD60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6A3
      53E0F9F0B7FEF9F6BCFEF9F9C0FFF9F9C2FEF9F9C5FEF9F9C5FFF9F9C4FEF9F9
      C1FEF9F8BDFFF9F1B9FEF9E8B5FEEBA556DD0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7A3
      54DBF9ECB6FFF9F2BAFFF9CBA1FFECBD99FFECBD99FFECBD99FFECBD99FFECBD
      99FFF9CAA0FFF9EDB7FFF9E6B4FFEBA556DD0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AB650820CF812049CF82214AE7A2
      51E4F9E7B5FEF9EDB7FEF9F2BAFFF9F6BCFEF9F8BDFEF9F8BDFFF9F7BCFEF9F3
      BAFEF9EFB7FFF9E8B5FEF9E2B1FEEBA456DD0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E49F4D64F9F6C179F9F9C579E9A9
      5CEBF9F9DEFEF9F5CAFEF9C8A0FFECBD99FFECBD99FFECBD99FFECBD99FFECBD
      99FFF9C89FFFF9E4B1FEF9E0AFFEEBA456DD0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8A55568F9F0B779F9F6BC79E9A8
      5BEBF9F9F5FFF9F9F9FFF9F9F9FFF9F9EFFFF9F9E0FFF9F9D5FFF9F6CBFFF9F0
      C2FFF9E7B9FFF9E0B0FFF9DCADFFEBA255DD0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8A45568F9ECB67AF9F2BA7AE9A4
      58EBF9F9F9FEF9F9F9FEF9F9F9FFF9F9F9FEF9F9F8FEF9F9EAFFF9F9DAFEF9F0
      C8FEF9E4B9FFF9DCAFFEF9D8ACFEEBA255DD0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8A45368F9E7B579F9EDB779D8B5
      6E9DE7AF76FEE7B47CFEE7B67DFFE7B47BFEE7B378FEE7B176FFE7AE75FEE7AC
      72FEE7AA6EFFE7A86CFEE7A76AFEAB6508430000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8A25368F9F9DE79F9F5CA79F9C8
      A07AECBD997AECBD997AECBD997AECBD997AECBD997AF9C89F7AF9E4B179F9E0
      AF79EBA4566A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8A15368F9F9F57AF9F9F97AF9F9
      F97AF9F9EF7AF9F9E07AF9F9D57AF9F6CB7AF9F0C27AF9E7B97AF9E0B07AF9DC
      AD7AEBA2556A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8A15268F9F9F979F9F9F979F9F9
      F97AF9F9F979F9F9F879F9F9EA7AF9F9DA79F9F0C879F9E4B97AF9DCAF79F9D8
      AC79EBA2556A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AB650820E7AF7679E7B47C79E7B6
      7D7AE7B47B79E7B37879E7B1767AE7AE7579E7AC7279E7AA6E7AE7A86C79E7A7
      6A79AB6508200000000000000000000000000000000000000000000000000000
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
      00000000000084CA84FF54B757FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001D1D78182727A2792929A3BC3030AADD2E2EA9DC27279FB926269C751C1C
      741500000000000000000000000000000000000000000000000000FFFF000000
      00007B7B7B007B7B7B0000000000000000000000000000000000000000000084
      8400008484000084840000848400000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      000084CA84FF52D47AFF72F4A5FF3EB850FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000151557012929
      A6783838B8F65A5ADCFF7070F2FF6F6FF3FF6868EEFF5E5EE6FF4A4AD0FF3131
      ACF325259B6F000000000000000000000000000000000000000000FFFF000000
      00007B7B7B0000000000BDBDBD00BDBDBD00BDBDBD00BDBDBD00000000000084
      840000FFFF000084840000FFFF00000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF00000000000000000000000000000000008DD1
      8DFF4ACC6BFF74F097FF77F08CFF63E692FF69BE6AFF00000000000000000000
      00000000000000000000000000000000000000000000161658012A2AAAA34D4D
      CFFF6F6FEDFF6F6FEFFF5858DAFF4848C9FF4545C6FF4C4CD0FF5454DFFF5050
      DCFF3F3FC1FF26269C990000000000000000000000000000000000FFFF000000
      00007B7B7B007B7B7B00000000000000000000000000000000000000000000FF
      FF000084840000FFFF0000848400000000000000000000FFFF0000FFFF0000FF
      FF00000000007B7B7B007B7B7B0000FFFF0000FFFF0000FFFF007B7B7B007B7B
      7B000000000000FFFF0000FFFF0000000000000000000000000084CA84FF4ACC
      6BFF6FEB94FF76EE8AFF77F08CFF74F097FF44C55EFF00000000000000000000
      000000000000000000000000000000000000000000002A2AAC784B4BCEFF6969
      E6FF5858DBFF2F2FAEDC2828A56C212185341F1F7F3227279E632A2AA4DB4A4A
      D2FF4949D4FF3F3FC1FF25259B6C00000000000000000000000000FFFF000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000FF
      FF0000FFFF000084840000FFFF00000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000000000007CCC7BFF49D16FFF69E4
      8BFF70E785FF73F19CFF73F19CFF72EF88FF65EA94FF4DB651FF000000000000
      000000000000000000000000000000000000202080183838BCF56363E0FF5555
      D8FF2A2AABAF1F1F80090000000000000000000000002424953E3232B0F25252
      DFFF4D4DD7FF4F4FDCFF3030ABF11C1C7511000000000000000000FFFF000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000FF
      FF0000FFFF0000FFFF0000848400000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF000000000095D795FF4ACC6BFF61DA7FFF68DE
      7DFF6FEB94FF3EB850FF44C55EFF74F097FF68E982FF49D16FFF000000000000
      0000000000000000000000000000000000002B2BB0775050D3FF6060DFFF3030
      B3DB2020820900000000000000000000000026269C483636B5F65858E3FF3E3E
      C2FF2929A3EB4E4ED9FF4545CAFF26269C6B000000000000000000FFFF000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000FFFF0000FFFF0000FFFF000000000053C357FF5CD887FF5FD473FF63E6
      92FF41BD50FF000000007CCC7BFF60E48EFF68E87DFF5FE686FF3DB84DFF0000
      0000000000000000000000000000000000002D2DB3B95C5CDAFF5050D3FF2B2B
      AE6C0000000000000000000000002828A2533A3ABBF85F5FE9FF3F3FC1FE2828
      A37B27279F514242C6FF4F4FDAFF27279EAD000000000000000000FFFF000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF00000000007CD07CFF49D16FFF55D880FF41BD
      50FF0000000000000000000000003DB84DFF6FEB94FF5BDF6FFF53DC81FF5CBB
      5EFF000000000000000000000000000000003232B9D95D5DDAFF4545CBFF2323
      903400000000000000002929A75F3E3EC1FB6666EEFF3F3FC2FD2828A56E0000
      0000191967183939BBFF5252DFFF2A2AA3CE000000000000000000FFFF000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0000FFFF0000000000000000000000000095D795FF0000
      000000000000000000000000000095D795FF4DD879FF5BE073FF51D96AFF44CA
      68FF000000000000000000000000000000003232BAD85D5DDBFF4545CBFF2222
      8B31000000002A2AAC6A4242C7FD6B6BF2FF3E3EC2FC2929A862000000000000
      0000181864163939BBFF5252DFFF2A2AA4CC000000000000000000FFFF000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004EBC53FF60E48EFF4ED55FFF4DD9
      73FF3DB84DFF0000000000000000000000002E2EB7B45B5BDBFF4F4FD4FF2C2C
      B1632B2BB0774646CBFE6D6DF3FF3D3DC2FA2A2AA95600000000000000000000
      0000242494484141C7FF4E4EDAFF2828A1A9000000000000000000FFFF000000
      00007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000000000FF
      FF0000FFFF0000FFFF0000FFFF0000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003FC256FF53DC76FF43CD
      55FF4DD879FF4DB651FF00000000000000002D2DB6704F4FD4FF5F5FDFFF3030
      B7EE4949CFFF6C6CF1FF3C3CC1F62A2AAA4B0000000000000000000000000000
      00002A2AA8BA4E4ED9FF4444CBFF2727A164000000000000000000FFFF000000
      000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000000000FF
      FF0000FFFF0000FFFF0000FFFF00000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008DD18DFF49D16FFF47D1
      5FFF43CD55FF49D16FFF71C572FF00000000212186133838C1F16363E2FF6161
      E3FF6969EDFF3939C0F22A2AAC42000000000000000000000000000000002929
      A9824141C8FF5151DEFF3030B0EB1E1E7A0C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      840000FFFF0000FFFF0000FFFF0000000000000000000000000000000000FFFF
      FF007B7B7B007B7B7B007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005DC15FFF4DD8
      79FF43CD55FF47D262FF41C661FF00000000000000002D2DB76A4848D0FF6969
      E4FF5B5BE1FF2F2FB6D52A2AAA511C1C73191A1A6C1627279D482B2BAEBA4242
      CAFF5151DEFF3E3EC3FF2929A65E000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF000084840000FFFF0000FFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000045BC
      4EFF4DD879FF43CD55FF4DD879FF52BA56FF00000000000000002E2EB8904A4A
      D2FF6D6DEEFF6A6AEDFF5252D8FF4343CBFF4040C8FF4848D0FF5353DEFF5252
      DFFF3E3EC5FF2A2AAA8400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000084
      840000FFFF000084840000FFFF00000000000000000000000000000000007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B0000000000000000000000
      00007B7B7B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003DB84DFF4FDB7EFF49D16FFF71C572FF0000000000000000000000002D2D
      B7653838C2EE5656DDFF6B6BEFFF6F6FF4FF6868F0FF5B5BE5FF4949D2FF3232
      B7EA2A2AAC5D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006AC56AFF86CE85FF000000000000000000000000000000000000
      00002121850E2D2DB5652D2DB6A72F2FB8C92F2FB6C82C2CB2A52B2BAF611F1F
      800B00000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FCFF000000000000FC7F000000000000
      FC1F000000000000E000000000000000E000000000000000E000000000000000
      E000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000070000000000000007000000000000
      000700000000000000070000000000008FC08001F9FFF00F80000000F0FFC007
      80000000E07F800300000000C07F800180000000803F038080000000003F0700
      80000000041F0E008A8000000E0F0C108A800000DE0F08308A800000FF070070
      80008001FF8300F08A80C003FF8101E08FC0C003FFC18001FFC0C003FFE0C003
      FFC0C003FFF0E007FFC0C003FFF9F00F00000000000000000000000000000000
      000000000000}
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'xls'
    Filter = #1060#1072#1081#1083#1099' EXCEL (*.xls)|*.xls'
    Left = 385
    Top = 57
  end
  object SaveDialog2: TSaveDialog
    Left = 433
    Top = 57
  end
  object BarMan_invoice: TdxBarManager
    Scaled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'main_tlb')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = ImageList1
    LookAndFeel.Kind = lfOffice11
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    Style = bmsOffice11
    UseSystemFont = False
    Left = 825
    Top = 89
    DockControlHeights = (
      0
      0
      27
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'tlbr_invoices'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 259
      FloatTop = 171
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'tlb_Static3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 32
          Visible = True
          ItemName = 'chb_proc'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 34
          Visible = True
          ItemName = 'chb_sended'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cb_asis'
        end
        item
          Visible = True
        end
        item
          Visible = True
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bc_fontsize'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'tlbr_source'
      CaptionButtons = <>
      DockControl = BarDock_source
      DockedDockControl = BarDock_source
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 259
      FloatTop = 94
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarStatic1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tlb_del_m'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tlb_save2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic7'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic8'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'tlbr_done'
      CaptionButtons = <>
      DockControl = BarDock_invoices
      DockedDockControl = BarDock_invoices
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 259
      FloatTop = 94
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'tlb_static1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tlb_addnew'
        end
        item
          Visible = True
          ItemName = 'btnNewFromNID'
        end
        item
          Visible = True
          ItemName = 'tlb_editnew'
        end
        item
          Visible = True
          ItemName = 'tlb_delnew'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bs_services'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'lcbSuplier'
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
    object BarMan_invoiceBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'tlbr_footer'
      CaptionButtons = <>
      DockControl = bdc_footer
      DockedDockControl = bdc_footer
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1102
      FloatTop = 10
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarStatic2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic3'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic4'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic5'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic6'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic9'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic10'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic11'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic12'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic13'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic14'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic15'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic16'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic17'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object tlb_raspozn: TdxBarButton
      Caption = #1056#1072#1089#1087#1086#1079#1085#1072#1090#1100' '#1074#1088#1091#1095#1085#1091#1102
      Category = 0
      Hint = #1056#1072#1089#1087#1086#1079#1085#1072#1090#1100' '#1074#1088#1091#1095#1085#1091#1102
      Visible = ivAlways
      Glyph.Data = {
        C6070000424DC607000000000000360000002800000016000000160000000100
        200000000000900700000000000000000000000000000000000000000000050F
        05201E6B1EC04DC54DFF6EDB6EFF76E176FF6FD46FFF5AAC5AFF5AA058FF0000
        00FF262C4EFF212848E5263068E5364190E5444CBBE5535DEEFF4F58DAFF3B45
        D9FF363FBBFF151D8CFF020668C70102234D0000000000000000091F09412C64
        2AC059BC59FF74D374FF63B664FF53894EFF495C45FF000000FF0A0A0FFF1D23
        3CFF1E2A50FF203866FF374092FF464FBBFF565EC7FF313AB9FF151D8CFF0206
        68C70102234D00000005000000000000000000000000091F09411C5C1CC02A84
        2BE169AB60FF6B7D7BFF3F4F60FF000101FF192122FF161E2BFF0A0A0FFF1929
        3EFF333359FF2A317CFF272DAAFF02088AFF020668C501022349000000050000
        000100000000000000000000000000000000090D1020131A20423A6432E16689
        9CFF82A8CDFF040608FF3E5972FF22303BFF0C2337FF111B18FF212D32FF371F
        4DFF1A3092FF0102235300011128000000020000000000000000000000000000
        0000000000000000000000000000090D1024596769E2A6D9EFFFB5E5F5FF181F
        23FFA3D7EFFF6181A2FF26323EFF0C1537FF000000FF213548FF0D0C13600805
        0934000000060000000100000000000000000000000000000000000000000000
        000000000002131A20497AA5CEE385ACDCFF6E8CBEFF232E3AFF3E4465FF86AA
        D3FF435C70FF03080FFF032642FF203549FF090E15630000001F0000000B0000
        0002000000000000000000000000000000000000000001020204090D1023384C
        5FC498C9E8FF93B3E7FFA0C1F2FF3E4E5FFF7587B6FF82A2C6FF6F90B3FF313F
        4EFF051C30FF132B3EFF263A46CB05070B420000001300000004000000000000
        000000000000000000000000000000000000131A20477598C4E3BDF2FEFFA1CF
        F7FF6B92A9FF415765FF627E92FFA9D5F7FF6F95BCFF40566CFF27333FFF0E26
        3BFF0D2133E5090E15610000001B000000080000000000000000000000000000
        000000000000000000014C6075C392C5FBFFA9E0FEFF6E94B7FF4D7196FF475E
        70FF465461FFABDBFCFF7AA6D7FF4C647CFF374758FF1A3348FF02223FFF0211
        1CAB000000290000000D00000002000000000000000000000000000000000F15
        1A246389B2E1D0F9FEFFBBE9FFFFE2FCFFFFBFE2EFFF5F7A87FF496C90FFD5F2
        FEFFDEF2FFFF84B6E8FF3A4B5CFF415366FF1E3646FF132B35CE000000350000
        001300000004000000000000000000000000000000001E282D3C9CC8D9E1CDF7
        FCFFD1FCFFFFCAF0FFFFD1FCFFFF627C8EFF38495DFF727D81FF384349FF647A
        88FF678DB4FF516279FF3D5166FF295C6EF509161B770000001B000000060000
        00000000000000000000000101050104082592BDDAE2BCEAFEFFB9DAFBFFC3E7
        F7FFC2EEFFFF678193FF0A0C0DFF42403FFF0C0B0BFF050505FF020303FF3E50
        62FF4CA6C5FF2B94A4FD0726297E0000001D0000000700000000000000000000
        00000002030E020810495C85A6E39EB3C4FF666D6CFF8DA8C2FFB5DFFDFF718A
        96FF353738FF898988FF4B4B4BFF181818FF030303FF23242CFF31C4CBFF28B2
        BBFD0E44489A000000200000000700000000000000000000000001060B2E0518
        2FC399C7E6FFACD7FBFF91BBDCFFA8D0F5FFB1DBFFFF748B9AFF6D6C6CFFC2BF
        BBFF7F7C78FF343334FF4A3F4EFF136E7AFF4DEAEDFF2CC9CDFD0E4B4D9B0000
        001F0000000700000000000000000000000001060C34061C38E1B8E4FBFFE5FC
        FFFFDBF7FFFFC6ECFFFFAFDEFFFF718899FF657D91FF8E9EABFF5A6B7DFF6070
        85FF1B6A89FF0FD7DEFF65F2F2FF33C5C8F9125759A00000001B000000050000
        0000000000000000000001060C31061C37E0C0E3FBFFE6FDFFFFCFF1FFFFD0EE
        FFFFC4EAFFFF6F8492FFADD1EFFFC0DBF5FF99B5D4FF8488A6FF19BDCAFF68F5
        F7FF4DEAEDFF2FBABDF60B323577000000120000000200000000000000000000
        00000104071C05182FC0ADCFF4FFFAFEFFFFE2FCFFFFE6FEFFFFE2FDFFFF667A
        84FFC6E3F3FFCFEAFEFFADC4E5FF479EAAFF70F7F8FF68F5F7FF54E8E9FF2C94
        97E2000000320000000800000000000000000000000000000000000000000208
        1041627685E0CFECFDFFFBFFFFFFFBFFFFFFFAFFFFFF57666FFFD2E8F3FFC1D6
        F5FF8797A7FF77FFFFFF77FFFFFF68F5F7FF53D2D5FF216265AD000000190000
        000400000000000000000000000000000000000000000E101220545F6EC07F8C
        99FFADC3CFFFC3D7E0FFACC5CEFF33434DFF55CDD5FF69D8F0FF77FFFFFF77FF
        FFFF69F7F9FF5EE3E5FF3F9E9FE90C2222550000000900000001000000000000
        000000000000000000000000000000000000252A2D41607480C0808E9AFF7A74
        80FF736E81FF3C727AFF62C8D0FF79EEEEFF76FCFCFF6AF7F8FF65EBEFFF5FC5
        C8FD276060AB0000001400000003000000000000000000000000000000000000
        0000000000000000000000000000252A2D416D7E86C07794A1E08DAEBCFF3C81
        83FF6EF2F3FF75FFFFFF77FFFFFF63E8E9FF4AB8BAED276262A7000000170000
        0003000000000000000000000000000000000000000000000000000000000000
        0000000000000000000012151620252A2D417F949CE03D7275FF76DEE3FF7DEF
        F5FF70D1D6F9316567A5000000260000000B0000000100000000000000000000
        00000000000000000000}
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = Button1Click
    end
    object tlb_add: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' (F4) '
      Category = 0
      Hint = #1053#1086#1074#1099#1081' '#1080#1085#1074#1086#1081#1089
      Visible = ivAlways
      Glyph.Data = {
        C6070000424DC607000000000000360000002800000016000000160000000100
        2000000000009007000000000000000000000000000000000000000000000000
        00030000000A00000013000000190000001D0000001E0000001F0000001F0000
        001F0000001F0000001F0000001F0000001F0000001F0000001E0000001D0000
        001C000000170000000B0000000300000000000000000000000E000000160000
        00210000002C000000370000003B0000003C0000003C0000003C0000003C0000
        003C0000003C0000003C0000003C0000003B0000003A000000350000002A0000
        001B0000000F0000000000000000000000030000000A0F0B086818130DA81913
        0DAF18130CB118130CB118130CB118130CB118130CB118130CB118130CB11813
        0CB118130CB118130CB118130CB10E0B077F0000002A00000011000000030000
        000000000000000000000000000019140E97E3FBFDFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE3FBFDFF1A140EA70000001B000000070000000000000000000000000000
        0000000000001A140F95FFFFFFFFB6E1EEFFB6E1EEFFB6E1EEFFB6E1EEFFB6E1
        EEFFB6E1EEFFB6E1EEFFB6E1EEFFB6E1EFFFB6E1EEFFB6E1EFFFFFFFFFFF1B15
        0FA50000001B0000000700000000000000000000000000000000000000001B15
        0F92FFFFFFFFBDE5F0FFB1DDEBFFB1DDEBFFB1DDEBFFB1DDEBFFB1DDEBFFB1DD
        EBFFB1DDEBFFB1DDEBFFB1DDEBFFBCE5F1FFFFFFFFFF1B1510A30000001B0000
        000700000000000000000000000000000000000000001C161090FFFFFFFFC0E7
        F1FFB4DFECFFB4DFECFFB4DFECFFB4DFECFFB4DFECFFB4DFECFFB4DFECFFB4DF
        ECFFB4DFECFFC1E7F2FFFFFFFFFF1C1610A10000001A00000007000000000000
        00000000000000000000000000001C17118DFFFFFFFFC4EAF3FFB8E1ECFFB8E1
        ECFFB8E1ECFFB8E1ECFFB8E1ECFFB8E1ECFFB8E1ECFFB8E1ECFFB8E1ECFFC4E9
        F3FFFFFFFFFF1C16119F0000001A000000070000000000000000000000000000
        0000000000001D17128AFFFFFFFFC9EBF4FFBAE3EEFFBAE3EEFFBAE3EEFFBAE3
        EEFFBAE3EEFFBAE3EEFFBAE3EEFFBAE3EEFFBAE3EEFFC9EBF4FFFFFFFFFF1D17
        129C0000001A0000000700000000000000000000000000000000000000001D18
        1387FFFFFFFFCDEEF6FFBFE6EFFFBFE6EFFFBFE6EFFFBFE6EFFFBFE6EFFFBFE6
        EFFFBFE6EFFFBFE6EFFFBFE6EFFFCCEEF6FFFFFFFFFF1D18139A0000001A0000
        000600000000000000000000000000000000000000001E191484FFFFFFFFD1F1
        F7FFC3E8F1FFC3E8F1FFC3E8F1FFC3E8F1FFC3E8F1FFC3E8F1FFC3E8F1FFC3E8
        F1FFC3E8F1FFD0F0F7FFFFFFFFFF1E1914970000001900000006000000000000
        00000000000000000000000000001E191481FFFFFFFFD5F3F8FFC7EBF2FFC7EB
        F2FFC7EBF2FFC7EBF2FFC7EBF2FFC7EBF2FFC7EBF2FFC7EBF2FFC7EBF2FFCEF0
        F5FFE7F6F9FF1E19149400000019000000060000000000000000000000000000
        0000000000001F1A157EFBFBFBFFD3EEF2FFC4E6EDFFC7E9F0FFC9ECF3FFCAED
        F4FFCAEDF4FFCAEDF4FFCAEDF4FFCAEDF4FFCAEDF4FFD2F2F7FFD8F1F6FF1F1A
        1592000000190000000600000000000000000000000000000000000000001F1B
        167BF2F2F2FFCAE3E5FFBDDBE0FFC3E3E8FFCBEBF0FFCEEFF4FFCEEFF4FFCEEF
        F4FFCEEFF4FFC4E6EDFFBCE0E7FFBCDEE5FFBDDDE4FF1F1A168F000000180000
        000600000000000000000000000000000001000000031F1B167A837D77FF7379
        75FF889797FFB7D3D7FFC5E3E8FFCEEDF1FFD0F0F4FFCEEFF5FFB3DBE6FF9FD0
        E0FF98C7D7FF94C1D1FF84B6CAFF201B168D0000001800000006000000000000
        000000000000000000030000000C1F1B167EFFFFFFFFEAEAEAFF78807CFFA6BF
        C2FFB9D5D8FFC9E7E9FFD1EFF2FFD1F1F6FF81B0C2FF7BAABCFF6A98ABFF6B98
        AAFF5C899AFF1F1B168A00000018000000050000000000000000000000001310
        0D46201B177C201B1785FFFFFFFFF3F3F3FF808A86FF808A86FF92A2A2FFC3DF
        E3FFCEECF0FFD4F3F7FF8BBACBFFFFFFFFFFFFFFFFFFFFFFFFFFE3FBFDFF201B
        17860000001500000005000000000000000000000000201B1770EAEAEAFFEAEA
        EAFFFFFFFFFFF3F3F3FFEAEAEAFFE2E2E2FF88928FFFC3DFE3FFCEECF0FFD4F3
        F7FF96C4D5FFFFFFFFFFBEF7FFFFBEF7FFFFAAE4F3FF201B177C0000000C0000
        0003000000000000000000000000201C186DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF939D9AFFD0EAEDFFD8F3F6FFDBF7FAFFA4D1E0FFFFFF
        FFFFBEF7FFFFA6D8EBFF201B187B13100E490000000400000001000000000000
        00000000000013110E3F201C186B201C186EFFFFFFFFF3F3F3FFAFAAA6FFAFAA
        A6FFCAC7C4FFFBFBFBFFF5FAFBFFDBF7FAFFACD8E7FFE3FBFDFFA5D8EBFF201C
        187513100E470000000400000001000000000000000000000000000000000000
        000000000000201C1869FFFFFFFFF3F3F3FF201C1873201C186F201C186B201C
        186A201C186A201C186A201C186A201C186A201C186A13110E41000000030000
        0001000000000000000000000000000000000000000000000000000000001311
        0E3D201C1868201C186813110E3F000000030000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000}
      ImageIndex = 1
      PaintStyle = psCaptionGlyph
      OnClick = BitBtn2Click
    end
    object tlb_del: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' (F3) '
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1080#1085#1074#1086#1081#1089
      Visible = ivAlways
      Glyph.Data = {
        C6070000424DC607000000000000360000002800000016000000160000000100
        2000000000009007000000000000000000000000000000000000000000000000
        00030000000D0000001A0000001F0000001F0000001F00000020000000200000
        002100000021000000210000002100000021000000210000001F0000001F0000
        001F0000001E0000001400000008000000020000000000000010010102240000
        0233000000330000002E0000002A0000002A0000002B0000002B0000002B0000
        002B0000002B0000002B0000002B000000290404042F191A254B151721480505
        0528000000150000000100000000000000071A1B6A9110125183000000390000
        002F000000230000001E0000001C0000001C0000001C0000001C0000001C0000
        001C0000001C0000001E1E1E365327294360212337530606061A000000060000
        00000000000000003B5F1315AFF52D31B7EC2E31689000000026000000180000
        0009000000020000000000000000000000000000000000000000000000011919
        1F272223586A222451641D1E36440303030A0000000100000000000000000000
        528100009BF32B2DB5F3454ABCEA3B3E73990000002600000018000000090000
        0002000000000000000000000000000000010606060D3133667C0D0E66851112
        5974101014210000000400000000000000000000000000002F4A1313A0E20202
        9CF12E32B5F15457BCE844467197020203290000001800000009000000020000
        0000000000010000000633355F7614147BA21C1E7397292B4A61050506100000
        00020000000000000000000000000000000024274B541C1EA1E302029CF23538
        B5F05A5FBEE84749769B00000026000000180000000900000002000000063A3C
        55662E308AB50F1082B3131578A41516192A0000000500000000000000000000
        000000000000000000000101020231334A51181AA1E102029CF03335B2EF5E62
        BEE9494C749902020329000000180000000E373946553B3E97C103038AC91B1C
        88BD383A52690606071100000002000000000000000000000000000000000000
        000000000000020304042E304D542A2BA2DC00009AF03133B2EF6062BCE64345
        759B0000002730323A544A4EA1C7060695D7101394D0353985AA161618270000
        0004000000000000000000000000000000000000000000000000000000000000
        00000202040436374B52292BA3D900009BEE3132B1EE5A5DBBE55D618FAF5155
        9EC40F109FE30D0D99DD2C2FA0D12C2E3D510000000800000001000000000000
        0000000000000000000000000000000000000000000000000000000000000101
        01013134454A3537A2D100009BED3031AFEE5054C0ED2123A9E9090A99E42124
        A7E0494C6B840707081600000003000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000012122
        292F505295B71415A5ED1517A1EC0E0E9EEA191BA6E54D518AAA131314320000
        0012000000060000000100000000000000000000000000000000000000000000
        000000000000000000000000000000000002000000081A1B1F315A5D9BBD2426
        A8ED00008BEA1516A0E93234B1E3575BA0C32B2C31510000001E000000110000
        0007000000020000000000000000000000000000000000000000000000000000
        0000000000030101030E34374B604B4FA2CE292BA9EB0A0B99EB2426ABEA1212
        A2E411129EDE363AAADB5659A1C5343548670101032100000012000000080000
        00020000000000000000000000000000000000000000000000030C0D101B2E30
        6B8E3D3FA7DB17199FE6070897E81C1CA5E5565A96B4484A606F272994C00203
        97D32E30A0CC52559EBD31325B790A0A0B260000001200000008000000020000
        000000000000000000000101010112131F27333683A92F329FD600008FDF0808
        92E12728A4E04C5087A1151618210000000321222B2E3D3F879F00008FC22727
        90B7454790AC3537657D09090A21000000100000000600000001000000000000
        000007070B0B272A81A41C1E8FCA000082D1050590D62B2C9ECE3C3F60710405
        050B0000000100000000000000000A0A0B0B3A3B515913157F9F1E2085A13033
        7C933D3F66750F1011210000000A00000003000000000000000009090E0E0F10
        7EB2010176BF15158DC634388DB11B1C313E0000000400000001000000000000
        000000000000000000000101010117181E1F292B626C2B2E737E353868703234
        3E4607080810000000030000000000000000050505051D1F434F0F0F75981E1F
        667C0A0B11160000000200000000000000000000000000000000000000000000
        00000000000000000000030303031F202727343747482A2D36380A0B0B0D0000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000}
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = Button6Click
    end
    object tlb_edit: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' (F2) '
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1089#1074#1086#1081#1089#1090#1074#1072
      Visible = ivAlways
      Glyph.Data = {
        C6070000424DC607000000000000360000002800000016000000160000000100
        2000000000009007000000000000000000000000000000000000000000010000
        000700000011000000190000001B0000001D0000001E0000001F0000001F0000
        001F0000001F0000001F0000001F0000001F0000001F0000001E0000001D0000
        001C00000019000000110000000A00000004000000040000001C0000002D0000
        003600000038000000390000003B0000003C0000003C0000003C0000003C0000
        003C0000003C0000003C0000003C0000003B0000003A00000038000000360000
        0030000000270000000F0E0B085C19130DA119130DAA19130CAF19130CB01813
        0CB118130CB118130CB118130CB118130CB118130CB118130CB118130CB11813
        0CB118130CB118130CB118130CB119130CB019130CAF18130DAC0E0B08750000
        00181A140F96BDE5F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFBDE5F1FF1A140EA60000001B1B150F92FFFF
        FFFFBCE5F0FFBCE5F0FFBCE5F1FFBCE5F1FFBBE3EFFFB8DFEAFFB8DFEAFFBCE3
        EFFFBDE5F1FFBDE5F1FFBCE5F1FFBCE5F1FFBCE5F1FFBCE5F1FFBCE5F1FFBDE5
        F1FFBDE5F1FFFFFFFFFF1B1510A30000001A1C17118DFFFFFFFFC3E8F2FFC3E8
        F2FFC3E8F2FFC3E8F2FFBEE2EBFFB3D5DEFFB1D2DBFFBADDE7FFC1E6F0FFC3E8
        F2FFC3E8F2FFC3E8F2FFC3E8F2FFC3E8F2FFC3E8F2FFC3E8F2FFC3E8F2FFFFFF
        FFFF1C16119F0000001A1D181388FFFFFFFFC9ECF5FFC9ECF5FFC9ECF5FFB1CE
        D5FFA1B9BEFFA1B9BDFFA7C1C6FFB5D3DBFFBEDEE7FFC3E6EEFFC7E9F2FFC9EB
        F4FFC9EBF4FFC9EBF4FFC9EBF4FFC9ECF5FFC9ECF5FFFFFFFFFF1D18139B0000
        00191E191483FFFFFFFFCFEFF7FFCFEFF7FF677276FF757E7EFF000000FF1A6F
        88FFA6BCBFFFABC3C7FFB6D2D8FFBCD9E0FFC5E4EAFFCDEDF4FFCFEFF6FFCFEF
        F6FFCFEFF6FFCFEFF7FFCFEFF7FFFFFFFFFF1E191496000000191E1A157DFFFF
        FFFFD5F3F8FFD5F3F8FFDBF7FAFFB2C5C4FF2383A1FF81D8E7FF6BA6D8FFB2C5
        C4FFB2C5C4FFB6CBCCFFBFDAE0FFCBE8EDFFD3F1F7FFD5F3F9FFD5F3F9FFD5F3
        F8FFD5F3F8FFFFFFFFFF1F1A1591000000181F1B1678FFFFFFFFDBF7FAFFDBF7
        FAFFA1B4B9FF98A4A9FF869394FFC8F1F7FFAAD6EBFF6AA5D6FF73A7D3FF97A5
        A7FFB7CCCDFFC5DEE1FFD1EBEEFFD9F5F8FFB2AB98FFB2AB98FFB2AB98FFFFFF
        FFFF201B168D00000018201B1773FFFFFFFFE1FAFCFFE1FAFCFFE3FBFDFFE3FB
        FDFFBBCBCBFFC1F6FDFFC2F3F9FFACD7ECFF74AEE0FF005F82FFB9CAC9FFBCCF
        CFFFCAE1E1FFD6EEEFFF6F664CFF70674DFF70674DFFFFFFFFFF201B17890000
        0017201B176FFFFFFFFFE3FBFDFFE3FBFDFFE3FBFDFFE3FBFDFFCCE0E0FFBCCD
        CCFFC1E9FEFFCAF4FAFF005F8BFF57C4E5FF35A6D1FFBCCDCCFFBFD2D1FFCCE1
        E3FF6B6249FF6F664CFF70674DFFFFFFFFFF201B178100000014201C186BD5F3
        F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D2D0FF057CA8FF006A
        98FF9DF4FBFF7AE1F2FF4CB8E3FF35A8D4FFD4D2D0FFD7D6D5FFE5E5E5FFF3F3
        F3FFFDFDFDFFD5F3F8FF201C18750000000B13110E3D201C1868201C1868201C
        1869201C1869201C1869201C1869231F1A7C26211B895DD9FFFF97E5FEFF99F6
        FCFF79E2F2FF4DB9E5FF35A8D4FF26211B9D221D19961D1916851F1B1776201B
        186D13110E410000000400000000000000000000000000000000000000000000
        000000000000000000000806051F0D0B09364EC9F9FF97E6FFFF9AF7FDFF7AE4
        F4FF4DBAE6FF3AB5DBFF0D0B095A0806054D0000002E00000016000000070000
        0002000000000000000000000000000000000000000000000000000000000000
        0000000000000806051D0D0B09344EC9F9FF97E6FFFF9AF7FDFF86E8F7FF0180
        B3FF8F8987FF0D0B09590706054B0000002E0000001600000006000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000807061D0D0B09334EC9F9FFA0EBFFFF31CAFDFF3F3333FFB0B0B0FF8D8D
        86FF0D0B09580807064B000000270000000D0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000807
        061C0D0C0A31463935FF9A928EFFE2E2E2FFBBBBBBFF363630FF5959D9FF0D0B
        0A550807063B0000000D00000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000807061B0D0B
        0A309C9C9CFF969692FF383834FF8585F4FF3333E5FF5252CFFF0D0B0A3E0000
        0007000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000807061A0D0C0A2E4F4F
        EDFFA4A4FEFFB7B7FBFF6B6BF0FF0D0B0A3D0807062000000002000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000807061A0E0C0A2E5353EBFF5151
        E6FF0E0C0A380807062000000002000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000080706190D0C0A2C0E0C0A2D0807061B0000
        00010000000000000000}
      ImageIndex = 2
      PaintStyle = psCaptionGlyph
      OnClick = BitBtn3Click
    end
    object tlb_del_m: TdxBarButton
      Caption = ' '#1091#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' (F3) '
      Category = 0
      Hint = ' '#1091#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100' (F3) '
      Visible = ivAlways
      Glyph.Data = {
        C6070000424DC607000000000000360000002800000016000000160000000100
        2000000000009007000000000000000000000000000000000000000000000000
        00030000000D0000001A0000001F0000001F0000001F00000020000000200000
        002100000021000000210000002100000021000000210000001F0000001F0000
        001F0000001E0000001400000008000000020000000000000010010102240000
        0233000000330000002E0000002A0000002A0000002B0000002B0000002B0000
        002B0000002B0000002B0000002B000000290404042F191A254B151721480505
        0528000000150000000100000000000000071A1B6A9110125183000000390000
        002F000000230000001E0000001C0000001C0000001C0000001C0000001C0000
        001C0000001C0000001E1E1E365327294360212337530606061A000000060000
        00000000000000003B5F1315AFF52D31B7EC2E31689000000026000000180000
        0009000000020000000000000000000000000000000000000000000000011919
        1F272223586A222451641D1E36440303030A0000000100000000000000000000
        528100009BF32B2DB5F3454ABCEA3B3E73990000002600000018000000090000
        0002000000000000000000000000000000010606060D3133667C0D0E66851112
        5974101014210000000400000000000000000000000000002F4A1313A0E20202
        9CF12E32B5F15457BCE844467197020203290000001800000009000000020000
        0000000000010000000633355F7614147BA21C1E7397292B4A61050506100000
        00020000000000000000000000000000000024274B541C1EA1E302029CF23538
        B5F05A5FBEE84749769B00000026000000180000000900000002000000063A3C
        55662E308AB50F1082B3131578A41516192A0000000500000000000000000000
        000000000000000000000101020231334A51181AA1E102029CF03335B2EF5E62
        BEE9494C749902020329000000180000000E373946553B3E97C103038AC91B1C
        88BD383A52690606071100000002000000000000000000000000000000000000
        000000000000020304042E304D542A2BA2DC00009AF03133B2EF6062BCE64345
        759B0000002730323A544A4EA1C7060695D7101394D0353985AA161618270000
        0004000000000000000000000000000000000000000000000000000000000000
        00000202040436374B52292BA3D900009BEE3132B1EE5A5DBBE55D618FAF5155
        9EC40F109FE30D0D99DD2C2FA0D12C2E3D510000000800000001000000000000
        0000000000000000000000000000000000000000000000000000000000000101
        01013134454A3537A2D100009BED3031AFEE5054C0ED2123A9E9090A99E42124
        A7E0494C6B840707081600000003000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000012122
        292F505295B71415A5ED1517A1EC0E0E9EEA191BA6E54D518AAA131314320000
        0012000000060000000100000000000000000000000000000000000000000000
        000000000000000000000000000000000002000000081A1B1F315A5D9BBD2426
        A8ED00008BEA1516A0E93234B1E3575BA0C32B2C31510000001E000000110000
        0007000000020000000000000000000000000000000000000000000000000000
        0000000000030101030E34374B604B4FA2CE292BA9EB0A0B99EB2426ABEA1212
        A2E411129EDE363AAADB5659A1C5343548670101032100000012000000080000
        00020000000000000000000000000000000000000000000000030C0D101B2E30
        6B8E3D3FA7DB17199FE6070897E81C1CA5E5565A96B4484A606F272994C00203
        97D32E30A0CC52559EBD31325B790A0A0B260000001200000008000000020000
        000000000000000000000101010112131F27333683A92F329FD600008FDF0808
        92E12728A4E04C5087A1151618210000000321222B2E3D3F879F00008FC22727
        90B7454790AC3537657D09090A21000000100000000600000001000000000000
        000007070B0B272A81A41C1E8FCA000082D1050590D62B2C9ECE3C3F60710405
        050B0000000100000000000000000A0A0B0B3A3B515913157F9F1E2085A13033
        7C933D3F66750F1011210000000A00000003000000000000000009090E0E0F10
        7EB2010176BF15158DC634388DB11B1C313E0000000400000001000000000000
        000000000000000000000101010117181E1F292B626C2B2E737E353868703234
        3E4607080810000000030000000000000000050505051D1F434F0F0F75981E1F
        667C0A0B11160000000200000000000000000000000000000000000000000000
        00000000000000000000030303031F202727343747482A2D36380A0B0B0D0000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000}
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = Button2Click
    end
    object tlb_static1: TdxBarStatic
      Caption = #1043#1086#1090#1086#1074#1099#1081' '#1080#1085#1074#1086#1081#1089' '
      Category = 0
      Hint = #1043#1086#1090#1086#1074#1099#1081' '#1080#1085#1074#1086#1081#1089' '
      Style = tlb_header
      Visible = ivAlways
    end
    object tlb_addnew: TdxBarButton
      Caption = #1076#1086#1073#1072#1074#1080#1090#1100' (F4) '
      Category = 0
      Hint = #1076#1086#1073#1072#1074#1080#1090#1100' (F4) '
      Visible = ivAlways
      Glyph.Data = {
        C6070000424DC607000000000000360000002800000016000000160000000100
        2000000000009007000000000000000000000000000000000000000000000000
        00030000000A00000013000000190000001D0000001E0000001F0000001F0000
        001F0000001F0000001F0000001F0000001F0000001F0000001E0000001D0000
        001C000000170000000B0000000300000000000000000000000E000000160000
        00210000002C000000370000003B0000003C0000003C0000003C0000003C0000
        003C0000003C0000003C0000003C0000003B0000003A000000350000002A0000
        001B0000000F0000000000000000000000030000000A0F0B086818130DA81913
        0DAF18130CB118130CB118130CB118130CB118130CB118130CB118130CB11813
        0CB118130CB118130CB118130CB10E0B077F0000002A00000011000000030000
        000000000000000000000000000019140E97E3FBFDFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE3FBFDFF1A140EA70000001B000000070000000000000000000000000000
        0000000000001A140F95FFFFFFFFB6E1EEFFB6E1EEFFB6E1EEFFB6E1EEFFB6E1
        EEFFB6E1EEFFB6E1EEFFB6E1EEFFB6E1EFFFB6E1EEFFB6E1EFFFFFFFFFFF1B15
        0FA50000001B0000000700000000000000000000000000000000000000001B15
        0F92FFFFFFFFBDE5F0FFB1DDEBFFB1DDEBFFB1DDEBFFB1DDEBFFB1DDEBFFB1DD
        EBFFB1DDEBFFB1DDEBFFB1DDEBFFBCE5F1FFFFFFFFFF1B1510A30000001B0000
        000700000000000000000000000000000000000000001C161090FFFFFFFFC0E7
        F1FFB4DFECFFB4DFECFFB4DFECFFB4DFECFFB4DFECFFB4DFECFFB4DFECFFB4DF
        ECFFB4DFECFFC1E7F2FFFFFFFFFF1C1610A10000001A00000007000000000000
        00000000000000000000000000001C17118DFFFFFFFFC4EAF3FFB8E1ECFFB8E1
        ECFFB8E1ECFFB8E1ECFFB8E1ECFFB8E1ECFFB8E1ECFFB8E1ECFFB8E1ECFFC4E9
        F3FFFFFFFFFF1C16119F0000001A000000070000000000000000000000000000
        0000000000001D17128AFFFFFFFFC9EBF4FFBAE3EEFFBAE3EEFFBAE3EEFFBAE3
        EEFFBAE3EEFFBAE3EEFFBAE3EEFFBAE3EEFFBAE3EEFFC9EBF4FFFFFFFFFF1D17
        129C0000001A0000000700000000000000000000000000000000000000001D18
        1387FFFFFFFFCDEEF6FFBFE6EFFFBFE6EFFFBFE6EFFFBFE6EFFFBFE6EFFFBFE6
        EFFFBFE6EFFFBFE6EFFFBFE6EFFFCCEEF6FFFFFFFFFF1D18139A0000001A0000
        000600000000000000000000000000000000000000001E191484FFFFFFFFD1F1
        F7FFC3E8F1FFC3E8F1FFC3E8F1FFC3E8F1FFC3E8F1FFC3E8F1FFC3E8F1FFC3E8
        F1FFC3E8F1FFD0F0F7FFFFFFFFFF1E1914970000001900000006000000000000
        00000000000000000000000000001E191481FFFFFFFFD5F3F8FFC7EBF2FFC7EB
        F2FFC7EBF2FFC7EBF2FFC7EBF2FFC7EBF2FFC7EBF2FFC7EBF2FFC7EBF2FFCEF0
        F5FFE7F6F9FF1E19149400000019000000060000000000000000000000000000
        0000000000001F1A157EFBFBFBFFD3EEF2FFC4E6EDFFC7E9F0FFC9ECF3FFCAED
        F4FFCAEDF4FFCAEDF4FFCAEDF4FFCAEDF4FFCAEDF4FFD2F2F7FFD8F1F6FF1F1A
        1592000000190000000600000000000000000000000000000000000000001F1B
        167BF2F2F2FFCAE3E5FFBDDBE0FFC3E3E8FFCBEBF0FFCEEFF4FFCEEFF4FFCEEF
        F4FFCEEFF4FFC4E6EDFFBCE0E7FFBCDEE5FFBDDDE4FF1F1A168F000000180000
        000600000000000000000000000000000001000000031F1B167A837D77FF7379
        75FF889797FFB7D3D7FFC5E3E8FFCEEDF1FFD0F0F4FFCEEFF5FFB3DBE6FF9FD0
        E0FF98C7D7FF94C1D1FF84B6CAFF201B168D0000001800000006000000000000
        000000000000000000030000000C1F1B167EFFFFFFFFEAEAEAFF78807CFFA6BF
        C2FFB9D5D8FFC9E7E9FFD1EFF2FFD1F1F6FF81B0C2FF7BAABCFF6A98ABFF6B98
        AAFF5C899AFF1F1B168A00000018000000050000000000000000000000001310
        0D46201B177C201B1785FFFFFFFFF3F3F3FF808A86FF808A86FF92A2A2FFC3DF
        E3FFCEECF0FFD4F3F7FF8BBACBFFFFFFFFFFFFFFFFFFFFFFFFFFE3FBFDFF201B
        17860000001500000005000000000000000000000000201B1770EAEAEAFFEAEA
        EAFFFFFFFFFFF3F3F3FFEAEAEAFFE2E2E2FF88928FFFC3DFE3FFCEECF0FFD4F3
        F7FF96C4D5FFFFFFFFFFBEF7FFFFBEF7FFFFAAE4F3FF201B177C0000000C0000
        0003000000000000000000000000201C186DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF939D9AFFD0EAEDFFD8F3F6FFDBF7FAFFA4D1E0FFFFFF
        FFFFBEF7FFFFA6D8EBFF201B187B13100E490000000400000001000000000000
        00000000000013110E3F201C186B201C186EFFFFFFFFF3F3F3FFAFAAA6FFAFAA
        A6FFCAC7C4FFFBFBFBFFF5FAFBFFDBF7FAFFACD8E7FFE3FBFDFFA5D8EBFF201C
        187513100E470000000400000001000000000000000000000000000000000000
        000000000000201C1869FFFFFFFFF3F3F3FF201C1873201C186F201C186B201C
        186A201C186A201C186A201C186A201C186A201C186A13110E41000000030000
        0001000000000000000000000000000000000000000000000000000000001311
        0E3D201C1868201C186813110E3F000000030000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000}
      PaintStyle = psCaptionGlyph
      OnClick = BitBtn4Click
    end
    object tlb_editnew: TdxBarButton
      Caption = ' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' (F2)'
      Category = 0
      Hint = ' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' (F2)'
      Visible = ivAlways
      Glyph.Data = {
        C6070000424DC607000000000000360000002800000016000000160000000100
        2000000000009007000000000000000000000000000000000000000000010000
        000700000011000000190000001B0000001D0000001E0000001F0000001F0000
        001F0000001F0000001F0000001F0000001F0000001F0000001E0000001D0000
        001C00000019000000110000000A00000004000000040000001C0000002D0000
        003600000038000000390000003B0000003C0000003C0000003C0000003C0000
        003C0000003C0000003C0000003C0000003B0000003A00000038000000360000
        0030000000270000000F0E0B085C19130DA119130DAA19130CAF19130CB01813
        0CB118130CB118130CB118130CB118130CB118130CB118130CB118130CB11813
        0CB118130CB118130CB118130CB119130CB019130CAF18130DAC0E0B08750000
        00181A140F96BDE5F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFBDE5F1FF1A140EA60000001B1B150F92FFFF
        FFFFBCE5F0FFBCE5F0FFBCE5F1FFBCE5F1FFBBE3EFFFB8DFEAFFB8DFEAFFBCE3
        EFFFBDE5F1FFBDE5F1FFBCE5F1FFBCE5F1FFBCE5F1FFBCE5F1FFBCE5F1FFBDE5
        F1FFBDE5F1FFFFFFFFFF1B1510A30000001A1C17118DFFFFFFFFC3E8F2FFC3E8
        F2FFC3E8F2FFC3E8F2FFBEE2EBFFB3D5DEFFB1D2DBFFBADDE7FFC1E6F0FFC3E8
        F2FFC3E8F2FFC3E8F2FFC3E8F2FFC3E8F2FFC3E8F2FFC3E8F2FFC3E8F2FFFFFF
        FFFF1C16119F0000001A1D181388FFFFFFFFC9ECF5FFC9ECF5FFC9ECF5FFB1CE
        D5FFA1B9BEFFA1B9BDFFA7C1C6FFB5D3DBFFBEDEE7FFC3E6EEFFC7E9F2FFC9EB
        F4FFC9EBF4FFC9EBF4FFC9EBF4FFC9ECF5FFC9ECF5FFFFFFFFFF1D18139B0000
        00191E191483FFFFFFFFCFEFF7FFCFEFF7FF677276FF757E7EFF000000FF1A6F
        88FFA6BCBFFFABC3C7FFB6D2D8FFBCD9E0FFC5E4EAFFCDEDF4FFCFEFF6FFCFEF
        F6FFCFEFF6FFCFEFF7FFCFEFF7FFFFFFFFFF1E191496000000191E1A157DFFFF
        FFFFD5F3F8FFD5F3F8FFDBF7FAFFB2C5C4FF2383A1FF81D8E7FF6BA6D8FFB2C5
        C4FFB2C5C4FFB6CBCCFFBFDAE0FFCBE8EDFFD3F1F7FFD5F3F9FFD5F3F9FFD5F3
        F8FFD5F3F8FFFFFFFFFF1F1A1591000000181F1B1678FFFFFFFFDBF7FAFFDBF7
        FAFFA1B4B9FF98A4A9FF869394FFC8F1F7FFAAD6EBFF6AA5D6FF73A7D3FF97A5
        A7FFB7CCCDFFC5DEE1FFD1EBEEFFD9F5F8FFB2AB98FFB2AB98FFB2AB98FFFFFF
        FFFF201B168D00000018201B1773FFFFFFFFE1FAFCFFE1FAFCFFE3FBFDFFE3FB
        FDFFBBCBCBFFC1F6FDFFC2F3F9FFACD7ECFF74AEE0FF005F82FFB9CAC9FFBCCF
        CFFFCAE1E1FFD6EEEFFF6F664CFF70674DFF70674DFFFFFFFFFF201B17890000
        0017201B176FFFFFFFFFE3FBFDFFE3FBFDFFE3FBFDFFE3FBFDFFCCE0E0FFBCCD
        CCFFC1E9FEFFCAF4FAFF005F8BFF57C4E5FF35A6D1FFBCCDCCFFBFD2D1FFCCE1
        E3FF6B6249FF6F664CFF70674DFFFFFFFFFF201B178100000014201C186BD5F3
        F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D2D0FF057CA8FF006A
        98FF9DF4FBFF7AE1F2FF4CB8E3FF35A8D4FFD4D2D0FFD7D6D5FFE5E5E5FFF3F3
        F3FFFDFDFDFFD5F3F8FF201C18750000000B13110E3D201C1868201C1868201C
        1869201C1869201C1869201C1869231F1A7C26211B895DD9FFFF97E5FEFF99F6
        FCFF79E2F2FF4DB9E5FF35A8D4FF26211B9D221D19961D1916851F1B1776201B
        186D13110E410000000400000000000000000000000000000000000000000000
        000000000000000000000806051F0D0B09364EC9F9FF97E6FFFF9AF7FDFF7AE4
        F4FF4DBAE6FF3AB5DBFF0D0B095A0806054D0000002E00000016000000070000
        0002000000000000000000000000000000000000000000000000000000000000
        0000000000000806051D0D0B09344EC9F9FF97E6FFFF9AF7FDFF86E8F7FF0180
        B3FF8F8987FF0D0B09590706054B0000002E0000001600000006000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000807061D0D0B09334EC9F9FFA0EBFFFF31CAFDFF3F3333FFB0B0B0FF8D8D
        86FF0D0B09580807064B000000270000000D0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000807
        061C0D0C0A31463935FF9A928EFFE2E2E2FFBBBBBBFF363630FF5959D9FF0D0B
        0A550807063B0000000D00000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000807061B0D0B
        0A309C9C9CFF969692FF383834FF8585F4FF3333E5FF5252CFFF0D0B0A3E0000
        0007000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000807061A0D0C0A2E4F4F
        EDFFA4A4FEFFB7B7FBFF6B6BF0FF0D0B0A3D0807062000000002000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000807061A0E0C0A2E5353EBFF5151
        E6FF0E0C0A380807062000000002000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000080706190D0C0A2C0E0C0A2D0807061B0000
        00010000000000000000}
      PaintStyle = psCaptionGlyph
      OnClick = BitBtn8Click
    end
    object tlb_delnew: TdxBarButton
      Caption = #1091#1076#1072#1083#1080#1090#1100' (F3) '
      Category = 0
      Hint = #1091#1076#1072#1083#1080#1090#1100' (F3) '
      Visible = ivAlways
      Glyph.Data = {
        C6070000424DC607000000000000360000002800000016000000160000000100
        2000000000009007000000000000000000000000000000000000000000000000
        00030000000D0000001A0000001F0000001F0000001F00000020000000200000
        002100000021000000210000002100000021000000210000001F0000001F0000
        001F0000001E0000001400000008000000020000000000000010010102240000
        0233000000330000002E0000002A0000002A0000002B0000002B0000002B0000
        002B0000002B0000002B0000002B000000290404042F191A254B151721480505
        0528000000150000000100000000000000071A1B6A9110125183000000390000
        002F000000230000001E0000001C0000001C0000001C0000001C0000001C0000
        001C0000001C0000001E1E1E365327294360212337530606061A000000060000
        00000000000000003B5F1315AFF52D31B7EC2E31689000000026000000180000
        0009000000020000000000000000000000000000000000000000000000011919
        1F272223586A222451641D1E36440303030A0000000100000000000000000000
        528100009BF32B2DB5F3454ABCEA3B3E73990000002600000018000000090000
        0002000000000000000000000000000000010606060D3133667C0D0E66851112
        5974101014210000000400000000000000000000000000002F4A1313A0E20202
        9CF12E32B5F15457BCE844467197020203290000001800000009000000020000
        0000000000010000000633355F7614147BA21C1E7397292B4A61050506100000
        00020000000000000000000000000000000024274B541C1EA1E302029CF23538
        B5F05A5FBEE84749769B00000026000000180000000900000002000000063A3C
        55662E308AB50F1082B3131578A41516192A0000000500000000000000000000
        000000000000000000000101020231334A51181AA1E102029CF03335B2EF5E62
        BEE9494C749902020329000000180000000E373946553B3E97C103038AC91B1C
        88BD383A52690606071100000002000000000000000000000000000000000000
        000000000000020304042E304D542A2BA2DC00009AF03133B2EF6062BCE64345
        759B0000002730323A544A4EA1C7060695D7101394D0353985AA161618270000
        0004000000000000000000000000000000000000000000000000000000000000
        00000202040436374B52292BA3D900009BEE3132B1EE5A5DBBE55D618FAF5155
        9EC40F109FE30D0D99DD2C2FA0D12C2E3D510000000800000001000000000000
        0000000000000000000000000000000000000000000000000000000000000101
        01013134454A3537A2D100009BED3031AFEE5054C0ED2123A9E9090A99E42124
        A7E0494C6B840707081600000003000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000012122
        292F505295B71415A5ED1517A1EC0E0E9EEA191BA6E54D518AAA131314320000
        0012000000060000000100000000000000000000000000000000000000000000
        000000000000000000000000000000000002000000081A1B1F315A5D9BBD2426
        A8ED00008BEA1516A0E93234B1E3575BA0C32B2C31510000001E000000110000
        0007000000020000000000000000000000000000000000000000000000000000
        0000000000030101030E34374B604B4FA2CE292BA9EB0A0B99EB2426ABEA1212
        A2E411129EDE363AAADB5659A1C5343548670101032100000012000000080000
        00020000000000000000000000000000000000000000000000030C0D101B2E30
        6B8E3D3FA7DB17199FE6070897E81C1CA5E5565A96B4484A606F272994C00203
        97D32E30A0CC52559EBD31325B790A0A0B260000001200000008000000020000
        000000000000000000000101010112131F27333683A92F329FD600008FDF0808
        92E12728A4E04C5087A1151618210000000321222B2E3D3F879F00008FC22727
        90B7454790AC3537657D09090A21000000100000000600000001000000000000
        000007070B0B272A81A41C1E8FCA000082D1050590D62B2C9ECE3C3F60710405
        050B0000000100000000000000000A0A0B0B3A3B515913157F9F1E2085A13033
        7C933D3F66750F1011210000000A00000003000000000000000009090E0E0F10
        7EB2010176BF15158DC634388DB11B1C313E0000000400000001000000000000
        000000000000000000000101010117181E1F292B626C2B2E737E353868703234
        3E4607080810000000030000000000000000050505051D1F434F0F0F75981E1F
        667C0A0B11160000000200000000000000000000000000000000000000000000
        00000000000000000000030303031F202727343747482A2D36380A0B0B0D0000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000}
      PaintStyle = psCaptionGlyph
      OnClick = BitBtn7Click
    end
    object dxBarStatic1: TdxBarStatic
      Caption = #1057#1099#1088#1086#1081' '#1080#1085#1074#1086#1081#1089' '
      Category = 0
      Hint = #1057#1099#1088#1086#1081' '#1080#1085#1074#1086#1081#1089' '
      Style = tlb_header
      Visible = ivAlways
    end
    object tlb_Static3: TdxBarStatic
      Caption = #1057#1087#1080#1089#1086#1082' '#1080#1085#1074#1086#1081#1089#1086#1074' '
      Category = 0
      Hint = #1057#1087#1080#1089#1086#1082' '#1080#1085#1074#1086#1081#1089#1086#1074' '
      Style = tlb_header
      Visible = ivAlways
    end
    object tlb_selall: TdxBarButton
      Caption = #1074#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077
      Category = 0
      Hint = ' '#1074#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077' '
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000000000000084CA84FF54B757FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000084CA84FF52D47AFF72F4A5FF3EB850FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000008DD18DFF4ACC6BFF74F097FF77F08CFF63E692FF69BE6AFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        000084CA84FF4ACC6BFF6FEB94FF76EE8AFF77F08CFF74F097FF44C55EFF0000
        0000000000000000000000000000000000000000000000000000000000007CCC
        7BFF49D16FFF69E48BFF70E785FF73F19CFF73F19CFF72EF88FF65EA94FF4DB6
        51FF00000000000000000000000000000000000000000000000095D795FF4ACC
        6BFF61DA7FFF68DE7DFF6FEB94FF3EB850FF44C55EFF74F097FF68E982FF49D1
        6FFF00000000000000000000000000000000000000000000000053C357FF5CD8
        87FF5FD473FF63E692FF41BD50FF000000007CCC7BFF60E48EFF68E87DFF5FE6
        86FF3DB84DFF00000000000000000000000000000000000000007CD07CFF49D1
        6FFF55D880FF41BD50FF0000000000000000000000003DB84DFF6FEB94FF5BDF
        6FFF53DC81FF5CBB5EFF00000000000000000000000000000000000000000000
        000095D795FF0000000000000000000000000000000095D795FF4DD879FF5BE0
        73FF51D96AFF44CA68FF00000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000004EBC53FF60E4
        8EFF4ED55FFF4DD973FF3DB84DFF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003FC2
        56FF53DC76FF43CD55FF4DD879FF4DB651FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000008DD1
        8DFF49D16FFF47D15FFF43CD55FF49D16FFF71C572FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00005DC15FFF4DD879FF43CD55FF47D262FF41C661FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000045BC4EFF4DD879FF43CD55FF4DD879FF52BA56FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000003DB84DFF4FDB7EFF49D16FFF71C572FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000006AC56AFF86CE85FF00000000}
      PaintStyle = psCaptionGlyph
      OnClick = BitBtn5Click
    end
    object tlb_notsel: TdxBarButton
      Caption = #1089#1085#1103#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1080#1077
      Category = 0
      Hint = ' '#1089#1085#1103#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1080#1077' '
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000001D1D78182727A2792929A3BC3030AADD2E2EA9DC2727
        9FB926269C751C1C741500000000000000000000000000000000000000000000
        0000151557012929A6783838B8F65A5ADCFF7070F2FF6F6FF3FF6868EEFF5E5E
        E6FF4A4AD0FF3131ACF325259B6F000000000000000000000000000000001616
        58012A2AAAA34D4DCFFF6F6FEDFF6F6FEFFF5858DAFF4848C9FF4545C6FF4C4C
        D0FF5454DFFF5050DCFF3F3FC1FF26269C990000000000000000000000002A2A
        AC784B4BCEFF6969E6FF5858DBFF2F2FAEDC2828A56C212185341F1F7F322727
        9E632A2AA4DB4A4AD2FF4949D4FF3F3FC1FF25259B6C00000000202080183838
        BCF56363E0FF5555D8FF2A2AABAF1F1F80090000000000000000000000002424
        953E3232B0F25252DFFF4D4DD7FF4F4FDCFF3030ABF11C1C75112B2BB0775050
        D3FF6060DFFF3030B3DB2020820900000000000000000000000026269C483636
        B5F65858E3FF3E3EC2FF2929A3EB4E4ED9FF4545CAFF26269C6B2D2DB3B95C5C
        DAFF5050D3FF2B2BAE6C0000000000000000000000002828A2533A3ABBF85F5F
        E9FF3F3FC1FE2828A37B27279F514242C6FF4F4FDAFF27279EAD3232B9D95D5D
        DAFF4545CBFF2323903400000000000000002929A75F3E3EC1FB6666EEFF3F3F
        C2FD2828A56E00000000191967183939BBFF5252DFFF2A2AA3CE3232BAD85D5D
        DBFF4545CBFF22228B31000000002A2AAC6A4242C7FD6B6BF2FF3E3EC2FC2929
        A8620000000000000000181864163939BBFF5252DFFF2A2AA4CC2E2EB7B45B5B
        DBFF4F4FD4FF2C2CB1632B2BB0774646CBFE6D6DF3FF3D3DC2FA2A2AA9560000
        00000000000000000000242494484141C7FF4E4EDAFF2828A1A92D2DB6704F4F
        D4FF5F5FDFFF3030B7EE4949CFFF6C6CF1FF3C3CC1F62A2AAA4B000000000000
        000000000000000000002A2AA8BA4E4ED9FF4444CBFF2727A164212186133838
        C1F16363E2FF6161E3FF6969EDFF3939C0F22A2AAC4200000000000000000000
        0000000000002929A9824141C8FF5151DEFF3030B0EB1E1E7A0C000000002D2D
        B76A4848D0FF6969E4FF5B5BE1FF2F2FB6D52A2AAA511C1C73191A1A6C162727
        9D482B2BAEBA4242CAFF5151DEFF3E3EC3FF2929A65E00000000000000000000
        00002E2EB8904A4AD2FF6D6DEEFF6A6AEDFF5252D8FF4343CBFF4040C8FF4848
        D0FF5353DEFF5252DFFF3E3EC5FF2A2AAA840000000000000000000000000000
        0000000000002D2DB7653838C2EE5656DDFF6B6BEFFF6F6FF4FF6868F0FF5B5B
        E5FF4949D2FF3232B7EA2A2AAC5D000000000000000000000000000000000000
        000000000000000000002121850E2D2DB5652D2DB6A72F2FB8C92F2FB6C82C2C
        B2A52B2BAF611F1F800B00000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
      OnClick = BitBtn6Click
    end
    object tlb_set: TdxBarButton
      Caption = #1087#1088#1086#1089#1090#1072#1074#1080#1090#1100
      Category = 0
      Hint = ' '#1087#1088#1086#1089#1090#1072#1074#1080#1090#1100' '
      Visible = ivAlways
      Glyph.Data = {
        C6070000424DC607000000000000360000002800000016000000160000000100
        2000000000009007000000000000000000000000000000000000000000000000
        0002000000080000000F00000014000000170000001500000014000000140000
        0014000000140000001400000014000000140000001400000013000000150000
        001600000012000000090000000200000000000000000000000C000000120000
        002900000045000000340000002B000000220000001E0000001D0000001D0000
        001D0000001D0000001D0000001E000000260000004A0000003A000000240000
        00150000000C0000000000000000000000030100001A2E2A2398554F49AD1712
        0C8E000000590000002F00000020000000180000001500000014000000150000
        00180100004517120C8E545049AE2E292398000000330000000D000000030000
        000000000000000000000403011F4B47439CEFEFEFF6C6C3BAE03F3A32980804
        00650000003D000000180000000C0000000A03010025090602583F3A3298C6C3
        BAE0EFEFEFF64B47439C02000034000000050000000000000000000000000000
        00000604022454504CA1EBE8E5F9FFFFF4FFF5EFDBFAA6A096CE312C278B0603
        0056090602580704014E312C278BA6A096CEF5EFDBFAFFFFF4FFEBE8E5F95450
        4CA1040200350000000300000000000000000000000000000000040302173F3B
        3591E4E1DAF2F0F7FAFFF7FAF7FFFFFFFFFFE5E4DFF07C7871B385837BC57C78
        71B3E5E4DFF0FFFFFFFFF7FAF7FFF0F7FAFFE4E1DAF23F3B3591030200250000
        00010000000000000000000000000000000001010105231E187AC8C7C6DEC7D3
        DDFF378DE4FF79BAF7FFF4F4EAFFFFFFF6FFFEFEF0FEFFFFF6FFF4F4EAFF78BA
        F7FF398FE4FFC7D3DDFFC8C7C6DE231E187A0000001100000000000000000000
        0000000000000000000000000000120E0B46A8A6A5C9F8EEE5FF0C85F0FF0079
        FFFF32A3FFFF8EC7FBFFE5F2FBFF90C8FBFF33A4FFFF0079FFFF0E88F1FFF8EE
        E5FFA8A6A5C9100C09560000000C000000000000000000000000000000000000
        000000000000110E0B3D969188BDFFFFEBFF66ADF8FF008BFFFF0093FFFF0093
        FFFF159FFFFF0094FFFF0093FFFF008BFFFF67ADF8FFFFFFEBFF979289BE0F0B
        08540000001800000005000000000000000000000000000000000E0C0A2E2B27
        22719F9D93DDFFFFECFF9DC7F5FF0088FFFF18A5FFFF17A4FFFF009BFFFF17A4
        FFFF18A5FFFF0088FFFF9CC8F5FFFFFFECFF9F9D93DD2B2722710B0906480000
        0014000000030000000000000000040303103A363077B4B3A5E5FEF6DFFEFFFF
        FFFF8BC6FFFF008EFFFF13A1FFFF20A6FFFF23A8FFFF23A7FFFF1AA4FFFF0090
        FFFF8AC5FFFFFFFFFFFFFEF6DFFEB4B3A6E53A36307701000031000000120000
        0003070605131C18154C8C897EB3FFFFF7FFFFFFFFFF9CD1FFFF4AAEFFFF59B6
        FFFF52B6FFFF42B0FFFF35AEFFFF23A5FFFF28A5FFFF1BA0FFFF0296FFFF88C4
        FFFFFFFFFFFFFFFFF4FF8C897EB31B1713590907053C0100001628262248E6E5
        D7F7FFFFFFFFFFFFFFFF8EC3FFFF58ADFFFF77C1FFFF82C7FFFF75C6FFFF6DC1
        FFFF5FBCFFFF52B8FFFF40ADFFFF1A9DFFFF0091FFFF0076FFFF53A1FBFFFFFF
        FFFFFFFFFFFFE5E0D1F75F5951AB13110F44DAD8D8F0FFFFFFFFFFFFFFFFC6DB
        F3FF9DC6FDFFABD4FFFFA5D4FFFF98CFFFFF91CDFFFF88CCFFFF77C6FFFF6DC1
        FFFF56B0FFFF4AA4FFFF499BFCFF2D8EF8FF157AE5FF89ADD6FFFFFFFFFFFFFF
        FFFFDBD9D8F134302B76FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFB3D5FFFF95CEFFFF92D2FFFF72BDFFFF88B6F2FFE8FE
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3A
        3678C8C5C3E1CFCDCAE6DCDAD8EEE9E8E6F6F1F1EFFAF8F7F7FDFDFDFDFFFFFF
        FFFFFFFFFFFFA8D0FFFF9BD3FFFF84B9FFFFF6FEF9FFFFFFFFFFFFFFFFFFFCFC
        FAFEF6F6F5FCF0EEEDF9E4E1E0F2D7D4D2EACECAC8E53C37355F2F2E2D39403D
        3B5443403D613A363164726D68A19D9994C0BFBDBAD9F4F4F3FBFFFFFFFFD3EB
        FFFF9FCCFFFFAFCEF6FFFFFFFFFFFCFAFAFEBFBDBAD99D9994C0726D68A13F3A
        356B38332F5F3F3C395C3735314F151311230000000000000000000000000000
        00000B0A0912191715282623213E9D9A96BDFEFEFEFFFFFFFFFF9FBDEBFFFFFF
        FFFFFFFFFFFFA39E9AC1292623521917152A0B0A091200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003D38345DEBE9E9F4FFFFFFFFFFFFFFFFFFFFFFFFEBE9E9F43B36
        316A000000080000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001B19
        1728726D6893FEFEFEFFFFFFFFFFFFFFFFFF726D68931A181537000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000003834314FE5E2
        E1EDFFFFFFFFE5E2E1ED35322E5C000000080000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000001514121D716C688CF6F5F5FA716C
        688C141311250000000000000000000000000000000000000000000000000000
        00000000000000000000}
      PaintStyle = psCaptionGlyph
      OnClick = BitBtn9Click
    end
    object tlb_print: TdxBarButton
      Caption = ' '#1087#1077#1095#1072#1090#1100
      Category = 0
      Hint = ' '#1087#1077#1095#1072#1090#1100' '
      Visible = ivNever
      Glyph.Data = {
        C6070000424DC607000000000000360000002800000016000000160000000100
        2000000000009007000000000000000000000000000000000000000000000000
        00030000000A000000130000001B000000260000002F00000032000000320000
        0032000000320000003200000032000000320000003200000031000000300000
        002C000000210000000F0000000400000000000000000000000E000000160000
        002F00000088000000A7000000B6000000B9000000B9000000B9000000B90000
        00B9000000B9000000B9000000B9000000B7000000AE0000008F000000410000
        001F0000001000000000000000010000000A0000001900000039000000A6E8FC
        FDFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF4FDFEFFD0E7E9FC000000A30000004F000000250000000E0000
        0007000000040000001C0000002D0000004A000000F5F3FDFEFFDDF1F7FFD2EC
        F4FFD6EEF6FFD2EAF1FFD2EAF1FFD6EEF6FFD2EAF1FFD2EAF1FFCFE8F0FFE6F6
        FAFFBEC5C5FF000000F3000000550000003600000029000000190F0B085E1913
        0DA219130DAB19130DB7000000FF8F8B88FFD8EFF6FFA7DBEBFFA9D8E7FF6A88
        91FF6A8891FFA5D3E2FF6A8891FF67858EFF6C8993FFE7F2F5FF676460FF0000
        00FF19130DB718130EAD19130DAB0F0B087419140E975B5C5BFF373637FF3736
        37FF090909FF4F4944FFEFF9FCFFB9E1ECFFB2DEECFFAAD4E2FFAED9E7FFAED9
        E7FFAED9E7FFABD5E3FFBFE0E9FFFAFDFEFF39332DFF090909FF5B5C5BFF3736
        37FF373637FF1A140EA71B150F94676667FF434142FF424143FF131312FF302B
        25FFF2F4F4FF7E9297FFADD5DFFF718B92FFACD4DEFF718B92FFACD4DEFF7089
        90FF819195FFE2E2E2FF231E18FF131312FF676767FF424243FF434143FF1A15
        0FA41C161090717273FF505051FF504F50FF2C2C2BFF1C1611FFB8B8B8FFC3D7
        DBFFACCFD8FFA7CAD3FFAACED7FFA7CAD3FFAACED7FFAACCD5FFC8D9DCFFA2A2
        A2FF1C1611FF2C2C2BFF717273FF515050FF514F50FF1C1610A11C17118B7F7D
        7DFF5E5E5FFF5F5E5FFF40403FFF000000FF686868FFC2CBCEFFA4C1C7FFA0BD
        C4FFA0BDC4FFA0BDC4FFA0BDC4FFA5C0C7FFC4CCCEFF5A5A5AFF000000FF4141
        40FF7F7D7DFF5F5E5FFF5E5F5FFF1C17129D1D181387898B89FF6D6C6DFF6C6D
        6DFF535351FF2F2F2EFF292521FF7A7773FF6C7371FF67716EFF67716EFF6771
        6EFF67716EFF6C7371FF7A7773FF292521FF2F2F2EFF50504EFF969595FF6D6C
        6CFF6D6C6DFF1D18139A1E191483939391FF787878FF787878FF5E5E5CFF3737
        36FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF363635FF545454FFA1A1A1FF787878FF787878FF1E19
        14961F1A157E9B9B9BFF808080FF808080FF676766FF4C4C4AFF5C5C5DFF5858
        58FF585959FF585959FF585959FF585859FF595959FF585959FF595958FF5F5F
        5FFF454545FF666667FFA7A7A7FF808080FF808080FF1F1A15921F1B167A8F8F
        8FFF898989FF898989FF686868FF545452FF7D7C7CFF807F7FFF838383FF8282
        82FF828282FF7C7C7CFF747373FF6C6C6CFF696A69FF6C6B6CFF4C4C4CFF7272
        72FFA6A6A6FF7D7D7DFF717171FF1F1B168E1F1B1675BCBCBBFFC4C4C4FFC2C2
        C2FFA3A2A3FF9F9E9FFFC0C1C1FFC2C3C3FFC4C4C4FFC4C4C4FFC4C4C4FFC2C2
        C2FFBFC0C0FFBEBEBEFFBDBCBDFFBBBCBBFF9E9E9FFFA9A9AAFFCCCCCCFFC1C1
        C1FFBBBBBBFF1F1B168A201B177099999AFF999796FF9C9D9DFF838383FF7979
        79FF9D9D9DFF979797FF979797FF979797FF979797FF979797FF979696FF9799
        99FF979796FF9D9D9DFF6F6F6FFF838383FFB5B5B5FF939393FF979797FF1F1B
        1781181511517A7A7AFF838383FF8E8E8EFF8E8E8EFF6A6A6AFF696969FF4C4C
        4CFF3F3F3FFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3F3F3FFF4C4C4CFF6969
        69FF616161FF8E8E8EFF949494FF808080FF7A7A7AFF1815125A000000000E0D
        0B2E1C181559201C1868201C18691A181AFFDBD8D5FFCAD3D3FFC3D0CFFFC3D0
        CFFFC3D0CFFFC3D0CFFFC3D0CFFFC3D0CFFFCAD3D3FFDBD8D5FF151315FF201C
        1879201C186E1B18155B0E0D0B31000000020000000000000000000000000000
        000000000000332C25ACF2F0EFFFCCE6E9FFC5E3E6FFC5E3E6FFC5E3E6FFC5E3
        E5FFC5E3E6FFC5E3E6FFCCE6E9FFF2F0EFFF332C25B900000019000000060000
        0000000000000000000000000000000000000000000000000000000000001F1B
        1771FFFFFFFFD6F1F4FFCFEDF1FFCFEDF1FFCFEDF1FFCFEDF1FFCFEDF1FFCFED
        F1FFD6F1F4FFFFFFFFFF201B1787000000170000000500000000000000000000
        00000000000000000000000000000000000000000000201C176EFFFFFFFFDBF7
        FAFFDBF7FAFFDBF7FAFFDBF7FAFFDBF7FAFFDBF7FAFFDBF7FAFFDBF7FAFFFFFF
        FFFF201C18810000001500000005000000000000000000000000000000000000
        0000000000000000000000000000201C186AE3FBFDFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FBFDFF201C18740000
        000D000000040000000000000000000000000000000000000000000000000000
        000000000000201C1869201C186A201C176B201C176B201C176B201C176B201C
        176B201C176B201C176B201C176B201C176B201C176B00000004000000010000
        00000000000000000000}
      PaintStyle = psCaptionGlyph
      OnClick = BitBtn12Click
    end
    object tlb_save1: TdxBarButton
      Caption = ' '#1101#1082#1089#1087#1086#1088#1090' '#1074' Excel '
      Category = 0
      Hint = ' '#1101#1082#1089#1087#1086#1088#1090' '#1074' Excel '
      Visible = ivAlways
      Glyph.Data = {
        C6070000424DC607000000000000360000002800000016000000160000000100
        2000000000009007000000000000000000000000000000000000000000000000
        00040000000E000000190000001C0000001E0000001F00000020000000200000
        002000000020000000200000002000000020000000200000001F0000001D0000
        001C00000019000000110000000A000000040000000000000012000000240000
        003300000038000000390000003B0000003C0000003C0000003C0000003C0000
        003C0000003C0000003C0000003C0000003B0000003900000036000000340000
        0030000000270000000F000000000E0B086018120DA619130CAF18130DB21813
        0DB318130DB318130DB318130DB318130DB318130DB318130DB318130DB31813
        0DB318130DB318130DB316110BA616110BA519130CB018130DAD0E0B07760000
        00190000000019130E99C97F75FFC97F75FFAD6558FFAA908DFFEACDCAFFFEF7
        F7FFFEF7F6FFFDF5F4FFFBF0EEFFF8E8E6FFF5DFDBFFF1D5D2FFECCBC7FFE6C0
        BAFFAD7B74F696574DF6C97F75FFC97F75FF19130DA90000001B000000001914
        0E97CA8076FFCA8076FFB36355FFBD9593FFFEF3F2FFE8C7C3FFD59992FFD8A1
        99FFFEF4F3FFFCEEECFFF9E6E3FFF5DCD9FFF1D2CFFFEDCAC5FFCD958FFEAE61
        58FECA8076FFCA8076FF1A140EA70000001B000000001A140F94CC8177FFCC81
        77FFB5665AFFC09B99FFFEF0EEFFB8746EFFC67970FFD39188FFFFF7F6FFFFF4
        F2FFFDEDEBFFFAE4E1FFF6DBD7FFF2D2CFFFD09890FFB16058FFCC8177FFCC81
        77FF1A150FA40000001B000000001B150F92CF857AFFCE8378FFBC695CFFC5A1
        9DFFFFECE9FFB1645CFFC87A71FFD6938AFFFFFAF9FFFFF8F6FFFFF4F2FFFFED
        EBFFFCE5E1FFF9DDD9FFD19993FFB36159FFCE8378FFCE8378FF1B1510A30000
        001B000000001B16108FD58F86FFD38A81FFC06C5FFFC8A4A0FFFFE9E6FFB365
        5DFFC4746AFFD28E84FFFFFCFBFFFFFDFBFFFFFBF9FFFFF6F3FFFFEEECFFFFE6
        E4FFD49C96FFB6645AFFD1847AFFD1847AFF1C1610A00000001A000000001D17
        128CDA9990FFD9988EFFD28579FFDBB7B3FFFFE5E1FFFFE8E4FFFFEDEAFFFFF4
        F1FFFFFBF9FFFFFEFDFFFFFFFFFFFFFEFDFFFFFAF9FFFADBD7FFD29189FFBF6D
        64FFD3867BFFD3867BFF1D17129E0000001A000000001D181289DE9F96FFDE9F
        96FFDD9D94FFDC9A91FFDA958BFFD88D82FFD6887DFFD6887DFFD6887DFFD688
        7DFFD6887DFFD6887DFFD6887DFFD6887DFFD6887DFFD6887DFFD6887DFFD688
        7DFF1D18129B0000001A000000001E191386E1A098FFD18980FFD28D84FFD18A
        82FFD0837AFFCC7970FFC97369FFC97268FFC87268FFC87268FFC87168FFC872
        69FFC9736AFFC9746CFFC8746BFFC8746AFFC76D62FFDA8A7FFF1E1913990000
        0019000000001E191483E4A299FFD69188FFEFC7C1FFF7D6D2FFF7D4D0FFF7D1
        CCFFF6CFCAFFF6CFCAFFF6CFCAFFF6CFCAFFF6CFCAFFF6CFCAFFF6CFCAFFF6CF
        CBFFF5CEC9FFECBAB5FFCD776DFFDE8C81FF1E19149600000019000000001E19
        147FE7A49BFFD8938AFFF8D9D4FFFFE9E6FFFFE8E5FFFFE7E4FFFFE6E3FFFFE6
        E2FFFFE6E2FFFFE6E2FFFFE6E2FFFFE6E2FFFFE6E2FFFFE6E2FFFFE4E1FFF7CF
        CBFFD0796EFFE18E83FF1E19149300000019000000001F1A157CEAA69CFFDB94
        8CFFFADBD8FFFFECEAFFFFECEAFFFFEBE8FFFFEAE7FFFFEAE7FFFFEAE7FFFFEA
        E7FFFFEAE7FFFFEAE7FFFFEAE7FFFFEAE7FFFFE9E6FFF8D3D0FFD37B71FFE591
        85FF1F1A159000000018000000001F1B1679ECA89EFFDD968EFFFADFDBFFFFF0
        EDFFFFF0EDFFFFEFECFFFFEEEBFFFFEEEBFFFFEEEBFFFFEEEBFFFFEEEBFFFFEE
        EBFFFFEEEBFFFFEEEBFFFFEDEAFFF9D7D3FFD67D72FFE89387FF1F1A168E0000
        0018000000001F1B1776EFADA3FFE09C93FFFAE3DFFFFFF3F1FFFFF3F1FFFFF3
        F0FFFFF2EFFFFFF2EFFFFFF2EFFFFFF2EFFFFFF2EFFFFFF2EFFFFFF1EFFFFFF1
        EEFFFFF0EDFFF9DAD5FFD77D72FFEB9589FF201B168B0000001800000000201B
        1773F3B4ACFFE5A69EFFFBE7E4FFFFF7F5FFFFF7F6FFFFF7F5FFFFF6F5FFFFF6
        F5FFFFF6F5FFFFF6F5FFFFF6F5FFFFF6F5FFFFF6F4FFFFF5F3FFFFF3F1FFF9DD
        D8FFD97F74FFEE978BFF201B17890000001800000000201B1771F6BCB4FFEAB1
        A9FFFCECE9FFFFFAF8FFFFFBF9FFFFFAF8FFFFFAF8FFFFFAF8FFFFFAF8FFFFFA
        F8FFFFFAF8FFFFFAF8FFFFFAF8FFFFF9F7FFFFF7F4FFFAE0DBFFDF8378FFF299
        8DFF201C17870000001700000000201C176EF8C2BBFFEFBDB7FFFDF0EDFFFFFC
        FAFFFFFCFAFFFFFCFAFFFFFCF9FFFFFCF9FFFFFCF9FFFFFCF9FFFFFCF9FFFFFC
        F9FFFFFCF9FFFFFBF8FFFFFAF6FFFBE5E0FFE08C82FFF49A8EFF201C17840000
        001700000000201C176CFAC8C1FFF1C4BFFFFDF2EFFFFFFDFBFFFFFEFBFFFFFE
        FBFFFFFEFBFFFFFEFBFFFFFEFBFFFFFEFBFFFFFEFBFFFFFEFBFFFFFEFBFFFFFD
        FAFFFFFCF9FFF7E7E4FFD68E87FFF69C90FF201B177F0000001400000000201C
        1869FCCCC6FFDCB4AEF2E7D9D6F2E8E4E2F2E8E6E2F2E8E6E2F2E8E6E2F2E8E6
        E2F2E8E6E2F2E8E6E2F2E8E6E2F2E8E6E2F2E8E6E2F2E8E4E1F2E8E3E0F2E5D0
        CCF2D18C81F2F9A295FF201C18720000000B0000000013110E3D201C18681D19
        165F1D19165F1D19165F1D19165F1D19165F1D19165F1D19165F1D19165F1D19
        165F1D19165F1D19165F1D19165F1D19165F1D19165F1D19165F1D19165F201C
        186913110E3F00000003}
      PaintStyle = psCaptionGlyph
      OnClick = tlb_save1Click
    end
    object tlb_save2: TdxBarButton
      Caption = ' '#1101#1082#1089#1087#1086#1088#1090' '#1074' Excel '
      Category = 0
      Hint = ' '#1101#1082#1089#1087#1086#1088#1090' '#1074' Excel '
      Visible = ivAlways
      Glyph.Data = {
        C6070000424DC607000000000000360000002800000016000000160000000100
        2000000000009007000000000000000000000000000000000000000000000000
        00040000000E000000190000001C0000001E0000001F00000020000000200000
        002000000020000000200000002000000020000000200000001F0000001D0000
        001C00000019000000110000000A000000040000000000000012000000240000
        003300000038000000390000003B0000003C0000003C0000003C0000003C0000
        003C0000003C0000003C0000003C0000003B0000003900000036000000340000
        0030000000270000000F000000000E0B086018120DA619130CAF18130DB21813
        0DB318130DB318130DB318130DB318130DB318130DB318130DB318130DB31813
        0DB318130DB318130DB316110BA616110BA519130CB018130DAD0E0B07760000
        00190000000019130E99C97F75FFC97F75FFAD6558FFAA908DFFEACDCAFFFEF7
        F7FFFEF7F6FFFDF5F4FFFBF0EEFFF8E8E6FFF5DFDBFFF1D5D2FFECCBC7FFE6C0
        BAFFAD7B74F696574DF6C97F75FFC97F75FF19130DA90000001B000000001914
        0E97CA8076FFCA8076FFB36355FFBD9593FFFEF3F2FFE8C7C3FFD59992FFD8A1
        99FFFEF4F3FFFCEEECFFF9E6E3FFF5DCD9FFF1D2CFFFEDCAC5FFCD958FFEAE61
        58FECA8076FFCA8076FF1A140EA70000001B000000001A140F94CC8177FFCC81
        77FFB5665AFFC09B99FFFEF0EEFFB8746EFFC67970FFD39188FFFFF7F6FFFFF4
        F2FFFDEDEBFFFAE4E1FFF6DBD7FFF2D2CFFFD09890FFB16058FFCC8177FFCC81
        77FF1A150FA40000001B000000001B150F92CF857AFFCE8378FFBC695CFFC5A1
        9DFFFFECE9FFB1645CFFC87A71FFD6938AFFFFFAF9FFFFF8F6FFFFF4F2FFFFED
        EBFFFCE5E1FFF9DDD9FFD19993FFB36159FFCE8378FFCE8378FF1B1510A30000
        001B000000001B16108FD58F86FFD38A81FFC06C5FFFC8A4A0FFFFE9E6FFB365
        5DFFC4746AFFD28E84FFFFFCFBFFFFFDFBFFFFFBF9FFFFF6F3FFFFEEECFFFFE6
        E4FFD49C96FFB6645AFFD1847AFFD1847AFF1C1610A00000001A000000001D17
        128CDA9990FFD9988EFFD28579FFDBB7B3FFFFE5E1FFFFE8E4FFFFEDEAFFFFF4
        F1FFFFFBF9FFFFFEFDFFFFFFFFFFFFFEFDFFFFFAF9FFFADBD7FFD29189FFBF6D
        64FFD3867BFFD3867BFF1D17129E0000001A000000001D181289DE9F96FFDE9F
        96FFDD9D94FFDC9A91FFDA958BFFD88D82FFD6887DFFD6887DFFD6887DFFD688
        7DFFD6887DFFD6887DFFD6887DFFD6887DFFD6887DFFD6887DFFD6887DFFD688
        7DFF1D18129B0000001A000000001E191386E1A098FFD18980FFD28D84FFD18A
        82FFD0837AFFCC7970FFC97369FFC97268FFC87268FFC87268FFC87168FFC872
        69FFC9736AFFC9746CFFC8746BFFC8746AFFC76D62FFDA8A7FFF1E1913990000
        0019000000001E191483E4A299FFD69188FFEFC7C1FFF7D6D2FFF7D4D0FFF7D1
        CCFFF6CFCAFFF6CFCAFFF6CFCAFFF6CFCAFFF6CFCAFFF6CFCAFFF6CFCAFFF6CF
        CBFFF5CEC9FFECBAB5FFCD776DFFDE8C81FF1E19149600000019000000001E19
        147FE7A49BFFD8938AFFF8D9D4FFFFE9E6FFFFE8E5FFFFE7E4FFFFE6E3FFFFE6
        E2FFFFE6E2FFFFE6E2FFFFE6E2FFFFE6E2FFFFE6E2FFFFE6E2FFFFE4E1FFF7CF
        CBFFD0796EFFE18E83FF1E19149300000019000000001F1A157CEAA69CFFDB94
        8CFFFADBD8FFFFECEAFFFFECEAFFFFEBE8FFFFEAE7FFFFEAE7FFFFEAE7FFFFEA
        E7FFFFEAE7FFFFEAE7FFFFEAE7FFFFEAE7FFFFE9E6FFF8D3D0FFD37B71FFE591
        85FF1F1A159000000018000000001F1B1679ECA89EFFDD968EFFFADFDBFFFFF0
        EDFFFFF0EDFFFFEFECFFFFEEEBFFFFEEEBFFFFEEEBFFFFEEEBFFFFEEEBFFFFEE
        EBFFFFEEEBFFFFEEEBFFFFEDEAFFF9D7D3FFD67D72FFE89387FF1F1A168E0000
        0018000000001F1B1776EFADA3FFE09C93FFFAE3DFFFFFF3F1FFFFF3F1FFFFF3
        F0FFFFF2EFFFFFF2EFFFFFF2EFFFFFF2EFFFFFF2EFFFFFF2EFFFFFF1EFFFFFF1
        EEFFFFF0EDFFF9DAD5FFD77D72FFEB9589FF201B168B0000001800000000201B
        1773F3B4ACFFE5A69EFFFBE7E4FFFFF7F5FFFFF7F6FFFFF7F5FFFFF6F5FFFFF6
        F5FFFFF6F5FFFFF6F5FFFFF6F5FFFFF6F5FFFFF6F4FFFFF5F3FFFFF3F1FFF9DD
        D8FFD97F74FFEE978BFF201B17890000001800000000201B1771F6BCB4FFEAB1
        A9FFFCECE9FFFFFAF8FFFFFBF9FFFFFAF8FFFFFAF8FFFFFAF8FFFFFAF8FFFFFA
        F8FFFFFAF8FFFFFAF8FFFFFAF8FFFFF9F7FFFFF7F4FFFAE0DBFFDF8378FFF299
        8DFF201C17870000001700000000201C176EF8C2BBFFEFBDB7FFFDF0EDFFFFFC
        FAFFFFFCFAFFFFFCFAFFFFFCF9FFFFFCF9FFFFFCF9FFFFFCF9FFFFFCF9FFFFFC
        F9FFFFFCF9FFFFFBF8FFFFFAF6FFFBE5E0FFE08C82FFF49A8EFF201C17840000
        001700000000201C176CFAC8C1FFF1C4BFFFFDF2EFFFFFFDFBFFFFFEFBFFFFFE
        FBFFFFFEFBFFFFFEFBFFFFFEFBFFFFFEFBFFFFFEFBFFFFFEFBFFFFFEFBFFFFFD
        FAFFFFFCF9FFF7E7E4FFD68E87FFF69C90FF201B177F0000001400000000201C
        1869FCCCC6FFDCB4AEF2E7D9D6F2E8E4E2F2E8E6E2F2E8E6E2F2E8E6E2F2E8E6
        E2F2E8E6E2F2E8E6E2F2E8E6E2F2E8E6E2F2E8E6E2F2E8E4E1F2E8E3E0F2E5D0
        CCF2D18C81F2F9A295FF201C18720000000B0000000013110E3D201C18681D19
        165F1D19165F1D19165F1D19165F1D19165F1D19165F1D19165F1D19165F1D19
        165F1D19165F1D19165F1D19165F1D19165F1D19165F1D19165F1D19165F201C
        186913110E3F00000003}
      PaintStyle = psCaptionGlyph
      OnClick = tlb_save2Click
    end
    object tlb_save3: TdxBarButton
      Caption = ' '#1101#1082#1089#1087#1086#1088#1090' '#1074' Excel '
      Category = 0
      Hint = ' '#1101#1082#1089#1087#1086#1088#1090' '#1074' Excel '
      Visible = ivAlways
      Glyph.Data = {
        C6070000424DC607000000000000360000002800000016000000160000000100
        2000000000009007000000000000000000000000000000000000000000000000
        00040000000E000000190000001C0000001E0000001F00000020000000200000
        002000000020000000200000002000000020000000200000001F0000001D0000
        001C00000019000000110000000A000000040000000000000012000000240000
        003300000038000000390000003B0000003C0000003C0000003C0000003C0000
        003C0000003C0000003C0000003C0000003B0000003900000036000000340000
        0030000000270000000F000000000E0B086018120DA619130CAF18130DB21813
        0DB318130DB318130DB318130DB318130DB318130DB318130DB318130DB31813
        0DB318130DB318130DB316110BA616110BA519130CB018130DAD0E0B07760000
        00190000000019130E99C97F75FFC97F75FFAD6558FFAA908DFFEACDCAFFFEF7
        F7FFFEF7F6FFFDF5F4FFFBF0EEFFF8E8E6FFF5DFDBFFF1D5D2FFECCBC7FFE6C0
        BAFFAD7B74F696574DF6C97F75FFC97F75FF19130DA90000001B000000001914
        0E97CA8076FFCA8076FFB36355FFBD9593FFFEF3F2FFE8C7C3FFD59992FFD8A1
        99FFFEF4F3FFFCEEECFFF9E6E3FFF5DCD9FFF1D2CFFFEDCAC5FFCD958FFEAE61
        58FECA8076FFCA8076FF1A140EA70000001B000000001A140F94CC8177FFCC81
        77FFB5665AFFC09B99FFFEF0EEFFB8746EFFC67970FFD39188FFFFF7F6FFFFF4
        F2FFFDEDEBFFFAE4E1FFF6DBD7FFF2D2CFFFD09890FFB16058FFCC8177FFCC81
        77FF1A150FA40000001B000000001B150F92CF857AFFCE8378FFBC695CFFC5A1
        9DFFFFECE9FFB1645CFFC87A71FFD6938AFFFFFAF9FFFFF8F6FFFFF4F2FFFFED
        EBFFFCE5E1FFF9DDD9FFD19993FFB36159FFCE8378FFCE8378FF1B1510A30000
        001B000000001B16108FD58F86FFD38A81FFC06C5FFFC8A4A0FFFFE9E6FFB365
        5DFFC4746AFFD28E84FFFFFCFBFFFFFDFBFFFFFBF9FFFFF6F3FFFFEEECFFFFE6
        E4FFD49C96FFB6645AFFD1847AFFD1847AFF1C1610A00000001A000000001D17
        128CDA9990FFD9988EFFD28579FFDBB7B3FFFFE5E1FFFFE8E4FFFFEDEAFFFFF4
        F1FFFFFBF9FFFFFEFDFFFFFFFFFFFFFEFDFFFFFAF9FFFADBD7FFD29189FFBF6D
        64FFD3867BFFD3867BFF1D17129E0000001A000000001D181289DE9F96FFDE9F
        96FFDD9D94FFDC9A91FFDA958BFFD88D82FFD6887DFFD6887DFFD6887DFFD688
        7DFFD6887DFFD6887DFFD6887DFFD6887DFFD6887DFFD6887DFFD6887DFFD688
        7DFF1D18129B0000001A000000001E191386E1A098FFD18980FFD28D84FFD18A
        82FFD0837AFFCC7970FFC97369FFC97268FFC87268FFC87268FFC87168FFC872
        69FFC9736AFFC9746CFFC8746BFFC8746AFFC76D62FFDA8A7FFF1E1913990000
        0019000000001E191483E4A299FFD69188FFEFC7C1FFF7D6D2FFF7D4D0FFF7D1
        CCFFF6CFCAFFF6CFCAFFF6CFCAFFF6CFCAFFF6CFCAFFF6CFCAFFF6CFCAFFF6CF
        CBFFF5CEC9FFECBAB5FFCD776DFFDE8C81FF1E19149600000019000000001E19
        147FE7A49BFFD8938AFFF8D9D4FFFFE9E6FFFFE8E5FFFFE7E4FFFFE6E3FFFFE6
        E2FFFFE6E2FFFFE6E2FFFFE6E2FFFFE6E2FFFFE6E2FFFFE6E2FFFFE4E1FFF7CF
        CBFFD0796EFFE18E83FF1E19149300000019000000001F1A157CEAA69CFFDB94
        8CFFFADBD8FFFFECEAFFFFECEAFFFFEBE8FFFFEAE7FFFFEAE7FFFFEAE7FFFFEA
        E7FFFFEAE7FFFFEAE7FFFFEAE7FFFFEAE7FFFFE9E6FFF8D3D0FFD37B71FFE591
        85FF1F1A159000000018000000001F1B1679ECA89EFFDD968EFFFADFDBFFFFF0
        EDFFFFF0EDFFFFEFECFFFFEEEBFFFFEEEBFFFFEEEBFFFFEEEBFFFFEEEBFFFFEE
        EBFFFFEEEBFFFFEEEBFFFFEDEAFFF9D7D3FFD67D72FFE89387FF1F1A168E0000
        0018000000001F1B1776EFADA3FFE09C93FFFAE3DFFFFFF3F1FFFFF3F1FFFFF3
        F0FFFFF2EFFFFFF2EFFFFFF2EFFFFFF2EFFFFFF2EFFFFFF2EFFFFFF1EFFFFFF1
        EEFFFFF0EDFFF9DAD5FFD77D72FFEB9589FF201B168B0000001800000000201B
        1773F3B4ACFFE5A69EFFFBE7E4FFFFF7F5FFFFF7F6FFFFF7F5FFFFF6F5FFFFF6
        F5FFFFF6F5FFFFF6F5FFFFF6F5FFFFF6F5FFFFF6F4FFFFF5F3FFFFF3F1FFF9DD
        D8FFD97F74FFEE978BFF201B17890000001800000000201B1771F6BCB4FFEAB1
        A9FFFCECE9FFFFFAF8FFFFFBF9FFFFFAF8FFFFFAF8FFFFFAF8FFFFFAF8FFFFFA
        F8FFFFFAF8FFFFFAF8FFFFFAF8FFFFF9F7FFFFF7F4FFFAE0DBFFDF8378FFF299
        8DFF201C17870000001700000000201C176EF8C2BBFFEFBDB7FFFDF0EDFFFFFC
        FAFFFFFCFAFFFFFCFAFFFFFCF9FFFFFCF9FFFFFCF9FFFFFCF9FFFFFCF9FFFFFC
        F9FFFFFCF9FFFFFBF8FFFFFAF6FFFBE5E0FFE08C82FFF49A8EFF201C17840000
        001700000000201C176CFAC8C1FFF1C4BFFFFDF2EFFFFFFDFBFFFFFEFBFFFFFE
        FBFFFFFEFBFFFFFEFBFFFFFEFBFFFFFEFBFFFFFEFBFFFFFEFBFFFFFEFBFFFFFD
        FAFFFFFCF9FFF7E7E4FFD68E87FFF69C90FF201B177F0000001400000000201C
        1869FCCCC6FFDCB4AEF2E7D9D6F2E8E4E2F2E8E6E2F2E8E6E2F2E8E6E2F2E8E6
        E2F2E8E6E2F2E8E6E2F2E8E6E2F2E8E6E2F2E8E6E2F2E8E4E1F2E8E3E0F2E5D0
        CCF2D18C81F2F9A295FF201C18720000000B0000000013110E3D201C18681D19
        165F1D19165F1D19165F1D19165F1D19165F1D19165F1D19165F1D19165F1D19
        165F1D19165F1D19165F1D19165F1D19165F1D19165F1D19165F1D19165F201C
        186913110E3F00000003}
      PaintStyle = psCaptionGlyph
      OnClick = tlb_save3Click
    end
    object tlb_auto: TdxBarButton
      Caption = #1056#1072#1089#1087#1086#1079#1085#1072#1090#1100' '#1072#1074#1090#1086#1084#1072#1090'. '
      Category = 0
      Hint = #1056#1072#1089#1087#1086#1079#1085#1072#1090#1100' '#1072#1074#1090#1086#1084#1072#1090'. '
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000059565608ADA9A99EB9B5B5BCB8B4B4B9B7B4B4B8DFDDDDD848A04AE93FBB
        53FDB7CDB6E7B4B0B0AFAAA6A692615E5E070000000000000000000000000000
        0000615E5E11B7B3B3DEDBD9D9FFDBDBDBFFE7E7E7FF61AB62FF5ADB80FF75F2
        96FF3EB850FFECECEBFFB7B3B3DE6A6767100000000000000000000000000000
        000000000000827E7E0197939369DBDADAFF489849FF55D679FF73EC8BFF77F0
        8CFF62E488FF3B953AD5FDFDFD7A000000000000000000000000AEA9A85EBAB8
        B8FFBAB8B8FFBAB8B8FFDAD9D9FF58A958FF53D377FF6AE182FF60E086FF5CDE
        82FF6DED87FF43C45EFFCCD1CAFFBAB8B8FFBAB8B8FF9A959561BAB8B8FFE9E4
        E3FFE7E1E1FFE7E1E1FFF2EFEFFF41C558FF5DD477FF57D87CFF5CB95DFF4BB4
        4FFF68EB8DFF5DE280FF43B149FFF0EDEDFFE4DFDFFFBAB8B8FFBAB8B8FFE7E1
        E1FFE5DFDEFFE5DEDEFFF1EDEDFF64BC63FF43C558FF6BBB6AFFF3F1F1FFDADF
        D8FF48CB63FF5CE073FF4AD06DFF79B076FFF2EFEFFFBAB8B8FFBAB8B8FFE7E1
        E1FFC77257FFC77559FFC77B5CFFE1BDABFFE1C1ADFFE1C2AEFFC58964FFE0BD
        ABFF589339FF54DB79FF4CD563FF3CBF53FFDDE2DAFFBAB8B8FFBAB8B8FFE7E1
        E1FFE86341FFE96C45FFEA7F4FFFEC955BFFEEA966FFEFB56CFFEEAC67FFED99
        5DFFF3BDA2FF40B441FF4DD76CFF48D367FF3CB447FFD8D8D7FFBAB8B8FFE7E1
        E1FFE86240FFE96A43FFEA7B4DFFEC8F58FFEEA161FFEEA966FFEEA362FFEC93
        5AFFEA7F4FFFDAB297FF3EC455FF45D05CFF48D26BFF4BA84DFFBAB8B8FFE7E1
        E1FFE96D4EFFE86541FFE97248FFEB8251FFEC8F58FFEC955BFFEC9159FFEB85
        52FFEA754AFFF3AF9BFF8B7632FF43CB62FF47D261FF3CBD51FFBAB8B8FFE7E1
        E1FFED856BFFED856BFFEA7654FFEA7349FFEA7B4DFFEA7F4FFFEA7C4EFFEA74
        49FFE96A43FFE8623FFFF3AB99FF768431FF3FBE50FF67A866FFBAB8B8FFE7E1
        E1FFED8970FFEF947DFFEF937BFFEE9177FFED896AFFEC815EFFEB7855FFEA70
        4EFFE96A49FFE96A4AFFE96D4EFFF4B3A3FFF2EFEFFFDAD9D9FFBAB8B8FFE7E1
        E1FFEE8D75FFF09983FFF09882FFF09781FFEF967FFFEF957EFFEF947DFFEF93
        7CFFEF927AFFEF9079FFEE8F78FFED866DFFE7E1E1FFBAB8B8FFBAB8B8FFE7E1
        E1FFED876DFFEF9179FFEF9078FFEE8F77FFEE8E76FFEE8E75FFEE8D75FFEE8C
        74FFEE8B73FFEE8B72FFEE8A71FFEC8268FFE7E1E1FFBAB8B8FFBAB8B8FFE7E1
        E1FFE7E1E1FFE7E1E1FFE7E1E1FFE7E1E1FFE7E1E1FFE7E1E1FFE7E1E1FFE7E1
        E1FFE7E1E1FFE7E1E1FFE7E1E1FFE7E1E1FFE7E1E1FFBAB8B8FFC1BCBB65BAB8
        B8FFBAB8B8FFBAB8B8FFBAB8B8FFBAB8B8FFBAB8B8FFBAB8B8FFBAB8B8FFBAB8
        B8FFBAB8B8FFBAB8B8FFBAB8B8FFBAB8B8FFBAB8B8FFABA6A667}
      PaintStyle = psCaptionGlyph
      OnClick = tlb_autoClick
    end
    object chb_proc: TcxBarEditItem
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1085#1077#1088#1072#1079#1085#1077#1089#1077#1085#1085#1099#1077
      Category = 0
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1085#1077#1088#1072#1079#1085#1077#1089#1077#1085#1085#1099#1077
      Visible = ivAlways
      ShowCaption = True
      Width = 50
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.DisplayChecked = '1'
      Properties.DisplayUnchecked = '0'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Properties.OnChange = chbPropertiesChange
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1056#1072#1089#1087#1086#1079#1085#1072#1090#1100'...'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'tlb_raspozn'
        end
        item
          Visible = True
          ItemName = 'tlb_auto'
        end>
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077'...'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'tlb_add'
        end
        item
          Visible = True
          ItemName = 'tlb_edit'
        end
        item
          Visible = True
          ItemName = 'tlb_del'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_minus'
        end
        item
          Visible = True
          ItemName = 'btn_cleim'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bb_pack_ins'
        end
        item
          Visible = True
          ItemName = 'bb_pack_del'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnExportInvoice'
        end
        item
          Visible = True
          ItemName = 'btnImportInvoice'
        end
        item
          Visible = True
          ItemName = 'btnExportInvoice2'
        end
        item
          Visible = True
          ItemName = 'btnCheckLoad'
        end
        item
          Visible = True
          ItemName = 'btnCopyInvoice'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tlb_save1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnSearchInvoices'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'chbArchive'
        end
        item
          Visible = True
          ItemName = 'chbZak'
        end
        item
          Visible = True
          ItemName = 'bbArchive'
        end
        item
          Visible = True
          ItemName = 'bbzak'
        end>
      OnPopup = dxBarSubItem2Popup
    end
    object chb_sended: TcxBarEditItem
      Caption = #1057#1082#1088#1099#1090#1100' '#1087#1086#1076#1075#1088#1091#1078#1077#1085#1085#1099#1077
      Category = 0
      Hint = #1057#1082#1088#1099#1090#1100' '#1087#1086#1076#1075#1088#1091#1078#1077#1085#1085#1099#1077
      Visible = ivAlways
      ShowCaption = True
      Width = 100
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Properties.OnChange = chb_sendedPropertiesChange
      InternalEditValue = '1'
    end
    object btn_minus: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1082#1083#1077#1081#1084
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1082#1083#1077#1081#1084
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000B5A7A176B1A29DEDB2A39EF2B1A29CF2B1A19BF2B0A19AF2B0A099F2D6CD
        CAF850AC54FC44BB59FE4DA852FBE3DDDBB80000000000000000000000000000
        0000B1A39EE9EBE2DFFFE9DDD9FFE7DBD6FFE5D8D3FFE4D6D1FFE3D4CEFFEFE7
        E3FF56C165FF3DCB4DFF53BF63FFD5CBC8F50000000000000000000000000000
        0000B3A6A1EFEBE1DEFFE7DAD6FFBFB2AEFFDCD5D2FFEFE7E4FFEFE6E2FFDBD3
        D0FF54BF63FF47D258FF54C063FFD5CCC9F8FFFFFF78FFFFFF78000000000000
        0000B4A7A2EFECE3E0FFE8DCD8FFBDB0ACFFDBD4D1FF63C368FF61CB71FF5BC4
        6BFF58D778FF5BE06EFF4DCF6DFF4CB75CFD38BA4FD330AC3DC0000000000000
        0000B5A8A3EFEDE4E1FFE9DEDAFFBEB1ADFFDBD4D2FF54CD69FF65DD78FF6FE9
        84FF73EF89FF6DED82FF5EE271FF4CD55EFF3FCC50FF3ABE53EC000000000000
        0000B5A9A4EFEEE6E3FFEAE0DCFFBEB2AEFFDCD5D3FF61C667FF5DCB6DFF59C5
        69FF5BDA7CFF73EF89FF5BDB7BFF52BE62FD3CC053D532B03FC2000000000000
        0000B6AAA5EFEFE7E4FFECE1DEFFBFB3AFFFDCD5D3FFF2EBE8FFF1E9E7FFDBD4
        D1FF59C568FF6DE681FF60CB71FFD6CECBF80000000000000000000000000000
        0000B7AAA6EFF0E8E6FFEDE3DFFFBFB4B0FFBDB1ADFFE8DBD6FFE6D8D3FFDBD4
        D1FF56C266FF5FD772FF5FCB6FFFD6CECBF80000000000000000000000000000
        0000B7ABA7EFF1E9E7FFEEE5E1FFC0B5B1FFBEB2AEFFE9DDD9FFE7DAD5FFDCD5
        D3FF59BA5EFF54CA67FF62C367FFD7CFCCF80000000000000000000000000000
        0000B2A7A3EFEAE3E1FFE7DFDCFFBBB0ADFFB9AEAAFFE3D8D4FFE1D5D1FFD9D3
        D0FFD8D1CEFFECE4E1FFEDE6E3FFD5CDCAF8000000000000000000000000B5A9
        A5C7B4A9A5FDB8ADA9FFB7ABA6FFB1A49FFFAFA19BFFB1A29CFFAF9F99FFAA99
        93FFA99891FFAD9C94FFAD9C94FFA99890FDA9978FCB0000000000000000B9AE
        AAEFF7F3F2FFF6F1F0FFF5F0EEFFF4EEECFFF3ECEAFFF1EBE8FFF0E9E6FFEFE7
        E4FFEEE6E3FFEDE4E1FFECE3E0FFEEE5E2FFAE9D95F10000000000000000B7AC
        A8E9F5F1F0FFF5F1EFFFF5EFEDFFF3EDEBFFF2ECE9FFF1EAE7FFF0E8E5FFEFE6
        E3FFEEE5E2FFEDE3E0FFECE2DEFFECE3E0FFAC9A93EC0000000000000000BDB2
        AF73B7ACA8E9B9AEAAEFB9ADAAEFB7ACA8FAB7ABA7F4B6AAA5EFB4A7A2EFB0A1
        9BF9AF9F99F6AF9F98EFAD9C96EFAB9A92E9B1A1997500000000000000000000
        0000000000000000000000000000B8ACA8A8B8ACA893BEB2AD3FBBAEA93FAC9B
        94C4B3A39C6B0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000B3A7A338B3A7A3CFB1A49FDFAEA09BDFAB9B
        95BCAA9993150000000000000000000000000000000000000000}
      OnClick = btn_minusClick
    end
    object btn_cleim: TdxBarButton
      Caption = #1047#1072#1082#1086#1085#1095#1080#1090#1100' '#1082#1083#1077#1081#1084
      Category = 0
      Hint = #1047#1072#1082#1086#1085#1095#1080#1090#1100' '#1082#1083#1077#1081#1084
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000949090D79C9898F59A9696F5999595F5989494F5979393F58F8E8CF550AA
        58FC50A758FC938F8FF5938F8FF5938F8FF5898585D200000000000000000000
        00009B9797EFFAF6F4FFF7EFECFFF6EDEAFFF6ECE8FFECE3DFFF68C26EFF70EC
        92FF68E68BFFA1C498FFF4E8E3FFF8F1EFFF8D8989E900000000000000000000
        00009D9898EFF9F3F0FFF5E8E3FFF3E5E0FFE6D9D2FF64C169FF69E48AFF75EF
        90FF74F08DFF53C769FFDFCFC3FFF5EAE5FF8E8A8AE900000000000000000000
        00009E9A9AEFFAF5F3FFF6ECE8FFF5EAE5FF6FC772FF5FD87DFF67E288FF57C3
        63FF63E386FF63E785FF7CBA74FFF5EAE5FF8E8A8AE900000000000000000000
        00009F9B9BEFFAF6F4FFF8EFECFFF7EEEAFF5EC969FF58D67AFF6CC66FFFEBDF
        D7FF63C56BFF65E780FF4CD06DFFC2CFB7FF8F8B8BE900000000000000000000
        0000A09C9CEFFAF6F4FFF9F1EEFFF8F0EDFFDFDFD3FFB2C9A9FFF2E7E3FFF5E8
        E3FFC6CDB7FF52D572FF52D96AFF52C263FF898885EA00000000000000000000
        0000A19D9DEFFAF6F4FFF9F1EEFFF9F1EEFFF9F0EDFFF8F0EDFFF7EEEBFFF6EC
        E8FFF5E9E5FF85C481FF50D871FF48D266FF4FA054F700000000000000000000
        0000A39E9EEFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF8F0EDFFF8EF
        ECFFF7EDEAFFEFE6E0FF5BC566FF46D160FF46CF67FF26932767000000000000
        0000A49F9FEFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
        EEFFF8F0EDFFF8EFEBFFD8DBCCFF4BC863FF46D05EFF3BBF52DE000000000000
        0000A5A0A0EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
        EEFFF9F1EEFFF9F0EDFFF8F0ECFFC6DAC1FF4AB559FB29A02C6A000000000000
        0000A6A1A1EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
        EEFFF9F1EEFFF8F0EDFFF8F0EDFFFAF6F4FF959191E900000000000000000000
        0000A6A2A2EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
        EEFFF8F0EDFFEEE6E3FFE4DCDAFFE7E4E2FF928E8EE900000000000000000000
        0000A7A3A3EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
        EEFFF7EFECFFA5A0A0FF9E9A9AFF999595FF938E8EE100000000000000000000
        0000A8A3A3EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
        EEFFF7EFECFFA19D9DFFD3D1D2FF9A9696EE9C98983400000000000000000000
        0000A9A4A4EFFBF9F8FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6
        F4FFFAF5F4FFA19C9CFF9C9898EE9D9999340000000000000000000000000000
        0000A49F9FD2A9A4A4EFA8A3A3EFA7A3A3EFA6A2A2EFA6A1A1EFA5A0A0EFA49F
        9FEFA39E9EEF9A9595E1A39E9E34000000000000000000000000}
      OnClick = btn_cleimClick
    end
    object cb_asis: TcxBarEditItem
      Caption = #1057#1099#1088#1086#1081' '#1080#1085#1074#1086#1081#1089
      Category = 0
      Hint = #1057#1099#1088#1086#1081' '#1080#1085#1074#1086#1081#1089
      Visible = ivAlways
      ShowCaption = True
      Width = 30
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.DisplayChecked = #1076#1072
      Properties.DisplayUnchecked = #1085#1077#1090
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnEditValueChanged = cb_asisPropertiesEditValueChanged
    end
    object btn_stickers: TdxBarButton
      Caption = #1089#1090#1080#1082#1077#1088#1099' '
      Category = 0
      Hint = #1089#1090#1080#1082#1077#1088#1099' '
      Visible = ivAlways
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
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
        00040000000D0000001200000008000000050000000C000000160000001C0000
        001E0000001F0000001F0000001F0000001F0000001E0000001D0000001C0000
        001A000000180000001100000011000000090000000400000000000000000000
        000C0000001F000000200F2D137B1A4B20AD0E2A137D040B054B0000002D0000
        0028000000320000003B0000013E0000013E0000013D0000013C0000013A0000
        0138000000300B0B0C4514141550101011410000000800000000000000000000
        000000000000040C06152D9147FE2E9247FF2E9247FF2B8A44F3216C36BF1545
        227A081C0E360000000700000000000000000000000000000004000000040000
        00010C0C0C1D0E0E0F22000000001314142D0000000000000000000000000000
        00000000000010371F572DA159FF2DA15AFF2DA15AFF2DA159FF2DA059FF2DA0
        58FF2DA158FF268A4DD91A6237980E341D4F030D071300000000000000000202
        02031515162F000000000D0D0D1C101010220000000000000000000000000000
        0000000000001C6D41A02DAD68FF2DAD68FF2DAD68FF2DAD68FF2DAD68FF2DAE
        68FF2DAD68FF2DAD68FF2DAC67FF2CAC67FF2AA462F21A663E96000000000A07
        08110A0A0A150909091518191938000000010000000000000000000000000000
        00000001010225A064E02AB673FF2AB673FF2AB673FF2AB673FF2AB673FF2AB6
        73FF2AB673FF2AB673FF2AB673FF2AB673FF2BB572FF2BB572FF19774AA20C06
        0916171517351010102500000000000000000000000000000000000000000000
        00000725193226BD7DFF27BE7DFF27BE7DFF27BE7DFF27BE7DFF27BE7DFF27BE
        7DFF27BE7DFF27BE7DFF27BE7DFF27BE7DFF27BE7DFF27C07FFF25BE7FFF3679
        60C810080C1B0000000000000000000000000000000000000000000000000000
        00000D3324422CC388FF22C185FF1FC183FF21C184FF23C184FF23C184FF23C1
        84FF23C184FF23C184FF23C184FF23C184FF23C286FF22C07FFE357E46E0318C
        4CEA0B3725470000000000000000000000000000000000000000000000000000
        00000103020320533E6830946EBB33BF8CF42BC68FFF21C58CFF1BC48AFF1BC3
        8AFF1DC48AFF1EC48AFF1EC48AFF1EC48AFF1DC890FF22AF66FC211602442A44
        1F8C197544AB0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B1310171C4535552A8162A131B487E22BCA
        95FF21C893FF18C791FF15C690FF16C690FF16C791FF1BC58DFF27904BDD2579
        3FBE082F223D0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000040404051330
        253A236A52832DA37DCA2BC99AFB27CC9BFF2BBE90EC248C6DAD15514161040F
        0F0F000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000A19141E10282030060B0A0D00000000000000000000
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
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
      OnClick = btn_stickersClick
    end
    object dxBarStatic2: TdxBarStatic
      Caption = 'Ctrl+Tab - '#1087#1077#1088#1077#1082#1083#1102#1095#1077#1085#1080#1077' '#1084#1077#1078#1076#1077' '#1090#1072#1073#1083#1080#1094#1072#1084#1080
      Category = 0
      Hint = 'Ctrl+Tab - '#1087#1077#1088#1077#1082#1083#1102#1095#1077#1085#1080#1077' '#1084#1077#1078#1076#1077' '#1090#1072#1073#1083#1080#1094#1072#1084#1080
      Visible = ivAlways
    end
    object dxBarStatic3: TdxBarStatic
      Category = 0
      Style = st_dubls
      Visible = ivAlways
      AllowClick = True
      Width = 30
      OnClick = dxBarStatic3Click
    end
    object dxBarStatic4: TdxBarStatic
      Caption = ' - '#1086#1076#1080#1085#1072#1082#1086#1074#1099#1077' '#1087#1086#1079#1080#1094#1080#1080' '#1074' '#1080#1085#1074#1086#1081#1089#1077
      Category = 0
      Hint = ' - '#1086#1076#1080#1085#1072#1082#1086#1074#1099#1077' '#1087#1086#1079#1080#1094#1080#1080' '#1074' '#1080#1085#1074#1086#1081#1089#1077
      Visible = ivAlways
    end
    object dxBarStatic5: TdxBarStatic
      Category = 0
      Style = st_storn
      Visible = ivAlways
      AllowClick = True
      Width = 30
      OnClick = dxBarStatic5Click
    end
    object dxBarStatic6: TdxBarStatic
      Caption = ' - '#1089#1090#1086#1088#1085#1080#1088#1086#1074#1072#1085#1085#1099#1077' '#1087#1086#1079#1080#1094#1080#1080
      Category = 0
      Hint = ' - '#1089#1090#1086#1088#1085#1080#1088#1086#1074#1072#1085#1085#1099#1077' '#1087#1086#1079#1080#1094#1080#1080
      Visible = ivAlways
    end
    object bs_services: TdxBarSubItem
      Caption = ' '#1057#1077#1088#1074#1080#1089' '
      Category = 0
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000837F7F5A918D8DEB908C8CED8884
        8468000000000000000000000000000000000000000000000000000000000000
        0000000000005B58582A5B58582500000000928D8DE3E8DCD8FFEADED9FF8F8A
        8AE300000000595656235D5A5A2C000000000000000000000000000000000000
        0000938E8E90ADA8A8FFA7A3A2FE948F8F87969292F4F1E0DAFFF0DFD9FF9692
        92F88F8A8A93A29D9DFEA6A1A1FF8B87879B000000000000000000000000625F
        5F25ABA7A6FEF0E1DCFFEEDFDAFFC1BBBAFFCDC6C4FFEFDBD4FFEED9D2FFD3CA
        C8FFC3BCBAFFEDDBD5FFEEDCD5FFA9A5A4FF6E6B6B430000000000000000615E
        5E1FABA7A7FEF1E2DDFFF0DED7FFF0DDD6FFF0DCD6FFF1DFD9FFF0DED8FFEFD9
        D2FFEED8D1FFEED8D0FFEFDBD4FFB0ABAAFF716E6E5400000000000000000000
        00009A9595A6CFC8C6FFF1E0DAFFF1E2DCFFC8C2C0FFA4A09FFDA5A1A1FDC9C2
        C0FFF0DDD7FFEED9D1FFD1C8C5FF8F8A8AC600000000000000008E8A8A5A9C98
        98E4A49F9FFAD7D0CEFFF2E2DCFFCAC4C2FF979292BA5D5A5A025C595904938E
        8EC0C9C2C0FFEFDAD3FFD6CDCAFF9B9797FB8F8A8ADF8B8686739E9999EAEEE6
        E4FFF5EAE6FFF4E6E1FFF4E7E2FFA7A3A3FD615E5E0200000000000000005754
        5404A5A1A1FDF1DFD9FFEFDBD4FFF1E0DAFFE9DDD9FF938F8FF29F9A9AE4E8E2
        E0FFF4EBE8FFF5E8E3FFF5E9E4FFA8A4A4FD5B58580200000000000000005350
        5004A6A2A2FDF2E1DBFFF0DDD6FFF2E1DBFFE3D9D5FF928E8EEC908C8B4A9F9A
        9ADBA09B9BF0CFCAC9FFF5E8E4FFCCC7C5FF9A9595C3625F5F0A575554069591
        91C0CAC4C3FFF1E0D9FFD1CAC8FF9D9999FA918D8DDC84808045000000000000
        00009C979767C1BCBCFFF6EAE6FFF5EAE6FFD2CCCBFFA9A5A4FDAAA6A6FECDC7
        C6FFF3E5E0FFF2E1DBFFC3BDBCFF948F8F8C0000000000000000000000004C4A
        4A02AAA5A5FBF1EAE7FFF6EBE7FFF6EAE6FFF5E9E5FFF6EBE7FFF5E9E5FFF4E6
        E1FFF3E4DFFFF3E3DDFFF0E4E0FFA19D9DFC504D4D0400000000000000004E4B
        4B02ACA8A8FDF4EDEBFFF3EBE8FFCAC5C4FFD0CCCBFFF6EBE7FFF5E9E5FFD2CD
        CBFFC5C0BFFFF2E6E2FFF0E5E1FFA29E9EFD524F4F0400000000000000000000
        00009B969674AEA9A9FDABA7A7FC9E9A99819F9B9AEBF1E9E7FFF6EDEAFFA09B
        9BF59A95958EAAA5A5FEAAA6A5FE938F8F710000000000000000000000000000
        0000000000006663631067646412000000009D9898B4DED9D7FFE6E0DEFF9C98
        98D1000000006360601666636321000000000000000000000000000000000000
        0000000000000000000000000000000000007E7A7A38A19D9DEDA09C9CEC8E8A
        893F000000000000000000000000000000000000000000000000}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'tlb_selall'
        end
        item
          Visible = True
          ItemName = 'tlb_notsel'
        end
        item
          Visible = True
          ItemName = 'chbCorrection'
        end
        item
          Visible = True
          ItemName = 'chbWithOutStorn'
        end
        item
          Visible = True
          ItemName = 'chbOnlySpecial'
        end
        item
          Visible = True
          ItemName = 'chbWithoutSpecial'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tlb_set'
        end
        item
          Visible = True
          ItemName = 'btn_stickers'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'btn_prints'
        end
        item
          Visible = True
          ItemName = 'bb_reserv'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnZero'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tlb_save3'
        end
        item
          Visible = True
          ItemName = 'tlb_exportDBF'
        end>
    end
    object btn_prints: TdxBarButton
      Caption = #1087#1077#1095#1072#1090#1100' '#1087#1088#1080#1093#1086#1076#1072
      Category = 0
      Hint = #1087#1077#1095#1072#1090#1100' '#1087#1088#1080#1093#1086#1076#1072
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000949090D79C9898F59A9696F5999595F5989494F5979393F5969292F5C8C6
        C6FA49A852FC41BA58FE47A551FDC7C5C5FA898585D200000000000000000000
        00009B9797EFFAF6F4FFF7EFECFFF6EDEAFFF6ECE8FFF5EAE7FFF5E9E5FFF9F3
        F1FF59C56AFF3DCB4DFF56C267FFFBF8F7FF8D8989E900000000000000000000
        00009D9898EFF9F3F0FFF5E8E3FFF3E5E0FFF8F0EDFFF8EEEBFFF7EDE9FFF7EB
        E8FF5DC76BFF47D258FF56C165FFFAF4F1FFC6C4C4F3FFFFFF78000000000000
        00009E9A9AEFFAF5F3FFF6ECE8FFF5EAE5FFF9F2F0FF67C76CFF64CE74FF64CD
        74FF5AD97AFF5BE06EFF4ECF6DFF59C469FF46B258FB30AC3DC0000000000000
        00009F9B9BEFFAF6F4FFF8EFECFFF7EEEAFFFAF4F2FF55CE6BFF65DD78FF6FE9
        84FF73EF89FF6DED82FF5EE271FF4CD55EFF3FCC50FF3ABE53EC000000000000
        0000A09C9CEFFAF6F4FFF9F1EEFFF8F0EDFFFBF7F4FF66CB6CFF60CE71FF63CF
        73FF5DDC7EFF73EF89FF5BDB7CFF5FCB70FF49B85CFB32B03FC2000000000000
        0000A19D9DEFFAF6F4FFF9F1EEFFF9F1EEFFFCF7F5FFFBF7F5FFFBF6F4FFFAF5
        F3FF63CF73FF6DE681FF63CE74FFFBF7F5FF918D8DE900000000000000000000
        0000A39E9EEFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF8F0EDFFFBF7
        F5FF61CD71FF5FD772FF61CE72FFFBF8F7FF928E8EE900000000000000000000
        0000A49F9FEFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFFCF8
        F6FF69CC70FF56CD6AFF67C96EFFFCF9F8FF938F8FE900000000000000000000
        0000A5A0A0EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFFCF8
        F6FFFCF8F6FFFCF7F5FFFBF7F5FFFCFAF9FF949090E900000000000000000000
        0000A6A1A1EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
        EEFFF9F1EEFFF8F0EDFFF8F0EDFFFAF6F4FF959191E900000000000000000000
        0000A6A2A2EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
        EEFFF8F0EDFFEEE6E3FFE4DCDAFFE7E4E2FF928E8EE900000000000000000000
        0000A7A3A3EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
        EEFFF7EFECFFA5A0A0FF9E9A9AFF999595FF938E8EE100000000000000000000
        0000A8A3A3EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
        EEFFF7EFECFFA19D9DFFD3D1D2FF9A9696EE9C98983400000000000000000000
        0000A9A4A4EFFBF9F8FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6
        F4FFFAF5F4FFA19C9CFF9C9898EE9D9999340000000000000000000000000000
        0000A49F9FD2A9A4A4EFA8A3A3EFA7A3A3EFA6A2A2EFA6A1A1EFA5A0A0EFA49F
        9FEFA39E9EEF9A9595E1A39E9E34000000000000000000000000}
      OnClick = btn_printsClick
    end
    object dxBarStatic7: TdxBarStatic
      Category = 0
      Style = st_editable
      Visible = ivAlways
      Width = 20
    end
    object dxBarStatic8: TdxBarStatic
      Caption = ' - '#1087#1086#1083#1103' '#1076#1083#1103' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103
      Category = 0
      Hint = ' - '#1087#1086#1083#1103' '#1076#1083#1103' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103
      Style = st_editable
      Visible = ivAlways
    end
    object bb_reserv: TdxBarButton
      Caption = #1089#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1073#1088#1086#1085#1100
      Category = 0
      Hint = #1089#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1073#1088#1086#1085#1100
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000003939397E555555CC3C3C3C8820202003000000000000
        000000000000373737564C4C4CC24040409B2A2A2A0E00000000000000000000
        0000000000003232324D8B8B8BFFD7D7D7FFAFAFAFFF3737375D000000000000
        00002727271E737373FBC7C7C7FFD2D2D2FF3939398C00000000000000000000
        00000000000034343462DDDDDDFFF3F3F3FF989898FF39393972000000000000
        000029292933B5B5B5FFFFFFFFFFB0B0B0FF3C3C3CA400000000000000000000
        0000000000002727270D545454CA939393FF4F4F4FD337373714000000000000
        00002D2D2D01464646AB979797FF5E5E5EEB3737373200000000000000000000
        000000000000202221086A6B6AF5717271FF686868F3686868F2676767F26363
        63F2636363F2616161F25C605EFD5D605FF54141418100000000000000000000
        0000000000005454546C717271FF717271FF6E6E6EFF6C6C6CFF6B6B6BFF6868
        68FD666666FB636363FB626262FB616161F54444448900000000000000000000
        0000000000005E5F5EB6717271FF717271FF6555391365553913655539136555
        39136455391063543910635439105F5138030000000000000000000000000000
        000000000000676867E6717271FFDEC494FF998257FF947E55FF947E55FF947E
        55FF947E55FF947E55FF947E55FF896B359E0000000000000000000000000000
        000000000000707170FD787774FFDAC191FFA58E63FFE6D3A8FFD5BF95FFC2AC
        82FFB9A37BFFB8A37BFFBDA77FFFA18552F970582C1C00000000000000000000
        00004E4E4E39717271FF989388FFD6BC8DFFAD956AFFE9DFB3FFE9DDB3FFE5D0
        A7FFD0BB92FFBEA880FFB7A27AFFBBA274FF896B358A00000000000000000000
        00005A5B5A8F717271FFC5B494FFBDA578FFBCA374FFDEC495FFE6D6AAFFE9E0
        B6FFE8DCB3FFE3CDA4FFCCB78EFFC4AE85FF997C48EF614C250C000000000000
        0000717271FF717271FFDEC494FFB29A6EFFC0A778FFCDB382FFD1B787FFE1C8
        99FFE6D9ACFFE9E1B6FFE8DBB2FFE1CBA2FFC0A777FF886B356B000000002A2A
        2A086F706FFC717271FFDEC494FF947E55FF947E55FF947E55FF947E55FF947E
        55FF947E55FF947E55FF947E55FF947E55FF947E55FF896B35C83D3D3D505656
        56E0717271FF535353DE594A2E275D4924265D4924265D4924265D4924235D49
        24235D4924235D4924235D4924235D4924235D4924235D492417414141897172
        71FF4C4C4CC83B3B3B2C00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000252525042F2F
        2F2B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = bb_reservClick
    end
    object bb_pack_ins: TdxBarButton
      Caption = #1054#1073#1098#1077#1076#1080#1085#1080#1090#1100' '#1074' '#1087#1072#1095#1082#1091
      Category = 0
      Hint = #1054#1073#1098#1077#1076#1080#1085#1080#1090#1100' '#1074' '#1087#1072#1095#1082#1091
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000818181847F7F
        7FFE808080FE7F7F7FFF7E7E7EFF7E7D7EFF7E7E7EFF7D7E7EFF7F7F7FFFDBDB
        DBFF36AD42FF3BBE53FF35A942FFDCDCDCFF7F8080FF8382827F7D7D7DF0D0CA
        CAFFD3CCCDFFE3E0E0FFF4F1F1FFFFFEFEFFFFFFFFFFF8F5F5FFDFDCDCFFF0EE
        EEFF3EBE54FF3DCB4DFF3CBB53FFEEEDEDFFCFCACAFF797979F07D7E7DEDC7C1
        C2FFC9C3C3FFDBD7D7FFECE9EAFFF8F6F6FFFEFDFDFFFBFAFAFFF3F2F2FFEDEB
        EBFF43C259FF47D258FF3DBD54FFEBEAEAFFEFEEEEFFDCDCDCFA7D7D7DEEC4BE
        BFFFC7C1C1FFDAD6D6FFEBE8E9FFF8F6F6FFFEFDFDFF44C150FF4ACA61FF4AC9
        62FF55D977FF5BE06EFF49CF6AFF3DBC54FF3CBA52FF34A940FE7F7F7FCBFCFC
        FCFFF8F6F6FFFBFAFAFFFEFEFEFFFFFFFFFFFFFFFFFF49CC62FF65DD78FF6FE9
        84FF73EF89FF6DED82FF5EE271FF4CD55EFF3FCC50FF3ABE53FF898688728884
        85FF918E8EFF9D9B9BFFA8A6A6FFB1AEAEFFEAE9E9FF3EBF4BFF45C85CFF48C8
        5EFF58DC7BFF73EF89FF57DB79FF43C259FF3EBE54FF34AF41F77C7D7DF1D2CD
        CEFFD5CFD0FFE3E0E0FFF3F0F0FFFDFBFBFFFFFFFFFFFCFCFCFFF6F5F5FFF0EF
        EFFF49CA5FFF6DE681FF4BCA62FFEFEEEEFFD2CECEFF787878F07D7E7DEDC7C0
        C1FFC9C3C3FFDBD7D7FFECE9EAFFF8F6F6FFFCFAFAFFF0EDEDFFD6D2D2FFEDEB
        EBFF45C65CFF5FD772FF49C95FFFEBEAEAFFC6C0C0FF797979ED7D7D7DEEC4BE
        BFFFC7C1C1FFDAD6D6FFEBE8E9FFF8F6F6FFFCFAFAFFF0EDEDFFD4D0D0FFECEA
        EAFF40BE4BFF46C95EFF40BC4CFFEAE9E9FFC3BEBEFF797979EE7F7F7FC3FFFE
        FDFFF9F8F8FFFCFBFBFFFEFEFDFFFFFFFFFFFFFFFFFFFFFEFEFFFBFAFAFFFDFD
        FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFFFEFEFF7B7C7CC38382828D938F
        90FF9C9799FFA6A4A4FFB0AEAFFFB8B6B6FFB9B8B8FFB1AFAFFFA09E9EFF928F
        8FFF8B8888FF8C8989FF8C8989FF8C8989FF8C8989FF888787777D7D7DF0D0CA
        CBFFD2CDCDFFE2DEDFFFF1EEEFFFFDFBFAFFFFFFFFFFF5F1F1FFDEDBDBFFC7C3
        C3FFC3BEBEFFC4BFBFFFC4BFBFFFC3BEBEFFCFCACAFF787979F07D7E7DEDC7C0
        C2FFC9C3C3FFDBD7D7FFECE9EAFFF8F6F6FFFCFAFAFFF0EDEDFFD6D2D2FFBEB8
        B8FFB8B4B4FFB9B4B4FFB9B4B4FFB8B3B3FFC6C0C0FF797979ED7D7E7DEDC5BF
        C0FFC8C1C1FFDAD6D6FFEBE8E9FFF8F6F6FFFCFAFAFFF0EDEDFFD5D1D1FFBCB6
        B6FFB6B1B1FFB7B2B2FFB7B2B2FFB6B1B1FFC4BFBFFF797979ED7B7B7BF0F0EF
        EEFFEEEBEBFFF5F4F4FFFDFCFCFFFFFFFFFFFFFFFFFFFEFDFDFFF3F2F2FFE9E7
        E7FFE6E4E4FFE6E4E4FFE6E4E4FFE6E4E4FFF0EEEEFF767777F08686867D7B7B
        7BF07B7B7BED7B7B7BEE7A7A7AEE7A7A7AEE7A7A7AEE7A7A7AEE7B7B7BEE7B7B
        7BEE7B7B7BEE7B7B7BEE7B7B7BEE7B7B7BEE7B7B7BF187878781}
      OnClick = bb_pack_insClick
    end
    object bb_pack_del: TdxBarButton
      Caption = #1059#1073#1088#1072#1090#1100' '#1080#1079' '#1087#1072#1095#1082#1080
      Category = 0
      Hint = #1059#1073#1088#1072#1090#1100' '#1080#1079' '#1087#1072#1095#1082#1080
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000818181847F7F
        7FFE808080FE7F7F7FFF7E7E7EFF7E7D7EFF7E7E7EFFBABBBBFF494984FF3D3D
        9AFFBCBCBCFF808080FFBCBCBCFF3C3C8FFF474781FFD3D2D2BB7D7D7DF0D0CA
        CAFFD3CCCDFFE3E0E0FFF4F1F1FFFFFEFEFFFFFFFFFF7A79B7FF5555D3FF6464
        E1FF4948A7FFDFDDDDFF49489FFF4646CFFF4343C9FF43437EF97D7E7DEDC7C1
        C2FFC9C3C3FFDBD7D7FFECE9EAFFF8F6F6FFFDFCFCFF5A59B6FF5B5BD8FF7070
        E6FF6969E8FF3C3CB7FF5151D8FF4444CDFF4646CEFF393991FB7D7D7DEEC4BE
        BFFFC7C1C1FFDAD6D6FFEBE8E9FFF8F6F6FFFCFAFAFFF7F5F5FF5252AFFF6565
        E3FF7777F0FF6C6CEDFF5656DBFF4848D0FF4A49A2FFBABABAF67F7F7FCBFCFC
        FCFFF8F6F6FFFBFAFAFFFEFEFEFFFFFFFFFFFFFFFFFFFFFEFEFFFCFCFCFF4242
        C1FF7575F1FF6D6DEBFF5959DFFF3C3CB7FFFEFDFDFF7A7B7BC9898688728884
        85FF918E8EFF9D9B9BFFA8A6A6FFB1AEAEFFB3B1B1FFD1D0D0FF4545A3FF6565
        E3FF7777F0FF6C6CEDFF5656DBFF4848D1FF3C3B9AFFD7D6D6B57C7D7DF1D2CD
        CEFFD5CFD0FFE3E0E0FFF3F0F0FFFDFBFBFFFFFFFFFF5D5CBBFF5B5BD9FF7070
        E6FF6969E9FF3F3FBEFF5252D9FF4444CDFF4646D0FF3A3A98FC7D7E7DEDC7C0
        C1FFC9C3C3FFDBD7D7FFECE9EAFFF8F6F6FFFDFCFCFF7978BCFF5656D7FF6464
        E2FF4D4CAFFFDAD7D7FF4C4BA9FF4747D2FF4444CDFF464684F77D7D7DEEC4BE
        BFFFC7C1C1FFDAD6D6FFEBE8E9FFF8F6F6FFFCFAFAFFF7F5F5FF6D6CB0FF504E
        B1FFD8D5D5FFB6B1B1FFD8D6D6FF4C4BA8FF6866A3FFBABABAF67F7F7FC3FFFE
        FDFFF9F8F8FFFCFBFBFFFEFEFDFFFFFFFFFFFFFFFFFFFFFEFEFFFDFCFCFFFBFB
        FBFFF7F7F7FFF7F7F7FFF7F7F7FFFBFBFBFFFFFEFEFF7B7C7CC38382828D938F
        90FF9C9799FFA6A4A4FFB0AEAFFFB8B6B6FFB9B8B8FFB1AFAFFFA09E9EFF928F
        8FFF8B8888FF8C8989FF8C8989FF8C8989FF8C8989FF888787777D7D7DF0D0CA
        CBFFD2CDCDFFE2DEDFFFF1EEEFFFFDFBFAFFFFFFFFFFF5F1F1FFDEDBDBFFC7C3
        C3FFC3BEBEFFC4BFBFFFC4BFBFFFC3BEBEFFCFCACAFF787979F07D7E7DEDC7C0
        C2FFC9C3C3FFDBD7D7FFECE9EAFFF8F6F6FFFCFAFAFFF0EDEDFFD6D2D2FFBEB8
        B8FFB8B4B4FFB9B4B4FFB9B4B4FFB8B3B3FFC6C0C0FF797979ED7D7E7DEDC5BF
        C0FFC8C1C1FFDAD6D6FFEBE8E9FFF8F6F6FFFCFAFAFFF0EDEDFFD5D1D1FFBCB6
        B6FFB6B1B1FFB7B2B2FFB7B2B2FFB6B1B1FFC4BFBFFF797979ED7B7B7BF0F0EF
        EEFFEEEBEBFFF5F4F4FFFDFCFCFFFFFFFFFFFFFFFFFFFEFDFDFFF3F2F2FFE9E7
        E7FFE6E4E4FFE6E4E4FFE6E4E4FFE6E4E4FFF0EEEEFF767777F08686867D7B7B
        7BF07B7B7BED7B7B7BEE7A7A7AEE7A7A7AEE7A7A7AEE7A7A7AEE7B7B7BEE7B7B
        7BEE7B7B7BEE7B7B7BEE7B7B7BEE7B7B7BEE7B7B7BF187878781}
      OnClick = bb_pack_delClick
    end
    object dxBarButton1: TdxBarButton
      Action = aResfresh
      Category = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000120B0000120B00000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00F8F8F807FBFCFA05FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FAFAFA05B2B1AC5478B1669DFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FCFCFC03C8C8C739337E31DC09860BFDAAAB9E60B3B2A757CDCAC13EF3F4
        F00DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
        FD02D5D6D52B3E8241C7028C10FF03830EFF0B820FFF0C8210FF067C15FF2787
        27E18ABF8875F4F8F301FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DBDB
        DA254E834ABC048E0CFF02840EFF03840FFF038413FF048217FF068317FD0481
        18FF018218FF2D9A38AAD8ECD904FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8DA
        D12F3FA14ACE03831AFF038411FF03840DFF078414F08AC39168CAE4CE36C5E1
        CA3B96C196752F7C25EB71BA7D74FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FAFDFA05BEDDC74268B27B9C178D2EED06861FFFCEE7D41CFFFFFF00FFFF
        FF00FFFFFF00E6E3DD2386AD838CF1F8F30FFFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00E6F3EB1A91CCAA74C7E0D03DFFFFFF00FFFF
        FF00FFFFFF00FFFFFF00F7F8F50AF7FBF909FFFFFF00FFFFFF00FFFFFF00FDFD
        FD02FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBEBEA15EDEEE817FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0
        F00FC9D5C441FEFFFE01FFFFFF00FFFFFF00FFFFFF00DADBDA25669E3BCE97AC
        6F97D7D7C73AFEFEFD02FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
        FE0197A2867B81C172A4E9E8E31DFFFFFF00FFFFFF00F0F0F00F6D9651B749C7
        13FF46B114FC70A748C1B6BF9F67EBF5EA19FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00EEEEED125A9D34D845B41CF5759C55B37C9F679E729B53B746AB28EE47BB
        14FF45B915FF46C015FF45B914FFAED99671FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00E3E0DB2573B442CC47CB17FF4BCA17FF49C817FF4BC416FF49C0
        17FF47BC16FF47BC16FF8AD06AA1FBFDFA05FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FBFCFA06B7E4A56285D166A76BCC43CD61B93DD347B1
        22F14BC218FF77CC54BAF9FDF808FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFDFA05F7F7F6097092
        5AAC67D139DBF0F9EC15FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D0DD
        C63DDEF3D52EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
    end
    object btnExportInvoice: TdxBarButton
      Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100' '#1080#1085#1074#1086#1081#1089' '#1076#1083#1103' '#1088#1077#1075#1080#1086#1085#1086#1074
      Category = 0
      Hint = #1042#1099#1075#1088#1091#1079#1080#1090#1100' '#1080#1085#1074#1086#1081#1089' '#1076#1083#1103' '#1088#1077#1075#1080#1086#1085#1086#1074
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000009490
        90D79C9898F59A9696F5999595F5989494F5979393F5969292F5959191F59491
        91F5949090F5938F8FF5938F8FF5898585D20000000000000000000000009B97
        97EFFAF6F4FFF7EFECFFF6EDEAFFF6ECE8FFF5EAE7FFF5E9E5FFF4E8E4FFF4E8
        E3FFC37C76FFD4B5B0FFF8F1EFFF8D8989E90000000000000000000000009D98
        98EFF9F3F0FFF5E8E3FFF3E5E0FFF2E2DDFFF1DFD9FFF0DDD6FFEFDAD3FFEED9
        D1FFC37763FFD1844FFFCA9A94FF8E8A8AE90000000000000000000000009E9A
        9AEFFAF5F3FFF6ECE8FFF5EAE5FFCB8C78FFCC8B6FFFCB896EFFCA866DFFC884
        6BFFCB7B53FFE18C5BFFD68751FF9B5951F636100F0600000000000000009F9B
        9BEFFAF6F4FFF8EFECFFF7EEEAFFCF8157FFE89070FFED9475FFF09877FFF099
        75FFED956FFFE68C66FFDE835CFFDA8A53FFB04D37C35318171500000000A09C
        9CEFFAF6F4FFF9F1EEFFF8F0EDFFCF8256FFE0846AFFE78B70FFED9275FFF096
        77FFF09676FFED9370FFE78C67FFDF835BFFDF9456FFA73D30BA00000000A19D
        9DEFFAF6F4FFF9F1EEFFF9F1EEFFCF8356FFD97E63FFE0866AFFE78E70FFED95
        74FFF09877FFF09676FFED9370FFE59661FFB35137BD551A171300000000A39E
        9EEFFAF6F4FFF9F1EEFFF9F1EEFFD29881FFD19475FFD09376FFD09275FFCF91
        75FFD18557FFF19E76FFE49763FFA06456F639130F040000000000000000A49F
        9FEFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF8F0
        EDFFD08A6DFFDB9059FFD4ACA2FF938F8FE9000000000000000000000000A5A0
        A0EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
        EEFFD29380FFDEC5BDFFFAF5F3FF949090E9000000000000000000000000A6A1
        A1EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
        EEFFF8F0EDFFF8F0EDFFFAF6F4FF959191E9000000000000000000000000A6A2
        A2EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF8F0
        EDFFEEE6E3FFE4DCDAFFE7E4E2FF928E8EE9000000000000000000000000A7A3
        A3EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF7EF
        ECFFA5A0A0FF9E9A9AFF999595FF938E8EE1000000000000000000000000A8A3
        A3EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF7EF
        ECFFA19D9DFFD3D1D2FF9A9696EE9C989834000000000000000000000000A9A4
        A4EFFBF9F8FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF5
        F4FFA19C9CFF9C9898EE9D99993400000000000000000000000000000000A49F
        9FD2A9A4A4EFA8A3A3EFA7A3A3EFA6A2A2EFA6A1A1EFA5A0A0EFA49F9FEFA39E
        9EEF9A9595E1A39E9E3400000000000000000000000000000000}
      OnClick = btnExportInvoiceClick
    end
    object btnImportInvoice: TdxBarButton
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1085#1074#1086#1081#1089' '#1080#1079' '#1086#1092#1080#1089#1072
      Category = 0
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1085#1074#1086#1081#1089' '#1080#1079' '#1086#1092#1080#1089#1072
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000FFFF
        FFB831B03EEE3ABE53FD30AC3EF0FFFFFFB80000000000000000000000000000
        0000000000003939397E555555CC3C3C3C88202020030000000000000000FFFF
        FFB83ABD51FA3DCB4DFF39B950FCFBFBFBBB0000000000000000000000000000
        00003232324D8B8B8BFFD7D7D7FFAFAFAFFFE6E6E6D1FFFFFFB8FFFFFFB8F6F6
        F6C041C157FF47D258FF3EBD54FFDCDCDCDFFFFFFFB8FFFFFFB8000000000000
        000034343462DDDDDDFFF3F3F3FF989898FFE2E2E2D739BE46EF46CA5EF747C9
        5FF955D977FF5BE06EFF49CF6AFF3ABA51FD38BA4FF730AC3DEF000000000000
        00002727270D545454CA939393FF4F4F4FD3F9F9F9BD48CC61FE65DD78FF6FE9
        84FF73EF89FF6DED82FF5EE271FF4CD55EFF3FCC50FF3ABE53FE000000000000
        0000202221086A6B6AF5717271FF686868F3D6D6D6FB3BBB47FE44C65AFF47C7
        5DFF58DC7BFF73EF89FF57DB79FF41C258FC3CC053F832B03FF0000000000000
        00005454546C717271FF717271FF6E6E6EFFD6D6D6FFD6D6D6FFD5D5D5FED5D5
        D5FE46C75CFF6DE681FF49C760FFDEDEDEDE0000000000000000000000000000
        00005E5F5EB6717271FF717271FF65553913655539136555391365553913FBFB
        FBBC42C759F85FD772FF46C95DF9FFFFFFB80000000000000000000000000000
        0000676867E6717271FFDEC494FF998257FF947E55FF947E55FF947E55FFE1DB
        CFFF3DBB45FF46C85DFF3BBA44F9FFFFFFB80000000000000000000000000000
        0000707170FD787774FFDAC191FFA58E63FFE6D3A8FFD5BF95FFC2AC82FFEBE5
        DAFFEBE5DAFFECE6DBFFE5DDCFFDF9F8F6BF0000000000000000000000004E4E
        4E39717271FF989388FFD6BC8DFFAD956AFFE9DFB3FFE9DDB3FFE5D0A7FFD0BB
        92FFBEA880FFB7A27AFFBBA274FF896B358A0000000000000000000000005A5B
        5A8F717271FFC5B494FFBDA578FFBCA374FFDEC495FFE6D6AAFFE9E0B6FFE8DC
        B3FFE3CDA4FFCCB78EFFC4AE85FF997C48EF614C250C00000000000000007172
        71FF717271FFDEC494FFB29A6EFFC0A778FFCDB382FFD1B787FFE1C899FFE6D9
        ACFFE9E1B6FFE8DBB2FFE1CBA2FFC0A777FF886B356B000000002A2A2A086F70
        6FFC717271FFDEC494FF947E55FF947E55FF947E55FF947E55FF947E55FF947E
        55FF947E55FF947E55FF947E55FF947E55FF896B35C800000000565656E07172
        71FF535353DE594A2E275D4924265D4924265D4924265D4924235D4924235D49
        24235D4924235D4924235D4924235D4924235D49241700000000717271FF4C4C
        4CC83B3B3B2C0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btnImportInvoiceClick
    end
    object btnExportInvoice2: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1080#1085#1074#1086#1081#1089#1072' '#1074' '#1088#1077#1075#1080#1086#1085
      Category = 0
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1080#1085#1074#1086#1081#1089#1072' '#1074' '#1088#1077#1075#1080#1086#1085
      Visible = ivAlways
      OnClick = btnExportInvoice2Click
    end
    object dxBarStatic9: TdxBarStatic
      Category = 0
      Style = st_NotUse
      Visible = ivAlways
      AllowClick = True
      Width = 30
      OnClick = dxBarStatic9Click
    end
    object dxBarStatic10: TdxBarStatic
      Caption = ' - '#1085#1077' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1084#1099' '#1087#1086#1079#1080#1094#1080#1080
      Category = 0
      Hint = ' - '#1085#1077' '#1080#1089#1087#1086#1083#1100#1079#1091#1077#1084#1099' '#1087#1086#1079#1080#1094#1080#1080
      Visible = ivAlways
    end
    object dxBarStatic11: TdxBarStatic
      Category = 0
      Style = st_noPrint
      Visible = ivAlways
      AllowClick = True
      Width = 30
      OnClick = dxBarStatic11Click
    end
    object dxBarStatic12: TdxBarStatic
      Caption = '- '#1073#1077#1079' '#1087#1077#1095#1072#1090#1080
      Category = 0
      Hint = '- '#1073#1077#1079' '#1087#1077#1095#1072#1090#1080
      Visible = ivAlways
    end
    object bc_fontsize: TcxBarEditItem
      Caption = ' '#1064#1088#1080#1092#1090
      Category = 0
      Hint = ' '#1064#1088#1080#1092#1090
      Visible = ivAlways
      ShowCaption = True
      Width = 60
      PropertiesClassName = 'TcxComboBoxProperties'
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items.Strings = (
        '8'
        '9'
        '10'
        '11'
        '12')
      Properties.OnChange = bcb_fontPropertiesChange
    end
    object btnCheckLoad: TdxBarButton
      Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1087#1086#1076#1075#1088#1091#1079#1082#1091' '#1080#1085#1074#1086#1081#1089#1072' '#1074' '#1088#1077#1075#1080#1086#1085#1077
      Category = 0
      Hint = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1087#1086#1076#1075#1088#1091#1079#1082#1091' '#1080#1085#1074#1086#1081#1089#1072' '#1074' '#1088#1077#1075#1080#1086#1085#1077
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000FFFFFF78279A2AB43CBA
        50F9B6D6B6B10000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FFFFFF78259626A759DB7FFF74F2
        95FF39B64BF8F7F9F77C00000000000000000000000000000000000000000000
        000000000000000000000C9DF05E8BCAF2DA1B925CF754D678FF72EC8AFF76F0
        8BFF61E487FF259525AEFFFFFF78000000000000000000000000000000000000
        00000FB1FF1E0090EAFF77ADE1FF219B64FF52D376FF69E181FF5FE085FF5BDE
        81FF6CED86FF42C35DFED9E5D890000000000000000000000000000000000FB0
        FF1E007CD2FF0086DBFFF1FBFFFF41C457FF5CD476FF56D87BFF5FBA59FF4AB7
        53FF67EB8CFF5CE27FFF2CAA38E6FFFFFF780000000000000000000000000095
        ECFF0086DAFFFFFFFEFEF7EAE5FE62B65CFE41C457FF66B25FFEEDE4E0FEDEDA
        CEFE47CB63FF5BE072FF49D06CFF228C228BFFFFFF78000000000C9EF05A0070
        C5FFDCF6FFFDF9E5DDFDE8DBD8FFF1EAE7FFF2E9E7FEF2E9E6FFE1D1CBFFEFE6
        E3FF62AC58FE53DB78FF4BD562FF3ABE52FED5E3D593000000000192E2B7068E
        DCFFFFFFF8FEEFE5E1FDEBE3DFFFF3E6E1FFCDBFBCFDBAAEAAFFEAD9D2FFE1D1
        CBFFEBE3DFFE40BB49FF4CD76BFF47D366FF30B03CF0F7F9F77C0089D9E24DB2
        EAFFFFFDF3FEF1EAE9FEF8EEEBFDDDD3CFFD5B5F60FE5C6163FDBAAEA9FDEBDA
        D3FDDECEC7FEE3E1D1FE3CC355FF44D05BFF47D26AFF29A22CC5008BD9E249B0
        E8FFFFFEF4FFF6F0EDFDF6EFEDFF5B5D5EFFA29E9DFDBFB7B5FF575C5DFFD8C9
        C2FFE3D1CBFDFEF0E7FF3D9F8DFF42CB61FF46D260FF38BC4EFA0294E2B6008D
        DAFFFFFFFBFFFFF8F6FD6C6C6DFFBBB9B7FFFFF9F6FDF8EEEAFFD8CFCAFF9994
        93FFE8D5CFFDFFF8E5FF7DC0EEFF1A9565E436BB48F4269A26900CA0F0570075
        C3FFD7F7FFF6CBBCB6FFD2CECDFFFFFAF8FFF2EBEAFDF0E8E4FFEFE7E2FFF0E3
        DEFFF0D9CFFDDCF6FFFF0062C4FFB7E3FDAAFFFFFF78FFFFFF7800000000019B
        EBFF0087D7FEFFFFFFF8FFF9F1FFF2EBE8FEF2ECEAFEF1EAE8FDEFE5E1FDF9E6
        DDFDFFFFFFFE0082DBFF008AE5FF000000000000000000000000000000000EB5
        FF190087D3FF0086D7FFD1F0FFEFFFFFFCFEFFFEF4FEFFFFF5FFFFFFF8FED9F5
        FFFD0084DAFF0079CFFF0EB8FF20000000000000000000000000000000000000
        00000EB7FF190198EAFF0074C4FF008CDAFF47AFE8FC4AAFE8FD038CDAFF006C
        C4FF0091E6FF0EB9FF1E00000000000000000000000000000000000000000000
        000000000000000000000CA4F5570294E1B70089D9E30088D9E30190E1B70CA3
        F65A000000000000000000000000000000000000000000000000}
      ShortCut = 16457
      OnClick = btnCheckLoadClick
    end
    object chbArchive: TcxBarEditItem
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1072#1088#1093#1080#1074'                        '
      Category = 0
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1072#1088#1093#1080#1074'                        '
      Visible = ivAlways
      Width = 30
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Properties.OnChange = chbArchivePropertiesChange
      InternalEditValue = 0
    end
    object bbArchive: TdxBarButton
      Action = aArchive
      Category = 0
    end
    object lcbSuplier: TdxBarLookupCombo
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082' '
      Category = 0
      Hint = 
        #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072' '#1076#1083#1103' '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1080#1103' '#1087#1086#1079#1080#1094#1080#1081' '#1076#1083#1103' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103' '#1074' '#1080#1085#1074 +
        #1086#1081#1089
      Visible = ivAlways
      OnChange = lcbSuplierChange
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDD000000000000000D0FFFF0FFFFFFFF0D0F77F0F777777F0D0CCCC0CCCCCC
        CC0D0C77C0C777777C0D0CCCC0CCCCCCCC0D0F77F0F777777F0D0FFFF0FFFFFF
        FF0D0F77F0F777777F0D0FFFF0FFFFFFFF0D000000000000000D0FFFCCCCFFF0
        DDDD0F777777FFF0DDDD0FFFCCCCFFF0DDDD000000000000DDDD}
      ShowCaption = True
      Width = 180
      ImmediateDropDown = True
      KeyField = 'S_ID'
      ListField = 'S_NAME_RU'
      ListSource = DS_SUPPLIER
      RowCount = 7
    end
    object btnZero: TdxBarButton
      Caption = #1054#1073#1085#1091#1083#1080#1090#1100' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      Category = 0
      Hint = #1054#1073#1085#1091#1083#1080#1090#1100' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000C572087DA25E073300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000B1670868F7DAB4FBEAD3B2AEFFFFFF78FFFF
        FF78FFFFFF78FFFFFF78FFFFFF78FFFFFF78FFFFFF78FFFFFF78000000000000
        00000000000000000000000000007A47071CFCE5BEFE615EC4FF554CB5EF4646
        C5D54646C8D34242C1D33C3CB9D33C3CB9D33737B5D33737B5D3000000000000
        0000AB650843CE7F1DB1CD8020A4CF82219BF7D9B0F95D5DD3FF6D6DE4FF7575
        EFFF7575EFFF6C6CEBFF5454DBFF5454DBFF4242CDFF4242CEFF000000000000
        0000E49F4DD2F9F6C1FEF9F9C5FEF9F9C8FFFCFCE3FE6161CCFF6464D0FF6666
        D1FF6666D2FF6363CDFF5D5DC4FF5D5CC3FF5148ADF83838B7D5000000000000
        0000E8A555D9F9F0B7FEF9F6BCFEF9F9C0FFFCFCDFFEFCFCE1FEFCFCE1FFFCFC
        E0FEFCFCDFFEFCFBDDFFFCF8DBFEFCF3D8FEF5D3ABEDFFFFFF78AB650820CF81
        2049E7A252E4F9ECB6FFF9F2BAFFF9CBA1FFECBD99FFECBD99FFECBD99FFECBD
        99FFECBD99FFF9CAA0FFF9EDB7FFF9E6B4FFEBA556DD00000000E49F4D64F9F6
        C179E9AA5CEBF9E7B5FEF9EDB7FEF9F2BAFFF9F6BCFEF9F8BDFEF9F8BDFFF9F7
        BCFEF9F3BAFEF9EFB7FFF9E8B5FEF9E2B1FEEBA456DD00000000E8A55568F9F0
        B779E9A85BEBF9F9DEFEF9F5CAFEF9C8A0FFECBD99FFECBD99FFECBD99FFECBD
        99FFECBD99FFF9C89FFFF9E4B1FEF9E0AFFEEBA456DD00000000E8A45568F9EC
        B67AE9A75BEBF9F9F5FFF9F9F9FFF9F9F9FFF9F9EFFFF9F9E0FFF9F9D5FFF9F6
        CBFFF9F0C2FFF9E7B9FFF9E0B0FFF9DCADFFEBA255DD00000000E8A45368F9E7
        B579E9A75AEBF9F9F9FEF9F9F9FEF9F9F9FFF9F9F9FEF9F9F8FEF9F9EAFFF9F9
        DAFEF9F0C8FEF9E4B9FFF9DCAFFEF9D8ACFEEBA255DD00000000E8A25368F9F9
        DE79D8B7769CE7AF76FEE7B47CFEE7B67DFFE7B47BFEE7B378FEE7B176FFE7AE
        75FEE7AC72FEE7AA6EFFE7A86CFEE7A76AFEAB65084300000000E8A15368F9F9
        F57AF9F9F97AF9F9F97AF9F9EF7AF9F9E07AF9F9D57AF9F6CB7AF9F0C27AF9E7
        B97AF9E0B07AF9DCAD7AEBA2556A000000000000000000000000E8A15268F9F9
        F979F9F9F979F9F9F97AF9F9F979F9F9F879F9F9EA7AF9F9DA79F9F0C879F9E4
        B97AF9DCAF79F9D8AC79EBA2556A000000000000000000000000AB650820E7AF
        7679E7B47C79E7B67D7AE7B47B79E7B37879E7B1767AE7AE7579E7AC7279E7AA
        6E7AE7A86C79E7A76A79AB650820000000000000000000000000}
      OnClick = btnZeroClick
    end
    object btnNewFromNID: TdxBarButton
      Caption = #1085#1086#1074#1072#1103' '#1080#1079' '#1090#1077#1082#1091#1097#1077#1081' '
      Category = 0
      Hint = #1085#1086#1074#1072#1103' '#1080#1079' '#1090#1077#1082#1091#1097#1077#1081' '
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000949090D79C9898F59A9696F5999595F5989494F5979393F5969292F5C8C6
        C6FA49A852FC41BA58FE47A551FDC7C5C5FA898585D200000000000000000000
        00009B9797EFFAF6F4FFF7EFECFFF6EDEAFFF6ECE8FFF5EAE7FFF5E9E5FFF9F3
        F1FF59C56AFF3DCB4DFF56C267FFFBF8F7FF8D8989E900000000000000000000
        00009D9898EFF9F3F0FFF5E8E3FFF3E5E0FFF8F0EDFFF8EEEBFFF7EDE9FFF7EB
        E8FF5DC76BFF47D258FF56C165FFFAF4F1FFC6C4C4F3FFFFFF78000000000000
        00009E9A9AEFFAF5F3FFF6ECE8FFF5EAE5FFF9F2F0FF67C76CFF64CE74FF64CD
        74FF5AD97AFF5BE06EFF4ECF6DFF59C469FF46B258FB30AC3DC0000000000000
        00009F9B9BEFFAF6F4FFF8EFECFFF7EEEAFFFAF4F2FF55CE6BFF65DD78FF6FE9
        84FF73EF89FF6DED82FF5EE271FF4CD55EFF3FCC50FF3ABE53EC000000000000
        0000A09C9CEFFAF6F4FFF9F1EEFFF8F0EDFFFBF7F4FF66CB6CFF60CE71FF63CF
        73FF5DDC7EFF73EF89FF5BDB7CFF5FCB70FF49B85CFB32B03FC2000000000000
        0000A19D9DEFFAF6F4FFF9F1EEFFF9F1EEFFFCF7F5FFFBF7F5FFFBF6F4FFFAF5
        F3FF63CF73FF6DE681FF63CE74FFFBF7F5FF918D8DE900000000000000000000
        0000A39E9EEFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF8F0EDFFFBF7
        F5FF61CD71FF5FD772FF61CE72FFFBF8F7FF928E8EE900000000000000000000
        0000A49F9FEFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFFCF8
        F6FF69CC70FF56CD6AFF67C96EFFFCF9F8FF938F8FE900000000000000000000
        0000A5A0A0EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFFCF8
        F6FFFCF8F6FFFCF7F5FFFBF7F5FFFCFAF9FF949090E900000000000000000000
        0000A6A1A1EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
        EEFFF9F1EEFFF8F0EDFFF8F0EDFFFAF6F4FF959191E900000000000000000000
        0000A6A2A2EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
        EEFFF8F0EDFFEEE6E3FFE4DCDAFFE7E4E2FF928E8EE900000000000000000000
        0000A7A3A3EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
        EEFFF7EFECFFA5A0A0FF9E9A9AFF999595FF938E8EE100000000000000000000
        0000A8A3A3EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
        EEFFF7EFECFFA19D9DFFD3D1D2FF9A9696EE9C98983400000000000000000000
        0000A9A4A4EFFBF9F8FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6
        F4FFFAF5F4FFA19C9CFF9C9898EE9D9999340000000000000000000000000000
        0000A49F9FD2A9A4A4EFA8A3A3EFA7A3A3EFA6A2A2EFA6A1A1EFA5A0A0EFA49F
        9FEFA39E9EEF9A9595E1A39E9E34000000000000000000000000}
      PaintStyle = psCaptionGlyph
      OnClick = btnNewFromNIDClick
    end
    object dxBarStatic13: TdxBarStatic
      Category = 0
      Style = st_bQuantity
      Visible = ivAlways
      AllowClick = True
      Width = 30
      OnClick = dxBarStatic13Click
    end
    object dxBarStatic14: TdxBarStatic
      Caption = ' - '#1085#1077#1074#1077#1088#1085#1086#1077' '#1082#1086#1083'-'#1074#1086
      Category = 0
      Hint = ' - '#1085#1077#1074#1077#1088#1085#1086#1077' '#1082#1086#1083'-'#1074#1086
      Visible = ivAlways
    end
    object btnCopyInvoice: TdxBarButton
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1080#1085#1074#1086#1081#1089' '#1087#1086' '#1074#1099#1073#1088#1072#1085#1085#1099#1084' '#1087#1086#1079#1080#1094#1080#1103#1084
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1080#1085#1074#1086#1081#1089' '#1087#1086' '#1074#1099#1073#1088#1072#1085#1085#1099#1084' '#1087#1086#1079#1080#1094#1080#1103#1084
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000908C8C3AA6A6A6FFA6A6A6FFA6A6A6FFA6A6
        A6FFA6A6A6FFA6A6A6FFA6A6A6FFA6A6A6FFA6A6A6FF807C7C35000000000000
        0000000000000000000000000000A6A6A6FFFAF6F5FFF7F0EDFFF7EEEAFFF6EC
        E8FFF5EAE6FFF4E9E5FFF4E8E4FFF4E8E4FFF8F3F1FFA6A6A6FF000000000000
        0000000000000000000000000000A6A6A6FFF9F4F2FFF5E9E5FFF4E6E1FFF2E2
        DCFFF1DFD8FFEFDBD4FFEED9D1FFEED8D0FFF5EBE7FFA6A6A6FF625F5F24605D
        5D315F5C5C315E5B5B315D5A5A31A6A6A6FFFAF6F4FFE6DEDBFFD8CFCDFFD5CB
        C8FFD4C9C5FFD3C6C2FFD1C3BFFFDBCAC5FFF6ECE8FFA6A6A6FFCCCCCCFFCCCC
        CCFFCCCCCCFFCCCCCCFFCCCCCCFFA6A6A6FFFAF6F5FFEFE8E5FFE8E0DDFFEFE5
        E2FFE7DDD9FFE3D7D3FFE2D4CFFFE6D6D1FFF6EEEBFFA6A6A6FFCCCCCCFFECE3
        DFFFEADCD8FFE8D9D4FFE7D6D0FFA6A6A6FFFAF6F5FFF0E8E6FFE9E2DFFFF1E9
        E6FFDBD4D1FFEDE4E1FFECE1DDFFDBCFCBFFF8F0EEFFA6A6A6FFCCCCCCFFEEE7
        E4FFD7CECBFFD3C9C6FFD0C5C2FFA6A6A6FFFAF6F5FFE7DFDDFFD8D1CFFFE8E0
        DEFFDFD8D6FFF8F0EDFFF7EEEBFFDFD5D2FFF9F3F1FFA6A6A6FFCCCCCCFFEFE8
        E6FFE7DFDDFFE4DCD9FFE5DBD7FFA6A6A6FFFAF6F5FFF0E8E6FFE9E2DFFFF1E9
        E6FFDCD5D3FFEFE7E5FFEFE7E4FFDED6D4FFFAF6F4FFA6A6A6FFCCCCCCFFEFE8
        E6FFD6CFCDFFD1CAC8FFDDD6D3FFA6A6A6FFFAF6F5FFEFE8E5FFE8E1DEFFF0E8
        E5FFEAE2E0FFE7DFDDFFE6DEDCFFE9E2DFFFF7F3F2FFA6A6A6FFCCCCCCFFEFE8
        E6FFD9D2D0FFD5CFCDFFDED7D4FFA6A6A6FFFAF6F5FFF9F1EEFFF9F1EEFFF9F1
        EEFFF9F1EEFFF9F1EEFFE8E0DEFFBFB9B7FFC2BFBEFFA6A6A6FFCCCCCCFFEFE8
        E6FFE7DFDDFFE5DDDBFFE1DAD8FFA6A6A6FFFAF6F5FFF9F1EEFFF9F1EEFFF9F1
        EEFFF9F1EEFFF9F1EEFFD6CFCDFFDAD8D9FFA6A6A6FF5D5A5A12CCCCCCFFEFE8
        E6FFD5CECCFFCFC9C7FFE2DAD8FFA6A6A6FFFBF9F9FFFBF7F6FFFBF7F6FFFBF7
        F6FFFBF7F6FFFBF7F6FFD9D6D5FFA6A6A6FF5F5C5C1200000000CCCCCCFFEFE8
        E6FFEFE7E4FFEFE7E4FFEFE7E4FFE1DAD7FFA6A6A6FFA6A6A6FFA6A6A6FFA6A6
        A6FFA6A6A6FFA6A6A6FFA6A6A6FF7A7777120000000000000000CCCCCCFFEFE8
        E6FFEFE7E4FFEFE7E4FFEFE7E4FFEFE7E4FFEEE6E3FFBCB7B7FFBEBBBCFFCCCC
        CCFF4845450A0000000000000000000000000000000000000000CCCCCCFFEFEA
        E8FFEFE9E7FFEFE9E7FFEFE9E7FFEFE9E7FFEFE9E7FFC0BBBBFFCCCCCCFF5856
        5612000000000000000000000000000000000000000000000000CCCCCCFFCCCC
        CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF6C6A69120000
        0000000000000000000000000000000000000000000000000000}
      OnClick = btnCopyInvoiceClick
    end
    object dxBarStatic15: TdxBarStatic
      Caption = 'Ctrl+A - '#1087#1086#1080#1089#1082' '#1087#1086' '#1072#1088#1090#1080#1082#1083#1091
      Category = 0
      Hint = 'Ctrl+A - '#1087#1086#1080#1089#1082' '#1087#1086' '#1072#1088#1090#1080#1082#1083#1091
      Visible = ivAlways
    end
    object dxBarStatic16: TdxBarStatic
      Caption = 'Ctrl+N - '#1087#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102
      Category = 0
      Hint = 'Ctrl+N - '#1087#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102
      Visible = ivAlways
    end
    object dxBarStatic17: TdxBarStatic
      Caption = 'Ctrl+B - '#1087#1086#1080#1089#1082' '#1087#1086' '#1074#1085#1091#1090#1088'. '#1082#1086#1076#1091
      Category = 0
      Hint = 'Ctrl+B - '#1087#1086#1080#1089#1082' '#1087#1086' '#1074#1085#1091#1090#1088'. '#1082#1086#1076#1091
      Visible = ivAlways
    end
    object btnSearchInvoices: TdxBarButton
      Caption = #1053#1072#1081#1090#1080' '#1080#1085#1074#1086#1081#1089#1099' '#1087#1086' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1077
      Category = 0
      Hint = #1053#1072#1081#1090#1080' '#1080#1085#1074#1086#1081#1089#1099' '#1087#1086' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1077
      Visible = ivAlways
      OnClick = btnSearchInvoicesClick
    end
    object dxBarStatic18: TdxBarStatic
      Category = 0
      Style = stNotUse
      Visible = ivAlways
      BorderStyle = sbsRaised
      Width = 30
    end
    object dxBarStatic19: TdxBarStatic
      Caption = ' - '#1085#1077#1080#1089#1087#1086#1083#1100#1079#1091#1077#1084#1072#1103' '#1087#1086#1079#1080#1094#1080#1103
      Category = 0
      Hint = ' - '#1085#1077#1080#1089#1087#1086#1083#1100#1079#1091#1077#1084#1072#1103' '#1087#1086#1079#1080#1094#1080#1103
      Visible = ivAlways
    end
    object chbCorrection: TcxBarEditItem
      Caption = #1058#1086#1083#1100#1082#1086' '#1082#1086#1088#1088#1077#1082#1094#1080#1103'            '
      Category = 0
      Hint = #1058#1086#1083#1100#1082#1086' '#1082#1086#1088#1088#1077#1082#1094#1080#1103'            '
      Visible = ivAlways
      OnChange = chbCorrectionChange
      Width = 100
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
    end
    object dxBarButton2: TdxBarButton
      Caption = #1089#1090#1080#1082#1077#1088#1099' '#1087#1086' '#1074#1099#1073#1088#1072#1085#1085#1099#1084
      Category = 0
      Hint = #1089#1090#1080#1082#1077#1088#1099' '#1087#1086' '#1074#1099#1073#1088#1072#1085#1085#1099#1084
      Visible = ivAlways
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
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
        00040000000D0000001200000008000000050000000C000000160000001C0000
        001E0000001F0000001F0000001F0000001F0000001E0000001D0000001C0000
        001A000000180000001100000011000000090000000400000000000000000000
        000C0000001F000000200F2D137B1A4B20AD0E2A137D040B054B0000002D0000
        0028000000320000003B0000013E0000013E0000013D0000013C0000013A0000
        0138000000300B0B0C4514141550101011410000000800000000000000000000
        000000000000040C06152D9147FE2E9247FF2E9247FF2B8A44F3216C36BF1545
        227A081C0E360000000700000000000000000000000000000004000000040000
        00010C0C0C1D0E0E0F22000000001314142D0000000000000000000000000000
        00000000000010371F572DA159FF2DA15AFF2DA15AFF2DA159FF2DA059FF2DA0
        58FF2DA158FF268A4DD91A6237980E341D4F030D071300000000000000000202
        02031515162F000000000D0D0D1C101010220000000000000000000000000000
        0000000000001C6D41A02DAD68FF2DAD68FF2DAD68FF2DAD68FF2DAD68FF2DAE
        68FF2DAD68FF2DAD68FF2DAC67FF2CAC67FF2AA462F21A663E96000000000A07
        08110A0A0A150909091518191938000000010000000000000000000000000000
        00000001010225A064E02AB673FF2AB673FF2AB673FF2AB673FF2AB673FF2AB6
        73FF2AB673FF2AB673FF2AB673FF2AB673FF2BB572FF2BB572FF19774AA20C06
        0916171517351010102500000000000000000000000000000000000000000000
        00000725193226BD7DFF27BE7DFF27BE7DFF27BE7DFF27BE7DFF27BE7DFF27BE
        7DFF27BE7DFF27BE7DFF27BE7DFF27BE7DFF27BE7DFF27C07FFF25BE7FFF3679
        60C810080C1B0000000000000000000000000000000000000000000000000000
        00000D3324422CC388FF22C185FF1FC183FF21C184FF23C184FF23C184FF23C1
        84FF23C184FF23C184FF23C184FF23C184FF23C286FF22C07FFE357E46E0318C
        4CEA0B3725470000000000000000000000000000000000000000000000000000
        00000103020320533E6830946EBB33BF8CF42BC68FFF21C58CFF1BC48AFF1BC3
        8AFF1DC48AFF1EC48AFF1EC48AFF1EC48AFF1DC890FF22AF66FC211602442A44
        1F8C197544AB0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B1310171C4535552A8162A131B487E22BCA
        95FF21C893FF18C791FF15C690FF16C690FF16C791FF1BC58DFF27904BDD2579
        3FBE082F223D0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000040404051330
        253A236A52832DA37DCA2BC99AFB27CC9BFF2BBE90EC248C6DAD15514161040F
        0F0F000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000A19141E10282030060B0A0D00000000000000000000
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
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBarButton2Click
    end
    object chbWithOutStorn: TcxBarEditItem
      Caption = #1057#1082#1088#1099#1090#1100' '#1089#1090#1086#1088#1085'                   '
      Category = 0
      Hint = #1057#1082#1088#1099#1090#1100' '#1089#1090#1086#1088#1085'                   '
      Visible = ivAlways
      OnChange = chbWithOutStornChange
      Width = 100
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
    end
    object chbOnlySpecial: TcxBarEditItem
      Caption = #1058#1086#1083#1100#1082#1086' '#1089#1087#1077#1094'.'#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1077
      Category = 0
      Hint = #1058#1086#1083#1100#1082#1086' '#1089#1087#1077#1094'.'#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1077
      Visible = ivAlways
      OnChange = chbOnlySpecialChange
      Width = 100
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.Alignment = taLeftJustify
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
    end
    object chbWithoutSpecial: TcxBarEditItem
      Caption = #1041#1077#1079' '#1089#1087#1077#1094'.'#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1103'    '
      Category = 0
      Hint = #1041#1077#1079' '#1089#1087#1077#1094'.'#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1103'    '
      Visible = ivAlways
      OnChange = chbWithoutSpecialChange
      Width = 100
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
    end
    object tlb_exportDBF: TdxBarButton
      Caption = ' '#1101#1082#1089#1087#1086#1088#1090' '#1074' DBF'
      Category = 0
      Hint = ' '#1101#1082#1089#1087#1086#1088#1090' '#1074' DBF'
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000818181847F7F
        7FFE808080FE7F7F7FFF7E7E7EFF7E7D7EFF7E7E7EFF7D7E7EFF7F7F7FFF7F7F
        7FFF808080FF808080FF808080FF808080FF7F8080FF8382827F7D7D7DF0D0CA
        CAFFD3CCCDFFE3E0E0FFF4F1F1FFFFFEFEFFFFFFFFFFF8F5F5FFDFDCDCFFC8C3
        C3FFC2BEBEFFC2BEBEFFC2BEBEFFC2BEBEFFCFCACAFF797979F07D7E7DEDC7C1
        C2FFC9C3C3FFDBD7D7FFECE9EAFFF8F6F6FFFCFAFAFFF0EDEDFFD6D2D2FFBEB8
        B8FFB9B4B4FFB9B4B4FFB9B4B4FFB8B3B3FFC6C1C1FF797979ED7D7D7DEEC4BE
        BFFFC7C1C1FFDAD6D6FFEBE8E9FFF8F6F6FFFCFAFAFFF0EDEDFFD4D0D0FFBBB5
        B5FFB6B1B1FFB6B1B1FFB6B1B1FFB6B0B0FFC3BEBEFF797979EE7F7F7FCBFCFC
        FCFFF8F6F6FFFBFAFAFFFEFEFEFFFFFFFFFFFFFFFFFFFFFEFEFFFAFAFAFFF6F5
        F5FFF4F4F4FFF5F4F4FFF5F4F4FFF4F4F4FFFDFBFBFF7A7B7BC9898688728884
        85FF918E8EFF9D9B9BFFA8A6A6FFB1AEAEFFB3B1B1FFA9A7A7FF979595FF8884
        84FF837E7EFF837F7FFF837F7FFF837F7FFF837F7FFF878686737C7D7DF1D2CD
        CEFFD5CFD0FFE3E0E0FFF3F0F0FFFDFBFBFFFFFFFFFFF5F3F3FFDFDCDCFFCAC7
        C7FFC6C1C1FFC6C1C1FFC6C1C1FFC6C1C1FFD2CECEFF787878F07D7E7DEDC7C0
        C1FFC9C3C3FFDBD7D7FFECE9EAFFF8F6F6FFFCFAFAFFF0EDEDFFD6D2D2FFBEB8
        B8FFB8B3B3FFB9B4B4FFB9B4B4FFB8B3B3FFC6C0C0FF797979ED7D7D7DEEC4BE
        BFFFC7C1C1FFDAD6D6FFEBE8E9FFF8F6F6FFFCFAFAFFF0EDEDFFD4D0D0FFBBB5
        B5FFB6B0B0FFB6B1B1FFB6B1B1FFB5B0B0FFC3BEBEFF797979EE7F7F7FC3FFFE
        FDFFF9F8F8FFFCFBFBFFFEFEFDFFFFFFFFFFFFFFFFFFFFFEFEFFFBFAFAFFF7F7
        F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFEFEFF7B7C7CC38382828D938F
        90FF9C9799FFA6A4A4FFB0AEAFFFB8B6B6FFB9B8B8FFB1AFAFFFA09E9EFF928F
        8FFF8B8888FF8C8989FF8C8989FF8C8989FF8C8989FF888787777D7D7DF0D0CA
        CBFFD2CDCDFFE2DEDFFFF1EEEFFFFDFBFAFFFFFFFFFFF5F1F1FFDEDBDBFFC7C3
        C3FFC3BEBEFFC4BFBFFFC4BFBFFFC3BEBEFFCFCACAFF787979F07D7E7DEDC7C0
        C2FFC9C3C3FFDBD7D7FFECE9EAFFF8F6F6FFFCFAFAFFF0EDEDFFD6D2D2FFBEB8
        B8FFB8B4B4FFB9B4B4FFB9B4B4FFB8B3B3FFC6C0C0FF797979ED7D7E7DEDC5BF
        C0FFC8C1C1FFDAD6D6FFEBE8E9FFF8F6F6FFFCFAFAFFF0EDEDFFD5D1D1FFBCB6
        B6FFB6B1B1FFB7B2B2FFB7B2B2FFB6B1B1FFC4BFBFFF797979ED7B7B7BF0F0EF
        EEFFEEEBEBFFF5F4F4FFFDFCFCFFFFFFFFFFFFFFFFFFFEFDFDFFF3F2F2FFE9E7
        E7FFE6E4E4FFE6E4E4FFE6E4E4FFE6E4E4FFF0EEEEFF767777F08686867D7B7B
        7BF07B7B7BED7B7B7BEE7A7A7AEE7A7A7AEE7A7A7AEE7A7A7AEE7B7B7BEE7B7B
        7BEE7B7B7BEE7B7B7BEE7B7B7BEE7B7B7BEE7B7B7BF187878781}
      OnClick = tlb_exportDBFClick
    end
    object dxBarButton3: TdxBarButton
      Caption = #1057#1084#1077#1085#1080#1090#1100' '#1087#1086#1079#1080#1094#1080#1102' '#1085#1072' '#1076#1088#1091#1075#1091#1102
      Category = 0
      Hint = #1057#1084#1077#1085#1080#1090#1100' '#1087#1086#1079#1080#1094#1080#1102' '#1085#1072' '#1076#1088#1091#1075#1091#1102
      Visible = ivAlways
      ImageIndex = 0
      OnClick = dxBarButton3Click
    end
    object dxBarButton4: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1090#1088#1072#1085#1099' '#1087#1086' '#1080#1089#1093#1086#1076#1085#1099#1084' '#1076#1072#1085#1085#1099#1084
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1090#1088#1072#1085#1099' '#1087#1086' '#1080#1089#1093#1086#1076#1085#1099#1084' '#1076#1072#1085#1085#1099#1084
      Visible = ivAlways
      ImageIndex = 1
      OnClick = dxBarButton4Click
    end
    object dxBarButton5: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object bbzak: TdxBarButton
      Action = aZak
      Category = 0
    end
    object chbZak: TcxBarEditItem
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1080#1089#1082#1083#1102#1095#1077#1085#1080#1103' '#1080#1079' '#1079#1072#1082#1072#1079#1072
      Category = 0
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1080#1089#1082#1083#1102#1095#1077#1085#1080#1103' '#1080#1079' '#1079#1072#1082#1072#1079#1072
      Visible = ivAlways
      Width = 30
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = '2'
      Properties.ValueUnchecked = '0'
      Properties.OnChange = chbZakPropertiesChange
      InternalEditValue = 0
    end
  end
  object TdxBarSeparator
    Category = -1
    Visible = ivAlways
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 856
    Top = 88
    PixelsPerInch = 96
    object tlb_header: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
    end
    object st_proc: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object st_need_trans: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      TextColor = clMaroon
    end
    object st_editable: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 12320767
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
    end
    object st_dubls: TcxStyle
      AssignedValues = [svColor]
      Color = 14465535
    end
    object st_storn: TcxStyle
      AssignedValues = [svColor]
      Color = 6205183
    end
    object st_asis: TcxStyle
      AssignedValues = [svColor]
      Color = 15395562
    end
    object st_tobe: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16767927
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
    end
    object st_Inactive8: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
    end
    object st_Inactive9: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
    end
    object st_NotUse: TcxStyle
      AssignedValues = [svColor]
      Color = 9540095
    end
    object st_noPrint: TcxStyle
      AssignedValues = [svColor]
      Color = 12303291
    end
    object st_bQuantity: TcxStyle
      AssignedValues = [svColor]
      Color = clMaroon
    end
    object stNotUse: TcxStyle
      AssignedValues = [svColor]
      Color = 14145495
    end
    object st_recognized: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = 13303807
    end
  end
  object pm_inv_data: TPopupMenu
    Left = 728
    Top = 544
    object nFields: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1086#1083#1077#1081
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
    object N3: TMenuItem
      Caption = '-'
    end
    object mnEportExcelData: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OnClick = tlb_save3Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object mnFilterByGroup: TMenuItem
      Caption = #1060#1080#1083#1100#1090#1088#1072#1094#1080#1103' '#1087#1086' '#1090#1080#1087#1072#1084
      ShortCut = 16416
      OnClick = mnFilterByGroupClick
    end
    object mn_clear_filter: TMenuItem
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1092#1080#1083#1100#1090#1088#1099
      ShortCut = 121
      OnClick = mn_clear_filterClick
    end
  end
  object odInvoice: TOpenDialog
    DefaultExt = 'sql'
    Filter = #1060#1072#1081#1083#1099' SQL (*.sql)|*.sql'
    Left = 352
    Top = 56
  end
  object PopupMenu1: TPopupMenu
    Left = 120
    Top = 104
    object MenuItem3: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1080#1090#1086#1075#1086#1074#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103' '#1074' '#1073#1091#1092#1077#1088
      OnClick = MenuItem3Click
    end
    object MenuItem4: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1103#1095#1077#1081#1082#1091' '#1074' '#1073#1091#1092#1077#1088
      OnClick = MenuItem4Click
    end
    object N5: TMenuItem
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      ShortCut = 121
      OnClick = N5Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object mn_select_all: TMenuItem
      Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077' '#1089#1090#1088#1086#1095#1082#1080
      ShortCut = 16449
      OnClick = mn_select_allClick
    end
    object mn_deselect_all: TMenuItem
      Caption = #1059#1073#1088#1072#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1080#1077' '#1089#1090#1088#1086#1095#1077#1082
      ShortCut = 24641
      OnClick = mn_deselect_allClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object mnExportExcel: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OnClick = mnExportExcelClick
    end
  end
  object CDS_SUPPLIER: TOraQuery
    SQL.Strings = (
      'begin'
      '  creator.NOMENCLATURE_PKG.SELECT_SUPPLIER(:CURSOR_);'
      'end;')
    FilterOptions = [foCaseInsensitive]
    Left = 784
    Top = 544
    ParamData = <
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptInputOutput
        Value = 'Object'
      end>
    object CDS_SUPPLIERS_ID: TFloatField
      FieldName = 'S_ID'
      Required = True
    end
    object CDS_SUPPLIERS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Required = True
      Size = 150
    end
  end
  object DS_SUPPLIER: TOraDataSource
    DataSet = CDS_SUPPLIER
    Left = 784
    Top = 576
  end
end
