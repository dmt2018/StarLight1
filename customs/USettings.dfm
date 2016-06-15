object frmSetings: TfrmSetings
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 570
  ClientWidth = 694
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 694
    Height = 529
    Align = alClient
    TabOrder = 1
    object pc_settings: TcxPageControl
      Left = 1
      Top = 1
      Width = 692
      Height = 527
      ActivePage = tsh_personal
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 527
      ClientRectRight = 692
      ClientRectTop = 25
      object tsh_personal: TcxTabSheet
        Caption = ' '#1055#1077#1088#1089#1086#1085#1072#1083#1100#1085#1099#1077' '#1085#1072#1089#1090#1088#1086#1081#1082#1080' '
        ImageIndex = 0
        object Label3: TLabel
          Left = 11
          Top = 17
          Width = 147
          Height = 14
          Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 11
          Top = 109
          Width = 63
          Height = 14
          Caption = #1042#1077#1089' '#1090#1077#1083#1077#1075#1080
        end
        object Label20: TLabel
          Left = 11
          Top = 137
          Width = 71
          Height = 14
          Caption = #1042#1077#1089' '#1087#1072#1076#1076#1086#1085#1072
        end
        object icb_suplier: TcxImageComboBox
          Left = 176
          Top = 14
          Cursor = crHandPoint
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <>
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 250
        end
        object BitBtn1: TBitBtn
          Left = 11
          Top = 376
          Width = 241
          Height = 25
          Caption = #1047#1072#1082#1080#1085#1077#1084' '#1050#1086#1074#1072#1083#1077#1074#1089#1082#1080#1077' '#1092#1080#1090#1086' '#1085#1072#1079#1074#1072#1085#1080#1103
          TabOrder = 1
          Visible = False
          OnClick = BitBtn1Click
        end
        object chb_country: TcxCheckBox
          Left = 8
          Top = 50
          Caption = ' '#1087#1077#1088#1077#1074#1086#1076' '#1074#1089#1077#1093' '#1089#1090#1088#1072#1085' '#1082#1072#1082' '#1043#1054#1051#1051#1040#1053#1044#1048#1071
          Properties.DisplayChecked = #1076#1072
          Properties.DisplayUnchecked = #1085#1077#1090
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          State = cbsGrayed
          TabOrder = 2
          Width = 241
        end
        object chb_roses: TcxCheckBox
          Left = 8
          Top = 78
          Caption = ' '#1056#1072#1079#1073#1080#1074#1072#1090#1100' '#1088#1086#1079#1091' '#1074' '#1089#1088#1077#1079#1082#1077' '#1085#1072' DUTCH '#1080' ECUADOR'
          Properties.DisplayChecked = #1076#1072
          Properties.DisplayUnchecked = #1085#1077#1090
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          State = cbsGrayed
          TabOrder = 3
          Width = 297
        end
        object edWeightTelega: TcxCurrencyEdit
          Left = 176
          Top = 106
          EditValue = 0.000000000000000000
          Properties.AssignedValues.MinValue = True
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0'#39#39';-,0'#39#39
          Properties.MaxLength = 4
          Properties.Nullable = False
          Properties.NullString = '0'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          Width = 54
        end
        object edWeightPaddon: TcxCurrencyEdit
          Left = 176
          Top = 134
          EditValue = 0.000000000000000000
          Properties.AssignedValues.MinValue = True
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0'#39#39';-,0'#39
          Properties.MaxLength = 4
          Properties.Nullable = False
          Properties.NullString = '0'
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 54
        end
      end
      object tsh_cargo: TcxTabSheet
        Tag = 1
        Caption = ' '#1057#1077#1090#1082#1072' '#1074#1077#1089#1086#1074' '
        ImageIndex = 2
        object gr_weight: TcxGrid
          Left = 0
          Top = 205
          Width = 692
          Height = 182
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object gr_weight_v: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            FilterBox.Position = fpTop
            OnCustomDrawCell = gr_weight_vCustomDrawCell
            DataController.DataSource = DM.DS_WEIGHTS
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.AutoDataSetFilter = True
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skCount
                Column = weight_NAME_CAT
              end>
            DataController.Summary.SummaryGroups = <>
            FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1086#1074
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnSorting = False
            OptionsView.CellEndEllipsis = True
            OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 25
            object weight_button: TcxGridDBColumn
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
                end>
              Properties.ViewStyle = vsButtonsOnly
              Properties.OnButtonClick = weight_buttonPropertiesButtonClick
              MinWidth = 30
              Options.Filtering = False
              Options.ShowEditButtons = isebAlways
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 30
            end
            object weight_NAME_CAT: TcxGridDBColumn
              Caption = #1043#1088#1091#1087#1087#1072' ('#1083#1072#1090'.)'
              DataBinding.FieldName = 'NAME_CAT'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Width = 120
            end
            object weight_NAME_CAT_RU: TcxGridDBColumn
              Caption = #1055#1077#1088#1077#1074#1086#1076
              DataBinding.FieldName = 'NAME_CAT_RU'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Width = 120
            end
            object gr_weight_vMAKE_INFO: TcxGridDBColumn
              Caption = #1055#1086#1103#1089#1085#1077#1085#1080#1077
              DataBinding.FieldName = 'MAKE_INFO'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.DisplayChecked = #1076#1072
              Properties.DisplayUnchecked = #1085#1077#1090
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              MinWidth = 75
              Options.Filtering = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 75
            end
            object weight_STEM_WEIGHT: TcxGridDBColumn
              Caption = #1042#1077#1089
              DataBinding.FieldName = 'STEM_WEIGHT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.AssignedValues.MinValue = True
              Properties.DecimalPlaces = 4
              Properties.DisplayFormat = ',0.0000'#39#39';-,0.0000'#39#39
              Properties.MaxLength = 10
              Properties.Nullable = False
              Properties.NullString = '0'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              MinWidth = 65
              Options.Filtering = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 65
            end
            object weight_CUST_REGN: TcxGridDBColumn
              Caption = #1058#1072#1084#1086#1078#1077#1085#1085#1099#1081' '#1082#1086#1076
              DataBinding.FieldName = 'CUST_REGN'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              MinWidth = 110
              Options.Filtering = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 110
            end
            object weight_ORDERBY: TcxGridDBColumn
              Caption = #1057#1086#1088#1090'.'
              DataBinding.FieldName = 'ORDERBY'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DecimalPlaces = 0
              Properties.DisplayFormat = ',0'#39#39';-,0'#39#39
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              MinWidth = 40
              Options.Filtering = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 40
            end
            object weight_ID_DEP: TcxGridDBColumn
              DataBinding.FieldName = 'ID_DEP'
              Visible = False
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
            end
            object weight_ID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
            end
            object gr_weight_vWEIGHT_PACK: TcxGridDBColumn
              Caption = #1042#1077#1089' '#1082#1086#1088'.'
              DataBinding.FieldName = 'WEIGHT_PACK'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.AssignedValues.MinValue = True
              Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
              Properties.MaxLength = 4
              Properties.Nullable = False
              Properties.NullString = '0'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              MinWidth = 70
              Options.Filtering = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 70
            end
            object gr_weight_vWEIGHT_TANK: TcxGridDBColumn
              Caption = #1042#1077#1089' '#1073#1072#1082
              DataBinding.FieldName = 'WEIGHT_TANK'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.AssignedValues.MinValue = True
              Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
              Properties.MaxLength = 4
              Properties.Nullable = False
              Properties.NullString = '0'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              MinWidth = 70
              Options.Filtering = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 70
            end
          end
          object gr_weight_l: TcxGridLevel
            GridView = gr_weight_v
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 692
          Height = 205
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 2
          TabOrder = 2
          object gbNewCategory: TcxGroupBox
            Left = 9
            Top = 6
            Caption = ' 1. '#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1085#1086#1074#1086#1081' '#1082#1072#1090#1077#1075#1086#1088#1080#1080' '
            TabOrder = 0
            Height = 190
            Width = 360
            object Label10: TLabel
              Left = 10
              Top = 27
              Width = 76
              Height = 14
              Caption = #1043#1088#1091#1087#1087#1072' ('#1083#1072#1090'.)'
            end
            object Image8: TImage
              Left = 103
              Top = 27
              Width = 16
              Height = 16
              AutoSize = True
              Picture.Data = {
                07544269746D617036040000424D360400000000000036000000280000001000
                0000100000000100200000000000000400000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000C0C0C0FFC0C0C0FFBFBFBF84000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000000000C0C0
                C0FFD8D8D8FFD8D8D8FFC0C0C0FFBFBFBF840000000000000000000000000000
                0000000000000000000000000000000000000000000000000000C0C0C0FFD8D8
                D8FFF3F3F3FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF8400000000000000000000
                00000000000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3
                F3FFFDFDFDFF5374F7FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF84000000000000
                000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFD
                FDFF526BF8FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF840000
                0000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526B
                F8FF5967FAFF606AF9FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBF
                BF840000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF4D64F7FF5967
                FAFF606AF9FF606AF9FF606AF9FF5967FAFF5073F6FFF3F3F3FFD8D8D8FFC0C0
                C0FF00000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526BF8FF5967FAFF606A
                F9FF606AF9FF606AF9FF5967FAFF5574F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0
                C0FFC0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF5374F7FF5967FAFF606AF9FF606A
                F9FF606AF9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000
                0000C0C0C0FFF3F3F3FFFDFDFDFFFAFAFAFFD6E6FEFF5367F8FF5967FAFF606A
                F9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000
                0000C0C0C0FFFDFDFDFFFDFDFDFFFCFCFCFFFDFDFDFFD6E6FEFF5367F8FF5967
                FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF00000000000000000000
                0000C0C0C0FFFDFDFDFFE0E0E0FFCCCCCCFFE0E0E0FFFDFDFDFFD6E6FEFF587E
                F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000000000000000000000000000
                0000C0C0C0FFFDFDFDFFCDCDCDFFFFFFFFFFCDCDCDFFFDFDFDFFFDFDFDFFFDFD
                FDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000000000000000000000000000
                0000C0C0C0FFFDFDFDFFE2E2E2FFCECECEFFE0E0E0FFFDFDFDFFFDFDFDFFF3F3
                F3FFD8D8D8FFC0C0C0FF00000000000000000000000000000000000000000000
                0000C0C0C0FFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8
                D8FFC0C0C0FF0000000000000000000000000000000000000000000000000000
                0000BFBFBF84C0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
                C0FF000000000000000000000000000000000000000000000000000000000000
                0000}
              Transparent = True
            end
            object Label15: TLabel
              Left = 10
              Top = 51
              Width = 86
              Height = 14
              Caption = #1055#1077#1088#1077#1074#1086#1076' ('#1088#1091#1089'.)'
            end
            object Image7: TImage
              Left = 103
              Top = 51
              Width = 16
              Height = 16
              AutoSize = True
              Picture.Data = {
                07544269746D617036040000424D360400000000000036000000280000001000
                0000100000000100200000000000000400000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000C0C0C0FFC0C0C0FFBFBFBF84000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000000000C0C0
                C0FFD8D8D8FFD8D8D8FFC0C0C0FFBFBFBF840000000000000000000000000000
                0000000000000000000000000000000000000000000000000000C0C0C0FFD8D8
                D8FFF3F3F3FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF8400000000000000000000
                00000000000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3
                F3FFFDFDFDFF5374F7FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF84000000000000
                000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFD
                FDFF526BF8FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF840000
                0000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526B
                F8FF5967FAFF606AF9FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBF
                BF840000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF4D64F7FF5967
                FAFF606AF9FF606AF9FF606AF9FF5967FAFF5073F6FFF3F3F3FFD8D8D8FFC0C0
                C0FF00000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526BF8FF5967FAFF606A
                F9FF606AF9FF606AF9FF5967FAFF5574F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0
                C0FFC0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF5374F7FF5967FAFF606AF9FF606A
                F9FF606AF9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000
                0000C0C0C0FFF3F3F3FFFDFDFDFFFAFAFAFFD6E6FEFF5367F8FF5967FAFF606A
                F9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000
                0000C0C0C0FFFDFDFDFFFDFDFDFFFCFCFCFFFDFDFDFFD6E6FEFF5367F8FF5967
                FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF00000000000000000000
                0000C0C0C0FFFDFDFDFFE0E0E0FFCCCCCCFFE0E0E0FFFDFDFDFFD6E6FEFF587E
                F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000000000000000000000000000
                0000C0C0C0FFFDFDFDFFCDCDCDFFFFFFFFFFCDCDCDFFFDFDFDFFFDFDFDFFFDFD
                FDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000000000000000000000000000
                0000C0C0C0FFFDFDFDFFE2E2E2FFCECECEFFE0E0E0FFFDFDFDFFFDFDFDFFF3F3
                F3FFD8D8D8FFC0C0C0FF00000000000000000000000000000000000000000000
                0000C0C0C0FFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8
                D8FFC0C0C0FF0000000000000000000000000000000000000000000000000000
                0000BFBFBF84C0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
                C0FF000000000000000000000000000000000000000000000000000000000000
                0000}
              Transparent = True
            end
            object Label13: TLabel
              Left = 10
              Top = 76
              Width = 64
              Height = 14
              Caption = #1042#1077#1089' '#1089#1090#1077#1073#1083#1103
            end
            object Label16: TLabel
              Left = 10
              Top = 101
              Width = 99
              Height = 14
              Caption = #1058#1072#1084#1086#1078#1077#1085#1085#1099#1081' '#1082#1086#1076
            end
            object Label11: TLabel
              Left = 192
              Top = 76
              Width = 71
              Height = 14
              Caption = #1050#1086#1088#1086#1073#1082#1072'/'#1073#1072#1082
            end
            object ed_weight_name: TEdit
              Left = 123
              Top = 24
              Width = 230
              Height = 22
              MaxLength = 30
              TabOrder = 0
            end
            object ed_weight_tr_ru: TEdit
              Left = 123
              Top = 48
              Width = 230
              Height = 22
              MaxLength = 30
              TabOrder = 1
              OnKeyDown = ed_weight_tr_ruKeyDown
            end
            object ed_weight_val: TcxCurrencyEdit
              Left = 123
              Top = 73
              EditValue = 0.000000000000000000
              Properties.AssignedValues.MinValue = True
              Properties.DecimalPlaces = 4
              Properties.DisplayFormat = ',0.0000'#39#39';-,0.0000'#39#39
              Properties.MaxLength = 8
              Properties.Nullable = False
              Properties.NullString = '0'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 2
              Width = 54
            end
            object ed_weight_code: TEdit
              Left = 123
              Top = 98
              Width = 230
              Height = 22
              MaxLength = 30
              TabOrder = 5
            end
            object chb_category_info: TcxCheckBox
              Left = 10
              Top = 124
              Caption = ' '#1076#1077#1083#1072#1090#1100' '#1076#1083#1103' '#1075#1088#1091#1087#1087#1099' '#1092#1072#1081#1083' '#1089' '#1087#1086#1103#1089#1085#1077#1085#1080#1103#1084#1080
              Properties.DisplayChecked = #1076#1072
              Properties.DisplayUnchecked = #1085#1077#1090
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              TabOrder = 6
              Width = 289
            end
            object btn_add_category: TcxButton
              Left = 123
              Top = 152
              Width = 230
              Height = 30
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1072#1090#1077#1075#1086#1088#1080#1102
              TabOrder = 7
              OnClick = btn_add_categoryClick
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000208420442BA62FD82CA834D82CA633D82AA2
                2FD82492244A0000000000000000000000000000000000000000000000000000
                00000000000000000000000000002185205D44CC6CFF49D871FF49D871FF44CC
                6DFF249424630000000000000000000000000000000000000000000000000000
                00000000000000000000000000002186215D44CC6AFF3ECB4FFF3DCB4EFF43CB
                6AFF249524630000000000000000000000000000000000000000000000000000
                00000000000000000000000000002287215D47CF6DFF42CF55FF3ECB4FFF43CB
                6AFF259625630000000000000000000000000000000000000000000000000000
                00000000000000000000000000002288225D4BD271FF4CD65FFF43CF55FF44CC
                6BFF25972563000000000000000000000000000000000000000024902346248F
                235C238E235C238D225C238B225C29A428984ED575FF58DE6CFF4DD760FF47CE
                6EFF28A1279D2083205F2082205F20811F5C1F801F5C1F7F1F4631B736DE52D7
                7AFF53D87AFF54D97BFF55DA7CFF54D97CFF64EA92FF63E778FF59DF6CFF55DF
                81FF47CE6EFF44CC6BFF43CB69FF43CA68FF43CA6BFF2AA330DE34BB3CDE64E3
                8DFF68E17DFF6EE884FF72ED89FF74F08BFF72F088FF6DED82FF65E879FF5BE0
                6EFF51D964FF47D25AFF40CD52FF3DCB4FFF48D770FF2DA836DE34BC3CDE5EDB
                86FF60D874FF67E07CFF6DE783FF71EC88FF74EF89FF73F089FF6EEE83FF66E9
                7BFF5CE271FF52DA66FF48D35BFF41CD53FF48D770FF2EA936DE32BA37DE4DD3
                75FF4ED475FF51D677FF53D87AFF54D97CFF68EB96FF74EF89FF73F089FF67EC
                95FF51D778FF4DD475FF4AD171FF47CE6DFF45CD6DFF2BA731DE29A02849289F
                275F289E275F289D275F279C265F2BAD2A9A54D97AFF70EB87FF73EF8AFF57DB
                7FFF2AA9299D2493245F2492235F2390235F238F235F238E2349000000000000
                00000000000000000000000000002490245D51D778FF6BE480FF70EA85FF56DB
                7EFF28A128630000000000000000000000000000000000000000000000000000
                00000000000000000000000000002592245D4FD475FF63DB77FF6AE37EFF55D9
                7DFF29A228630000000000000000000000000000000000000000000000000000
                00000000000000000000000000002593245D4CD272FF5BD26EFF62DA76FF53D7
                7BFF29A428630000000000000000000000000000000000000000000000000000
                00000000000000000000000000002594255D4BD172FF59D782FF5FDD89FF51D6
                7AFF29A529630000000000000000000000000000000000000000000000000000
                00000000000000000000000000002694254331B934D532BA38D532B938D530B6
                34D52AA629490000000000000000000000000000000000000000}
              LookAndFeel.Kind = lfOffice11
              LookAndFeel.NativeStyle = True
            end
            object ed_weight_pack: TcxCurrencyEdit
              Left = 267
              Top = 73
              EditValue = 0.000000000000000000
              Properties.AssignedValues.MinValue = True
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
              Properties.MaxLength = 8
              Properties.Nullable = False
              Properties.NullString = '0'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 3
              Width = 42
            end
            object ed_weight_tank: TcxCurrencyEdit
              Left = 311
              Top = 73
              EditValue = 0.000000000000000000
              Properties.AssignedValues.MinValue = True
              Properties.DecimalPlaces = 2
              Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
              Properties.MaxLength = 8
              Properties.Nullable = False
              Properties.NullString = '0'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 4
              Width = 42
            end
          end
          object cxGroupBox1: TcxGroupBox
            Left = 375
            Top = 6
            Caption = ' 2. '#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1092#1086#1088#1084#1091#1083#1099' '#1082' '#1082#1072#1090#1077#1075#1086#1088#1080#1080' '
            TabOrder = 1
            Height = 190
            Width = 308
            object Label17: TLabel
              Left = 10
              Top = 27
              Width = 39
              Height = 14
              Caption = #1043#1088#1091#1087#1087#1072
            end
            object Image10: TImage
              Left = 82
              Top = 51
              Width = 16
              Height = 16
              AutoSize = True
              Picture.Data = {
                07544269746D617036040000424D360400000000000036000000280000001000
                0000100000000100200000000000000400000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000C0C0C0FFC0C0C0FFBFBFBF84000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000000000C0C0
                C0FFD8D8D8FFD8D8D8FFC0C0C0FFBFBFBF840000000000000000000000000000
                0000000000000000000000000000000000000000000000000000C0C0C0FFD8D8
                D8FFF3F3F3FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF8400000000000000000000
                00000000000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3
                F3FFFDFDFDFF5374F7FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF84000000000000
                000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFD
                FDFF526BF8FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF840000
                0000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526B
                F8FF5967FAFF606AF9FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBF
                BF840000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF4D64F7FF5967
                FAFF606AF9FF606AF9FF606AF9FF5967FAFF5073F6FFF3F3F3FFD8D8D8FFC0C0
                C0FF00000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526BF8FF5967FAFF606A
                F9FF606AF9FF606AF9FF5967FAFF5574F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0
                C0FFC0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF5374F7FF5967FAFF606AF9FF606A
                F9FF606AF9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000
                0000C0C0C0FFF3F3F3FFFDFDFDFFFAFAFAFFD6E6FEFF5367F8FF5967FAFF606A
                F9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000
                0000C0C0C0FFFDFDFDFFFDFDFDFFFCFCFCFFFDFDFDFFD6E6FEFF5367F8FF5967
                FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF00000000000000000000
                0000C0C0C0FFFDFDFDFFE0E0E0FFCCCCCCFFE0E0E0FFFDFDFDFFD6E6FEFF587E
                F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000000000000000000000000000
                0000C0C0C0FFFDFDFDFFCDCDCDFFFFFFFFFFCDCDCDFFFDFDFDFFFDFDFDFFFDFD
                FDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000000000000000000000000000
                0000C0C0C0FFFDFDFDFFE2E2E2FFCECECEFFE0E0E0FFFDFDFDFFFDFDFDFFF3F3
                F3FFD8D8D8FFC0C0C0FF00000000000000000000000000000000000000000000
                0000C0C0C0FFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8
                D8FFC0C0C0FF0000000000000000000000000000000000000000000000000000
                0000BFBFBF84C0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
                C0FF000000000000000000000000000000000000000000000000000000000000
                0000}
              Transparent = True
            end
            object Label14: TLabel
              Left = 10
              Top = 51
              Width = 52
              Height = 14
              Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            end
            object Label12: TLabel
              Left = 10
              Top = 76
              Width = 47
              Height = 14
              Caption = #1059#1089#1083#1086#1074#1080#1077
            end
            object Image9: TImage
              Left = 82
              Top = 76
              Width = 16
              Height = 16
              AutoSize = True
              Picture.Data = {
                07544269746D617036040000424D360400000000000036000000280000001000
                0000100000000100200000000000000400000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000C0C0C0FFC0C0C0FFBFBFBF84000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000000000C0C0
                C0FFD8D8D8FFD8D8D8FFC0C0C0FFBFBFBF840000000000000000000000000000
                0000000000000000000000000000000000000000000000000000C0C0C0FFD8D8
                D8FFF3F3F3FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF8400000000000000000000
                00000000000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3
                F3FFFDFDFDFF5374F7FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF84000000000000
                000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFD
                FDFF526BF8FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF840000
                0000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526B
                F8FF5967FAFF606AF9FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBF
                BF840000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF4D64F7FF5967
                FAFF606AF9FF606AF9FF606AF9FF5967FAFF5073F6FFF3F3F3FFD8D8D8FFC0C0
                C0FF00000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526BF8FF5967FAFF606A
                F9FF606AF9FF606AF9FF5967FAFF5574F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0
                C0FFC0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF5374F7FF5967FAFF606AF9FF606A
                F9FF606AF9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000
                0000C0C0C0FFF3F3F3FFFDFDFDFFFAFAFAFFD6E6FEFF5367F8FF5967FAFF606A
                F9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000
                0000C0C0C0FFFDFDFDFFFDFDFDFFFCFCFCFFFDFDFDFFD6E6FEFF5367F8FF5967
                FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF00000000000000000000
                0000C0C0C0FFFDFDFDFFE0E0E0FFCCCCCCFFE0E0E0FFFDFDFDFFD6E6FEFF587E
                F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000000000000000000000000000
                0000C0C0C0FFFDFDFDFFCDCDCDFFFFFFFFFFCDCDCDFFFDFDFDFFFDFDFDFFFDFD
                FDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000000000000000000000000000
                0000C0C0C0FFFDFDFDFFE2E2E2FFCECECEFFE0E0E0FFFDFDFDFFFDFDFDFFF3F3
                F3FFD8D8D8FFC0C0C0FF00000000000000000000000000000000000000000000
                0000C0C0C0FFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8
                D8FFC0C0C0FF0000000000000000000000000000000000000000000000000000
                0000BFBFBF84C0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
                C0FF000000000000000000000000000000000000000000000000000000000000
                0000}
              Transparent = True
            end
            object Label18: TLabel
              Left = 10
              Top = 101
              Width = 64
              Height = 14
              Caption = #1042#1077#1089' '#1089#1090#1077#1073#1083#1103
            end
            object cxDBLabel1: TcxDBLabel
              Left = 104
              Top = 25
              DataBinding.DataField = 'NAME_CAT'
              DataBinding.DataSource = DM.DS_WEIGHTS
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = True
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              Height = 21
              Width = 172
            end
            object ed_formula_name: TEdit
              Left = 104
              Top = 48
              Width = 191
              Height = 22
              MaxLength = 30
              TabOrder = 0
            end
            object cxComboBox1: TcxComboBox
              Left = 104
              Top = 73
              Properties.DropDownListStyle = lsFixedList
              Properties.ImmediatePost = True
              Properties.ImmediateUpdateText = True
              Properties.Items.Strings = (
                #1085#1072#1079#1074#1072#1085#1080#1077
                #1076#1083#1080#1085#1072)
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 1
              Text = #1085#1072#1079#1074#1072#1085#1080#1077
              Width = 81
            end
            object ed_weight_znak: TcxComboBox
              Left = 191
              Top = 73
              Properties.DropDownListStyle = lsFixedList
              Properties.ImmediatePost = True
              Properties.ImmediateUpdateText = True
              Properties.Items.Strings = (
                #1089#1086#1076#1077#1088#1078#1080#1090
                #1088#1072#1074#1085#1086' (=)'
                #1084#1077#1085#1100#1096#1077' (<)'
                #1073#1086#1083#1100#1096#1077' (>=)'
                #1085#1077' '#1088#1072#1074#1085#1086)
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 2
              Text = #1088#1072#1074#1085#1086' (=)'
              Width = 104
            end
            object cxCurrencyEdit1: TcxCurrencyEdit
              Left = 104
              Top = 98
              EditValue = 0.000000000000000000
              Properties.AssignedValues.MinValue = True
              Properties.DecimalPlaces = 4
              Properties.DisplayFormat = ',0.0000'#39#39';-,0.0000'#39#39
              Properties.MaxLength = 8
              Properties.Nullable = False
              Properties.NullString = '0'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 3
              Width = 81
            end
            object ed_formula_val: TEdit
              Left = 104
              Top = 124
              Width = 191
              Height = 22
              MaxLength = 30
              TabOrder = 4
            end
            object btn_add_formula: TcxButton
              Left = 104
              Top = 152
              Width = 191
              Height = 30
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1092#1086#1088#1084#1091#1083#1091
              TabOrder = 5
              OnClick = btn_add_formulaClick
              Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000208420442BA62FD82CA834D82CA633D82AA2
                2FD82492244A0000000000000000000000000000000000000000000000000000
                00000000000000000000000000002185205D44CC6CFF49D871FF49D871FF44CC
                6DFF249424630000000000000000000000000000000000000000000000000000
                00000000000000000000000000002186215D44CC6AFF3ECB4FFF3DCB4EFF43CB
                6AFF249524630000000000000000000000000000000000000000000000000000
                00000000000000000000000000002287215D47CF6DFF42CF55FF3ECB4FFF43CB
                6AFF259625630000000000000000000000000000000000000000000000000000
                00000000000000000000000000002288225D4BD271FF4CD65FFF43CF55FF44CC
                6BFF25972563000000000000000000000000000000000000000024902346248F
                235C238E235C238D225C238B225C29A428984ED575FF58DE6CFF4DD760FF47CE
                6EFF28A1279D2083205F2082205F20811F5C1F801F5C1F7F1F4631B736DE52D7
                7AFF53D87AFF54D97BFF55DA7CFF54D97CFF64EA92FF63E778FF59DF6CFF55DF
                81FF47CE6EFF44CC6BFF43CB69FF43CA68FF43CA6BFF2AA330DE34BB3CDE64E3
                8DFF68E17DFF6EE884FF72ED89FF74F08BFF72F088FF6DED82FF65E879FF5BE0
                6EFF51D964FF47D25AFF40CD52FF3DCB4FFF48D770FF2DA836DE34BC3CDE5EDB
                86FF60D874FF67E07CFF6DE783FF71EC88FF74EF89FF73F089FF6EEE83FF66E9
                7BFF5CE271FF52DA66FF48D35BFF41CD53FF48D770FF2EA936DE32BA37DE4DD3
                75FF4ED475FF51D677FF53D87AFF54D97CFF68EB96FF74EF89FF73F089FF67EC
                95FF51D778FF4DD475FF4AD171FF47CE6DFF45CD6DFF2BA731DE29A02849289F
                275F289E275F289D275F279C265F2BAD2A9A54D97AFF70EB87FF73EF8AFF57DB
                7FFF2AA9299D2493245F2492235F2390235F238F235F238E2349000000000000
                00000000000000000000000000002490245D51D778FF6BE480FF70EA85FF56DB
                7EFF28A128630000000000000000000000000000000000000000000000000000
                00000000000000000000000000002592245D4FD475FF63DB77FF6AE37EFF55D9
                7DFF29A228630000000000000000000000000000000000000000000000000000
                00000000000000000000000000002593245D4CD272FF5BD26EFF62DA76FF53D7
                7BFF29A428630000000000000000000000000000000000000000000000000000
                00000000000000000000000000002594255D4BD172FF59D782FF5FDD89FF51D6
                7AFF29A529630000000000000000000000000000000000000000000000000000
                00000000000000000000000000002694254331B934D532BA38D532B938D530B6
                34D52AA629490000000000000000000000000000000000000000}
              LookAndFeel.Kind = lfOffice11
              LookAndFeel.NativeStyle = True
            end
          end
        end
        object gr_w_formula: TcxGrid
          Left = 0
          Top = 395
          Width = 692
          Height = 107
          Align = alBottom
          TabOrder = 1
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object gr_w_formula_v: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            FilterBox.Position = fpTop
            OnCustomDrawCell = gr_weight_vCustomDrawCell
            DataController.DataSource = DM.DS_W_FORMULA
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.AutoDataSetFilter = True
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skCount
                Column = gr_w_formula_fo_name
              end>
            DataController.Summary.SummaryGroups = <>
            FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1086#1074
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnSorting = False
            OptionsView.CellEndEllipsis = True
            OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
            OptionsView.ColumnAutoWidth = True
            OptionsView.GroupByBox = False
            object gr_w_formula_button: TcxGridDBColumn
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
                end>
              Properties.ViewStyle = vsButtonsOnly
              Properties.OnButtonClick = gr_w_formula_buttonPropertiesButtonClick
              MinWidth = 30
              Options.Filtering = False
              Options.ShowEditButtons = isebAlways
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 30
            end
            object gr_w_formula_fo_name: TcxGridDBColumn
              Caption = #1053#1072#1079#1074#1072#1085#1080#1077
              DataBinding.FieldName = 'FO_NAME'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Width = 120
            end
            object gr_w_formula_fo_field: TcxGridDBColumn
              Caption = #1055#1072#1088#1072#1084#1077#1090#1088
              DataBinding.FieldName = 'FO_FIELD'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.ImmediatePost = True
              Properties.ImmediateUpdateText = True
              Properties.Items = <
                item
                  Description = #1085#1072#1079#1074#1072#1085#1080#1077
                  ImageIndex = 0
                  Value = 0
                end
                item
                  Description = #1074#1099#1089#1086#1090#1072
                  Value = 1
                end>
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              MinWidth = 90
              Options.Filtering = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 90
            end
            object gr_w_formula_fo_rule: TcxGridDBColumn
              Caption = #1055#1088#1072#1074#1080#1083#1086
              DataBinding.FieldName = 'FO_RULE'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Alignment.Horz = taCenter
              Properties.ImmediatePost = True
              Properties.ImmediateUpdateText = True
              Properties.Items = <
                item
                  Description = #1089#1086#1076#1077#1088#1078#1080#1090
                  ImageIndex = 0
                  Value = 0
                end
                item
                  Description = #1088#1072#1074#1085#1086' (=)'
                  Value = 1
                end
                item
                  Description = #1084#1077#1085#1100#1096#1077' (<)'
                  Value = 2
                end
                item
                  Description = #1073#1086#1083#1100#1096#1077' (>=)'
                  Value = 3
                end
                item
                  Description = #1085#1077' '#1088#1072#1074#1085#1086
                  Value = 4
                end>
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              MinWidth = 90
              Options.Filtering = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 90
            end
            object gr_w_formula_FO_VALUE: TcxGridDBColumn
              Caption = #1047#1085#1072#1095#1077#1085#1080#1077
              DataBinding.FieldName = 'FO_VALUE'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              HeaderGlyphAlignmentHorz = taCenter
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
              Width = 100
            end
            object gr_w_formula_weight: TcxGridDBColumn
              Caption = #1042#1077#1089
              DataBinding.FieldName = 'V_WEIGHT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.AssignedValues.MinValue = True
              Properties.DecimalPlaces = 4
              Properties.DisplayFormat = ',0.0000'#39#39';-,0.0000'#39#39
              Properties.MaxLength = 10
              Properties.Nullable = False
              Properties.NullString = '0'
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              MinWidth = 65
              Options.Filtering = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 65
            end
            object gr_w_formula_orderby: TcxGridDBColumn
              Caption = #1057#1086#1088#1090'.'
              DataBinding.FieldName = 'ORDERBY'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.DecimalPlaces = 0
              Properties.DisplayFormat = ',0'#39#39';-,0'#39#39
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              MinWidth = 40
              Options.Filtering = False
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 40
            end
            object gr_w_formula_ID_W: TcxGridDBColumn
              DataBinding.FieldName = 'ID_W'
              Visible = False
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
            end
            object gr_w_formula_ID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
              Options.Filtering = False
              Options.Moving = False
              Options.Sorting = False
            end
          end
          object gr_w_formula_l: TcxGridLevel
            GridView = gr_w_formula_v
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 387
          Width = 692
          Height = 8
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 3
        end
      end
      object tsh_dicts: TcxTabSheet
        Tag = 2
        Caption = ' '#1060#1048#1058#1054' '#1082#1072#1090#1077#1075#1086#1088#1080#1080' '
        ImageIndex = 1
        object gr_fito: TcxGrid
          Left = 0
          Top = 111
          Width = 692
          Height = 391
          Align = alClient
          TabOrder = 1
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object gr_fito_v: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            FilterBox.Position = fpTop
            DataController.DataSource = DM.DS_FITO
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.AutoDataSetFilter = True
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skCount
                Column = gr_fito_vNAME_ENG
              end>
            DataController.Summary.SummaryGroups = <>
            FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1086#1074
            FilterRow.Visible = True
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnMoving = False
            OptionsView.CellEndEllipsis = True
            OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 25
            object gr_fito_vColumn1: TcxGridDBColumn
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
                end>
              Properties.ViewStyle = vsButtonsOnly
              Properties.OnButtonClick = gr_fito_vColumn1PropertiesButtonClick
              MinWidth = 30
              Options.Filtering = False
              Options.ShowEditButtons = isebAlways
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 30
            end
            object gr_fito_vID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
            end
            object gr_fito_vNAME_ENG: TcxGridDBColumn
              Caption = #1053#1072#1079#1074#1072#1085#1080#1077' ('#1083#1072#1090'.)'
              DataBinding.FieldName = 'NAME_ENG'
              PropertiesClassName = 'TcxTextEditProperties'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
            object gr_fito_vNAME_ENG_FULL: TcxGridDBColumn
              Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' ('#1083#1072#1090'.)'
              DataBinding.FieldName = 'NAME_ENG_FULL'
              PropertiesClassName = 'TcxTextEditProperties'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
            object gr_fito_vNAME_RU: TcxGridDBColumn
              Caption = #1053#1072#1079#1074#1072#1085#1080#1077
              DataBinding.FieldName = 'NAME_RU'
              PropertiesClassName = 'TcxTextEditProperties'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
            end
            object gr_fito_vID_DEP: TcxGridDBColumn
              DataBinding.FieldName = 'ID_DEP'
              Visible = False
            end
          end
          object gr_fito_l: TcxGridLevel
            GridView = gr_fito_v
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 692
          Height = 111
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 2
          TabOrder = 0
          object Label1: TLabel
            Left = 10
            Top = 27
            Width = 89
            Height = 14
            Caption = #1053#1072#1079#1074#1072#1085#1080#1077' ('#1083#1072#1090'.)'
          end
          object Label2: TLabel
            Left = 10
            Top = 50
            Width = 135
            Height = 14
            Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' ('#1083#1072#1090'.)'
          end
          object Label4: TLabel
            Left = 10
            Top = 73
            Width = 52
            Height = 14
            Caption = #1053#1072#1079#1074#1072#1085#1080#1077
          end
          object Image3: TImage
            Left = 177
            Top = 73
            Width = 16
            Height = 16
            AutoSize = True
            Picture.Data = {
              07544269746D617036040000424D360400000000000036000000280000001000
              0000100000000100200000000000000400000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000C0C0C0FFC0C0C0FFBFBFBF84000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000C0C0
              C0FFD8D8D8FFD8D8D8FFC0C0C0FFBFBFBF840000000000000000000000000000
              0000000000000000000000000000000000000000000000000000C0C0C0FFD8D8
              D8FFF3F3F3FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF8400000000000000000000
              00000000000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3
              F3FFFDFDFDFF5374F7FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF84000000000000
              000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFD
              FDFF526BF8FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF840000
              0000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526B
              F8FF5967FAFF606AF9FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBF
              BF840000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF4D64F7FF5967
              FAFF606AF9FF606AF9FF606AF9FF5967FAFF5073F6FFF3F3F3FFD8D8D8FFC0C0
              C0FF00000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526BF8FF5967FAFF606A
              F9FF606AF9FF606AF9FF5967FAFF5574F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0
              C0FFC0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF5374F7FF5967FAFF606AF9FF606A
              F9FF606AF9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000
              0000C0C0C0FFF3F3F3FFFDFDFDFFFAFAFAFFD6E6FEFF5367F8FF5967FAFF606A
              F9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000
              0000C0C0C0FFFDFDFDFFFDFDFDFFFCFCFCFFFDFDFDFFD6E6FEFF5367F8FF5967
              FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF00000000000000000000
              0000C0C0C0FFFDFDFDFFE0E0E0FFCCCCCCFFE0E0E0FFFDFDFDFFD6E6FEFF587E
              F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000000000000000000000000000
              0000C0C0C0FFFDFDFDFFCDCDCDFFFFFFFFFFCDCDCDFFFDFDFDFFFDFDFDFFFDFD
              FDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000000000000000000000000000
              0000C0C0C0FFFDFDFDFFE2E2E2FFCECECEFFE0E0E0FFFDFDFDFFFDFDFDFFF3F3
              F3FFD8D8D8FFC0C0C0FF00000000000000000000000000000000000000000000
              0000C0C0C0FFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8
              D8FFC0C0C0FF0000000000000000000000000000000000000000000000000000
              0000BFBFBF84C0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
              C0FF000000000000000000000000000000000000000000000000000000000000
              0000}
            Transparent = True
          end
          object Image4: TImage
            Left = 177
            Top = 27
            Width = 16
            Height = 16
            AutoSize = True
            Picture.Data = {
              07544269746D617036040000424D360400000000000036000000280000001000
              0000100000000100200000000000000400000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000C0C0C0FFC0C0C0FFBFBFBF84000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000C0C0
              C0FFD8D8D8FFD8D8D8FFC0C0C0FFBFBFBF840000000000000000000000000000
              0000000000000000000000000000000000000000000000000000C0C0C0FFD8D8
              D8FFF3F3F3FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF8400000000000000000000
              00000000000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3
              F3FFFDFDFDFF5374F7FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF84000000000000
              000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFD
              FDFF526BF8FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF840000
              0000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526B
              F8FF5967FAFF606AF9FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBF
              BF840000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF4D64F7FF5967
              FAFF606AF9FF606AF9FF606AF9FF5967FAFF5073F6FFF3F3F3FFD8D8D8FFC0C0
              C0FF00000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526BF8FF5967FAFF606A
              F9FF606AF9FF606AF9FF5967FAFF5574F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0
              C0FFC0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF5374F7FF5967FAFF606AF9FF606A
              F9FF606AF9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000
              0000C0C0C0FFF3F3F3FFFDFDFDFFFAFAFAFFD6E6FEFF5367F8FF5967FAFF606A
              F9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000
              0000C0C0C0FFFDFDFDFFFDFDFDFFFCFCFCFFFDFDFDFFD6E6FEFF5367F8FF5967
              FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF00000000000000000000
              0000C0C0C0FFFDFDFDFFE0E0E0FFCCCCCCFFE0E0E0FFFDFDFDFFD6E6FEFF587E
              F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000000000000000000000000000
              0000C0C0C0FFFDFDFDFFCDCDCDFFFFFFFFFFCDCDCDFFFDFDFDFFFDFDFDFFFDFD
              FDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000000000000000000000000000
              0000C0C0C0FFFDFDFDFFE2E2E2FFCECECEFFE0E0E0FFFDFDFDFFFDFDFDFFF3F3
              F3FFD8D8D8FFC0C0C0FF00000000000000000000000000000000000000000000
              0000C0C0C0FFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8
              D8FFC0C0C0FF0000000000000000000000000000000000000000000000000000
              0000BFBFBF84C0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
              C0FF000000000000000000000000000000000000000000000000000000000000
              0000}
            Transparent = True
          end
          object cxLabel1: TcxLabel
            Left = 2
            Top = 2
            Align = alTop
            Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1085#1086#1074#1086#1081' '#1079#1072#1087#1080#1089#1080
            ParentFont = False
            Properties.LabelStyle = cxlsLowered
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object Edit1: TEdit
            Left = 197
            Top = 24
            Width = 207
            Height = 22
            MaxLength = 30
            TabOrder = 0
            OnKeyDown = Edit3KeyDown
          end
          object Edit2: TEdit
            Left = 197
            Top = 47
            Width = 207
            Height = 22
            MaxLength = 30
            TabOrder = 1
            OnKeyDown = Edit3KeyDown
          end
          object Edit3: TEdit
            Left = 197
            Top = 70
            Width = 207
            Height = 22
            TabOrder = 2
            OnKeyDown = Edit3KeyDown
          end
          object btn_add: TcxButton
            Left = 417
            Top = 24
            Width = 88
            Height = 68
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100
            TabOrder = 3
            OnClick = btn_addClick
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000208420442BA62FD82CA834D82CA633D82AA2
              2FD82492244A0000000000000000000000000000000000000000000000000000
              00000000000000000000000000002185205D44CC6CFF49D871FF49D871FF44CC
              6DFF249424630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002186215D44CC6AFF3ECB4FFF3DCB4EFF43CB
              6AFF249524630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002287215D47CF6DFF42CF55FF3ECB4FFF43CB
              6AFF259625630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002288225D4BD271FF4CD65FFF43CF55FF44CC
              6BFF25972563000000000000000000000000000000000000000024902346248F
              235C238E235C238D225C238B225C29A428984ED575FF58DE6CFF4DD760FF47CE
              6EFF28A1279D2083205F2082205F20811F5C1F801F5C1F7F1F4631B736DE52D7
              7AFF53D87AFF54D97BFF55DA7CFF54D97CFF64EA92FF63E778FF59DF6CFF55DF
              81FF47CE6EFF44CC6BFF43CB69FF43CA68FF43CA6BFF2AA330DE34BB3CDE64E3
              8DFF68E17DFF6EE884FF72ED89FF74F08BFF72F088FF6DED82FF65E879FF5BE0
              6EFF51D964FF47D25AFF40CD52FF3DCB4FFF48D770FF2DA836DE34BC3CDE5EDB
              86FF60D874FF67E07CFF6DE783FF71EC88FF74EF89FF73F089FF6EEE83FF66E9
              7BFF5CE271FF52DA66FF48D35BFF41CD53FF48D770FF2EA936DE32BA37DE4DD3
              75FF4ED475FF51D677FF53D87AFF54D97CFF68EB96FF74EF89FF73F089FF67EC
              95FF51D778FF4DD475FF4AD171FF47CE6DFF45CD6DFF2BA731DE29A02849289F
              275F289E275F289D275F279C265F2BAD2A9A54D97AFF70EB87FF73EF8AFF57DB
              7FFF2AA9299D2493245F2492235F2390235F238F235F238E2349000000000000
              00000000000000000000000000002490245D51D778FF6BE480FF70EA85FF56DB
              7EFF28A128630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002592245D4FD475FF63DB77FF6AE37EFF55D9
              7DFF29A228630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002593245D4CD272FF5BD26EFF62DA76FF53D7
              7BFF29A428630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002594255D4BD172FF59D782FF5FDD89FF51D6
              7AFF29A529630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002694254331B934D532BA38D532B938D530B6
              34D52AA629490000000000000000000000000000000000000000}
            Layout = blGlyphTop
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = True
          end
          object cxLabel2: TcxLabel
            Left = 197
            Top = 91
            Caption = #1044#1083#1103' '#1079#1072#1087#1080#1089#1080' '#1085#1072#1078#1084#1080#1090#1077' ENTER '#1074' '#1087#1086#1083#1077' '#1085#1072#1079#1074#1072#1085#1080#1103
            ParentFont = False
            Properties.LabelStyle = cxlsLowered
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clMaroon
            Style.Font.Height = -9
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
        end
      end
      object tsh_names: TcxTabSheet
        Tag = 3
        Caption = ' '#1053#1072#1079#1074#1072#1085#1080#1103' '
        ImageIndex = 3
        object pnl_name_top: TPanel
          Left = 0
          Top = 0
          Width = 692
          Height = 130
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 2
          TabOrder = 0
          object Label5: TLabel
            Left = 10
            Top = 27
            Width = 159
            Height = 14
            Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072' ('#1083#1072#1090'.)'
          end
          object Label7: TLabel
            Left = 10
            Top = 73
            Width = 113
            Height = 14
            Caption = #1055#1077#1088#1077#1074#1086#1076' '#1076#1083#1103' '#1060#1048#1058#1054
          end
          object Image2: TImage
            Left = 177
            Top = 27
            Width = 16
            Height = 16
            AutoSize = True
            Picture.Data = {
              07544269746D617036040000424D360400000000000036000000280000001000
              0000100000000100200000000000000400000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000C0C0C0FFC0C0C0FFBFBFBF84000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000C0C0
              C0FFD8D8D8FFD8D8D8FFC0C0C0FFBFBFBF840000000000000000000000000000
              0000000000000000000000000000000000000000000000000000C0C0C0FFD8D8
              D8FFF3F3F3FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF8400000000000000000000
              00000000000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3
              F3FFFDFDFDFF5374F7FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF84000000000000
              000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFD
              FDFF526BF8FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF840000
              0000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526B
              F8FF5967FAFF606AF9FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBF
              BF840000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF4D64F7FF5967
              FAFF606AF9FF606AF9FF606AF9FF5967FAFF5073F6FFF3F3F3FFD8D8D8FFC0C0
              C0FF00000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526BF8FF5967FAFF606A
              F9FF606AF9FF606AF9FF5967FAFF5574F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0
              C0FFC0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF5374F7FF5967FAFF606AF9FF606A
              F9FF606AF9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000
              0000C0C0C0FFF3F3F3FFFDFDFDFFFAFAFAFFD6E6FEFF5367F8FF5967FAFF606A
              F9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000
              0000C0C0C0FFFDFDFDFFFDFDFDFFFCFCFCFFFDFDFDFFD6E6FEFF5367F8FF5967
              FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF00000000000000000000
              0000C0C0C0FFFDFDFDFFE0E0E0FFCCCCCCFFE0E0E0FFFDFDFDFFD6E6FEFF587E
              F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000000000000000000000000000
              0000C0C0C0FFFDFDFDFFCDCDCDFFFFFFFFFFCDCDCDFFFDFDFDFFFDFDFDFFFDFD
              FDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000000000000000000000000000
              0000C0C0C0FFFDFDFDFFE2E2E2FFCECECEFFE0E0E0FFFDFDFDFFFDFDFDFFF3F3
              F3FFD8D8D8FFC0C0C0FF00000000000000000000000000000000000000000000
              0000C0C0C0FFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8
              D8FFC0C0C0FF0000000000000000000000000000000000000000000000000000
              0000BFBFBF84C0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
              C0FF000000000000000000000000000000000000000000000000000000000000
              0000}
            Transparent = True
          end
          object Label8: TLabel
            Left = 10
            Top = 50
            Width = 94
            Height = 14
            Caption = #1040#1091#1082#1094#1080#1086#1085#1085#1099#1081' '#1082#1086#1076
          end
          object Image1: TImage
            Left = 177
            Top = 73
            Width = 16
            Height = 16
            AutoSize = True
            Picture.Data = {
              07544269746D617036040000424D360400000000000036000000280000001000
              0000100000000100200000000000000400000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000C0C0C0FFC0C0C0FFBFBFBF84000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000C0C0
              C0FFD8D8D8FFD8D8D8FFC0C0C0FFBFBFBF840000000000000000000000000000
              0000000000000000000000000000000000000000000000000000C0C0C0FFD8D8
              D8FFF3F3F3FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF8400000000000000000000
              00000000000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3
              F3FFFDFDFDFF5374F7FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF84000000000000
              000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFD
              FDFF526BF8FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF840000
              0000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526B
              F8FF5967FAFF606AF9FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBF
              BF840000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF4D64F7FF5967
              FAFF606AF9FF606AF9FF606AF9FF5967FAFF5073F6FFF3F3F3FFD8D8D8FFC0C0
              C0FF00000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526BF8FF5967FAFF606A
              F9FF606AF9FF606AF9FF5967FAFF5574F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0
              C0FFC0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF5374F7FF5967FAFF606AF9FF606A
              F9FF606AF9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000
              0000C0C0C0FFF3F3F3FFFDFDFDFFFAFAFAFFD6E6FEFF5367F8FF5967FAFF606A
              F9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000
              0000C0C0C0FFFDFDFDFFFDFDFDFFFCFCFCFFFDFDFDFFD6E6FEFF5367F8FF5967
              FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF00000000000000000000
              0000C0C0C0FFFDFDFDFFE0E0E0FFCCCCCCFFE0E0E0FFFDFDFDFFD6E6FEFF587E
              F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000000000000000000000000000
              0000C0C0C0FFFDFDFDFFCDCDCDFFFFFFFFFFCDCDCDFFFDFDFDFFFDFDFDFFFDFD
              FDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000000000000000000000000000
              0000C0C0C0FFFDFDFDFFE2E2E2FFCECECEFFE0E0E0FFFDFDFDFFFDFDFDFFF3F3
              F3FFD8D8D8FFC0C0C0FF00000000000000000000000000000000000000000000
              0000C0C0C0FFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8
              D8FFC0C0C0FF0000000000000000000000000000000000000000000000000000
              0000BFBFBF84C0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
              C0FF000000000000000000000000000000000000000000000000000000000000
              0000}
            Transparent = True
          end
          object cxLabel3: TcxLabel
            Left = 2
            Top = 2
            Align = alTop
            Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1085#1086#1074#1086#1075#1086' '#1085#1072#1079#1074#1072#1085#1080#1103
            ParentFont = False
            Properties.LabelStyle = cxlsLowered
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object ed_name_suplier: TEdit
            Left = 197
            Top = 24
            Width = 207
            Height = 22
            MaxLength = 50
            TabOrder = 0
          end
          object ed_name_fito: TEdit
            Left = 197
            Top = 70
            Width = 207
            Height = 22
            MaxLength = 50
            TabOrder = 2
            OnKeyDown = ed_name_fitoKeyDown
          end
          object btn_add_name: TcxButton
            Left = 417
            Top = 24
            Width = 88
            Height = 68
            Caption = '  '#1044#1086#1073#1072#1074#1080#1090#1100
            TabOrder = 3
            OnClick = btn_add_nameClick
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000208420442BA62FD82CA834D82CA633D82AA2
              2FD82492244A0000000000000000000000000000000000000000000000000000
              00000000000000000000000000002185205D44CC6CFF49D871FF49D871FF44CC
              6DFF249424630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002186215D44CC6AFF3ECB4FFF3DCB4EFF43CB
              6AFF249524630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002287215D47CF6DFF42CF55FF3ECB4FFF43CB
              6AFF259625630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002288225D4BD271FF4CD65FFF43CF55FF44CC
              6BFF25972563000000000000000000000000000000000000000024902346248F
              235C238E235C238D225C238B225C29A428984ED575FF58DE6CFF4DD760FF47CE
              6EFF28A1279D2083205F2082205F20811F5C1F801F5C1F7F1F4631B736DE52D7
              7AFF53D87AFF54D97BFF55DA7CFF54D97CFF64EA92FF63E778FF59DF6CFF55DF
              81FF47CE6EFF44CC6BFF43CB69FF43CA68FF43CA6BFF2AA330DE34BB3CDE64E3
              8DFF68E17DFF6EE884FF72ED89FF74F08BFF72F088FF6DED82FF65E879FF5BE0
              6EFF51D964FF47D25AFF40CD52FF3DCB4FFF48D770FF2DA836DE34BC3CDE5EDB
              86FF60D874FF67E07CFF6DE783FF71EC88FF74EF89FF73F089FF6EEE83FF66E9
              7BFF5CE271FF52DA66FF48D35BFF41CD53FF48D770FF2EA936DE32BA37DE4DD3
              75FF4ED475FF51D677FF53D87AFF54D97CFF68EB96FF74EF89FF73F089FF67EC
              95FF51D778FF4DD475FF4AD171FF47CE6DFF45CD6DFF2BA731DE29A02849289F
              275F289E275F289D275F279C265F2BAD2A9A54D97AFF70EB87FF73EF8AFF57DB
              7FFF2AA9299D2493245F2492235F2390235F238F235F238E2349000000000000
              00000000000000000000000000002490245D51D778FF6BE480FF70EA85FF56DB
              7EFF28A128630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002592245D4FD475FF63DB77FF6AE37EFF55D9
              7DFF29A228630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002593245D4CD272FF5BD26EFF62DA76FF53D7
              7BFF29A428630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002594255D4BD172FF59D782FF5FDD89FF51D6
              7AFF29A529630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002694254331B934D532BA38D532B938D530B6
              34D52AA629490000000000000000000000000000000000000000}
            Layout = blGlyphTop
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = True
          end
          object cxLabel4: TcxLabel
            Left = 197
            Top = 91
            Caption = #1044#1083#1103' '#1079#1072#1087#1080#1089#1080' '#1085#1072#1078#1084#1080#1090#1077' ENTER '#1074' '#1087#1086#1083#1077' '#1087#1077#1088#1077#1074#1086#1076#1072
            ParentFont = False
            Properties.LabelStyle = cxlsLowered
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clMaroon
            Style.Font.Height = -9
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object ed_name_code: TEdit
            Left = 197
            Top = 47
            Width = 207
            Height = 22
            MaxLength = 50
            TabOrder = 1
            OnKeyDown = ed_name_codeKeyDown
          end
          object cxLabel6: TcxLabel
            Left = 2
            Top = 110
            Align = alBottom
            Caption = 
              #1042#1086#1079#1084#1086#1078#1085#1086', '#1095#1090#1086' '#1090#1072#1082#1086#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1091#1078#1077' '#1080#1084#1077#1077#1090#1089#1103', '#1085#1086' '#1073#1077#1079' '#1050#1054#1044#1040'. '#1044#1083#1103' '#1087#1088#1086#1074#1077 +
              #1088#1082#1080' '#1085#1072#1078#1084#1080#1090#1077' F8'
            ParentFont = False
            Properties.LabelStyle = cxlsLowered
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clMaroon
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
        end
        object gr_names: TcxGrid
          Left = 0
          Top = 130
          Width = 692
          Height = 372
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object gr_names_v: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            FilterBox.Position = fpTop
            DataController.DataSource = DM.DS_NAMES
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.AutoDataSetFilter = True
            DataController.KeyFieldNames = 'FITO_ID'
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skCount
                Column = fito_F_NAME
              end>
            DataController.Summary.SummaryGroups = <>
            FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1086#1074
            FilterRow.Visible = True
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnMoving = False
            OptionsView.CellEndEllipsis = True
            OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 25
            object fito_btndel: TcxGridDBColumn
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
                end>
              Properties.ViewStyle = vsButtonsOnly
              Properties.OnButtonClick = fito_btndelPropertiesButtonClick
              MinWidth = 30
              Options.Filtering = False
              Options.ShowEditButtons = isebAlways
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 30
            end
            object fito_FITO_ID: TcxGridDBColumn
              DataBinding.FieldName = 'FITO_ID'
              Visible = False
              MinWidth = 30
            end
            object fito_NAME_CODE: TcxGridDBColumn
              Caption = #1050#1086#1076
              DataBinding.FieldName = 'NAME_CODE'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.MaxLength = 10
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              MinWidth = 80
              Options.HorzSizing = False
              Width = 80
            end
            object fito_F_NAME: TcxGridDBColumn
              Caption = #1053#1072#1079#1074#1072#1085#1080#1077' ('#1083#1072#1090'.)'
              DataBinding.FieldName = 'F_NAME'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 200
            end
            object fito_FITO_NAME: TcxGridDBColumn
              Caption = #1053#1072#1079#1074#1072#1085#1080#1077
              DataBinding.FieldName = 'FITO_NAME'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.Alignment.Vert = taVCenter
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderAlignmentVert = vaCenter
              Width = 200
            end
            object fito_ID_DEPARTMENTS: TcxGridDBColumn
              DataBinding.FieldName = 'ID_DEP'
              Visible = False
            end
          end
          object gr_names_l: TcxGridLevel
            GridView = gr_names_v
          end
        end
      end
      object tsh_packing: TcxTabSheet
        Caption = ' '#1058#1080#1087#1099' '#1091#1087#1072#1082#1086#1074#1082#1080' '
        ImageIndex = 4
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 692
          Height = 111
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 2
          TabOrder = 0
          object Label6: TLabel
            Left = 10
            Top = 27
            Width = 45
            Height = 14
            Caption = #1059#1087#1072#1082#1086#1074#1072
          end
          object Label9: TLabel
            Left = 10
            Top = 50
            Width = 71
            Height = 14
            Caption = #1042#1077#1089' '#1082#1086#1088#1086#1073#1082#1080
          end
          object Image5: TImage
            Left = 177
            Top = 50
            Width = 16
            Height = 16
            AutoSize = True
            Picture.Data = {
              07544269746D617036040000424D360400000000000036000000280000001000
              0000100000000100200000000000000400000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000C0C0C0FFC0C0C0FFBFBFBF84000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000C0C0
              C0FFD8D8D8FFD8D8D8FFC0C0C0FFBFBFBF840000000000000000000000000000
              0000000000000000000000000000000000000000000000000000C0C0C0FFD8D8
              D8FFF3F3F3FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF8400000000000000000000
              00000000000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3
              F3FFFDFDFDFF5374F7FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF84000000000000
              000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFD
              FDFF526BF8FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF840000
              0000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526B
              F8FF5967FAFF606AF9FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBF
              BF840000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF4D64F7FF5967
              FAFF606AF9FF606AF9FF606AF9FF5967FAFF5073F6FFF3F3F3FFD8D8D8FFC0C0
              C0FF00000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526BF8FF5967FAFF606A
              F9FF606AF9FF606AF9FF5967FAFF5574F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0
              C0FFC0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF5374F7FF5967FAFF606AF9FF606A
              F9FF606AF9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000
              0000C0C0C0FFF3F3F3FFFDFDFDFFFAFAFAFFD6E6FEFF5367F8FF5967FAFF606A
              F9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000
              0000C0C0C0FFFDFDFDFFFDFDFDFFFCFCFCFFFDFDFDFFD6E6FEFF5367F8FF5967
              FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF00000000000000000000
              0000C0C0C0FFFDFDFDFFE0E0E0FFCCCCCCFFE0E0E0FFFDFDFDFFD6E6FEFF587E
              F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000000000000000000000000000
              0000C0C0C0FFFDFDFDFFCDCDCDFFFFFFFFFFCDCDCDFFFDFDFDFFFDFDFDFFFDFD
              FDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000000000000000000000000000
              0000C0C0C0FFFDFDFDFFE2E2E2FFCECECEFFE0E0E0FFFDFDFDFFFDFDFDFFF3F3
              F3FFD8D8D8FFC0C0C0FF00000000000000000000000000000000000000000000
              0000C0C0C0FFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8
              D8FFC0C0C0FF0000000000000000000000000000000000000000000000000000
              0000BFBFBF84C0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
              C0FF000000000000000000000000000000000000000000000000000000000000
              0000}
            Transparent = True
          end
          object Image6: TImage
            Left = 177
            Top = 27
            Width = 16
            Height = 16
            AutoSize = True
            Picture.Data = {
              07544269746D617036040000424D360400000000000036000000280000001000
              0000100000000100200000000000000400000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000C0C0C0FFC0C0C0FFBFBFBF84000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000C0C0
              C0FFD8D8D8FFD8D8D8FFC0C0C0FFBFBFBF840000000000000000000000000000
              0000000000000000000000000000000000000000000000000000C0C0C0FFD8D8
              D8FFF3F3F3FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF8400000000000000000000
              00000000000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3
              F3FFFDFDFDFF5374F7FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF84000000000000
              000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFD
              FDFF526BF8FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF840000
              0000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526B
              F8FF5967FAFF606AF9FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBF
              BF840000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF4D64F7FF5967
              FAFF606AF9FF606AF9FF606AF9FF5967FAFF5073F6FFF3F3F3FFD8D8D8FFC0C0
              C0FF00000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526BF8FF5967FAFF606A
              F9FF606AF9FF606AF9FF5967FAFF5574F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0
              C0FFC0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF5374F7FF5967FAFF606AF9FF606A
              F9FF606AF9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000
              0000C0C0C0FFF3F3F3FFFDFDFDFFFAFAFAFFD6E6FEFF5367F8FF5967FAFF606A
              F9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000
              0000C0C0C0FFFDFDFDFFFDFDFDFFFCFCFCFFFDFDFDFFD6E6FEFF5367F8FF5967
              FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF00000000000000000000
              0000C0C0C0FFFDFDFDFFE0E0E0FFCCCCCCFFE0E0E0FFFDFDFDFFD6E6FEFF587E
              F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000000000000000000000000000
              0000C0C0C0FFFDFDFDFFCDCDCDFFFFFFFFFFCDCDCDFFFDFDFDFFFDFDFDFFFDFD
              FDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000000000000000000000000000
              0000C0C0C0FFFDFDFDFFE2E2E2FFCECECEFFE0E0E0FFFDFDFDFFFDFDFDFFF3F3
              F3FFD8D8D8FFC0C0C0FF00000000000000000000000000000000000000000000
              0000C0C0C0FFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8
              D8FFC0C0C0FF0000000000000000000000000000000000000000000000000000
              0000BFBFBF84C0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
              C0FF000000000000000000000000000000000000000000000000000000000000
              0000}
            Transparent = True
          end
          object cxLabel5: TcxLabel
            Left = 2
            Top = 2
            Align = alTop
            Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1085#1086#1074#1086#1081' '#1079#1072#1087#1080#1089#1080
            ParentFont = False
            Properties.LabelStyle = cxlsLowered
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object edPackingName: TEdit
            Left = 197
            Top = 24
            Width = 207
            Height = 22
            MaxLength = 30
            TabOrder = 0
          end
          object btnAddPacking: TcxButton
            Left = 417
            Top = 24
            Width = 88
            Height = 68
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100
            TabOrder = 3
            OnClick = btnAddPackingClick
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000208420442BA62FD82CA834D82CA633D82AA2
              2FD82492244A0000000000000000000000000000000000000000000000000000
              00000000000000000000000000002185205D44CC6CFF49D871FF49D871FF44CC
              6DFF249424630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002186215D44CC6AFF3ECB4FFF3DCB4EFF43CB
              6AFF249524630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002287215D47CF6DFF42CF55FF3ECB4FFF43CB
              6AFF259625630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002288225D4BD271FF4CD65FFF43CF55FF44CC
              6BFF25972563000000000000000000000000000000000000000024902346248F
              235C238E235C238D225C238B225C29A428984ED575FF58DE6CFF4DD760FF47CE
              6EFF28A1279D2083205F2082205F20811F5C1F801F5C1F7F1F4631B736DE52D7
              7AFF53D87AFF54D97BFF55DA7CFF54D97CFF64EA92FF63E778FF59DF6CFF55DF
              81FF47CE6EFF44CC6BFF43CB69FF43CA68FF43CA6BFF2AA330DE34BB3CDE64E3
              8DFF68E17DFF6EE884FF72ED89FF74F08BFF72F088FF6DED82FF65E879FF5BE0
              6EFF51D964FF47D25AFF40CD52FF3DCB4FFF48D770FF2DA836DE34BC3CDE5EDB
              86FF60D874FF67E07CFF6DE783FF71EC88FF74EF89FF73F089FF6EEE83FF66E9
              7BFF5CE271FF52DA66FF48D35BFF41CD53FF48D770FF2EA936DE32BA37DE4DD3
              75FF4ED475FF51D677FF53D87AFF54D97CFF68EB96FF74EF89FF73F089FF67EC
              95FF51D778FF4DD475FF4AD171FF47CE6DFF45CD6DFF2BA731DE29A02849289F
              275F289E275F289D275F279C265F2BAD2A9A54D97AFF70EB87FF73EF8AFF57DB
              7FFF2AA9299D2493245F2492235F2390235F238F235F238E2349000000000000
              00000000000000000000000000002490245D51D778FF6BE480FF70EA85FF56DB
              7EFF28A128630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002592245D4FD475FF63DB77FF6AE37EFF55D9
              7DFF29A228630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002593245D4CD272FF5BD26EFF62DA76FF53D7
              7BFF29A428630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002594255D4BD172FF59D782FF5FDD89FF51D6
              7AFF29A529630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002694254331B934D532BA38D532B938D530B6
              34D52AA629490000000000000000000000000000000000000000}
            Layout = blGlyphTop
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = True
          end
          object cxLabel7: TcxLabel
            Left = 197
            Top = 91
            Caption = #1044#1083#1103' '#1079#1072#1087#1080#1089#1080' '#1085#1072#1078#1084#1080#1090#1077' ENTER '#1074' '#1087#1086#1083#1077' '#1085#1072#1079#1074#1072#1085#1080#1103
            ParentFont = False
            Properties.LabelStyle = cxlsLowered
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clMaroon
            Style.Font.Height = -9
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object edPackingWeight: TcxCurrencyEdit
            Left = 197
            Top = 47
            EditValue = 0.000000000000000000
            Properties.AssignedValues.MinValue = True
            Properties.DecimalPlaces = 4
            Properties.DisplayFormat = ',0.0000'#39#39';-,0.0000'#39#39
            Properties.MaxLength = 8
            Properties.Nullable = False
            Properties.NullString = '0'
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 1
            Width = 207
          end
          object chbPackingDefault: TcxCheckBox
            Left = 171
            Top = 69
            Caption = #1086#1087#1088#1077#1076#1077#1083#1103#1090#1100' '#1076#1083#1103' '#1087#1091#1089#1090#1086#1075#1086' '#1090#1080#1087#1072' '#1082#1086#1088#1086#1073#1082#1080
            Properties.DisplayChecked = #1076#1072
            Properties.DisplayUnchecked = #1085#1077#1090
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            State = cbsGrayed
            TabOrder = 2
            Width = 246
          end
        end
        object grPacking: TcxGrid
          Left = 0
          Top = 111
          Width = 692
          Height = 391
          Align = alClient
          TabOrder = 1
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object grPackingV: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            FilterBox.Position = fpTop
            DataController.DataSource = DS_Packing
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.AutoDataSetFilter = True
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skCount
              end>
            DataController.Summary.SummaryGroups = <>
            FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1086#1074
            FilterRow.Visible = True
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnMoving = False
            OptionsView.CellEndEllipsis = True
            OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 25
            object grPackingVColumn1: TcxGridDBColumn
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
                end>
              Properties.ViewStyle = vsButtonsOnly
              Properties.OnButtonClick = grPackingVColumn1PropertiesButtonClick
              MinWidth = 30
              Options.Filtering = False
              Options.ShowEditButtons = isebAlways
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 30
            end
            object grPackingVPACKING: TcxGridDBColumn
              Caption = #1059#1087#1072#1082#1086#1074#1082#1072
              DataBinding.FieldName = 'PACKING'
            end
            object grPackingVNULLABLE: TcxGridDBColumn
              Caption = #1055#1086' '#1091#1084#1086#1083'.'
              DataBinding.FieldName = 'NULLABLE'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.Alignment = taCenter
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              HeaderAlignmentHorz = taCenter
              MinWidth = 74
              Options.HorzSizing = False
            end
            object grPackingVPACKING_WEIGHT: TcxGridDBColumn
              Caption = #1042#1077#1089' '#1091#1087#1072#1082'. ('#1082#1075')'
              DataBinding.FieldName = 'PACKING_WEIGHT'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.DecimalPlaces = 6
              Properties.DisplayFormat = ',0.000000;-,0.000000'
              HeaderAlignmentHorz = taCenter
              MinWidth = 120
              Options.HorzSizing = False
              Width = 120
            end
          end
          object grPackingL: TcxGridLevel
            GridView = grPackingV
          end
        end
      end
      object tsh_customs_coef: TcxTabSheet
        Caption = ' '#1058#1072#1084'. '#1082#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1099' '
        ImageIndex = 5
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 692
          Height = 111
          Align = alTop
          BevelOuter = bvNone
          BorderWidth = 2
          TabOrder = 0
          object Label21: TLabel
            Left = 10
            Top = 27
            Width = 59
            Height = 14
            Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
          end
          object Label22: TLabel
            Left = 10
            Top = 76
            Width = 54
            Height = 14
            Caption = #1047#1085#1072#1095#1077#1085#1080#1077
          end
          object Image11: TImage
            Left = 177
            Top = 75
            Width = 16
            Height = 16
            AutoSize = True
            Picture.Data = {
              07544269746D617036040000424D360400000000000036000000280000001000
              0000100000000100200000000000000400000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000C0C0C0FFC0C0C0FFBFBFBF84000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000C0C0
              C0FFD8D8D8FFD8D8D8FFC0C0C0FFBFBFBF840000000000000000000000000000
              0000000000000000000000000000000000000000000000000000C0C0C0FFD8D8
              D8FFF3F3F3FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF8400000000000000000000
              00000000000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3
              F3FFFDFDFDFF5374F7FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF84000000000000
              000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFD
              FDFF526BF8FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF840000
              0000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526B
              F8FF5967FAFF606AF9FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBF
              BF840000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF4D64F7FF5967
              FAFF606AF9FF606AF9FF606AF9FF5967FAFF5073F6FFF3F3F3FFD8D8D8FFC0C0
              C0FF00000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526BF8FF5967FAFF606A
              F9FF606AF9FF606AF9FF5967FAFF5574F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0
              C0FFC0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF5374F7FF5967FAFF606AF9FF606A
              F9FF606AF9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000
              0000C0C0C0FFF3F3F3FFFDFDFDFFFAFAFAFFD6E6FEFF5367F8FF5967FAFF606A
              F9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000
              0000C0C0C0FFFDFDFDFFFDFDFDFFFCFCFCFFFDFDFDFFD6E6FEFF5367F8FF5967
              FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF00000000000000000000
              0000C0C0C0FFFDFDFDFFE0E0E0FFCCCCCCFFE0E0E0FFFDFDFDFFD6E6FEFF587E
              F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000000000000000000000000000
              0000C0C0C0FFFDFDFDFFCDCDCDFFFFFFFFFFCDCDCDFFFDFDFDFFFDFDFDFFFDFD
              FDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000000000000000000000000000
              0000C0C0C0FFFDFDFDFFE2E2E2FFCECECEFFE0E0E0FFFDFDFDFFFDFDFDFFF3F3
              F3FFD8D8D8FFC0C0C0FF00000000000000000000000000000000000000000000
              0000C0C0C0FFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8
              D8FFC0C0C0FF0000000000000000000000000000000000000000000000000000
              0000BFBFBF84C0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
              C0FF000000000000000000000000000000000000000000000000000000000000
              0000}
            Transparent = True
          end
          object Image12: TImage
            Left = 177
            Top = 27
            Width = 16
            Height = 16
            AutoSize = True
            Picture.Data = {
              07544269746D617036040000424D360400000000000036000000280000001000
              0000100000000100200000000000000400000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000C0C0C0FFC0C0C0FFBFBFBF84000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000C0C0
              C0FFD8D8D8FFD8D8D8FFC0C0C0FFBFBFBF840000000000000000000000000000
              0000000000000000000000000000000000000000000000000000C0C0C0FFD8D8
              D8FFF3F3F3FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF8400000000000000000000
              00000000000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3
              F3FFFDFDFDFF5374F7FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF84000000000000
              000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFD
              FDFF526BF8FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF840000
              0000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526B
              F8FF5967FAFF606AF9FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBF
              BF840000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF4D64F7FF5967
              FAFF606AF9FF606AF9FF606AF9FF5967FAFF5073F6FFF3F3F3FFD8D8D8FFC0C0
              C0FF00000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526BF8FF5967FAFF606A
              F9FF606AF9FF606AF9FF5967FAFF5574F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0
              C0FFC0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF5374F7FF5967FAFF606AF9FF606A
              F9FF606AF9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000
              0000C0C0C0FFF3F3F3FFFDFDFDFFFAFAFAFFD6E6FEFF5367F8FF5967FAFF606A
              F9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000
              0000C0C0C0FFFDFDFDFFFDFDFDFFFCFCFCFFFDFDFDFFD6E6FEFF5367F8FF5967
              FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF00000000000000000000
              0000C0C0C0FFFDFDFDFFE0E0E0FFCCCCCCFFE0E0E0FFFDFDFDFFD6E6FEFF587E
              F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000000000000000000000000000
              0000C0C0C0FFFDFDFDFFCDCDCDFFFFFFFFFFCDCDCDFFFDFDFDFFFDFDFDFFFDFD
              FDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000000000000000000000000000
              0000C0C0C0FFFDFDFDFFE2E2E2FFCECECEFFE0E0E0FFFDFDFDFFFDFDFDFFF3F3
              F3FFD8D8D8FFC0C0C0FF00000000000000000000000000000000000000000000
              0000C0C0C0FFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8
              D8FFC0C0C0FF0000000000000000000000000000000000000000000000000000
              0000BFBFBF84C0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
              C0FF000000000000000000000000000000000000000000000000000000000000
              0000}
            Transparent = True
          end
          object Label23: TLabel
            Left = 10
            Top = 51
            Width = 39
            Height = 14
            Caption = #1057#1090#1088#1072#1085#1072
          end
          object Image13: TImage
            Left = 177
            Top = 51
            Width = 16
            Height = 16
            AutoSize = True
            Picture.Data = {
              07544269746D617036040000424D360400000000000036000000280000001000
              0000100000000100200000000000000400000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000C0C0C0FFC0C0C0FFBFBFBF84000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000C0C0
              C0FFD8D8D8FFD8D8D8FFC0C0C0FFBFBFBF840000000000000000000000000000
              0000000000000000000000000000000000000000000000000000C0C0C0FFD8D8
              D8FFF3F3F3FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF8400000000000000000000
              00000000000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3
              F3FFFDFDFDFF5374F7FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF84000000000000
              000000000000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFD
              FDFF526BF8FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBFBF840000
              0000000000000000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526B
              F8FF5967FAFF606AF9FF5967FAFF5367F8FFF3F3F3FFD8D8D8FFC0C0C0FFBFBF
              BF840000000000000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF4D64F7FF5967
              FAFF606AF9FF606AF9FF606AF9FF5967FAFF5073F6FFF3F3F3FFD8D8D8FFC0C0
              C0FF00000000C0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF526BF8FF5967FAFF606A
              F9FF606AF9FF606AF9FF5967FAFF5574F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0
              C0FFC0C0C0FFD8D8D8FFF3F3F3FFFDFDFDFF5374F7FF5967FAFF606AF9FF606A
              F9FF606AF9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000
              0000C0C0C0FFF3F3F3FFFDFDFDFFFAFAFAFFD6E6FEFF5367F8FF5967FAFF606A
              F9FF5967FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000
              0000C0C0C0FFFDFDFDFFFDFDFDFFFCFCFCFFFDFDFDFFD6E6FEFF5367F8FF5967
              FAFF5874F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF00000000000000000000
              0000C0C0C0FFFDFDFDFFE0E0E0FFCCCCCCFFE0E0E0FFFDFDFDFFD6E6FEFF587E
              F8FFFDFDFDFFF3F3F3FFD8D8D8FFC0C0C0FF0000000000000000000000000000
              0000C0C0C0FFFDFDFDFFCDCDCDFFFFFFFFFFCDCDCDFFFDFDFDFFFDFDFDFFFDFD
              FDFFF3F3F3FFD8D8D8FFC0C0C0FF000000000000000000000000000000000000
              0000C0C0C0FFFDFDFDFFE2E2E2FFCECECEFFE0E0E0FFFDFDFDFFFDFDFDFFF3F3
              F3FFD8D8D8FFC0C0C0FF00000000000000000000000000000000000000000000
              0000C0C0C0FFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFF3F3F3FFD8D8
              D8FFC0C0C0FF0000000000000000000000000000000000000000000000000000
              0000BFBFBF84C0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
              C0FF000000000000000000000000000000000000000000000000000000000000
              0000}
            Transparent = True
          end
          object cxLabel8: TcxLabel
            Left = 2
            Top = 2
            Align = alTop
            Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1085#1086#1074#1086#1081' '#1079#1072#1087#1080#1089#1080
            ParentFont = False
            Properties.LabelStyle = cxlsLowered
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object btnAddCustCoef: TcxButton
            Left = 417
            Top = 24
            Width = 88
            Height = 68
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100
            TabOrder = 3
            OnClick = btnAddCustCoefClick
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000208420442BA62FD82CA834D82CA633D82AA2
              2FD82492244A0000000000000000000000000000000000000000000000000000
              00000000000000000000000000002185205D44CC6CFF49D871FF49D871FF44CC
              6DFF249424630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002186215D44CC6AFF3ECB4FFF3DCB4EFF43CB
              6AFF249524630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002287215D47CF6DFF42CF55FF3ECB4FFF43CB
              6AFF259625630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002288225D4BD271FF4CD65FFF43CF55FF44CC
              6BFF25972563000000000000000000000000000000000000000024902346248F
              235C238E235C238D225C238B225C29A428984ED575FF58DE6CFF4DD760FF47CE
              6EFF28A1279D2083205F2082205F20811F5C1F801F5C1F7F1F4631B736DE52D7
              7AFF53D87AFF54D97BFF55DA7CFF54D97CFF64EA92FF63E778FF59DF6CFF55DF
              81FF47CE6EFF44CC6BFF43CB69FF43CA68FF43CA6BFF2AA330DE34BB3CDE64E3
              8DFF68E17DFF6EE884FF72ED89FF74F08BFF72F088FF6DED82FF65E879FF5BE0
              6EFF51D964FF47D25AFF40CD52FF3DCB4FFF48D770FF2DA836DE34BC3CDE5EDB
              86FF60D874FF67E07CFF6DE783FF71EC88FF74EF89FF73F089FF6EEE83FF66E9
              7BFF5CE271FF52DA66FF48D35BFF41CD53FF48D770FF2EA936DE32BA37DE4DD3
              75FF4ED475FF51D677FF53D87AFF54D97CFF68EB96FF74EF89FF73F089FF67EC
              95FF51D778FF4DD475FF4AD171FF47CE6DFF45CD6DFF2BA731DE29A02849289F
              275F289E275F289D275F279C265F2BAD2A9A54D97AFF70EB87FF73EF8AFF57DB
              7FFF2AA9299D2493245F2492235F2390235F238F235F238E2349000000000000
              00000000000000000000000000002490245D51D778FF6BE480FF70EA85FF56DB
              7EFF28A128630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002592245D4FD475FF63DB77FF6AE37EFF55D9
              7DFF29A228630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002593245D4CD272FF5BD26EFF62DA76FF53D7
              7BFF29A428630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002594255D4BD172FF59D782FF5FDD89FF51D6
              7AFF29A529630000000000000000000000000000000000000000000000000000
              00000000000000000000000000002694254331B934D532BA38D532B938D530B6
              34D52AA629490000000000000000000000000000000000000000}
            Layout = blGlyphTop
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = True
          end
          object cxLabel9: TcxLabel
            Left = 197
            Top = 93
            Caption = #1044#1083#1103' '#1079#1072#1087#1080#1089#1080' '#1085#1072#1078#1084#1080#1090#1077' ENTER '#1074' '#1087#1086#1083#1077' '#1085#1072#1079#1074#1072#1085#1080#1103
            ParentFont = False
            Properties.LabelStyle = cxlsLowered
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clMaroon
            Style.Font.Height = -9
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
          end
          object ed_cust_val: TcxCurrencyEdit
            Left = 197
            Top = 72
            EditValue = 0.000000000000000000
            Properties.AssignedValues.MinValue = True
            Properties.DecimalPlaces = 4
            Properties.DisplayFormat = ',0.0000'#39#39';-,0.0000'#39#39
            Properties.MaxLength = 8
            Properties.Nullable = False
            Properties.NullString = '0'
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 2
            Width = 207
          end
          object icb_categories: TcxImageComboBox
            Left = 197
            Top = 24
            Cursor = crHandPoint
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Properties.Items = <>
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 0
            Width = 207
          end
          object icb_countries: TcxImageComboBox
            Left = 197
            Top = 48
            Cursor = crHandPoint
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Properties.Items = <>
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 1
            Width = 207
          end
        end
        object grCustCoef: TcxGrid
          Left = 0
          Top = 111
          Width = 692
          Height = 391
          Align = alClient
          TabOrder = 1
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object grCustCoef_v: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            FilterBox.Position = fpTop
            DataController.DataSource = DM.ds_custcoef
            DataController.Filter.Options = [fcoCaseInsensitive]
            DataController.Filter.AutoDataSetFilter = True
            DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skCount
              end>
            DataController.Summary.SummaryGroups = <>
            FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1086#1074
            FilterRow.Visible = True
            OptionsBehavior.CellHints = True
            OptionsCustomize.ColumnMoving = False
            OptionsView.CellEndEllipsis = True
            OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
            OptionsView.ColumnAutoWidth = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 25
            object grCustCoef_vColumn1: TcxGridDBColumn
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
                end>
              Properties.ViewStyle = vsButtonsOnly
              Properties.OnButtonClick = grCustCoef_vColumn1PropertiesButtonClick
              MinWidth = 30
              Options.Filtering = False
              Options.ShowEditButtons = isebAlways
              Options.HorzSizing = False
              Options.Moving = False
              Options.Sorting = False
              Width = 30
            end
            object grCustCoef_vID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
            end
            object grCustCoef_vID_W: TcxGridDBColumn
              DataBinding.FieldName = 'ID_W'
              Visible = False
            end
            object grCustCoef_vNAME_CAT: TcxGridDBColumn
              Caption = #1058#1080#1087' ('#1088#1091#1089')'
              DataBinding.FieldName = 'NAME_CAT'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              Width = 140
            end
            object grCustCoef_vNAME_CAT_RU: TcxGridDBColumn
              Caption = #1058#1080#1087
              DataBinding.FieldName = 'NAME_CAT_RU'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
              Width = 140
            end
            object grCustCoef_vCOUNTRY: TcxGridDBColumn
              Caption = #1057#1090#1088#1072#1085#1072
              DataBinding.FieldName = 'COUNTRY'
              PropertiesClassName = 'TcxTextEditProperties'
              Properties.ReadOnly = True
            end
            object grCustCoef_vFS_COUNTRY_ID: TcxGridDBColumn
              DataBinding.FieldName = 'FS_COUNTRY_ID'
              Visible = False
            end
            object grCustCoef_vFO_VALUE: TcxGridDBColumn
              Caption = #1047#1085#1072#1095#1077#1085#1080#1077
              DataBinding.FieldName = 'FO_VALUE'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DecimalPlaces = 4
              Properties.DisplayFormat = ',0.0000;-,0.0000'
              HeaderAlignmentHorz = taCenter
              MinWidth = 100
              Width = 120
            end
          end
          object grCustCoef_l: TcxGridLevel
            GridView = grCustCoef_v
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 529
    Width = 694
    Height = 41
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      694
      41)
    object btn_close: TBitBtn
      Left = 537
      Top = 5
      Width = 150
      Height = 30
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1042#1099#1093#1086#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btn_closeClick
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
    end
    object btn_save: TBitBtn
      Left = 337
      Top = 5
      Width = 197
      Height = 30
      Cursor = crHandPoint
      Action = aSave
      Anchors = [akTop, akRight]
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' (Ctrl+Enter)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      TabOrder = 1
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
    end
  end
  object Clients_table: TTable
    TableName = 'c:\_WORK\delphi\StarLight\_'#1062#1074#1077#1090#1099' 2010\customs\dbf\1\DICT.dbf'
    Left = 8
    Top = 364
    object Clients_tablePD: TStringField
      FieldName = 'PD'
      Size = 25
    end
    object Clients_tablePDRU: TStringField
      FieldName = 'PDRU'
      Size = 25
    end
    object Clients_tableFULL: TStringField
      FieldName = 'FULL'
      Size = 25
    end
  end
  object Clients_table_ds: TDataSource
    DataSet = Clients_table
    Left = 8
    Top = 392
  end
  object aMain: TActionList
    Left = 8
    Top = 336
    object aClose: TAction
      Caption = 'aClose'
      ShortCut = 27
      OnExecute = aCloseExecute
    end
    object aSave: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' (Ctrl+Enter)'
      ShortCut = 16397
      OnExecute = aSaveExecute
    end
    object aFind: TAction
      Caption = 'aFind'
      ShortCut = 119
      OnExecute = aFindExecute
    end
  end
  object CDS_Packing: TOraQuery
    SQLDelete.Strings = (
      'delete from customs_packing WHERE ID = :OLD_ID')
    SQLUpdate.Strings = (
      
        'update customs_packing set packing=:PACKING, nullable=:NULLABLE,' +
        ' packing_weight=:PACKING_WEIGHT'
      'WHERE ID = :OLD_ID')
    SQLRefresh.Strings = (
      
        'select id, packing, nullable, packing_weight from customs_packin' +
        'g '
      'WHERE ID = :OLD_ID')
    SQL.Strings = (
      
        'select id, packing, nullable, packing_weight, id_dep from custom' +
        's_packing order by packing')
    FetchAll = True
    RefreshOptions = [roAfterUpdate]
    FilterOptions = [foCaseInsensitive]
    Left = 552
    Top = 48
    object CDS_PackingID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object CDS_PackingPACKING: TStringField
      FieldName = 'PACKING'
    end
    object CDS_PackingNULLABLE: TIntegerField
      FieldName = 'NULLABLE'
    end
    object CDS_PackingPACKING_WEIGHT: TFloatField
      FieldName = 'PACKING_WEIGHT'
    end
    object CDS_PackingID_DEP: TIntegerField
      FieldName = 'ID_DEP'
    end
  end
  object DS_Packing: TDataSource
    DataSet = CDS_Packing
    Left = 552
    Top = 80
  end
end
