object frm_buttons: Tfrm_buttons
  Left = 436
  Top = 187
  Caption = '  '#1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1082#1085#1086#1087#1086#1082
  ClientHeight = 566
  ClientWidth = 733
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel4: TPanel
    Left = 0
    Top = 525
    Width = 733
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      733
      41)
    object btnClose: TcxButton
      Left = 578
      Top = 7
      Width = 145
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 0
      OnClick = btnCloseClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000858180A1908B8BCF8F8A89CF687C8ECF095AA1CF0958A2CF0955A1CF0853
        A0CF60748BCF888383CF878382CF797575A50000000000000000000000000000
        0000928E8DCFDAD2CFFFE5DCD9FF9DB4C8FF196CB6FF277BCDFF277BCDFF1969
        B7FF98ADC6FFE5DCD9FFDAD2CFFF898584D40000000000000000000000000000
        0000948F8ECFE5DCDAFFF7EEEBFFAAC2D4FF1970B8FF2882D3FF2882D3FF1A6D
        B9FFA4BAD2FFF7EEEBFFE5DDDAFF8A8585D40000000000000000000000000000
        0000959090CFE5DDDAFFF8EFECFFAAC4D5FF3E7FAFFF3E8AC6FF2888D3FF1A72
        B9FFA5BBD3FFF8EFECFFE6DEDBFF8B8686D40000000000000000000000000000
        0000969191CFE6DEDBFFF8F0EDFFABC6D6FF1F7BB5FF2B8DD0FF288DD3FF1A77
        B9FFA5BDD4FFF8F0EDFFE6DFDCFF8C8787D40000000000000000000000000000
        0000979392CFE6DFDCFFF8F1EEFFABC7D7FF197EB9FF2892D3FF2892D3FF1A7B
        B9FFA5BFD5FFF8F1EEFFE6E0DDFF8C8888D40000000000000000000000000000
        0000959191CFE6E0DEFFF9F2F0FFABC8D8FF147CB2FF1F87C0FF1F87C0FF1578
        B2FFA6C1D6FFF9F2F0FFE7E0DEFF8B8787D400000000000000002525962B3030
        A26579757ED3DDD8D6FFF9F3F1FFDDE4E8FF86B5CDFF86B4CDFF86B3CDFF86B2
        CDFFDAE1E7FFF9F3F1FFDDD8D6FF737074D82F2E8A64212189382F2FB8CE2E2E
        C4FF4241A4FFA7A3A9FFE9E3E1FFFAF4F2FFFAF5F2FFFAF5F2FFFAF5F2FFFAF5
        F2FFFAF4F2FFE8E2E0FFA5A1A7FF3B3B91FF2B2BB8FF28289ED32E2EB89E3030
        C8FF3030CBFF4241AFFF9F9CA9FFE4DFDDFFFAF5F3FFFBF6F4FFFBF6F4FFFAF5
        F3FFE3DEDCFF9C99A7FF3B3B9FFF2E2EC5FF2C2CBCFF252598A01D1D77042E2E
        B79C3636CAFF3B3BD5FF3D3CB4FF9492A6FFDEDAD9FFFAF5F4FFFAF5F4FFDED9
        D8FF918FA4FF3737A7FF3A3AD2FF3232BBFF2525989919196A04000000000000
        00002E2EB7803A3ACAFE4848E1FF3B3BB9FF8987A5FFD7D3D1FFD6D3D1FF8785
        A3FF3837B0FF4848DFFF3636BAFF2C2C99800000000000000000000000000000
        0000000000002D2DB5633A3AC7FA5353E8FF3B3BBEFF7B7AA2FF7A79A1FF3A3A
        BAFF5353E7FF3838B8FE8D8CB9FF52505C270000000000000000000000000000
        000000000000000000002C2CAF4A3838C2F35656E8FF3D3DC4FF3C3CC3FF5656
        E7FF3535B8F24F4E9C6FCCCBCBFF5B5959270000000000000000000000000000
        00000000000000000000000000002A2AA8343434BEE75151E2FF5151E2FF3232
        B7E82828A13463607B27C0BFBFFF625F5F270000000000000000000000000000
        00000000000000000000000000000000000027279E212F2FB7BE2E2EB5BF2727
        9F2300000000383636025D5A5A1E3D3B3B020000000000000000}
      LookAndFeel.Kind = lfOffice11
    end
  end
  object pcMain: TcxPageControl
    Left = 0
    Top = 0
    Width = 733
    Height = 525
    ActivePage = tshSettings
    Align = alClient
    TabOrder = 1
    ClientRectBottom = 525
    ClientRectRight = 733
    ClientRectTop = 27
    object tshButtons: TcxTabSheet
      Caption = ' '#1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1082#1085#1086#1087#1086#1082' '
      ImageIndex = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 733
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
          Width = 105
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
        object chBoxNotSelected: TcxCheckBox
          Left = 467
          Top = 9
          Caption = #1087#1086#1082#1072#1079#1072#1090#1100' '#1079#1072#1087#1080#1089#1080' '#1073#1077#1079' '#1075#1086#1088'. '#1082#1083#1072#1074#1080#1096
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          TabOrder = 2
          OnClick = chBoxNotSelectedClick
          Width = 239
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 41
        Width = 733
        Height = 457
        Align = alClient
        BevelInner = bvSpace
        BevelOuter = bvLowered
        TabOrder = 1
        object Splitter1: TSplitter
          Left = 385
          Top = 2
          Height = 453
          Color = clBlack
          ParentColor = False
          ExplicitHeight = 475
        end
        object grid_but: TcxGrid
          Left = 388
          Top = 2
          Width = 343
          Height = 453
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
          Height = 453
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
      end
    end
    object tshSettings: TcxTabSheet
      Caption = ' '#1054#1073#1097#1080#1077' '#1085#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1099' '
      ImageIndex = 1
      object pnlBottom: TPanel
        Left = 0
        Top = 0
        Width = 733
        Height = 498
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Label3: TLabel
          Left = 14
          Top = 122
          Width = 304
          Height = 16
          Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1076#1085#1077#1081' '#1076#1083#1103' '#1072#1085#1072#1083#1080#1079#1072' '#1080#1085#1074#1086#1081#1089#1086#1074' '#1080' '#1087#1088#1086#1076#1072#1078':'
        end
        object Label4: TLabel
          Left = 14
          Top = 150
          Width = 295
          Height = 16
          Caption = #1050#1083#1080#1077#1085#1090' '#1085#1072' '#1082#1086#1090#1086#1088#1086#1075#1086' '#1092#1086#1088#1084#1080#1088#1091#1077#1090#1089#1103' '#1057#1058#1054#1050' '#1074' '#1079#1072#1082#1072#1079#1072#1093
        end
        object Label5: TLabel
          Left = 14
          Top = 185
          Width = 257
          Height = 16
          Caption = #1050#1086#1076' '#1082#1083#1080#1077#1085#1090#1072' '#1076#1083#1103' '#1086#1090#1087#1088#1072#1074#1082#1080' '#1092#1072#1081#1083#1072' '#1074' '#1052#1086#1089#1082#1074#1091
        end
        object fntLabel: TLabel
          Left = 14
          Top = 249
          Width = 206
          Height = 16
          Caption = #1056#1072#1079#1084#1077#1088' '#1096#1088#1080#1092#1090#1072' '#1086#1089#1085#1086#1074#1085#1099#1093' '#1076#1072#1085#1085#1099#1093
        end
        object Label6: TLabel
          Left = 14
          Top = 213
          Width = 209
          Height = 16
          Caption = #1048#1084#1103' '#1092#1072#1081#1083#1072' '#1076#1083#1103' '#1086#1090#1087#1088#1072#1074#1082#1080' '#1074' '#1052#1086#1089#1082#1074#1091
        end
        object Bevel1: TBevel
          Left = 14
          Top = 175
          Width = 692
          Height = 4
          Shape = bsTopLine
        end
        object Bevel2: TBevel
          Left = 14
          Top = 238
          Width = 692
          Height = 4
          Shape = bsTopLine
        end
        object Label7: TLabel
          Left = 14
          Top = 277
          Width = 219
          Height = 16
          Caption = #1044#1080#1088#1077#1082#1090#1086#1088#1080#1103' '#1089' '#1079#1072#1082#1072#1079#1072#1084#1080' '#1080#1079' '#1080#1085#1090#1077#1088#1085#1077#1090#1072
        end
        object Label10: TLabel
          Left = 14
          Top = 374
          Width = 310
          Height = 16
          Caption = #1055#1086#1089#1090#1072#1097#1080#1082' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102' '#1087#1088#1080' '#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1080' '#1079#1072#1082#1072#1079#1072
        end
        object Bevel3: TBevel
          Left = 14
          Top = 360
          Width = 692
          Height = 4
          Shape = bsTopLine
        end
        object lcbStok: TcxLookupComboBox
          Left = 352
          Top = 146
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID_CLIENTS'
          Properties.ListColumns = <
            item
              FieldName = 'NICK'
            end>
          Properties.ListOptions.AnsiSort = True
          Properties.ListOptions.ShowHeader = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = DS_CLIENTS
          Properties.OnChange = edDaysPropertiesChange
          TabOrder = 4
          Width = 145
        end
        object edDays: TcxCurrencyEdit
          Left = 352
          Top = 118
          EditValue = 0
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0'#39#39';-,0'#39#39
          Properties.MaxLength = 2
          Properties.MaxValue = 50.000000000000000000
          Properties.Nullable = False
          Properties.OnChange = edDaysPropertiesChange
          TabOrder = 3
          Width = 73
        end
        object edClient: TcxTextEdit
          Left = 352
          Top = 181
          Properties.MaxLength = 10
          Properties.OnChange = edDaysPropertiesChange
          TabOrder = 5
          Width = 73
        end
        object cbFont: TcxComboBox
          Left = 352
          Top = 244
          Properties.DropDownListStyle = lsFixedList
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items.Strings = (
            '8'
            '9'
            '10'
            '11'
            '12')
          Properties.OnChange = edDaysPropertiesChange
          TabOrder = 8
          Width = 73
        end
        object edClientFile: TcxTextEdit
          Left = 352
          Top = 209
          Properties.MaxLength = 10
          Properties.OnChange = edDaysPropertiesChange
          TabOrder = 7
          Width = 73
        end
        object chbFilter: TcxCheckBox
          Left = 14
          Top = 63
          Caption = #1092#1080#1083#1100#1090#1088' '#1087#1086' '#1090#1080#1087#1072#1084' '#1095#1077#1088#1077#1079' Ctrl+'#1055#1088#1086#1073#1077#1083' '
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.OnChange = edDaysPropertiesChange
          TabOrder = 1
          Width = 261
        end
        object defPath: TcxTextEdit
          Left = 352
          Top = 271
          Properties.MaxLength = 10
          Properties.OnChange = edDaysPropertiesChange
          TabOrder = 9
          Width = 273
        end
        object btnSetDir: TcxButton
          Left = 631
          Top = 271
          Width = 75
          Height = 25
          Caption = #1053#1072#1081#1090#1080
          TabOrder = 10
          OnClick = btnSetDirClick
          LookAndFeel.NativeStyle = True
        end
        object rgOrders: TRadioGroup
          Left = 14
          Top = 12
          Width = 692
          Height = 45
          Caption = ' '#1057#1086#1088#1090#1080#1088#1086#1074#1082#1072' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1099' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102' '
          Columns = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          ItemIndex = 0
          Items.Strings = (
            #1085#1072#1079#1074#1072#1085#1080#1077
            #1090#1080#1087' + '#1088#1091#1089'. '#1085#1072#1079#1074#1072#1085#1080#1077
            #1090#1080#1087' + '#1083#1072#1090'. '#1085#1072#1079#1074#1072#1085#1080#1077)
          ParentFont = False
          TabOrder = 0
          OnClick = edDaysPropertiesChange
        end
        object chbSortByNick: TcxCheckBox
          Left = 14
          Top = 92
          Caption = #1089#1086#1088#1090#1080#1088#1086#1074#1082#1072' '#1082#1083#1080#1077#1085#1090#1086#1074' '#1087#1086' '#1082#1086#1076#1091
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.OnChange = edDaysPropertiesChange
          TabOrder = 2
          Width = 261
        end
        object edClient2: TcxTextEdit
          Left = 431
          Top = 181
          Properties.MaxLength = 10
          Properties.OnChange = edDaysPropertiesChange
          TabOrder = 6
          Width = 73
        end
        object chbHideCargoMoving: TcxCheckBox
          Left = 14
          Top = 302
          Caption = #1085#1077' '#1087#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1076#1074#1080#1078#1077#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.OnChange = edDaysPropertiesChange
          TabOrder = 11
          Width = 261
        end
        object chbNewOrder: TcxCheckBox
          Left = 14
          Top = 326
          Caption = #1092#1086#1088#1084#1072#1090' '#1079#1072#1082#1072#1079#1072' '#1089' '#1085#1086#1074#1086#1075#1086' '#1089#1072#1081#1090#1072
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.OnChange = edDaysPropertiesChange
          TabOrder = 12
          Width = 261
        end
        object lcb_supplier: TcxLookupComboBox
          Left = 352
          Top = 370
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'S_ID'
          Properties.ListColumns = <
            item
              FieldName = 'S_NAME_RU'
            end>
          Properties.ListOptions.AnsiSort = True
          Properties.ListOptions.ShowHeader = False
          Properties.ListOptions.SyncMode = True
          Properties.ListSource = DS_SUPPLIER
          Properties.OnChange = edDaysPropertiesChange
          TabOrder = 13
          Width = 273
        end
        object chbFilterByRus: TcxCheckBox
          Left = 14
          Top = 396
          Caption = #1082#1086#1085#1090#1077#1082#1089#1090#1085#1099#1081' '#1087#1086#1080#1089#1082' '#1087#1086' '#1088#1091#1089#1089#1082#1080#1084' '#1085#1072#1079#1074#1072#1085#1080#1103#1084
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.OnChange = edDaysPropertiesChange
          TabOrder = 14
          Width = 304
        end
        object chbFilterByDobor: TcxCheckBox
          Left = 14
          Top = 420
          Caption = #1087#1086#1082#1072#1079#1072#1090#1100' '#1076#1086#1073#1086#1088#1099' '#1074' '#1079#1072#1082#1072#1079#1077
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.OnChange = edDaysPropertiesChange
          TabOrder = 15
          Width = 304
        end
        object chbFilterByWebShop: TcxCheckBox
          Left = 14
          Top = 443
          Caption = #1087#1086#1082#1072#1079#1072#1090#1100' WebShop '#1074' '#1079#1072#1082#1072#1079#1077
          Properties.Alignment = taLeftJustify
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.OnChange = edDaysPropertiesChange
          TabOrder = 16
          Width = 304
        end
      end
    end
    object tshMapping: TcxTabSheet
      Caption = ' '#1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1082#1086#1076#1086#1074' '#1082#1083#1080#1077#1085#1090#1086#1074' '
      ImageIndex = 2
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 733
        Height = 41
        Align = alTop
        BevelInner = bvSpace
        BevelOuter = bvLowered
        TabOrder = 1
        object Label8: TLabel
          Left = 273
          Top = 12
          Width = 50
          Height = 16
          Align = alCustom
          Caption = #1050#1083#1080#1077#1085#1090':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
        end
        object Label9: TLabel
          Left = 2
          Top = 2
          Width = 164
          Height = 37
          Align = alLeft
          Caption = '  '#1050#1086#1076' '#1082#1083#1080#1077#1085#1090#1072' '#1089#1090#1072#1088#1086#1081' '#1041#1044':'
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
        object edOldClient: TcxTextEdit
          Left = 171
          Top = 8
          TabOrder = 0
          Width = 90
        end
        object btnAddClient: TcxButton
          Left = 456
          Top = 7
          Width = 155
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077
          TabOrder = 1
          OnClick = btnAddClientClick
        end
        object cbNewClient: TcxLookupComboBox
          Left = 330
          Top = 8
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ID_CLIENTS'
          Properties.ListColumns = <
            item
              FieldName = 'NICK'
            end>
          Properties.ListSource = DS_CLIENTS
          TabOrder = 2
          Width = 120
        end
        object cxButton1: TcxButton
          Left = 613
          Top = 7
          Width = 115
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
          TabOrder = 3
          OnClick = cxButton1Click
        end
      end
      object grOldClients: TcxGrid
        Left = 0
        Top = 41
        Width = 733
        Height = 457
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        object grOldClientsV: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          FilterBox.Position = fpTop
          OnCustomDrawCell = Grid_typesView1CustomDrawCell
          DataController.DataSource = dsOldClients
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
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.InvertSelect = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.HeaderEndEllipsis = True
          object grOldClientsVOLD_CLIENT: TcxGridDBColumn
            Caption = #1057#1090#1072#1088#1099#1081' '#1082#1083#1080#1077#1085#1090
            DataBinding.FieldName = 'OLD_CLIENT'
            Width = 200
          end
          object grOldClientsVID_CLIENT: TcxGridDBColumn
            Caption = #1058#1077#1082#1091#1097#1080#1081' '#1082#1083#1080#1077#1085#1090
            DataBinding.FieldName = 'ID_CLIENT'
            Visible = False
            Width = 363
          end
          object grOldClientsVNICK: TcxGridDBColumn
            Caption = #1058#1077#1082#1091#1097#1080#1081' '#1082#1083#1080#1077#1085#1090
            DataBinding.FieldName = 'NICK'
            Width = 200
          end
        end
        object grOldClientsL: TcxGridLevel
          GridView = grOldClientsV
        end
      end
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
      
        'SELECT rownum as nn, a.fst_id, a.f_sub_type, a.hol_sub_type, a.f' +
        't_id, a.f_type,'
      '       a.ht_id, a.hol_type, a.id_departments, '
      
        '       decode(b.nbutton,2,'#39'F2'#39',3,'#39'F3'#39',4,'#39'F4'#39',5,'#39'F5'#39',6,'#39'F6'#39',7,'#39'F7' +
        #39',8,'#39'F8'#39','#39#39') nbutton'
      '  FROM fst_view a, buttons_set b'
      '    WHERE a.id_departments = :P1'
      '          and a.id_departments = b.id_dep(+)'
      '          and a.fst_id = b.fst_id(+)'
      '      ORDER BY a.f_sub_type')
    FetchAll = True
    Left = 119
    Top = 219
    ParamData = <
      item
        DataType = ftInteger
        Name = 'P1'
        ParamType = ptInput
        Value = 62
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
      
        'SELECT rownum as nn, a.fst_id, a.f_sub_type, a.hol_sub_type, a.f' +
        't_id, a.f_type,'
      
        '       a.ht_id, a.hol_type, a.id_departments, b.f_char, b.id_dep' +
        ', b.nbutton'
      '  FROM buttons_set b, fst_view a'
      '    WHERE b.id_dep = :P1'
      '          and b.nbutton = :P2'
      '          and b.id_dep = a.id_departments'
      '          and b.fst_id = a.fst_id'
      '      ORDER BY a.f_sub_type')
    FetchAll = True
    Left = 426
    Top = 219
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P1'
      end
      item
        DataType = ftUnknown
        Name = 'P2'
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
  object CDS_CLIENTS: TOraQuery
    SQL.Strings = (
      'SELECT '
      'ID_CLIENTS, '
      'NICK, '
      'FIO'
      'FROM clients_view2'
      'WHERE '
      '/*Filter*/ 1=1'
      'and id_office=const_office'
      'ORDER BY NICK')
    FetchRows = 50
    Left = 504
    Top = 256
    object CDS_CLIENTSID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object CDS_CLIENTSNICK: TStringField
      FieldName = 'NICK'
    end
    object CDS_CLIENTSFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
  end
  object DS_CLIENTS: TOraDataSource
    DataSet = CDS_CLIENTS
    Left = 504
    Top = 288
  end
  object cxShellBrowserDlgOrder: TcxShellBrowserDialog
    Left = 304
    Top = 144
  end
  object cdsOldClients: TOraQuery
    SQLInsert.Strings = (
      'insert into OLD_CLIENT_MAP values(:OLD_CLIENT, :ID_CLIENT)')
    SQLDelete.Strings = (
      
        'delete from OLD_CLIENT_MAP where OLD_CLIENT = :OLD_CLIENT and ID' +
        '_CLIENT = :ID_CLIENT')
    SQL.Strings = (
      
        'select a.OLD_CLIENT, a.ID_CLIENT, b.nick from OLD_CLIENT_MAP a, ' +
        'clients b where a.ID_CLIENT = b.ID_CLIENTS')
    FetchAll = True
    Left = 538
    Top = 219
    object cdsOldClientsOLD_CLIENT: TStringField
      FieldName = 'OLD_CLIENT'
    end
    object cdsOldClientsID_CLIENT: TFloatField
      FieldName = 'ID_CLIENT'
    end
    object cdsOldClientsNICK: TStringField
      FieldName = 'NICK'
    end
  end
  object dsOldClients: TDataSource
    DataSet = cdsOldClients
    Left = 506
    Top = 219
  end
  object CDS_SUPPLIER: TOraQuery
    Session = DM.Main_session
    SQL.Strings = (
      'begin'
      '  creator.NOMENCLATURE_PKG.SELECT_SUPPLIER(:CURSOR_);'
      'end;')
    Left = 328
    Top = 344
    ParamData = <
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptInputOutput
        Value = 'Object'
      end>
    object CDS_SUPPLIERS_ID: TFloatField
      FieldName = 'S_ID'
      Required = True
    end
    object CDS_SUPPLIERS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Required = True
      Size = 150
    end
  end
  object DS_SUPPLIER: TOraDataSource
    DataSet = CDS_SUPPLIER
    Left = 328
    Top = 376
  end
end
