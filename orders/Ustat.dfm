object frm_stat: Tfrm_stat
  Left = 525
  Top = 181
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '  '#1057#1090#1072#1090#1080#1089#1090#1080#1082#1072' '#1079#1072#1082#1072#1079#1072
  ClientHeight = 566
  ClientWidth = 638
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel2: TPanel
    Left = 0
    Top = 533
    Width = 638
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      638
      33)
    object btnClose: TcxButton
      Left = 489
      Top = 4
      Width = 145
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000858180A1908B8BCF8F8A89CF687C8ECF095AA1CF0958A2CF0955A1CF0853
        A0CF60748BCF888383CF878382CF797575A50000000000000000000000000000
        0000928E8DCFDAD2CFFFE5DCD9FF9DB4C8FF196CB6FF277BCDFF277BCDFF1969
        B7FF98ADC6FFE5DCD9FFDAD2CFFF898584D40000000000000000000000000000
        0000948F8ECFE5DCDAFFF7EEEBFFAAC2D4FF1970B8FF2882D3FF2882D3FF1A6D
        B9FFA4BAD2FFF7EEEBFFE5DDDAFF8A8585D40000000000000000000000000000
        0000959090CFE5DDDAFFF8EFECFFAAC4D5FF3E7FAFFF3E8AC6FF2888D3FF1A72
        B9FFA5BBD3FFF8EFECFFE6DEDBFF8B8686D40000000000000000000000000000
        0000969191CFE6DEDBFFF8F0EDFFABC6D6FF1F7BB5FF2B8DD0FF288DD3FF1A77
        B9FFA5BDD4FFF8F0EDFFE6DFDCFF8C8787D40000000000000000000000000000
        0000979392CFE6DFDCFFF8F1EEFFABC7D7FF197EB9FF2892D3FF2892D3FF1A7B
        B9FFA5BFD5FFF8F1EEFFE6E0DDFF8C8888D40000000000000000000000000000
        0000959191CFE6E0DEFFF9F2F0FFABC8D8FF147CB2FF1F87C0FF1F87C0FF1578
        B2FFA6C1D6FFF9F2F0FFE7E0DEFF8B8787D400000000000000002525962B3030
        A26579757ED3DDD8D6FFF9F3F1FFDDE4E8FF86B5CDFF86B4CDFF86B3CDFF86B2
        CDFFDAE1E7FFF9F3F1FFDDD8D6FF737074D82F2E8A64212189382F2FB8CE2E2E
        C4FF4241A4FFA7A3A9FFE9E3E1FFFAF4F2FFFAF5F2FFFAF5F2FFFAF5F2FFFAF5
        F2FFFAF4F2FFE8E2E0FFA5A1A7FF3B3B91FF2B2BB8FF28289ED32E2EB89E3030
        C8FF3030CBFF4241AFFF9F9CA9FFE4DFDDFFFAF5F3FFFBF6F4FFFBF6F4FFFAF5
        F3FFE3DEDCFF9C99A7FF3B3B9FFF2E2EC5FF2C2CBCFF252598A01D1D77042E2E
        B79C3636CAFF3B3BD5FF3D3CB4FF9492A6FFDEDAD9FFFAF5F4FFFAF5F4FFDED9
        D8FF918FA4FF3737A7FF3A3AD2FF3232BBFF2525989919196A04000000000000
        00002E2EB7803A3ACAFE4848E1FF3B3BB9FF8987A5FFD7D3D1FFD6D3D1FF8785
        A3FF3837B0FF4848DFFF3636BAFF2C2C99800000000000000000000000000000
        0000000000002D2DB5633A3AC7FA5353E8FF3B3BBEFF7B7AA2FF7A79A1FF3A3A
        BAFF5353E7FF3838B8FE8D8CB9FF52505C270000000000000000000000000000
        000000000000000000002C2CAF4A3838C2F35656E8FF3D3DC4FF3C3CC3FF5656
        E7FF3535B8F24F4E9C6FCCCBCBFF5B5959270000000000000000000000000000
        00000000000000000000000000002A2AA8343434BEE75151E2FF5151E2FF3232
        B7E82828A13463607B27C0BFBFFF625F5F270000000000000000000000000000
        00000000000000000000000000000000000027279E212F2FB7BE2E2EB5BF2727
        9F2300000000383636025D5A5A1E3D3B3B020000000000000000}
      LookAndFeel.Kind = lfOffice11
    end
  end
  object pc_stat_order: TcxPageControl
    Left = 0
    Top = 0
    Width = 638
    Height = 533
    ActivePage = tsh_info_by_group
    Align = alClient
    TabOrder = 1
    ClientRectBottom = 533
    ClientRectRight = 638
    ClientRectTop = 27
    object tsh_info_by_group: TcxTabSheet
      Caption = ' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1087#1086' '#1075#1088#1091#1087#1087#1072#1084' '
      ImageIndex = 0
      object gr_total: TcxGrid
        Left = 0
        Top = 0
        Width = 638
        Height = 372
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        object gr_total_view: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCustomDrawCell = gr_total_viewCustomDrawCell
          DataController.DataSource = DS_STAT
          DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnSorting = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.InvertSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          Styles.Group = cxStyle1
          object gr_total_viewHH: TcxGridDBColumn
            DataBinding.FieldName = 'HH'
            Visible = False
            GroupIndex = 0
            IsCaptionAssigned = True
          end
          object gr_total_viewNBUTTON: TcxGridDBColumn
            DataBinding.FieldName = 'NBUTTON'
            Visible = False
          end
          object gr_total_viewH_CATEGORY: TcxGridDBColumn
            DataBinding.FieldName = 'H_CATEGORY'
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.Moving = False
            Options.Sorting = False
            IsCaptionAssigned = True
          end
          object gr_total_viewQUANT: TcxGridDBColumn
            Caption = 'STEMS'
            DataBinding.FieldName = 'QUANT'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 60
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.Sorting = False
            Width = 60
          end
          object gr_total_viewWEIGHT: TcxGridDBColumn
            Caption = 'VOLUME'
            DataBinding.FieldName = 'WEIGHT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DecimalPlaces = 5
            Properties.DisplayFormat = ',0.00000;-,0.00000'
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 70
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.Sorting = False
            Width = 70
          end
          object gr_total_viewQQ: TcxGridDBColumn
            Caption = 'POS'
            DataBinding.FieldName = 'QQ'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 60
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.Sorting = False
            Width = 60
          end
          object gr_total_viewQUANT_P: TcxGridDBColumn
            Caption = 'P STEMS'
            DataBinding.FieldName = 'QUANT_P'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 70
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.Sorting = False
            Width = 70
          end
          object gr_total_viewWEIGHT_P: TcxGridDBColumn
            Caption = 'P VOLUME'
            DataBinding.FieldName = 'WEIGHT_P'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 80
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.Sorting = False
            Width = 80
          end
          object gr_total_viewQQ_P: TcxGridDBColumn
            Caption = 'P POS'
            DataBinding.FieldName = 'QQ_P'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 60
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.Sorting = False
            Width = 60
          end
        end
        object gr_total_level: TcxGridLevel
          GridView = gr_total_view
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 372
        Width = 638
        Height = 4
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
      end
      object grReg: TcxGrid
        Left = 0
        Top = 376
        Width = 638
        Height = 130
        Align = alBottom
        TabOrder = 2
        LookAndFeel.Kind = lfOffice11
        object grRegV: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsStatReg
          DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = #1042#1089#1077#1075#1086
              Column = cxGridDBColumn1
            end
            item
              Format = '0'
              Kind = skSum
              Column = cxGridDBColumn4
            end
            item
              Format = '0'
              Kind = skSum
              Column = cxGridDBColumn5
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnSorting = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.InvertSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          Styles.Group = cxStyle1
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'HH'
            IsCaptionAssigned = True
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'NBUTTON'
            Visible = False
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = #1057#1090#1077#1073#1083#1077#1081
            DataBinding.FieldName = 'QUANT'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 80
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.Sorting = False
            Width = 80
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = #1055#1086#1079#1080#1094#1080#1081
            DataBinding.FieldName = 'NN'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 80
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.Sorting = False
            Width = 80
          end
          object grRegVPRICE: TcxGridDBColumn
            Caption = #1062#1077#1085#1072
            DataBinding.FieldName = 'PRICE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00;-,0.00'
            HeaderAlignmentHorz = taCenter
            MinWidth = 90
            Options.Editing = False
            Options.Filtering = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 90
          end
        end
        object grRegL: TcxGridLevel
          GridView = grRegV
        end
      end
    end
    object tsh_info_by_stems: TcxTabSheet
      Caption = ' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1087#1086' '#1087#1086#1079#1080#1094#1080#1103#1084' '
      ImageIndex = 1
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 638
        Height = 506
        Align = alClient
        AutoFitColWidths = True
        Ctl3D = False
        DataGrouping.GroupLevels = <>
        DataSource = DM.q_raznos_st_DS
        FixedColor = clMoneyGreen
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        FooterColor = clYellow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'Arial'
        FooterFont.Pitch = fpFixed
        FooterFont.Style = []
        FooterRowCount = 1
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        RowDetailPanel.Color = clBtnFace
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Arial'
        TitleFont.Pitch = fpFixed
        TitleFont.Style = []
        Columns = <
          item
            EditButtons = <>
            FieldName = 'HOL_SUB_TYPE'
            Footer.FieldName = 'FST_ID'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #1055#1086#1076#1090#1080#1087
            Title.TitleButton = True
            Width = 127
          end
          item
            EditButtons = <>
            FieldName = 'F_TYPE'
            Footers = <>
            Title.Caption = #1058#1080#1087
            Title.TitleButton = True
            Visible = False
            Width = 122
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'QQQ'
            Footer.FieldName = 'QQQ'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1083'-'#1074#1086
            Title.TitleButton = True
            Width = 70
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'WEIGHT'
            Footer.FieldName = 'WEIGHT'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1054#1073#1098#1077#1084
            Width = 68
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'TRUCK'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1052#1072#1096#1080#1085#1072
            Width = 65
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object tshInfoByTruck: TcxTabSheet
      Caption = ' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1087#1086' '#1084#1072#1096#1080#1085#1072#1084' '
      ImageIndex = 2
      object StringGrid1: TStringGrid
        Left = 0
        Top = 0
        Width = 638
        Height = 506
        Align = alClient
        Ctl3D = False
        DefaultColWidth = 120
        FixedColor = clMedGray
        FixedCols = 0
        RowCount = 2
        Options = [goVertLine, goHorzLine, goRowSelect]
        ParentCtl3D = False
        ScrollBars = ssNone
        TabOrder = 0
        OnDrawCell = StringGrid1DrawCell
      end
    end
  end
  object CDS_STAT: TOraQuery
    SQL.Strings = (
      'begin'
      
        '  pack_orders.get_stat(:ID_DEP_, :ID_ORDER_, :ID_CLIENT_, :ID_FS' +
        'T_, :FST_, :ZATIR_, :n_id_, :CURSOR_);'
      'end;')
    Left = 72
    Top = 344
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEP_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ID_ORDER_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ID_CLIENT_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ID_FST_'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FST_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ZATIR_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'n_id_'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object CDS_STATHH: TStringField
      FieldName = 'HH'
      Size = 9
    end
    object CDS_STATNBUTTON: TFloatField
      FieldName = 'NBUTTON'
    end
    object CDS_STATH_CATEGORY: TStringField
      FieldName = 'H_CATEGORY'
      Size = 32
    end
    object CDS_STATWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object CDS_STATQUANT: TFloatField
      FieldName = 'QUANT'
    end
    object CDS_STATQQ: TFloatField
      FieldName = 'QQ'
    end
    object CDS_STATWEIGHT_P: TFloatField
      FieldName = 'WEIGHT_P'
    end
    object CDS_STATQUANT_P: TFloatField
      FieldName = 'QUANT_P'
    end
    object CDS_STATQQ_P: TFloatField
      FieldName = 'QQ_P'
    end
  end
  object DS_STAT: TOraDataSource
    DataSet = CDS_STAT
    Left = 72
    Top = 384
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
    end
  end
  object cdsStatReg: TOraQuery
    SQL.Strings = (
      'begin'
      '  pack_orders.get_stat_region(:ID_ORDER_, :CURSOR_);'
      'end;')
    Left = 112
    Top = 344
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_ORDER_'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object cdsStatRegHH: TStringField
      FieldName = 'HH'
      Size = 15
    end
    object cdsStatRegNBUTTON: TFloatField
      FieldName = 'NBUTTON'
    end
    object cdsStatRegQUANT: TFloatField
      FieldName = 'QUANT'
    end
    object cdsStatRegNN: TFloatField
      FieldName = 'NN'
    end
    object cdsStatRegPRICE: TFloatField
      FieldName = 'PRICE'
    end
  end
  object dsStatReg: TOraDataSource
    DataSet = cdsStatReg
    Left = 112
    Top = 384
  end
end
