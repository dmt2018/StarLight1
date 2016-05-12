object ReportTovarnNaclsForm: TReportTovarnNaclsForm
  Left = 658
  Top = 220
  Caption = #1054#1058#1063#1045#1058'// '#1044#1074#1080#1078#1077#1085#1080#1077' '#1090#1086#1074#1072#1088#1072' // '#1054#1092#1086#1088#1084#1083#1077#1085#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
  ClientHeight = 513
  ClientWidth = 964
  Color = clBtnFace
  Constraints.MinHeight = 550
  Constraints.MinWidth = 700
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
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
  object Panel14: TPanel
    Left = 0
    Top = 81
    Width = 964
    Height = 432
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel15: TPanel
      Left = 0
      Top = 0
      Width = 964
      Height = 25
      Align = alTop
      Alignment = taLeftJustify
      BevelInner = bvSpace
      BevelOuter = bvLowered
      Caption = '  '#1044#1086#1082#1091#1084#1077#1085#1090#1099
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object PageControl1: TPageControl
      Left = 0
      Top = 25
      Width = 964
      Height = 32
      ActivePage = TabSheet2
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      Style = tsFlatButtons
      TabOrder = 1
      OnChange = PageControl1Change
      object TabSheet2: TTabSheet
        Tag = 1
        Caption = ' '#1055#1088#1080#1093#1086#1076' '
        ImageIndex = 1
      end
      object TabSheet1: TTabSheet
        Tag = 4
        Caption = ' '#1055#1088#1086#1076#1072#1078#1080' '
      end
      object TabSheet3: TTabSheet
        Tag = 2
        Caption = ' '#1057#1087#1080#1089#1072#1085#1080#1077' '
        ImageIndex = 2
      end
      object TabSheet4: TTabSheet
        Tag = 3
        Caption = ' '#1059#1094#1077#1085#1082#1072' '
        ImageIndex = 3
      end
      object TabSheet5: TTabSheet
        Tag = 5
        Caption = ' '#1048#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1103' '
        ImageIndex = 4
      end
      object TabSheet6: TTabSheet
        Tag = 6
        Caption = ' '#1055#1077#1088#1077#1086#1094#1077#1085#1082#1072' '
        ImageIndex = 5
      end
      object TabSheet7: TTabSheet
        Caption = ' '#1055#1086#1083#1085#1099#1081' '#1089#1087#1080#1089#1086#1082' '
        ImageIndex = 6
      end
    end
    object grid_docs: TcxGrid
      Left = 0
      Top = 57
      Width = 964
      Height = 375
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      LookAndFeel.Kind = lfOffice11
      object grid_docs_v: TcxGridDBBandedTableView
        PopupMenu = ppm_report
        OnDblClick = grid_docs_vDblClick
        NavigatorButtons.ConfirmDelete = False
        FilterBox.Position = fpTop
        OnCustomDrawCell = grid_docs_vCustomDrawCell
        DataController.DataSource = docs_ds
        DataController.Filter.AutoDataSetFilter = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = d_DOC_NUMBER
          end
          item
            Format = '0'
            Kind = skSum
            Column = d_QUANTITY
          end
          item
            Format = '0.00'
            Kind = skSum
            Column = price_difference
          end
          item
            Format = '0.00'
            Kind = skSum
            Column = d_QUANTITY_PRICE
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1092#1080#1083#1100#1090#1088#1086#1074
        FilterRow.Visible = True
        OptionsBehavior.CellHints = True
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.BandMoving = False
        OptionsCustomize.BandSizing = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
        OptionsView.Footer = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.BandHeaderEndEllipsis = True
        Bands = <
          item
            Caption = #1060#1080#1088#1084#1072
            HeaderAlignmentHorz = taLeftJustify
          end>
        object d_brief: TcxGridDBBandedColumn
          Caption = #1054#1092#1080#1089
          DataBinding.FieldName = 'brief'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 60
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object _d_ID_DOC: TcxGridDBBandedColumn
          Caption = 'ID'
          DataBinding.FieldName = 'ID_DOC'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object d_store_type_name: TcxGridDBBandedColumn
          Caption = #1054#1087#1077#1088#1072#1094#1080#1103
          DataBinding.FieldName = 'store_type_name'
          HeaderAlignmentVert = vaCenter
          MinWidth = 50
          Options.Editing = False
          Options.CellMerging = True
          Options.Moving = False
          Options.Sorting = False
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object d_DOC_NUMBER: TcxGridDBBandedColumn
          Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
          DataBinding.FieldName = 'DOC_NUMBER'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 100
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 100
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object d_DOC_DATE: TcxGridDBBandedColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = 'DOC_DATE'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.DateOnError = deToday
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 90
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object d_store_type_n: TcxGridDBBandedColumn
          Caption = #1057#1082#1083#1072#1076
          DataBinding.FieldName = 'store_type_n'
          OnCustomDrawCell = d_store_type_nCustomDrawCell
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 80
          Options.Editing = False
          Options.CellMerging = True
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object d_INV_ID: TcxGridDBBandedColumn
          Caption = #8470' '#1080#1085#1074#1086#1081#1089#1072
          DataBinding.FieldName = 'INV_ID'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 90
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object d_NICK: TcxGridDBBandedColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'NICK'
          HeaderAlignmentVert = vaCenter
          MinWidth = 70
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object d_QUANTITY: TcxGridDBBandedColumn
          Caption = #1050#1086#1083'-'#1074#1086
          DataBinding.FieldName = 'QUANTITY'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 80
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object d_QUANTITY_real: TcxGridDBBandedColumn
          Caption = #1063#1080#1089#1083#1080#1083#1086#1089#1100' '#1076#1086' '#1085#1072#1095'. '#1086#1087#1077#1088'.'
          DataBinding.FieldName = 'QUANTITY_real'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 90
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 90
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object d_PRICE: TcxGridDBBandedColumn
          Caption = #1062#1077#1085#1072
          DataBinding.FieldName = 'PRICE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 80
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object PRICE_new: TcxGridDBBandedColumn
          Caption = #1057#1090#1072#1088#1072#1103' '#1094#1077#1085#1072
          DataBinding.FieldName = 'PRICE_LIST'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
          Properties.ReadOnly = True
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 80
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object price_difference: TcxGridDBBandedColumn
          Caption = #1055#1077#1088#1077#1086#1094#1077#1085#1077#1085#1086' '#1085#1072
          DataBinding.FieldName = 'price_difference'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
          Properties.ReadOnly = True
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 110
          Options.Editing = False
          Options.Filtering = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 110
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object d_p_percent: TcxGridDBBandedColumn
          Caption = '% '#1089#1082#1080#1076#1082#1080' / '#1085#1072#1076#1073#1072#1074#1082#1080
          DataBinding.FieldName = 'p_percent'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 70
          Options.Editing = False
          Options.Filtering = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object d_QUANTITY_PRICE: TcxGridDBBandedColumn
          Caption = #1053#1072' '#1089#1091#1084#1084#1091
          DataBinding.FieldName = 'QUANTITY_PRICE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
          Properties.ReadOnly = True
          GroupSummaryAlignment = taRightJustify
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 80
          Options.Editing = False
          Options.Filtering = False
          Options.HorzSizing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object d_COMMENTS: TcxGridDBBandedColumn
          Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
          DataBinding.FieldName = 'COMMENTS'
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Options.Moving = False
          Options.Sorting = False
          Width = 120
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object _d_DOC_DATE_REAL: TcxGridDBBandedColumn
          Caption = #1044#1072#1090#1072' '#1074#1074#1086#1076#1072
          DataBinding.FieldName = 'DOC_DATE_REAL'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.DateOnError = deToday
          Visible = False
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 120
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 120
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object _d_ID_DOC_TYPE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID_DOC_TYPE'
          Visible = False
          HeaderAlignmentVert = vaCenter
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object _d_store_type_n: TcxGridDBBandedColumn
          DataBinding.FieldName = 'store_type'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object d_operator_name: TcxGridDBBandedColumn
          Caption = #1054#1087#1077#1088#1072#1090#1086#1088
          DataBinding.FieldName = 'operator_name'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Vert = taVCenter
          Properties.ReadOnly = True
          HeaderAlignmentVert = vaCenter
          MinWidth = 120
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Styles.Content = cxStyle1
          Width = 120
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object d_ID_OFFICE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ID_OFFICE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
      end
      object grid_docs_l: TcxGridLevel
        GridView = grid_docs_v
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 964
    Height = 40
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object DBGridEh: TDBGridEh
      Left = 0
      Top = 0
      Width = 964
      Height = 40
      Align = alClient
      AllowedOperations = [alopUpdateEh, alopDeleteEh]
      AllowedSelections = [gstRecordBookmarks, gstAll]
      AutoFitColWidths = True
      ColumnDefValues.DropDownShowTitles = True
      ColumnDefValues.EndEllipsis = True
      ColumnDefValues.Title.TitleButton = True
      ColumnDefValues.Title.ToolTips = True
      ColumnDefValues.ToolTips = True
      Ctl3D = True
      DataGrouping.GroupLevels = <>
      DataSource = N_ID_INFO_ds
      EditActions = [geaCopyEh, geaPasteEh, geaSelectAllEh]
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      FooterColor = clBtnFace
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -12
      FooterFont.Name = 'Arial'
      FooterFont.Pitch = fpFixed
      FooterFont.Style = [fsBold]
      HorzScrollBar.Visible = False
      OptionsEh = [dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghColumnResize, dghColumnMove]
      ParentCtl3D = False
      ParentFont = False
      RowDetailPanel.Color = clBtnFace
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Arial'
      TitleFont.Pitch = fpFixed
      TitleFont.Style = [fsBold]
      TitleHeight = 15
      VTitleMargin = 20
      OnDrawColumnCell = DBGridEhDrawColumnCell
      Columns = <
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'N_ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = 'ID'
          Width = 80
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'CODE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          Footers = <>
          MaxWidth = 110
          MinWidth = 100
          Title.Caption = #1050#1086#1076
          Width = 100
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'H_CODE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          Footers = <>
          MaxWidth = 120
          MinWidth = 100
          Title.Caption = #1040#1088#1090#1080#1082#1091#1083
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'F_TYPE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          Footers = <>
          MinWidth = 50
          ReadOnly = True
          STFilter.DataField = 'FT_ID'
          STFilter.KeyField = 'FT_ID'
          STFilter.ListField = 'F_TYPE'
          Title.Caption = #1043#1088#1091#1087#1087#1072
          Width = 118
        end
        item
          EditButtons = <>
          FieldName = 'F_SUB_TYPE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          Footers = <>
          MinWidth = 50
          ReadOnly = True
          Title.Caption = #1055#1086#1076#1075#1088#1091#1087#1087#1072
          Width = 127
        end
        item
          EditButtons = <>
          FieldName = 'COMPILED_NAME_OTDEL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          Footers = <>
          MinWidth = 50
          ReadOnly = True
          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
          Width = 174
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'S_NAME_RU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          Footers = <>
          MaxWidth = 120
          MinWidth = 100
          STFilter.DataField = 'S_ID'
          STFilter.KeyField = 'S_ID'
          STFilter.ListField = 'S_NAME_RU'
          Title.Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
          Width = 100
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'COUNTRY'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          Footers = <
            item
              ValueType = fvtCount
            end>
          MaxWidth = 120
          MinWidth = 100
          STFilter.DataField = 'COUNTRY'
          STFilter.KeyField = 'COUNTRY'
          STFilter.ListField = 'COUNTRY'
          Title.Caption = #1057#1090#1088#1072#1085#1072
          Width = 100
        end
        item
          AutoFitColWidth = False
          DisplayFormat = '0.00'
          EditButtons = <>
          FieldName = 'PRICE_list'
          Footers = <>
          MaxWidth = 80
          MinWidth = 80
          Title.Alignment = taCenter
          Title.Caption = #1062#1077#1085#1072' '#1090#1077#1082'.'
          Width = 80
        end
        item
          AutoFitColWidth = False
          DisplayFormat = '0'
          EditButtons = <>
          FieldName = 'QUANTITY'
          Footers = <>
          MaxWidth = 90
          MinWidth = 90
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1083'-'#1074#1086' '#1089#1082#1083#1072#1076
          Width = 90
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 964
    Height = 41
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Caption = '  '#1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      964
      41)
    object Label1: TLabel
      Left = 352
      Top = 12
      Width = 43
      Height = 16
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Panel13: TPanel
      Left = 584
      Top = 2
      Width = 378
      Height = 37
      Align = alRight
      BevelOuter = bvNone
      Color = clSkyBlue
      TabOrder = 0
      object Close_BitBtn: TcxButton
        Left = 249
        Top = 4
        Width = 126
        Height = 30
        Cursor = crHandPoint
        Cancel = True
        Caption = #1047#1072#1082#1088#1099#1090#1100
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
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66666933
          34FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666
          A36666A76666693334FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666A0
          6666B06667C66667CC6667B36667693334FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A66
          66AF6869C0696ACF696ACE6869CD6768CD6768B36667693334AE66669A66669A
          66669A66669A66669A66669A66669A66669A6666FF00FFFF00FFFF00FFFF00FF
          FF00FF9A6666D26F70D56F70D46E6FD36D6ED26C6DD16B6CD06A6BB467686933
          34FEA2A3FDA8A9FCAFB0FBB6B7FABCBDF9C2C2F9C5C6F9C5C69A6666FF00FFFF
          00FFFF00FFFF00FFFF00FF9A6666D97374D87273D77172D67071D56F70D46E6F
          D36D6EB6696A69333459B26733CB6733CB6733CB6733CB6733CB6733CB67F9C5
          C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666DC7677DB7576DA7475D9
          7374D87273D77172D67071B86B6B69333459B26733CB6733CB6733CB6733CB67
          33CB6733CB67F9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666DF79
          7ADF797ADE7879DD7778DC7677DB7576DA7475B96C6D69333459B26733CB6733
          CB6733CB6733CB6733CB6733CB67F9C5C69A6666FF00FFFF00FFFF00FFFF00FF
          FF00FF9A6666E37D7EE27C7DE17B7CE07A7BDF797ADE7879DD7778BB6E6F6933
          3459B26733CB6733CB6733CB6733CB6733CB6733CB67F9C5C69A6666FF00FFFF
          00FFFF00FFFF00FFFF00FF9A6666E68081E57F80E47E7FE37D7EE27C7DE17B7C
          E07A7BBD707069333459B26733CB6733CB6733CB6733CB6733CB6733CB67F9C5
          C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666E98384E88283E78182E6
          8081E78788ECA6A7E47E7FBE717269333473B87633CB6733CB6733CB6733CB67
          33CB6733CB67F9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666ED87
          88EC8687EB8586EA8485F2B9BAFFFFFFF0B0B0C07374693334F2D9C0C7F0BC79
          DD9079DD9060D68160D68160D681F9C5C69A6666FF00FFFF00FFFF00FFFF00FF
          FF00FF9A6666F08A8BEF898AEE8889ED8788F5BBBCFFFFFFF0AAABC275756933
          34F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDE2F8CCE2F8CCF9C5C69A6666FF00FFFF
          00FFFF00FFFF00FFFF00FF9A6666F38D8EF28C8DF18B8CF08A8BEF898AF3A6A7
          ED8788C37677693334F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5
          C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666F69091F69091F58F90F4
          8E8FF38D8EF28C8DF18B8CC57878693334F2D9C0FFFFDDFFFFDDFFFFDDFFFFDD
          FFFFDDFFFFDDF9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666FA94
          95F99394F89293F79192F69091F58F90F48E8FC77A7A693334F2D9C0FFFFDDFF
          FFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5C69A6666FF00FFFF00FFFF00FFFF00FF
          FF00FF9A6666FD9798FC9697FB9596FA9495F99394F89293F79192C87B7C6933
          34F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5C69A6666FF00FFFF
          00FFFF00FFFF00FFFF00FF9A6666FF999AFF999AFE9899FD9798FD9798FC9697
          FB9596CA7D7D693334F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5
          C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666FF999AFF999AFF999AFF
          999AFF999AFE9899FE9899CC7F7F693334F2D9C0FFFFDDFFFFDDFFFFDDFFFFDD
          FFFFDDFFFFDDF9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666F996
          97FF999AFF999AFF999AFF999AFF999AFF999ACD8080693334F2D9C0FFFFDDFF
          FFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5C69A6666FF00FFFF00FFFF00FFFF00FF
          FF00FF9A66669A6666C0797ADF898AFF999AFF999AFF999AFF999ACD80806933
          34F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5C69A6666FF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666A76C6DC67C7DF29394
          FF999ACD8080693334A766669A66669A66669A66669A66669A66669A66669A66
          669A6666FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FF9A66669A6666AD7070B37373693334FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A6666693334FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        Spacing = 6
      end
    end
  end
  object cds_docs: TOraQuery
    Session = DM.OraSession
    SQL.Strings = (
      
        'select a.n_id, a.ID_DOC, a.DOC_NUMBER, a.ID_DOC_TYPE, a.doc_date' +
        ', a.doc_date_real, a.INV_ID, a.NICK, a.FIO, a.QUANTITY, a.QUANTI' +
        'TY_real, '
      
        '        a.PRICE, a.PRICE_LIST, a.quantity*(a.PRICE-a.PRICE_LIST)' +
        ' price_difference, a.operator_name,'
      
        '        case when a.ID_DOC_TYPE=6 then a.quantity*(a.PRICE-a.PRI' +
        'CE_LIST) else a.QUANTITY_PRICE end QUANTITY_PRICE, '
      
        '        decode((round(a.PRICE / decode(a.price_list,null,a.price' +
        ',0,1,a.price_list) ,2)*100 - 100),0,'#39#39', (round(a.PRICE / decode(' +
        'a.price_list,null,a.price,0,1,a.price_list) ,2)*100 - 100) ) as ' +
        'p_percent,'
      
        '        a.COMMENTS, b.NAME as store_type_name, c.NAME as store_t' +
        'ype_n, a.STORE_TYPE, a.id_office, a.brief '
      'from'
      '('
      
        'select a.n_id, a.ID_DOC, b.DOC_NUMBER, b.ID_DOC_TYPE, b.doc_date' +
        ', b.INV_ID, b.COMMENTS, c.NICK, c.FIO, sum(QUANTITY_real) as QUA' +
        'NTITY_real, '
      
        '       a.PRICE, a.PRICE_LIST, b.doc_date_real, a.STORE_TYPE, b.o' +
        'perator_name,    '
      #9'CASE '
      '    WHEN b.ID_DOC_TYPE=5 THEN (sum(QUANTITY-QUANTITY_REAL)) '
      '    ELSE (sum(QUANTITY)) '
      '  END QUANTITY,'
      #9'CASE '
      
        '    WHEN b.ID_DOC_TYPE=5 THEN (sum((QUANTITY-QUANTITY_REAL)*a.PR' +
        'ICE)) '
      '    ELSE (sum(QUANTITY*PRICE)) '
      '  END QUANTITY_PRICE'#9
      '  , a.id_office, o.brief'
      'FROM '
      #9'store_doc_data a, store_doc b, CLIENTS c, offices o'
      'where '
      '  a.ID_DOC = b.ID_DOC'
      #9'and a.n_id = :N_ID'#9
      #9'and b.ID_CLIENT = c.ID_CLIENTS(+)'
      #9'and (b.doc_date between :DOC_DATE1 and :DOC_DATE2)'
      '        and a.id_office = o.id_office'
      '        and (a.id_office = :v_office or :v_office = 0)'
      
        #9'group by a.n_id, a.ID_DOC, a.PRICE, a.PRICE_LIST, b.DOC_NUMBER,' +
        ' b.ID_DOC_TYPE, b.doc_date, '
      
        '                b.INV_ID, b.COMMENTS, c.NICK, c.FIO, b.doc_date_' +
        'real, a.STORE_TYPE, b.operator_name'
      '                , a.id_office, o.brief'
      #9'order by  b.doc_date_real'
      ') a, STORE_DOC_TYPE b, STORE_TYPE c'
      'where a.ID_DOC_TYPE = b.ID_DOC_TYPE'
      '      and a.STORE_TYPE = c.ID_STORE_TYPE'
      'order by doc_date_real')
    FetchRows = 100
    AutoCommit = False
    RefreshOptions = [roAfterUpdate]
    Options.CacheLobs = False
    Options.FieldsOrigin = True
    Options.ReturnParams = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = cds_docsBeforeOpen
    Left = 600
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'N_ID'
      end
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
        Name = 'v_office'
      end>
  end
  object docs_ds: TOraDataSource
    DataSet = cds_docs
    Left = 640
    Top = 144
  end
  object N_ID_INFO: TOraQuery
    Session = DM.OraSession
    SQL.Strings = (
      'select '
      '  a.N_ID,'
      '  a.CODE,'
      '  a.S_NAME_RU,'
      '  a.S_ID,'
      '  a.COUNTRY,'
      '  a.C_ID,'
      '  a.F_TYPE,'
      '  a.F_SUB_TYPE,'
      '  a.FT_ID,'
      '  a.FST_ID,'
      '  a.full_name,'
      '  a.spesification,'
      '  a.H_CODE,'
      '  a.COMPILED_NAME_OTDEL,'
      '  a.PRICE_list,'
      '  b.quantity '
      'from '
      'store_docdatatemp_view_nom a, store_main b'
      'where'
      '/*Filter*/ a.n_id=b.n_id  '
      'and a.N_ID = :N_ID')
    FetchRows = 100
    AutoCommit = False
    RefreshOptions = [roAfterUpdate]
    Options.CacheLobs = False
    Options.FieldsOrigin = True
    Options.ReturnParams = True
    FilterOptions = [foCaseInsensitive]
    Left = 528
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'N_ID'
      end>
  end
  object N_ID_INFO_ds: TOraDataSource
    DataSet = N_ID_INFO
    Left = 568
    Top = 56
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 600
    Top = 185
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
  end
  object al_report: TActionList
    Images = imglist_report
    Left = 128
    Top = 8
    object aAdd: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 0
      ShortCut = 113
    end
    object aEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      ImageIndex = 1
      ShortCut = 114
    end
    object aDelete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 2
      ShortCut = 115
      OnExecute = aDeleteExecute
    end
    object aExport: TAction
      Caption = #1042#1099#1074#1086#1076' '#1074' Excel'
      ImageIndex = 3
      OnExecute = aExportExecute
    end
    object aRefresh: TAction
      Caption = 'aRefresh'
      OnExecute = aRefreshExecute
    end
  end
  object imglist_report: TImageList
    Left = 160
    Top = 8
    Bitmap = {
      494C010104000900400010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000208420442BA62FD82CA834D82CA633D82AA22FD82492244A0000
      0000000000000000000000000000000000000000000000000000AD7B7B00B584
      8400B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
      8400B5848400B5848400B5848400000000000000000000000000181862042929
      A59326269B3B0000000000000000000000000000000000000000000000002121
      8A3126269B941818630500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005656564E7C7C7CD9636363A04040400A0000000000000000000000000000
      0000000000002185205D44CC6CFF49D871FF49D871FF44CC6DFF249424630000
      0000000000000000000000000000000000000000000000000000AD738400F7E7
      C600F7DEC600F7D6B500F7D6AD00EFCEA500EFCE9C00EFCE9400EFCE9400EFCE
      9400EFCE9400EFCE9400B58484000000000000000000181864042A2AA9A94D4D
      D0FF3535B4F226269B3B0000000000000000000000000000000022228C312F2F
      A9EC4242C5FF26269BAD18186305000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005959
      5971AEAEAEFCFEFEFEFFE1E1E1FF5B5B5B8D0000000000000000000000000000
      0000000000002186215D44CC6AFF3ECB4FFF3DCB4EFF43CB6AFF249524630000
      0000000000000000000000000000000000000000000000000000AD738400F7E7
      CE00F7DEC600F7DEBD00F7D6B500F7D6AD00EFCEA500EFCE9C00EFCE9400EFCE
      9400EFCE9400EFCE9400B584840000000000191966042B2BACA94E4ED1FF6969
      E2FF6969E9FF3636B5F226269B3B000000000000000023238E322F2FABED4E4E
      D8FF4747D2FF4444C9FF26269BAD181863050000000000000000000000000000
      00000000000000000000000000000000000000000000353535045E5E5E96C3C3
      C3FFFFFFFFFFFFFFFFFFF7F7F7FF676767B70000000000000000000000000000
      0000000000002287215D47CF6DFF42CF55FF3ECB4FFF43CB6AFF259625630000
      0000000000000000000000000000000000000000000000000000AD738400DEDE
      DE009C9C9C009C9C9C009C9C9C0058534E00A3927B009C9C9C009C9C9C009C9C
      9C009C9C9C00EFCE9400B5848400000000002B2BAE8E4949CDFF6060D9FF6868
      DDFF7070E7FF6C6CEDFF3636B5F226269B3B232391323131AEED5252DCFF4444
      CEFF4242CCFF4747D2FF4242C6FF26269B940000000000000000000000000000
      0000000000000000000000000000000000004141410E5B5B5BB8979797FFFFFF
      FFFFFFFFFFFFECECECFF797979E25454542C0000000000000000000000000000
      0000000000002288225D4BD271FF4CD65FFF43CF55FF44CC6BFF259725630000
      0000000000000000000000000000000000000000000000000000AD7B8400F7EF
      DE00F7E7D600F7E7CE00F7DEC600373C3E005160610096836700C3A88200EFCE
      9C00EFCE9400EFCE9400B5848400000000002828A0313434B8EC5E5EDEFF6868
      DEFF7070E7FF7575EEFF6D6DEFFF3636B5F23333B1ED5A5AE2FF4D4DD5FF4343
      CDFF4242CDFF4D4DD8FF2F2FA9ED232392330000000000000000000000000000
      00000000000000000000000000004A4A4A1F5D5D5DD3787878FF989898FFE7E7
      E7FFDDDDDDFF6B6B6BCC4E4E4E190000000024902346248F235C238E235C238D
      225C238B225C29A428984ED575FF58DE6CFF4DD760FF47CE6EFF28A1279D2083
      205F2082205F20811F5C1F801F5C1F7F1F460000000000000000B5848400DEDE
      DE009C9C9C009C9C9C009C9C9C0054777B0029799A00D47719008A5B5200C3A8
      82009C9C9C00EFCE9400B584840000000000000000002828A0313535B9EC6464
      E4FF7070E7FF7676EEFF7777F1FF6C6CEFFF6363E9FF5A5ADEFF4C4CD4FF4444
      CEFF4D4DD8FF2F2FABED24249433000000000000000000000000000000000000
      0000000000000000000051515136605F5FE77F7F7FFFA0A0A0FF9C9C9CFF7373
      73FF606060AF4545450B000000000000000031B736DE52D77AFF53D87AFF54D9
      7BFF55DA7CFF54D97CFF64EA92FF63E778FF59DF6CFF55DF81FF47CE6EFF44CC
      6BFF43CB69FF43CA68FF43CA6BFF2AA330DE0000000000000000BD848400FFF7
      EF00F7EFE700F7EFDE00F7E7D600F7E7CE007C707800F8B26600D47719009683
      6700C3A88200EFCE9400B58484000000000000000000000000002828A0313535
      B9EC6868E9FF7575EEFF7777F0FF7272EEFF6767E7FF5A5ADEFF4D4DD5FF4E4E
      D9FF3030ADED2525963300000000000000000000000000000000000000000000
      00000000000056565654636363F5868686FFA4A4A3FF949494FF686868FE5A5A
      5A8D3B3B3B0200000000000000000000000034BB3CDE64E38DFF68E17DFF6EE8
      84FF72ED89FF74F08BFF72F088FF6DED82FF65E879FF5BE06EFF51D964FF47D2
      5AFF40CD52FF3DCB4FFF48D770FF2DA836DE0000000000000000C68C8C00DEDE
      DE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00FBD3A900F9C08600D477
      19008A5B5200C3A88200B5848400000000000000000000000000000000002828
      A1313636BAEC6D6DEEFF7777F0FF7272EEFF6767E7FF5A5ADEFF5454DEFF3131
      B0ED252599330000000000000000000000000000000000000000000000000000
      000059595978696868FD8D8D8DFFA6A5A5FF8B8C8CFF636363FA5A5A5A680000
      00000000000000000000000000000000000034BC3CDE5EDB86FF60D874FF67E0
      7CFF6DE783FF71EC88FF74EF89FF73F089FF6EEE83FF66E97BFF5CE271FF52DA
      66FF48D35BFF41CD53FF48D770FF2EA936DE0000000000000000C68C8C00FFFF
      FF00FFFFFF00FFF7EF00F7EFE700F7EFDE00F7E7D600AD7B7300FBD3A900F8B2
      6600D477190096836700B5848400000000000000000000000000000000002727
      9E313636BBEC6D6DEEFF7777F0FF7272EEFF6767E7FF5A5ADEFF5454DEFF3232
      B3F226269B3B0000000000000000000000000000000000000000373737055A5A
      5A9D757979FF949594FFA5A5A5FF828282FF5F5F5FF057575747000000000000
      00000000000000000000000000000000000032BA37DE4DD375FF4ED475FF51D6
      77FF53D87AFF54D97CFF68EB96FF74EF89FF73F089FF67EC95FF51D778FF4DD4
      75FF4AD171FF47CE6DFF45CD6DFF2BA731DE0000000000000000CE948C00DEDE
      DE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00FBCA
      9500B98585004ABDFF000A62A0000000000000000000000000002828A0313636
      BDEC6868EAFF7575EEFF7777F0FF7272EEFF6767E7FF5A5ADEFF4D4DD5FF4E4E
      DAFF3232B3F226269B3B00000000000000000000000042424211676767BD8385
      85FF3C89CEFF83A7C0FF7A7B7AFF676C6CE38298972E95BCBA08000000000000
      00000000000000000000000000000000000029A02849289F275F289E275F289D
      275F279C265F2BAD2A9A54D97AFF70EB87FF73EF8AFF57DB7FFF2AA9299D2493
      245F2492235F2390235F238F235F238E23490000000000000000CE948C00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7EF00F7EFE700F7EFDE00F7E7D600AD7B
      7300299CEF00299CEF00021EAA0000000000000000002828A2313636BEEC6464
      E5FF7070E7FF7676EEFF7777F1FF6B6BEEFF6363E9FF5A5ADEFF4C4CD4FF4444
      CEFF4D4DD9FF3232B3F226269B3B000000004B4B4B227C7C7CD7ECECECFFD1D8
      D8FF2C97E1FF2797E0FF3C84BBFE3D9DDCDAA2E8F66754BAECC0BAF8FA2B90BB
      B909BAF8F929A6EFF84C00000000000000000000000000000000000000000000
      0000000000002490245D51D778FF6BE480FF70EA85FF56DB7EFF28A128630000
      0000000000000000000000000000000000000000000000000000D69C9400DEDE
      DE009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C009C9C9C00EFDED600AD84
      7300AD7B73006D8AFD00106BFF00000000002929A4313636C0EC5E5EDFFF6868
      DEFF7070E7FF7575EEFF6C6CEFFF3636BCED3535BAEC5A5AE3FF4D4DD5FF4343
      CDFF4242CCFF4D4DD9FF3232B3F226269B3B696969B6F4F6F6FFB7DBF5FF4DA0
      E5FF3EBFEFFF4BE5FCFF55E2F9FF2FA1E6E990DDF48920A9E9FE41B4EBCB3EB6
      ECD22DB3EBE549BEEEC3BAF2EF15000000000000000000000000000000000000
      0000000000002592245D4FD475FF63DB77FF6AE37EFF55D97DFF29A228630000
      0000000000000000000000000000000000000000000000000000DEA59400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7EF00E7CEC600E7B5
      8400E7AD6B000018C6000018C600000000002E2EB9904B4BD2FF6060D9FF6868
      DDFF7070E7FF6B6BEDFF3737BEED2929A7332828A1313434B9EC5353DEFF4444
      CEFF4242CCFF4848D3FF4343CAFF2929A68D5F5F5F98E7EAE9FF72B2E8FF279A
      E3FF4EDFFAFF35DEFEFF46D3F6FF027DDDFD25AAE9FF54E8FBFF52E2F8FF099D
      E7FF5FECFAFF18ADEBFE6ED2F2A37A9F9D010000000000000000000000000000
      0000000000002593245D4CD272FF5BD26EFF62DA76FF53D77BFF29A428630000
      0000000000000000000000000000000000000000000000000000DEA59400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6CE00EFC6
      8C00F7BD6B000000000000000000000000001E1E77042F2FBAAA5151D7FF6969
      E2FF6868E9FF3838C0ED2A2AA93300000000000000002828A0313333B8EC4E4E
      DAFF4848D3FF4545CEFF2A2AA9A21A1A6B0247474713676767BD7A7B7BF07BAC
      C0A331ACEAFF3FC4F1FF39BCEEFF1C93E3F22FA2E7E259E9FBFF4AD9F6FF1BA4
      E8EB31B4ECDF4BBFEEC3BBF4F210000000000000000000000000000000000000
      0000000000002594255D4BD172FF59D782FF5FDD89FF51D67AFF29A529630000
      0000000000000000000000000000000000000000000000000000DEA59400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7D6D600EFC6
      8C00B5848400000000000000000000000000000000001E1E77042F2FBAAA4F4F
      D7FF3838C1ED2B2BAC33000000000000000000000000000000002828A0313333
      B8EC4343CCFF2B2BACA21B1B6D0200000000000000000000000000000000B8F0
      F1300C7CDCFE66BAEBA49AE1F55C74CAEF8F3CAAE8D536AEEADD4ABBEDC54CBD
      EDC5BDFBFB28ACF1F94200000000000000000000000000000000000000000000
      0000000000002694254331B934D532BA38D532B938D530B634D52AA629490000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001E1E77042E2E
      B9922B2BAE330000000000000000000000000000000000000000000000002828
      A0312B2BAE891B1B6F020000000000000000000000000000000000000000B2E7
      E51192D9F26EB6EDEB0A0000000091BCB901A8EDF74EBFFAF91AA8DAD807B8EE
      EC1800000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F81FC001C7E3FFF0F81FC00183C1FFE0
      F81FC0010180FF80F81FC0010000FF00F81FC0010000FE010000C0018001FC03
      0000C001C003F8070000C001E007F01F0000C001E007C03F0000C001C003803F
      0000C00180010003F81FC00100000001F81FC00100000000F81FC00701800001
      F81FC00783C1E003F81FFFFFC7E3E20F00000000000000000000000000000000
      000000000000}
  end
  object SaveDialog13: TSaveDialog
    Filter = #1060#1072#1081#1083#1099' EXCEL (*.xls)|*.xls'
    Left = 192
    Top = 8
  end
  object ppm_report: TPopupMenu
    Images = imglist_report
    OnPopup = ppm_reportPopup
    Left = 224
    Top = 8
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ImageIndex = 0
      object N2: TMenuItem
        Caption = #1055#1088#1080#1093#1086#1076
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1055#1088#1086#1076#1072#1078#1072
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1057#1087#1080#1089#1072#1085#1080#1077
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1059#1094#1077#1085#1082#1072
        OnClick = N5Click
      end
      object N6: TMenuItem
        Caption = #1048#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1103
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1055#1077#1088#1077#1086#1094#1077#1085#1082#1072
        OnClick = N7Click
      end
    end
    object N9: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      ImageIndex = 1
      Visible = False
      object N10: TMenuItem
        Caption = #1055#1088#1080#1093#1086#1076
        OnClick = N10Click
      end
      object N11: TMenuItem
        Caption = #1055#1088#1086#1076#1072#1078#1072
        OnClick = N11Click
      end
      object N12: TMenuItem
        Caption = #1057#1087#1080#1089#1072#1085#1080#1077
        OnClick = N12Click
      end
      object N13: TMenuItem
        Caption = #1059#1094#1077#1085#1082#1072
        OnClick = N13Click
      end
      object N14: TMenuItem
        Caption = #1048#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1103
        OnClick = N14Click
      end
      object N15: TMenuItem
        Caption = #1055#1077#1088#1077#1086#1094#1077#1085#1082#1072
        OnClick = N15Click
      end
    end
    object N8: TMenuItem
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1074' '#1080#1089#1090#1086#1088#1080#1102
      Default = True
      object N16: TMenuItem
        Caption = #1055#1088#1086#1076#1072#1078#1072
        OnClick = N16Click
      end
      object N17: TMenuItem
        Caption = #1057#1087#1080#1089#1072#1085#1080#1077
        OnClick = N17Click
      end
      object N18: TMenuItem
        Caption = #1059#1094#1077#1085#1082#1072
        OnClick = N18Click
      end
      object N19: TMenuItem
        Caption = #1055#1077#1088#1077#1086#1094#1077#1085#1082#1072
        OnClick = N19Click
      end
    end
    object mm_delete: TMenuItem
      Action = aDelete
    end
    object N20: TMenuItem
      Caption = '-'
    end
    object mnRaport: TMenuItem
      Caption = #1054#1090#1095#1077#1090
      OnClick = mnRaportClick
    end
    object Excel1: TMenuItem
      Action = aExport
    end
    object N21: TMenuItem
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
  end
  object OraStoredProc: TOraStoredProc
    StoredProcName = 'creator.STORE_PKG.DOC_NEW_HST'
    SQL.Strings = (
      'begin'
      
        '  creator.STORE_PKG.DOC_NEW_HST(:SP_ID_CLIENT, :SP_DOC_DATE, :SP' +
        '_ID_DOC_TYPE, :SP_COMMENTS, :SP_OTDEL, :OUT_MESSAGE, :OUT_DOCID)' +
        ';'
      'end;')
    Left = 257
    Top = 9
    ParamData = <
      item
        DataType = ftFloat
        Name = 'SP_ID_CLIENT'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'SP_DOC_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SP_ID_DOC_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SP_COMMENTS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SP_OTDEL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OUT_MESSAGE'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'OUT_DOCID'
        ParamType = ptOutput
      end>
  end
  object cxStyleRepository2: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
    end
  end
  object frxReportTovarMove: TfrxReport
    Version = '4.12.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41546.700047187500000000
    ReportOptions.LastChange = 41546.790834317130000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 576
    Top = 256
    Datasets = <
      item
        DataSet = frxDBDocs
        DataSetName = 'frxDBDocs'
      end
      item
        DataSet = frxDBNom
        DataSetName = 'frxDBNom'
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
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 143.622140000000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 1084.725110000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1057#8218#1057#8225#1056#181#1057#8218' '#1056#1111#1056#1109' '#1056#1169#1056#1030#1056#1105#1056#182#1056#181#1056#1029#1056#1105#1057#1039' '#1057#8218#1056#1109#1056#1030#1056#176#1057#1026#1056#176)
          ParentFont = False
        end
        object frxDBNomCOMPILED_NAME_OTDEL: TfrxMemoView
          Left = 7.559060000000000000
          Top = 22.677180000000000000
          Width = 1073.386520000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'COMPILED_NAME_OTDEL'
          DataSet = frxDBNom
          DataSetName = 'frxDBNom'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBNom."COMPILED_NAME_OTDEL"]')
          ParentFont = False
        end
        object frxDBNomCODE: TfrxMemoView
          Left = 7.559060000000000000
          Top = 41.574830000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CODE'
          DataSet = frxDBNom
          DataSetName = 'frxDBNom'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBNom."CODE"]')
          ParentFont = False
        end
        object frxDBNomH_CODE: TfrxMemoView
          Left = 188.976500000000000000
          Top = 41.574830000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'H_CODE'
          DataSet = frxDBNom
          DataSetName = 'frxDBNom'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBNom."H_CODE"]')
          ParentFont = False
        end
        object frxDBNomF_TYPE: TfrxMemoView
          Left = 453.543600000000000000
          Top = 41.574830000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'F_TYPE'
          DataSet = frxDBNom
          DataSetName = 'frxDBNom'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBNom."F_TYPE"]')
          ParentFont = False
        end
        object frxDBNomF_SUB_TYPE: TfrxMemoView
          Left = 680.315400000000000000
          Top = 41.574830000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'F_SUB_TYPE'
          DataSet = frxDBNom
          DataSetName = 'frxDBNom'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBNom."F_SUB_TYPE"]')
          ParentFont = False
        end
        object frxDBNomPRICE_LIST: TfrxMemoView
          Left = 7.559060000000000000
          Top = 60.472480000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBNom
          DataSetName = 'frxDBNom'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1118#1056#181#1056#1108#1057#1107#1057#8240#1056#176#1057#1039' '#1057#8224#1056#181#1056#1029#1056#176':')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 79.370130000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBNom
          DataSetName = 'frxDBNom'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109' '#1056#1029#1056#176' '#1057#1027#1056#1108#1056#187#1056#176#1056#1169#1056#181':')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Align = baLeft
          Top = 117.165430000000000000
          Width = 86.929190000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1056#1111#1056#181#1057#1026#1056#176#1057#8224#1056#1105#1057#1039)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Align = baLeft
          Left = 86.929190000000000000
          Top = 117.165430000000000000
          Width = 56.692950000000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211' '#1056#1169#1056#1109#1056#1108'-'#1057#8218#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Align = baLeft
          Left = 143.622140000000000000
          Top = 117.165430000000000000
          Width = 68.031540000000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Align = baLeft
          Left = 211.653680000000000000
          Top = 117.165430000000000000
          Width = 60.472480000000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1056#1108#1056#187#1056#176#1056#1169)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Align = baLeft
          Left = 272.126160000000000000
          Top = 117.165430000000000000
          Width = 68.031540000000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211' '#1056#1105#1056#1029#1056#1030#1056#1109#1056#8470#1057#1027#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Align = baLeft
          Left = 340.157700000000000000
          Top = 117.165430000000000000
          Width = 68.031540000000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          Left = 408.189240000000000000
          Top = 117.165430000000000000
          Width = 45.354360000000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Align = baLeft
          Left = 453.543600000000000000
          Top = 117.165430000000000000
          Width = 45.354360000000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#1109' '#1056#1029#1056#176#1057#8225'. '#1056#1109#1056#1111#1056#181#1057#1026'.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Left = 498.897960000000000000
          Top = 117.165430000000000000
          Width = 60.472480000000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#166#1056#181#1056#1029#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Left = 559.370440000000000000
          Top = 117.165430000000000000
          Width = 60.472480000000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1057#8218#1056#176#1057#1026#1056#176#1057#1039' '#1057#8224#1056#181#1056#1029#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Left = 619.842920000000000000
          Top = 117.165430000000000000
          Width = 60.472480000000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#181#1057#1026#1056#181#1056#1109#1057#8224#1056#181#1056#1029#1056#181#1056#1029#1056#1109' '#1056#1029#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          Left = 680.315400000000000000
          Top = 117.165430000000000000
          Width = 68.031540000000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176' '#1057#1027#1057#1107#1056#1112#1056#1112#1057#1107)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          Left = 748.346940000000000000
          Top = 117.165430000000000000
          Width = 56.692950000000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '% '#1057#1027#1056#1108#1056#1105#1056#1169#1056#1108#1056#1105' / '#1056#1029#1056#176#1056#1169#1056#177#1056#176#1056#1030#1056#1108#1056#1105)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Align = baLeft
          Left = 805.039890000000000000
          Top = 117.165430000000000000
          Width = 147.401670000000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1056#1111#1056#181#1057#1026#1056#176#1057#8218#1056#1109#1057#1026)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Align = baWidth
          Left = 952.441560000000000000
          Top = 117.165430000000000000
          Width = 132.283550000000000000
          Height = 26.456692910000000000
          ShowHint = False
          Color = 15790320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1112#1056#1112#1056#181#1056#1029#1057#8218#1056#176#1057#1026#1056#1105#1056#8470)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 113.385900000000000000
          Top = 60.472480000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBNom
          DataSetName = 'frxDBNom'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBNom."PRICE_LIST"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 113.385900000000000000
          Top = 79.370130000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBNom
          DataSetName = 'frxDBNom'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBNom."QUANTITY"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 17.007874020000000000
        ParentFont = False
        Top = 222.992270000000000000
        Width = 1084.725110000000000000
        DataSet = frxDBDocs
        DataSetName = 'frxDBDocs'
        RowCount = 0
        Stretched = True
        object frxDBDocsSTORE_TYPE_NAME: TfrxMemoView
          Align = baLeft
          Width = 86.929190000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'STORE_TYPE_NAME'
          DataSet = frxDBDocs
          DataSetName = 'frxDBDocs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDocs."STORE_TYPE_NAME"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 86.929190000000000000
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'DOC_NUMBER'
          DataSet = frxDBDocs
          DataSetName = 'frxDBDocs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDocs."DOC_NUMBER"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 143.622140000000000000
          Width = 68.031540000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'DOC_DATE'
          DataSet = frxDBDocs
          DataSetName = 'frxDBDocs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDocs."DOC_DATE"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 211.653680000000000000
          Width = 60.472480000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'STORE_TYPE_N'
          DataSet = frxDBDocs
          DataSetName = 'frxDBDocs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDocs."STORE_TYPE_N"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 272.126160000000000000
          Width = 68.031540000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'INV_ID'
          DataSet = frxDBDocs
          DataSetName = 'frxDBDocs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDocs."INV_ID"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 340.157700000000000000
          Width = 68.031540000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'NICK'
          DataSet = frxDBDocs
          DataSetName = 'frxDBDocs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDocs."NICK"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baLeft
          Left = 408.189240000000000000
          Width = 45.354360000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'QUANTITY'
          DataSet = frxDBDocs
          DataSetName = 'frxDBDocs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDocs."QUANTITY"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baLeft
          Left = 453.543600000000000000
          Width = 45.354360000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'QUANTITY_REAL'
          DataSet = frxDBDocs
          DataSetName = 'frxDBDocs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDocs."QUANTITY_REAL"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Left = 498.897960000000000000
          Width = 60.472480000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'PRICE'
          DataSet = frxDBDocs
          DataSetName = 'frxDBDocs'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDocs."PRICE"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 559.370440000000000000
          Width = 60.472480000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'PRICE_LIST'
          DataSet = frxDBDocs
          DataSetName = 'frxDBDocs'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDocs."PRICE_LIST"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baLeft
          Left = 619.842920000000000000
          Width = 60.472480000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'PRICE_DIFFERENCE'
          DataSet = frxDBDocs
          DataSetName = 'frxDBDocs'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDocs."PRICE_DIFFERENCE"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          Left = 680.315400000000000000
          Width = 68.031540000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'QUANTITY_PRICE'
          DataSet = frxDBDocs
          DataSetName = 'frxDBDocs'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDocs."QUANTITY_PRICE"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baLeft
          Left = 748.346940000000000000
          Width = 56.692950000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'P_PERCENT'
          DataSet = frxDBDocs
          DataSetName = 'frxDBDocs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDocs."P_PERCENT"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Align = baLeft
          Left = 805.039890000000000000
          Width = 147.401670000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'OPERATOR_NAME'
          DataSet = frxDBDocs
          DataSetName = 'frxDBDocs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDocs."OPERATOR_NAME"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Align = baWidth
          Left = 952.441560000000000000
          Width = 132.283550000000000000
          Height = 17.007874020000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'COMMENTS'
          DataSet = frxDBDocs
          DataSetName = 'frxDBDocs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDocs."COMMENTS"]')
          ParentFont = False
        end
      end
    end
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
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 642
    Top = 256
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
    Left = 672
    Top = 256
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
    Left = 702
    Top = 256
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    DeleteEmptyColumns = True
    Left = 675
    Top = 288
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
    Left = 644
    Top = 288
  end
  object frxDBNom: TfrxDBDataset
    UserName = 'frxDBNom'
    CloseDataSource = False
    DataSet = N_ID_INFO
    BCDToCurrency = False
    Left = 608
    Top = 256
  end
  object frxDBDocs: TfrxDBDataset
    UserName = 'frxDBDocs'
    CloseDataSource = False
    DataSet = cds_docs
    BCDToCurrency = False
    Left = 608
    Top = 288
  end
end
