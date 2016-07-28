object frmNSICurreny: TfrmNSICurreny
  Left = 0
  Top = 0
  Caption = ' '#1050#1091#1088#1089#1099' '#1074#1072#1083#1102#1090
  ClientHeight = 470
  ClientWidth = 707
  Color = clBtnFace
  ParentFont = True
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grCurrency: TcxGrid
    Left = 0
    Top = 46
    Width = 707
    Height = 398
    Align = alClient
    TabOrder = 4
    object grCurrencyView: TcxGridDBTableView
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
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsCustomize.ColumnMoving = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
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
        DataBinding.FieldName = 'SHEV_EUR'
      end
      object grCurrencyViewColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'ID_OFFICE'
      end
      object grCurrencyViewColumn3: TcxGridDBColumn
        DataBinding.FieldName = 'EUR_USD'
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
    ImageOptions.SmoothGlyphs = True
    ImageOptions.StretchGlyphs = False
    ImageOptions.UseLargeImagesForLargeIcons = True
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    Style = bmsUseLookAndFeel
    UseF10ForMenu = False
    UseSystemFont = True
    Left = 576
    Top = 264
    DockControlHeights = (
      0
      0
      46
      26)
    object bmToolBar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'MainTB'
      CaptionButtons = <>
      Color = clBtnShadow
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 950
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnAdd'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnEdit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnDelete'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 94
          Visible = True
          ItemName = 'imgOffice'
        end
        item
          Visible = True
          ItemName = 'imgOtdel'
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
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object bmFooter: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'FooterTB'
      CaptionButtons = <>
      Color = clBtnShadow
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 950
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <>
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
      LargeImageIndex = 0
      ShortCut = 116
      AutoGrayScale = False
    end
    object btnAdd: TdxBarLargeButton
      Action = aNew
      Category = 0
      AutoGrayScale = False
    end
    object btnEdit: TdxBarLargeButton
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Category = 0
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100
      Visible = ivAlways
      AutoGrayScale = False
    end
    object btnDelete: TdxBarLargeButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
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
      Caption = #1055#1086#1084#1086#1097#1100
      Category = 0
      Hint = #1055#1086#1084#1086#1097#1100
      Visible = ivAlways
      AutoGrayScale = False
    end
    object btnExit: TdxBarLargeButton
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Category = 0
      Hint = #1047#1072#1082#1088#1099#1090#1100
      Visible = ivAlways
      OnClick = btnExitClick
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
  end
  object AlMain: TActionList
    Left = 552
    Top = 304
    object aRefresh: TAction
      Category = 'Main'
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      OnExecute = aRefreshExecute
    end
    object aNew: TAction
      Category = 'Main'
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnExecute = aNewExecute
    end
    object aEdit: TAction
      Category = 'Main'
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    end
    object aDelete: TAction
      Category = 'Main'
      Caption = #1059#1076#1072#1083#1080#1090#1100
    end
  end
  object Q_CURR_DS: TOraDataSource
    DataSet = Q_CURR
    Left = 568
    Top = 192
  end
  object Q_CURR: TOraQuery
    SQL.Strings = (
      'begin'
      '  DICTS.GET_CURSES(:V_OFFICE, :CURSOR_);'
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
        DataType = ftCursor
        Name = 'CURSOR_'
        Value = 'Object'
      end>
  end
end
