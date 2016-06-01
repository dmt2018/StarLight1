object import_debet: Timport_debet
  Left = 360
  Top = 131
  Caption = '  '#1050#1072#1089#1089#1086#1074#1099#1081' '#1089#1074#1086#1076
  ClientHeight = 627
  ClientWidth = 978
  Color = clBtnFace
  Constraints.MinHeight = 550
  Constraints.MinWidth = 750
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  Scaled = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 978
    Height = 34
    Align = alTop
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 976
      Height = 32
      Align = alClient
      Alignment = taCenter
      Caption = #1056#1072#1079#1085#1086#1089' '#1076#1086#1083#1075#1086#1074' '#1079#1072' '#1082#1072#1089#1089#1086#1074#1099#1081' '#1076#1077#1085#1100' '#1086#1090' '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 241
      ExplicitHeight = 16
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 34
    Width = 978
    Height = 559
    Align = alClient
    BevelOuter = bvNone
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 257
      Height = 559
      Align = alLeft
      BorderWidth = 5
      Color = 14540253
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object Panel6: TPanel
        Left = 6
        Top = 272
        Width = 245
        Height = 26
        Align = alTop
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1087#1086' '#1075#1088#1091#1087#1087#1077
        Color = clMoneyGreen
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentBackground = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object Panel8: TPanel
        Left = 6
        Top = 6
        Width = 245
        Height = 26
        Align = alTop
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1087#1086' '#1076#1077#1073#1080#1090#1086#1088#1091
        Color = clMoneyGreen
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentBackground = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
      end
      object Panel9: TPanel
        Left = 6
        Top = 298
        Width = 245
        Height = 57
        Align = alTop
        BevelOuter = bvNone
        Color = 14540253
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        object Label11: TLabel
          Left = 5
          Top = 10
          Width = 50
          Height = 15
          Caption = #1042' '#1075#1088#1091#1087#1087#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit7: TDBEdit
          Left = 75
          Top = 8
          Width = 165
          Height = 21
          DataField = 'GROUP_NAME'
          DataSource = DM.DS_CL_DEBETORS
          ReadOnly = True
          TabOrder = 0
        end
        object cb_showall: TCheckBox
          Left = 5
          Top = 35
          Width = 237
          Height = 17
          Caption = #1086#1073#1098#1077#1076#1080#1085#1080#1090#1100' '#1076#1086#1083#1075#1086#1074#1099#1077' '#1082#1072#1088#1090#1086#1095#1082#1080' (F8)'
          TabOrder = 1
          Visible = False
          OnClick = cb_showallClick
        end
      end
      object panel7: TPanel
        Left = 6
        Top = 32
        Width = 245
        Height = 240
        Align = alTop
        BevelOuter = bvNone
        BorderWidth = 1
        Caption = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '
        Color = 14540253
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object Panel12: TPanel
          Left = 1
          Top = 1
          Width = 243
          Height = 238
          Align = alTop
          BevelOuter = bvNone
          Color = 14540253
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object Label2: TLabel
            Left = 4
            Top = 10
            Width = 21
            Height = 15
            Caption = #1053#1080#1082
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 4
            Top = 34
            Width = 28
            Height = 15
            Caption = #1060#1048#1054
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 4
            Top = 60
            Width = 43
            Height = 15
            Caption = #1041#1077#1079#1085#1072#1083
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 4
            Top = 84
            Width = 60
            Height = 15
            Caption = #1056#1091#1073#1083#1077#1074#1099#1081
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 4
            Top = 108
            Width = 44
            Height = 15
            Caption = #1057#1090#1072#1088#1099#1081
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 4
            Top = 130
            Width = 29
            Height = 15
            Caption = #1044#1086#1083#1075
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 4
            Top = 154
            Width = 41
            Height = 15
            Caption = #1050#1088#1077#1076#1080#1090
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 4
            Top = 178
            Width = 53
            Height = 15
            Caption = #1058#1077#1083#1077#1092#1086#1085
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label10: TLabel
            Left = 4
            Top = 202
            Width = 111
            Height = 15
            Caption = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1079#1072#1087#1080#1089#1100
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBCheckBox1: TDBCheckBox
            Left = 84
            Top = 60
            Width = 97
            Height = 17
            Caption = #1076#1072' '
            DataField = 'BEZNAL'
            DataSource = DM.DS_CL_DEBETORS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox2: TDBCheckBox
            Left = 84
            Top = 84
            Width = 97
            Height = 17
            Caption = #1076#1072' '
            DataField = 'RUBL'
            DataSource = DM.DS_CL_DEBETORS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox3: TDBCheckBox
            Left = 84
            Top = 108
            Width = 97
            Height = 17
            Caption = #1076#1072' '
            DataField = 'STATE'
            DataSource = DM.DS_CL_DEBETORS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBEdit1: TDBEdit
            Left = 84
            Top = 8
            Width = 155
            Height = 21
            DataField = 'NICK'
            DataSource = DM.DS_CL_DEBETORS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 84
            Top = 32
            Width = 155
            Height = 21
            DataField = 'FIO'
            DataSource = DM.DS_CL_DEBETORS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 84
            Top = 128
            Width = 155
            Height = 21
            DataField = 'DEBET'
            DataSource = DM.DS_CL_DEBETORS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
          object DBEdit4: TDBEdit
            Left = 84
            Top = 152
            Width = 155
            Height = 21
            DataField = 'CREDIT_DAYS'
            DataSource = DM.DS_CL_DEBETORS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
          end
          object DBEdit5: TDBEdit
            Left = 84
            Top = 176
            Width = 155
            Height = 21
            DataField = 'PHONE'
            DataSource = DM.DS_CL_DEBETORS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
          end
          object DBEdit6: TDBEdit
            Left = 121
            Top = 200
            Width = 118
            Height = 21
            DataField = 'MAX_DATE'
            DataSource = DM.DS_CL_DEBETORS
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 8
          end
        end
      end
      object gr_debetors: TcxGrid
        Left = 6
        Top = 355
        Width = 245
        Height = 198
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Visible = False
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = True
        object gr_debetors_v: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCellClick = gr_debetors_vCellClick
          OnCustomDrawCell = gr_debetors_vCustomDrawCell
          OnFocusedRecordChanged = gr_debetors_vFocusedRecordChanged
          DataController.DataSource = DM.DS_CL_DEBETORS
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.AutoDataSetFilter = True
          DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              Column = gr_debetors_vNICK
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1072
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnMoving = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          Styles.Inactive = st_notactive
          Styles.Selection = st_notactive
          object gr_debetors_vIS_LOCK: TcxGridDBColumn
            DataBinding.FieldName = 'IS_LOCK'
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
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000FFFFFF841879DE75237CC1DC2378C1DF2375
              BFDF2372BDDF236FBBDF236EBBDF236EBBDF226CBADC175ACF6F000000000000
              0000000000000000000000000000FFFFFF842891CFF138C5F0FE31B7EFFF2FB2
              EFFE2FB1EEFE2FB1EEFF2FB1EEFE2FB1EEFE32B6EFFF236FB8EA878383799B98
              97F09F9C9BF89D9A9AF89C9999F8D0CECEFC2F98CEFF37CDF1FF2BB3EEFF28A4
              ECFF2599E9FF2493E8FF2492E7FF2492E7FF2AA3EBFF2772B7F79D9999EEF7EE
              EBFFF4E8E3FFF4E7E2FFF3E6E1FFF9F2F0FF34A0D2FF3BDAF3FF2FC2F1FF2BB5
              EFFF27A6EDFF259AEAFF2392E8FF238FE7FF29A1EAFF2A73B6FEA3A09FF6F5EA
              E6FFF2E1DBFFF1E0D9FFF0DED8FFF8EFEBFF2A9BD1FF35D3F2FF30CAF2FF32CE
              F2FF33CEF1FF32C7F1FF30B9EEFF2BAAEAFF2EADECFF2576BCFFA4A1A0F6F6EC
              E8FFF3E4DEFFF2E2DCFFF1E1DAFFF8F0EDFF4599D2FF3ED1F2FF41D6F2FF43DA
              F3FF45DDF2FF46DDF2FF46DAF2FF43D2F0FF40C8EFFF3471B3FEA5A2A1F6F7EE
              EAFFF4E6E1FFF3E4DFFFF2E3DDFFF9F1EEFFDAD2D2FF7393AFFF7090ACFF6F90
              ACFF6F90ACFF6F90ACFF6F90ACFF6882A1FF677F9FFF898B91FBA6A3A2F6F7EF
              ECFFF5E8E4FFF4E7E2FFF4E5E0FFF3E4DEFFF6EFECFFA5A5A5FFD5D0D0FFA5A5
              A5FFF8EFEBFFF7EEEAFFA5A5A5FFC2BEBEFFA5A5A5FFCCCACAFDA7A3A3F6F8F1
              EEFFF6EBE6FFF5E9E5FFF5E8E3FFF4E6E1FFF9F2F0FFA5A5A5FFE8E3E2FFA5A5
              A5FFA5A5A5FFA5A5A5FFA5A5A5FFDCD7D6FFA5A5A5FFCECCCCFDA7A4A4F6F9F2
              F0FFF7EDE9FFF6EBE7FFF6EAE6FFF5E9E4FFFAF3F1FFA5A5A5FFF0EAEAFFEBE6
              E5FFDCD6D6FFD8D3D3FFE5E0DFFFE6E1E1FFA5A5A5FFCECDCDFDA8A5A4F6F9F3
              F1FFF7EEEBFFF7EDEAFFF6ECE8FFF6EBE7FFF5E9E5FFFAF3F1FFA5A5A5FFA5A5
              A5FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5A5FFF8F2EFFF999696FAA69997F5EADA
              D6FFEAD9D5FFEAD9D5FFEAD8D4FFE9D8D4FFE9D8D3FFE9D7D3FFF4ECE9FFF4EB
              E9FFF4EBE9FFF4EBE9FFF4EBE8FFF3EAE8FFE8D5D1FF9A8D8BFAB95D49F6C86C
              56FFC86C57FFC96C58FFC96C58FFC86C58FFC86B57FFC76A57FFC56956FFC468
              55FFC26754FFC16553FFC06351FFBE6250FFBD604FFFB75B48FCC0634FF8D176
              52FFD27855FFD57958FFD67A5BFFD5795BFFD3775AFFD07458FFCD7055FFC96B
              52FFC2664EFFBD6049FFB85A44FFB2533FFFAF503DFFBD604EFCBB5E4AE6D177
              55FFD17653FFD47A58FFD67B5CFFD77B5EFFD67B5EFFD4795DFFD2765BFFCE72
              58FFCA6D54FFC46850FFBF624CFFBA5C47FFBA5D4BFFBA5D4AEAB254415BBB5E
              4AE6BF634FF5C0634FF5C06450F5C06450F5C06450F5C06450F5C06350F5C063
              50F5BF6350F5BF624FF5BE614FF5BE614EF5BA5D4AE6B556425D}
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 25
            Options.Editing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 25
            IsCaptionAssigned = True
          end
          object gr_debetors_vIS_LOC_FOR: TcxGridDBColumn
            DataBinding.FieldName = 'IS_LOC_FOR'
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
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000004210
              3B3A7A2832E79C4B3FFBA14F3FFC9D4C3FFB9B4A3EFA99473EF997473DF99949
              3EFA9B4A3EFB9C4B3FFB95433CF8712030DC400F3B2800000000000000007120
              30DDE3AA6BFFE49F47FFE49E44FFE49E46FFE49F47FFE6A553FFE6A553FFE49F
              48FFE49F47FFE49F47FFE5A14BFFE0A76CFF6B1C31D400000000000000009142
              40F4E5A34FFFE39839FFE39839FFE39839FFE5A14AFFC07856FFC17A57FFE5A0
              49FFE39839FFE39839FFE39839FFE6A554FF8B3C3DF100000000000000009B50
              49F6E5A24DFFE29739FFE29739FFE29739FFD89B63FFCF9C8DFFCE9A8AFFD99C
              63FFE29739FFE29739FFE29739FFE5A350FF964C47F400000000000000009D58
              52F5E39F4EFFDF9337FFDF9337FFE0973EFFC17C59FFF7EAE7FFF7E9E7FFC17C
              59FFE0973EFFDF9337FFDF9337FFE3A151FF995450F200000000000000009354
              55E8E1A15BFFDB8B36FFDB8B36FFB6834CFF9B6C5AFFBFB9B9FFBFB9B9FF9C6D
              5AFFB6834CFFDB8B36FFDB8B36FFE1A25EFF905054E30000000000000000814D
              64A4D3986DFFD6863BFFAC6A2AFF996E4FFF637799FF4887CBFF4887CBFF6478
              9AFF996F50FFAC6A2AFFD6873BFFD2966CFF804E669C0000000000000000462E
              4706925A63D5C68866FF956E54FF3E80C5FF83BCF2FFA3D3FEFFA3D3FEFF82BB
              F2FF3E80C5FF966E54FFC58765FF905963D04B324B0200000000000000000000
              000000000000452F473C275EA0F995C9F8FF8AC8FEFF89C8FFFF89C8FFFF89C7
              FEFF93C8F8FF265C9EF9422F4638000000000000000000000000000000000000
              000000000000021C393E5AA2EAFF87C6FEFF84C4FFFF83C4FFFF83C3FFFF82C3
              FFFF85C4FEFF58A0EAFF02203D3A000000000000000000000000000000000000
              000000000000358DDDEE7AB8F6FF7EC1FFFF7DC0FFFF7DC0FFFF7CC0FFFF7BBF
              FFFF7BBFFFFF76B7F6FF3690E2EE000000000000000000000000000000000000
              0000000000003593E7EF7ABAF9FF76BDFFFF76BCFFFF75BCFFFF74BCFFFF74BB
              FFFF73BBFFFF77B8F9FF3696EDEE000000000000000000000000000000000000
              0000000000001065BC4F65AFF9FF70B9FEFF6FB8FFFF6EB8FFFF6DB8FFFF6DB7
              FFFF6DB8FEFF63AEF9FF126CCA4B000000000000000000000000000000000000
              000000000000000000003197FCFD84C2FEFF68B5FFFF68B5FFFF67B4FFFF67B4
              FFFF82C1FEFF3097FCFD00000000000000000000000000000000000000000000
              00000000000000000000197FE948409FFEFF82C1FEFF70B8FEFF70B8FEFF81C0
              FEFF3F9EFEFF1983EF4500000000000000000000000000000000000000000000
              00000000000000000000000000001779DE331E8FFED542A0FEFE42A0FEFE1E90
              FED5197DE5310000000000000000000000000000000000000000}
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 25
            Options.Editing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 25
            IsCaptionAssigned = True
          end
          object gr_debetors_vSALES: TcxGridDBColumn
            DataBinding.FieldName = 'SALES'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayChecked = #1044#1072
            Properties.DisplayUnchecked = #1053#1077#1090
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = True
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              00000051930A0084F28A006FCE23000000000000000000000000000000000000
              000000000000005EC01F0074ED88004EA0100000000000000000000000000000
              000000508F070991F4FD159AF4FB0081F1A70073D93000000000000000000067
              CE2C0075EDA2168FF0FA087EEEFE004D9F100000000000000000000000000000
              0000000000000994F5E455E3FCFF41CBF9FF1B9EF4FE007EF0B7007CEFB21C99
              F2FD42C8F8FF54E1FCFF077CEEEE000000000000000000000000000000000000
              000000000000008EF5C451E4FCFF36D3FDFF41D6FCFF44CEFAFF44CEFAFF3FD3
              FCFF30C9FDFF49D7FBFF0075EDCF000000000000000000000000000000000000
              0000000000000091F6A550E3FCFF42E5FDFF3AD9FDFF33D0FDFF30CAFDFF2FC9
              FDFF2FC9FDFF43CDF9FF0077EDAF000000000000000000000000000000000000
              0000000000000094F78B4ADDFBFF4DF6FEFF47ECFEFF3FE1FDFF37D6FDFF31CD
              FDFF2FC9FDFF3DC3F8FF0079EE94000000000000000000000000000000000000
              0000008EE5320FA6F9F059F3FDFF52FEFFFF50FBFEFF4BF3FEFF44E9FDFF3CDD
              FDFF35D3FDFF48D6FBFF0D8AF1F30075E53A000000000000000000000000008E
              E0290BA7FBEA51EAFDFF4BF7FEFF4EFCFFFF51FEFFFF52FDFFFF4FF9FEFF49F0
              FEFF42E5FDFF3CDBFDFF4BD7FAFF0A86F0ED0073E12F00000000008DD92008A9
              FDE349E1FDFF3CE8FEFF40EEFFFF46F4FFFF4BF9FFFF4FFDFFFF52FEFFFF51FC
              FEFF4DF6FEFF47ECFEFF42E2FDFF4BD7FAFF0784F0E7006FD92600A7FED923C0
              FDFF3FD8FDFF4AE5FDFF4CEBFEFF46EDFEFF42F0FEFF47F5FFFF4CFAFFFF51FD
              FEFF59FDFEFF5DFAFDFF56EAFCFF45D1F9FF24A5F4FF007BEFDF008CD52B00A4
              FB5F00A5FD9000A3FCC10BA9FCF024BDFCFF4CECFEFF3EECFFFF44F2FFFF57F6
              FDFF26B3F8FF0B96F5F10087F3C30084F2920080F061006BCD2E000000000000
              000000000000000000000068A40200A0FB8D3AD0FCFF39E4FEFF3EE9FEFF3BCE
              FBFF0091F6970062AB0200000000000000000000000000000000000000000000
              0000000000000000000000000000007EC5100AA9FCEC48E5FDFF4AE6FDFF09A0
              F9F10081D6150000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000A1FB6F31C9FCFF2FC6FCFF009B
              FA7A000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000006DA80605A7FDDB04A4FCE20078
              C009000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000A0F74800A2FB4F0000
              0000000000000000000000000000000000000000000000000000}
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 25
            Options.Editing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 25
            IsCaptionAssigned = True
          end
          object gr_debetors_vNICK: TcxGridDBColumn
            Caption = #1050#1086#1076
            DataBinding.FieldName = 'NICK'
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
          object gr_debetors_vFIO: TcxGridDBColumn
            Caption = #1060#1048#1054
            DataBinding.FieldName = 'FIO'
            Options.Editing = False
            Options.Moving = False
            Width = 150
          end
          object gr_debetors_vGROUP_NAME: TcxGridDBColumn
            Caption = #1043#1088#1091#1087#1087#1072
            DataBinding.FieldName = 'GROUP_NAME'
            Visible = False
            MinWidth = 60
            Options.Editing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 60
          end
          object _gr_debetors_vID_CLIENTS: TcxGridDBColumn
            DataBinding.FieldName = 'ID_CLIENTS'
            Visible = False
          end
          object _gr_debetors_vID_CLIENTS_GROUPS: TcxGridDBColumn
            DataBinding.FieldName = 'ID_CLIENTS_GROUPS'
            Visible = False
          end
          object _gr_debetors_vBLOCK1: TcxGridDBColumn
            DataBinding.FieldName = 'BLOCK1'
            Visible = False
          end
          object gr_debetors_vDDATE: TcxGridDBColumn
            DataBinding.FieldName = 'DDATE'
            Visible = False
          end
          object gr_debetors_vCCODE: TcxGridDBColumn
            DataBinding.FieldName = 'CCODE'
            Visible = False
          end
          object gr_debetors_vREGION: TcxGridDBColumn
            DataBinding.FieldName = 'REGION'
            Visible = False
          end
          object gr_debetors_vTTYPE: TcxGridDBColumn
            DataBinding.FieldName = 'TTYPE'
            Visible = False
          end
          object gr_debetors_vBLOCK2: TcxGridDBColumn
            DataBinding.FieldName = 'BLOCK2'
            Visible = False
          end
          object gr_debetors_vID_DEBETORS: TcxGridDBColumn
            DataBinding.FieldName = 'ID_DEBETORS'
            Visible = False
          end
          object gr_debetors_vPHONE: TcxGridDBColumn
            DataBinding.FieldName = 'PHONE'
            Visible = False
          end
          object gr_debetors_vBEZNAL: TcxGridDBColumn
            DataBinding.FieldName = 'BEZNAL'
            Visible = False
          end
          object gr_debetors_vRUBL: TcxGridDBColumn
            DataBinding.FieldName = 'RUBL'
            Visible = False
          end
          object gr_debetors_vSTATE: TcxGridDBColumn
            DataBinding.FieldName = 'STATE'
            Visible = False
          end
          object gr_debetors_vDEBET: TcxGridDBColumn
            DataBinding.FieldName = 'DEBET'
            Visible = False
          end
          object gr_debetors_vCREDIT_DAYS: TcxGridDBColumn
            DataBinding.FieldName = 'CREDIT_DAYS'
            Visible = False
          end
          object gr_debetors_vLAST_DDATE: TcxGridDBColumn
            DataBinding.FieldName = 'LAST_DDATE'
            Visible = False
          end
        end
        object gr_debetors_l: TcxGridLevel
          GridView = gr_debetors_v
        end
      end
    end
    object Panel5: TPanel
      Left = 257
      Top = 0
      Width = 721
      Height = 559
      Align = alClient
      BorderWidth = 3
      Caption = #1044#1077#1073#1080#1090#1086#1088#1089#1082#1072#1103' '#1082#1072#1088#1090#1086#1095#1082#1072' '#1085#1072' '#1076#1072#1085#1085#1086#1075#1086' '#1082#1083#1080#1077#1085#1090#1072' '#1085#1077' '#1089#1091#1097#1077#1089#1090#1074#1091#1077#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Panel10: TPanel
        Left = 4
        Top = 408
        Width = 713
        Height = 147
        Align = alBottom
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Color = 14540253
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        object Label12: TLabel
          Left = 116
          Top = 46
          Width = 14
          Height = 15
          Caption = '- $'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 208
          Top = 46
          Width = 14
          Height = 15
          Caption = '- '#8364
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 114
          Top = 25
          Width = 17
          Height = 15
          Caption = '+ $'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 206
          Top = 25
          Width = 17
          Height = 15
          Caption = '+ '#8364
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 9
          Top = 46
          Width = 28
          Height = 15
          Caption = '- '#1056#1091#1073
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 7
          Top = 25
          Width = 31
          Height = 15
          Caption = '+ '#1056#1091#1073
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 315
          Top = 46
          Width = 37
          Height = 15
          Caption = #1057#1091#1084#1084#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 567
          Top = 25
          Width = 83
          Height = 15
          Caption = #1050#1091#1088#1089#1099' '#1092#1080#1088#1084#1099
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 554
          Top = 46
          Width = 7
          Height = 15
          Caption = '$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 623
          Top = 46
          Width = 7
          Height = 15
          Caption = #8364
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 540
          Top = 70
          Width = 17
          Height = 15
          Caption = '$\'#8364
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 622
          Top = 70
          Width = 17
          Height = 15
          Caption = #8364'\$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 240
          Top = 5
          Width = 86
          Height = 13
          Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103' '#8470':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 336
          Top = 5
          Width = 48
          Height = 13
          AutoSize = True
          DataField = 'INVOICE'
          DataSource = DM.Q_CASH_S_DS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 432
          Top = 5
          Width = 60
          Height = 13
          Caption = #1054#1087#1077#1088#1072#1094#1080#1103':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText2: TDBText
          Left = 504
          Top = 5
          Width = 48
          Height = 13
          AutoSize = True
          DataField = 'T_LONG'
          DataSource = DM.Q_CASH_S_DS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 8
          Top = 5
          Width = 77
          Height = 13
          Caption = #1042#1099#1087#1080#1089#1072#1085#1072' '#1085#1072':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText3: TDBText
          Left = 96
          Top = 5
          Width = 48
          Height = 13
          AutoSize = True
          DataField = 'NICK'
          DataSource = DM.Q_CASH_S_DS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label27: TLabel
          Left = 57
          Top = 72
          Width = 74
          Height = 15
          Caption = #1057#1082#1080#1076#1082#1080':  '#1088#1091#1073'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 213
          Top = 73
          Width = 9
          Height = 15
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label29: TLabel
          Left = 315
          Top = 72
          Width = 29
          Height = 15
          Caption = #1044#1086#1083#1075
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clPurple
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label30: TLabel
          Left = 55
          Top = 96
          Width = 76
          Height = 15
          Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btn_refresh: TcxButton
          Left = 9
          Top = 117
          Width = 113
          Height = 25
          Cursor = crHandPoint
          Action = aRefresh
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          ParentFont = False
          TabOrder = 19
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F601F60AF701F709FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00D601D62A82126A9CA85830E6D98C21FED98C21FEA453
            32E383106F96DC01DC24FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0093078B77D08022FAE9A31DFFF0AF1BFFF3B31AFFF3B31AFFF0AE
            1BFFE8A21DFFC97925F79D05986AFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF009107887ADE8D21FFEFA71DFFD8B544FFA5C99FFF90D1C7FF92CFBFFFAAC3
            89FFE4B231FFEEA61DFFDA8A22FE9D05986AFF00FF00FF00FF00FF00FF00D001
            D030D07924FBED9F20FFC1B86DFF81D7E9FF90D4D7FF85D8E8FF8FE0F6FF8DDF
            F6FF77D2E4FFD0B04FFFEA9E23FFC46F2AF7DC01DC24FF00FF00FF00FF007F14
            62A6E48C24FFF39E26FFD4AB57FFFBA932FFFFAB31FFFBAC36FFBABB84FF78D7
            F1FF60D1F2FF60C5D5FF6BBFC0FFE18B26FF830E6F96FF00FF00FE01FE02B457
            30F0EB8C26FFEC9B34FFFE9D30FFFFA236FFFFA438FFFFA439FFFFA439FFB0B5
            88FF4ACBF0FF42C9F0FF5EC0D0FFE98B26FF9E4436E3FF00FF00E701E719D575
            30FFED872BFF60C8AEFF41D8CDFFAEB67AFFFC9D40FFFF9C3EFFF49F48FF6AC0
            CCFF42C9F0FF42C9F0FF77B6B5FFEC872BFFD06F32FEF701F709E601E61AD473
            37FFEE8A3DFF3ED6CFFF03EDFFFF04EDFFFF46D7CFFFF5974AFFFF9443FFF796
            4AFFB1A787FF60C0D4FF8EAFA2FFED8A3EFFD06E38FEF601F60AFE01FE02B756
            3CF3EA8547FF1BE3ECFF04EDFFFF14EEFFFFAABA94FFFF9F5FFFFF9F5FFFFFA0
            60FFFFA161FFFE9C5CFFE9955DFFE98548FFA34540E6FF00FF00FF00FF007E14
            60ACD88357FF30DBE0FF26E6F2FF35F0FFFF56EFF8FFB9BF9FFFFEA776FFFFA5
            74FFFDA06EFFD0A77FFFF28D5AFFE18151FF810E6D9CFF00FF00FF00FF00CA01
            C937CC7253FDE68964FFAFAD95FF51EFFAFF7DF5FFFF89F6FFFF81EBEEFF89E3
            E2FF76ECF2FFB1B39EFFE98762FFC8684DFAD601D62AFF00FF00FF00FF00FF00
            FF0089087F86DB8065FFEB8D71FFD0A48EFF96D2CEFF88E8ECFF88EAEEFF9CD8
            D6FFCDAA96FFEA8E73FFDA8064FF93058D76FF00FF00FF00FF00FF00FF00FF00
            FF00FF01FF0189087F86D47C6AFDE89885FFEFA592FFF3AC9AFFF3AD9BFFEFA7
            95FFE89B88FFCF7868FB91068B79FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00CA01C9377E1665ACBF6F6DF3E09A8DFFE09B8DFFB869
            6CF07F1469A6D101D12FFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FE01FE02E601E61AE701E719FE01
            FE02FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = True
        end
        object cxButton1: TcxButton
          Left = 122
          Top = 117
          Width = 108
          Height = 25
          Cursor = crHandPoint
          Action = aNew
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000C68D95E0CFAE
            AEEFCFAEAEEFCFAEAEEFCFAEAEEFCFAEAEEFCFAEAEEFCFAEAEEFCFAEAEEFD7B9
            B8EFBBC2BEEFA8CDBEF5BDC1BDEFD6B6B6EFCFAEAEEFC68E96E0DAB4B1EFF4F4
            F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F4F4FFD6EBE0FF53CB
            96FF2EC387FF55CD9AFF2DC081FF58CC98FFD8E9DFFFDAB6B3EFDDB8B2EFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F8F5FF4AC68BFF25C1
            83FF4ACB98FFFFFFFFFF44BF7AFF25C183FF52C78CFFD6B5B0EFDDB6AEEFEBE8
            E3FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFF3F2EFFFB5E1C3FF39C68DFF40C8
            92FF6BD4A9FFFFFFFFFF62C88CFF40C892FF39C487FFAFB5A4EFDDB5AAEFDFDA
            D3FFCEC7BDFFCEC7BDFFCEC7BDFFCEC7BDFFECEAE6FF98D6ABFF7EDBB5FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF73CD92FF9ABE9FF5DCB4A5EFDAD4
            CDFFC7BFB4FFC7BFB4FFC7BFB4FFC7BFB4FFEAE7E2FFAFD9AFFF5FBE70FF7AC9
            86FF94D4A1FFFFFFFFFF87CA88FF79C884FF5CBB69FFA9AF91EFDCB2A3EFD4CF
            C6FFBFB6AAFFBFB6AAFFBFB6AAFFBFB6AAFFE7E3DFFFEEF3ECFF5DA938FF5DB1
            4BFF79C377FFFFFFFFFF6BB75CFF5DB048FF63AB3EFFCFAD9CEFDCB19EEFD0CA
            C1FFB9AFA1FFB9AFA1FFB9AFA1FFB9AFA1FFE4E1DBFFFDFDFDFFC7DABEFF5EA3
            34FF63A83AFF87BC67FF60A534FF62A438FFCEDEC6FFDCB3A2EFDBB198EFCBC5
            BBFFB1A798FFB1A798FFB1A798FFB1A798FFE2DED8FFFFFFFFFFF6F6F6FFE5E9
            E4FFADCB9CFF97BD81FFAFCB9EFFD1D1C7FFEEECEAFFDCB39EEFDBB093EFC7C1
            B6FFABA191FFABA191FFABA191FFABA191FFDFDBD5FFFFFFFFFFF3F3F4FFF2F2
            F2FFF2F2F2FFF5F5F6FFFFFFFFFFD2CDC5FFECEAE7FFDCB297EFDAAF88EFC4BD
            B2FFA69B8BFFA69B8BFFA69B8BFFA69B8BFFDDD9D3FFFFFFFFFFF3F3F4FFF2F2
            F2FFF2F2F2FFF5F5F6FFFFFFFFFFDDD9D3FFF1EFEDFFDBB18EEFD9AE83EFC4BD
            B2FFA69C8BFFA69C8BFFA69C8BFFA69C8BFFDDD9D3FFFFFFFFFFF7F7F7FFF6F6
            F6FFF6F6F6FFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFDBB089EFD9AD83EFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAB089EFCDA178EFE5E6
            E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6
            E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFCDA27DEFBF781FEFC78E
            20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E
            20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E20FFBF7820EFB66220E0BC6F
            11EFBC6F11EFBC6F11EFBC6F11EFBC6F11EFBC6F11EFBC6F11EFBC6F11EFBC6F
            11EFBC6F11EFBC6F11EFBC6F11EFBC6F11EFBC6F11EFB66220E0}
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = True
        end
        object cxButton2: TcxButton
          Left = 230
          Top = 117
          Width = 124
          Height = 25
          Cursor = crHandPoint
          Action = aEdit
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000C68D95E0CFAE
            AEEFCFAEAEEFCFAEAEEFCFAEAEEFCFAEAEEFCFAEAEEFCFAEAEEFCFAEAEEFCFAE
            AEEFCFAEAEEFCFAEAEEFCFAEAEEFCFAEAEEFCFAEAEEFC68E96E0DAB4B1EFF4F4
            F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFE4E5E6FFE1E2E3FFF4F4F4FFF4F4
            F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFDBB6B3EFDDB8B2EFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F6FFA4C0DEFFA8C7F1FFFCFD
            FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEBAB4EFDDB6AEEFEBE8
            E3FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFF3F2EFFFBBD3F2FF89B6EDFF9BBE
            EFFFF4F5F6FFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFDDB9B2EFDDB5AAEFDFDA
            D3FFCEC7BDFFCEC7BDFFCEC7BDFFCEC7BDFFECEAE6FFFFFFFFFFADC9EDFF89B6
            EDFF9ABEEEFFF7F7F8FFFFFFFFFFF4F3F0FFFAFAF9FFDDB8AEEFDCB4A5EFDAD4
            CDFFC7BFB4FFC7BFB4FFC7BFB4FFC7BFB4FFEAE7E2FFFFFFFFFFF0F0F0FFA6C2
            E8FF89B6EDFF9BBDEEFFFDFDFEFFE5E2DCFFF4F3F1FFDDB7AAEFDCB2A3EFD4CF
            C6FFBFB6AAFFBFB6AAFFBFB6AAFFBFB6AAFFE7E3DFFFFFFFFFFFF7F7F7FFF6F6
            F6FFA8C5ECFF89B6EDFF9FC1F1FFDFDBD6FFF2F0EEFFDDB5A6EFDCB19EEFD0CA
            C1FFB9AFA1FFB9AFA1FFB9AFA1FFB9AFA1FFE4E1DBFFFFFFFFFFF0F0F0FFEEEE
            EEFFEEEEEEFFA3C1E9FF89B6EDFF8EAAD0FFF0EEEBFFDCB4A3EFDBB198EFCBC5
            BBFFB1A798FFB1A798FFB1A798FFB1A798FFE2DED8FFFFFFFFFFF7F7F7FFF6F6
            F6FFF6F6F6FFF8F8F9FFADC9ECFFCBCAC7FFCAC6C8FFDCB39EEFDBB093EFC7C1
            B6FFABA191FFABA191FFABA191FFABA191FFDFDBD5FFFFFFFFFFF3F3F4FFF2F2
            F2FFF2F2F2FFF5F5F6FFFEFEFEFFC6C2C7FF4247B2FFD2AA95EFDAAF88EFC4BD
            B2FFA69B8BFFA69B8BFFA69B8BFFA69B8BFFDDD9D3FFFFFFFFFFF3F3F4FFF2F2
            F2FFF2F2F2FFF5F5F6FFFFFFFFFFDCD9D3FFE6E5EBFFDBB18EEFD9AE83EFC4BD
            B2FFA69C8BFFA69C8BFFA69C8BFFA69C8BFFDDD9D3FFFFFFFFFFF7F7F7FFF6F6
            F6FFF6F6F6FFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFDBB089EFD9AD83EFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAB089EFCDA178EFE5E6
            E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6
            E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFCDA27DEFBF781FEFC78E
            20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E
            20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E20FFBF7820EFB66220E0BC6F
            11EFBC6F11EFBC6F11EFBC6F11EFBC6F11EFBC6F11EFBC6F11EFBC6F11EFBC6F
            11EFBC6F11EFBC6F11EFBC6F11EFBC6F11EFBC6F11EFB66220E0}
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = True
        end
        object cxButton3: TcxButton
          Left = 354
          Top = 117
          Width = 104
          Height = 25
          Cursor = crHandPoint
          Action = aDelete
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000C68D95E0CFAE
            AEEFCFAEAEEFCFAEAEEFCFAEAEEFCFAEAEEFCFAEAEEFCFAEAEEFCFAEAEEFD5B5
            BAEFA69FD1EF9097DFF5A9A0CFEFD5B3B8EFCFAEAEEFC68E96E0DAB4B1EFF4F4
            F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F4F4FFCBD2F0FF3651
            E1FF1A38DCFF1A3BDCFF1A37DCFF3B54E1FFCFD4EEFFDAB6B3EFDDB8B2EFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2FAFF3548DFFF7285
            E8FF7085DBFF1651DFFF7994EAFF6977D8FF3C4CE0FFD6B1B2EFDDB6AEEFEBE8
            E3FFE0DCD6FFE0DCD6FFE0DCD6FFE0DCD6FFF3F2EFFFABAFEDFF2743DEFF829D
            EDFFFCFDFEFFABBDEAFFFDFDFEFF7893EAFF2840DEFFA791C4EFDDB5AAEFDFDA
            D3FFCEC7BDFFCEC7BDFFCEC7BDFFCEC7BDFFECEAE6FF8F95E5FF445CE2FF2440
            DEFFB8C2F3FFFFFFFFFFACB5E9FF243EDDFF445AE2FF9289D2F5DCB4A5EFDAD4
            CDFFC7BFB4FFC7BFB4FFC7BFB4FFC7BFB4FFEAE7E2FFA7ABE6FF4750D6FF9498
            E9FFFDFDFEFFC5C7F3FFFCFDFEFF8387D9FF4750D6FFA48DBDEFDCB2A3EFD4CF
            C6FFBFB6AAFFBFB6AAFFBFB6AAFFBFB6AAFFE7E3DFFFECEDF5FF494FC8FF9599
            E1FF9397E3FF4A50D4FF9CA0E6FF8C90DDFF4F55C9FFCFAAA1EFDCB19EEFD0CA
            C1FFB9AFA1FFB9AFA1FFB9AFA1FFB9AFA1FFE4E1DBFFFDFDFDFFC2C3E2FF494F
            C1FF474DC3FF4950C5FF474DC3FF4D53C2FFC9CBE5FFDCB3A2EFDBB198EFCBC5
            BBFFB1A798FFB1A798FFB1A798FFB1A798FFE2DED8FFFFFFFFFFF6F6F6FFE4E4
            EBFFA4A7D8FF8A8ECEFFA6A9D8FFD0CDCDFFEEECEAFFDCB39EEFDBB093EFC7C1
            B6FFABA191FFABA191FFABA191FFABA191FFDFDBD5FFFFFFFFFFF3F3F4FFF2F2
            F2FFF2F2F2FFF5F5F6FFFFFFFFFFD2CDC5FFECEAE7FFDCB297EFDAAF88EFC4BD
            B2FFA69B8BFFA69B8BFFA69B8BFFA69B8BFFDDD9D3FFFFFFFFFFF3F3F4FFF2F2
            F2FFF2F2F2FFF5F5F6FFFFFFFFFFDDD9D3FFF1EFEDFFDBB18EEFD9AE83EFC4BD
            B2FFA69C8BFFA69C8BFFA69C8BFFA69C8BFFDDD9D3FFFFFFFFFFF7F7F7FFF6F6
            F6FFF6F6F6FFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFDBB089EFD9AD83EFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAB089EFCDA178EFE5E6
            E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6
            E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFCDA27DEFBF781FEFC78E
            20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E
            20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E20FFBF7820EFB66220E0BC6F
            11EFBC6F11EFBC6F11EFBC6F11EFBC6F11EFBC6F11EFBC6F11EFBC6F11EFBC6F
            11EFBC6F11EFBC6F11EFBC6F11EFBC6F11EFBC6F11EFB66220E0}
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = True
        end
        object cu_f_usd: TcxCurrencyEdit
          Left = 567
          Top = 43
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.DecimalPlaces = 4
          Properties.DisplayFormat = ',0.0000'#39#39';-,0.0000'#39#39
          Properties.Nullable = False
          Properties.NullString = '0'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Arial'
          Style.Font.Pitch = fpFixed
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 11
          Width = 50
        end
        object cu_f_eur: TcxCurrencyEdit
          Left = 644
          Top = 43
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.DecimalPlaces = 4
          Properties.DisplayFormat = ',0.0000'#39#39';-,0.0000'#39#39
          Properties.Nullable = False
          Properties.NullString = '0'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Arial'
          Style.Font.Pitch = fpFixed
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 12
          Width = 50
        end
        object cu_f_usdeur: TcxCurrencyEdit
          Left = 567
          Top = 67
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.DecimalPlaces = 4
          Properties.DisplayFormat = ',0.0000'#39#39';-,0.0000'#39#39
          Properties.Nullable = False
          Properties.NullString = '0'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Arial'
          Style.Font.Pitch = fpFixed
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 13
          Width = 50
        end
        object cu_f_eurusd: TcxCurrencyEdit
          Left = 644
          Top = 67
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.DecimalPlaces = 4
          Properties.DisplayFormat = ',0.0000'#39#39';-,0.0000'#39#39
          Properties.Nullable = False
          Properties.NullString = '0'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Arial'
          Style.Font.Pitch = fpFixed
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 14
          Width = 50
        end
        object cu_discount: TcxCurrencyEdit
          Left = 137
          Top = 69
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
          Properties.Nullable = False
          Properties.NullString = '0'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Arial'
          Style.Font.Pitch = fpFixed
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 15
          Width = 65
        end
        object cu_discount_proc: TcxCurrencyEdit
          Left = 228
          Top = 69
          EditValue = 0.000000000000000000
          ParentFont = False
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
          Properties.Nullable = False
          Properties.NullString = '0'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Arial'
          Style.Font.Pitch = fpFixed
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = True
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 16
          Width = 65
        end
        object de_date_in: TcxDBDateEdit
          Left = 315
          Top = 21
          DataBinding.DataField = 'DDATE_IN'
          DataBinding.DataSource = DM.Q_CASH_S_DS
          Properties.DateOnError = deToday
          Properties.ImmediatePost = True
          Properties.Kind = ckDateTime
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 9
          Width = 143
        end
        object cu_in_rub: TcxDBCurrencyEdit
          Left = 43
          Top = 21
          DataBinding.DataField = 'IN_RUB'
          DataBinding.DataSource = DM.Q_CASH_S_DS
          Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
          Properties.Nullable = False
          Properties.NullString = '0'
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = True
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 65
        end
        object cu_out_rub: TcxDBCurrencyEdit
          Left = 43
          Top = 45
          DataBinding.DataField = 'OUT_RUB'
          DataBinding.DataSource = DM.Q_CASH_S_DS
          Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
          Properties.Nullable = False
          Properties.NullString = '0'
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = True
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          Width = 65
        end
        object cu_in_usd: TcxDBCurrencyEdit
          Left = 137
          Top = 21
          DataBinding.DataField = 'IN_USD'
          DataBinding.DataSource = DM.Q_CASH_S_DS
          Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
          Properties.Nullable = False
          Properties.NullString = '0'
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = True
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 65
        end
        object cu_out_usd: TcxDBCurrencyEdit
          Left = 137
          Top = 45
          DataBinding.DataField = 'OUT_USD'
          DataBinding.DataSource = DM.Q_CASH_S_DS
          Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
          Properties.Nullable = False
          Properties.NullString = '0'
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = True
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 65
        end
        object cu_in_eu: TcxDBCurrencyEdit
          Left = 228
          Top = 21
          DataBinding.DataField = 'IN_EU'
          DataBinding.DataSource = DM.Q_CASH_S_DS
          Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
          Properties.Nullable = False
          Properties.NullString = '0'
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = True
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Width = 65
        end
        object cu_out_eu: TcxDBCurrencyEdit
          Left = 228
          Top = 45
          DataBinding.DataField = 'OUT_EU'
          DataBinding.DataSource = DM.Q_CASH_S_DS
          Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
          Properties.Nullable = False
          Properties.NullString = '0'
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = True
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 8
          Width = 65
        end
        object cu_summ: TcxDBCurrencyEdit
          Left = 358
          Top = 45
          DataBinding.DataField = 'SUMM'
          DataBinding.DataSource = DM.Q_CASH_S_DS
          Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
          Properties.Nullable = False
          Properties.NullString = '0'
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = True
          Style.Shadow = False
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 10
          Width = 100
        end
        object cu_debet: TcxCurrencyEdit
          Left = 358
          Top = 69
          ParentFont = False
          Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
          Properties.Nullable = False
          Properties.NullString = '0'
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Arial'
          Style.Font.Pitch = fpFixed
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = True
          Style.TextColor = clPurple
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 17
          Width = 100
        end
        object cxInfoEdit: TcxTextEdit
          Left = 137
          Top = 93
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 18
          Text = 'cxInfoEdit'
          Width = 321
        end
      end
      object Panel11: TPanel
        Left = 4
        Top = 404
        Width = 713
        Height = 4
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitTop = 426
      end
      object gr_deps: TcxGrid
        Left = 4
        Top = 4
        Width = 713
        Height = 400
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = True
        ExplicitHeight = 422
        object gr_deps_v: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = DM.Q_CLIENT_DEBT_DS
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.AutoDataSetFilter = True
          DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              Column = gr_deps_vNICK
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1072
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnMoving = False
          OptionsData.Deleting = False
          OptionsData.Inserting = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          Styles.Inactive = st_notactive
          Styles.Selection = st_notactive
          object gr_deps_vNICK: TcxGridDBColumn
            Caption = #1050#1086#1076
            DataBinding.FieldName = 'NICK'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 60
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 60
          end
          object gr_deps_vR_DDATE: TcxGridDBColumn
            Caption = #1044#1072#1090#1072' '#1086#1087#1077#1088#1072#1094#1080#1080
            DataBinding.FieldName = 'R_DDATE'
            OnGetDisplayText = gr_deps_vR_DDATEGetDisplayText
            MinWidth = 100
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 100
          end
          object gr_deps_vD_DATE: TcxGridDBColumn
            Caption = #1044#1072#1090#1072' '#1074#1074#1086#1076#1072
            DataBinding.FieldName = 'D_DATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.DateOnError = deToday
            Properties.ImmediatePost = True
            Properties.Kind = ckDateTime
            Properties.ReadOnly = False
            OnGetDisplayText = gr_deps_vD_DATEGetDisplayText
            MinWidth = 100
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 100
          end
          object gr_deps_vT_SHORT: TcxGridDBColumn
            Caption = #1054#1087#1077#1088#1072#1094#1080#1103
            DataBinding.FieldName = 'T_SHORT'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 60
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 60
          end
          object gr_deps_vINVOICE: TcxGridDBColumn
            Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103
            DataBinding.FieldName = 'INVOICE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 70
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 70
          end
          object gr_deps_vSUMM: TcxGridDBColumn
            Caption = #1057#1091#1084#1084#1072
            DataBinding.FieldName = 'SUMM'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
            HeaderAlignmentHorz = taCenter
            MinWidth = 70
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Moving = False
          end
          object gr_deps_vIN_RUB: TcxGridDBColumn
            Caption = #1054#1087#1083#1072#1090#1072
            DataBinding.FieldName = 'IN_RUB'
            HeaderAlignmentHorz = taCenter
            MinWidth = 70
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Moving = False
          end
          object gr_deps_vRATE: TcxGridDBColumn
            Caption = #1050#1091#1088#1089
            DataBinding.FieldName = 'RATE'
            HeaderAlignmentHorz = taCenter
            MinWidth = 50
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 50
          end
          object gr_deps_vDISCOUNT: TcxGridDBColumn
            Caption = #1057#1082#1080#1076#1082#1072', '#1088#1091#1073
            DataBinding.FieldName = 'DISCOUNT'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 70
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 70
          end
          object gr_deps_vDISC_PROC: TcxGridDBColumn
            Caption = '%'
            DataBinding.FieldName = 'DISC_PROC'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ImmediatePost = True
            Properties.MaxValue = 100.000000000000000000
            Properties.MinValue = -100.000000000000000000
            Properties.SpinButtons.Visible = False
            Properties.UseCtrlIncrement = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 50
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 50
          end
          object gr_deps_vCHART: TcxGridDBColumn
            Caption = #1044#1086#1083#1075
            DataBinding.FieldName = 'CHART'
            HeaderAlignmentHorz = taCenter
            MinWidth = 70
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 70
          end
          object gr_deps_vINFO: TcxGridDBColumn
            Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
            DataBinding.FieldName = 'INFO'
            PropertiesClassName = 'TcxTextEditProperties'
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.Moving = False
            Width = 300
          end
          object _gr_deps_vNN: TcxGridDBColumn
            DataBinding.FieldName = 'NN'
            Visible = False
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
          end
          object _gr_deps_vID_CLIENT_DEBT: TcxGridDBColumn
            DataBinding.FieldName = 'ID_CLIENT_DEBT'
            Visible = False
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
          end
          object _gr_deps_vID_DEBETORS: TcxGridDBColumn
            DataBinding.FieldName = 'ID_DEBETORS'
            Visible = False
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
          end
          object _gr_deps_vOPERATION: TcxGridDBColumn
            DataBinding.FieldName = 'OPERATION'
            Visible = False
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
          end
          object _gr_deps_vT_LONG: TcxGridDBColumn
            DataBinding.FieldName = 'T_LONG'
            Visible = False
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
          end
          object _gr_deps_vT_TYPE: TcxGridDBColumn
            DataBinding.FieldName = 'T_TYPE'
            Visible = False
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
          end
          object _gr_deps_vACTIVE: TcxGridDBColumn
            DataBinding.FieldName = 'ACTIVE'
            Visible = False
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
          end
          object _gr_deps_vDEBET: TcxGridDBColumn
            DataBinding.FieldName = 'DEBET'
            Visible = False
            MinWidth = 50
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 50
          end
        end
        object gr_deps_l: TcxGridLevel
          GridView = gr_deps_v
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 593
    Width = 978
    Height = 34
    Align = alBottom
    Color = clSkyBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object Panel13: TPanel
      Left = 792
      Top = 1
      Width = 185
      Height = 32
      Align = alRight
      BevelOuter = bvNone
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 0
      object btnClose: TcxButton
        Left = 37
        Top = 3
        Width = 145
        Height = 25
        Cursor = crHandPoint
        Cancel = True
        Caption = #1047#1072#1082#1088#1099#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btnCloseClick
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
    end
  end
  object ActionList1: TActionList
    Images = cxImageList1
    Left = 48
    Top = 554
    object aRefresh: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' (F5)'
      ImageIndex = 0
      ShortCut = 116
      OnExecute = aRefreshExecute
    end
    object aNew: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' (F1)'
      ImageIndex = 2
      ShortCut = 112
      OnExecute = aNewExecute
    end
    object aEdit: TAction
      Caption = #1055#1077#1088#1077#1089#1090#1072#1074#1080#1090#1100' (F2)'
      ImageIndex = 1
      ShortCut = 113
      OnExecute = aEditExecute
    end
    object aDelete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' (F3)'
      ImageIndex = 3
      ShortCut = 114
      OnExecute = aDeleteExecute
    end
    object aPost: TAction
      Caption = 'aPost'
      ShortCut = 16397
      OnExecute = aPostExecute
    end
  end
  object cxImageList1: TcxImageList
    ShareImages = True
    Left = 16
    Top = 552
    Bitmap = {
      494C010104000900240010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
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
      00000000000000000000000000000101010A0101010900000000000000000000
      000000000000000000000000000000000000A78D76E0BFAE9EEFBFAE9EEFBFAE
      9EEFBFAE9EEFBFAE9EEFBFAE9EEFBFAE9EEFBFAE9EEFBFAE9EEFBFAE9EEFBFAE
      9EEFBFAE9EEFBFAE9EEFBFAE9EEFA78E77E0A78D76E0BFAE9EEFBFAE9EEFBFAE
      9EEFBFAE9EEFBFAE9EEFBFAE9EEFBFAE9EEFBFAE9EEFC7B9A8EFABC2AEEF9ECD
      B4F5ADC1ADEFC6B6A6EFBFAE9EEFA78E77E0A78D76E0BFAE9EEFBFAE9EEFBFAE
      9EEFBFAE9EEFBFAE9EEFBFAE9EEFBFAE9EEFBFAE9EEFC5B5AAEF969FC1EF8697
      D5F599A0BFEFC5B3A8EFBFAE9EEFA78E77E00000000000000000000000000000
      00000101012A1F12079C8F5817E6D88C20FED88C20FE885316E31A1006960101
      012400000000000000000000000000000000CAB4A1EFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFE4E5E6FFE1E2E3FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFCBB6A3EFCAB4A1EFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F4F4FFD6EBE0FF53CB96FF2EC387FF55CD
      9AFF2DC081FF58CC98FFD8E9DFFFCAB6A3EFCAB4A1EFF4F4F4FFF4F4F4FFF4F4
      F4FFF4F4F4FFF4F4F4FFF4F4F4FFF3F4F4FFCBD2F0FF3651E1FF1A38DCFF1A3B
      DCFF1A37DCFF3B54E1FFCFD4EEFFCAB6A3EF0000000000000000000000000B07
      0377CB801DFAE9A31DFFF0AF1BFFF3B31AFFF3B31AFFF0AE1BFFE8A21DFFC179
      1DF70805036A000000000000000000000000CDB8A2EFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF5F5F6FFA4C0DEFFA8C7F1FFFCFDFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCEBAA4EFCDB8A2EFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F8F5FF4AC68BFF25C183FF4ACB98FFFFFF
      FFFF44BF7AFF25C183FF52C78CFFC6B5A0EFCDB8A2EFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2FAFF3548DFFF7285E8FF7085DBFF1651
      DFFF7994EAFF6977D8FF3C4CE0FFC6B1A2EF00000000000000000C07037ADE8D
      21FFEFA71DFFD8B544FFA5C99FFF90D1C7FF92CFBFFFAAC389FFE4B231FFEEA6
      1DFFD98A21FE0805036A0000000000000000CDB69EEFEBE8E3FFE0DCD6FFE0DC
      D6FFE0DCD6FFE0DCD6FFF3F2EFFFBBD3F2FF89B6EDFF9BBEEFFFF4F5F6FFF9F9
      F9FFFFFFFFFFFFFFFFFFFFFFFFFFCDB9A2EFCDB69EEFEBE8E3FFE0DCD6FFE0DC
      D6FFE0DCD6FFE0DCD6FFF3F2EFFFB5E1C3FF39C68DFF40C892FF6BD4A9FFFFFF
      FFFF62C88CFF40C892FF39C487FF9FB594EFCDB69EEFEBE8E3FFE0DCD6FFE0DC
      D6FFE0DCD6FFE0DCD6FFF3F2EFFFABAFEDFF2743DEFF829DEDFFFCFDFEFFABBD
      EAFFFDFDFEFF7893EAFF2840DEFF9791B4EF0000000001010130CC7920FBED9F
      20FFC1B86DFF81D7E9FF90D4D7FF85D8E8FF8FE0F6FF8DDFF6FF77D2E4FFD0B0
      4FFFEA9E23FFBC6F22F70101012400000000CDB59AEFDFDAD3FFCEC7BDFFCEC7
      BDFFCEC7BDFFCEC7BDFFECEAE6FFFFFFFFFFADC9EDFF89B6EDFF9ABEEEFFF7F7
      F8FFFFFFFFFFF4F3F0FFFAFAF9FFCDB89EEFCDB59AEFDFDAD3FFCEC7BDFFCEC7
      BDFFCEC7BDFFCEC7BDFFECEAE6FF98D6ABFF7EDBB5FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF73CD92FF90BE95F5CDB59AEFDFDAD3FFCEC7BDFFCEC7
      BDFFCEC7BDFFCEC7BDFFECEAE6FF8F95E5FF445CE2FF2440DEFFB8C2F3FFFFFF
      FFFFACB5E9FF243EDDFF445AE2FF8889C8F500000000261409A6E48C24FFF39E
      26FFD4AB57FFFBA932FFFFAB31FFFBAC36FFBABB84FF78D7F1FF60D1F2FF60C5
      D5FF6BBFC0FFE18B26FF1A0E069600000000CCB495EFDAD4CDFFC7BFB4FFC7BF
      B4FFC7BFB4FFC7BFB4FFEAE7E2FFFFFFFFFFF0F0F0FFA6C2E8FF89B6EDFF9BBD
      EEFFFDFDFEFFE5E2DCFFF4F3F1FFCDB79AEFCCB495EFDAD4CDFFC7BFB4FFC7BF
      B4FFC7BFB4FFC7BFB4FFEAE7E2FFAFD9AFFF5FBE70FF7AC986FF94D4A1FFFFFF
      FFFF87CA88FF79C884FF5CBB69FF99AF81EFCCB495EFDAD4CDFFC7BFB4FFC7BF
      B4FFC7BFB4FFC7BFB4FFEAE7E2FFA7ABE6FF4750D6FF9498E9FFFDFDFEFFC5C7
      F3FFFCFDFEFF8387D9FF4750D6FF948DADEF01010102A55721F0EB8C26FFEC9B
      34FFFE9D30FFFFA236FFFFA438FFFFA439FFFFA439FFB0B588FF4ACBF0FF42C9
      F0FF5EC0D0FFE98B26FF82441AE300000000CCB293EFD4CFC6FFBFB6AAFFBFB6
      AAFFBFB6AAFFBFB6AAFFE7E3DFFFFFFFFFFFF7F7F7FFF6F6F6FFA8C5ECFF89B6
      EDFF9FC1F1FFDFDBD6FFF2F0EEFFCDB596EFCCB293EFD4CFC6FFBFB6AAFFBFB6
      AAFFBFB6AAFFBFB6AAFFE7E3DFFFEEF3ECFF5DA938FF5DB14BFF79C377FFFFFF
      FFFF6BB75CFF5DB048FF63AB3EFFBFAD8CEFCCB293EFD4CFC6FFBFB6AAFFBFB6
      AAFFBFB6AAFFBFB6AAFFE7E3DFFFECEDF5FF494FC8FF9599E1FF9397E3FF4A50
      D4FF9CA0E6FF8C90DDFF4F55C9FFBFAA91EF01010119D57530FFED872BFF60C8
      AEFF41D8CDFFAEB67AFFFC9D40FFFF9C3EFFF49F48FF6AC0CCFF42C9F0FF42C9
      F0FF77B6B5FFEC872BFFCF6F31FE01010109CCB18EEFD0CAC1FFB9AFA1FFB9AF
      A1FFB9AFA1FFB9AFA1FFE4E1DBFFFFFFFFFFF0F0F0FFEEEEEEFFEEEEEEFFA3C1
      E9FF89B6EDFF8EAAD0FFF0EEEBFFCCB493EFCCB18EEFD0CAC1FFB9AFA1FFB9AF
      A1FFB9AFA1FFB9AFA1FFE4E1DBFFFDFDFDFFC7DABEFF5EA334FF63A83AFF87BC
      67FF60A534FF62A438FFCEDEC6FFCCB392EFCCB18EEFD0CAC1FFB9AFA1FFB9AF
      A1FFB9AFA1FFB9AFA1FFE4E1DBFFFDFDFDFFC2C3E2FF494FC1FF474DC3FF4950
      C5FF474DC3FF4D53C2FFC9CBE5FFCCB392EF0101011AD47337FFEE8A3DFF3ED6
      CFFF03EDFFFF04EDFFFF46D7CFFFF5974AFFFF9443FFF7964AFFB1A787FF60C0
      D4FF8EAFA2FFED8A3EFFCF6E37FE0101010ACBB188EFCBC5BBFFB1A798FFB1A7
      98FFB1A798FFB1A798FFE2DED8FFFFFFFFFFF7F7F7FFF6F6F6FFF6F6F6FFF8F8
      F9FFADC9ECFFCBCAC7FFCAC6C8FFCCB38EEFCBB188EFCBC5BBFFB1A798FFB1A7
      98FFB1A798FFB1A798FFE2DED8FFFFFFFFFFF6F6F6FFE5E9E4FFADCB9CFF97BD
      81FFAFCB9EFFD1D1C7FFEEECEAFFCCB38EEFCBB188EFCBC5BBFFB1A798FFB1A7
      98FFB1A798FFB1A798FFE2DED8FFFFFFFFFFF6F6F6FFE4E4EBFFA4A7D8FF8A8E
      CEFFA6A9D8FFD0CDCDFFEEECEAFFCCB38EEF01010102AB5630F3EA8547FF1BE3
      ECFF04EDFFFF14EEFFFFAABA94FFFF9F5FFFFF9F5FFFFFA060FFFFA161FFFE9C
      5CFFE9955DFFE98548FF8A4527E600000000CBB083EFC7C1B6FFABA191FFABA1
      91FFABA191FFABA191FFDFDBD5FFFFFFFFFFF3F3F4FFF2F2F2FFF2F2F2FFF5F5
      F6FFFEFEFEFFC6C2C7FF4247B2FFC2AA85EFCBB083EFC7C1B6FFABA191FFABA1
      91FFABA191FFABA191FFDFDBD5FFFFFFFFFFF3F3F4FFF2F2F2FFF2F2F2FFF5F5
      F6FFFFFFFFFFD2CDC5FFECEAE7FFCCB287EFCBB083EFC7C1B6FFABA191FFABA1
      91FFABA191FFABA191FFDFDBD5FFFFFFFFFFF3F3F4FFF2F2F2FFF2F2F2FFF5F5
      F6FFFFFFFFFFD2CDC5FFECEAE7FFCCB287EF000000002B140DACD88357FF30DB
      E0FF26E6F2FF35F0FFFF56EFF8FFB9BF9FFFFEA776FFFFA574FFFDA06EFFD0A7
      7FFFF28D5AFFE18151FF1E0E0A9C00000000CAAF78EFC4BDB2FFA69B8BFFA69B
      8BFFA69B8BFFA69B8BFFDDD9D3FFFFFFFFFFF3F3F4FFF2F2F2FFF2F2F2FFF5F5
      F6FFFFFFFFFFDCD9D3FFE6E5EBFFCBB17EEFCAAF78EFC4BDB2FFA69B8BFFA69B
      8BFFA69B8BFFA69B8BFFDDD9D3FFFFFFFFFFF3F3F4FFF2F2F2FFF2F2F2FFF5F5
      F6FFFFFFFFFFDDD9D3FFF1EFEDFFCBB17EEFCAAF78EFC4BDB2FFA69B8BFFA69B
      8BFFA69B8BFFA69B8BFFDDD9D3FFFFFFFFFFF3F3F4FFF2F2F2FFF2F2F2FFF5F5
      F6FFFFFFFFFFDDD9D3FFF1EFEDFFCBB17EEF0000000002010137CA7251FDE689
      64FFAFAD95FF51EFFAFF7DF5FFFF89F6FFFF81EBEEFF89E3E2FF76ECF2FFB1B3
      9EFFE98762FFC36848FA0101012A00000000C9AE73EFC4BDB2FFA69C8BFFA69C
      8BFFA69C8BFFA69C8BFFDDD9D3FFFFFFFFFFF7F7F7FFF6F6F6FFF6F6F6FFF9F9
      F9FFFFFFFFFFFFFFFFFFFFFFFFFFCBB079EFC9AE73EFC4BDB2FFA69C8BFFA69C
      8BFFA69C8BFFA69C8BFFDDD9D3FFFFFFFFFFF7F7F7FFF6F6F6FFF6F6F6FFF9F9
      F9FFFFFFFFFFFFFFFFFFFFFFFFFFCBB079EFC9AE73EFC4BDB2FFA69C8BFFA69C
      8BFFA69C8BFFA69C8BFFDDD9D3FFFFFFFFFFF7F7F7FFF6F6F6FFF6F6F6FFF9F9
      F9FFFFFFFFFFFFFFFFFFFFFFFFFFCBB079EF000000000000000010080686DB80
      65FFEB8D71FFD0A48EFF96D2CEFF88E8ECFF88EAEEFF9CD8D6FFCDAA96FFEA8E
      73FFDA8064FF0A0504760000000000000000C9AD73EFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCAB079EFC9AD73EFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCAB079EFC9AD73EFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFCAB079EF0000000000000000010101011008
      0686D27C68FDE89885FFEFA592FFF3AC9AFFF3AD9BFFEFA795FFE89B88FFCB78
      64FB0B060579000000000000000000000000BDA168EFE5E6E6FFE5E6E6FFE5E6
      E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6
      E6FFE5E6E6FFE5E6E6FFE5E6E6FFBDA26DEFBDA168EFE5E6E6FFE5E6E6FFE5E6
      E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6
      E6FFE5E6E6FFE5E6E6FFE5E6E6FFBDA26DEFBDA168EFE5E6E6FFE5E6E6FFE5E6
      E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6
      E6FFE5E6E6FFE5E6E6FFE5E6E6FFBDA26DEF0000000000000000000000000000
      0000020101372B1612ACB36F61F3E09A8DFFE09B8DFFA9695DF0261410A60101
      012F00000000000000000000000000000000AF780FEFC78E20FFC78E20FFC78E
      20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E
      20FFC78E20FFC78E20FFC78E20FFAF7810EFAF780FEFC78E20FFC78E20FFC78E
      20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E
      20FFC78E20FFC78E20FFC78E20FFAF7810EFAF780FEFC78E20FFC78E20FFC78E
      20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E20FFC78E
      20FFC78E20FFC78E20FFC78E20FFAF7810EF0000000000000000000000000000
      00000000000000000000010101020101011A0101011901010102000000000000
      000000000000000000000000000000000000976201E0AC6F01EFAC6F01EFAC6F
      01EFAC6F01EFAC6F01EFAC6F01EFAC6F01EFAC6F01EFAC6F01EFAC6F01EFAC6F
      01EFAC6F01EFAC6F01EFAC6F01EF976201E0976201E0AC6F01EFAC6F01EFAC6F
      01EFAC6F01EFAC6F01EFAC6F01EFAC6F01EFAC6F01EFAC6F01EFAC6F01EFAC6F
      01EFAC6F01EFAC6F01EFAC6F01EF976201E0976201E0AC6F01EFAC6F01EFAC6F
      01EFAC6F01EFAC6F01EFAC6F01EFAC6F01EFAC6F01EFAC6F01EFAC6F01EFAC6F
      01EFAC6F01EFAC6F01EFAC6F01EF976201E0424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FE7F000000000000F00F000000000000
      E007000000000000C00300000000000080010000000000008001000000000000
      0001000000000000000000000000000000000000000000000001000000000000
      80010000000000008001000000000000C003000000000000C007000000000000
      F00F000000000000FC3F00000000000000000000000000000000000000000000
      000000000000}
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object st_notactive: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      TextColor = clNavy
    end
    object st_kass: TcxStyle
      AssignedValues = [svColor]
      Color = 8978431
    end
  end
end
