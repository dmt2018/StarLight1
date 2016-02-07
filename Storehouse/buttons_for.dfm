object frm_buttons: Tfrm_buttons
  Left = 497
  Top = 223
  Caption = '  '#1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1082#1085#1086#1087#1086#1082
  ClientHeight = 520
  ClientWidth = 716
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 716
    Height = 41
    Align = alTop
    BevelInner = bvSpace
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 257
      Top = 12
      Width = 62
      Height = 16
      Align = alCustom
      Caption = #1050#1083#1072#1074#1080#1096#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 2
      Top = 2
      Width = 52
      Height = 37
      Align = alLeft
      Caption = '  '#1054#1090#1076#1077#1083':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 16
    end
    object DBComboBoxEh1: TDBComboBoxEh
      Left = 64
      Top = 9
      Width = 177
      Height = 22
      Cursor = crHandPoint
      Alignment = taLeftJustify
      AlwaysShowBorder = True
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      Flat = True
      ParentFont = False
      TabOrder = 0
      Text = 'DBComboBoxEh1'
      Visible = True
    end
    object DBComboBoxEh2: TDBComboBoxEh
      Left = 336
      Top = 9
      Width = 129
      Height = 22
      Cursor = crHandPoint
      Alignment = taLeftJustify
      AlwaysShowBorder = True
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      Flat = True
      Items.Strings = (
        'F2'
        'F3'
        'F4'
        'F5'
        'F6'
        'F7'
        'F8')
      KeyItems.Strings = (
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8')
      ParentFont = False
      TabOrder = 1
      Visible = True
      OnChange = DBComboBoxEh2Change
    end
    object Panel2: TPanel
      Left = 520
      Top = 2
      Width = 194
      Height = 37
      Align = alRight
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -13
      Font.Name = 'arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      object Close_BitBtn: TcxButton
        Left = 65
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
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 716
    Height = 479
    Align = alClient
    BevelInner = bvSpace
    BevelOuter = bvLowered
    TabOrder = 1
    object grid_but: TcxGrid
      Left = 393
      Top = 2
      Width = 321
      Height = 475
      Align = alClient
      PopupMenu = PopupMenu2
      TabOrder = 2
      LookAndFeel.Kind = lfOffice11
      object grid_butView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        FilterBox.Position = fpTop
        DataController.DataSource = but_view_ds
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
          end
          item
            Format = '0'
            Kind = skCount
            Position = spFooter
            Column = fbtn_F_SUB_TYPE
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
          end
          item
            Format = '0'
            Kind = skCount
            Column = fbtn_F_SUB_TYPE
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1092#1080#1083#1100#1090#1088#1086#1074
        OptionsBehavior.CellHints = True
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.HeaderEndEllipsis = True
        object fbtn_F_TYPE: TcxGridDBColumn
          DataBinding.FieldName = 'F_TYPE'
          Visible = False
          GroupIndex = 0
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          IsCaptionAssigned = True
        end
        object fbtn_F_SUB_TYPE: TcxGridDBColumn
          Caption = #1055#1086#1076#1090#1080#1087
          DataBinding.FieldName = 'F_SUB_TYPE'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Moving = False
          Width = 211
        end
        object fbtn_F_CHAR: TcxGridDBColumn
          Caption = #1057#1090#1088#1086#1082#1072' '#1087#1086#1080#1089#1082#1072
          DataBinding.FieldName = 'F_CHAR'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Moving = False
          Width = 134
        end
        object fbtn_NBUTTON: TcxGridDBColumn
          DataBinding.FieldName = 'NBUTTON'
          Visible = False
        end
        object grid_butView1HOL_SUB_TYPE: TcxGridDBColumn
          DataBinding.FieldName = 'HOL_SUB_TYPE'
          Visible = False
        end
        object grid_butView1FT_ID: TcxGridDBColumn
          DataBinding.FieldName = 'FT_ID'
          Visible = False
        end
        object grid_butView1HT_ID: TcxGridDBColumn
          DataBinding.FieldName = 'HT_ID'
          Visible = False
        end
        object grid_butView1HOL_TYPE: TcxGridDBColumn
          DataBinding.FieldName = 'HOL_TYPE'
          Visible = False
        end
        object grid_butView1ID_DEPARTMENTS: TcxGridDBColumn
          DataBinding.FieldName = 'ID_DEPARTMENTS'
          Visible = False
        end
        object grid_butView1ID_DEP: TcxGridDBColumn
          DataBinding.FieldName = 'ID_DEP'
          Visible = False
        end
        object grid_butView1NN: TcxGridDBColumn
          DataBinding.FieldName = 'NN'
          Visible = False
        end
        object grid_butView1FST_ID: TcxGridDBColumn
          DataBinding.FieldName = 'FST_ID'
          Visible = False
        end
      end
      object grid_butLevel1: TcxGridLevel
        GridView = grid_butView1
      end
    end
    object Grid_types: TcxGrid
      Left = 2
      Top = 2
      Width = 383
      Height = 475
      Align = alLeft
      PopupMenu = PopupMenu1
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      object Grid_typesView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        FilterBox.Position = fpTop
        OnCustomDrawCell = Grid_typesView1CustomDrawCell
        DataController.DataSource = fst_view_ds
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
            Column = fst_F_SUB_TYPE
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
            Column = fst_F_SUB_TYPE
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1092#1080#1083#1100#1090#1088#1086#1074
        OptionsBehavior.CellHints = True
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.InvertSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        OptionsView.HeaderEndEllipsis = True
        object fst_F_TYPE: TcxGridDBColumn
          DataBinding.FieldName = 'F_TYPE'
          Visible = False
          GroupIndex = 0
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.ShowCaption = False
          Options.Sorting = False
          IsCaptionAssigned = True
        end
        object fst_F_SUB_TYPE: TcxGridDBColumn
          Caption = #1055#1086#1076#1090#1080#1087
          DataBinding.FieldName = 'F_SUB_TYPE'
          Options.Editing = False
          Options.Filtering = False
          Options.Moving = False
          Options.Sorting = False
          Width = 146
        end
        object fst_HOL_SUB_TYPE: TcxGridDBColumn
          Caption = #1043#1086#1083'. '#1087#1086#1076#1090#1080#1087
          DataBinding.FieldName = 'HOL_SUB_TYPE'
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Width = 118
        end
        object fst_NBUTTON: TcxGridDBColumn
          Caption = #1050#1083#1072#1074#1080#1096#1072
          DataBinding.FieldName = 'NBUTTON'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          MinWidth = 70
          Options.Editing = False
          Options.Filtering = False
          Options.Grouping = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 70
        end
        object fst_FT_ID: TcxGridDBColumn
          DataBinding.FieldName = 'FT_ID'
          Visible = False
        end
        object fst_HT_ID: TcxGridDBColumn
          DataBinding.FieldName = 'HT_ID'
          Visible = False
        end
        object fst_HOL_TYPE: TcxGridDBColumn
          DataBinding.FieldName = 'HOL_TYPE'
          Visible = False
        end
        object fst_ID_DEPARTMENTS: TcxGridDBColumn
          DataBinding.FieldName = 'ID_DEPARTMENTS'
          Visible = False
        end
        object fst_NN: TcxGridDBColumn
          DataBinding.FieldName = 'NN'
          Visible = False
        end
        object fst_FST_ID: TcxGridDBColumn
          DataBinding.FieldName = 'FST_ID'
          Visible = False
        end
      end
      object Grid_typesLevel1: TcxGridLevel
        GridView = Grid_typesView1
      end
    end
    object edit_panel: TPanel
      Left = 488
      Top = 152
      Width = 177
      Height = 54
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      Visible = False
      object SpeedButton3: TSpeedButton
        Left = 144
        Top = 8
        Width = 23
        Height = 22
        Cursor = crHandPoint
        Flat = True
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000010000000000000101
          0100020202000303030004040400050505000606060007070700080808000909
          09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
          1100121212001313130014141400151515001616160017171700181818001919
          19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
          210022222200232323002424240025252500262626002D282800352B2A003C2D
          2C00432F2E0049313000533433005C3635006C3937007A3A3800833B3800893B
          38008C3B38008F3B3800913A3800923A3700923A370093393600933836009338
          3500933735009336340093363400933433009333320093323100922F2E00922D
          2D00922C2B00922B2B00922B2B00922C2B00922D2C00922E2E0092302F009232
          31009334330094373500943A3700953C3900953D3A00953F3B0097403D009841
          3E009A423E009A423F009B423F009C4340009E4341009C4340009A433F009943
          3F0098433F0097433F0097433F0096433F0096433F0095434000934541008F47
          43008A4A4700854D4B007F524F0079575500735C5B006F6060006D6363006B66
          66006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
          7100727272007373730074747400757575007676760077777700787878007979
          79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E00817B7B008A7777009174
          7400987171009E6E6E00A46B6B00A9696900AD676700B1666600B8646400BE63
          6300C1626200C4636300C6636300C7646500C8646500C9646500CA656600CB66
          6600CB666600CB666600CA666600CB666600CC666600CD666600CD666600CD66
          6600CD666600CD656600CC656600CB656600CA656600CA666600C9666600C966
          6600C8676700C8686800C86A6A00C86C6C00C76D6D00C66F6E00C6717000C574
          7300C4787700C47C7B00C37F7E00C3858400C48A8A00C5919000C4969500C498
          9800C2999900C59C9B00C89E9E00C9A0A000C9A3A300CAA8A800C9AEAE00CAB3
          B300CAB9B900CBBDBE00CDC1C200CEC5C600CFC8C900CEC9CA00CEC9CA00CECA
          CB00CECACB00CECBCB00CDCBCC00CDCBCC00CECBCC00CDCBCC00CECBCC00CECA
          CC00CFC8CC00D2BECF00D6AED200DC94D900E27DDE00E961E500EF47EC00F335
          F100F721F600FB0CFB00FD06FD00FE02FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE01FE00FE02FE00FD07
          FD00FB1CFA00F641F600F169F100ED8CED00E9ACE900E6C5E600E5D4E400E4DA
          E400E4E0E400E5E3E500E6E5E700E8E8E900ECECED00F0F1F100F5F5F500F7F7
          F700F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800DEDEDEDEDEDE
          DEDEDEDEDEDEDEDEDEDEDEDE5B5BB2B2B2B2B2B2B2485BDEDEDEDE5B9A8CF243
          43F4F3F2C943565BDEDEDE5B9B8AF34343F2F4F2C843565BDEDEDE5B9B8AF343
          43F2F4F4C843565BDEDEDE5B9B8AF4F4F2F2F2F2C843565BDEDEDE5B9B8CA2A8
          A8A48BA59F8B9B5BDEDEDE5B88ABB4B7B7B7B5B5B7B7965BDEDEDE5B96FFFFFF
          FFFFFFFFFFFF965BDEDEDE5B96FFFFFFFFFFFFFFFFFF965BDEDEDE5B96FFC7C7
          C7C7C7C7C7FF965BDEDEDE5B96FFFFFFFFFFFFFFFFFF965BDEDEDE5B96FFC7C7
          C7C7C7C7C7FF965BDEDEDE5B96FFFFFFFFFFFFFFFFFF965BDEDEDEDE5BFFFFFF
          FFFFFFFFFFFF5BDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE}
        OnClick = SpeedButton3Click
      end
      object DBEditEh1: TDBEditEh
        Left = 8
        Top = 8
        Width = 129
        Height = 22
        AlwaysShowBorder = True
        EditButtons = <>
        Flat = True
        TabOrder = 0
        Visible = True
        OnKeyDown = DBEditEh1KeyDown
      end
      object cxCheckBox1: TcxCheckBox
        Left = 4
        Top = 30
        Cursor = crHandPoint
        Caption = #1076#1083#1103' '#1074#1089#1077#1093' '#1087#1086#1076#1090#1080#1087#1086#1074
        ParentFont = False
        Properties.ImmediatePost = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Style.BorderStyle = ebsOffice11
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Pitch = fpFixed
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 121
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 385
      Top = 2
      Width = 8
      Height = 475
      Cursor = crHSplit
      HotZoneClassName = 'TcxMediaPlayer9Style'
      Control = Grid_types
    end
  end
  object fst_view_ds: TDataSource
    DataSet = fst_view
    Left = 87
    Top = 219
  end
  object fst_view: TOraQuery
    SQLRefresh.Strings = (
      'where '
      '  a.fst_id = :fst_id'
      '  and a.id_departments = :id_departments')
    SQL.Strings = (
      'begin store_pkg.select_subtypes_all(:id_dep_, :cursor_); end;')
    FetchAll = True
    Left = 119
    Top = 219
    ParamData = <
      item
        Name = 'id_dep_'
        ParamType = ptInput
        Value = Null
        ExtDataType = 107
      end
      item
        DataType = ftCursor
        Name = 'cursor_'
        Value = 'Object'
      end>
    object fst_viewNN: TFloatField
      FieldName = 'NN'
    end
    object fst_viewFST_ID: TFloatField
      FieldName = 'FST_ID'
      Required = True
    end
    object fst_viewF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Required = True
      Size = 50
    end
    object fst_viewHOL_SUB_TYPE: TStringField
      FieldName = 'HOL_SUB_TYPE'
      Size = 50
    end
    object fst_viewFT_ID: TFloatField
      FieldName = 'FT_ID'
      Required = True
    end
    object fst_viewF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Required = True
      Size = 50
    end
    object fst_viewHT_ID: TFloatField
      FieldName = 'HT_ID'
    end
    object fst_viewHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
      Size = 10
    end
    object fst_viewID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
      Required = True
    end
    object fst_viewNBUTTON: TStringField
      FieldName = 'NBUTTON'
      Size = 2
    end
  end
  object but_view: TOraQuery
    SQLUpdate.Strings = (
      'update buttons_set set f_char = :f_char where '
      'id_dep = :old_id_dep'
      '          and nbutton = :old_nbutton'
      '          and FST_ID= :old_FST_ID')
    SQL.Strings = (
      
        'begin store_pkg.select_subtypes_button(:id_dep_, :button_, :curs' +
        'or_); end;')
    FetchAll = True
    Left = 426
    Top = 219
    ParamData = <
      item
        Name = 'id_dep_'
        ParamType = ptInput
        Value = Null
        ExtDataType = 107
      end
      item
        Name = 'button_'
        ParamType = ptInput
        Value = Null
        ExtDataType = 107
      end
      item
        DataType = ftCursor
        Name = 'cursor_'
        Value = 'Object'
      end>
    object but_viewNN: TFloatField
      FieldName = 'NN'
    end
    object but_viewFST_ID: TFloatField
      FieldName = 'FST_ID'
      Required = True
    end
    object but_viewF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Required = True
      Size = 50
    end
    object but_viewHOL_SUB_TYPE: TStringField
      FieldName = 'HOL_SUB_TYPE'
      Size = 50
    end
    object but_viewFT_ID: TFloatField
      FieldName = 'FT_ID'
      Required = True
    end
    object but_viewF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Required = True
      Size = 50
    end
    object but_viewHT_ID: TFloatField
      FieldName = 'HT_ID'
    end
    object but_viewHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
      Size = 10
    end
    object but_viewID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
      Required = True
    end
    object but_viewF_CHAR: TStringField
      FieldName = 'F_CHAR'
      Size = 10
    end
    object but_viewID_DEP: TIntegerField
      FieldName = 'ID_DEP'
      Required = True
    end
    object but_viewNBUTTON: TIntegerField
      FieldName = 'NBUTTON'
      Required = True
    end
  end
  object but_view_ds: TDataSource
    DataSet = but_view
    Left = 394
    Top = 219
  end
  object ActionList1: TActionList
    Left = 88
    Top = 184
    object move_left: TAction
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1085#1072' '#1082#1085#1086#1087#1082#1091
      ShortCut = 116
      OnExecute = move_leftExecute
    end
    object full_expand: TAction
      Caption = #1056#1072#1079#1074#1077#1088#1085#1091#1090#1100' '#1076#1077#1088#1077#1074#1086
      ShortCut = 114
      OnExecute = full_expandExecute
    end
    object full_inpand: TAction
      Caption = #1057#1074#1077#1088#1085#1091#1090#1100' '#1076#1077#1088#1077#1074#1086
      ShortCut = 115
      OnExecute = full_inpandExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 119
    Top = 184
    object N1: TMenuItem
      Action = move_left
      Default = True
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Action = full_expand
    end
    object N3: TMenuItem
      Action = full_inpand
    end
  end
  object ActionList2: TActionList
    Left = 395
    Top = 184
    object Action1: TAction
      Caption = #1059#1073#1088#1072#1090#1100' '#1089' '#1082#1085#1086#1087#1082#1080
      ShortCut = 117
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = #1056#1072#1079#1074#1077#1088#1085#1091#1090#1100' '#1076#1077#1088#1077#1074#1086
      ShortCut = 118
      OnExecute = Action2Execute
    end
    object Action3: TAction
      Caption = #1057#1074#1077#1088#1085#1091#1090#1100' '#1076#1077#1088#1077#1074#1086
      ShortCut = 119
      OnExecute = Action3Execute
    end
  end
  object PopupMenu2: TPopupMenu
    OnPopup = PopupMenu2Popup
    Left = 426
    Top = 184
    object MenuItem1: TMenuItem
      Action = Action1
      Default = True
    end
    object MenuItem2: TMenuItem
      Caption = '-'
    end
    object MenuItem3: TMenuItem
      Action = Action2
    end
    object MenuItem4: TMenuItem
      Action = Action3
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object N5: TMenuItem
      Caption = #1053#1072#1079#1085#1072#1095#1080#1090#1100' '#1087#1086#1080#1089#1082
      OnClick = N5Click
    end
    object N7: TMenuItem
      Caption = #1059#1073#1088#1072#1090#1100' '#1087#1086#1080#1089#1082
      OnClick = N7Click
    end
  end
end
