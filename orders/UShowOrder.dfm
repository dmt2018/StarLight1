object frm_show_order: Tfrm_show_order
  Left = 533
  Top = 238
  Caption = '  '#1047#1072#1082#1072#1079' '#1082#1083#1080#1077#1085#1090#1072
  ClientHeight = 648
  ClientWidth = 959
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 959
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
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
    TabOrder = 1
    DesignSize = (
      959
      35)
    object btnClose: TcxButton
      Left = 806
      Top = 6
      Width = 145
      Height = 27
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 377
    Width = 959
    Height = 271
    Align = alClient
    AutoFitColWidths = True
    Ctl3D = True
    DataGrouping.GroupLevels = <>
    DataSource = DS_ORDERS_LIST
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
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
    PopupMenu = pmStat
    RowDetailPanel.Color = clBtnFace
    SortLocal = True
    STFilter.Local = True
    STFilter.Visible = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Pitch = fpFixed
    TitleFont.Style = []
    UseMultiTitle = True
    Columns = <
      item
        Alignment = taCenter
        AutoFitColWidth = False
        Color = clMoneyGreen
        EditButtons = <>
        FieldName = 'QUANTITY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        Footer.Alignment = taCenter
        Footer.ValueType = fvtSum
        Footer.WordWrap = True
        Footers = <>
        MaxWidth = 70
        MinWidth = 70
        ReadOnly = True
        Title.Caption = #1050#1086#1083'-'#1074#1086
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Arial'
        Title.Font.Pitch = fpFixed
        Title.Font.Style = [fsBold]
        Width = 70
      end
      item
        EditButtons = <>
        FieldName = 'H_NAME'
        Footer.Alignment = taCenter
        Footer.DisplayFormat = '0'
        Footer.ValueType = fvtCount
        Footers = <>
        MinWidth = 50
        ReadOnly = True
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'COMPILED_NAME_OTDEL'
        Footers = <
          item
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            Value = #1055#1086#1079#1080#1094#1080#1081':'
            ValueType = fvtStaticText
          end
          item
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            ValueType = fvtCount
          end>
        MinWidth = 50
        ReadOnly = True
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' ('#1088#1091#1089'.)'
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'F_TYPE'
        Footers = <>
        MinWidth = 50
        ReadOnly = True
        STFilter.DataField = 'FT_ID'
        STFilter.KeyField = 'FT_ID'
        STFilter.ListField = 'F_TYPE'
        STFilter.ListSource = DM.Q_FLOWER_TYPE_DS
        Title.Caption = #1058#1080#1087
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'F_SUB_TYPE'
        Footers = <>
        MinWidth = 50
        ReadOnly = True
        Title.Caption = #1055#1086#1076#1090#1080#1087
        Width = 110
      end
      item
        EditButtons = <>
        FieldName = 'HOL_TYPE'
        Footers = <>
        MaxWidth = 100
        MinWidth = 50
        ReadOnly = True
        Title.Caption = #1058#1080#1087' ('#1075#1086#1083'.)'
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'HOL_SUB_TYPE'
        Footers = <>
        MinWidth = 50
        ReadOnly = True
        Title.Caption = #1055#1086#1076#1090#1080#1087' ('#1075#1086#1083'.)'
        Width = 150
      end
      item
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'COLOUR'
        Footers = <>
        MaxWidth = 110
        MinWidth = 50
        ReadOnly = True
        Title.Caption = #1062#1074#1077#1090
        Width = 110
      end
      item
        Alignment = taCenter
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'LEN'
        Footers = <>
        MaxWidth = 50
        MinWidth = 50
        ReadOnly = True
        Title.Caption = #1044#1083#1080#1085#1072
        Width = 50
      end
      item
        Alignment = taCenter
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'PACK'
        Footers = <>
        MaxWidth = 50
        MinWidth = 50
        ReadOnly = True
        Title.Caption = #1055#1072#1095#1082#1072
        Width = 50
      end
      item
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'S_NAME_RU'
        Footers = <>
        MaxWidth = 100
        MinWidth = 50
        ReadOnly = True
        STFilter.DataField = 'S_ID'
        STFilter.KeyField = 'S_ID'
        STFilter.ListField = 'S_NAME_RU'
        Title.Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
        Visible = False
        Width = 100
      end
      item
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'COUNTRY'
        Footers = <>
        MaxWidth = 100
        MinWidth = 50
        ReadOnly = True
        STFilter.DataField = 'C_ID'
        STFilter.KeyField = 'C_ID'
        STFilter.ListField = 'COUNTRY'
        Title.Caption = #1057#1090#1088#1072#1085#1072
        Visible = False
        Width = 100
      end
      item
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'RUS_MARKS'
        Footers = <>
        MaxWidth = 100
        MinWidth = 50
        ReadOnly = True
        Title.Alignment = taLeftJustify
        Title.Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
        Width = 100
      end
      item
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'H_CODE'
        Footers = <>
        MinWidth = 50
        ReadOnly = True
        Title.Alignment = taLeftJustify
        Title.Caption = #1040#1088#1090#1080#1082#1091#1083
        Width = 100
      end
      item
        EditButtons = <>
        FieldName = 'REMARKS'
        Footers = <>
        MinWidth = 50
        Width = 70
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object spInfoMain: TcxSplitter
    Left = 0
    Top = 369
    Width = 959
    Height = 8
    Cursor = crSizeNS
    HotZoneClassName = 'TcxXPTaskBarStyle'
    AlignSplitter = salTop
    Control = pnlTop
  end
  object pnlTop: TPanel
    Left = 0
    Top = 35
    Width = 959
    Height = 334
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 3
    object Panel4: TPanel
      Left = 5
      Top = 5
      Width = 412
      Height = 324
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentBackground = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      DesignSize = (
        412
        324)
      object Label9: TLabel
        Left = 12
        Top = 42
        Width = 50
        Height = 16
        Caption = #1050#1083#1080#1077#1085#1090':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText3: TDBText
        Left = 120
        Top = 42
        Width = 52
        Height = 16
        AutoSize = True
        DataField = 'NICK'
        DataSource = DM.Q_CLIENTS_DS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText4: TDBText
        Left = 12
        Top = 64
        Width = 49
        Height = 16
        AutoSize = True
        DataSource = DM.Q_CLIENTS_DS
      end
      object Label7: TLabel
        Left = 12
        Top = 4
        Width = 18
        Height = 16
        Caption = #8470':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 12
        Top = 23
        Width = 93
        Height = 16
        Caption = #1044#1072#1090#1072' '#1084#1072#1096#1080#1085#1099':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText2: TDBText
        Left = 120
        Top = 23
        Width = 52
        Height = 16
        AutoSize = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 120
        Top = 4
        Width = 52
        Height = 16
        AutoSize = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText5: TDBText
        Left = 12
        Top = 86
        Width = 49
        Height = 16
        AutoSize = True
      end
      object Label2: TLabel
        Left = 12
        Top = 312
        Width = 138
        Height = 14
        Anchors = [akLeft, akBottom]
        Caption = 'F10 - '#1074#1099#1075#1088#1091#1079#1082#1072' '#1074' TXT '#1092#1072#1081#1083
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsItalic]
        ParentFont = False
        Visible = False
        ExplicitTop = 189
      end
    end
    object gr_total: TcxGrid
      Left = 417
      Top = 5
      Width = 537
      Height = 324
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
        OptionsView.GroupByBox = False
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
          MinWidth = 200
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Width = 210
          IsCaptionAssigned = True
        end
        object gr_total_viewQUANT: TcxGridDBColumn
          Caption = 'STEMS'
          DataBinding.FieldName = 'QUANT'
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
        object gr_total_viewWEIGHT: TcxGridDBColumn
          Caption = 'VOLUME'
          DataBinding.FieldName = 'WEIGHT'
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
        object gr_total_viewPRICE: TcxGridDBColumn
          DataBinding.FieldName = 'PRICE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.00;-,0.00'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          MinWidth = 80
          Width = 80
        end
        object gr_total_viewWEIGHT_P: TcxGridDBColumn
          DataBinding.FieldName = 'WEIGHT_P'
          Visible = False
        end
        object gr_total_viewQUANT_P: TcxGridDBColumn
          DataBinding.FieldName = 'QUANT_P'
          Visible = False
        end
        object gr_total_viewQQ_P: TcxGridDBColumn
          DataBinding.FieldName = 'QQ_P'
          Visible = False
        end
      end
      object gr_total_level: TcxGridLevel
        GridView = gr_total_view
      end
    end
  end
  object CDS_ORDERS_LIST: TOraStoredProc
    StoredProcName = 'pack_orders.get_show_order'
    SQLUpdate.Strings = (
      
        'begin PACK_ORDERS.INS_ORDERS(:ID_ORDERS_CLIENTS, :N_ID, :FL_ORDE' +
        'RS, 0, 0, null); end;')
    SQLRefresh.Strings = (
      'select '
      '  l.QUANTITY fl_orders '
      'from '
      '  orders_list l '
      'where '
      '  l.N_ID = :OLD_N_ID'
      '  AND l.ID_ORDERS_CLIENTS = :OLD_ID_ORDERS_CLIENTS')
    SQL.Strings = (
      'begin'
      '  pack_orders.get_show_order(:ID_DEP_, :ID_CL_, :ID_, :CURSOR_);'
      'end;')
    FetchRows = 50
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    IndexFieldNames = 'F_TYPE;F_NAME'
    Left = 40
    Top = 160
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEP_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ID_CL_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ID_'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = ''
      end>
    object CDS_ORDERS_LISTCOMPILED_NAME: TStringField
      FieldName = 'COMPILED_NAME'
      Size = 299
    end
    object CDS_ORDERS_LISTF_NAME: TStringField
      FieldName = 'F_NAME'
      Size = 256
    end
    object CDS_ORDERS_LISTF_NAME_RU: TStringField
      FieldName = 'F_NAME_RU'
      Required = True
      Size = 256
    end
    object CDS_ORDERS_LISTF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Required = True
      Size = 50
    end
    object CDS_ORDERS_LISTF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Required = True
      Size = 50
    end
    object CDS_ORDERS_LISTHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
    end
    object CDS_ORDERS_LISTN_ID: TFloatField
      FieldName = 'N_ID'
      Required = True
    end
    object CDS_ORDERS_LISTLEN: TIntegerField
      FieldName = 'LEN'
    end
    object CDS_ORDERS_LISTPACK: TIntegerField
      FieldName = 'PACK'
    end
    object CDS_ORDERS_LISTVBN: TIntegerField
      FieldName = 'VBN'
      Required = True
    end
    object CDS_ORDERS_LISTWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object CDS_ORDERS_LISTFST_ID: TFloatField
      FieldName = 'FST_ID'
      Required = True
    end
    object CDS_ORDERS_LISTFT_ID: TFloatField
      FieldName = 'FT_ID'
      Required = True
    end
    object CDS_ORDERS_LISTC_ID: TFloatField
      FieldName = 'C_ID'
      Required = True
    end
    object CDS_ORDERS_LISTS_ID: TFloatField
      FieldName = 'S_ID'
      Required = True
    end
    object CDS_ORDERS_LISTS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Required = True
      Size = 150
    end
    object CDS_ORDERS_LISTCOLOUR: TStringField
      FieldName = 'COLOUR'
      Required = True
      Size = 50
    end
    object CDS_ORDERS_LISTCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Required = True
      Size = 50
    end
    object CDS_ORDERS_LISTID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
      Required = True
    end
    object CDS_ORDERS_LISTRUS_MARKS: TStringField
      FieldName = 'RUS_MARKS'
      Size = 4000
    end
    object CDS_ORDERS_LISTH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 50
    end
    object CDS_ORDERS_LISTQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Required = True
    end
    object CDS_ORDERS_LISTREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 256
    end
    object CDS_ORDERS_LISTH_NAME: TStringField
      FieldName = 'H_NAME'
      Size = 256
    end
    object CDS_ORDERS_LISTCOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 350
    end
    object CDS_ORDERS_LISTID_ORDERS_CLIENTS: TFloatField
      FieldName = 'ID_ORDERS_CLIENTS'
    end
    object CDS_ORDERS_LISTNBUTTON: TIntegerField
      FieldName = 'NBUTTON'
    end
    object CDS_ORDERS_LISTHOL_SUB_TYPE: TStringField
      FieldName = 'HOL_SUB_TYPE'
      Size = 50
    end
    object CDS_ORDERS_LISTORD: TFloatField
      FieldName = 'ORD'
    end
  end
  object DS_ORDERS_LIST: TOraDataSource
    DataSet = CDS_ORDERS_LIST
    Left = 40
    Top = 192
  end
  object pmStat: TPopupMenu
    Left = 120
    Top = 161
    object N4: TMenuItem
      Caption = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1090#1072#1073#1083#1080#1094#1091
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1082#1086#1083#1086#1085#1086#1082
      object N6: TMenuItem
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Checked = True
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' ('#1088#1091#1089'.)'
        Checked = True
        OnClick = N6Click
      end
      object N25: TMenuItem
        Caption = #1062#1077#1085#1072
        OnClick = N6Click
      end
      object N8: TMenuItem
        Caption = #1058#1080#1087
        Checked = True
        OnClick = N6Click
      end
      object N9: TMenuItem
        Caption = #1055#1086#1076#1090#1080#1087
        Checked = True
        OnClick = N6Click
      end
      object N1: TMenuItem
        Caption = #1043#1086#1083'. '#1090#1080#1087
        OnClick = N6Click
      end
      object N3: TMenuItem
        Caption = #1043#1086#1083'.'#1087#1086#1076#1090#1080#1087
        OnClick = N6Click
      end
      object N11: TMenuItem
        Caption = #1062#1074#1077#1090
        Checked = True
        OnClick = N6Click
      end
      object N12: TMenuItem
        Caption = #1044#1083#1080#1085#1072
        Checked = True
        OnClick = N6Click
      end
      object N13: TMenuItem
        Caption = #1055#1072#1095#1082#1072
        Checked = True
        OnClick = N6Click
      end
      object N17: TMenuItem
        Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
        OnClick = N6Click
      end
      object N18: TMenuItem
        Caption = #1057#1090#1088#1072#1085#1072
        OnClick = N6Click
      end
      object N14: TMenuItem
        Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
        Checked = True
        OnClick = N6Click
      end
      object N15: TMenuItem
        Caption = #1040#1088#1090#1080#1082#1091#1083
        Checked = True
        OnClick = N6Click
      end
      object N16: TMenuItem
        Caption = 'Remarks'
        Checked = True
        OnClick = N6Click
      end
      object N23: TMenuItem
        Caption = #1052#1072#1096#1080#1085#1072
        Visible = False
        OnClick = N6Click
      end
    end
    object N19: TMenuItem
      Caption = '-'
    end
    object aFullInfo1: TMenuItem
      Caption = #1055#1086#1083#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      OnClick = aFullInfo1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object mnExportTXT: TMenuItem
      Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100' TXT '#1092#1072#1081#1083
      Hint = #1042#1099#1075#1088#1091#1079#1080#1090#1100' TXT '#1092#1072#1081#1083
      ShortCut = 121
      OnClick = mnExportTXTClick
    end
  end
  object CDS_STAT: TOraQuery
    SQL.Strings = (
      'begin'
      
        '  pack_orders.get_stat(:ID_DEP_, :ID_ORDER_, :ID_CLIENT_, :ID_FS' +
        'T_, :FST_, :ZATIR_, :n_id_, :CURSOR_);'
      'end;')
    Left = 80
    Top = 160
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
    object CDS_STATPRICE: TFloatField
      FieldName = 'PRICE'
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
    Left = 80
    Top = 192
  end
end
