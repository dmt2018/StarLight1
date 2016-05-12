object storeViewForm: TstoreViewForm
  Left = 411
  Top = 228
  Caption = #1057#1090#1072#1088#1083#1072#1081#1090' - '#1055#1088#1086#1089#1084#1086#1090#1088' '#1086#1089#1090#1072#1090#1082#1086#1074' '#1085#1072' '#1089#1082#1083#1072#1076#1077
  ClientHeight = 519
  ClientWidth = 909
  Color = clBtnFace
  Constraints.MinHeight = 550
  Constraints.MinWidth = 700
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel11: TPanel
    Left = 0
    Top = 45
    Width = 909
    Height = 38
    Align = alTop
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object Store_PC: TPageControl
      Left = 0
      Top = 0
      Width = 909
      Height = 38
      Cursor = crHandPoint
      ActivePage = Store_TS_1
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      Style = tsFlatButtons
      TabOrder = 0
      OnChange = Store_PCChange
      object Store_TS_1: TTabSheet
        Caption = #1054#1089#1085#1086#1074#1085#1086#1081' '#1089#1082#1083#1072#1076
        ImageIndex = 2
        object Bevel10: TBevel
          Left = 0
          Top = 2
          Width = 901
          Height = 2
          Align = alBottom
          Shape = bsTopLine
          ExplicitWidth = 865
        end
      end
      object Store_TS_2: TTabSheet
        Caption = #1059#1094#1077#1085#1082#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        object Bevel9: TBevel
          Left = 0
          Top = 2
          Width = 901
          Height = 2
          Align = alBottom
          Shape = bsTopLine
          ExplicitWidth = 865
        end
      end
      object Store_TS_3: TTabSheet
        Caption = ' '#1054#1073#1097#1080#1081' '#1089#1082#1083#1072#1076' '
        ImageIndex = 2
        object Bevel1: TBevel
          Left = 0
          Top = 2
          Width = 901
          Height = 2
          Align = alBottom
          Shape = bsTopLine
          ExplicitWidth = 865
        end
      end
    end
  end
  object Panel12: TPanel
    Left = 0
    Top = 83
    Width = 909
    Height = 43
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    object CoolBar2: TCoolBar
      Left = 0
      Top = 0
      Width = 909
      Height = 43
      Align = alClient
      AutoSize = True
      BandBorderStyle = bsNone
      Bands = <
        item
          Control = ToolBar2
          ImageIndex = -1
          MinHeight = 39
          Width = 899
        end>
      BorderWidth = 1
      Color = clBtnFace
      EdgeBorders = [ebLeft, ebRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentColor = False
      ParentFont = False
      object ToolBar2: TToolBar
        Left = 9
        Top = 0
        Width = 892
        Height = 39
        Align = alClient
        AutoSize = True
        ButtonHeight = 39
        ButtonWidth = 111
        Caption = 'ToolBar1'
        Color = clBtnFace
        EdgeInner = esNone
        EdgeOuter = esNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        Images = DM.ImageList
        Indent = 2
        ParentColor = False
        ParentFont = False
        ShowCaptions = True
        TabOrder = 0
        object ToolButton15: TToolButton
          Left = 2
          Top = 0
          Caption = #1055#1077#1095#1072#1090#1100
          ImageIndex = 2
          OnClick = ToolButton15Click
        end
        object ToolButton16: TToolButton
          Left = 113
          Top = 0
          Width = 8
          Caption = 'ToolButton4'
          ImageIndex = 2
          Style = tbsSeparator
        end
        object ToolButton1: TToolButton
          Left = 121
          Top = 0
          Caption = ' '#1069#1082#1089#1087#1086#1088#1090' '#1074' Excel '
          ImageIndex = 10
          OnClick = ToolButton1Click
        end
        object ToolButton2: TToolButton
          Left = 232
          Top = 0
          Width = 8
          Caption = 'ToolButton2'
          ImageIndex = 3
          Style = tbsSeparator
        end
        object ToolButton3: TToolButton
          Left = 240
          Top = 0
          Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1074#1089#1077
          ImageIndex = 9
          OnClick = ToolButton3Click
        end
        object ToolButton4: TToolButton
          Left = 351
          Top = 0
          Width = 8
          Caption = 'ToolButton4'
          ImageIndex = 10
          Style = tbsSeparator
        end
        object cb_pics: TCheckBox
          Left = 359
          Top = 0
          Width = 167
          Height = 39
          Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103
          TabOrder = 0
          OnClick = cb_picsClick
        end
        object cb_gtd: TCheckBox
          Left = 526
          Top = 0
          Width = 167
          Height = 39
          Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1090#1077#1082#1091#1097#1080#1077' '#1043#1058#1044
          TabOrder = 1
          OnClick = cb_gtdClick
        end
      end
    end
  end
  object Panel13: TPanel
    Left = 0
    Top = 40
    Width = 909
    Height = 5
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 3
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 498
    Width = 909
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
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 909
    Height = 40
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNone
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object Label1: TLabel
      Left = 10
      Top = 10
      Width = 217
      Height = 18
      Align = alCustom
      Alignment = taCenter
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1086#1089#1090#1072#1090#1082#1086#1074' '#1085#1072' '#1089#1082#1083#1072#1076#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel3: TPanel
      Left = 602
      Top = 2
      Width = 305
      Height = 36
      Align = alRight
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -13
      Font.Name = 'arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Close_BitBtn: TcxButton
        Left = 176
        Top = 2
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
        ParentFont = False
        TabOrder = 0
        OnClick = Close_BitBtnClick
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
  object grid_sview: TcxGrid
    Left = 0
    Top = 126
    Width = 909
    Height = 329
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
    object grid_sview_v: TcxGridDBTableView
      PopupMenu = PopupMenu1
      OnDblClick = grid_sview_vDblClick
      OnKeyDown = grid_sview_vKeyDown
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Position = fpTop
      OnCustomDrawCell = grid_sview_vCustomDrawCell
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = STORE_VIEW_DS
      DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription]
      DataController.Filter.OnChanged = grid_sview_vDataControllerFilterChanged
      DataController.Filter.Active = True
      DataController.Filter.AutoDataSetFilter = True
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText, dcoImmediatePost]
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
          Format = '0'
          Kind = skSum
          Column = np_QUANTITY
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = np_QUANTITY_PRICE
        end
        item
          Format = '0'
          Kind = skSum
          Column = np_IS_PHOTO
        end
        item
          Format = '0'
          Kind = skCount
          Column = np_H_CODE
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1092#1080#1083#1100#1090#1088#1086#1074
      FilterRow.Visible = True
      OptionsBehavior.CellHints = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.HeaderEndEllipsis = True
      object grid_sview_vBRIEF: TcxGridDBColumn
        Caption = #1054#1092#1080#1089
        DataBinding.FieldName = 'BRIEF'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 60
        Options.Editing = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 60
      end
      object np_pics: TcxGridDBColumn
        Caption = #1048#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
        DataBinding.ValueType = 'Variant'
        PropertiesClassName = 'TcxImageProperties'
        Properties.GraphicClassName = 'TJPEGImage'
        Properties.ImmediatePost = True
        Properties.PopupMenuLayout.MenuItems = []
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
      object np_CODE: TcxGridDBColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'CODE'
        FooterAlignmentHorz = taCenter
        MinWidth = 90
        Options.Editing = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.HorzSizing = False
        Options.Moving = False
        Styles.Content = st_small
        Width = 90
      end
      object np_OUR_CODE: TcxGridDBColumn
        Caption = #1042#1085#1091#1090#1088'. '#1082#1086#1076
        DataBinding.FieldName = 'OUR_CODE'
        FooterAlignmentHorz = taCenter
        MinWidth = 90
        Options.Editing = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.HorzSizing = False
        Options.Moving = False
        Styles.Content = st_small
        Width = 90
      end
      object np_H_CODE: TcxGridDBColumn
        AlternateCaption = #1040#1088#1090#1080#1082#1091#1083
        Caption = #1040#1088#1090#1080#1082#1091#1083
        DataBinding.FieldName = 'H_CODE'
        FooterAlignmentHorz = taCenter
        MinWidth = 110
        Options.Editing = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 110
      end
      object np_f_type: TcxGridDBColumn
        AlternateCaption = #1043#1088#1091#1087#1087#1072
        Caption = #1043#1088#1091#1087#1087#1072
        DataBinding.FieldName = 'F_TYPE'
        Options.Editing = False
        Options.Moving = False
        Width = 100
      end
      object np_F_SUB_TYPE: TcxGridDBColumn
        AlternateCaption = #1055#1086#1076#1075#1088#1091#1087#1087#1072
        Caption = #1055#1086#1076#1075#1088#1091#1087#1087#1072
        DataBinding.FieldName = 'F_SUB_TYPE'
        Options.Editing = False
        Options.Moving = False
        Width = 120
      end
      object np_FULL_NAME: TcxGridDBColumn
        AlternateCaption = #1053#1072#1079#1074#1072#1085#1080#1077
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'COMPILED_NAME_OTDEL'
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 150
      end
      object np_IS_PHOTO: TcxGridDBColumn
        Caption = #1060#1086#1090#1086
        DataBinding.FieldName = 'IS_PHOTO'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayChecked = #1076#1072
        Properties.DisplayUnchecked = #1085#1077#1090
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ReadOnly = True
        Properties.ValueChecked = '1'
        Properties.ValueUnchecked = '0'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 40
        Options.Editing = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 40
      end
      object np_SPESIFICATION: TcxGridDBColumn
        AlternateCaption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
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
      object np_QUANTITY: TcxGridDBColumn
        AlternateCaption = #1050#1086#1083'-'#1074#1086
        Caption = #1050#1086#1083'-'#1074#1086
        DataBinding.FieldName = 'QUANTITY'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = ',0;-,0'
        Properties.ReadOnly = True
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
      object np_reserv: TcxGridDBColumn
        AlternateCaption = #1056#1077#1079#1077#1088#1074
        Caption = #1056#1077#1079#1077#1088#1074
        DataBinding.FieldName = 'RESERV'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = ',0;-,0'
        HeaderAlignmentHorz = taCenter
        MinWidth = 60
        Options.Editing = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 60
      end
      object np_PRICE: TcxGridDBColumn
        AlternateCaption = #1062#1077#1085#1072
        Caption = #1062#1077#1085#1072
        DataBinding.FieldName = 'PRICE'
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
      object np_QUANTITY_PRICE: TcxGridDBColumn
        AlternateCaption = #1053#1072' '#1089#1091#1084#1084#1091
        Caption = #1053#1072' '#1089#1091#1084#1084#1091
        DataBinding.FieldName = 'QUANTITY_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taCenter
        MinWidth = 100
        Options.Editing = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 100
      end
      object np_COUNTRY: TcxGridDBColumn
        AlternateCaption = #1057#1090#1088#1072#1085#1072
        Caption = #1057#1090#1088#1072#1085#1072
        DataBinding.FieldName = 'COUNTRY'
        Options.Editing = False
        Options.Moving = False
        Styles.Content = st_small
        Width = 100
      end
      object np_S_NAME_RU: TcxGridDBColumn
        AlternateCaption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
        Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
        DataBinding.FieldName = 'S_NAME_RU'
        Options.Editing = False
        Styles.Content = st_small
        Width = 100
      end
      object grid_sview_vColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'N_ID'
        Visible = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
      object grid_sview_vLEN: TcxGridDBColumn
        DataBinding.FieldName = 'LEN'
        Visible = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
      object grid_sview_vPACK: TcxGridDBColumn
        DataBinding.FieldName = 'PACK'
        Visible = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
      object grid_sview_vCOLOUR: TcxGridDBColumn
        Caption = #1062#1074#1077#1090
        DataBinding.FieldName = 'COLOUR'
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 120
      end
      object grid_sview_vFT_ID: TcxGridDBColumn
        DataBinding.FieldName = 'FT_ID'
        Visible = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
      object grid_sview_vFST_ID: TcxGridDBColumn
        DataBinding.FieldName = 'FST_ID'
        Visible = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
      object grid_sview_vC_ID: TcxGridDBColumn
        DataBinding.FieldName = 'C_ID'
        Visible = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
      object grid_sview_vCOL_ID: TcxGridDBColumn
        DataBinding.FieldName = 'COL_ID'
        Visible = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
      object grid_sview_vS_ID: TcxGridDBColumn
        DataBinding.FieldName = 'S_ID'
        Visible = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
      object grid_sview_vPHOTO: TcxGridDBColumn
        DataBinding.FieldName = 'PHOTO'
        Visible = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
      object grid_sview_vFULL_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'FULL_NAME'
        Visible = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
      object grid_sview_vID_OFFICE: TcxGridDBColumn
        DataBinding.FieldName = 'ID_OFFICE'
        Visible = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
      object grid_sview_vGTD: TcxGridDBColumn
        Caption = #1043#1058#1044
        DataBinding.FieldName = 'GTD'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Visible = False
        MinWidth = 100
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Moving = False
        Styles.Content = st_small
        Width = 150
      end
      object grid_sview_vNOTUSE: TcxGridDBColumn
        DataBinding.FieldName = 'NOTUSE'
        Visible = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
      end
    end
    object grid_sview_l: TcxGridLevel
      GridView = grid_sview_v
    end
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
    Top = 455
    Width = 909
    Height = 43
    Align = dalBottom
    BarManager = bm_sales
  end
  object STORE_VIEW: TOraQuery
    LocalUpdate = True
    Session = DM.OraSession
    SQL.Strings = (
      'begin'
      
        '  creator.STORE_PKG.SELECT_STORE(:ID_DEPARTMENTS_, :STORE_TYPE_,' +
        ' :v_office, :CURSOR_);'
      'end;')
    FetchAll = True
    Options.FieldsOrigin = True
    FilterOptions = [foCaseInsensitive]
    IndexFieldNames = 'H_CODE desc'
    BeforeOpen = STORE_VIEWBeforeOpen
    BeforeRefresh = STORE_VIEWBeforeOpen
    Left = 392
    Top = 48
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEPARTMENTS_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'STORE_TYPE_'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'v_office'
        Value = Null
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptInputOutput
        Value = ''
      end>
    object STORE_VIEWN_ID: TFloatField
      FieldName = 'N_ID'
      Origin = 'N_ID'
    end
    object STORE_VIEWFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Origin = 'FULL_NAME'
      Size = 350
    end
    object STORE_VIEWF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Origin = 'F_TYPE'
      Size = 50
    end
    object STORE_VIEWF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Origin = 'F_SUB_TYPE'
      Size = 50
    end
    object STORE_VIEWCODE: TStringField
      FieldName = 'CODE'
      Origin = 'CODE'
      Size = 40
    end
    object STORE_VIEWH_CODE: TStringField
      FieldName = 'H_CODE'
      Origin = 'H_CODE'
      Size = 50
    end
    object STORE_VIEWLEN: TIntegerField
      FieldName = 'LEN'
      Origin = 'LEN'
    end
    object STORE_VIEWPACK: TIntegerField
      FieldName = 'PACK'
      Origin = 'PACK'
    end
    object STORE_VIEWCOLOUR: TStringField
      FieldName = 'COLOUR'
      Origin = 'COLOUR'
      Size = 50
    end
    object STORE_VIEWCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Origin = 'COUNTRY'
      Size = 50
    end
    object STORE_VIEWQUANTITY: TFloatField
      FieldName = 'QUANTITY'
      Origin = 'QUANTITY'
    end
    object STORE_VIEWPRICE: TFloatField
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
    object STORE_VIEWFT_ID: TFloatField
      FieldName = 'FT_ID'
      Origin = 'FT_ID'
    end
    object STORE_VIEWFST_ID: TFloatField
      FieldName = 'FST_ID'
      Origin = 'FST_ID'
    end
    object STORE_VIEWC_ID: TFloatField
      FieldName = 'C_ID'
      Origin = 'C_ID'
    end
    object STORE_VIEWCOL_ID: TFloatField
      FieldName = 'COL_ID'
      Origin = 'COL_ID'
    end
    object STORE_VIEWS_ID: TFloatField
      FieldName = 'S_ID'
      Origin = 'S_ID'
    end
    object STORE_VIEWQUANTITY_PRICE: TFloatField
      FieldName = 'QUANTITY_PRICE'
      Origin = 'QUANTITY_PRICE'
    end
    object STORE_VIEWRESERV: TFloatField
      FieldName = 'RESERV'
      Origin = 'RESERV'
    end
    object STORE_VIEWSPESIFICATION: TStringField
      FieldName = 'SPESIFICATION'
      Origin = 'SPESIFICATION'
      Size = 4000
    end
    object STORE_VIEWS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Origin = 'S_NAME_RU'
      Size = 150
    end
    object STORE_VIEWIS_PHOTO: TFloatField
      FieldName = 'IS_PHOTO'
      Origin = 'IS_PHOTO'
    end
    object STORE_VIEWPHOTO: TStringField
      FieldName = 'PHOTO'
      Origin = 'PHOTO'
      Size = 30
    end
    object STORE_VIEWOUR_CODE: TStringField
      FieldName = 'OUR_CODE'
      Origin = 'OUR_CODE'
      Size = 40
    end
    object STORE_VIEWCOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Origin = 'COMPILED_NAME_OTDEL'
      Size = 350
    end
    object STORE_VIEWID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
      Origin = 'ID_OFFICE'
    end
    object STORE_VIEWBRIEF: TStringField
      FieldName = 'BRIEF'
      Origin = 'BRIEF'
      Size = 10
    end
    object STORE_VIEWGTD: TStringField
      FieldName = 'GTD'
      Origin = 'GTD'
      Size = 60
    end
    object STORE_VIEWNOTUSE: TIntegerField
      FieldName = 'NOTUSE'
      Origin = 'NOTUSE'
    end
    object STORE_VIEWPICS: TStringField
      FieldName = 'PICS'
      Origin = 'PICS'
      Size = 4000
    end
  end
  object STORE_VIEW_DS: TOraDataSource
    DataSet = STORE_VIEW
    Left = 392
    Top = 80
  end
  object SaveDialog6: TSaveDialog
    DefaultExt = 'xls'
    Filter = #1060#1072#1081#1083#1099' EXCEL (*.xls)|*.xls'
    Left = 425
    Top = 49
  end
  object frxReport1: TfrxReport
    Version = '4.12.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39785.824304097200000000
    ReportOptions.LastChange = 41563.996125706020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 482
    Top = 48
    Datasets = <
      item
        DataSet = fr_DB_STORE_VIEW
        DataSetName = 'fr_DB_STORE_VIEW'
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
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 109.606370000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo2: TfrxMemoView
          Align = baWidth
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1056#1115#1056#1115' "'#1056#1038#1056#1118#1056#1106#1056#160#1056#8250#1056#1106#1056#8482#1056#1118' '#1056#8220#1056#1109#1056#187#1056#1169#1056#181#1056#1029' '#1056#160#1056#1105#1056#1029#1056#1110'"')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baWidth
          Top = 20.456710000000000000
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1057#8218#1056#1169#1056#181#1056#187)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 60.252010000000000000
          Width = 476.220780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176': [Date]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 120.944960000000000000
          Top = 90.708720000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#8220#1057#1026#1057#1107#1056#1111#1056#1111#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 230.551330000000000000
          Top = 90.708720000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 306.141930000000000000
          Top = 90.708720000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1106#1057#1026#1057#8218#1056#1105#1056#1108#1057#1107#1056#187)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 600.945270000000000000
          Top = 90.708720000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 695.433520000000000000
          Top = 90.708720000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176' '#1057#1027#1057#1107#1056#1112#1056#1112#1057#1107)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 377.953000000000000000
          Top = 90.708720000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#183#1056#1030#1056#176#1056#1029#1056#1105#1056#181)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 646.299630000000000000
          Top = 90.708720000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#166#1056#181#1056#1029#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Align = baWidth
          Top = 40.354360000000000000
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1056#1109#1056#1169#1056#181#1057#1026#1056#182#1056#1105#1056#1112#1056#1109#1056#181' '#1057#1027#1056#1108#1056#187#1056#176#1056#1169#1056#176)
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Top = 90.708720000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#152#1056#183#1056#1109#1056#177#1057#1026#1056#176#1056#182#1056#181#1056#1029#1056#1105#1056#181)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897650000000000000
        ParentFont = False
        Top = 188.976500000000000000
        Width = 755.906000000000000000
        DataSet = fr_DB_STORE_VIEW
        DataSetName = 'fr_DB_STORE_VIEW'
        RowCount = 0
        Stretched = True
        object fr_DOC_DSID_DOC: TfrxMemoView
          Left = 120.944960000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F_TYPE'
          DataSet = fr_DB_STORE_VIEW
          DataSetName = 'fr_DB_STORE_VIEW'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[fr_DB_STORE_VIEW."F_TYPE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fr_DOC_DSDOC_NUMBER: TfrxMemoView
          Left = 230.551330000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'CODE'
          DataSet = fr_DB_STORE_VIEW
          DataSetName = 'fr_DB_STORE_VIEW'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fr_DB_STORE_VIEW."CODE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fr_DOC_DSNICK: TfrxMemoView
          Left = 306.141930000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'H_CODE'
          DataSet = fr_DB_STORE_VIEW
          DataSetName = 'fr_DB_STORE_VIEW'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[fr_DB_STORE_VIEW."H_CODE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fr_DOC_DSFIO: TfrxMemoView
          Left = 377.953000000000000000
          Width = 222.992025910000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataSet = all_prih_Form.fr_doc_data_ds
          DataSetName = 'fr_doc_data_ds'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              '[fr_DB_STORE_VIEW."COMPILED_NAME_OTDEL"] - [fr_DB_STORE_VIEW."SP' +
              'ESIFICATION"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fr_DOC_DSQUANTITY_ALL: TfrxMemoView
          Left = 600.945270000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'QUANTITY'
          DataSet = fr_DB_STORE_VIEW
          DataSetName = 'fr_DB_STORE_VIEW'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fr_DB_STORE_VIEW."QUANTITY"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fr_DOC_DSPRICE_ALL: TfrxMemoView
          Left = 695.433520000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'QUANTITY_PRICE'
          DataSet = fr_DB_STORE_VIEW
          DataSetName = 'fr_DB_STORE_VIEW'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[fr_DB_STORE_VIEW."QUANTITY_PRICE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 646.299630000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'PRICE'
          DataSet = fr_DB_STORE_VIEW
          DataSetName = 'fr_DB_STORE_VIEW'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[fr_DB_STORE_VIEW."PRICE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          Width = 120.944881890000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoSize = True
          Center = True
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          FileLink = '[fr_DB_STORE_VIEW."PICS"]'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 15.118120000000000000
        Top = 313.700990000000000000
        Width = 755.906000000000000000
        object Memo1: TfrxMemoView
          Left = 680.315400000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[Page#]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 230.551330000000000000
        Width = 755.906000000000000000
        object Memo14: TfrxMemoView
          Left = 623.622450000000000000
          Top = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[SUM(<fr_DB_STORE_VIEW."QUANTITY_PRICE">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 491.338900000000000000
          Top = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1116#1056#176' '#1056#1109#1056#177#1057#8364#1057#1107#1057#1035' '#1057#1027#1057#1107#1056#1112#1056#1112#1057#1107': ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 75.590600000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#183#1056#1105#1057#8224#1056#1105#1056#8470': ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object fr_DB_STORE_VIEW: TfrxDBDataset
    UserName = 'fr_DB_STORE_VIEW'
    CloseDataSource = False
    FieldAliases.Strings = (
      'N_ID=N_ID'
      'FULL_NAME=FULL_NAME'
      'F_TYPE=F_TYPE'
      'F_SUB_TYPE=F_SUB_TYPE'
      'CODE=CODE'
      'H_CODE=H_CODE'
      'LEN=LEN'
      'PACK=PACK'
      'COLOUR=COLOUR'
      'COUNTRY=COUNTRY'
      'QUANTITY=QUANTITY'
      'PRICE=PRICE'
      'FT_ID=FT_ID'
      'FST_ID=FST_ID'
      'C_ID=C_ID'
      'COL_ID=COL_ID'
      'S_ID=S_ID'
      'QUANTITY_PRICE=QUANTITY_PRICE'
      'RESERV=RESERV'
      'SPESIFICATION=SPESIFICATION'
      'S_NAME_RU=S_NAME_RU'
      'IS_PHOTO=IS_PHOTO'
      'PHOTO=PHOTO'
      'OUR_CODE=OUR_CODE'
      'COMPILED_NAME_OTDEL=COMPILED_NAME_OTDEL'
      'ID_OFFICE=ID_OFFICE'
      'BRIEF=BRIEF'
      'GTD=GTD'
      'NOTUSE=NOTUSE'
      'PICS=PICS')
    OpenDataSource = False
    DataSource = STORE_VIEW_DS
    BCDToCurrency = False
    Left = 514
    Top = 48
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
    Left = 546
    Top = 48
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
    Left = 576
    Top = 48
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
    Left = 606
    Top = 48
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
    Left = 579
    Top = 80
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
    Left = 548
    Top = 80
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 512
    Top = 81
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
  object ActionList1: TActionList
    Left = 392
    Top = 13
    object filter_off: TAction
      Caption = 'filter_off'
      ShortCut = 121
      OnExecute = filter_offExecute
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
    object aShowReserv: TAction
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1088#1077#1079#1077#1088#1074
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1088#1077#1079#1077#1088#1074' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1072#1084
      ShortCut = 119
      OnExecute = aShowReservExecute
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
  object PopupMenu1: TPopupMenu
    Left = 648
    Top = 46
    object mnExcel: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OnClick = mnExcelClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object mnShowReserv: TMenuItem
      Action = aShowReserv
    end
    object N4: TMenuItem
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
end
