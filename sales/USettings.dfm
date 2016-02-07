object frmSettings: TfrmSettings
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1086' '#1086#1090#1076#1077#1083#1072#1084
  ClientHeight = 439
  ClientWidth = 580
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel4: TPanel
    Left = 0
    Top = 399
    Width = 580
    Height = 40
    Align = alBottom
    Color = clSkyBlue
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    DesignSize = (
      580
      40)
    object BitBtn_Cancel: TcxButton
      Left = 321
      Top = 5
      Width = 126
      Height = 30
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = ' '#1054#1090#1084#1077#1085#1072' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 0
      Colors.Default = clBtnFace
      Colors.Normal = clBtnFace
      Colors.Hot = clSkyBlue
      Colors.Pressed = clSkyBlue
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000181862042929A59326269B3B000000000000000000000000000000000000
        00000000000021218A3126269B94181863050000000000000000000000001818
        64042A2AA9A94D4DD0FF3535B4F226269B3B0000000000000000000000000000
        000022228C312F2FA9EC4242C5FF26269BAD1818630500000000191966042B2B
        ACA94E4ED1FF6969E2FF6969E9FF3636B5F226269B3B00000000000000002323
        8E322F2FABED4E4ED8FF4747D2FF4444C9FF26269BAD181863052B2BAE8E4949
        CDFF6060D9FF6868DDFF7070E7FF6C6CEDFF3636B5F226269B3B232391323131
        AEED5252DCFF4444CEFF4242CCFF4747D2FF4242C6FF26269B942828A0313434
        B8EC5E5EDEFF6868DEFF7070E7FF7575EEFF6D6DEFFF3636B5F23333B1ED5A5A
        E2FF4D4DD5FF4343CDFF4242CDFF4D4DD8FF2F2FA9ED23239233000000002828
        A0313535B9EC6464E4FF7070E7FF7676EEFF7777F1FF6C6CEFFF6363E9FF5A5A
        DEFF4C4CD4FF4444CEFF4D4DD8FF2F2FABED2424943300000000000000000000
        00002828A0313535B9EC6868E9FF7575EEFF7777F0FF7272EEFF6767E7FF5A5A
        DEFF4D4DD5FF4E4ED9FF3030ADED252596330000000000000000000000000000
        0000000000002828A1313636BAEC6D6DEEFF7777F0FF7272EEFF6767E7FF5A5A
        DEFF5454DEFF3131B0ED25259933000000000000000000000000000000000000
        00000000000027279E313636BBEC6D6DEEFF7777F0FF7272EEFF6767E7FF5A5A
        DEFF5454DEFF3232B3F226269B3B000000000000000000000000000000000000
        00002828A0313636BDEC6868EAFF7575EEFF7777F0FF7272EEFF6767E7FF5A5A
        DEFF4D4DD5FF4E4EDAFF3232B3F226269B3B0000000000000000000000002828
        A2313636BEEC6464E5FF7070E7FF7676EEFF7777F1FF6B6BEEFF6363E9FF5A5A
        DEFF4C4CD4FF4444CEFF4D4DD9FF3232B3F226269B3B000000002929A4313636
        C0EC5E5EDFFF6868DEFF7070E7FF7575EEFF6C6CEFFF3636BCED3535BAEC5A5A
        E3FF4D4DD5FF4343CDFF4242CCFF4D4DD9FF3232B3F226269B3B2E2EB9904B4B
        D2FF6060D9FF6868DDFF7070E7FF6B6BEDFF3737BEED2929A7332828A1313434
        B9EC5353DEFF4444CEFF4242CCFF4848D3FF4343CAFF2929A68D1E1E77042F2F
        BAAA5151D7FF6969E2FF6868E9FF3838C0ED2A2AA93300000000000000002828
        A0313333B8EC4E4EDAFF4848D3FF4545CEFF2A2AA9A21A1A6B02000000001E1E
        77042F2FBAAA4F4FD7FF3838C1ED2B2BAC330000000000000000000000000000
        00002828A0313333B8EC4343CCFF2B2BACA21B1B6D0200000000000000000000
        00001E1E77042E2EB9922B2BAE33000000000000000000000000000000000000
        0000000000002828A0312B2BAE891B1B6F020000000000000000}
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      Spacing = 6
    end
    object BitBtnSave: TcxButton
      Left = 448
      Top = 5
      Width = 126
      Height = 30
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = ' '#1057#1086#1093#1088#1072#1085#1080#1090#1100' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtnSaveClick
      Colors.Default = clBtnFace
      Colors.Normal = clBtnFace
      Colors.Hot = clSkyBlue
      Colors.Pressed = clSkyBlue
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000000000000084CA84FF54B757FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000084CA84FF52D47AFF72F4A5FF3EB850FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000008DD18DFF4ACC6BFF74F097FF77F08CFF63E692FF69BE6AFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        000084CA84FF4ACC6BFF6FEB94FF76EE8AFF77F08CFF74F097FF44C55EFF0000
        0000000000000000000000000000000000000000000000000000000000007CCC
        7BFF49D16FFF69E48BFF70E785FF73F19CFF73F19CFF72EF88FF65EA94FF4DB6
        51FF00000000000000000000000000000000000000000000000095D795FF4ACC
        6BFF61DA7FFF68DE7DFF6FEB94FF3EB850FF44C55EFF74F097FF68E982FF49D1
        6FFF00000000000000000000000000000000000000000000000053C357FF5CD8
        87FF5FD473FF63E692FF41BD50FF000000007CCC7BFF60E48EFF68E87DFF5FE6
        86FF3DB84DFF00000000000000000000000000000000000000007CD07CFF49D1
        6FFF55D880FF41BD50FF0000000000000000000000003DB84DFF6FEB94FF5BDF
        6FFF53DC81FF5CBB5EFF00000000000000000000000000000000000000000000
        000095D795FF0000000000000000000000000000000095D795FF4DD879FF5BE0
        73FF51D96AFF44CA68FF00000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000004EBC53FF60E4
        8EFF4ED55FFF4DD973FF3DB84DFF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003FC2
        56FF53DC76FF43CD55FF4DD879FF4DB651FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000008DD1
        8DFF49D16FFF47D15FFF43CD55FF49D16FFF71C572FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00005DC15FFF4DD879FF43CD55FF47D262FF41C661FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000045BC4EFF4DD879FF43CD55FF4DD879FF52BA56FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000003DB84DFF4FDB7EFF49D16FFF71C572FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000006AC56AFF86CE85FF00000000}
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      Spacing = 6
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 580
    Height = 399
    Align = alClient
    TabOrder = 1
    object Panel2: TPanel
      Left = 233
      Top = 1
      Width = 346
      Height = 397
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 5
      Caption = 'Panel2'
      TabOrder = 0
      object Grid_types: TcxGrid
        Left = 5
        Top = 51
        Width = 336
        Height = 341
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LevelTabs.Style = 9
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = True
        RootLevelOptions.DetailTabsPosition = dtpTop
        object Grid_types_v: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          FilterBox.Position = fpTop
          DataController.DataSource = DM.ft_view_ds
          DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription, fcoSoftCompare]
          DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skCount
              Position = spFooter
            end
            item
              Format = '0'
              Kind = skCount
              Position = spFooter
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
              Kind = skSum
            end
            item
              Format = '0'
              Kind = skSum
            end
            item
              Format = '0'
              Kind = skCount
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1092#1080#1083#1100#1090#1088#1086#1074
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnSorting = False
          OptionsData.CancelOnExit = False
          OptionsData.DeletingConfirmation = False
          OptionsSelection.InvertSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
          OptionsView.ColumnAutoWidth = True
          OptionsView.DataRowHeight = 25
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.HeaderEndEllipsis = True
          OptionsView.HeaderHeight = 25
          object ft_F_TYPE: TcxGridDBColumn
            Caption = #1058#1080#1087
            DataBinding.FieldName = 'F_TYPE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Vert = taVCenter
            Properties.ReadOnly = True
            HeaderAlignmentVert = vaCenter
            MinWidth = 200
            Options.Editing = False
            Options.Filtering = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.Sorting = False
            Width = 200
          end
          object ft_NBUTTON: TcxGridDBColumn
            Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
            DataBinding.FieldName = 'NBUTTON'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.AssignedValues.MinValue = True
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = ',0'#39#39';-,0'#39#39
            Properties.MaxLength = 2
            Properties.MaxValue = 99.000000000000000000
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 80
            Options.Filtering = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 80
          end
          object ft_FT_ID: TcxGridDBColumn
            DataBinding.FieldName = 'FT_ID'
            Visible = False
          end
          object ft_ID_DEPARTMENTS: TcxGridDBColumn
            DataBinding.FieldName = 'ID_DEPARTMENTS'
            Visible = False
          end
          object ft_delete: TcxGridDBColumn
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.Buttons = <
              item
                Default = True
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  0000181862042929A59326269B3B000000000000000000000000000000000000
                  00000000000021218A3126269B94181863050000000000000000000000001818
                  64042A2AA9A94D4DD0FF3535B4F226269B3B0000000000000000000000000000
                  000022228C312F2FA9EC4242C5FF26269BAD1818630500000000191966042B2B
                  ACA94E4ED1FF6969E2FF6969E9FF3636B5F226269B3B00000000000000002323
                  8E322F2FABED4E4ED8FF4747D2FF4444C9FF26269BAD181863052B2BAE8E4949
                  CDFF6060D9FF6868DDFF7070E7FF6C6CEDFF3636B5F226269B3B232391323131
                  AEED5252DCFF4444CEFF4242CCFF4747D2FF4242C6FF26269B942828A0313434
                  B8EC5E5EDEFF6868DEFF7070E7FF7575EEFF6D6DEFFF3636B5F23333B1ED5A5A
                  E2FF4D4DD5FF4343CDFF4242CDFF4D4DD8FF2F2FA9ED23239233000000002828
                  A0313535B9EC6464E4FF7070E7FF7676EEFF7777F1FF6C6CEFFF6363E9FF5A5A
                  DEFF4C4CD4FF4444CEFF4D4DD8FF2F2FABED2424943300000000000000000000
                  00002828A0313535B9EC6868E9FF7575EEFF7777F0FF7272EEFF6767E7FF5A5A
                  DEFF4D4DD5FF4E4ED9FF3030ADED252596330000000000000000000000000000
                  0000000000002828A1313636BAEC6D6DEEFF7777F0FF7272EEFF6767E7FF5A5A
                  DEFF5454DEFF3131B0ED25259933000000000000000000000000000000000000
                  00000000000027279E313636BBEC6D6DEEFF7777F0FF7272EEFF6767E7FF5A5A
                  DEFF5454DEFF3232B3F226269B3B000000000000000000000000000000000000
                  00002828A0313636BDEC6868EAFF7575EEFF7777F0FF7272EEFF6767E7FF5A5A
                  DEFF4D4DD5FF4E4EDAFF3232B3F226269B3B0000000000000000000000002828
                  A2313636BEEC6464E5FF7070E7FF7676EEFF7777F1FF6B6BEEFF6363E9FF5A5A
                  DEFF4C4CD4FF4444CEFF4D4DD9FF3232B3F226269B3B000000002929A4313636
                  C0EC5E5EDFFF6868DEFF7070E7FF7575EEFF6C6CEFFF3636BCED3535BAEC5A5A
                  E3FF4D4DD5FF4343CDFF4242CCFF4D4DD9FF3232B3F226269B3B2E2EB9904B4B
                  D2FF6060D9FF6868DDFF7070E7FF6B6BEDFF3737BEED2929A7332828A1313434
                  B9EC5353DEFF4444CEFF4242CCFF4848D3FF4343CAFF2929A68D1E1E77042F2F
                  BAAA5151D7FF6969E2FF6868E9FF3838C0ED2A2AA93300000000000000002828
                  A0313333B8EC4E4EDAFF4848D3FF4545CEFF2A2AA9A21A1A6B02000000001E1E
                  77042F2FBAAA4F4FD7FF3838C1ED2B2BAC330000000000000000000000000000
                  00002828A0313333B8EC4343CCFF2B2BACA21B1B6D0200000000000000000000
                  00001E1E77042E2EB9922B2BAE33000000000000000000000000000000000000
                  0000000000002828A0312B2BAE891B1B6F020000000000000000}
                Kind = bkGlyph
                Width = 25
              end>
            Properties.ViewStyle = vsButtonsOnly
            Properties.OnButtonClick = Grid_types_vColumn1PropertiesButtonClick
            MinWidth = 30
            Options.Filtering = False
            Options.ShowEditButtons = isebAlways
            Options.HorzSizing = False
            Options.Moving = False
            Options.Sorting = False
            Width = 30
          end
        end
        object grid_subtypes_v: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          FilterBox.Position = fpTop
          DataController.DataSource = DM.fst_view_ds
          DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription, fcoSoftCompare]
          DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1092#1080#1083#1100#1090#1088#1086#1074
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnSorting = False
          OptionsData.CancelOnExit = False
          OptionsData.DeletingConfirmation = False
          OptionsSelection.InvertSelect = False
          OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.HeaderEndEllipsis = True
          OptionsView.HeaderHeight = 25
          object fst_FT_ID: TcxGridDBColumn
            DataBinding.FieldName = 'FST_ID'
            Visible = False
          end
          object fst_F_SUB_TYPE: TcxGridDBColumn
            Caption = #1055#1086#1076#1090#1080#1087
            DataBinding.FieldName = 'F_SUB_TYPE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Vert = taVCenter
            Properties.ReadOnly = True
            HeaderAlignmentVert = vaCenter
            MinWidth = 200
            Options.Editing = False
            Options.Filtering = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.Sorting = False
            Width = 200
          end
          object fst_ID_DEPARTMENTS: TcxGridDBColumn
            DataBinding.FieldName = 'ID_DEPARTMENTS'
            Visible = False
          end
          object fst_NBUTTON: TcxGridDBColumn
            Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
            DataBinding.FieldName = 'NBUTTON'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.AssignedValues.MinValue = True
            Properties.DecimalPlaces = 0
            Properties.DisplayFormat = ',0'#39#39';-,0'#39#39
            Properties.MaxLength = 2
            Properties.MaxValue = 99.000000000000000000
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 80
            Options.Filtering = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.Sorting = False
            Width = 80
          end
          object fst_delete: TcxGridDBColumn
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.Buttons = <
              item
                Default = True
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  0000181862042929A59326269B3B000000000000000000000000000000000000
                  00000000000021218A3126269B94181863050000000000000000000000001818
                  64042A2AA9A94D4DD0FF3535B4F226269B3B0000000000000000000000000000
                  000022228C312F2FA9EC4242C5FF26269BAD1818630500000000191966042B2B
                  ACA94E4ED1FF6969E2FF6969E9FF3636B5F226269B3B00000000000000002323
                  8E322F2FABED4E4ED8FF4747D2FF4444C9FF26269BAD181863052B2BAE8E4949
                  CDFF6060D9FF6868DDFF7070E7FF6C6CEDFF3636B5F226269B3B232391323131
                  AEED5252DCFF4444CEFF4242CCFF4747D2FF4242C6FF26269B942828A0313434
                  B8EC5E5EDEFF6868DEFF7070E7FF7575EEFF6D6DEFFF3636B5F23333B1ED5A5A
                  E2FF4D4DD5FF4343CDFF4242CDFF4D4DD8FF2F2FA9ED23239233000000002828
                  A0313535B9EC6464E4FF7070E7FF7676EEFF7777F1FF6C6CEFFF6363E9FF5A5A
                  DEFF4C4CD4FF4444CEFF4D4DD8FF2F2FABED2424943300000000000000000000
                  00002828A0313535B9EC6868E9FF7575EEFF7777F0FF7272EEFF6767E7FF5A5A
                  DEFF4D4DD5FF4E4ED9FF3030ADED252596330000000000000000000000000000
                  0000000000002828A1313636BAEC6D6DEEFF7777F0FF7272EEFF6767E7FF5A5A
                  DEFF5454DEFF3131B0ED25259933000000000000000000000000000000000000
                  00000000000027279E313636BBEC6D6DEEFF7777F0FF7272EEFF6767E7FF5A5A
                  DEFF5454DEFF3232B3F226269B3B000000000000000000000000000000000000
                  00002828A0313636BDEC6868EAFF7575EEFF7777F0FF7272EEFF6767E7FF5A5A
                  DEFF4D4DD5FF4E4EDAFF3232B3F226269B3B0000000000000000000000002828
                  A2313636BEEC6464E5FF7070E7FF7676EEFF7777F1FF6B6BEEFF6363E9FF5A5A
                  DEFF4C4CD4FF4444CEFF4D4DD9FF3232B3F226269B3B000000002929A4313636
                  C0EC5E5EDFFF6868DEFF7070E7FF7575EEFF6C6CEFFF3636BCED3535BAEC5A5A
                  E3FF4D4DD5FF4343CDFF4242CCFF4D4DD9FF3232B3F226269B3B2E2EB9904B4B
                  D2FF6060D9FF6868DDFF7070E7FF6B6BEDFF3737BEED2929A7332828A1313434
                  B9EC5353DEFF4444CEFF4242CCFF4848D3FF4343CAFF2929A68D1E1E77042F2F
                  BAAA5151D7FF6969E2FF6868E9FF3838C0ED2A2AA93300000000000000002828
                  A0313333B8EC4E4EDAFF4848D3FF4545CEFF2A2AA9A21A1A6B02000000001E1E
                  77042F2FBAAA4F4FD7FF3838C1ED2B2BAC330000000000000000000000000000
                  00002828A0313333B8EC4343CCFF2B2BACA21B1B6D0200000000000000000000
                  00001E1E77042E2EB9922B2BAE33000000000000000000000000000000000000
                  0000000000002828A0312B2BAE891B1B6F020000000000000000}
                Kind = bkGlyph
                Width = 25
              end>
            Properties.ViewStyle = vsButtonsOnly
            Properties.OnButtonClick = fst_deletePropertiesButtonClick
            MinWidth = 30
            Options.Filtering = False
            Options.ShowEditButtons = isebAlways
            Options.HorzSizing = False
            Options.Moving = False
            Options.Sorting = False
            Width = 30
          end
        end
        object Grid_types_l: TcxGridLevel
          Caption = ' '#1057#1086#1088#1090#1080#1088#1086#1074#1082#1072' '#1090#1080#1087#1086#1074'  '
          GridView = Grid_types_v
        end
        object Grid_subtypes_l: TcxGridLevel
          Caption = ' '#1057#1086#1088#1090#1080#1088#1086#1074#1082#1072' '#1087#1086#1076#1090#1080#1087#1086#1074' '
          GridView = grid_subtypes_v
        end
      end
      object Panel5: TPanel
        Left = 5
        Top = 5
        Width = 336
        Height = 46
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 3
        TabOrder = 1
        object gr_group: TcxRadioGroup
          Left = 3
          Top = 3
          Align = alClient
          Caption = ' '#1056#1072#1073#1086#1090#1072' '#1089#1086' '#1089#1087#1080#1089#1082#1086#1084' '
          Properties.Columns = 2
          Properties.DefaultValue = '1'
          Properties.ImmediatePost = True
          Properties.Items = <
            item
              Caption = #1090#1080#1087#1099
              Value = '1'
            end
            item
              Caption = #1087#1086#1076#1090#1080#1087#1099
              Value = '2'
            end>
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Height = 40
          Width = 330
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 232
      Height = 397
      Align = alLeft
      BevelOuter = bvNone
      BorderWidth = 5
      Caption = 'Panel3'
      TabOrder = 1
      DesignSize = (
        232
        397)
      object Label1: TLabel
        Left = 5
        Top = 5
        Width = 222
        Height = 15
        Align = alTop
        Caption = #1054#1090#1086#1073#1088#1072#1078#1077#1085#1080#1077' '#1082#1086#1083#1086#1085#1086#1082' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1099
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 218
      end
      object chb_columns: TcxCheckListBox
        Left = 8
        Top = 30
        Width = 217
        Height = 362
        Anchors = [akLeft, akTop, akBottom]
        EditValueFormat = cvfStatesString
        Items = <
          item
            State = cbsChecked
            Text = #1064#1090#1088#1080#1093'-'#1082#1086#1076
          end
          item
            Tag = 1
            Text = #1040#1088#1090#1080#1082#1091#1083
          end
          item
            State = cbsChecked
            Tag = 2
            Text = #1058#1080#1087
          end
          item
            State = cbsChecked
            Tag = 3
            Text = #1055#1086#1076#1090#1080#1087
          end
          item
            State = cbsChecked
            Tag = 4
            Text = #1055#1086#1083#1085#1086#1077' '#1085#1072#1079#1074#1072#1085#1080#1077
          end
          item
            State = cbsChecked
            Tag = 5
            Text = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
          end
          item
            Tag = 6
            Text = #1057#1090#1088#1072#1085#1072
          end
          item
            State = cbsChecked
            Tag = 7
            Text = #1062#1074#1077#1090
          end
          item
            State = cbsChecked
            Tag = 8
            Text = #1062#1077#1085#1072
          end
          item
            State = cbsChecked
            Tag = 9
            Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
          end
          item
            State = cbsChecked
            Tag = 10
            Text = #1057#1082#1080#1076#1082#1072
          end
          item
            State = cbsChecked
            Tag = 11
            Text = #1062#1077#1085#1072' '#1087#1088#1086#1076#1072#1078#1080
          end
          item
            State = cbsChecked
            Tag = 12
            Text = #1053#1072' '#1089#1091#1084#1084#1091
          end
          item
            State = cbsChecked
            Tag = 13
            Text = #1053#1072' '#1089#1082#1083#1072#1076#1077
          end
          item
            State = cbsChecked
            Tag = 14
            Text = #1056#1077#1079#1077#1088#1074
          end
          item
            State = cbsChecked
            Tag = 15
            Text = #1042#1085#1091#1090#1088'. '#1082#1086#1076
          end>
        Style.BorderStyle = cbsOffice11
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
      end
    end
  end
end
