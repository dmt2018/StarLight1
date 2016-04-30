object orders_main: Torders_main
  Left = 321
  Top = 215
  Caption = '  '#1047#1072#1082#1072#1079' '#1090#1086#1074#1072#1088#1072
  ClientHeight = 608
  ClientWidth = 1107
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1107
    Height = 33
    Align = alTop
    Caption = #1057#1087#1080#1089#1086#1082' '#1082#1083#1080#1077#1085#1090#1086#1074', '#1079#1072#1073#1088#1086#1085#1080#1088#1086#1074#1072#1074#1096#1080#1093' '#1090#1086#1074#1072#1088
    Color = clWhite
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
  end
  object Panel4: TPanel
    Left = 0
    Top = 131
    Width = 1107
    Height = 436
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    Color = clAppWorkSpace
    TabOrder = 0
    object grOrders: TcxGrid
      Left = 2
      Top = 2
      Width = 1103
      Height = 432
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      object grOrders_v: TcxGridDBBandedTableView
        PopupMenu = PopupMenu1
        OnDblClick = DBGridEh1DblClick
        NavigatorButtons.ConfirmDelete = False
        FilterBox.Position = fpTop
        OnCustomDrawCell = grOrders_vCustomDrawCell
        DataController.DataSource = DM.Q_ORDERS_DS
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0'
            Kind = skCount
            Column = grOrders_vORDER_SEQ
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1086#1074
        FilterRow.Visible = True
        OptionsBehavior.CellHints = True
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
        OptionsView.CellAutoHeight = True
        OptionsView.DataRowHeight = 30
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderEndEllipsis = True
        Bands = <
          item
            Caption = #1053#1086#1084#1077#1088
          end
          item
            Caption = #1044#1072#1090#1072
          end
          item
          end
          item
            Visible = False
          end>
        object grOrders_vCHECKED: TcxGridDBBandedColumn
          Caption = '::'
          DataBinding.FieldName = 'CHECKED'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 40
          Options.HorzSizing = False
          Options.Moving = False
          Width = 40
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grOrders_vORDER_SEQ: TcxGridDBBandedColumn
          Caption = #8470
          DataBinding.FieldName = 'ORDER_SEQ'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 60
          Options.HorzSizing = False
          Options.Moving = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grOrders_vID_ORDERS: TcxGridDBBandedColumn
          Caption = 'ID'
          DataBinding.FieldName = 'ID_ORDERS'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 60
          Options.HorzSizing = False
          Options.Moving = False
          Width = 60
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grOrders_vDATE_TRUCK_OUT: TcxGridDBBandedColumn
          Caption = #1042#1099#1093#1086#1076' '#1084#1072#1096#1080#1085#1099
          DataBinding.FieldName = 'DATE_TRUCK_OUT'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ReadOnly = True
          Properties.ShowTime = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 100
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 100
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grOrders_vDATE_TRUCK: TcxGridDBBandedColumn
          Caption = #1055#1086#1089#1090#1072#1074#1082#1072
          DataBinding.FieldName = 'DATE_TRUCK'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ReadOnly = True
          Properties.ShowTime = False
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 100
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 100
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grOrders_vNUMM: TcxGridDBBandedColumn
          Caption = #1050#1086#1083'-'#1074#1086' '#1082#1083#1080#1077#1085#1090#1086#1074
          DataBinding.FieldName = 'NUMM'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 70
          Options.Editing = False
          Options.HorzSizing = False
          Width = 70
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grOrders_vSUM_PRICE: TcxGridDBBandedColumn
          Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
          DataBinding.FieldName = 'SUM_PRICE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.DisplayFormat = ',0.00;-,0.00'
          Properties.UseThousandSeparator = True
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 80
          Width = 120
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grOrders_vDIST_IND_ID: TcxGridDBBandedColumn
          Caption = #8470' '#1088#1072#1079#1085#1086#1089#1072
          DataBinding.FieldName = 'DIST_IND_ID'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 80
          Options.Editing = False
          Options.HorzSizing = False
          Width = 80
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object grOrders_vS_NAME_RU: TcxGridDBBandedColumn
          Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
          DataBinding.FieldName = 'S_NAME_RU'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Vert = taVCenter
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 100
          Options.Editing = False
          Width = 180
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grOrders_vHAVE_NOTVALID_FLOWERS: TcxGridDBBandedColumn
          Caption = #1045#1089#1090#1100' '#1087#1086#1079#1080#1094#1080#1080' '#1076#1088'. '#1087#1086#1089#1090'.'
          DataBinding.FieldName = 'HAVE_NOTVALID_FLOWERS'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 64
          Options.Filtering = False
          Options.HorzSizing = False
          Position.BandIndex = 2
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object grOrders_vINFO: TcxGridDBBandedColumn
          Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
          DataBinding.FieldName = 'INFO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.ReadOnly = True
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Width = 200
          Position.BandIndex = 2
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object grOrders_vINVOICE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'INVOICE'
          Position.BandIndex = 3
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object grOrders_vD_DATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'D_DATE'
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object grOrders_vNN: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NN'
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object grOrders_vS_ID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'S_ID'
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
      end
      object grOrders_l: TcxGridLevel
        GridView = grOrders_v
      end
    end
  end
  object dbcMain: TdxBarDockControl
    Left = 0
    Top = 567
    Width = 1107
    Height = 41
    Align = dalBottom
    BarManager = bmOrders
  end
  object pnlDateSet: TPanel
    Left = 0
    Top = 90
    Width = 1107
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 7
    object de_begin: TcxDateEdit
      Left = 8
      Top = 11
      ParentFont = False
      Properties.DateOnError = deToday
      Properties.ImmediatePost = True
      Properties.PostPopupValueOnTab = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnEditValueChanged = de_beginPropertiesEditValueChanged
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
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
      OnKeyDown = de_beginKeyDown
      Width = 120
    end
    object de_end: TcxDateEdit
      Left = 134
      Top = 11
      ParentFont = False
      Properties.DateOnError = deToday
      Properties.ImmediatePost = True
      Properties.PostPopupValueOnTab = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnEditValueChanged = de_beginPropertiesEditValueChanged
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Arial'
      Style.Font.Pitch = fpFixed
      Style.Font.Style = []
      Style.LookAndFeel.NativeStyle = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      OnKeyDown = de_beginKeyDown
      Width = 120
    end
  end
  object ActionList1: TActionList
    Left = 640
    Top = 8
    object add: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      ShortCut = 115
      OnExecute = BitBtn10Click
    end
    object edit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      ShortCut = 113
      OnExecute = BitBtn11Click
    end
    object del: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1059#1076#1072#1083#1080#1090#1100
      ShortCut = 114
      OnExecute = BitBtn12Click
    end
    object Ctrl_Enter: TAction
      Caption = 'Ctrl_Enter'
      ShortCut = 16397
      OnExecute = DBGridEh1DblClick
    end
    object filter_on: TAction
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      ShortCut = 16454
      OnExecute = filter_onExecute
    end
    object filter_off: TAction
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      ShortCut = 16451
      OnExecute = filter_offExecute
    end
    object aLoadFile: TAction
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1079#1072#1082#1072#1079
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1092#1072#1081#1083
      ShortCut = 119
      OnExecute = aLoadFileExecute
    end
    object aLoadFromBDF: TAction
      Caption = 'aLoadFromBDF'
      ShortCut = 120
      OnExecute = aLoadFromBDFExecute
    end
    object aStatistic: TAction
      Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1087#1086' '#1084#1072#1096'-'#1084
      ShortCut = 112
      OnExecute = aStatisticExecute
    end
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 680
    Top = 8
    object N1: TMenuItem
      Action = filter_on
    end
    object N2: TMenuItem
      Action = filter_off
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100' '#1089#1087#1080#1089#1082#1072' '#1082#1083#1080#1077#1085#1090#1086#1074
      OnClick = BitBtn4Click
    end
    object N5: TMenuItem
      Caption = #1055#1086#1076#1075#1086#1090#1086#1074#1082#1072' '#1092#1072#1081#1083#1086#1074' '#1076#1083#1103' '#1086#1090#1087#1088#1072#1074#1082#1080
      OnClick = BitBtn7Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object mnJoin: TMenuItem
      Caption = #1054#1073#1098#1077#1076#1080#1085#1080#1090#1100' '#1086#1090#1084#1077#1095#1077#1085#1085#1099#1077' '#1079#1072#1082#1072#1079#1099
      OnClick = mnJoinClick
    end
    object mnSeperateOrder: TMenuItem
      Caption = #1042#1099#1085#1077#1089#1090#1080' '#1087#1086#1079#1080#1094#1080#1080' '#1076#1088#1091#1075#1086#1075#1086' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072' '#1074' '#1086#1090#1076#1077#1083#1100#1085#1099#1081' '#1079#1072#1082#1072#1079
      OnClick = mnSeperateOrderClick
    end
  end
  object bmOrders: TdxBarManager
    Scaled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = DM.cxImageList1
    ImageOptions.LargeIcons = True
    ImageOptions.StretchGlyphs = False
    ImageOptions.UseLargeImagesForLargeIcons = True
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    MenuAnimations = maFade
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseFullReset = True
    UseSystemFont = False
    Left = 824
    Top = 280
    DockControlHeights = (
      0
      0
      57
      0)
    object bm_debtBar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'main_menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 975
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'blbRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'blbAdd'
        end
        item
          Visible = True
          ItemName = 'blbEdit'
        end
        item
          Visible = True
          ItemName = 'blbDel'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'blbLoadFile'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bkbFindOrder'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'blbPrint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'blbFiles'
        end
        item
          Visible = True
          ItemName = 'bkbOldOrderLoad'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton9'
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
    object barOrders: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'bm_legend'
      CaptionButtons = <>
      DockControl = dbcMain
      DockedDockControl = dbcMain
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 938
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarStatic1'
        end
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
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic18'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic19'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic20'
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
    object dxBarStatic6: TdxBarStatic
      Caption = '- '#1087#1086#1084#1077#1090#1082#1072
      Category = 0
      Hint = '- '#1087#1086#1084#1077#1090#1082#1072
      Visible = ivAlways
    end
    object blbRefresh: TdxBarLargeButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      LargeImageIndex = 32
      OnClick = SpeedButton4Click
      AutoGrayScale = False
      HotImageIndex = 32
    end
    object blbAdd: TdxBarLargeButton
      Action = add
      Category = 0
      LargeImageIndex = 4
      AutoGrayScale = False
      HotImageIndex = 4
    end
    object blbEdit: TdxBarLargeButton
      Action = edit
      Caption = #1056#1077#1076#1072#1082#1090#1086#1088
      Category = 0
      LargeImageIndex = 5
      AutoGrayScale = False
      HotImageIndex = 5
    end
    object blbDel: TdxBarLargeButton
      Action = del
      Category = 0
      LargeImageIndex = 6
      AutoGrayScale = False
      HotImageIndex = 6
    end
    object bkbFindOrder: TdxBarLargeButton
      Caption = #1055#1086#1080#1089#1082' '#1079#1072#1082#1072#1079#1072
      Category = 0
      Hint = #1055#1086#1080#1089#1082' '#1079#1072#1082#1072#1079#1072
      Visible = ivAlways
      LargeImageIndex = 35
      OnClick = BitBtn8Click
      AutoGrayScale = False
      HotImageIndex = 35
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object blbCargo: TdxBarLargeButton
      Action = aStatistic
      Category = 0
      LargeImageIndex = 22
      AutoGrayScale = False
      HotImageIndex = 22
    end
    object blbPrint: TdxBarLargeButton
      Caption = #1055#1077#1095#1072#1090#1100
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = bpmPrint
      LargeImageIndex = 38
      AutoGrayScale = False
      HotImageIndex = 38
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
      AutoGrayScale = False
      HotImageIndex = 38
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Align = iaRight
      Caption = #1042#1099#1093#1086#1076
      Category = 0
      Hint = #1042#1099#1093#1086#1076
      Visible = ivAlways
      LargeImageIndex = 21
      OnClick = BitBtn13Click
      AutoGrayScale = False
      HotImageIndex = 21
      Width = 70
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
      AutoGrayScale = False
      HotImageIndex = 31
    end
    object dxBarStatic7: TdxBarStatic
      Caption = 'S NICK'
      Category = 0
      Hint = 'S NICK'
      Visible = ivAlways
      BorderStyle = sbsLowered
      Width = 50
    end
    object dxBarStatic8: TdxBarStatic
      Caption = 'S NICK'
      Category = 0
      Hint = 'S NICK'
      Visible = ivAlways
      BorderStyle = sbsLowered
      Width = 50
    end
    object dxBarStatic9: TdxBarStatic
      Caption = '- '#1079#1072#1082#1088#1099#1090#1099#1081' '#1076#1077#1073#1080#1090#1086#1088
      Category = 0
      Hint = '- '#1079#1072#1082#1088#1099#1090#1099#1081' '#1076#1077#1073#1080#1090#1086#1088
      Visible = ivAlways
    end
    object dxBarStatic10: TdxBarStatic
      Caption = '- '#1079#1072#1082#1088#1099#1090#1099#1081' '#1074' '#1087#1086#1083#1100#1079#1091' '#1076#1088#1091#1075#1086#1075#1086
      Category = 0
      Hint = '- '#1079#1072#1082#1088#1099#1090#1099#1081' '#1074' '#1087#1086#1083#1100#1079#1091' '#1076#1088#1091#1075#1086#1075#1086
      Visible = ivAlways
    end
    object dxBarStatic11: TdxBarStatic
      Caption = 'Ctrl+N - '#1087#1077#1088#1077#1081#1090#1080' '#1074' '#1087#1086#1080#1089#1082' '#1087#1086' '#1082#1086#1076#1091
      Category = 0
      Hint = 'Ctrl+N - '#1087#1077#1088#1077#1081#1090#1080' '#1074' '#1087#1086#1080#1089#1082' '#1087#1086' '#1082#1086#1076#1091
      Visible = ivAlways
    end
    object dxBarStatic12: TdxBarStatic
      Caption = 'Ctrl+M - '#1087#1077#1088#1077#1081#1090#1080' '#1074' '#1087#1086#1080#1089#1082' '#1087#1086' '#1060#1048#1054
      Category = 0
      Hint = 'Ctrl+M - '#1087#1077#1088#1077#1081#1090#1080' '#1074' '#1087#1086#1080#1089#1082' '#1087#1086' '#1060#1048#1054
      Visible = ivAlways
    end
    object dxBarStatic13: TdxBarStatic
      Caption = '2-'#1081' '#1082#1083#1080#1082' '#1087#1086' '#1075#1088#1091#1087#1087#1077' - '#1087#1088#1086#1089#1084#1086#1090#1088' '#1074#1089#1077#1093' '#1076#1077#1073#1080#1090#1086#1088#1086#1074' '#1074' '#1075#1088#1091#1087#1087#1077
      Category = 0
      Hint = '2-'#1081' '#1082#1083#1080#1082' '#1087#1086' '#1075#1088#1091#1087#1087#1077' - '#1087#1088#1086#1089#1084#1086#1090#1088' '#1074#1089#1077#1093' '#1076#1077#1073#1080#1090#1086#1088#1086#1074' '#1074' '#1075#1088#1091#1087#1087#1077
      Visible = ivAlways
    end
    object dxBarStatic14: TdxBarStatic
      Caption = 'S NICK'
      Category = 0
      Hint = 'S NICK'
      Visible = ivAlways
      BorderStyle = sbsLowered
      Width = 50
    end
    object dxBarStatic15: TdxBarStatic
      Caption = '- '#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085' '#1073#1091#1093'-'#1077#1081
      Category = 0
      Hint = '- '#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085' '#1073#1091#1093'-'#1077#1081
      Visible = ivAlways
    end
    object dxBarStatic16: TdxBarStatic
      Caption = 'Ctrl+Enter '#1085#1072' '#1075#1088#1091#1087#1087#1077' - '#1087#1088#1086#1089#1084#1086#1090#1088' '#1076#1077#1073#1080#1090#1086#1088#1086#1074' '#1074' '#1075#1088#1091#1087#1087#1077
      Category = 0
      Hint = 'Ctrl+Enter '#1085#1072' '#1075#1088#1091#1087#1087#1077' - '#1087#1088#1086#1089#1084#1086#1090#1088' '#1076#1077#1073#1080#1090#1086#1088#1086#1074' '#1074' '#1075#1088#1091#1087#1087#1077
      Visible = ivAlways
    end
    object dxBarStatic17: TdxBarStatic
      Caption = 'Ctrl+Enter - '#1087#1088#1086#1089#1084#1086#1090#1088' '#1082#1072#1088#1090#1086#1095#1082#1080' '#1076#1077#1073#1080#1090#1086#1088#1072
      Category = 0
      Hint = 'Ctrl+Enter - '#1087#1088#1086#1089#1084#1086#1090#1088' '#1082#1072#1088#1090#1086#1095#1082#1080' '#1076#1077#1073#1080#1090#1086#1088#1072
      Visible = ivAlways
    end
    object bbPrintList: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object bbPrintRaport: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object imgOffice: TcxBarEditItem
      Caption = #1054#1092#1080#1089
      Category = 0
      Hint = #1054#1092#1080#1089
      Visible = ivAlways
      Width = 120
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items = <>
    end
    object dxBarButton1: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object blbFiles: TdxBarLargeButton
      Caption = #1043#1077#1085'-'#1094#1080#1103' '#1092#1072#1081#1083#1086#1074
      Category = 0
      Hint = #1043#1077#1085'-'#1094#1080#1103' '#1092#1072#1081#1083#1086#1074
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = bpmFiles
      LargeImageIndex = 34
      AutoGrayScale = False
      HotImageIndex = 28
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
    end
    object dxBarStatic1: TdxBarStatic
      Caption = 'Ctrl+C'
      Category = 0
      Hint = 'Ctrl+C'
      Visible = ivAlways
    end
    object dxBarStatic2: TdxBarStatic
      Caption = '- '#1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      Category = 0
      Hint = '- '#1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      Visible = ivAlways
    end
    object dxBarStatic3: TdxBarStatic
      Caption = 'Ctrl+F'
      Category = 0
      Hint = 'Ctrl+F'
      Visible = ivAlways
    end
    object dxBarStatic4: TdxBarStatic
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      Category = 0
      Hint = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      Visible = ivAlways
    end
    object pmPrintStock: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1089#1090#1086#1082#1072
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1089#1090#1086#1082#1072
      Visible = ivAlways
      OnClick = btnPrintClick
    end
    object pmPrintList: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1089#1087#1080#1089#1082#1072' '#1082#1083#1080#1077#1085#1090#1086#1074
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1089#1087#1080#1089#1082#1072' '#1082#1083#1080#1077#1085#1090#1086#1074
      Visible = ivAlways
      OnClick = BitBtn4Click
    end
    object bbFileSup: TdxBarButton
      Caption = #1060#1072#1081#1083#1099' '#1076#1083#1103' '#1087#1086#1089#1090#1072#1097#1080#1082#1072
      Category = 0
      Hint = #1060#1072#1081#1083#1099' '#1076#1083#1103' '#1087#1086#1089#1090#1072#1097#1080#1082#1072
      Visible = ivAlways
      OnClick = BitBtn7Click
    end
    object bbFileMSK: TdxBarButton
      Caption = #1060#1072#1081#1083#1099' '#1076#1083#1103' '#1052#1086#1089#1082#1074#1099
      Category = 0
      Hint = #1060#1072#1081#1083#1099' '#1076#1083#1103' '#1052#1086#1089#1082#1074#1099
      Visible = ivAlways
      OnClick = btnToMSKClick
    end
    object blbLoadFile: TdxBarLargeButton
      Action = aLoadFile
      Category = 0
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1074' '#1079#1072#1082#1072#1079' '#1087#1086' '#1076#1072#1090#1077' '#1092#1072#1081#1083#1072
      LargeImageIndex = 23
      AutoGrayScale = False
    end
    object bkbOldOrderLoad: TdxBarLargeButton
      Caption = #1057#1090#1072#1088#1099#1081' '#1079#1072#1082#1072#1079
      Category = 0
      Hint = #1057#1090#1072#1088#1099#1081' '#1079#1072#1082#1072#1079
      Visible = ivAlways
      LargeImageIndex = 18
      OnClick = bkbOldOrderLoadClick
      AutoGrayScale = False
      HotImageIndex = 18
    end
    object dxBarStatic5: TdxBarStatic
      Caption = #1047#1072#1082#1072#1079#1099' '#1091#1095#1072#1089#1090#1074#1091#1102#1097#1080#1077' '#1074' '#1088#1072#1079#1085#1086#1089#1077' '#1080#1084#1077#1102#1090' '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1085#1099#1081' '#1092#1091#1085#1082#1094#1080#1086#1085#1072#1083
      Category = 0
      Hint = #1047#1072#1082#1072#1079#1099' '#1091#1095#1072#1089#1090#1074#1091#1102#1097#1080#1077' '#1074' '#1088#1072#1079#1085#1086#1089#1077' '#1080#1084#1077#1102#1090' '#1086#1075#1088#1072#1085#1080#1095#1077#1085#1085#1099#1081' '#1092#1091#1085#1082#1094#1080#1086#1085#1072#1083
      Visible = ivAlways
    end
    object dxBarStatic18: TdxBarStatic
      Caption = 'F4 - '#1076#1086#1073#1072#1074#1080#1090#1100' | F2 - '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' | F3 - '#1091#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = 'F4 - '#1076#1086#1073#1072#1074#1080#1090#1100' | F2 - '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' | F3 - '#1091#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
    end
    object dxBarStatic19: TdxBarStatic
      Caption = 'F8 - '#1079#1072#1075#1088#1091#1079#1080#1090#1100' '#1079#1072#1082#1072#1079' | F9 - '#1079#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1079' '#1089#1090#1072#1088#1099#1093' '#1079#1072#1082#1072#1079#1086#1074
      Category = 0
      Hint = 'F8 - '#1079#1072#1075#1088#1091#1079#1080#1090#1100' '#1079#1072#1082#1072#1079' | F9 - '#1079#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1079' '#1089#1090#1072#1088#1099#1093' '#1079#1072#1082#1072#1079#1086#1074
      Visible = ivAlways
    end
    object dxBarStatic20: TdxBarStatic
      Caption = 'F1 - '#1089#1090#1072#1090#1080#1089#1090#1080#1082#1072
      Category = 0
      Hint = 'F1 - '#1089#1090#1072#1090#1080#1089#1090#1080#1082#1072
      Visible = ivAlways
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Align = iaCenter
      Caption = 'aa'
      Category = 0
      Description = 'aa'
      Hint = 'aa'
      Visible = ivAlways
    end
    object bbFileXLS: TdxBarButton
      Caption = 'XLS '#1092#1072#1081#1083
      Category = 0
      Hint = 'XLS '#1092#1072#1081#1083
      Visible = ivAlways
      OnClick = bbFileXLSClick
    end
  end
  object bpmPrint: TdxBarPopupMenu
    BarManager = bmOrders
    ItemLinks = <
      item
        Visible = True
        ItemName = 'pmPrintList'
      end
      item
        Visible = True
        ItemName = 'pmPrintStock'
      end>
    UseOwnFont = False
    Left = 792
    Top = 280
  end
  object bpmFiles: TdxBarPopupMenu
    BarManager = bmOrders
    ItemLinks = <
      item
        Visible = True
        ItemName = 'bbFileSup'
      end
      item
        Visible = True
        ItemName = 'bbFileMSK'
      end
      item
        Visible = True
        ItemName = 'bbFileXLS'
      end>
    UseOwnFont = False
    Left = 792
    Top = 312
  end
end
