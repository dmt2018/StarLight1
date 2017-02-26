object frmNomenclature: TfrmNomenclature
  Left = 0
  Top = 0
  Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072' - '#1087#1086#1095#1080#1089#1090#1080#1090#1100' '#1083#1080#1096#1085#1077#1077', '#1080' '#1085#1080#1078' '#1090#1072#1073#1083' '#1085#1077' '#1086#1090#1086#1073#1088'-'#1089#1103
  ClientHeight = 560
  ClientWidth = 1124
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 402
    Width = 1124
    Height = 8
    Cursor = crVSplit
    HotZoneClassName = 'TcxXPTaskBarStyle'
    AlignSplitter = salBottom
    Control = Panel4
    Color = clBtnFace
    ParentColor = False
    ExplicitTop = 368
    ExplicitWidth = 8
  end
  object Panel1: TPanel
    Left = 0
    Top = 58
    Width = 1124
    Height = 318
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object gr_noms: TcxGrid
      Left = 2
      Top = 2
      Width = 1120
      Height = 314
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      object gr_noms_i: TcxGridLevel
        GridView = gr_noms_v
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 410
    Width = 1124
    Height = 150
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Ctl3D = False
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 6
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 886
      Height = 146
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object gr_spec: TcxGrid
        Left = 0
        Top = 0
        Width = 886
        Height = 146
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        ExplicitLeft = 24
        ExplicitTop = -111
        object gr_spec_v: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          FilterBox.Position = fpTop
          DataController.DataSource = NomSpec_DS
          DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription, fcoSoftCompare]
          DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = #1074#1089#1077#1075#1086' = 0'
              Kind = skCount
              FieldName = 'N_ID'
              DisplayText = #1074#1089#1077#1075#1086' = 0'
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
            end
            item
              Kind = skSum
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1092#1080#1083#1100#1090#1088#1086#1074
          FilterRow.Visible = True
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnMoving = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
          OptionsView.ColumnAutoWidth = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GroupByBox = False
          object gr_spec_vSPEC_CODE: TcxGridDBColumn
            Caption = #1050#1086#1076' '#1089#1087#1077#1094'.'
            DataBinding.FieldName = 'SPEC_CODE'
            MinWidth = 70
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 70
          end
          object gr_spec_vSPEC_NAME: TcxGridDBColumn
            Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
            DataBinding.FieldName = 'SPEC_NAME'
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Moving = False
            Width = 200
          end
          object gr_spec_vHS_VAL: TcxGridDBColumn
            Caption = #1047#1085#1072#1095#1077#1085#1080#1077
            DataBinding.FieldName = 'HS_VAL'
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Moving = False
            Width = 200
          end
          object gr_spec_vCONTENT_RUS: TcxGridDBColumn
            Caption = #1055#1077#1088#1077#1074#1086#1076
            DataBinding.FieldName = 'CONTENT_RUS'
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Moving = False
            Width = 200
          end
          object _gr_spec_vHS_ID: TcxGridDBColumn
            DataBinding.FieldName = 'HS_ID'
            Visible = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
          end
          object gr_spec_vORD: TcxGridDBColumn
            DataBinding.FieldName = 'ORD'
            Visible = False
          end
          object gr_spec_vSC_ID: TcxGridDBColumn
            DataBinding.FieldName = 'SC_ID'
            Visible = False
          end
        end
        object gr_spec_l: TcxGridLevel
          GridView = gr_spec_v
        end
      end
    end
    object Panel5: TPanel
      Left = 888
      Top = 2
      Width = 234
      Height = 146
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        234
        146)
      object BitBtn3: TcxButton
        Left = 6
        Top = 5
        Width = 222
        Height = 30
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1102' (F6)'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn3Click
        Colors.Default = clBtnFace
        Colors.Normal = clBtnFace
        Colors.Hot = clMoneyGreen
        Colors.Pressed = clMoneyGreen
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000230B0000230B000000010000000000002184290031A5
          4A0031AD520039B5520063A563006BAD840094DE8C00A5E79C00FF00FF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00080808080808
          0808080808080808080808080808080808080808080808080808080808080808
          0808080808080808080808080808080808080808000000000808080808080808
          0808080808080808080808040506030100080808080808080808080808080808
          0808080407060302000808080808080808080808080808080808080407060302
          0008080808080808080808080808080808080804070603020008080808080808
          0808080808080808080808040706030200080808080808080808080808080808
          0808080407060302000808080808080808080808080000000000000007060302
          0000000000000000080808080401020202020202020203020202020202020201
          0008080804030303030303030303030303030303030303030008080804060606
          0606060606060303060606060606060600080808040507070707070707060302
          0707070707070705000808080804040404040404070603020000000000000000
          0808080808080808080808040706030200080808080808080808080808080808
          0808080407060302000808080808080808080808080808080808080407060302
          0008080808080808080808080808080808080804070603020008080808080808
          0808080808080808080808040706030200080808080808080808080808080808
          0808080407060302000808080808080808080808080808080808080405060301
          0008080808080808080808080808080808080808040404040808080808080808
          0808080808080808080808080808080808080808080808080808}
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        Spacing = 6
      end
      object BitBtn4: TcxButton
        Left = 6
        Top = 41
        Width = 222
        Height = 30
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1102
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = BitBtn4Click
        Colors.Default = clBtnFace
        Colors.Normal = clBtnFace
        Colors.Hot = clMoneyGreen
        Colors.Pressed = clMoneyGreen
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF00006E00006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF00006E00006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF00006E0018EB0008CA00006EFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FF00006E0002DA0004E300006EFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF00006E001EEB0019EB0018EB0007C900006EFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF00006E0001D70008EB0008EB0006E80000
          6EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00006E0014D9001EEB0019EB00
          19EB0008C800006EFF00FFFF00FFFF00FFFF00FF00006E0002D60008EB0006EB
          0008EB0000CC00006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000
          6E0014D7001FEB001AEB0019EB0009CC00006EFF00FFFF00FF00006E0004E000
          09EB0008EB0008EB0000C800006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF00006E0014D60020EB001BEB001BEB000ED600006E0000
          6E0004E20007EB0006EB0009EB0000C900006EFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00006E0016D70021EB001DEB
          001CEB000EDF0008E80008EB0006EB0008EB0001D900006EFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
          006E0016D60021EB0019EB0012EB000FEB000BEB000AEB0002D700006EFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FF00006E0019DE001AEB0016EB0013EB0011EB0008D700
          006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00006E0020E7001FEB001BEB0018
          EB0017EB0011D700006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00006E032AE70128EB
          0023EB0021EB0020EB001FEB0021EB0013D600006EFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00006E04
          28DC0831EB042CEB022CEB001AD90019D90026EB0021EB0021EB0014D700006E
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF00006E092FE00C37EB0A32EB0A36EB0121D700006E00006E001AD60028EB00
          23EB0023EB0014D600006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FF00006E0E36E0113EEB0E38EB0E3AEB0220CC00006EFF00FFFF00
          FF00006E0015CC0129EB0024EB0024EB0016D700006EFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF00006E143FE61543EB133EEB1340EB031FC800006E
          FF00FFFF00FFFF00FFFF00FF00006E0014C8022BEB0024EB0025EB0019DB0000
          6EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00006E1947E81947EB1846EB06
          23C900006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00006E0015C9022CEB
          012AEB001BDB00006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000
          6E1842E20A28C900006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FF00006E0018CD0020D900006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF00006E00006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF00006E00006EFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        Spacing = 6
      end
    end
  end
  object bmMain: TdxBarManager
    Scaled = False
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
    ImageOptions.LargeImages = dm.ImgList_32
    ImageOptions.SmoothGlyphs = True
    ImageOptions.StretchGlyphs = False
    ImageOptions.UseLargeImagesForLargeIcons = True
    MenuAnimations = maFade
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseFullReset = True
    UseSystemFont = False
    Left = 608
    Top = 176
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
          ItemName = 'dxBarSubItem1'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 69
          Visible = True
          ItemName = 'cb_pics'
        end
        item
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
    object bmMainBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 1158
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
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
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1057#1077#1088#1074#1080#1089
      Category = 0
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000661F0013912C006D942D00B19A3306D39A3306D3942D
        00B1922C006E6A20001300000000000000000000000000000000000000000000
        000000000000922C006DA43E0FF1C55F2CFFD16731FFD0642DFFD0642DFFD066
        30FFC35D29FFA33D0EF1932C006D000000000000000000000000000000000000
        0000942D0098C05B2BFFDF7441FFCE5D29FFBE511CFFC68E73FFC48B6FFFB94A
        15FFC04F18FFCE622BFFBA5322FF942D0098000000000000000000000000922C
        006FC45E2FFFEA7E50FFDF6F40FFD66634FFC4714CFFFFFFFFFFFFFFFFFFB660
        36FFBF4D16FFBF4D16FFC95A23FFBA5422FF932C006F00000000681F0014A741
        13F2F0865CFFEC7D54FFE7784CFFE07142FFCD7F5DFFFFFFFFFFFFFFFFFFBA68
        41FFBF4D16FFBF4D16FFBF4D16FFCE622BFFA43D0EF271220014922C0072D16B
        3FFFEB7D58FFED7E58FFEC7E55FFE8794DFFD48767FFFFFFFFFFFFFFFFFFBF6D
        46FFC15019FFBF4D16FFBF4D16FFC04F18FFC45D2AFF942D0072942D00B6E57B
        53FFE57553FFEA7B57FFED7E58FFED7E55FFD98C6EFFFFFFFFFFFFFFFFFFC674
        4FFFC95722FFC2501AFFBF4D16FFBF4D16FFD16630FF942D00B69C3609D8DF73
        4FFFDD6B4CFFE47452FFEA7A56FFED7E58FFDB8F73FFFFFFFFFFFFFFFFFFCD7C
        59FFD2622FFFCA5924FFC3511BFFBF4D16FFCF632CFF9C3507D89C3509D9D869
        48FFD36043FFDC6A4BFFE37351FFE97A56FFDB8E74FFFFFFFFFFFFFFFFFFD484
        63FFDC6D3DFFD46331FFCB5A25FFC4521CFFCF632CFF9C3507D9942E01B8D165
        42FFC85339FFD25E42FFDB694AFFE27251FFD7795BFFF6EFEDFFF5EDEAFFDA7B
        56FFE57649FFDE6E3EFFD56432FFCC5B27FFD56B35FF952E00B8932C0075C259
        31FFBE4931FFC75238FFD15D41FFDA6749FFDF6F4FFFC77D66FFCA8168FFEB7D
        57FFEC7D53FFE6774BFFDF6F40FFD76735FFCA6431FF942D007570220017A43D
        11F5C55437FFBB452EFFC55037FFCF5B40FFC9735DFFFCFBFBFFFCFBFBFFD985
        69FFED7E58FFEC7D54FFE7784CFFE67C4BFFA74113F57924001700000000942D
        0076B85026FFBC492FFFBA432DFFC44E36FFC16955FFFCFBFAFFFCFBFBFFD480
        66FFEB7C57FFED7E58FFEF8358FFC66131FF942D007600000000000000005218
        0001942D00A0B85026FFC35235FFBA442DFFC04C34FFBF6854FFC7705AFFDC6C
        4CFFE67653FFEE845BFFC76234FF942D00A05B1B000100000000000000000000
        000053190001942D0077A43D11F6C15830FFCD5F3EFFD16242FFD86A48FFDF75
        4FFFD16A3FFFA94315F6942D00775B1B00010000000000000000000000000000
        0000000000000000000075230018942D0079952E01BC9D370ADE9E370ADE952E
        01BC942D00797925001800000000000000000000000000000000}
      LargeImageIndex = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'bbSyncOne'
        end
        item
          Visible = True
          ItemName = 'bbSyncAll'
        end
        item
          Visible = True
          ItemName = 'bbSyncNomenclature'
        end
        item
          Visible = True
          ItemName = 'bbSyncNomenclatureLoad'
        end
        item
          Visible = True
          ItemName = 'btnReportNom'
        end
        item
          Visible = True
          ItemName = 'btnPrintStickers'
        end
        item
          Visible = True
          ItemName = 'tbnSetDone'
        end
        item
          Visible = True
          ItemName = 'btnCheckBarCode'
        end
        item
          Visible = True
          ItemName = 'btnSyncVolume'
        end
        item
          Visible = True
          ItemName = 'btnShowNotUse'
        end
        item
          Visible = True
          ItemName = 'bbFindByParameters'
        end
        item
          Visible = True
          ItemName = 'btnClearFilter'
        end>
    end
    object cb_pics: TcxBarEditItem
      Caption = #1048#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103
      Category = 0
      Hint = #1048#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103
      Visible = ivAlways
      ShowCaption = True
      Width = 40
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.DisplayChecked = #1076#1072
      Properties.DisplayUnchecked = #1085#1077#1090
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnEditValueChanged = cb_picsPropertiesEditValueChanged
    end
    object cxBarEditItem6: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxTextEditProperties'
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton6: TdxBarButton
      Action = copyN
      Caption = #1050#1086#1087#1080#1088#1086#1072#1090#1100' '#1087#1086#1079#1080#1094#1080#1102
      Category = 0
    end
    object dxBarButton7: TdxBarButton
      Action = areload
      Category = 0
    end
    object dxBarButton8: TdxBarButton
      Action = afotos
      Category = 0
    end
    object bbSyncOne: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1091#1102' '#1087#1086#1079#1080#1094#1080#1102' '#1085#1072' '#1088#1077#1075#1080#1086#1085#1072#1093
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1091#1102' '#1087#1086#1079#1080#1094#1080#1102' '#1085#1072' '#1088#1077#1075#1080#1086#1085#1072#1093
      Visible = ivAlways
      OnClick = bbSyncOneClick
    end
    object bbSyncAll: TdxBarButton
      Caption = #1057#1080#1085#1093#1088#1086#1085#1080#1079#1080#1088#1086#1074#1072#1090#1100' '#1074#1089#1102' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1091' '#1085#1072' '#1088#1077#1075#1080#1086#1085#1072#1093
      Category = 0
      Hint = #1057#1080#1085#1093#1088#1086#1085#1080#1079#1080#1088#1086#1074#1072#1090#1100' '#1074#1089#1102' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1091' '#1085#1072' '#1088#1077#1075#1080#1086#1085#1072#1093
      Visible = ivAlways
      OnClick = bbSyncAllClick
    end
    object bbSyncNomenclature: TdxBarButton
      Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1091' '#1076#1083#1103' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103
      Category = 0
      Hint = #1042#1099#1075#1088#1091#1079#1080#1090#1100' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1091' '#1076#1083#1103' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103
      Visible = ivAlways
      OnClick = bbSyncNomenclatureClick
    end
    object bbSyncNomenclatureLoad: TdxBarButton
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1091' '#1080#1079' '#1092#1072#1081#1083#1072
      Category = 0
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1091' '#1080#1079' '#1092#1072#1081#1083#1072
      Visible = ivAlways
      OnClick = bbSyncNomenclatureLoadClick
    end
    object btnReportNom: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1085#1072#1079#1074#1072#1085#1080#1081
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1085#1072#1079#1074#1072#1085#1080#1081
      Visible = ivAlways
      OnClick = btnReportNomClick
    end
    object btnPrintStickers: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1089#1090#1080#1082#1077#1088#1086#1074
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1089#1090#1080#1082#1077#1088#1086#1074
      Visible = ivAlways
      OnClick = btnPrintStickersClick
    end
    object tbnSetDone: TdxBarButton
      Caption = #1054#1090#1084#1077#1090#1080#1090#1100' '#1082#1072#1082' '#1087#1088#1086#1074#1077#1088#1077#1085#1085#1091#1102
      Category = 0
      Hint = #1054#1090#1084#1077#1090#1080#1090#1100' '#1082#1072#1082' '#1087#1088#1086#1074#1077#1088#1077#1085#1085#1091#1102
      Visible = ivAlways
      OnClick = tbnSetDoneClick
    end
    object btnCheckBarCode: TdxBarButton
      Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1086#1076#1080#1085#1072#1082#1086#1074#1099#1077' '#1082#1086#1076#1099' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
      Category = 0
      Hint = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1086#1076#1080#1085#1072#1082#1086#1074#1099#1077' '#1082#1086#1076#1099' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
      Visible = ivAlways
      OnClick = btnCheckBarCodeClick
    end
    object btnSyncVolume: TdxBarButton
      Caption = #1057#1080#1085#1093#1088#1086#1085#1080#1079#1072#1094#1080#1103' '#1086#1073#1098#1077#1084#1086#1074
      Category = 0
      Hint = #1057#1080#1085#1093#1088#1086#1085#1080#1079#1072#1094#1080#1103' '#1086#1073#1098#1077#1084#1086#1074
      Visible = ivAlways
      OnClick = btnSyncVolumeClick
    end
    object btnShowNotUse: TdxBarButton
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1085#1077#1080#1089#1087#1086#1083#1100#1079#1091#1077#1084#1099#1077' '#1087#1086#1079#1080#1094#1080#1080
      Category = 0
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1085#1077#1080#1089#1087#1086#1083#1100#1079#1091#1077#1084#1099#1077' '#1087#1086#1079#1080#1094#1080#1080
      Visible = ivAlways
      OnClick = btnShowNotUseClick
    end
    object bbFindByParameters: TdxBarSubItem
      Caption = #1055#1086#1080#1089#1082' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1099' '#1087#1086' '#1091#1089#1083#1086#1074#1080#1103#1084
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton21'
        end
        item
          Visible = True
          ItemName = 'dxBarButton22'
        end
        item
          Visible = True
          ItemName = 'dxBarButton23'
        end
        item
          Visible = True
          ItemName = 'dxBarButton24'
        end
        item
          Visible = True
          ItemName = 'dxBarButton25'
        end>
    end
    object btnClearFilter: TdxBarButton
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      Category = 0
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      Visible = ivAlways
      OnClick = btnClearFilterClick
    end
    object dxBarButton20: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton21: TdxBarButton
      Caption = #1054#1076#1080#1085#1072#1082#1086#1074#1099#1077' '#1072#1088#1090#1080#1082#1091#1083#1099
      Category = 0
      Hint = #1054#1076#1080#1085#1072#1082#1086#1074#1099#1077' '#1072#1088#1090#1080#1082#1091#1083#1099
      Visible = ivAlways
      OnClick = dxBarButton21Click
    end
    object dxBarButton22: TdxBarButton
      Caption = #1054#1076#1080#1085#1072#1082#1086#1074#1099#1077' '#1096#1090#1088#1080#1093' '#1082#1086#1076#1099' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
      Category = 0
      Hint = #1054#1076#1080#1085#1072#1082#1086#1074#1099#1077' '#1096#1090#1088#1080#1093' '#1082#1086#1076#1099' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
      Visible = ivAlways
      OnClick = dxBarButton22Click
    end
    object dxBarButton23: TdxBarButton
      Caption = #1053#1077' '#1079#1072#1087#1086#1083#1085#1077#1085' '#1082#1086#1076' '#1085#1072#1079#1074#1072#1085#1080#1103' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
      Category = 0
      Hint = #1053#1077' '#1079#1072#1087#1086#1083#1085#1077#1085' '#1082#1086#1076' '#1085#1072#1079#1074#1072#1085#1080#1103' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
      Visible = ivAlways
      OnClick = dxBarButton23Click
    end
    object dxBarButton24: TdxBarButton
      Caption = #1058#1088#1077#1073#1091#1102#1097#1080#1077' '#1087#1088#1086#1074#1077#1088#1082#1080
      Category = 0
      Hint = #1058#1088#1077#1073#1091#1102#1097#1080#1077' '#1087#1088#1086#1074#1077#1088#1082#1080
      Visible = ivAlways
      OnClick = dxBarButton24Click
    end
    object dxBarButton25: TdxBarButton
      Caption = '8-'#1077' '#1084#1072#1088#1090#1072
      Category = 0
      Hint = '8-'#1077' '#1084#1072#1088#1090#1072
      Visible = ivAlways
      OnClick = dxBarButton25Click
    end
  end
  object AlMain: TActionList
    Left = 656
    Top = 176
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
    object agetrules: TAction
      Category = 'Main'
      Caption = 'agetrules'
      OnExecute = aGetRulesExecute
    end
    object copyN: TAction
      Category = 'Main'
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1086#1079#1080#1094#1080#1080
      OnExecute = CopyNExecute
    end
    object areload: TAction
      Category = 'Main'
      Caption = #1057#1080#1085#1093#1088#1086#1085#1080#1079#1072#1094#1080#1103
      OnExecute = areloadExecute
    end
    object dictsf: TAction
      Category = 'Main'
      Caption = 'dictsf'
    end
    object add_spec: TAction
      Category = 'Main'
      Caption = 'add_spec'
    end
    object setparams: TAction
      Category = 'Main'
      Caption = 'setparams'
    end
    object hidespec: TAction
      Category = 'Main'
      Caption = 'hidespec'
    end
    object afotos: TAction
      Category = 'Main'
      Caption = #1054#1073#1088#1072#1073#1086#1090#1072#1090#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
      OnExecute = afotosExecute
    end
    object afiltertype: TAction
      Category = 'Main'
      Caption = 'afiltertype'
    end
  end
  object DictView: TOraQuery
    SQLUpdate.Strings = (
      'select 1 from dual')
    SQLRefresh.Strings = (
      
        'select a.*, nvl(i.CHECKED,1) as CHECKED, u.nsi_name, nvl(a1.REMO' +
        'VE_FROM_SITE,0) as REMOVE_FROM_SITE, NO_ORDER'
      'from creator.nomenclature_mat_view a'
      '  left outer join import_flowers_kov i'
      '       on i.NOM_CODE = a.code'
      '  left outer join nsi_units u'
      '       on u.nsi_units_id = a.vbn'
      '  left outer JOIN nomenclature_site_marks a1'
      '       on a1.n_id = a.n_id'
      'where a.n_id = :n_id')
    SQL.Strings = (
      'begin'
      
        '  creator.NOMENCLATURE2_PKG.GET_NOMENCLATURE(:DEPT_, :v_office, ' +
        ':CURSOR_);'
      'end;')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = DictViewBeforeOpen
    BeforeRefresh = DictViewBeforeOpen
    Left = 480
    Top = 144
    ParamData = <
      item
        DataType = ftFloat
        Name = 'DEPT_'
        ParamType = ptInput
        Value = 121.000000000000000000
      end
      item
        DataType = ftInteger
        Name = 'v_office'
        Value = 1
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object DictViewD_CHECK: TFloatField
      FieldName = 'D_CHECK'
    end
    object DictViewF_NAME: TStringField
      FieldName = 'F_NAME'
      Size = 256
    end
    object DictViewF_NAME_RU: TStringField
      FieldName = 'F_NAME_RU'
      Size = 256
    end
    object DictViewF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Size = 50
    end
    object DictViewF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Size = 50
    end
    object DictViewCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
    object DictViewTYPE_SUBTYPE: TStringField
      FieldName = 'TYPE_SUBTYPE'
      Size = 103
    end
    object DictViewN_ID: TFloatField
      FieldName = 'N_ID'
    end
    object DictViewFN_ID: TFloatField
      FieldName = 'FN_ID'
    end
    object DictViewFT_ID: TFloatField
      FieldName = 'FT_ID'
    end
    object DictViewFST_ID: TFloatField
      FieldName = 'FST_ID'
    end
    object DictViewS_ID: TFloatField
      FieldName = 'S_ID'
    end
    object DictViewC_ID: TFloatField
      FieldName = 'C_ID'
    end
    object DictViewCOL_ID: TFloatField
      FieldName = 'COL_ID'
    end
    object DictViewH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 80
    end
    object DictViewH_NAME: TStringField
      FieldName = 'H_NAME'
      Size = 256
    end
    object DictViewHT_ID: TFloatField
      FieldName = 'HT_ID'
    end
    object DictViewCODE: TStringField
      FieldName = 'CODE'
      Size = 40
    end
    object DictViewLEN: TIntegerField
      FieldName = 'LEN'
    end
    object DictViewPACK: TIntegerField
      FieldName = 'PACK'
    end
    object DictViewVBN: TIntegerField
      FieldName = 'VBN'
    end
    object DictViewHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
    end
    object DictViewWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object DictViewWEIGHTDRY: TFloatField
      FieldName = 'WEIGHTDRY'
    end
    object DictViewS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Size = 150
    end
    object DictViewCOLOUR: TStringField
      FieldName = 'COLOUR'
      Size = 50
    end
    object DictViewIS_PHOTO: TFloatField
      FieldName = 'IS_PHOTO'
    end
    object DictViewHOL_MARKS: TStringField
      FieldName = 'HOL_MARKS'
      Size = 4000
    end
    object DictViewRUS_MARKS: TStringField
      FieldName = 'RUS_MARKS'
      Size = 4000
    end
    object DictViewDIAMETER: TFloatField
      FieldName = 'DIAMETER'
    end
    object DictViewBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
      Size = 30
    end
    object DictViewCUST_COEF: TFloatField
      FieldName = 'CUST_COEF'
    end
    object DictViewREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 256
    end
    object DictViewPHOTO: TStringField
      FieldName = 'PHOTO'
      Size = 80
    end
    object DictViewGREAT_NAME_F: TStringField
      FieldName = 'GREAT_NAME_F'
      Size = 372
    end
    object DictViewCOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 500
    end
    object DictViewNAME_CODE: TStringField
      FieldName = 'NAME_CODE'
      Size = 30
    end
    object DictViewNOPRINT: TIntegerField
      FieldName = 'NOPRINT'
    end
    object DictViewNOTUSE: TIntegerField
      FieldName = 'NOTUSE'
    end
    object DictViewNAMECODE: TStringField
      FieldName = 'NAMECODE'
      Size = 30
    end
    object DictViewTNVED: TStringField
      FieldName = 'TNVED'
      Size = 50
    end
    object DictViewHOL_PACK: TIntegerField
      FieldName = 'HOL_PACK'
    end
    object DictViewNOM_NEW: TIntegerField
      FieldName = 'NOM_NEW'
    end
    object DictViewNOM_START: TIntegerField
      FieldName = 'NOM_START'
    end
    object DictViewNOM_END: TIntegerField
      FieldName = 'NOM_END'
    end
    object DictViewID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object DictViewBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object DictViewCHECKED: TFloatField
      FieldName = 'CHECKED'
    end
    object DictViewHOL_COLOR: TStringField
      FieldName = 'HOL_COLOR'
      Size = 50
    end
    object DictViewHS_VAL: TStringField
      FieldName = 'HS_VAL'
      Size = 50
    end
    object DictViewNSI_NAME: TStringField
      FieldName = 'NSI_NAME'
      Size = 50
    end
    object DictViewREMOVE_FROM_SITE: TFloatField
      FieldName = 'REMOVE_FROM_SITE'
    end
    object DictViewNO_ORDER: TFloatField
      FieldName = 'NO_ORDER'
    end
  end
  object DictView_DS: TDataSource
    DataSet = DictView
    Left = 520
    Top = 144
  end
  object NomSpec: TOraQuery
    SQL.Strings = (
      'SELECT HS_ID,SPEC_CODE,SPEC_NAME,HS_VAL,CONTENT_RUS,ORD,sc_id '
      'FROM SPECIFICATION_VIEW '
      'WHERE N_ID = :N_ID ORDER BY SPEC_NAME')
    MasterSource = DictView_DS
    MasterFields = 'N_ID'
    FilterOptions = [foCaseInsensitive]
    Left = 480
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'N_ID'
      end>
    object NomSpecHS_ID: TFloatField
      FieldName = 'HS_ID'
    end
    object NomSpecSPEC_CODE: TStringField
      FieldName = 'SPEC_CODE'
      Size = 5
    end
    object NomSpecSPEC_NAME: TStringField
      FieldName = 'SPEC_NAME'
      Size = 256
    end
    object NomSpecHS_VAL: TStringField
      FieldName = 'HS_VAL'
      Size = 50
    end
    object NomSpecCONTENT_RUS: TStringField
      FieldName = 'CONTENT_RUS'
      Size = 56
    end
    object NomSpecORD: TFloatField
      FieldName = 'ORD'
    end
    object NomSpecSC_ID: TFloatField
      FieldName = 'SC_ID'
    end
  end
  object NomSpec_DS: TOraDataSource
    DataSet = NomSpec
    Left = 520
    Top = 184
  end
  object CheckImList: TImageList
    Left = 88
    Top = 184
    Bitmap = {
      494C010102000400680110001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007BBD008CD6
      FF008CD6FF008CD6FF008CD6FF008CD6FF008CD6FF008CD6FF008CD6FF008CD6
      FF00FFFFFF000000000000000000000000000000000000000000007BBD008CD6
      FF008CD6FF008CD6FF008CD6FF008CD6FF008CD6FF008CD6FF008CD6FF008CD6
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007BBD00004A
      7300D6F7FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF008CD6
      FF00FFFFFF000000000000000000000000000000000000000000007BBD00004A
      7300D6F7FF00D6F7FF00D6F7FF0000520000D6F7FF00D6F7FF00D6F7FF008CD6
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007BBD00004A
      7300D6F7FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF008CD6
      FF00FFFFFF000000000000000000000000000000000000000000007BBD00004A
      7300D6F7FF00D6F7FF00005200000052000000520000D6F7FF00D6F7FF008CD6
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007BBD00004A
      7300D6F7FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF008CD6
      FF00FFFFFF000000000000000000000000000000000000000000007BBD000063
      9400D6F7FF0000520000009400000094000000520000D6F7FF00D6F7FF008CD6
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007BBD00004A
      7300D6F7FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF008CD6
      FF00FFFFFF0000000000000000000000000000000000000000000094DE00007B
      BD00005200000094000000DE0000009400000094000000520000D6F7FF008CD6
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007BBD00004A
      7300D6F7FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF008CD6
      FF00FFFFFF00000000000000000000000000000000000000000000ADFF000052
      000000DE000000DE0000D6F7FF0000DE00000094000000520000D6F7FF008CD6
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007BBD00004A
      7300D6F7FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF008CD6
      FF00FFFFFF00000000000000000000000000000000000000000000DE000000DE
      0000D6F7FF00D6F7FF00D6F7FF00D6F7FF0000DE000000940000005200006BC6
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007BBD00004A
      7300D6F7FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF008CD6
      FF00FFFFFF00000000000000000000000000000000000000000000ADFF00007B
      BD00D6F7FF00D6F7FF00D6F7FF00D6F7FF00D6F7FF0000DE0000005200004ABD
      FF00D6F7FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007BBD00004A
      7300004A7300004A7300004A7300004A7300004A7300004A7300004A73008CD6
      FF00FFFFFF0000000000000000000000000000000000000000000094DE00004A
      7300004A7300004A7300004A7300004A730000639400007BBD0000DE00000052
      0000B5E7FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007BBD00007B
      BD00007BBD00007BBD00007BBD00007BBD00007BBD00007BBD00007BBD00007B
      BD00FFFFFF000000000000000000000000000000000000000000007BBD00007B
      BD00007BBD00007BBD00007BBD00007BBD00007BBD000094DE0000ADFF0000DE
      0000005200000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000DE00000052000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000FFFFFFFF00000000
      C007C00700000000C007C00700000000C007C00700000000C007C00700000000
      C007C00700000000C007C00700000000C007C00700000000C007C00700000000
      C007C00700000000C007C00700000000C007C00700000000FFFFFFF300000000
      FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object pm_main: TPopupMenu
    Left = 88
    Top = 225
    object mi_groupbytype: TMenuItem
      Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1090#1080#1087#1091
    end
    object mi_groupbycountry: TMenuItem
      Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1089#1090#1088#1072#1085#1077
    end
    object mi_groupbysupplier: TMenuItem
      Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1091
    end
    object mi_groupbyholcode: TMenuItem
      Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1075#1086#1083'. '#1082#1086#1076#1091
    end
    object aFilterType1: TMenuItem
      Caption = #1060#1080#1083#1100#1090#1088#1072#1094#1080#1103' '#1087#1086' '#1090#1080#1087#1072#1084
      ShortCut = 16416
    end
    object N16: TMenuItem
      Caption = '-'
    end
    object N17: TMenuItem
      Caption = #1056#1072#1079#1075#1088#1091#1087#1087#1080#1088#1086#1074#1072#1090#1100
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mnClone: TMenuItem
      Caption = #1050#1083#1086#1085#1080#1088#1086#1074#1072#1090#1100
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082'...'
    end
    object N3: TMenuItem
      Caption = '-'
      Visible = False
    end
    object Action71: TMenuItem
      Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1080
      Checked = True
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Caption = #1042#1089#1077#1084' '#1074#1099#1073#1088#1072#1085#1085#1099#1084' '#1087#1088#1086#1089#1090#1072#1074#1080#1090#1100'...'
      Enabled = False
    end
    object mnSet8March: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1085#1085#1099#1084' '#1091#1089#1090#1072#1085#1086#1074#1080#1090#1100'/'#1091#1073#1088#1072#1090#1100' 8-'#1077' '#1084#1072#1088#1090#1072
      Enabled = False
    end
    object nClone: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1087#1086#1079#1080#1094#1080#1102
      Enabled = False
    end
    object nFields: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1086#1083#1077#1081
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object mnLoadCell: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1103#1095#1077#1081#1082#1091' '#1074' '#1073#1091#1092#1077#1088
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 128
    Top = 184
  end
  object odInvoice: TOpenDialog
    DefaultExt = 'sql'
    Filter = #1060#1072#1081#1083#1099' SQL (*.sql)|*.sql'
    Left = 168
    Top = 184
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 320
    Top = 160
    PixelsPerInch = 96
    object st_suplier: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 16773862
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
    end
    object st_8pt: TcxStyle
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
    object stKovalev: TcxStyle
      AssignedValues = [svColor]
      Color = 6993407
    end
    object st8March: TcxStyle
      AssignedValues = [svColor]
      Color = 12713921
    end
  end
  object cxImageList1: TcxImageList
    Height = 32
    Width = 32
    Left = 208
    Top = 184
    Bitmap = {
      494C010127002C00680120002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004001000001002000000000000080
      0200000000000000000000000000000000000000000000000000000000000000
      000000000000000000000101011A0B0B0B743B3D3DB4777777D5838383DA5152
      52C21618188D0202023700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010137181818CF04040478000000000000000000000000000000000000
      000000000000000000000101011E0C0D0D783F4141B77A7A7AD6838383DA4E50
      4FC0141515890202023200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010137181818CF04040478000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000010101081617168BD7DEDAF8BFEAD5FF89DAB3FF6AD09FFF63CE9BFF80D7
      ACFFACE4C8FFE4F4ECFF454646BB010101240000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0137252627F054514DFF2E2E2FFF030303780000000000000000000000000000
      00000101010B1B1B1B93DDE3E0FABCE9D3FF87D9B2FF68D09EFF64CE9BFF81D7
      ADFFAEE5CAFFE3F2EAFE3B3D3CB40101011F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0137252627F054514DFF2E2E2FFF030303780000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0114616262CBC3EBD5FF5CCB95FF30C283FF27C082FF27C183FF27C183FF27C0
      82FF2AC081FF47C68AFF9FDFBEFFBDC0BFF00202024100000000000000000000
      0000000000000000000000000000000000000000000000000000010101372526
      27F069655EFF4F4D49FF252627FF0D0E0FCF0000000000000000000000000101
      01196F7070D2BDE8D1FF58CA93FF2FC182FF27C082FF27C183FF27C183FF27C0
      82FF2BC081FF49C68CFFA5E1C2FFB3B5B3EC0202023800000000000000000000
      0000000000000000000000000000000000000000000000000000010101372526
      27F069655EFF4F4D49FF252627FF0D0E0FCF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101065B5C
      5CC8A8E0BFFF3AC284FF27C082FF27C183FF33C48AFF83DAB3FF84D9B2FF57C4
      82FF27C183FF27C183FF2EC081FF7AD09EFFC5CAC6F30101012D000000000000
      0000000000000000000000000000000000000000000001010137252627F06965
      5EFF4F4D49FF252527FF232323EF0101013500000000000000000101010A6C6D
      6DD19FDDB8FF38C282FF27C082FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF27C183FF27C183FF30C182FF81D3A3FFB6BAB8EE01010125000000000000
      0000000000000000000000000000000000000000000001010137252627F06965
      5EFF4F4D49FF252527FF232323EF010101350000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000010111080C2E7
      CEFF38BF81FF27C183FF27C183FF27C183FF44C994FFFFFFFFFFFFFFFFFF91CB
      89FF27C183FF27C183FF27C183FF2CBF81FF88D3A3FF676867CF010101030000
      00000000000000000000000000000000000001010137252627F069655EFF4F4D
      49FF252527FF232323EF010101350000000000000000000000001617168DB9E4
      C7FF36BF80FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF27C183FF27C183FF27C183FF2EC081FF91D6AAFF535655C5000000000000
      00000000000000000000000000000000000001010137252627F069655EFF4F4D
      49FF252527FF232323EF01010135000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0102010101020000000000000000000000000000000000000000010101010101
      0105010101030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010110C6CAC7F351C1
      80FF27C082FF27C183FF27C183FF27C183FF44C994FFFFFFFFFFFFFFFFFF91CB
      89FF27C183FF27C183FF27C183FF27C183FF36BC78FFCBEAD3FF040404560000
      000000000000000000000000000001010138272728F168645EFF4F4D49FF2525
      27FF232323EF0101013500000000000000000000000001010118CFD5D1F74BBF
      7CFF27C082FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF27C183FF27C183FF27C183FF27C183FF38BD79FFD4EDDBFF030303490000
      000000000000000000000000000001010138272728F168645EFF4F4D49FF2525
      27FF232323EF0101013500000000000000000000000000000000000000000000
      000000000000000000000000000000000000010101060101011B030303410C0C
      0C730101015A0101010C000000000101010401010114020202331010106B2E2F
      2FA1101010800101012901010102000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000006060661B8E2C2FF38C0
      80FF27C183FF27C183FF27C183FF27C183FF45C994FFFFFFFFFFFFFFFFFF91CB
      89FF27C183FF27C183FF27C183FF27C183FF31C284FF7DCD93FF373A38B30000
      0000000000000000000001010138272728F168645EFF4F4D49FF252527FF2323
      23EF01010134000000000000000000000000000000000909096DB0E0BBFF36C0
      81FF27C183FF27C183FF27C183FF27C183FF28C183FF2FC286FF31C386FF29C1
      83FF27C183FF27C183FF27C183FF27C183FF31C284FF83D099FF2B2C2BA70000
      0000000000000000000001010138272728F168645EFF4F4D49FF252527FF2323
      23EF010101340000000000000000000000000000000000000000000000000000
      0000010101020101010D0202022B0F0F0F62444444A48C8986D7C4B19EF8CFC1
      B0FA4D4C4BC60101017D0302025A0F0A0A95616060CDA7A7A7F2BEBEBEFF9E9E
      9EFF9D9E9FFE535455D2060607600101010F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002223229D81CE93FF4BCB
      94FF40C891FF5ED0A2FF5ED0A2FF68D2A5FF8FDDBAFFFFFFFFFFFFFFFFFFB3D9
      A9FF70D4A9FF5ED0A2FF5ED0A2FF4DC68BFF4CCC97FF40BA6CFFB9B9BAEF0000
      00000000000001010138272728F168645EFF4F4D49FF252527FF232323EF0101
      013400000000000000000000000000000000000000002D2F2DAA76CA8BFF4BCB
      94FF40C891FF5BCF9FFF5BCF9FFF67D1A4FF81D7AFFF8BDBB5FF8DDBB6FF83D8
      B1FF6DD3A7FF5DD0A1FF5DD0A1FF47C587FF4CCC97FF4ABD73FF979798E30000
      00000000000001010138272728F168645EFF4F4D49FF252527FF232323EF0101
      0134000000000000000000000000000000000000000000000000030303090606
      063E2A2A2A84717170C1ADADA3EDB1B6A2FF838D77FF797255FFA2825EFFAC87
      59FFB89C79FF988E84F54B4341FE262222FFB9B9B8FFC0BFBFFFC4C4C3FFB0AF
      AFFF898989FF929393FF8A8B8CF7252626A40202022F01010103000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000424643BB67C480FF51CE
      9AFF85DDBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9D7A3FF51CE99FF39B767FFE5EEE7FF0101
      010E01010138272728F168645EFF4F4D49FF252527FF232323EF010101340000
      00000000000000000000000000000000000000000000575757C75EC17AFF51CE
      9AFF89DEBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA5D195FF52CF9CFF39B765FFEEEFEFFE0101
      010201010138272728F168645EFF4F4D49FF252527FF232323EF010101340000
      000000000000000000000000000000000000000000003837373BA89F99C2F4CD
      B1FBFDD0ACFFFDE9C9FFE6DAB3FFB2B792FF899A71FF617147FF4C5530FF5648
      2FFF473C2DFF282520FF161615FF252525FFBCBCBCFFC3C3C3FF979A98FFA9A9
      A9FF9C9B9BFF838383FF868787FF939394FF5A5B5CDB07070765010101110000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000434644BC67C078FF50CE
      99FF89DDB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9D7A3FF51CE98FF39B45FFFE3ECE4FF0202
      0248272728F168645DFF4F4D49FF252527FF222222EE01010134000000000000
      000000000000000000000000000000000000000000005A5A5AC95DBD70FF50CE
      99FF8CDDB9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA6D195FF52CF9CFF39B35DFFEDEEEEFE0102
      013C272728F168645DFF4F4D49FF252527FF222222EE01010134000000000000
      000000000000000000000000000000000000000000000303030637363577CDAB
      93EFF59F61FFEAA46BFFD2AC83FFAB9D83FF7A725CFF46463EFF30322FFF3B3C
      3CFF565757FF848484FFB2B2B2FFA6A6A6FF818181FFA6A6A6FF94B49EFFA4A8
      A3FFB5B3B1FF969595FF808080FF7F7F7FFF878888FF838484F7242424A60101
      0131010101030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000242524A17CC37AFF4CC8
      8CFF6FC47FFF93D39CFF97D4A0FF99D6A4FFA4DAAEFFFFFFFFFFFFFFFFFFBDDC
      AFFF99D6A3FF98D5A2FF94D39DFF7DC47CFF56C584FF3CAF4FFFDDDDDEFD292A
      2BF268645DFF4F4D49FF252527FF222122EE0101013300000000000000000000
      00000000000000000000000000000000000000000000303130AD72BF72FF4DC7
      8AFF70C57FFF92D29BFF97D4A0FF98D5A3FF94D4A0FF8FD29DFF8FD29DFF92D3
      9FFF98D5A3FF97D4A1FF92D29CFF76C277FF56C787FF45B256FFC9C9CAF82727
      28F168645DFF4F4D49FF252527FF222122EE0101013300000000000000000000
      00000000000000000000000000000000000015151523393939967B7B7BDE5548
      48FC665F5BFF514133FF373028FF3C3C3BFF5B5C5CFF888989FFB3B3B3FFACAC
      ACFF8F8F8FFF616161FF2E2E2EFF252525FF232323FF3B3B3BFFA09F9EFF8F8F
      8FFF878686FFB8B6B4FF969595FF7E7E7EFF7A7A7AFF7E7E7EFF8B8B8CFF5757
      57DB070707670101011200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000007070767AFD6A0FF4AAE
      47FF5EB55BFF5EBB68FF60BE72FF64C179FF7DCB8CFFFFFFFFFFFFFFFFFF9CCB
      88FF66C17AFF61BF74FF5EBC6BFF5EB75FFF55B04BFF72BC64FFB7B7B7FF5553
      4EFF4F4D49FF252527FF222122EE010101330000000000000000000000000000
      000000000000000000000000000000000000000000000A0B0A74A7D296FF4AAE
      47FF5EB55BFF5EBB68FF60BE72FF64C179FF68C27EFF6AC380FF6BC380FF69C3
      7EFF66C17AFF61BF74FF5EBC6BFF5EB75FFF55B14EFF7CC06DFFB0AFAFFF5553
      4EFF4F4D49FF252527FF222122EE010101330000000000000000000000000000
      000000000000000000000000000000000000848484B3C0C0C0FFC5C5C5FF5B5B
      5BFF5E5E5EFF878787FFB4B4B4FFB3B3B3FF9A9A9AFF737373FF464646FF3E3E
      3EFF3D3D3DFF3C3C3CFF3B3B3BFF393939FF373737FF353535FF40403FFF9694
      93FFB6B4B1FFB7B4B1FFBBB8B5FF9C9B9AFF7C7C7CFF787878FF767777FF8182
      82FF828283F81A1A1A8D01010109000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010115CCD1CBF74A9E
      1DFF5EAD3FFF5FB252FF5EB65EFF5EBA66FF74C57FFFFFFFFFFFFFFFFFFF9ACA
      85FF5EBA68FF5EB760FF5FB355FF5FAF45FF459B16FFBCDAB0FF8D8B8AFF2A2A
      2BFF242526FF222122EE01010133000000000000000000000000000000000000
      000000000000000000000000000000000000000000000101011ED2D9D0FA469B
      17FF5EAD3FFF5FB252FF5EB65EFF5EBA66FF5EBC6BFF5FBD6EFF5FBD6FFF5EBC
      6CFF5EBA68FF5EB760FF5FB355FF5FAF45FF459C16FFC6E0BCFF8A8887FF2A2A
      2BFF242526FF222122EE01010133000000000000000000000000000000000000
      00000000000000000000000000000000000051515161CFCFCFFEC6C6C6FFBABA
      BAFFADADADFF7D7D7DFF555555FF505050FF515151FF525252FF525252FF5252
      52FF525252FF515151FF4F4F4FFF4E4E4EFF4B4B4BFF494949FF4F4F4FFF5858
      58FF8B8A89FFB7B4B1FFBAB7B3FFBEBAB6FFA7A5A3FF7D7D7DFF787878FF7676
      76FF7B7B7BFF484849A000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001516158DACD2
      9AFF499918FF60AA38FF60AE42FF5FB04CFF75BD6AFFFFFFFFFFFFFFFFFF9BC8
      81FF5FB14EFF5FAE44FF60AB3AFF53A024FF70AF4DFFE4E3E2FFD7D1CAFF6E6C
      6AFE171717E10101013300000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1E1C99A1CC
      8DFF499918FF60AA38FF60AE42FF5FB04CFF5FB253FF5FB356FF5FB457FF5FB2
      54FF5FB14EFF5FAE44FF60AB3AFF53A024FF79B459FFE5E4E2FFD7D1CAFF6E6C
      6AFE171717E10101013300000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004C4C4C66839088F86465
      64FF8D8C8CFF7B7A7AFF606060FF626262FF646464FF656565FF666666FF6767
      67FF666666FF656565FF646464FF626262FF606060FF5D5D5DFF676767FF6868
      68FF686868FF7F7F7EFFB2AFACFFBDB9B5FFC0BCB7FFB4B1AEFF848483FF7A7A
      7AFF797979FF4C4C4C9F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000101011AD3D3
      D2FB86BC6FFF4C981BFF60A534FF60A835FF6BB045FFB1D59BFFB1D59BFF80B8
      5BFF60A835FF61A635FF549D25FF5BA031FFE1E8DFFFC9C5BEFFB7B3AEF60101
      012A000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000101011FD7D6
      D5FC81B663FF4C971AFF60A534FF60A835FF60AA37FF60AA39FF60AB39FF60AA
      37FF60A835FF61A635FF549D25FF60A439FFE6EBE4FFC9C4BDFFB7B3AEF60101
      012A000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1D1C2D8988
      87C8B0AFADFFB1AFADFF9F9E9DFF7E7D7DFF777777FF797979FF7A7A7AFF7B7B
      7BFF7B7B7BFF7A7A7AFF787878FF767676FF737373FF747474FF7B7B7BFF7B7B
      7BFF7B7B7BFF7B7B7BFF7F7F7FFFA6A3A1FFC0BCB7FFC4BEB9FFC2BCB7FF9795
      93FF7D7D7DFF4D4D4D9F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010102363431B9D1CE
      C8FFEAE9E9FFA0C88BFF489217FF559B26FF60A234FF61A335FF61A335FF60A3
      34FF599D2BFF479115FF78AF57FFE1E7DFFFCDCAC4FFDAD7D2FF252421AB0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010102363431B9D1CE
      C8FFE8E8E7FF99C483FF469115FF559B26FF60A234FF61A335FF61A335FF60A3
      34FF599D2BFF479115FF7EB35FFFE4EAE3FFCDC9C3FFDAD7D2FF252421AB0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      020246454462A5A29FE5B8B5B2FFB7B4B1FFA2A09EFF8D8D8DFF8C8C8CFF8E8E
      8EFF8E8E8EFF8D8D8DFF8C8C8CFF898989FF868686FF8C8C8CFF8C8C8CFF8C8C
      8CFF8C8C8CFF8C8C8CFF8C8C8CFF8C8C8CFF9C9B9AFFBEB9B4FFC6BFBAFFC0BB
      B6FFB0ACA7FF5756559F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000707066BD8D5CFFFDAD6
      D0FFF5F4F2FFE9E8E8FFDCE6D9FF94C07FFF63A13CFF49911BFF469018FF589A
      2DFF81B465FFC7DBBDFFE5E5E5FFECEAE9FFF0EEEBFFC3BDB3FFA8A6A0F10101
      0119000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000707066BD8D5CFFFDAD6
      D0FFF4F3F1FFE7E7E7FFD9E4D5FF91BE7AFF61A039FF48911AFF479018FF5A9B
      30FF83B668FFCBDEC3FFE6E6E5FFEDEBEAFFF0EEEBFFC3BDB3FFA8A6A0F10101
      0119000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000808080A5A585779B2AEA9EDC0BBB7FFBDB9B5FFADABA8FFA2A2
      A2FFA2A2A2FFA2A2A2FFA0A0A0FF9D9D9DFF9C9C9CFFA2A2A2FF9E9E9EFF9E9E
      9EFF9E9E9EFF9E9E9EFF9E9E9EFF9E9E9EFF9E9E9EFFA4A3A3FFAFADACFF8989
      88DD42413F5A1817172000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010101088D8B86E8C6C0B7FFF4F2
      F0FFF5F4F2FFF7F6F5FFF1F0EFFFE9E9E9FFEAE9EAFFE9E9EAFFE9E9E9FFE9E9
      E9FFE7E7E7FFEBEAE9FFF1F0EDFFEDEAE7FFEEEBE8FFE7E3DEFFCEC9C2FF1514
      1392000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010101088D8B86E8C6C0B7FFF4F2
      F0FFF5F4F2FFF7F6F5FFF0EFEEFFE9E8E8FFE9E9E9FFE9E9EAFFE9E9E9FFEAEA
      EAFFE8E7E7FFECEBEAFFF1F0EDFFEDEAE7FFEEEBE8FFE7E3DEFFCEC9C2FF1514
      1392000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000B0B0A0D605D5A7BB9B1ACEAC9C1BBFFC7C0
      BAFFBDB9B7FFB6B6B6FFB4B4B4FFB0B0B0FFAFAFAFFFAEAEAEFFB0B0B0FFB0B0
      B0FFB8B8B8FFC3C3C3FFCECECEFFD8D8D8FFE2E2E2FFD9D9D9FFBCBCBCFF7376
      76F3050505090000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040357D4D1CAFFE2DED9FFF2F0
      EEFFF4F3F1FFF7F6F5FFFAF9F7FFFBFAFAFFFBFBFBFFFCFCFBFFFBFAFAFFFAF9
      F9FFF9F8F6FFF7F6F5FFF3F1EFFFEEEBE8FFE9E6E1FFEAE7E3FFC2BCB2FFA29E
      99EF010101070000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040357D4D1CAFFE2DED9FFF2F0
      EEFFF4F3F1FFF7F6F5FFFAF9F7FFFBFAFAFFFBFBFBFFFCFCFBFFFBFAFAFFFAF9
      F9FFF9F8F6FFF7F6F5FFF3F1EFFFEEEBE8FFE9E6E1FFEAE7E3FFC2BCB2FFA29E
      99EF010101070000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000909080A5B585470B9B2
      ABE2D1C9C0FFD0C9C1FFC2BFBBF7A3A3A3DCC4C4C4FFBEBEBEFFE3E3E3FFEEEE
      EEFFF2F2F2FFF2F2F2FFF1F1F1FFEEEEEEFFEBEBEBFFE6E6E6FFC7C7C7FF8888
      88FF1E2121530000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001D1C1B9ECBC7BFFFECE9E5FFF0ED
      EAFFF5F3F1FFF8F7F6FFFAF9F8FFFBFAFAFFFCFCFBFFFEFDFDFFFBFBFBFFFBFA
      FAFFF9F8F7FFF7F6F5FFF3F2F0FFEEECE8FFE9E6E1FFE6E2DDFFD4CFC7FFD4D1
      CBFF0202023E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001D1C1B9ECBC7BFFFECE9E5FFF0ED
      EAFFF5F3F1FFF8F7F6FFFAF9F8FFFBFAFAFFFCFCFBFFFEFDFDFFFBFBFBFFFBFA
      FAFFF9F8F7FFF7F6F5FFF3F2F0FFEEECE8FFE9E6E1FFE6E2DDFFD4CFC7FFD4D1
      CBFF0202023E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000505
      05053D3B38492423212B040404040A0A0A0CC0C0C0F1BDBDBDFFF1F1F1FFF4F4
      F4FFF7F7F7FFF7F7F7FFF4F4F4FFF1F1F1FFEDEDEDFFE9E9E9FFDADADAFF9B9B
      9BFF404444AB0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004D4C48C9C7C2B9FFEAE7E3FFEFED
      EAFFF4F3F0FFF7F6F5FFF9F8F7FFFBFAFAFFFCFBFBFFFCFCFCFFFBFBFBFFFBFA
      FAFFF9F8F7FFF7F6F5FFF3F1EFFFEEEBE8FFE9E5E1FFE4E0DAFFDFDAD4FFD0CC
      C5FF070606690000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004D4C48C9C7C2B9FFEAE7E3FFEFED
      EAFFF4F3F0FFF7F6F5FFF9F8F7FFFBFAFAFFFCFBFBFFFCFCFCFFFBFBFBFFFBFA
      FAFFF9F8F7FFF7F6F5FFF3F1EFFFEEEBE8FFE9E5E1FFE4E0DAFFDFDAD4FFD0CC
      C5FF070606690000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006E6E6E92B4B4B4FFF2F2F2FFF7F7
      F7FFFAFAFAFFFAFAFAFFF7F7F7FFF2F2F2FFEEEEEEFFEAEAEAFFE6E6E6FFD1D1
      D1FF8D8E8EF70708081000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006F6D69DBC5BFB6FFE9E5E1FFEDEB
      E7FFF2F1EEFFF7F6F5FFFAF9F8FFFBFBFAFFFCFBFBFFFCFBFBFFFCFBFBFFFBFA
      F9FFFAF9F8FFF8F7F6FFF4F2EFFFECEAE6FFE8E4DFFFE3DFD9FFDED9D2FFCDC9
      C1FF0C0C0B7B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006F6D69DBC5BFB6FFE9E5E1FFEDEB
      E7FFF2F1EEFFF7F6F5FFFAF9F8FFFBFBFAFFFCFBFBFFFCFBFBFFFCFBFBFFFBFA
      F9FFFAF9F8FFF8F7F6FFF4F2EFFFECEAE6FFE8E4DFFFE3DFD9FFDED9D2FFCDC9
      C1FF0C0C0B7B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001E1E1E29ABABABFEF2F2F2FFF7F7
      F7FFFBFBFBFFFBFBFBFFF7F7F7FFF2F2F2FFEEEEEEFFEAEAEAFFE6E6E6FFE1E1
      E1FFC0BDBDFF2C2F2F6700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000605E5AD4C5C0B6FFE7E3DEFFECE8
      E5FFF0EEEBFFF8F7F6FFFAFAF9FFFBFAF9FFFBFBFAFFFBFBFAFFFBFBFAFFFBFA
      F9FFFAF9F9FFF8F7F5FFF5F4F2FFF0EDEAFFE6E2DDFFE1DDD7FFDCD7D1FFCECA
      C3FF0A0909740000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000605E5AD4C5C0B6FFE7E3DEFFECE8
      E5FFF0EEEBFFF8F7F6FFFAFAF9FFFBFAF9FFFBFBFAFFFBFBFAFFFBFBFAFFFBFA
      F9FFFAF9F9FFF8F7F5FFF5F4F2FFF0EDEAFFE6E2DDFFE1DDD7FFDCD7D1FFCECA
      C3FF0A0909740000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E8E8E9EF1F1F1FFF5F5
      F5FFF8F8F8FFF8F8F8FFF5F5F5FFF1F1F1FFEDEDEDFFE9E9E9FFE5E5E5FFE1E1
      E1FFD5D4D4FF676868CA00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000302F2DB3C8C3BAFFE4E0DBFFE9E6
      E1FFF2F0EDFFF8F7F6FFFAF9F8FFFBFAFAFFFBFBFAFFFCFBFBFFFBFBFAFFFBFA
      F9FFF9F9F7FFF8F7F5FFF6F4F2FFF4F2F0FFE8E5E0FFDFDAD4FFD6D1C9FFD3D0
      C9FF030303530000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000302F2DB3C8C3BAFFE4E0DBFFE9E6
      E1FFF2F0EDFFF8F7F6FFFAF9F8FFFBFAFAFFFBFBFAFFFCFBFBFFFBFBFAFFFBFA
      F9FFF9F9F7FFF8F7F5FFF6F4F2FFF4F2F0FFE8E5E0FFDFDAD4FFD6D1C9FFD3D0
      C9FF030303530000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000035353538EFEFEFFFF2F2
      F2FFF3F3F3FFF3F3F3FFF2F2F2FFEFEFEFFFEBEBEBFFE8E8E8FFE4E4E4FFE0E0
      E0FFDDDDDDFFA7A5A5FF16171732000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000A0A0978CFCBC4FFE0DCD6FFE5E2
      DDFFF6F5F3FFF8F7F6FFF9F9F8FFFAFAF9FFFBFAF9FFFBFBFAFFFBFAF9FFFAF9
      F8FFF9F8F7FFF8F7F6FFF7F6F4FFF5F4F2FFEDEBE7FFDDD7D1FFC2BBB1FFD0CD
      C7FD010101190000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000A0A0978CFCBC4FFE0DCD6FFE5E2
      DDFFF6F5F3FFF8F7F6FFF9F9F8FFFAFAF9FFFBFAF9FFFBFBFAFFFBFAF9FFFAF9
      F8FFF9F8F7FFF8F7F6FFF7F6F4FFF5F4F2FFEDEBE7FFDDD7D1FFC2BBB1FFD0CD
      C7FD010101190000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2C2C2D1EEEE
      EEFFF0F0F0FFF0F0F0FFEEEEEEFFECECECFFE9E9E9FFE6E6E6FFE2E2E2FFDEDE
      DEFFDDDDDDFFC9C7C7FF4B4C4C9C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000001010122D2CEC8FDC6C0B7FFE2DE
      D8FFF8F7F6FFFAF9F8FFFAF9F8FFFBFAF9FFFBFBFAFFFBFBFAFFFBFAF9FFFBFA
      F9FFFAF9F8FFF9F9F7FFF9F8F6FFF8F7F5FFF0EDEAFFD9D4CCFFC3BDB3FF403E
      3CC0000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000001010122D2CEC8FDC6C0B7FFE2DE
      D8FFF8F7F6FFFAF9F8FFFAF9F8FFFBFAF9FFFBFBFAFFFBFBFAFFFBFAF9FFFBFA
      F9FFFAF9F8FFF9F9F7FFF9F8F6FFF8F7F5FFF0EDEAFFD9D4CCFFC3BDB3FF403E
      3CC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000060606068EAEA
      EAFFEBEBEBFFEBEBEBFFEAEAEAFFE9E9E9FFE6E6E6FFE3E3E3FFE0E0E0FFDDDD
      DDFFDDDDDDFFDBDBDBFF8A8888F60A0A0A150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000242321A8CAC6BEFFDBD6
      D0FFF5F3F1FFFBFBFAFFFBFBFAFFFCFBFBFFFCFCFBFFFCFCFBFFFCFBFBFFFCFB
      FBFFFBFBFAFFFBFBFAFFFBFAF9FFFAFAF9FFEAE7E2FFC4BCB2FFD9D6D1FF0202
      0248000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000242321A8CAC6BEFFDBD6
      D0FFF5F3F1FFFBFBFAFFFBFBFAFFFCFBFBFFFCFCFBFFFCFCFBFFFCFBFBFFFCFB
      FBFFFBFBFAFFFBFBFAFFFBFAF9FFFAFAF9FFEAE7E2FFC4BCB2FFD9D6D1FF0202
      0248000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000B0B0B0BD6D6
      D6EDE7E7E7FFE7E7E7FFE6E6E6FFE4E4E4FFDDDDDDFFC8C8C8F3A4A4A4CF8080
      80A95D5D5D833C3C3C5C1E1D1D33020202030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000101011C9D9A94EDBEB8
      AEFFE6E2DDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFBFBFAFFD1CBC2FFCECAC3FF262422AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000101011C9D9A94EDBEB8
      AEFFE6E2DDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFBFBFAFFD1CBC2FFCECAC3FF262422AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F4F
      4F5A858585A26B6B6B824F4F4F603232323D1515151900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000002020245C5C2
      BDF9BEB7ADFFE7E4DFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFCFBFBFFD2CCC4FFCBC6BEFF575551D00101010E0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000002020245C5C2
      BDF9BEB7ADFFE7E4DFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFCFBFBFFD2CCC4FFCBC6BEFF575551D00101010E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      02459D9A93EDC9C5BDFFC9C4BBFFF1EFECFFFDFDFDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCFBFBFFE7E4DFFFC0BAB0FFD6D3CDFF3F3C39C001010112000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      02459D9A93EDC9C5BDFFC9C4BBFFF1EFECFFFDFDFDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCFBFBFFE7E4DFFFC0BAB0FFD6D3CDFF3F3C39C001010112000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000101011C242421A7CECBC6FCCFCAC3FFC5C0B6FFC6C0B7FFC6C1B8FFC6C0
      B7FFC7C2B9FFD3D0C9FF96938DEB090808710101010300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000101011C242421A7CECBC6FCCFCAC3FFC5C0B6FFC6C0B7FFC6C1B8FFC6C0
      B7FFC7C2B9FFD3D0C9FF96938DEB090808710101010300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000010101210A0A0977302F2CB2605E5AD46F6D69DB4F4D
      4ACA1E1E1C9F0404045A0101010A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000010101210A0A0977302F2CB2605E5AD46F6D69DB4F4D
      4ACA1E1E1C9F0404045A0101010A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101010202
      02360D0D0D782D2D2DA75E5E5FCA7B7B7BD87B7B7BD85D5D5ECA2D2D2DA70D0D
      0D78020202360101010100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101010101
      0106010101140101012701010132010101350101013501010135010101350101
      0135010101350101013501010135010101350101013501010135010101350101
      0135010101350101013501010135010101350101013501010135010101350101
      0132010101270101011401010106010101010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010137181818CF04040478000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000101010E0101011D0101011C0101010B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010E0D0D0D788A8A8BDEF9F9
      F9FFFDFDFDFFFEFEFEFFFDFDFDFFECEFFBFFECEFFBFFFDFDFDFFFEFEFEFFFCFC
      FCFFF7F7F7FF878888DE0C0D0D780101010E0000000000000000000000000000
      0000000000000000000000000000000000000000000001010101010101040101
      01120101012C0201024702010255020102580201025802010258020102580201
      0258020102580201025802010258020102580201025802010258020102580201
      0258020102580201025802010258020102580201025802010258020102580201
      0255020102470101012C01010113010101060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0137252627F054514DFF2E2E2FFF030303780000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101130805
      036A331D0BB3925419E9CF7B23FED48023FFD48023FFCE7A23FE834B17E32B18
      09AB0504025F0101010C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000007070763AEAEAEEBFCFCFCFFF4F6FCFFA9C0
      F3FF6791EBFF3270E5FF1759E1FF1656E1FF1656E1FF1759E1FF3270E5FF6791
      EBFFA9BFF3FFF4F6FCFFFBFBFBFFABABABEB0607076300000000000000000000
      00000000000000000000000000000000000000000000010101020101010E0101
      0129A74A1FFFA94C1EFFAA4D1EFFAB4D1DFFAB4D1DFFAC4E1DFFAC4E1DFFAC4E
      1DFFAC4E1DFFAC4E1DFFAC4E1DFFAC4E1DFFAC4E1DFFAC4E1DFFAC4E1DFFAC4E
      1DFFAC4E1DFFAC4E1DFFAC4E1DFFAB4D1DFFAA4D1EFFA94C1EFFA64A1FFFA247
      21FF020102640201024B0101012C010101150000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101372526
      27F069655EFF4F4D49FF252627FF0D0E0FCF0000000000000000000000000000
      00000000000000000000000000000000000001010116190E0694B66920F6D784
      22FFDD8F20FFE2971EFFE49C1DFFE59F1DFFE59F1DFFE49C1DFFE1961EFFDD8E
      20FFD78322FFA45E1DF0100904840101010D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101010F373737B0FBFBFBFFF3F5FCFF88A4EFFF265FE2FF1946
      DEFF1B39DCFF1D2EDBFF1D2EDBFF1D2FDBFF1D2FDBFF1D2EDBFF1D2EDBFF1B38
      DCFF1946DEFF265EE2FF88A4EEFFF3F5FCFFF8F8F8FF353535B00101010F0000
      00000000000000000000000000000000000000000000010101060101011BAB4D
      1EFFD27F41FFD68142FFD88243FFD88343FFD98443FFB3531BFF9E969EFF9E96
      9EFFA49DA4FFB0A8B0FFBFB7BFFFCEC6CEFFDCD4DCFFE2DAE2FFE5DEE5FFE8E1
      E8FFE8E1E8FFE8E1E8FFB3531BFFD88343FFD78143FFD48143FFD07E42FFCA78
      41FFA34820FF0201026402010247010101270000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010137252627F06965
      5EFF4F4D49FF252527FF232323EF010101350000000000000000000000000000
      0000000000000000000000000000040302589C581DEDD88521FFE1951FFFE7A0
      1DFFEBA81BFFEEAD1BFFEFB01AFFF0B11AFFF0B11AFFEFAF1AFFEEAD1BFFEBA7
      1CFFE69F1DFFE0931FFFD78322FF814817E20202024300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000010101186C6C6DD1FDFDFDFFC4CFF6FF3261E2FF1B3FDDFF1D2FDBFF1D31
      DBFF1D33DBFF1D36DCFF1D37DCFF1D38DCFF1D38DCFF1D37DCFF1D35DCFF1D33
      DBFF1D30DBFF1D2FDBFF1B3EDDFF3360E2FFC4CFF6FFFBFBFBFF686969D10101
      0118000000000000000000000000000000000000000001010107AD4F1DFFD781
      40FFDC8440FFDE8841FFE18942FFE18A43FFE18B43FFB95719FFA39EA3FF524E
      52FF514D51FF524E52FFC5C1C5FFD5D1D5FFE4DFE4FFEBE6EBFFEEEAEEFFF1ED
      F1FFF1EDF1FFF1EDF1FFB95719FFE18A43FFE08943FFDD8642FFD88241FFD27F
      41FFCB7940FFA24721FF02010255010101320000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000001010137252627F069655EFF4F4D
      49FF252527FF232323EF01010135000000000000000000000000000000000000
      00000000000001010101110A0587CE7924FEDD8E20FFE69E1EFFECA81CFFF0AE
      1BFFF3B21AFFF5B41AFFF6B51AFFF6B51AFFF6B51AFFF6B51AFFF4B41AFFF3B2
      1BFFF0AE1BFFECA71CFFE59C1EFFDC8B21FFC57120FB0805036B000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      010F6C6C6DD1FDFDFDFFA1B1F1FF1D46DEFF1D32DBFF1D31DBFF1D35DBFF1C39
      DCFF1C3BDCFF1C3DDDFF1C3FDDFF1C3FDDFF1C3FDDFF1C3FDDFF1C3DDCFF1C3B
      DCFF1C38DCFF1D34DBFF1D30DBFF1D31DBFF1D45DEFFA1B1F1FFFCFCFCFF6768
      69D10101010F0000000000000000000000000000000001010108B3531BFFDE86
      3FFFE38A40FFE58D41FFE78F42FFE78F43FFE79043FFBE5A17FFA7A4A7FF4340
      43FF434043FF434043FFCAC8CAFFDBD9DBFFEAE8EAFFF1EFF1FFF5F3F5FFF8F6
      F8FFF8F6F8FFF8F6F8FFBE5A17FFE78F42FFE68E42FFE38C41FFDF8740FFD882
      40FFD07D3FFFA64A1FFF02010258010101350000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010138272728F168645EFF4F4D49FF2525
      27FF232323EF0101013500000000000000000000000000000000000000000000
      000000000000130B058AD37D24FFDF9020FFE9A01DFFEFAA1CFFF3AF1CFFF6B1
      1CFFE7B52FFFB3BB6CFF94C090FF8AC29FFF8DC097FFA5BD7CFFD3B848FFF7B3
      1DFFF5B11CFFF2AE1CFFEEA91CFFE89E1EFFDE8E20FFCD7724FE0805036B0000
      0000000000000000000000000000000000000000000000000000000000003737
      37B0FDFDFDFFA1AFF1FF1C3FDDFF1D2FDBFF1D33DBFF1C38DCFF1C3CDCFF1C40
      DDFF1C42DDFF1B44DEFF1B45DEFF1B46DEFF1B46DEFF1B45DEFF1B44DDFF1C42
      DDFF1C3FDDFF1C3BDCFF1D37DCFF1D32DBFF1D2EDBFF1C3DDDFFA1AEF0FFFBFB
      FBFF343435B00000000000000000000000000000000001010108B75619FFE48A
      3EFFE78D3FFFE99040FFEB9141FFEB9242FFEB9242FFC05C16FFA9A8A9FF4544
      45FF464546FF454445FFCDCCCDFFDEDDDEFFEEEDEEFFF5F4F5FFF9F8F9FFFCFB
      FCFFFCFBFCFFFCFBFCFFC05C16FFEB9242FFEA9141FFE78E40FFE38A3FFFDC84
      3FFFD4803EFFA94C1EFF02010258010101350000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001010138272728F168645EFF4F4D49FF252527FF2323
      23EF010101340000000000000000000000000000000000000000000000000000
      00000504025FCD7525FEDE8D21FFE99E1EFFEFA71DFFF4AC1DFFE5B133FF93C4
      A2FF76D6F0FF87DEF6FF91E0F6FF92E1F7FF90E0F6FF84DDF5FF73D7F4FF72CA
      D0FFB4B96DFFF6AE1FFFF4AC1DFFEFA61DFFE89C1FFFDD8A21FFC36D21FB0202
      024300000000000000000000000000000000000000000000000007070763FBFB
      FBFFC5CCF5FF1E3CDDFF1D2FDBFF1D34DBFF1C3ADCFF1C3EDDFF536CDEFF2437
      B6FF1B47DDFF1A4ADEFF1A4BDFFF1A4CDFFF1A4CDFFF1A4BDFFF1A49DEFF1B47
      DEFF234ADEFF5462C6FF1C36CCFF1C38DCFF1D32DBFF1D2DDBFF1E3BDDFFC5CB
      F5FFF6F6F6FF0606076300000000000000000000000001010108B95719FFE68C
      3DFFEA903EFFEB913FFFEC9240FFED9341FFED9442FFC25D16FFAAAAAAFF4342
      43FF434243FF434243FFCFCFCFFFE0E0E0FFF0F0F0FFF7F7F7FFFBFBFBFFFEFE
      FEFFFEFEFEFFFEFEFEFFC25D16FFED9341FFEB9240FFE9903FFFE68C3EFFDE86
      3EFFD6813DFFAA4D1EFF02010258010101350000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001010138272728F168645EFF4F4D49FF252527FF232323EF0101
      0134000000000000000000000000000000000000000000000000000000000101
      011DA7591FF2DB8523FFE79820FFEFA31FFFF4A81FFFCBB254FF7ED4E3FF91E0
      F6FF92E1F7FF92E1F7FF92E1F7FF92E1F7FF92E1F7FF92E1F7FF91E0F6FF8EDF
      F6FF77D8F4FF7FC4B6FFECAC2DFFF3A81FFFEEA21FFFE69620FFD98223FF7F43
      19E20101010D000000000000000000000000000000000101010EAEAEAEEBF3F4
      FCFF364CDFFF1D2FDBFF1D33DBFF1C3ADCFF1C3FDDFF637CE5FFF9FAFDFFC0C2
      E3FF2439B5FF194FDEFF1951DFFF1952E0FF1952E0FF1951DFFF194FDFFF2252
      DFFFBFCAF3FFF9FAFCFF646ABCFF1C37CCFF1C38DCFF1D31DBFF1D2EDBFF364B
      DFFFF3F4FCFFA7A7A8EB0101010E000000000000000001010108BB5818FFE78D
      3CFFEA8F3DFFEB913EFFEE933FFFEE943FFFEE9440FFC35E16FFABABABFF5454
      54FF535353FF545454FFD0D0D0FFE1E1E1FFF1F1F1FFF8F8F8FFFCFCFCFFFFFF
      FFFFFFFFFFFFFFFFFFFFC35E16FFEE9440FFEC923FFFEA903EFFE68D3DFFE087
      3DFFD7813CFFAB4D1DFF02010258010101350000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010138272728F168645EFF4F4D49FF252527FF232323EF010101340000
      0000000000000000000000000000000000000000000000000000000000002312
      08A3D57C25FFE38F22FFEC9D20FFF3A320FFCDAE52FF7CD6ECFF7CD9F4FF81CF
      D6FF8DC8BAFF8EC6B4FF81CAC7FF72D4EEFF89DEF6FF91E0F6FF8EDFF6FF85DC
      F5FF7BD9F4FF6CD4F3FF72C4C4FFF2A628FFF2A220FFE39E2BFFDB8F2AFFD379
      25FF10090583000000000000000000000000000000000D0D0D78FCFCFCFF8A93
      ECFF1D30DBFF1D31DBFF1C38DCFF1C3EDDFF637CE5FFF9FAFDFFFFFFFFFFFFFF
      FFFFC0C2E3FF233CB5FF1756DFFF1758E1FF1758E1FF1757E0FF1F5AE0FFBFCC
      F3FFFFFFFFFFFFFFFFFFF9FAFCFF646ABCFF1C36CCFF1D36DCFF1D2FDBFF1D2E
      DBFF8A92ECFFF8F8F9FF0C0C0C78000000000000000001010108BB5918FFE88D
      3BFFEA903CFFEC913CFFED933DFFEE933EFFEE933FFFC35E16FFABABABFFABAB
      ABFFB2B2B2FFBFBFBFFFD0D0D0FFE1E1E1FFF1F1F1FFF8F8F8FFFCFCFCFFFFFF
      FFFFFFFFFFFFFFFFFFFFC35E16FFEE933EFFED923DFFEA8F3DFFE68C3CFFE087
      3BFFD8813BFFAC4E1DFF02010258010101350000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0138272728F168645DFF4F4D49FF252527FF222222EE01010134000000000000
      000000000000000000000000000000000000000000000000000001010120C165
      24FBDC8224FFE89422FFF09D22FFEEA22DFF94B997FFBFB26EFFF0AB3AFFFFAA
      2DFFFFAC2FFFFFAD30FFFFAD30FFF2AF3EFFA1BC90FF78D6EFFF85DDF5FF7CD9
      F4FF6ED5F3FF5FD1F2FF52CDF1FF9FB586FFBDAD62FF56C4D7FFE0942AFFDA81
      25FF9D5220EF0101010C0000000000000000010101018A8A8BDEF4F4FCFF2C38
      DDFF1D2EDBFF1D35DBFF1C3CDCFF5370E5FFF9FAFDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC0C2E3FF223EB5FF165CE0FF165DE2FF1E60E1FFBECEF3FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FAFCFF5362C7FF1C3BDCFF1D33DBFF1E2C
      DBFF2C36DCFFF4F4FCFF838384DE010101010000000001010108BB5918FFE88C
      3AFFEA8F3AFFEC903BFFED923CFFED923CFFED923DFFC35E16FFC35E16FFC35E
      16FFC35E16FFC35E16FFC35E16FFC35E16FFC35E16FFC35E16FFC35E16FFC35E
      16FFC35E16FFC35E16FFC35E16FFED923CFFEC903CFFEA8E3BFFE68B3AFFE086
      3AFFD8813BFFAC4E1DFF02010258010101350000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101392727
      28F168645DFF4F4D49FF252527FF222122EE0101013300000000000000000000
      00000000000000000000000000000000000000000000000000000D07047ED275
      27FFE18724FFEC9423FFF49A24FFFA9D25FFFE9F27FFFFA32CFFFFA62FFFFFA8
      32FFFFA933FFFFAA34FFFFAA34FFFFAA35FFFFAA35FFD2B161FF6FD0E6FF6FD5
      F3FF60D1F2FF53CDF1FF48CAF0FF46C8EBFF42C9F0FF54C3DAFFEB9323FFE085
      25FFD07127FF0503025E000000000000000002020236F9F9F9FFACAFF0FF1F2A
      DAFF2639DDFF1C39DCFF1C40DDFF234BDFFFBFCCF6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC0C2E3FF2240B6FF1D65E1FFBECFF3FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCAF3FF234ADEFF1C3EDDFF1D37DCFF2637
      DCFF1F29DAFFACAFEFFFF1F1F1FF020202360000000001010108BB5918FFE88C
      38FFEA8E38FFEC8F39FFED913AFFED913BFFED913BFFED8E35FFED8F37FFED8F
      37FFED9038FFED9038FFED9039FFED9039FFED913AFFED913AFFED913AFFED91
      3AFFED8F37FFED8F37FFED8E35FFED903AFFEC8F3AFFEA8D39FFE68A39FFE085
      38FFD88139FFAC4E1DFF02010258010101350000000000000000000000000000
      0000000000000000000000000000010101100202024806060668080808700505
      055F020202350101010300000000000000000000000001010103252423E65553
      4EFF4F4D49FF252527FF222122EE010101330000000000000000000000000000
      0000000000000000000000000000000000000000000000000000502812CAD779
      27FFE58825FFEF9225FFF69626FFFC9928FFFE9C2CFFFFA030FFFFA334FFFFA5
      35FFFFA637FFFFA637FFFFA638FFFFA738FFFFA738FFFFA638FFD0AE65FF5CCE
      EDFF53CEF1FF48CAF0FF42C9F0FF42C9F0FF42C9F0FF6DBCBEFFEE9125FFE387
      26FFD57627FF2A150AAB00000000000000000D0D0D78FDFDFDFF6D72E3FF2935
      DCFF3E52E1FF1C3BDCFF1C42DDFF1B48DEFF2153E0FFBECEF6FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C2E3FFBFC6E8FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFBECCF3FF2251DFFF1B47DEFF1C41DDFF1C3ADCFF3E50
      E1FF2934DBFF6D72E2FFF9F9F9FF0C0C0C780000000001010108BB5918FFE88A
      36FFEA8D37FFEC8E37FFED8F38FFED9038FFED9039FFED8E35FFED8F37FFED8F
      37FFED9038FFED9038FFED9039FFED9039FFED913AFFED913AFFED913AFFED91
      3AFFED8F37FFED8F37FFED8E35FFED8F38FFEC8E38FFEA8C37FFE68836FFE083
      36FFD88037FFAC4E1DFF02010258010101350000000000000000000000000000
      0000000000000202023C2F2E2CB3C8C4BEFBD4D1CAFFD1CDC6FFD1CDC6FFD2CE
      C8FFD5D1CBFF928F8BEA1111108A01010116000000000202024475726FFE2A2A
      2BFF242526FF222122EE01010133000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010108BB5D26FADA7B
      28FFE78727FFF08F27FFF0962FFFD0A551FFFF9A30FFFF9D34FFFFA037FFFFA2
      39FFFFA23AFFFFA23AFFFFA23AFFFFA23AFFFFA23AFFFFA23AFFFFA23AFF98B7
      9BFF49CBF0FF42C9F0FF42C9F0FF42C9F0FF42C9F0FF83B4A3FFEF8E27FFE686
      27FFD87828FF803D1CE300000000000000002E2E2EA8FEFEFEFF3A41D8FF3442
      DEFF495EE3FF2B4BDFFF1B44DEFF1A4ADEFF1950DFFF1F5BE1FFBECFF6FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFBECCF3FF2059E0FF1A4EDFFF1B48DEFF1C43DDFF2B49DFFF4A5C
      E3FF3440DEFF3A41D7FFFDFDFDFF2C2C2CA80000000001010108BB5918FFE889
      34FFEA8C35FFEC8D36FFED8E36FFED8F36FFED8F37FFED8E35FFED8F37FFED8F
      37FFED9038FFED9038FFED9039FFED9039FFED913AFFED913AFFED913AFFED91
      3AFFED8F37FFED8F37FFED8E35FFED8E36FFEC8D36FFEA8B35FFE68835FFE083
      35FFD88036FFAC4E1DFF02010258010101350000000000000000000000000101
      010A1C1B199ED5D2CDFECAC5BDFFCECAC2FFE7E4E0FFF1EFECFFF1EFECFFEEEB
      E8FFDCD8D2FFC7C1B9FFCFCBC4FF9E9B97EE2C2A27B49B978DF1D7D1CAFF6E6C
      6AFE171717E10101013300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010129CC6A2EFFDC7D
      2CFFE88528FFF18B29FFCC9F50FF03ECFEFF46D6C7FFB4B272FFFD9D3CFFFF9E
      3CFFFF9E3DFFFF9E3DFFFF9E3DFFFF9E3DFFFF9E3DFFF8A043FF9BB599FF4AC9
      ECFF43C9F0FF42C9F0FF42C9F0FF42C9F0FF42C9F0FF9DAA88FFF08A29FFE783
      28FFDB7C2EFFC6632EFE0101010A000000005C5C5CC9FDFDFDFF2029D1FF3B49
      E0FF4A5FE3FF4662E3FF224BDFFF1A4BDFFF194EDFFF1A46DEFF234BDFFFBFCB
      F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBFC9F3FF234ADEFF1A45DEFF1A4CDFFF1A4ADEFF2249DFFF4661E3FF4A5D
      E3FF3B48E0FF2029D0FFFDFDFDFF575757C90000000001010108BB5918FFE889
      33FFEA8C34FFEC8D35FFED8E35FFED8E35FFED8E35FFED8E35FFED8F37FFED8F
      37FFED9038FFED9038FFED9039FFED9039FFED913AFFED913AFFED913AFFED91
      3AFFED8F37FFED8F37FFED8E35FFED8E35FFEC8D35FFEA8A34FFE68834FFE083
      35FFD87F35FFAC4E1DFF020102580101013500000000000000000101010E4947
      43C8D3CFC9FFD2CDC6FFF4F2F0FFF8F7F6FFFAF9F8FFFAFAF9FFFAF9F8FFF9F8
      F7FFF8F6F5FFF3F2EFFFE9E5E1FFC3BEB5FFDAD7D2FFC3BDB3FFB7B3AEF60101
      012A000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000201013CCD6A31FFDE81
      35FFE98630FFF2872BFFAAA86FFF03EDFFFF03EDFFFF03EDFFFF2AE0E0FF96BC
      8BFFF49D47FFFF9A3FFFFF9A3FFFFF9A3FFFFF9A3FFFDAA261FF7DBBBBFF44C9
      EEFF42C9F0FF42C9F0FF42C9F0FF42C9F0FF42C9F0FFB79F71FFF1862BFFE886
      31FFDD8036FFCB6730FF0101011C000000007B7B7BD8EDEDFAFF1E28CEFF3E4D
      E0FF4A60E3FF4A66E4FF4265E4FF2047DEFF1C38DCFF1C3CDCFF1C40DDFF2349
      DEFFBFCAF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFC4
      E7FF2347DCFF1C3FDDFF1C3BDCFF1C37DCFF2045DEFF4264E3FF4A64E4FF4A5E
      E3FF3E4CE0FF1F28CEFFEDEDFAFF747474D80000000001010108BB5918FFE88A
      35FFEA8B34FFEC8C34FFED8D34FFED8D34FFED8D34FFED8E35FFED8F37FFED8F
      37FFED9038FFED9038FFED9039FFED9039FFED913AFFED913AFFED913AFFED91
      3AFFED8F37FFED8F37FFED8E35FFED8D34FFEC8C34FFEA8A33FFE68835FFE083
      35FFD88036FFAC4E1DFF02010258010101350000000001010102363431B9CFCB
      C4FFE1DED9FFF7F6F5FFFBFAF9FFFBFBFAFFFBFBFAFFFBFAF9FFFBFAF9FFFAFA
      F9FFFAF9F8FFF8F7F6FFF6F5F3FFF1EEEBFFC8C2B9FFDAD7D2FF252421AB0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000201013DCD6933FFDE80
      39FFEA893AFFF28D3AFF87B68EFF03EDFFFF03EDFFFF03EDFFFF03EDFFFF03ED
      FFFF18E7F1FF7CC4A3FFE69E54FFFF9642FFFF9642FFFF9642FFFF9642FFE19D
      5DFF8EB3A7FF49C6E8FF42C9F0FF42C9F0FF42C9F0FFD1975DFFF28E3BFFE989
      3BFFDC7F3AFFCA6632FF0101011D000000007B7B7BD8EDEDFAFF1E28CCFF3E4D
      E0FF4A60E3FF4A66E4FF4A60E3FF4550E1FF2739DDFF1D35DCFF1C39DCFF2343
      DCFFBFC8F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C2
      E3FF2434B4FF1C38DBFF1D34DBFF2738DDFF454FE1FF4A60E3FF4A64E4FF4A5E
      E3FF3E4BE0FF1F28CCFFEDEDFAFF747474D80000000001010108BB5918FFE88C
      39FFEA8E39FFEC8F39FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFBFCFFE68836FFE083
      36FFD88037FFAC4E1DFF0201025801010135000000000707066BD8D5CFFFDAD6
      D0FFF8F7F5FFF9F8F7FFF9F8F7FFF9F8F6FFFAF9F7FFFAF9F8FFF9F8F7FFF8F7
      F6FFF7F6F5FFF5F3F1FFF3F1EFFFF4F2F0FFF0EEEBFFC3BDB3FFA8A6A0F10101
      0119000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000101012DCB6635FFDD7D
      3DFFE9863FFFF28D42FF68C7B1FF03EDFFFF03EDFFFF03EDFFFF03EDFFFF09ED
      FFFF11ECFDFF74C5ADFFF1964EFFFF9245FFFF9245FFFF9245FFFF9245FFFF92
      44FFFF9143FFF1944EFFA4AB94FF56C4DFFF42C9F0FFEB9652FFF18D42FFE786
      40FFDB7D3EFFC55F33FE0101010D000000005B5B5CC9FDFDFDFF2029C9FF3A49
      E0FF4A5FE3FF4A5FE1FF4B52DDFF4C52E0FF4952E2FF3443DFFF273CDCFFBFC6
      F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFC0C2E3FF2531B3FF3442DEFF4951E1FF4C52DFFF4B52DDFF4A5EE1FF4A5D
      E3FF3B47E0FF2029C8FFFDFDFDFF575757C90000000001010108BB5918FFE88D
      3EFFEA903EFFEC913EFFFFFFFFFFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD3D3D3FFFCFBFCFFE68A3AFFE085
      3AFFD8813BFFAC4E1DFF0201025801010135010101088D8B86E8C6C0B7FFF4F2
      F0FFF5F4F2FFF7F6F5FFF9F8F6FFFAF9F8FFFBFAFAFFFBFAFAFFFAF9F9FFFAF9
      F8FFF8F7F6FFF6F5F4FFF2F0EDFFEDEAE7FFEEEBE8FFE7E3DEFFCEC9C2FF1514
      1392000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000101010BC05C30FCDA7A
      41FFE78344FFF08B47FF45D3CCFF03EDFFFF03EDFFFF03EDFFFF09EDFFFF12EE
      FFFF92BD9CFFFF9853FFFF9651FFFF9550FFFF9550FFFF9651FFFF9853FFFF9B
      56FFFF9E5AFFFFA05DFFFF9F5CFFFB9B59FFBDA583FFF7904BFFEF8B47FFE583
      44FFD97A42FF894023E800000000000000002E2E2EA8FEFEFEFF3A42CBFF3341
      DEFF4A5CE1FF4B53D9FF4C52DAFF4C52DDFF4C52DFFF5157E1FFC9CCF3FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC0C2E3FF353BB5FF4B51DDFF4C52DCFF4C52DAFF4B53D8FF4A5B
      E1FF3340DEFF3A42CBFFFCFCFCFF2B2B2CA80000000001010108BB5918FFE991
      44FFEB9444FFED9544FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFDFDFFFBFAFBFFE68C3EFFE087
      3EFFD8813EFFAC4E1DFF020102580101013504040357D4D1CAFFE2DED9FFF2F0
      EEFFF4F3F1FFF7F6F5FFFAF9F7FFFBFAFAFFFBFBFBFFFCFCFBFFFBFAFAFFFAF9
      F9FFF9F8F6FFF7F6F5FFF3F1EFFFEEEBE8FFE9E6E1FFEAE7E3FFC2BCB2FFA29E
      99EF010101070000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005B2917D2D777
      46FFE38148FFED884BFF22E0E7FF03EDFFFF03EDFFFF08EDFFFF14EEFFFF23EF
      FFFF35E7EFFFE5AE7BFFFFA86DFFFFA86DFFFFA86DFFFFA86DFFFFA76CFFFFA6
      6BFFFFA569FFFFA165FFFF9D60FFFE985AFFFB9254FFF58E50FFEC884CFFE281
      49FFD57646FF30160DB200000000000000000D0D0D78FCFCFCFF6D73D7FF2935
      D6FF4B55D8FF4C53D4FF4C52D7FF4C52DAFF5157DCFFCACCF2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCACCF4FFCCCEF7FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC0C2E3FF353BB3FF4B51D8FF4C52D6FF4C53D4FF4B55
      D8FF2934D6FF6D73D6FFF8F8F8FF0C0C0C780000000001010108BB5918FFE994
      49FFEB9749FFED9849FFFEFEFEFFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD3D3D3FFFBFAFBFFE79044FFE18B
      44FFD98444FFAC4E1DFF02010258010101351D1C1B9ECBC7BFFFECE9E5FFF0ED
      EAFFF5F3F1FFF8F7F6FFFAF9F8FFFBFAFAFFFCFCFBFFFEFDFDFFFBFBFBFFFBFA
      FAFFF9F8F7FFF7F6F5FFF3F2F0FFEEECE8FFE9E6E1FFE6E2DDFFD4CFC7FFD4D1
      CBFF0202023E0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000012080589D06F
      45FFDF7F4DFFE58753FF06EBFCFF03EDFFFF08EDFFFF14EEFFFF23EFFFFF35F0
      FFFF47F1FFFF4DE2E4FFE7AE80FFFFA874FFFFA874FFFFA773FFFFA772FFFFA5
      70FFFFA36EFFFF9F6AFFFF9B64FFFE955DFFF89059FFF18C55FFE98551FFDE7F
      4EFFCE6B42FF07040369000000000000000002020236F7F7F7FFACAFE8FF1F29
      C7FF464ECEFF4C53D1FF4C53D4FF5158D7FFCACCF1FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCACCF3FF5157E0FF5257E1FFCCCEF6FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C2E3FF363CB3FF4C53D3FF4C53D1FF464E
      CDFF1F29C6FFACAFE7FFEEEEEEFF020202360000000001010108BB5918FFEA97
      4EFFEC9A4EFFEE9B4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFBFCFFE79349FFE18E
      49FFD98749FFAC4E1DFF02010258010101354D4C48C9C7C2B9FFEAE7E3FFEFED
      EAFFF4F3F0FFF7F6F5FFF9F8F7FFFBFAFAFFFCFBFBFFFCFCFCFFFBFBFBFFFBFA
      FAFFF9F8F7FFF7F6F5FFF3F1EFFFEEEBE8FFE9E5E1FFE4E0DAFFDFDAD4FFD0CC
      C5FF070606690000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000101012AC35C
      39FDDA7B51FFC3906DFF17E4F0FF9EAF95FF58CFCBFF23EFFFFF34F0FFFF47F1
      FFFF5AF3FFFF6BF4FFFF52E8EFFFB0BDA0FFFDA779FFFFA678FFFFA577FFFFA3
      75FFFFA172FFF99F70FFBDAE8BFF86BDA9FFF19060FFED8959FFE48255FFD97B
      52FFA94D30F501010113000000000000000001010101888888DEF4F4FBFF2D35
      C0FF343CC5FF4C53CEFF4C53D0FF777CDDFFFAFBFEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFCACCF2FF5157DBFF4C52DBFF4C52DBFF5257DCFFCCCEF5FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFDFF7278D7FF4C53D0FF4C53CEFF343C
      C4FF2D35C0FFF4F4FBFF808081DE010101010000000001010108BB5918FFEA9A
      53FFEC9D53FFEE9E53FFFFFFFFFFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD3D3D3FFFCFBFCFFE89750FFE291
      50FFDA8A4FFFAC4E1DFF02010258010101356F6D69DBC5BFB6FFE9E5E1FFEDEB
      E7FFF2F1EEFFF7F6F5FFFAF9F8FFFBFBFAFFFCFBFBFFFCFBFBFFFCFBFBFFFBFA
      F9FFFAF9F8FFF8F7F6FFF4F2EFFFECEAE6FFE8E4DFFFE3DFD9FFDED9D2FFCDC9
      C1FF0C0C0B7B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003015
      0DB3D37451FFCA8868FFD88D68FFF18B61FFD89B79FF2DE7F3FF47F1FFFF5AF3
      FFFF6DF4FFFF7DF5FFFF88F6FFFF77F5FFFF5EE8EDFF79D4CEFF81CEC3FF7FD1
      C9FF70DDDCFF60EFF8FF5CEFF9FFC1A585FFF08C62FFE8865EFFDE815AFFD171
      4EFF170A0793000000000000000000000000000000000C0D0D78FBFBFBFF8B8F
      DCFF212ABBFF464EC9FF4C53CDFF4C53CFFF8186DFFFFAFBFEFFFFFFFFFFFFFF
      FFFFCACCF1FF5158D7FF4C52D7FF4C52D7FF4C52D7FF4C52D7FF5258D7FFCCCE
      F3FFFFFFFFFFFFFFFFFFFAFAFDFF8184DCFF4C53CFFF4C53CDFF464EC9FF2129
      BBFF8B8FDCFFF5F5F6FF0C0C0C78000000000000000001010108BB5918FFEA9D
      58FFECA058FFEEA158FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFBFCFFE89A56FFE294
      55FFDA8D54FFAC4E1DFF0201025801010135605E5AD4C5C0B6FFE7E3DEFFECE8
      E5FFF0EEEBFFF8F7F6FFFAFAF9FFFBFAF9FFFBFBFAFFFBFBFAFFFBFBFAFFFBFA
      F9FFFAF9F9FFF8F7F5FFF5F4F2FFF0EDEAFFE6E2DDFFE1DDD7FFDCD7D1FFCECA
      C3FF0A0909740000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      012AB25136F8D87D5CFFE28261FFEB8965FFF28E69FFCAA285FF3EE4EEFF66F4
      FFFF7DF5FFFF88F6FFFF92F7FFFF95F8FFFF95F8FFFF95F8FFFF95F8FFFF95F8
      FFFF95F8FFFF71EEF5FFBAAA91FFF18F6AFFEA8966FFE28362FFD77D5DFF9141
      2AEC01010116000000000000000000000000000000000101010EABABABEBF3F4
      FBFF373FC0FF2C33BDFF4B52C9FF4C53CBFF4C53CDFF8186DEFFFAFBFDFFCACC
      EFFF5158D3FF4C53D2FF4C53D3FF4C53D3FF4C53D3FF4C53D3FF4C53D2FF5258
      D3FFCCCEF2FFFAFAFDFF8184DBFF4C53CDFF4C53CBFF4B52C9FF2C33BDFF373F
      BFFFF3F3FAFFA2A2A2EB0101010E000000000000000001010108BB5918FFEBA2
      62FFEDA562FFEFA662FFFFFFFFFFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD3D3D3FFFCFBFCFFE9A161FFE39B
      60FFDB935FFFAC4E1DFF0201025801010135302F2DB3C8C3BAFFE4E0DBFFE9E6
      E1FFF2F0EDFFF8F7F6FFFAF9F8FFFBFAFAFFFBFBFAFFFCFBFBFFFBFBFAFFFBFA
      F9FFF9F9F7FFF8F7F5FFF6F4F2FFF4F2F0FFE8E5E0FFDFDAD4FFD6D1C9FFD3D0
      C9FF030303530000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000A050476CC6A4FFFDB8164FFE48569FFEB8B6DFFF19072FFE69A7FFF79C9
      C4FF54EFFAFF84F6FFFF94F8FFFF95F8FFFF95F8FFFF95F8FFFF94F7FFFF79F5
      FEFF7CD6D6FFD7A086FFF19173FFEB8C6FFFE3866AFFDA8165FFC66247FE0402
      025700000000000000000000000000000000000000000000000006060763F8F8
      F8FFC5C7EDFF2028B6FF343BBEFF4B52C8FF4C52CAFF4C53CBFF777DD8FF5158
      CFFF4C53CEFF4C53CFFF4C53CFFF4C53CFFF4C53CFFF4C53CFFF4C53CFFF4C53
      CEFF5258CFFF777CD8FF4C53CBFF4C52C9FF4B52C8FF343BBEFF2028B6FFC5C7
      EDFFF0F0F1FF0606066300000000000000000000000001010108BB5918FFECA9
      6EFFEEAB6FFFF0AD6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFCFBFCFFEAA76EFFE3A1
      6CFFDB986AFFAB4D1DFF02010258010101350A0A0978CFCBC4FFE0DCD6FFE5E2
      DDFFF6F5F3FFF8F7F6FFF9F9F8FFFAFAF9FFFBFAF9FFFBFBFAFFFBFAF9FFFAF9
      F8FFF9F8F7FFF8F7F6FFF7F6F4FFF5F4F2FFEDEBE7FFDDD7D1FFC2BBB1FFD0CD
      C7FD010101190000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010101220F0BA4CF725AFFDC826CFFE48871FFEB8E76FFF0947CFFF49A
      81FFE7A48CFF9EBEB4FF81D2D1FF7ADEE0FF7AE0E3FF81D9D9FF95C8C2FFD0AD
      99FFF39C81FFF0977EFFEA9078FFE38972FFDC836DFFCD6E55FF100706850000
      0000000000000000000000000000000000000000000000000000000000003535
      35B0FBFBFBFFA2A5E1FF1F27B4FF343BBCFF4B51C6FF4C52C8FF4C52C9FF4C52
      C9FF4C53CAFF4C53CBFF4C53CBFF4C53CBFF4C53CBFF4C53CBFF4C53CAFF4C52
      CAFF4C52C9FF4C52C8FF4C52C7FF4B51C5FF343BBCFF1F27B3FFA2A5E1FFF7F7
      F8FF313133B00000000000000000000000000000000001010107BB5818FFEDB2
      80FFF0B581FFF1B681FFFEFEFEFFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4
      D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD2D2D2FFFBFAFBFFEBB07FFFE4A9
      7DFFDCA07AFFAA4D1EFF020102550101013201010122D2CEC8FDC6C0B7FFE2DE
      D8FFF8F7F6FFFAF9F8FFFAF9F8FFFBFAF9FFFBFBFAFFFBFBFAFFFBFAF9FFFBFA
      F9FFFAF9F8FFF9F9F7FFF9F8F6FFF8F7F5FFF0EDEAFFD9D4CCFFC3BDB3FF403E
      3CC0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001010105220F0BA4CE6F59FFDC8573FFE38D7BFFE99481FFED9B
      86FFF1A18CFFF3A691FFF5A995FFF5AB97FFF5AC98FFF5AA96FFF3A893FFF1A3
      8FFFED9E89FFE99782FFE38F7DFFDC8775FFC86750FE11080688010101010000
      0000000000000000000000000000000000000000000000000000000000000101
      010F686869D1FCFCFCFFA2A6E0FF2028B2FF2C33B7FF464DC1FF4C52C4FF4C52
      C5FF4C52C6FF4C52C7FF4C52C7FF4C52C8FF4C52C8FF4C52C7FF4C52C7FF4C52
      C6FF4C52C5FF4C52C4FF464DC1FF2C33B7FF2028B2FFA2A6E0FFF9F9F9FF6363
      64D10101010F0000000000000000000000000000000001010106B95719FFECB8
      89FFF0BB8AFFF1BD8BFFFCFCFCFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFFBFBFBFFF9F8F9FFEBB688FFE4AE
      85FFDBA581FFA94C1EFF020102470101012700000000242321A8CAC6BEFFDBD6
      D0FFF5F3F1FFFBFBFAFFFBFBFAFFFCFBFBFFFCFCFBFFFCFCFBFFFCFBFBFFFCFB
      FBFFFBFBFAFFFBFBFAFFFBFAF9FFFAFAF9FFEAE7E2FFC4BCB2FFD9D6D1FF0202
      0248000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000010101010A050476B35342F8D98577FFE29484FFE79C
      8CFFEBA393FFEEA899FFF0AC9DFFF1AFA0FFF1AFA0FFF0AE9FFFEEAA9BFFEBA5
      96FFE79F8FFFE29787FFD88576FF9E4837F10503025E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010118676769D1FBFBFBFFC5C7ECFF373EB9FF2129B0FF343BB8FF474D
      BFFF4C52C2FF4C52C3FF4C52C3FF4C52C3FF4C52C3FF4C52C3FF4C52C2FF4C52
      C2FF474DBFFF343BB8FF2029B0FF373EB8FFC5C7EBFFF7F7F8FF636364D10101
      0118000000000000000000000000000000000000000001010102B75619FFEBBA
      92FFEEBE93FFF0C094FFFBFAFBFFD2D1D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1
      D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1D2FFD2D1
      D2FFD2D1D2FFD2D1D2FFD2D1D2FFD1D0D1FFD0CFD0FFF7F5F7FFE9B891FFE1B0
      8DFFD8A689FFA74A1FFF0101012C01010115000000000101011C9D9A94EDBEB8
      AEFFE6E2DDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFBFBFAFFD1CBC2FFCECAC3FF262422AA0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101012A2F140EB2C66753FDDB8E
      81FFE5A598FFE8AB9FFFEAB0A4FFECB3A7FFECB3A8FFEBB1A6FFE9ADA2FFE5A7
      9BFFDA8D81FFBE604DFB210E0AA20101011D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101010F343435B0F6F6F6FFF3F4FBFF8B8FD7FF2C34B3FF1E27
      AEFF2931B2FF343CB6FF3B42B9FF3F46BBFF3F46BBFF3B42B9FF343CB6FF2931
      B2FF1E27ADFF2C34B3FF8B8FD7FFF3F3FAFFF0F0F1FF313133B00101010F0000
      000000000000000000000000000000000000000000000101010101010104B856
      19FFECBC95FFEEBF96FFF9F7F9FFF9F7F9FFF9F8F9FFF9F8F9FFF9F8F9FFF9F8
      F9FFF9F8F9FFF9F8F9FFF9F8F9FFF9F8F9FFF9F8F9FFF9F8F9FFF9F8F9FFF9F8
      F9FFF9F8F9FFF9F8F9FFF9F7F9FFF9F7F9FFF7F5F7FFF3F0F3FFE6B592FFDEAD
      8EFFAB4D1EFF010101290101011201010106000000000000000002020245C5C2
      BDF9BEB7ADFFE7E4DFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFCFBFBFFD2CCC4FFCBC6BEFF575551D00101010E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000101012A1108
      06885B291FD2C46758FCD38171FFD7897DFFD7897DFFD38170FFBC6552FA4E22
      1ACA0D06057D0101011F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000006060763A7A7A8EBF8F8F9FFF4F5FBFFACAF
      E2FF6C72CAFF3941B8FF1F28ACFF1E27ABFF1E27ABFF1F28ACFF3941B7FF6C72
      CAFFACAFE2FFF4F4FBFFF5F5F6FFA2A2A2EB0606066300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0104B75619FFB95719FFBB5818FFBB5918FFBB5918FFBB5918FFBB5918FFBB59
      18FFBB5918FFBB5918FFBB5918FFBB5918FFBB5918FFBB5918FFBB5918FFBB59
      18FFBB5918FFBB5918FFBB5918FFBB5818FFBA5719FFB75619FFB3531BFFAD4F
      1DFF0101011B0101010E01010104010101010000000000000000000000000202
      02459D9A93EDC9C5BDFFC9C4BBFFF1EFECFFFDFDFDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCFBFBFFE7E4DFFFC0BAB0FFD6D3CDFF3F3C39C001010112000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101010B0101012C0201013C0201013B01010129010101080000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010E0C0C0C78838384DEF1F1
      F1FFF9F9F9FFFDFDFDFFFDFDFDFFECEDF9FFECEDF9FFFDFDFDFFFCFCFCFFF8F8
      F8FFEEEEEEFF808081DE0C0C0C780101010E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000010101020101010501010107010101080101010801010108010101080101
      0108010101080101010801010108010101080101010801010108010101080101
      0108010101080101010801010108010101080101010801010108010101080101
      0107010101050101010201010101000000000000000000000000000000000000
      00000101011C242421A7CECBC6FCCFCAC3FFC5C0B6FFC6C0B7FFC6C1B8FFC6C0
      B7FFC7C2B9FFD3D0C9FF96938DEB090808710101010300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101010202
      02360C0C0C782B2B2BA7585859CA747474D8747474D8585858CA29292BA70C0C
      0C78020202360101010100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000010101210A0A0977302F2CB2605E5AD46F6D69DB4F4D
      4ACA1E1E1C9F0404045A0101010A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000010101040101011A01020231020303480405065F080B0C750F14
      178C192428A3293C43BA46616CD1030304540000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      010A01010120020202370303034E05070765090D0F7C12191B931E2A2FA93545
      4DC0525E63CC494A4CBE808081D97C7C7CD7414145B90E0E0F7D010101230000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010101010101040101
      01090101010C0101010D0101010D0101010D0101010D0101010D0101010D0101
      010D0101010D0101010D0101010D0101010D0101010D0101010D0101010D0101
      010C010101090101010401010101000000000000000000000000010101070101
      011E010202340203034B04060662090C0D79101719901B282DA72D4149BE4667
      73D56697A9EB87CAE1FD8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCF
      E9FF8BCFE9FF8BCFE9FFA2D9EEFF0E1315930000000000000000000000000000
      0000000000000000000000000000000000000101010D010101240202023B0304
      0452050708680A0E107F131A1D961F2E33AD334A53C44D7280DB72A8BEF28ACB
      E5FE8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF94D1E9FFD3E9F2FFE1E7
      F9FF88A6EFFF5279E7FF325BE2FF345DE2FF567CE8FF91ADF0FFDBDEEBFC2121
      239C010101100000000000000000000000000000000000000000000000000101
      0101010101020101010301010103010101030101010301010103010101030101
      0103010101030101010301010103010101030101010301010103010101030101
      0103010101030101010301010103010101030101010301010102010101010000
      0000000000000000000000000000000000000000000000000000000000000101
      01010101010301010107010101090101010A0101010A0101010C010101150101
      01240101012D0101013001010130010101300101013001010130010101300101
      0130010101300101013001010130010101300101013001010130010101300101
      012D010101210101010F01010103000000000000000000000000131C1F988BCF
      E9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCF
      E9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCF
      E9FF8DCFE8FF8BCFE8FFA2D9EEFF0E1315930000000000000000000000000000
      000000000000000000000000000000000000527887DE8BCFE9FF8BCFE9FF8BCF
      E9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCF
      E9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF9DD4EAFFECF2F8FF859DEEFF1F42
      DEFF1D33DBFF1D34DBFF1D36DCFF1D36DCFF1D34DBFF1D33DBFF2445DEFF94A8
      EFFF828384DB0101012100000000000000000000000000000000010101020101
      01060101010A0101010C0101010D0101010D0101010D0101010D0101010D0101
      010D0101010D0101010D0101010D0101010D0101010D0101010D0101010D0101
      010D0101010D0101010D0101010D0101010D0101010B01010108010101040101
      0101000000000000000000000000000000000000000000000000010101010101
      010501010111010101210101012A0101012D0101012D010101300101013E0101
      0153010101610101016401010164010101640101016401010164010101640101
      0164010101640101016401010164010101640101016401010164010101640101
      015E010101450101011F01010107000000000000000000000000131C1E978BCF
      E9FF8BCFE9FF8BCFE9FF8BCFE9FF8DD0E8FF94D1E6FF9AD1E5FFA1D2E3FFA7D3
      E2FFADD4E0FFB4D4DEFFBAD5DCFFC0D6DBFFC7D6D9FFCDD7D7FFD3D8D5FFDAD9
      D3FFDED9D2FF91D0E7FFA2DAEEFF0E1315930000000000000000000000000000
      000000000000000000000000000000000000507684DD8BCFE9FF8BCFE9FF8BCF
      E9FF8BCFE9FF8FD0E8FF95D1E6FF9CD2E5FFA2D2E3FFA9D3E1FFAFD4DFFFB5D4
      DEFFBCD5DCFFC2D6DAFFC8D7D8FFD0D9D9FFF0F2F6FF6178E7FF1D34DBFF1C37
      DCFF1C3DDCFF1B42DDFF1B44DDFF1B43DDFF1B41DDFF1C3CDCFF1D35DBFF1D33
      DBFF7384E9FF818183DB01010110000000000000000001010102010101080101
      01120101011B0101012001010121010101210101012101010121010101210101
      0121010101210101012101010121010101210101012101010121010101210101
      0121010101210101012101010121010101200101011B01010112010101090101
      0102000000000000000000000000000000000000000001010101010101050101
      0115010101320101015101010161010101640101016401010167F1A966FFF1A9
      67FFF2AE6FFFF2AE6FFFF2AE70FFF2AE70FFF2AE70FFF2AE70FFF2AE70FFF2AE
      70FFF2AE6FFFF2AE6FFFF1AC6CFFF1AC6CFFF1AB6AFFF1AB6AFFF1A967FFF1A9
      67FF0101015E0101012A01010109000000000000000000000000131C1E9792D1
      E8FFCED9D9FFD4DAD7FFDBDAD6FFDFDBD5FFDFDBD5FFDFDBD5FFDFDBD5FFDFDB
      D5FFDFDBD5FFDFDBD5FFDFDBD5FFDFDBD5FFDFDBD5FFDFDBD5FFDFDBD5FFDFDB
      D5FFDFDBD5FF92D1E8FFA3DAEEFF0E1315930000000000000000000000000000
      000000000000000000000000000000000000507685DDA4D3E3FFD0D9D8FFD6DA
      D7FFDDDBD5FFDFDBD5FFDFDBD5FFDFDBD5FFDFDBD5FFDFDBD5FFDFDBD5FFDFDB
      D5FFDFDBD5FFDFDBD5FFDFDBD5FFEFEDECFF818DEBFF1D32DBFF1C39DCFF5D76
      E3FF5B6BCAFF1A4BDCFF194FDFFF194EDFFF1A4BDEFF6982E6FF4E5CC7FF1D36
      DBFF1D30DBFF959FEEFF2020239D0000000000000000010101040101010F0203
      03850203048C0203049002030490020304900203049002030490020304900203
      0490020304900203049002030490020304900203049002030490020304900203
      04900203049002030490020304900203048F0203048B0101011E0101010F0101
      0105010101010000000000000000000000000000000001010103010101110101
      01322A97B8FF2E99B9FF329BBBFF369DBCFF3A9FBDFF3EA1BFFFF1A966FFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFF1A9
      67FF010101640101012D0101010A000000000000000000000000131B1E9694D2
      E9FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DC
      D6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DC
      D6FFE0DCD6FF93D2E9FFA3DBEFFF0E1315930000000000000000000000000000
      0000000000000000000000000000000000004F7583DCABD5E3FFE0DCD6FFE0DC
      D6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DC
      D6FFE0DCD6FFE0DCD6FFE2DFDAFFD8D9F7FF1F30DBFF1C37DCFF5D76E4FFF8F8
      FDFFF7F7FBFF5A6EC9FF1757DEFF1758E0FF698CE7FFFBFCFDFFF1F2F9FF4E5C
      C7FF1D34DBFF2633DCFFD9DAE7FC0101012300000000010101062CADD6FF2CAD
      D6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CAD
      D6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CAD
      D6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF0203049101010129010101170101
      0109010101020000000000000000000000000000000001010107010101212796
      B7FF2BCEFFFF30D0FFFF34D0FFFF38D1FFFF3CD2FFFF3FD3FFFFF1A763FFEEEE
      EEFFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFEEEEEEFFF1A8
      64FF010101640101012D0101010A000000000000000000000000121A1D9594D3
      E9FFE2DED8FFE2DED8FFE2DED8FFE2DED8FFE2DED8FFE2DED8FFE2DED8FFE2DE
      D8FFE2DED8FFE2DED8FFE2DED8FFE2DED8FFE2DED8FFE2DED8FFE2DED8FFE2DE
      D8FFE2DED8FF93D3E9FFA3DCEFFF0E1316930000000000000000000000000000
      0000000000000000000000000000000000004E7481DBACD6E4FFE2DED8FFE2DE
      D8FFE2DED8FFE2DED8FFE2DED8FFE2DED8FFE2DED8FFE2DED8FFE2DED8FFE2DE
      D8FFE2DED8FFE2DED8FFECEAE8FF7E81E8FF273ADDFF1C3DDCFF7C93ECFFFEFE
      FEFFFFFFFFFFF7F7FBFF5971C9FF6891E7FFFBFCFDFFFFFFFFFFFBFBFDFF6881
      E5FF1C3ADCFF2837DCFF9397EAFF0D0D0F7D00000000010101062CADD6FF2CAD
      D6FF65EAFEFF64EAFEFF6AEBFEFF73ECFEFF81EEFEFF89EFFEFF91F0FEFF92F0
      FEFF94F1FEFF95F1FEFF95F1FEFF95F1FEFF95F1FEFF94F1FEFF92F0FEFF91F0
      FEFF8EF0FEFF8BEFFEFF88EFFEFF2CADD6FF020305950203048E010101200101
      010F0101010501010101000000000000000000000000010101092494B6FF28CE
      FFFF2CCFFFFF31D0FFFF35D1FFFF3AD2FFFF3DD2FFFF41D3FFFFF0A661FFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFF0A6
      61FF010101640101012D0101010A000000000000000000000000121A1C9494D3
      E9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DF
      D9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DF
      D9FFE3DFD9FF93D3E9FFA3DCEFFF0E1316930000000000000000000000000000
      0000000000000000000000000000000000004D717EDAACD7E4FFE3DFD9FFE3DF
      D9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DF
      D9FFE3DFD9FFE3DFD9FFF2F2F1FF474FDDFF4558E2FF1E44DDFF1A4CDFFF7C9B
      EDFFFEFEFEFFFFFFFFFFF7F7FBFFFCFCFDFFFFFFFFFFFBFBFDFF6889E7FF1A4A
      DEFF1E41DDFF4555E2FF5F65E0FF3F3F42BA00000000010101062CADD6FF68EB
      FEFF2CADD6FF64EAFEFF6BEBFEFF73ECFEFF80EEFEFF88EFFEFF91F0FEFF93F0
      FEFF95F1FEFF96F1FEFF96F1FEFF96F1FEFF96F1FEFF95F1FEFF93F0FEFF91F0
      FEFF8DF0FEFF8AEFFEFF86EFFEFF84EEFEFF2CADD6FF02030592010101290101
      011701010109010101020000000000000000000000000101010A2494B6FF29CE
      FFFF2DCFFFFF32D0FFFF36D1FFFF3AD2FFFF3ED3FFFF42D4FFFFF0A560FFEDED
      EDFFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFEDEDEDFFF0A6
      61FF010101640101012D0101010A000000000000000000000000121A1C9494D4
      E9FFE4E1DBFFE4E1DBFFE4E1DBFFE4E1DBFFE4E1DBFFE4E1DBFFE4E1DBFFE4E1
      DBFFE4E1DBFFE4E1DBFFE4E1DBFFE4E1DBFFE4E1DBFFE4E1DBFFE4E1DBFFE4E1
      DBFFE4E1DBFF93D4E9FFA3DCEFFF0E1316930000000000000000000000000000
      0000000000000000000000000000000000004D717EDAACD8E5FFE4E1DBFFE4E1
      DBFFE4E1DBFFE4E1DBFFE4E1DBFFE4E1DBFFE4E1DBFFE4E1DBFFE4E1DBFFE4E1
      DBFFE4E1DBFFE4E1DBFFF4F4F4FF2D38D6FF4A5FE3FF3B5EE2FF1B44DEFF1B40
      DDFF7E91ECFFFEFEFEFFFFFFFFFFFFFFFFFFFBFBFDFF6A80E3FF1B3EDDFF1C44
      DEFF3B5BE2FF4A5CE3FF434CD9FF767676D700000000010101062CADD6FF69EB
      FEFF2CADD6FF65EAFEFF6BEBFEFF73ECFEFF80EEFEFF87EFFEFF90F0FEFF92F0
      FEFF94F1FEFF96F1FEFF96F1FEFF96F1FEFF96F1FEFF94F1FEFF92F0FEFF90F0
      FEFF8CF0FEFF88EFFEFF84EFFEFF82EEFEFF2CADD6FF020305950203048E0101
      01200101010F010101050101010100000000000000000101010A2595B7FF29CE
      FFFF2ECFFFFF32D0FFFF36D1FFFF3BD2FFFF3ED3FFFF42D4FFFFF0A45DFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFF0A3
      5CFF010101640101012D0101010A00000000000000000000000012191B9393D4
      E9FFE5E2DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2
      DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2
      DDFFE5E2DDFF93D4EAFFA3DCEFFF0E1316930000000000000000000000000000
      0000000000000000000000000000000000004B717DD9ACD8E6FFE5E2DDFFE5E2
      DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2
      DDFFE5E2DDFFE5E2DDFFF4F3F3FF2C36D3FF4A5EE3FF4A5DE1FF3F4AE0FF2238
      DCFF6D7FE5FFFCFCFEFFFFFFFFFFFFFFFFFFF7F7FBFF5C67C8FF2236DAFF4049
      DFFF4A5EE1FF4A5CE3FF414AD6FF79797AD900000000010101062CADD6FF6AEB
      FEFF68EBFEFF2CADD6FF6BEBFEFF71ECFEFF7CEDFEFF82EEFEFF8BF0FEFF8FF0
      FEFF92F0FEFF93F1FEFF94F1FEFF94F1FEFF93F1FEFF92F0FEFF8FF0FEFF8DF0
      FEFF89EFFEFF85EFFEFF81EEFEFF80EEFEFF7DEDFEFF2CADD6FF020305920101
      012901010117010101090101010300000000000000000101010A2494B6FF29CE
      FFFF2DCFFFFF31D0FFFF36D1FFFF3AD2FFFF3DD2FFFF41D3FFFFF0A35BFFEDED
      EDFFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFEDEDEDFFF0A3
      5CFF010101640101012D0101010A00000000000000000000000011181B9294D5
      EAFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3
      DFFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3
      DFFFE7E3DFFF94D5EAFFA4DDF0FF0E1316930000000000000000000000000000
      0000000000000000000000000000000000004A6F7BD8ADD9E7FFE7E3DFFFE7E3
      DFFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3
      DFFFE7E3DFFFE7E3DFFFF1F0F0FF434CD4FF4A59DFFF4B52D8FF4C52DCFF858A
      E8FFFCFCFDFFFFFFFFFFFCFCFEFFFEFEFEFFFFFFFFFFF7F7FBFF696EC9FF4A50
      D9FF4B52D7FF4A58E0FF5B62D7FF424346BD00000000010101062CADD6FF6BEB
      FEFF6AEBFEFF2CADD6FF6AEBFEFF6EEBFEFF77EDFEFF7FEEFEFF85EFFEFF8AEF
      FEFF8EF0FEFF8FF0FEFF90F0FEFF90F0FEFF8FF0FEFF8EF0FEFF8BEFFEFF88EF
      FEFF84EFFEFF81EEFEFF7FEEFEFF7CEDFEFF78EDFEFF2CADD6FF020305950203
      048E010101200101010F0101010601010101000000000101010A2494B6FF28CE
      FFFF2CCFFFFF30D0FFFF34D0FFFF38D1FFFF3BD2FFFF3FD3FFFFF0A25AFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFF0A1
      57FF010101640101012D0101010A00000000000000000000000010181A9194D6
      ECFFE8E5E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5
      E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5
      E0FFE8E5E0FF94D6ECFFA4DEF1FF0E1316930000000000000000000000000000
      000000000000000000000000000000000000496D79D7ADDAE8FFE8E5E0FFE8E5
      E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5
      E0FFE8E5E0FFE8E5E0FFEBEAE8FF797EDAFF414ACFFF4C53D2FF878CE3FFFCFC
      FDFFFFFFFFFFFBFBFDFF8488E6FF9699ECFFFEFEFEFFFFFFFFFFF7F7FBFF6B70
      C8FF4C53D1FF414AD0FF8C90DEFF0F0F118400000000010101062CADD6FF69EB
      FEFF68EBFEFF67EAFEFF2CADD6FF69EBFEFF70ECFEFF77EDFEFF7FEEFEFF82EE
      FEFF86EFFEFF88EFFEFF89EFFEFF89EFFEFF88EFFEFF86EFFEFF84EFFEFF82EE
      FEFF81EEFEFF7DEDFEFF79EDFEFF75ECFEFF71ECFEFF6EEBFEFF2CADD6FF0203
      059201010129010101170101010A01010104000000000101010A2293B6FF26CD
      FFFF2ACEFFFF2ECFFFFF31D0FFFF35D1FFFF38D1FFFF3BD2FFFFF0A25AFFEEEE
      EEFFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFEEEEEEFFF0A1
      57FF010101640101012D0101010A00000000000000000000000010181A9094D6
      ECFFE9E7E2FFE9E7E2FFE9E7E2FFE9E7E2FFE9E7E2FFE9E7E2FFE9E7E2FFE9E7
      E2FFE9E7E2FFB7B7B7FFE3E2DEFFE9E7E2FFE9E7E2FFE9E7E2FFE9E7E2FFE9E7
      E2FFE9E7E2FF94D6ECFFA4DEF1FF0E1316930000000000000000000000000000
      000000000000000000000000000000000000486B77D6ADDBE9FFE9E7E2FFE9E7
      E2FFE9E7E2FFE9E7E2FFE9E7E2FFE9E7E2FFE9E7E2FFE9E7E2FFE9E7E2FFE9E7
      E2FFE9E7E2FFE9E7E2FFE6E4E1FFCECFEEFF2D35BFFF4C52CCFF898DE0FFFCFC
      FEFFFBFBFDFF8488E1FF4C52D8FF4C52D8FF9599E7FFFEFEFEFFF8F8FCFF7B81
      D9FF4C52CBFF3139BFFFD4D5E7FE0101012A00000000010101062CADD6FF66EA
      FEFF66EAFEFF65EAFEFF2CADD6FF65EAFEFF6BEBFEFF71ECFEFF78EDFEFF7EED
      FEFF81EEFEFF81EEFEFF82EFFEFF82EFFEFF81EEFEFF81EEFEFF81EEFEFF7FED
      FEFF7BEDFEFF78ECFEFF73ECFEFF6FEBFEFF6BEBFEFF68EAFEFF2CADD6FF0203
      05950203048E010101200101011101010108000000000101010A2092B5FF23CD
      FFFF27CEFFFF2ACEFFFF2ECFFFFF31D0FFFF34D0FFFF37D1FFFFF0A35BFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFF0A3
      5CFF010101640101012D0101010A00000000000000000000000010181A9093D7
      ECFFEBE8E4FFEBE8E4FFEBE8E4FFEBE8E4FFEBE8E4FFEBE8E4FFEBE8E4FFEBE8
      E4FFEBE8E4FF7D8081FF8BA2BCFFB1C9E9FFD2D9E2FFEBE8E4FFEBE8E4FFEBE8
      E4FFEBE8E4FF94D7ECFFA4DFF1FF0E1416930000000000000000000000000000
      000000000000000000000000000000000000486B77D6ADDCEAFFEBE8E4FFEBE8
      E4FFEBE8E4FFEBE8E4FFEBE8E4FFEBE8E4FFEBE8E4FFEBE8E4FFEBE8E4FFEBE8
      E4FFEBE8E4FFEBE8E4FFEBE8E4FFEBEBEAFF777CD3FF3C43C1FF4C52CAFF888D
      DDFF8489DDFF4C53CFFF4C53D0FF4C53D0FF4C53CFFF9498E2FF7C81D7FF4C52
      C9FF3C43C0FF898DD9FF29292BA90000000000000000010101062CADD6FF60E9
      FEFF60E9FEFF60E9FEFF60E9FEFF2CADD6FF65EAFEFF6BEBFEFF71ECFEFF76EC
      FEFF7AEDFEFF7BEDFEFF7CEDFEFF7CEDFEFF7BEDFEFF7AEDFEFF78EDFEFF75EC
      FEFF72ECFEFF6FEBFEFF6BEBFEFF67EAFEFF63EAFEFF61E9FEFF5DE9FEFF2CAD
      D6FF0203059201010129010101190101010E000000000101010A1D91B4FF20CC
      FFFF23CDFFFF26CDFFFF29CEFFFF2CCFFFFF2FCFFFFF31D0FFFFF0A45EFFF0F0
      F0FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF0F0F0FFF0A3
      5CFF010101640101012D0101010A0000000000000000000000001017198F93D7
      ECFFECEAE6FFECEAE6FFECEAE6FFECEAE6FFECEAE6FFECEAE6FFECEAE6FFECEA
      E6FFECEAE6FFDBDFE4FFBAD6F2FF9AC0EFFF5893E8FFBFCFE3FFECEAE6FFECEA
      E6FFECEAE6FF95D7ECFFA4DFF1FF0E1416930000000000000000000000000000
      000000000000000000000000000000000000466A75D5ADDDEAFFECEAE6FFECEA
      E6FFECEAE6FFECEAE6FFECEAE6FFECEAE6FFECEAE6FFECEAE6FFECEAE6FFECEA
      E6FFECEAE6FFECEAE6FFECEAE6FFE9E7E4FFE8E8EFFF545BC5FF3C43BDFF4C52
      C5FF4C52C7FF4C52C9FF4C52C9FF4C52C9FF4C52C8FF4C52C7FF4C52C4FF3C43
      BCFF666CCBFF919195E5010101170000000000000000010101062CADD6FF5AE9
      FEFF5AE9FEFF5AE9FEFF5BE9FEFF2CADD6FF63EAFEFF68EBFEFF6CEBFEFF6FEC
      FEFF72ECFEFF73ECFEFF73ECFEFF73ECFEFF73ECFEFF72ECFEFF70ECFEFF6EEB
      FEFF6BEBFEFF68EAFEFF64EAFEFF61E9FEFF5DE9FEFF5AE9FEFF58E8FEFF2CAD
      D6FF020305950203048E0101012301010117000000000101010A198FB3FF1CCB
      FFFF1FCCFFFF21CCFFFF24CDFFFF26CDFFFF29CEFFFF2BCEFFFFF0A763FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0A7
      63FF010101640101012D0101010A0000000000000000000000000F17188E94D8
      ECFFEEEBE8FFEEEBE8FFEEEBE8FFEEEBE8FFEEEBE8FFEEEBE8FFEEEBE8FFEEEB
      E8FFEEEBE8FFEEEBE8FF9CBDE7FF9DC4EEFF7AA9EDFF5793E9FFC3D1E4FFEEEB
      E8FFEEEBE8FF96D8ECFFA5E0F1FF0E1417930000000000000000000000000000
      000000000000000000000000000000000000466872D4AEDEEBFFEEEBE8FFEEEB
      E8FFEEEBE8FFEEEBE8FFEEEBE8FFEEEBE8FFEEEBE8FFEEEBE8FFEEEBE8FFEEEB
      E8FFEEEBE8FFEEEBE8FFEEEBE8FFEEEBE8FFE9E7E4FFE7E7EDFF777DCFFF2D35
      B4FF4248BCFF4B51C1FF4B52C2FF4B52C2FF4B51C1FF4248BCFF2F37B5FF8287
      D3FF959597E60101012D000000000000000000000000010101062CADD6FF57E8
      FEFF57E8FEFF58E8FEFF5AE8FEFF5CE9FEFF2CADD6FF65EAFEFF68EBFEFF69EB
      FEFF6AEBFEFF6BEBFEFF6BEBFEFF6BEBFEFF6AEBFEFF6AEBFEFF68EBFEFF66EA
      FEFF64EAFEFF62EAFEFF5FE9FEFF5CE9FEFF59E8FEFF57E8FEFF56E8FEFF56E8
      FEFF2CADD6FF020305920101012C01010120000000000101010A158DB1FF22CC
      FDFF25CDFEFF27CDFEFF2ACEFEFF2CCEFEFF2DCEFEFF2FCFFEFFF0AA69FFF2F2
      F2FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF2F2F2FFF0A7
      63FF010101610101012B010101090000000000000000000000000F16188D93D8
      EDFFEFEDEAFFEFEDEAFFEFEDEAFFEFEDEAFFEFEDEAFFEFEDEAFFEFEDEAFFEFED
      EAFFEFEDEAFFEFEDEAFFD9DFE7FF89B3E9FF9DC4EFFF7AA9EDFF5993E9FFC6D4
      E6FFEFEDEAFF96D9ECFFA5E0F1FF0E1417930000000000000000000000000000
      000000000000000000000000000000000000446670D3AEDEECFFEFEDEAFFEFED
      EAFFEFEDEAFFEFEDEAFFEFEDEAFFEFEDEAFFEFEDEAFFEFEDEAFFEFEDEAFFEFED
      EAFFEFEDEAFFEFEDEAFFEFEDEAFFEFEDEAFFEFEDEAFFEBE9E6FFE7E7E7FFCBCD
      E9FF7A7FCEFF454DBBFF2D36B3FF2E37B3FF4A51BDFF8082D1FFCCCEE3FE3333
      34B20101011A00000000000000000000000000000000010101062CADD6FF58E8
      FEFF59E8FEFF59E8FEFF5CE9FEFF5EE9FEFF2CADD6FF63EAFEFF65EAFEFF66EA
      FEFF66EAFEFF67EAFEFF67EAFEFF67EAFEFF66EAFEFF66EAFEFF64EAFEFF63EA
      FEFF61EAFEFF5FE9FEFF5CE9FEFF5AE9FEFF58E8FEFF56E8FEFF56E8FEFF56E8
      FEFF2CADD6FF020304910203048C01010123000000000101010A128CB0FF2BCE
      FEFF2DCEFEFF2ECFFEFF30CFFEFF32D0FEFF33D0FEFF34D0FEFFF1AE70FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF1B1
      75FF0101015101010121010101070000000000000000000000000F16188D93D9
      EEFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EE
      EBFFF0EEEBFFF0EEEBFFF0EEEBFFD8DEE7FF87B2E9FF9DC4EFFF7AA9EDFF5B94
      E9FFCBD8E8FF96D9EEFFA5E0F2FF0E1417930000000000000000000000000000
      00000000000000000000000000000000000043656FD2AEDFEDFFF0EEEBFFF0EE
      EBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EE
      EBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFDDE9EBFF9ED6
      E7FFC5DCE3FF8E9092E5B3B3B3EFABABACED606062CF17171993020202360000
      00000000000000000000000000000000000000000000010101062CADD6FF60E9
      FDFF61E9FDFF62E9FDFF64EAFDFF66EAFDFF69EAFDFF2CADD6FF6BEBFEFF6AEB
      FEFF6AEBFEFF6AEBFEFF6AEBFEFF6AEBFEFF6AEBFEFF69EBFEFF68EBFEFF68EB
      FEFF66EAFEFF64EAFEFF61EAFEFF5DE9FEFF5AE9FEFF58E8FEFF58E8FEFF59E9
      FEFF5BE9FEFF2CADD6FF020303860101011A000000000101010A0E8AAFFF35D0
      FEFF35D1FEFF36D1FEFF38D1FEFF39D1FEFF39D1FDFF3AD2FEFFF1B276FFF4F4
      F4FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF4F4F4FFF2B176FFF2B176FFF2B176FFF1B175FFF1B175FFF1B175FFF1B1
      75FF0101013301010111010101030000000000000000000000000F15178C93DA
      EFFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0
      EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFD7DFEAFF85B2EAFF9DC4EFFF7AA9
      EDFF5D96E9FF82C9EBFFA5E1F2FF0E1417930000000000000000000000000000
      000000000000000000000000000000000000436570D2AEE0EEFFF2F0EEFFF2F0
      EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0
      EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFDFEBEEFF8ED9
      EFFF9FD5E7FF0303034D00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010101062CADD6FF6BEA
      FDFF6CEAFDFF6DEAFDFF6EEBFDFF71EBFDFF74ECFDFF2CADD6FF2CADD6FF2CAD
      D6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CAD
      D6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CAD
      D6FF2CADD6FF2CADD6FF010101110101010C000000000101010A0B88AEFF3ED2
      FEFF3ED3FEFF3FD3FEFF40D3FEFF41D3FEFF41D3FDFF42D4FEFFF2B67EFFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF3B781FFF7E0CEFFF7E0CEFFF7E0CEFFF7E0CEFFF4BE89FF0101
      01400101011801010105010101010000000000000000000000000E15178B92DA
      EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1
      EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFD5DEEAFF84B1EAFF9DC4
      EFFF7BA9EDFF5895E9FF97D2EFFF0E1317930000000000000000000000000000
      00000000000000000000000000000000000041636DD1AEE0EFFFF3F1EFFFF3F1
      EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1
      EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFDFECEFFF8ED9
      EFFF9FD5E7FF0303034D00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010101062CADD6FF7CEC
      FDFF7DECFDFF7DEDFDFF7EEDFDFF80EDFDFF81EEFDFF83EEFDFF84EEFDFF85EE
      FEFF85EEFEFF85EEFEFF84EEFEFF84EEFEFF84EEFDFF84EEFDFF84EEFDFF83EE
      FDFF83EEFDFF81EEFDFF81EDFDFF2CADD6FF0203049001010123010101110101
      010701010106010101050101010401010103000000000101010A0987ADFF48D5
      FEFF49D5FEFF49D5FEFF49D5FEFF4AD5FEFF4BD5FEFF4BD5FEFFF3B881FFF6F6
      F6FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF6F6F6FFF3B781FFF7E0CEFFF7E0CEFFF7E0CEFFF2B780FF010101660101
      01300101010B01010101000000000000000000000000000000000E14168A93DB
      EFFFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3
      F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFD4DEEBFF83B0
      EAFF9DC4EFFF7BA9EDFF5F98EAFF0D1317930000000000000000000000000000
      00000000000000000000000000000000000041636BD0AFE2EFFFF5F3F1FFF5F3
      F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3
      F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFE1EEF0FF8FDA
      EFFFA0D6E8FF0303034D00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010101062CADD6FF88EE
      FDFF88EEFDFF89EEFDFF89EFFDFF8BEFFDFF8DEFFDFF8FEFFDFF92F0FDFF93F0
      FEFF93F0FEFF92F0FEFF91F0FDFF90EFFDFF8FEFFDFF8EEFFDFF8EEFFDFF8EEF
      FDFF8DEFFDFF8CEFFDFF8CEFFDFF2CADD6FF0203048C0101011C0101010A0101
      010100000000000000000000000000000000000000000101010A0786ADFF53D7
      FEFF54D7FEFF54D7FEFF55D7FEFF55D7FEFF55D7FEFF55D8FEFFF3BC87FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF4BE89FFF7E0CEFFF7E0CEFFF4BE89FF0786ADFF010101640101
      012D0101010900000000000000000000000000000000000000000D14158993DB
      EFFFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3
      F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFD2DD
      ECFF82B0EAFF9DC4EFFF7BAAEDFF3C66A2E90101012800000000000000000000
      000000000000000000000000000000000000406069CFAFE2F0FFF5F3F2FFF5F3
      F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3
      F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFE2EEF1FF8FDA
      EFFFA0D7E8FF0303034D00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010101042CADD6FF99F1
      FDFF9BF1FDFF9DF1FDFF9EF1FEFF9EF1FEFF9FF1FEFFA0F2FDFFA0F2FEFFA0F2
      FEFFA0F2FEFF9EF1FEFF9AF1FDFF97F0FDFF94F0FDFF93F0FDFF93F0FDFF93F0
      FDFF92F0FDFF91F0FDFF91F0FDFF2CADD6FF0203038501010112010101060101
      010100000000000000000000000000000000000000000101010A0585ACFF5FDA
      FEFF5FDAFEFF5FDAFEFF5FDAFEFF60DAFEFF60DAFEFF60DAFEFFF4BF8CFFF8F8
      F8FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF8F8F8FFF4BE89FFF7E0CEFFF4BE89FF5FDAFEFF0585ACFF010101640101
      012D0101010900000000000000000000000000000000000000000D14158992DB
      EFFFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6
      F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6
      F5FFD0DDEDFF81AEEBFF9DC4EFFF7BAAEDFF3A629AE601010126000000000000
      000000000000000000000000000000000000406069CFAFE3F1FFF7F6F5FFF7F6
      F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6
      F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFE3F0F4FF8FDA
      EFFFA0D7E8FF0303034D00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010101022CADD6FFA5F2
      FDFFA9F3FDFFACF3FEFFAFF3FEFFAFF4FEFFB0F4FEFFB0F4FEFFB1F4FEFFB0F4
      FEFFAEF4FEFFAAF3FEFFA5F2FEFF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CAD
      D6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF0101011001010108010101030000
      000000000000000000000000000000000000000000000101010A0485ACFF6BDD
      FEFF6BDDFEFF6CDCFEFF6CDCFEFF6CDCFEFF6CDCFEFF6CDCFEFFF5C290FFF9F9
      F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
      F9FFF9F9F9FFF5C596FFF4BE89FF6BDDFEFF6BDDFEFF0485ACFF010101640101
      012D0101010900000000000000000000000000000000000000000D13158892DC
      EFFFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6
      F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6
      F5FFF7F6F5FF8CCAEAFF80AEEBFF9DC4EFFF7BAAEDFF385F94E4010101230000
      0000000000000000000000000000000000003F5E67CEAFE3F1FFF7F6F5FFF7F6
      F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6
      F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFE3F1F4FF8FDB
      EFFFA0D8E9FF0303034D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101032CAD
      D6FFB9F5FEFFBCF5FEFFBFF6FEFFC1F6FEFFC1F6FEFFC1F6FEFFC1F6FEFFC0F6
      FEFFBDF6FEFFB9F5FEFF2CADD6FF0101011A0101010D01010107010101060101
      0106010101060101010601010106010101050101010401010102000000000000
      000000000000000000000000000000000000000000000101010A0385ACFF79E0
      FFFF79E0FEFF79E0FEFF79E0FEFF79E0FEFF79E0FEFF79E0FEFFF5C393FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FF79E0FEFF79E0FEFF79E0FFFF0385ACFF010101640101
      012D0101010900000000000000000000000000000000000000000D13158791DC
      F0FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8
      F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8
      F7FFF9F8F7FF97DDF0FF8AC9EAFF7FACEAFF9DC4EFFF7CAAEDFF375A8BE10101
      0123000000000000000000000000000000003D5D66CDAFE4F2FFF9F8F7FFF9F8
      F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8
      F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFE5F2F6FF8FDB
      F0FFA0D8EAFF0303034D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01032CADD6FFC6F7FEFFC8F7FEFFC9F7FEFFC9F7FEFFC9F7FEFFC9F7FEFFC8F7
      FEFFC6F7FEFF2CADD6FF010101190101010B0101010300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000101010A0385ACFF83E3
      FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3
      FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3
      FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF83E3FFFF0385ACFF010101640101
      012D0101010900000000000000000000000000000000000000000D12148692DC
      F1FFFBFAFAFFFBFAFAFFF9F9F9FFFAF9F9FFFAF9F9FFFAF9F9FFFBFAFAFFFBFA
      FAFFFBFAFAFFFBFAFAFFFBFAFAFFFBFAFAFFFBFAFAFFFBFAFAFFFBFAFAFFFBFA
      FAFFFBFAFAFF99DEF1FFA6E3F4FF354C60D276A3DDFB9EC4EEFFB1BBC9FF706B
      63E2010101200000000000000000000000003D5B65CCAFE5F3FFFBFAFAFFFBFA
      FAFFF9F8F8FFFAF9F9FFFAF9F9FFFAF9F9FFFBFAFAFFFBFAFAFFFBFAFAFFFBFA
      FAFFFBFAFAFFFBFAFAFFFBFAFAFFFBFAFAFFFBFAFAFFFBFAFAFFE6F4F8FF90DC
      F1FFA0D9EAFF0303034D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000010101032CADD6FFD0F8FEFFD0F8FEFFD0F8FEFFD0F8FEFFD0F8FEFFD0F8
      FEFF2CADD6FF010101180101010B010101030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010101090385ACFF90E6
      FFFF90E6FFFF90E6FFFF90E6FFFF90E6FFFF90E6FFFF90E6FFFF90E6FFFF90E6
      FFFF90E6FFFF90E6FFFF90E6FFFF90E6FFFF90E6FFFF90E6FFFF90E6FFFF90E6
      FFFF90E6FFFF90E6FFFF90E6FFFF90E6FFFF90E6FFFF0385ACFF010101610101
      012B0101010800000000000000000000000000000000000000000C12138590DC
      F1FFADE4F3FFAFE5F3FFD0D2D4FFD8D8D9FFDCDDDDFFDEDEDEFFDBDCDCFFD6D7
      D7FFD0D0D1FFC9CACAFFC1C2C2FFB9BABBFFB2B3B4FFABACADFFA5A7A9FFC9EC
      F6FFCBEDF6FF95DDF1FFA6E3F4FF0E15189303040456ABB5BFFDE4DDD2FFD2C6
      B5FF4D4A4FD50101011000000000000000003C5A62CB98DEF1FFADE4F3FFB7DF
      EBFFD3D3D4FFD9DADAFFDDDDDEFFDDDEDEFFDADBDBFFD5D5D6FFCFCFD0FFC7C8
      C8FFBFBFC0FFB8B9B9FFB0B1B2FFAAAAABFFAEBABEFFCAEDF6FFC0EAF5FF90DC
      F1FFA0D9EBFF0303034D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000010101032CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CAD
      D6FF010101100101010901010103000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010101070385ACFF9DE9
      FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9
      FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9
      FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF9DE9FFFF0385ACFF010101510101
      0121010101060000000000000000000000000000000000000000030404516194
      A7EE6CA6BAF47ABAD2FBC7D4D9FFE0E0E1FFE6E6E6FFE8E8E8FFE5E5E5FFDEDE
      DFFFD5D6D6FFCECECFFFC5C6C6FFBCBDBDFFB5B6B6FFADAEAFFFA1A6A9FF8FDC
      F0FF90DCF1FF90DCF1FFA6E4F4FF0E151793000000000505055FC8C0B0FEB6B2
      BEFB282E91FA05050E87000000000000000010181A92659BAEF070ABC0F682BE
      D3FCDADADBFFE2E2E2FFE7E7E7FFE8E8E8FFE3E3E4FFDCDCDDFFD3D3D4FFCCCC
      CDFFC2C3C4FFBABBBBFFB3B4B5FFACACADFF9AB4BCFF8FDCF0FF90DCF1FF90DC
      F1FFA0D9EBFF0303034D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001010102010101040101010501010106010101060101
      0105010101040101010200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010101030385ACFFAAEC
      FFFFAAECFFFFAAECFFFFAAECFFFFAAECFFFFDD7917FFDD7917FFDD7917FFDD79
      17FFDD7917FFDD7917FFDD7917FFDD7917FFDD7917FFDD7917FFDD7917FFDD79
      17FFAAECFFFFAAECFFFFAAECFFFFAAECFFFFAAECFFFF0385ACFF010101320101
      0111010101030000000000000000000000000000000000000000000000000000
      0000000000000000000004040451CACBCBF7EEEFEFFFF2F2F3FFECEDEDFFE4E4
      E4FFDADADBFFD0D0D1FFC8C8C9FFBEBFBFFFB6B7B8FFAEAFB0FF3A3D3EC60303
      04540304055A04050660050607660202023E00000000000000000404055F262C
      93F81A2094F40101013200000000000000000000000000000000000000000000
      00001717188FE4E4E5FEF0F0F1FFF1F2F2FFEAEBEBFFE1E1E2FFD7D7D8FFCECE
      CFFFC5C6C6FFBCBDBDFFB4B5B6FFACADAEFF13151696030404550405055C0406
      0662050708680101012100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010101010101050385
      ACFFAAECFFFFB7EEFFFFB7EEFFFFB7EEFFFFDD7917FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFDD79
      17FFB7EEFFFFB7EEFFFFAAECFFFFAAECFFFF0385ACFF01010132010101150101
      0105010101010000000000000000000000000000000000000000000000000000
      00000000000000000000000000000101011504040454404040B6F0F0F0FFE5E5
      E6FFDBDBDCFFD1D1D2FFABACADF7262627AB1313138F050505610101010C0000
      0000000000000000000000000000000000000000000000000000000000000202
      0244010101260000000000000000000000000000000000000000000000000000
      0000000000000101012606060662888888DCEDEDEEFFE3E3E3FFD8D9D9FFCFCF
      D0FF767676E2212222A50F0F0F860202034B0101010100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101010101
      01050385ACFF0385ACFF0385ACFF0385ACFFDD7917FFDBDBDBFFDBDBDBFFDBDB
      DBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDBDBDBFFDD79
      17FF0385ACFF0385ACFF0385ACFF0385ACFF0101012101010111010101050101
      0101000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010126CCCCCCF6E3E3
      E3FFD9D9DAFFD0D0D1FF393939BE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000007070763E9E9EAFFE0E0E1FFD6D7D7FFCECE
      CFFF0A0A0A780000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01010101010301010107010101090101010A0101010CDD7917FFDD7917FFDD79
      17FFDD7917FFDD7917FFDD7917FFDD7917FFDD7917FFDD7917FFDD7917FF0101
      0124010101150101010C0101010A010101090101010701010103010101010000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000202023B4040
      40BB7A7A7AE0272828AB0101011D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000070707675C5C5DCE6B6B6BDA1212
      128B010101060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010101010104010101090101
      010C0101010D0101010D0101010D0101010D0101010D0101010D0101010C0101
      0109010101040101010100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101310202
      024E0202024E0202024E0202024E0202024E0202024E0202024E0202024E0202
      024E0202024E0202024E02020248010101090000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101010202
      02360D0D0D782D2D2DA75E5E5FCA7B7B7BD87B7B7BD85D5D5ECA2D2D2DA70D0D
      0D78020202360101010100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      010A01010120020202370303034E05070765090D0F7C12191B931E2A2FA93546
      4CC0525E63CC4A4C4BBE808081D97C7C7CD7424443B90E0F0F7D010101230000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      010A01010120020202370303034E05070765090D0F7C12191B931E2A2FA93546
      4CC0525E63CC4A4C4BBE808081D97C7C7CD7424443B90E0F0F7D010101230000
      0000000000000000000000000000000000000000000002020250B3662DF7D780
      3CFFD37C38FF9B7E73FF877774FFA79491FFD0BDBAFFDECBC8FFE3D0CDFFDFC3
      BBFFD17936FFD7803CFFBC6934FD0C0505A00101012601010122010101220101
      0122010101220101012201010122010101220101012201010122010101220101
      01220101010D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010E0D0D0D788A8B8BDEF9F9
      F9FFFDFDFDFFFEFEFEFFFDFDFDFFF1FAF5FFF1FAF5FFFDFDFDFFFEFEFEFFFCFC
      FCFFF7F7F7FF888888DE0D0D0D780101010E0000000000000000000000000000
      0000000000000000000000000000000000000101010D010101240202023B0304
      0452050708680A0E107F131A1D961F2E33AD334A53C44D7280DB72A8BEF28ACB
      E5FE8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF94D1E9FFD3E9F2FFEAF6
      F0FFB2E6CCFF81D8AFFF65CF9CFF67CF9DFF85D9B1FFB8E8D0FFE0E9E4FC2123
      219C010101100000000000000000000000000101010D010101240202023B0304
      0452050708680A0E107F131A1D961F2E33AD334A53C44D7280DB72A8BEF28ACB
      E5FE8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF94D1E9FFD3E9F2FFEAF6
      F0FFB2E6CCFF81D8AFFF65CF9CFF67CF9DFF85D9B1FFB8E8D0FFE0E9E4FC2123
      219C01010110000000000000000000000000000000003B220EBFEE933FFFEE93
      40FFE98E3DFF8B7E74FF464646FF8B8B8BFFE5E5E5FFF7F7F7FFFEFEFEFFF8ED
      E6FFE78A39FFEE9340FFEA903FFF9D572EFC583E3EE45B4140E25B4140E25B41
      40E25B4140E25B4140E25B4140E25B4140E25B4140E25B4140E25A413FE25337
      35E1020202550101010100000000000000000000000000000000000000000000
      000000000000000000000000000007070763AEAEAEEBFCFCFCFFF7FBF9FFC8ED
      DBFFA0E1C3FF81D8AFFF6BD1A1FF67CF9EFF67CF9EFF6BD1A0FF81D8AEFFA0E1
      C2FFC8EDDBFFF7FBF9FFFBFBFBFFABABABEB0707076300000000000000000000
      000000000000000000000000000000000000527887DE8BCFE9FF8BCFE9FF8BCF
      E9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCF
      E9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF9DD4EAFFECF5F6FFACE3C7FF4CC8
      8EFF2CC182FF27C082FF27C183FF27C183FF27C082FF2EC182FF53C990FFB6E6
      CCFF838383DB010101210000000000000000527887DE8BCFE9FF8BCFE9FF8BCF
      E9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCF
      E9FF8BCFE9FF8BCFE9FF8BCFE9FF8BCFE9FF9DD4EAFFECF5F6FFACE3C7FF4CC8
      8EFF2CC182FF27C082FF27C183FF27C183FF27C082FF2EC181FF53C990FFB6E6
      CCFF838383DB010101210000000000000000000000003C230EBFED913DFFEE92
      3FFFE98D3CFF8B7E73FF444444FF8A8A8AFFE5E5E5FFF7F7F7FFFEFEFEFFF8ED
      E6FFE78938FFEE923EFFED913DFFAD673AFFCCC5CCFFDBD5DBFFDBD5DBFFDBD5
      DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFD6CED6FFBA95
      95FF030202630101010100000000000000000000000000000000000000000000
      0000000000000101010F373737B0FBFBFBFFF6FBF8FFB3E6CDFF76D3A5FF54C9
      92FF3BC385FF2ABF81FF27BF81FF27BF81FF27BF81FF27BF81FF2ABF80FF3BC3
      84FF54C990FF76D3A4FFB3E6CCFFF6FBF8FFF8F8F8FF353535B00101010F0000
      000000000000000000000000000000000000507684DD8BCFE9FF8BCFE9FF8BCF
      E9FF8BCFE9FF8FD0E8FF95D1E6FF9CD2E5FFA2D2E3FFA9D3E1FFAFD4DFFFB5D4
      DEFFBCD5DCFFC2D6DAFFC8D7D8FFD0D9D9FFF1F5F4FF88D6AAFF32C183FF27C1
      83FF27C183FF27C183FF37BB74FF27C082FF27C183FF27C183FF27C082FF36C1
      81FF95D9B1FF828383DB0101011000000000507684DD8BCFE9FF8BCFE9FF8BCF
      E9FF8BCFE9FF8FD0E8FF95D1E6FF9CD2E5FFA2D2E3FFA9D3E1FFAFD4DFFFB5D4
      DEFFBCD5DCFFC2D6DAFFC8D7D8FFD0D9D9FFF1F5F4FF88D6AAFF32C183FF27C1
      83FF27C183FF47CA95FF84D9B2FF84D9B2FF42BF7CFF27C183FF27C082FF36C1
      81FF95D9B1FF828383DB0101011000000000000000003C230DBFED903BFFED91
      3CFFE98C39FF94847CFF616161FF9A9A9AFFE5E5E5FFF7F7F7FFFEFEFEFFF8ED
      E6FFE78936FFED913CFFEC903BFFAE683BFFDCDADCFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE5E3E5FFC19E
      9BFF030202630101010100000000000000000000000000000000000000000000
      0000010101186C6C6CD1FDFDFDFFD7F1E4FF7DD4A7FF4DC78DFF2BC081FF27C0
      81FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C0
      82FF27C081FF2CBF80FF4DC68AFF7DD3A6FFD7F1E3FFFBFBFBFF696969D10101
      011800000000000000000000000000000000507685DDA4D3E3FFD0D9D8FFD6DA
      D7FFDDDBD5FFDFDBD5FFDFDBD5FFDFDBD5FFDFDBD5FFDFDBD5FFDFDBD5FFDFDB
      D5FFDFDBD5FFDFDBD5FFDFDBD5FFEFEDECFF9DDBB4FF30C081FF27C183FF27C1
      83FF27C183FF6ED3A4FFE2EFDAFF35B461FF27C183FF27C183FF27C183FF27C1
      83FF34BF7FFFADDFBEFF2022229D00000000507685DDA4D3E3FFD0D9D8FFD6DA
      D7FFDDDBD5FFDFDBD5FFDFDBD5FFDFDBD5FFDFDBD5FFDFDBD5FFDFDBD5FFDFDB
      D5FFDFDBD5FFDFDBD5FFDFDBD5FFEFEDECFF9DDBB4FF30C081FF27C183FF27C1
      83FF27C183FF72D6ADFFFFFFFFFFFFFFFFFF66BE72FF27C183FF27C183FF27C1
      83FF34BF7FFFADDFBEFF2022229D00000000000000003C230DBFED8F38FFED90
      39FFEA8D38FFCE854BFFCF8B55FFD6935CFFDF9C66FFE5A16BFFE6A26BFFE59C
      63FFE98A36FFED8F39FFEC8E38FFAF673AFFDCDBDCFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFE6E4E6FFC19F
      9CFF030202630101010100000000000000000000000000000000000000000101
      010F6C6C6CD1FDFDFDFFBEE8D1FF63CB95FF33C181FF27C081FF27C183FF27C1
      83FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF27C183FF27C183FF27C081FF34C081FF62CA92FFBEE8CFFFFCFCFCFF6868
      69D10101010F0000000000000000000000004F7583DCABD5E3FFE0DCD6FFE0DC
      D6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DC
      D6FFE0DCD6FFE0DCD6FFE2DFDAFFDEF1E3FF3BBD7AFF27C183FF27C183FF27C1
      83FF72D4A7FFFBFDFBFFFFFFFFFF94CA87FF27BF81FF27C183FF27C183FF27C1
      83FF27C082FF44BD77FFDBE4DDFC010101234F7583DCABD5E3FFE0DCD6FFE0DC
      D6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFE0DC
      D6FFE0DCD6FFE0DCD6FFE2DFDAFFDEF1E3FF3BBD7AFF27C183FF27C183FF27C1
      83FF27C183FF72D6ADFFFFFFFFFFFFFFFFFF66BE72FF27C183FF27C183FF27C1
      83FF27C082FF44BD77FFDBE4DDFC01010123000000003C220CBFED8D35FFED8D
      36FFED8E36FFED8D35FFED8E36FFED8F37FFED8F38FFED9039FFED8F37FFED8D
      35FFED8D36FFED8D35FFEC8D35FFAF6638FFDCDBDCFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFE6E4E6FFC19F
      9CFF030202630101010100000000000000000000000000000000000000003737
      37B0FDFDFDFFBCE6CDFF59C78AFF2BC081FF27C082FF27C183FF27C183FF27C1
      83FF27C183FF27C183FF27C183FF59CF9FFF70C889FF2CB76BFF27C183FF27C1
      83FF27C183FF27C183FF27C183FF27C082FF2CBE7FFF59C587FFBCE6CBFFFBFB
      FBFF343535B00000000000000000000000004E7481DBACD6E4FFE2DED8FFE2DE
      D8FFE2DED8FFE2DED8FFE2DED8FFE2DED8FFE2DED8FFE2DED8FFE2DED8FFE2DE
      D8FFE2DED8FFE2DED8FFECEAE8FF8FD4A2FF32C384FF27C183FF27C183FF77D5
      AAFFFCFDFCFFFFFFFFFFFFFFFFFFF4F8F0FF45B45FFF27C183FF27C183FF27C1
      83FF27C183FF35C181FFA3DBB0FF0D0E0E7D4E7481DBACD6E4FFE2DED8FFE2DE
      D8FFE2DED8FFE2DED8FFE2DED8FFE2DED8FFE2DED8FFE2DED8FFE2DED8FFE2DE
      D8FFE2DED8FFE2DED8FFECEAE8FF8FD4A2FF32C384FF27C183FF27C183FF27C1
      83FF27C183FF73D6AEFFFFFFFFFFFFFFFFFF66BE72FF27C183FF27C183FF27C1
      83FF27C183FF35C181FFA3DBB0FF0D0E0E7D000000003C220CBFED8C34FFED8C
      33FFED8C33FFED8D35FFED8E36FFED8F37FFED8F38FFED9039FFED8F37FFED8D
      35FFED8C33FFED8C33FFEC8C34FFAE6638FFDCDBDCFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE5E3E5FFC19E
      9CFF03020263010101010000000000000000000000000000000007070763FBFB
      FBFFD3EEDDFF59C383FF2BBF81FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF27C183FF27C183FF59CF9FFFF3FBF8FFFAFCF9FF7BB65AFF2CB76BFF27C1
      83FF27C183FF27C183FF27C183FF27C183FF27C082FF2CBE7EFF58C181FFD3EE
      DCFFF6F6F6FF0607066300000000000000004D717EDAACD7E4FFE3DFD9FFE3DF
      D9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DF
      D9FFE3DFD9FFE3DFD9FFF2F2F1FF59C27EFF4CCD98FF29C184FF7BD6ACFFFDFE
      FCFFFFFFFFFFF9FCFAFFFFFFFFFFFFFFFFFFB8D9A8FF3FBF7CFF2AC183FF27C1
      83FF29C184FF4DCC96FF6FC785FF3F4240BA4D717EDAACD7E4FFE3DFD9FFE3DF
      D9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DFD9FFE3DF
      D9FFE3DFD9FFE3DFD9FFF2F2F1FF59C27EFF4CCD98FF46CA94FF5ED0A2FF5ED0
      A2FF6DD3A8FFACE6CCFFFFFFFFFFFFFFFFFF96D198FF6AD3A6FF5ED0A2FF5ED0
      A2FF43C384FF4DCC96FF6FC785FF3F4240BA000000003C230DBFED8F39FFF1C6
      9DFFF0DFCFFFF0DFCFFFF0DFD0FFF0E0D0FFF0E0D0FFF0E0D0FFF0DFD0FFF0DF
      CFFFF0DFCFFFF2CAA5FFEC8E39FFAE673AFFDBDADBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE5E3E5FFC19E
      9DFF03020263010101010000000000000000000000000101010EAEAEAEEBF5FA
      F7FF6AC587FF30BF80FF27C082FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF27C183FF58CF9FFFF3FBF8FFFFFFFFFFFFFFFFFFFAFCF9FF7AB65AFF2CB7
      6BFF27C183FF27C183FF27C183FF27C183FF27C183FF27C082FF31BD7BFF68C4
      85FFF5FAF7FFA7A7A8EB0101010E000000004D717EDAACD8E5FFE4E1DBFFE4E1
      DBFFE4E1DBFFE4E1DBFFE4E1DBFFE4E1DBFFE4E1DBFFE4E1DBFFE4E1DBFFE4E1
      DBFFE4E1DBFFE4E1DBFFF4F4F4FF3EB868FF52CF9CFF5BD1A0FFFDFEFDFFFFFF
      FFFFF1F9F2FF87D5A7FFD2F0E0FFFFFFFFFFFEFEFEFF7EBD6DFF5BC282FF36C0
      81FF44CA94FF52CE9AFF54BD70FF767676D74D717EDAACD8E5FFE4E1DBFFE4E1
      DBFFE4E1DBFFE4E1DBFFE4E1DBFFE4E1DBFFE4E1DBFFE4E1DBFFE4E1DBFFE4E1
      DBFFE4E1DBFFE4E1DBFFF4F4F4FF3EB868FF52CF9CFFAAE8CFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF94CC8BFF52CE9AFF54BD70FF767676D7000000003C240EBFED9443FFF3D5
      B8FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF4D9C0FFED9443FFAF6A3FFFDBDADBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE6E4E6FFC1A0
      9EFF03020263010101020000000000000000000000000D0D0D78FCFCFCFFA4DB
      B4FF40BD7AFF27C081FF27C183FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF2DC386FFE7F8F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFCF9FF7AB6
      5AFF2CB76BFF27C183FF27C183FF27C183FF27C183FF27C183FF27BF81FF40BC
      76FFA3DBB2FFF8F8F9FF0C0C0C78000000004B717DD9ACD8E6FFE5E2DDFFE5E2
      DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2
      DDFFE5E2DDFFE5E2DDFFF4F3F3FF3DB45FFF52CF9CFF5DC98CFFD0EDD7FFE8F5
      E9FF75C98DFF62C484FF7BCD98FFFAFDFBFFFFFFFFFFE5F0DDFF59B257FF66C2
      7EFF5AC98EFF52CE9AFF52B866FF79797AD94B717DD9ACD8E6FFE5E2DDFFE5E2
      DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2DDFFE5E2
      DDFFE5E2DDFFE5E2DDFFF4F3F3FF3DB45FFF52CF9CFFAEE7CCFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF94CC8BFF52CE9AFF52B866FF79797AD9000000003D2510BFEE9B4EFFF0D3
      B8FFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
      EAFFEAEAEAFFF0D7BFFFEE9A4DFFAF6D44FFDBDADBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE5E3E5FFC19F
      9EFF03020263010101010000000000000000010101018A8A8ADEF5FBF7FF57BD
      75FF2ABE80FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF27C183FF58CF9FFFF3FBF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFC
      F8FF79B659FF2CB76BFF27C183FF27C183FF27C183FF27C183FF27C082FF2BBD
      7BFF55BC73FFF5FBF7FF848484DE010101014A6F7BD8ADD9E7FFE7E3DFFFE7E3
      DFFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3
      DFFFE7E3DFFFE7E3DFFFF1F0F0FF54B761FF55C88BFF5FBE71FF7CCA8AFF7AC9
      8AFF66C27FFF5FC07CFF5CBF7BFFACDFBBFFFFFFFFFFFFFFFFFFB2D59DFF60BA
      6AFF5EBD6EFF55C88CFF6BBD6CFF434543BD4A6F7BD8ADD9E7FFE7E3DFFFE7E3
      DFFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3DFFFE7E3
      DFFFE7E3DFFFE7E3DFFFF1F0F0FF54B761FF55C88BFF7BC985FF94D39DFF98D5
      A2FF99D6A4FFB9E3C1FFFFFFFFFFFFFFFFFFA6D39BFF99D6A3FF97D4A0FF93D2
      9BFF71BF71FF55C88CFF6BBD6CFF434543BD000000003D2612BFEFA159FFF4D9
      BFFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF4DDC7FFEEA159FFAF7049FFDBDADBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE4E2E4FFC19D
      9AFF0302026301010101000000000000000002020236F9F9F9FFB9E3C4FF3DBA
      6FFF2FC386FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF27C183FF27C183FF5DD0A1FFF4FCF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFAFCF8FF79B659FF2CB76CFF27C183FF27C183FF27C183FF27C183FF30C2
      84FF3DB86BFFB8E3C2FFF1F1F1FF02020236496D79D7ADDAE8FFE8E5E0FFE8E5
      E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5
      E0FFE8E5E0FFE8E5E0FFEBEAE8FF84C477FF54B252FF5EB75FFF5EBC6BFF61BF
      74FF66C17AFF69C37EFF6BC380FF6EC581FFE2F4E6FFFFFFFFFFFEFEFEFF82BE
      6BFF5EB459FF54B14FFF98CB86FF0F111084496D79D7ADDAE8FFE8E5E0FFE8E5
      E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5E0FFE8E5
      E0FFE8E5E0FFE8E5E0FFEBEAE8FF84C477FF54B252FF5EB75FFF5EBC6BFF61BF
      74FF66C17AFF9AD7A8FFFFFFFFFFFFFFFFFF7FBE6FFF64C179FF60BE72FF5EBB
      68FF5EB55BFF54B14FFF98CB86FF0F111084000000003D2817BFF1AD6EFFF5DD
      C7FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF5E1CDFFF0AC6EFFB07553FFDBDADBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEAEAEAFFE4E2E4FFC09D
      9BFF030202630101010100000000000000000D0D0D78FDFDFDFF81CD91FF3ABF
      7DFF47CB95FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF29C184FF40C68DFF51CA94FF81D9B1FFF7FCFAFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFAFCF8FF7CB75CFF2CB76AFF27C183FF27C183FF27C183FF47CB
      94FF3BBE78FF81CC90FFF9F9F9FF0C0C0C78486B77D6ADDBE9FFE9E7E2FFE9E7
      E2FFE9E7E2FFE9E7E2FFE9E7E2FFE9E7E2FFE9E7E2FFE9E7E2FFE9E7E2FFE9E7
      E2FFE9E7E2FFE9E7E2FFE6E4E1FFD2E6CBFF459C16FF5FAF45FF5FB355FF5EB7
      60FF5EBA68FF5EBC6CFF5FBD6FFF5FBD6EFF7BC782FFF9FCF9FFFFFFFFFFEEF6
      E9FF5FAA39FF499D1AFFD7E2D3FE0101012A486B77D6ADDBE9FFE9E7E2FFE9E7
      E2FFE9E7E2FFE9E7E2FFE9E7E2FFE9E7E2FFE9E7E2FFE9E7E2FFE9E7E2FFE9E7
      E2FFE9E7E2FFE9E7E2FFE6E4E1FFD2E6CBFF459C16FF5FAF45FF5FB355FF5EB7
      60FF5EBA68FF94D39CFFFFFFFFFFFFFFFFFF7BBC68FF5EBA66FF5EB65EFF5FB2
      52FF60AD41FF499D1AFFD7E2D3FE0101012A000000003D2A1ABFF3BB87FFF3E0
      CEFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFF3E3D3FFF3BB86FFB27D60FFDCDBDCFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE4E2E4FFC09E
      9CFF030202630101010100000000000000002E2E2EA8FEFEFEFF53BB6BFF3EC5
      88FF51CE9BFF35C58BFF57CF9EFF66D1A2FF67D1A2FF67D1A2FF69D2A3FF7FD6
      ABFF93DBB5FF98DCB8FF98DDB8FF98DDB8FFB9E7CDFFFEFFFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFDFDFCFF81B961FF2CB667FF27C183FF35C58BFF51CE
      9BFF3FC383FF51BA68FFFDFDFDFF2C2C2CA8486B77D6ADDCEAFFEBE8E4FFEBE8
      E4FFEBE8E4FFEBE8E4FFEBE8E4FFEBE8E4FFEBE8E4FFEBE8E4FFEBE8E4FFEBE8
      E4FFEBE8E4FFEBE8E4FFEBE8E4FFEBEBEAFF83BB6AFF529F23FF60AB3AFF5FAE
      44FF5FB14EFF5FB254FF5FB457FF5FB356FF5FB253FF99CD8BFFF7FAF4FF88C0
      6BFF529E23FF96C581FF292B29A900000000486B77D6ADDCEAFFEBE8E4FFEBE8
      E4FFEBE8E4FFEBE8E4FFEBE8E4FFEBE8E4FFEBE8E4FFEBE8E4FFEBE8E4FFEBE8
      E4FFEBE8E4FFEBE8E4FFEBE8E4FFEBEBEAFF83BB6AFF529F23FF60AB3AFF5FAE
      44FF5FB14EFF94CD8CFFFFFFFFFFFFFFFFFF7BB85FFF5FB04CFF60AE42FF60AA
      38FF529E23FF96C581FF292B29A900000000000000000C09057CF2BE8EFFF4E3
      D3FFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFF4E5D8FFF2BE90FFBE9381FFE9E8E9FFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFE4E2E4FFC09E
      9CFF030202630101010100000000000000005C5C5CC9FDFDFDFF36B054FF43C8
      8FFF52CF9CFF4ECD99FFD0F2E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFCFF81B961FF32B86BFF4ECD99FF52CF
      9CFF44C78BFF36AF51FFFDFDFDFF575757C9466A75D5ADDDEAFFECEAE6FFECEA
      E6FFECEAE6FFECEAE6FFECEAE6FFECEAE6FFECEAE6FFECEAE6FFECEAE6FFECEA
      E6FFECEAE6FFECEAE6FFECEAE6FFE9E7E4FFE9EDE8FF68A843FF529C23FF61A6
      35FF60A835FF60AA37FF60AB39FF60AA39FF60AA37FF60A835FF73B04CFF529B
      23FF77B157FF929591E50101011700000000466A75D5ADDDEAFFECEAE6FFECEA
      E6FFECEAE6FFECEAE6FFECEAE6FFECEAE6FFECEAE6FFECEAE6FFECEAE6FFECEA
      E6FFECEAE6FFECEAE6FFECEAE6FFE9E7E4FFE9EDE8FF68A843FF529C23FF61A6
      35FF60A835FF7DB95BFFB1D59BFFB1D59BFF6FAF45FF60A835FF61A635FF529B
      23FF77B157FF929591E501010117000000000000000000000000040302590705
      0473A47F60F0DFC4B3FFDFC4B3FFDFC4B3FFDFC4B3FFDFC4B3FFDFC4B3FFDFC4
      B3FFDFC4B3FFDEC2AEFFD9BAA5FFE7E7E7FFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFE5E3E5FFC19E
      9CFF030202630101010100000000000000007B7B7BD8EEF8F0FF33AE4FFF47CA
      92FF52CF9CFF52CF9CFFD6F4E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFCFF81BA62FF4EC17CFF52CF
      9CFF47C88EFF34AD4BFFEEF8F0FF747474D8466872D4AEDEEBFFEEEBE8FFEEEB
      E8FFEEEBE8FFEEEBE8FFEEEBE8FFEEEBE8FFEEEBE8FFEEEBE8FFEEEBE8FFEEEB
      E8FFEEEBE8FFEEEBE8FFEEEBE8FFEEEBE8FFE9E7E4FFE8ECE7FF84B86AFF4691
      14FF589D2AFF60A334FF61A335FF61A335FF60A234FF589C2AFF489217FF91BF
      7BFF959595E60101012D0000000000000000466872D4AEDEEBFFEEEBE8FFEEEB
      E8FFEEEBE8FFEEEBE8FFEEEBE8FFEEEBE8FFEEEBE8FFEEEBE8FFEEEBE8FFEEEB
      E8FFEEEBE8FFEEEBE8FFEEEBE8FFEEEBE8FFE9E7E4FFE8ECE7FF84B86BFF4691
      14FF589D2AFF60A334FF61A335FF61A335FF60A234FF589C2AFF489217FF91BF
      7BFF959595E60101012D00000000000000000000000000000000000000000101
      010789715AE5EEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFE5E3E5FFC19F
      9EFF030202630101010100000000000000007B7B7BD8EEF8F0FF34AB48FF46C9
      92FF52CF9CFF52CF9CFFD6F3E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFCFF81BA62FF4EC17CFF52CF
      9CFF47C88EFF34A944FFEEF7EFFF747474D8446670D3AEDEECFFEFEDEAFFEFED
      EAFFEFEDEAFFEFEDEAFFEFEDEAFFEFEDEAFFEFEDEAFFEFEDEAFFEFEDEAFFEFED
      EAFFEFEDEAFFEFEDEAFFEFEDEAFFEFEDEAFFEFEDEAFFEBE9E6FFE7E7E7FFD0E1
      C9FF87B86DFF5C9C32FF479018FF48911AFF609F37FF8DBB75FFD0DDCAFE3434
      32B20101011A000000000000000000000000446670D3AEDEECFFEFEDEAFFEFED
      EAFFEFEDEAFFEFEDEAFFEFEDEAFFEFEDEAFFEFEDEAFFEFEDEAFFEFEDEAFFEFED
      EAFFEFEDEAFFEFEDEAFFEFEDEAFFEFEDEAFFEFEDEAFFEBE9E6FFE7E7E7FFD0E1
      C9FF87B86DFF5C9C32FF479018FF48911AFF609F37FF8DBB75FFD0DDCBFE3434
      32B20101011A0000000000000000000000000000000000000000000000000101
      010789715AE5EFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFE6E4E6FFC1A0
      9FFF030202630101010200000000000000005B5B5BC9FDFDFDFF36A73EFF43C8
      8FFF52CF9CFF57CA90FFDAF1E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFCFF82B961FF5CB65FFF56CA8FFF52CF
      9CFF45C78BFF36A53AFFFDFDFDFF575757C943656FD2AEDFEDFFF0EEEBFFF0EE
      EBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EE
      EBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFDDE9EBFF9ED6
      E7FFC5DCE3FF8E9092E5B3B3B3EFABABACED606160CF17191793020202360000
      00000000000000000000000000000000000043656FD2AEDFEDFFF0EEEBFFF0EE
      EBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EE
      EBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFF0EEEBFFDDE9EBFF9ED6
      E7FFC5DCE3FF8E9092E5B3B3B3EFABABACED606160CF17191793020202360000
      0000000000000000000000000000000000000000000000000000000000000101
      01078A725AE5F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFE7E5E7FFC2A1
      A1FF030202630101010200000000000000002E2E2EA8FEFEFEFF4FAC47FF3DC4
      85FF53CC96FF5DBF72FF82CE91FF8ED29AFF91D39DFF94D4A1FF96D5A3FF92D4
      A1FF89D09BFF85CE97FF84CE97FF85CE98FFACDEB9FFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFDFDFCFF82BA61FF5CB65DFF61BF74FF5DBE70FF53CC
      96FF3FC281FF4FAB44FFFCFCFCFF2B2C2BA8436570D2AEE0EEFFF2F0EEFFF2F0
      EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0
      EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFDFEBEEFF8ED9
      EFFF9FD5E7FF0303034D00000000000000000000000000000000000000000000
      000000000000000000000000000000000000436570D2AEE0EEFFF2F0EEFFF2F0
      EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0
      EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFF2F0EEFFDFEBEEFF8ED9
      EFFF9FD5E7FF0303034D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01078A725BE5F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFE7E5E7FFC2A1
      A0FF030202610101010100000000000000000D0D0D78FCFCFCFF7DBF70FF37B9
      6BFF5ABF76FF5EB966FF5EBD6DFF60BF73FF64C178FF67C27CFF6BC480FF6EC5
      81FF70C683FF6FC583FF6CC581FF88D19CFFF6FBF8FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFAFCF8FF80B75BFF5BB65EFF5FBE72FF5EBC6BFF5EB964FF5ABE
      74FF38B766FF7DBE6CFFF8F8F8FF0C0C0C7841636DD1AEE0EFFFF3F1EFFFF3F1
      EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1
      EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFDFECEFFF8ED9
      EFFF9FD5E7FF0303034D00000000000000000000000000000000000000000000
      00000000000000000000000000000000000041636DD1AEE0EFFFF3F1EFFFF3F1
      EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1
      EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFDFECEFFF8ED9
      EFFF9FD5E7FF0303034D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01078A735DE5F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFE7E5E7FFC19F
      9EFF0302026301010101000000000000000002020236F7F7F7FFB5DAA8FF34A4
      32FF5AB04FFF5FB55CFF5EB863FF5EBB6AFF5EBD70FF61BF74FF63C178FF66C2
      7BFF68C37DFF6AC37FFF8BD29CFFF7FCF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFAFCF8FF7DB558FF59B65CFF5EBD6EFF5EBB68FF5EB862FF5FB45AFF5BAF
      4CFF35A32CFFB5DAA6FFEEEEEEFF0202023641636BD0AFE2EFFFF5F3F1FFF5F3
      F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3
      F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFE1EEF0FF8FDA
      EFFFA0D6E8FF0303034D00000000000000000000000000000000000000000000
      00000000000000000000000000000000000041636BD0AFE2EFFFF5F3F1FFF5F3
      F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3
      F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFF5F3F1FFE1EEF0FF8FDA
      EFFFA0D6E8FF0303034D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01078A745FE5F1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0F0F0FFE8E6E8FFC2A1
      A0FF0302026301010102000000000000000001010101888888DEF5FAF4FF449E
      16FF4BA329FF5FB150FF5FB458FF5EB65FFF5EB965FF5EBB6AFF5EBD6EFF5FBE
      72FF60BF74FF84CF93FFF6FBF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFC
      F8FF7DB557FF58B457FF5EBB69FF5EB964FF5FB65EFF5FB356FF5FB04DFF4BA3
      25FF449D15FFF5F9F4FF808080DE01010101406069CFAFE2F0FFF5F3F2FFF5F3
      F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3
      F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFE2EEF1FF8FDA
      EFFFA0D7E8FF0303034D00000000000000000000000000000000000000000000
      000000000000000000000000000000000000406069CFAFE2F0FFF5F3F2FFF5F3
      F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3
      F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFF5F3F2FFE2EEF1FF8FDA
      EFFFA0D7E8FF0303034D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01078A7460E5F1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFE9E7E9FFC3A2
      A2FF03020263010101020000000000000000000000000D0D0D78FBFBFBFF97C9
      81FF3A9706FF5BAA36FF60AF4AFF5FB253FF5FB459FF5EB65FFF5EB863FF5EBA
      67FF62BD6EFFEDF7EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFCF9FF7EB5
      57FF58B151FF5EB862FF5FB65EFF5FB357FF5FB151FF60AF47FF5BAA33FF3A96
      05FF98C981FFF5F5F6FF0C0C0C7800000000406069CFAFE3F1FFF7F6F5FFF7F6
      F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6
      F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFE3F0F4FF8FDA
      EFFFA0D7E8FF0303034D00000000000000000000000000000000000000000000
      000000000000000000000000000000000000406069CFAFE3F1FFF7F6F5FFF7F6
      F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6
      F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFE3F0F4FF8FDA
      EFFFA0D7E8FF0303034D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01078A7661E5F2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2EDE8FFF2E4D7FFF2E2D3FFF1E1D1FFF1E1D1FFE9D7CAFFC39B
      93FF0202025E010101010000000000000000000000000101010EABABABEBF4F9
      F3FF4E9E22FF449A11FF5FAB36FF60AD3FFF60B04AFF5FB151FF5FB356FF5FB4
      5AFF5FB65DFF81C781FFF6FBF6FFFFFFFFFFFFFFFFFFFAFCF9FF7EB557FF58AE
      4AFF5FB459FF5FB355FF5FB150FF60AF48FF60AD3DFF5FAB35FF449A11FF4E9D
      21FFF4F9F3FFA2A2A2EB0101010E000000003F5E67CEAFE3F1FFF7F6F5FFF7F6
      F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6
      F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFE3F1F4FF8FDB
      EFFFA0D8E9FF0303034D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000003F5E67CEAFE3F1FFF7F6F5FFF7F6
      F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6
      F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFF7F6F5FFE3F1F4FF8FDB
      EFFFA0D8E9FF0303034D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01078B7764E5F3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3DECAFFF5D3B5FFF5D5B8FFF5D4B6FFF5D4B6FFEEC9ABFF4E37
      30D501010123000000000000000000000000000000000000000006070663F8F8
      F8FFCCE3C2FF3A9006FF4B9C1AFF60A934FF60AB36FF60AD3CFF60AE44FF60B0
      4BFF5FB14FFF5FB151FF81C37AFFF6FAF5FFFAFCF9FF7EB557FF59AA40FF5FB0
      4EFF60AF49FF60AE42FF60AC3AFF60AB35FF60A934FF4B9B1AFF3A9006FFCCE3
      C2FFF0F0F1FF0606066300000000000000003D5D66CDAFE4F2FFF9F8F7FFF9F8
      F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8
      F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFE5F2F6FF8FDB
      F0FFA0D8EAFF0303034D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D5D66CDAFE4F2FFF9F8F7FFF9F8
      F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8
      F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8F7FFE5F2F6FF8FDB
      F0FFA0D8EAFF0303034D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01078B7765E5F4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4DFCAFFF6DBC5FFF7E0CEFFF7E0CEFFF5DBC6FF594639D50101
      0129010101010000000000000000000000000000000000000000000000003535
      35B0FBFBFBFFACD29BFF398E03FF4B991AFF60A734FF60A935FF60AA35FF60AB
      36FF60AC38FF60AD3BFF60AD3DFF82C069FF87BF69FF59A72FFF60AC3AFF60AC
      37FF60AB35FF60AA35FF60A835FF60A634FF4B991AFF398D03FFACD19BFFF7F7
      F8FF313331B00000000000000000000000003D5B65CCAFE5F3FFFBFAFAFFFBFA
      FAFFF9F8F8FFFAF9F9FFFAF9F9FFFAF9F9FFFBFAFAFFFBFAFAFFFBFAFAFFFBFA
      FAFFFBFAFAFFFBFAFAFFFBFAFAFFFBFAFAFFFBFAFAFFFBFAFAFFE6F4F8FF90DC
      F1FFA0D9EAFF0303034D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D5B65CCAFE5F3FFFBFAFAFFFBFA
      FAFFF9F8F8FFFAF9F9FFFAF9F9FFFAF9F9FFFBFAFAFFFBFAFAFFFBFAFAFFFBFA
      FAFFFBFAFAFFFBFAFAFFFBFAFAFFFBFAFAFFFBFAFAFFFBFAFAFFE6F4F8FF90DC
      F1FFA0D9EAFF0303034D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01078C7969E5F5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5DFCBFFF6DBC5FFF7E0CEFFF5DBC6FF5A4639D5010101290101
      0101000000000000000000000000000000000000000000000000000000000101
      010F696969D1FCFCFCFFACD19BFF3A8D06FF449311FF5CA22FFF61A635FF61A6
      35FF60A835FF60A835FF60A935FF60A935FF60A935FF60A935FF60A835FF60A7
      35FF61A635FF61A535FF5CA22FFF449311FF3A8C06FFACD19BFFF9F9F9FF6363
      63D10101010F0000000000000000000000003C5A62CB98DEF1FFADE4F3FFB7DF
      EBFFD3D3D4FFD9DADAFFDDDDDEFFDDDEDEFFDADBDBFFD5D5D6FFCFCFD0FFC7C8
      C8FFBFBFC0FFB8B9B9FFB0B1B2FFAAAAABFFAEBABEFFCAEDF6FFC0EAF5FF90DC
      F1FFA0D9EBFF0303034D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000003C5A62CB98DEF1FFADE4F3FFB7DF
      EBFFD3D3D4FFD9DADAFFDDDDDEFFDDDEDEFFDADBDBFFD5D5D6FFCFCFD0FFC7C8
      C8FFBFBFC0FFB8B9B9FFB0B1B2FFAAAAABFFAEBABEFFCAEDF6FFC0EAF5FF90DC
      F1FFA0D9EBFF0303034D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01078D7B6BE5F7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF5E1CEFFF6DBC5FFF5DBC6FF5A4639D501010129010101010000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010118686868D1FBFBFBFFCBE2C1FF4E9721FF3B8B05FF4C961BFF5CA1
      2FFF61A435FF61A435FF61A435FF61A535FF61A435FF61A435FF61A435FF61A4
      35FF5CA02FFF4C961BFF3B8B05FF4E9621FFCBE2C1FFF7F7F8FF636363D10101
      01180000000000000000000000000000000010181A92659BAEF070ABC0F682BE
      D3FCDADADBFFE2E2E2FFE7E7E7FFE8E8E8FFE3E3E4FFDCDCDDFFD3D3D4FFCCCC
      CDFFC2C3C4FFBABBBBFFB3B4B5FFACACADFF9AB4BCFF8FDCF0FF90DCF1FF90DC
      F1FFA0D9EBFF0303034D00000000000000000000000000000000000000000000
      00000000000000000000000000000000000010181A92659BAEF070ABC0F682BE
      D3FCDADADBFFE2E2E2FFE7E7E7FFE8E8E8FFE3E3E4FFDCDCDDFFD3D3D4FFCCCC
      CDFFC2C3C4FFBABBBBFFB3B4B5FFACACADFF9AB4BCFF8FDCF0FF90DCF1FF90DC
      F1FFA0D9EBFF0303034D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01078D7C6BE5F8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF6E3D0FFF4D7BEFF5A4639D50101012901010101000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101010F343534B0F6F6F6FFF4F9F4FF98C481FF459015FF3988
      03FF428E0FFF4C941BFF529823FF559A27FF559A27FF529823FF4C941BFF428E
      0FFF398803FF459015FF98C381FFF4F8F3FFF0F0F1FF313331B00101010F0000
      0000000000000000000000000000000000000000000000000000000000000000
      00001717188FE4E4E5FEF0F0F1FFF1F2F2FFEAEBEBFFE1E1E2FFD7D7D8FFCECE
      CFFFC5C6C6FFBCBDBDFFB4B5B6FFACADAEFF13151696030404550405055C0406
      0662050708680101012100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001717188FE4E4E5FEF0F0F1FFF1F2F2FFEAEBEBFFE1E1E2FFD7D7D8FFCECE
      CFFFC5C6C6FFBCBDBDFFB4B5B6FFACADAEFF13151696030404550405055C0406
      0662050708680101012100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01068A7765E4F8EBDFFFF8EBE0FFF8EBE0FFF8EBE0FFF8EBE0FFF8EBE0FFF8EB
      E0FFF8EBE0FFF8EBE0FFF8EBE0FFF8EBE0FFF8EBE0FFF8EBE0FFF8EBE0FFF8EB
      E0FFF8EBE0FFF5DAC1FF584436D4010101290101010100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000006060663A7A7A8EBF8F8F9FFF5F9F5FFB5D4
      A6FF7EB15EFF519726FF3A8706FF398603FF398603FF3A8706FF519626FF7EB1
      5EFFB5D4A6FFF5F9F4FFF5F5F6FFA2A2A2EB0606066300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101012606060662888888DCEDEDEEFFE3E3E3FFD8D9D9FFCFCF
      D0FF767676E2212222A50F0F0F860202034B0101010100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101012606060662888888DCEDEDEEFFE3E3E3FFD8D9D9FFCFCF
      D0FF767676E2212222A50F0F0F860202034B0101010100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0101020202400202024D0202024D0202024D0202024D0202024D0202024D0202
      024D0202024D0202024D0202024D0202024D0202024D0202024D0202024D0202
      024D0202024D0202024D0101011B010101010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010E0C0C0C78848484DEF1F1
      F1FFF9F9F9FFFDFDFDFFFDFDFDFFEEF6EDFFEEF6EDFFFDFDFDFFFCFCFCFFF8F8
      F8FFEEEEEEFF808080DE0C0C0C780101010E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000007070763E9E9EAFFE0E0E1FFD6D7D7FFCECE
      CFFF0A0A0A780000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000007070763E9E9EAFFE0E0E1FFD6D7D7FFCECE
      CFFF0A0A0A780000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101010202
      02360C0C0C782B2B2BA7585959CA747474D8747474D8585858CA292A29A70C0C
      0C78020202360101010100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000070707675C5C5DCE6B6B6BDA1212
      128B010101060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000070707675C5C5DCE6B6B6BDA1212
      128B010101060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101010202
      02360D0D0D782D2D2DA75E5E5ECA7B7B7BD87B7B7BD85D5D5DCA2D2D2DA70D0D
      0D78020202360101010100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      012C121312844A4C4BBE808081D97C7C7CD7424443B90E0F0F7D010101230000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101010202
      02360D0D0D782D2D2DA75E5E5ECA7B7B7BD87B7B7BD85D5D5DCA2D2D2DA70D0D
      0D78020202360101010100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010102010101060101010B010101120101
      011B010101250101011901010107010101010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010E0D0D0D788A8A8ADEF9F9
      F9FFFDFDFDFFFEFEFEFFFDFDFCFFF8F2EAFFF8F2EAFFFDFDFCFFFEFEFEFFFCFC
      FCFFF7F7F7FF888888DE0D0D0D780101010E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010101050202023702020239303130ABE6F2
      ECFEB2E6CCFF81D8AFFF65CF9CFF67CF9DFF85D9B1FFB8E8D0FFE0E9E4FC2123
      219C010101100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010E0D0D0D788A8A8ADEF9F9
      F9FFFDFDFDFFFEFEFEFFFDFDFCFFF8F2EAFFF8F2EAFFFDFDFCFFFEFEFEFFFCFC
      FCFFF7F7F7FF888888DE0D0D0D780101010E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000101010C0101013203030359090909790F0F0F911212
      13A1171B1CB70D0F0FA606060681020202550101012B01010110010101030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000007070763AEAEAEEBFCFCFCFFFAF7F3FFE0C7
      A2FFCA9D5BFFB97F21FFB06E04FFAF6E03FFAF6E03FFB06E04FFB97F21FFC99C
      5BFFE0C7A2FFFAF7F3FFFBFBFBFFABABABEB0707066300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01150303024E0D0D0B8837322BC28E826CF6B3A58EFFE9EAE7FEACE3C7FF4CC8
      8EFF2CC182FF27C082FF27C183FF27C183FF27C082FF2EC182FF53C990FFB6E6
      CCFF838383DB0101012100000000000000000000000000000000000000000000
      000000000000000000000000000007070763AEAEAEEBFCFCFCFFFAF7F3FFE0C7
      A2FFCA9D5BFFB97F21FFB06E04FFAF6E03FFAF6E03FFB06E04FFB97F21FFC99C
      5BFFE0C7A2FFFAF7F3FFFBFBFBFFABABABEB0707066300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010101040101010C010101190101012B0202
      0242486978E554869CF5192023BE090A0A9A0B0B0B9C0808088C0304046A0202
      02400101011D0101010901010101000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101010F373737B0FBFBFBFFFAF7F2FFD3B07FFFB07312FFAC6A
      03FFAB6A03FFAA6903FFAB6903FFAB6903FFAB6903FFAA6903FFAA6903FFAB69
      03FFAB6A03FFAF7212FFD2AF7FFFFAF7F2FFF8F8F8FF353535B00101010F0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000010101020101012D06050567191715A0423E37DA6760
      56FE56524BFF746C5EFFAD9D82FFB3A48CFFEFF0ECFF88D6AAFF32C183FF27C1
      83FF27C183FF27C183FF3CC78FFF3DBF7DFF27C183FF27C183FF27C082FF36C1
      81FF95D9B1FF828383DB01010110000000000000000000000000000000000000
      0000000000000101010F373737B0FBFBFBFFFAF7F2FFD3B07FFFB07312FFAC6A
      03FFAB6A03FFAA6903FFAB6903FFAB6903FFAB6903FFAA6903FFAA6903FFAB69
      03FFAB6A03FFAF7212FFD2AF7FFFFAF7F2FFF8F8F8FF353535B00101010F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      034977BAD4FF6BACC9FF7ABBD4FF25363CC3020202460101013A020202520404
      0469050506750404046B0202024F0101012C0101011101010104000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000010101186C6C6CD1FDFDFDFFE8D6BEFFB0761EFFAA6803FFAA6903FFAB69
      03FFAB6A03FFAC6A03FFAC6B03FFAC6B03FFAC6B03FFAC6B03FFAB6A03FFAB6A
      03FFAB6903FFAA6803FFA96703FFB0751EFFE7D6BEFFFBFBFBFF696969D10101
      01180000000000000000000000000000000000000000000000000101010D0202
      02440C0B0A7E312E29B88E8374F0BAAC97FFBBAD97FF9B9081FF56524CFF5552
      4BFF54514BFF7B7366FFB3A48BFFE2DDD6FF9DDBB4FF30C081FF27C183FF27C1
      83FF27C183FF3CC78FFFDCF5EBFFDCECD2FF40B767FF27C183FF27C183FF27C1
      83FF34BF7FFFADDFBEFF2022229D000000000000000000000000000000000000
      0000010101186C6C6CD1FDFDFDFFE8D6BEFFB0761EFFAA6803FFAA6903FFAB69
      03FFAB6A03FFAC6A03FFAC6B03FFAC6B03FFAC6B03FFAC6B03FFAB6A03FFAB6A
      03FFAB6903FFAA6803FFA96703FFB0751EFFE7D6BEFFFBFBFBFF696969D10101
      0118000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000273A
      43BF7CBED7FF79BAD4FF6EAFCAFF80C0D8FF689FB5F5070A0A79010101070101
      01030101010B0101011A0101012F020202430202024D02020245010101300101
      0119010101080101010100000000000000000000000000000000000000000101
      010F6C6C6CD1FDFDFDFFD9BD97FFA66405FFAA6803FFAB6903FFAB6A03FFAD6B
      03FFAD6B03FFAE6C03FFAE6C03FFAE6C03FFAE6C03FFAE6C03FFAD6C03FFAD6B
      03FFAC6B03FFAB6A03FFAB6903FFA96803FFA56405FFD9BD97FFFCFCFCFF6868
      68D10101010F000000000000000000000000000000001A181799BAAFA0FCC9BD
      ACFFC7BBAAFFC6B9A7FFC4B8A5FFC3B6A3FFC1B4A1FFA29787FF5D5952FF5D58
      51FF5C5750FF817A6CFFC4B9A7FFDEF1E3FF3BBD7AFF27C183FF27C183FF27C1
      83FF27C183FFA1E4C9FFFFFFFFFFFFFFFFFFDCECD2FF40B767FF27C183FF27C1
      83FF27C082FF44BD77FFDBE4DDFC010101230000000000000000000000000101
      010F6C6C6CD1FDFDFDFFD9BD97FFA66405FFAA6803FFAB6903FFAB6A03FFAD6B
      03FFAD6B03FFAE6C03FFAE6C03FFAE6C03FFAE6C03FFAE6C03FFAD6C03FFAD6B
      03FFAC6B03FFAB6A03FFAB6903FFA96803FFA56405FFD9BD97FFFCFCFCFF6868
      68D10101010F0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000202023881C0
      D8FF81C1D9FF7FC0D8FF71AFCBFF7DBDD6FF81C1D9FF80C0D9FF3E5C69D60202
      024000000000000000000000000000000000010101030101010A010101150101
      0120010101220101011A0101010D010101030000000000000000000000003737
      37B0FDFDFDFFD8BC96FFA36103FFAA6803FFAB6A03FFAC6B03FFAD6B03FFAE6C
      03FFB2740EFFEBDBC3FFEBDBC3FFEBDBC3FFEBDBC3FFEBDBC3FFA1644AFFAE6D
      03FFAE6C03FFAD6B03FFAC6B03FFAB6A03FFAA6803FFA36003FFD8BB96FFFBFB
      FBFF353434B000000000000000000000000000000000373532B7D2C9BCFFD0C6
      B9FFCEC4B6FFCCC2B3FFCBC0B1FFC9BDADFFC8BCABFFA89E8FFF645F57FF635E
      57FF625E56FF858073FFDDD8D0FF8FD4A2FF32C384FF27C183FF27C183FF27C1
      83FF27C183FF2FC387FFC2EDDBFFFFFFFFFFFFFFFFFFDCEBD2FF40B767FF27C1
      83FF27C183FF35C181FFA3DBB0FF0D0E0E7D0000000000000000000000003737
      37B0FDFDFDFFD8BC96FFA36103FFAA6803FFAB6A03FFAC6B03FFAD6B03FFAE6C
      03FFAE6D03FFDABB8CFFEBDBC4FFEBDBC4FFEBDBC4FFEBDBC4FFCCA894FFA15C
      0AFFAE6C03FFAD6B03FFAC6B03FFAB6A03FFAA6803FFA36003FFD8BB96FFFBFB
      FBFF353434B00000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001E2A30AF88C6
      DDFF85C4DCFF82C3DBFF81BFD8FF71B0CBFF82C3DBFF81C2DAFF81C1D9FF7CBA
      D2FD162024A30101011600000000000000000000000000000000000000000000
      000000000000010101020101010401010102000000000000000007070763FBFB
      FBFFE6D5BEFFA16005FFAA6803FFAB6A03FFAD6B03FFAE6C03FFAE6D03FFAF6E
      03FFB57712FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D6260FFB06E
      03FFAF6D03FFAE6D03FFAD6C03FFAC6B03FFAB6A03FFAA6803FFA15F05FFE6D5
      BEFFF6F6F6FF06060663000000000000000000000000393734B7D8D1C8FFD7D0
      C6FFD6CFC4FFD4CDC1FFD2CABDFFD0C7BAFFCFC5B7FFAEA699FF6A655CFF6A64
      5BFF69635BFF8C847BFFEDEBE8FF59C27EFF4CCD98FF46C994FF5CCFA0FF5CCF
      A0FF6BD3A6FF82D8B0FF90DCB8FFEAF8F1FFFFFFFFFFFFFFFFFFDFEDD7FF45B8
      68FF29C184FF4DCC96FF6FC785FF3F4240BA000000000000000007070763FBFB
      FBFFE6D5BEFFA16005FFAA6803FFAB6A03FFAD6B03FFAE6C03FFAE6D03FFAF6E
      03FFB06E03FFE8D5B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5BCC1FF9F58
      0CFFAF6D03FFAE6D03FFAD6C03FFAC6B03FFAB6A03FFAA6803FFA15F05FFE6D5
      BEFFF6F6F6FF0606066300000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000101012989C1D4FD8ECA
      DFFF8BC8DEFF89C6DDFF86C5DCFF79B4CFFF80BED6FF84C4DBFF83C3DBFF81C2
      DAFF81C2DAFF608FA2EE05060768010101020000000000000000000000000000
      000000000000000000000000000000000000000000000101010EAEAEAEEBF9F6
      F2FFA76C1EFFA86603FFAB6A03FFAD6B03FFAE6C03FFAF6D03FFB06E03FFB16F
      03FFB67912FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D6260FFB170
      03FFB06F03FFAF6E03FFAF6D03FFAE6C03FFAC6B03FFAB6A03FFA86603FFA66B
      1EFFF9F6F2FFA7A7A8EB0101010E00000000000000003A3937B7DBD5CCFFDAD4
      CBFFDAD4CAFFD9D3C9FFD8D2C8FFD7D1C7FFD6CFC5FFB6AFA5FF716B61FF706A
      60FF6F6960FF928A81FFF3F2F1FF3EB868FF52CF9CFFADE8D0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2EF
      D9FF56BD70FF52CE9AFF54BD70FF767676D7000000000101010EAEAEAEEBF9F6
      F2FFA76C1EFFA86603FFAB6A03FFAD6B03FFAE6C03FFAF6D03FFB06E03FFB16F
      03FFB27003FFE9D5B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5BCC1FFA059
      0CFFB06F03FFAF6E03FFAF6D03FFAE6C03FFAC6B03FFAB6A03FFA86603FFA66B
      1EFFF9F6F2FFA7A7A8EB0101010E000000000000000000000000000000000000
      00000000000000000000000000000000000000000000161E229F98CFE3FF95CE
      E2FF92CCE1FF8FCAE0FF8DC9DFFF89C6DDFF74B1CCFF88C6DDFF86C5DCFF85C4
      DCFF83C3DBFF82C3DAFF81C1D9FF304751C80102023100000000000000000000
      000000000000000000000000000000000000000000000D0D0D78FCFCFCFFCBA8
      7FFFA26003FFAB6903FFAC6B03FFAE6C03FFAF6D03FFB06E03FFB16F03FFB270
      03FFB87A12FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E6260FFB371
      03FFB27003FFB16F03FFB06E03FFAE6D03FFAD6C03FFAC6A03FFAB6903FFA25F
      03FFCBA77FFFF8F8F9FF0C0C0C7800000000000000003C3937B7DFDAD3FFDED9
      D1FFDED8D0FFDDD7CEFFDCD6CDFFDBD4CBFFDAD4CAFFBBB5ABFF787166FF7770
      66FF766F65FF999288FFF3F2F2FF3DB45FFF52CF9CFFAFE7CEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBF4
      E5FF68BC6CFF52CE9AFF52B866FF79797AD9000000000D0D0D78FCFCFCFFCBA8
      7FFFA26003FFAB6903FFAC6B03FFAE6C03FFAF6D03FFB06E03FFB16F03FFB270
      03FFB37103FFE9D6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5BCC1FFA15A
      0CFFB27003FFB16F03FFB06E03FFAE6D03FFAD6C03FFAC6A03FFAB6903FFA25F
      03FFCBA77FFFF8F8F9FF0C0C0C78000000000000000000000000000000000000
      0000000000000000000000000000000000000101011D8CBACCF9A0D3E6FF9DD2
      E5FF9AD0E3FF97CEE2FF94CDE1FF91CBE0FF81BBD4FF81BFD7FF8AC7DEFF89C6
      DDFF87C6DCFF85C5DCFF84C4DBFF82C3DBFF7AB2CBFB0F1418910101010D0000
      000000000000000000000000000000000000010101018A8A8ADEFAF7F3FF9F60
      12FFAA6803FFAB6A03FFAD6B03FFAE6D03FFB06E03FFB16F03FFB37103FFB472
      03FFB97B11FFF9F4EFFFF7F2F1FFF7F2F1FFF7F2F1FFF7F2F1FF9E625BFFB573
      03FFB47203FFB27003FFB16F03FFAF6E03FFAE6C03FFAD6B03FFAB6A03FFA967
      03FF9E6012FFF9F7F3FF848484DE01010101000000003D3C3AB8E3DED7FFE2DD
      D6FFE1DCD5FFE1DBD4FFE0DAD3FFDFD9D2FFDED8D0FFC0B9B0FF7E776BFF7E76
      6AFF7D7569FF9F988DFFEFEEECFF54B761FF55C88BFF7BC985FF93D39CFF97D5
      A1FF98D5A3FF93D3A0FF91D29FFFE5F4E7FFFFFFFFFFFFFFFFFFE9F3E3FF6DB8
      5FFF5EBD6EFF55C88CFF6BBD6CFF434543BD010101018A8A8ADEFAF7F3FF9F60
      12FFAA6803FFAB6A03FFAD6B03FFAE6D03FFB06E03FFB16F03FFB37103FFB472
      03FFB57303FFEAD6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5BCC1FFA35B
      0CFFB47203FFB27003FFB16F03FFAF6E03FFAE6C03FFAD6B03FFAB6A03FFA967
      03FF9E6012FFF9F7F3FF848484DE010101010000000000000000000000000000
      0000000000000000000000000000000000000F14168EAAD9E9FFA7D7E8FFA4D6
      E7FFA1D4E6FF9ED2E5FF9BD1E4FF98CFE3FF94CDE1FF79B3CDFF8DC9DFFF8DC9
      DFFF8BC8DEFF89C7DDFF88C6DDFF86C5DCFF85C4DBFF83C3DBFF537A8BE50304
      04560000000000000000000000000000000002020236F9F9F9FFD8BFA2FF9F5C
      03FFAE700DFFAD6B03FFAE6C03FFAF6E03FFB16F03FFB27003FFB47203FFB573
      03FFB67403FFB77503FFB87503FFB87603FFB87603FFB87503FFB77403FFB674
      03FFB57303FFB47203FFB27003FFB06F03FFAF6D03FFAE6C03FFAC6B03FFAE6F
      0DFF9E5B03FFD8BFA2FFF1F1F1FF02020236000000003E3D3BB8E6E2DCFFE4DF
      D9FFC5C0B9FF9C9891FFDFDAD3FFE2DDD6FFE2DDD6FFC5BFB6FF827D70FF817C
      6FFF817B6FFFA59E93FFE6E4E1FF84C477FF54B252FF5EB75FFF5EBC6BFF61BF
      74FF66C17AFF6BC380FFC8EAD0FFFFFFFFFFFFFFFFFFE5F0DDFF67B55AFF5EBB
      68FF5EB55BFF54B14FFF98CB86FF0F11108402020236F9F9F9FFD8BFA2FF9F5C
      03FFAE700DFFAD6B03FFAE6C03FFAF6E03FFB16F03FFB27003FFB47203FFB573
      03FFB67403FFEAD6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5BCC1FFA35C
      0CFFB57303FFB47203FFB27003FFB06F03FFAF6D03FFAE6C03FFAC6B03FFAE6F
      0DFF9E5B03FFD8BFA2FFF1F1F1FF020202360000000000000000000000000000
      00000000000000000000000000000101011388ACBCF3B0DCECFFAEDBEBFFABD9
      EAFFA8D8E9FFA5D6E8FFA2D5E7FF9FD3E5FF9CD1E4FF8BC2D9FF82C0D7FF91CB
      E0FF8FCADFFF8DC9DFFF8CC8DEFF8AC7DEFF88C6DDFF87C5DCFF85C5DCFF83C2
      DAFF24343CB90101012400000000000000000D0D0D78FDFDFDFFB98A5BFFA96A
      0FFFB88028FFAD6B03FFAE6D03FFB06E03FFB27003FFB37103FFB57303FFB674
      03FFB77503FFE6CEA6FFECD9BCFFECD9BCFFECD9BCFFECD9BCFF9C572BFFB774
      03FFB67403FFB47203FFB37103FFB16F03FFB06E03FFAE6C03FFAD6B03FFB780
      28FFA8690FFFB88A5BFFF9F9F9FF0C0C0C7800000000403E3DB8E9E6E1FFDEDA
      D4FF6B655CFF53504AFFDFDAD4FFE5E1DBFFE4E0DAFFCAC4BBFF978E81FFA59D
      92FFB3ACA2FFCCC7BEFFE0DCD7FFD2E6CBFF459C16FF5FAF45FF5FB355FF5EB7
      60FF5EBA68FFB5E1BBFFFFFFFFFFFFFFFFFFE6F0DDFF68B353FF5EB65EFF5FB2
      52FF60AD41FF499D1AFFD7E2D3FE0101012A0D0D0D78FDFDFDFFB98A5BFFA96A
      0FFFB88028FFAD6B03FFAE6D03FFB06E03FFB27003FFB37103FFB57303FFB674
      03FFB77503FFEAD6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5BCC1FFA45D
      0CFFB67403FFB47203FFB37103FFB16F03FFB06E03FFAE6C03FFAD6B03FFB780
      28FFA8690FFFB88A5BFFF9F9F9FF0C0C0C780000000000000000000000000000
      00000000000000000000000000000A0D0E7EB9E1EFFFB7E0EEFFB4DFEDFFB1DD
      ECFFAFDCEBFFACDAEAFFA9D8E9FFA6D7E8FFA3D5E7FFA0D3E6FF7EB6D0FF93CC
      E1FF93CCE1FF91CBE0FF90CAE0FF8EC9DFFF8CC8DEFF8BC8DEFF89C7DDFF87C6
      DDFF84C4DBFF6EA5BBF706090A73000000002E2E2EA8FEFEFEFFA06421FFB277
      1BFFBC8534FFB37613FFAF6D03FFB06F03FFB27003FFB47203FFB16F03FFAB69
      03FFA76603FFF1E5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E6464FFA765
      03FFAB6803FFB16F03FFB47203FFB27003FFB06E03FFAE6D03FFB37513FFBC85
      34FFB2761BFF9F6321FFFDFDFDFF2C2C2CA80000000040403EB8EEEBE7FFE2DF
      DAFF6F6960FF58544DFFE2DFD9FFE9E5DFFFE8E4DEFFE7E3DDFFE6E2DCFFE6E1
      DBFFE5E0DAFFE4DFD9FFE3DFD8FFEAE8E7FF83BB6AFF529F23FF60AB3AFF5FAE
      44FF5FB14EFF75BD6AFFECF6EAFFE6F0DEFF68AF49FF5FB04CFF60AE42FF60AA
      38FF529E23FF96C581FF292B29A9000000002E2E2EA8FEFEFEFFA06421FFB277
      1BFFBC8534FFB37613FFAF6D03FFB06F03FFB27003FFB47203FFB16F03FFAB69
      03FFA76603FFE6D2B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5BCC1FF9952
      0CFFAB6803FFB16F03FFB47203FFB27003FFB06E03FFAE6D03FFB37513FFBC85
      34FFB2761BFF9F6321FFFDFDFDFF2C2C2CA80000000000000000000000000000
      000000000000000000000101010A7B98A5EBBFE4F1FFBCE3F1FFBAE2F0FFB8E1
      EFFFB5DFEEFFB2DEEDFFB0DCECFFADDBEBFFAAD9EAFFA7D7E9FF98CADFFF84C0
      D6FF97CEE2FF95CDE2FF93CCE1FF8FCADFFF87C4DAFF81BCD5FF7CB7D1FF76B4
      CFFF71B1CDFF70B2CEFF101A1E9D000000005C5C5CC9FDFDFCFF945004FFB67D
      23FFBD8635FFBD8430FFB2720AFFB16F03FFB06D03FFA56303FFA15E03FFA260
      03FFA46203FFE1CAABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6D7DAFF934D
      27FFA26003FFA05E03FFA56203FFAF6D03FFB06F03FFB1710AFFBC8430FFBC85
      35FFB57C23FF934F04FFFDFDFCFF575757C900000000434141B9F0EEEAFFE6E3
      DEFF746E64FF5D5952FFE6E4DFFFEDEAE6FFECE9E4FFEBE8E3FFEAE7E1FFE9E6
      E0FFE8E4DFFFE7E3DDFFE7E2DDFFE4E0DBFFE9ECE8FF68A843FF529C23FF61A6
      35FF60A835FF60AA37FF77B654FF6EAF45FF60AA37FF60A835FF61A635FF529B
      23FF77B157FF929591E501010117000000005C5C5CC9FDFDFCFF945004FFB67D
      23FFBD8635FFBD8430FFB2720AFFB16F03FFB06D03FFA56303FFA15E03FFA260
      03FFA46203FFE5D1B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5BCC1FF954E
      0CFFA26003FFA05E03FFA56203FFAF6D03FFB06F03FFB1710AFFBC8430FFBC85
      35FFB57C23FF934F04FFFDFDFCFF575757C90000000000000000000000000000
      000000000000000000000708096EC5E8F4FFC4E7F3FFC2E6F3FFC0E5F2FFBDE4
      F1FFBBE2F0FFB9E1EFFFB6E0EEFFB3DEEDFFB1DDECFFAEDBEBFFABD9EAFF81B5
      CFFF87BFD7FF82BCD5FF7FB9D3FF7BB7D1FF79B8D3FF77BAD5FF75BAD4FF73B9
      D4FF71B8D3FF6CB1CCFD0101012C000000007B7B7BD8F6F1EAFF934F03FFB77F
      27FFBD8635FFBE8735FFBD832CFFAB6A08FF9C5903FF9D5A03FF9F5C03FFA05D
      03FFA15F03FFBA8644FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9DC
      DFFF975638FF9D5A03FF9C5A03FF9C5903FFAB6A08FFBD832CFFBE8735FFBC85
      35FFB77E27FF934E03FFF6F1EAFF747474D800000000434241B9F2EFECFFECE9
      E5FFB9B5AEFFD1CECAFFEFEDE9FFF0EEEAFFEFEDE9FFEFEDE9FFEEECE8FFEDEB
      E6FFECE9E5FFEBE8E3FFEAE7E2FFDCD8D1FFCFCECCFFE6EAE6FF84B86AFF4691
      14FF589D2AFF60A334FF61A335FF61A335FF60A234FF589C2AFF489217FF91BF
      7BFFE2E3E1FF0404045400000000000000007B7B7BD8F6F1EAFF934F03FFB77F
      27FFBD8635FFBE8735FFBD832CFFAB6A08FF9C5903FF9D5A03FF9F5C03FFA05D
      03FFA15F03FFE4D0B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5BCC1FF944C
      0CFFA05D03FF9E5C03FF9C5A03FF9C5903FFAB6A08FFBD832CFFBE8735FFBC85
      35FFB77E27FF934E03FFF6F1EAFF747474D80000000000000000000000000000
      000000000000010101056A808CE1C9EAF5FFC7E9F5FFC6E9F4FFC4E8F4FFC2E7
      F3FFC0E5F2FFBBE1EFFFACD6E7FFACD3E4FFADCEDDFFA3BDCAFFADC0CAFFA5B4
      BEFF8AC3DAFF89C7DDFF85C5DCFF82C3DAFF81C1D9FF7EBFD8FF7BBDD7FF78BC
      D6FF76BAD5FF1C2F37B700000000000000007B7B7BD8F6F1EAFF924D03FFB77F
      27FFBD8635FFBE8735FFB78135FFA9722EFF9D5D0DFF9A5803FF9C5903FF9D5B
      03FF9E5C03FF9F5D03FFCFAB81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF4EEEFFF9C6051FF985404FF9D5D0DFFA9712EFFB68135FFBE8735FFBC85
      35FFB77E27FF924D03FFF6F1EAFF747474D800000000434341B9F3F1EEFFF2F0
      EDFFF2F0EDFFF2F0EDFFF2F0EDFFF2EFECFFF1EFECFFF1EEEBFFF0EEEAFFF0EE
      EAFFEFEDE9FFEFEDE9FFE5E1DCFFCDCBC7FFB2B5DBFF4148D2FFB4B6E0FFD0E1
      C9FF87B86DFF5C9C32FF479018FF48911AFF609F37FF8DBB75FFD4E1CEFFDCDA
      D8FFD7D2CBFF0202024600000000000000007B7B7BD8F6F1EAFF924D03FFB77F
      27FFBD8635FFBE8735FFB78135FFA9722EFF9D5D0DFF9A5803FF9C5903FF9D5B
      03FF9E5C03FFE3D0B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5BCC1FF924A
      0CFF9D5A03FF9B5903FF9A5703FF9D5D0DFFA9712EFFB68135FFBE8735FFBC85
      35FFB77E27FF924D03FFF6F1EAFF747474D80000000000000000000000000000
      0000000000000405055EC7E9F4FFCAEBF6FFC1E3F1FFB3D8E8FFB3D5E4FFB9D5
      E2FFB9D0DBFFA8B7C1FFCAD2D6FFCACED1FFC2C6C9FFCBD0D3FFC1C5C8FFC8CC
      CFFF9FC0D0FF92CCE1FF8ECADFFF8AC7DEFF87C5DCFF83C3DBFF81C1DAFF7FC0
      D8FF7CBCD6FF0202024400000000000000005B5B5BC9FDFDFCFF904B04FFB57C
      23FFBD8635FFB78135FFA97335FFAA7435FFAA7532FFA3671CFF9B5906FF9A58
      03FF9B5903FF9C5A03FF9D5A03FFC8A173FFFEFDFCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF8F3F4FF96584DFFA97332FFA97435FFA87235FFB78135FFBC85
      35FFB57C23FF8F4A05FFFDFDFCFF575757C900000000454545BCF4F3F0FFF4F2
      EFFFF3F2EFFFF3F1EEFFF3F1EEFFF3F1EEFFF2F0EDFFF2F0EDFFF2F0EDFFF2EF
      ECFFF1EFECFFEBE8E4FFCCCAC5FFBCBEDCFF2D34D3FF1F27D1FF1F27D0FF4C52
      D0FF9195D9FFC4C6E3FFDBDCE6FFDADAE6FFBFC0DDFFB2B1C5FFBBB4A8FFC2BA
      ADFFD7D1C9FF0202024600000000000000005B5B5BC9FDFDFCFF904B04FFB57C
      23FFBD8635FFB78135FFA97335FFAA7435FFAA7532FFA3671CFF9B5906FF9A58
      03FF9B5903FFE2CFB6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5BCC1FF8F48
      0CFF9A5803FF9B5806FFA2661CFFAA7432FFA97435FFA87235FFB78135FFBC85
      35FFB57C23FF8F4A05FFFDFDFCFF575757C90000000000000000000000000000
      0000000000002C3D45C281B5CEFF72ADC7FF68A7C1FF8BB6C7FFC8D5DAFFC3C9
      CCFFC8CDCFFFCACED1FFCFD4D6FFC8CDCFFFC8CCCFFFCFD4D6FFCACED1FFCACF
      D1FFBCC5CAFF95C8DDFF97CFE3FF93CCE1FF8FCAE0FF8CC8DEFF88C6DDFF84C4
      DBFF334F5BCF0101010100000000000000002E2E2EA8FEFEFEFF995C23FFB176
      1BFFBA8335FFA77035FFA77035FFA87235FFA97335FFAA7535FFA97330FFA368
      1EFF9D5D0DFF9D5D0CFF995603FF9A5703FFB98952FFFBF8F5FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE2D0D3FF914D30FFA87235FFA67035FFA67035FFBA82
      35FFB1751BFF995B25FFFCFCFCFF2B2B2BA802020248BCBDC8FCE4E3E0FFF5F3
      F1FFF5F3F1FFF5F3F1FFF4F3F0FFF4F2EFFFF3F2EFFFF3F1EEFFF3F1EEFFF3F1
      EEFFF0EDEAFFCDCAC5FFC5C7DCFF333BD4FF1F27D1FF1F27D0FF1F27D0FF1F27
      CFFF1F28CEFF1F28CCFF1F28C6FF1F28BFFF1F27B8FF2028B3FF595BA7FFA6A0
      A0FFBEB6A9FF0202024600000000000000002E2E2EA8FEFEFEFF995C23FFB176
      1BFFBA8335FFA77035FFA77035FFA87235FFA97335FFAA7535FFA97330FFA368
      1EFF9D5D0DFFE2CFB7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5BCC1FF914C
      16FFA3671EFFA97330FFAA7435FFA97335FFA87235FFA67035FFA67035FFBA82
      35FFB1751BFF995B25FFFCFCFCFF2B2B2BA80000000000000000000000000000
      0000000000000507086E9DC4D6FF7AAFC7FF67A5C1FF79ACC2FFCCDADFFFC1C8
      CBFFD8DDDFFFC9CDCFFFC3C6C9FFC3C7CAFFC7CBCEFFCED2D5FFC9CDCFFFD0D4
      D7FFCACED1FFACC8D6FFA0D4E6FF9DD2E5FF99CFE3FF95CDE2FF91CBE0FF8CC8
      DEFF0405055E0000000000000000000000000D0D0D78FCFCFCFFB2825FFFA565
      10FFAC7535FFA46C35FFA56E35FFA66F35FFB07F48FFD7BEA1FFE1CDBAFFEDE1
      D4FFF6F1EDFFF6F0F1FF88402AFFA66E27FFA66E27FFC8A37BFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF914F4BFFA66F35FFA46E35FFA36C35FFAB75
      35FFA56510FFB28261FFF8F8F8FF0C0C0C7805050B842D3285FEAFB1C9FFDDDD
      DAFFF2F0EEFFF6F5F3FFF6F4F2FFF6F4F2FFF5F3F1FFF5F3F1FFF4F3F0FFF3F2
      EFFFCFCCC6FFCCCDDCFF3B42D4FF1F27D2FF1F27D1FF1F27D0FF1F27CFFF1F28
      CEFF1F28CDFF1F28C9FF1F28C3FF1F27BBFF1F27B6FF1E27B0FF1E27AAFF242C
      A4FF6C6CA0FF0303035200000000000000000D0D0D78FCFCFCFFB2825FFFA565
      10FFAC7535FFA46C35FFA56E35FFA66F35FFA77135FFA87335FFA97335FFAA74
      35FFAB7534FFE7D6C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5BCC1FF9B5D
      32FFAA7435FFA97335FFA87235FFA77135FFA66F35FFA46E35FFA36C35FFAB75
      35FFA56510FFB28261FFF8F8F8FF0C0C0C780000000000000000000000000000
      00000000000001010107516E7ADFA5CCDAFF7BB4CCFF78ADC6FFC7D7DEFFCCD3
      D7FFC6CACDFFCBCED1FFC8CBCEFFD0D4D6FFDCE0E2FFBFC2C5FFD3D7D9FFBFC2
      C5FFD0D4D6FFB6BCC1FF9CC9DCFFA6D7E8FFA2D5E7FF9ED2E5FF9AD0E4FF567A
      89E40101010600000000000000000000000002020236F7F7F7FFD4B9A6FF924C
      0BFF9E6532FFA16A35FFA36C35FFA46E35FFAC7A44FFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF9E6466FFA87134FFA97435FFB98B5BFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF975A5BFFA46D35FFA36B35FFA16A35FF9E64
      33FF914C0CFFD4B9A6FFEEEEEEFF0202023600000000030304631C2279F89093
      C0FFDADAD8FFEBEAE7FFF7F6F4FFF7F6F4FFF6F5F3FFF6F5F3FFF6F4F2FFD4D1
      CBFFD1D2DBFF454BD5FF1F27D2FF1F27D1FF1F27D0FF1F27D0FF1F27CFFF1F28
      CEFF1F28CCFF1F28C6FF1F28BFFF1F27B8FF1E27B3FF1E27ACFF1E26A7FF1E26
      A1FF1E259CFF141864E5030304620101010202020236F7F7F7FFD4B9A6FF924C
      0BFF9E6532FFA16A35FFA36C35FFA46E35FFA56F35FFA67035FFA77135FFA872
      35FFA97335FFC0966CFFC6A181FFC6A181FFC6A181FFC6A181FFB7896BFFA36A
      33FFA87235FFA77135FFA66F35FFA56E35FFA46D35FFA36B35FFA16A35FF9E64
      33FF914C0CFFD4B9A6FFEEEEEEFF020202360000000000000000000000000000
      0000000000000000000004050660A5CCDBFF89BED1FF7CB6CCFFB4CBD5FFC4CC
      D0FFD3D7DAFFD9DCDEFFC7CACDFFD5D8DAFFD4D7D9FFC5C8CBFFC9CBCEFFD8DB
      DDFFCBCED0FFD0D3D5FFABC2CFFFAEDBEBFFABDAEAFFA7D7E9FFA3D5E7FF070A
      0C780000000000000000000000000000000001010101888888DEF9F6F3FF8D4A
      21FF925225FFA06839FFA16936FFA26B35FFA46C35FFECE0D5FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF3EBEDFFBD9489FFC49E80FFEBDED0FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFF8B4640FFA26A35FFA16936FFA0673AFF9251
      26FF8D4A22FFF9F6F3FF808080DE010101010000000000000000010102391416
      5BE66F74B8FFD6D6D8FFE1E0DDFFF8F7F5FFF7F6F5FFF7F6F4FFDAD7D3FFD4D4
      D9FF4F56D5FF1F27D3FF1F27D2FF1F27D1FF1F27D0FF1F27CFFF1F28CEFF1F28
      CDFF1F28C9FF1F28C3FF1F27BBFF1F27B6FF1E27B0FF1E27AAFF1E26A4FF1E25
      9FFF1E259AFF1D2494FF1D238FFF04050F8D01010101888888DEF9F6F3FF8D4A
      21FF925225FFA06839FFA16936FFA26B35FFA46C35FFA46E35FFA56E35FFA66F
      35FFA67035FFA77035FFA77135FFA77135FFA77135FFA77135FFA77035FFA66F
      35FFA56F35FFA56E35FFA46D35FFA36C35FFA26A35FFA16936FFA0673AFF9251
      26FF8D4A22FFF9F6F3FF808080DE010101010000000000000000000000000000
      0000000000000000000001010103405A64D5A0CADAFF79B4CBFFA1C3D1FFCED7
      DCFFCFD4D6FFCFD1D4FFC8CACDFFD1D4D6FFCBCED0FFC3C5C8FFCCCED1FFCED0
      D3FFD8DBDDFFD3D6D8FFC2C7CBFFA9D1E3FFB4DEEDFFB0DCECFF7FA6B7F20101
      011100000000000000000000000000000000000000000D0D0D78FBFBFBFFC19B
      86FF853E17FF9B613AFF9F673BFFA06837FFA16A35FFC39D7DFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD7BEC3FF904E32FFA06838FF9F663CFF9B603BFF853E
      18FFC19B86FFF5F5F6FF0C0C0C78000000000000000000000000000000000101
      011B0D0F36C94E55B4FFCCCED9FFD8D7D3FFF4F3F1FFE0DEDAFFD5D5D7FF5B61
      D7FF1F27D3FF1F27D2FF1F27D1FF1F27D0FF1F27D0FF1F27CFFF1F28CEFF1F28
      CCFF1F28C6FF1F28BFFF1F27B8FF1E27B3FF1E27ACFF1E26A7FF1E26A1FF1E25
      9CFF1D2497FF1D2391FF0A0B28B801010108000000000D0D0D78FBFBFBFFC19B
      86FF853E17FF9B613AFF9F673BFFA06837FFA16A35FFA26B35FFA36C35FFA46D
      35FFA46E35FFE0CCB9FFF5EFEFFFF5EFEFFFF5EFEFFFF5EFEFFFD0B2B6FF9759
      32FFA46D35FFA36B35FFA26A35FFA16936FFA06838FF9F663CFF9B603BFF853E
      18FFC19B86FFF5F5F6FF0C0C0C78000000000000000000000000000000000000
      0000000000000000000000000000030304529CC8D9FF84BBCFFF8DB9CBFFD0DC
      E1FFC5CACEFFD2D5D8FFC6C9CCFFD2D4D6FFDEE0E2FFD7D9DBFFD3D5D8FFDADD
      DFFFCACCCFFFCCCFD1FFCBCED1FFBED5E0FFB8E0EEFFB8E1EFFF0F1518910000
      000000000000000000000000000000000000000000000101010EABABABEBF8F5
      F2FF915132FF8A4723FF9D6441FF9E663EFF9F673BFFA16939FFE0CDBDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF2EBECFF92524DFF9F663CFF9E653FFF9C6342FF8A4624FF9050
      32FFF8F5F2FFA2A2A2EB0101010E000000000000000000000000000000000000
      000001010108070918A1373DB2FFBABCD8FFD4D3CFFFD6D6D5FF696ED8FF1F27
      D3FF1F27D3FF1F27D2FF1F27D1FF1F27D0FF1F27CFFF1F28CEFF1F28CDFF1F28
      C9FF1F28C3FF1F27BBFF1F27B6FF1E27B0FF1E27AAFF1E26A4FF1E259FFF1E25
      9AFF1D2494FF0A0B29B80101010800000000000000000101010EABABABEBF8F5
      F2FF915132FF8A4723FF9D6441FF9E663EFF9F673BFFA06838FFA16936FFA16A
      35FFA26A35FFE4D4C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5BCC1FF9455
      32FFA16A35FFA06936FFA06839FF9F673CFF9E653FFF9C6342FF8A4624FF9050
      32FFF8F5F2FFA2A2A2EB0101010E000000000000000000000000000000000000
      000000000000000000000000000001010101304750CA9AC8D9FF7AAEC4FFCBDA
      E0FFB5BEC3FFBFC5C9FFCED3D6FFDADDE0FFD2D5D7FFCFD0D3FFD1D4D6FFC7C9
      CCFFCBCFD2FFC6CACDFFD7DEE1FFD2DEE4FF98C4D9FFA9CEDDFB010101220000
      000000000000000000000000000000000000000000000000000007070663F8F8
      F8FFE0CDC4FF82391DFF8E4C2EFF9C6244FF9D6442FF9E6540FFA26B43FFD8C0
      B0FFFEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFDECACDFF995D52FF9D6440FF9D6442FF9C6244FF8D4B2FFF82391DFFE0CD
      C4FFF0F0F1FF0606066300000000000000000000000000000000000000000000
      00000000000000000000030407702229A7FB9EA1D8FF787CD8FF1F27D3FF1F27
      D3FF1F27D2FF1F27D1FF1F27D0FF1F27D0FF1F27CFFF1F28CEFF1F28CCFF1F28
      C6FF1F28BFFF1F27B8FF1E27B3FF1E27ACFF1E26A7FF1E26A1FF1E259CFF1D24
      97FF0A0B29B8010101080000000000000000000000000000000007070663F8F8
      F8FFE0CDC4FF82391DFF8E4C2EFF9C6244FF9D6442FF9E6540FF9F663DFFA067
      3BFFA06839FFE4D3C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5BCC1FF9353
      35FF9F673BFF9E663EFF9E6540FF9D6442FF9C6244FF8D4B2FFF82391DFFE0CD
      C4FFF0F0F1FF0606066300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000202024393C4D7FF80B6CBFFAFC6
      D0FFA7B5BCFFB0BCC1FFBBC3C8FFCAD0D3FFCBCED2FFD7DBDEFFE1E7EAFFE4EB
      EFFFDFE9ECFFDAE5E9FFD1DFE4FFBCCFD8FF7AAAC2FF1C272CAB000000000000
      0000000000000000000000000000000000000000000000000000000000003535
      35B0FBFBFBFFCCADA0FF81361DFF8C4A31FF9A6046FF9C6245FF9C6343FF9D64
      42FFAB7A5CFFCAA996FFDBC5BAFFE2D1C8FFE5D6CEFFDDC8C1FFCAAAA1FFAB7A
      6BFF985C40FF9C6344FF9B6246FF9A6047FF8C4931FF81351EFFCCADA0FFF7F7
      F8FF333131B00000000000000000000000000000000000000000000000000000
      000000000000000000000000000002020244161C77EC1D25BEFF1E26D0FF1F27
      D3FF1F27D2FF1F27D1FF1F27D0FF1F27CFFF1F28CEFF1F28CDFF1F28C9FF1F28
      C3FF1F27BBFF1F27B6FF1E27B0FF1E27AAFF1E26A4FF1E259FFF1E259AFF0A0B
      2BB9010101080000000000000000000000000000000000000000000000003535
      35B0FBFBFBFFCCADA0FF81361DFF8C4A31FF9A6046FF9C6245FF9C6343FF9D64
      42FF9D6541FFD3B8A8FFE7D9D2FFE7D9D2FFE7D9D2FFE7D9D2FFC8A6A3FF9455
      3DFF9D6442FF9C6344FF9B6246FF9A6047FF8C4931FF81351EFFCCADA0FFF7F7
      F8FF333131B00000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000023343CBC93C6D9FF77AE
      C4FFB9D5DFFFE2EBEDFFBAC8CFFFD5E1E6FFDCE6EAFFD9E4E9FFCEDCE2FFB5CD
      D8FFA4C5D3FFA8C8D6FFA8C9D7FF89ADBCF71016199501010118000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      010F696969D1FCFCFCFFCCADA1FF813620FF87412BFF965A44FF9A5F49FF9A60
      48FF9B6146FF9B6246FF9C6245FF9C6245FF9C6245FF9C6245FF9B6146FF9B61
      47FF9A6048FF995F49FF965945FF86402BFF813521FFCCADA1FFF9F9F9FF6363
      63D10101010F0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000001010106010102360303076F0708
      20A9121665E21D24B5FF1E26C9FF1F27CFFF1F28CEFF1F28CCFF1F28C6FF1F28
      BFFF1F27B8FF1E27B3FF1E27ACFF1E26A7FF1E26A1FF1E259CFF0A0B2CB90101
      0108000000000000000000000000000000000000000000000000000000000101
      010F696969D1FCFCFCFFCCADA1FF813620FF87412BFF965A44FF9A5F49FF9A60
      48FF9B6146FF9B6246FF9C6245FF9C6245FF9C6245FF9C6245FF9B6146FF9B61
      47FF9A6048FF995F49FF965945FF86402BFF813521FFCCADA1FFF9F9F9FF6363
      63D10101010F0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000102023687BBD0FD7BB4
      CAFF69A8C1FF80B5CAFFA2C3D0FFA3C2CFFF93BBCCFF81B2C7FF78B0C6FF8FC1
      D3FFA6CEDCFF89B1C2F911171A970101011D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010118686868D1FBFBFBFFDFCCC4FF8C4A38FF813522FF8A4734FF9658
      46FF995E4AFF995E4AFF995E4AFF995E4AFF995E4AFF995E4AFF995E4AFF995E
      4AFF955846FF8A4735FF813423FF8C4A38FFDFCCC4FFF7F7F8FF636363D10101
      0118000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101012C1C228BFF1C228CFF0D1043CE19209CF91E26B8FF1E27
      BBFF1F27B6FF1E27B0FF1E27AAFF1E26A4FF1E259FFF0A0C2CB9010101080000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010118686868D1FBFBFBFFDFCCC4FF8C4A38FF813522FF8A4734FF9658
      46FF995E4AFF995E4AFF995E4AFF995E4AFF995E4AFF995E4AFF995E4AFF995E
      4AFF955846FF8A4735FF813423FF8C4A38FFDFCCC4FFF7F7F8FF636363D10101
      0118000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000018262CAE8EC4
      D8FF66A5BEFF68A7C0FF69A8C1FF6AA9C2FF6FACC4FF86BCD1FF9ECBDBFF84AF
      C1F911191C9A0101011F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101010F353434B0F6F6F6FFF8F5F3FFBE968BFF853E2FFF7F31
      22FF833B2CFF894636FF8E4D3DFF905040FF905040FF8E4D3DFF894537FF833B
      2CFF7F3122FF853E2FFFBE968BFFF8F4F2FFF0F0F1FF333131B00101010F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000020204591D249AFF1C228BFF02020359010101080101023C0303
      0875080922AE141865E71D259CFF1D25A0FF0A0C31BD01010108000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101010F353434B0F6F6F6FFF8F5F3FFBE968BFF853E2FFF7F31
      22FF833B2CFF894636FF8E4D3DFF905040FF905040FF8E4D3DFF894537FF833B
      2CFF7F3122FF853E2FFFBE968BFFF8F4F2FFF0F0F1FF333131B00101010F0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000101012B7EB0
      C6FB76B1C8FF62A3BCFF68A6BFFF81B8CEFF96C8DBFF7EAEC1F911191D9B0101
      0120000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000006060663A7A7A8EBF8F8F9FFF9F6F4FFD0B4
      ACFFAA796EFF8D4A3CFF7F3024FF7D2E23FF7D2E23FF7F3024FF8C4A3CFFAA79
      6EFFD0B4ACFFF9F5F3FFF5F5F6FFA2A2A2EB0606066300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000006071C9F1D25A2FF1D2494FF0607179F00000000000000000000
      0000000000000000000001010122020203560101010B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000006060663A7A7A8EBF8F8F9FFF9F6F4FFD0B4
      ACFFAA796EFF8D4A3CFF7F3024FF7D2E23FF7D2E23FF7F3024FF8C4A3CFFAA79
      6EFFD0B4ACFFF9F5F3FFF5F5F6FFA2A2A2EB0606066300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000111A
      1F9F8AC2D8FF7AB3CBFF90C6DAFF7CAEC2FA111A1E9C01010121000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010E0C0C0C78848484DEF1F1
      F1FFF9F9F9FFFDFDFDFFFDFDFCFFF5EFEBFFF5EFEBFFFDFDFCFFFCFCFCFFF8F8
      F8FFEEEEEEFF808080DE0C0C0C780101010E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000010102380202045A0202045A0101023800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010E0C0C0C78848484DEF1F1
      F1FFF9F9F9FFFDFDFDFFFDFDFCFFF5EFEBFFF5EFEBFFFDFDFCFFFCFCFCFFF8F8
      F8FFEEEEEEFF808080DE0C0C0C780101010E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      012170A2B7F778ADC1FA121B1F9E010101230000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101010202
      02360C0C0C782B2B2BA7595859CA747474D8747474D8585858CA2A2929A70C0C
      0C78020202360101010100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101010202
      02360C0C0C782B2B2BA7595859CA747474D8747474D8585858CA2A2929A70C0C
      0C78020202360101010100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000030404570101012400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFF1EDECFFFAF8F8FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010102010101050101010B010101150101
      0128010101350101013001010114010101040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000010101170A06068F0D08089D0D08089D0D08089D0D08
      099D0D08099D0D08099D0D08089D0D08089D0D08089D0D08099D0D08099D0D08
      099D0D08099D0D08099D0E08099D0E08099D0E08099D0E08099D0E08099D0D08
      099D0E08099D0E08099D0A0607930101011EFFFFFFFFFFFFFFFFFFFFFFFFFDFD
      FDFFEBEAEBFFDFDCDFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDC
      DFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDC
      DFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDC
      DFFFF2F1F2FFFEFEFEFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010105010101100101013F080907851D2218B6465535DE748F55F9809B
      5BFF7C9657FF758D51FF56683EF30D0F0B9E0101011F01010107000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0102010101290201024403020266987875FF97828BFF97828CFF97828CFF9782
      8CFF97828CFF97828CFF97828BFF97828CFF97828CFF97828CFF97828CFF9782
      8CFF97828CFF97828CFF97828CFF97828CFF97828CFF97828CFF97828CFF9883
      8DFFB6A3ABFFC4B0B9FF7F5A58F201010132FFFFFFFFFFFFFFFFFFFFFFFFF8F8
      F8FFBB9084FFAB817EFFAB827FFFAB827FFFAB8280FFAB8280FFAB8381FFAB82
      80FFAB827FFFAB827FFFAB8280FFAB8280FFAB8381FFAB8381FFAB8381FFAB83
      81FFAB8381FFAB8381FFAB8381FFAB8381FFAB8381FFAB8381FFAA8180FFA177
      72FFBFB3B7FFFDFDFDFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010105010101260607
      06791F2619BC556046ED9AAE7DFD88AA68FF89AC67FF8CAE68FF8DAE6AFF8CAC
      6AFF88A766FF819F5EFF7B9753FF748E4EFF202718C90101012D010101110101
      0101000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010101030101011B010101220101
      012967443DE8A57E7AFFA57E7BFFA57E7BFFA57E7BFFA57E7BFFA57F7CFFA57E
      7BFFA57E7BFFA57E7BFFA57E7BFFA57E7BFFA57F7CFFA57F7CFFA57F7CFFA57F
      7CFFA57F7DFFA57F7DFFA57F7DFFA57F7DFFA7817EFFB78F8BFFBB928FFFAD7C
      75FFAB9CA0FFDCD6DCFF87635FF201010132FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFDCB69BFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5
      DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5
      DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFD6CFD6FFBB96
      96FFB7A8ABFFFDFDFDFFFFFFFFFFFFFFFFFF0000000001010104010101100101
      0123010101310101013601010137010101370101013701010137010101370101
      0137010101370101013701010137010101370101013701010137010101370101
      0137010101370101013701010137010101370101013701010137010101370101
      01340101012A0101011801010108010101020101011B12150EA3718E4FF881A4
      5CFF81A35AFF828F6EFFB4C092FF8AAA6AFF8BAC6BFF8FB16FFF94B473FF95B4
      74FF92B172FF8BAA6AFF819E5CFF7D9856FF697D4CF801020144010101300101
      010A000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010101254E3531DA5B403DE25C41
      3EE39D7169FCA57F7AFFA57F7BFFA5807BFFA57E7AFFA57F7AFFA57F7AFFA57F
      7AFFA57F7BFFA5807BFFA5807BFFA5807BFFA5807BFFA5807CFFA5807CFFA580
      7CFFA5807CFFA5807CFFA57F7CFFA47D7AFF966D6AFFC0B9C0FFDDD8DDFFBD99
      98FFAB9B9FFFDED9DEFF876560F201010132FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEAC6A3FFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE5E3E5FFC19F
      9CFFB7A8ABFFFDFDFDFFFFFFFFFFFFFFFFFF0000000001010106010101190102
      0257010203650102036A0102036A0102036A0102036A0102036A0102036A0102
      036A0102036A0102036A0102036A0102036A0102036A0102036A0102036A0102
      036A0102036A0102036A0102036A0102036A0102036A0102036A0102036A0102
      036601020258010101210101010B01010102151910A886AA61FF87AB62FF87AA
      61FF86A960FF949B81FFD2D3B0FF8AA96BFF8DAC6EFF92B174FF97B67AFF9CBA
      7EFF9AB77BFF92B171FF85A562FF819E5AFF455232E4010101440101013B0101
      0111000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101012DDDBEACFFDBD5DBFFDBD5
      DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5
      DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5
      DBFFDBD5DBFFDBD5DBFFDBD5DBFFD1C8D1FFAB817DFFC1BCC1FFE5E3E5FFC19E
      9CFFAB9C9FFFDED9DEFF876560F201010132FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEAC6A2FFEBEBEBFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFE6E4E6FFC29F
      9DFFB7A8ACFFFDFDFDFFFFFFFFFFFFFFFFFF00000000010101082CADD6FF2CAD
      D6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CAD
      D6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CAD
      D6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CAD
      D6FF01020361010101280101010E01010102333F24C888AB65FF88AB66FF88AB
      65FF87AB64FF9DA18CFEF4ECD3FF91AC73FF8CAA6DFF91AF74FF9CB981FFA3BE
      87FFA2BD82FF95B475FF88A963FF83A35EFF202618C601010143010101310101
      010A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101012DEDD1B7FFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFDFDADFFFB08581FFC1BCC1FFE5E3E5FFC19F
      9CFFAB9C9FFFDED9DEFF876560F201010132FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEAC5A1FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFEBEBEBFFECECECFFECECECFFECECECFFE6E4E6FFC29F
      9DFFB7A8ACFFFDFDFDFFFFFFFFFFFFFFFFFF00000000010101082CADD6FF79ED
      FEFF79EDFEFF7BEDFEFF7DEDFEFF81EEFEFF81EEFEFF82EEFEFF83EEFEFF85EF
      FEFF88EFFEFF8BF0FEFF8DF0FEFF8FF0FEFF91F0FEFF92F1FEFF94F1FEFF95F1
      FEFF97F1FEFF98F1FEFF98F1FEFF98F1FEFF98F1FEFF98F1FEFF98F1FEFF2CAD
      D6FF010203650101012B0101010E010101021E2616AE88AA68FF8AAA6AFF8CAC
      6CFF8BAC6CFFA3A595FEF4EED6FFB6C599FF8CA86CFF8FAD72FF9DB881FFA7C0
      8DFFA3BE87FF95B574FF89AB63FF86A762FF090B08990101012E010101120101
      0101000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101012DEDD1B7FFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFEBEBEBFFDFDBDFFFB08681FFC1BCC1FFE5E3E5FFC19F
      9CFFAA9B9EFFDDD8DDFF876560F201010132FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEAC4A0FFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE9E9E9FFE7E6E5FFDBD8D7FFB997
      91FFB7A8ACFFFDFDFDFFFFFFFFFFFFFFFFFF00000000010101082CADD6FF78ED
      FEFF78EDFEFF7AEDFEFF7CEDFEFF7FEEFEFF81EEFEFF81EEFEFF82EEFEFF84EF
      FEFF87EFFEFF89EFFEFF8CF0FEFF8DF0FEFF8FF0FEFF91F0FEFF93F1FEFF94F1
      FEFF95F1FEFF96F1FEFF97F1FEFF97F1FEFF97F1FEFF97F1FEFF97F1FEFF2CAD
      D6FF010203650101012B0101010E010101020A0D088189A869FF8CAA6DFF91AE
      74FF94B177FF9C9F90FDDDDCC8FFD4D5BEFF8CA76FFF8EAA6FFF98B27CFFA1BA
      85FF9DBA81FF90B170FF89AC64FF839D60FE0202024201010108010101010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101012DEDD1B6FFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFEBEBEBFFDFDBDFFFB08681FFC1BCC1FFE5E3E5FFC19E
      9CFFAA9C9FFFDDD9DDFF876662F201010132FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEAC49FFFEBEBEBFFEBEBEBFFEAEAEAFF635E5CFFCDCCCCFFEBEBEBFFD3D3
      D8FFC0C2CBFFC9CBD2FFDFDFE2FFE0E0E2FFD2D5DBFFBCC0CCFFB1B7C4FFCFD1
      D6FFEAEAEAFFEAEAEAFFE6E6E6FFDAD7D0FFD0CCBEFFC0B9A5FFBEB59CFFB898
      81FFB7A8ACFFFDFDFDFFFFFFFFFFFFFFFFFF00000000010101082CADD6FF75EC
      FEFF75ECFEFF77ECFEFF79EDFEFF7CEDFEFF7FEEFEFF80EEFEFF81EEFEFF81EE
      FEFF84EFFEFF86EFFEFF88EFFEFF8AEFFEFF8CF0FEFF8EF0FEFF8FF0FEFF90F0
      FEFF92F0FEFF93F0FEFF93F0FEFF93F0FEFF93F0FEFF93F0FEFF93F0FEFF2CAD
      D6FF010203650101012B0101010E010101020202013A88A666FF94AE76FF99B2
      7DFF97B27CFF888C84F894A2AAFE8596A5FF879D91FF8AA66BFF90AB71FF94B0
      77FF92AF75FF8CAC6CFF8BAD6BFF222719C20101010600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101012DEDD0B5FFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFDFDADFFFB08581FFC0BCC0FFE5E3E5FFC19F
      9DFFAB9C9FFFDDD9DDFF876663F201010132FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEAC39EFFEBEBEBFFEBEBEBFFEBEBEBFFA7A4A3FF53545EFF7E869EFF3952
      7FFF2C487CFF2C487CFF334C80FF2B467BFF22457FFF214781FF22437CFF2541
      77FF6A7996FFC5C9D1FFCACAC8FFDAD1B0FFD5CBAAFFC6BC9EFFBBB295FFB798
      80FFB7A9ACFFFDFDFDFFFFFFFFFFFFFFFFFF00000000010101082CADD6FF72EC
      FEFF72ECFEFF73ECFEFF76ECFEFF79EDFEFF7BEDFEFF7CEDFEFF7EEDFEFF80EE
      FEFF81EEFEFF82EEFEFF84EFFEFF86EFFEFF88EFFEFF89EFFEFF8BEFFEFF8CF0
      FEFF8DF0FEFF8EF0FEFF8FF0FEFF8FF0FEFF8FF0FEFF8FF0FEFF8FF0FEFF2CAD
      D6FF010203650101012B0101010E01010102010101012E3821C09AB37EFF9EB6
      81FF97B27CFF7A8A97FD5D7B9CFF4F6D8FFF4A6C8FFF6B857BFF8BA46CFF8DA9
      6DFF8CAA6CFF8CAB6DFF809961FF32590DE50101010600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101012DECD0B4FFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEAEAEAFFDEDADEFFB08681FFC0BCC0FFE5E3E5FFC1A0
      9EFFAA9C9FFFDDD8DDFF87645FF201010132FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEAC39DFFEBEBEBFFEBEBEBFFEBEAEAFFE1E0E1FF6D81A1FF587BA5FF4769
      94FF3A5989FF365688FF345689FF305388FF30588AFF3C6793FF3D6993FF3056
      85FF1F3D77FF1E3871FF6A7589FFD2C6A5FFC4BA9CFFBBB295FFB6AD91FFB495
      7DFFB7A9ACFFFDFDFDFFFFFFFFFFFFFFFFFF00000000010101082CADD6FF6CEB
      FEFF6CEBFEFF6EEBFEFF70ECFEFF73ECFEFF75ECFEFF77ECFEFF78EDFEFF7AED
      FEFF7CEDFEFF7EEDFEFF81EEFEFF81EEFEFF81EEFEFF82EEFEFF84EFFEFF85EF
      FEFF86EFFEFF87EFFEFF88EFFEFF88EFFEFF88EFFEFF88EFFEFF88EFFEFF2CAD
      D6FF010203650101012B0101010E01010102000000000101010B11140E92839E
      64F990AD74FF79929FFE5B7A9BFF4F6E90FF47698CFF4B708AFF808C65FF89A2
      6AFF8CA86DFF7F9A5BFF5AA116FF4B9503FF0101013600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101012DECCFB3FFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFDFDBDFFFB08782FFC0BCC0FFE5E3E5FFC19F
      9DFFAA9B9FFFDCD7DCFF87645FF201010132FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEAC29CFFEBEBEBFFEBEBEBFFEBEBEBFFC6C7CEFF3E5C82FF546477FF4D64
      7FFF527194FF577598FF5D7FA3FF6488B0FF4F79A4FF43709AFF3E6A96FF365D
      8EFF244681FF1A3774FF5C6B86FFC6BC9EFFB9B094FFB5AC90FFB1A88DFFB392
      79FFB7A8ABFFFDFDFDFFFFFFFFFFFFFFFFFF00000000010101082CADD6FF68EA
      FEFF68EAFEFF69EBFEFF6BEBFEFF6EEBFEFF70EBFEFF71ECFEFF73ECFEFF74EC
      FEFF77ECFEFF79ECFEFF7BEDFEFF7CEDFEFF7EEDFEFF7FEDFEFF81EEFEFF81EE
      FEFF81EEFEFF81EEFEFF82EEFEFF82EEFEFF82EEFEFF82EEFEFF82EEFEFF2CAD
      D6FF010203650101012B0101010E010101020000000000000000000000000101
      01241419119C5F7D8AFA466B8CFF3F6081FF3B5C7EFF3C6487FF6E7B64FF7C85
      63FF92AD74FF80CC39FF58AF06FF4B9403FF0101012C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101012DECCFB2FFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFDFDADFFFB08682FFC0BCC0FFE4E2E4FFC09D
      9AFFAA9B9EFFDCD7DCFF876460F201010132FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEAC29CFFEBEBEBFFEBEBEBFFEBEBEBFFC3C7D0FF3E618FFF353C4EFF2020
      22FF122245FF0A1D4AFF294577FF6384ADFF6187AFFF547EA6FF4B759FFF436D
      9AFF3F6996FF3C6492FF5A7593FFBCB39BFFB2A98EFFB0A88DFFB6AD91FFC09F
      82FFB7A8ABFFFDFDFDFFFFFFFFFFFFFFFFFF00000000010101082CADD6FF60E9
      FEFF60E9FEFF62EAFEFF64EAFEFF66EAFEFF68EAFEFF69EAFEFF6BEBFEFF6CEB
      FEFF6EEBFEFF70EBFEFF72ECFEFF73ECFEFF75ECFEFF76ECFEFF77EDFEFF78ED
      FEFF7AEDFEFF7BEDFEFF7BEDFEFF7BEDFEFF7BEDFEFF7BEDFEFF7BEDFEFF2CAD
      D6FF010203650101012B0101010E010101020000000000000000000000000000
      00000507087636638CFC37678FFF35658CFF2C5378FF2E5274FF63746CF6BFD5
      A6FFC5E5A6FFA1D674FF72B62EFF203C05C9010101070304015F050701730101
      0121000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101012DECCEB2FFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEAEAEAFFDED9DEFFB08480FFC0BCC0FFE3E1E3FFC09D
      9BFFAA9B9FFFDCD7DCFF876460F201010132FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEAC39DFFEBEBEBFFEBEBEBFFEBEBEBFFC3C7CFFF446D9DFF1F3359FF3F41
      45FF191B25FF1A2A53FF446894FF567DA6FF6286AEFF6083ABFF5E82AAFF5B81
      A8FF587FA4FF4F759BFF4F6F92FFA7A698FFB6AC90FFC1B79AFFD6CCABFFD5B4
      93FFB7A8ACFFFDFDFDFFFFFFFFFFFFFFFFFF00000000010101082CADD6FF59E8
      FEFF5AE9FEFF5BE9FEFF5DE9FEFF5FE9FEFF60E9FEFF61E9FEFF62EAFEFF64EA
      FEFF64EAFEFF65EAFEFF6BEBFEFF6CEBFEFF6DEBFEFF6EEBFEFF70ECFEFF70EC
      FEFF72ECFEFF72ECFEFF73ECFEFF73ECFEFF73ECFEFF73ECFEFF73ECFEFF2CAD
      D6FF010203650101012B0101010E010101020000000000000000000000000202
      0241517FA4FE5280A4FF4B7A9FFF427298FF406E93FF2B5377FF030303533B41
      36BBC3DDADFEAACE86FE28371ABB0101011B172C02BC4E9B03FF4F9E03FF3975
      03F10101012A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101012DECCEB2FFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEAEAEAFFDDD9DDFFB08581FFC1BCC1FFE3E1E3FFC09E
      9CFFAB9C9FFFDDD8DDFF876560F201010132FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEAC49EFFECECECFFECECECFFECECECFFC4CAD3FF4B75A3FF1F3B6DFF3345
      66FF625E56FF3C3F4FFF3B5781FF587EA4FF6586ACFF6C8CB1FF6A8BB1FF6486
      AEFF597FA5FF4E759CFF446E98FFA3ADADFFDED4B2FFE6DCB9FFEEE6C5FFD6B6
      9CFFB7A8ACFFFDFDFDFFFFFFFFFFFFFFFFFF00000000010101082CADD6FF5AE8
      FEFF5BE9FEFF5CE9FEFF5EE9FEFF60E9FEFF61E9FEFF62E9FEFF63EAFEFF64EA
      FEFF64EAFEFF65EAFEFF65EAFEFF66EAFEFF68EAFEFF69EBFEFF6AEBFEFF6AEB
      FEFF6BEBFEFF6CEBFEFF6CEBFEFF6CEBFEFF6CEBFEFF6DEBFEFF6DEBFEFF2CAD
      D6FF010203650101012B0101010E010101020000000000000000000000001E29
      34B96E95B8FF6C93B7FF638CB1FF5681A7FF4C7A9EFF406989FF131313C10101
      010A010101120101011200000000010101306DB029FF67C014FF5CBB04FF50A1
      03FF081002900000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101012DEDCFB3FFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFDDD9DDFFB08581FFC2BDC2FFE4E2E4FFC09E
      9CFFAB9C9FFFDDD8DDFF876561F201010132FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEBC4A0FFEDEDEDFFEDEDEDFFEDEDEDFFD2D7DFFF5C82B0FF4E76A3FF4E72
      9EFF9BA2A4FF7A7264FF41526FFF547297FF6382A9FF6989B1FF688AB4FF6184
      B0FF5881ACFF5D83ADFF85A1BDFFB9C4CCFFE2DED0FFDDDAD3FFDBD8D6FFC19F
      9BFFB7A8ACFFFDFDFDFFFFFFFFFFFFFFFFFF00000000010101082CADD6FF5DE9
      FEFF5EE9FEFF5FE9FEFF61E9FEFF63E9FEFF64EAFEFF65EAFEFF66EAFEFF66EA
      FEFF67EAFEFF67EAFEFF65EAFEFF66EAFEFF67EAFEFF68EAFEFF69EBFEFF69EB
      FEFF6AEBFEFF6BEBFEFF6BEBFEFF6BEBFEFF6BEBFEFF6BEBFEFF6BEBFEFF2CAD
      D6FF010203650101012B0101010E0101010200000000000000000101010A7496
      B4F981A7C9FF81A5C7FF799FC0FF6B93B6FF5883A9FF537FA1FF323A42FF0D0C
      0CAF01010101000000000000000001010129A1CE7AFF9FDA6DFF81D138FF58A9
      09FF070D02890000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101012DEDD0B4FFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFEBEBEBFFDED9DEFFB08581FFC2BEC2FFE4E2E4FFC19E
      9CFFAC9DA0FFDDD9DDFF876663F201010132FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEBC6A1FFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFDBDFE5FFA5B6CBFF6F91
      B9FF6D8FB5FFAEA89AFF5F6261FF5378A0FF567BA4FF587EA7FF567FAAFF5981
      A9FF8BA5BEFFCFD5DBFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFE5E3E5FFC1A0
      9EFFB7A9ACFFFDFDFDFFFFFFFFFFFFFFFFFF00000000010101082CADD6FF64E9
      FDFF65E9FDFF66EAFDFF68EAFDFF69EAFDFF6AEAFDFF6BEAFDFF6CEBFDFF6CEB
      FDFF6CEBFDFF6CEBFDFF6AEAFDFF6BEBFEFF6CEBFEFF6DEBFEFF6EEBFEFF6EEB
      FEFF6FEBFEFF6FEBFEFF6FEBFDFF6FEBFDFF6FEBFDFF6FEBFEFF6FEBFEFF2CAD
      D6FF010203650101012B0101010E0101010200000000000000000101012C91B3
      D1FF96B6D3FF93B3D2FF88ACCCFF7CA0C2FF6890B4FF5881A7FF3D5D78FF3232
      32FF0303036000000000000000000000000020251CA2BBDD9CFF9FD075FF4A71
      23E40101011D0101012D0A120294030601690101010100000000000000000000
      0000000000000000000000000000000000000101012DEED1B6FFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFECECECFFDEDADEFFB08681FFC3BEC3FFE5E3E5FFC19F
      9EFFAC9DA1FFDEDADEFF886765F201010132FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEBC6A3FFEFEFEFFFEFEFEFFFEFEFEFFFF0EFEFFFEFEFEFFFEFEFEFFFE9E9
      EAFFC9CED6FFC8C3C1FF958C7EFF586E81FF5B81A8FF5781A7FF7C97B6FFCBD3
      DBFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFE6E4E6FFC2A1
      9FFFB7A9ACFFFDFDFDFFFFFFFFFFFFFFFFFF00000000010101082CADD6FF6EEB
      FDFF6FEBFDFF70EBFDFF72EBFDFF73EBFDFF75ECFDFF75ECFDFF75ECFDFF75EC
      FDFF75ECFDFF75ECFDFF73EBFDFF74ECFDFF75ECFDFF76ECFEFF76ECFEFF77EC
      FEFF77ECFEFF77ECFEFF77ECFDFF77ECFDFF77ECFDFF77ECFEFF77ECFEFF2CAD
      D6FF010203650101012B0101010E01010102000000000000000002020238AAC4
      DBFFAFC8DDFFA6C1DAFF96B5D3FF84A9CAFF7299BBFF5A84A9FF457399FF3645
      52FF151515C9000000000000000000000000000000000202023F030403530101
      010F010101063E750BE959B204FF51A103FF0304016100000000000000000000
      0000000000000000000000000000000000000101012DEFD2B7FFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEDEDEDFFDFDADFFFB08782FFC4BFC4FFE6E4E6FFC1A0
      9FFFAC9EA2FFDEDADEFF866564F101010130FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEBC7A4FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFD0C9C3FF736C62FFD9D8D9FFE8E9EAFFEFEFEFFFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFE7E5E7FFC2A2
      A1FFB7A9ADFFFDFDFDFFFFFFFFFFFFFFFFFF00000000010101082CADD6FF7EEC
      FDFF7FEDFDFF7FEDFDFF80EDFDFF81EDFDFF81EDFEFF81EDFEFF81EDFEFF81ED
      FDFF81EDFDFF81EDFDFF81EDFDFF81EDFDFF81EDFDFF81EEFDFF81EEFEFF81EE
      FEFF81EEFEFF82EEFEFF82EEFEFF82EEFEFF82EEFEFF82EEFEFF82EEFEFF2CAD
      D6FF010203650101012A0101010D01010102000000000000000001020233B5CC
      E0FFBED2E3FFB7CEE1FFA5C1DAFF8BAECEFF779CBFFF5D87ACFF447399FF3858
      74FF333333FD0101011500000000000000000000000000000000000000000000
      00000101011489C152FE81D336FF5FB50EFF070B028300000000000000000000
      0000000000000000000000000000000000000101012DEFD3B8FFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEEEEEEFFDFDBDFFFB08783FFC4BFC4FFE6E4E6FFC2A1
      A1FFAD9EA2FFDEDADEFF886662F201010132FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEBC7A5FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFEEEDECFFA5A098FF918D87FFF0F0F0FFEFEFEFFFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFE7E5E7FFC2A2
      A0FFB9ABAEFFFDFDFDFFFFFFFFFFFFFFFFFF00000000010101082CADD6FF8BEF
      FDFF8CEFFDFF8CEFFDFF8CEFFEFF8CEFFEFF8DEFFEFF8DEFFEFF8DEFFEFF8DEF
      FEFF8DEFFEFF8EEFFEFF8CEFFDFF8CEFFDFF8DEFFDFF8DEFFDFF8EEFFEFF8EEF
      FEFF8EEFFEFF8EEFFEFF8EEFFEFF8EEFFEFF8EEFFEFF8EEFFEFF8EEFFEFF2CAD
      D6FF01020363010101270101010C0101010200000000000000000101011AB2CA
      DFFFBCD1E3FFB6CDE0FFA7C1DAFF93B3D1FF7CA0C1FF5C86ACFF415D76FE3A41
      45FE383838FF0101013C00000000000000000000000000000000000000000000
      0000000000000F130C8998C66CFC405D23D90101012F0202024C090A0886171C
      12AB1F2418BA0E100B9B01010124010101010101012DF0D4B9FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFEEEEEEFFE0DCE0FFB18985FFC4BFC4FFE6E4E6FFC2A0
      9FFFAEA0A3FFDFDBDFFF886763F201010132FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFECC8A7FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFE7E4E1FF807C75FFC2BFBBFFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFE7E5E7FFC2A0
      9FFFB7A9ACFFFDFDFDFFFFFFFFFFFFFFFFFF00000000010101082CADD6FF9BF1
      FEFF9BF1FEFF9CF1FEFF9CF1FEFF9CF1FEFF9CF1FEFF9CF1FEFF9CF1FEFF9DF1
      FEFF9DF1FEFF9DF1FEFF98F0FDFF98F1FDFF99F1FDFF99F1FEFF99F1FEFF99F1
      FEFF99F1FEFF99F1FEFF99F1FEFF99F1FEFF99F1FEFF99F1FEFF99F1FEFF2CAD
      D6FF0102025A0101011D01010108010101010000000000000000010101027E94
      A8F0ABC6DCFFA5C1D9FF96B5D3FF83A8C9FF7096B8FF5681A5FF3D4952FF3A3A
      3AFF3A3A3AFF0101013600000000000000000000000000000000000000000000
      000000000000000000000303025227301DC1728658F99DB47EFF8CAE6BFF92B2
      71FF8EAC6CFF7F9B58FF1B2014BE010101240101012DF0D4BAFFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFEEEEEEFFE0DCE0FFB18984FFC6C1C6FFE7E5E7FFC1A0
      9FFFAD9FA2FFE0DCE0FF886765F201010132FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFECCAA9FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFCAC8C5FF7D7A75FFE1E1E0FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0F0F0FFE8E6E8FFC3A2
      A0FFB7A9ACFFFDFDFDFFFFFFFFFFFFFFFFFF00000000010101052CADD6FFA5F2
      FEFFA5F2FEFFA6F2FEFFA6F2FEFFA6F2FEFFA6F2FEFFA6F2FEFFA6F2FEFFA6F2
      FEFFA6F2FEFFA6F2FEFFA6F2FEFF9FF1FDFF9FF2FEFFA0F2FEFFA0F2FEFFA0F2
      FEFFA0F2FEFFA0F2FEFFA0F2FEFFA0F2FEFFA0F2FEFF9FF2FEFF9FF2FEFF2CAD
      D6FF010101250101010F01010104000000000000000000000000020202454D5E
      6CE787A8C5FF7D95AEFF647887FF4B555DFF3E3F40FF3D3D3DFF404040FF3E3E
      3EFF2A2A2AE80101010600000000000000000000000000000000000000000000
      00000000000001010103738E50F587AB64FF8DA273FEBECA9DFF8EAD70FF9CB9
      81FF9CB97EFF85A661FF14180FB2010101320101012DF0D5BCFFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFEFEFEFFFE0DCE0FFB08782FFC5C0C5FFE8E6E8FFC2A1
      A0FFAE9FA3FFE0DCE0FF886867F201010131FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFECCCABFFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0EFEFFFB2AEA5FF908D87FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFE9E7E9FFC4A3
      A2FFB7A9ADFFFDFDFDFFFFFFFFFFFFFFFFFF00000000010101032CADD6FFADF3
      FEFFAEF3FEFFAEF3FEFFAEF3FEFFAEF3FEFFAFF3FEFFAFF3FEFFAEF3FEFFAEF3
      FEFFAEF3FEFFAEF3FEFFAEF3FEFF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CAD
      D6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF0101
      01190101010E0101010500000000000000000000000000000000282828CB4141
      40FF3E3E3EFF3E3E3EFF454545FF686868FF6C6C6CFF676767FF5C5C5CFF5252
      52FD020202510000000000000000000000000000000000000000000000000000
      00000000000000000000576D40E48DAC6EFF96A780FEDCDCC2FF8DA96EFF9DB7
      81FF9DB981FF8AAC65FF040403730101010A0101012DF0D6BDFFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFEFEFEFFFE1DDE1FFB18884FFC6C1C6FFE8E6E8FFC3A2
      A2FFAF8878FFE4B898FF553932DB0101011CFFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEDCDAEFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFE9E9E8FFD7D6D3FFF2F2
      F2FFF2F2F2FFF2EDE8FFF2E4D7FFF2E2D4FFF1E1D2FFF1E1D1FFE9D8CAFFC49C
      94FFBCAFB2FFFDFDFDFFFFFFFFFFFFFFFFFF0000000000000000010101042CAD
      D6FFC2F6FEFFC2F6FEFFC2F6FEFFC2F6FEFFC3F6FEFFC3F6FEFFC2F6FEFFC2F6
      FEFFC2F6FEFFC2F6FEFF2CADD6FF0101012B010101140101010A010101070101
      0107010101070101010701010107010101070101010701010107010101070101
      01050101010300000000000000000000000000000000000000000202023B6D6D
      6DF4777777FF7F7F7FFF818181FF6D6D6DFF656565FF5E5E5EFF3E3E3EE90202
      0251000000000000000000000000000000000000000000000000000000000000
      0000000000000000000013170F999AB27EFF8B9D83FC72889FFE728B83FF8FA9
      70FF8EAC70FF4B5939DE0101010D000000000101012DF1D8C0FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF0F0F0FFE2DEE2FFB28883FFC5A792FFE9C8ABFFC393
      83FFBC9E93FF7D6252E40101013901010102FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEDCFB1FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3DECAFFF5D3B5FFF5D5B9FFF5D4B7FFF5D4B7FFEEC9ACFFC497
      84FFE3DFE1FFFEFEFEFFFFFFFFFFFFFFFFFF0000000000000000000000000101
      01042CADD6FFCAF7FEFFCAF7FEFFCAF7FEFFCAF7FEFFCAF7FEFFCAF7FEFFCAF7
      FEFFCAF7FEFF2CADD6FF01010129010101120101010501010101000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01261313139B464646DF5D5D5DF4494949E91F1F1FBD0505056E0101010E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000010101090B0D0982667D6AF0506F8FFF436789FF7888
      64FE313A28C70101012200000000000000000101012DF1D9C2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2E9E1FFF2E4
      D6FFF1E1D2FFF1E1D1FFF0E0D0FFE3CFC5FFB38680FFCEB7ACFFEECEB8FFC298
      86FF775D4EE4010101390101010200000000FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEED1B4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4DFCBFFF6DBC5FFF7E0CEFFF7E0CEFFF5DBC6FFDBB599FFE1DC
      DDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000010101042CADD6FFCAF7FEFFCAF7FEFFCAF7FEFFCAF7FEFFCAF7FEFFCAF7
      FEFF2CADD6FF0101012601010111010101050101010100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000101010D233847D23B6B92FF30587DFF0304
      0465010101010000000000000000000000000101012DF2DBC5FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF4D4B5FFF6D6
      BBFFF5D4B7FFF5D4B6FFF5D3B6FFE6BC9EFFBD9282FFE5C6B0FFD0A78BFF765D
      4DE40101013A010101020000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEFD3B8FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5E0CBFFF6DBC5FFF7E0CEFFF5DBC6FFDCB69AFFE1DCDCFFFDFD
      FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      000000000000010101042CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CAD
      D6FF010101190101010E01010105000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000060708707298BBFF638CB0FF4C799DFF0909
      0B9B000000000000000000000000000000000101012DF3DDC7FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4D5B8FFF7E0
      CEFFF7E0CEFFF6DFCDFFF2D4BBFFD0A88EFFE1C2ACFFD0A78BFF765D4DE40101
      013A01010102000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFF0D5BBFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF5E1CEFFF6DBC5FFF5DBC6FFDCB69AFFE1DCDCFFFDFDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000001010103010101050101010701010107010101070101
      0107010101050101010300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000191E23A298B7D4FF83A8C9FF628BAFFF3C53
      67FF020202550000000000000000000000000101012DF4DFCBFFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF4D5B8FFF7E0
      CEFFF6DFCDFFF2D4BBFFD1AA8FFFE1C2ACFFCFA381FF765D4DE40101013A0101
      010200000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFF1D7BEFFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF6E3D0FFF4D7BEFFDCB69AFFE1DCDCFFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001E2226A4B9CFE1FF99B8D4FF6D94B8FF4167
      89FE0D0D0DAF0000000000000000000000000101012DF5E1CEFFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF5D7BBFFF6DF
      CDFFF2D4BBFFD1A686FFE1BFA6FF45352ACE1B1512A901010133010101020000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF8F8
      F8FFF2D4B7FFF8EBE0FFF8ECE0FFF8ECE0FFF8ECE0FFF8ECE0FFF8ECE0FFF8EC
      E0FFF8ECE0FFF8ECE0FFF8ECE0FFF8ECE0FFF8ECE0FFF8ECE0FFF8ECE0FFF8EC
      E0FFF8ECE0FFF5DAC1FFDDB697FFE1DDDCFFFDFDFDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0E1084A6C2DAFF8AAAC7FF5F7F98FF3D45
      4DFF131313BD0000000000000000000000000101012DF6E3D0FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF6D9BDFFF2D4
      BBFFD1A583FFE1BDA0FF1B1511A8010101150101010200000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFDFD
      FDFFF4E9DEFFEEE2D7FFEEE2D7FFEEE2D7FFEEE2D7FFEEE2D7FFEEE2D7FFEEE2
      D7FFEEE2D7FFEEE2D7FFEEE2D7FFEEE2D7FFEEE2D7FFEEE2D7FFEEE2D7FFEEE2
      D7FFEEE2D6FFEDE0D5FFEEEBEAFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001010101343739DF575F65FF5A5B5BFF5C5C5CFF4C4C
      4CFB0202024E0000000000000000000000000101012BF6DBC2FFF8EBE0FFF8EB
      E0FFF8EBE0FFF8EBE0FFF8EBE0FFF8EBE0FFF8EBE0FFF8EBE0FFF8EBE0FFF8EB
      E0FFF8EBE0FFF8EBE0FFF8EBE0FFF8EBE0FFF8EBE0FFF7EBDFFFF2CEAEFF1E17
      13AD0101011F0101010E01010107000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000202023A212121B6323232D1121212A40101
      0137000000000000000000000000000000000101010A0202024A0202024D0202
      024D0202024D0202024D0202024D0202024D0202024D0202024D0202024D0202
      024D0202024D0202024D0202024D0202024D0202024D0202024D020202490101
      010C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010104010101100101
      0124010101320101013201010127010101140101010601010101000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101010202
      02360D0D0D782D2D2DA75E5E5FCA7B7B7BD87B7B7BD85D5D5ECA2D2D2DA70D0D
      0D78020202360101010100000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFF1EDECFFFAF8F8FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000010101030101
      010E010101200101012B0101012E0101012E0101012E0101012E0101012E0101
      01330101013B03020399040204A1040204A40302039F02010242010101390101
      01330101012F0101012E0101012E0101012F01010133010101390101013F0302
      03980302039603020393030203910000000000000000010101060101011B0101
      013D0101015301010155010101470101012C0101011201010104000000000000
      0000000000000000000000000000000000000000000000000000010101020101
      0105010101050101010200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010E0D0D0D788A8B8BDEF9F9
      F9FFFDFDFDFFFEFEFEFFFDFDFDFFF1FAF5FFF1FAF5FFFDFDFDFFFEFEFEFFFCFC
      FCFFF7F7F7FF888888DE0D0D0D780101010E0000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFDFD
      FDFFEBEAEBFFDFDCDFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDC
      DFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDC
      DFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDCDFFFDFDC
      DFFFF2F1F2FFFEFEFEFFFFFFFFFFFFFFFFFF0000000000000000010101050101
      011801010135020102480201024D0201024D0201024D0201024D0201024D0201
      0252746DD1FF756FD2FF756FD2FF756ED1FF040204AE040204A70201025E0201
      0255020102500201024E0201024E02010250020102550201025E746CCFFF726A
      CDFF7269CCFF7167CAFF03020391000000000000000001010107C88674FFC886
      74FFC88674FFC88573FF010101640101014C0101012B01010111010101040000
      00000000000000000000000000000000000000000000010101020101010B0101
      0117010101170101010B01010102000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000007070763AEAEAEEBFCFCFCFFF7FBF9FFC8ED
      DBFFA0E1C3FF81D8AFFF6BD1A1FF67CF9EFF67CF9EFF6BD1A0FF81D8AEFFA0E1
      C2FFC8EDDBFFF7FBF9FFFBFBFBFFABABABEB0707076300000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF8F8
      F8FFBB9084FFAB817EFFAB827FFFAB827FFFAB8280FFAB8280FFAB8381FFAB82
      80FFAB827FFFAB827FFFAB8280FFAB8280FFAB8381FFAB8381FFAB8381FFAB83
      81FFAB8381FFAB8381FFAB8381FFAB8381FFAB8381FFAB8381FFAA8180FFA177
      72FFBFB3B7FFFDFDFDFFFFFFFFFFFFFFFFFF000000000000000001010107D38D
      60FFD79061FFDA9464FFDB9665FFDC9767FFDD9967FFDF9B6AFFE09C6AFFDD9A
      68FF7671D6FF7671D7FF7671D7FF7772D6FF7671D5FF704C37FF79533BFFCB8C
      61FFD49365FFD89464FFD99564FFD49161FFCC8C5DFF756FD3FF746DD2FF736C
      D1FF736BCEFF7168CBFF0302038F000000000000000001010107C88674FFC886
      74FFC78573FFC78572FFC78472FF010101660101014C0101012B010101130101
      01090101010701010107010101050101010200000000010101050101011A0101
      0134010101340101011A01010105000000000101010201010105010101050101
      0102000000000000000000000000000000000000000000000000000000000000
      0000000000000101010F373737B0FBFBFBFFF6FBF8FFB3E6CDFF76D3A5FF54C9
      92FF3BC385FF2ABF81FF27BF81FF27BF81FF27BF81FF27BF81FF2ABF80FF3BC3
      84FF54C990FF76D3A4FFB3E6CCFFF6FBF8FFF8F8F8FF353535B00101010F0000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFDCB69BFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5
      DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5
      DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFDBD5DBFFD6CFD6FFBB96
      96FFB7A8ABFFFDFDFDFFFFFFFFFFFFFFFFFF000000000000000001010107D891
      61FFD8D1D8FFDBD4DBFFDCD6DCFFDDD7DDFFDED9DEFFDFDADFFFE0DCE0FFDDD9
      DDFF7673DAFF7673DAFF7774DAFF7773DAFF7773D9FF7772D8FF6E696EFF7873
      78FFCBC6CBFFD2CDD2FFD2CDD2FFCBC6CBFF7672D6FF7570D6FF756FD4FF746E
      D3FF726BCFFF7168CCFF03020389000000000000000001010106C78573FFC785
      73FFC78572FFC78471FFC78371FFC68370FF010101660101014E010101350101
      012701010125010101230101011B0101010E01010104010101075C5CDDFF5C5C
      DDFF010101460101012301010107010101040101010E01010119010101170101
      010B010101020000000000000000000000000000000000000000000000000000
      0000010101186C6C6CD1FDFDFDFFD7F1E4FF7DD4A7FF4DC78DFF2BC081FF27C0
      81FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C0
      82FF27C081FF2CBF80FF4DC68AFF7DD3A6FFD7F1E3FFFBFBFBFF696969D10101
      011800000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEAC6A3FFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE5E3E5FFC19F
      9CFFB7A8ABFFFDFDFDFFFFFFFFFFFFFFFFFF000000000000000001010107DC94
      61FFDCD6DCFFDFDBDFFFE1DDE1FFE2DFE2FFE3DFE3FFE3E0E3FFE4E1E4FFE3E0
      E3FF7774DDFF7876DDFF7876DDFF7875DDFF7876DDFF7875DCFF7875DCFF6F6C
      6FFF797579FFCAC7CAFFC9C6C9FF7874DBFF7673DAFF7672D8FF7571D6FF746E
      D4FF726BD0FF7168CCFF01010118000000000000000001010102C78572FFC785
      72FFC78471FFC78370FFC68370FFC6826FFFC5816DFF010101690101015C0101
      015401010152010101500101014201010129010101110101010B5C5CDDFF5C5C
      DDFF01010146010101230101010B01010111010101290101013B010101330101
      0118010101040000000000000000000000000000000000000000000000000101
      010F6C6C6CD1FDFDFDFFBEE8D1FF63CB95FF33C181FF27C081FF27C183FF27C1
      83FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF27C183FF27C183FF27C081FF34C081FF62CA92FFBEE8CFFFFCFCFCFF6868
      69D10101010F000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEAC6A2FFEBEBEBFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFE6E4E6FFC29F
      9DFFB7A8ACFFFDFDFDFFFFFFFFFFFFFFFFFF000000000000000001010107E097
      5FFFE0DCE0FFE3DFE3FFE5E2E5FFE5E3E5FFE7E5E7FFE7E5E7FFE7E6E7FFE7E6
      E7FFE4E3E4FF7776DFFF7776DFFF7776DFFF7877E0FF7877E0FF7876DFFF7876
      DFFF6F6D6FFF727072FF7876DEFF7875DEFF7774DCFF7673DAFF7470D6FF736D
      D3FF7169CEFF0101011E0101010D00000000000000000101010101010104C784
      71FFC68370FFC6826FFFC6816EFFC5816DFFC5816CFFC4816AFFC37E68FFC27C
      65FFC17B64FFC07A62FF010101640101014C0101012B010101165C5CDDFF5C5C
      DDFF010101340101011C01010113010101295C5CDDFF5C5CDDFF0101013B0101
      0119010101040000000000000000000000000000000000000000000000003737
      37B0FDFDFDFFBCE6CDFF59C78AFF2BC081FF27C082FF27C183FF27C183FF27C1
      83FF27C183FF27C183FF27C183FF73D7AEFF7BC886FF2CB86CFF27C183FF27C1
      83FF27C183FF27C183FF27C183FF27C082FF2CBE7FFF59C587FFBCE6CBFFFBFB
      FBFF343535B0000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEAC5A1FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFEBEBEBFFECECECFFECECECFFECECECFFE6E4E6FFC29F
      9DFFB7A8ACFFFDFDFDFFFFFFFFFFFFFFFFFF000000000000000001010107E198
      5EFFE2DFE2FFE5E3E5FFE7E6E7FFE8E7E8FFE9E8E9FFE9E9E9FFE9E9E9FFE9E9
      E9FFE9E9E9FFE6E6E6FF7777E1FF7777E1FF7877E2FF7877E2FF7978E2FF7978
      E1FF7978E1FF7978E1FF7877E0FF7775DFFF7674DDFF7572D9FF746FD5FF726B
      D1FF010101340101011201010105000000000000000000000000000000000101
      0104C6826FFFC6816EFFC5816DFFC5816CFFC4816AFFC48069FFC37E67FFC27C
      65FFC17A63FFC07962FFBF7860FF010101660101014C0101012D5C5CDDFF5C5C
      DDFF01010117010101100101011B5C5CDDFF5C5CDDFF5C5CDDFF010101290101
      010E01010102000000000000000000000000000000000000000007070763FBFB
      FBFFD3EEDDFF59C383FF2BBF81FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF27C183FF27C183FF73D7AEFFFCFEFDFFFDFDFCFF81BB64FF2CB76CFF27C1
      83FF27C183FF27C183FF27C183FF27C183FF27C082FF2CBE7EFF58C181FFD3EE
      DCFFF6F6F6FF060706630000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEAC4A0FFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE9E9E9FFE7E6E5FFDBD8D7FFB997
      91FFB7A8ACFFFDFDFDFFFFFFFFFFFFFFFFFF000000000000000001010107E298
      5DFFE3E0E3FFE7E5E7FFE9E8E9FFE9E9E9FFEAEAEAFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEAEAEAFFE7E7E7FF7676E2FF7777E2FF7777E3FF7777E3FF7777
      E2FF7777E2FF7776E2FF7776E1FF7675E0FF7573DDFF7470D8FF736CD3FF0201
      02590101012A0101010B01010101000000000000000000000000000000000000
      000001010104C6816EFFC5816DFFC5816CFFC4816AFFC37F68FFC37D66FFC27C
      64FFC17A62FFC07961FFBF775FFFBF765EFF010101660101014C0101012B0101
      011301010107010101075C5CDDFF5C5CDDFF5C5CDDFF01010129010101110101
      010400000000000000000000000000000000000000000101010EAEAEAEEBF5FA
      F7FF6AC587FF30BF80FF27C082FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF27C183FF73D7AEFFFDFEFDFFFFFFFFFFFFFFFFFFFDFEFCFF81BA64FF2CB7
      6CFF27C183FF27C183FF27C183FF27C183FF27C183FF27C082FF31BD7BFF68C4
      85FFF5FAF7FFA7A7A8EB0101010E00000000FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEAC49FFFEBEBEBFFEBEBEBFFEAEAEAFF635E5CFFCDCCCCFFEBEBEBFFD3D3
      D8FFC0C2CBFFC9CBD2FFDFDFE2FFE0E0E2FFD2D5DBFFBCC0CCFFB1B7C4FFCFD1
      D6FFEAEAEAFFEAEAEAFFE6E6E6FFDAD7D0FFD0CCBEFFC0B9A5FFBEB59CFFB898
      81FFB7A8ACFFFDFDFDFFFFFFFFFFFFFFFFFF000000000000000001010107E297
      5BFFE3E0E3FFE6E5E6FFE8E8E8FFE9E9E9FFEAEAEAFFEAEAEAFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEAEAEAFFE6E6E6FF7878E3FF7777E3FF7676E3FF7676
      E3FF7676E3FF7676E2FF7675E2FF7573DFFF7572DCFF746FD7FFC3814FFF0201
      0253010101250101010800000000000000000000000000000000000000000000
      00000000000001010109C6826FFFC5816DFFC4816BFFC37F68FFC37D65FFC27B
      63FFC17962FFC07860FFBF765EFFBF755DFFBE745BFF010101620101013F0101
      011901010104010101025C5CDDFF5C5CDDFF0101011B010101130101010B0101
      010701010105010101020101010100000000000000000D0D0D78FCFCFCFFA4DB
      B4FF40BD7AFF27C081FF27C183FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF6CD5AAFFFDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFCFF7CB7
      5CFF2BB970FF27C183FF27C183FF27C183FF27C183FF27C183FF27BF81FF40BC
      76FFA3DBB2FFF8F8F9FF0C0C0C7800000000FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEAC39EFFEBEBEBFFEBEBEBFFEBEBEBFFA7A4A3FF53545EFF7E869EFF3952
      7FFF2C487CFF2C487CFF334C80FF2B467BFF22457FFF214781FF22437CFF2541
      77FF6A7996FFC5C9D1FFCACAC8FFDAD1B0FFD5CBAAFFC6BC9EFFBBB295FFB798
      80FFB7A9ACFFFDFDFDFFFFFFFFFFFFFFFFFF000000000000000001010107E397
      59FFE4E1E4FFE7E6E7FFE9E9E9FFEAEAEAFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEAEAEAFFE6E6E6FFDDDDDDFF7979E4FF7878E4FF7676
      E3FF7474E2FF7474E1FF7574E1FF7573DFFF7673DCFF706B70FFC2814FFF0201
      0253010101250101010800000000000000000000000000000000000000000000
      00000000000001010107CA8A78FFC98876FFC78572FFC6826FFFC5816BFFC480
      69FFC37D66FFC27A63FFC0775FFFBF755DFFBD735BFFBD735AFF0101013F0101
      011901010104000000000101010201010107010101100101011C010101230101
      0122010101190101010B0101010200000000010101018A8A8ADEF5FBF7FF57BD
      75FF2ABE80FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF69D4
      A9FFF9FDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFC
      F8FF79B75CFF2BB970FF27C183FF27C183FF27C183FF27C183FF27C082FF2BBD
      7BFF55BC73FFF5FBF7FF848484DE01010101FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEAC39DFFEBEBEBFFEBEBEBFFEBEAEAFFE1E0E1FF6D81A1FF587BA5FF4769
      94FF3A5989FF365688FF345689FF305388FF30588AFF3C6793FF3D6993FF3056
      85FF1F3D77FF1E3871FF6A7589FFD2C6A5FFC4BA9CFFBBB295FFB6AD91FFB495
      7DFFB7A9ACFFFDFDFDFFFFFFFFFFFFFFFFFF000000000000000001010107E396
      57FFE4E1E4FFE7E6E7FFE9E9E9FFEAEAEAFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEAEAEAFFE7E7E7FFE0E0E0FFD5D5D5FF7C7CE4FF7979E4FF7676
      E3FF7373E2FF7272E2FF7574E1FF7674DFFF7874DBFF6C676CFF764B2FFF0201
      02590101012A0101010B01010101000000000000000000000000000000000000
      00000000000001010107CE9481FFCD9281FFCC8E7EFFCA8B7AFFC98775FFC885
      72FFC6816DFFC37E67FFC17961FFBF765DFFBD735AFFBD735AFF010101290101
      010F010101040101010501010105010101070101011801010134010101470101
      01470101013401010117010101050000000002020236F9F9F9FFB9E3C4FF3DBA
      6FFF2FC386FF27C183FF27C183FF27C183FF27C183FF27C183FF69D4A9FFF9FD
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFAFCF8FF79B75CFF2BB970FF27C183FF27C183FF27C183FF27C183FF30C2
      84FF3DB86BFFB8E3C2FFF1F1F1FF02020236FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEAC29CFFEBEBEBFFEBEBEBFFEBEBEBFFC6C7CEFF3E5C82FF546477FF4D64
      7FFF527194FF577598FF5D7FA3FF6488B0FF4F79A4FF43709AFF3E6A96FF365D
      8EFF244681FF1A3774FF5C6B86FFC6BC9EFFB9B094FFB5AC90FFB1A88DFFB392
      79FFB7A8ABFFFDFDFDFFFFFFFFFFFFFFFFFF000000000000000001010107E395
      56FFE4E1E4FFE7E6E7FFE9E9E9FFEAEAEAFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEAEAEAFFE7E7E7FFE0E0E0FFD6D6D6FF8181E5FF8181E5FF7F7FE5FF7D7D
      E5FF7979E3FF7979E3FF7B7AE2FF7C7AE0FF7E7BDDFF7D78D8FF6E462CFF0402
      04A1010101340101011201010105000000000000000000000000000000000000
      00000000000001010105D3A08FFFD39F8EFFD29D8CFFD19B89FFD09785FFCF95
      82FFCC8E7DFFC88674FFC48069FFC17A62FFBE745BFF0101012B010101110101
      01080101010F0101011901010119010101135C5CDDFF5C5CDDFF5C5CDDFF5C5C
      DDFF010101340101011701010105000000000D0D0D78FDFDFDFF81CD91FF3ABF
      7DFF47CB95FF27C183FF27C183FF27C183FF27C183FF69D4A9FFF9FDFCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFAFCF8FF79B75CFF2BB970FF27C183FF27C183FF27C183FF47CB
      94FF3BBE78FF81CC90FFF9F9F9FF0C0C0C78FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEAC29CFFEBEBEBFFEBEBEBFFEBEBEBFFC3C7D0FF3E618FFF353C4EFF2020
      22FF122245FF0A1D4AFF294577FF6384ADFF6187AFFF547EA6FF4B759FFF436D
      9AFF3F6996FF3C6492FF5A7593FFBCB39BFFB2A98EFFB0A88DFFB6AD91FFC09F
      82FFB7A8ABFFFDFDFDFFFFFFFFFFFFFFFFFF000000000000000001010107E395
      56FFE4E1E4FFE7E6E7FFE9E9E9FFEAEAEAFFEBEBEBFFEBEBEBFFEBEBEBFFEAEA
      EAFFE7E7E7FFE0E0E0FFD6D6D6FF7B7BE3FF8181E5FF8282E6FF8383E6FF8181
      E6FF8181E6FF8181E5FF8181E4FF8281E2FF8181DEFF7F7AD9FF7872D3FF0402
      04A90302038C0101011E0101010D000000000000000000000000000000000000
      00000000000001010102D7A899FFD7A99AFFD7A99AFFD8A99AFFD7A798FFD6A5
      95FFD29D8CFFCE9381FFC88775FFC48069FF0101012B01010111010101080101
      01110101012901010140010101400101012B5C5CDDFF5C5CDDFF5C5CDDFF5C5C
      DDFF010101190101010B01010102000000002E2E2EA8FEFEFEFF53BB6BFF3EC5
      88FF51CE9BFF35C58BFF27C183FF27C183FF6AD4A9FFF9FDFCFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFAFCF9FF79B75CFF2BB970FF27C183FF35C58BFF51CE
      9BFF3FC383FF51BA68FFFDFDFDFF2C2C2CA8FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEAC39DFFEBEBEBFFEBEBEBFFEBEBEBFFC3C7CFFF446D9DFF1F3359FF3F41
      45FF191B25FF1A2A53FF446894FF567DA6FF6286AEFF6083ABFF5E82AAFF5B81
      A8FF587FA4FF4F759BFF4F6F92FFA7A698FFB6AC90FFC1B79AFFD6CCABFFD5B4
      93FFB7A8ACFFFDFDFDFFFFFFFFFFFFFFFFFF000000000000000001010107E396
      57FFE5E2E5FFE8E7E8FFEAEAEAFFEBEBEBFFECECECFFECECECFFECECECFFEAEA
      EAFFE3E3E3FFD9D9D9FF7171E1FF7A7AE3FF8282E5FF8989E7FF8E8EE8FF8C8C
      E8FF8B8BE8FF8A8AE7FF8C8BE6FF8E8DE4FF8A88E2FF8281DCFF7B76D5FF7169
      CEFF030203960302038401010118000000000000000000000000000000000000
      0000000000000000000001010104DCB3A7FFDDB5A9FFDEB7ABFFDEB7AAFFDDB5
      A8FFDAAEA0FFD5A393FFCF9583FF0101012B0101011101010108010101110101
      012BC38069FFC38069FF010101620101014C0101012D010101160101010B0101
      0107010101050101010201010101000000005C5C5CC9FDFDFDFF36B054FF43C8
      8FFF52CF9CFF4ECD99FF2DC386FF6AD4A9FFF9FDFCFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFCF9FF79B75DFF31BB73FF4ECD99FF52CF
      9CFF44C78BFF36AF51FFFDFDFDFF575757C9FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEAC49EFFECECECFFECECECFFECECECFFC4CAD3FF4B75A3FF1F3B6DFF3345
      66FF625E56FF3C3F4FFF3B5781FF587EA4FF6586ACFF6C8CB1FF6A8BB1FF6486
      AEFF597FA5FF4E759CFF446E98FFA3ADADFFDED4B2FFE6DCB9FFEEE6C5FFD6B6
      9CFFB7A8ACFFFDFDFDFFFFFFFFFFFFFFFFFF000000000000000001010107E397
      59FFE6E3E6FFE9E8E9FFEBEBEBFFECECECFFEDEDEDFFEDEDEDFFEDEDEDFFE9E9
      E9FFDFDFDFFF6666DFFF7171E1FF7C7CE3FF8787E6FF9090E8FF9797E9FF9696
      EAFFD7D7D7FFDEDEDEFF9796E8FF9897E7FF9290E4FF8A87DFFF7F7AD8FF736C
      D1FF675ECAFF0302038E03020389000000000000000000000000000000000000
      00000101010201010105010101070101010BDFBBB0FFE0BDB2FFE1BEB3FFE0BD
      B2FFDEB8ACFFDBB0A3FF0101012B0101011101010108010101110101012BC380
      69FFC38069FFC3806AFFC3806AFF010101660101014C0101012B010101110101
      0104000000000000000000000000000000007B7B7BD8EEF8F0FF33AE4FFF47CA
      92FF52CF9CFF52CF9CFF81DCB7FFF9FDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF5F9F2FFA3CB88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2CA83FFF6FB
      F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFCF9FF7DB85EFF4FC482FF52CF
      9CFF47C88EFF34AD4BFFEEF8F0FF747474D8FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEBC4A0FFEDEDEDFFEDEDEDFFEDEDEDFFD2D7DFFF5C82B0FF4E76A3FF4E72
      9EFF9BA2A4FF7A7264FF41526FFF547297FF6382A9FF6989B1FF688AB4FF6184
      B0FF5881ACFF5D83ADFF85A1BDFFB9C4CCFFE2DED0FFDDDAD3FFDBD8D6FFC19F
      9BFFB7A8ACFFFDFDFDFFFFFFFFFFFFFFFFFF000000000000000001010107E398
      5CFFE7E4E7FFEAE9EAFFECECECFFEDEDEDFFEEEEEEFFEEEEEEFFEEEEEEFFE9E9
      E9FF6666DFFF6D6DE1FF7B7BE3FF8484E6FF9292E8FF9999EAFFA2A2EBFFD9D9
      D9FFE3E3E3FFE9E9E9FFE8E8E8FFA5A5EAFF9D9CE6FF9693E3FF8884DCFF7C77
      D5FF6D65CEFF655BC8FF0302038F000000000000000000000000000000000101
      01020101010B0101011901010122010101230101011DE3C3B9FFE3C4BAFFE3C4
      BAFFE2C2B8FF010101290101011101010108010101110101012BC48069FFC480
      69FFC48069FFC3806AFFC3806AFFC38069FF010101660101014C010101290101
      010E010101020000000000000000000000007B7B7BD8EEF8F0FF34AB48FF46C9
      92FF52CF9CFF52CF9CFF81D6A9FFF7FBF8FFFFFFFFFFFFFFFFFFFFFFFFFFF5F9
      F2FF72B150FF8BD09BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF78B04CFF82CD
      97FFF6FCF8FFFFFFFFFFFFFFFFFFFFFFFFFFF4F8F0FF6FB250FF50C88BFF52CF
      9CFF47C88EFF34A944FFEEF7EFFF747474D8FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEBC6A1FFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFDBDFE5FFA5B6CBFF6F91
      B9FF6D8FB5FFAEA89AFF5F6261FF5378A0FF567BA4FF587EA7FF567FAAFF5981
      A9FF8BA5BEFFCFD5DBFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFE5E3E5FFC1A0
      9EFFB7A9ACFFFDFDFDFFFFFFFFFFFFFFFFFF000000000000000001010107E39A
      5DFFE8E5E8FFEBEAEBFFEDEDEDFFEEEEEEFFEFEFEFFFEFEFEFFFEFEFEFFFEAEA
      EAFF6B6BE0FF7777E2FF8484E6FF9393E8FF9F9FEBFFA3A3EBFFDADADAFFE4E4
      E4FFEBEBEBFFEEEEEEFFEDEDEDFFE9E9E9FFA6A5E9FFA2A0E5FF9591E0FF8481
      D9FF756FD1FF685FCBFF0302038C000000000000000000000000000000000101
      010401010117010101340101014701010147010101340101011BE4C5BBFFE4C5
      BBFF010101190101010F01010108010101110101012BC47F68FFC48069FFC480
      69FFC4806AFFC4806AFFC4806AFFC37F69FFC37F69FF01010164010101420101
      011B010101050000000000000000000000005B5B5BC9FDFDFDFF36A73EFF43C8
      8FFF52CF9CFF57CA90FF67C27DFF8AD19BFFF6FBF8FFFFFFFFFFF5F9F2FF71B1
      4EFF59BA70FF8AD3A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF78B04CFF59BB
      73FF80CD96FFF6FBF8FFFFFFFFFFF4F8F0FF71B04DFF61BC6EFF56CA8FFF52CF
      9CFF45C78BFF36A53AFFFDFDFDFF575757C9FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEBC6A3FFEFEFEFFFEFEFEFFFEFEFEFFFF0EFEFFFEFEFEFFFEFEFEFFFE9E9
      EAFFC9CED6FFC8C3C1FF958C7EFF586E81FF5B81A8FF5781A7FF7C97B6FFCBD3
      DBFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFE6E4E6FFC2A1
      9FFFB7A9ACFFFDFDFDFFFFFFFFFFFFFFFFFF000000000000000001010107E39A
      5FFFE9E6E9FFECEBECFFEEEEEEFFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFECEC
      ECFF7272E1FF8181E5FF9090E8FFA1A1EBFFB1B1EEFFDDDDDDFFE5E5E5FFECEC
      ECFFEFEFEFFFF0F0F0FFEFEFEFFFEDEDEDFFE5E4E5FFB2B0E8FFA19DE2FF8D88
      DBFF7E77D3FF6D64CCFF03020382000000000000000000000000000000000101
      01045C5CDDFF5C5CDDFF5C5CDDFF5C5CDDFF0101013401010118010101070101
      010501010105010101040101010F01010129C37D66FFC37E67FFC47F68FFC480
      69FFC48069FFC48069FFC48069FFC37F68FFC27E68FFC27E67FF0101014F0101
      0123010101070000000000000000000000002E2E2EA8FEFEFEFF4FAC47FF3DC4
      85FF53CC96FF5DBF72FF62C076FF66C27BFF88D199FFEFF8F0FF74B251FF62BD
      72FF5CBE79FF86D09CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF78B04CFF59BB
      6FFF64C27EFF8DD39FFFEEF8F0FF71B14DFF60BC6CFF61BF74FF5DBE70FF53CC
      96FF3FC281FF4FAB44FFFCFCFCFF2B2C2BA8FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEBC7A4FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFD0C9C3FF736C62FFD9D8D9FFE8E9EAFFEFEFEFFFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFE7E5E7FFC2A2
      A1FFB7A9ADFFFDFDFDFFFFFFFFFFFFFFFFFF000000000000000001010107E39C
      61FFE9E6E9FFECEBECFFEEEEEEFFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFEEEE
      EEFF7676E2FF8888E6FF9999EAFFADADEDFFE1E1E1FFE7E7E7FFECECECFFEFEF
      EFFFF0F0F0FFEFEFEFFFEFEFEFFFEDEDEDFFE7E6E7FFE2DFE2FFA8A4E3FF938D
      DAFF817BD2FF6F66CBFF0101010F000000000000000000000000000000000101
      01025C5CDDFF5C5CDDFF5C5CDDFF5C5CDDFF0101011C01010110010101070101
      0102000000000101010401010119C27B64FFC27C65FFC37D66FFC37E67FFC47F
      68FFC48069FFC48069FFC47F68FFC37E68FFC27E67FFC27D66FF010101520101
      0125010101070000000000000000000000000D0D0D78FCFCFCFF7DBF70FF37B9
      6BFF5ABF76FF5EB966FF5EBD6DFF60BF73FF64C178FF6CC480FF6AC27CFF6EC5
      81FF70C683FF96D6A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF78B04CFF6CC2
      7BFF6DC581FF6AC37FFF6BC47FFF62BF73FF5FBE72FF5EBC6BFF5EB964FF5ABE
      74FF38B766FF7DBE6CFFF8F8F8FF0C0C0C78FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEBC7A5FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFEEEDECFFA5A098FF918D87FFF0F0F0FFEFEFEFFFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFE7E5E7FFC2A2
      A0FFB9ABAEFFFDFDFDFFFFFFFFFFFFFFFFFF000000000000000001010107E39C
      63FFE9E6E9FFECEBECFFEEEEEEFFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFEFEF
      EFFFEEEEEEFFECECECFFEBEBEBFFEBEBEBFFECECECFFEEEEEEFFEFEFEFFFF0F0
      F0FFF0F0F0FFEFEFEFFFEEEEEEFFEDECEDFFE7E5E7FFE3DFE3FFE0985FFF0201
      024B010101250101010D01010105000000000000000000000000000000000000
      00000101010201010105010101070101010B010101130101011B010101180101
      010B0101010201010104C07A62FFC17A63FFC27B64FFC27C65FFC37E67FFC480
      68FFC5816AFFC5816AFFC48069FFC37F68FFC27D67FFC27D66FF010101540101
      01280101010900000000000000000000000002020236F7F7F7FFB5DAA8FF34A4
      32FF5AB04FFF5FB55CFF5EB863FF5EBB6AFF5EBD70FF61BF74FF63C178FF66C2
      7BFF68C37DFF92D4A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF78B04CFF64BE
      73FF65C17AFF63C077FF60BF73FF5EBD6EFF5EBB68FF5EB862FF5FB45AFF5BAF
      4CFF35A32CFFB5DAA6FFEEEEEEFF02020236FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFECC8A7FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFE7E4E1FF807C75FFC2BFBBFFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFE7E5E7FFC2A0
      9FFFB7A9ACFFFDFDFDFFFFFFFFFFFFFFFFFF000000000000000001010107E39E
      67FFEAE7EAFFEDECEDFFEFEFEFFFF0F0F0FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF0F0F0FFF0F0F0FFEEEEEEFFECEBECFFE6E3E6FFE2DEE2FFDE9A67FF0201
      0248010101200101010700000000000000000000000000000000000000000000
      000000000000000000000101010401010111010101290101013B010101330101
      01180101010701010107C07961FFC17962FFC17A63FFC27C64FFC37E67FFC480
      6AFFC5816CFFC6816DFFC5816CFFC48069FFC37E67FFC27C65FF0101015C0101
      01350101011301010104010101010000000001010101888888DEF5FAF4FF449E
      16FF4BA329FF5FB150FF5FB458FF5EB65FFF5EB965FF5EBB6AFF5EBD6EFF5FBE
      72FF60BF74FF8DD29BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF78B04CFF5EBC
      6BFF5FBE71FF5EBD6DFF5EBB69FF5EB964FF5FB65EFF5FB356FF5FB04DFF4BA3
      25FF449D15FFF5F9F4FF808080DE01010101FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFECCAA9FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFCAC8C5FF7D7A75FFE1E1E0FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0F0F0FFE8E6E8FFC3A2
      A0FFB7A9ACFFFDFDFDFFFFFFFFFFFFFFFFFF000000000000000001010107E3A0
      6AFFEAE7EAFFEDECEDFFEFEFEFFFF0F0F0FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF0F0F0FFEFEFEFFFEEEDEEFFEBE9EBFFE5E1E5FFDFDADFFFDB9666FF0201
      02450101011E0101010700000000000000000000000000000000000000000000
      000000000000010101020101010E010101295C5CDDFF5C5CDDFF0101013B0101
      011B01010110010101170101011BC07961FFC17B64FFC37E67FFC5816CFFC784
      71FFC88775FFC98877FFC88775FFC78371FFC5816CFFC37F68FF010101690101
      014E0101012B010101110101010401010101000000000D0D0D78FBFBFBFF97C9
      81FF3A9706FF5BAA36FF60AF4AFF5FB253FF5FB459FF5EB65FFF5EB863FF5EBA
      67FF5EBB6AFF8ACF93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF78B04CFF5BB8
      61FF5EBA66FF5EB862FF5FB65EFF5FB357FF5FB151FF60AF47FF5BAA33FF3A96
      05FF98C981FFF5F5F6FF0C0C0C7800000000FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFECCCABFFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0EFEFFFB2AEA5FF908D87FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFE9E7E9FFC4A3
      A2FFB7A9ADFFFDFDFDFFFFFFFFFFFFFFFFFF000000000000000001010107E4A3
      6FFFEBE8EBFFEEEDEEFFF0F0F0FFF1F1F1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF0F0F0FFEFEFEFFFEDECEDFFEAE7EAFFE3DFE3FFDDD6DDFFD8986EFF0101
      013A010101180101010500000000000000000000000000000000000000000000
      00000000000001010104010101195C5CDDFF5C5CDDFF5C5CDDFF010101290101
      01130101011C01010134010101340101011EC27E67FFC5816CFFC88674FFCA8C
      7BFFCD9181FFCD9281FFCC9080FFCA8C7BFFC78573FFC5816DFFC37D65FF0101
      01660101014C0101012B0101011201010106000000000101010EABABABEBF4F9
      F3FF4E9E22FF449A11FF5FAB36FF60AD3FFF60B04AFF5FB151FF5FB356FF5FB4
      5AFF5FB65DFF8ACB8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF78B04CFF5CB3
      55FF5FB459FF5FB355FF5FB150FF60AF48FF60AD3DFF5FAB35FF449A11FF4E9D
      21FFF4F9F3FFA2A2A2EB0101010E00000000FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEDCDAEFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFE9E9E8FFD7D6D3FFF2F2
      F2FFF2F2F2FFF2EDE8FFF2E4D7FFF2E2D4FFF1E1D2FFF1E1D1FFE9D8CAFFC49C
      94FFBCAFB2FFFDFDFDFFFFFFFFFFFFFFFFFF000000000000000001010107E4A5
      73FFEBE9EBFFEFEEEFFFF1F1F1FFF2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF1F1
      F1FFF0B37BFFEDAD74FFEBAB73FFE7A772FFE1A170FFDB9B6EFFD5956DFF0101
      01240101010D0101010200000000000000000000000000000000000000000000
      000000000000010101045C5CDDFF5C5CDDFF5C5CDDFF01010129010101110101
      010B5C5CDDFF5C5CDDFF01010146010101230101010BC88774FFCB8F7EFFCE95
      82FFD19B8AFFD29D8CFFD19B8AFFD09886FFCD9181FFCA8A79FFC6826FFFC47F
      68FF010101660101014C0101012C01010115000000000000000006070663F8F8
      F8FFCCE3C2FF3A9006FF4B9C1AFF60A934FF60AB36FF60AD3CFF60AE44FF60B0
      4BFF5FB14FFF8BC781FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF78B04CFF5DAE
      48FF60AF49FF60AE42FF60AC3AFF60AB35FF60A934FF4B9B1AFF3A9006FFCCE3
      C2FFF0F0F1FF060606630000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEDCFB1FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3DECAFFF5D3B5FFF5D5B9FFF5D4B7FFF5D4B7FFEEC9ACFFC497
      84FFE3DFE1FFFEFEFEFFFFFFFFFFFFFFFFFF000000000000000001010107E5A9
      79FFECEAECFFF0EFF0FFF2F2F2FFF3F3F3FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F3F3FFF3F3F3FFF2F2
      F2FFF0B47FFFF1D9CAFFEED5C7FFEAD0C3FFE3C8BEFFDAA381FF010101260101
      010F010101040000000000000000000000000000000000000000000000000000
      000000000000010101025C5CDDFF5C5CDDFF010101190101010E010101040101
      01075C5CDDFF5C5CDDFF01010146010101230101010701010104CF9785FFD19C
      8BFFD4A291FFD5A495FFD5A494FFD4A393FFD29C8BFFCE9482FFC98977FFC681
      6EFFC27B63FF0101016401010147010101270000000000000000000000003535
      35B0FBFBFBFFACD29BFF398E03FF4B991AFF60A734FF60A935FF60AA35FF60AB
      36FF60AC38FF81BF67FFDAECD0FFDAECD0FFDAECD0FFDAECD0FF72AF46FF5EAA
      34FF60AB35FF60AA35FF60A835FF60A634FF4B991AFF398D03FFACD19BFFF7F7
      F8FF313331B0000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEED1B4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4DFCBFFF6DBC5FFF7E0CEFFF7E0CEFFF5DBC6FFDBB599FFE1DC
      DDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000001010107E6AB
      7EFFEDEAEDFFF0EFF0FFF2F2F2FFF3F3F3FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F2
      F3FFEEB381FFEFD6C7FFEAD1C4FFE5CAC0FFDCA581FF010101260101010F0101
      0104000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001010102010101050101010501010102000000000101
      01055C5CDDFF5C5CDDFF010101340101011A0101010500000000010101020101
      0105010101070101010701010109DAAFA1FFD7A99AFFD5A393FFD09886FFCB8C
      7BFFC5816CFFC27B63FF01010155010101320000000000000000000000000101
      010F696969D1FCFCFCFFACD19BFF3A8D06FF449311FF5CA22FFF61A635FF61A6
      35FF60A835FF60A835FF60A935FF60A935FF60A935FF60A935FF60A835FF60A7
      35FF61A635FF61A535FF5CA22FFF449311FF3A8C06FFACD19BFFF9F9F9FF6363
      63D10101010F000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFEFD3B8FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5E0CBFFF6DBC5FFF7E0CEFFF5DBC6FFDCB69AFFE1DCDCFFFDFD
      FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000001010107E5AD
      81FFEFECEFFFF2F1F2FFF4F4F4FFF5F5F5FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF5F5F5FFF4F4F4FFF4F3F4FFF1F0
      F1FFECB584FFEBD1C5FFE6CBC1FFDEA681FF010101260101010F010101040000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01025C5CDDFF5C5CDDFF010101170101010B0101010200000000000000000000
      000000000000000000000000000001010104DCB3A5FFDBB1A3FFD6A596FFD097
      85FFC98876FFC37F68FF01010152010101320000000000000000000000000000
      000001010118686868D1FBFBFBFFCBE2C1FF4E9721FF3B8B05FF4C961BFF5CA1
      2FFF61A435FF61A435FF61A435FF61A535FF61A435FF61A435FF61A435FF61A4
      35FF5CA02FFF4C961BFF3B8B05FF4E9621FFCBE2C1FFF7F7F8FF636363D10101
      011800000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFF0D5BBFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF5E1CEFFF6DBC5FFF5DBC6FFDCB69AFFE1DCDCFFFDFDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000001010107E5B0
      86FFEEEBEEFFF2F0F2FFF4F3F4FFF5F4F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F4F5FFF4F3F4FFF2F1F2FFF0EE
      F0FFE9B387FFE7CCC1FFDEA781FF010101260101010F01010104000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000010101020101010501010105010101020000000000000000000000000000
      00000000000000000000000000000000000001010104E2C0B6FFDCB2A4FFD4A1
      91FFCD9181FFC6816EFF0101013D010101250000000000000000000000000000
      0000000000000101010F343534B0F6F6F6FFF4F9F4FF98C481FF459015FF3988
      03FF428E0FFF4C941BFF529823FF559A27FF559A27FF529823FF4C941BFF428E
      0FFF398803FF459015FF98C381FFF4F8F3FFF0F0F1FF313331B00101010F0000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FFF1D7BEFFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF6E3D0FFF4D7BEFFDCB69AFFE1DCDCFFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000001010105E5B1
      89FFEEEAEEFFF1EEF1FFF3F1F3FFF3F2F3FFF4F3F4FFF4F3F4FFF4F3F4FFF4F3
      F4FFF4F3F4FFF4F3F4FFF4F3F4FFF4F3F4FFF3F2F3FFF3F1F3FFF1EEF1FFEEEA
      EEFFE6B289FFDFA881FF010101240101010F0101010400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010104DFBAAEFFD7A8
      99FFD09785FFC78472FF0101011B010101100000000000000000000000000000
      000000000000000000000000000006060663A7A7A8EBF8F8F9FFF5F9F5FFB5D4
      A6FF7EB15EFF519726FF3A8706FF398603FF398603FF3A8706FF519626FF7EB1
      5EFFB5D4A6FFF5F9F4FFF5F5F6FFA2A2A2EB0606066300000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF8F8
      F8FFF2D4B7FFF8EBE0FFF8ECE0FFF8ECE0FFF8ECE0FFF8ECE0FFF8ECE0FFF8EC
      E0FFF8ECE0FFF8ECE0FFF8ECE0FFF8ECE0FFF8ECE0FFF8ECE0FFF8ECE0FFF8EC
      E0FFF8ECE0FFF5DAC1FFDDB697FFE1DDDCFFFDFDFDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000001010102E3AF
      8AFFE8B78FFFEBBA91FFEDBC92FFEDBD92FFEDBD92FFEDBD92FFEDBD92FFEDBD
      92FFEDBD92FFEDBD92FFEDBD92FFEDBD92FFEDBC92FFEBBA91FFE9B890FFE6B4
      8EFFE1AE8AFF010101180101010C010101040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101020101
      0105010101070101010701010106010101040000000000000000000000000000
      0000000000000000000000000000000000000101010E0C0C0C78848484DEF1F1
      F1FFF9F9F9FFFDFDFDFFFDFDFDFFEEF6EDFFEEF6EDFFFDFDFDFFFCFCFCFFF8F8
      F8FFEEEEEEFF808080DE0C0C0C780101010E0000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFDFD
      FDFFF4E9DEFFEEE2D7FFEEE2D7FFEEE2D7FFEEE2D7FFEEE2D7FFEEE2D7FFEEE2
      D7FFEEE2D7FFEEE2D7FFEEE2D7FFEEE2D7FFEEE2D7FFEEE2D7FFEEE2D7FFEEE2
      D7FFEEE2D6FFEDE0D5FFEEEBEAFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000101
      0102010101050101010601010107010101070101010701010107010101070101
      0107010101070101010701010107010101070101010701010107010101070101
      0107010101060101010501010102000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101010202
      02360C0C0C782B2B2BA7585959CA747474D8747474D8585858CA292A29A70C0C
      0C78020202360101010100000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000101
      010501010118010101370101014A0101014F0101014F0101014F0101014F0101
      014F0101014F0101014F0101014F0101014F0101014F0101014F0101014F0101
      014F0101014F0101014F0101014F0101014F0101014F0101014F0101014F0101
      014A010101370101011801010105000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010101030101010D0101
      011A0101011E0101011401010108010101020000000000000000000000000000
      00000000000000000000000000000000000000000000010101030101010E0101
      01200101012B0101012E0101012E0101012E0101012E0101012E0101012E0101
      012E0101012E0101012E0101012E0101012E0101012E0101012E0101012E0101
      012E0101012E0101012E0101012E0101012E0101012E0101012E0101012E0101
      012B010101200101010E01010103000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0108010101290101015B0101017B020202840202028402020284020202840202
      0284020202840202028402020284020202840202028402020284020202840202
      0284020202840202028402020284020202840202028402020284020202840101
      017B0101015B0101012901010109000000000101010501010118010101370201
      024A0201024F0201024F0201024F0201024F0201024F0201024F0201024F0201
      024F0201024F0201024F0201024F0201024F0201025102010257020102680201
      027B03020380020102730201025F020102530201024A01010137010101180101
      0105000000000000000000000000000000000000000001010105010101180101
      0135010202480102024D0102024D0102024D0102024D0102024D0102024D0102
      024D0102024D0102024D0102024D0102024D0102024D0102024D0102024D0102
      024D0102024D0102024D0102024D0102024D0102024D0102024D0102024D0102
      0248010101350101011801010105000000000000000000000000000000000101
      0101010101040101010601010108010101080101010601010104010101010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      010AF1A967FFF1A967FFF1AB6AFFF1AB6AFFF1AC6CFFF1AC6CFFF2AE6FFFF2AE
      6FFFF2AE6FFFF2AE6FFFF2AE70FFF2AE70FFF2AE70FFF2AE70FFF2AE70FFF2AE
      70FFF2AE6FFFF2AE6FFFF1AC6CFFF1AC6CFFF1AB6AFFF1AB6AFFF1A967FFF1A9
      67FF01010173010101340101010B0000000001010108010101290201025B0201
      027B030203840302038403020384030203840302038403020384030203840302
      0384030203840302038403020384030203840302038703020391160EE5FF160E
      E5FF090441D7040204AB030203980302038A0201027C0201025B010101290101
      01090000000000000000000000000000000000000000010101071D86B7FF1D87
      B8FF1D87B8FF1E87B8FF1E87B8FF1E87B8FF1E87B8FF1E87B8FF1E87B8FF1E87
      B8FF1E87B8FF1E87B8FF1E87B8FF1E87B8FF1E87B8FF1E87B8FF1E87B8FF1E87
      B8FF1E87B8FF1E87B8FF1D87B8FF1D86B7FF1D85B6FF1B82B4FF1A81B1FF197E
      AEFF010202430101011E01010107000000000000000000000000000000000101
      01030101010C010101140101011C0101011D010101160101010E010101060101
      0101000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      010BF1A967FFEFEFEFFFEFEFEFFFEEEEEEFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFEFEFEFFFEFEFEFFFF1A9
      67FF0101017B010101370101010C000000000101010ADA9361FFDB9462FFDB96
      65FFDC9665FFDC9767FFDC9767FFDD9A69FFDD9A69FFDD9A69FFDD9A69FFDD9A
      6AFFDD9A6AFFDD9A6AFFDE9A6BFFDD996AFFD49466FF6F4C9AFF150EECFF150E
      EBFF150EEAFF855B49FFA6724FFFBF8158FFCB855EFF02010273010101340101
      010B0000000000000000000000000000000000000000010101072190BFFF5AC0
      DDFF5AC0DDFF5CC1DEFF5EC1DEFF61C2DEFF62C2DEFF64C2DEFF65C2DEFF66C3
      DEFF68C3DEFF6BC3DEFF6CC3DEFF6EC3DEFF6FC3DEFF70C4DEFF71C4DEFF72C4
      DEFF74C4DEFF74C3DDFF73C3DDFF72C1DCFF6EBDD9FF68B6D4FF61ADCEFF1A81
      B1FF010202480101012001010107000000000000000000000000000000000101
      010601010114020202A5020202B3020202B6020202AE0101011E010101100101
      0106010101010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      010BF1A864FFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFF1A8
      64FF0101017B010101370101010C000000000101010BE19A62FFDDD7DDFFDDD8
      DDFFDDD8DDFFDDD8DDFFDDD8DDFFDDD8DDFFDDD8DDFFDDD8DDFFDDD8DDFFDED9
      DEFFDED9DEFFDED9DEFFDFDADFFFDBD6DBFFA8A3D1FF120EF2FF130FF2FF130F
      F1FF140EF0FF554FB3FF958E95FFB0A7B0FFC6835BFF0201027D010101370101
      010C000000000000000000000000000000000000000001010107259BC7FF65D1
      E9FF65D1EAFF67D1EAFF69D1EAFF6BD2EAFF6ED2EAFF6ED2EAFF70D2EAFF72D3
      EAFF74D3EAFF76D3EAFF79D4EAFF79D4EAFF7BD4EAFF7DD4EAFF7ED5EAFF7FD5
      EAFF80D5EAFF80D4E9FF81D3E9FF7ED1E7FF7ACBE3FF71C1DCFF67B6D4FF1B81
      B3FF010202480101012001010107000000000000000000000000000000000101
      0108C88674FFC88674FFC88674FFC88673FF030303C4020202B6010101200101
      0110010101060101010100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      010BF1A864FFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFF1A8
      64FF0101017B010101370101010C000000000101010BE79E63FFE2DFE2FFE3DF
      E3FFE3DFE3FFE3DFE3FFE3DFE3FFE3DFE3FFE3DFE3FFE3DFE3FFE3DFE3FFE3DF
      E3FFE3DFE3FFE3E0E3FFE2DFE2FFDBD9DBFF7270DAFF110EF7FF110EF6FF3734
      D8FF110EF4FF110DF2FF817C9AFFA29AA2FFBF8155FF0201027F010101380101
      010C00000000000000000000000000000000000000000101010728A4CEFF6BDD
      F3FF6BDDF3FF6DDEF4FF6FDFF4FF72DFF4FF75E0F4FF76E0F4FF78E0F4FF79E0
      F4FF7CE1F4FF7EE1F4FF80E1F4FF81E1F4FF81E2F4FF82E2F4FF83E2F4FF84E2
      F4FF86E2F4FF86E1F3FF85E0F2FF82DCF0FF80D5EBFF76CAE2FF6ABBD8FF1C83
      B5FF010202480101012001010107000000000000000000000000000000000101
      0108C88674FFC88674FFC88673FFC78573FFC78572FF030303C8020202B80101
      0122010101140101010C01010109010101080101010601010103010101010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      010BF0A661FFEEEEEEFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEFEFEFFFEFEFEFFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEEEEEEFFF0A6
      61FF0101017B010101370101010C000000000101010BEBA161FFE6E4E6FFE7E5
      E7FFE7E5E7FFE7E5E7FFE7E5E7FFE7E5E7FFE7E5E7FFE7E5E7FFE7E5E7FFE7E5
      E7FFE7E5E7FFE7E5E7FFE5E3E5FFD9D7D9FF3E3CE5FF0F0DFAFF100EFAFF8887
      BAFF0F0DF8FF0F0CF5FF4E49C1FF958F95FFB2784FFF030203840101013A0101
      010C0000000000000000000000000000000000000000010101072AA9D2FF6EE6
      FAFF6EE6FAFF6FE6FAFF72E6FAFF75E7FAFF77E7FAFF78E7FAFF7AE7FAFF7CE8
      FAFF7EE8FAFF80E8FAFF81E9FAFF81E9FAFF83E9FAFF84E9FAFF86E9FAFF87EA
      FAFF88EAFAFF88E9F9FF88E8F8FF85E4F5FF81DCF0FF77CFE6FF6ABEDAFF1C84
      B6FF010202480101012001010107000000000000000000000000000000000101
      0106C78673FFC78573FFC78572FFC78572FFC78471FFC78370FF030303C80202
      02BA0101012A010101220101011F0101011D010101160101010E010101060101
      0101000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      010BF0A661FFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEFEFEFFFEFEFEFFFEFEF
      EFFFEEEEEEFFEEEEEEFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEEEEEEFFF0A6
      61FF0101017B010101370101010C000000000101010BEDA360FFE9E8E9FFE9E8
      E9FFE9E8E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
      E9FFE9E9E9FFE9E9E9FFE4E3E4FF9898DBFF0C0BFCFF0D0CFCFF5C5BC7FFBFBE
      BFFF6A68E3FF0E0BF7FF0E0AF3FF7771A0FFA16C47FF0302038C0101013E0101
      010D0000000000000000000000000000000000000000010101072BABD4FF6AE8
      FCFF6AE8FCFF6CE8FCFF6EE9FCFF71E9FCFF73E9FCFF75E9FCFF76EAFCFF78EA
      FCFF7AEAFCFF7CEAFCFF7FEBFCFF80EBFCFF81EBFCFF81EBFCFF82ECFCFF83EC
      FCFF84ECFCFF84ECFCFF84EAFBFF82E7F8FF7EDFF2FF73D0E8FF66C0DCFF1D85
      B6FF010202480101012001010107000000000000000000000000000000000101
      0103C78572FFC78572FFC78471FFC78471FFC68370FFC6826FFFC5816EFF0303
      03CA030303C2020202BB020202B9020202B6020202AE0101011E010101100101
      0106010101010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      010BF0A35CFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEFEFEFFFEFEFEFFFEFEF
      EFFFEEEEEEFFEEEEEEFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEEEEEEFFF0A3
      5CFF0101017B010101370101010C000000000101010BEEA35FFFEAEAEAFFEAEA
      EAFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEAEAEAFFE1E1E1FF6060E3FF0A09FEFF0B0AFEFF8F8EBCFFCFCF
      CFFFC2C1E0FF0C0AF9FF0D09F4FF433DC7FF936442FF03020395020102460101
      010F0000000000000000000000000000000000000000010101072BACD5FF67E9
      FDFF67E9FDFF68EAFDFF6AEAFDFF6DEAFDFF6FEAFDFF70EBFDFF72EBFDFF73EB
      FDFF76EBFDFF78EBFDFF7AECFDFF7BECFDFF7DECFDFF7EECFDFF80EDFDFF81ED
      FDFF81EDFDFF81ECFDFF81EBFCFF7FE7F9FF79DEF3FF6FD1E9FF62C0DCFF1D85
      B6FF010202480101012001010107000000000000000000000000000000000101
      010101010106C78471FFC78471FFC68370FFC6826EFFC5816DFFC5816CFFC481
      6AFFC37E68FFC27E67FFC27D66FFC27E67FF030303C4020202B6010101200101
      0110010101060101010100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      010BF0A35CFFEDEDEDFFEDEDEDFFEDEDEDFFECECECFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFECECECFFEBEBEBFFEDEDEDFFEEEEEEFFF0A3
      5CFF0101017B010101370101010C000000000101010BEFA35CFFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFCCCCE3FF0909FEFF1111FEFF4C4CE0FFC4C4C4FFDCDC
      DCFFE6E5E6FF8180E7FF110EF5FF0D08EEFF6C446CFF040204A0020102520101
      01160101010100000000000000000000000000000000010101072CADD6FF60E9
      FEFF60E9FEFF62EAFEFF64EAFEFF66EAFEFF68EAFEFF69EAFEFF6BEBFEFF6CEB
      FEFF6EEBFEFF70EBFEFF72ECFEFF73ECFEFF75ECFEFF76ECFEFF77EDFEFF78ED
      FEFF7AEDFEFF7AECFDFF79EAFCFF76E6F9FF71DEF3FF67D0E9FF5BBFDCFF1D85
      B6FF010202480101012001010107000000000000000000000000000000000000
      00000101010101010106C68370FFC6826FFFC5816DFFC5816CFFC4816AFFC480
      69FFC37E67FFC27D66FFC27C65FFC27C65FFC27D66FF030303C8020202B80101
      0120010101100101010601010101000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      010BF0A157FFEEEEEEFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFF0F0F0FFF0F0
      F0FFF0A35CFFF0A35CFFF0F0F0FFF0F0F0FFEAEAEAFFEDEDEDFFEEEEEEFFF0A1
      57FF0101017B010101370101010C000000000101010BF0A35BFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEAEAEAFF9595EDFF1E1EFEFF1E1EFEFF8787E0FFDCDCDCFFE5E5
      E5FFE8E8E8FFDAD8E4FF1F1CF5FF1F1BEFFF3F29B0FF040204A8020102630101
      01210101010500000000000000000000000000000000010101072CADD6FF59E8
      FEFF5AE9FEFF5BE9FEFF5DE9FEFF5FE9FEFF60E9FEFF61E9FEFF62EAFEFF64EA
      FEFF64EAFEFF65EAFEFF6BEBFEFF6CEBFEFF6DEBFEFF6EEBFEFF70ECFEFF70EC
      FEFF72ECFEFF71EBFDFF71E9FCFF6FE5F9FF69DDF3FF60CFE9FF55BEDCFF1D85
      B6FF010202480101012001010107000000000000000000000000000000000000
      0000000000000101010101010106C6826FFFC5816DFFC5816CFFC4816AFFC37F
      68FFC37D66FFC27C65FFC27B63FFC17B64FFC17B64FFC27C65FF030303C80202
      02B8010101200101011001010106010101010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      010AF0A157FFEEEEEEFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEEEEEEFFEEEEEEFFEEEEEEFFF0F0F0FFF0F0F0FFF0A3
      5CFF0101011901010107F0A35CFFF0F0F0FFEAEAEAFFEEEEEEFFEEEEEEFFF0A1
      57FF01010173010101340101010B000000000101010BF0A259FFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEAEAEAFFE8E8E8FFE5E5E5FFE5E5E5FFEAEAEAFFEAEA
      EAFFEAEAEAFFE6E5E6FF8E8CE3FF2A26F1FF2B24E9FF07032CCA020102740101
      01340101010C01010102000000000000000000000000010101072CADD6FF5AE8
      FEFF5BE9FEFF5CE9FEFF5EE9FEFF60E9FEFF61E9FEFF62E9FEFF63EAFEFF64EA
      FEFF64EAFEFF65EAFEFF65EAFEFF66EAFEFF68EAFEFF69EBFEFF6AEBFEFF6AEB
      FEFF6BEBFEFF6BEAFDFF6AE8FCFF68E4F9FF63DCF3FF5BCEE9FF51BEDCFF1D85
      B6FF010202480101012001010107000000000000000000000000000000000000
      00000000000000000000010101010101010CC6836FFFC6816EFFC4816BFFC37F
      68FFC37D65FFC27B63FFC17A62FFC17961FFC17961FFC17A62FFC17B63FF0303
      03C8020202B80101012001010110010101060101010100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0108F0A157FFEFEFEFFFEEEEEEFFEEEEEEFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEEEEEEFFEEEEEEFFEEEEEEFFF0F0F0FFF0A35CFF0101
      011A0101010A0101010801010108F0A35CFFF0F0F0FFEEEEEEFFEFEFEFFFF0A1
      57FF010101550101012601010108000000000101010BF0A158FFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFECECECFFEBEB
      EBFFEAEAEAFFE7E6E7FFE2DFE2FF5753E5FF352FECFF362DE4FF030204840201
      02470101011901010106000000000000000000000000010101072CADD6FF5DE9
      FEFF5EE9FEFF5FE9FEFF61E9FEFF63E9FEFF64EAFEFF65EAFEFF66EAFEFF66EA
      FEFF67EAFEFF67EAFEFF65EAFEFF66EAFEFF67EAFEFF68EAFEFF69EBFEFF69EB
      FEFF6AEBFEFF6AEAFDFF69E8FCFF67E4F9FF62DCF3FF59CEE9FF4FBEDCFF1D85
      B6FF010202480101012001010107000000000000000000000000000000000000
      000000000000000000000000000001010109CA8A78FFC98876FFC78572FFC682
      6FFFC5816BFFC48069FFC37D66FFC27B63FFC07860FFC07860FFC07860FFC17A
      62FF030303C8020202B801010120010101100101010601010101000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0103F0A157FFF0A157FFF0A35CFFF0A35CFFF0A35CFFF0F0F0FFF0F0F0FFEDED
      EDFFEDEDEDFFEDEDEDFFEEEEEEFFF0F0F0FFF0F0F0FFF0A35CFF0101011A0101
      010C01010116010101260101012701010119F0A35CFFF0A35CFFF0A157FFF0A1
      57FF0101012D0101011401010104000000000101010BF0A158FFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFECECECFFEBEB
      EBFFE9E9E9FFE8E7E8FFE3E1E3FF9F9BE0FF413BEEFF4139E7FF08052ABA0201
      02590101012C0101010E010101020000000000000000010101072CADD6FF64E9
      FDFF65E9FDFF66EAFDFF68EAFDFF69EAFDFF6AEAFDFF6BEAFDFF6CEBFDFF6CEB
      FDFF6CEBFDFF6CEBFDFF6AEAFDFF6BEBFEFF6CEBFEFF6DEBFEFF6EEBFEFF6EEB
      FEFF6FEBFEFF6EEAFDFF6DE8FBFF6BE4F8FF66DCF2FF5DCEE9FF52BEDCFF1D85
      B6FF010202480101012001010107000000000000000000000000000000000000
      000000000000000000000000000001010108CF9683FFCD9381FFCC8F7EFFCA8B
      7AFFC98775FFC88572FFC6816DFFC37E67FFC17961FFC0775FFFBF765EFFC078
      60FFC17A62FF030303C8020202B8010101200101011001010106010101010000
      0000000000000000000000000000000000000000000000000000000000000101
      0101010101070101010F010101150101011601010113F0A35CFFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0A35CFF0101011A0101010C0101
      011A0101013E0101015F010101620101014C0101013C0101013A0101013E0101
      013D0101012D0101011401010104000000000101010BF0A259FFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFEBEB
      EBFFEBEBEBFFE8E8E8FFE6E4E6FFDFDCDFFF6A4BB2FF4B44E9FF4B41E2FF0201
      0576020102410101011C010101070101010100000000010101072CADD6FF6EEB
      FDFF6FEBFDFF70EBFDFF72EBFDFF73EBFDFF75ECFDFF75ECFDFF75ECFDFF75EC
      FDFF75ECFDFF75ECFDFF73EBFDFF74ECFDFF75ECFDFF76ECFEFF76ECFEFF77EC
      FEFF77ECFEFF76EBFDFF75E9FBFF72E5F8FF6DDDF2FF63CFE9FF58BEDCFF1D85
      B6FF010202480101012001010107000000000000000000000000000000000000
      000000000000000000000000000001010106D5A393FFD4A190FFD29E8DFFD19B
      8AFFD09785FFCF9582FFCC8E7DFFC88674FFC4806AFFC17B63FFC0775FFFC078
      60FFC17A62FFC27C64FF030303C8020202B80101012001010110010101060101
      0101000000000000000000000000000000000000000000000000000000000101
      0103010101110101012601010133010101340101012901010116F0A35CFFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0A35CFF0101011A0101010C0101011A0101
      0140F0A35CFFF0A35CFF02020297020202890101017E0101017B0101017B0101
      0174010101550101012601010108000000000101010BF0A35BFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFECECECFFECECECFFECECECFFEBEB
      EBFFEBEBEBFFE8E8E8FFE6E5E6FFE2DFE2FFB27977FF5750EAFF564DE4FF0C08
      30B90201024D0101012A0101010D0101010200000000010101072CADD6FF7EEC
      FDFF7FEDFDFF7FEDFDFF80EDFDFF81EDFDFF81EDFEFF81EDFEFF81EDFEFF81ED
      FDFF81EDFDFF81EDFDFF81EDFDFF81EDFDFF81EDFDFF81EEFDFF81EEFEFF81EE
      FEFF81EEFEFF81EDFDFF81EBFCFF80E7F9FF7ADFF3FF6FD1E9FF62C0DCFF1D85
      B6FF010202480101012001010107000000000000000000000000000000000000
      000000000000000000000000000001010103D9AD9FFFD9AC9EFFD8AB9DFFD8AA
      9BFFD7A798FFD6A595FFD29D8CFFCE9381FFC88775FFC4816AFFC17A63FFC17A
      62FFC17B63FFC27C64FFC27D65FF030303C8020202B801010120010101100101
      0106010101010000000000000000000000000000000000000000000000000101
      010801010126010101550101017401010177010101630101013E0101011AF0A3
      5CFFF0F0F0FFF0F0F0FFF0A35CFF010101160101010C0101011A01010140F0A3
      5CFFF0F0F0FFF0F0F0FFF0A35CFFF0A35CFFF0A35CFFF0A35CFFF0A35CFFF0A3
      5CFF01010173010101340101010B000000000101010BF0A45EFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEDEDEDFFEDEDEDFFECECECFFEBEB
      EBFFEAEAEAFFE9E9E9FFE7E6E7FFE3E0E3FFE19559FF0F0C42C96158E4FF5F54
      DDFF02020568010101280101010E0101010200000000010101072CADD6FF8BEF
      FDFF8CEFFDFF8CEFFDFF8CEFFEFF8CEFFEFF8DEFFEFF8DEFFEFF8DEFFEFF8DEF
      FEFF8DEFFEFF8EEFFEFF8CEFFDFF8CEFFDFF8DEFFDFF8DEFFDFF8EEFFEFF8EEF
      FEFF8EEFFEFF8DEEFDFF8CECFCFF88E8F9FF82E0F3FF79D2E9FF6BC1DCFF1D85
      B6FF010202480101012001010107000000000000000000000000000000000000
      00000000000000000000000000000101010101010106DEB7ABFFDEB7ABFFDEB8
      ACFFDEB7ABFFDDB5A9FFDAAEA0FFD5A494FFCF9684FFCA8B7AFFC6816EFFC480
      69FFC37D66FFC37D66FFC37D66FFC37E66FF030303C8020202B60101011E0101
      010E010101030000000000000000000000000000000000000000000000000101
      010AF0A763FFF0A763FFF0A35CFFF0A35CFF0202029501010171010101400101
      011AF0A35CFFF0A35CFF010101080101010A0101011A01010140F0A35CFFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0A3
      5CFF0101017B010101370101010C000000000101010BF0A660FFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFEEEEEEFFEDEDEDFFECECECFFEBEB
      EBFFEAEAEAFFE9E8E9FFE7E5E7FFE3E0E3FFE29A60FF0302078E6C62E3FF6A5E
      DCFF0F0C31B101010114010101070101010100000000010101072CADD6FF9BF1
      FEFF9BF1FEFF9CF1FEFF9CF1FEFF9CF1FEFF9CF1FEFF9CF1FEFF9CF1FEFF9DF1
      FEFF9DF1FEFF9DF1FEFF97EFFCFF97F0FCFF98F0FCFF98F0FDFF98F0FDFF98F0
      FDFF98F0FDFF97EFFDFF96EEFCFF93EAF9FF8BE1F3FF81D3E8FF73C1DCFF1D85
      B6FF010202430101011E01010107000000000000000000000000000000000000
      0000000000000000000000000000000000000101010101010106E0BDB2FFE1BE
      B3FFE1BFB4FFE1BEB3FFDEB9ACFFDBB1A3FFD5A494FFD09785FFCA8B79FFC784
      71FFC4806AFFC37F67FFC37D66FFC37D66FFC27C65FF030303C4020202AE0101
      0116010101060000000000000000000000000000000000000000000000000101
      010BF0A763FFF0F0F0FFF0F0F0FFF0F0F0FFF0A35CFF02020299010101720101
      01400101011901010107010101070101011901010140F0A35CFFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFEFEFEFFFEFEFEFFFEDEDEDFFEDEDEDFFF0F0F0FFF0A7
      63FF0101017B010101370101010C000000000101010BF0A662FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFEFEFEFFFEFEFEFFFEEEEEEFFEDEDEDFFEDEDEDFFECEC
      ECFFEBEBEBFFE9E8E9FFE7E5E7FFE3DFE3FFE09860FF0201027C0101013A0101
      01110101010601010104010101020000000000000000010101052BACD5FFA5F2
      FEFFA5F2FEFFA6F2FEFFA6F2FEFFA6F2FEFFA6F2FEFFA6F2FEFFA6F2FEFFA5F1
      FDFFA5F1FDFFA4F0FDFFA4F0FDFF9DEEFBFF9DEFFCFF9EEFFCFF9EEFFCFF9EEF
      FCFF9EEFFCFF9DEFFCFF9BEDFAFF97E8F7FF8FDFF1FF82D1E7FF75C0DAFF1C84
      B5FF010101320101011601010105000000000000000000000000000000000000
      000000000000000000000000000000000000000000000101010101010106E3C4
      BAFFE3C5BBFFE3C5BAFFE2C1B7FFE0BDB1FFDBB2A4FFD7A797FFD19987FFCC8F
      7FFFC88573FFC5816DFFC37E67FFC37D66FFC27C65FFC27C65FF020202B60101
      011D010101080000000000000000000000000000000000000000000000000101
      010BF0A763FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0A35CFF020202990101
      017201010141010101200101012001010141F0A35CFFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFEFEFEFFFEFEFEFFFEDEDEDFFEDEDEDFFF0F0F0FFF0A7
      63FF0101017B010101370101010C000000000101010BF0A864FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFEFEFEFFFEEEEEEFFECECECFFECEC
      ECFFEAEAEAFFE8E7E8FFE6E3E6FFE1DDE1FFDE965FFF0201027B010101370101
      010C0000000000000000000000000000000000000000010101022BACD5FFACF2
      FDFFADF2FDFFAEF3FEFFAEF3FEFFAEF3FEFFAFF3FEFFAEF2FDFFADF2FDFFABF0
      FCFFABF0FCFFA9EEFBFFA9EEFAFF2AA9D3FF2AA9D3FF2AA9D2FF2AA9D2FF2AA9
      D2FF2AA8D2FF2AA8D2FF29A7D1FF28A4CEFF269ECAFF2396C4FF1F8CBCFF0101
      0116010101160101010A01010102000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101010101
      0106E4C5BBFFE4C5BBFFE3C4B9FFE2C1B7FFDFBAAEFFDBB2A4FFD6A595FFD199
      88FFCB8C7BFFC88572FFC48069FFC37D66FFC27C64FFC27B64FF020202B90101
      011F010101090000000000000000000000000000000000000000000000000101
      010BF0AB6BFFF0F0F0FFF1F1F1FFF1F1F1FFF2F2F2FFF0F0F0FFF0A35CFF0202
      0299010101740101015301010153F0A35CFFF0F0F0FFF2F2F2FFF2F2F2FFF2F2
      F2FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0AB
      6BFF0101017B010101370101010C000000000101010BF0A866FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFEFEFEFFFECECECFFEBEB
      EBFFEAEAEAFFE8E6E8FFE4E1E4FFE0DBE0FFDC945FFF0201027B010101370101
      010C000000000000000000000000000000000000000000000000010101042BAB
      D4FFC0F4FDFFC1F5FDFFC2F6FEFFC2F6FEFFC2F5FDFFC1F4FDFFBEF3FCFFBCF1
      FAFFB9EEF8FFB6EBF6FF29A5CFFF010101280101011B0101011E010101240101
      012601010126010101240101011D010101100101010901010107010101070101
      0106010101050101010200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      010101010106E4C6BCFFE4C6BBFFE4C5BBFFE2C1B7FFE0BDB1FFDBB1A4FFD6A5
      95FFCF9583FFCA8A79FFC6816EFFC47F69FFC27C65FFC27B64FF020202BB0101
      01220101010C0101010100000000000000000000000000000000000000000101
      010BF0AB6BFFF0F0F0FFF1F1F1FFF1F1F1FFF2F2F2FFF2F2F2FFF0F0F0FFF0A3
      5CFF0202029D0202028CF0A35CFFF0F0F0FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0AB
      6BFF01010177010101340101010B000000000101010BF0AA6AFFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFECEC
      ECFFEBEAEBFFE8E6E8FFE5E1E5FFDED9DEFFDA9666FF0201027B010101370101
      010C000000000000000000000000000000000000000000000000000000000101
      01042BAAD4FFC7F4FCFFC9F6FDFFC9F6FDFFC8F5FDFFC6F3FBFFC2F0F9FFBDEB
      F6FFB7E6F2FF27A0CCFF01010126010101130101011A01010132010202430102
      0248010202460101013F0101012E010101140101010400000000000000000000
      0000010101020101010401010104010101030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000101010101010106E4C6BCFFE4C6BBFFE3C4B9FFE2C1B7FFDEB8ACFFD9AC
      9EFFD29B8AFFCC8E7EFFC78371FFC4816BFFC37D66FFC27C65FF030303C20101
      012A010101140101010601010101000000000000000000000000000000000101
      010BF1B175FFF0F0F0FFF3F3F3FFF3F3F3FFF4F4F4FFF4F4F4FFF4F4F4FFF0F0
      F0FFF0A35CFFF0A35CFFF0F0F0FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1B1
      75FF010101630101012901010108000000000101010BF0AD6DFFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0F0F0FFF0F0F0FFEEEEEEFFEDED
      EDFFEBEAEBFFE8E6E8FFE4E0E4FFDED8DEFFD89465FF02010277010101340101
      010B000000000000000000000000000000000000000000000000000000000000
      0000010101042AAAD3FFC6F3FBFFC6F3FBFFC4F1FAFFC1EFF8FFBAE9F4FFB3E2
      EFFF259CC8FF010101240101010F0101010A303BCFFF303BCEFF2F3BCDFF2E3B
      CBFF2C3CC9FF2B3CC6FF01010131010101150101010400000000000000000101
      01040101010C01010116010101160101010E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101010101010106E4C6BCFFE4C6BBFFE4C5BBFFE0BDB2FFDCB2
      A5FFD5A293FFCF9683FFC98978FFC78472FFC5816DFFC4816AFF030303CA0202
      02BA010101220101011001010106010101010000000000000000000000000101
      010BF1B175FFF3F3F3FFF4F4F4FFF4F4F4FFF5F5F5FFF5F5F5FFF5F5F5FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF5F5F5FFF5F5F5FFF5F5F5FFF4F4F4FFF4F4
      F4FFF3F3F3FFF2B176FFF2B176FFF2B176FFF1B175FFF1B175FFF1B175FFF1B1
      75FF0101013E0101011501010104000000000101010BF1B073FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
      F2FFF2F2F2FFF2F2F2FFF2F2F2FFF1F1F1FFF1F1F1FFF1F1F1FFEDEDEDFFECEC
      ECFFEAE9EAFFE7E4E7FFE2DEE2FFDCD5DCFFD7976DFF02010263010101290101
      0108000000000000000000000000000000000000000000000000000000000000
      0000000000000101010429A7D1FF29A7D1FF29A6D0FF28A3CEFF269ECAFF2499
      C6FF010101180101010C01010104010101072F3BCDFF2F3BCDFF2E3BCBFF2C3C
      C8FF293CC3FF273DC0FF01010127010101110101010701010105010101070101
      01110101012401010134010101300101011E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000101010101010106E4C6BCFFE4C6BBFFE1BEB3FFDDB5
      A8FFD7A798FFD29C8BFFCD9181FFCA8C7BFFC88674FFC6826FFFC4816AFF0303
      03C8020202B80101012001010111010101070000000000000000000000000101
      010BF2B780FFF3F3F3FFF4F4F4FFF5F5F5FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5
      F5FFF3F3F3FFF3B781FFF7E0CEFFF7E0CEFFF7E0CEFFF7E0CEFFF4BE89FF0101
      0140010101190101010601010101000000000101010BF1B277FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
      F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF1F1F1FFF0B37BFFEEAE
      74FFEBAB73FFE7A772FFE2A270FFDC9C6FFFD4946CFF0101013E010101150101
      0104000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001010102010101050101010601010107010101070101
      010601010105010101020000000001010107303BCFFF303BCFFF2E3BCCFF2B3C
      C7FF0102025301020246010101310101012101010119010101180101011F0101
      012D213DB5FF203EB3FF010101380101011F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000101010101010106E4C6BCFFE1C0B5FFDEB8
      ABFFD9AC9EFFD5A495FFD29D8CFFD19A88FFCD9381FFCB8D7CFFC88573FFC682
      6FFF030303C8020202B601010120010101100000000000000000000000000101
      010BF2B780FFF4F4F4FFF5F5F5FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF5F5
      F5FFF4F4F4FFF3B781FFF7E0CEFFF7E0CEFFF7E0CEFFF4BE89FF010101400101
      0119010101060101010100000000000000000101010BF2B67EFFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F3F3FFF2F2F2FFF0B47FFFF1D9
      CAFFEFD6C7FFEAD0C3FFE4C9BFFFDBA381FF0201024001010119010101060101
      0101000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010107323BD2FF323BD2FF303BCEFF2C3C
      C9FF293CC3FF0102024C0102024A010202420101013C0101013C01020242243D
      BAFF233DB8FF213DB5FF01010126010101120000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010101010106E1C0B5FFDEB9
      ADFFDAB0A3FFD8AB9DFFD6A798FFD6A697FFD3A08FFFD09886FFCB8D7BFFC886
      73FFC4816AFF030303C4020202B60101011A0000000000000000000000000101
      010BF4BD89FFF4F4F4FFF5F5F5FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF5F5
      F5FFF4F4F4FFF4BE89FFF7E0CEFFF7E0CEFFF4BE89FF01010140010101190101
      0106010101010000000000000000000000000101010BF3B881FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF4F4F4FFF4F4F4FFF3F3F3FFEEB481FFEFD7
      C8FFECD2C5FFE6CBC1FFDEA681FF020102400101011901010106010101010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010105323BD3FF323BD3FF010101312E3B
      CBFF2B3CC6FF283CC1FF273DBFFF080C22AC080C21AB283CC1FF283CC1FF273D
      BEFF243DBAFF0101012401010110010101050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010101010101030101
      010601010108010101090101010CDDB6AAFFDAB0A2FFD8A99AFFD19B8AFFCC90
      7FFFC78471FFC4816AFF020202BF010101220000000000000000000000000101
      010AF4BD89FFF4F4F4FFF5F5F5FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF5F5
      F5FFF4F4F4FFF4BE89FFF7E0CEFFF4BE89FF0101014001010119010101060101
      0101000000000000000000000000000000000101010BF3BC87FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF4F4F4FFF3F2F3FFEDB684FFECD3
      C6FFE7CDC2FFDFA881FF02010240010101190101010601010101000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010102313BD1FF323BD2FF010101150101
      010D2D3CC9FF2B3CC7FF2A3CC5FF2A3CC5FF2B3CC6FF2B3CC6FF2A3CC4FF273C
      C0FF0101011F0101010D01010104010101010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000101010101010106E0BCB1FFDEB7ABFFD8A99AFFD19A
      88FFCA8A78FFC5816CFF020202BB010101210000000000000000000000000101
      0108F5C596FFF3F3F3FFF4F4F4FFF4F4F4FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
      F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF4F4
      F4FFF3F3F3FFF5C596FFF4BE89FF0101013E0101011901010106010101010000
      0000000000000000000000000000000000000101010AF4BF8CFFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF7F7F7FFF6F6F6FFF5F4F5FFF2F1F2FFEBB688FFE9CF
      C3FFE0A981FF0201024001010119010101060101010100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010201010104010101040101
      010201010103050611882E3BCBFF2D3BCAFF2D3CCAFF2C3CC8FF060714910101
      0113010101090101010300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000101010101010106E6C9BFFFDEB6A9FFD5A4
      94FFCD9281FFC68370FF020202AC010101170000000000000000000000000101
      0103F5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FF01010129010101150101010601010101000000000000
      00000000000000000000000000000000000001010108F5C290FFF9F9F9FFF9F9
      F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
      F9FFF9F9F9FFF9F9F9FFF8F8F8FFF6F6F6FFF4F3F4FFF1EFF1FFE9B58AFFE3AC
      82FF0101013E0101011901010106010101010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101010101010103010101050101010601010106010101050101
      0103010101010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010101010106E1BEB3FFD8AA
      9BFFD09785FFC78472FF010101150101010E0000000000000000000000000101
      010101010104010101080101010B0101010C0101010C0101010C0101010C0101
      010C0101010C0101010C0101010C0101010C0101010C0101010C0101010C0101
      010C0101010C0101010B01010108010101040101010100000000000000000000
      00000000000000000000000000000000000001010103F5C393FFF5C596FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF4C495FFF3C395FFF2C194FFF0BF93FFECBB91FFE6B38CFF0101
      0129010101150101010601010101000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010101010101040101
      0106010101080101010801010106010101040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010101010104010101080101
      010B0101010C0101010C0101010C0101010C0101010C0101010C0101010C0101
      010C0101010C0101010C0101010C0101010C0101010C0101010C0101010B0101
      0108010101040101010100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004B3B2DC3806751DF806751DF8067
      51DF806751DF806751DF806751DF806751DF806751DF806751DF806751DF8067
      51DF806751DF806751DF806751DF806751DF806751DF806751DF806751DF816B
      59DF887B70DF928C86E1B3AFACECB0ACA9EB8F8882E086786DDF806A57DF8067
      51DF806751DF806751DF806751DF4B3B2EC34B3B2DC3806751DF806751DF8067
      51DF806751DF806751DF806751DF806751DF806751DF806751DF806751DF8067
      51DF806751DF806751DF806751DF806751DF806751DF806751DF806751DF8067
      51DF806751DF806751DF806751DF806751DF806751DF806751DF806751DF8067
      51DF806751DF806751DF806751DF4B3B2EC34B3B2DC3806751DF806751DF8067
      51DF806751DF806751DF806751DF806751DF806751DF806751DF806751DF8067
      51DF806751DF806751DF806751DF806751DF806751DF806751DF806751DF816B
      59DF887B70DF928C86E1B3AFACECB0ACA9EB8F8882E086786DDF806A57DF8067
      51DF806751DF806751DF806751DF4B3B2EC30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101010202
      02360D0D0D782D2D2DA75E5E5FCA7B7B7BD87B7B7BD85D5D5ECA2D2D2DA70D0D
      0D78020202360101010100000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F634BDFDDDEDEFFDDDEDEFFDDDE
      DEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDE
      DEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDEDFDFFFEEEEEEFFEAF6
      F0FFB2E6CCFF81D8AFFF65CF9CFF67CF9DFF85D9B1FFB8E8D0FFECF5F0FFE9EA
      EAFFDDDDDEFFDDDEDEFFDDDEDEFF7F664FDF7F634BDFDDDEDEFFDDDEDEFFDDDE
      DEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDE
      DEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDE
      DEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDE
      DEFFDDDEDEFFDDDEDEFFDDDEDEFF7F664FDF7F634BDFDDDEDEFFDDDEDEFFDDDE
      DEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDE
      DEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDEDFDFFFEEEEEEFFE1E7
      F9FF88A6EFFF5279E7FF325BE2FF345DE2FF567CE8FF91ADF0FFE5E9F7FFE9EA
      EAFFDDDDDEFFDDDEDEFFDDDEDEFF7F664FDF0000000000000000000000000000
      0000000000000000000000000000000000000101010E0D0D0D788A8B8BDEF9F9
      F9FFFDFDFDFFFEFEFEFFFDFDFDFFF1FAF5FFF1FAF5FFFDFDFDFFFEFEFEFFFCFC
      FCFFF7F7F7FF888888DE0D0D0D780101010E0000000000000000000000000000
      0000000000000000000000000000000000007E6349DFEAEAEAFFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFE7E8E8FFF4F6F5FFACE3C7FF4CC8
      8EFF2CC182FF27C082FF27C183FF27C183FF27C082FF2EC181FF53C990FFB6E6
      CCFFF1F1F1FFE6E6E7FFEAEAEAFF7F654DDF7E6349DFEAEAEAFFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFEAEAEAFF7F654DDF7E6349DFEAEAEAFFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
      EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFE7E8E8FFF3F4F7FF859DEEFF1F42
      DEFF1D33DBFF1D34DBFF1D36DCFF1D36DCFF1D34DBFF1D33DBFF2445DEFF94A8
      EFFFF1F1F1FFE6E6E7FFEAEAEAFF7F654DDF0000000000000000000000000000
      000000000000000000000000000007070763AEAEAEEBFCFCFCFFF7FBF9FFC8ED
      DBFFA0E1C3FF81D8AFFF6BD1A1FF67CF9EFF67CF9EFF6BD1A0FF81D8AEFFA0E1
      C2FFC8EDDBFFF7FBF9FFFBFBFBFFABABABEB0707076300000000000000000000
      0000000000000000000000000000000000007E6247DFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFF7F9F7FF88D6AAFF32C183FF27C1
      83FF27C183FF47CA95FF84D9B2FF84D9B2FF42BF7CFF27C183FF27C082FF36C1
      81FF95D9B1FFF4F5F5FFFCFCFCFF80654BDF7E6247DFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC0C2C4FFB6B9BCFFFBFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF80654BDF7E6247DFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFF6F6FAFF6178E7FF1D34DBFF1C37
      DCFF1C3DDCFF1B42DDFF1B44DDFF1B43DDFF1B41DDFF1C3CDCFF1D35DBFF1D33
      DBFF7384E9FFF4F4F5FFFCFCFCFF80654BDF0000000000000000000000000000
      0000000000000101010F373737B0FBFBFBFFF6FBF8FFB3E6CDFF76D3A5FF54C9
      92FF3BC385FF2ABF81FF27BF81FF27BF81FF27BF81FF27BF81FF2ABF80FF3BC3
      84FF54C990FF76D3A4FFB3E6CCFFF6FBF8FFF8F8F8FF353535B00101010F0000
      0000000000000000000000000000000000007E6245DFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FF9DDBB4FF30C081FF27C183FF27C1
      83FF27C183FF72D6ADFFFFFFFFFFFFFFFFFF66BE72FF27C183FF27C183FF27C1
      83FF34BF7FFFADDFBEFFF2F2F2FF806449DF7E6245DFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFD9DADDFF8295AAFFAACBF1FFAFCAF0FFF5F8FCFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF806449DF7E6245DFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FF818DEBFF1D32DBFF1C39DCFF5D76
      E3FF5B6BCAFF1A4BDCFF194FDFFF194EDFFF1A4BDEFF6982E6FF4E5CC7FF1D36
      DBFF1D30DBFF959FEEFFF2F2F2FF806449DF0000000000000000000000000000
      0000010101186C6C6CD1FDFDFDFFD7F1E4FF7DD4A7FF4DC78DFF2BC081FF27C0
      81FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C0
      82FF27C081FF2CBF80FF4DC68AFF7DD3A6FFD7F1E3FFFBFBFBFF696969D10101
      0118000000000000000000000000000000007E6142DFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFAFAFAFFDEF1E3FF3BBD7AFF27C183FF27C183FF27C1
      83FF27C183FF72D6ADFFFFFFFFFFFFFFFFFF66BE72FF27C183FF27C183FF27C1
      83FF27C082FF44BD77FFE6F0E9FF7E664CDF7E6142DFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB1CEEFFFB4D1EFFF81AEEDFF7FAAEBFFF6F8FCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF7F6347DF7E6142DFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFAFAFAFFD8D9F7FF1F30DBFF1C37DCFF5D76E4FFF8F8
      FDFFF7F7FBFF5A6EC9FF1757DEFF1758E0FF698CE7FFFBFCFDFFF1F2F9FF4E5C
      C7FF1D34DBFF2633DCFFE2E3F4FF7E664CDF0000000000000000000000000101
      010F6C6C6CD1FDFDFDFFBEE8D1FF63CB95FF33C181FF27C081FF27C183FF27C1
      83FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF27C183FF27C183FF27C081FF34C081FF62CA92FFBEE8CFFFFCFCFCFF6868
      69D10101010F0000000000000000000000007D6040DFFFFFFFFFF9F8F7FFEDEA
      E6FFEDEAE6FFEDEAE6FFEDEAE6FFEDEAE6FFEDEAE6FFEDEAE6FFEDEAE6FFEDEA
      E6FFF1EFECFFFFFFFFFFF7F7F7FF8FD4A2FF32C384FF27C183FF27C183FF27C1
      83FF27C183FF73D6AEFFFFFFFFFFFFFFFFFF66BE72FF27C183FF27C183FF27C1
      83FF27C183FF35C181FFA3DBB0FF817262DF7D6040DFFFFFFFFFF9F8F7FFEDEA
      E6FFEDEAE6FFEDEAE6FFEDEAE6FFEDEAE6FFEDEAE6FFEDEAE6FFEDEAE6FFEDEA
      E6FFF1EFECFFFFFFFFFFCCDDF2FF7BAAEBFF98C1EEFF80ADEEFF80AAEBFFF6F8
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF7E6345DF7D6040DFFFFFFFFFF9F8F7FFEDEA
      E6FFEDEAE6FFEDEAE6FFEDEAE6FFEDEAE6FFEDEAE6FFEDEAE6FFEDEAE6FFEDEA
      E6FFF1EFECFFFFFFFFFFF7F7F7FF7E81E8FF273ADDFF1C3DDCFF7C93ECFFFEFE
      FEFFFFFFFFFFF7F7FBFF5971C9FF6891E7FFFBFCFDFFFFFFFFFFFBFBFDFF6881
      E5FF1C3ADCFF2837DCFF9397EAFF817262DF0000000000000000000000003737
      37B0FDFDFDFFBCE6CDFF59C78AFF2BC081FF27C082FF27C183FF27C183FF27C1
      83FF27C183FF27C183FF27C183FF6AD4A9FF61C079FF27BF81FF27C183FF27C1
      83FF27C183FF27C183FF27C183FF27C082FF2CBE7FFF59C587FFBCE6CBFFFBFB
      FBFF343535B00000000000000000000000007D5F3DDFFFFFFFFFF1EFECFFD4CE
      C5FFD4CEC5FFD4CEC5FFD4CEC5FFD4CEC5FFD4CEC5FFD4CEC5FFD4CEC5FFD4CE
      C5FFDFDAD3FFFFFFFFFFF7F7F7FF59C27EFF4CCD98FF46CA94FF5ED0A2FF5ED0
      A2FF6DD3A8FFACE6CCFFFFFFFFFFFFFFFFFF96D198FF6AD3A6FF5ED0A2FF5ED0
      A2FF43C384FF4DCC96FF6FC785FF898178E07D5F3DDFFFFFFFFFF1EFECFFD4CE
      C5FFD4CEC5FFD4CEC5FFD4CEC5FFD4CEC5FFD4CEC5FFD4CEC5FFD4CEC5FFD4CE
      C5FFDFDAD3FFFFFFFFFFFFFFFFFFAAC6EDFF7AA9ECFF99C1EEFF7FACEEFF7FAA
      EAFFE7E9ECFFEEEEEEFFEEEEEEFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF7E6241DF7D5F3DDFFFFFFFFFF1EFECFFD4CE
      C5FFD4CEC5FFD4CEC5FFD4CEC5FFD4CEC5FFD4CEC5FFD4CEC5FFD4CEC5FFD4CE
      C5FFDFDAD3FFFFFFFFFFF7F7F7FF474FDDFF4558E2FF1E44DDFF1A4CDFFF7C9B
      EDFFFEFEFEFFFFFFFFFFF7F7FBFFFCFCFDFFFFFFFFFFFBFBFDFF6889E7FF1A4A
      DEFF1E41DDFF4555E2FF5F65E0FF898178E0000000000000000007070763FBFB
      FBFFD3EEDDFF59C383FF2BBF81FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF27C183FF27C183FF6AD4A9FFFAFDFCFFF4F9F1FF65B760FF27BF81FF27C1
      83FF27C183FF27C183FF27C183FF27C183FF27C082FF2CBE7EFF58C181FFD3EE
      DCFFF6F6F6FF0607066300000000000000007D5D3ADFFFFFFFFFF0EDEAFFD0C9
      BFFFD0C9BFFFD0C9BFFFD0C9BFFFD0C9BFFFD0C9BFFFD0C9BFFFD0C9BFFFD0C9
      BFFFDCD7CFFFFFFFFFFFF5F5F6FF3EB868FF52CF9CFFAAE8CFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF94CC8BFF52CE9AFF54BD70FFA8A39FEB7D5D3ADFFFFFFFFFF0EDEAFFD0C9
      BFFFD0C9BFFFD0C9BFFFD0C9BFFFD0C9BFFFD0C9BFFFD0C9BFFFD0C9BFFFD0C9
      BFFFDCD7CFFFFFFFFFFFFFFFFFFFFFFFFFFFA5C2EAFF7AAAECFF98C1EEFF7FAC
      EEFF81ADEDFFF4F6F9FFFBFBFBFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF7E6240DF7D5D3ADFFFFFFFFFF0EDEAFFD0C9
      BFFFD0C9BFFFD0C9BFFFD0C9BFFFD0C9BFFFD0C9BFFFD0C9BFFFD0C9BFFFD0C9
      BFFFDCD7CFFFFFFFFFFFF5F5F6FF2D38D6FF4A5FE3FF3B5EE2FF1B44DEFF1B40
      DDFF7E91ECFFFEFEFEFFFFFFFFFFFFFFFFFFFBFBFDFF6A80E3FF1B3EDDFF1C44
      DEFF3B5BE2FF4A5CE3FF434CD9FFA8A39FEB000000000101010EAEAEAEEBF5FA
      F7FF6AC587FF30BF80FF27C082FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF27C183FF6AD4A9FFFAFDFCFFFFFFFFFFFFFFFFFFF4F9F1FF65B75FFF27BF
      81FF27C183FF27C183FF27C183FF27C183FF27C183FF27C082FF31BD7BFF68C4
      85FFF5FAF7FFA7A7A8EB0101010E000000007C5D39DFFFFFFFFFEEECE8FFCDC5
      BAFFCDC5BAFFCDC5BAFFCDC5BAFFCDC5BAFFCDC5BAFFCDC5BAFFCDC5BAFFCDC5
      BAFFD9D3CBFFFFFFFFFFF5F5F5FF3DB45FFF52CF9CFFAEE7CCFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF94CC8BFF52CE9AFF52B866FFABA6A0EC7C5D39DFFFFFFFFFEEECE8FFCDC5
      BAFFCDC5BAFFCDC5BAFFCDC5BAFFCDC5BAFFCDC5BAFFCDC5BAFFCDC5BAFFCDC5
      BAFFD9D3CBFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFA4C2EBFF7AAAECFF99C1
      EEFF7FACEEFF7DA6E6FFEBEDF0FFF9F9F9FFFFFFFFFFFFFFFFFFFEFEFEFFD5CF
      C6FFEDEBE7FFFFFFFFFFFFFFFFFF7E623EDF7C5D39DFFFFFFFFFEEECE8FFCDC5
      BAFFCDC5BAFFCDC5BAFFCDC5BAFFCDC5BAFFCDC5BAFFCDC5BAFFCDC5BAFFCDC5
      BAFFD9D3CBFFFFFFFFFFF5F5F5FF2C36D3FF4A5EE3FF4A5DE1FF3F4AE0FF2238
      DCFF6D7FE5FFFCFCFEFFFFFFFFFFFFFFFFFFF7F7FBFF5C67C8FF2236DAFF4049
      DFFF4A5EE1FF4A5CE3FF414AD6FFABA6A0EC000000000D0D0D78FCFCFCFFA4DB
      B4FF40BD7AFF27C081FF27C183FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF69D4A9FFF9FDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAF3E3FF39AB
      4AFF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27BF81FF40BC
      76FFA3DBB2FFF8F8F9FF0C0C0C78000000007C5C35DFFFFFFFFFEDEBE7FFC9C1
      B6FFC9C1B6FFC9C1B6FFC9C1B6FFC9C1B6FFC9C1B6FFC9C1B6FFC9C1B6FFC9C1
      B6FFD6D0C8FFFFFFFFFFF4F4F5FF54B761FF55C88BFF7BC985FF94D39DFF98D5
      A2FF99D6A4FFB9E3C1FFFFFFFFFFFFFFFFFFA6D39BFF99D6A3FF97D4A0FF93D2
      9BFF71BF71FF55C88CFF6BBD6CFF8A8178E17C5C35DFFFFFFFFFEDEBE7FFC9C1
      B6FFC9C1B6FFC9C1B6FFC9C1B6FFC9C1B6FFC9C1B6FFC9C1B6FFC9C1B6FFC9C1
      B6FFD6D0C8FFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFEEEEEEFF9DBCE6FF7BAA
      ECFF99C1EEFF7EACEEFF80A9E8FFF1F2F5FFFFFFFFFFFFFFFFFFFEFEFEFFCFC8
      BEFFEBE8E4FFFFFFFFFFFFFFFFFF7D603BDF7C5C35DFFFFFFFFFEDEBE7FFC9C1
      B6FFC9C1B6FFC9C1B6FFC9C1B6FFC9C1B6FFC9C1B6FFC9C1B6FFC9C1B6FFC9C1
      B6FFD6D0C8FFFFFFFFFFF4F4F5FF434CD4FF4A59DFFF4B52D8FF4C52DCFF858A
      E8FFFCFCFDFFFFFFFFFFFCFCFEFFFEFEFEFFFFFFFFFFF7F7FBFF696EC9FF4A50
      D9FF4B52D7FF4A58E0FF5B62D7FF8A8178E1010101018A8A8ADEF5FBF7FF57BD
      75FF2ABE80FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF69D4
      A9FFF9FDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F9F1FF65B760FF27BF
      81FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C082FF2BBD
      7BFF55BC73FFF5FBF7FF848484DE010101017B5C34DFFFFFFFFFECE9E6FFC5BD
      B1FFC5BDB1FFC5BDB1FFC5BDB1FFC5BDB1FFC5BDB1FFC5BDB1FFC5BDB1FFC5BD
      B1FFD4CDC5FFFFFFFFFFF3F3F4FF84C477FF54B252FF5EB75FFF5EBC6BFF61BF
      74FF66C17AFF9AD7A8FFFFFFFFFFFFFFFFFF7FBE6FFF64C179FF60BE72FF5EBB
      68FF5EB55BFF54B14FFF98CB86FF7E6F5BDF7B5C34DFFFFFFFFFECE9E6FFC5BD
      B1FFC5BDB1FFC5BDB1FFC5BDB1FFC5BDB1FFC5BDB1FFC5BDB1FFC5BDB1FFC5BD
      B1FFD4CDC5FFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFEEEEEEFFEEEEEEFF95B5
      E0FF7BAAECFF99C1EEFF7EACEEFF83AFEDFFF9FAFDFFFFFFFFFFFEFEFEFFCAC2
      B7FFE9E6E1FFFFFFFFFFFFFFFFFF7D5F39DF7B5C34DFFFFFFFFFECE9E6FFC5BD
      B1FFC5BDB1FFC5BDB1FFC5BDB1FFC5BDB1FFC5BDB1FFC5BDB1FFC5BDB1FFC5BD
      B1FFD4CDC5FFFFFFFFFFF3F3F4FF797EDAFF414ACFFF4C53D2FF878CE3FFFCFC
      FDFFFFFFFFFFFBFBFDFF8488E6FF9699ECFFFEFEFEFFFFFFFFFFF7F7FBFF6B70
      C8FF4C53D1FF414AD0FF8C90DEFF7E6F5BDF02020236F9F9F9FFB9E3C4FF3DBA
      6FFF2FC386FF27C183FF27C183FF27C183FF27C183FF27C183FF69D4A8FFF9FD
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F9F1FF67B760FF28BF81FF27C1
      83FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF30C2
      84FF3DB86BFFB8E3C2FFF1F1F1FF020202367B5C30DFFFFFFFFFEBE8E4FFC1B8
      ACFFC1B8ACFFC1B8ACFFC1B8ACFFC1B8ACFFC1B8ACFFC1B8ACFFC1B8ACFFC1B8
      ACFFD0CAC0FFFFFFFFFFF6F6F6FFD2E6CBFF459C16FF5FAF45FF5FB355FF5EB7
      60FF5EBA68FF94D39CFFFFFFFFFFFFFFFFFF7BBC68FF5EBA66FF5EB65EFF5FB2
      52FF60AD41FF499D1AFFDBE6D7FF7B623EDF7B5C30DFFFFFFFFFEBE8E4FFC1B8
      ACFFC1B8ACFFC1B8ACFFC1B8ACFFC1B8ACFFC1B8ACFFC1B8ACFFC1B8ACFFC1B8
      ACFFD0CAC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFF9FBFEBFF7BAAECFF99C1EEFF7EABEEFF84AFEDFFF9FAFDFFFEFEFEFFC5BD
      B1FFE7E3DFFFFFFFFFFFFFFFFFFF7D5E36DF7B5C30DFFFFFFFFFEBE8E4FFC1B8
      ACFFC1B8ACFFC1B8ACFFC1B8ACFFC1B8ACFFC1B8ACFFC1B8ACFFC1B8ACFFC1B8
      ACFFD0CAC0FFFFFFFFFFF6F6F6FFCECFEEFF2D35BFFF4C52CCFF898DE0FFFCFC
      FEFFFBFBFDFF8488E1FF4C52D8FF4C52D8FF9599E7FFFEFEFEFFF8F8FCFF7B81
      D9FF4C52CBFF3139BFFFD8D9EBFF7B623EDF0D0D0D78FDFDFDFF81CD91FF3ABF
      7DFF47CB95FF27C183FF27C183FF27C183FF27C183FF6CD5AAFFF9FDFCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F9F1FF78BB68FF4FC88EFF3DC58CFF28C1
      83FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF47CB
      94FF3BBE78FF81CC90FFF9F9F9FF0C0C0C787B5B2EDFFFFFFFFFE9E6E2FFBDB4
      A8FFBDB4A8FFBDB4A8FFBDB4A8FFBDB4A8FFBDB4A8FFBDB4A8FFBDB4A8FFBDB4
      A8FFCDC7BDFFFFFFFFFFFEFEFEFFF0F0F0FF83BB6AFF529F23FF60AB3AFF5FAE
      44FF5FB14EFF94CD8CFFFFFFFFFFFFFFFFFF7BB85FFF5FB04CFF60AE42FF60AA
      38FF529E23FF96C581FFE9E9EAFF7D5D34DF7B5B2EDFFFFFFFFFE9E6E2FFBDB4
      A8FFBDB4A8FFBDB4A8FFBDB4A8FFBDB4A8FFBDB4A8FFBDB4A8FFBDB4A8FFBDB4
      A8FFCDC7BDFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFF9CBEEBFF7CABECFF99C1EEFF7DABEEFF85B0EDFFF9FAFCFFBFB7
      AAFFE5E1DCFFFFFFFFFFFFFFFFFF7D5D34DF7B5B2EDFFFFFFFFFE9E6E2FFBDB4
      A8FFBDB4A8FFBDB4A8FFBDB4A8FFBDB4A8FFBDB4A8FFBDB4A8FFBDB4A8FFBDB4
      A8FFCDC7BDFFFFFFFFFFFEFEFEFFF0F0F0FF777CD3FF3C43C1FF4C52CAFF888D
      DDFF8489DDFF4C53CFFF4C53D0FF4C53D0FF4C53CFFF9498E2FF7C81D7FF4C52
      C9FF3C43C0FF898DD9FFE9E9EAFF7D5D34DF2E2E2EA8FEFEFEFF53BB6BFF3EC5
      88FF51CE9BFF35C58BFF27C183FF27C183FF73D7AEFFFCFEFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFFA6D092FF96DBB2FF98DDB8FF98DCB7FF93DB
      B5FF7ED6ABFF69D2A3FF67D1A2FF67D1A2FF67D1A2FF59CA92FF37C080FF51CE
      9BFF3FC383FF51BA68FFFDFDFDFF2C2C2CA87B5A2ADFFFFFFFFFE8E5E1FFBAB1
      A3FFBAB1A3FFBAB1A3FFBAB1A3FFBAB1A3FFBAB1A3FFBAB1A3FFBAB1A3FFBAB1
      A3FFCBC4BAFFFFFFFFFFFFFFFFFFF8F8F9FFEAEEEAFF68A843FF529C23FF61A6
      35FF60A835FF7DB95BFFB1D59BFFB1D59BFF6FAF45FF60A835FF61A635FF529B
      23FF77B157FFE7E8E7FFFAFAFAFF7D5D31DF7B5A2ADFFFFFFFFFE8E5E1FFBAB1
      A3FFBAB1A3FFBAB1A3FFBAB1A3FFBAB1A3FFBAB1A3FFBAB1A3FFBAB1A3FFBAB1
      A3FFCBC4BAFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFF95B7E5FF7CABECFF99C1EEFF7DABEEFF85B0ECFFB8B0
      A5FFE2DFD9FFFFFFFFFFFFFFFFFF7D5D31DF7B5A2ADFFFFFFFFFE8E5E1FFBAB1
      A3FFBAB1A3FFBAB1A3FFBAB1A3FFBAB1A3FFBAB1A3FFBAB1A3FFBAB1A3FFBAB1
      A3FFCBC4BAFFFFFFFFFFFFFFFFFFF8F8F9FFE9E9F0FF545BC5FF3C43BDFF4C52
      C5FF4C52C7FF4C52C9FF4C52C9FF4C52C9FF4C52C8FF4C52C7FF4C52C4FF3C43
      BCFF666CCBFFE7E7E9FFFAFAFAFF7D5D31DF5C5C5CC9FDFDFDFF36B054FF43C8
      8FFF52CF9CFF4ECD99FF2DC386FF72D6AEFFFCFEFDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2E5C4FF4BB866FF52CF
      9CFF44C78BFF36AF51FFFDFDFDFF575757C97B5828DFFFFFFFFFE7E4DFFFB7AD
      9FFFB7AD9FFFB7AD9FFFB7AD9FFFB7AD9FFFB7AD9FFFB7AD9FFFB7AD9FFFB7AD
      9FFFC9C2B7FFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E9FFE5E9E5FF84B86BFF4691
      14FF589D2AFF60A334FF61A335FF61A335FF60A234FF589C2AFF489217FF91BF
      7BFFE6E8E6FFF6F6F6FFFFFFFFFF7C5C2EDF7B5828DFFFFFFFFFE7E4DFFFB7AD
      9FFFB7AD9FFFB7AD9FFFB7AD9FFFB7AD9FFFB7AD9FFFB7AD9FFFB7AD9FFFB7AD
      9FFFC9C2B7FFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEDEDEEFF92B5E4FF7CABECFF99C1EEFF7DABEEFF839D
      C1FFDFDCD7FFFFFFFFFFFFFFFFFF7C5C2EDF7B5828DFFFFFFFFFE7E4DFFFB7AD
      9FFFB7AD9FFFB7AD9FFFB7AD9FFFB7AD9FFFB7AD9FFFB7AD9FFFB7AD9FFFB7AD
      9FFFC9C2B7FFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E9FFE4E4EBFF777DCFFF2D35
      B4FF4248BCFF4B51C1FF4B52C2FF4B52C2FF4B51C1FF4248BCFF2F37B5FF8287
      D3FFE6E6E9FFF6F6F6FFFFFFFFFF7C5C2EDF7B7B7BD8EEF8F0FF33AE4FFF47CA
      92FF52CF9CFF52CF9CFF86DEBBFFFCFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2E5C4FF4BB867FF52CF
      9CFF47C88EFF34AD4BFFEEF8F0FF747474D87A5725DFFFFFFFFFE6E3DEFFB3A9
      9AFFB3A99AFFB3A99AFFB3A99AFFB3A99AFFB3A99AFFB3A99AFFB3A99AFFB3A9
      9AFFC6BEB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFEBEBEBFFD0E1
      C9FF87B86DFF5C9C32FF479018FF48911AFF609F37FF8DBB75FFD4E1CFFFCFCC
      C8FFE0DCD8FFFFFFFFFFFFFFFFFF7B5C2BDF7A5725DFFFFFFFFFE6E3DEFFB3A9
      9AFFB3A99AFFB3A99AFFB3A99AFFB3A99AFFB3A99AFFB3A99AFFB3A99AFFB3A9
      9AFFC6BEB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF99BCECFF7CABECFFA9C3E0FFCCC2
      B3FFC3BCB0FFFBFCFCFFFFFFFFFF7B5C2BDF7A5725DFFFFFFFFFE6E3DEFFB3A9
      9AFFB3A99AFFB3A99AFFB3A99AFFB3A99AFFB3A99AFFB3A99AFFB3A99AFFB3A9
      9AFFC6BEB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFEBEBEBFFCBCD
      E9FF7A7FCEFF454DBBFF2D36B3FF2E37B3FF4A51BDFF8082D1FFD0D2E7FFCFCC
      C8FFE0DCD8FFFFFFFFFFFFFFFFFF7B5C2BDF7B7B7BD8EEF8F0FF34AB48FF46C9
      92FF52CF9CFF52CF9CFF93DDB6FFFDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2E5C4FF4BB867FF52CF
      9CFF47C88EFF34A944FFEEF7EFFF747474D87A5721DFFFFFFFFFE5E2DDFFB0A6
      97FFB0A697FFB0A697FFB0A697FFB0A697FFB0A697FFB0A697FFB0A697FFB0A6
      97FFC3BCB1FFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFEEEEEEFFEEEEEEFFEBEB
      ECFFEBEBECFFEBEBEBFFE9E9EAFFE9E9EAFFE9E9EAFFE9E9EAFFF3F3F3FFADA3
      93FFDDD8D2FFFFFFFFFFFFFFFFFF7B5C28DF7A5721DFFFFFFFFFE5E2DDFFB0A6
      97FFB0A697FFB0A697FFB0A697FFB0A697FFB0A697FFB0A697FFB0A697FFB0A6
      97FFC3BCB1FFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFF7F7F7FFFDFEFEFFA6BDDBFFDDD6CCFFD8CE
      BFFFD1C6B6FF9898BEFFFEFEFEFF7B5C28DF7A5721DFFFFFFFFFE5E2DDFFB0A6
      97FFB0A697FFB0A697FFB0A697FFB0A697FFB0A697FFB0A697FFB0A697FFB0A6
      97FFC3BCB1FFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFEEEEEEFFEEEEEEFFEBEB
      ECFFEBEBECFFEBEBEBFFE9E9EAFFE9E9EAFFE9E9EAFFE9E9EAFFF3F3F3FFADA3
      93FFDDD8D2FFFFFFFFFFFFFFFFFF7B5C28DF5B5B5BC9FDFDFDFF36A73EFF43C8
      8FFF52CF9CFF57CA90FF67C27DFF9DD9ABFFFDFEFDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2E5C4FF4CB763FF52CF
      9CFF45C78BFF36A53AFFFDFDFDFF575757C979571DDFFFFFFFFFE4E1DBFFADA2
      92FFADA292FFADA292FFADA292FFADA292FFADA292FFADA292FFADA292FFADA2
      92FFC1B9ADFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFF7F7F7FFFFFFFFFFFFFFFFFFFEFEFEFFA99F
      8FFFDBD7D0FFFFFFFFFFFFFFFFFF7B5B24DF79571DDFFFFFFFFFE4E1DBFFADA2
      92FFADA292FFADA292FFADA292FFADA292FFADA292FFADA292FFADA292FFADA2
      92FFC1B9ADFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFF7F7F7FFFFFFFFFFFDFDFDFFC9C3B9FFDFD8
      CEFF696AACFF1E25A2FFD9DAEEFF7B5B24DF79571DDFFFFFFFFFE4E1DBFFADA2
      92FFADA292FFADA292FFADA292FFADA292FFADA292FFADA292FFADA292FFADA2
      92FFC1B9ADFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFF7F7F7FFFFFFFFFFFFFFFFFFFEFEFEFFA99F
      8FFFDBD7D0FFFFFFFFFFFFFFFFFF7B5B24DF2E2E2EA8FEFEFEFF4FAC47FF3DC4
      85FF53CC96FF5DBF72FF62C076FF66C27BFF9BD8A9FFFDFEFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFFA4CE8EFF84CC94FF84CE97FF85CE97FF89D0
      9AFF92D3A0FF95D5A3FF93D4A0FF90D39DFF8DD199FF81C985FF5AB965FF53CC
      96FF3FC281FF4FAB44FFFCFCFCFF2B2C2BA8795617DFFFFFFFFFE3E0DBFFAAA0
      90FFAAA090FFAAA090FFAAA090FFAAA090FFAAA090FFAAA090FFAAA090FFAAA0
      90FFBFB7ABFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFFBFBFBFFFFFFFFFFFFFFFFFFFEFEFEFFA59A
      8AFFD9D5CEFFFFFFFFFFFFFFFFFF7B591FDF795617DFFFFFFFFFE3E0DBFFAAA0
      90FFAAA090FFAAA090FFAAA090FFAAA090FFAAA090FFAAA090FFAAA090FFAAA0
      90FFBFB7ABFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFFBFBFBFFFFFFFFFFFFFFFFFFFCFCFCFF7572
      99FF1E25ADFF6C71CEFFFEFEFEFF7B591FDF795617DFFFFFFFFFE3E0DBFFAAA0
      90FFAAA090FFAAA090FFAAA090FFAAA090FFAAA090FFAAA090FFAAA090FFAAA0
      90FFBFB7ABFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFFBFBFBFFFFFFFFFFFFFFFFFFFEFEFEFFA59A
      8AFFD9D5CEFFFFFFFFFFFFFFFFFF7B591FDF0D0D0D78FCFCFCFF7DBF70FF37B9
      6BFF5ABF76FF5EB966FF5EBD6DFF60BF73FF64C178FF94D5A3FFFBFDFBFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F9F1FF76B75EFF6AC37FFF6EC582FF6FC6
      83FF6DC581FF6AC37FFF66C27BFF63C077FF5FBE72FF5EBC6BFF5EB964FF5ABE
      74FF38B766FF7DBE6CFFF8F8F8FF0C0C0C78785511DFFFFFFFFFE2DFDAFFA79D
      8DFFA79D8DFFA79D8DFFA79D8DFFA79D8DFFA79D8DFFA79D8DFFA79D8DFFA79D
      8DFFBDB5A9FFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFFBFBFBFFFFFFFFFFFFFFFFFFFEFEFEFFA196
      85FFD8D3CCFFFFFFFFFFFFFFFFFF7B5819DF785511DFFFFFFFFFE2DFDAFFA79D
      8DFFA79D8DFFA79D8DFFA79D8DFFA79D8DFFA79D8DFFA79D8DFFA79D8DFFA79D
      8DFFBDB5A9FFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFFBFBFBFFFFFFFFFFFFFFFFFFFEFEFEFF9F94
      85FFACABC5FFFDFDFEFFFFFFFFFF7B5819DF785511DFFFFFFFFFE2DFDAFFA79D
      8DFFA79D8DFFA79D8DFFA79D8DFFA79D8DFFA79D8DFFA79D8DFFA79D8DFFA79D
      8DFFBDB5A9FFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFF6F6F6FFF6F6F6FFF6F6
      F6FFF6F6F6FFF6F6F6FFF6F6F6FFFBFBFBFFFFFFFFFFFFFFFFFFFEFEFEFFA196
      85FFD8D3CCFFFFFFFFFFFFFFFFFF7B5819DF02020236F7F7F7FFB5DAA8FF34A4
      32FF5AB04FFF5FB55CFF5EB863FF5EBB6AFF5EBD70FF61BF74FF90D39EFFFBFD
      FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F9F1FF78B85FFF68C17AFF67C2
      7DFF65C17AFF63C077FF60BF73FF5EBD6EFF5EBB68FF5EB862FF5FB45AFF5BAF
      4CFF35A32CFFB5DAA6FFEEEEEEFF02020236785408DFFFFFFFFFE1DED9FFA49A
      89FFA49A89FFA49A89FFA49A89FFA49A89FFA49A89FFA49A89FFA49A89FFA49A
      89FFBBB3A7FFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFF7F7F7FFFFFFFFFFFFFFFFFFFEFEFEFFD7D2
      CBFFEEECE9FFFFFFFFFFFFFFFFFF7A5711DF785408DFFFFFFFFFE1DED9FFA49A
      89FFA49A89FFA49A89FFA49A89FFA49A89FFA49A89FFA49A89FFA49A89FFA49A
      89FFBBB3A7FFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFF7F7F7FFFFFFFFFFFFFFFFFFFEFEFEFFD7D2
      CBFFEEECE9FFFFFFFFFFFFFFFFFF7A5711DF785408DFFFFFFFFFE1DED9FFA49A
      89FFA49A89FFA49A89FFA49A89FFA49A89FFA49A89FFA49A89FFA49A89FFA49A
      89FFBBB3A7FFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFF7F7F7FFFFFFFFFFFFFFFFFFFEFEFEFFD7D2
      CBFFEEECE9FFFFFFFFFFFFFFFFFF7A5711DF01010101888888DEF5FAF4FF449E
      16FF4BA329FF5FB150FF5FB458FF5EB65FFF5EB965FF5EBB6AFF5EBD6EFF8DD2
      9AFFFBFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F9F1FF76B75CFF5FBE
      70FF5FBE71FF5EBD6DFF5EBB69FF5EB964FF5FB65EFF5FB356FF5FB04DFF4BA3
      25FF449D15FFF5F9F4FF808080DE01010101785305DFFFFFFFFFE0DDD7FFA197
      86FFA19786FFA19786FFA19786FFA19786FFA19786FFA19786FFA19786FFA197
      86FFB9B1A4FFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF7A570EDF785305DFFFFFFFFFE0DDD7FFA197
      86FFA19786FFA19786FFA19786FFA19786FFA19786FFA19786FFA19786FFA197
      86FFB9B1A4FFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF7A570EDF785305DFFFFFFFFFE0DDD7FFA197
      86FFA19786FFA19786FFA19786FFA19786FFA19786FFA19786FFA19786FFA197
      86FFB9B1A4FFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF7A570EDF000000000D0D0D78FBFBFBFF97C9
      81FF3A9706FF5BAA36FF60AF4AFF5FB253FF5FB459FF5EB65FFF5EB863FF5EBA
      67FF8DD094FFFBFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAF3E3FF54A8
      3BFF5EBA66FF5EB862FF5FB65EFF5FB357FF5FB151FF60AF47FF5BAA33FF3A96
      05FF98C981FFF5F5F6FF0C0C0C7800000000775305DFFFFFFFFFE3E0DBFFAAA1
      91FFAAA191FFAAA191FFAAA191FFAAA191FFAAA191FFAAA191FFAAA191FFAAA1
      91FFBFB8ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF79570EDF775305DFFFFFFFFFE3E0DBFFAAA1
      91FFAAA191FFAAA191FFAAA191FFAAA191FFAAA191FFAAA191FFAAA191FFAAA1
      91FFBFB8ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF79570EDF775305DFFFFFFFFFE3E0DBFFAAA1
      91FFAAA191FFAAA191FFAAA191FFAAA191FFAAA191FFAAA191FFAAA191FFAAA1
      91FFBFB8ACFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF79570EDF000000000101010EABABABEBF4F9
      F3FF4E9E22FF449A11FF5FAB36FF60AD3FFF60B04AFF5FB151FF5FB356FF5FB4
      5AFF5FB65DFF8ECD8EFFFBFDFBFFFFFFFFFFFFFFFFFFF4F9F1FF74B354FF5DB4
      59FF5FB459FF5FB355FF5FB150FF60AF48FF60AD3DFF5FAB35FF449A11FF4E9D
      21FFF4F9F3FFA2A2A2EB0101010E00000000775205DFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF78560EDF775205DFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF78560EDF775205DFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF78560EDF000000000000000006070663F8F8
      F8FFCCE3C2FF3A9006FF4B9C1AFF60A934FF60AB36FF60AD3CFF60AE44FF60B0
      4BFF5FB14FFF5FB151FF8FCA85FFFBFDFBFFF4F9F1FF75B351FF5EB04EFF5FB0
      4EFF60AF49FF60AE42FF60AC3AFF60AB35FF60A934FF4B9B1AFF3A9006FFCCE3
      C2FFF0F0F1FF060606630000000000000000775105DFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF78550EDF775105DFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF78550EDF775105DFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF78550EDF0000000000000000000000003535
      35B0FBFBFBFFACD29BFF398E03FF4B991AFF60A734FF60A935FF60AA35FF60AB
      36FF60AC38FF60AD3BFF60AD3DFF8EC679FF7BB655FF5EAC3AFF60AC3AFF60AC
      37FF60AB35FF60AA35FF60A835FF60A634FF4B991AFF398D03FFACD19BFFF7F7
      F8FF313331B0000000000000000000000000765004DFEDEEEEFFEDEEEEFFEDEE
      EEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEE
      EEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEE
      EEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEE
      EEFFEDEEEEFFEDEEEEFFEDEEEEFF77530EDF765004DFEDEEEEFFEDEEEEFFEDEE
      EEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEE
      EEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEE
      EEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEE
      EEFFEDEEEEFFEDEEEEFFEDEEEEFF77530EDF765004DFEDEEEEFFEDEEEEFFEDEE
      EEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEE
      EEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEE
      EEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEEEEFFEDEE
      EEFFEDEEEEFFEDEEEEFFEDEEEEFF77530EDF0000000000000000000000000101
      010F696969D1FCFCFCFFACD19BFF3A8D06FF449311FF5CA22FFF61A635FF61A6
      35FF60A835FF60A835FF60A935FF60A935FF60A935FF60A935FF60A835FF60A7
      35FF61A635FF61A535FF5CA22FFF449311FF3A8C06FFACD19BFFF9F9F9FF6363
      63D10101010F000000000000000000000000754F04DFDDDEDEFFDDDEDEFFDDDE
      DEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDE
      DEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDE
      DEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDE
      DEFFDDDEDEFFDDDEDEFFDDDEDEFF76520DDF754F04DFDDDEDEFFDDDEDEFFDDDE
      DEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDE
      DEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDE
      DEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDE
      DEFFDDDEDEFFDDDEDEFFDDDEDEFF76520DDF754F04DFDDDEDEFFDDDEDEFFDDDE
      DEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDE
      DEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDE
      DEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDEDEFFDDDE
      DEFFDDDEDEFFDDDEDEFFDDDEDEFF76520DDF0000000000000000000000000000
      000001010118686868D1FBFBFBFFCBE2C1FF4E9721FF3B8B05FF4C961BFF5CA1
      2FFF61A435FF61A435FF61A435FF61A535FF61A435FF61A435FF61A435FF61A4
      35FF5CA02FFF4C961BFF3B8B05FF4E9621FFCBE2C1FFF7F7F8FF636363D10101
      011800000000000000000000000000000000744E04DFCB9C42FFCB9C42FFCB9C
      42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C
      42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C
      42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C
      42FFCB9C42FFCB9C42FFCB9C42FF754F04DF744E04DFCB9C42FFCB9C42FFCB9C
      42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C
      42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C
      42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C
      42FFCB9C42FFCB9C42FFCB9C42FF754F04DF744E04DFCB9C42FFCB9C42FFCB9C
      42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C
      42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C
      42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C42FFCB9C
      42FFCB9C42FFCB9C42FFCB9C42FF754F04DF0000000000000000000000000000
      0000000000000101010F343534B0F6F6F6FFF4F9F4FF98C481FF459015FF3988
      03FF428E0FFF4C941BFF529823FF559A27FF559A27FF529823FF4C941BFF428E
      0FFF398803FF459015FF98C381FFF4F8F3FFF0F0F1FF313331B00101010F0000
      000000000000000000000000000000000000744D03DFC48103FFC48103FFC481
      03FFC48103FFC48103FFC48103FFC48103FFC48103FFC48103FFC48103FFC481
      03FFC48103FFC48103FFC48103FFC48103FFC48103FFC48103FFC48103FFC481
      03FFC48103FFC48103FFC48103FFC48103FFC48103FFC48103FFC48103FFC481
      03FFC48103FFC48103FFC48103FF744D03DF744D03DFC48103FFC48103FFC481
      03FFC48103FFC48103FFC48103FFC48103FFC48103FFC48103FFC48103FFC481
      03FFC48103FFC48103FFC48103FFC48103FFC48103FFC48103FFC48103FFC481
      03FFC48103FFC48103FFC48103FFC48103FFC48103FFC48103FFC48103FFC481
      03FFC48103FFC48103FFC48103FF744D03DF744D03DFC48103FFC48103FFC481
      03FFC48103FFC48103FFC48103FFC48103FFC48103FFC48103FFC48103FFC481
      03FFC48103FFC48103FFC48103FFC48103FFC48103FFC48103FFC48103FFC481
      03FFC48103FFC48103FFC48103FFC48103FFC48103FFC48103FFC48103FFC481
      03FFC48103FFC48103FFC48103FF744D03DF0000000000000000000000000000
      000000000000000000000000000006060663A7A7A8EBF8F8F9FFF5F9F5FFB5D4
      A6FF7EB15EFF519726FF3A8706FF398603FF398603FF3A8706FF519626FF7EB1
      5EFFB5D4A6FFF5F9F4FFF5F5F6FFA2A2A2EB0606066300000000000000000000
      000000000000000000000000000000000000744C03DFC38103FFC38103FFC381
      03FFC38103FFC38103FFC38103FFC38103FFC38103FFC38103FFC38103FFC381
      03FFC38103FFC38103FFC38103FFC38103FFC38103FFC38103FFC38103FFC381
      03FFC38103FFC38103FFC38103FFC38103FFC38103FFC38103FFC38103FFC381
      03FFC38103FFC38103FFC38103FF744C03DF744C03DFC38103FFC38103FFC381
      03FFC38103FFC38103FFC38103FFC38103FFC38103FFC38103FFC38103FFC381
      03FFC38103FFC38103FFC38103FFC38103FFC38103FFC38103FFC38103FFC381
      03FFC38103FFC38103FFC38103FFC38103FFC38103FFC38103FFC38103FFC381
      03FFC38103FFC38103FFC38103FF744C03DF744C03DFC38103FFC38103FFC381
      03FFC38103FFC38103FFC38103FFC38103FFC38103FFC38103FFC38103FFC381
      03FFC38103FFC38103FFC38103FFC38103FFC38103FFC38103FFC38103FFC381
      03FFC38103FFC38103FFC38103FFC38103FFC38103FFC38103FFC38103FFC381
      03FFC38103FFC38103FFC38103FF744C03DF0000000000000000000000000000
      0000000000000000000000000000000000000101010E0C0C0C78848484DEF1F1
      F1FFF9F9F9FFFDFDFDFFFDFDFDFFEEF6EDFFEEF6EDFFFDFDFDFFFCFCFCFFF8F8
      F8FFEEEEEEFF808080DE0C0C0C780101010E0000000000000000000000000000
      000000000000000000000000000000000000442C03C3734B03DF734B03DF734B
      03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B
      03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B
      03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B
      03DF734B03DF734B03DF734B03DF442C03C3442C03C3734B03DF734B03DF734B
      03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B
      03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B
      03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B
      03DF734B03DF734B03DF734B03DF442C03C3442C03C3734B03DF734B03DF734B
      03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B
      03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B
      03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B03DF734B
      03DF734B03DF734B03DF734B03DF442C03C30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101010202
      02360C0C0C782B2B2BA7585959CA747474D8747474D8585858CA292A29A70C0C
      0C78020202360101010100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101010101
      0103010101060101010C01010111010101160101011701010116010101120101
      010D010101070101010301010101000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101010202
      02360D0D0D782D2D2DA75E5E5FCA7B7B7BD87B7B7BD85D5D5ECA2D2D2DA70D0D
      0D78020202360101010100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101010202
      02360D0D0D782D2D2DA75E5E5FCA7B7B7BD87B7B7BD85D5D5ECA2D2D2DA70D0D
      0D78020202360101010100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01030101010E010101200101012B0101012E0101012E0101012E0101012E0101
      012E0101012E0101012E0101012E0101012E0101012E0101012E0101012E0101
      012E0101012E0101012E0101012E0101012E0101012E0101012E0101012E0101
      012B010101200101010E01010103000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010101010101030101
      0108010101120101012E0101015D0101017F020202810101017F0101015F0101
      0134010101170101010901010104010101010000000000000000000000000000
      0000000000000000000000000000000000000101010E0D0D0D788A8B8BDEF9F9
      F9FFFDFDFDFFFEFEFEFFFDFDFDFFF1FAF5FFF1FAF5FFFDFDFDFFFEFEFEFFFCFC
      FCFFF7F7F7FF888888DE0D0D0D780101010E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010E0D0D0D788A8B8BDEF9F9
      F9FFFDFDFDFFFEFEFEFFFDFDFDFFF1FAF5FFF1FAF5FFFDFDFDFFFEFEFEFFFCFC
      FCFFF7F7F7FF888888DE0D0D0D780101010E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01050101011801010135020102480201024D0201024D0201024D0201024D0201
      024D0201024D0201024D0201024D0201024D0201024D0201024D0201024D0201
      024D0201024D0201024D0201024D0201024D0201024D0201024D0201024D0201
      0248010101350101011801010105000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010102010101070101
      011D07050577563E35D5D79F8DFFCFA58AFFD8A08EFF5D443CDB130E0DA90403
      03880101015A0101012001010109010101030000000000000000000000000000
      000000000000000000000000000007070763AEAEAEEBFCFCFCFFF7FBF9FFC8ED
      DBFFA0E1C3FF81D8AFFF6BD1A1FF67CF9EFF67CF9EFF6BD1A0FF81D8AEFFA0E1
      C2FFC8EDDBFFF7FBF9FFFBFBFBFFABABABEB0707076300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000007070763AEAEAEEBFCFCFCFFF7FBF9FFC8ED
      DBFFA0E1C3FF81D8AFFF6BD1A1FF67CF9EFF67CF9EFF6BD1A0FF81D8AEFFA0E1
      C2FFC8EDDBFFF7FBF9FFFBFBFBFFABABABEB0707076300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0107DD9662FFDE9763FFDE9865FFDE9865FFDE9967FFDE9967FFDF9B6AFFDF9B
      6AFFDF9B6AFFDF9B6AFFDF9B6BFFDF9B6BFFDF9B6BFFDF9B6BFFDF9B6BFFDF9B
      6BFFDF9B6AFFDF9B6AFFDE9967FFDE9967FFDD9865FFDC9765FFDC9562FFDA93
      62FF020102430101011E01010107000000000000000000000000000000000000
      0000000000000000000000000000010101010101010301010106010101080101
      01080101010601010103010101010000000001010101010101050101011B2318
      14ADBB8373F9D69B89FF9BB676FF74C865FFC5A886FFD79D8BFFD49885FF5B3D
      35DB080605960101015A01010116010101080000000000000000000000000000
      0000000000000101010F373737B0FBFBFBFFF6FBF8FFB3E6CDFF76D3A5FF54C9
      92FF3BC385FF2ABF81FF27BF81FF27BF81FF27BF81FF27BF81FF2ABF80FF3BC3
      84FF54C990FF76D3A4FFB3E6CCFFF6FBF8FFF8F8F8FF353535B00101010F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101010F373737B0FBFBFBFFF6FBF8FFB3E6CDFF76D3A5FF54C9
      92FF3BC385FF2ABF81FF27BF81FF27BF81FF27BF81FF27BF81FF2ABF80FF3BC3
      84FF54C990FF76D3A4FFB3E6CCFFF6FBF8FFF8F8F8FF353535B00101010F0000
      0000000000000000000000000000000000000000000000000000000000000101
      0107E29B63FFDDD8DDFFDED9DEFFDED9DEFFDED9DEFFDED9DEFFDED9DEFFDED9
      DEFFDED9DEFFDED9DEFFDED9DEFFDED9DEFFDED9DEFFDED9DEFFDED9DEFFDED9
      DEFFDED9DEFFE0DBE0FFE0DBE0FFDFDADFFFDED9DEFFDCD6DCFFDAD3DAFFDB94
      62FF020102480101012001010107000000000000000000000000000000000000
      0000000000000000000001010101010101060101010E010101160101011D0101
      011C010101140101010C0101010300000000010101020101010A19110E9BC285
      73FCD49581FFD79A87FF54D254FF56D356FFACB17CFFD89C89FFD69885FFCB8F
      7DFE5A3C34DC04030388010101340101010E0000000000000000000000000000
      0000010101186C6C6CD1FDFDFDFFD7F1E4FF7DD4A7FF4DC78DFF2BC081FF27C0
      81FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C0
      82FF27C081FF2CBF80FF4DC68AFF7DD3A6FFD7F1E3FFFBFBFBFF696969D10101
      0118000000000000000000000000000000000000000000000000000000000000
      0000010101186C6C6CD1FDFDFDFFD7F1E4FF7DD4A7FF4DC78DFF2BC081FF27C0
      81FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C0
      82FF27C081FF2CBF80FF4DC68AFF7DD3A6FFD7F1E3FFFBFBFBFF696969D10101
      0118000000000000000000000000000000000000000000000000000000000101
      0107EDA464FFE8E7E8FFE8E7E8FFE8E7E8FFE8E7E8FFE8E7E8FFE8E7E8FFE8E7
      E8FFE8E7E8FFE8E7E8FFE8E7E8FFE8E7E8FFE8E7E8FFE8E7E8FFE8E7E8FFE8E7
      E8FFE8E7E8FFEAE9EAFFEAE9EAFFE9E8E9FFE8E7E8FFE5E3E5FFDCD6DCFFDC94
      60FF020102480101012001010107000000000000000000000000000000000000
      0000000000000101010101010106010101100101011D01010152010101580101
      0153010101460101011001010105000000000101010402010139CA8674FFCF8D
      7BFFD49481FF48CF48FF4DD24DFF50D350FF4FD24FFFD59B85FFD69681FFD291
      7FFFCD8A77FF120C0AA90101017D010101130000000000000000000000000101
      010F6C6C6CD1FDFDFDFFBEE8D1FF63CB95FF33C181FF27C081FF27C183FF27C1
      83FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF27C183FF27C183FF27C081FF34C081FF62CA92FFBEE8CFFFFCFCFCFF6868
      69D10101010F0000000000000000000000000000000000000000000000000101
      010F6C6C6CD1FDFDFDFFBEE8D1FF63CB95FF33C181FF27C081FF27C183FF27C1
      83FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF27C183FF27C183FF27C081FF34C081FF62CA92FFBEE8CFFFFCFCFCFF6868
      69D10101010F0000000000000000000000000000000000000000000000000101
      0107EFA562FFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE9E9E9FFE7E6E7FFDDD7DDFFDC94
      60FF020102480101012001010107000000000000000000000000000000000000
      000000000000010101030101010E0101011D81C981FF85CB85FF85CB85FF84CA
      84FF0101014601010110010101050000000001010106201511A2CB8572FFD08B
      78FFD4917EFF42CF42FF46D046FF48D148FF49D048FFD59781FFD69381FFD28E
      7BFFCE8975FFC8836FFF02020280010101170000000000000000000000003737
      37B0FDFDFDFFBCE6CDFF59C78AFF2BC081FF27C082FF27C183FF27C183FF27C1
      83FF27C183FF27C183FF30C386FF4DB052FF27BF81FF27C183FF27C183FF27C1
      83FF27C183FF27C183FF27C183FF27C082FF2CBE7FFF59C587FFBCE6CBFFFBFB
      FBFF343535B00000000000000000000000000000000000000000000000003737
      37B0FDFDFDFFBCE6CDFF59C78AFF2BC081FF27C082FF27C183FF27C183FF27C1
      83FF27C183FF58CF9FFFC8EFE0FFC8EFE0FFC8EFE0FFC8EFE0FF65B65FFF27C1
      83FF27C183FF27C183FF27C183FF27C082FF2CBE7FFF59C587FFBCE6CBFFFBFB
      FBFF343535B00000000000000000000000000000000000000000000000000101
      0107F0A661FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFEAEAEAFFE9E8E9FFDDD8DDFFDC93
      5DFF020102480101012001010107000000000000000000000000010101010101
      0103010101060101010D0101011C7CC67CFF81C881FF81C981FF81C981FF81C8
      81FF010101170101010D010101030000000001010107C78069FFCB826EFFCF87
      72FFD38C77FF6FB74EFF38CE38FF4EC843FFB5A06FFFD6907DFFD58E7BFFC38E
      70FF949957FFAE895FFF0202028101010118000000000000000007070763FBFB
      FBFFD3EEDDFF59C383FF2BBF81FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF27C183FF31C387FFC9EDDAFFC3DDB0FF32AA49FF27C183FF27C183FF27C1
      83FF27C183FF27C183FF27C183FF27C183FF27C082FF2CBE7EFF58C181FFD3EE
      DCFFF6F6F6FF060706630000000000000000000000000000000007070763FBFB
      FBFFD3EEDDFF59C383FF2BBF81FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF27C183FF69D4A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7AB353FF27C1
      83FF27C183FF27C183FF27C183FF27C183FF27C082FF2CBE7EFF58C181FFD3EE
      DCFFF6F6F6FF0607066300000000000000000000000000000000000000000101
      0107F0A560FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFEAEAEAFFE8E7E8FFDDD8DDFFDC93
      5DFF020102480101012001010107000000000000000000000000010101020101
      0109010101110101011E73C273FF78C478FF7CC67CFF0101013C0101012D0101
      011C0101010F01010106010101010000000001010106C57C64FFC98068FFCD81
      6CFFD18670FF62B441FF2DCA2CFFB09966FFD58B75FFD48974FFD28772FF4FB4
      36FF23BF20FFA98559FF0101017F01010115000000000101010EAEAEAEEBF5FA
      F7FF6AC587FF30BF80FF27C082FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF33C388FFCDEFDDFFFFFFFFFFFEFEFEFF6FAF4AFF28BD7BFF27C183FF27C1
      83FF27C183FF27C183FF27C183FF27C183FF27C183FF27C082FF31BD7BFF68C4
      85FFF5FAF7FFA7A7A8EB0101010E00000000000000000101010EAEAEAEEBF5FA
      F7FF6AC587FF30BF80FF27C082FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF27C183FF69D4A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7AB353FF27C1
      83FF27C183FF27C183FF27C183FF27C183FF27C183FF27C082FF31BD7BFF68C4
      85FFF5FAF7FFA7A7A8EB0101010E000000000000000000000000000000000101
      0107F0A45DFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE9E9E9FFE8E7E8FFDDD8DDFFDC91
      59FF020102480101012001010107000000000000000000000000010101020101
      010A010101420101015370C170FF74C274FF0101017101010168010101550101
      01430101010A01010102000000000000000001010104C2785FFFC67B62FFCA7E
      65FF47B22DFF28C828FF3FCC3EFFD99782FFD89681FFD58E7AFFCF816BFF19C0
      19FF28B61DFF95874CFF0101015701010111000000000D0D0D78FCFCFCFFA4DB
      B4FF40BD7AFF27C081FF27C183FF27C183FF27C183FF27C183FF27C183FF35C4
      88FFD0F0DFFFFFFFFFFFFFFFFFFFFFFFFFFFD8E9CBFF37A63CFF27C183FF27C1
      83FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27BF81FF40BC
      76FFA3DBB2FFF8F8F9FF0C0C0C7800000000000000000D0D0D78FCFCFCFFA4DB
      B4FF40BD7AFF27C081FF27C183FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF27C183FF69D4A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7AB353FF27C1
      83FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27BF81FF40BC
      76FFA3DBB2FFF8F8F9FF0C0C0C78000000000000000000000000000000000101
      0107F0A35BFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE9E9E9FFE8E7E8FFDDD8DDFFDC91
      59FF0201024801010120010101070000000000000000000000000101010273C1
      73FF76C376FF78C378FF7AC47AFF7DC67DFF7FC77FFF80C780FF7FC77FFF0101
      01180101010A01010102000000000000000001010102180F0C96C3775EFF7796
      3DFF27C427FF5ED55EFF64D764FF8CC776FFDFA897FFDDA695FFD69985FF12BE
      12FF40A725FF3C281DCD0101012B0101010B010101018A8A8ADEF5FBF7FF57BD
      75FF2ABE80FF27C183FF27C183FF27C183FF27C183FF27C183FF37C489FFD4F1
      E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF83BA62FF2BB970FF27C1
      83FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C082FF2BBD
      7BFF55BC73FFF5FBF7FF848484DE01010101010101018A8A8ADEF5FBF7FF57BD
      75FF2ABE80FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF27C183FF69D4A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7AB353FF27C1
      83FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C082FF2BBD
      7BFF55BC73FFF5FBF7FF848484DE010101010000000000000000000000000101
      0107F0A259FFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEAEAEAFFE7E7E7FFE4E4
      E4FFE1E1E1FFE0E0E0FFE0E0E0FFE1E1E1FFE2E2E2FFE3E2E3FFDBD6DBFFDC8F
      54FF020102480101012001010107000000000000000000000000010101010101
      010681C981FF82CA82FF85CB85FF86CB86FF86CB86FF87CC87FF010101200101
      01100101010601010101000000000000000001010101010101237E553AEB27AD
      17FF62D362FF8DE08DFF8DE18DFFACD69AFFE6C0B4FFE6C0B3FFE4BEB1FF15B5
      0FFF6A7A31F805040371010101110101010602020236F9F9F9FFB9E3C4FF3DBA
      6FFF2FC386FF27C183FF27C183FF27C183FF27C183FF39C58AFFD7F2E4FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBF3E5FF44A332FF27C0
      82FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF30C2
      84FF3DB86BFFB8E3C2FFF1F1F1FF0202023602020236F9F9F9FFB9E3C4FF3DBA
      6FFF2FC386FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF27C183FF69D4A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7AB353FF27C1
      83FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF30C2
      84FF3DB86BFFB8E3C2FFF1F1F1FF020202360000000000000000000000000101
      0107F0A158FFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE7E7E7FFDEDEDEFFD5D5
      D5FFCCCCCCFFC8C8C8FFC8C8C8FFCCCCCCFFD3D3D3FFDAD9DAFFD8D2D8FFDC8F
      54FF020102480101012001010107000000000000000000000000000000000101
      01010101010690CF90FF91CF91FF92D092FF92D092FF0101011E010101100101
      01060101010100000000000000000000000000000000010101010403035B6860
      30ED53BE47FFA6E6A6FFC2EEC1FFDEE3CEFFF0DCD6FFEED8D0FFDFB3A5FF5B86
      2AFB1D130DA80101011B01010107010101020D0D0D78FDFDFDFF81CD91FF3ABF
      7DFF47CB95FF27C183FF27C183FF27C183FF3BC58BFFDAF3E6FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8CD8CFF2FB0
      59FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF47CB
      94FF3BBE78FF81CC90FFF9F9F9FF0C0C0C780D0D0D78FDFDFDFF81CD91FF3ABF
      7DFF47CB95FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C1
      83FF29C184FF79D7AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7BB353FF28C1
      83FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF27C183FF47CB
      94FF3BBE78FF81CC90FFF9F9F9FF0C0C0C780000000000000000000000000101
      0107F0A158FFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFE4E4E4FFD5D5D5FF9090
      90FF818181FF7E7E7EFF7E7E7EFF818181FF8F8F8FFFD1D0D1FFD5D0D5FFDC8F
      54FF020102480101012001010107000000000000000000000000000000000000
      000001010101010101069FD69FFFA0D6A0FF010101140101010E010101060101
      0101000000000000000000000000000000000000000000000000010101050403
      0259715734EA71A347FF96D68CFFFBF7F5FFF4E5E0FFD49C89FFC2785FFF120C
      09910101011A0101010701010103010101012E2E2EA8FEFEFEFF53BB6BFF3EC5
      88FF51CE9BFF35C58BFF27C183FF3DC68CFFDDF4E7FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFDFFFAFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFAFF63A9
      3DFF53C78CFF37C387FF27C183FF27C183FF27C183FF27C183FF35C58BFF51CE
      9BFF3FC383FF51BA68FFFDFDFDFF2C2C2CA82E2E2EA8FEFEFEFF53BB6BFF3EC5
      88FF51CE9BFF35C58BFF59CF9EFF6AD2A3FF6AD2A3FF6AD2A3FF6CD2A3FF80D6
      ABFF95DBB5FFB8E7CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2CA85FF95DB
      B5FF80D6ABFF6CD2A3FF6AD2A3FF6AD2A3FF6AD2A3FF5BCA90FF38BF7DFF51CE
      9BFF3FC383FF51BA68FFFDFDFDFF2C2C2CA80000000000000000000000000101
      0107F0A259FFECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
      ECFFECECECFFECECECFFECECECFFECECECFFECECECFFE2E2E2FF03B503FF03B5
      03FF03B503FF03B503FF03B503FF03B503FF818181FFC9C8C9FFD3CDD3FFDC8F
      54FF020102480101012001010107000000000000000000000000000000000000
      0000000000000101010101010103010101050101010501010103010101010000
      0000000000000000000000000000000000000000000000000000000000000101
      010101010122160E0B93BF7055FFC07056FFC07056FF190F0C9A010101340101
      0109010101050101010200000000000000005C5C5CC9FDFDFDFF36B054FF43C8
      8FFF52CF9CFF4ECD99FF3FC891FFDFF5EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFBFDFBFFA1DEBBFFB3E6CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEE3
      BEFF54AB45FF68C98EFF52C486FF2EC182FF27C183FF2DC386FF4ECD99FF52CF
      9CFF44C78BFF36AF51FFFDFDFDFF575757C95C5C5CC9FDFDFDFF36B054FF43C8
      8FFF52CF9CFF4ECD99FFCCF1E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEE3BFFF4AB45CFF52CF
      9CFF44C78BFF36AF51FFFDFDFDFF575757C90000000000000000000000000101
      0107F0A35BFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFE2E2E2FF03B503FF38D1
      38FF38D138FF38D138FF38D138FF03B503FF7E7E7EFFC5C4C5FFD2CDD2FFDC91
      59FF020102480101012001010107000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010101010101020101010401010107010101090101010B010101090101
      0105010101020000000000000000000000007B7B7BD8EEF8F0FF33AE4FFF47CA
      92FF52CF9CFF52CF9CFF52CE9CFFEBF9F3FFFFFFFFFFFFFFFFFFFFFFFFFFF7FC
      F8FF90D7AAFF6BCB94FF71CE9AFFEAF8F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF8BBD69FF5BB86AFF5FC181FF57BE7BFF3AC081FF4BCC97FF52CF9CFF52CF
      9CFF47C88EFF34AD4BFFEEF8F0FF747474D87B7B7BD8EEF8F0FF33AE4FFF47CA
      92FF52CF9CFF52CF9CFFD3F3E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEE3BFFF4AB45DFF52CF
      9CFF47C88EFF34AD4BFFEEF8F0FF747474D80000000000000000000000000101
      0107F0A45EFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEE
      EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFE3E3E3FF03B503FF38D1
      38FF38D138FF38D138FF38D138FF03B503FF7F7F7FFFC6C5C6FFD2CDD2FFDC91
      59FF020102480101012001010107000000000000000001010103010101090101
      010F010101160101011901010119010101190101011901010119010101190101
      011801010116010101110101010B010101050101010100000000000000000000
      0000000000000000000001010101010101060101010E01010114010101140101
      010E010101060101010100000000000000007B7B7BD8EEF8F0FF34AB48FF46C9
      92FF52CF9CFF52CF9CFF5DCB91FFA8DEB6FFFFFFFFFFFFFFFFFFF2F9F2FF81CE
      99FF63C486FF65C689FF66C78BFF95D9B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF4F9F0FF5BA533FF57BC74FF5BBE78FF6CC581FF5CCA90FF52CF9CFF52CF
      9CFF47C88EFF34A944FFEEF7EFFF747474D87B7B7BD8EEF8F0FF34AB48FF46C9
      92FF52CF9CFF52CF9CFFD3F2E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEE3BFFF4AB45DFF52CF
      9CFF47C88EFF34A944FFEEF7EFFF747474D80000000000000000000000000101
      0107F0A660FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEEE
      EEFFEBEBEBFFE8E8E8FFE5E5E5FFE4E4E4FFE4E4E4FFDCDCDCFF03B503FF37D2
      37FF37D237FF37D237FF37D237FF03B503FF7B7B7BFFC0C0C0FFCBC7CBFFD28D
      5BFF02010250010101290101010E0101010400000000010101050101010E0101
      01740101017D0202028202020282020202820202028202020282020202820202
      02810101017F010101620101012F0101010A0101010300000000000000000000
      0000000000000101010101010106010101100101011E01010153010101530101
      011E010101100101010601010101000000005B5B5BC9FDFDFDFF36A73EFF43C8
      8FFF52CF9CFF57CA90FF67C27DFF70C682FFEBF7EDFFECF7EDFF73C788FF59BE
      7AFF5CBF7EFF5EC081FF5FC181FF60C281FFD0EDDAFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC9E0B8FF50A73BFF6FC582FF6BC481FF66C27BFF56CA8FFF52CF
      9CFF45C78BFF36A53AFFFDFDFDFF575757C95B5B5BC9FDFDFDFF36A73EFF43C8
      8FFF52CF9CFF57CA90FFD7EFDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCEE3BFFF4BB45AFF52CF
      9CFF45C78BFF36A53AFFFDFDFDFF575757C90000000000000000000000000101
      0107F0A662FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFECEC
      ECFFE2E2E2FFDADADAFFD0D0D0FFCDCDCDFFCDCDCDFFC7C7C7FF03B503FF37D2
      37FF37D237FF37D237FF37D237FF03B503FF737373FFB2B1B2FFB8B4B8FFBC81
      51FF020102630101013D0101011E0101010E00000000010101062CADD6FF2CAD
      D6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CAD
      D6FF175C70E2061115A901010160010101120101010700000000000000000000
      0000010101010101010601010110010101207FC77FFF7FC77FFF010101690101
      015D010101200101011001010106010101012E2E2EA8FEFEFEFF4FAC47FF3DC4
      85FF53CC96FF5DBF72FF62C076FF66C27BFF90D4A0FF7ECB8EFF6FC683FF65C2
      7FFF5CBE79FF58BD77FF58BD78FF58BD78FF6DC586FFF7FCF9FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8ABD68FF60B761FF65C179FF61BF74FF5DBE70FF53CC
      96FF3FC281FF4FAB44FFFCFCFCFF2B2C2BA82E2E2EA8FEFEFEFF4FAC47FF3DC4
      85FF53CC96FF5DBF72FF83CE92FF90D29BFF93D39EFF96D4A1FF98D5A4FF94D4
      A2FF8CD19CFFACDEB8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA1CA84FF8CD0
      9BFF94D4A1FF97D5A3FF95D4A1FF92D39DFF8FD29AFF81C984FF59B862FF53CC
      96FF3FC281FF4FAB44FFFCFCFCFF2B2C2BA80000000000000000000000000101
      0107F0A864FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFE9E9
      E9FFDADADAFF939393FF838383FF818181FF818181FF7D7D7DFF03B503FF35D3
      35FF35D335FF35D335FF35D335FF03B503FF6A6A6AFF707070FF747174FF7650
      33FF0202029F02020285010101670101011700000000010101072CADD6FF2CAD
      D6FF63EAFEFF8EF0FEFF95F1FEFF9AF1FEFF9CF2FEFF9AF1FEFF95F1FEFF8EF0
      FEFF83EEFEFF175C73E30101017F010101360101010D00000000000000000000
      0000010101020101010A010101187AC57AFF7DC67DFF7EC67EFF7CC67CFF0101
      016901010156010101180101010B010101030D0D0D78FCFCFCFF7DBF70FF37B9
      6BFF5ABF76FF5EB966FF5EBD6DFF60BF73FF64C178FF67C27CFF6BC480FF6EC5
      81FF70C683FF6FC583FF6CC581FF6AC481FF6AC481FFADDFBAFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF6FAF3FF62A736FF5DBB6AFF5EBC6BFF5EB964FF5ABE
      74FF38B766FF7DBE6CFFF8F8F8FF0C0C0C780D0D0D78FCFCFCFF7DBF70FF37B9
      6BFF5ABF76FF5EB966FF5EBD6DFF60BF73FF64C178FF67C27CFF6BC480FF6EC5
      81FF70C683FF99D7A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7CB353FF6FC6
      83FF6DC581FF6AC37FFF66C27BFF63C077FF5FBE72FF5EBC6BFF5EB964FF5ABE
      74FF38B766FF7DBE6CFFF8F8F8FF0C0C0C780000000000000000000000000101
      0107F0A866FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFE6E6
      E6FF03B503FF03B503FF03B503FF03B503FF03B503FF03B503FF03B503FF32D4
      32FF32D432FF32D432FF32D432FF03B503FF03B503FF03B503FF03B503FF03B5
      03FF03B503FF03B503FF010101770101012100000000010101072CADD6FF2CAD
      D6FF63EAFEFF86EFFEFF8EF0FEFF92F0FEFF94F1FEFF92F0FEFF8EF0FEFF86EF
      FEFF7FEEFEFF2CADD6FF061216AC010101670101011500000000000000000000
      0000010101020101010A73C273FF78C478FF7AC57AFF7BC57BFF7AC57AFF76C3
      76FF01010153010101420101010B0101010302020236F7F7F7FFB5DAA8FF34A4
      32FF5AB04FFF5FB55CFF5EB863FF5EBB6AFF5EBD70FF61BF74FF63C178FF66C2
      7BFF68C37DFF6AC37FFF6BC481FF6CC481FF6CC481FF6CC481FFDAF0DFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD9E9CCFF4FA129FF5EB761FF5FB45AFF5BAF
      4CFF35A32CFFB5DAA6FFEEEEEEFF0202023602020236F7F7F7FFB5DAA8FF34A4
      32FF5AB04FFF5FB55CFF5EB863FF5EBB6AFF5EBD70FF61BF74FF63C178FF66C2
      7BFF68C37DFF95D5A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7CB352FF67C2
      7DFF65C17AFF63C077FF60BF73FF5EBD6EFF5EBB68FF5EB862FF5FB45AFF5BAF
      4CFF35A32CFFB5DAA6FFEEEEEEFF020202360000000000000000000000000101
      0107F0AA6AFFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFE6E6
      E6FF03B503FF20D220FF22D322FF23D423FF25D525FF27D627FF2AD62AFF2CD6
      2CFF2ED62EFF2ED62EFF2DD62DFF2BD62BFF29D629FF27D527FF25D425FF24D3
      24FF22D322FF03B503FF0101017D0101012500000000010101072CADD6FF6BEB
      FEFF2CADD6FF63EAFEFF81EEFEFF86EFFEFF87EFFEFF86EFFEFF81EEFEFF7EED
      FEFF75ECFEFF6BEBFEFF175C73E3020202850101013C00000000000000000101
      0101010101066CBF6CFF71C171FF74C274FF76C376FF77C477FF76C376FF73C2
      73FF70C170FF010101110101010A0101010301010101888888DEF5FAF4FF449E
      16FF4BA329FF5FB150FF5FB458FF5EB65FFF5EB965FF5EBB6AFF5EBD6EFF5FBE
      72FF60BF74FF62C076FF63C177FF63C178FF63C178FF63C177FF75C884FFF5FB
      F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0D296FF51A330FF5FB04DFF4BA3
      25FF449D15FFF5F9F4FF808080DE0101010101010101888888DEF5FAF4FF449E
      16FF4BA329FF5FB150FF5FB458FF5EB65FFF5EB965FF5EBB6AFF5EBD6EFF5FBE
      72FF60BF74FF8FD39DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7CB352FF60BF
      74FF5FBE71FF5EBD6DFF5EBB69FF5EB964FF5FB65EFF5FB356FF5FB04DFF4BA3
      25FF449D15FFF5F9F4FF808080DE010101010000000000000000000000000101
      0107F0AD6DFFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFE6E6
      E6FF03B503FF20D220FF22D322FF23D423FF25D525FF28D628FF2BD62BFF2FD6
      2FFF31D631FF32D632FF2FD62FFF2CD62CFF29D629FF27D527FF25D425FF24D3
      24FF22D322FF03B503FF0101017D0101012500000000010101072CADD6FF5EE9
      FEFF2CADD6FF63EAFEFF74ECFEFF78EDFEFF79EDFEFF78EDFEFF74ECFEFF6EEB
      FEFF67EAFEFF5EE9FEFF2CADD6FF061216AC0101016C00000000000000000101
      01030101010D01010117010101240101013180C780FF80C780FF010101560101
      010601010104010101060101010401010101000000000D0D0D78FBFBFBFF97C9
      81FF3A9706FF5BAA36FF60AF4AFF5FB253FF5FB459FF5EB65FFF5EB863FF5EBA
      67FF5EBB6AFF5EBC6BFF5EBD6DFF5EBD6EFF5EBD6DFF5EBD6DFF5EBC6BFF96D3
      9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F9F2FF69B14BFF5BAA33FF3A96
      05FF98C981FFF5F5F6FF0C0C0C7800000000000000000D0D0D78FBFBFBFF97C9
      81FF3A9706FF5BAA36FF60AF4AFF5FB253FF5FB459FF5EB65FFF5EB863FF5EBA
      67FF5EBB6AFF8CD096FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7CB352FF5EBB
      69FF5EBA66FF5EB862FF5FB65EFF5FB357FF5FB151FF60AF47FF5BAA33FF3A96
      05FF98C981FFF5F5F6FF0C0C0C78000000000000000000000000000000000101
      0107F1B073FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFE8E8
      E8FF03B503FF20D220FF22D322FF23D423FF25D525FF28D628FF2CD62CFF30D6
      30FF33D633FF34D634FF31D631FF2DD62DFF2AD62AFF27D527FF25D425FF24D3
      24FF22D322FF03B503FF010101760101012100000000010101072CADD6FF4EE7
      FEFF55E8FEFF2CADD6FF63EAFEFF63EAFEFF64EAFEFF63EAFEFF60EAFEFF5CE9
      FEFF55E8FEFF4EE7FEFF4EE7FEFF17596EE00101017F00000000000000000101
      010501010110010101460101015486CB86FF87CC87FF88CC88FF0101011D0101
      010E01010103000000000000000000000000000000000101010EABABABEBF4F9
      F3FF4E9E22FF449A11FF5FAB36FF60AD3FFF60B04AFF5FB151FF5FB356FF5FB4
      5AFF5FB65DFF5EB760FF5EB761FF5EB862FF5EB762FF5EB761FF5FB65FFF5FB5
      5DFFBBE0B8FFFFFFFFFFFFFFFFFFEFF6EAFF7DBB5DFF5FAB35FF449A11FF4E9D
      21FFF4F9F3FFA2A2A2EB0101010E00000000000000000101010EABABABEBF4F9
      F3FF4E9E22FF449A11FF5FAB36FF60AD3FFF60B04AFF5FB151FF5FB356FF5FB4
      5AFF5FB65DFF8DCD8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7CB352FF5FB5
      5DFF5FB459FF5FB355FF5FB150FF60AF48FF60AD3DFF5FAB35FF449A11FF4E9D
      21FFF4F9F3FFA2A2A2EB0101010E000000000000000000000000000000000101
      0107F1B277FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFECEC
      ECFF03B503FF20D220FF22D322FF23D423FF25D525FF29D629FF2ED62EFF33D6
      33FF37D637FF37D637FF34D634FF2FD62FFF2BD62BFF27D527FF25D425FF24D3
      24FF22D322FF03B503FF010101640101011700000000010101062CADD6FF63E9
      FDFF68EAFDFF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF2CAD
      D6FF2CADD6FF2CADD6FF2CADD6FF2CADD6FF0204045900000000000000000101
      01058FCE8FFF90CF90FF92D092FF92D092FF93D093FF0101011D010101100101
      010601010101000000000000000000000000000000000000000006070663F8F8
      F8FFCCE3C2FF3A9006FF4B9C1AFF60A934FF60AB36FF60AD3CFF60AE44FF60B0
      4BFF5FB14FFF5FB151FF5FB253FF5FB254FF5FB254FF5FB253FF5FB151FF5FB0
      4EFF63B14DFFD9ECD1FFE7F2E1FF74B54FFF60A934FF4B9B1AFF3A9006FFCCE3
      C2FFF0F0F1FF060606630000000000000000000000000000000006070663F8F8
      F8FFCCE3C2FF3A9006FF4B9C1AFF60A934FF60AB36FF60AD3CFF60AE44FF60B0
      4BFF5FB14FFF8EC984FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7CB351FF5FB0
      4EFF60AF49FF60AE42FF60AC3AFF60AB35FF60A934FF4B9B1AFF3A9006FFCCE3
      C2FFF0F0F1FF0606066300000000000000000000000000000000000000000101
      0107F2B67EFFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF0F0
      F0FF03B503FF03B503FF03B503FF03B503FF03B503FF03B503FF03B503FF5ED6
      5EFF5ED65EFF5ED65EFF5ED65EFF03B503FF03B503FF03B503FF03B503FF03B5
      03FF03B503FF03B503FF010101170101010E00000000010101052CADD6FF81ED
      FDFF81EEFEFF83EEFDFF85EEFDFF85EEFEFF86EEFDFF85EEFEFF85EEFDFF83EE
      FDFF2CADD6FF0101017101010111010101090101010500000000000000000101
      01039ED59EFF9FD69FFFA0D6A0FFA0D6A0FF010101160101010E010101060101
      0101000000000000000000000000000000000000000000000000000000003535
      35B0FBFBFBFFACD29BFF398E03FF4B991AFF60A734FF60A935FF60AA35FF60AB
      36FF60AC38FF60AD3BFF60AD3DFF60AD3EFF60AD3EFF60AD3DFF60AC3AFF60AC
      37FF60AB35FF70B248FF6FB047FF60A634FF4B991AFF398D03FFACD19BFFF7F7
      F8FF313331B00000000000000000000000000000000000000000000000003535
      35B0FBFBFBFFACD29BFF398E03FF4B991AFF60A734FF60A935FF60AA35FF60AB
      36FF60AC38FF82BF67FFD6EACBFFD6EACBFFD6EACBFFD6EACBFF75B14AFF60AC
      37FF60AB35FF60AA35FF60A835FF60A634FF4B991AFF398D03FFACD19BFFF7F7
      F8FF313331B00000000000000000000000000000000000000000000000000101
      0107F3B881FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF4F4
      F4FFF1F1F1FFEEEEEEFFEBEBEBFFEAEAEAFFEAEAEAFFE1E1E1FF03B503FF76D8
      76FF76D876FF76D876FF76D876FF03B503FF7F736AFFC59872FF010101380101
      011A0101010F0101010A010101070101010400000000010101032CADD6FFA4F2
      FDFFA5F2FEFFA6F2FDFFA7F3FEFFA7F3FEFF2CADD6FF2CADD6FF2CADD6FF2CAD
      D6FF2CADD6FF0101010D01010108010101020000000000000000000000000101
      0101010101030101010601010108010101080101010601010103010101010000
      0000000000000000000000000000000000000000000000000000000000000101
      010F696969D1FCFCFCFFACD19BFF3A8D06FF449311FF5CA22FFF61A635FF61A6
      35FF60A835FF60A835FF60A935FF60A935FF60A935FF60A935FF60A835FF60A7
      35FF61A635FF61A535FF5CA22FFF449311FF3A8C06FFACD19BFFF9F9F9FF6363
      63D10101010F0000000000000000000000000000000000000000000000000101
      010F696969D1FCFCFCFFACD19BFF3A8D06FF449311FF5CA22FFF61A635FF61A6
      35FF60A835FF60A835FF60A935FF60A935FF60A935FF60A935FF60A835FF60A7
      35FF61A635FF61A535FF5CA22FFF449311FF3A8C06FFACD19BFFF9F9F9FF6363
      63D10101010F0000000000000000000000000000000000000000000000000101
      0107F3BC87FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFECECECFF03B503FF8ADB
      8AFF8ADB8AFF8ADB8AFF8ADB8AFF03B503FF806349FF010101460101011A0101
      0104000000000000000000000000000000000000000001010101010101042CAD
      D6FFD0F8FEFFD0F8FEFFD0F8FEFF2CADD6FF010101150101010D010101080101
      0106010101050101010401010102010101010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010118686868D1FBFBFBFFCBE2C1FF4E9721FF3B8B05FF4C961BFF5CA1
      2FFF61A435FF61A435FF61A435FF61A535FF61A435FF61A435FF61A435FF61A4
      35FF5CA02FFF4C961BFF3B8B05FF4E9621FFCBE2C1FFF7F7F8FF636363D10101
      0118000000000000000000000000000000000000000000000000000000000000
      000001010118686868D1FBFBFBFFCBE2C1FF4E9721FF3B8B05FF4C961BFF5CA1
      2FFF61A435FF61A435FF61A435FF61A535FF61A435FF61A435FF61A435FF61A4
      35FF5CA02FFF4C961BFF3B8B05FF4E9621FFCBE2C1FFF7F7F8FF636363D10101
      0118000000000000000000000000000000000000000000000000000000000101
      0107F4BF8CFFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFEDEDEDFF03B503FF9ADF
      9AFF9ADF9AFF9ADF9AFF9ADF9AFF03B503FF0202028D010101320101010F0000
      0000000000000000000000000000000000000000000000000000010101010101
      01042CADD6FF2CADD6FF2CADD6FF0101010F0101010901010104010101010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101010F343534B0F6F6F6FFF4F9F4FF98C481FF459015FF3988
      03FF428E0FFF4C941BFF529823FF559A27FF559A27FF529823FF4C941BFF428E
      0FFF398803FF459015FF98C381FFF4F8F3FFF0F0F1FF313331B00101010F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101010F343534B0F6F6F6FFF4F9F4FF98C481FF459015FF3988
      03FF428E0FFF4C941BFF529823FF559A27FF559A27FF529823FF4C941BFF428E
      0FFF398803FF459015FF98C381FFF4F8F3FFF0F0F1FF313331B00101010F0000
      0000000000000000000000000000000000000000000000000000000000000101
      0105F5C290FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
      F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFEFEFEFFF03B503FFA4E2
      A4FFA4E2A4FFA4E2A4FFA4E2A4FF03B503FF0101017C010101250101010A0000
      0000000000000000000000000000000000000000000000000000000000000101
      0101010101020101010401010105010101040101010201010101000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000006060663A7A7A8EBF8F8F9FFF5F9F5FFB5D4
      A6FF7EB15EFF519726FF3A8706FF398603FF398603FF3A8706FF519626FF7EB1
      5EFFB5D4A6FFF5F9F4FFF5F5F6FFA2A2A2EB0606066300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000006060663A7A7A8EBF8F8F9FFF5F9F5FFB5D4
      A6FF7EB15EFF519726FF3A8706FF398603FF398603FF3A8706FF519626FF7EB1
      5EFFB5D4A6FFF5F9F4FFF5F5F6FFA2A2A2EB0606066300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0102F5C393FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFF5C5
      96FFF5C596FFF5C596FFF5C596FFF5C596FFF5C596FFEEBF91FF03B503FFACE4
      ACFFACE4ACFFACE4ACFFACE4ACFF03B503FF0101016501010117010101070000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010E0C0C0C78848484DEF1F1
      F1FFF9F9F9FFFDFDFDFFFDFDFDFFEEF6EDFFEEF6EDFFFDFDFDFFFCFCFCFFF8F8
      F8FFEEEEEEFF808080DE0C0C0C780101010E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010E0C0C0C78848484DEF1F1
      F1FFF9F9F9FFFDFDFDFFFDFDFDFFEEF6EDFFEEF6EDFFFDFDFDFFFCFCFCFFF8F8
      F8FFEEEEEEFF808080DE0C0C0C780101010E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000010101020101010501010106010101070101010701010107010101070101
      010701010107010101070101010701010107010101070101010B03B503FF03B5
      03FF03B503FF03B503FF03B503FF03B503FF010101170101010E010101040000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101010202
      02360C0C0C782B2B2BA7585959CA747474D8747474D8585858CA292A29A70C0C
      0C78020202360101010100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101010202
      02360C0C0C782B2B2BA7585959CA747474D8747474D8585858CA292A29A70C0C
      0C78020202360101010100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010101010101040101
      01070101010A0101010B0101010B0101010A0101010701010104010101010000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000400100000100010000000000001400000000000000000000
      000000000000000000000000FFFFFF00FC03FFF1FC03FFF1FFFFFFFF00000000
      F000FFE0F000FFE0FFFFFFFF00000000E0007FC0E0007FC0FFFFFFFF00000000
      C0003F80C0003F80FFFFFFFF00000000C0001F01C0003F01FFE7C7FF00000000
      80001E0380001E03FF0201FF0000000080001C0780001C07F00000FF00000000
      8000180F8000180FC000003F000000008000001F8000001F8000001F00000000
      8000003F8000003F80000007000000008000007F8000007F0000000300000000
      800000FF800000FF0000000100000000800001FF800001FF0000000300000000
      C00003FFC00003FF8000000300000000C0000FFFC0000FFFC000000300000000
      80001FFF80001FFFE00000030000000080000FFF80000FFFF800000300000000
      00000FFF00000FFFFE00000700000000000007FF000007FFFF80000700000000
      000007FF000007FFFFE0000700000000000007FF000007FFFFFF000300000000
      000007FF000007FFFFFF000300000000000007FF000007FFFFFF800300000000
      000007FF000007FFFFFF800100000000000007FF000007FFFFFFC00100000000
      00000FFF00000FFFFFFFC0000000000080000FFF80000FFFFFFFC00000000000
      80001FFF80001FFFFFFFE07F00000000C0001FFFC0001FFFFFFFFFFF00000000
      E0003FFFE0003FFFFFFFFFFF00000000F0007FFFF0007FFFFFFFFFFF00000000
      FC01FFFFFC01FFFFFFFFFFFF00000000FFFFFFFFFFC003FFC0000000FFFFFFF1
      FFFC3FFFFF0000FF80000000FFFFFFE0FFC003FFFE00007F80000000FFFFFFC0
      FF0000FFF800001F80000000FFFFFF80FE00007FF000000F80000000FFFFFF01
      F800003FE000000780000000FFFFFE03F800001FE000000780000000FFFFFC07
      F000000FC000000380000000FFFFF80FE00000078000000180000000FFFFF01F
      E00000078000000180000000FFFFE03FC00000030000000080000000FFFFC07F
      C00000030000000080000000FE0380FFC00000030000000080000000F80081FF
      800000030000000080000000E00003FF800000010000000080000000C0000FFF
      80000001000000008000000080001FFF80000001000000008000000080000FFF
      80000001000000008000000000000FFF800000030000000080000000000007FF
      C00000030000000080000000000007FFC00000030000000080000000000007FF
      C00000030000000080000000000007FFE00000078000000180000000000007FF
      E00000078000000180000000000007FFF000000FC000000380000000000007FF
      F000001FE00000078000000000000FFFF800001FE00000078000000080000FFF
      FC00007FF000000F8000000080001FFFFF0000FFF800001F80000000C0001FFF
      FFC003FFFE00007FE0000000E0003FFFFFF81FFFFF0000FFF0000001F0007FFF
      FFFFFFFFFFC003FFFFFFFFFFFC01FFFFFFF800FFFFE0001FFFFFFFFFFF800001
      C00000FF00000007E000001FE0000001C00000FF00000003C000000FC0000001
      C00000FF000000018000000F80000001C00000FF000000018000000780000001
      C00000FF000000008000000780000001C00000FF000000008000000380000001
      C00000FF000000008000000380000001C00000FF000000008000000180000001
      C00000FF000000008000000180000001C00000FF000000008000000080000001
      C00000FF000000008000000080000001C00000FF000000008000000080000001
      C00000FF000000018000000080000001C00000FF000000018000000080000001
      C00000FF000000038000000080000001C00000FF000000078000000080000001
      C00000FF0000001F8000000080000001C00000FF000003FF8000000080000001
      C00000FF000003FF8000000080000003C00000FF000003FF8000000F80000007
      C000007F000003FF8000000F80000007C000003F000003FF8000001F80000007
      C000001F000003FFC000003F80000007C000000F000003FFE0007FFF80000007
      C0000007000003FFF000FFFF80000007C0000003000003FFF801FFFF80000007
      C0000083000003FFFC03FFFF80000007FC0000C3F00003FFFFFFFFFF80000007
      FE001FE7F8007FFFFFFFFFFFC000000FFF81FFFFFE07FFFFFFFFFFFFE000001F
      FFC1FFFFFF07FFFFFFFFFFFFFF0003FFC000FFFFFFC003FFFFE0001FFFE0001F
      80000007FF0000FF000000070000000780000003FE00007F0000000300000003
      80000003F800001F000000010000000180000003F000000F0000000100000001
      80000003E0000007000000000000000080000003E00000070000000000000000
      80000003C0000003000000000000000080000003800000010000000000000000
      8000000380000001000000000000000080000003000000000000000000000000
      8000000300000000000000000000000080000003000000000000000000000000
      8000000300000000000000010000000180000003000000000000000100000001
      C0000003000000000000000300000003E0000003000000000000000700000007
      E0000003000000000000001F0000001FE000000300000000000003FF000003FF
      E000000300000000000003FF000003FFE000000300000000000003FF000003FF
      E000000300000000000003FF000003FFE000000380000001000003FF000003FF
      E000000380000001000003FF000003FFE0000007C0000003000003FF000003FF
      E0000007E0000007000003FF000003FFE000000FE0000007000003FF000003FF
      E000001FF000000F000003FF000003FFE000003FF800001FF00003FFF00003FF
      E000007FFE00007FF8007FFFF8007FFFE00000FFFF0000FFFE07FFFFFE07FFFF
      FFFFFFFFFFC003FFFF07FFFFFF07FFFFFFC003FFFFFFE01FFFC003FFFE00FFFF
      FF0000FFFFFE0007FF0000FFFC001FFFFE00007FFFE00003FE00007FFE0001FF
      F800001FFC000001F800001FFFE0003FF000000FC0000001F000000FFFE00003
      E000000780000000E0000007FFC00F00E000000780000000E0000007FFC003F8
      C000000380000000C0000003FF8000FF800000018000000080000001FF80007F
      800000018000000080000001FF00001F000000008000000000000000FF00000F
      000000008000000000000000FE000003000000008000000000000000FE000001
      000000008000000100000000FC000001000000008000000100000000FC000001
      000000008000000300000000F8000003000000008000000300000000F8000003
      000000008000000300000000F8000003000000000000000300000000F8000007
      000000000000000300000000F8000007000000008000000000000000FC00000F
      00000000C000000000000000FC00000F80000001E000000080000001FE00001F
      80000001F000000180000001FE00001FC0000003FC000003C0000003FF00003F
      E0000007FE000007E0000007FF80003FE0000007FF00000FE0000007FF8000FF
      F000000FFFF8001FF000000FFFC003FFF800001FFFF8003FF800001FFFC00FFF
      FE00007FFFF87C7FFE00007FFFE03FFFFF0000FFFFF87FFFFF0000FFFFE0FFFF
      FFC003FFFFFFFFFFFFC003FFFFF3FFFF00000000FFFFFFFFFE00FFFFFC000000
      00000000FFFFFFFFF0003FFFE000000000000000FFFFFFFF80000FFF00000000
      000000008000000000000FFF00000000000000008000000000000FFF00000000
      000000008000000000000FFF00000000000000008000000000000FFF00000000
      000000008000000000001FFF00000000000000008000000000007FFF00000000
      000000008000000000007FFF00000000000000008000000080007FFF00000000
      0000000080000000E0007FFF000000000000000080000000F0000FFF00000000
      0000000080000000E00007FF000000000000000080000000E00207FF00000000
      0000000080000000C00607FF000000000000000080000000C007007F00000000
      0000000080000000C007807F000000000000000080000000C003F07F00000000
      0000000080000000C003F800000000000000000080000000C003FC0000000000
      0000000080000001C003F800000000000000000080000003C007FC0000000000
      00000000C0000007C00FFC010000000000000000E0003FFFE01FFC0300000001
      00000000F0007FFFFFFFFE070000000300000000F801FFFFFFFFFE0F00000007
      00000000FC03FFFFFFFFFE070000000F00000000FFFFFFFFFFFFFE070000001F
      00000000FFFFFFFFFFFFFE070000007F00000000FFFFFFFFFFFFFC07000001FF
      00000000FFFFFFFFFFFFFE0F00000FFFFFFFFFFF803FFFFFFFC003FF00000000
      C0000001803FC3FFFF0000FF00000000C0000001801F81FFFE00007F00000000
      C00000018000810FF800001F00000000C000000180000007F000000F00000000
      C000000180000007E000000700000000C000000180000007E000000700000000
      C0000001E0000007C000000300000000C0000001F000000F8000000100000000
      C0000003F80000018000000100000000C0000003F80004010000000000000000
      C0000001F80000010000000000000000C0000001F80000010000000000000000
      C0000001F80000010000000000000000C0000001FC0000010000000000000000
      C0000001F000000F0000000000000000C0000001E00000070000000000000000
      C0000001E00000070000000000000000C0000001E00000070000000000000000
      C0000001E00800070000000000000000C0000001F00000070000000000000000
      C0000003FC0000010000000000000000C0000003F80000008000000100000000
      C0000003F80000008000000100000000C0000003F8000000C000000300000000
      C0000007F8000000E000000700000000C000000FFC204000E000000700000000
      C000001FFFE07E00F000000F00000000C000003FFFF0FF00F800001F00000000
      C000007FFFFFFF80FE00007F00000000C00000FFFFFFFFC0FF0000FF00000000
      E00001FFFFFFFFFFFFC003FF00000000E0000001FFFF80FF80000001FFFFFFFF
      E00000010000000F80000001E01FFFFFE00000010000000F80000001E00FFFFF
      E00000010000000F80000001E007FFFFE00000010000000F80000001E003FFFF
      E00000010000000F80000001E0001FFFE00000010000000F80000001E0000FFF
      E00000010000000F80000001E00007FFE00000010000000F80000001E00003FF
      E00000010000000780000001F00001FFE00000010000000780000001F80000FF
      E00000010000000380000001FC00007FE00000010000000380000001FE00003F
      E00000010000000180000001FE00001FE00000010000000080000001FE00000F
      E00000010000000080000001FE000007E00000010000000080000001FE000007
      E00000010000000080000001FF000007E00000010000000180000001FF800007
      E00000010000000F80000001FFC00007E00000010000000FC0000003FFE00003
      E00000010000000FE0000070FFF00001E00000010000000FF0000060FFF80000
      E00000010000000FF8000000FFFC0000E00000010000000FFC020000FFFE0000
      E00000030000000FFFFE0000FFFF0000E00000070000001FFFFE0000FFFF8000
      E000000F0000003FFFFE0000FFFFFC00E000001F0000007FFFFF0003FFFFFE00
      E000003F000000FFFFFFF807FFFFFF00E000007F000001FFFFFFFFFFFFFFFF80
      FFFFFFFF000003FFFFFFFFFFFFFFFFFF000000000000000000000000FFC003FF
      000000000000000000000000FF0000FF000000000000000000000000FE00007F
      000000000000000000000000F800001F000000000000000000000000F000000F
      000000000000000000000000E0000007000000000000000000000000E0000007
      000000000000000000000000C000000300000000000000000000000080000001
      0000000000000000000000008000000100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000080000001
      00000000000000000000000080000001000000000000000000000000C0000003
      000000000000000000000000E0000007000000000000000000000000E0000007
      000000000000000000000000F000000F000000000000000000000000F800001F
      000000000000000000000000FE00007F000000000000000000000000FF0000FF
      000000000000000000000000FFC003FFFFFFC001FFC003FFFFC003FFE0000001
      FFFF8000FF0000FFFF0000FFE0000001FFFF8000FE00007FFE00007FE0000001
      FE010000F800001FF800001FE0000001FC010000F000000FF000000FE0000001
      F8010000E0000007E0000007E0000001F8010000E0000007E0000007E0000001
      C0010000C0000003C0000003E0000001C00100008000000180000001E0000001
      C00300008000000180000001E0000001C00300000000000000000000E0000001
      C00300000000000000000000E0000001E00780000000000000000000E0000001
      F00FC0000000000000000000E0000001F81FE0030000000000000000E0000001
      FFFFF0070000000000000000E000000180007C030000000000000000E0000000
      800078010000000000000000E0000000800070000000000000000000E0000000
      800070000000000000000000E0000000800070000000000000000000E0000000
      800060000000000000000000E0000000800060008000000180000001E0000000
      800060078000000180000001E000000080006007C0000003C0000003E0000000
      8000600FE0000007E0000007E00000008000E01FE0000007E0000007E000000F
      8000FFFFF000000FF000000FE000001FC01FFFFFF800001FF800001FE000001F
      E03FFFFFFE00007FFE00007FE000001FFFFFFFFFFF0000FFFF0000FFF000001F
      FFFFFFFFFFC003FFFFC003FFFFFF801F00000000000000000000000000000000
      000000000000}
  end
  object cxImageList2: TcxImageList
    Left = 248
    Top = 184
    Bitmap = {
      494C010101000400680110001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000878787E2999999FF999999FF9999
      99FF999999FF999999FF999999FF999999FF999999FF999999FF999999FF9999
      99FF999999FF999999FF878787E2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009B9B9BFFE5E5E5FEE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE5E5E5FE9B9B9BFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009D9D9DFFE7E7E7FFE8E8E8FFE8E8
      E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
      E8FFE8E8E8FFE7E7E7FF9D9D9DFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009F9F9FFFE8E8E8FF42CD58FF41CC
      57FF41CC57FF40CC56FF40CC55FF40CC55FF40CC55FF43CB5AFF4DCB66FF54CB
      70FF54CB70FFE8E8E8FF9F9F9FFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A1A1A1FFEAEAEAFF44B14EFF52DA
      62FF53E466FF54EB6AFF54F26DFF54F56EFF54F66EFF55F771FF59F776FF5CF7
      7AFF4ED167FFEAEAEAFFA1A1A1FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A3A3A3FFECECECFF519E50FF60BC
      60FF60BE61FF61C062FF61C262FF61C564FF61CB66FF62D06AFF65D76FFF68DC
      73FF58BB61FFECECECFFA3A3A3FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5A5A5FFEFEFEFFF7EAA75FF9ACA
      8EFF9ECB91FFA3CD96FFA9D09BFFB1D4A1FFB9D9A9FFC1DEB1FFCAE4B9FFD1E8
      C0FFB1C5A3FFEFEFEFFFA5A5A5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A8A8A8FFF1F1F1FFBBC0A6FFDFE4
      C5FFE2E5C7FFE5E6CAFFE8E7CDFFECE9D0FFF1EBD4FFF5EDD8FFF9EEDCFFFDF0
      DFFFD7CCBDFFF1F1F1FFA8A8A8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AAAAAAFFF3F3F3FFD8CBBCFFFFF0
      E0FFFFF2E3FFFFF2E4FFFFF2E5FFFFF2E5FFFFF2E4FFFEF1E2FFFEF0DFFFFEEF
      DDFFD7CBBBFFF3F3F3FFAAAAAAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACACACFFF5F5F5FFD8CABBFFFFF2
      E5FFFFF6EEFFFFF8F0FFFFF8F1FFFFF8F1FFFFF7F0FFFEF5EBFFFEF1E1FFFEED
      D8FFD7C9B7FFF5F5F5FFACACACFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AEAEAEFFF8F8F8FFD8C6B0FFFFEE
      DBFFFFF3E6FFFFF4E9FFFFF4EAFFFFF5EBFFFFF6ECFFFEF4E7FFFEEDD9FFFEE8
      CDFFD7C5AEFFF8F8F8FFAEAEAEFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0B0B0FFFAFAFAFFD8C0A4FFFFE4
      C4FFFFE5C5FFFFE5C7FFFFE6C9FFFFE8CDFFFFEAD1FFFFEAD1FFFFE7C9FFFFE4
      C3FFD8C1A5FFFAFAFAFFB0B0B0FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B2B2B2FFFCFCFCFFD8CAB9FFD8CA
      B9FFD8CAB9FFD8CAB9FFD8CAB9FFD8CAB9FFD8CAB9FFD8CAB9FFD8CAB9FFD8CA
      B9FFD8CAB9FFFCFCFCFFB2B2B2FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB4B4B4FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A2A2A2E2B7B7B7FFB7B7B7FFB7B7
      B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7
      B7FFB7B7B7FFB7B7B7FFA2A2A2E2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF0000000000000001000000000000
      0001000000000000000100000000000000010000000000000001000000000000
      0001000000000000000100000000000000010000000000000001000000000000
      0001000000000000000100000000000000010000000000000001000000000000
      0001000000000000000100000000000000000000000000000000000000000000
      000000000000}
  end
  object SelQ: TOraQuery
    Left = 560
    Top = 144
  end
  object gvr_nomenclature: TcxGridViewRepository
    Left = 1064
    Top = 264
    object gr_noms_v: TcxGridDBBandedTableView
      PopupMenu = pm_main
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Position = fpTop
      DataController.DataSource = DictView_DS
      DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription]
      DataController.Filter.AutoDataSetFilter = True
      DataController.KeyFieldNames = 'N_ID'
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skCount
          Column = gr_noms_vCOMPILED_NAME_OTDEL
        end
        item
          Format = '0'
          Kind = skSum
          Column = gr_noms_vIS_PHOTO
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1092#1080#1083#1100#1090#1088#1086#1074
      FilterRow.Visible = True
      OptionsBehavior.CellHints = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderEndEllipsis = True
      Styles.Footer = cxStyle2
      Bands = <
        item
          Caption = #1054#1073#1097#1080#1077' '#1076#1072#1085#1085#1099#1077
          FixedKind = fkLeft
          Width = 380
        end
        item
          Caption = #1044#1072#1085#1085#1099#1077' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
          Styles.Content = st_suplier
        end
        item
          Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
        end
        item
          Caption = 'invisible'
          Visible = False
        end>
      object gr_image: TcxGridDBBandedColumn
        Caption = #1048#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
        DataBinding.ValueType = 'Variant'
        PropertiesClassName = 'TcxImageProperties'
        Properties.GraphicClassName = 'TJPEGImage'
        Properties.ImmediatePost = True
        Properties.ReadOnly = True
        Properties.Stretch = True
        Visible = False
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.Moving = False
        Width = 120
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gr_noms_vBRIEF: TcxGridDBBandedColumn
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
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gr_noms_vCOMPILED_NAME_OTDEL: TcxGridDBBandedColumn
        Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1079#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'COMPILED_NAME_OTDEL'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        MinWidth = 100
        Width = 185
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn2: TcxGridDBBandedColumn
        Caption = #1040#1088#1090#1080#1082#1091#1083
        DataBinding.FieldName = 'H_CODE'
        MinWidth = 50
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gr_noms_vIS_PHOTO: TcxGridDBBandedColumn
        Caption = #1060#1086#1090#1086
        DataBinding.FieldName = 'IS_PHOTO'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.DisplayChecked = #1076#1072
        Properties.DisplayUnchecked = #1085#1077#1090
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ReadOnly = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 40
        Options.Editing = False
        Options.HorzSizing = False
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gr_noms_vID_OFFICE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ID_OFFICE'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gr_noms_vCHECKED: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CHECKED'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn4: TcxGridDBBandedColumn
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' ('#1083#1072#1090'.)'
        DataBinding.FieldName = 'F_NAME'
        Options.Editing = False
        Width = 150
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn5: TcxGridDBBandedColumn
        Caption = #1058#1080#1087' ('#1075#1086#1083'.)'
        DataBinding.FieldName = 'HOL_TYPE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 67
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gr_noms_vNAMECODE: TcxGridDBBandedColumn
        Caption = #1050#1086#1076' '#1085#1072#1079#1074#1072#1085#1080#1103
        DataBinding.FieldName = 'NAME_CODE'
        MinWidth = 100
        Options.Editing = False
        Options.HorzSizing = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn6: TcxGridDBBandedColumn
        Caption = 'Bar-'#1082#1086#1076
        DataBinding.FieldName = 'BAR_CODE'
        MinWidth = 100
        Options.Editing = False
        Options.HorzSizing = False
        Styles.Content = st_suplier
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn7: TcxGridDBBandedColumn
        DataBinding.FieldName = 'REMARKS'
        PropertiesClassName = 'TcxTextEditProperties'
        MinWidth = 50
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn8: TcxGridDBBandedColumn
        Caption = #1055#1086#1089#1090#1072#1097#1080#1082
        DataBinding.FieldName = 'S_NAME_RU'
        MinWidth = 50
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn9: TcxGridDBBandedColumn
        Caption = #1042#1077#1089' ('#1074#1086#1076#1072')'
        DataBinding.FieldName = 'WEIGHT'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        MinWidth = 100
        Options.HorzSizing = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gr_noms_vWEIGHTDRY: TcxGridDBBandedColumn
        Caption = #1042#1077#1089
        DataBinding.FieldName = 'WEIGHTDRY'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        MinWidth = 100
        Options.HorzSizing = False
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gr_noms_vF_NAME_RU: TcxGridDBBandedColumn
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'F_NAME_RU'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        MinWidth = 50
        Width = 150
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gr_noms_vF_TYPE: TcxGridDBBandedColumn
        Caption = #1058#1080#1087
        DataBinding.FieldName = 'F_TYPE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        MinWidth = 50
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gr_noms_vF_SUB_TYPE: TcxGridDBBandedColumn
        Caption = #1055#1086#1076#1090#1080#1087
        DataBinding.FieldName = 'F_SUB_TYPE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        MinWidth = 50
        Width = 120
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gr_noms_vCOUNTRY: TcxGridDBBandedColumn
        Caption = #1057#1090#1088#1072#1085#1072
        DataBinding.FieldName = 'COUNTRY'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        MinWidth = 50
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gr_noms_vCOLOUR: TcxGridDBBandedColumn
        Caption = #1062#1074#1077#1090
        DataBinding.FieldName = 'COLOUR'
        MinWidth = 50
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gr_noms_vCODE: TcxGridDBBandedColumn
        Caption = #1064#1090#1088#1080#1093'-'#1082#1086#1076
        DataBinding.FieldName = 'CODE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        MinWidth = 100
        Options.HorzSizing = False
        Styles.Content = st_8pt
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gr_noms_vLEN: TcxGridDBBandedColumn
        Caption = #1044#1083#1080#1085#1072
        DataBinding.FieldName = 'LEN'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = ',0'#39#39';-,0'#39#39
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.HorzSizing = False
        Width = 50
        Position.BandIndex = 2
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gr_noms_vDIAMETER: TcxGridDBBandedColumn
        Caption = #1044#1080#1072#1084#1077#1090#1088
        DataBinding.FieldName = 'DIAMETER'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = ',0'#39#39';-,0'#39#39
        HeaderAlignmentHorz = taCenter
        MinWidth = 65
        Options.HorzSizing = False
        Width = 65
        Position.BandIndex = 2
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gr_noms_vPACK: TcxGridDBBandedColumn
        Caption = #1042' '#1087#1072#1095#1082#1077
        DataBinding.FieldName = 'PACK'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 60
        Options.Editing = False
        Options.HorzSizing = False
        Width = 60
        Position.BandIndex = 2
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gr_noms_vNSI_NAME: TcxGridDBBandedColumn
        Caption = #1045#1076'. '#1080#1079#1084#1077#1088'.'
        DataBinding.FieldName = 'NSI_NAME'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gr_noms_vRUS_MARKS: TcxGridDBBandedColumn
        Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
        DataBinding.FieldName = 'RUS_MARKS'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        MinWidth = 150
        Options.HorzSizing = False
        Width = 150
        Position.BandIndex = 2
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gr_noms_vTNVED: TcxGridDBBandedColumn
        Caption = #1058#1085' '#1042#1069#1044
        DataBinding.FieldName = 'TNVED'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.Moving = False
        Width = 100
        Position.BandIndex = 2
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gr_noms_vNOPRINT: TcxGridDBBandedColumn
        Caption = #1053#1077' '#1087#1077#1095'-'#1090#1100
        DataBinding.FieldName = 'NOPRINT'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.DisplayChecked = #1044#1072
        Properties.DisplayUnchecked = #1053#1077#1090
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ReadOnly = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.HorzSizing = False
        Options.Moving = False
        Width = 70
        Position.BandIndex = 2
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gr_noms_vNOTUSE: TcxGridDBBandedColumn
        Caption = #1053#1077' '#1080#1089#1087'.'
        DataBinding.FieldName = 'NOTUSE'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.DisplayChecked = #1044#1072
        Properties.DisplayUnchecked = #1053#1077#1090
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ReadOnly = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        MinWidth = 60
        Options.HorzSizing = False
        Options.Moving = False
        Width = 60
        Position.BandIndex = 2
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object gr_noms_vNOM_NEW: TcxGridDBBandedColumn
        Caption = #1053#1086#1074#1080#1085#1082#1072
        DataBinding.FieldName = 'NOM_NEW'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.DisplayChecked = #1044#1072
        Properties.DisplayUnchecked = #1053#1077#1090
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 65
        Options.HorzSizing = False
        Width = 65
        Position.BandIndex = 2
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gr_noms_vNOM_START: TcxGridDBBandedColumn
        Caption = #1057#1077#1079#1086#1085' '#1089#1090#1072#1088#1090
        DataBinding.FieldName = 'NOM_START'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.DisplayChecked = #1044#1072
        Properties.DisplayUnchecked = #1053#1077#1090
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 85
        Options.HorzSizing = False
        Width = 85
        Position.BandIndex = 2
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gr_noms_vNOM_END: TcxGridDBBandedColumn
        Caption = #1057#1077#1079#1086#1085' '#1082#1086#1085#1077#1094
        DataBinding.FieldName = 'NOM_END'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.DisplayChecked = #1044#1072
        Properties.DisplayUnchecked = #1053#1077#1090
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 85
        Options.HorzSizing = False
        Width = 85
        Position.BandIndex = 2
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gr_noms_vN_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'N_ID'
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object gr_noms_vVBN: TcxGridDBBandedColumn
        Caption = #1040#1091#1082'.'
        DataBinding.FieldName = 'VBN'
        HeaderAlignmentHorz = taCenter
        MinWidth = 40
        Options.Editing = False
        Options.HorzSizing = False
        Width = 40
        Position.BandIndex = 3
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object gr_noms_vFN_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FN_ID'
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object gr_noms_vTYPE_SUBTYPE: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TYPE_SUBTYPE'
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object gr_noms_vH_NAME: TcxGridDBBandedColumn
        DataBinding.FieldName = 'H_NAME'
        Width = 100
        Position.BandIndex = 3
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object gr_noms_vHOL_MARKS: TcxGridDBBandedColumn
        DataBinding.FieldName = 'HOL_MARKS'
        Position.BandIndex = 3
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gr_noms_vPHOTO: TcxGridDBBandedColumn
        Caption = #1060#1086#1090#1086
        DataBinding.FieldName = 'PHOTO'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Position.BandIndex = 3
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object gr_noms_vD_CHECK: TcxGridDBBandedColumn
        DataBinding.FieldName = 'D_CHECK'
        Position.BandIndex = 3
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gr_noms_vCOL_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'COL_ID'
        Position.BandIndex = 3
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object gr_noms_vC_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'C_ID'
        Position.BandIndex = 3
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object gr_noms_vS_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'S_ID'
        Position.BandIndex = 3
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object gr_noms_vFST_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FST_ID'
        Position.BandIndex = 3
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object gr_noms_vFT_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FT_ID'
        Position.BandIndex = 3
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object gr_noms_vCUST_COEF: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CUST_COEF'
        Position.BandIndex = 3
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object gr_noms_vHT_ID: TcxGridDBBandedColumn
        DataBinding.FieldName = 'HT_ID'
        Visible = False
        Position.BandIndex = 3
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object cxGridDBBandedColumn10: TcxGridDBBandedColumn
        Caption = #1050#1086#1076' '#1085#1072#1079#1074#1072#1085#1080#1103
        DataBinding.FieldName = 'NAME_CODE'
        Visible = False
        Width = 100
        Position.BandIndex = 3
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object gr_noms_vHOL_COLOR: TcxGridDBBandedColumn
        Caption = #1062#1074#1077#1090
        DataBinding.FieldName = 'HOL_COLOR'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object gr_noms_vHS_VAL: TcxGridDBBandedColumn
        DataBinding.FieldName = 'HS_VAL'
        Position.BandIndex = 3
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object gr_noms_vGREAT_NAME_F: TcxGridDBBandedColumn
        DataBinding.FieldName = 'GREAT_NAME_F'
        Position.BandIndex = 3
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object gr_noms_vHOL_PACK: TcxGridDBBandedColumn
        Caption = #1060#1072#1089#1086#1074#1082#1072
        DataBinding.FieldName = 'HOL_PACK'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.HorzSizing = False
        Position.BandIndex = 1
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object gr_noms_vWWW: TcxGridDBBandedColumn
        Caption = #1059#1073#1088#1072#1090#1100' '#1089' '#1089#1072#1081#1090#1072
        DataBinding.FieldName = 'REMOVE_FROM_SITE'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.DisplayChecked = #1044#1072
        Properties.DisplayUnchecked = #1053#1077#1090
        Properties.ImmediatePost = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 110
        Options.HorzSizing = False
        Width = 110
        Position.BandIndex = 2
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object gr_noms_NO_ORDER: TcxGridDBBandedColumn
        Caption = #1053#1077#1090' '#1079#1072#1082#1072#1079#1072
        DataBinding.FieldName = 'NO_ORDER'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayChecked = #1076#1072
        Properties.DisplayUnchecked = #1085#1077#1090
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Position.BandIndex = 2
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
    end
  end
  object StorProc: TOraStoredProc
    Left = 480
    Top = 232
  end
  object repDict: TfrxReport
    Version = '4.12.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39785.824304097200000000
    ReportOptions.LastChange = 41569.958081724500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 208
    Top = 272
    Datasets = <
      item
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
      object ReportTitle1: TfrxReportTitle
        Height = 109.606370000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Align = baWidth
          Top = 1.559060000000000000
          Width = 718.110700000000000000
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
            #1056#1115#1057#8218#1056#1169#1056#181#1056#187)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 45.133890000000000000
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
          Left = 109.606370000000000000
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
          Left = 185.196970000000000000
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
        object Memo15: TfrxMemoView
          Left = 540.472790000000000000
          Top = 90.708720000000000000
          Width = 177.637910000000000000
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
          Left = 257.008040000000000000
          Top = 90.708720000000000000
          Width = 283.464750000000000000
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
        object Memo9: TfrxMemoView
          Align = baWidth
          Top = 21.456710000000000000
          Width = 718.110700000000000000
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
            #1056#1116#1056#1109#1056#1112#1056#181#1056#1029#1056#1108#1056#187#1056#176#1057#8218#1057#1107#1057#1026#1056#176)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        RowCount = 0
        Stretched = True
        object fr_DOC_DSID_DOC: TfrxMemoView
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F_TYPE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDictView."F_TYPE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fr_DOC_DSDOC_NUMBER: TfrxMemoView
          Left = 109.606370000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'CODE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDictView."CODE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fr_DOC_DSNICK: TfrxMemoView
          Left = 185.196970000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'H_CODE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDictView."H_CODE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fr_DOC_DSFIO: TfrxMemoView
          Left = 257.008040000000000000
          Width = 283.464505910000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'COMPILED_NAME_OTDEL'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDictView."COMPILED_NAME_OTDEL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fr_DOC_DSPRICE_ALL: TfrxMemoView
          Left = 540.472790000000000000
          Width = 177.637910000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F_NAME'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDictView."F_NAME"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 234.330860000000000000
        Width = 718.110700000000000000
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
          Font.Style = []
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
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#183#1056#1105#1057#8224#1056#1105#1056#8470': ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDictView: TfrxDBDataset
    UserName = 'frxDictView'
    CloseDataSource = False
    FieldAliases.Strings = (
      'D_CHECK=D_CHECK'
      'F_NAME=F_NAME'
      'F_NAME_RU=F_NAME_RU'
      'F_SUB_TYPE=F_SUB_TYPE'
      'F_TYPE=F_TYPE'
      'COUNTRY=COUNTRY'
      'TYPE_SUBTYPE=TYPE_SUBTYPE'
      'N_ID=N_ID'
      'FN_ID=FN_ID'
      'FT_ID=FT_ID'
      'FST_ID=FST_ID'
      'S_ID=S_ID'
      'C_ID=C_ID'
      'COL_ID=COL_ID'
      'H_CODE=H_CODE'
      'H_NAME=H_NAME'
      'HT_ID=HT_ID'
      'CODE=CODE'
      'LEN=LEN'
      'PACK=PACK'
      'VBN=VBN'
      'HOL_TYPE=HOL_TYPE'
      'WEIGHT=WEIGHT'
      'WEIGHTDRY=WEIGHTDRY'
      'S_NAME_RU=S_NAME_RU'
      'COLOUR=COLOUR'
      'IS_PHOTO=IS_PHOTO'
      'HOL_MARKS=HOL_MARKS'
      'RUS_MARKS=RUS_MARKS'
      'DIAMETER=DIAMETER'
      'BAR_CODE=BAR_CODE'
      'CUST_COEF=CUST_COEF'
      'REMARKS=REMARKS'
      'PHOTO=PHOTO'
      'GREAT_NAME_F=GREAT_NAME_F'
      'COMPILED_NAME_OTDEL=COMPILED_NAME_OTDEL'
      'NAME_CODE=NAME_CODE'
      'NOPRINT=NOPRINT'
      'NOTUSE=NOTUSE'
      'NAMECODE=NAMECODE'
      'TNVED=TNVED'
      'ID_OFFICE=ID_OFFICE'
      'BRIEF=BRIEF'
      'CHECKED=CHECKED')
    DataSet = DictView
    BCDToCurrency = False
    Left = 272
    Top = 272
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
    Left = 352
    Top = 272
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
    Left = 352
    Top = 312
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 312
    Top = 312
  end
  object frxSelPrntPreview: TfrxDBDataset
    UserName = 'frxSelPrntPreview'
    CloseDataSource = False
    FieldAliases.Strings = (
      'D_CHECK=D_CHECK'
      'F_NAME=F_NAME'
      'F_NAME_RU=F_NAME_RU'
      'F_SUB_TYPE=F_SUB_TYPE'
      'F_TYPE=F_TYPE'
      'COUNTRY=COUNTRY'
      'TYPE_SUBTYPE=TYPE_SUBTYPE'
      'N_ID=N_ID'
      'FN_ID=FN_ID'
      'FT_ID=FT_ID'
      'FST_ID=FST_ID'
      'S_ID=S_ID'
      'C_ID=C_ID'
      'COL_ID=COL_ID'
      'H_CODE=H_CODE'
      'H_NAME=H_NAME'
      'HT_ID=HT_ID'
      'CODE=CODE'
      'LEN=LEN'
      'PACK=PACK'
      'HOL_TYPE=HOL_TYPE'
      'WEIGHT=WEIGHT'
      'WEIGHTDRY=WEIGHTDRY'
      'S_NAME_RU=S_NAME_RU'
      'COLOUR=COLOUR'
      'IS_PHOTO=IS_PHOTO'
      'HOL_MARKS=HOL_MARKS'
      'RUS_MARKS=RUS_MARKS'
      'DIAMETER=DIAMETER'
      'BAR_CODE=BAR_CODE'
      'CUST_COEF=CUST_COEF'
      'REMARKS=REMARKS'
      'PHOTO=PHOTO'
      'GREAT_NAME_F=GREAT_NAME_F'
      'COMPILED_NAME_OTDEL=COMPILED_NAME_OTDEL'
      'NAME_CODE=NAME_CODE'
      'NOPRINT=NOPRINT'
      'NOTUSE=NOTUSE'
      'NAMECODE=NAMECODE'
      'TNVED=TNVED'
      'ID_OFFICE=ID_OFFICE'
      'BRIEF=BRIEF'
      'CHECKED=CHECKED'
      'NOM_NEW=NOM_NEW'
      'NOM_START=NOM_START'
      'NOM_END=NOM_END'
      'HOL_COLOR=HOL_COLOR'
      'HS_VAL=HS_VAL'
      'VBN=VBN'
      'NSI_NAME=NSI_NAME'
      'HOL_PACK=HOL_PACK')
    DataSet = DictView
    BCDToCurrency = False
    Left = 313
    Top = 271
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 272
    Top = 311
  end
  object FlowerNames: TOraQuery
    SQLUpdate.Strings = (
      'select 1 from dual')
    SQLRefresh.Strings = (
      'select a.FN_ID, a.F_NAME_RU'
      
        ' , (SELECT count(1) FROM FLOWER_NAME_TRANSLATIONS where FN_ID = ' +
        'a.FN_ID) as cnt'
      'FROM FLOWER_NAMES a '
      'where a.FN_ID = :FN_ID')
    SQL.Strings = (
      'select a.FN_ID, a.F_NAME_RU, ID_DEPARTMENTS, a.id_office'
      
        ' , (SELECT count(1) FROM FLOWER_NAME_TRANSLATIONS where FN_ID = ' +
        'a.FN_ID) as cnt'
      
        ' , (SELECT count(1) FROM NOMENCLATURE WHERE FN_ID = a.FN_ID) as ' +
        'cnt_noms'
      'FROM FLOWER_NAMES a '
      'where ID_DEPARTMENTS = :ID_DEPARTMENTS '
      'and (id_office in (1,:v_office) or :v_office = 0)'
      'order by F_NAME_RU')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = FlowerNamesAfterOpen
    AfterOpen = FlowerNamesAfterOpen
    BeforePost = FlowerNamesAfterPost
    AfterPost = FlowerNamesAfterPost
    BeforeRefresh = FlowerNamesAfterOpen
    Left = 720
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_DEPARTMENTS'
      end
      item
        DataType = ftUnknown
        Name = 'v_office'
      end>
    object FlowerNamesFN_ID: TFloatField
      FieldName = 'FN_ID'
      Required = True
    end
    object FlowerNamesF_NAME_RU: TStringField
      FieldName = 'F_NAME_RU'
      Required = True
      Size = 256
    end
    object FlowerNamesCNT: TFloatField
      FieldName = 'CNT'
    end
    object FlowerNamesID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
      Required = True
    end
    object FlowerNamesCNT_NOMS: TFloatField
      FieldName = 'CNT_NOMS'
    end
    object FlowerNamesID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
  end
  object FlowerNames_DS: TDataSource
    DataSet = FlowerNames
    Left = 720
    Top = 200
  end
  object FlowerNameTranslations: TOraQuery
    SQLRefresh.Strings = (
      
        'SELECT a.fn_id, a.f_name, a.name_code, a.id_departments, a.fnt_i' +
        'd, a.remarks, b.f_name_ru'
      '  FROM flower_name_translations a, flower_names b'
      '  where a.fn_id = b.fn_id'
      '        and a.fnt_id = :OLD_FNT_ID')
    SQL.Strings = (
      
        'SELECT a.fn_id, a.f_name, a.name_code, a.id_departments, a.fnt_i' +
        'd, a.remarks, a.id_office, b.F_NAME_RU'
      '  FROM flower_name_translations a, FLOWER_NAMES b'
      '  where a.id_departments = :ID_DEPARTMENTS '
      '   and a.fn_id = b.fn_id'
      '   and (a.id_office in (1,:v_office) or :v_office = 0)'
      '  order by a.f_name')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = FlowerNameTranslationsAfterPost
    AfterPost = FlowerNameTranslationsAfterPost
    BeforeRefresh = FlowerNameTranslationsAfterPost
    Left = 760
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_DEPARTMENTS'
      end
      item
        DataType = ftUnknown
        Name = 'v_office'
      end>
    object FlowerNameTranslationsFN_ID: TFloatField
      FieldName = 'FN_ID'
      Required = True
    end
    object FlowerNameTranslationsF_NAME: TStringField
      FieldName = 'F_NAME'
      Required = True
      Size = 256
    end
    object FlowerNameTranslationsNAME_CODE: TStringField
      FieldName = 'NAME_CODE'
    end
    object FlowerNameTranslationsID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
      Required = True
    end
    object FlowerNameTranslationsFNT_ID: TFloatField
      FieldName = 'FNT_ID'
      Required = True
    end
    object FlowerNameTranslationsREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 30
    end
    object FlowerNameTranslationsID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object FlowerNameTranslationsF_NAME_RU: TStringField
      FieldName = 'F_NAME_RU'
      Size = 256
    end
  end
  object FlowerNameTranslations_DS: TOraDataSource
    DataSet = FlowerNameTranslations
    Left = 760
    Top = 200
  end
  object FlowerSubTypes_DS: TDataSource
    DataSet = FlowerSubTypes
    Left = 800
    Top = 200
  end
  object FlowerSubTypes: TOraQuery
    SQL.Strings = (
      'select rownum as nn, a.* from ('
      
        'SELECT a.fst_id, a.f_sub_type, a.hol_sub_type, a.ft_id, a.f_type' +
        ', a.double_name, a.ht_id, a.hol_type, a.mnemo, a.sub_weight, a.i' +
        'd_office, a.price_prefix, a.tnved, a.sub_weight_dry, b.cnt'
      'FROM fst_view a'
      
        '  left outer join (select n.FST_ID, count(*) as cnt from nomencl' +
        'ature n group by n.FST_ID) b on b.fst_id = a.fst_id '
      'WHERE FT_ID = :FT_ID '
      '  and (id_office in (1,:v_office) or :v_office = 0)'
      'order by f_sub_type'
      ') a')
    MasterSource = FlowerTypes_DS
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = FlowerSubTypesAfterOpen
    AfterOpen = FlowerSubTypesAfterOpen
    BeforeRefresh = FlowerSubTypesAfterOpen
    Left = 800
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FT_ID'
      end
      item
        DataType = ftUnknown
        Name = 'v_office'
      end>
    object FlowerSubTypesFST_ID: TFloatField
      FieldName = 'FST_ID'
      Required = True
    end
    object FlowerSubTypesF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Required = True
      Size = 30
    end
    object FlowerSubTypesFT_ID: TFloatField
      FieldName = 'FT_ID'
      Required = True
    end
    object FlowerSubTypesHOL_SUB_TYPE: TStringField
      FieldName = 'HOL_SUB_TYPE'
      Size = 50
    end
    object FlowerSubTypesNN: TFloatField
      FieldName = 'NN'
    end
    object FlowerSubTypesMNEMO: TStringField
      FieldName = 'MNEMO'
    end
    object FlowerSubTypesSUB_WEIGHT: TFloatField
      FieldName = 'SUB_WEIGHT'
    end
    object FlowerSubTypesF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Required = True
      Size = 50
    end
    object FlowerSubTypesDOUBLE_NAME: TStringField
      FieldName = 'DOUBLE_NAME'
      Size = 2053
    end
    object FlowerSubTypesHT_ID: TFloatField
      FieldName = 'HT_ID'
    end
    object FlowerSubTypesHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
    end
    object FlowerSubTypesID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object FlowerSubTypesPRICE_PREFIX: TStringField
      FieldName = 'PRICE_PREFIX'
      Size = 50
    end
    object FlowerSubTypesTNVED: TStringField
      FieldName = 'TNVED'
      Size = 50
    end
    object FlowerSubTypesSUB_WEIGHT_DRY: TFloatField
      FieldName = 'SUB_WEIGHT_DRY'
    end
    object FlowerSubTypesCNT: TFloatField
      FieldName = 'CNT'
    end
  end
  object FlowerTypes: TOraQuery
    SQL.Strings = (
      'select rownum as nn, a.* from ('
      
        'SELECT a.ft_id, a.f_type, a.ft_mask, a.ht_id, a.hol_type, a.id_o' +
        'ffice '
      
        ', (SELECT COUNT(1) from dual where exists (SELECT 1 FROM FLOWER_' +
        'SUBTYPES where FT_ID = a.FT_ID)) as cnt'
      'FROM FT_VIEW a'
      'WHERE ID_DEPARTMENTS = :ID_DEPARTMENTS '
      '   and (id_office in (1,:v_office) or :v_office = 0)'
      'order by f_type'
      ') a')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = FlowerTypesAfterOpen
    AfterOpen = FlowerTypesAfterOpen
    BeforeRefresh = FlowerTypesAfterOpen
    Left = 840
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_DEPARTMENTS'
      end
      item
        DataType = ftUnknown
        Name = 'v_office'
      end>
    object FlowerTypesFT_ID: TFloatField
      FieldName = 'FT_ID'
      Required = True
    end
    object FlowerTypesF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Required = True
      Size = 30
    end
    object FlowerTypesFT_MASK: TStringField
      FieldName = 'FT_MASK'
      Size = 50
    end
    object FlowerTypesHT_ID: TFloatField
      FieldName = 'HT_ID'
    end
    object FlowerTypesHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
      Size = 10
    end
    object FlowerTypesNN: TFloatField
      FieldName = 'NN'
    end
    object FlowerTypesCNT: TFloatField
      FieldName = 'CNT'
    end
    object FlowerTypesID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
  end
  object FlowerTypes_DS: TDataSource
    DataSet = FlowerTypes
    Left = 840
    Top = 200
  end
  object FNameTransLink: TOraQuery
    SQLRefresh.Strings = (
      
        'SELECT a.fn_id, a.f_name, a.name_code, a.id_departments, a.fnt_i' +
        'd, a.remarks, b.f_name_ru'
      '  FROM flower_name_translations a, flower_names b'
      '  where a.fn_id = b.fn_id'
      '        and a.fnt_id = :OLD_FNT_ID')
    SQL.Strings = (
      
        'SELECT a.fn_id, a.f_name, a.name_code, a.id_departments, a.fnt_i' +
        'd, a.remarks, a.id_office'
      '  FROM flower_name_translations a'
      '  where a.id_departments = :ID_DEPARTMENTS '
      '    and (id_office in (1,:v_office) or :v_office = 0)'
      '    and a.FN_ID = :FN_ID'
      '  order by a.f_name')
    MasterSource = FlowerNames_DS
    MasterFields = 'FN_ID'
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = FNameTransLinkAfterOpen
    AfterOpen = FNameTransLinkAfterOpen
    BeforeRefresh = FNameTransLinkAfterOpen
    Left = 880
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_DEPARTMENTS'
      end
      item
        DataType = ftUnknown
        Name = 'v_office'
      end
      item
        DataType = ftUnknown
        Name = 'FN_ID'
      end>
    object FNameTransLinkFN_ID: TFloatField
      FieldName = 'FN_ID'
      Required = True
    end
    object FNameTransLinkF_NAME: TStringField
      FieldName = 'F_NAME'
      Required = True
      Size = 256
    end
    object FNameTransLinkNAME_CODE: TStringField
      FieldName = 'NAME_CODE'
    end
    object FNameTransLinkID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
      Required = True
    end
    object FNameTransLinkFNT_ID: TFloatField
      FieldName = 'FNT_ID'
      Required = True
    end
    object FNameTransLinkREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 30
    end
    object FNameTransLinkID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
  end
  object FNameTransLink_DS: TOraDataSource
    DataSet = FNameTransLink
    Left = 880
    Top = 200
  end
  object Suppliers: TOraQuery
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
        'd from nomenclature_mat_view z where z.id_departments = :ID_DEPA' +
        'RTMENTS group by s_id ) b on b.s_id = a.s_id'
      'ORDER BY S_NAME_RU')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = SuppliersAfterOpen
    AfterOpen = SuppliersAfterOpen
    BeforeRefresh = SuppliersAfterOpen
    Left = 992
    Top = 152
    ParamData = <
      item
        Name = 'v_office'
        ParamType = ptInput
        Value = Null
        ExtDataType = 107
      end
      item
        DataType = ftInteger
        Name = 'ID_DEPARTMENTS'
        ParamType = ptInput
      end>
    object SuppliersS_ID: TFloatField
      FieldName = 'S_ID'
      Required = True
    end
    object SuppliersS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Required = True
      Size = 150
    end
    object SuppliersC_ID: TFloatField
      FieldName = 'C_ID'
      Required = True
    end
    object SuppliersNEED_CUST: TIntegerField
      FieldName = 'NEED_CUST'
      Required = True
    end
    object SuppliersCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
    object SuppliersNN: TFloatField
      FieldName = 'NN'
    end
    object SuppliersID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object SuppliersANALYZE_DAYS: TIntegerField
      FieldName = 'ANALYZE_DAYS'
    end
    object SuppliersIS_ACTIVE: TFloatField
      FieldName = 'IS_ACTIVE'
    end
  end
  object Suppliers_DS: TDataSource
    DataSet = Suppliers
    Left = 992
    Top = 200
  end
  object Colours: TOraQuery
    SQLRefresh.Strings = (
      'SELECT '
      '  COL_ID,'
      '  COLOUR'
      'FROM '
      '  COLOURS '
      'WHERE'
      '  COL_ID = :OLD_COL_ID')
    SQL.Strings = (
      'select rownum as nn, a.* from ('
      'SELECT COL_ID, COLOUR, id_office '
      'FROM COLOURS '
      'where (id_office in (1,:v_office) or :v_office = 0)'
      'ORDER BY COLOUR'
      ') a')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = ColoursAfterOpen
    AfterOpen = ColoursAfterOpen
    BeforeRefresh = ColoursAfterOpen
    Left = 928
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'v_office'
      end>
    object ColoursCOL_ID: TFloatField
      FieldName = 'COL_ID'
      Required = True
    end
    object ColoursCOLOUR: TStringField
      FieldName = 'COLOUR'
      Required = True
      Size = 50
    end
    object ColoursNN: TFloatField
      FieldName = 'NN'
    end
    object ColoursID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
  end
  object Colours_DS: TDataSource
    DataSet = Colours
    Left = 928
    Top = 200
  end
  object HColours: TOraQuery
    SQLRefresh.Strings = (
      'SELECT'
      '  H_COL_ID,'
      '  COL_ID,'
      '  HOL_COLOUR'
      'FROM'
      '  H_COLOURS'
      'WHERE'
      '  H_COL_ID = :OLD_H_COL_ID')
    SQL.Strings = (
      'select rownum as nn, a.* from ('
      'SELECT H_COL_ID, COL_ID, HOL_COLOUR, id_office'
      'FROM H_COLOURS'
      'WHERE COL_ID = :COL_ID and id_office = :v_office'
      'ORDER BY HOL_COLOUR'
      ') a')
    MasterSource = Colours_DS
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = HColoursAfterOpen
    AfterOpen = HColoursAfterOpen
    BeforeRefresh = HColoursAfterOpen
    Left = 1032
    Top = 152
    ParamData = <
      item
        DataType = ftFloat
        Name = 'COL_ID'
        ParamType = ptInput
        Value = 2768.000000000000000000
      end
      item
        DataType = ftUnknown
        Name = 'v_office'
      end>
    object HColoursH_COL_ID: TFloatField
      FieldName = 'H_COL_ID'
      Required = True
    end
    object HColoursCOL_ID: TFloatField
      FieldName = 'COL_ID'
      Required = True
    end
    object HColoursHOL_COLOUR: TStringField
      FieldName = 'HOL_COLOUR'
      Required = True
      Size = 50
    end
    object HColoursID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
  end
  object HColours_DS: TOraDataSource
    DataSet = HColours
    Left = 1032
    Top = 200
  end
  object Countries: TOraQuery
    SQL.Strings = (
      'select rownum as nn, a.* from ('
      'SELECT COUNTRY, COUNTRY_ENG, C_ID, mnemo, BUH_CODE '
      'FROM COUNTRIES '
      'WHERE NOT (C_ID = 0) '
      'ORDER BY COUNTRY'
      ') a')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 1072
    Top = 152
    object CountriesC_ID: TIntegerField
      FieldName = 'C_ID'
      Required = True
    end
    object CountriesCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Required = True
      Size = 50
    end
    object CountriesNN: TFloatField
      FieldName = 'NN'
    end
    object CountriesCOUNTRY_ENG: TStringField
      FieldName = 'COUNTRY_ENG'
      Size = 50
    end
    object CountriesMNEMO: TStringField
      FieldName = 'MNEMO'
      Size = 10
    end
    object CountriesBUH_CODE: TStringField
      FieldName = 'BUH_CODE'
      Size = 10
    end
  end
  object Countries_DS: TDataSource
    DataSet = Countries
    Left = 1072
    Top = 200
  end
end
