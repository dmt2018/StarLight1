object frmCashSettings: TfrmCashSettings
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1050#1072#1089#1089#1072', '#1050#1072#1089#1089#1086#1074#1099#1081' '#1089#1074#1086#1076' :: '#1053#1072#1089#1090#1088#1086#1081#1082#1080
  ClientHeight = 397
  ClientWidth = 627
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 627
    Height = 36
    Align = alTop
    Caption = #1054#1090#1084#1077#1090#1090#1077' '#1082#1072#1089#1089#1086#1074#1099#1077' '#1086#1087#1077#1088#1072#1094#1080#1080' '#1076#1083#1103' '#1088#1072#1089#1095#1077#1090#1072' '#1076#1074#1080#1078#1077#1085#1080#1103' '#1087#1086' '#1082#1072#1089#1089#1072#1084
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object pnlBody: TPanel
    Left = 0
    Top = 36
    Width = 627
    Height = 325
    Align = alClient
    TabOrder = 2
    object Bevel1: TBevel
      Left = 311
      Top = 6
      Width = 9
      Height = 313
      Shape = bsLeftLine
    end
    object Label1: TLabel
      Left = 104
      Top = 6
      Width = 108
      Height = 14
      Caption = #1054#1087#1077#1088#1072#1094#1080#1080' '#1087#1088#1080#1093#1086#1076#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 424
      Top = 6
      Width = 106
      Height = 14
      Caption = #1054#1087#1077#1088#1072#1094#1080#1080' '#1088#1072#1089#1093#1086#1076#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object grIN: TcxGrid
      Left = 5
      Top = 26
      Width = 300
      Height = 293
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = pmMenuIN
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      object grINDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object grINLevel: TcxGridLevel
        GridView = viewIN
      end
    end
    object grOUT: TcxGrid
      Left = 319
      Top = 26
      Width = 300
      Height = 293
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = pmMenuOut
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      object cxGridDBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object grOUTLevel: TcxGridLevel
        GridView = viewOUT
      end
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 361
    Width = 627
    Height = 36
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      627
      36)
    object btnClose: TcxButton
      Left = 473
      Top = 6
      Width = 145
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
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
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 8
    Top = 328
    object viewIN: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsIn
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = #1085#1077#1090' '#1076#1072#1085#1085#1099#1093
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderHeight = 20
      object viewININOUT: TcxGridDBColumn
        DataBinding.FieldName = 'CASH_IN'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.DisplayChecked = #1076#1072
        Properties.DisplayUnchecked = #1085#1077#1090
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        MinWidth = 40
        Options.HorzSizing = False
        Options.Moving = False
        Width = 40
        IsCaptionAssigned = True
      end
      object viewINT_SHORT: TcxGridDBColumn
        Caption = #1054#1087#1077#1088#1072#1094#1080#1103
        DataBinding.FieldName = 'T_SHORT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.HorzSizing = False
        Options.Moving = False
        Width = 70
      end
      object viewINT_LONG: TcxGridDBColumn
        DataBinding.FieldName = 'T_LONG'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        IsCaptionAssigned = True
      end
      object viewINID_OPERATIONS: TcxGridDBColumn
        DataBinding.FieldName = 'ID_OPERATIONS'
        Visible = False
      end
      object viewINT_TYPE: TcxGridDBColumn
        DataBinding.FieldName = 'T_TYPE'
        Visible = False
      end
      object viewINDOLG: TcxGridDBColumn
        DataBinding.FieldName = 'DOLG'
        Visible = False
      end
      object viewINID_OFFICE: TcxGridDBColumn
        DataBinding.FieldName = 'ID_OFFICE'
        Visible = False
      end
      object viewINDATE_CHANGE: TcxGridDBColumn
        DataBinding.FieldName = 'DATE_CHANGE'
        Visible = False
      end
    end
    object viewOUT: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsOut
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = #1085#1077#1090' '#1076#1072#1085#1085#1099#1093
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object viewOUTINOUT: TcxGridDBColumn
        DataBinding.FieldName = 'CASH_OUT'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Properties.DisplayChecked = #1076#1072
        Properties.DisplayUnchecked = #1085#1077#1090
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 2
        Properties.ValueUnchecked = 0
        HeaderAlignmentHorz = taCenter
        MinWidth = 40
        Options.HorzSizing = False
        Options.Moving = False
        Width = 40
        IsCaptionAssigned = True
      end
      object viewOUTT_SHORT: TcxGridDBColumn
        Caption = #1054#1087#1077#1088#1072#1094#1080#1103
        DataBinding.FieldName = 'T_SHORT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.HorzSizing = False
        Options.Moving = False
        Width = 70
      end
      object viewOUTT_LONG: TcxGridDBColumn
        DataBinding.FieldName = 'T_LONG'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.ReadOnly = True
        IsCaptionAssigned = True
      end
      object viewOUTID_OPERATIONS: TcxGridDBColumn
        DataBinding.FieldName = 'ID_OPERATIONS'
        Visible = False
      end
      object viewOUTT_TYPE: TcxGridDBColumn
        DataBinding.FieldName = 'T_TYPE'
        Visible = False
      end
      object viewOUTDOLG: TcxGridDBColumn
        DataBinding.FieldName = 'DOLG'
        Visible = False
      end
      object viewOUTID_OFFICE: TcxGridDBColumn
        DataBinding.FieldName = 'ID_OFFICE'
        Visible = False
      end
      object viewOUTDATE_CHANGE: TcxGridDBColumn
        DataBinding.FieldName = 'DATE_CHANGE'
        Visible = False
      end
    end
  end
  object cdsIN: TOraQuery
    SQLUpdate.Strings = (
      
        'update operations set cash_in =:cash_in where id_operations = :i' +
        'd_operations')
    SQLRefresh.Strings = (
      'select * from operations where id_operations = :id_operations')
    SQL.Strings = (
      'select a.t_short, a.t_long, a.id_operations, a.t_type, a.dolg, '
      '       a.id_office, a.date_change, cash_in'
      'from operations a'
      'where t_type = 0')
    Left = 40
    Top = 328
    object cdsINT_SHORT: TStringField
      FieldName = 'T_SHORT'
      Required = True
      Size = 3
    end
    object cdsINT_LONG: TStringField
      FieldName = 'T_LONG'
      Required = True
      Size = 50
    end
    object cdsINID_OPERATIONS: TIntegerField
      FieldName = 'ID_OPERATIONS'
      Required = True
    end
    object cdsINT_TYPE: TIntegerField
      FieldName = 'T_TYPE'
      Required = True
    end
    object cdsINDOLG: TIntegerField
      FieldName = 'DOLG'
    end
    object cdsINID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object cdsINDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object cdsINCASH_IN: TIntegerField
      FieldName = 'CASH_IN'
      Required = True
    end
  end
  object cdsOut: TOraQuery
    SQLUpdate.Strings = (
      
        'update operations set cash_out =:cash_out where id_operations = ' +
        ':id_operations')
    SQLRefresh.Strings = (
      'select * from operations where id_operations = :id_operations')
    SQL.Strings = (
      'select a.t_short, a.t_long, a.id_operations, a.t_type, a.dolg,'
      '       a.id_office, a.date_change, cash_out'
      'from operations a'
      'where t_type = 0')
    Left = 72
    Top = 328
    object cdsOutT_SHORT: TStringField
      FieldName = 'T_SHORT'
      Required = True
      Size = 3
    end
    object cdsOutT_LONG: TStringField
      FieldName = 'T_LONG'
      Required = True
      Size = 50
    end
    object cdsOutID_OPERATIONS: TIntegerField
      FieldName = 'ID_OPERATIONS'
      Required = True
    end
    object cdsOutT_TYPE: TIntegerField
      FieldName = 'T_TYPE'
      Required = True
    end
    object cdsOutDOLG: TIntegerField
      FieldName = 'DOLG'
    end
    object cdsOutID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object cdsOutDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object cdsOutCASH_OUT: TIntegerField
      FieldName = 'CASH_OUT'
      Required = True
    end
  end
  object dsIn: TOraDataSource
    DataSet = cdsIN
    Left = 104
    Top = 328
  end
  object dsOut: TOraDataSource
    DataSet = cdsOut
    Left = 136
    Top = 328
  end
  object pmMenuIN: TPopupMenu
    Left = 248
    Top = 368
    object N1: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1074#1089#1077
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1059#1073#1088#1072#1090#1100' '#1074#1089#1077
      OnClick = N2Click
    end
  end
  object pmMenuOut: TPopupMenu
    Left = 288
    Top = 368
    object MenuItem1: TMenuItem
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1074#1089#1077
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = #1059#1073#1088#1072#1090#1100' '#1074#1089#1077
      OnClick = MenuItem2Click
    end
  end
end
