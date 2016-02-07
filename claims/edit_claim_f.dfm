object edit_claim: Tedit_claim
  Left = 225
  Top = 146
  BorderStyle = bsDialog
  Caption = '  '#1056#1077#1076#1072#1082#1090#1086#1088' '#1087#1088#1077#1090#1077#1085#1079#1080#1080
  ClientHeight = 635
  ClientWidth = 905
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 905
    Height = 48
    Align = alTop
    Color = clWhite
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 1
    object Label9: TLabel
      Left = 8
      Top = 8
      Width = 91
      Height = 16
      Caption = #8470' '#1087#1088#1077#1090#1077#1085#1079#1080#1080':'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 120
      Top = 8
      Width = 52
      Height = 16
      AutoSize = True
      Color = clWhite
      DataField = 'CLAIMS_ID'
      DataSource = DM.Q_CLAIMS_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label10: TLabel
      Left = 208
      Top = 8
      Width = 77
      Height = 16
      Caption = #8470' '#1080#1085#1074#1086#1081#1089#1072':'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 304
      Top = 8
      Width = 52
      Height = 16
      AutoSize = True
      Color = clWhite
      DataField = 'SUPPLIER_NUMBER'
      DataSource = DM.Q_CLAIMS_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label11: TLabel
      Left = 464
      Top = 8
      Width = 94
      Height = 16
      Caption = #1044#1072#1090#1072' '#1080#1085#1074#1086#1081#1089#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 584
      Top = 8
      Width = 52
      Height = 16
      AutoSize = True
      DataField = 'SUPPLIER_DATE'
      DataSource = DM.Q_CLAIMS_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 8
      Top = 24
      Width = 50
      Height = 16
      Caption = #1050#1083#1080#1077#1085#1090':'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 120
      Top = 24
      Width = 52
      Height = 16
      AutoSize = True
      Color = clWhite
      DataField = 'NICK'
      DataSource = DM.Q_CLIENTS_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 208
      Top = 24
      Width = 52
      Height = 16
      AutoSize = True
      Color = clWhite
      DataField = 'FIO'
      DataSource = DM.Q_CLIENTS_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 48
    Width = 905
    Height = 192
    Align = alTop
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    object Label4: TLabel
      Left = 14
      Top = 37
      Width = 7
      Height = 16
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 24
      Top = 37
      Width = 67
      Height = 16
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
    end
    object Label5: TLabel
      Left = 14
      Top = 17
      Width = 7
      Height = 16
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 24
      Top = 17
      Width = 84
      Height = 16
      Caption = #1058#1080#1087' '#1087#1088#1077#1090#1077#1085#1079#1080#1080
    end
    object Label13: TLabel
      Left = 14
      Top = 84
      Width = 7
      Height = 16
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 24
      Top = 84
      Width = 98
      Height = 16
      Caption = #1058#1086#1074#1072#1088' '#1074' '#1080#1085#1074#1086#1081#1089#1077
    end
    object Label15: TLabel
      Left = 24
      Top = 114
      Width = 69
      Height = 16
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
    end
    object Label16: TLabel
      Left = 24
      Top = 138
      Width = 107
      Height = 16
      Caption = #1062#1077#1085#1072' '#1074' '#1045#1074#1088#1086' ('#1096#1090'.)'
    end
    object Label17: TLabel
      Left = 24
      Top = 162
      Width = 52
      Height = 16
      Caption = #1058#1072#1084#1086#1078#1085#1103
    end
    object Label19: TLabel
      Left = 23
      Top = 60
      Width = 58
      Height = 16
      Caption = #1058#1080#1087' '#1073#1088#1072#1082#1072
    end
    object Label18: TLabel
      Left = 398
      Top = 13
      Width = 91
      Height = 16
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
    end
    object Label2: TLabel
      Left = 14
      Top = 114
      Width = 7
      Height = 16
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 14
      Top = 138
      Width = 7
      Height = 16
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 14
      Top = 162
      Width = 7
      Height = 16
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 400
      Top = 84
      Width = 114
      Height = 16
      Caption = #1058#1086#1074#1072#1088' ('#1092#1072#1082#1090#1080#1095#1077#1089#1082#1080')'
      Visible = False
    end
    object Label22: TLabel
      Left = 400
      Top = 114
      Width = 69
      Height = 16
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      Visible = False
    end
    object Label23: TLabel
      Left = 400
      Top = 138
      Width = 76
      Height = 16
      Caption = #1062#1077#1085#1072' '#1074' '#1045#1074#1088#1086
      Visible = False
    end
    object Label24: TLabel
      Left = 400
      Top = 162
      Width = 52
      Height = 16
      Caption = #1058#1072#1084#1086#1078#1085#1103
      Visible = False
    end
    object Label25: TLabel
      Left = 390
      Top = 84
      Width = 7
      Height = 16
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label26: TLabel
      Left = 390
      Top = 114
      Width = 7
      Height = 16
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label27: TLabel
      Left = 390
      Top = 138
      Width = 7
      Height = 16
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label28: TLabel
      Left = 390
      Top = 162
      Width = 7
      Height = 16
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Memo1: TMemo
      Left = 512
      Top = 10
      Width = 265
      Height = 63
      ScrollBars = ssVertical
      TabOrder = 3
    end
    object list_supl: TDBComboBoxEh
      Left = 139
      Top = 32
      Width = 230
      Height = 22
      Cursor = crHandPoint
      AlwaysShowBorder = True
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Flat = True
      TabOrder = 1
      Visible = True
    end
    object DBComboBoxEh1: TDBComboBoxEh
      Left = 139
      Top = 10
      Width = 230
      Height = 22
      Cursor = crHandPoint
      AlwaysShowBorder = True
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Flat = True
      Items.Strings = (
        'Poor condition'
        'Missing'
        'Instead of...')
      KeyItems.Strings = (
        '1'
        '2'
        '3')
      TabOrder = 0
      Visible = True
      OnChange = DBComboBoxEh1Change
    end
    object Edit5: TDBEditEh
      Left = 139
      Top = 56
      Width = 230
      Height = 22
      AlwaysShowBorder = True
      EditButtons = <>
      Flat = True
      TabOrder = 2
      Visible = True
    end
    object Edit10: TDBEditEh
      Left = 139
      Top = 80
      Width = 230
      Height = 22
      AlwaysShowBorder = True
      EditButtons = <>
      Flat = True
      ReadOnly = True
      TabOrder = 11
      Visible = True
    end
    object Edit9: TDBEditEh
      Left = 552
      Top = 80
      Width = 225
      Height = 22
      AlwaysShowBorder = True
      EditButtons = <>
      Flat = True
      TabOrder = 7
      Visible = True
    end
    object Edit1: TDBNumberEditEh
      Left = 139
      Top = 112
      Width = 89
      Height = 22
      AlwaysShowBorder = True
      DecimalPlaces = 0
      EditButtons = <>
      Flat = True
      MaxValue = 99999.000000000000000000
      MinValue = 1.000000000000000000
      TabOrder = 4
      Visible = True
    end
    object Edit6: TDBNumberEditEh
      Left = 552
      Top = 112
      Width = 89
      Height = 22
      AlwaysShowBorder = True
      DecimalPlaces = 0
      EditButtons = <>
      Flat = True
      MaxValue = 99999.000000000000000000
      MinValue = 1.000000000000000000
      TabOrder = 8
      Visible = True
    end
    object Edit2: TDBNumberEditEh
      Left = 139
      Top = 136
      Width = 89
      Height = 22
      AlwaysShowBorder = True
      EditButtons = <>
      Flat = True
      MaxValue = 9999999.000000000000000000
      MinValue = 1.000000000000000000
      TabOrder = 5
      Visible = True
    end
    object Edit7: TDBNumberEditEh
      Left = 552
      Top = 136
      Width = 89
      Height = 22
      AlwaysShowBorder = True
      EditButtons = <>
      Flat = True
      MaxValue = 9999999.000000000000000000
      MinValue = 1.000000000000000000
      TabOrder = 9
      Visible = True
    end
    object Edit3: TDBNumberEditEh
      Left = 139
      Top = 160
      Width = 89
      Height = 22
      AlwaysShowBorder = True
      DecimalPlaces = 3
      EditButtons = <>
      Flat = True
      MaxValue = 99999999.000000000000000000
      TabOrder = 6
      Visible = True
    end
    object Edit8: TDBNumberEditEh
      Left = 552
      Top = 160
      Width = 89
      Height = 22
      AlwaysShowBorder = True
      DecimalPlaces = 3
      EditButtons = <>
      Flat = True
      MaxValue = 99999999.000000000000000000
      MinValue = 1.000000000000000000
      TabOrder = 10
      Visible = True
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 602
    Width = 905
    Height = 33
    Align = alBottom
    Color = clWhite
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 2
    DesignSize = (
      905
      33)
    object btn_exit: TcxButton
      Left = 765
      Top = 4
      Width = 132
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Default = True
      ModalResult = 2
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
    end
    object btn_save: TcxButton
      Left = 8
      Top = 4
      Width = 185
      Height = 25
      Cursor = crHandPoint
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' (Ctrl+Enter)'
      TabOrder = 1
      OnClick = btn_saveClick
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
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
    end
  end
  object pc_newclaim: TcxPageControl
    Left = 0
    Top = 240
    Width = 905
    Height = 362
    ActivePage = cxTabSheet3
    Align = alClient
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    TabOrder = 3
    ClientRectBottom = 358
    ClientRectLeft = 4
    ClientRectRight = 901
    ClientRectTop = 27
    object cxTabSheet1: TcxTabSheet
      Caption = ' '#1050#1083#1080#1077#1085#1090' '
      ImageIndex = 0
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 897
        Height = 40
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label29: TLabel
          Left = 23
          Top = 12
          Width = 117
          Height = 16
          Caption = #1047#1072#1082#1072#1079' ('#1082#1086#1076' '#1082#1083#1080#1077#1085#1090#1072')'
        end
        object Label30: TLabel
          Left = 10
          Top = 12
          Width = 7
          Height = 16
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object gr_clients: TcxGrid
        Left = 0
        Top = 40
        Width = 897
        Height = 291
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = True
        object gr_clients_v: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          OnCustomDrawCell = gr_clients_vCustomDrawCell
          DataController.DataSource = DM.Q_CLIENTS_DS
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.AutoDataSetFilter = True
          DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0.00'
              Kind = skSum
              Column = gr_clients_vblock1
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = gr_clients_vblock2
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = gr_clients_vgroup_name
            end
            item
              Format = '0'
              Kind = skCount
              Column = gr_clients_vNICK
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1072
          FilterRow.Visible = True
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnVertSizing = False
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.BandHeaderEndEllipsis = True
          OptionsView.BandHeaders = False
          Bands = <
            item
              Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1082#1083#1080#1077#1085#1090#1072
              HeaderAlignmentHorz = taLeftJustify
            end>
          object _gr_cashbook_vID_CLIENTS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ID_CLIENTS'
            Visible = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object gr_clients_vNICK: TcxGridDBBandedColumn
            Caption = #1050#1086#1076
            DataBinding.FieldName = 'NICK'
            FooterAlignmentHorz = taCenter
            MinWidth = 80
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object gr_clients_vFIO: TcxGridDBBandedColumn
            Caption = #1060#1048#1054
            DataBinding.FieldName = 'FIO'
            MinWidth = 50
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Moving = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object gr_clients_vccode: TcxGridDBBandedColumn
            Caption = #1064#1090#1088#1080#1093'-'#1082#1086#1076
            DataBinding.FieldName = 'ccode'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 120
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 120
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object gr_clients_vregion_name: TcxGridDBBandedColumn
            Caption = #1056#1077#1075#1080#1086#1085
            DataBinding.FieldName = 'region_name'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Visible = False
            HeaderAlignmentHorz = taCenter
            MinWidth = 75
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Moving = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object gr_clients_vgroup_name: TcxGridDBBandedColumn
            Caption = #1043#1088#1091#1087#1087#1072
            DataBinding.FieldName = 'group_name'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Visible = False
            HeaderAlignmentHorz = taCenter
            MinWidth = 75
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Moving = False
            Width = 100
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object gr_clients_vblock1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'block1'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.ImmediatePost = True
            Properties.ReadOnly = True
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 50
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Moving = False
            Width = 70
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object gr_clients_vblock2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'block2'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.ImmediatePost = True
            Properties.ReadOnly = True
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 50
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Moving = False
            Width = 70
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
        end
        object gr_clients_l: TcxGridLevel
          GridView = gr_clients_v
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = ' '#1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1085#1072#1103' '#1087#1086#1079#1080#1094#1080#1103' '
      Enabled = False
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 897
        Height = 40
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          897
          40)
        object SpeedButton2: TSpeedButton
          Left = 870
          Top = 6
          Width = 23
          Height = 22
          Cursor = crHandPoint
          Hint = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1087#1086#1083#1077' "'#1058#1086#1074#1072#1088' ('#1092#1072#1082#1090#1080#1095#1077#1089#1082#1080')"'
          Anchors = [akTop, akRight]
          Caption = 'F3'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton2Click
          ExplicitLeft = 872
        end
        object Label12: TLabel
          Left = 10
          Top = 12
          Width = 559
          Height = 16
          Caption = 
            #1042#1099#1073#1077#1088#1080#1090#1077' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1091' '#1080#1079' '#1089#1087#1080#1089#1082#1072' ('#1074#1099#1073#1086#1088' '#1076#1086#1089#1090#1091#1087#1077#1085' '#1090#1086#1083#1100#1082#1086' '#1087#1088#1080' '#1090#1080#1087#1077' ' +
            #1087#1088#1077#1090#1077#1085#1079#1080#1080' "Instead of...")'
        end
      end
      object gr_main: TDBGridEh
        Left = 0
        Top = 40
        Width = 897
        Height = 291
        Align = alClient
        AllowedOperations = []
        DataGrouping.GroupLevels = <>
        DataSource = DM.DS_FLOWERS
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        FooterColor = clWhite
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'Arial'
        FooterFont.Pitch = fpFixed
        FooterFont.Style = [fsBold]
        FooterRowCount = 1
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
        ParentFont = False
        ReadOnly = True
        RowDetailPanel.Color = clBtnFace
        SortLocal = True
        STFilter.Local = True
        STFilter.Visible = True
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Pitch = fpFixed
        TitleFont.Style = []
        OnDblClick = SpeedButton2Click
        Columns = <
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'CODE'
            Footers = <>
            Title.Caption = #1050#1086#1076
            Title.EndEllipsis = True
            Width = 80
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'H_CODE'
            Footers = <>
            Title.Caption = #1040#1088#1090#1080#1082#1091#1083
            Title.EndEllipsis = True
            Width = 90
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'F_TYPE'
            Footers = <>
            STFilter.DataField = 'F_TYPE'
            STFilter.KeyField = 'F_TYPE'
            STFilter.ListField = 'F_TYPE'
            STFilter.ListSource = DM.DS_TYPES
            Title.Caption = #1058#1080#1087
            Title.EndEllipsis = True
            Width = 130
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'F_SUB_TYPE'
            Footers = <>
            Title.Caption = #1055#1086#1076#1090#1080#1087
            Title.EndEllipsis = True
            Width = 130
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'FULL_NAME'
            Footer.Alignment = taCenter
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Title.EndEllipsis = True
            Width = 200
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'RUS_MARKS'
            Footers = <>
            Title.Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
            Title.EndEllipsis = True
            Width = 80
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'COUNTRY'
            Footers = <>
            Title.Caption = #1057#1090#1088#1072#1085#1072
            Title.EndEllipsis = True
            Width = 80
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'COLOUR'
            Footers = <>
            Title.Caption = #1062#1074#1077#1090
            Title.EndEllipsis = True
            Width = 80
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'FT_ID'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'FST_ID'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'HOL_TYPE'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'HOL_SUB_TYPE'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'ID_DEPARTMENTS'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'N_ID'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = ' '#1055#1086#1079#1080#1094#1080#1103' '#1074' '#1080#1085#1074#1086#1081#1089#1077' '
      ImageIndex = 2
      object invoice: TPanel
        Left = 0
        Top = 0
        Width = 897
        Height = 40
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        DesignSize = (
          897
          40)
        object Label7: TLabel
          Left = 10
          Top = 12
          Width = 287
          Height = 16
          Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1085#1091#1102' '#1087#1086#1079#1080#1094#1080#1102' '#1080#1079' '#1080#1085#1074#1086#1081#1089#1072
        end
        object SpeedButton1: TSpeedButton
          Left = 870
          Top = 6
          Width = 23
          Height = 22
          Cursor = crHandPoint
          Hint = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1087#1086#1083#1077' "'#1058#1086#1074#1072#1088'"'
          Anchors = [akTop, akRight]
          Caption = 'F2'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton1Click
          ExplicitLeft = 872
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 40
        Width = 897
        Height = 291
        Align = alClient
        AutoFitColWidths = True
        DataGrouping.GroupLevels = <>
        DataSource = DM.Q_NOM_DS
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -13
        FooterFont.Name = 'Arial'
        FooterFont.Pitch = fpFixed
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
        ParentFont = False
        ReadOnly = True
        RowDetailPanel.Color = clBtnFace
        STFilter.Visible = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Arial'
        TitleFont.Pitch = fpFixed
        TitleFont.Style = []
        OnDblClick = SpeedButton1Click
        Columns = <
          item
            Alignment = taCenter
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'H_CODE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1040#1088#1090#1080#1082#1091#1083
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Pitch = fpFixed
            Title.Font.Style = []
            Width = 80
          end
          item
            EditButtons = <>
            FieldName = 'FULL_NAME'
            Footers = <>
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Pitch = fpFixed
            Title.Font.Style = []
            Width = 154
          end
          item
            EditButtons = <>
            FieldName = 'UNITS'
            Footers = <>
            Title.Caption = #1050#1086#1083'-'#1074#1086
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Pitch = fpFixed
            Title.Font.Style = []
            Width = 48
          end
          item
            EditButtons = <>
            FieldName = 'PRICE_PER_UNIT'
            Footers = <>
            Title.Caption = #1062#1077#1085#1072' '#1096#1090'.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Pitch = fpFixed
            Title.Font.Style = []
          end
          item
            EditButtons = <>
            FieldName = 'LEN'
            Footers = <>
            Title.Caption = #1044#1083#1080#1085#1072
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Pitch = fpFixed
            Title.Font.Style = []
            Width = 40
          end
          item
            EditButtons = <>
            FieldName = 'COLOUR'
            Footers = <>
            Title.Caption = #1062#1074#1077#1090
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Pitch = fpFixed
            Title.Font.Style = []
            Width = 98
          end
          item
            EditButtons = <>
            FieldName = 'RUS_MARKS'
            Footers = <>
            Title.Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Pitch = fpFixed
            Title.Font.Style = []
            Width = 91
          end
          item
            EditButtons = <>
            FieldName = 'F_TYPE'
            Footers = <>
            Title.Caption = #1058#1080#1087
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Pitch = fpFixed
            Title.Font.Style = []
            Width = 88
          end
          item
            EditButtons = <>
            FieldName = 'F_SUB_TYPE'
            Footers = <>
            Title.Caption = #1055#1086#1076#1090#1080#1087
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Pitch = fpFixed
            Title.Font.Style = []
            Width = 148
          end
          item
            EditButtons = <>
            FieldName = 'GTD'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Pitch = fpFixed
            Title.Font.Style = []
            Width = 47
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 400
    Top = 81
    object aF2: TAction
      Caption = 'aF2'
      ShortCut = 113
      OnExecute = SpeedButton1Click
    end
    object aF3: TAction
      Caption = 'aF3'
      ShortCut = 114
      OnExecute = SpeedButton2Click
    end
    object aCtrl: TAction
      Caption = 'aCtrl'
      ShortCut = 16397
      OnExecute = btn_saveClick
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object st_block_1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 8421631
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      TextColor = clBlack
    end
    object st_block_2: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = 11075583
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
    end
  end
end
