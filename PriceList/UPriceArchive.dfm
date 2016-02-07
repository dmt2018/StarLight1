object frmPriceArchive: TfrmPriceArchive
  Left = 0
  Top = 0
  Caption = #1040#1088#1093#1080#1074' '#1094#1077#1085#1086#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1081
  ClientHeight = 590
  ClientWidth = 1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 1080
    Height = 40
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      1080
      40)
    object btnClose: TcxButton
      Left = 951
      Top = 4
      Width = 123
      Height = 30
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #1042#1099#1093#1086#1076
      ModalResult = 2
      TabOrder = 3
      OnClick = btnCloseClick
      Colors.Default = clBtnFace
      Colors.Normal = clBtnFace
      Colors.Hot = clBtnFace
      Colors.Pressed = clBtnFace
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
    object btnRefresh: TcxButton
      Left = 4
      Top = 4
      Width = 128
      Height = 30
      Cursor = crHandPoint
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = btnRefreshClick
      Colors.Default = clBtnFace
      Colors.Normal = clBtnFace
      Colors.Hot = clBtnFace
      Colors.Pressed = clBtnFace
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000220B0000220B00000001000000000000009C0000089C
        0800109C0800109C100031A5210039A5210039A5290031AD290039AD290039AD
        3100EFA5390039AD390039B539006BB542006BB54A00EFA55200FFB552008484
        5A0094BD5A0073C66300E7AD6B00F7BD6B0073C66B00AD7B7300AD847300B584
        7300A5C67300AD7B7B009C847B00A5847B00AD847B00B58C7B00C6C67B007BCE
        7B00B5848400BD848400B58C8400BD8C8400BD948400C6948400C69C8400DEA5
        8400E7B58400CE9C8C00CEA58C00D6A58C00DEAD8C00EFC68C00F7C68C00BDCE
        8C00C6CE8C00B5AD9400E7CE9400EFCE9400B5AD9C00EFCE9C00F7CE9C00CED6
        9C00F7D69C009CDE9C00BDB5A500DEC6A500EFCEA500ADD6A500E7D6A500F7D6
        A500CEBDAD00D6C6AD00C6D6AD00E7D6AD00EFD6AD00F7D6AD00F7D6B500CEDE
        B500EFDEB500F7DEB500CEDEBD00EFDEBD00F7DEBD00E7CEC600E7DEC600EFDE
        C600F7DEC600EFE7C600F7E7C600FFE7C600E7D6CE00F7DECE00EFE7CE00F7E7
        CE00FFE7CE00CEEFCE00D6EFCE00E7D6D600F7E7D600FFE7D600EFEFD600FFEF
        D600EFDEDE00F7E7DE00EFEFDE00F7EFDE00FFEFDE00F7EFE700FFEFE700FFF7
        E700F7EFEF00FFF7EF00FFF7F700F7FFF700FFFFF700FF00FF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006F6F6F1B2222
        222222222222222222222222222222226F6F6F6F6F1B51544E4B484641373735
        353535353535351F6F6F6F6F6F1B5154524E3140403E3737353535353535351F
        6F6F6F6F6F1B575952523900400E06060E2034353535351F6F6F6F6F6F1B585E
        59524A0003000000000012343535351F6F6F6F6F6F1B5E655E594D0000000000
        000000203535351F6F6F6F6F6F1E63655E59500000000932320E00063535351F
        6F6F6F6F6F1E6767655E53000000044540401A023735351F6F6F6F6F6F1F676B
        67655800000000004546463E2137351F6F6F6F6F6F246A6B6767585850504D4A
        454846462137351F6F6F6F6F6F256C6E6B2167655E53504D4A454540463E371F
        6F6F6F6F6F266C706C216767655800000000004546463E1F6F6F6F6F6F276C70
        706C033F605858070000004548463E1F6F6F6F6F6F286C7070700B001649490B
        0000004A4E48461F6F6F6F6F6F286C7070705B00000000000000004D4E4D3D1C
        6F6F6F6F6F2B6C7070706D3B00000000000300504D42331C6F6F6F6F6F2C6C70
        7070706D5B160B0B13580044423C361C6F6F6F6F6F2D6C707070707070706C6B
        69501811171717186F6F6F6F6F2E6C707070707070706E6C6B4F192A140F0A22
        6F6F6F6F6F2E6C7070707070707070706E4F192F1510226F6F6F6F6F6F2E6C70
        70707070707070707056192F15226F6F6F6F6F6F6F2E70707070707070707070
        705D192F226F6F6F6F6F6F6F6F2929292929292929292929292919226F6F6F6F
        6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F}
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      Spacing = 6
    end
    object dtStart: TcxDateEdit
      Left = 138
      Top = 6
      EditValue = 0d
      Properties.DateButtons = []
      Properties.DateOnError = deToday
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 1
      OnKeyDown = dtStartKeyDown
      Width = 121
    end
    object dtEnd: TcxDateEdit
      Left = 265
      Top = 6
      EditValue = 0d
      Properties.DateButtons = []
      Properties.DateOnError = deToday
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 2
      OnKeyDown = dtStartKeyDown
      Width = 121
    end
  end
  object pcArchiveMain: TcxPageControl
    Left = 0
    Top = 40
    Width = 1080
    Height = 550
    ActivePage = tshListPPLI
    Align = alClient
    TabOrder = 1
    ClientRectBottom = 550
    ClientRectRight = 1080
    ClientRectTop = 27
    object tshListPPLI: TcxTabSheet
      Caption = ' '#1055#1088#1072#1081#1089'-'#1083#1080#1089#1090#1099' (Ctrl+1) '
      ImageIndex = 0
      OnShow = tshListPPLIShow
      object gd_prices_arch: TcxGrid
        Left = 0
        Top = 0
        Width = 1080
        Height = 523
        Align = alClient
        PopupMenu = pmArchive
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        object gd_prices_arch_v: TcxGridDBTableView
          OnDblClick = gd_prices_arch_vDblClick
          OnKeyDown = gd_prices_arch_vKeyDown
          NavigatorButtons.ConfirmDelete = False
          FilterBox.Position = fpTop
          DataController.DataSource = PPL_Arch_DS
          DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription]
          DataController.Filter.AutoDataSetFilter = True
          DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
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
              Column = gd_prices_arch_vPPL_COMMENT
            end
            item
              Format = '0'
              Kind = skSum
              Column = gd_prices_arch_vSENDED_TO_WAREHOUSE
            end
            item
              Format = '0'
              Kind = skSum
              Column = gd_prices_arch_vFINISHED
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1092#1080#1083#1100#1090#1088#1086#1074
          FilterRow.Visible = True
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.HeaderEndEllipsis = True
          object gd_prices_arch_vFINISHED: TcxGridDBColumn
            DataBinding.FieldName = 'FINISHED'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.DisplayChecked = #1044#1072
            Properties.DisplayUnchecked = #1053#1077#1090
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = True
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyph.Data = {
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
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 50
            Options.Editing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 50
            IsCaptionAssigned = True
          end
          object gd_prices_arch_vSENDED_TO_WAREHOUSE: TcxGridDBColumn
            Caption = #1057#1082#1083#1072#1076
            DataBinding.FieldName = 'SENDED_TO_WAREHOUSE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.DisplayChecked = #1076#1072
            Properties.DisplayUnchecked = #1085#1077#1090
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = True
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 50
            Options.Editing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 50
          end
          object gd_prices_arch_vPPL_COMMENT: TcxGridDBColumn
            Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
            DataBinding.FieldName = 'PPL_COMMENT'
            FooterAlignmentHorz = taCenter
            MinWidth = 100
            Options.Editing = False
            Options.Moving = False
          end
          object gd_prices_arch_vPPL_DATE: TcxGridDBColumn
            Caption = #1044#1072#1090#1072
            DataBinding.FieldName = 'PPL_DATE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 90
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 90
          end
          object gd_prices_arch_vPRIME_COAST_COEFFICIENT: TcxGridDBColumn
            Caption = #1050#1092'. '#1089#1077#1073'.'
            DataBinding.FieldName = 'PRIME_COAST_COEFFICIENT'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 60
            Options.Editing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 60
          end
          object gd_prices_arch_vPROFIT_COEFFITIENT: TcxGridDBColumn
            Caption = #1050#1092'. '#1076#1086#1093'.'
            DataBinding.FieldName = 'PROFIT_COEFFITIENT'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 60
            Options.Editing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 60
          end
          object gd_prices_arch_vEXCHANGE_RATE: TcxGridDBColumn
            Caption = #1050#1091#1088#1089
            DataBinding.FieldName = 'EXCHANGE_RATE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 60
            Options.Editing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 60
          end
          object gd_prices_arch_vUSE_CUST_COEF: TcxGridDBColumn
            Caption = #1058#1072#1084#1086#1078'. '#1082#1092'.'
            DataBinding.FieldName = 'USE_CUST_COEF'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 80
            Options.Editing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 80
          end
          object gd_prices_arch_vINV_ID: TcxGridDBColumn
            Caption = #8470' '#1080#1085#1074'-'#1089#1086#1074
            DataBinding.FieldName = 'ALL_INV'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 100
          end
          object gd_prices_arch_vPACK_ID: TcxGridDBColumn
            Caption = #1055#1072#1095#1082#1072
            DataBinding.FieldName = 'PACK_ID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 60
            Options.Editing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 60
          end
          object gd_prices_arch_vIS_MINUS: TcxGridDBColumn
            Caption = #1052#1080#1085#1091#1089'.'
            DataBinding.FieldName = 'IS_MINUS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.DisplayChecked = #1076#1072
            Properties.DisplayUnchecked = #1085#1077#1090
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = True
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 50
            Options.Editing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 50
          end
          object gd_prices_arch_vINV_DATE: TcxGridDBColumn
            Caption = #1044#1072#1090#1072' '#1080#1085#1074'-'#1089#1072
            DataBinding.FieldName = 'INV_DATE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 90
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 90
          end
          object gd_prices_arch_vCOMMENTS: TcxGridDBColumn
            Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
            DataBinding.FieldName = 'COMMENTS'
            MinWidth = 100
          end
          object gd_prices_arch_vS_NAME_RU: TcxGridDBColumn
            Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
            DataBinding.FieldName = 'S_NAME_RU'
            MinWidth = 120
            Options.Editing = False
            Options.Moving = False
            Width = 120
          end
          object gd_prices_arch_vPPLI_ID: TcxGridDBColumn
            DataBinding.FieldName = 'PPLI_ID'
            Visible = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
          end
          object gd_prices_arch_vID_DEPARTMENTS: TcxGridDBColumn
            DataBinding.FieldName = 'ID_DEPARTMENTS'
            Visible = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
          end
          object gd_prices_arch_vINV_ID1: TcxGridDBColumn
            DataBinding.FieldName = 'INV_ID'
            Visible = False
          end
          object gd_prices_arch_vINV_ID2: TcxGridDBColumn
            DataBinding.FieldName = 'INV_ID2'
            Visible = False
          end
          object gd_prices_arch_vINV_ID3: TcxGridDBColumn
            DataBinding.FieldName = 'INV_ID3'
            Visible = False
          end
          object gd_prices_arch_vINV_ID4: TcxGridDBColumn
            DataBinding.FieldName = 'INV_ID4'
            Visible = False
          end
        end
        object gd_prices_arch_l: TcxGridLevel
          GridView = gd_prices_arch_v
        end
      end
    end
    object tshPriceList: TcxTabSheet
      Caption = ' '#1044#1072#1085#1085#1099#1077' '#1087#1088#1072#1081#1089'-'#1083#1080#1089#1090#1072' (Ctrl+2) '
      ImageIndex = 1
      OnShow = tshPriceListShow
      object grid_ppl: TcxGrid
        Left = 0
        Top = 0
        Width = 1080
        Height = 523
        Hint = 'Ctrl+Tab '#1087#1077#1088#1077#1082#1083#1102#1095#1077#1085#1080#1077' '#1084#1077#1078#1076#1091' '#1090#1072#1073#1083#1080#1094#1072#1084#1080
        Align = alClient
        PopupMenu = pmArchive
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        object grid_pplView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          FilterBox.Position = fpTop
          DataController.DataSource = PPL_DS
          DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription, fcoSoftCompare]
          DataController.Filter.AutoDataSetFilter = True
          DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
          DataController.Summary.DefaultGroupSummaryItems = <>
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
              Column = INVOICE_AMOUNT
            end
            item
              Format = '0'
              Kind = skCount
              Column = H_CODE
            end
            item
              Format = '0'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = TOTAL_SUM
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = TOTAL_PROFIT
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = INV_TOTAL_PROFIT
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = STOK_TOTAL_PROFIT
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1092#1080#1083#1100#1090#1088#1086#1074
          FilterRow.Visible = True
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.HeaderEndEllipsis = True
          object H_CODE: TcxGridDBColumn
            Caption = #1040#1088#1090#1080#1082#1091#1083
            DataBinding.FieldName = 'H_CODE'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 60
            Options.Editing = False
            Width = 100
          end
          object COMPILED_NAME: TcxGridDBColumn
            Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'COMPILED_NAME_POT'
            HeaderAlignmentVert = vaCenter
            MinWidth = 70
            Options.Editing = False
            Width = 120
          end
          object grid_pplView1RUS_MARKS: TcxGridDBColumn
            Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
            DataBinding.FieldName = 'RUS_MARKS'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Width = 120
          end
          object INVOICE_AMOUNT: TcxGridDBColumn
            Caption = #1050#1086#1083'-'#1074#1086' '#1074' '#1080#1085#1074#1086#1081#1089#1077
            DataBinding.FieldName = 'INVOICE_AMOUNT'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 60
            Options.Editing = False
            Width = 80
          end
          object STOCK_AMOUNT: TcxGridDBColumn
            Caption = #1050#1086#1083'-'#1074#1086' '#1085#1072' '#1089#1082#1083#1072#1076#1077
            DataBinding.FieldName = 'STOCK_AMOUNT'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 65
            Options.Editing = False
            Width = 80
          end
          object HOL_PRICE: TcxGridDBColumn
            Caption = #1062#1077#1085#1072' '#1087#1086#1089#1090'.'
            DataBinding.FieldName = 'HOL_PRICE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
            Properties.ReadOnly = True
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 80
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 80
          end
          object RUBLE_PRICE: TcxGridDBColumn
            Caption = #1062#1077#1085#1072' '#1087#1086#1089#1090'. ('#1088#1091#1073'.)'
            DataBinding.FieldName = 'RUBLE_PRICE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.ReadOnly = True
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 60
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 80
          end
          object LAST_PRICE: TcxGridDBColumn
            Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1094#1077#1085#1072
            DataBinding.FieldName = 'LAST_PRICE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
            Properties.ReadOnly = True
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 60
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 80
          end
          object PRICE_PCC: TcxGridDBColumn
            Caption = #1062#1077#1085#1072' '#1089' '#1082#1086#1101#1092'. '#1089#1077#1073'.'
            DataBinding.FieldName = 'PRICE_PCC'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
            Properties.ReadOnly = True
            BestFitMaxWidth = 100
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 90
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 90
          end
          object PRICE_PCC_PC: TcxGridDBColumn
            Caption = #1062#1077#1085#1072' '#1089' '#1082#1086#1101#1092'. '#1087#1088#1080#1073'.'
            DataBinding.FieldName = 'PRICE_PCC_PC'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 60
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 90
          end
          object CUST_COEF: TcxGridDBColumn
            Caption = #1058#1072#1084#1086#1078'. '#1082#1086#1101#1092'.'
            DataBinding.FieldName = 'CUST_COEF'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 60
            Options.Editing = False
            Width = 70
          end
          object FINAL_PRICE: TcxGridDBColumn
            Caption = #1062#1077#1085#1072' '#1087#1088#1086#1076#1072#1078#1080
            DataBinding.FieldName = 'FINAL_PRICE'
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = '0.0'
            Properties.ImmediatePost = True
            Properties.Precision = 15
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 70
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.ShowEditButtons = isebAlways
            Width = 100
          end
          object TOTAL_SUM: TcxGridDBColumn
            Caption = #1057#1091#1084#1084#1072
            DataBinding.FieldName = 'TOTAL_SUM'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
            Properties.ReadOnly = True
            Properties.UseThousandSeparator = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 60
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 90
          end
          object INV_TOTAL_PROFIT: TcxGridDBColumn
            Caption = #1044#1086#1093#1086#1076' '#1080#1085#1074#1086#1081#1089#1072
            DataBinding.FieldName = 'INV_TOTAL_PROFIT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
            Properties.ReadOnly = True
            Properties.UseThousandSeparator = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 70
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 100
          end
          object STOK_TOTAL_PROFIT: TcxGridDBColumn
            Caption = #1044#1086#1093#1086#1076' '#1087#1077#1088#1077#1086#1094#1077#1085#1082#1080
            DataBinding.FieldName = 'STOK_TOTAL_PROFIT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
            Properties.ReadOnly = True
            Properties.UseThousandSeparator = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 70
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 100
          end
          object TOTAL_PROFIT: TcxGridDBColumn
            Caption = #1054#1073#1097#1080#1081' '#1076#1086#1093#1086#1076
            DataBinding.FieldName = 'TOTAL_PROFIT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
            Properties.ReadOnly = True
            Properties.UseThousandSeparator = True
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 70
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Width = 100
          end
          object HOL_TYPE: TcxGridDBColumn
            Caption = ':'
            DataBinding.FieldName = 'HOL_TYPE'
            Visible = False
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.GroupFooters = False
            Options.Moving = False
          end
          object grid_pplView1PPLI_ID: TcxGridDBColumn
            DataBinding.FieldName = 'PPLI_ID'
            Visible = False
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
          end
          object grid_pplView1PPL_ID: TcxGridDBColumn
            DataBinding.FieldName = 'PPL_ID'
            Visible = False
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
          end
          object grid_pplView1COMING_DATE: TcxGridDBColumn
            DataBinding.FieldName = 'COMING_DATE'
            Visible = False
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
          end
          object grid_pplView1LEFT_AMOUNT: TcxGridDBColumn
            DataBinding.FieldName = 'LEFT_AMOUNT'
            Visible = False
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
          end
          object grid_pplView1GIVEN_AMOUNT: TcxGridDBColumn
            DataBinding.FieldName = 'GIVEN_AMOUNT'
            Visible = False
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
          end
          object grid_pplView1N_ID: TcxGridDBColumn
            DataBinding.FieldName = 'N_ID'
            Visible = False
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
          end
          object grid_pplView1COL: TcxGridDBColumn
            DataBinding.FieldName = 'COL'
            Visible = False
            HeaderAlignmentVert = vaCenter
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Sorting = False
          end
          object grid_pplView1COMPILED_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'COMPILED_NAME'
            Visible = False
            HeaderAlignmentVert = vaCenter
          end
          object grid_pplView1INVOICE_DATA_ID: TcxGridDBColumn
            DataBinding.FieldName = 'INVOICE_DATA_ID'
            Visible = False
            HeaderAlignmentVert = vaCenter
          end
          object grid_pplView1CAME_TYPE: TcxGridDBColumn
            DataBinding.FieldName = 'CAME_TYPE'
            Visible = False
          end
          object grid_pplView1F_TYPE: TcxGridDBColumn
            DataBinding.FieldName = 'F_TYPE'
            Visible = False
          end
          object grid_pplView1INV_TOTAL_SUM: TcxGridDBColumn
            DataBinding.FieldName = 'INV_TOTAL_SUM'
            Visible = False
          end
          object grid_pplView1STOK_TOTAL_SUM: TcxGridDBColumn
            DataBinding.FieldName = 'STOK_TOTAL_SUM'
            Visible = False
          end
          object grid_pplView1NID_ROWNUM: TcxGridDBColumn
            DataBinding.FieldName = 'NID_ROWNUM'
            Visible = False
          end
        end
        object grid_ppl_Level1: TcxGridLevel
          GridView = grid_pplView1
        end
      end
    end
  end
  object PPL_Arch: TOraQuery
    SQL.Strings = (
      'begin'
      
        '  price_pkg.get_prices_all(:ID_DEPT_, :V_OFFICE, :V_DBEGIN, :V_D' +
        'END, :CURSOR_);'
      'end;')
    FetchAll = True
    Left = 96
    Top = 152
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEPT_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'V_OFFICE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'V_DBEGIN'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'V_DEND'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptInputOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'price_pkg.get_prices_all:0'
    object PPL_ArchPPLI_ID: TFloatField
      FieldName = 'PPLI_ID'
      Required = True
    end
    object PPL_ArchPPL_COMMENT: TStringField
      FieldName = 'PPL_COMMENT'
      Size = 100
    end
    object PPL_ArchPPL_DATE: TDateTimeField
      FieldName = 'PPL_DATE'
      Required = True
    end
    object PPL_ArchPRIME_COAST_COEFFICIENT: TFloatField
      FieldName = 'PRIME_COAST_COEFFICIENT'
    end
    object PPL_ArchPROFIT_COEFFITIENT: TFloatField
      FieldName = 'PROFIT_COEFFITIENT'
    end
    object PPL_ArchEXCHANGE_RATE: TFloatField
      FieldName = 'EXCHANGE_RATE'
      Required = True
      DisplayFormat = '0.00'
    end
    object PPL_ArchFINISHED: TIntegerField
      FieldName = 'FINISHED'
      Required = True
    end
    object PPL_ArchUSE_CUST_COEF: TIntegerField
      FieldName = 'USE_CUST_COEF'
      Required = True
    end
    object PPL_ArchID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
    end
    object PPL_ArchINV_ID: TFloatField
      FieldName = 'INV_ID'
    end
    object PPL_ArchINV_DATE: TDateTimeField
      FieldName = 'INV_DATE'
    end
    object PPL_ArchSENDED_TO_WAREHOUSE: TIntegerField
      FieldName = 'SENDED_TO_WAREHOUSE'
    end
    object PPL_ArchS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Required = True
      Size = 150
    end
    object PPL_ArchIS_MINUS: TFloatField
      FieldName = 'IS_MINUS'
    end
    object PPL_ArchCOMMENTS: TStringField
      FieldName = 'COMMENTS'
      Size = 1024
    end
    object PPL_ArchINV_ID2: TFloatField
      FieldName = 'INV_ID2'
    end
    object PPL_ArchINV_ID3: TFloatField
      FieldName = 'INV_ID3'
    end
    object PPL_ArchINV_ID4: TFloatField
      FieldName = 'INV_ID4'
    end
    object PPL_ArchPACK_ID: TIntegerField
      FieldName = 'PACK_ID'
    end
    object PPL_ArchALL_INV: TStringField
      FieldName = 'ALL_INV'
      Size = 166
    end
  end
  object PPL_Arch_DS: TOraDataSource
    DataSet = PPL_Arch
    Left = 96
    Top = 200
  end
  object PPL: TOraQuery
    SQLUpdate.Strings = (
      'UPDATE PREPARE_PRICE_LIST '
      'SET FINAL_PRICE = :FINAL_PRICE, date_change=sysdate '
      'WHERE (PPL_ID = :OLD_PPL_ID)')
    SQLRefresh.Strings = (
      
        'SELECT ppli_id, ppl_id, coming_date, invoice_amount, stock_amoun' +
        't,'
      
        '       left_amount, given_amount, hol_price, ruble_price, last_p' +
        'rice,'
      
        '       price_pcc, price_pcc_pc, n_id, final_price, great_name, G' +
        'REAT_NAME_F,'
      
        '       inv_total_sum, stok_total_sum, inv_total_profit, stok_tot' +
        'al_profit,'
      ''
      '       case when hol_type = '#39'RO'#39' then '#39'1 '#1056#1086#1079#1072' '#1075#1086#1083#1083#1072#1085#1076#1080#1103#39' else'
      '       case when hol_type = '#39'EC'#39' then '#39'2 '#1056#1086#1079#1072' '#1101#1082#1074#1072#1076#1086#1088#39' else'
      '       case when hol_type = '#39'CH'#39' then '#39'3 '#1061#1088#1080#1079#1072#1085#1090#1077#1084#1072#39' else'
      '       case when hol_type = '#39'GR'#39' then '#39'4 '#1047#1077#1083#1077#1085#1100#39' else'
      '       case when hol_type = '#39'CA'#39' then '#39'5 '#1061#1088#1080#1079#1072#1085#1090#1077#1084#1072#39' else'
      '       case when hol_type = '#39'LI'#39' then '#39'6 '#1051#1080#1083#1080#1103#39' else'
      '       case when hol_type = '#39'OT'#39' then '#39'7 '#1044#1088#1091#1075#1086#1077#39' else'
      '       case when hol_type = '#39'none'#39' then '#39#39' else '#39#39
      '       end end end end end end end end hol_type,'
      ''
      
        '       compiled_name, total_sum,total_profit,cust_coef, h_code, ' +
        'nvl(COL,0) as col'
      '       , rus_marks, INVOICE_DATA_ID, compiled_name_pot, f_type'
      
        '       , case when INVOICE_DATA_ID is null then '#39#1057#1082#1083#1072#1076#39' else '#39#1055#1086 +
        #1089#1090#1072#1074#1082#1072#39' end came_type '
      '  FROM ppl_view '
      '  WHERE (PPL_ID = :OLD_PPL_ID)')
    SQL.Strings = (
      
        'select ppli_id, ppl_id, coming_date, invoice_amount, stock_amoun' +
        't,'
      
        '       left_amount, given_amount, hol_price, ruble_price, last_p' +
        'rice,'
      '       price_pcc, price_pcc_pc, n_id, final_price,'
      '       inv_total_sum, stok_total_sum, inv_total_profit, '
      '       compiled_name, total_sum,cust_coef, h_code, col'
      '       , rus_marks, INVOICE_DATA_ID, compiled_name_pot, f_type'
      '       , came_type,  nid_rownum, '
      '       '
      '       case when hol_type = '#39'RO'#39' then '#39'1 '#1056#1086#1079#1072' '#1075#1086#1083#1083#1072#1085#1076#1080#1103#39' else'
      '       case when hol_type = '#39'EC'#39' then '#39'2 '#1056#1086#1079#1072' '#1101#1082#1074#1072#1076#1086#1088#39' else'
      '       case when hol_type = '#39'CH'#39' then '#39'3 '#1061#1088#1080#1079#1072#1085#1090#1077#1084#1072#39' else'
      '       case when hol_type = '#39'GR'#39' then '#39'4 '#1047#1077#1083#1077#1085#1100#39' else'
      '       case when hol_type = '#39'CA'#39' then '#39'5 '#1061#1088#1080#1079#1072#1085#1090#1077#1084#1072#39' else'
      '       case when hol_type = '#39'LI'#39' then '#39'6 '#1051#1080#1083#1080#1103#39' else'
      '       case when hol_type = '#39'OT'#39' then '#39'7 '#1044#1088#1091#1075#1086#1077#39' else'
      '       case when hol_type = '#39'none'#39' then '#39#39' else '#39#39
      '       end end end end end end end end hol_type'
      ''
      
        '       , case when nid_rownum=1 then stok_total_profit else 0 en' +
        'd stok_total_profit'
      
        '       , case when nid_rownum=1 then total_profit else total_pro' +
        'fit-stok_total_profit end total_profit'
      ''
      'from ('
      '       '
      
        'SELECT ppli_id, ppl_id, coming_date, invoice_amount, stock_amoun' +
        't,'
      
        '       left_amount, given_amount, hol_price, ruble_price, last_p' +
        'rice,'
      '       price_pcc, price_pcc_pc, n_id, final_price, '
      
        '       inv_total_sum, stok_total_sum, inv_total_profit, stok_tot' +
        'al_profit,'
      
        '       COMPILED_NAME_OTDEL as compiled_name, total_sum,total_pro' +
        'fit,cust_coef, h_code, nvl(COL,0) as col'
      
        '       , rus_marks, INVOICE_DATA_ID, compiled_name_pot, f_type, ' +
        'hol_type'
      
        '       , case when INVOICE_DATA_ID is null then '#39#1057#1082#1083#1072#1076#39' else '#39#1048#1085 +
        #1074#1086#1081#1089#1099#39' end came_type '
      
        '       , row_number() over(partition by n_id order by ppl_id) as' +
        ' nid_rownum'
      '  FROM ppl_view '
      '  WHERE PPLI_ID = :PPLI_ID'
      ')  '
      'order by compiled_name_pot')
    MasterSource = PPL_Arch_DS
    MasterFields = 'PPLI_ID'
    DetailFields = 'PPLI_ID'
    RefreshOptions = [roAfterUpdate]
    FilterOptions = [foCaseInsensitive]
    Left = 144
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PPLI_ID'
      end>
    object PPLPPLI_ID: TFloatField
      FieldName = 'PPLI_ID'
      Required = True
    end
    object PPLPPL_ID: TFloatField
      FieldName = 'PPL_ID'
      Required = True
    end
    object PPLCOMING_DATE: TDateTimeField
      FieldName = 'COMING_DATE'
    end
    object PPLINVOICE_AMOUNT: TFloatField
      FieldName = 'INVOICE_AMOUNT'
      Required = True
    end
    object PPLSTOCK_AMOUNT: TFloatField
      FieldName = 'STOCK_AMOUNT'
    end
    object PPLLEFT_AMOUNT: TFloatField
      FieldName = 'LEFT_AMOUNT'
      Required = True
    end
    object PPLGIVEN_AMOUNT: TFloatField
      FieldName = 'GIVEN_AMOUNT'
      Required = True
    end
    object PPLHOL_PRICE: TFloatField
      FieldName = 'HOL_PRICE'
    end
    object PPLRUBLE_PRICE: TFloatField
      FieldName = 'RUBLE_PRICE'
    end
    object PPLLAST_PRICE: TFloatField
      FieldName = 'LAST_PRICE'
    end
    object PPLPRICE_PCC: TFloatField
      FieldName = 'PRICE_PCC'
    end
    object PPLPRICE_PCC_PC: TFloatField
      FieldName = 'PRICE_PCC_PC'
    end
    object PPLN_ID: TFloatField
      FieldName = 'N_ID'
      Required = True
    end
    object PPLFINAL_PRICE: TFloatField
      FieldName = 'FINAL_PRICE'
    end
    object PPLINV_TOTAL_SUM: TFloatField
      FieldName = 'INV_TOTAL_SUM'
    end
    object PPLSTOK_TOTAL_SUM: TFloatField
      FieldName = 'STOK_TOTAL_SUM'
    end
    object PPLINV_TOTAL_PROFIT: TFloatField
      FieldName = 'INV_TOTAL_PROFIT'
    end
    object PPLCOMPILED_NAME: TStringField
      FieldName = 'COMPILED_NAME'
      Size = 299
    end
    object PPLTOTAL_SUM: TFloatField
      FieldName = 'TOTAL_SUM'
    end
    object PPLTOTAL_PROFIT: TFloatField
      FieldName = 'TOTAL_PROFIT'
    end
    object PPLCUST_COEF: TFloatField
      FieldName = 'CUST_COEF'
      Required = True
    end
    object PPLH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 30
    end
    object PPLCOL: TFloatField
      FieldName = 'COL'
    end
    object PPLRUS_MARKS: TStringField
      FieldName = 'RUS_MARKS'
      Size = 4000
    end
    object PPLINVOICE_DATA_ID: TFloatField
      FieldName = 'INVOICE_DATA_ID'
    end
    object PPLCOMPILED_NAME_POT: TStringField
      FieldName = 'COMPILED_NAME_POT'
      Size = 4000
    end
    object PPLF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Required = True
      Size = 50
    end
    object PPLCAME_TYPE: TStringField
      FieldName = 'CAME_TYPE'
      Size = 8
    end
    object PPLNID_ROWNUM: TFloatField
      FieldName = 'NID_ROWNUM'
    end
    object PPLHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
      Size = 16
    end
    object PPLSTOK_TOTAL_PROFIT: TFloatField
      FieldName = 'STOK_TOTAL_PROFIT'
    end
  end
  object PPL_DS: TOraDataSource
    DataSet = PPL
    Left = 144
    Top = 200
  end
  object alArchive: TActionList
    Left = 192
    Top = 152
    object aPPLI: TAction
      Caption = 'aPPLI'
      ShortCut = 16433
      OnExecute = aPPLIExecute
    end
    object aPPL: TAction
      Caption = 'aPPL'
      ShortCut = 16434
      OnExecute = aPPLExecute
    end
  end
  object pmArchive: TPopupMenu
    Left = 232
    Top = 152
    object mnExcel: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' '#1101#1082#1089#1077#1083#1100
      OnClick = mnExcelClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mnDelPrice: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1088#1072#1081#1089
      OnClick = mnDelPriceClick
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'xls'
    Filter = #1060#1072#1081#1083#1099' EXCEL (*.xls)|*.xls'
    Left = 273
    Top = 153
  end
end
