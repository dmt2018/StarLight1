object frmExport: TfrmExport
  Left = 0
  Top = 0
  Caption = #1057#1080#1085#1093#1088#1086#1085#1080#1079#1072#1094#1080#1103' '#1089' '#1089#1072#1081#1090#1086#1084
  ClientHeight = 321
  ClientWidth = 435
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 77
    Top = 73
    Width = 157
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086' '#1076#1085#1077#1081' '#1072#1085#1072#1083#1080#1079#1072' '#1080#1085#1074#1086#1081#1089#1086#1074
  end
  object btnStartTimer: TButton
    Left = 8
    Top = 8
    Width = 113
    Height = 25
    Caption = #1057#1090#1072#1088#1090' '#1090#1072#1081#1084#1077#1088#1072
    TabOrder = 0
    OnClick = btnStartTimerClick
  end
  object Memo1: TMemo
    Left = 240
    Top = 8
    Width = 185
    Height = 66
    TabOrder = 1
  end
  object cxGrid1: TcxGrid
    Left = 10
    Top = 96
    Width = 417
    Height = 184
    TabOrder = 2
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = OraDataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1PRODUCT_ART: TcxGridDBColumn
        DataBinding.FieldName = 'PRODUCT_ART'
      end
      object cxGrid1DBTableView1CODENAME: TcxGridDBColumn
        DataBinding.FieldName = 'CODENAME'
      end
      object cxGrid1DBTableView1DEPART_ID: TcxGridDBColumn
        DataBinding.FieldName = 'DEPART_ID'
      end
      object cxGrid1DBTableView1BRAND_TITLE: TcxGridDBColumn
        DataBinding.FieldName = 'BRAND_TITLE'
      end
      object cxGrid1DBTableView1COUNTRY: TcxGridDBColumn
        DataBinding.FieldName = 'COUNTRY'
      end
      object cxGrid1DBTableView1CATEGORY: TcxGridDBColumn
        DataBinding.FieldName = 'CATEGORY'
      end
      object cxGrid1DBTableView1PRODUCT_TITLE: TcxGridDBColumn
        DataBinding.FieldName = 'PRODUCT_TITLE'
      end
      object cxGrid1DBTableView1COLOUR: TcxGridDBColumn
        DataBinding.FieldName = 'COLOUR'
      end
      object cxGrid1DBTableView1SIZE: TcxGridDBColumn
        DataBinding.FieldName = 'SIZE'
      end
      object cxGrid1DBTableView1PIECESINPACK: TcxGridDBColumn
        DataBinding.FieldName = 'PIECESINPACK'
      end
      object cxGrid1DBTableView1PRODUCT_DESC: TcxGridDBColumn
        DataBinding.FieldName = 'PRODUCT_DESC'
      end
      object cxGrid1DBTableView1PRODUCT_PRICE: TcxGridDBColumn
        DataBinding.FieldName = 'PRODUCT_PRICE'
      end
      object cxGrid1DBTableView1PRODUCT_QTY: TcxGridDBColumn
        DataBinding.FieldName = 'PRODUCT_QTY'
      end
      object cxGrid1DBTableView1PRODUCT_RESERVE: TcxGridDBColumn
        DataBinding.FieldName = 'PRODUCT_RESERVE'
      end
      object cxGrid1DBTableView1NEW_FLAG: TcxGridDBColumn
        DataBinding.FieldName = 'NEW_FLAG'
      end
      object cxGrid1DBTableView1DISCOUNT: TcxGridDBColumn
        DataBinding.FieldName = 'DISCOUNT'
      end
      object cxGrid1DBTableView1PROFIT: TcxGridDBColumn
        DataBinding.FieldName = 'PROFIT'
      end
      object cxGrid1DBTableView1BESTPRICE: TcxGridDBColumn
        DataBinding.FieldName = 'BESTPRICE'
      end
      object cxGrid1DBTableView1SEASON_START: TcxGridDBColumn
        DataBinding.FieldName = 'SEASON_START'
      end
      object cxGrid1DBTableView1SEASON_END: TcxGridDBColumn
        DataBinding.FieldName = 'SEASON_END'
      end
      object cxGrid1DBTableView1ONMARCH: TcxGridDBColumn
        DataBinding.FieldName = 'ONMARCH'
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'NO_ORDER'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGrid2: TcxGrid
    Left = 8
    Top = 136
    Width = 417
    Height = 171
    TabOrder = 3
    object cxGridDBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsClients
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Appending = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsView.GroupByBox = False
      object cxGridDBTableView1NICK: TcxGridDBColumn
        DataBinding.FieldName = 'NICK'
      end
      object cxGridDBTableView1CCODE: TcxGridDBColumn
        DataBinding.FieldName = 'CCODE'
      end
      object cxGridDBTableView1FIO: TcxGridDBColumn
        DataBinding.FieldName = 'FIO'
      end
      object cxGridDBTableView1EMAIL: TcxGridDBColumn
        DataBinding.FieldName = 'EMAIL'
      end
      object cxGridDBTableView1REGIONS_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'REGIONS_NAME'
      end
      object cxGridDBTableView1ADDRESS: TcxGridDBColumn
        DataBinding.FieldName = 'ADDRESS'
      end
      object cxGridDBTableView1PHONE: TcxGridDBColumn
        DataBinding.FieldName = 'PHONE'
      end
      object cxGridDBTableView1ID_OFFICE: TcxGridDBColumn
        DataBinding.FieldName = 'ID_OFFICE'
      end
      object cxGridDBTableView1MARK: TcxGridDBColumn
        DataBinding.FieldName = 'MARK'
      end
      object cxGridDBTableView1DDATE: TcxGridDBColumn
        DataBinding.FieldName = 'DDATE'
      end
      object cxGridDBTableView1CHART: TcxGridDBColumn
        DataBinding.FieldName = 'CHART'
      end
      object cxGridDBTableView1GROUP_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'GROUP_NAME'
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGridDBTableView1
    end
  end
  object btnExport: TButton
    Left = 8
    Top = 39
    Width = 113
    Height = 25
    Caption = #1042#1099#1075#1088#1091#1079#1080#1090#1100' '#1092#1072#1081#1083#1099
    TabOrder = 4
    OnClick = btnExportClick
  end
  object edQDays: TEdit
    Left = 8
    Top = 70
    Width = 65
    Height = 21
    TabOrder = 5
    Text = '7'
  end
  object TimerStore: TTimer
    Enabled = False
    Interval = 200
    OnTimer = TimerStoreTimer
    Left = 392
    Top = 8
  end
  object IdFTP1: TIdFTP
    AutoLogin = True
    Host = 'home.starlight.ru'
    Passive = True
    Password = 'J5neDrOqEh'
    Username = 'starlight'
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 360
    Top = 40
  end
  object OraQuery1: TOraQuery
    Session = SelectSession
    SQL.Strings = (
      'begin'
      
        '  creator.nomenclature2_pkg.select_store_for_web(:QDAYS, :CURSOR' +
        '_);'
      'end;')
    FetchAll = True
    Left = 264
    Top = 8
    ParamData = <
      item
        DataType = ftFloat
        Name = 'QDAYS'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptInputOutput
        Value = 'Object'
      end>
    object OraQuery1PRODUCT_ART: TFloatField
      FieldName = 'PRODUCT_ART'
    end
    object OraQuery1CODENAME: TStringField
      FieldName = 'CODENAME'
      Size = 30
    end
    object OraQuery1DEPART_ID: TFloatField
      FieldName = 'DEPART_ID'
    end
    object OraQuery1BRAND_TITLE: TStringField
      FieldName = 'BRAND_TITLE'
      Size = 150
    end
    object OraQuery1COUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
    object OraQuery1CATEGORY: TStringField
      FieldName = 'CATEGORY'
      Size = 103
    end
    object OraQuery1PRODUCT_TITLE: TStringField
      FieldName = 'PRODUCT_TITLE'
      Size = 256
    end
    object OraQuery1COLOUR: TStringField
      FieldName = 'COLOUR'
      Size = 50
    end
    object OraQuery1SIZE: TFloatField
      FieldName = 'SIZE'
    end
    object OraQuery1PIECESINPACK: TFloatField
      FieldName = 'PIECESINPACK'
    end
    object OraQuery1PRODUCT_DESC: TStringField
      FieldName = 'PRODUCT_DESC'
      Size = 581
    end
    object OraQuery1PRODUCT_PRICE: TFloatField
      FieldName = 'PRODUCT_PRICE'
    end
    object OraQuery1PRODUCT_QTY: TFloatField
      FieldName = 'PRODUCT_QTY'
    end
    object OraQuery1PRODUCT_RESERVE: TFloatField
      FieldName = 'PRODUCT_RESERVE'
    end
    object OraQuery1NEW_FLAG: TFloatField
      FieldName = 'NEW_FLAG'
    end
    object OraQuery1DISCOUNT: TFloatField
      FieldName = 'DISCOUNT'
    end
    object OraQuery1PROFIT: TFloatField
      FieldName = 'PROFIT'
    end
    object OraQuery1BESTPRICE: TFloatField
      FieldName = 'BESTPRICE'
    end
    object OraQuery1SEASON_START: TFloatField
      FieldName = 'SEASON_START'
    end
    object OraQuery1SEASON_END: TFloatField
      FieldName = 'SEASON_END'
    end
    object OraQuery1ONMARCH: TStringField
      FieldName = 'ONMARCH'
      Size = 50
    end
    object OraQuery1NO_ORDER: TFloatField
      FieldName = 'NO_ORDER'
    end
  end
  object OraDataSource1: TOraDataSource
    DataSet = OraQuery1
    Left = 296
    Top = 8
  end
  object SelectSession: TOraSession
    Options.Charset = 'CL8MSWIN1251'
    Options.Direct = True
    Username = 'creator'
    Password = '123456'
    Server = '192.168.1.89:1521:STAR'
    LoginPrompt = False
    Left = 328
    Top = 8
  end
  object qClients: TOraQuery
    Session = SelectSession
    SQL.Strings = (
      'SELECT a.nick, a.ccode, a.fio'
      ', replace(a.email,'#39';'#39','#39','#39') as email'
      ', a.regions_name'
      
        ', replace(replace(replace(a.address,CHR(10)||CHR(13),'#39#39'),CHR(13)' +
        '||CHR(10),'#39#39'),'#39';'#39','#39':'#39') as address'
      
        ', replace(replace(replace(a.phone,CHR(10)||CHR(13),'#39#39'),CHR(13)||' +
        'CHR(10),'#39#39'),'#39';'#39','#39':'#39') as phone'
      ', a.id_office_src as ID_OFFICE, a.MARK'
      ', a.DDATE, nvl(b.CHART,0) as chart'
      ', a.GROUP_NAME'
      '--, a.block1'
      '--, a.block2'
      'FROM clients_view2 a, debetors b'
      'where a.ID_CLIENTS = b.ID_CLIENTS(+)')
    FetchAll = True
    Left = 264
    Top = 40
    object qClientsNICK: TStringField
      FieldName = 'NICK'
    end
    object qClientsCCODE: TStringField
      FieldName = 'CCODE'
      Required = True
      Size = 13
    end
    object qClientsFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object qClientsEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object qClientsREGIONS_NAME: TStringField
      FieldName = 'REGIONS_NAME'
      Required = True
      Size = 255
    end
    object qClientsADDRESS: TStringField
      FieldName = 'ADDRESS'
      Size = 1024
    end
    object qClientsPHONE: TStringField
      FieldName = 'PHONE'
      Size = 1024
    end
    object qClientsID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object qClientsMARK: TStringField
      FieldName = 'MARK'
      Required = True
      Size = 10
    end
    object qClientsDDATE: TDateTimeField
      FieldName = 'DDATE'
      Required = True
    end
    object qClientsCHART: TFloatField
      FieldName = 'CHART'
    end
    object qClientsGROUP_NAME: TStringField
      FieldName = 'GROUP_NAME'
      Required = True
      Size = 255
    end
  end
  object dsClients: TOraDataSource
    DataSet = qClients
    Left = 296
    Top = 40
  end
  object TimerClients: TTimer
    Enabled = False
    Interval = 200
    OnTimer = TimerClientsTimer
    Left = 392
    Top = 40
  end
  object cdExport: TConnectDialog
    Caption = 'Connect'
    UsernameLabel = 'User Name'
    PasswordLabel = 'Password'
    ServerLabel = 'Server'
    ConnectButton = 'Connect'
    CancelButton = 'Cancel'
    Left = 360
    Top = 8
  end
end
