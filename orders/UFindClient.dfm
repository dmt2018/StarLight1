object frm_find_client: Tfrm_find_client
  Left = 532
  Top = 252
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '  '#1055#1086#1080#1089#1082' '#1082#1083#1080#1077#1085#1090#1072
  ClientHeight = 559
  ClientWidth = 802
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 802
    Height = 20
    Align = alTop
    AutoSize = False
    Caption = '  '#1042#1099#1073#1077#1088#1080#1090#1077' '#1082#1083#1080#1077#1085#1090#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object Label2: TLabel
    Left = 0
    Top = 270
    Width = 802
    Height = 20
    Align = alTop
    AutoSize = False
    Caption = '  '#1042#1099#1073#1077#1088#1080#1090#1077' '#1079#1072#1082#1072#1079':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object Panel2: TPanel
    Left = 0
    Top = 526
    Width = 802
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
    TabOrder = 2
    object Label3: TLabel
      Left = 232
      Top = 3
      Width = 147
      Height = 13
      Caption = 'CTRL+F  -  '#1074#1082#1083#1102#1095#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 232
      Top = 17
      Width = 154
      Height = 13
      Caption = 'CTRL+C  -  '#1086#1090#1082#1083#1102#1095#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 5
      Top = 4
      Width = 212
      Height = 25
      Cursor = crHandPoint
      Caption = '  '#1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1082#1072#1079' (F4)'
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
      Left = 628
      Top = 4
      Width = 171
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      ModalResult = 2
      TabOrder = 1
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
    Top = 20
    Width = 802
    Height = 250
    Align = alTop
    AutoFitColWidths = True
    Ctl3D = True
    DataGrouping.GroupLevels = <>
    DataSource = DM.Q_CLIENTS_DS
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = []
    FooterColor = clYellow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -13
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Pitch = fpFixed
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    SortLocal = True
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
    Columns = <
      item
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'NICK'
        Footer.Alignment = taCenter
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Pitch = fpFixed
        Footer.Font.Style = [fsBold]
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
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 290
    Width = 802
    Height = 236
    Align = alClient
    AutoFitColWidths = True
    Ctl3D = True
    DataGrouping.GroupLevels = <>
    DataSource = ds_client_orders
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = []
    FooterColor = clYellow
    FooterFont.Charset = DEFAULT_CHARSET
    FooterFont.Color = clWindowText
    FooterFont.Height = -11
    FooterFont.Name = 'MS Sans Serif'
    FooterFont.Pitch = fpFixed
    FooterFont.Style = []
    FooterRowCount = 1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    RowDetailPanel.Color = clBtnFace
    SortLocal = True
    STFilter.Local = True
    STFilter.Visible = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Pitch = fpFixed
    TitleFont.Style = [fsBold]
    UseMultiTitle = True
    OnDblClick = DBGridEh2DblClick
    Columns = <
      item
        Alignment = taCenter
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'NN'
        Footers = <>
        MaxWidth = 40
        MinWidth = 40
        STFilter.Visible = False
        Title.Caption = #8470
        Width = 40
      end
      item
        Alignment = taCenter
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'ID_ORDERS'
        Footer.Alignment = taCenter
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Pitch = fpFixed
        Footer.Font.Style = [fsBold]
        Footer.ValueType = fvtCount
        Footers = <>
        MaxWidth = 75
        MinWidth = 75
        Title.Caption = #8470' '#1079#1072#1082#1072#1079#1072
        Title.TitleButton = True
        Width = 75
      end
      item
        Alignment = taCenter
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'D_DATE'
        Footer.FieldName = 'ID_ORDERS'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'MS Sans Serif'
        Footer.Font.Pitch = fpFixed
        Footer.Font.Style = [fsBold]
        Footers = <>
        MaxWidth = 140
        MinWidth = 140
        Title.Caption = #1044#1072#1090#1072'|'#1050#1086#1088#1088#1077#1082#1094#1080#1103' '#1079#1072#1082#1072#1079#1072
        Title.TitleButton = True
        Visible = False
        Width = 140
      end
      item
        Alignment = taCenter
        AutoFitColWidth = False
        Color = clMoneyGreen
        DisplayFormat = 'dd.mm.yyyy'
        EditButtons = <>
        FieldName = 'DATE_TRUCK_OUT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        Footers = <>
        MaxWidth = 100
        MinWidth = 100
        Title.Caption = #1044#1072#1090#1072'|'#1042#1099#1093#1086#1076' '#1084#1072#1096#1080#1085#1099
        Title.TitleButton = True
        Width = 100
      end
      item
        Alignment = taCenter
        AutoFitColWidth = False
        DisplayFormat = 'dd.mm.yyyy'
        EditButtons = <>
        FieldName = 'DATE_TRUCK'
        Footers = <>
        MaxWidth = 100
        MinWidth = 100
        Title.Caption = #1044#1072#1090#1072'|'#1055#1088#1080#1073#1099#1090#1080#1077' '#1084#1072#1096#1080#1085#1099
        Width = 100
      end
      item
        Alignment = taCenter
        AutoFitColWidth = False
        EditButtons = <>
        FieldName = 'INVOICE'
        Footers = <>
        MaxWidth = 80
        MinWidth = 80
        Title.Caption = #8470' '#1080#1085#1074#1086#1081#1089#1072
        Title.TitleButton = True
        Width = 80
      end
      item
        EditButtons = <>
        FieldName = 'INFO'
        Footers = <>
        Title.Alignment = taLeftJustify
        Title.Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
        Width = 200
      end
      item
        EditButtons = <>
        FieldName = 'ALPHA'
        Footers = <>
        MaxWidth = 40
        MinWidth = 40
        Title.Caption = #1050#1086#1076
        Width = 40
      end
      item
        Checkboxes = True
        EditButtons = <>
        FieldName = 'PACK_'
        Footers = <>
        MaxWidth = 40
        MinWidth = 40
        Title.Caption = #1055#1072#1082'.'
        Width = 40
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object cds_client_orders: TOraQuery
    SQL.Strings = (
      'SELECT '
      'rownum as nn, '
      'a.* '
      'FROM '
      '('
      'SELECT '
      'O.ID_ORDERS, '
      'r.INV_ID as INVOICE, '
      'O.D_DATE, '
      'O.DATE_TRUCK,'
      'O.DATE_TRUCK_OUT,'
      'O.INFO,'
      'c.id_orders_clients,'
      'c.id_clients,'
      'c.pack_,'
      'c.alpha'
      'FROM '
      'ORDERS O, '
      'ORDERS_CLIENTS c,'
      'INVOICE_REGISTER R'
      'WHERE '
      'o.id_orders = r.id_orders(+) '
      'AND O.N_TYPE = 0'
      'AND O.ACTIVE = 1'
      'AND O.ID_DEPARTMENTS = :id_dep_'
      'and o.id_orders = c.id_orders'
      'and c.id_clients = :id_clients'
      'ORDER BY O.DATE_TRUCK_OUT DESC nulls last'
      ') A'
      'WHERE '
      '/*Filter*/ 1=1')
    MasterSource = DM.Q_CLIENTS_DS
    MasterFields = 'id_clients'
    Left = 160
    Top = 416
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_dep_'
      end
      item
        DataType = ftUnknown
        Name = 'id_clients'
      end>
    object cds_client_ordersNN: TFloatField
      FieldName = 'NN'
    end
    object cds_client_ordersID_ORDERS: TFloatField
      FieldName = 'ID_ORDERS'
      Required = True
    end
    object cds_client_ordersINVOICE: TFloatField
      FieldName = 'INVOICE'
    end
    object cds_client_ordersD_DATE: TDateTimeField
      FieldName = 'D_DATE'
      Required = True
    end
    object cds_client_ordersDATE_TRUCK: TDateTimeField
      FieldName = 'DATE_TRUCK'
    end
    object cds_client_ordersDATE_TRUCK_OUT: TDateTimeField
      FieldName = 'DATE_TRUCK_OUT'
    end
    object cds_client_ordersINFO: TStringField
      FieldName = 'INFO'
      Size = 255
    end
    object cds_client_ordersID_ORDERS_CLIENTS: TFloatField
      FieldName = 'ID_ORDERS_CLIENTS'
      Required = True
    end
    object cds_client_ordersALPHA: TStringField
      FieldName = 'ALPHA'
      Size = 2
    end
    object cds_client_ordersID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
    end
    object cds_client_ordersPACK_: TIntegerField
      FieldName = 'PACK_'
    end
  end
  object ds_client_orders: TOraDataSource
    DataSet = cds_client_orders
    Left = 160
    Top = 448
  end
  object ActionList1: TActionList
    Left = 544
    Top = 48
    object add: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' (F4)'
      ShortCut = 115
    end
    object edit: TAction
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1079#1072#1082#1072#1079
      ShortCut = 113
      OnExecute = DBGridEh2DblClick
    end
    object Ctrl_Enter: TAction
      Caption = 'Ctrl_Enter'
      ShortCut = 16397
    end
    object filter_on: TAction
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      ShortCut = 16454
      OnExecute = filter_onExecute
    end
    object filter_off: TAction
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      ShortCut = 16451
      OnExecute = filter_offExecute
    end
  end
end
