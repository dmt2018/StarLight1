object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
  ClientHeight = 632
  ClientWidth = 842
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 2
    Top = 128
    Width = 839
    Height = 471
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.Kind = lfOffice11
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Position = fpTop
      DataController.DataSource = OraDataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1092#1080#1083#1100#1090#1088#1086#1074
      FilterRow.Visible = True
      OptionsBehavior.CellHints = True
      OptionsCustomize.ColumnMoving = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.HeaderEndEllipsis = True
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        AlternateCaption = #1053#1072#1079#1074#1072#1085#1080#1077
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'S_NAME_RU'
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 157
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        AlternateCaption = #1055#1088#1080#1093#1086#1076
        Caption = #1055#1088#1080#1093#1086#1076
        DataBinding.FieldName = 'PRIHOD'
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 103
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        AlternateCaption = #1055#1088#1086#1076#1072#1078#1072
        Caption = #1055#1088#1086#1076#1072#1078#1072
        DataBinding.FieldName = 'PRODAZA'
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 92
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        AlternateCaption = #1054#1092#1080#1089
        Caption = #1054#1092#1080#1089
        DataBinding.FieldName = 'OFFICE'
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 86
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        AlternateCaption = #1059#1094#1077#1085#1082#1072
        Caption = #1059#1094#1077#1085#1082#1072
        DataBinding.FieldName = 'UCENKA'
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 83
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        AlternateCaption = #1057#1087#1080#1089#1072#1085#1080#1077
        Caption = #1057#1087#1080#1089#1072#1085#1080#1077
        DataBinding.FieldName = 'SPISANIE'
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 80
      end
      object cxGrid1DBTableView1Column7: TcxGridDBColumn
        AlternateCaption = #1048#1085#1074#1077#1085#1090
        Caption = #1048#1085#1074#1077#1085#1090
        DataBinding.FieldName = 'INVENT'
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 79
      end
      object cxGrid1DBTableView1Column8: TcxGridDBColumn
        DataBinding.FieldName = 'CLAIM'
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 75
      end
      object cxGrid1DBTableView1Column9: TcxGridDBColumn
        DataBinding.FieldName = 'REPRICE'
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Width = 76
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton1: TcxButton
    Left = 16
    Top = 40
    Width = 193
    Height = 57
    Cursor = crHandPoint
    Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = cxButton1Click
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
  object cxButton2: TcxButton
    Left = 648
    Top = 40
    Width = 177
    Height = 57
    Cursor = crHandPoint
    Caption = #1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = cxButton2Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF96909696909696909696909696909696
      9096969096969096969096969096969096969096FF00FFFF00FFFF00FFFF00FF
      969096FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF969096FF00FFFF00FFFF00FFFF00FF969096FFFFFF1D621D1C5E1CEDEDEDEC
      ECECEBEBEBEAEAEAE9E9E9E8E8E8FFFFFF969096FF00FFFF00FF1F421F214723
      135915226723106111CFFFE310711FEEEEEEEDEDEDECECECEBEBEBEAEAEAFFFF
      FF969096FF00FFFF00FF1C7021AFFFD7A6FFCCA4FFCAA6FFCB4CF08D96FFBD1B
      7E31DEDEDEEEEEEEEDEDEDECECECFFFFFF969096FF00FFFF00FF1B6D2051F691
      3CEB822DE8762AE87532EA7A29EA757FFFB215701DC9D8CDEFEFEFEEEEEEFFFF
      FF969096FF00FFFF00FF1B6C2088FFB670F5A25AF19344EE8637EA7D21E9709B
      FFC315701DCAD8CEF1F1F1F0F0F0FFFFFF969096FF00FFFF00FF1C7022FFFFFF
      EDFFFBE5FFF4DDFFEF7CF7ACC1FFDB1D7E33E2E3E2F3F3F3F2F2F2F1F1F1FFFF
      FF969096FF00FFFF00FF1F421F214722135913226722106110FFFFFF117220F7
      F7F7F6F6F6F5F5F5F4F4F4F3F3F3F5F5F5969096FF00FFFF00FFFF00FFFF00FF
      969096FFFFFF1E631E1E601EFAFAFAF9F9F9F8F8F89690969690969690969690
      96969096FF00FFFF00FFFF00FFFF00FF969096FFFFFFFDFDFDFCFCFCFBFBFBFA
      FAFAFAFAFA969096E1E1E1E1E1E1B7B1B7969096FF00FFFF00FFFF00FFFF00FF
      969096FFFFFFFFFFFFFEFEFEFDFDFDFCFCFCFBFBFB969096E1E1E1B7B1B79690
      96FF00FFFF00FFFF00FFFF00FFFF00FF969096FFFFFFFFFFFFFFFFFFFEFEFEFE
      FEFEFDFDFD969096B7B1B7969096FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      969096969096969096969096969096969096969096969096969096FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = True
  end
  object OraQuery1: TOraQuery
    LocalUpdate = True
    Session = DM.OraSession
    SQL.Strings = (
      'begin'
      
        '  creator.STORE_PKG.get_supplier_report(:v_id_dep, :DDATE_BEGIN,' +
        ' :DDATE_END, :v_office, :p_cursor);'
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
        DataType = ftCursor
        Name = 'p_cursor'
        Value = ''
      end>
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
