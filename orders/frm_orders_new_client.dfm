object orders_new_client: Torders_new_client
  Left = 578
  Top = 211
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' '#1053#1086#1074#1099#1081' '#1079#1072#1082#1072#1079
  ClientHeight = 397
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label8: TLabel
    Left = 0
    Top = 0
    Width = 515
    Height = 25
    Align = alTop
    AutoSize = False
    Caption = '  '#1042#1099#1073#1077#1088#1080#1090#1077' '#1082#1083#1080#1077#1085#1090#1072' '
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
  end
  object Panel2: TPanel
    Left = 0
    Top = 364
    Width = 515
    Height = 33
    Align = alBottom
    Color = clWhite
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 5
      Top = 4
      Width = 171
      Height = 25
      Cursor = crHandPoint
      Caption = '  '#1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 340
      Top = 4
      Width = 171
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 120
    Width = 515
    Height = 217
    Align = alClient
    AutoFitColWidths = True
    Ctl3D = False
    DataGrouping.GroupLevels = <>
    DataSource = DM.Q_CLIENTS_DS
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = []
    FooterColor = clCream
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Pitch = fpFixed
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    STFilter.Local = True
    STFilter.Visible = True
    SumList.Active = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Pitch = fpFixed
    TitleFont.Style = [fsBold]
    OnDblClick = BitBtn1Click
    OnGetCellParams = DBGridEh1GetCellParams
    OnKeyDown = DBGridEh1KeyDown
    OnKeyPress = DBGridEh1KeyPress
    Columns = <
      item
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'NICK'
        Footer.Alignment = taRightJustify
        Footer.ValueType = fvtCount
        Footers = <>
        Title.Caption = #1050#1086#1076
        Title.TitleButton = True
        Width = 75
      end
      item
        EditButtons = <>
        FieldName = 'FIO'
        Footers = <>
        Title.Caption = #1060#1048#1054' \ '#1085#1072#1079#1074#1072#1085#1080#1077
        Title.TitleButton = True
        Width = 194
      end
      item
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'REGIONS_NAME'
        Footers = <>
        Title.Caption = #1056#1077#1075#1080#1086#1085
        Title.TitleButton = True
        Width = 188
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 25
    Width = 515
    Height = 95
    Align = alTop
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object pod_nick: TLabel
      Left = 328
      Top = 1
      Width = 141
      Height = 21
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object pod_fio: TLabel
      Left = 328
      Top = 23
      Width = 141
      Height = 21
      AutoSize = False
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label6: TLabel
      Left = 336
      Top = 3
      Width = 4
      Height = 16
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label7: TLabel
      Left = 336
      Top = 25
      Width = 4
      Height = 16
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 3
      Width = 310
      Height = 14
      Caption = #1042#1074#1086#1076' '#1083#1072#1090#1080#1085#1089#1082#1080#1084#1080' '#1073#1091#1082#1074#1072#1084#1080' - '#1073#1099#1089#1090#1088#1099#1081' '#1087#1086#1080#1089#1082' '#1087#1086' '#1082#1086#1076#1091' '#1082#1083#1080#1077#1085#1090#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 300
      Height = 14
      Caption = #1042#1074#1086#1076' '#1088#1091#1089#1089#1082#1080#1084#1080' '#1073#1091#1082#1074#1072#1084#1080' - '#1073#1099#1089#1090#1088#1099#1081' '#1087#1086#1080#1089#1082' '#1087#1086' '#1060#1048#1054' '#1082#1083#1080#1077#1085#1090#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 45
      Width = 460
      Height = 14
      Caption = 
        'Delete - '#1087#1086#1083#1085#1086#1077' '#1089#1090#1080#1088#1072#1085#1080#1077' '#1092#1080#1083#1100#1090#1088#1072' '#1076#1083#1103' '#1087#1086#1080#1089#1082#1072', BackSpace - '#1091#1076#1072#1083#1077#1085#1080 +
        #1077' '#1087#1086#1089#1083#1077#1076#1085#1077#1075#1086' '#1089#1080#1084#1074#1086#1083#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object check_pack: TcxCheckBox
      Left = 8
      Top = 67
      Caption = ' '#1050#1083#1080#1077#1085#1090' '#1087#1072#1082#1091#1077#1090#1089#1103' '#1086#1090#1076#1077#1083#1100#1085#1086' (F5)'
      ParentFont = False
      Style.BorderStyle = ebsOffice11
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Arial'
      Style.Font.Pitch = fpFixed
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 281
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 337
    Width = 515
    Height = 27
    Align = alBottom
    Color = clWhite
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    object Label3: TLabel
      Left = 40
      Top = 6
      Width = 288
      Height = 13
      Caption = '- '#1082#1083#1080#1077#1085#1090', '#1079#1072#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085#1085#1099#1081' '#1073#1091#1093#1075#1072#1083#1090#1077#1088#1080#1077#1081' '#1080#1083#1080' '#1082#1088#1077#1076#1080#1090#1086#1084
    end
    object Panel4: TPanel
      Left = 9
      Top = 4
      Width = 25
      Height = 17
      BevelOuter = bvNone
      Color = clRed
      ParentBackground = False
      TabOrder = 0
    end
  end
  object ActionList1: TActionList
    Left = 240
    object Ctrl_Enter: TAction
      Caption = 'Ctrl_Enter'
      ShortCut = 16397
      OnExecute = BitBtn1Click
    end
    object f5: TAction
      Caption = 'f5'
      ShortCut = 116
      OnExecute = f5Execute
    end
  end
end
