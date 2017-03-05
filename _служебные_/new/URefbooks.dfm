object frmRefbooks: TfrmRefbooks
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
  ClientHeight = 563
  ClientWidth = 770
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pcrefbooks: TcxPageControl
    Left = 0
    Top = 58
    Width = 770
    Height = 479
    ActivePage = tshUnits
    Align = alClient
    TabOrder = 0
    ClientRectBottom = 479
    ClientRectRight = 770
    ClientRectTop = 24
    object tshRegions: TcxTabSheet
      Caption = #1056#1077#1075#1080#1086#1085#1099
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ImageIndex = 0
      ParentColor = False
      ParentFont = False
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grRegions: TcxGrid
        Left = 0
        Top = 0
        Width = 770
        Height = 455
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        PopupMenu = PM_main
        TabOrder = 0
        object grRegionsView: TcxGridDBTableView
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
          FilterBox.Position = fpTop
          DataController.DataSource = Q_REGIONS_DS
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              Column = grRegionsName
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1086#1074
          FilterRow.Visible = True
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
          object grRegionsNN: TcxGridDBColumn
            Caption = #8470
            DataBinding.FieldName = 'NN'
            Visible = False
            Width = 40
          end
          object grRegionsName: TcxGridDBColumn
            Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'NAME'
            FooterAlignmentHorz = taRightJustify
            Width = 200
          end
          object grRegionsInfo: TcxGridDBColumn
            Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
            DataBinding.FieldName = 'INFO'
            Width = 200
          end
          object grRegionsKladr: TcxGridDBColumn
            Caption = #1050#1051#1040#1044#1056
            DataBinding.FieldName = 'KLADR'
            Width = 120
          end
          object grRegionsKod: TcxGridDBColumn
            Caption = #1050#1086#1076
            DataBinding.FieldName = 'KOD'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
        end
        object grRegionsLevel: TcxGridLevel
          GridView = grRegionsView
        end
      end
    end
    object tshCityes: TcxTabSheet
      Caption = #1043#1086#1088#1086#1076#1072
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grCities: TcxGrid
        Left = 0
        Top = 0
        Width = 770
        Height = 455
        Align = alClient
        PopupMenu = PM_main
        TabOrder = 0
        object grCitiesView: TcxGridDBTableView
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
          FilterBox.Position = fpTop
          DataController.DataSource = Q_CITIES_DS
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              Column = grCitiesCity
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1086#1074
          FilterRow.Visible = True
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
          object grCitiesCity: TcxGridDBColumn
            Caption = #1043#1086#1088#1086#1076
            DataBinding.FieldName = 'CITY'
            FooterAlignmentHorz = taRightJustify
            Width = 200
          end
          object grCitiesKod: TcxGridDBColumn
            Caption = #1050#1086#1076' '#1075#1086#1088#1086#1076#1072
            DataBinding.FieldName = 'KOD'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
        end
        object grCitiesLevel: TcxGridLevel
          GridView = grCitiesView
        end
      end
    end
    object tshPromo: TcxTabSheet
      Caption = #1056#1077#1082#1083#1072#1084#1072
      ImageIndex = 2
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grPromo: TcxGrid
        Left = 0
        Top = 0
        Width = 770
        Height = 455
        Align = alClient
        PopupMenu = PM_main
        TabOrder = 0
        object grPromoView: TcxGridDBTableView
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
          FilterBox.Position = fpTop
          DataController.DataSource = Q_Promo_DS
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              Column = grPromoName
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1086#1074
          FilterRow.Visible = True
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
          object grPromoNN: TcxGridDBColumn
            Caption = #8470
            DataBinding.FieldName = 'NN'
            Visible = False
          end
          object grPromoName: TcxGridDBColumn
            Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'NAME'
            FooterAlignmentHorz = taRightJustify
            Width = 200
          end
          object grPromoInfo: TcxGridDBColumn
            Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
            DataBinding.FieldName = 'INFO'
            Width = 200
          end
        end
        object grPromoLevel: TcxGridLevel
          GridView = grPromoView
        end
      end
    end
    object tshClientTypes: TcxTabSheet
      Caption = #1058#1080#1087#1099' '#1082#1083#1080#1077#1085#1090#1086#1074
      ImageIndex = 3
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grClientTypes: TcxGrid
        Left = 0
        Top = 0
        Width = 770
        Height = 455
        Align = alClient
        PopupMenu = PM_main
        TabOrder = 0
        object grClientTypesView: TcxGridDBTableView
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
          FilterBox.Position = fpTop
          DataController.DataSource = Q_CT_DS
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              Column = tview_TYPESBRIEF
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1086#1074
          FilterRow.Visible = True
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
          object tview_TYPESnn: TcxGridDBColumn
            Caption = #8470':'
            DataBinding.FieldName = 'nn'
            Visible = False
          end
          object tview_TYPESBRIEF: TcxGridDBColumn
            Caption = #1054#1092#1080#1089
            DataBinding.FieldName = 'BRIEF'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
          end
          object tview_TYPESNAME: TcxGridDBColumn
            Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'NAME'
            Width = 200
          end
          object tview_TYPEST_TYPE: TcxGridDBColumn
            Caption = #1055#1077#1095#1072#1090#1100
            DataBinding.FieldName = 'T_TYPE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = True
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            HeaderAlignmentHorz = taCenter
          end
          object tview_TYPESDISCOUNT: TcxGridDBColumn
            Caption = #1057#1082#1080#1076#1082#1072', %'
            DataBinding.FieldName = 'DISCOUNT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = ',0;-,0'
            HeaderAlignmentHorz = taCenter
            Width = 80
          end
          object tview_TYPESINFO: TcxGridDBColumn
            Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
            DataBinding.FieldName = 'INFO'
            Width = 200
          end
          object tview_TYPESCONTRACTOR: TcxGridDBColumn
            Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
            DataBinding.FieldName = 'IS_CONTRACTOR'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = True
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            HeaderAlignmentHorz = taCenter
            Width = 80
          end
        end
        object grClientTypesLevel: TcxGridLevel
          GridView = grClientTypesView
        end
      end
    end
    object tshDeparts: TcxTabSheet
      Caption = #1054#1090#1076#1077#1083#1099
      ImageIndex = 4
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grDeps: TcxGrid
        Left = 0
        Top = 0
        Width = 770
        Height = 455
        Align = alClient
        PopupMenu = PM_main
        TabOrder = 0
        object grDepsView: TcxGridDBTableView
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
          FilterBox.Position = fpTop
          DataController.DataSource = Q_DEPS_DS
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              Column = grDepsName
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1086#1074
          FilterRow.Visible = True
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
          object grDepsNN: TcxGridDBColumn
            Caption = #8470
            DataBinding.FieldName = 'NN'
            Visible = False
            Width = 51
          end
          object grDepsName: TcxGridDBColumn
            Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'NAME'
            FooterAlignmentHorz = taRightJustify
            Width = 220
          end
          object grDepsSTATE: TcxGridDBColumn
            Caption = #1071#1074#1083#1103#1077#1090#1089#1103' '#1086#1090#1076#1077#1083#1086#1084' '#1087#1088#1086#1076#1072#1078
            DataBinding.FieldName = 'STATE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.DisplayChecked = #1076#1072
            Properties.DisplayUnchecked = #1085#1077#1090
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = True
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 110
            Width = 160
          end
          object grDepsINFO: TcxGridDBColumn
            Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
            DataBinding.FieldName = 'INFO'
            Width = 262
          end
        end
        object grDepsLevel: TcxGridLevel
          GridView = grDepsView
        end
      end
    end
    object tshPositions: TcxTabSheet
      Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1080
      ImageIndex = 5
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grPost: TcxGrid
        Left = 0
        Top = 0
        Width = 770
        Height = 455
        Align = alClient
        PopupMenu = PM_main
        TabOrder = 0
        object grPostView: TcxGridDBTableView
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
          FilterBox.Position = fpTop
          DataController.DataSource = Q_POST_DS
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              Column = grPostName
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1086#1074
          FilterRow.Visible = True
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
          object grPostNN: TcxGridDBColumn
            Caption = #8470
            DataBinding.FieldName = 'NN'
            Visible = False
            Width = 49
          end
          object grPostName: TcxGridDBColumn
            Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'NAME'
            FooterAlignmentHorz = taRightJustify
            Width = 272
          end
          object grPostInfo: TcxGridDBColumn
            Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
            DataBinding.FieldName = 'INFO'
            Width = 284
          end
        end
        object grPostLevel: TcxGridLevel
          GridView = grPostView
        end
      end
    end
    object tshCountries: TcxTabSheet
      Caption = #1057#1090#1088#1072#1085#1099
      ImageIndex = 6
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grCountries: TcxGrid
        Left = 0
        Top = 0
        Width = 770
        Height = 455
        Align = alClient
        PopupMenu = PM_main
        TabOrder = 0
        object grCountriesView: TcxGridDBTableView
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
          FilterBox.Position = fpTop
          DataController.DataSource = Q_CTRS_DS
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              Column = grCountriesCTRS
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1086#1074
          FilterRow.Visible = True
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
          object grCountriesNN: TcxGridDBColumn
            Caption = #8470
            DataBinding.FieldName = 'NN'
            Visible = False
            Width = 48
          end
          object grCountriesCTRS: TcxGridDBColumn
            Caption = #1057#1090#1088#1072#1085#1072
            DataBinding.FieldName = 'COUNTRY'
            FooterAlignmentHorz = taRightJustify
            Width = 249
          end
          object grCountriesCTRSLAT: TcxGridDBColumn
            Caption = #1057#1090#1088#1072#1085#1072' ('#1083#1072#1090')'
            DataBinding.FieldName = 'COUNTRY_ENG'
            Width = 225
          end
          object grCountriesKODC: TcxGridDBColumn
            Caption = #1050#1086#1076' ('#1073#1091#1082#1074'.)'
            DataBinding.FieldName = 'MNEMO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object grCountriesKOD: TcxGridDBColumn
            Caption = #1050#1086#1076' ('#1094#1080#1092'.)'
            DataBinding.FieldName = 'BUH_CODE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 85
          end
        end
        object grCountriesLevel: TcxGridLevel
          GridView = grCountriesView
        end
      end
    end
    object tshSuppliers: TcxTabSheet
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
      ImageIndex = 7
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grSuppliers: TcxGrid
        Left = 0
        Top = 0
        Width = 770
        Height = 455
        Align = alClient
        PopupMenu = PM_main
        TabOrder = 0
        object grSuppliersView: TcxGridDBTableView
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
          FilterBox.Position = fpTop
          DataController.DataSource = Q_SUP_DS
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              Column = grSuppliersName
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1086#1074
          FilterRow.Visible = True
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
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderEndEllipsis = True
          object grSuppliersNN: TcxGridDBColumn
            Caption = #8470
            DataBinding.FieldName = 'NN'
            Visible = False
            Width = 49
          end
          object grSuppliersName: TcxGridDBColumn
            Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
            DataBinding.FieldName = 'S_NAME_RU'
            FooterAlignmentHorz = taRightJustify
            Width = 200
          end
          object grSuppliersCountry: TcxGridDBColumn
            Caption = #1057#1090#1088#1072#1085#1072
            DataBinding.FieldName = 'COUNTRY'
            Width = 200
          end
          object grSuppliersGTD: TcxGridDBColumn
            Caption = #1058#1072#1084#1086#1078#1085#1103'/'#1043#1058#1044
            DataBinding.FieldName = 'NEED_CUST'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.DisplayChecked = #1076#1072
            Properties.DisplayUnchecked = #1085#1077#1090
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            HeaderAlignmentHorz = taCenter
            Width = 90
          end
          object grSuppliersDays: TcxGridDBColumn
            Caption = #1050'-'#1074#1086' '#1076#1085#1077#1081' '#1076#1083#1103' '#1072#1085#1072#1083#1080#1079#1072' '#1074' '#1079#1072#1082#1072#1079#1077
            DataBinding.FieldName = 'ANALYZE_DAYS'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 110
          end
          object grSuppliersPassiv: TcxGridDBColumn
            Caption = #1053#1077#1072#1082#1090#1080#1074#1085#1072#1103' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
            DataBinding.FieldName = 'IS_ACTIVE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.DisplayChecked = #1076#1072
            Properties.DisplayUnchecked = #1085#1077#1090
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            HeaderAlignmentHorz = taCenter
            Width = 100
          end
        end
        object grSuppliersLevel: TcxGridLevel
          GridView = grSuppliersView
        end
      end
    end
    object tshUnits: TcxTabSheet
      Caption = #1045#1076#1080#1085#1080#1094#1099' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
      ImageIndex = 8
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object grUnits: TcxGrid
        Left = 0
        Top = 0
        Width = 770
        Height = 455
        Align = alClient
        PopupMenu = PM_main
        TabOrder = 0
        object grUnitsView: TcxGridDBTableView
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
          FilterBox.Position = fpTop
          DataController.DataSource = Q_CDS_DS
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              Column = grUnitsKod
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1086#1074
          FilterRow.Visible = True
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
          object grUnitsKod: TcxGridDBColumn
            Caption = #1050#1086#1076
            DataBinding.FieldName = 'UNIT_CODE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
          end
          object grUnitsName: TcxGridDBColumn
            Caption = #1045#1076#1080#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
            DataBinding.FieldName = 'NSI_NAME'
            Width = 133
          end
          object grUnitsZnak1: TcxGridDBColumn
            Caption = #1059#1089#1083'.'#1086#1073#1086#1079#1085'.'#1085#1072#1094'.'
            DataBinding.FieldName = 'SYMBOL_NATIONAL'
            Width = 109
          end
          object grUnitsZnak2: TcxGridDBColumn
            Caption = #1059#1089#1083'.'#1086#1073#1086#1079#1085'.'#1084#1077#1078#1076'.'
            DataBinding.FieldName = 'SYMBOL_INTERNATIONAL'
            Width = 135
          end
          object grUnitsKodZnak1: TcxGridDBColumn
            Caption = #1050#1086#1076#1086#1074#1086#1077' '#1086#1073#1086#1079#1085'.'#1085#1072#1094'.'
            DataBinding.FieldName = 'CODE_LETTERING_NATIONAL'
            Width = 115
          end
          object grUnitsKodZnak2: TcxGridDBColumn
            Caption = #1050#1086#1076#1086#1074#1086#1077' '#1086#1073#1086#1079#1085'.'#1084#1077#1078#1076'.'
            DataBinding.FieldName = 'CODE_LETTERING_INTERNATIONAL'
            Width = 125
          end
        end
        object grUnitsLevel: TcxGridLevel
          GridView = grUnitsView
        end
      end
    end
  end
  object Q_Promo: TOraQuery
    SQL.Strings = (
      'begin'
      '  BOOKS.GET_ADVERTISMENTS(:V_OFFICE, :CURSOR_);'
      'end;')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 368
    Top = 216
    ParamData = <
      item
        DataType = ftFloat
        Name = 'V_OFFICE'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Q_PromoID_ADVERTISMENTS: TIntegerField
      FieldName = 'ID_ADVERTISMENTS'
      Required = True
    end
    object Q_PromoNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 255
    end
    object Q_PromoINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
    object Q_PromoID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_PromoNN: TFloatField
      FieldName = 'NN'
    end
    object Q_PromoBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
  end
  object Q_Promo_DS: TOraDataSource
    DataSet = Q_Promo
    Left = 416
    Top = 216
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
      Caption = 'FooterTB'
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
      Caption = #1055#1086#1084#1086#1097#1100
      Category = 0
      Enabled = False
      Hint = #1055#1086#1084#1086#1097#1100
      Visible = ivAlways
      LargeImageIndex = 20
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
  object SelQ: TOraQuery
    Left = 648
    Top = 192
  end
  object Q_CITIES: TOraQuery
    SQL.Strings = (
      'begin'
      '  BOOKS.GET_CITIES(:V_OFFICE, :CURSOR_);'
      'end;')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 368
    Top = 184
    ParamData = <
      item
        DataType = ftFloat
        Name = 'V_OFFICE'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Q_CITIESID_CITY: TIntegerField
      FieldName = 'ID_CITY'
      Required = True
    end
    object Q_CITIESCITY: TStringField
      FieldName = 'CITY'
      Required = True
      Size = 255
    end
    object Q_CITIESKOD: TStringField
      FieldName = 'KOD'
      Size = 10
    end
    object Q_CITIESID_REGION: TIntegerField
      FieldName = 'ID_REGION'
    end
    object Q_CITIESID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_CITIESBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object Q_CITIESNAME: TStringField
      FieldName = 'NAME'
      Size = 255
    end
  end
  object Q_CITIES_DS: TOraDataSource
    DataSet = Q_CITIES
    Left = 416
    Top = 184
  end
  object Q_REGIONS: TOraQuery
    SQLRefresh.Strings = (
      'SELECT a.id_regions, a.name, a.info, a.ID_OFFICE, a.kladr, a.kod'
      'FROM books_regions a'
      'where id_regions = :old_id_regions')
    SQL.Strings = (
      'begin'
      '  BOOKS.GET_REGIONS(:V_OFFICE, :CURSOR_);'
      'end;')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 368
    Top = 152
    ParamData = <
      item
        DataType = ftFloat
        Name = 'V_OFFICE'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Q_REGIONSID_REGIONS: TIntegerField
      FieldName = 'ID_REGIONS'
      Required = True
    end
    object Q_REGIONSNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 255
    end
    object Q_REGIONSINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
    object Q_REGIONSID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_REGIONSNN: TFloatField
      FieldName = 'NN'
    end
    object Q_REGIONSBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object Q_REGIONSKLADR: TStringField
      FieldName = 'KLADR'
      Size = 15
    end
    object Q_REGIONSKOD: TStringField
      FieldName = 'KOD'
      Size = 4
    end
  end
  object Q_REGIONS_DS: TOraDataSource
    DataSet = Q_REGIONS
    Left = 416
    Top = 152
  end
  object Q_CT: TOraQuery
    SQL.Strings = (
      'begin'
      '  BOOKS.GET_CLIENT_TYPES(:V_OFFICE, :CURSOR_);'
      'end;')
    Left = 368
    Top = 248
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
    object Q_CTID_CLIENT_TYPES: TIntegerField
      FieldName = 'ID_CLIENT_TYPES'
    end
    object Q_CTNAME: TStringField
      FieldName = 'NAME'
      Size = 50
    end
    object Q_CTINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
    object Q_CTT_TYPE: TIntegerField
      FieldName = 'T_TYPE'
    end
    object Q_CTDISCOUNT: TFloatField
      FieldName = 'DISCOUNT'
    end
    object Q_CTID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_CTBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object Q_CTNN: TFloatField
      FieldName = 'NN'
    end
    object Q_CTIS_CONTRACTOR: TIntegerField
      FieldName = 'IS_CONTRACTOR'
    end
  end
  object Q_CT_DS: TOraDataSource
    DataSet = Q_CT
    Left = 416
    Top = 248
  end
  object Q_DEPS: TOraQuery
    SQL.Strings = (
      'begin'
      '  BOOKS.GET_DEPARTMENTS(:V_OFFICE, :CURSOR_);'
      'end;')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 368
    Top = 280
    ParamData = <
      item
        DataType = ftFloat
        Name = 'V_OFFICE'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Q_DEPSID_DEPARTMENTS: TIntegerField
      FieldName = 'ID_DEPARTMENTS'
      Required = True
    end
    object Q_DEPSNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 100
    end
    object Q_DEPSINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
    object Q_DEPSSTATE: TIntegerField
      FieldName = 'STATE'
    end
    object Q_DEPSID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_DEPSNN: TFloatField
      FieldName = 'NN'
    end
    object Q_DEPSBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
  end
  object Q_DEPS_DS: TOraDataSource
    DataSet = Q_DEPS
    Left = 416
    Top = 280
  end
  object Q_POST: TOraQuery
    SQL.Strings = (
      'begin'
      '  BOOKS.GET_JOB_TITLES(:V_OFFICE, :CURSOR_);'
      'end;')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 368
    Top = 312
    ParamData = <
      item
        DataType = ftFloat
        Name = 'V_OFFICE'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Q_POSTID_JOB_TITLES: TIntegerField
      FieldName = 'ID_JOB_TITLES'
      Required = True
    end
    object Q_POSTNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 100
    end
    object Q_POSTINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
    object Q_POSTID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_POSTNN: TFloatField
      FieldName = 'NN'
    end
    object Q_POSTBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
  end
  object Q_POST_DS: TOraDataSource
    DataSet = Q_POST
    Left = 416
    Top = 312
  end
  object Q_CTRS: TOraQuery
    SQL.Strings = (
      'select rownum as nn, a.* from ('
      'SELECT COUNTRY, COUNTRY_ENG, C_ID, mnemo, BUH_CODE '
      'FROM COUNTRIES '
      'WHERE NOT (C_ID = 0) '
      'ORDER BY COUNTRY'
      ') a')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 368
    Top = 344
    object Q_CTRSC_ID: TIntegerField
      FieldName = 'C_ID'
      Required = True
    end
    object Q_CTRSCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Required = True
      Size = 50
    end
    object Q_CTRSNN: TFloatField
      FieldName = 'NN'
    end
    object Q_CTRSCOUNTRY_ENG: TStringField
      FieldName = 'COUNTRY_ENG'
      Size = 50
    end
    object Q_CTRSMNEMO: TStringField
      FieldName = 'MNEMO'
      Size = 10
    end
    object Q_CTRSBUH_CODE: TStringField
      FieldName = 'BUH_CODE'
      Size = 10
    end
  end
  object Q_CTRS_DS: TOraDataSource
    DataSet = Q_CTRS
    Left = 416
    Top = 344
  end
  object Q_Sup: TOraQuery
    SQL.Strings = (
      'select rownum as nn, a.* '
      '  , case when nn = bb then 1 else 0 end is_active'
      'from ('
      
        '  SELECT S_ID, S_NAME_RU, C_ID, COUNTRY, NEED_CUST, id_office, a' +
        'nalyze_days'
      '  FROM SUPPLIERS_VIEW '
      '  WHERE (NOT (S_ID = 0)) and id_office = :v_office'
      ') a'
      
        '  left outer join (select count(*) as nn, sum(notuse) as bb, s_i' +
        'd from nomenclature_mat_view z '
      
        'where z.id_departments = :ID_DEPARTMENTS group by s_id ) b on b.' +
        's_id = a.s_id'
      'ORDER BY S_NAME_RU')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 368
    Top = 376
    ParamData = <
      item
        Name = 'v_office'
        ParamType = ptInput
        Value = Null
        ExtDataType = 107
      end
      item
        DataType = ftUnknown
        Name = 'ID_DEPARTMENTS'
      end>
    object Q_SupNN: TFloatField
      FieldName = 'NN'
    end
    object Q_SupS_ID: TFloatField
      FieldName = 'S_ID'
    end
    object Q_SupS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Size = 150
    end
    object Q_SupC_ID: TFloatField
      FieldName = 'C_ID'
    end
    object Q_SupCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
    object Q_SupNEED_CUST: TIntegerField
      FieldName = 'NEED_CUST'
    end
    object Q_SupID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_SupANALYZE_DAYS: TIntegerField
      FieldName = 'ANALYZE_DAYS'
    end
    object Q_SupIS_ACTIVE: TFloatField
      FieldName = 'IS_ACTIVE'
    end
  end
  object Q_SUP_DS: TOraDataSource
    DataSet = Q_Sup
    Left = 416
    Top = 376
  end
  object Q_CDS: TOraQuery
    SQLUpdate.Strings = (
      
        'update nsi_units set unit_code = :unit_code, nsi_name = :nsi_nam' +
        'e, symbol_national = :symbol_national, '
      
        '  symbol_international = :symbol_international, code_lettering_n' +
        'ational = :code_lettering_national, '
      '  code_lettering_international = :code_lettering_international'
      '  where nsi_units_id = :old_nsi_units_id')
    SQLRefresh.Strings = (
      'SELECT a.unit_code, a.nsi_name, a.symbol_national,'
      '       a.symbol_international, a.code_lettering_national,'
      '       a.code_lettering_international'
      '  FROM nsi_units a'
      'where nsi_units_id = :old_nsi_units_id')
    SQL.Strings = (
      
        'SELECT a.nsi_units_id, a.unit_code, a.nsi_name, a.symbol_nationa' +
        'l,'
      '       a.symbol_international, a.code_lettering_national,'
      '       a.code_lettering_international'
      '  FROM nsi_units a')
    FetchAll = True
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    FilterOptions = [foCaseInsensitive]
    Left = 368
    Top = 408
    object Q_CDSNSI_UNITS_ID: TFloatField
      FieldName = 'NSI_UNITS_ID'
      Required = True
    end
    object Q_CDSUNIT_CODE: TIntegerField
      FieldName = 'UNIT_CODE'
      Required = True
    end
    object Q_CDSNSI_NAME: TStringField
      FieldName = 'NSI_NAME'
      Size = 50
    end
    object Q_CDSSYMBOL_NATIONAL: TStringField
      FieldName = 'SYMBOL_NATIONAL'
      Size = 50
    end
    object Q_CDSSYMBOL_INTERNATIONAL: TStringField
      FieldName = 'SYMBOL_INTERNATIONAL'
      Size = 50
    end
    object Q_CDSCODE_LETTERING_NATIONAL: TStringField
      FieldName = 'CODE_LETTERING_NATIONAL'
      Size = 50
    end
    object Q_CDSCODE_LETTERING_INTERNATIONAL: TStringField
      FieldName = 'CODE_LETTERING_INTERNATIONAL'
      Size = 50
    end
  end
  object Q_CDS_DS: TOraDataSource
    DataSet = Q_CDS
    Left = 416
    Top = 408
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
