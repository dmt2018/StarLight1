object DistFormF: TDistFormF
  Left = 608
  Top = 216
  Caption = #1056#1072#1079#1085#1086#1089' '#1079#1072#1082#1072#1079#1086#1074
  ClientHeight = 686
  ClientWidth = 1388
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Panel4: TPanel
    Left = 0
    Top = 26
    Width = 1388
    Height = 55
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 10
      Top = 4
      Width = 102
      Height = 16
      Caption = #1056#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077': '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 336
      Top = 4
      Width = 38
      Height = 16
      Caption = 'Label3'
      Visible = False
    end
    object Label6: TLabel
      Left = 10
      Top = 20
      Width = 78
      Height = 16
      Caption = #8470' '#1080#1085#1074#1086#1081#1089#1086#1074':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 10
      Top = 36
      Width = 68
      Height = 16
      Caption = #8470' '#1079#1072#1082#1072#1079#1086#1074':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 1116
      Top = 2
      Width = 270
      Height = 51
      Align = alRight
      BevelOuter = bvNone
      BorderWidth = 2
      TabOrder = 0
      object pb_main: TcxProgressBar
        Left = 2
        Top = 2
        Hint = #1055#1088#1086#1094#1077#1085#1090' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103' '#1088#1072#1079#1085#1086#1089#1082#1080
        Align = alClient
        ParentFont = False
        Position = 50.000000000000000000
        Properties.BarStyle = cxbsGradient
        Properties.BeginColor = 16744576
        Properties.PeakValue = 50.000000000000000000
        Properties.SolidTextColor = True
        Style.BorderStyle = ebsOffice11
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Pitch = fpFixed
        Style.Font.Style = []
        Style.LookAndFeel.Kind = lfOffice11
        Style.Shadow = False
        Style.TransparentBorder = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 0
        Visible = False
        Width = 266
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 81
    Width = 1388
    Height = 605
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel5'
    TabOrder = 1
    ExplicitTop = 55
    ExplicitHeight = 631
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 732
      Height = 605
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 2
      TabOrder = 0
      ExplicitHeight = 631
      object Label2: TLabel
        Left = 2
        Top = 2
        Width = 728
        Height = 19
        Align = alTop
        Caption = ' '#1055#1086#1079#1080#1094#1080#1080' '#1074' '#1080#1085#1074#1086#1081#1089#1077' + '#1089#1082#1083#1072#1076
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitWidth = 208
      end
      object gr_PrepDist: TcxGrid
        Left = 2
        Top = 21
        Width = 728
        Height = 544
        Hint = 'Ctrl+Tab  '#1055#1077#1088#1077#1093#1086#1076' '#1084#1077#1078#1076#1091' '#1090#1072#1073#1083#1080#1094#1072#1084#1080
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        PopupMenu = ppStok
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        object gr_PrepDist_v: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCustomDrawCell = gr_PrepDist_vCustomDrawCell
          DataController.DataSource = DM.SelPrepDist_DS
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.AutoDataSetFilter = True
          DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              Position = spFooter
              Column = gr_PrepDist_vHOL_TYPE
            end
            item
              Format = #1087#1086#1079#1080#1094#1080#1081' = 0'
              Kind = skCount
              Column = gr_PrepDist_vHOL_TYPE
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
            end
            item
              Format = '0'
              Kind = skCount
              Column = gr_PrepDist_vCOMPILED_NAME_OTDEL
            end
            item
              Format = '0'
              Kind = skSum
              Column = gr_PrepDist_vTOTAL_QUANTITY
            end
            item
              Format = '0'
              Kind = skSum
              Column = gr_PrepDist_vLEFT_QUANTITY
            end
            item
              Format = '0'
              Kind = skSum
              Column = gr_PrepDist_vALLORDER
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1086#1074
          FilterRow.Visible = True
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          Styles.Inactive = cx_selected
          Styles.Selection = cx_selected
          object gr_PrepDist_vCOMPILED_NAME_OTDEL: TcxGridDBColumn
            Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'COMPILED_NAME_OTDEL'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            MinWidth = 80
            Options.Moving = False
            Width = 150
          end
          object gr_PrepDist_vSALDO: TcxGridDBColumn
            Caption = #1042#1089#1077#1075#1086' / '#1086#1089#1090#1072#1090#1086#1082
            DataBinding.FieldName = 'SALDO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 70
            Options.Grouping = False
            Options.Moving = False
            Width = 70
          end
          object gr_PrepDist_vTOTAL_QUANTITY: TcxGridDBColumn
            Caption = #1042#1089#1077#1075#1086
            DataBinding.FieldName = 'TOTAL_QUANTITY'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 50
            Options.Grouping = False
            Options.Moving = False
            Width = 50
          end
          object gr_PrepDist_vLEFT_QUANTITY: TcxGridDBColumn
            Caption = #1054#1089#1090#1072#1090#1086#1082
            DataBinding.FieldName = 'LEFT_QUANTITY'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 70
            Options.Grouping = False
            Options.Moving = False
            Width = 70
          end
          object gr_PrepDist_vALLORDER: TcxGridDBColumn
            Caption = #1047#1072#1082#1072#1079
            DataBinding.FieldName = 'ALLORDER'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 50
            Options.Grouping = False
            Options.Moving = False
            Width = 50
          end
          object gr_PrepDist_vSTOCK: TcxGridDBColumn
            Caption = #1057#1090#1086#1082
            DataBinding.FieldName = 'STOCK'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 50
            Options.Grouping = False
            Options.Moving = False
            Width = 50
          end
          object gr_PrepDist_vWHERE_FLOWER_IS: TcxGridDBColumn
            Caption = #1043#1076#1077
            DataBinding.FieldName = 'WHERE_FLOWER_IS'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 50
            Options.Grouping = False
            Options.Moving = False
            Width = 50
          end
          object gr_PrepDist_vPREP_DIST_ID: TcxGridDBColumn
            DataBinding.FieldName = 'PREP_DIST_ID'
            Visible = False
          end
          object gr_PrepDist_vN_ID: TcxGridDBColumn
            DataBinding.FieldName = 'N_ID'
            Visible = False
          end
          object gr_PrepDist_vINVOICE_DATA_ID: TcxGridDBColumn
            DataBinding.FieldName = 'INVOICE_DATA_ID'
            Visible = False
          end
          object gr_PrepDist_vID_STORE_MAIN: TcxGridDBColumn
            DataBinding.FieldName = 'ID_STORE_MAIN'
            Visible = False
          end
          object gr_PrepDist_vCOMPILED_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'COMPILED_NAME'
            Visible = False
          end
          object gr_PrepDist_vDIST_IND_ID: TcxGridDBColumn
            DataBinding.FieldName = 'DIST_IND_ID'
            Visible = False
          end
          object gr_PrepDist_vNBUTTON: TcxGridDBColumn
            Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
            DataBinding.FieldName = 'NBUTTON'
            Visible = False
          end
          object gr_PrepDist_vHOL_SUB_TYPE: TcxGridDBColumn
            DataBinding.FieldName = 'HOL_SUB_TYPE'
            Visible = False
          end
          object gr_PrepDist_vHOL_TYPE: TcxGridDBColumn
            Caption = ':'
            DataBinding.FieldName = 'HOL_TYPE'
            Visible = False
          end
          object gr_PrepDist_vF_NAME_RU: TcxGridDBColumn
            Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'F_NAME_RU'
            Visible = False
          end
          object gr_PrepDist_vFT_ID: TcxGridDBColumn
            DataBinding.FieldName = 'FT_ID'
            Visible = False
          end
          object gr_PrepDist_vFST_ID: TcxGridDBColumn
            DataBinding.FieldName = 'FST_ID'
            Visible = False
          end
          object gr_PrepDist_vF_TYPE: TcxGridDBColumn
            Caption = #1058#1080#1087
            DataBinding.FieldName = 'F_TYPE'
            Visible = False
          end
          object gr_PrepDist_vORDERID: TcxGridDBColumn
            DataBinding.FieldName = 'ORDERID'
            Visible = False
          end
        end
        object gr_PrepDist_l: TcxGridLevel
          GridView = gr_PrepDist_v
        end
      end
      object dxBarDockControl1: TdxBarDockControl
        Left = 2
        Top = 565
        Width = 728
        Height = 38
        Align = dalBottom
        BarManager = BarMan_invoice
        ExplicitTop = 591
      end
    end
    object Panel3: TPanel
      Left = 740
      Top = 0
      Width = 648
      Height = 605
      Align = alRight
      BevelOuter = bvNone
      BorderWidth = 2
      TabOrder = 1
      ExplicitHeight = 631
      object pc_type_invoice: TcxPageControl
        Left = 2
        Top = 2
        Width = 644
        Height = 557
        ActivePage = tsh_goods
        Align = alClient
        Color = 16766935
        HideTabs = True
        LookAndFeel.Kind = lfOffice11
        ParentColor = False
        TabOrder = 0
        ClientRectBottom = 557
        ClientRectRight = 644
        ClientRectTop = 0
        object tsh_goods: TcxTabSheet
          Caption = ' '#1055#1086' '#1090#1086#1074#1072#1088#1091' '
          Color = clBtnFace
          ImageIndex = 0
          ParentColor = False
          object Label4: TLabel
            Left = 0
            Top = 0
            Width = 644
            Height = 19
            Align = alTop
            Caption = ' '#1054#1073#1097#1080#1081' '#1089#1087#1080#1089#1086#1082' '#1087#1086#1079#1080#1094#1080#1081' '#1074' '#1079#1072#1082#1072#1079#1077
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Pitch = fpFixed
            Font.Style = []
            ParentColor = False
            ParentFont = False
            ExplicitWidth = 241
          end
          object gr_goods: TcxGrid
            Left = 0
            Top = 19
            Width = 644
            Height = 389
            Hint = 'Ctrl+Tab  '#1055#1077#1088#1077#1093#1086#1076' '#1084#1077#1078#1076#1091' '#1090#1072#1073#1083#1080#1094#1072#1084#1080
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
            object gr_goods_v: TcxGridDBTableView
              PopupMenu = ppGoods
              OnKeyDown = gr_goods_vKeyDown
              NavigatorButtons.ConfirmDelete = False
              OnCellDblClick = gr_goods_vCellDblClick
              OnCustomDrawCell = gr_goods_vCustomDrawCell
              DataController.DataSource = DM.DS_GOODS
              DataController.Filter.Options = [fcoCaseInsensitive]
              DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Format = #1087#1086#1079#1080#1094#1080#1081' = 0'
                  Kind = skCount
                  Column = gr_goods_vHOL_TYPE
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0'
                  Kind = skCount
                end
                item
                  Format = '0'
                  Kind = skCount
                end
                item
                  Format = '0'
                  Kind = skSum
                  Column = goods_DISTRIBUTED_NUMBER
                end
                item
                  Format = '0'
                  Kind = skSum
                  Column = goods_QUANTITY
                end
                item
                  Format = '0'
                  Kind = skCount
                  Column = _goods_GREAT_NAME
                end
                item
                  Format = '0'
                  Kind = skSum
                  Column = goods_ZATIRKA
                end
                item
                  Format = '0'
                  Kind = skCount
                  Column = goods_GREAT_NAME_F2
                end>
              DataController.Summary.SummaryGroups = <>
              FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1086#1074
              FilterRow.Visible = True
              OptionsBehavior.CellHints = True
              OptionsCustomize.ColumnGrouping = False
              OptionsCustomize.ColumnMoving = False
              OptionsData.Deleting = False
              OptionsData.Inserting = False
              OptionsView.CellEndEllipsis = True
              OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
              OptionsView.ColumnAutoWidth = True
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderEndEllipsis = True
              Styles.Inactive = cx_selected
              Styles.Selection = cx_selected
              object goods_GREAT_NAME_F2: TcxGridDBColumn
                Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                DataBinding.FieldName = 'COMPILED_NAME_OTDEL'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.ReadOnly = True
                Options.Moving = False
              end
              object _goods_GREAT_NAME: TcxGridDBColumn
                Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                DataBinding.FieldName = 'GREAT_NAME'
                Visible = False
                FooterAlignmentHorz = taRightJustify
                Options.Editing = False
                Options.Moving = False
              end
              object _goods_COMPILED_NAME: TcxGridDBColumn
                Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                DataBinding.FieldName = 'COMPILED_NAME'
                Visible = False
                Options.Editing = False
                Options.Moving = False
              end
              object goods_ZATIRKA: TcxGridDBColumn
                Caption = #1047#1072#1090#1080#1088#1082#1072
                DataBinding.FieldName = 'ZATIRKA'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.DisplayChecked = #1044#1072
                Properties.DisplayUnchecked = #1053#1077#1090
                Properties.ReadOnly = True
                Properties.ValueChecked = '1'
                Properties.ValueUnchecked = '0'
                Visible = False
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 64
                Options.Editing = False
                Options.HorzSizing = False
                Options.Moving = False
              end
              object goods_QUANTITY: TcxGridDBColumn
                Caption = #1047#1072#1082#1072#1079
                DataBinding.FieldName = 'QUANTITY'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.ReadOnly = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 50
                Options.Moving = False
                Width = 50
              end
              object gr_goods_vQQ: TcxGridDBColumn
                Caption = #1057#1090#1086#1082
                DataBinding.FieldName = 'QQ'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.ReadOnly = True
                HeaderAlignmentHorz = taCenter
                MinWidth = 50
                Options.Moving = False
                Width = 50
              end
              object goods_DISTRIBUTED_NUMBER: TcxGridDBColumn
                Caption = #1054#1090#1076#1072#1085#1086
                DataBinding.FieldName = 'DISTRIBUTED_NUMBER'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.ReadOnly = True
                FooterAlignmentHorz = taCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 65
                Options.Moving = False
                Width = 65
              end
              object _goods_N_ID: TcxGridDBColumn
                DataBinding.FieldName = 'N_ID'
                Visible = False
              end
              object gr_goods_vWHERE_FLOWER_IS: TcxGridDBColumn
                Caption = #1054#1090#1082#1091#1076#1072
                DataBinding.FieldName = 'WHERE_FLOWER_IS'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.ReadOnly = True
                HeaderAlignmentHorz = taCenter
                MinWidth = 65
                Options.HorzSizing = False
                Options.Moving = False
                Width = 65
              end
              object gr_goods_vHOL_TYPE: TcxGridDBColumn
                Caption = ':'
                DataBinding.FieldName = 'HOL_TYPE'
                Visible = False
              end
              object gr_goods_vF_SUB_TYPE: TcxGridDBColumn
                DataBinding.FieldName = 'F_SUB_TYPE'
                Visible = False
              end
              object _gr_goods_vN_ID_: TcxGridDBColumn
                DataBinding.FieldName = 'N_ID_'
                Visible = False
                MinWidth = 70
                Options.HorzSizing = False
                Width = 70
              end
              object gr_goods_vNBUTTON: TcxGridDBColumn
                Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
                DataBinding.FieldName = 'NBUTTON'
                Visible = False
              end
              object gr_goods_vF_NAME_RU: TcxGridDBColumn
                Caption = #1053#1072#1079#1074#1072#1085#1080#1077
                DataBinding.FieldName = 'F_NAME_RU'
                Visible = False
              end
              object gr_goods_vDIST_IND_ID: TcxGridDBColumn
                DataBinding.FieldName = 'DIST_IND_ID'
                Visible = False
              end
              object gr_goods_vFT_ID: TcxGridDBColumn
                DataBinding.FieldName = 'FT_ID'
                Visible = False
              end
              object gr_goods_vF_TYPE: TcxGridDBColumn
                Caption = #1058#1080#1087
                DataBinding.FieldName = 'F_TYPE'
                Visible = False
              end
            end
            object gr_goods_l: TcxGridLevel
              GridView = gr_goods_v
            end
          end
          object cxSplitter2: TcxSplitter
            Left = 0
            Top = 408
            Width = 644
            Height = 8
            Cursor = crHandPoint
            HotZoneClassName = 'TcxMediaPlayer9Style'
            AlignSplitter = salBottom
            Control = Panel6
          end
          object Panel6: TPanel
            Left = 0
            Top = 416
            Width = 644
            Height = 141
            Align = alBottom
            BevelOuter = bvNone
            Caption = 'Panel6'
            TabOrder = 2
            object Label5: TLabel
              Left = 0
              Top = 0
              Width = 644
              Height = 19
              Align = alTop
              Caption = ' '#1050#1083#1080#1077#1085#1090#1099' '#1079#1072#1082#1072#1079#1072#1074#1096#1080#1077' '#1087#1086#1079#1080#1094#1080#1102
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Tahoma'
              Font.Pitch = fpFixed
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ExplicitWidth = 226
            end
            object gr_goods_info: TcxGrid
              Left = 0
              Top = 19
              Width = 644
              Height = 122
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
              object gr_goods_info_v: TcxGridDBTableView
                PopupMenu = ppGoodsInfo
                OnKeyDown = gr_goods_info_vKeyDown
                NavigatorButtons.ConfirmDelete = False
                OnCustomDrawCell = gr_goods_info_vCustomDrawCell
                OnEditing = gr_goods_info_vEditing
                DataController.DataSource = DM.DS_ORDER_NID
                DataController.Filter.Options = [fcoCaseInsensitive]
                DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '0'
                    Kind = skCount
                  end
                  item
                    Format = '0'
                    Kind = skCount
                    Column = ginfo_nick
                  end
                  item
                    Format = '0'
                    Kind = skSum
                    Column = ginfo_PACK_
                  end
                  item
                    Format = '0'
                    Kind = skSum
                  end
                  item
                    Format = '0'
                    Kind = skSum
                    Column = ginfo_QUANTITY
                  end
                  item
                    Format = '0'
                    Kind = skSum
                    Column = gr_goods_info_vDQ
                  end>
                DataController.Summary.SummaryGroups = <>
                FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1086#1074
                FilterRow.Visible = True
                OptionsBehavior.CellHints = True
                OptionsCustomize.ColumnGrouping = False
                OptionsCustomize.ColumnMoving = False
                OptionsData.Deleting = False
                OptionsData.Inserting = False
                OptionsView.CellEndEllipsis = True
                OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
                OptionsView.ColumnAutoWidth = True
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                OptionsView.HeaderEndEllipsis = True
                Styles.Selection = cx_selected
                object ginfo_nick: TcxGridDBColumn
                  Caption = #1050#1086#1076
                  DataBinding.FieldName = 'NICK'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.ReadOnly = True
                  FooterAlignmentHorz = taCenter
                  MinWidth = 70
                  Options.CellMerging = True
                  Options.HorzSizing = False
                  Options.Moving = False
                  Width = 70
                end
                object ginfo_PACK_: TcxGridDBColumn
                  Caption = #1059#1087'.'
                  DataBinding.FieldName = 'PACK_'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.Alignment = taCenter
                  Properties.DisplayChecked = #1044#1072
                  Properties.DisplayUnchecked = #1053#1077#1090
                  Properties.ReadOnly = True
                  Properties.ValueChecked = '1'
                  Properties.ValueUnchecked = '0'
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  MinWidth = 40
                  Options.Editing = False
                  Options.HorzSizing = False
                  Options.Moving = False
                  Width = 40
                end
                object _ginfo_FIO: TcxGridDBColumn
                  Caption = #1060#1048#1054' / '#1085#1072#1079#1074#1072#1085#1080#1077
                  DataBinding.FieldName = 'FIO'
                  Visible = False
                end
                object _ginfo_ID_ORDERS_CLIENTS: TcxGridDBColumn
                  DataBinding.FieldName = 'ID_ORDERS_CLIENTS'
                  Visible = False
                end
                object _ginfo_ID_ORDERS: TcxGridDBColumn
                  DataBinding.FieldName = 'ID_ORDERS'
                  Visible = False
                end
                object _ginfo_ID_CLIENTS: TcxGridDBColumn
                  DataBinding.FieldName = 'ID_CLIENTS'
                  Visible = False
                end
                object _ginfo_D_DATE: TcxGridDBColumn
                  DataBinding.FieldName = 'D_DATE'
                  Visible = False
                end
                object _ginfo_N_TYPE: TcxGridDBColumn
                  DataBinding.FieldName = 'N_TYPE'
                  Visible = False
                end
                object _ginfo_STATUS: TcxGridDBColumn
                  DataBinding.FieldName = 'STATUS'
                  Visible = False
                end
                object _ginfo_ALPHA: TcxGridDBColumn
                  DataBinding.FieldName = 'ALPHA'
                  Visible = False
                end
                object _ginfo_N_ID: TcxGridDBColumn
                  DataBinding.FieldName = 'N_ID'
                  Visible = False
                end
                object ginfo_ZATIRKA: TcxGridDBColumn
                  Caption = #1047#1072#1090#1080#1088#1082#1072
                  DataBinding.FieldName = 'ZATIRKA'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.Alignment = taCenter
                  Properties.DisplayChecked = #1044#1072
                  Properties.DisplayUnchecked = #1053#1077#1090
                  Properties.ReadOnly = True
                  Properties.ValueChecked = '1'
                  Properties.ValueUnchecked = '0'
                  Visible = False
                  HeaderAlignmentHorz = taCenter
                  MinWidth = 60
                  Options.Editing = False
                  Options.HorzSizing = False
                  Options.Moving = False
                  Width = 60
                end
                object ginfo_QUANTITY: TcxGridDBColumn
                  Caption = #1050#1086#1083'-'#1074#1086
                  DataBinding.FieldName = 'QUANTITY'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.ReadOnly = False
                  OnCustomDrawCell = ginfo_QUANTITYCustomDrawCell
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  MinWidth = 60
                  Options.Moving = False
                  Styles.Content = cx_editdata
                  Width = 60
                end
                object _ginfo_FULL_NAME: TcxGridDBColumn
                  DataBinding.FieldName = 'FULL_NAME'
                  Visible = False
                  Styles.Content = cx_editdata
                end
                object ginfo_GREAT_NAME: TcxGridDBColumn
                  Caption = #1047#1072#1082#1072#1079
                  DataBinding.FieldName = 'COMPILED_NAME_OTDEL_ORD'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.ReadOnly = True
                  MinWidth = 100
                  Styles.Content = cx_editdata
                  Width = 200
                end
                object _ginfo_GREAT_NAME_F: TcxGridDBColumn
                  DataBinding.FieldName = 'GREAT_NAME_F'
                  Visible = False
                end
                object gr_goods_info_vDQ: TcxGridDBColumn
                  Caption = #1056#1072#1079#1085#1077#1089#1077#1085#1086
                  DataBinding.FieldName = 'DQ'
                  PropertiesClassName = 'TcxSpinEditProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.ImmediatePost = True
                  Properties.SpinButtons.Visible = False
                  Properties.UseCtrlIncrement = True
                  FooterAlignmentHorz = taCenter
                  HeaderAlignmentHorz = taCenter
                  HeaderGlyphAlignmentHorz = taCenter
                  MinWidth = 75
                  Options.HorzSizing = False
                  Width = 75
                end
                object ginfo_GREAT_NAME2: TcxGridDBColumn
                  Caption = #1056#1072#1079#1085#1077#1089#1077#1085#1086
                  DataBinding.FieldName = 'COMPILED_NAME_OTDEL'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.ReadOnly = True
                  MinWidth = 100
                  Width = 200
                end
                object _ginfo_GREAT_NAME_F2: TcxGridDBColumn
                  DataBinding.FieldName = 'COMPILED_NAME_OTDEL'
                  Visible = False
                end
                object _ginfo_IS_STOCK: TcxGridDBColumn
                  DataBinding.FieldName = 'IS_STOCK'
                  Visible = False
                end
                object ginfo_DQ_CHECK: TcxGridDBColumn
                  DataBinding.FieldName = 'DQ_CHECK'
                  Visible = False
                end
                object gr_goods_info_vDIST_ID: TcxGridDBColumn
                  DataBinding.FieldName = 'DIST_ID'
                  Visible = False
                end
                object gr_goods_info_vPREP_DIST_ID: TcxGridDBColumn
                  DataBinding.FieldName = 'PREP_DIST_ID'
                  Visible = False
                end
                object gr_goods_info_vN_TRUCK: TcxGridDBColumn
                  DataBinding.FieldName = 'N_TRUCK'
                  Visible = False
                end
                object gr_goods_info_vCAPACITY: TcxGridDBColumn
                  DataBinding.FieldName = 'CAPACITY'
                  Visible = False
                end
                object gr_goods_info_vON_DATE: TcxGridDBColumn
                  DataBinding.FieldName = 'ON_DATE'
                  Visible = False
                end
                object gr_goods_info_vID_ORDERS_CLIENTS_: TcxGridDBColumn
                  DataBinding.FieldName = 'ID_ORDERS_CLIENTS_'
                  Visible = False
                end
                object gr_goods_info_vID_ORDERS_LIST: TcxGridDBColumn
                  DataBinding.FieldName = 'ID_ORDERS_LIST'
                  Visible = False
                end
                object gr_goods_info_vGREAT_NAME: TcxGridDBColumn
                  DataBinding.FieldName = 'GREAT_NAME'
                  Visible = False
                end
                object gr_goods_info_vGREAT_NAME2: TcxGridDBColumn
                  DataBinding.FieldName = 'GREAT_NAME2'
                  Visible = False
                end
                object gr_goods_info_vGREAT_NAME_F2: TcxGridDBColumn
                  DataBinding.FieldName = 'GREAT_NAME_F2'
                  Visible = False
                end
                object gr_goods_info_vDISTRIBUTED_NUMBER: TcxGridDBColumn
                  DataBinding.FieldName = 'DISTRIBUTED_NUMBER'
                  Visible = False
                end
                object gr_goods_info_vD_N_ID: TcxGridDBColumn
                  DataBinding.FieldName = 'D_N_ID'
                  Visible = False
                end
                object gr_goods_info_vPRIORITY: TcxGridDBColumn
                  Caption = #1087#1088'-'#1090
                  DataBinding.FieldName = 'PRIORITY'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.Alignment.Horz = taCenter
                  Properties.ReadOnly = True
                  HeaderAlignmentHorz = taCenter
                  MinWidth = 50
                  Options.HorzSizing = False
                  Width = 50
                end
              end
              object gr_goods_info_l: TcxGridLevel
                GridView = gr_goods_info_v
              end
            end
          end
        end
      end
      object dxBarDockControl2: TdxBarDockControl
        Left = 2
        Top = 559
        Width = 644
        Height = 44
        Align = dalBottom
        BarManager = BarMan_invoice
        ExplicitTop = 585
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 732
      Top = 0
      Width = 8
      Height = 605
      Cursor = crHSplit
      HotZoneClassName = 'TcxMediaPlayer9Style'
      AlignSplitter = salRight
      Control = Panel3
    end
  end
  object Panel_fill: TPanel
    Left = 405
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
    object Label7: TLabel
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
  object ActionList1: TActionList
    Images = ActionImageList
    Left = 544
    Top = 488
    object AExit: TAction
      Caption = #1042#1099#1093#1086#1076
      ImageIndex = 0
      OnExecute = AExitExecute
    end
    object AGetdept: TAction
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1090#1077#1082#1091#1097#1080#1081' '#1086#1090#1076#1077#1083
      ImageIndex = 1
      OnExecute = AGetdeptExecute
    end
    object AChooseOrder: TAction
      Caption = ' '#1042#1099#1073#1088#1072#1090#1100' '#1079#1072#1082#1072#1079' '
      Enabled = False
      ImageIndex = 3
      OnExecute = AChooseOrderExecute
    end
    object ALoadStock: TAction
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1089#1090#1086#1082
      Enabled = False
      ImageIndex = 3
      OnExecute = ALoadStockExecute
    end
    object aUnloadStock: TAction
      Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100' '#1089#1090#1086#1082
      Enabled = False
      OnExecute = aUnloadStockExecute
    end
    object ALoadInvoice: TAction
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1085#1074#1086#1081#1089
      Enabled = False
      ImageIndex = 3
      OnExecute = ALoadInvoiceExecute
    end
    object aLoadOrder: TAction
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1079#1072#1082#1072#1079
      Enabled = False
      ImageIndex = 10
      OnExecute = aLoadOrderExecute
    end
    object aUnloadOrder: TAction
      Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100' '#1079#1072#1082#1072#1079
      Enabled = False
      ImageIndex = 11
    end
    object ANewDist: TAction
      Caption = #1053#1086#1074#1086#1077' '#1056#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077
      Enabled = False
      ImageIndex = 4
      OnExecute = ANewDistExecute
    end
    object AOpenDist: TAction
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077
      Enabled = False
      ImageIndex = 4
      OnExecute = AOpenDistExecute
    end
    object AEditDist: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077
      Enabled = False
      ImageIndex = 4
      OnExecute = AEditDistExecute
    end
    object ADistDelete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077
      ImageIndex = 4
      OnExecute = ADistDeleteExecute
    end
    object ADistribute: TAction
      Caption = #1040#1074#1090#1086#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077
      ImageIndex = 5
      OnExecute = ADistributeExecute
    end
    object ADistOnePos: TAction
      Caption = #1055#1086#1083#1086#1078#1080#1090#1100' '#1090#1086#1074#1072#1088' '#1074' '#1087#1086#1079#1080#1094#1102' '#1079#1072#1082#1072#1079#1072
      Enabled = False
      ImageIndex = 8
      ShortCut = 114
      OnExecute = ADistOnePosExecute
    end
    object APutBack: TAction
      Caption = ' '#1059#1073#1088#1072#1090#1100' '#1090#1086#1074#1072#1088' (F4) '
      Enabled = False
      ImageIndex = 9
      ShortCut = 115
      OnExecute = APutBackExecute
    end
    object aDistOnePosNew: TAction
      Caption = #1055#1086#1083#1086#1078#1080#1090#1100' '#1085#1086#1074#1099#1081' '#1090#1086#1074#1072#1088' '#1074' '#1079#1072#1082#1072#1079
      Enabled = False
      ShortCut = 16498
      OnExecute = aDistOnePosNewExecute
    end
    object AFindSource: TAction
      Caption = 'AFindSource'
    end
    object aTab: TAction
      Caption = 'aTab'
      ShortCut = 16393
      OnExecute = aTabExecute
    end
    object aDelGoodsInfo: TAction
      Caption = #1059#1073#1088#1072#1090#1100' '#1090#1086#1074#1072#1088
      OnExecute = aDelGoodsInfoExecute
    end
    object aDelGoods: TAction
      Caption = #1059#1073#1088#1072#1090#1100' '#1090#1086#1074#1072#1088
      OnExecute = aDelGoodsExecute
    end
    object aDelListInfo: TAction
      Caption = #1059#1073#1088#1072#1090#1100' '#1090#1086#1074#1072#1088
      OnExecute = aDelListInfoExecute
    end
    object aPrintKubick: TAction
      Caption = ' '#1055#1077#1095#1072#1090#1100' '#1082#1091#1073#1080#1082#1086#1074
      Enabled = False
      ImageIndex = 7
      OnExecute = aPrintKubickExecute
    end
    object aPrintKubick2: TAction
      Caption = ' '#1055#1077#1095#1072#1090#1100' '#1082#1091#1073#1080#1082#1086#1074' ('#1088#1072#1079#1085#1086#1089')'
      Enabled = False
      ImageIndex = 7
      OnExecute = aPrintKubick2Execute
    end
    object aPrintKubick3: TAction
      Caption = ' '#1055#1077#1095#1072#1090#1100' '#1082#1091#1073#1080#1082#1086#1074' + '#1089#1090#1086#1082' '
      Enabled = False
      ImageIndex = 7
      OnExecute = aPrintKubick3Execute
    end
    object aPrintOstatok: TAction
      Caption = ' '#1053#1077#1088#1072#1079#1085#1077#1089#1077#1085#1085#1099#1077' '#1087#1086#1079#1080#1094#1080#1080
      Enabled = False
      ImageIndex = 7
      OnExecute = aPrintOstatokExecute
    end
    object aPrintOstatokByGroup: TAction
      Caption = ' '#1053#1077#1088#1072#1079#1085#1077#1089#1077#1085#1085#1099#1077' '#1087#1086#1079#1080#1094#1080#1080' ('#1087#1086' '#1075#1088#1091#1087#1087#1072#1084')'
      Enabled = False
      ImageIndex = 7
      OnExecute = aPrintOstatokByGroupExecute
    end
    object aPrint: TAction
      Caption = ' '#1055#1077#1095#1072#1090#1100
      Enabled = False
      ImageIndex = 7
      OnExecute = aPrintExecute
    end
    object aPrintSell: TAction
      Caption = ' '#1057#1074#1086#1073#1086#1076#1085#1072#1103' '#1087#1088#1086#1076#1072#1078#1072
      Enabled = False
      ImageIndex = 7
      OnExecute = aPrintSellExecute
    end
    object aPrintSellByGroup: TAction
      Caption = ' '#1057#1074#1086#1073#1086#1076#1085#1072#1103' '#1087#1088#1086#1076#1072#1078#1072' ('#1087#1086' '#1075#1088#1091#1087#1087#1072#1084')'
      Enabled = False
      ImageIndex = 7
      OnExecute = aPrintSellByGroupExecute
    end
    object aPrintSellByGroupWP: TAction
      Caption = ' '#1057#1074#1086#1073#1086#1076#1085#1072#1103' '#1087#1088#1086#1076#1072#1078#1072' ('#1087#1086' '#1075#1088#1091#1087#1087#1072#1084') + '#1094#1077#1085#1072
      Enabled = False
      ImageIndex = 7
      OnExecute = aPrintSellByGroupWPExecute
    end
    object aChoiseType: TAction
      Caption = 'aChoiseType'
      ShortCut = 16416
      OnExecute = aChoiseTypeExecute
    end
    object aDelOrder: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1082#1083#1080#1077#1085#1090#1089#1082#1091#1102' '#1087#1086#1079#1080#1094#1080#1102
      ShortCut = 16499
      OnExecute = aDelOrderExecute
    end
    object aReplaceOrder: TAction
      Caption = #1055#1077#1088#1077#1084#1077#1089#1090#1080#1090#1100' '#1080#1079' '#1089#1090#1086#1082#1072' '#1082#1083#1080#1077#1085#1090#1091
      Enabled = False
      ShortCut = 32882
      OnExecute = aReplaceOrderExecute
    end
    object aClearFilter: TAction
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1092#1080#1083#1100#1090#1088#1099
      ShortCut = 121
      OnExecute = aClearFilterExecute
    end
    object aShowClientStat: TAction
      Caption = #1050#1083#1080#1077#1085#1090#1099' '#1074' '#1079#1072#1082#1072#1079#1077
      OnExecute = aShowClientStatExecute
    end
    object aQuickRaznos: TAction
      Caption = #1056#1072#1079#1085#1077#1089#1090#1080
      Enabled = False
      ShortCut = 16397
      OnExecute = aQuickRaznosExecute
    end
    object aCheckErrors: TAction
      Caption = 'aCheckErrors'
      OnExecute = aCheckErrorsExecute
    end
    object aShowRaznos: TAction
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1088#1072#1079#1085#1086#1089
      ShortCut = 112
      OnExecute = aShowRaznosExecute
    end
    object aSearchByName: TAction
      Caption = 'aSearchByName'
      ShortCut = 16462
      OnExecute = aSearchByNameExecute
    end
  end
  object ActionImageList: TImageList
    Left = 576
    Top = 488
    Bitmap = {
      494C01010C00C800F00010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF883FC858E5FFFF
      FF88000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF883FC858FC3DC3
      55F4FFFFFF880000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800080808000808080000000000000000000878383799B9897F09F9C9BF89D9A
      9AF8B2B2B2FEB2B2B2FEB2B2B2FEB2B1B1FEB2B1B1FEB1B1B1FE47C25EFE3FC7
      62FF42C158FFCECCCCFC8D8A8AF17571717C878383799B9897F09F9C9BF89D9A
      9AF89C9999F89B9898F8CAC9C9FBCAC8C8FBC9C8C8FBC9C7C7FBC8C7C7FBC8C5
      C5FBC8C5C5FBC7C5C5FBC4C2C2F8CECDCDBA0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800000000000000000009D9999EEF7EEEBFFF4E8E3FFF4E7
      E2FFF9F3F1FF51CB66FF51CB66FF51CB66FF51CB65FF51CB65FF51CB65FF40CB
      5FFF42CF64FF46C45BFFFAF5F3FF8E8B8BF29D9999EEF7EEEBFFF4E8E3FFF4E7
      E2FFF3E6E1FFF3E5E0FFF9F1EEFF605ECEFF6360CDFF6461CCFF6461CCFF605D
      C7FF5B58BFFF5B58BFFF5856BDFF4545AEFD0000000000000000000000000000
      00001F7F00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A3A09FF6F5EAE6FFF2E1DBFFF1E0
      D9FFF8F0EDFF42C85AFF6DEE92FF6EF093FF69EE8EFF69EE8EFF5EE682FF4EDA
      68FF3FCE50FF42CF64FF46C45BFFCECDCDFDA3A09FF6F5EAE6FFF2E1DBFFF1E0
      D9FFF0DED8FFF0DDD6FFF7ECE9FF5D5DD3FF6D6DE4FF7575EFFF7575EFFF6C6C
      EBFF5454DBFF5454DBFF4242CDFF4242CEFF0000000000000000000000000000
      00001F7F00001F7F000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4A1A0F6F6ECE8FFF3E4DEFFF2E2
      DCFFF8F1EEFF3FC859FF69E47DFF70EC85FF71F087FF71F087FF6AED7FFF5DE4
      71FF4ED860FF41CF52FF42CF64FF3EC456FFA4A1A0F6F6ECE8FFF3E4DEFFF2E2
      DCFFF1E1DAFFF1DFD9FFF7EEEAFF5F5CCEFF635FD1FF6461D3FF6461D3FF625E
      CEFF5C58C7FF5C58C7FF5755C1FF4747B1FE0000000000000000000000000000
      00001F7F000039E500001F7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000080007F7F
      FF00000080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5A2A1F6F7EEEAFFF4E6E1FFF3E4
      DFFFF9F2EFFF41C85AFF54D377FF5DDD80FF65E589FF65E589FF6BEC8FFF70F1
      8EFF6DEE83FF58DF7CFF46C55CFFCECDCDFDA5A2A1F6F7EEEAFFF4E6E1FFF3E4
      DFFFF2E3DDFFF2E1DCFFF8EFEBFFF8EEEAFFF7EDE9FFF7ECE9FFF7ECE8FFF6EB
      E7FFF6EBE7FFF6EAE6FFF8F0ECFFC8C5C5FC1F7F00001F7F00001F7F00001F7F
      00001F7F000039E5000039E500001F7F00000000000000000000000000008080
      80008080800080808000000000000000000000000000000080007F7FFF007F7F
      FF00000080000000800000008000000080000000800000000000000000008080
      800080808000808080000000000000000000A6A3A2F6F7EFECFFF5E8E4FFF4E7
      E2FFFAF3F1FF41C85AFF51CB65FF51CB65FF51CA65FF51CA65FF51CA65FF5BDF
      7CFF61E587FF46C55CFFF9F2EFFF969393FAA6A3A2F6F7EFECFFF5E8E4FFF4E7
      E2FFF4E5E0FFF3E4DEFFF2E2DDFFF2E1DBFFF1DFD9FFF0DED7FFF0DDD6FFEFDB
      D4FFEFDAD3FFEED9D2FFF2E3DDFF969393FA1F7F00002FCC00002FCC00002FCC
      00002FCC00002FCC00002FCC000039E500001F7F000000000000000000000000
      000080808000808080000000000000000000000080004C4CFE004C4CFE004C4C
      FE007F7FFF007F7FFF007F7FFF007F7FFF000000800000000000000000000000
      000080808000808080000000000000000000A7A3A3F6F8F1EEFFF6EBE6FFF5E9
      E5FFFAF4F2FFFAF3F1FFF9F3F0FFF9F2F0FFF9F1EFFFF8F1EEFF51CA65FF4BD3
      6EFF46C55CFFF8EEEBFFF2E4DFFF979494FAA7A3A3F6F8F1EEFFF6EBE6FFF5E9
      E5FFF5E8E3FFF4E6E1FFF3E5DFFFF3E3DEFFF2E2DCFFF1E0DAFFF1DFD8FFF0DD
      D7FFF0DCD5FFEFDBD4FFF2E4DFFF979494FA1F7F00001F7F00001F7F00001F7F
      00001F7F00002CB200002FCC00001F7F00000000000000000000000000000000
      00000000000000000000000000000000000000000000000080001919FF001919
      FF00000080000000800000008000000080000000800000000000000000000000
      000000000000000000000000000000000000A7A4A4F6F9F2F0FFF7EDE9FFF6EB
      E7FFF6EAE6FFF5E9E4FFF4E7E2FFF4E6E1FFF3E4DFFFF9F2EFFF51CB65FF46C5
      5BFFF8F0EDFFF0DDD6FFF3E5E0FF989595FAA7A4A4F6F9F2F0FFF7EDE9FFF6EB
      E7FFF6EAE6FFF5E9E4FFF4E7E2FFF4E6E1FFF3E4DFFFF2E3DDFFF2E1DBFFF1E0
      D9FFF0DED8FFF0DDD6FFF3E5E0FF989595FA0000000000000000000000000000
      00001F7F00002CB200001F7F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000080001919
      FF00000080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A8A5A4F6F9F3F1FFF7EEEBFFF7ED
      EAFFF6ECE8FFF6EBE7FFF5E9E5FFF5E8E3FFF4E7E2FFF9F3F1FF51CB66FFF9F1
      EFFFF1E0DAFFF1DFD9FFF4E7E2FF999696FAA8A5A4F6F9F3F1FFF7EEEBFFF7ED
      EAFFF6ECE8FFF6EBE7FFF5E9E5FFF5E8E3FFF4E7E2FFF3E5E0FFF3E3DEFFF2E2
      DCFFF1E0DAFFF1DFD9FFF4E7E2FF999696FA0000000000000000000000000000
      00001F7F00001F7F000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      8000000080000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A69997F5EADAD6FFEAD9D5FFEAD9
      D5FFEAD8D4FFE9D8D4FFE9D8D3FFE9D7D3FFE8D7D2FFF4ECEAFFF4ECEAFFE8D5
      D1FFE8D5D0FFE7D4CFFFE8D5D1FF9A8D8BFAA69997F5EADAD6FFEAD9D5FFEAD9
      D5FFEAD8D4FFE9D8D4FFE9D8D3FFE9D7D3FFE8D7D2FFE8D6D2FFE8D6D1FFE8D5
      D1FFE8D5D0FFE7D4CFFFE8D5D1FF9A8D8BFA0000000000000000000000000000
      00001F7F00000000000000000000000000000000000000000000000000008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000080000000000000000000000000000000000000000000000000008080
      800080808000808080000000000000000000B95D49F6C86C56FFC86C57FFC96C
      58FFC96C58FFC86C58FFC86B57FFC76A57FFC56956FFC46855FFC26754FFC165
      53FFC06351FFBE6250FFBD604FFFB75B48FCB95D49F6C86C56FFC86C57FFC96C
      58FFC96C58FFC86C58FFC86B57FFC76A57FFC56956FFC46855FFC26754FFC165
      53FFC06351FFBE6250FFBD604FFFB75B48FC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000808080000000000000000000C0634FF8D17652FFD27855FFD579
      58FFD67A5BFFD5795BFFD3775AFFD07458FFCD7055FFC96B52FFC2664EFFBD60
      49FFB85A44FFB2533FFFAF503DFFBD604EFCC0634FF8D17652FFD27855FFD579
      58FFD67A5BFFD5795BFFD3775AFFD07458FFCD7055FFC96B52FFC2664EFFBD60
      49FFB85A44FFB2533FFFAF503DFFBD604EFC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BB5E4AE6D17755FFD17653FFD47A
      58FFD67B5CFFD77B5EFFD67B5EFFD4795DFFD2765BFFCE7258FFCA6D54FFC468
      50FFBF624CFFBA5C47FFBA5D4BFFBA5D4AEABB5E4AE6D17755FFD17653FFD47A
      58FFD67B5CFFD77B5EFFD67B5EFFD4795DFFD2765BFFCE7258FFCA6D54FFC468
      50FFBF624CFFBA5C47FFBA5D4BFFBA5D4AEA0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B254415BBB5E4AE6BF634FF5C063
      4FF5C06450F5C06450F5C06450F5C06450F5C06350F5C06350F5BF6350F5BF62
      4FF5BE614FF5BE614EF5BA5D4AE6B556425DB254415BBB5E4AE6BF634FF5C063
      4FF5C06450F5C06450F5C06450F5C06450F5C06350F5C06350F5BF6350F5BF62
      4FF5BE614FF5BE614EF5BA5D4AE6B556425D0000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CCCCCC00FFFFFF0099999900FFFF
      FF0066666600FFFFFF0066666600FFFFFF006666660066666600000000000000
      0000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007474740074747400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000434343002E2E2E0015151500352E2E00746D6D00202020000000
      000000000000000000000000000000000000CCCCCC00FFFFFF0099999900FFFF
      FF0066666600FFFFFF0066666600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00666666006666660000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000FF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003FBA5A00355B35005E5E5E000000
      0000000000000000000000000000000000000000000000000000000000003636
      3600A4A4A400F1F1F100B2B2B2009E8B8B00A6868600B6B3B300E5E5E500B2B2
      B20036363600000000000000000000000000CCCCCC00FFFFFF0099999900CCCC
      CC0066666600FFFFFF0066666600FFFFFF00FFFFFF00CCCCCC0099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000008000000080
      0000008000000080000000FF00000080000000FF00000080000000FF000000FF
      000000FF000000FF000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000044CD670053E27C002F5832006161
      610000000000000000000000000000000000000000000000000094949400EEEE
      EE00F1F1F100E8E8E800ACACAC00939393005F5F5F006D6D6D008C8C8C00BCBC
      BC00E9E9E900B0B0B0000000000000000000CCCCCC00FFFFFF0099999900FFFF
      FF0066666600CCCCCC0066666600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CCCCCC00FFFFFF00000000000000000000000000008000000080
      00000080000000FF00000080000000FF00000080000000FF000000FF000000FF
      000000FF000000FF000000FF0000000000000000000000000000000000007C7C
      7C000000000000000000000000000000000034B7510062FB950046CF6900344D
      34005E5E5E0000000000000000000000000000000000BCBCBC00FAFAFA00F2F2
      F200D8D8D800959595007E7E7E0097979700B2B2B200A6A6A600949494008E8E
      8E00898989005C5C5C000000000000000000CCCCCC00FFFFFF0099999900CCCC
      CC0066666600FFFFFF0066666600FFFFFF00FFFFFF00CCCCCC0099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000008000000080
      0000008000000080000000FF00000080000000FF00000080000000FF000000FF
      000000FF000000FF000000000000000000000000000000000000118721003B64
      3E005959590000000000000000000000000047D670005CF58F0062FB95002479
      2C005E5E5E0000000000000000000000000000000000ACACAC00D8D8D800A0A0
      A0009B9B9B00C9C9C900ABABAB008D8D8D0080808000838383009F9F9F00BFBF
      BF007AAA8A004B4B4B000000000000000000CCCCCC00FFFFFF0099999900FFFF
      FF0066666600CCCCCC0066666600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CCCCCC00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      000000FF000000000000000000000000000000000000000000001A9933002BBA
      5400205C230053535300787E78002B963D0052EB850057F08A005CF58F0030B0
      4A00595959000000000000000000000000000000000076767600A6A6A600D9D9
      D900D8D8D800D8D8D800D8D8D800E0E0E000CFCFCF00BEBEBE009D9D9D008989
      8900678471004A4A4A000000000000000000CCCCCC00FFFFFF0099999900CCCC
      CC0066666600FFFFFF0066666600FFFFFF00FFFFFF00CCCCCC0099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000FF00000000000000000000000000000000000000FF000000FF
      000000000000000000000000000000000000000000000000000017972E0033CC
      65002BBA54001C5F1F001A77240042D872004CE57F0051EA840057F08A002DAC
      460067676700000000000000000000000000000000009E9E9E00E1E1E100D8D8
      D800D2D2D200C9C9C900D5D5D500CECECE00C2C2C20000000000CCCCCC00D4D4
      D400CCCCCC00646464000000000000000000CCCCCC00FFFFFF0099999900FFFF
      FF0066666600CCCCCC0066666600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CCCCCC00FFFFFF00000000000000000000000000000000000000
      000000FF000000FF00000000000000000000000000000000000000FF00000000
      0000000000000000000000000000000000000000000000000000159429002DC6
      5A0033CC65002BBA540033C6600041DA740046DF79004CE57F0051EA84002AA1
      4100000000000000000000000000000000000000000093939300D5D5D500C2C2
      C200AAAAAA00A5A5A500CFCFCF00F0F0F000EDEDED00EAEAEA00D9D9D900BFBF
      BF00BEBEBE00585858000000000000000000CCCCCC00FFFFFF0099999900CCCC
      CC0066666600FFFFFF0066666600FFFFFF00FFFFFF00CCCCCC0099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000000000FF
      000000FF000000FF000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001291240027C0
      4E002DC65A0033CC650035CE68003AD36D0041DA740046DF790047DD77002F72
      32000000000000000000000000000000000000000000616161006A6A6A00C9C9
      C900ECECEC00B2B2B200BABABA00AEAEAE00B6B6B600BDBDBD00BDBDBD00B3B3
      B30086868600000000000000000000000000CCCCCC00FFFFFF0099999900FFFF
      FF0066666600CCCCCC0066666600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CCCCCC00FFFFFF0000000000000000000000000000FF000000FF
      000000FF000000FF00000080000000FF00000080000000FF0000008000000080
      00000080000000800000000000000000000000000000000000000F8E1D0021BA
      430027C04E002DC65A0033CC650035CE68003AD36D0040D9730023993A000000
      000000000000000000000000000000000000000000000000000000000000BCB2
      B200FFD4C500FFD2C700FBD7CE00EFDCD500E5E1DF00E7E7E700646464006363
      630000000000000000000000000000000000CCCCCC00FFFFFF0099999900CCCC
      CC0066666600FFFFFF0066666600FFFFFF00FFFFFF00CCCCCC0099999900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000FF000000FF000000FF
      000000FF000000FF000000FF00000080000000FF00000080000000FF00000080
      00000080000000800000000000000000000000000000000000000B8B17001BB4
      370021BA420027C04D002CC5580032CB630035CE680028B14B003B4E3B000000
      000000000000000000000000000000000000000000000000000000000000B289
      7D00FFDCB800FFDCB800FFDCB800FFD6B300FFD4AF0064494700000000000000
      000000000000000000000000000000000000CCCCCC00CCCCCC0099999900CC99
      660066666600CC99660066666600CC996600CCCCCC00CCCCCC00FFFFFF00FFFF
      FF00FFFFFF00CCCCCC00FFFFFF0000000000000000000000000000FF000000FF
      000000FF000000FF00000080000000FF00000080000000FF0000008000000080
      000000800000008000000000000000000000000000000000000008870F0015AE
      29001AB3350020B9400026BF4C002CC5570032CB630031C76100236B2C005252
      520000000000000000000000000000000000000000000000000000000000C19B
      9000FFE5CB00FFE5CB00FFE5CB00FFE5CB00F9DDC40000000000000000000000
      000000000000000000000000000000000000CCCCCC00CCCCCC00999999009999
      9900666666006666660066330000FF000000FF000000FF000000CC996600CC99
      6600CCCCCC00CCCCCC00FFFFFF000000000000000000000000000000000000FF
      000000FF000000FF000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000005850A000FA8
      1D0015AE29001AB3350020B9400026BF4C002CC5570032CB630031C660002870
      30005E5E5E000000000000000000000000000000000000000000583A3A00DFC3
      B700FFEDDC00FFEDDC00FFEDDC00FFEDDC00DAC0B40000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000CCCCCC00CCCCCC0099999900999999006666660066330000333333006633
      0000FF000000FF000000CC996600000000000000000000000000000000000000
      000000FF000000FF000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000282050009A2
      12000FA81D0015AE29001AB3350020B9400026BF4C002CC5570032CB630031C6
      6000478F50000000000000000000000000000000000000000000A5807E00FFF7
      EE00FFF7EE00FFF7EE00FFF7EE00FFF7EE00A08E890000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000CCCCCC00CCCCCC00C0C0C000999999000000
      0000666666006633000033333300000000000000000000000000000000000000
      00000000000000FF000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000008870F007AAD
      7A0079AC790079AC790079AC790079AC790079AC790079AC790079AC790079AC
      790079AC79000000000000000000000000000000000099666600C7ABAA00F3EE
      ED00E6D8D700E6D8D700E6D8D700E9DEDD006040400000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000727272FF7272
      72FF727272FF727272FF727272FF727272FF727272FF727272FF727272FF7272
      72FF727272FF727272FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000727272FFFFDE
      CEFFFFDCCBFFFFDAC9FFFFD9C6FFFFD7C3FFFFD5C1FFFFD4BEFFFFD2BCFFFFD1
      BAFFFFD0B8FF8C7373BF00000000000000000000000000000000000000000000
      00000000000000000000FFFFFF0080808000808080008080800000000000FFFF
      FF00000000008080800080808000000000000000000000000000000000000000
      80000000800000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000727272FFFFE2
      D3FFEBA35CFFE89F55FFE69A4FFFE49649FFE29243FFE08E3DFFDE8B37FFDD87
      32FFFFD2BBFF8F7676BF00000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
      FF00FFFFFF000000000080808000000000000000000000000000000000000000
      8000000080000000800000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000727272FFFFE5
      D8FFEEAA67FFECA660FFEAA25AFFFFDDCCFFFFDBC9FFFFD9C6FFFFD7C4FFE08D
      3BFFFFD4BFFF917777BF00000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF000000000000FFFF0080808000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000727272FFFFE8
      DDFFF2B171FFEFAD6BFFEDA965FFEBA45EFFE9A058FFE79C51FFE5984BFFE394
      45FFFFD7C3FF937A7ABF00000000000000000000000000000000000000000000
      000080808000000000000000000000FFFF000000000000FFFF00000000000000
      00008080800000FFFF0080808000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000727272FFFFEC
      E2FFFFEADFFFFFE8DCFFFFE6D9FFFFE3D6FFFFE1D3FFFFDFD0FFFFDDCDFFFFDB
      CAFFFFD9C7FF967D7DBF00000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0080808000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF0000008000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      8000FFFFFF000000000000000000000000000000000000000000727272FFFFEF
      E7FFF8BE84FFF6BA7FFFF4B679FFF2B273FFF0AE6DFFEEAA67FFECA660FFEAA2
      5AFFFFDDCCFF987F7FBF00000000000000000000000000000000000000000000
      000000FFFF008000000080000000800000008000000080000000800000008000
      00008000000000FFFF0080808000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00000080000000800000008000FFFF
      FF00FFFFFF000000000000000000000000000000000000000000727272FFFFF2
      ECFFFAC38CFFF9C088FFF7BD83FFFFEAE0FFFFE8DDFFFFE6DAFFFFE4D7FFEDA9
      65FFFFE0D1FF9A8080BF00000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0080808000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000800000008000000080000000
      0000000000000000000000000000000000000000000000000000727272FFFFF5
      F1FFFDC793FFFBC58FFFFAC28BFFF8BF86FFF7BB81FFF5B87BFFF3B475FFF1B0
      6FFFFFE3D6FF9C8383BF00000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0080808000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000800000008000000080000000
      0000000000000000000000000000000000000000000000000000727272FFFFF8
      F5FFFFF6F2FFFFF5F0FFFFF3EDFFFFF1EAFFFFEFE7FFFFEDE4FFFFEBE1FFFFE9
      DEFFFFE7DBFF9E8585BF00000000000000000000000000000000000000000000
      000000FFFF008000000080000000800000008000000080000000800000008000
      00008000000000FFFF0080808000000000000000000000000000000000000000
      8000000080000000800000FFFF000000000000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000FFFFFF000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000727272FFFFFB
      F8FFFFF9F6FFFFF7F4FFFFF6F1FFFFF4EFFFFFF2ECFFFFF0E9FFFFEEE6FFFFEC
      E3FFFFEAE0FFA08686BF00000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0080808000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000727272FFFFFD
      FCFFFFFBFAFFFFFAF8FFFFF8F5FFFFF7F3FFFFF5F0FFFFF3EEFFFFF1EBFFFFEF
      E8FFFFEDE5FFA38989BF00000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF0000FFFF0000FFFF0080808000000000000000000000000000000000000000
      800000008000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000727272FFFFFE
      FEFFFFFDFDFFFFFCFBFFFFFBF9FFFFF9F7FFFFF8F4FFFFF6F2FFD1995CFFD199
      5CFFD1995CFFBA720DFF00000000000000000000000000000000000000000000
      000000FFFF0080000000800000008000000080000000800000008000000000FF
      FF0000FFFF0000FFFF0000000000000000000000000000000000000000000000
      8000FFFF0000000080000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000727272FFFFFF
      FFFFFFFFFFFFFFFEFEFFFFFDFCFFFFFCFAFFFFFAF8FFFFF9F6FFD1995CFFD199
      5CFFBA720DFF0000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000FFFFFF000000000000000000000000000000000000000000000000000000
      8000FFFF0000FFFF00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000727272FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFFFDFBFFFFFBF9FFD1995CFFBA72
      0DFF000000000000000000000000000000000000000000000000000000000000
      000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008A8076FF9285
      79FF8F8378FF8D8076FF8B7F75FF897C74FF867973FF847771FFBA720DFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFF8FFFFFFFC1FFC1FF87FFFF
      FFC1FFC100000000FFD1FFD100000000F7C1F7C100000000F3FFE7FF00000000
      F1C1C7C10000000000C1804100000000005100510000000000C1804100000000
      F1FFC7FF00000000F3C1E7C100000000F7C1F7C100000000FFD1FFD100000000
      FFC1FFC100000000FFFFFFFF00000000FF00FFDFFFFFFFFF0030FFCFFF3FF81F
      0003FFC7FF1FE0070001C003FF0FC0030001C001EF0780030001C003C7078003
      0001FFC7C00780030001FBCFC00780430001F3DFC00F80030001E3FFC00F8007
      0001C003C01FE00F00018003C01FE03F0001C003C00FE07F0001E3FFC007C07F
      0001F3FFC007C07F0011FBFFC007807FC007FFFFC003F9C7C007FFFFC003B420
      C007FE1FC0033220C007F80FC0036008C007F007C0030000C007E003C003F000
      C007E003C003F000C007E003C003F000C007F007C003F000C007F00FC003F000
      C007F00FC003F000C007F01FC003F000C007F81FC003F001C007E40FC007F003
      C007FFFFC00FF007C007FFFFC01FF00F00000000000000000000000000000000
      000000000000}
  end
  object frxReport1: TfrxReport
    Version = '4.12.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.OutlineVisible = True
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39736.899683588000000000
    ReportOptions.LastChange = 41989.078537453700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 498
    Top = 304
    Datasets = <
      item
        DataSet = frxCDS_GOODS
        DataSetName = 'frxCDS_GOODS'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Columns = 2
      ColumnWidth = 95.000000000000000000
      ColumnPositions.Strings = (
        '0'
        '95')
      PrintIfEmpty = False
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 17.007874020000000000
        ParentFont = False
        Top = 219.212740000000000000
        Width = 359.055350000000000000
        DataSet = frxCDS_GOODS
        DataSetName = 'frxCDS_GOODS'
        KeepFooter = True
        KeepHeader = True
        KeepTogether = True
        RowCount = 0
        object Memo4: TfrxMemoView
          Width = 257.008040000000000000
          Height = 17.007874020000000000
          ShowHint = False
          DataSet = frxCDS_GOODS
          DataSetName = 'frxCDS_GOODS'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxCDS_GOODS."NICK"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 272.126160000000000000
          Width = 45.354360000000000000
          Height = 17.007874020000000000
          ShowHint = False
          DataSet = frxCDS_GOODS
          DataSetName = 'frxCDS_GOODS'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[frxCDS_GOODS."dq"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 317.480520000000000000
          Width = 34.015770000000000000
          Height = 17.007874020000000000
          ShowHint = False
          DataSet = frxCDS_GOODS
          DataSetName = 'frxCDS_GOODS'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[IIF(<frxCDS_GOODS."id_store_main"> > 0,'#39#1057#1027#1057#8218#1056#1109#1056#1108#39','#39#39')]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Top = 18.897650000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Date]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Page]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#160#1056#176#1056#183#1056#1029#1056#1109#1057#1027#1056#1108#1056#176' '#1057#8218#1056#1109#1056#1030#1056#176#1057#1026'-'#1056#1108#1056#187#1056#1105#1056#181#1056#1029#1057#8218)
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897637800000000000
        ParentFont = False
        Top = 177.637910000000000000
        Width = 359.055350000000000000
        Condition = 'frxCDS_GOODS."compiled_name_otdel"'
        KeepTogether = True
        object Memo1: TfrxMemoView
          Width = 351.496290000000000000
          Height = 17.007874020000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            '[frxCDS_GOODS."compiled_name_otdel"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 22.677180000000000000
        Top = 260.787570000000000000
        Width = 359.055350000000000000
        object Memo11: TfrxMemoView
          Left = 279.685220000000000000
          Top = 3.779530000000000000
          Width = 71.811070000000000000
          Height = 17.007874020000000000
          ShowHint = False
          DataSet = frxCDS_GOODS
          DataSetName = 'frxCDS_GOODS'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxCDS_GOODS."dq">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader3: TfrxGroupHeader
        Height = 26.456710000000000000
        Top = 128.504020000000000000
        Width = 359.055350000000000000
        Condition = 'frxCDS_GOODS."f_type"'
        OutlineText = 'frxCDS_GOODS."f_type"'
        StartNewPage = True
        object Memo6: TfrxMemoView
          Align = baLeft
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 15790320
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxCDS_GOODS."f_type"]')
          ParentFont = False
        end
      end
    end
  end
  object frxSelClients: TfrxDBDataset
    UserName = 'frxSelClients'
    CloseDataSource = False
    DataSet = DM.SelClients
    BCDToCurrency = False
    Left = 528
    Top = 304
  end
  object frxSelDistribution: TfrxDBDataset
    UserName = 'frxSelDistribution'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DIST_IND_ID=DIST_IND_ID'
      'DIST_ID=DIST_ID'
      'D_N_ID=D_N_ID'
      'DQ=DQ'
      'OQ=OQ'
      'O_N_ID=O_N_ID'
      'PREP_DIST_ID=PREP_DIST_ID'
      'ID_ORDERS_LIST=ID_ORDERS_LIST'
      'GREAT_NAME=GREAT_NAME'
      'INVOICE_DATA_ID=INVOICE_DATA_ID'
      'ID_STORE_MAIN=ID_STORE_MAIN'
      'ID_CLIENTS=ID_CLIENTS'
      'ID_ORDERS=ID_ORDERS'
      'INVOICE_DATA_AS_IS_ID=INVOICE_DATA_AS_IS_ID'
      'ORDER_MARKNAME=ORDER_MARKNAME'
      'PACKING_MARKS=PACKING_MARKS'
      'WHERE_FLOWER_IS=WHERE_FLOWER_IS'
      'GREAT_NAME_F=GREAT_NAME_F'
      'COMPILED_NAME_OTDEL=COMPILED_NAME_OTDEL'
      'HOL_TYPE=HOL_TYPE'
      'F_SUB_TYPE=F_SUB_TYPE'
      'ORD=ORD'
      'FT_ID=FT_ID')
    DataSet = DM.SelDistribution
    BCDToCurrency = False
    Left = 528
    Top = 334
  end
  object BarMan_invoice: TdxBarManager
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
    LookAndFeel.Kind = lfOffice11
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    Style = bmsOffice11
    UseSystemFont = False
    Left = 468
    Top = 304
    DockControlHeights = (
      0
      0
      26
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
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'tlb_refresh'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 184
          Visible = True
          ItemName = 'dept_compo'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tlb_raspred'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tlb_add'
        end
        item
          Visible = True
          ItemName = 'tlb_load'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbClientStat'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbSettings'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tlb_prints'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bc_fontsize'
        end
        item
          Visible = True
          ItemName = 'tlb_exit'
        end
        item
          Visible = True
        end
        item
          Visible = True
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
    object BarMan_invoiceBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'legend_spis'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 283
      FloatTop = 160
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'stat_blank1'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic1'
        end
        item
          Visible = True
          ItemName = 'stat_red'
        end
        item
          Visible = True
          ItemName = 'stat_blank2'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic2'
        end
        item
          Visible = True
          ItemName = 'stat_green'
        end
        item
          Visible = True
          ItemName = 'stat_blank3'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic3'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic4'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic19'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic14'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic22'
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
    object BarMan_invoiceBar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'legend_orders'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 283
      FloatTop = 160
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      ItemLinks = <
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
          ItemName = 'dxBarStatic7'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic8'
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
          ItemName = 'dxBarStatic20'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic21'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic23'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic24'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic18'
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
    object tlb_add: TdxBarButton
      Action = AChooseOrder
      Category = 0
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
      PaintStyle = psCaptionGlyph
    end
    object tlb_set: TdxBarButton
      Action = ADistOnePos
      Caption = #1055#1086#1083#1086#1078#1080#1090#1100' '#1090#1086#1074#1072#1088' '#1074' '#1087#1086#1079#1080#1094#1080#1102' '#1079#1072#1082#1072#1079#1072
      Category = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        200000000000000400000000000000000000000000000000000042103B3A7A28
        32E79C4B3FFBA14F3FFC9D4C3FFB9B4A3EFA99473EF997473DF999493EFAE3CD
        CAFE38AA3EFF3BBD53FF33A53DFDF4F1F4C30000000000000000712030DDE3AA
        6BFFE49F47FFE49E44FFE49E46FFE49F47FFE6A553FFE6A553FFE49F48FFF8E4
        CCFF3FBD51FF3DCB4DFF3DBB51FFDBC7CDF30000000000000000914240F4E5A3
        4FFFE39839FFE39839FFE39839FFE5A14AFFEED9D0FFEEDAD0FFF8E5CCFFF7E2
        C7FF44C255FF47D258FF3EBC51FFE0CACBFBFFFFFFB8FFFFFFB89B5049F6E5A2
        4DFFE29739FFE29739FFE29739FFD89B63FFF2E3DFFF42BC4AFF4AC95EFF4CC8
        5EFF55D977FF5BE06EFF49CF6AFF3CB951FF38BA4FF730AC3DEF9D5852F5E39F
        4EFFDF9337FFDF9337FFE0973EFFC17C59FFFDF9F8FF49CC62FF65DD78FF6FE9
        84FF73EF89FF6DED82FF5EE271FF4CD55EFF3FCC50FF3ABE53FE935455E8E1A1
        5BFFDB8B36FFDB8B36FFB6834CFF9B6C5AFFEDEBEBFF40C04CFF45C75AFF49C8
        5DFF58DC7BFF73EF89FF57DB79FF43C158FE3CC053F832B03FF0814D64A4D398
        6DFFD6863BFFAC6A2AFF996E4FFF637799FFCCDDF0FFCCDDF0FFD4D9E3FFE2D7
        CEFF48C75BFF6DE681FF4BC960FFE6DDE1E30000000000000000462E4706925A
        63D5C68866FF956E54FF3E80C5FF83BCF2FFA3D3FEFFA3D3FEFF82BBF2FFC9DC
        EFFF44C459FF5FD772FF48C75DFEFFFEFFB80000000000000000000000000000
        0000452F473C275EA0F995C9F8FF8AC8FEFF89C8FFFF89C8FFFF89C7FEFFE1F0
        FDFF36B94AFE45C95DFD38BD45EFFFFFFFB80000000000000000000000000000
        0000021C393E5AA2EAFF87C6FEFF84C4FFFF83C4FFFF83C3FFFF82C3FFFFDDEF
        FEFFD0E5F9FFEAEDEFC8FFFFFFB8FFFFFFB80000000000000000000000000000
        0000358DDDEE7AB8F6FF7EC1FFFF7DC0FFFF7DC0FFFF7CC0FFFF7BBFFFFF7BBF
        FFFF76B7F6FF3690E2EE00000000000000000000000000000000000000000000
        00003593E7EF7ABAF9FF76BDFFFF76BCFFFF75BCFFFF74BCFFFF74BBFFFF73BB
        FFFF77B8F9FF3696EDEE00000000000000000000000000000000000000000000
        00001065BC4F65AFF9FF70B9FEFF6FB8FFFF6EB8FFFF6DB8FFFF6DB7FFFF6DB8
        FEFF63AEF9FF126CCA4B00000000000000000000000000000000000000000000
        0000000000003197FCFD84C2FEFF68B5FFFF68B5FFFF67B4FFFF67B4FFFF82C1
        FEFF3097FCFD0000000000000000000000000000000000000000000000000000
        000000000000197FE948409FFEFF82C1FEFF70B8FEFF70B8FEFF81C0FEFF3F9E
        FEFF1983EF450000000000000000000000000000000000000000000000000000
        000000000000000000001779DE331E8FFED542A0FEFE42A0FEFE1E90FED5197D
        E531000000000000000000000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
    end
    object tlb_save1: TdxBarButton
      Caption = ' '#1069#1082#1089#1087#1086#1088#1090' '#1074' Excel '
      Category = 0
      Hint = ' '#1069#1082#1089#1087#1086#1088#1090' '#1074' Excel '
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000994F42BDA35D
        53DF9E5648DFA36156DFA26056DFA05E56DF9E5C56DF9C5B57DF9A5957DF9958
        57DF985757DF965657DF955557DF8C4648DF965153DF894043B9A86256E4FEA7
        A7FFC08B7EFFF5EAE5FFF5E9E5FFF5E9E5FFF5E9E5FFF5E9E5FFF5E9E5FFF5E9
        E5FFF5E9E5FFF5E9E5FFF6EBE7FFB37172FFFEA5A5FF965153DFA96356E4FEA1
        A1FFC18C7EFFE5D9D5FFC8BBB7FFC8BBB7FFC8BBB7FFC8BBB7FFC8BBB7FFC8BB
        B7FFC8BBB7FFC8BBB7FFE9DDD9FFB47071FFFE9F9FFF975253DFAA6556E4FEA5
        A5FFC38E7FFFF4E9E5FFEFE3DFFFEFE3DFFFEFE3DFFFEFE3DFFFEFE3DFFFEFE3
        DFFFEFE3DFFFEFE3DFFFF5EBE8FFB57171FFFEA1A1FF985354DFAB6656E4FEA9
        A9FFC48F7FFFE6DCD8FFC4B9B5FFC4B9B5FFC4B9B5FFC4B9B5FFC4B9B5FFC4B9
        B5FFC4B9B5FFC4B9B5FFE9E0DDFFB67372FFFEA5A5FF985454DFAC6756E4FEAD
        ADFFC59180FFF8F0EDFFF5EDEAFFF5EDEAFFF5EDEAFFF5EDEAFFF5EDEAFFF5ED
        EAFFF5EDEAFFF5EDEAFFF8F1EEFFB77573FFFEA9A9FF995554DFAD6856E4FEB1
        B1FFC79280FFE6DFDCFFC0B7B3FFC0B7B3FFC0B7B3FFC0B7B3FFC0B7B3FFC0B7
        B3FFC0B7B3FFC0B7B3FFEAE3E0FFB87774FFFEADADFF9A5654DFAE6956E4FEB6
        B6FFC79380FFFAF4F2FFFAF4F2FFFAF4F2FFFAF4F2FFFAF4F2FFFAF4F2FFFAF4
        F2FFFAF4F2FFFAF4F2FFFAF5F3FFBA7974FFFEB1B1FF9B5754DFAF6B57E4FEBA
        BAFFBC7D66FFD7B4A6FFD6B3A6FFD6B3A6FFD5B2A6FFD4B1A6FFD3B0A6FFD2B0
        A6FFD1AFA7FFD0AEA7FFCFADA7FFB46F68FFFEB5B5FF9C5855DFB06C57E4FEBE
        BEFFF1AAA5FFE39A90FFE0978CFFE0968CFFDF958CFFDF958BFFDF948BFFDE93
        8BFFDE938BFFDD928AFFE0958EFFF2A6A5FFFEBABAFF9D5955DFB16D57E4FEC2
        C2FFFFBCBCFFD57D6DFFEB7D74FFD0A399FFD1A79DFFD0A69CFFCAA198FFCAA1
        97FFCF988EFFEC7C73FFD57E70FFFFB7B7FFFEBEBEFF9E5A54DFB26E57E4FEC6
        C6FFFFC0C0FFDE8174FFFD7C78FFDBC1BBFFDBC8C0FFDAC6BFFFB78069FFAD64
        47FFD7ADA6FFFF7B77FFDE8477FFFFBBBBFFFEC2C2FFA05C54DFB36E57E4FEC9
        C9FFFFC3C3FFDE8578FFFD847FFFE1CBC7FFE4D6D0FFE2D4CFFFB8836EFFAC66
        4BFFDAB3ADFFFF837EFFDE877AFFFFBFBFFFFEC5C5FFA15D54DFB36F57E4FECC
        CCFFFFC7C7FFDE897BFFFD8C86FFE8D7D3FFEEE5E1FFECE3DFFFBA8A77FFAD6E
        55FFDDBAB5FFFF8C86FFDE8B7EFFFFC2C2FFFECACAFFA15D53DFB47057E4FED2
        D2FFFECECEFFDE8E80FFFD968FFFE9D8D4FFEFE5E2FFEDE4E1FFD0B7AEFFCCAD
        A1FFE0BFBAFFFF958FFFDE9083FFFDCDCDFFC38A83FF964B4082A95E41BDB26D
        53DFB16C53DFB46950DFBD725BDFB5715ADFB4705ADFB4705ADFB46F5ADFB36E
        59DFB46E59DFBA705BDFAE644FDFA45E50DE994E406D00000000}
      PaintStyle = psCaptionGlyph
    end
    object tlb_exit: TdxBarButton
      Action = AExit
      Align = iaRight
      Category = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000010100011414131C656B
        68759DBDAED09ECFB8EB9BBAABCD5F66636F0304030400000000000000000000
        0000000000000707060B26231F4137342E7B544E44B59C8E77EDC5D5C3FE52CB
        97FF25C182FF2EC283FF25C082FF57CC98FF90A399B5030403041C1B19266C66
        5D93968D7ECDBAAD9AFBAEA28FFF56524BFF686258FFCECBBBFF49C68BFF24C1
        83FF48CB97FFEDF7EFFF5FC687FF24C183FF51C78CFF5A635D6F4947425BD4CC
        C1FFD1C8BCFFCEC4B5FFBBB1A3FF645E56FF766F65FFACD6B5FF38C68DFF3EC8
        91FF4ECB98FFCFF0E1FFF6FAF3FF61C789FF31C487FF8BAE95CD4D4B475BDDD7
        CFFFDBD5CCFFD9D3CAFFC8C2B8FF716A60FF827C71FF97D4A9FF7EDBB5FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F8EFFF55C583FF8FC09AEB504F4C5CE4DF
        D8FFC9C4BDFFE0DBD3FFD1CBC3FF7E766AFF8F887CFFAAD3A8FF5EBE6FFF79C8
        86FF7DCB8EFFCFECD5FFF8FBF6FF85C77FFF56BB67FF88A985D053524F5CE6E2
        DDFF5E5952FFE4E0DAFFDFDBD4FFC2BCB3FFD2CDC5FFE0E2D8FF5CA937FF5CB1
        4AFF77C275FFF4F9F1FF83C06FFF5CB047FF62AB3DFF596157745554525CEDEA
        E6FF95918AFFEDEAE6FFEDEBE6FFECE9E4FFEAE6E1FFE4E0DBFFC1D3B6FF5DA3
        32FF5BA430FF66AB3DFF5BA430FF61A437FF97A68ECD040404055150515DF3F1
        EFFFF3F1EEFFF2F0EDFFF2EFECFFF1EFEBFFEFECE8FFCECDD1FF4D53D4FF7A82
        D2FF8DAC95FF8FB67EFF97B392FFCBCABFFF817E77A20000000044466EB1D9D9
        DDFFF4F3F1FFF5F3F1FFF4F2F0FFF3F2EFFFD6D4D4FF5258D5FF1C24D1FF1C24
        CFFF1C25CCFF1C24C1FF1C24B4FF4E51A5FF5F5D69A50000000005050D183135
        74C5C2C3D4FFF2F0EEFFF7F6F4FFDEDCDAFF5F64D6FF1C24D2FF1C24D0FF1C24
        CEFF1C25C7FF1C24BAFF1B24AEFF1B23A3FF192094F81012467C000000000101
        03061F235C9CA4A7CDFFDFDEDCFF6C70D6FF1C24D2FF1C24D1FF1C24CFFF1C25
        CCFF1C24C1FF1B24B4FF1B23A8FF1B229EFF181F89ED05061C32000000000000
        0000000000001518436C5056C0FA1B23D2FF1C24D2FF1C24D0FF1C24CEFF1C25
        C7FF1C24BAFF1B24AEFF1B23A3FF181F8EED05061D3200000000000000000000
        000000000000000000000202090F07092C460D1056831A21ACFF1921ADF11B24
        BEFF1B24B4FF1B23A8FF182093ED05061E320000000000000000000000000000
        0000000000000000000000000000000000000608283E1A2197FF060825400405
        1A2C0A0D3C650F145C9D05071F34000000000000000000000000000000000000
        00000000000000000000000000000000000001020A0E05061E2D0102080E0000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
    end
    object dept_compo: TcxBarEditItem
      Category = 0
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items = <>
      Properties.ReadOnly = False
    end
    object tlb_refresh: TdxBarButton
      Caption = ' '#1054#1073#1085#1086#1074#1080#1090#1100' (F5) '
      Category = 0
      Hint = ' '#1054#1073#1085#1086#1074#1080#1090#1100' (F5) '
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000402010A040201090000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000001C0F052A7F47159CC2761CE6DB8C1DFEDB8C1DFEBF74
        1CE37A441496180D042400000000000000000000000000000000000000000000
        0000000000005F321077D7861DFAE9A31AFFF0AF18FFF3B317FFF3B317FFF0AE
        18FFE8A21AFFD3831DF7552D0F6A000000000000000000000000000000000000
        00006132117ADE8D1EFFEFA71AFFD8B541FFA5C99FFF90D1C7FF92CFBFFFAAC3
        89FFE4B22EFFEEA61AFFDC8A1EFE542B0F6A0000000000000000000000002110
        0630D57C20FBED9F1DFFC1B86AFF81D7E9FF90D4D7FF85D8E8FF8FE0F6FF8DDF
        F6FF74D2E4FFD0B04CFFEA9E20FFCE7822F7190C052400000000000000008442
        18A6E48C21FFF39E23FFD4AB54FFFBA92FFFFFAB2EFFFBAC33FFBABB84FF75D7
        F1FF5DD1F2FF5DC5D5FF68BFC0FFE18B23FF773B16960000000001000002C566
        24F0EB8C23FFEC9B31FFFE9D2DFFFFA233FFFFA435FFFFA436FFFFA436FFB0B5
        88FF47CBF0FF3FC9F0FF5BC0D0FFE98B23FFB85E22E3000000000B050219D572
        2DFFED8728FF5DC8AEFF3ED8CDFFAEB677FFFC9D3DFFFF9C3BFFF49F45FF67C0
        CCFF3FC9F0FF3FC9F0FF74B6B5FFEC8728FFD26F2EFE040201090B05021AD470
        34FFEE8A3AFF3BD6CFFF00EDFFFF01EDFFFF43D7CFFFF59747FFFF9440FFF796
        47FFB1A787FF5DC0D4FF8EAFA2FFED8A3BFFD26E34FE0402010A01000002C562
        35F3EA8544FF18E3ECFF01EDFFFF11EEFFFFAABA94FFFF9F5CFFFF9F5CFFFFA0
        5DFFFFA15EFFFE9C59FFE9955AFFE98545FFBA5B32E60000000000000000863C
        24ACD88354FF2DDBE0FF23E6F2FF32F0FFFF53EFF8FFB9BF9FFFFEA773FFFFA5
        71FFFDA06BFFD0A77CFFF28D57FFE17F4EFF7936209C0000000000000000260F
        0937CD7251FDE68961FFAFAD95FF4EEFFAFF7AF5FFFF89F6FFFF7EEBEEFF89E3
        E2FF73ECF2FFB1B39EFFE9875FFFCF6D4BFA1D0C072A00000000000000000000
        0000662B1D86DB7D62FFEB8D6EFFD0A48EFF96D2CEFF88E8ECFF88EAEEFF9CD8
        D6FFCDAA96FFEA8E70FFDA7D61FF5A2519760000000000000000000000000000
        000000000001662B1E86D67C68FDE89885FFEFA592FFF3AC9AFFF3AD9BFFEFA7
        95FFE89B88FFD47B67FB5C261C79000000000000000000000000000000000000
        00000000000000000000270E0A37884235ACCD7E6EF3E09A8DFFE09B8DFFCA7C
        6DF0834033A6210D082F00000000000000000000000000000000000000000000
        000000000000000000000000000000000000010000020C05031A0C0503190100
        0002000000000000000000000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
      ShortCut = 116
      OnClick = tlb_refreshClick
    end
    object tlb_raspred: TdxBarSubItem
      Caption = ' '#1056#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '
      Category = 0
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000ABA4A3FF827A
        79FF827A79FF827A79FF827A79FF827A79FF827A79FF827A79FF827A79FF827A
        79FF827A79FF827A79FF827A79FF827A79FF827A79FF827A79FFABA4A3FFDCD4
        D1FFF7EEEBFFF7EEEBFFF7EEEBFFE0DEDEFFF7EEEBFFF7EEEBFFF7EEEBFFF7EE
        EBFFE0DEDEFFF7EEEBFFF7EEEBFFF7EEEBFFD2CAC8FF827A79FFABA4A3FFDDD5
        D3FFF8EFECFFF8EFECFFF8EFECFFDADADAFFF8EFECFFF8EFECFFF8EFECFFF8EF
        ECFFDADADAFFF8EFECFFF8EFECFFF8EFECFFD2CAC8FF827A79FFABA4A3FFDED7
        D4FFE1DFDEFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADA
        DAFFDADADAFFDADADAFFDADADAFFE1DFDEFFD4CECBFF827A79FFABA4A3FFDED8
        D5FFF9F2EFFFF9F2EFFFF9F2EFFFDADADAFF23C8FFFF23C8FFFF23C8FFFF23C8
        FFFFDADADAFFF9F2EFFFF9F2EFFFF9F2EFFFD5CFCDFF827A79FFABA4A3FFDFD9
        D7FFFAF3F1FFFAF3F1FFFAF3F1FFDADADAFF23C8FFFF23C8FFFF23C8FFFF23C8
        FFFFDADADAFFFAF3F1FFFAF3F1FFFAF3F1FFD6D0CEFF827A79FFABA4A3FFDFDA
        D8FFE1E0E0FFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADA
        DAFFDADADAFFDADADAFFDADADAFFE1E0E0FFD6D1CFFF827A79FFABA4A3FFE0DB
        DAFFFBF6F4FFFBF6F4FFFBF6F4FFDADADAFFFBF6F4FFFBF6F4FFFBF6F4FFFBF6
        F4FFDADADAFFFBF6F4FFFBF6F4FFFBF6F4FFD7D2D1FF827A79FFABA4A3FFE0DD
        DBFFFCF7F5FFFCF7F5FFFCF7F5FFE2E0E0FFFCF7F5FFFCF7F5FFFCF7F5FFFCF7
        F5FFE2E0E0FFFCF7F5FFFCF7F5FFFCF7F5FFD8D4D2FF827A79FF4242B4FF8280
        C9FF8E8CD4FF8D8BD2FF8C8BCFFF8C8ACCFF8B89CAFF8B89C8FF8A88C6FF8988
        C4FF8987C3FF8987C3FF8987C3FF8987C3FF7877B3FF2424ADFF2828B5FF2828
        B5FF2525B1FF2525B0FF4242B4FFA1A1CCFF9393C4FF8181BFFF8888C6FF4D4D
        AFFF6060BBFF2424ADFF2424ADFF2424ADFF2424A4FF2424A4FF2828B5FF3C3C
        CCFF4444D5FF4444D5FF6060D2FFB0B0D9FFCDCDE3FF7E7ED3FF9797D0FF8383
        D3FF9494D5FF4444D4FF4444D5FF4444D5FF3737BCFF2424A4FF2828B5FF4747
        DBFF5353E8FF4F4FDCFF5959E8FF6A6AE5FF6A6AD4FF5757E7FF6969E6FF6060
        D2FF6666E6FF5454E9FF4E4ED9FF5454EBFF4141CAFF2424A4FF2828B5FF3232
        CDFF4141AFFF71718FFF3434D6FF3838B1FF7B7A91FF3333D1FF3333B6FF8281
        93FF3131CAFF3131BDFF858593FF3030C1FF2E2EBDFF2424A4FF22228B252D2D
        BC9A5555B2B69393A7EB3131B99D4848AEB09E9EAAF23131B29D3C3CA7A9A6A6
        ABF93030A69D34349FA2A9A9A9FE3030989F2424999D1A1A701E000000000000
        00006D6D76349A9A9AB7000000005F5F6A239E9D9EC700000000545460149F9F
        9FD6000000004B4B57079F9E9FE04A4A55030000000000000000}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
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
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbCheckErrors'
        end>
      OnPopup = tlb_raspredPopup
    end
    object dxBarButton1: TdxBarButton
      Action = ANewDist
      Category = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000ABA4A3FF827A
        79FF827A79FF827A79FF827A79FF827A79FF827A79FF827A79FF827A79FFBDB9
        B8FF46A24DFF40B856FF44A04CFFBDB9B8FF827A79FF827A79FFABA4A3FFDCD4
        D1FFF7EEEBFFF7EEEBFFF7EEEBFFE0DEDEFFF7EEEBFFF7EEEBFFF7EEEBFFFBF6
        F4FF56C369FF3DCB4DFF57C368FFFBF6F4FFD2CAC8FF827A79FFABA4A3FFDDD5
        D3FFF8EFECFFF8EFECFFF8EFECFFDADADAFFFBF7F5FFFBF7F5FFFBF7F5FFFBF7
        F5FF59C76CFF47D258FF58C569FFFBF7F5FFE7E3E2FFBDB9B8FFABA4A3FFDED7
        D4FFE1DFDEFFDADADAFFDADADAFFDADADAFFEBEBEBFF61C56BFF60CD73FF60CD
        74FF59D97AFF5BE06EFF4DCF6DFF56C268FF53BD64FF44A04CFFABA4A3FFDED8
        D5FFF9F2EFFFF9F2EFFFF9F2EFFFDADADAFF8BE2FFFF45CC6DFF65DD78FF6FE9
        84FF73EF89FF6DED82FF5EE271FF4CD55EFF3FCC50FF3FB956FFABA4A3FFDFD9
        D7FFFAF3F1FFFAF3F1FFFAF3F1FFDADADAFF8BE2FFFF33C271FF3EC975FF40CA
        78FF5CDC7EFF73EF89FF5BDC7CFF5FCC71FF55C367FF45A34DFFABA4A3FFDFDA
        D8FFE1E0E0FFDADADAFFDADADAFFDADADAFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
        EBFF5ECD71FF6DE681FF5FCD73FFEFEFEFFFD6D1CFFF827A79FFABA4A3FFE0DB
        DAFFFBF6F4FFFBF6F4FFFBF6F4FFDADADAFFFBF6F4FFFBF6F4FFFBF6F4FFFDFA
        F9FF5CCA6FFF5FD772FF62D075FFFDFAF9FFD7D2D1FF827A79FFABA4A3FFE0DD
        DBFFFCF7F5FFFCF7F5FFFCF7F5FFE2E0E0FFFCF7F5FFFCF7F5FFFCF7F5FFFDFB
        FAFF63C86CFF56CD6BFF68CB70FFFDFBFAFFD8D4D2FF827A79FF4242B4FF8280
        C9FF8E8CD4FF8D8BD2FF8C8BCFFF8C8ACCFF8B89CAFF8B89C8FF8A88C6FFC1C0
        E0FFC1BFDFFFC1BFDFFFC1BFDFFFC1BFDFFF7877B3FF2424ADFF2828B5FF2828
        B5FF2525B1FF2525B0FF4242B4FFA1A1CCFF9393C4FF8181BFFF8888C6FF4D4D
        AFFF6060BBFF2424ADFF2424ADFF2424ADFF2424A4FF2424A4FF2828B5FF3C3C
        CCFF4444D5FF4444D5FF6060D2FFB0B0D9FFCDCDE3FF7E7ED3FF9797D0FF8383
        D3FF9494D5FF4444D4FF4444D5FF4444D5FF3737BCFF2424A4FF2828B5FF4747
        DBFF5353E8FF4F4FDCFF5959E8FF6A6AE5FF6A6AD4FF5757E7FF6969E6FF6060
        D2FF6666E6FF5454E9FF4E4ED9FF5454EBFF4141CAFF2424A4FF2828B5FF3232
        CDFF4141AFFF71718FFF3434D6FF3838B1FF7B7A91FF3333D1FF3333B6FF8281
        93FF3131CAFF3131BDFF858593FF3030C1FF2E2EBDFF2424A4FF22228B252D2D
        BC9A5555B2B69393A7EB3131B99D4848AEB09E9EAAF23131B29D3C3CA7A9A6A6
        ABF93030A69D34349FA2A9A9A9FE3030989F2424999D1A1A701E000000000000
        00006D6D76349A9A9AB7000000005F5F6A239E9D9EC700000000545460149F9F
        9FD6000000004B4B57079F9E9FE04A4A55030000000000000000}
      ShortCut = 16461
    end
    object dxBarButton2: TdxBarButton
      Action = AOpenDist
      Category = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000ABA4A3FF827A
        79FF827A79FF827A79FF827A79FF827A79FF827A79FFBDB9B8FF429142FF3FB9
        52FFA7BAA4FF827A79FF827A79FF827A79FF827A79FF827A79FFABA4A3FFDCD4
        D1FFF7EEEBFFF7EEEBFFF7EEEBFFE0DEDEFFFBF6F4FF6EB56BFF5ADB80FF75F2
        96FF3FB850FFF7F3F1FFF7EEEBFFF7EEEBFFD2CAC8FF827A79FFABA4A3FFDDD5
        D3FFF8EFECFFF8EFECFFF8EFECFFEBEBEBFF6AB667FF55D679FF73EC8BFF77F0
        8CFF62E488FF69B265FFFBF7F5FFF8EFECFFD2CAC8FF827A79FFABA4A3FFDED7
        D4FFE1DFDEFFDADADAFFEBEBEBFF63B463FF53D377FF6AE182FF60E086FF5CDE
        82FF6DED87FF44C45EFFD9E0D9FFE1DFDEFFD4CECBFF827A79FFABA4A3FFDED8
        D5FFF9F2EFFFF9F2EFFFFCF8F7FF41C458FF5DD477FF57D87CFF29AF62FF2DB0
        54FF68EB8DFF5DE280FF45B34BFFFCF8F7FFD5CFCDFF827A79FFABA4A3FFDFD9
        D7FFFAF3F1FFFAF3F1FFFCF9F8FF61BB63FF40C559FF28B173FF8BE2FFFF89D7
        E8FF48CB63FF5CE073FF4AD06DFF85BB81FFE9E6E5FF827A79FFABA4A3FFDFDA
        D8FFE1E0E0FFDADADAFFDADADAFFEBEBEBFFEBEBEBFFEBEBEBFFDADADAFFEBEB
        EBFF5FB161FF54DB79FF4CD563FF3CBF54FFD5DBD2FF827A79FFABA4A3FFE0DB
        DAFFFBF6F4FFFBF6F4FFFBF6F4FFDADADAFFFBF6F4FFFBF6F4FFFBF6F4FFFBF6
        F4FFEAEAEAFF41BC4CFF4DD76CFF48D367FF3BB346FFBBB8B6FFABA4A3FFE0DD
        DBFFFCF7F5FFFCF7F5FFFCF7F5FFE2E0E0FFFCF7F5FFFCF7F5FFFCF7F5FFFCF7
        F5FFE2E0E0FFE2EADFFF3EC456FF45D05CFF48D26BFF3E9A3EFF4242B4FF8280
        C9FF8E8CD4FF8D8BD2FF8C8BCFFF8C8ACCFF8B89CAFF8B89C8FF8A88C6FF8988
        C4FF8987C3FFC1BFDFFF598A77FF43CB62FF47D261FF39BA51FF2828B5FF2828
        B5FF2525B1FF2525B0FF4242B4FFA1A1CCFF9393C4FF8181BFFF8888C6FF4D4D
        AFFF6060BBFF2424ADFF8B8BD4FF266B5EFF36B54DFF26675DFF2828B5FF3C3C
        CCFF4444D5FF4444D5FF6060D2FFB0B0D9FFCDCDE3FF7E7ED3FF9797D0FF8383
        D3FF9494D5FF4444D4FF4444D5FF9C9CE9FF9595DCFF8B8BCFFF2828B5FF4747
        DBFF5353E8FF4F4FDCFF5959E8FF6A6AE5FF6A6AD4FF5757E7FF6969E6FF6060
        D2FF6666E6FF5454E9FF4E4ED9FF5454EBFF4141CAFF2424A4FF2828B5FF3232
        CDFF4141AFFF71718FFF3434D6FF3838B1FF7B7A91FF3333D1FF3333B6FF8281
        93FF3131CAFF3131BDFF858593FF3030C1FF2E2EBDFF2424A4FF22228B252D2D
        BC9A5555B2B69393A7EB3131B99D4848AEB09E9EAAF23131B29D3C3CA7A9A6A6
        ABF93030A69D34349FA2A9A9A9FE3030989F2424999D1A1A701E000000000000
        00006D6D76349A9A9AB7000000005F5F6A239E9D9EC700000000545460149F9F
        9FD6000000004B4B57079F9E9FE04A4A55030000000000000000}
    end
    object dxBarButton3: TdxBarButton
      Action = AEditDist
      Category = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000ABA4A3FF827A
        79FF827A79FFC9C5C5FF0CA2C1FF0CA2C1FF009DD6FF009DD6FFC9C5C5FF827A
        79FF827A79FF827A79FF827A79FF827A79FF827A79FF827A79FFABA4A3FFDCD4
        D1FFF7EEEBFFFCF8F6FF0CA2C1FF0CA2C1FFB0E8F2FF27A1E3FF147CB8FFFCF8
        F6FFE0DEDEFFF7EEEBFFF7EEEBFFF7EEEBFFD2CAC8FF827A79FFABA4A3FFDDD5
        D3FFF8EFECFFFCF8F7FF009DD6FFB0E8F2FF69D6E7FF32A4E5FF1A94E9FF147C
        B8FFEFEFEFFFF8EFECFFF8EFECFFF8EFECFFD2CAC8FF827A79FFABA4A3FFDED7
        D4FFE1DFDEFFEFEFEFFF009DD6FFB0E8F2FF3BC0EFFF20A5EBFF1D98EFFF1A94
        E9FF147CB8FFEFEFEFFFDADADAFFE1DFDEFFD4CECBFF827A79FFABA4A3FFDED8
        D5FFF9F2EFFFF9F2EFFFFCF9F8FF147CB8FF7FD1F9FF1EBBE9FF1A9EE8FF1B98
        EFFF1F94E8FF147CB8FFFCF9F8FFF9F2EFFFD5CFCDFF827A79FFABA4A3FFDFD9
        D7FFFAF3F1FFFAF3F1FFFAF3F1FFEFEFEFFF137CB8FF7FD1F9FF1EBBE9FF1A9E
        E8FF2298EDFFA9ADB1FF808080FFFDFAF9FFD6D0CEFF827A79FFABA4A3FFDFDA
        D8FFE1E0E0FFDADADAFFDADADAFFDADADAFFEFEFEFFF147CB8FF7FD1F9FF24BB
        E8FF94B4C9FFB4B1B1FF605FA9FF808080FFEDEBEAFF827A79FFABA4A3FFE0DB
        DAFFFBF6F4FFFBF6F4FFFBF6F4FFDADADAFFFBF6F4FFFDFBFAFF147CB8FF7FD1
        F9FFCBC9CBFFB8B6B9FF5E5CAFFF3A3AACFF3636BCFFC9C5C5FFABA4A3FFE0DD
        DBFFFCF7F5FFFCF7F5FFFCF7F5FFE2E0E0FFFCF7F5FFFCF7F5FFFEFCFBFF8080
        80FFD7D4D7FF6765C0FF3636BCFF3131B1FF3030B1FF000094FF4242B4FF8280
        C9FF8E8CD4FF8D8BD2FF8C8BCFFF8C8ACCFF8B89CAFF8B89C8FF8A88C6FFCCCB
        E5FF808080FF9696EDFF4F4FE2FF3535B9FF3333B8FF000094FF2828B5FF2828
        B5FF2525B1FF2525B0FF4242B4FFA1A1CCFF9393C4FF8181BFFF8888C6FF4D4D
        AFFFBABAE1FF000094FF9696EDFF9696EDFF000094FFA0A0D7FF2828B5FF3C3C
        CCFF4444D5FF4444D5FF6060D2FFB0B0D9FFCDCDE3FF7E7ED3FF9797D0FF8383
        D3FF9494D5FFAEAEECFF3636BCFF000094FFA8A8E2FF2424A4FF2828B5FF4747
        DBFF5353E8FF4F4FDCFF5959E8FF6A6AE5FF6A6AD4FF5757E7FF6969E6FF6060
        D2FF6666E6FF5454E9FFB2B2EEFFB5B5F6FF4141CAFF2424A4FF2828B5FF3232
        CDFF4141AFFF71718FFF3434D6FF3838B1FF7B7A91FF3333D1FF3333B6FF8281
        93FF3131CAFF3131BDFF858593FF3030C1FF2E2EBDFF2424A4FF22228B252D2D
        BC9A5555B2B69393A7EB3131B99D4848AEB09E9EAAF23131B29D3C3CA7A9A6A6
        ABF93030A69D34349FA2A9A9A9FE3030989F2424999D1A1A701E000000000000
        00006D6D76349A9A9AB7000000005F5F6A239E9D9EC700000000545460149F9F
        9FD6000000004B4B57079F9E9FE04A4A55030000000000000000}
    end
    object dxBarButton4: TdxBarButton
      Action = ADistDelete
      Category = 0
      Enabled = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000ABA4A3FF827A
        79FF827A79FF827A79FF827A79FF827A79FF827A79FF827A79FF827A79FF827A
        79FF827A79FF827A79FF827A79FF827A79FF827A79FF827A79FFABA4A3FFDCD4
        D1FFF7EEEBFFF7EEEBFFF7EEEBFFE0DEDEFFFBF6F4FFFBF6F4FFFBF6F4FFFBF6
        F4FFEFEEEEFFFBF6F4FFFBF6F4FFFBF6F4FFE7E3E2FFBDB9B8FFABA4A3FFDDD5
        D3FFF8EFECFFF8EFECFFF8EFECFFDADADAFFFBF7F5FF6261D1FF6563D0FF6664
        CEFF6060CBFF6261C9FF5D5CC3FF5D5CC3FF5351B9FF4543ABFFABA4A3FFDED7
        D4FFE1DFDEFFDADADAFFDADADAFFDADADAFFEBEBEBFF5E5ED3FF6E6EE4FF7676
        EFFF7676EFFF6D6DEBFF5555DBFF5555DBFF4343CDFF4343CEFFABA4A3FFDED8
        D5FFF9F2EFFFF9F2EFFFF9F2EFFFDADADAFF8BE2FFFF3F5AD5FF425DD9FF445F
        DAFF6262D4FF6463D3FF5E5DCCFF5E5DCCFF5453C0FF4544AEFFABA4A3FFDFD9
        D7FFFAF3F1FFFAF3F1FFFAF3F1FFDADADAFF8BE2FFFF8BE2FFFF8BE2FFFF8BE2
        FFFFEBEBEBFFFCF9F8FFFCF9F8FFFCF9F8FFE9E6E5FFBDB9B8FFABA4A3FFDFDA
        D8FFE1E0E0FFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADA
        DAFFDADADAFFDADADAFFDADADAFFE1E0E0FFD6D1CFFF827A79FFABA4A3FFE0DB
        DAFFFBF6F4FFFBF6F4FFFBF6F4FFDADADAFFFBF6F4FFFBF6F4FFFBF6F4FFFBF6
        F4FFDADADAFFFBF6F4FFFBF6F4FFFBF6F4FFD7D2D1FF827A79FFABA4A3FFE0DD
        DBFFFCF7F5FFFCF7F5FFFCF7F5FFE2E0E0FFFCF7F5FFFCF7F5FFFCF7F5FFFCF7
        F5FFE2E0E0FFFCF7F5FFFCF7F5FFFCF7F5FFD8D4D2FF827A79FF4242B4FF8280
        C9FF8E8CD4FF8D8BD2FF8C8BCFFF8C8ACCFF8B89CAFF8B89C8FF8A88C6FF8988
        C4FF8987C3FF8987C3FF8987C3FF8987C3FF7877B3FF2424ADFF2828B5FF2828
        B5FF2525B1FF2525B0FF4242B4FFA1A1CCFF9393C4FF8181BFFF8888C6FF4D4D
        AFFF6060BBFF2424ADFF2424ADFF2424ADFF2424A4FF2424A4FF2828B5FF3C3C
        CCFF4444D5FF4444D5FF6060D2FFB0B0D9FFCDCDE3FF7E7ED3FF9797D0FF8383
        D3FF9494D5FF4444D4FF4444D5FF4444D5FF3737BCFF2424A4FF2828B5FF4747
        DBFF5353E8FF4F4FDCFF5959E8FF6A6AE5FF6A6AD4FF5757E7FF6969E6FF6060
        D2FF6666E6FF5454E9FF4E4ED9FF5454EBFF4141CAFF2424A4FF2828B5FF3232
        CDFF4141AFFF71718FFF3434D6FF3838B1FF7B7A91FF3333D1FF3333B6FF8281
        93FF3131CAFF3131BDFF858593FF3030C1FF2E2EBDFF2424A4FF22228B252D2D
        BC9A5555B2B69393A7EB3131B99D4848AEB09E9EAAF23131B29D3C3CA7A9A6A6
        ABF93030A69D34349FA2A9A9A9FE3030989F2424999D1A1A701E000000000000
        00006D6D76349A9A9AB7000000005F5F6A239E9D9EC700000000545460149F9F
        9FD6000000004B4B57079F9E9FE04A4A55030000000000000000}
    end
    object dxBarButton5: TdxBarButton
      Action = ADistribute
      Category = 0
      Enabled = False
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000059565608ADA9A99EB9B5B5BCB8B4B4B9B7B4B4B8B6B3B2B5B6B2B2B5B5B1
        B1B2B5B1B1B1B4B0B0AFAAA6A692615E5E070000000000000000000000000000
        0000615E5E11B7B3B3DEDBD9D9FFDBDBDBFFD1D1D1FFD2D2D2FFD2D2D2FFD2D2
        D2FFD8D8D8FFE1E0E0FFB7B3B3DE6A6767100000000000000000000000000000
        000000000000827E7E0197939369BBBABAFF8E8E8EFF8E8E8EFF8E8E8EFF8E8E
        8EFFBDBCBCFF9893937B88848303000000000000000000000000AEA9A85EBAB8
        B8FFBAB8B8FFBAB8B8FFBAB8B8FFBAB8B8FFBAB8B8FFBAB8B8FFBAB8B8FFBAB8
        B8FFBAB8B8FFBAB8B8FFBAB8B8FFBAB8B8FFBAB8B8FF9A959561BAB8B8FFE9E4
        E3FFE7E1E1FFE7E1E1FFE6E0E0FFE5DFDFFFE5DFDFFFF0EDEDFFF0EDEDFFE3DD
        DDFFE3DDDDFFE3DDDDFFE3DDDDFFE3DDDDFFE4DFDFFFBAB8B8FFBAB8B8FFE7E1
        E1FFE5DFDEFFE5DEDEFFE4DDDDFFE3DCDCFFE2DBDBFFE9E5E4FFE8E4E4FFE0DA
        DAFFE0D9D9FFE0D9D9FFE0D9D9FFE0D9D9FFE7E1E1FFBAB8B8FFBAB8B8FFE7E1
        E1FFC77257FFC77559FFC77B5CFFC68260FFC68964FFC68C66FFC58964FFC482
        60FFC27A5CFFC17258FFC06E55FFC06D55FFE7E1E1FFBAB8B8FFBAB8B8FFE7E1
        E1FFE86341FFE96C45FFEA7F4FFFEC955BFFEEA966FFEFB56CFFEEAC67FFED99
        5DFFEB8351FFE96F46FFE8623FFFE8613FFFE7E1E1FFBAB8B8FFBAB8B8FFE7E1
        E1FFE86240FFE96A43FFEA7B4DFFEC8F58FFEEA161FFEEA966FFEEA362FFEC93
        5AFFEA7F4FFFE96D45FFE8613FFFE8613FFFE7E1E1FFBAB8B8FFBAB8B8FFE7E1
        E1FFE96D4EFFE86541FFE97248FFEB8251FFEC8F58FFEC955BFFEC9159FFEB85
        52FFEA754AFFE86742FFE8613FFFE8613FFFE7E1E1FFBAB8B8FFBAB8B8FFE7E1
        E1FFED856BFFED856BFFEA7654FFEA7349FFEA7B4DFFEA7F4FFFEA7C4EFFEA74
        49FFE96A43FFE8623FFFE8613FFFE8613FFFE7E1E1FFBAB8B8FFBAB8B8FFE7E1
        E1FFED8970FFEF947DFFEF937BFFEE9177FFED896AFFEC815EFFEB7855FFEA70
        4EFFE96A49FFE96A4AFFE96D4EFFEA6F51FFE7E1E1FFBAB8B8FFBAB8B8FFE7E1
        E1FFEE8D75FFF09983FFF09882FFF09781FFEF967FFFEF957EFFEF947DFFEF93
        7CFFEF927AFFEF9079FFEE8F78FFED866DFFE7E1E1FFBAB8B8FFBAB8B8FFE7E1
        E1FFED876DFFEF9179FFEF9078FFEE8F77FFEE8E76FFEE8E75FFEE8D75FFEE8C
        74FFEE8B73FFEE8B72FFEE8A71FFEC8268FFE7E1E1FFBAB8B8FFBAB8B8FFE7E1
        E1FFE7E1E1FFE7E1E1FFE7E1E1FFE7E1E1FFE7E1E1FFE7E1E1FFE7E1E1FFE7E1
        E1FFE7E1E1FFE7E1E1FFE7E1E1FFE7E1E1FFE7E1E1FFBAB8B8FFC1BCBB65BAB8
        B8FFBAB8B8FFBAB8B8FFBAB8B8FFBAB8B8FFBAB8B8FFBAB8B8FFBAB8B8FFBAB8
        B8FFBAB8B8FFBAB8B8FFBAB8B8FFBAB8B8FFBAB8B8FFABA6A667}
    end
    object tlb_load: TdxBarSubItem
      Caption = ' '#1047#1072#1075#1088#1091#1079#1080#1090#1100' '
      Category = 0
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000000000000000000000000000000000000582F09B1998
        F3BA1C9DF5BA1CA1F6BA1CA6F8BA1CAAF9BA1CAEFBBA1CB2FCBA1CB5FDBA1CB7
        FEBA1CB8FEBA1CB7FEBA1CB7FEBA1CB7FEBA18B6FEBA06ABFE9B118BF1DE9FEA
        FCEFB9EEFCEFB9EFFDEFBAF0FDEFBBF2FDEFBBF2FDEFBCF4FDEFBBF4FDEFE0FA
        FEF83FC558FFE0FAFEF8BAF3FDEFB9F2FDEF9BF0FDEF0FB1FEDE128AF0E59FEF
        FDF3B3F1FDF3B5F3FDF3B7F5FDF3B8F8FEF3BAFAFEF3BBFBFEF3E0FEFFF944C6
        5DFE43CF65FF44C75EFEDFFDFFF9B7F9FEF39FF8FDF311B2FEE50F86EFE56CE2
        FCF369DDFCF36CE1FCF36FE6FCF373EBFDF376F0FDF3C2FAFEF941C65DFE43CF
        65FF42CF53FF59DF7DFF42C75EFEC2FCFFF974F7FDF30EB2FEE50D85EFE547D9
        FCF333CCFCF334CFFCF338D4FDF33CDBFDF3A9F2FEF93FC55DFE43CF65FF40CE
        51FF4FD861FF6EEE84FF62E588FF40C75EFEB4FCFEF90DB2FEE50C83EFE542D7
        FBF32DCAFCF32ECAFCF32FCDFCF3A2EBFEF93EC55DFE40C763FF41CB60FF4FDA
        69FF5EE472FF71F18FFF5CDF7DFF4CD36FFF40C75DFE94DDFFF30A80EFE548D0
        F9F344CCF9F344CDF9F393E3FCF840C969FE40C85BFF41CA69FE40CA69FE5EE6
        83FF6BED80FF6BEC90FF41CD69FE41CD69FE42CD69FE3BC668FC076CCFC83491
        D1DE3791D1DE3993D1DE91C4E5EBAAD2EBF0ABD3ECF09DD3F6F841CA69FE69EE
        8FFF72F088FF66E58AFF41CC69FEAFFCFFF9B5FDFEF994DBFEF30C79DCAD65C4
        E2C56AC3E2C56DC7E2C571CCE3C573D0E2C56EC9DBC8B2D9EBEC3EC568FE69EE
        8FFF72F088FF66E58AFF3FC769FEA5E5FDF938C9FBF307A3F9E40F83EEA37CE4
        FBBB81E1FCBB86E7FCBB8AEEFCBB8CF2FBBB7DDDEAC2C3E9F0E643C763FA6EF0
        94FF71EC86FF5EDD81FF42C663FAB8DEEDE951B0D3CF0A8BD8B70F82EFA27EE6
        FDBA81E1FEBA85E7FEBA8AEDFEBA8EF3FFBA8EF4FBBBCEF5F9E245CA65F96DEE
        93FF6AE47EFF55D378FF45CA65F9C9F1F9E272DBEDC00D9EEEA80F82EFA27EE6
        FDBA80DFFEBA83E3FEBA87E9FEBA8BF0FEBA90F6FFBAD5FDFFDF47CC66F842C8
        5BFE40C85AFF41C85AFE41C85AFED1FBFFDF83F4FDBA0FA7FBA20F82EFA297E6
        F6BAA5E0F3BAA6E2F3BAA9E5F3BAABE8F3BAA2EEF7BAD4FCFFDFD3FEFEDFD3FE
        FEDFD2FEFEDFD2FDFEDFD1FDFEDFD0FCFEDF82F6FDBA0FA4FAA20F82EFA2C9ED
        F1BAF7F7F7BAF7F7F7BAF7F7F7BAF7F7F7BACAEDF2BA70E4FBBA1492F2AD0F90
        F3A20F93F4A20F96F5A20F99F6A20F9CF7A20F9FF8A20599F8870F82EFA299EA
        F5BAA9E9F2BAA9E9F2BAA9E9F2BAAAEAF2BA9BEDF5BA29A2F3B836ABF4200000
        00000000000000000000000000000000000000000000000000000577ED870F82
        EFA20F82EFA20F82EFA20F82EFA20F83EFA20F84EFA21183EE64000000000000
        0000000000000000000000000000000000000000000000000000}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnLoadOrder'
        end
        item
          Visible = True
          ItemName = 'mnUnloadOrder'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'mnLoadStockByGroup'
        end
        item
          Visible = True
          ItemName = 'btnUnloadStock'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'mnCheckInvoices'
        end>
    end
    object dxBarButton6: TdxBarButton
      Action = ALoadInvoice
      Category = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000FFFF
        FF7831B03EBE3ABE53E930AC3EC1FFFFFF780000000000000000949090D79C98
        98FD9A9696FF999595FF989494FF989494F5979393F5969292F5959191F5C7C6
        C6FA49B75BFD3DCB4DFF47B459FDC6C4C4E700000000000000009B9797EFFAF6
        F4FFF7EFECFFF6EDEAFFF6ECE8FFF6ECE8FFFAF4F2FFFAF3F1FFF9F3F1FFF9F3
        F0FF5EC96EFF47D258FF58C56AFFC3C1C1FEFFFFFF78FFFFFF789D9898FEF9F3
        F0FFFC619EFFFC579AFFFB609CFFF4E7E2FFEEEAE9FF62C469FF64CD73FF61CC
        72FF59D97AFF5BE06EFF4ED06DFF47B45AFB38BA4FD330AC3DC09F9B9BEFFAF6
        F4FFFD599DFFFBB1B8FFFD589CFFF6EBE7FFFAF3F1FF55CE6BFF65DD78FF6FE9
        84FF73EF89FF6DED82FF5EE271FF4CD55EFF3FCC50FF3ABE53ECA09C9CEFFAF6
        F4FFFD599EFFFCB2B9FFFD599DFFF8EFEBFFEFECEBFF60C668FF5DCC6FFF5FCC
        71FF5DDC7EFF73EF89FF5BDB7CFF4DBC60FB3CC053D532B03FC2A19D9DEFFAF6
        F4FFFD599EFFFCB2BAFFFD599DFFF9F0EDFFFBF7F5FFFBF6F4FFFAF5F3FFFAF3
        F1FF63CF73FF6DE681FF63D076FFC7C5C5F30000000000000000A39E9EEFFAF6
        F4FFFD599EFFFCB2BAFFFD599EFFF9F1EEFFE2DEDCFFE1DDDCFFF8EFECFFEFEC
        EBFF5DCA6FFF5FD772FF62CF74FFC8C6C6F30000000000000000A49F9FEFFAF6
        F4FFFD599EFFFCB2BAFFFD599EFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFFBF7
        F5FF69CB6FFF56CC6AFF68CA6FFFC8C6C6F30000000000000000A5A0A0EFFAF6
        F4FFFD64A1FFFD599EFFFD64A1FFF9F1EEFFE2DEDCFFE2DEDCFFE2DEDCFFF0EE
        ECFFF0EDECFFEFEDECFFFCFAF9FFC9C7C7F30000000000000000A6A1A1EFFAF6
        F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6
        F4FFFAF6F4FFFAF6F4FFFAF6F4FF959191E90000000000000000A6A2A2EFFAF6
        F4FFD8A44EFFDAA246FFDAA246FFDAA246FFDAA246FFDAA246FFDAA246FFDAA2
        46FFDAA246FFD8A44EFFFAF6F4FF928E8EE90000000000000000A7A3A3EFFAF6
        F4FFDAA246FFC9B491FFC9B491FFC9B491FFC9B491FFC9B491FFC9B491FFC9B4
        91FFC9B491FFDAA246FFFAF6F4FF938E8EE10000000000000000A8A3A3EFFAF6
        F4FFD8A44EFFDAA246FFDAA246FFDAA246FFDAA246FFDAA246FFDAA246FFDAA2
        46FFDAA246FFD8A44EFFFAF6F4FF938E8EE70000000000000000A9A4A4EFFBF9
        F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9
        F8FFFBF9F8FFFBF9F8FFFBF9F8FF938E8EE10000000000000000A49F9FD2A9A4
        A4FCA8A3A3FEA7A3A3FEA6A2A2FEA6A2A2EFA6A1A1EFA5A0A0EFA49F9FEFA39E
        9EEFA39E9EFDA39E9EF2938E8EE1938E8EE10000000000000000}
    end
    object dxBarButton7: TdxBarButton
      Action = ALoadStock
      Category = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000145114041A6A1A1300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000001861180429A429AC2CA832E323902324000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000186318042AA72AAC49D071FF4FDB7FFF2EAB36E3239023240000
        0000000000000000000000000000000000000000000000000000000000000000
        0000196519042BAB2BAC4FD678FF59E176FF4ED762FF4FDA7DFF2EAB36E32390
        232400000000000000000000000020852027269A267000000000000000001A67
        19042CAE2CAC54DA7DFF6AED8AFF61E575FF57DE6AFF4FD864FF50DB7EFF2EAB
        36E32390232400000000218721272BA433E5269B26B200000000155415032DB1
        2DAC56DB7FFF73F293FF71EF87FF6BEC80FF63E677FF59DF6CFF50D965FF50DB
        7FFF2EAB36E327A1274B2DA836E54EDA86FF269C26B2000000001A6A1A0B30B6
        34D661E692FF73EF8DFF74F089FF72F087FF6CED81FF64E778FF5AE06EFF51DA
        67FF51DC80FF36B64BFF4AD778FF4BDA7BFF279E27B100000000000000002593
        241831B736D661E691FF72EE8CFF74F089FF72F088FF6DED82FF65E87AFF5CE1
        6FFF53DB68FF4FDB71FF42CF55FF4BD978FF279F27B100000000000000000000
        00002593241831B736D661E690FF72EE8CFF74F089FF73F088FF6EEE83FF67E9
        7BFF5DE271FF53DB66FF4AD45BFF4EDB7BFF27A027B000000000000000000000
        0000000000002593241831B736D661E590FF71ED8BFF74EF89FF73F089FF6FEE
        84FF68EA7CFF5FE372FF55DC67FF54DF82FF28A228B000000000000000000000
        000000000000000000002593241831B736D660E590FF71ED8AFF74EF89FF74F0
        89FF70EF85FF69EA7EFF60E474FF5BE589FF28A428B000000000000000000000
        00000000000000000000000000002DB22C3F3BC14BFF6CEB93FF71EB86FF74EF
        89FF74F089FF70EF86FF6AEB7FFF62E990FF29A528AF00000000000000000000
        00000000000000000000289D272734BC3DE55DDF8CFF66DF7BFF6CE580FF70EA
        85FF73EE89FF74F089FF71EF87FF67ED97FF29A729AF00000000000000000000
        000000000000289F272732BB36E553DA87FF59DB87FF5DDF89FF60E38DFF63E6
        91FF66E994FF68EC97FF69ED97FF62E997FF2AA829AE00000000000000000000
        0000000000002FBA2E572FB92E9F2FB72E9F2EB62D9F2EB52D9F2DB32C9F2DB2
        2C9F2CB02C9F2CAF2BA22BAD2BA22BAB2AA22AAA2A6400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object dxBarButton8: TdxBarButton
      Action = APutBack
      Category = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        200000000000000400000000000000000000000000000000000042103B3A7A28
        32E79C4B3FFBA14F3FFC9D4C3FFB9B4A3EFA99473EF9E3CDC9FD36297CFE312D
        9DFFE4CDCAFE95433CF8DBC7CBF5272792F3212181D6FFFFFFB8712030DDE3AA
        6BFFE49F47FFE49E44FFE49E46FFE49F47FFF8E6CFFF443A83FF5555D3FF6464
        E1FF33319FFFF8E5CDFF312E95FF4646CFFF4343C9FF212181D6914240F4E5A3
        4FFFE39839FFE39839FFE39839FFE5A14AFFEED9D0FF3430A1FF5B5BD8FF7070
        E6FF6969E8FF3737B7FF5151D8FF4444CDFF4646CEFF282897F29B5049F6E5A2
        4DFFE29739FFE29739FFE29739FFD89B63FFCF9C8DFFF1E3DEFF3633A3FF6565
        E3FF7777F0FF6C6CEDFF5656DBFF4848D0FF29299BF4FFFFFFB89D5852F5E39F
        4EFFDF9337FFDF9337FFE0973EFFC17C59FFF7EAE7FFF7E9E7FFEEDAD0FF3939
        BEFF7575F1FF6D6DEBFF5959DFFF3434B4FFFFFFFFB800000000935455E8E1A1
        5BFFDB8B36FFDB8B36FFB6834CFF9B6C5AFFBFB9B9FFEDEBEBFF3331A3FF6565
        E3FF7777F0FF6C6CEDFF5656DBFF4848D1FF2B2BA0F6FFFFFFB8814D64A4D398
        6DFFD6863BFFAC6A2AFF996E4FFF637799FFCCDDF0FF2F33ACFF5B5BD9FF7070
        E6FF6969E9FF3939BEFF5252D9FF4444CDFF4646D0FF2A2AA0F4462E4706925A
        63D5C68866FF956E54FF3E80C5FF83BCF2FFE5F3FEFF3C44AAFF5656D7FF6464
        E2FF3533AAFFEFDDD4FF312FA3FD4747D2FF4444CDFF23238BD0000000000000
        0000452F473C275EA0F995C9F8FF8AC8FEFF89C8FFFFDEF0FFFF3842AAFF3538
        B4FFC3D2E4FD422F4638FFFFFFB82C2CA5F124248FD0FFFFFFB8000000000000
        0000021C393E5AA2EAFF87C6FEFF84C4FFFF83C4FFFF83C3FFFFDCEEFFFFDDEF
        FEFF58A0EAFF02203D3A00000000FFFFFFB8FFFFFFB800000000000000000000
        0000358DDDEE7AB8F6FF7EC1FFFF7DC0FFFF7DC0FFFF7CC0FFFF7BBFFFFF7BBF
        FFFF76B7F6FF3690E2EE00000000000000000000000000000000000000000000
        00003593E7EF7ABAF9FF76BDFFFF76BCFFFF75BCFFFF74BCFFFF74BBFFFF73BB
        FFFF77B8F9FF3696EDEE00000000000000000000000000000000000000000000
        00001065BC4F65AFF9FF70B9FEFF6FB8FFFF6EB8FFFF6DB8FFFF6DB7FFFF6DB8
        FEFF63AEF9FF126CCA4B00000000000000000000000000000000000000000000
        0000000000003197FCFD84C2FEFF68B5FFFF68B5FFFF67B4FFFF67B4FFFF82C1
        FEFF3097FCFD0000000000000000000000000000000000000000000000000000
        000000000000197FE948409FFEFF82C1FEFF70B8FEFF70B8FEFF81C0FEFF3F9E
        FEFF1983EF450000000000000000000000000000000000000000000000000000
        000000000000000000001779DE331E8FFED542A0FEFE42A0FEFE1E90FED5197D
        E531000000000000000000000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
    end
    object stat_blank1: TdxBarStatic
      Caption = ' '
      Category = 0
      Hint = ' '
      Style = cx_default
      Visible = ivAlways
    end
    object dxBarStatic1: TdxBarStatic
      Caption = '10'
      Category = 0
      Hint = '10'
      Style = cx_red
      Visible = ivAlways
      BorderStyle = sbsLowered
    end
    object stat_red: TdxBarStatic
      Caption = ' - '#1079#1085#1072#1095#1077#1085#1080#1077' < 0 '
      Category = 0
      Hint = ' - '#1079#1085#1072#1095#1077#1085#1080#1077' < 0 '
      Style = cx_default
      Visible = ivAlways
    end
    object dxBarStatic2: TdxBarStatic
      Caption = '10'
      Category = 0
      Hint = '10'
      Style = cx_green
      Visible = ivAlways
      BorderStyle = sbsLowered
    end
    object stat_green: TdxBarStatic
      Caption = ' - '#1080#1085#1074#1086#1081#1089' '#1088#1072#1079#1083#1086#1078#1077#1085
      Category = 0
      Hint = ' - '#1080#1085#1074#1086#1081#1089' '#1088#1072#1079#1083#1086#1078#1077#1085
      Style = cx_default
      Visible = ivAlways
    end
    object stat_blank3: TdxBarStatic
      Caption = ' '
      Category = 0
      Hint = ' '
      Visible = ivAlways
    end
    object dxBarStatic3: TdxBarStatic
      Caption = '10'
      Category = 0
      Hint = '10'
      Style = cx_stock_legend
      Visible = ivAlways
      BorderStyle = sbsLowered
    end
    object dxBarStatic4: TdxBarStatic
      Caption = ' - '#1087#1086#1079#1080#1094#1080#1103' '#1089#1086' '#1089#1090#1086#1082#1072
      Category = 0
      Hint = ' - '#1087#1086#1079#1080#1094#1080#1103' '#1089#1086' '#1089#1090#1086#1082#1072
      Visible = ivAlways
    end
    object stat_blank2: TdxBarStatic
      Caption = ' '
      Category = 0
      Hint = ' '
      Visible = ivAlways
    end
    object dxBarStatic5: TdxBarStatic
      Caption = ' '
      Category = 0
      Hint = ' '
      Visible = ivAlways
    end
    object dxBarStatic6: TdxBarStatic
      Caption = '10'
      Category = 0
      Hint = '10'
      Style = cx_ok
      Visible = ivAlways
      BorderStyle = sbsLowered
    end
    object dxBarStatic7: TdxBarStatic
      Caption = ' - '#1088#1072#1079#1085#1077#1089#1077#1085#1085#1072#1103' '#1087#1086#1079#1080#1094#1080#1103
      Category = 0
      Hint = ' - '#1088#1072#1079#1085#1077#1089#1077#1085#1085#1072#1103' '#1087#1086#1079#1080#1094#1080#1103
      Visible = ivAlways
    end
    object dxBarStatic8: TdxBarStatic
      Caption = ' '
      Category = 0
      Hint = ' '
      Visible = ivAlways
    end
    object dxBarStatic9: TdxBarStatic
      Caption = '10'
      Category = 0
      Hint = '10'
      Style = cx_stock_legend
      Visible = ivAlways
      BorderStyle = sbsLowered
    end
    object dxBarStatic10: TdxBarStatic
      Caption = ' - '#1087#1086#1079#1080#1094#1080#1103' '#1089#1086' '#1089#1090#1086#1082#1072
      Category = 0
      Hint = ' - '#1087#1086#1079#1080#1094#1080#1103' '#1089#1086' '#1089#1090#1086#1082#1072
      Visible = ivAlways
    end
    object dxBarStatic11: TdxBarStatic
      Caption = ' '
      Category = 0
      Hint = ' '
      Visible = ivAlways
    end
    object dxBarStatic12: TdxBarStatic
      Caption = '10'
      Category = 0
      Hint = '10'
      Style = cx_red
      Visible = ivAlways
      BorderStyle = sbsLowered
    end
    object dxBarStatic13: TdxBarStatic
      Caption = ' - '#1073#1086#1083#1100#1096#1077' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086#1075#1086
      Category = 0
      Hint = ' - '#1073#1086#1083#1100#1096#1077' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086#1075#1086
      Visible = ivAlways
    end
    object tlb_prints: TdxBarSubItem
      Caption = ' '#1055#1077#1095#1072#1090#1100' '
      Category = 0
      Visible = ivAlways
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
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnKubic'
        end
        item
          Visible = True
          ItemName = 'btnKubic3'
        end
        item
          Visible = True
          ItemName = 'btnKubic2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'tlb_print_ostatok'
        end
        item
          Visible = True
          ItemName = 'tlb_print_ostatok_group'
        end
        item
          Visible = True
          ItemName = 'tlb_print_ostatok_free'
        end
        item
          Visible = True
          ItemName = 'tlb_print_ostatok_free_group'
        end
        item
          Visible = True
          ItemName = 'tlb_print_ostatok_free_group_wp'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbClientOrders'
        end
        item
          Visible = True
          ItemName = 'bbReserv'
        end>
    end
    object btnKubic: TdxBarButton
      Action = aPrintKubick
      Category = 0
    end
    object dxBarButton10: TdxBarButton
      Caption = ' '#1055#1077#1095#1072#1090#1100' '#1088#1072#1079#1085#1086#1089#1082#1080' '#1087#1086' '#1090#1086#1074#1072#1088#1091
      Category = 0
      Enabled = False
      Visible = ivAlways
      ImageIndex = 7
    end
    object dxBarButton11: TdxBarButton
      Caption = ' '#1055#1077#1095#1072#1090#1100' '#1088#1072#1079#1085#1086#1089#1082#1080' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1072#1084' '
      Category = 0
      Enabled = False
      Visible = ivAlways
      ImageIndex = 7
    end
    object tlb_serves: TdxBarButton
      Caption = ' '#1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1077#1095#1072#1090#1080
      Category = 0
      Enabled = False
      Hint = ' '#1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1077#1095#1072#1090#1080
      Visible = ivAlways
      Glyph.Data = {
        C6070000424DC607000000000000360000002800000016000000160000000100
        2000000000009007000000000000000000000000000000000000000000030000
        000A000000140000001A0000001B000000190000001900000019000000190000
        001900000019000000190000001900000019000000180000001A000000210000
        00270000001C0000000900000000000000000000000E00000017000000260000
        0031000000310000002900000025000000240000002400000024000000240000
        00240000002400000024000000240000002A0F4D53AD0F5258BB0000002B0000
        00150000000000000000000000030D0C0C1F6D6761A739393871000000390000
        002D000000210000001B00000019000000190000001900000019000000190000
        001B0000001E99D0D9DD7ADCEAF20E4B4FA30000001600000005000000000000
        0000000000014E4844637A6654FF8C7C6EF45B59587D000000290000001B0000
        000D0000000400000000000000000000000000000001041415270618193C7AAF
        B7BD90C8D1D400000009000000030000000000000000000000000909080DAB9A
        85D4A58B74FF877361FF867563FF827E79A90C0C0C3600000020000000110000
        0006000000010000000200000008093337630F474C9D00000024000000180000
        000C000000050000000100000000000000006963586EFDF3DCFFDDCBAFFFB79D
        84FFA38E7DFF603B1EFF524D48D21C1C1C4E00000024000000160002020D0208
        08140C2A2E4322A3B5D428ACBFEB12393D7A020A0A340102021F000000100000
        000400000000000000004B4A464CE2D8C6E5FFFAE7FFFFF5E3FFAF8561FF3E29
        1BFF100400FF3D372FED3839397500000028040C0C310E383C77269EADD8BAF0
        F8FBEEFBFDFE26B1C3EC0E585FB70A3C417F0000001900000009000000010000
        0000000000001E1D1B1EB2AEA1B3F1DDC1FF846D52FF564839FF3D2D22FF1E10
        05FF372C23FF555654A20708083705080732325659768FDBE6EDB0EEF7FB24B0
        C3D8198391BC0C5259A500000021000000130000000800000003000000000000
        0000000000004D49436A7C7060F1786C59FF625544FF463428FF2D1D12FF2B1D
        12FF5E5A57CC1819194A090B0B2D2F4E51752D8892CC399BAAB85CD4E6ED0E59
        60C008282B650207072B00000014000000070000000000000000000000000000
        000020201F31716A5ECC786C56FF6D604EFF503F31FF37261BFF291B10FF5A51
        4BE93336366F1213114E233D3C9533BACCE1D4F6FAFD2198A8E2156066C0103B
        3D88070D0C380000000800000000000000000000000000000000000000000909
        090E55514B8D7F7560FE756854FF5C4D3DFF423124FF29180DFF5A5148FC999B
        9BC8B2BABACCE7F1F3F6FFFFFFFFC5F2F9FC64CFDFE92B7780A3020707270000
        000B000000000000000000000000000000000000000000000000000000002E2D
        2C47746D5DDC7B705AFF685B49FF4D3C2EFF3A291DFF4D3F37FF7A7774D38A96
        98AFEBF5F7F937A2B0D424646B971C4E52A00000002300000016000000000000
        0000000000000000000000000000000000000000000000000000100F0F17605D
        54A47D725CFF766A56FF594939FF3D2C20FF2B1B10FF676C68EEABD2D9E71642
        4591257D86C62997A5E30A2C2F70020A0A300000000000000000000000000000
        00000000000000000000000000000000000000000000000000003D3C39638177
        66F1796F59FF655645FF49382BFF453E36FF4D979EFE2DB2C3F687E8F6FDE4FA
        FDFE289DACE5113C3E9400000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000001D1D1C2A6E6A5EC28176
        61FF716551FF71746BFF8AE3EFFFE1FAFDFF58E2F6FE85E6F5FC247179B20712
        1248000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000005050507514F4B80807661FA7570
        61FF61CDDAFFE1FAFDFF8FECF9FF20909DFE1B7983D409151555000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000002C2B2A43747268DD588988FF2ED1
        E7FF4CE1F6FF208893FF1F8996FE2D8891C00000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000D0D0D16466D6EB82DCFE2FF74E8F8FF29BA
        CAFF218F9BFF28A3B0DE00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000020202030909090E131819258ED8E1E8EDFCFEFFEEFCFDFF26AFBEE6040B
        0B2A000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001B1B1B1B7071
        7173B1B8B9BBE9F3F5F6FFFFFFFFEFFAFCFC97D2DADF3B5C616C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000707070720202020353737388391
        9294EFF5F6F7668D939C2B40434D1216161A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000003C3D3D3EB4B9B9BA0C0E
        0E130000000300000000}
      PaintStyle = psCaptionGlyph
      OnClick = tlb_servesClick
    end
    object tlb_print_ostatok: TdxBarButton
      Action = aPrintOstatok
      Category = 0
    end
    object dxBarStatic14: TdxBarStatic
      Caption = 'Ctrl+'#1055#1088#1086#1073#1077#1083' - '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1090#1080#1087#1072#1084
      Category = 0
      Hint = 'Ctrl+'#1055#1088#1086#1073#1077#1083' - '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1090#1080#1087#1072#1084
      Visible = ivAlways
    end
    object dxBarStatic15: TdxBarStatic
      Caption = 'Ctrl+X - '#1089#1074#1077#1088#1085#1091#1090#1100
      Category = 0
      Hint = 'Ctrl+X - '#1089#1074#1077#1088#1085#1091#1090#1100
      Visible = ivAlways
    end
    object dxBarStatic16: TdxBarStatic
      Caption = 'Ctrl+'#1055#1088#1086#1073#1077#1083' - '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1090#1080#1087#1072#1084
      Category = 0
      Hint = 'Ctrl+'#1055#1088#1086#1073#1077#1083' - '#1092#1080#1083#1100#1090#1088' '#1087#1086' '#1090#1080#1087#1072#1084
      Visible = ivAlways
    end
    object dxBarStatic17: TdxBarStatic
      Caption = 'F10 - '#1086#1095#1080#1089#1090#1080#1090#1100' '#1074#1089#1077' '#1092#1080#1083#1100#1090#1088#1099
      Category = 0
      Hint = 'F10 - '#1086#1095#1080#1089#1090#1080#1090#1100' '#1074#1089#1077' '#1092#1080#1083#1100#1090#1088#1099
      Visible = ivAlways
    end
    object dxBarStatic18: TdxBarStatic
      Caption = '|'
      Category = 0
      Hint = '|'
      Visible = ivAlways
    end
    object dxBarStatic19: TdxBarStatic
      Caption = '|'
      Category = 0
      Hint = '|'
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
      Properties.OnChange = bc_fontsizePropertiesChange
    end
    object chbRaznos: TcxBarEditItem
      Caption = #1056#1072#1079#1085#1086#1089' '#1074' '#1088#1091#1095#1085#1091#1102' '#1087#1086' '#1087#1086#1079#1080#1094#1080#1080'    '
      Category = 0
      Hint = #1056#1072#1079#1085#1086#1089' '#1074' '#1088#1091#1095#1085#1091#1102' '#1087#1086' '#1087#1086#1079#1080#1094#1080#1080'    '
      Visible = ivNever
      ShowCaption = True
      Width = 50
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.Alignment = taLeftJustify
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      InternalEditValue = True
    end
    object btnUnloadStock: TdxBarButton
      Action = aUnloadStock
      Category = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000191965141919662F1919652F1818642F1818632F1919672F1A1A
        6B331A1A6B331A1A6A331A1A6933191969331919661900000000000000000000
        0000000000002929A66A2C2CAAFF4040C0FF4040BFFF4141C0FF4242C0FF4444
        C1FF4444C2FF4545C2FF4646C2FF4444C0FF252598AD00000000000000000000
        000000000000000000002929A67D4040C1FF5C5CD7FF5D5DD3FF6262D9FF6767
        DEFF6C6CE3FF7070E8FF7373ECFF6D6DEDFF252599AE00000000000000000000
        00000000000000000000000000002929A67D4444C4FF6363DCFF6767DCFF6C6C
        E1FF7070E6FF7474EBFF7676EEFF6E6EEFFF26269AAF00000000000000000000
        00000000000000000000000000002929A77E4646C7FF6868E1FF6C6CE1FF7070
        E6FF7474EBFF7676EEFF7777F0FF6E6EEFFF26269BAF00000000000000000000
        000000000000000000002A2AAB7E4545C8FF6868E3FF6C6CE1FF7070E6FF7474
        EBFF7676EEFF7777F0FF7777F0FF6D6DEFFF26269CB000000000000000000000
        0000000000002B2BAE7E4545C9FF6868E3FF6C6CE1FF7070E6FF7474EBFF7676
        EEFF7777F0FF7777F0FF7474F0FF6A6AEEFF27279EB000000000000000000000
        00002C2CB17E4646CBFF6868E3FF6C6CE1FF7070E6FF7474EBFF7676EEFF7777
        F0FF7777F0FF7474F0FF6F6FEDFF6666EBFF27279FB100000000000000002C2C
        B47E4646CDFF6868E3FF6C6CE1FF7070E6FF7474EBFF7676EEFF7777F0FF7777
        F0FF7272F2FF5A5ADFFF6969EDFF6262E8FF2727A0B1000000001C1C710F3131
        BAED6363E5FF6C6CE2FF7070E6FF7474EBFF7676EEFF7777F0FF7777F0FF7272
        F2FF4646CAFE2929A7BB4444C7FF5F5FE9FF2828A2B200000000000000002A2A
        A8323737C0ED6868E9FF7373EBFF7676EEFF7777F0FF7777F0FF7272F2FF4747
        CCFE2A2AAA78000000002929A67D3F3FC2FF2828A4B200000000000000000000
        00002A2AA8323838C1ED6B6BEEFF7777F0FF7777F0FF7272F2FF4848CEFE2B2B
        AD780000000000000000000000002929A67D2828A5B000000000000000000000
        0000000000002A2AA8323838C1ED6C6CEFFF7272F2FF4848CFFE2B2BB0780000
        0000000000000000000000000000000000001B1B710E00000000000000000000
        000000000000000000002A2AA8323838C1ED4646CFFE2C2CB378000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000002A2AA8322D2DB66700000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object bbClientOrders: TdxBarButton
      Caption = ' '#1050#1083#1080#1077#1085#1090#1089#1082#1080#1077' '#1079#1072#1082#1072#1079#1099
      Category = 0
      Enabled = False
      Hint = ' '#1050#1083#1080#1077#1085#1090#1089#1082#1080#1077' '#1079#1072#1082#1072#1079#1099
      Visible = ivAlways
      OnClick = bbClientOrdersClick
    end
    object dxBarButton12: TdxBarButton
      Action = aPrint
      Category = 0
    end
    object btnKubic2: TdxBarButton
      Action = aPrintKubick2
      Category = 0
    end
    object dxBarSeparator1: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
    end
    object bbClientStat: TdxBarButton
      Action = aShowClientStat
      Category = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000006B14000098721515A5B53434B6D73434B6D71414
        A4B4000098700019551300000000000000000000000000000000000000000000
        0000000000000000986F4749C5F29DA2FFFFC0C6FFFFBFC2FFFFC2C5FFFFCACB
        FFFF8EA2DAFF199231ED0185165F000000000000000000000000000000000000
        000005059D988086EFFFAEB8FFFFAEB8FFFFB3BBFFFFB6BDFFFFB9BFFFFFBEC1
        FFFF5AAC7EFFB0FFC2FF7CDC8EFF058819880000000000000000000000000000
        986B7A83EEFFA1B0FFFFA4B2FFFFA8B4FFFFABB6FFFFAEB8FFFFB2BBFFFFA8BF
        F7FF5EC671FFAEFFC4FFB0FFC6FF7BDC8DFF0185165F00000000000068113E42
        C2F19BAEFFFF9AACFFFF9DAEFFFFA1B0FFFFA4B2FFFFA8B4FFFFACB7FFFF56A8
        7FFFA4FFB8FFAAFFC0FFABFFC2FFB2FFC7FF3CAE4FEB015F0F0C0000966B818F
        FEFF92A8FFFF94A9FFFF98ABFFFF9AACFFFF9DAEFFFFA1AFFFFF9AB7F6FF59C4
        6EFFA4FFBDFFA5FFBDFFA8FFBFFFAAFFC0FF8EEEA1FF018516630A0A9FACA0B0
        FFFF9CB0FFFF96ABFFFF93A9FFFF94A9FFFF98ABFFFF9BADFFFF50A67DFF9DFF
        B4FFA0FFB9FFA2FFBBFFA3FFBCFFA5FFBEFFB0FFC6FF0C8D20A66B2055CA7C61
        AAFF6856AFFF6058BCFF5555C5FF4C50CBFF5960D9FF7875C6FF69BB6CFF9BFF
        B5FF9CFFB6FF9DFFB7FFA0FFB9FFA2FFBBFFA8FFBFFF279D3BC8B83A27C9FFC9
        A2FFFFC8A0FFFFCBA4FFFFD1ACFFFFD3B5FFFCC1B6FFE8A8A2FFBC573EFFA9E7
        A2FF99FFB4FF9AFFB5FF9CFFB6FF9FFFB7FFA4FFBDFF279D3BC8AA1F0CA7FFCA
        A4FFFFC69CFFFFC89FFFFFCAA2FFFFCCA5FFFFCFA9FFFFD1ACFFFFCAAAFFC459
        42FFABD294FF98FFB3FF99FFB4FF9BFFB5FFA8FFBEFF0B8D20A6A0140163FDA0
        80FFFFC498FFFFC69BFFFFC79DFFFFC9A1FFFFCBA4FFFFCEA8FFFFD0ABFFFFD0
        ADFFCE634CFFADB883FF97FFB3FF98FFB3FF81EB97FF018616626D0D010DC54D
        38EBFFC59AFFFFC297FFFFC59AFFFFC79DFFFFC9A0FFFFCBA3FFFFCEA6FFFFD0
        AAFFFFD2AFFFDA755CFFAD9B6DFF9DFFB7FF38AC4CEA0161100C00000000A214
        015FEB886DFFFFC196FFFFC297FFFFC499FFFFC69CFFFFC8A0FFFFCAA2FFFFCC
        A5FFFFCFA9FFFFD2AEFFE88C72FF92683DFF0584165D00000000000000000000
        0000A6170487EC886CFFFFC499FFFFC196FFFFC498FFFFC69BFFFFC79FFFFFC9
        A1FFFFCBA4FFFFD1ACFFEB8F77FFA41804890000000000000000000000000000
        000000000000A314015FC54D38EBFD9F7FFFFFC8A0FFFFC69CFFFFC89FFFFFCC
        A8FFFDA487FFC54E3AEAA414025F000000000000000000000000000000000000
        00000000000000000000740E010CA3140163AA1E0BA6B83926C9B83927C9AA1E
        0CA6A3140163780E010C00000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
    end
    object btnKubic3: TdxBarButton
      Action = aPrintKubick3
      Category = 0
    end
    object bbReserv: TdxBarButton
      Caption = ' '#1057#1086#1079#1076#1072#1090#1100' '#1073#1088#1086#1085#1080' '#1085#1072' '#1082#1083#1080#1077#1085#1090#1086#1074
      Category = 0
      Enabled = False
      Hint = ' '#1057#1086#1079#1076#1072#1090#1100' '#1073#1088#1086#1085#1080' '#1085#1072' '#1082#1083#1080#1077#1085#1090#1086#1074
      Visible = ivAlways
      OnClick = bbReservClick
    end
    object bbCheckErrors: TdxBarButton
      Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1086#1096#1080#1073#1082#1080' '#1079#1072#1082#1072#1079#1072
      Category = 0
      Enabled = False
      Hint = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1086#1096#1080#1073#1082#1080' '#1079#1072#1082#1072#1079#1072
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000FFFFFF886CBEF7FF079EF7FF079EF7FF079EF7FF079E
        F7FF079EF7FF079EF7FF079EF7FF079EF7FF079EF7FF74B3F3FF000000000000
        00000000000000000000FFFFFF88079EF7FF49E7FDFF3BD8FDFF34CEFCFF30C7
        F7FF228AABFF30C5F6FF32CBFCFF32CBFDFF3AD1FCFF079EF7FF878383799B98
        97F09F9C9BF89D9A9AF8D2D1D1FC38B4F9FF49E5FCFF47EEFEFF3EE0FDFF2BAD
        D0FF02090CFF25A1CCFF2EC8FCFF2EC9FDFF37C4F9FF38B4F9FF9D9999EEF7EE
        EBFFF4E8E3FFF4E7E2FFF3E6E1FF95D2F4FF079EF7FF53FDFEFF4DF6FEFF42DF
        F2FF134856FF31CAF7FF2FC9FCFF32CBFCFF079EF7FF7EBDE2FCA3A09FF6F5EA
        E6FFF2E1DBFFF1E0D9FFF0DED8FFF8EFECFF38B4F9FF4DEEFDFF51FEFEFF48E3
        E5FF000000FF3CD6EDFF38D7FDFF3BCDFAFF38B4F9FFCECDCDFDA4A1A0F6F6EC
        E8FFF3E4DEFFF2E2DCFFF1E1DAFFF1DFD9FF94D0F2FF079EF7FF4BF7FEFF42D7
        D9FF000000FF46DEE3FF4BF0FEFF079EF7FF95D1F3FF949292FAA5A2A1F6F7EE
        EAFFF4E6E1FFF3E4DFFFF2E3DDFFF2E1DCFFF8F1EEFF38B4F9FF44E4FDFF35C1
        CDFF000000FF42D6D7FF4FEAFCFF38B4F9FFF9F1EFFF959292FAA6A3A2F6F7EF
        ECFFF5E8E4FFF4E7E2FFF4E5E0FFF3E4DEFFF2E2DDFF95D1F3FF079EF7FF36D0
        E6FF1F7B85FF44E1EBFF079EF7FF94CFF1FFF2E3DDFF969393FAA7A3A3F6F8F1
        EEFFF6EBE6FFF5E9E5FFF5E8E3FFF4E6E1FFF3E5DFFFF9F2F0FF38B4F9FF38D8
        FDFF32E0FFFF3BD8FCFF38B4F9FFF8EEEBFFF2E4DFFF979494FAA7A4A4F6F9F2
        F0FFF7EDE9FFF6EBE7FFF6EAE6FFF5E9E4FFF4E7E2FFF4E6E1FF95D1F4FF079E
        F7FF42E2FEFF079EF7FF94D0F2FFF0DDD6FFF3E5E0FF989595FAA8A5A4F6F9F3
        F1FFF7EEEBFFF7EDEAFFF6ECE8FFF6EBE7FFF5E9E5FFF5E8E3FFFAF4F1FF7AC9
        F5FF079EF7FF7CC9F6FFF8F1EEFFF1DFD9FFF4E7E2FF999696FAA69997F5EADA
        D6FFEAD9D5FFEAD9D5FFEAD8D4FFE9D8D4FFE9D8D3FFE9D7D3FFE8D7D2FFF4EC
        EAFFF4ECEAFFF4EBEAFFE8D5D0FFE7D4CFFFE8D5D1FF9A8D8BFAB95D49F6C86C
        56FFC86C57FFC96C58FFC96C58FFC86C58FFC86B57FFC76A57FFC56956FFC468
        55FFC26754FFC16553FFC06351FFBE6250FFBD604FFFB75B48FCC0634FF8D176
        52FFD27855FFD57958FFD67A5BFFD5795BFFD3775AFFD07458FFCD7055FFC96B
        52FFC2664EFFBD6049FFB85A44FFB2533FFFAF503DFFBD604EFCBB5E4AE6D177
        55FFD17653FFD47A58FFD67B5CFFD77B5EFFD67B5EFFD4795DFFD2765BFFCE72
        58FFCA6D54FFC46850FFBF624CFFBA5C47FFBA5D4BFFBA5D4AEAB254415BBB5E
        4AE6BF634FF5C0634FF5C06450F5C06450F5C06450F5C06450F5C06350F5C063
        50F5BF6350F5BF624FF5BE614FF5BE614EF5BA5D4AE6B556425D}
      OnClick = bbCheckErrorsClick
    end
    object dxBarStatic20: TdxBarStatic
      Category = 0
      Style = stAlterRaznos
      Visible = ivAlways
      BorderStyle = sbsBump
      Width = 30
    end
    object dxBarStatic21: TdxBarStatic
      Caption = ' - '#1088#1072#1079#1085#1086#1089' '#1085#1077' '#1087#1086' '#1090#1086#1074#1072#1088#1091
      Category = 0
      Hint = ' - '#1088#1072#1079#1085#1086#1089' '#1085#1077' '#1087#1086' '#1090#1086#1074#1072#1088#1091
      Visible = ivAlways
    end
    object tlb_print_ostatok_free: TdxBarButton
      Action = aPrintSell
      Category = 0
    end
    object tlb_print_ostatok_free_group: TdxBarButton
      Action = aPrintSellByGroup
      Category = 0
    end
    object bbSettings: TdxBarSubItem
      Caption = ' '#1053#1072#1089#1090#1088#1086#1081#1082#1080' '
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'chbRaznos'
        end
        item
          Visible = True
          ItemName = 'chbIsPack'
        end
        item
          Visible = True
          ItemName = 'chbPrintPack'
        end
        item
          Visible = True
          ItemName = 'chbPrintZero'
        end>
    end
    object chbIsPack: TcxBarEditItem
      Caption = #1059#1095#1080#1090#1099#1074#1072#1090#1100' '#1082#1088#1072#1090#1085#1086#1089#1090#1100' '#1074' '#1088#1072#1079#1085#1086#1089#1077
      Category = 0
      Hint = #1059#1095#1080#1090#1099#1074#1072#1090#1100' '#1082#1088#1072#1090#1085#1086#1089#1090#1100' '#1074' '#1088#1072#1079#1085#1086#1089#1077
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnChange = chbIsPackPropertiesChange
    end
    object dxBarStatic22: TdxBarStatic
      Caption = 'Ctrl+N - '#1087#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102
      Category = 0
      Hint = 'Ctrl+N - '#1087#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102
      Visible = ivAlways
    end
    object dxBarStatic23: TdxBarStatic
      Category = 0
      Style = DM.stViewColor
      Visible = ivAlways
      BorderStyle = sbsBump
      Width = 30
    end
    object dxBarStatic24: TdxBarStatic
      Caption = ' - '#1085#1077#1090' '#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080
      Category = 0
      Hint = ' - '#1085#1077#1090' '#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080
      Visible = ivAlways
    end
    object tlb_print_ostatok_group: TdxBarButton
      Action = aPrintOstatokByGroup
      Category = 0
    end
    object mnLoadStockByGroup: TdxBarSubItem
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1089#1090#1086#1082' '#1087#1086' '#1075#1088#1091#1087#1087#1072#1084
      Category = 0
      Enabled = False
      Visible = ivAlways
      ImageIndex = 3
      ItemLinks = <>
    end
    object chbPrintPack: TcxBarEditItem
      Caption = #1042' '#1087#1077#1095#1072#1090#1100' '#1074#1082#1083#1102#1095#1080#1090#1100' '#1091#1087#1072#1082#1086#1074#1072#1085#1085#1099#1093
      Category = 0
      Hint = #1042' '#1087#1077#1095#1072#1090#1100' '#1074#1082#1083#1102#1095#1080#1090#1100' '#1091#1087#1072#1082#1086#1074#1072#1085#1085#1099#1093
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnChange = chbIsPackPropertiesChange
    end
    object chbPrintZero: TcxBarEditItem
      Caption = #1042' '#1080#1085#1074#1086#1081#1089#1072#1093' '#1082#1083#1080#1077#1085#1090#1086#1074' '#1087#1077#1095#1072#1090#1072#1090#1100' 0'
      Category = 0
      Hint = #1042' '#1080#1085#1074#1086#1081#1089#1072#1093' '#1082#1083#1080#1077#1085#1090#1086#1074' '#1087#1077#1095#1072#1090#1072#1090#1100' 0'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.DisplayChecked = #1044#1072
      Properties.DisplayUnchecked = #1053#1077#1090
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      InternalEditValue = 'True'
    end
    object mnLoadOrder: TdxBarButton
      Action = aLoadOrder
      Category = 0
    end
    object mnUnloadOrder: TdxBarSubItem
      Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100' '#1079#1072#1082#1072#1079
      Category = 0
      Enabled = False
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end>
    end
    object dxBarButton9: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      OnClick = UnloadOrderClick
    end
    object tlb_print_ostatok_free_group_wp: TdxBarButton
      Action = aPrintSellByGroupWP
      Category = 0
    end
    object mnCheckInvoices: TdxBarSubItem
      Caption = #1055#1088#1086#1074#1077#1088#1082#1072' '#1086#1090#1089#1091#1090#1089#1090#1074#1080#1103' '#1076#1072#1085#1085#1099#1093' '#1074' '#1080#1085#1074#1086#1081#1089#1072#1093' '
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton13'
        end>
    end
    object dxBarButton13: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      OnClick = mnCheckInvoice
    end
  end
  object ppStok: TPopupMenu
    Left = 168
    Top = 276
    object mnOrder: TMenuItem
      Caption = #1053#1072#1081#1090#1080' '#1079#1072#1082#1072#1079
      ShortCut = 220
      OnClick = mnOrderClick
    end
    object mnOrderRaznos: TMenuItem
      Action = aQuickRaznos
    end
    object mnShowRaznos: TMenuItem
      Action = aShowRaznos
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object F31: TMenuItem
      Action = ADistOnePos
    end
    object N6: TMenuItem
      Action = aDistOnePosNew
    end
    object mnReplaceOrder: TMenuItem
      Action = aReplaceOrder
    end
    object mnAddToClient: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1080#1079' '#1080#1085#1074#1086#1081#1089#1072' '#1082#1083#1080#1077#1085#1090#1091
      Enabled = False
      OnClick = mnAddToClientClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Caption = #1056#1072#1079#1074#1077#1088#1085#1091#1090#1100' '#1089#1087#1080#1089#1082#1080
      ShortCut = 16453
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1057#1074#1077#1088#1085#1091#1090#1100' '#1089#1087#1080#1089#1082#1080
      ShortCut = 16472
      OnClick = N3Click
    end
    object N14: TMenuItem
      Action = aClearFilter
    end
    object N12: TMenuItem
      Caption = '-'
    end
    object N10: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1082#1086#1083#1086#1085#1086#1082
      object mn_left_saldo: TMenuItem
        Caption = #1042#1089#1077#1075#1086' / '#1086#1089#1090#1072#1090#1086#1082
        Checked = True
        OnClick = mn_left_saldoClick
      end
      object mn_left_total: TMenuItem
        Caption = #1042#1089#1077#1075#1086
        Checked = True
        OnClick = mn_left_totalClick
      end
      object mn_left_ostatok: TMenuItem
        Caption = #1054#1089#1090#1072#1090#1086#1082
        Checked = True
        OnClick = mn_left_ostatokClick
      end
      object mn_left_stok: TMenuItem
        Caption = #1057#1090#1086#1082
        Checked = True
        OnClick = mn_left_stokClick
      end
      object mn_left_source: TMenuItem
        Caption = #1043#1076#1077
        Checked = True
        OnClick = mn_left_sourceClick
      end
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cx_default: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
    end
    object cx_red: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 8242687
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
    end
    object cx_green: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 12320699
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
    end
    object cx_stock: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsItalic]
      TextColor = clNavy
    end
    object cx_stock_legend: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsItalic]
      TextColor = clNavy
    end
    object cx_ok: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 7915396
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
    end
    object cx_editdata: TcxStyle
      AssignedValues = [svColor]
      Color = 14934497
    end
    object cx_selected: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14934497
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object cxBold: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object stAlterRaznos: TcxStyle
      AssignedValues = [svColor]
      Color = 12320767
    end
  end
  object ppGoods: TPopupMenu
    Left = 360
    Top = 276
    object N5: TMenuItem
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1085#1077#1088#1072#1079#1085#1077#1089#1077#1085#1085#1099#1077' '
      Default = True
      ShortCut = 119
      OnClick = N5Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object MenuItem1: TMenuItem
      Action = aDelGoods
      Caption = #1059#1073#1088#1072#1090#1100' '#1090#1086#1074#1072#1088'  (F4)'
    end
    object N9: TMenuItem
      Caption = #1053#1072#1081#1090#1080' '#1090#1086#1074#1072#1088
      ShortCut = 117
      OnClick = N9Click
    end
    object MenuItem3: TMenuItem
      Caption = '-'
    end
    object MenuItem4: TMenuItem
      Caption = #1056#1072#1079#1074#1077#1088#1085#1091#1090#1100' '#1089#1087#1080#1089#1082#1080
      ShortCut = 16453
      OnClick = MenuItem4Click
    end
    object MenuItem5: TMenuItem
      Caption = #1057#1074#1077#1088#1085#1091#1090#1100' '#1089#1087#1080#1089#1082#1080
      ShortCut = 16472
      OnClick = MenuItem5Click
    end
    object MenuItem2: TMenuItem
      Action = aClearFilter
    end
    object N13: TMenuItem
      Caption = '-'
    end
    object N15: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1082#1086#1083#1086#1085#1086#1082
      object mn_right_stock: TMenuItem
        Caption = #1057#1090#1086#1082
        Checked = True
        OnClick = mn_right_stockClick
      end
      object mn_right_source: TMenuItem
        Caption = #1054#1090#1082#1091#1076#1072
        Checked = True
        OnClick = mn_right_sourceClick
      end
    end
  end
  object frxCDS_GOODS: TfrxDBDataset
    UserName = 'frxCDS_GOODS'
    CloseDataSource = False
    DataSet = DM.SelQ
    BCDToCurrency = False
    Left = 558
    Top = 304
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 580
    Top = 40
  end
  object ppGoodsInfo: TPopupMenu
    Left = 360
    Top = 558
    object ppgi_remove: TMenuItem
      Action = aDelGoodsInfo
      Caption = #1059#1073#1088#1072#1090#1100' '#1090#1086#1074#1072#1088'  (F4)'
    end
    object N7: TMenuItem
      Action = aDelOrder
      Visible = False
    end
    object ppgi_add_client_order: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1083#1080#1077#1085#1090#1089#1082#1091#1102' '#1087#1086#1079#1080#1094#1080#1102
      OnClick = ppgi_add_client_orderClick
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object ppgi_clear: TMenuItem
      Action = aClearFilter
    end
    object N16: TMenuItem
      Caption = '-'
    end
    object N17: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1082#1086#1083#1086#1085#1086#1082
      object mn_right_Order: TMenuItem
        Caption = #1047#1072#1082#1072#1079
        OnClick = mn_right_OrderClick
      end
    end
  end
  object frxCDS_GOODS2: TfrxDBDataset
    UserName = 'frxCDS_GOODS2'
    CloseDataSource = False
    DataSet = DM.SelQ2
    BCDToCurrency = False
    Left = 558
    Top = 336
  end
  object frxOstatok: TfrxDBDataset
    UserName = 'frxOstatok'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PREP_DIST_ID=PREP_DIST_ID'
      'DIST_IND_ID=DIST_IND_ID'
      'N_ID=N_ID'
      'INVOICE_DATA_ID=INVOICE_DATA_ID'
      'ID_STORE_MAIN=ID_STORE_MAIN'
      'TOTAL_QUANTITY=TOTAL_QUANTITY'
      'LEFT_QUANTITY=LEFT_QUANTITY'
      'COMPILED_NAME=COMPILED_NAME'
      'COMPILED_NAME_OTDEL=COMPILED_NAME_OTDEL'
      'FT_ID=FT_ID'
      'FST_ID=FST_ID'
      'WHERE_FLOWER_IS=WHERE_FLOWER_IS'
      'NBUTTON=NBUTTON'
      'HOL_SUB_TYPE=HOL_SUB_TYPE'
      'F_NAME_RU=F_NAME_RU'
      'STOCK=STOCK'
      'ALLORDER=ALLORDER'
      'HOL_TYPE=HOL_TYPE'
      'F_TYPE=F_TYPE'
      'ORDERID=ORDERID'
      'SALDO=SALDO'
      'ITOG_PRICE=ITOG_PRICE')
    DataSet = DM.SelPrepDist
    BCDToCurrency = False
    Left = 528
    Top = 366
  end
  object frxClients: TfrxDBDataset
    UserName = 'frxClients'
    CloseDataSource = False
    DataSet = DM.SelQ
    BCDToCurrency = False
    Left = 608
    Top = 38
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
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 640
    Top = 40
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
    Left = 672
    Top = 40
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 704
    Top = 40
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
    Left = 736
    Top = 40
  end
  object Q_ORDERS_ORDERS: TOraQuery
    SQLUpdate.Strings = (
      'begin '
      'if :pack_ <> :OLD_pack_ then'
      '  PACK_ORDERS.change_pack(:ID_ORDERS_CLIENTS, :OLD_pack_); '
      'else'
      
        '  update ORDERS_CLIENTS set alpha = :alpha where ID_ORDERS_CLIEN' +
        'TS = :ID_ORDERS_CLIENTS;'
      'end if;'
      ''
      'end;')
    SQLRefresh.Strings = (
      'select a.pack_, '
      '  a.id_orders,'
      '  a.N_TRUCK,'
      '  a.CAPACITY,'
      '  a.D_DATE,'
      '  a.alpha'
      'from ORDERS_CLIENTS a'
      
        'where a.ID_ORDERS_CLIENTS = :OLD_ID_ORDERS_CLIENTS and exists (s' +
        'elect 1 from ORDERS_CLIENTS where ID_ORDERS_CLIENTS = :ID_ORDERS' +
        '_CLIENTS)')
    SQL.Strings = (
      'SELECT '
      'OO.ID_ORDERS_CLIENTS, '
      'oo.id_orders,'
      'oo.id_clients,'
      'OO.N_TRUCK,'
      'OO.CAPACITY,'
      'OO.D_DATE,'
      'oo.alpha,'
      'C.NICK, '
      'C.PHONE, '
      'C.FIO'
      ', oo.in_file'
      ', oo.miss_code'
      ', case when oo.miss_code is null then 0 else 1 end isMissCode '
      'FROM '
      'ORDERS_CLIENTS OO, '
      'CLIENTS C, '
      'CLIENTS D '
      'WHERE '
      'OO.ID_ORDERS = :ID_ORDERS '
      'and oo.active = 1'
      'AND OO.ID_CLIENTS = C.ID_CLIENTS '
      'and oo.id_user = D.ID_CLIENTS '
      'ORDER BY C.NICK, oo.alpha nulls first')
    MasterFields = 'ID_ORDERS'
    FetchAll = True
    RefreshOptions = [roAfterUpdate]
    FilterOptions = [foCaseInsensitive]
    Left = 768
    Top = 40
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_ORDERS'
        ParamType = ptInput
      end>
    object Q_ORDERS_ORDERSID_ORDERS_CLIENTS: TFloatField
      FieldName = 'ID_ORDERS_CLIENTS'
      Required = True
    end
    object Q_ORDERS_ORDERSN_TRUCK: TIntegerField
      FieldName = 'N_TRUCK'
      Required = True
    end
    object Q_ORDERS_ORDERSCAPACITY: TFloatField
      FieldName = 'CAPACITY'
      Required = True
    end
    object Q_ORDERS_ORDERSD_DATE: TDateTimeField
      FieldName = 'D_DATE'
      Required = True
    end
    object Q_ORDERS_ORDERSNICK: TStringField
      FieldName = 'NICK'
      Required = True
    end
    object Q_ORDERS_ORDERSPHONE: TStringField
      FieldName = 'PHONE'
      Size = 1024
    end
    object Q_ORDERS_ORDERSFIO: TStringField
      FieldName = 'FIO'
      Required = True
      Size = 255
    end
    object Q_ORDERS_ORDERSID_ORDERS: TFloatField
      FieldName = 'ID_ORDERS'
      Required = True
    end
    object Q_ORDERS_ORDERSID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object Q_ORDERS_ORDERSALPHA: TStringField
      FieldName = 'ALPHA'
      Size = 2
    end
    object Q_ORDERS_ORDERSIN_FILE: TStringField
      FieldName = 'IN_FILE'
      Size = 50
    end
    object Q_ORDERS_ORDERSMISS_CODE: TStringField
      FieldName = 'MISS_CODE'
      Size = 4000
    end
    object Q_ORDERS_ORDERSISMISSCODE: TFloatField
      FieldName = 'ISMISSCODE'
    end
  end
  object cdsNom: TOraQuery
    SQL.Strings = (
      
        'SELECT n_id FROM nomenclature_mat_view where nvl(bar_code,code) ' +
        '= :p_code and ID_DEPARTMENTS = :p_dep')
    Left = 800
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_code'
      end
      item
        DataType = ftUnknown
        Name = 'p_dep'
      end>
    object cdsNomN_ID: TFloatField
      FieldName = 'N_ID'
      Required = True
    end
  end
  object Q_SQL_SPIS: TOraQuery
    SQL.Strings = (
      'SELECT OLMER.PARAMS_SET_ID.nextval from DUAL WHERE ID:=ID')
    FetchAll = True
    Left = 832
    Top = 40
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 632
    Top = 240
  end
  object cdsClientsStatItem: TOraQuery
    Session = DM.StarSess
    SQL.Strings = (
      'begin'
      '  DISTRIBUTION_PKG.CLIENT_STAT_ITEM(:vDistIndId, :CURSOR_);'
      'end;')
    FetchAll = True
    Left = 424
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vDistIndId'
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object cdsClientsStatItemN_ID: TFloatField
      FieldName = 'N_ID'
    end
    object cdsClientsStatItemQUANTITY: TFloatField
      FieldName = 'QUANTITY'
    end
    object cdsClientsStatItemZATIRKA: TFloatField
      FieldName = 'ZATIRKA'
    end
    object cdsClientsStatItemID_ORDERS_LIST: TFloatField
      FieldName = 'ID_ORDERS_LIST'
    end
    object cdsClientsStatItemCOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 551
    end
    object cdsClientsStatItemCOLOUR: TStringField
      FieldName = 'COLOUR'
      Size = 50
    end
    object cdsClientsStatItemIS_STOCK: TFloatField
      FieldName = 'IS_STOCK'
    end
    object cdsClientsStatItemDQ: TFloatField
      FieldName = 'DQ'
    end
    object cdsClientsStatItemDQ_CHECK: TFloatField
      FieldName = 'DQ_CHECK'
    end
    object cdsClientsStatItemDIST_ID: TFloatField
      FieldName = 'DIST_ID'
    end
    object cdsClientsStatItemCOMPILED_NAME_OTDEL_RAZN: TStringField
      FieldName = 'COMPILED_NAME_OTDEL_RAZN'
      Size = 551
    end
    object cdsClientsStatItemCOLOUR_RAZN: TStringField
      FieldName = 'COLOUR_RAZN'
      Size = 50
    end
    object cdsClientsStatItemNICK: TStringField
      FieldName = 'NICK'
      Size = 30
    end
    object cdsClientsStatItemID_CLIENTS: TFloatField
      FieldName = 'ID_CLIENTS'
    end
    object cdsClientsStatItemIS_PACK: TStringField
      FieldName = 'IS_PACK'
      Size = 19
    end
    object cdsClientsStatItemWHERE_FLOWER_IS: TStringField
      FieldName = 'WHERE_FLOWER_IS'
      Size = 6
    end
  end
  object fr_order_list: TfrxDBDataset
    UserName = 'FR_order_list'
    CloseDataSource = False
    FieldAliases.Strings = (
      'N_ID=N_ID'
      'QUANTITY=QUANTITY'
      'ZATIRKA=ZATIRKA'
      'ID_ORDERS_LIST=ID_ORDERS_LIST'
      'COMPILED_NAME_OTDEL=COMPILED_NAME_OTDEL'
      'COLOUR=COLOUR'
      'IS_STOCK=IS_STOCK'
      'DQ=DQ'
      'DQ_CHECK=DQ_CHECK'
      'DIST_ID=DIST_ID'
      'COMPILED_NAME_OTDEL_RAZN=COMPILED_NAME_OTDEL_RAZN'
      'COLOUR_RAZN=COLOUR_RAZN'
      'NICK=NICK'
      'ID_CLIENTS=ID_CLIENTS'
      'IS_PACK=IS_PACK'
      'WHERE_FLOWER_IS=WHERE_FLOWER_IS')
    DataSet = cdsClientsStatItem
    BCDToCurrency = False
    Left = 456
    Top = 57
  end
end
