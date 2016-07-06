object frmSupplierReport: TfrmSupplierReport
  Left = 0
  Top = 0
  Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
  ClientHeight = 632
  ClientWidth = 884
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grSupplierReport: TcxGrid
    Left = 0
    Top = 0
    Width = 884
    Height = 585
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.Kind = lfOffice11
    object grSupplierReport_v: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Position = fpTop
      DataController.DataSource = OraDataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0.00'
          Kind = skSum
          Column = grSupplierReport_vColumn2
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = grSupplierReport_vColumn3
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = grSupplierReport_vColumn4
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = grSupplierReport_vColumn5
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = grSupplierReport_vColumn6
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = grSupplierReport_vColumn7
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = grSupplierReport_vColumn8
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = grSupplierReport_vColumn9
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1092#1080#1083#1100#1090#1088#1086#1074
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
      object grSupplierReport_vColumn1: TcxGridDBColumn
        AlternateCaption = #1053#1072#1079#1074#1072#1085#1080#1077
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'S_NAME_RU'
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 157
      end
      object grSupplierReport_vColumn2: TcxGridDBColumn
        AlternateCaption = #1055#1088#1080#1093#1086#1076
        Caption = #1055#1088#1080#1093#1086#1076
        DataBinding.FieldName = 'PRIHOD'
        HeaderAlignmentHorz = taCenter
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 90
      end
      object grSupplierReport_vColumn3: TcxGridDBColumn
        AlternateCaption = #1055#1088#1086#1076#1072#1078#1072
        Caption = #1055#1088#1086#1076#1072#1078#1072
        DataBinding.FieldName = 'PRODAZA'
        HeaderAlignmentHorz = taCenter
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 90
      end
      object grSupplierReport_vColumn4: TcxGridDBColumn
        AlternateCaption = #1054#1092#1080#1089
        Caption = #1054#1092#1080#1089
        DataBinding.FieldName = 'OFFICE'
        HeaderAlignmentHorz = taCenter
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 80
      end
      object grSupplierReport_vColumn5: TcxGridDBColumn
        AlternateCaption = #1059#1094#1077#1085#1082#1072
        Caption = #1059#1094#1077#1085#1082#1072
        DataBinding.FieldName = 'UCENKA'
        HeaderAlignmentHorz = taCenter
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 80
      end
      object grSupplierReport_vColumn6: TcxGridDBColumn
        AlternateCaption = #1057#1087#1080#1089#1072#1085#1080#1077
        Caption = #1057#1087#1080#1089#1072#1085#1080#1077
        DataBinding.FieldName = 'SPISANIE'
        HeaderAlignmentHorz = taCenter
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 80
      end
      object grSupplierReport_vColumn7: TcxGridDBColumn
        AlternateCaption = #1048#1085#1074#1077#1085#1090
        Caption = #1048#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'INVENT'
        HeaderAlignmentHorz = taCenter
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 110
      end
      object grSupplierReport_vColumn8: TcxGridDBColumn
        Caption = #1050#1083#1077#1081#1084
        DataBinding.FieldName = 'CLAIM'
        HeaderAlignmentHorz = taCenter
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 80
      end
      object grSupplierReport_vColumn9: TcxGridDBColumn
        Caption = #1055#1077#1088#1077#1086#1094#1077#1085#1082#1072
        DataBinding.FieldName = 'REPRICE'
        HeaderAlignmentHorz = taCenter
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 80
      end
    end
    object grSupplierReport_l: TcxGridLevel
      GridView = grSupplierReport_v
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 585
    Width = 884
    Height = 47
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      884
      47)
    object btnExport: TcxButton
      Left = 622
      Top = 8
      Width = 126
      Height = 30
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnExportClick
      Colors.Default = clBtnFace
      Colors.Normal = clBtnFace
      Colors.Hot = clSkyBlue
      Colors.Pressed = clSkyBlue
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF96909696909696909696909696909696
        9096969096969096969096969096969096969096FF00FFFF00FFFF00FFFF00FF
        969096FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF969096FF00FFFF00FFFF00FFFF00FF969096FFFFFFEFEFEFEEEEEEEDEDEDEC
        ECECEBEBEBEAEAEAE9E9E9E8E8E8FFFFFF969096FF00FFFF00FFFF00FFFF00FF
        969096FFFFFFF1F1F1F0F0F0EFEFEFEEEEEEEDEDEDECECECEBEBEBEAEAEAFFFF
        FF969096FF00FFFF00FFFF00FFFF00FF969096FFFFFFF2F2F2F1F1F1F1F1F1F0
        F0F0EFEFEFEEEEEEEDEDEDECECECFFFFFF969096FF00FFFF00FFFF00FFFF00FF
        969096FFFFFFF4F4F4F3F3F3F2F2F2286074307AB42A75B2EFEFEFEEEEEEFFFF
        FF969096FF00FFFF00FFFF00FFFF00FF969096FFFFFFF6F6F6F5F5F5F4F4F42E
        77B2C0F0FF39BCFE2975B2F0F0F0FFFFFF969096FF00FFFF00FFFF00FFFF00FF
        969096FFFFFFF8F8F8F7F7F7F6F6F63179B3C0F0FF5CD4FF3EBFFE2975B2FFFF
        FF969096FF00FFFF00FFFF00FFFF00FF969096FFFFFFFAFAFAF9F9F9F8F8F8F7
        F7F73078B3C0F0FF63D9FF45C4FE2975B2969096FF00FFFF00FFFF00FFFF00FF
        969096FFFFFFFBFBFBFAFAFAFAFAFAF9F9F9F8F8F83078B3C0F0FF6ADEFF4CC9
        FE2975B2FF00FFFF00FFFF00FFFF00FF969096FFFFFFFDFDFDFCFCFCFBFBFBFA
        FAFAFAFAFA9690962D75B0C0F0FF70E2FF54CEFE2973B3FF00FFFF00FFFF00FF
        969096FFFFFFFFFFFFFEFEFEFDFDFDFCFCFCFBFBFB969096E1E1E12F77B2C0F0
        FF74E4FF5BD3FE2B74B3FF00FFFF00FF969096FFFFFFFFFFFFFFFFFFFEFEFEFE
        FEFEFDFDFD969096B7B1B796909632659FC0F0FF76E6FF2B78B4FF00FFFF00FF
        969096969096969096969096969096969096969096969096969096FF00FFFF00
        FF2B5E9E2A76B2FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
    end
    object BitBtn_Cancel: TcxButton
      Left = 751
      Top = 8
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
  end
  object OraQuery1: TOraQuery
    LocalUpdate = True
    Session = DM.OraSession
    SQL.Strings = (
      'begin'
      
        '  creator.STORE_PKG.get_supplier_report(:v_id_dep, :DDATE_BEGIN,' +
        ' :DDATE_END, :v_office, :v_service, :p_cursor);'
      'end;')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 512
    Top = 48
    ParamData = <
      item
        DataType = ftFloat
        Name = 'v_id_dep'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DDATE_BEGIN'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DDATE_END'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'v_office'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'v_service'
      end
      item
        DataType = ftCursor
        Name = 'p_cursor'
        Value = 'Object'
      end>
    object OraQuery1S_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Size = 150
    end
    object OraQuery1PRIHOD: TFloatField
      FieldName = 'PRIHOD'
    end
    object OraQuery1PRODAZA: TFloatField
      FieldName = 'PRODAZA'
    end
    object OraQuery1OFFICE: TFloatField
      FieldName = 'OFFICE'
    end
    object OraQuery1UCENKA: TFloatField
      FieldName = 'UCENKA'
    end
    object OraQuery1SPISANIE: TFloatField
      FieldName = 'SPISANIE'
    end
    object OraQuery1INVENT: TFloatField
      FieldName = 'INVENT'
    end
    object OraQuery1CLAIM: TFloatField
      FieldName = 'CLAIM'
    end
    object OraQuery1REPRICE: TFloatField
      FieldName = 'REPRICE'
    end
  end
  object OraDataSource1: TOraDataSource
    DataSet = OraQuery1
    Left = 584
    Top = 48
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
    Left = 448
    Top = 48
  end
end
