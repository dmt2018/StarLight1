object frmNSICurreny: TfrmNSICurreny
  Left = 0
  Top = 0
  Caption = ' '#1050#1091#1088#1089#1099' '#1074#1072#1083#1102#1090
  ClientHeight = 482
  ClientWidth = 773
  Color = clBtnFace
  ParentFont = True
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grCurrency: TcxGrid
    Left = 0
    Top = 58
    Width = 773
    Height = 398
    Align = alClient
    TabOrder = 4
    object grCurrencyView: TcxGridDBTableView
      PopupMenu = PM_main
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = True
      NavigatorButtons.PriorPage.Visible = True
      NavigatorButtons.Prior.Visible = True
      NavigatorButtons.Next.Visible = True
      NavigatorButtons.NextPage.Visible = True
      NavigatorButtons.Last.Visible = True
      NavigatorButtons.Insert.Visible = True
      NavigatorButtons.Append.Visible = False
      NavigatorButtons.Delete.Visible = True
      NavigatorButtons.Edit.Visible = True
      NavigatorButtons.Post.Visible = True
      NavigatorButtons.Cancel.Visible = True
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Visible = True
      NavigatorButtons.GotoBookmark.Visible = True
      NavigatorButtons.Filter.Visible = True
      DataController.DataSource = Q_CURR_DS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skCount
          Column = grCurrencyViewColumn2
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsCustomize.ColumnMoving = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.HeaderEndEllipsis = True
      object grCurrencyViewColumn1: TcxGridDBColumn
        Caption = #1054#1092#1080#1089
        DataBinding.FieldName = 'ID_OFFICE'
        Visible = False
      end
      object grCurrencyViewColumn2: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'DDATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        Properties.SaveTime = False
        Properties.ShowTime = False
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taCenter
        Width = 100
      end
      object grCurrencyViewColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'USD'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 5
        Properties.DisplayFormat = ',0.00000;-,0.00000'
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object grCurrencyViewColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'EUR'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 5
        Properties.DisplayFormat = ',0.00000;-,0.00000'
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object grCurrencyViewColumn5: TcxGridDBColumn
        Caption = '$ '#1082' '#8364
        DataBinding.FieldName = 'USD_EUR'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 5
        Properties.DisplayFormat = ',0.00000;-,0.00000'
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object grCurrencyViewColumn6: TcxGridDBColumn
        Caption = #8364' '#1082' $'
        DataBinding.FieldName = 'EUR_USD'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 5
        Properties.DisplayFormat = ',0.00000;-,0.00000'
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object grCurrencyViewColumn7: TcxGridDBColumn
        Caption = #1044#1080#1088'. USD'
        DataBinding.FieldName = 'SHEV_USD'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 5
        Properties.DisplayFormat = ',0.00000;-,0.00000'
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object grCurrencyViewColumn8: TcxGridDBColumn
        Caption = #1044#1080#1088'. EUR'
        DataBinding.FieldName = 'SHEV_EUR'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 5
        Properties.DisplayFormat = ',0.00000;-,0.00000'
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object grCurrencyViewColumn9: TcxGridDBColumn
        Caption = #1044#1080#1088'. $ '#1082' '#8364
        DataBinding.FieldName = 'SHEV_USD_EUR'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 5
        Properties.DisplayFormat = ',0.00000;-,0.00000'
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object grCurrencyViewColumn10: TcxGridDBColumn
        Caption = #1044#1080#1088'. '#8364' '#1082' $'
        DataBinding.FieldName = 'SHEV_EUR_USD'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DecimalPlaces = 5
        Properties.DisplayFormat = ',0.00000;-,0.00000'
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
    end
    object grCurrencyLevel: TcxGridLevel
      GridView = grCurrencyView
    end
  end
  object bmMain: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dm.ImgList_24
    ImageOptions.LargeImages = dm.ImgList_32
    ImageOptions.SmoothGlyphs = True
    ImageOptions.StretchGlyphs = False
    ImageOptions.UseLargeImagesForLargeIcons = True
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    Style = bmsUseLookAndFeel
    UseF10ForMenu = False
    UseSystemFont = True
    Left = 608
    Top = 192
    DockControlHeights = (
      0
      0
      58
      26)
    object bmToolBar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'MainTB'
      CaptionButtons = <>
      Color = clBtnFace
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 950
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'deCoursesBegin'
        end
        item
          Visible = True
          ItemName = 'deCoursesEnd'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnAdd'
        end
        item
          Visible = True
          ItemName = 'btnEdit'
        end
        item
          Visible = True
          ItemName = 'btnDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnHelp'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnExit'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object bmFooter: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Footer'
      CaptionButtons = <>
      Color = clBtnFace
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 950
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnHotKeys'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRecentItems = False
      Visible = True
      WholeRow = True
    end
    object btnRefresh: TdxBarLargeButton
      Action = aRefresh
      Category = 0
      LargeImageIndex = 32
      AutoGrayScale = False
    end
    object btnAdd: TdxBarLargeButton
      Action = aNew
      Category = 0
      LargeImageIndex = 4
      AutoGrayScale = False
    end
    object btnEdit: TdxBarLargeButton
      Action = aEdit
      Category = 0
      LargeImageIndex = 5
      AutoGrayScale = False
    end
    object btnDelete: TdxBarLargeButton
      Action = aDelete
      Category = 0
      LargeImageIndex = 6
      AutoGrayScale = False
    end
    object imgOffice: TcxBarEditItem
      Caption = #1054#1092#1080#1089
      Category = 0
      Hint = #1054#1092#1080#1089
      Visible = ivAlways
      ShowCaption = True
      Width = 100
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items = <
        item
          Description = #1063#1077#1088#1077#1087#1086#1074#1077#1094
          ImageIndex = 0
          Value = '5'
        end
        item
          Description = #1057#1090#1072#1088#1083#1072#1081#1090' ('#1052#1086#1089#1082#1074#1072')'
          Value = '1'
        end
        item
          Description = #1050#1072#1079#1072#1085#1100
          Value = '3'
        end
        item
          Description = #1057#1072#1084#1072#1088#1072
          Value = '2'
        end
        item
          Description = #1059#1092#1072
          Value = '6'
        end
        item
          Description = #1045#1082#1072#1090#1077#1088#1080#1085#1073#1091#1088#1075
          Value = '8'
        end>
    end
    object imgOtdel: TcxBarEditItem
      Caption = #1054#1090#1076#1077#1083':'
      Category = 0
      Hint = #1054#1090#1076#1077#1083':'
      Visible = ivAlways
      ShowCaption = True
      Width = 100
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items = <
        item
          Description = #1040#1082#1089#1077#1089#1089#1091#1072#1088#1099
          ImageIndex = 0
          Value = '121'
        end
        item
          Description = #1043#1086#1088#1096#1077#1095#1085#1099#1081' '#1086#1090#1076#1077#1083
          Value = '61'
        end
        item
          Description = #1054#1090#1076#1077#1083' '#1089#1088#1077#1079#1072#1085#1085#1099#1093' '#1094#1074#1077#1090#1086#1074
          Value = '62'
        end
        item
          Description = #1054#1090#1076#1077#1083' '#1092#1083#1086#1088#1080#1089#1090#1080#1082#1080
          Value = '181'
        end>
    end
    object btnHelp: TdxBarLargeButton
      Caption = #1050#1091#1088#1089' '#1074#1072#1083#1102#1090' '#1074' '#1062#1041
      Category = 0
      Hint = #1050#1091#1088#1089' '#1074#1072#1083#1102#1090' '#1074' '#1062#1041
      Visible = ivAlways
      LargeImageIndex = 13
      OnClick = btnHelpClick
      AutoGrayScale = False
    end
    object btnExit: TdxBarLargeButton
      Action = aExit
      Align = iaRight
      Category = 0
      LargeImageIndex = 21
      AutoGrayScale = False
    end
    object cxBarEditItem3: TcxBarEditItem
      Caption = #1054#1092#1080#1089':'
      Category = 0
      Hint = #1054#1092#1080#1089':'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxLabelProperties'
    end
    object cxBarEditItem4: TcxBarEditItem
      Caption = #1054#1090#1076#1077#1083':'
      Category = 0
      Hint = #1054#1090#1076#1077#1083':'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxLabelProperties'
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
    end
    object dxBarButton1: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
    end
    object dxBarButton4: TdxBarButton
      Caption = #1050#1091#1088#1089' '#1074#1072#1083#1102#1090' '#1074' '#1062#1041
      Category = 0
      Hint = #1050#1091#1088#1089' '#1074#1072#1083#1102#1090' '#1074' '#1062#1041
      Visible = ivAlways
    end
    object dxBarButton5: TdxBarButton
      Caption = #1042#1099#1093#1086#1076
      Category = 0
      Hint = #1042#1099#1093#1086#1076
      Visible = ivAlways
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxLabelProperties'
    end
    object btnHotKeys: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 36
      OnClick = btnHotKeysClick
    end
    object deCoursesBegin: TdxBarDateCombo
      Caption = #1089
      Category = 0
      Hint = #1089
      Visible = ivAlways
      OnKeyDown = deCoursesEndKeyDown
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDD00000000000DDDDD0FFFFFFFFF0D00000F0000000F0D0FFF0FFFFFFF
        FF0D0F000FFF11FFFF0D0FFF0FFF11FFFF0D0FF10FFFF11FFF0D0FF10FFFFF11
        FF0D0FF10FF11111FF0D0FF10FFFFFFFFF0D0FF104444444440D0FFF04444444
        440D044400000000000D04444444440DDDDD00000000000DDDDD}
      ShowCaption = True
      Width = 100
      ShowDayText = False
    end
    object deCoursesEnd: TdxBarDateCombo
      Caption = #1087#1086
      Category = 0
      Hint = #1087#1086
      Visible = ivAlways
      OnKeyDown = deCoursesEndKeyDown
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDD00000000000DDDDD0FFFFFFFFF0D00000F0000000F0D0FFF0FFFFFFF
        FF0D0F000FFF11FFFF0D0FFF0FFF11FFFF0D0FF10FFFF11FFF0D0FF10FFFFF11
        FF0D0FF10FF11111FF0D0FF10FFFFFFFFF0D0FF104444444440D0FFF04444444
        440D044400000000000D04444444440DDDDD00000000000DDDDD}
      ShowCaption = True
      Width = 100
      ShowDayText = False
    end
  end
  object AlMain: TActionList
    Left = 608
    Top = 232
    object aRefresh: TAction
      Category = 'Main'
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      ShortCut = 116
      OnExecute = aRefreshExecute
    end
    object aNew: TAction
      Category = 'Main'
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ShortCut = 113
      OnExecute = aNewExecute
    end
    object aEdit: TAction
      Category = 'Main'
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      ShortCut = 114
      OnExecute = aEditExecute
    end
    object aDelete: TAction
      Category = 'Main'
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ShortCut = 115
      OnExecute = aDeleteExecute
    end
    object aExit: TAction
      Category = 'Main'
      Caption = #1047#1072#1082#1088#1099#1090#1100
      ShortCut = 16499
      OnExecute = aExitExecute
    end
  end
  object Q_CURR_DS: TOraDataSource
    DataSet = Q_CURR
    Left = 560
    Top = 192
  end
  object Q_CURR: TOraQuery
    SQLRefresh.Strings = (
      'SELECT a.* from CURRENCY a'
      'where a.ID = :old_ID')
    SQL.Strings = (
      'begin'
      
        '  DICTS.LIST_OF_CURSES(:V_OFFICE, :DATE_BEGIN, :DATE_END, :CURSO' +
        'R_);'
      'end;')
    Left = 512
    Top = 192
    ParamData = <
      item
        DataType = ftFloat
        Name = 'V_OFFICE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DATE_BEGIN'
      end
      item
        DataType = ftUnknown
        Name = 'DATE_END'
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        Value = 'Object'
      end>
  end
  object SelQ: TOraQuery
    Left = 512
    Top = 232
  end
  object OraSQL1: TOraSQL
    SQL.Strings = (
      'begin '
      
        '  dicts.save_curses(:P1, :P2, :P3, :P4, :P5, :P6, :P7, :P8, :P9 ' +
        ');'
      'end;')
    Left = 560
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P1'
      end
      item
        DataType = ftUnknown
        Name = 'P2'
      end
      item
        DataType = ftUnknown
        Name = 'P3'
      end
      item
        DataType = ftUnknown
        Name = 'P4'
      end
      item
        DataType = ftUnknown
        Name = 'P5'
      end
      item
        DataType = ftUnknown
        Name = 'P6'
      end
      item
        DataType = ftUnknown
        Name = 'P7'
      end
      item
        DataType = ftUnknown
        Name = 'P8'
      end
      item
        DataType = ftUnknown
        Name = 'P9'
      end>
  end
  object OraSQL2: TOraSQL
    SQL.Strings = (
      'begin '
      '  dicts.delete_curses(:P1);'
      'end;')
    Left = 560
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P1'
      end>
  end
  object XMLDoc: TXMLDocument
    FileName = 'D:\Documents and Settings\Creator\Desktop\xml_daily.xml'
    Left = 512
    Top = 280
    DOMVendorDesc = 'MSXML'
  end
  object XMLTrans: TXMLTransform
    Left = 608
    Top = 280
  end
  object XMLTransform1: TXMLTransform
    Left = 504
    Top = 320
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 608
    Top = 320
  end
  object ClientDataSet2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 552
    Top = 320
  end
  object PM_main: TPopupMenu
    Left = 464
    Top = 192
    object mnFooterToClipboard: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1080#1090#1086#1075#1086#1074#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103' '#1074' '#1073#1091#1092#1077#1088
      OnClick = mnFooterToClipboardClick
    end
    object mnToClipboard: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1103#1095#1077#1081#1082#1091' '#1074' '#1073#1091#1092#1077#1088
      OnClick = mnToClipboardClick
    end
    object mnClearFilter: TMenuItem
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      ShortCut = 121
      OnClick = mnClearFilterClick
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object mnExportExcel: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OnClick = mnExportExcelClick
    end
  end
end
