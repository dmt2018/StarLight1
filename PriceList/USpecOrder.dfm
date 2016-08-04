object frmSpecOrder: TfrmSpecOrder
  Left = 0
  Top = 0
  Caption = #1057#1087#1077#1094'.'#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1103
  ClientHeight = 411
  ClientWidth = 884
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBottom: TPanel
    Left = 0
    Top = 371
    Width = 884
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clSkyBlue
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 2
    ExplicitWidth = 852
    DesignSize = (
      884
      40)
    object BitBtn_Cancel: TcxButton
      Left = 738
      Top = 4
      Width = 140
      Height = 30
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = ' '#1047#1072#1082#1088#1099#1090#1100' '
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
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      Spacing = 6
      ExplicitLeft = 706
    end
    object btn_del: TcxButton
      Left = 3
      Top = 4
      Width = 140
      Height = 30
      Cursor = crHandPoint
      Cancel = True
      Caption = ' '#1059#1076#1072#1083#1080#1090#1100' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btn_delClick
      Colors.Default = clBtnFace
      Colors.Normal = clBtnFace
      Colors.Hot = clSkyBlue
      Colors.Pressed = clSkyBlue
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000949090D79C9898F59A9696F5999595F5989494F5C9C7C7FA514F8CFB4140
        9EFDC7C6C6FA949090F5C7C5C5FA3F3E92FD464482EDFFFFFF78000000000000
        00009B9797EFFAF6F4FFF7EFECFFF6EDEAFFFAF5F3FF7975B1FF5555D3FF6464
        E1FF5250AEFFF9F3F0FF5451A7FF4646CFFF4343C9FF21218199000000000000
        00009D9898EFF9F3F0FFF5E8E3FFF3E5E0FFF8F0EDFF5A56B1FF5B5BD8FF7070
        E6FF6969E8FF3E3DB8FF5151D8FF4444CDFF4646CEFF282897C5000000000000
        00009E9A9AEFFAF5F3FFF6ECE8FFF5EAE5FFF4E7E2FFF9F1EEFF5955B2FF6565
        E3FF7777F0FF6C6CEDFF5656DBFF4848D0FF3D3C98FAFFFFFF78000000000000
        00009F9B9BEFFAF6F4FFF8EFECFFF7EEEAFFF6EBE7FFF5E9E4FFF9F2EFFF4241
        C0FF7575F1FF6D6DEBFF5959DFFF3C3BB6FFC6C4C4F300000000000000000000
        0000A09C9CEFFAF6F4FFF9F1EEFFF8F0EDFFF8EFEBFFFBF5F3FF5A57B5FF6565
        E3FF7777F0FF6C6CEDFF5656DBFF4848D1FF3D3C9CFBFFFFFF78000000000000
        0000A19D9DEFFAF6F4FFF9F1EEFFF9F1EEFFFCF7F5FF5E5CBAFF5B5BD9FF7070
        E6FF6969E9FF4141C0FF5252D9FF4444CDFF4646D0FF2A2AA0C9000000000000
        0000A39E9EEFFAF6F4FFF9F1EEFFF9F1EEFFFCF8F6FF7C79BCFF5656D7FF6464
        E2FF5A58BBFFFAF4F2FF5956B4FF4747D2FF4444CDFF23238B92000000000000
        0000A49F9FEFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFFCF8F6FF7C79BCFF5E5C
        BEFFFBF7F5FFF8EFEBFFFBF5F3FF5C5BB7FF514F8FF6FFFFFF78000000000000
        0000A5A0A0EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFFCF8F6FFFCF8
        F6FFF9F1EEFFF9F0EDFFF8F0ECFFFCFAF9FFC9C7C7F300000000000000000000
        0000A6A1A1EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
        EEFFF9F1EEFFF8F0EDFFF8F0EDFFFAF6F4FF959191E900000000000000000000
        0000A6A2A2EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
        EEFFF8F0EDFFEEE6E3FFE4DCDAFFE7E4E2FF928E8EE900000000000000000000
        0000A7A3A3EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
        EEFFF7EFECFFA5A0A0FF9E9A9AFF999595FF938E8EE100000000000000000000
        0000A8A3A3EFFAF6F4FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
        EEFFF7EFECFFA19D9DFFD3D1D2FF9A9696EE9C98983400000000000000000000
        0000A9A4A4EFFBF9F8FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6
        F4FFFAF5F4FFA19C9CFF9C9898EE9D9999340000000000000000000000000000
        0000A49F9FD2A9A4A4EFA8A3A3EFA7A3A3EFA6A2A2EFA6A1A1EFA5A0A0EFA49F
        9FEFA39E9EEF9A9595E1A39E9E34000000000000000000000000}
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      Spacing = 6
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 884
    Height = 40
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 852
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
      Width = 121
    end
  end
  object grSpecOrders: TcxGrid
    Left = 0
    Top = 40
    Width = 884
    Height = 331
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    ExplicitWidth = 852
    object grSpecOrdersV: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DS_SpecOrder
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded, dcoImmediatePost]
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
      OptionsView.HeaderEndEllipsis = True
      object grSpecOrdersVIS_ACTIVE: TcxGridDBColumn
        Caption = '::'
        DataBinding.FieldName = 'IS_ACTIVE'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.DisplayChecked = #1076#1072
        Properties.DisplayUnchecked = #1085#1077#1090
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        MinWidth = 30
        Options.HorzSizing = False
        Options.Moving = False
        Width = 30
      end
      object grSpecOrdersVF_TYPE: TcxGridDBColumn
        Caption = #1058#1080#1087
        DataBinding.FieldName = 'F_TYPE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 150
      end
      object grSpecOrdersVF_SUB_TYPE: TcxGridDBColumn
        Caption = #1055#1086#1076#1090#1080#1087
        DataBinding.FieldName = 'F_SUB_TYPE'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 150
      end
      object grSpecOrdersVCOMPILED_NAME_OTDEL: TcxGridDBColumn
        Caption = #1058#1086#1074#1072#1088
        DataBinding.FieldName = 'COMPILED_NAME_OTDEL'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 250
      end
      object grSpecOrdersVCOLOUR: TcxGridDBColumn
        Caption = #1062#1074#1077#1090
        DataBinding.FieldName = 'COLOUR'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 100
      end
      object grSpecOrdersVCOUNTRY: TcxGridDBColumn
        Caption = #1057#1090#1088#1072#1085#1072
        DataBinding.FieldName = 'COUNTRY'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 100
      end
      object grSpecOrdersVREMARKS: TcxGridDBColumn
        DataBinding.FieldName = 'REMARKS'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        Width = 150
      end
      object grSpecOrdersVSTART_DATE: TcxGridDBColumn
        Caption = #1057#1090#1072#1088#1090
        DataBinding.FieldName = 'START_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ImmediatePost = True
        Properties.SaveTime = False
        Properties.ShowTime = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 80
        Options.HorzSizing = False
        Width = 80
      end
      object grSpecOrdersVEND_DATE: TcxGridDBColumn
        Caption = #1060#1080#1085#1080#1096
        DataBinding.FieldName = 'END_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ImmediatePost = True
        Properties.SaveTime = False
        Properties.ShowTime = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 80
        Options.HorzSizing = False
        Width = 80
      end
      object grSpecOrdersVPRICE: TcxGridDBColumn
        Caption = #1062#1077#1085#1072
        DataBinding.FieldName = 'PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = False
        MinWidth = 65
        Options.HorzSizing = False
        Width = 65
      end
      object grSpecOrdersVCUR_PRICE: TcxGridDBColumn
        Caption = #1058#1077#1082'. '#1094#1077#1085#1072
        DataBinding.FieldName = 'CUR_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00;-,0.00'
        Properties.ReadOnly = True
        MinWidth = 65
        Options.HorzSizing = False
        Width = 65
      end
      object grSpecOrdersVN_ID: TcxGridDBColumn
        DataBinding.FieldName = 'N_ID'
        Visible = False
      end
      object grSpecOrdersVSPEC_ORDERS_ID: TcxGridDBColumn
        DataBinding.FieldName = 'SPEC_ORDERS_ID'
        Visible = False
      end
      object grSpecOrdersVRUS_MARKS: TcxGridDBColumn
        DataBinding.FieldName = 'RUS_MARKS'
        Visible = False
        Width = 150
      end
      object grSpecOrdersVPRICE_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'PRICE_DATE'
        Visible = False
      end
    end
    object grSpecOrdersL: TcxGridLevel
      GridView = grSpecOrdersV
    end
  end
  object CDS_SpecOrder: TOraQuery
    SQLDelete.Strings = (
      'delete from spec_orders WHERE SPEC_ORDERS_ID = :SPEC_ORDERS_ID')
    SQLUpdate.Strings = (
      
        'update spec_orders set price = :price, start_date = :start_date,' +
        ' end_date = :end_date, is_active = :is_active where SPEC_ORDERS_' +
        'ID = :SPEC_ORDERS_ID')
    SQLRefresh.Strings = (
      'WHERE SPEC_ORDERS_ID = :SPEC_ORDERS_ID')
    SQL.Strings = (
      'begin'
      
        '  price_pkg.get_spec_orders(:V_ID_DEP, :V_D_B, :V_D_E, :CURSOR_)' +
        ';'
      'end;')
    FetchAll = True
    Left = 40
    Top = 112
    ParamData = <
      item
        DataType = ftFloat
        Name = 'V_ID_DEP'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'V_D_B'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'V_D_E'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object CDS_SpecOrderSPEC_ORDERS_ID: TFloatField
      FieldName = 'SPEC_ORDERS_ID'
    end
    object CDS_SpecOrderN_ID: TFloatField
      FieldName = 'N_ID'
    end
    object CDS_SpecOrderSTART_DATE: TDateTimeField
      FieldName = 'START_DATE'
    end
    object CDS_SpecOrderEND_DATE: TDateTimeField
      FieldName = 'END_DATE'
    end
    object CDS_SpecOrderIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
    end
    object CDS_SpecOrderPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object CDS_SpecOrderCUR_PRICE: TFloatField
      FieldName = 'CUR_PRICE'
    end
    object CDS_SpecOrderPRICE_DATE: TDateTimeField
      FieldName = 'PRICE_DATE'
    end
    object CDS_SpecOrderCOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 500
    end
    object CDS_SpecOrderF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Size = 50
    end
    object CDS_SpecOrderF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Size = 50
    end
    object CDS_SpecOrderREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 256
    end
    object CDS_SpecOrderRUS_MARKS: TStringField
      FieldName = 'RUS_MARKS'
      Size = 4000
    end
    object CDS_SpecOrderCOLOUR: TStringField
      FieldName = 'COLOUR'
      Size = 50
    end
    object CDS_SpecOrderCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
  end
  object DS_SpecOrder: TOraDataSource
    DataSet = CDS_SpecOrder
    Left = 40
    Top = 144
  end
end
