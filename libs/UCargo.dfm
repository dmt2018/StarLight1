object frmCargo: TfrmCargo
  Left = 0
  Top = 0
  BorderWidth = 5
  Caption = #1044#1074#1080#1078#1077#1085#1080#1077' '#1090#1072#1088#1099
  ClientHeight = 501
  ClientWidth = 654
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object pnlBottom: TPanel
    Left = 0
    Top = 464
    Width = 654
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      654
      37)
    object btnClose: TcxButton
      Left = 509
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
      TabOrder = 3
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
    end
    object chbGroup: TCheckBox
      Left = 0
      Top = 11
      Width = 249
      Height = 17
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102' '#1087#1086' '#1075#1088#1091#1087#1087#1077
      TabOrder = 0
      Visible = False
      OnClick = chbGroupClick
    end
    object btnExport: TcxButton
      Left = 344
      Top = 7
      Width = 115
      Height = 25
      Caption = #1042' Excel'
      TabOrder = 2
      OnClick = btnExportClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        9898985050505050505050505050505050505050505050505050505050505050
        50505050505050989898FFFFFFFFFFFF545454FFFFFFFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFFFFFF545454266738266738
        266738266738266738266738266738266738266738266738F1F1F1F0F0F0F0F0
        F0EFEFEFFDFDFD5858582A6E3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF2A6E3CF0F0F0EFEFEFEFEFEFEEEEEEFDFDFD5E5E5E2E7642667364
        4F7A50458A49477D48548055709F724F8151527D572E7642EFEFEFEEEEEEEEEE
        EEEDEDEDFDFDFD636363338049FFFFFF3D793F337C33397F3A7BAD7C5A9E5D33
        6D33FFFFFF338049EEEEEEEDEDEDEDEDEDECECECFDFDFD6A6A6A388A50FFFFFF
        FFFFFF49874982B37D5F90593D803C66A36580A882388A50EDEDEDECECECEBEB
        EBEBEBEBFDFDFD7070703C9356FFFFFFFFFFFF8FC1955A865F3C683F467D4BFF
        FFFFF3FFF93C9356EBEBEBEBEBEBEAEAEAEAEAEAFDFDFD777777419D5DFFFFFF
        91B994468C4D3A733D4579493376363A803EFFFFFF419D5DEAEAEAEAEAEAE9E9
        E9E9E9E9FDFDFD7D7D7D45A56386907D61855B417C41FFFFFFFFFFFF4D844A3B
        77384C764F45A563E9E9E9E8E8E8E8E8E8E7E7E7FDFDFD84848449AC67FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF49AC67FDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFD8A8A8A4BB16B4BB16B4BB16B4BB16B4BB16B4BB16B4BB16B4B
        B16B4BB16B4BB16BFDFDFDE0E0E0E5E5E5EBEBEB909090BEBEBEFFFFFFFFFFFF
        959595FDFDFDE9E9E9E8E8E8E8E8E8E7E7E7E7E7E7E6E6E6FDFDFDE5E5E5EBEB
        EB959595C1C1C1FFFFFFFFFFFFFFFFFF9A9A9AFDFDFDE8E8E8E7E7E7E7E7E7E6
        E6E6E5E5E5E5E5E5FDFDFDEBEBEB9A9A9AC4C4C4FFFFFFFFFFFFFFFFFFFFFFFF
        9E9E9EFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD9E9E9EC6C6
        C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8C8C8A1A1A1A1A1A1A1A1A1A1A1A1A1
        A1A1A1A1A1A1A1A1A1A1A1C8C8C8FFFFFFFFFFFFFFFFFFFFFFFF}
      LookAndFeel.Kind = lfOffice11
    end
    object btnPrint: TcxButton
      Left = 223
      Top = 7
      Width = 115
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100
      TabOrder = 1
      OnClick = btnPrintClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000004DC4EDF54BC1ECE850C3EDE850C3EDE850C3EDE850C3EDE850C3
        EDE850C3EDE850C3EDE84DC4EFF6000000000000000000000000000000000000
        0000000000004DC3EDF69CF4F6FF93D0D8FF92CFD6FF90CED5FF90CED5FF8FCE
        D5FF8FCFD6FFA5F6F6FF4DC4EDF8000000000000000000000000000000000000
        0000000000004DC3EDF688F4F6FF85D1D8FF84CFD7FF83CFD6FF82CFD6FF82CF
        D5FF82CFD6FF90F6F6FF4DC4EDF80000000000000000000000005F56521D9F93
        8FF2A09490FC4EC2EBFA77F1F6FF79CFD8FF78CED6FF76CCD5FF76CCD5FF76CC
        D5FF75CCD5FF7FF5F6FF4DC2EBFB9F9490FC9F938FF26258541D877B76CFC4B6
        B2FF827773FF457387FF64C2CFFF68C5CFFF68C5CFFF68C5CFFF68C5CFFF68C5
        CFFF68C5CFFF68C5CFFF42778EFF776D67FFC4B6B2FF887D77D1978984EAE0D5
        D1FFBCB3AFFF998F8BFF998F8BFF998F8BFF998F8BFF998F8BFF998F8BFF998F
        8BFF998F8BFF998F8BFF998F8BFFB4A9A6FFE0D5D1FF988A85ED998D88EAEAE5
        E2FFECE7E5FFECE7E5FFECE7E5FFECE7E5FFECE7E5FFECE7E5FFECE7E5FFECE7
        E5FFECE7E5FFECE7E5FFECE7E5FFECE7E5FFEAE5E2FF9A8E89ED9C908BEAF4F1
        F0FFF5F3F2FFC8C5C4FFBAB7B7FFB9B5B5FFB7B5B4FFB6B3B3FFB5B2B2FFB4B1
        B0FFB3B0AFFFB2AFAFFFC0BCBCFFF4F3F2FFF4F2F1FF9D918DED9F938EEAF6F6
        F6FFD7D5D5FF6E6866FF53504FFF53504EFF534F4EFF524F4EFF524F4EFF524F
        4EFF524F4DFF524E4DFF65605FFFCECCCCFFF6F6F6FFA09490EDA19591EAF6F6
        F4FFD0CECCFF5F5A59FF414141FF414141FF414141FF414141FF414141FF4141
        41FF414141FF414141FF595554FFC4C2C2FFF6F6F5FFA29692EDA19591E9D7CF
        CEFFBCB6B5FF767373FF525252FF414141FF414141FF414141FF414141FF4141
        41FF414141FF414141FF595655FFA7A2ABFF948DCFFFA29692ECA09490F9C6B6
        B2FFB6AAA7FF9E9A9AFFA9A9A9FF9D9D9DFF878787FF777777FF6C6C6CFF6363
        63FF5E5E5EFF5C5C5CFF696665FFA1A294FF86C180FFA09490FA837D7931A094
        90F9A09591FB999594FFAEAAAAFFA9A7A7FFA5A3A2FFA19E9EFF9D9A99FF9895
        94FF939190FF8F8D8BFF807E7DFFA09490FBA09490F987807E33000000000000
        0000595757024FC3EBFA7FB5BCFF7FB5BBFF7EB5BBFF7DB3B9FF7BB2B8FF79B1
        B7FF78AFB5FF73AAB5FF4FC3EBF9575454020000000000000000000000000000
        0000000000004DC4EDF88AF6F6FF8AF6F6FF8AF6F6FF8AF6F6FF8AF6F6FF8AF6
        F6FF8AF6F6FF80F2F6FF4DC4EDF6000000000000000000000000000000000000
        0000000000000D9EE0814FC5EFEF4FC5EFEF4FC5EFEF4FC5EFEF4FC5EFEF4FC5
        EFEF4FC5EFEF49C2ECEF0992D15C000000000000000000000000}
      LookAndFeel.Kind = lfOffice11
    end
  end
  object pcMain: TcxPageControl
    Left = 0
    Top = 0
    Width = 654
    Height = 464
    ActivePage = tshClients
    Align = alClient
    TabOrder = 0
    OnChange = pcMainChange
    ClientRectBottom = 464
    ClientRectRight = 654
    ClientRectTop = 25
    object tshClients: TcxTabSheet
      Caption = ' '#1057#1087#1080#1089#1086#1082' '#1082#1083#1080#1077#1085#1090#1086#1074' '
      ImageIndex = 0
      object grClients: TcxGrid
        Left = 0
        Top = 0
        Width = 654
        Height = 439
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 0
        object grClientsV: TcxGridDBTableView
          OnDblClick = grClientsVDblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsClients
          DataController.Filter.AutoDataSetFilter = True
          DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              Column = grClientsVFIO
            end
            item
              Format = '0'
              Kind = skSum
              Column = grClientsVQUANTITY
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = grClientsVSUMMA
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnMoving = False
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object grClientsVFIO: TcxGridDBColumn
            Caption = #1060#1048#1054
            DataBinding.FieldName = 'FIO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            MinWidth = 80
          end
          object grClientsVNICK: TcxGridDBColumn
            Caption = #1050#1086#1076
            DataBinding.FieldName = 'NICK'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 70
            Options.HorzSizing = False
            Width = 70
          end
          object grClientsVGROUP_NAME: TcxGridDBColumn
            Caption = #1043#1088#1091#1087#1087#1072
            DataBinding.FieldName = 'GROUP_NAME'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 70
            Options.HorzSizing = False
            Width = 70
          end
          object grClientsVID_CLIENTS: TcxGridDBColumn
            DataBinding.FieldName = 'ID_CLIENTS'
            Visible = False
          end
          object grClientsVID_CLIENTS_GROUPS: TcxGridDBColumn
            DataBinding.FieldName = 'ID_CLIENTS_GROUPS'
            Visible = False
          end
          object grClientsVQUANTITY: TcxGridDBColumn
            Caption = #1050#1086#1083'-'#1074#1086
            DataBinding.FieldName = 'QUANTITY'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 60
            Options.HorzSizing = False
            Width = 60
          end
          object grClientsVSUMMA: TcxGridDBColumn
            Caption = #1057#1091#1084#1084#1072
            DataBinding.FieldName = 'SUMMA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 80
            Options.HorzSizing = False
            Width = 80
          end
          object grClientsVDOC_DATE: TcxGridDBColumn
            Caption = #1055#1086#1089#1083'. '#1076#1072#1090#1072
            DataBinding.FieldName = 'DOC_DATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 110
            Options.HorzSizing = False
            Width = 110
          end
        end
        object grClientsL: TcxGridLevel
          GridView = grClientsV
        end
      end
    end
    object tshList: TcxTabSheet
      Caption = ' '#1044#1074#1080#1078#1077#1085#1080#1077' '#1090#1072#1088#1099' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1091' '
      ImageIndex = 1
      object grMain: TcxGrid
        Left = 0
        Top = 166
        Width = 654
        Height = 273
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 0
        object grMainV: TcxGridDBTableView
          OnKeyDown = grMainVKeyDown
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsList
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              Column = grMainVCOMPILED_NAME_OTDEL
            end
            item
              Format = '0'
              Kind = skSum
              Column = grMainVQUANTITY
            end
            item
              Format = '0'
              Kind = skSum
              Column = grMainVSUMMA
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnMoving = False
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          object grMainVCOMPILED_NAME_OTDEL: TcxGridDBColumn
            Caption = #1058#1072#1088#1072
            DataBinding.FieldName = 'COMPILED_NAME_OTDEL'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
          end
          object grMainVDOC_DATE: TcxGridDBColumn
            Caption = #1044#1072#1090#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
            DataBinding.FieldName = 'DOC_DATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 120
            Options.HorzSizing = False
            Width = 120
          end
          object grMainVDOC_NUMBER: TcxGridDBColumn
            Caption = #8470' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
            DataBinding.FieldName = 'DOC_NUMBER'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 90
            Options.HorzSizing = False
            Width = 90
          end
          object grMainVQUANTITY: TcxGridDBColumn
            Caption = #1050#1086#1083'-'#1074#1086
            DataBinding.FieldName = 'QUANTITY'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 60
            Options.HorzSizing = False
            Width = 60
          end
          object grMainVSUMMA: TcxGridDBColumn
            Caption = #1057#1091#1084#1084#1072
            DataBinding.FieldName = 'SUMMA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 90
          end
        end
        object grMainL: TcxGridLevel
          GridView = grMainV
        end
      end
      object gbStat: TGroupBox
        Left = 0
        Top = 37
        Width = 654
        Height = 121
        Align = alTop
        Caption = ' '#1048#1090#1086#1075#1086#1074#1099#1077' '#1076#1072#1085#1085#1099#1077' '
        TabOrder = 1
        object grItog: TcxGrid
          Left = 2
          Top = 16
          Width = 650
          Height = 103
          Align = alClient
          TabOrder = 0
          object grItogV: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsSummary
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnMoving = False
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            OptionsView.CellEndEllipsis = True
            OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object grItogVCOMPILED_NAME_OTDEL: TcxGridDBColumn
              Caption = #1058#1072#1088#1072
              DataBinding.FieldName = 'COMPILED_NAME_OTDEL'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
            end
            object grItogVDOC_DATE: TcxGridDBColumn
              Caption = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1076#1072#1090#1072
              DataBinding.FieldName = 'DOC_DATE'
              PropertiesClassName = 'TcxDateEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 110
              Options.HorzSizing = False
              Width = 110
            end
            object grItogVQUANTITY: TcxGridDBColumn
              Caption = #1050#1086#1083'-'#1074#1086
              DataBinding.FieldName = 'QUANTITY'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.ReadOnly = True
              HeaderAlignmentHorz = taCenter
              MinWidth = 60
              Options.HorzSizing = False
              Width = 60
            end
            object grItogVSUMMA: TcxGridDBColumn
              Caption = #1057#1091#1084#1084#1072
              DataBinding.FieldName = 'SUMMA'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taRightJustify
              Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
              Properties.ReadOnly = True
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 90
            end
          end
          object grItofL: TcxGridLevel
            GridView = grItogV
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 0
        Top = 158
        Width = 654
        Height = 8
        HotZoneClassName = 'TcxMediaPlayer9Style'
        AlignSplitter = salTop
        Control = gbStat
      end
      object pnlTop: TPanel
        Left = 0
        Top = 0
        Width = 654
        Height = 37
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 3
        object lblClient: TLabel
          Left = 0
          Top = 11
          Width = 103
          Height = 14
          Caption = #1050#1083#1080#1077#1085#1090' ('#1075#1088#1091#1087#1087#1072')'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object cdsSummary: TOraQuery
    SQL.Strings = (
      'select nm.F_NAME_RU as compiled_name_otdel, '
      '       sum(a.quantity) as quantity, '
      '       max(b.doc_date) as doc_date, '
      '       sum(a.quantity * p.price) as summa '
      '  from nomenclature n, '
      '       store_doc_data a, '
      '       store_doc b, '
      '       clients c, '
      '       price_list p, '
      '       flower_names nm '
      ' where --n.fst_id in (:p_fst_id)'
      '   n.fst_id in (const_cargo, const_cargo_62)  '
      '   AND a.n_id = n.n_id '
      '   AND a.id_office = const_office '
      '   AND a.id_doc = b.id_doc '
      '   AND b.id_client = c.id_clients '
      '   AND nm.fn_id = n.fn_id '
      '   AND a.n_id = p.n_id '
      '   AND a.id_office = p.id_office '
      '   AND n.n_id = p.n_id '
      '   AND const_office = p.id_office '
      
        '   and ( c.id_clients = :p_id_client or c.id_clients_groups = :p' +
        '_id_client_group)'
      ' group by nm.F_NAME_RU')
    Left = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_id_client'
      end
      item
        DataType = ftUnknown
        Name = 'p_id_client_group'
      end>
    object cdsSummaryCOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 256
    end
    object cdsSummaryQUANTITY: TFloatField
      FieldName = 'QUANTITY'
    end
    object cdsSummaryDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object cdsSummarySUMMA: TFloatField
      FieldName = 'SUMMA'
    end
  end
  object dsSummary: TOraDataSource
    DataSet = cdsSummary
    Left = 440
  end
  object dsList: TOraDataSource
    DataSet = cdsList
    Left = 512
  end
  object cdsList: TOraQuery
    SQL.Strings = (
      'select nm.F_NAME_RU as compiled_name_otdel, '
      '       b.doc_date, b.doc_number,'
      '       a.quantity, '
      '       (a.quantity * p.price) as summa '
      '  from nomenclature n, '
      '       store_doc_data a, '
      '       store_doc b, '
      '       clients c, '
      '       price_list p, '
      '       flower_names nm '
      ' where --n.fst_id in (:p_fst_id) '
      '   n.fst_id in (const_cargo, const_cargo_62) '
      '   AND a.n_id = n.n_id '
      '   AND a.id_office = const_office '
      '   AND a.id_doc = b.id_doc '
      '   AND b.id_client = c.id_clients '
      '   AND nm.fn_id = n.fn_id '
      '   AND a.n_id = p.n_id '
      '   AND a.id_office = p.id_office '
      '   AND n.n_id = p.n_id '
      '   AND const_office = p.id_office '
      
        '   and ( c.id_clients = :p_id_client or c.id_clients_groups = :p' +
        '_id_client_group)'
      'order by b.doc_date, b.id_doc')
    Left = 480
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_id_client'
      end
      item
        DataType = ftUnknown
        Name = 'p_id_client_group'
      end>
    object cdsListCOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 256
    end
    object cdsListDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
      Required = True
    end
    object cdsListDOC_NUMBER: TFloatField
      FieldName = 'DOC_NUMBER'
    end
    object cdsListQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Required = True
    end
    object cdsListSUMMA: TFloatField
      FieldName = 'SUMMA'
    end
  end
  object cdsQuery: TOraQuery
    Left = 376
  end
  object cdsClients: TOraQuery
    SQL.Strings = (
      
        'select c.fio, c.nick, c.group_name, c.id_clients, c.id_clients_g' +
        'roups, sum(a.quantity) as quantity, max(b.doc_date) as doc_date,' +
        ' sum(a.quantity * p.price) as summa'
      '  from nomenclature n, '
      '       store_doc_data a, '
      '       store_doc b, '
      '       clients_view2 c, '
      '       price_list p'
      ' where --n.fst_id in (:p_fst_id)'
      '   n.fst_id in (const_cargo, const_cargo_62) '
      '   AND a.n_id = n.n_id '
      '   AND a.id_office = const_office '
      '   AND a.id_doc = b.id_doc '
      '   AND b.id_client = c.id_clients  '
      '   AND a.n_id = p.n_id '
      '   AND a.id_office = p.id_office '
      '   AND n.n_id = p.n_id '
      '   AND const_office = p.id_office '
      
        ' group by c.fio, c.nick, c.group_name, c.id_clients, c.id_client' +
        's_groups')
    Left = 432
    Top = 56
    object cdsClientsFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object cdsClientsNICK: TStringField
      FieldName = 'NICK'
    end
    object cdsClientsGROUP_NAME: TStringField
      FieldName = 'GROUP_NAME'
      Required = True
      Size = 255
    end
    object cdsClientsID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object cdsClientsID_CLIENTS_GROUPS: TIntegerField
      FieldName = 'ID_CLIENTS_GROUPS'
      Required = True
    end
    object cdsClientsQUANTITY: TFloatField
      FieldName = 'QUANTITY'
    end
    object cdsClientsDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object cdsClientsSUMMA: TFloatField
      FieldName = 'SUMMA'
    end
  end
  object dsClients: TOraDataSource
    DataSet = cdsClients
    Left = 464
    Top = 56
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'xls'
    FileName = 'file1'
    Filter = 'Microsoft Excel Workbook (*.xls)|*.XLS'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 394
    Top = 46
  end
  object frxClientCargo: TfrxReport
    Version = '4.12.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.OutlineVisible = True
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 38722.066105497700000000
    ReportOptions.LastChange = 40948.053182581020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 464
    Top = 104
    Datasets = <
      item
        DataSet = frxClientList
        DataSetName = 'frxClientList'
      end
      item
        DataSet = frxClientsCargo
        DataSetName = 'frxClientsCargo'
      end
      item
        DataSet = frxClientSummary
        DataSetName = 'frxClientSummary'
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
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      PrintOnPreviousPage = True
      object MasterData1: TfrxMasterData
        Height = 15.118110240000000000
        Top = 317.480520000000000000
        Width = 755.906000000000000000
        DataSet = frxClientList
        DataSetName = 'frxClientList'
        KeepHeader = True
        KeepTogether = True
        RowCount = 0
        Stretched = True
        object Memo2: TfrxMemoView
          Width = 359.055186460000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'COMPILED_NAME_OTDEL'
          DataSet = frxClientList
          DataSetName = 'frxClientList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 3.000000000000000000
          Memo.UTF8 = (
            '[frxClientList."COMPILED_NAME_OTDEL"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baRight
          Left = 476.220992360000000000
          Width = 94.488186540000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'DOC_NUMBER'
          DataSet = frxClientList
          DataSetName = 'frxClientList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxClientList."DOC_NUMBER"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baRight
          Left = 570.709178900000000000
          Width = 90.708678500000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'QUANTITY'
          DataSet = frxClientList
          DataSetName = 'frxClientList'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxClientList."QUANTITY"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baRight
          Left = 661.417857400000000000
          Width = 94.488142600000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'SUMMA'
          DataSet = frxClientList
          DataSetName = 'frxClientList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 3.000000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxClientList."SUMMA"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Align = baRight
          Left = 359.055625820000000000
          Width = 117.165366540000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'DOC_NUMBER'
          DataSet = frxClientList
          DataSetName = 'frxClientList'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxClientList."DOC_NUMBER"]')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 355.275820000000000000
        Width = 755.906000000000000000
        object Memo1: TfrxMemoView
          Width = 755.906000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15066597
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 570.708783460000000000
          Width = 90.708678500000000000
          Height = 22.677165350000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxClientList."QUANTITY">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 661.417410710000000000
          Width = 94.488208500000000000
          Height = 22.677165350000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[SUM(<frxClientList."SUMMA">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 476.220577400000000000
          Width = 94.488206060000000000
          Height = 22.677165350000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#152#1057#8218#1056#1109#1056#1110#1056#1109':')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 128.504020000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo24: TfrxMemoView
          Align = baWidth
          Width = 755.906000000000000000
          Height = 17.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1056#176#1056#187#1057#1034#1056#1169#1056#1109' '#1056#1108#1056#187#1056#1105#1056#181#1056#1029#1057#8218#1056#176' '#1056#1111#1056#1109' '#1057#8218#1056#176#1057#1026#1056#181)
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Align = baWidth
          Top = 105.826815590000000000
          Width = 445.984085980000000000
          Height = 22.677162910000000000
          ShowHint = False
          Color = 15066597
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#176#1057#1026#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Align = baRight
          Left = 570.708468580000000000
          Top = 105.826815590000000000
          Width = 90.709322920000000000
          Height = 22.677162910000000000
          ShowHint = False
          Color = 15066597
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187#1056#1105#1057#8225#1056#181#1057#1027#1057#8218#1056#1030#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Align = baRight
          Left = 661.417791500000000000
          Top = 105.826815590000000000
          Width = 94.488208500000000000
          Height = 22.677162910000000000
          ShowHint = False
          Color = 15066597
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Align = baRight
          Left = 445.984085980000000000
          Top = 105.826815590000000000
          Width = 124.724382600000000000
          Height = 22.677162910000000000
          ShowHint = False
          Color = 15066597
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1119#1056#1109#1057#1027#1056#187#1056#181#1056#1169#1056#1029#1057#1039#1057#1039' '#1056#1169#1056#176#1057#8218#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Top = 47.133890000000000000
          Width = 211.653680000000000000
          Height = 14.230983330000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#1038#1056#181#1056#1110#1056#1109#1056#1169#1056#1029#1057#1039':  [<Date>] [<Time>]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 181.417440000000000000
          Top = 18.897650000000000000
          Width = 139.842610000000000000
          Height = 17.118120000000000000
          ShowHint = False
          DataSet = frxClientsCargo
          DataSetName = 'frxClientsCargo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '  [frxClientsCargo."GROUP_NAME"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 90.708720000000000000
          Width = 211.653680000000000000
          Height = 14.230983330000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1115#1056#177#1057#8240#1056#1105#1056#181' '#1056#1169#1056#176#1056#1029#1056#1029#1057#8249#1056#181)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baLeft
          Left = 71.811070000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Height = 17.118120000000000000
          ShowHint = False
          DataSet = frxClientsCargo
          DataSetName = 'frxClientsCargo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '  [frxClientsCargo."FIO"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baLeft
          Top = 18.897650000000000000
          Width = 71.811070000000000000
          Height = 17.118120000000000000
          ShowHint = False
          DataField = 'NICK'
          DataSet = frxClientsCargo
          DataSetName = 'frxClientsCargo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxClientsCargo."NICK"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 15.118110240000000000
        Top = 207.874150000000000000
        Width = 755.906000000000000000
        DataSet = frxClientSummary
        DataSetName = 'frxClientSummary'
        KeepHeader = True
        KeepTogether = True
        RowCount = 0
        Stretched = True
        object Memo10: TfrxMemoView
          Align = baWidth
          Width = 445.984752360000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'COMPILED_NAME_OTDEL'
          DataSet = frxClientSummary
          DataSetName = 'frxClientSummary'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 3.000000000000000000
          Memo.UTF8 = (
            '[frxClientSummary."COMPILED_NAME_OTDEL"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baRight
          Left = 445.984752360000000000
          Width = 124.724426540000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'DOC_DATE'
          DataSet = frxClientSummary
          DataSetName = 'frxClientSummary'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxClientSummary."DOC_DATE"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baRight
          Left = 570.709178900000000000
          Width = 90.708678500000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'QUANTITY'
          DataSet = frxClientSummary
          DataSetName = 'frxClientSummary'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxClientSummary."QUANTITY"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baRight
          Left = 661.417857400000000000
          Width = 94.488142600000000000
          Height = 15.118110240000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'SUMMA'
          DataSet = frxClientSummary
          DataSetName = 'frxClientSummary'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          GapX = 3.000000000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[frxClientSummary."SUMMA"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 49.133890000000000000
        Top = 245.669450000000000000
        Width = 755.906000000000000000
        object Memo9: TfrxMemoView
          Align = baWidth
          Top = 26.456685590000000000
          Width = 359.055350000000000000
          Height = 22.677162910000000000
          ShowHint = False
          Color = 15066597
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1118#1056#176#1057#1026#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Align = baRight
          Left = 570.708468580000000000
          Top = 26.456685590000000000
          Width = 90.709322920000000000
          Height = 22.677162910000000000
          ShowHint = False
          Color = 15066597
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187#1056#1105#1057#8225#1056#181#1057#1027#1057#8218#1056#1030#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Align = baRight
          Left = 661.417791500000000000
          Top = 26.456685590000000000
          Width = 94.488208500000000000
          Height = 22.677162910000000000
          ShowHint = False
          Color = 15066597
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1038#1057#1107#1056#1112#1056#1112#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Align = baRight
          Left = 476.220325980000000000
          Top = 26.456685590000000000
          Width = 94.488142600000000000
          Height = 22.677162910000000000
          ShowHint = False
          Color = 15066597
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1074#8222#8211' '#1056#1169#1056#1109#1056#1108#1057#1107#1056#1112#1056#181#1056#1029#1057#8218#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Top = 11.338590000000000000
          Width = 211.653680000000000000
          Height = 14.230983330000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#8221#1056#181#1057#8218#1056#176#1056#187#1056#1105#1056#183#1056#176#1057#8224#1056#1105#1057#1039)
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Align = baRight
          Left = 359.055350000000000000
          Top = 26.456710000000000000
          Width = 117.164975980000000000
          Height = 22.677162910000000000
          ShowHint = False
          Color = 15066597
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176' '#1056#1169#1056#1109#1056#1108#1057#1107#1056#1112#1056#181#1056#1029#1057#8218#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxClientsCargo: TfrxDBDataset
    UserName = 'frxClientsCargo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'FIO=FIO'
      'NICK=NICK'
      'GROUP_NAME=GROUP_NAME'
      'ID_CLIENTS=ID_CLIENTS'
      'ID_CLIENTS_GROUPS=ID_CLIENTS_GROUPS'
      'QUANTITY=QUANTITY'
      'DOC_DATE=DOC_DATE'
      'SUMMA=SUMMA')
    DataSet = cdsClients
    BCDToCurrency = False
    Left = 496
    Top = 104
  end
  object frxClientSummary: TfrxDBDataset
    UserName = 'frxClientSummary'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COMPILED_NAME_OTDEL=COMPILED_NAME_OTDEL'
      'QUANTITY=QUANTITY'
      'DOC_DATE=DOC_DATE'
      'SUMMA=SUMMA')
    DataSet = cdsSummary
    BCDToCurrency = False
    Left = 496
    Top = 136
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
    Author = 'FastReport'#174
    Subject = 'FastReport'#174' PDF export'
    Creator = 'FastReport'#174' (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 536
    Top = 104
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
    Left = 536
    Top = 200
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Background = True
    Creator = 'FastReport'#174
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 536
    Top = 136
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
    Left = 568
    Top = 168
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
    Left = 568
    Top = 136
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = False
    Left = 536
    Top = 168
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
    Left = 568
    Top = 104
  end
  object frxClientList: TfrxDBDataset
    UserName = 'frxClientList'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COMPILED_NAME_OTDEL=COMPILED_NAME_OTDEL'
      'DOC_DATE=DOC_DATE'
      'DOC_NUMBER=DOC_NUMBER'
      'QUANTITY=QUANTITY'
      'SUMMA=SUMMA')
    DataSet = cdsList
    BCDToCurrency = False
    Left = 496
    Top = 168
  end
  object PopupMenu1: TPopupMenu
    Left = 520
    Top = 54
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
