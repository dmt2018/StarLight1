object frmOldOrder: TfrmOldOrder
  Left = 0
  Top = 0
  Caption = #1048#1084#1087#1086#1088#1090' '#1079#1072#1082#1072#1079#1072' '#1080#1079' '#1089#1090#1072#1088#1086#1081' '#1087#1088#1086#1075#1088#1072#1084#1084#1099' '#1079#1072#1082#1072#1079#1086#1074
  ClientHeight = 727
  ClientWidth = 852
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
  object Splitter1: TSplitter
    Left = 0
    Top = 344
    Width = 852
    Height = 4
    Cursor = crVSplit
    Align = alTop
    Color = clWhite
    ParentColor = False
    ExplicitTop = 337
  end
  object Panel3: TPanel
    Left = 0
    Top = 694
    Width = 852
    Height = 33
    Align = alBottom
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      852
      33)
    object pnl_progress: TPanel
      Left = 1
      Top = 1
      Width = 480
      Height = 31
      Align = alLeft
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      Visible = False
      object Label2: TLabel
        Left = 11
        Top = 9
        Width = 83
        Height = 13
        Caption = #1048#1076#1077#1090' '#1086#1073#1088#1072#1073#1086#1090#1082#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object pg_main: TcxProgressBar
        Left = 103
        Top = 5
        ParentFont = False
        Position = 50.000000000000000000
        Properties.BarStyle = cxbsLEDs
        Properties.PeakValue = 50.000000000000000000
        Properties.SolidTextColor = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Pitch = fpFixed
        Style.Font.Style = []
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.NativeStyle = True
        Style.Shadow = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 0
        Width = 338
      end
    end
    object btnClose: TBitBtn
      Left = 727
      Top = 4
      Width = 120
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1042#1099#1093#1086#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 0
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
  end
  object pnlTopOldOrder: TPanel
    Left = 0
    Top = 0
    Width = 852
    Height = 72
    Align = alTop
    BorderWidth = 5
    TabOrder = 1
    object Label1: TLabel
      Left = 6
      Top = 6
      Width = 186
      Height = 16
      Align = alTop
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1076#1072#1090#1091' '#1074#1099#1093#1086#1076#1072' '#1084#1072#1096#1080#1085#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Image5: TImage
      Left = 25
      Top = 32
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
    object Label3: TLabel
      Left = 46
      Top = 32
      Width = 122
      Height = 15
      Caption = #1044#1072#1090#1072' '#1074#1099#1093#1086#1076#1072' '#1084#1072#1096#1080#1085#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 305
      Top = 53
      Width = 84
      Height = 13
      Caption = 'w:\xml\codes.dbf'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object dTrackOut: TcxDateEdit
      Left = 177
      Top = 28
      ParentFont = False
      Properties.DateButtons = [btnToday]
      Properties.DateOnError = deToday
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.BorderStyle = ebsOffice11
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
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
      TabOrder = 0
      Width = 112
    end
    object btnRefresh: TcxButton
      Left = 305
      Top = 27
      Width = 88
      Height = 25
      Caption = #1055#1086#1080#1089#1082
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnRefreshClick
    end
    object cxButton1: TcxButton
      Left = 399
      Top = 27
      Width = 114
      Height = 25
      Caption = #1048#1084#1087#1086#1088#1090' '#1079#1072#1082#1072#1079#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = cxButton1Click
    end
  end
  object pnlMainOldOrder: TPanel
    Left = 0
    Top = 72
    Width = 852
    Height = 272
    Align = alTop
    BorderWidth = 5
    TabOrder = 2
    object DBGridEh1: TDBGridEh
      Left = 6
      Top = 6
      Width = 840
      Height = 260
      Align = alClient
      ColumnDefValues.EndEllipsis = True
      ColumnDefValues.Title.EndEllipsis = True
      ColumnDefValues.Title.TitleButton = True
      DataGrouping.GroupLevels = <>
      DataSource = qOrderCDS
      EditActions = [geaPasteEh]
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Tahoma'
      FooterFont.Style = []
      FooterRowCount = 1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
      RowDetailPanel.Color = clBtnFace
      STFilter.Visible = True
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object pnlMainOldOrderList: TPanel
    Left = 0
    Top = 348
    Width = 852
    Height = 346
    Align = alClient
    BorderWidth = 5
    TabOrder = 3
    object pcMain: TcxPageControl
      Left = 6
      Top = 6
      Width = 840
      Height = 334
      ActivePage = tshData
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ClientRectBottom = 334
      ClientRectRight = 840
      ClientRectTop = 25
      object tshData: TcxTabSheet
        Caption = ' '#1044#1072#1085#1085#1099#1077' '#1074' '#1079#1072#1082#1072#1079#1077' '
        ImageIndex = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGridEh2: TDBGridEh
          Left = 0
          Top = 0
          Width = 840
          Height = 309
          Align = alClient
          ColumnDefValues.EndEllipsis = True
          ColumnDefValues.Title.EndEllipsis = True
          ColumnDefValues.Title.TitleButton = True
          DataGrouping.GroupLevels = <>
          DataSource = qOrderListCDS
          EditActions = [geaPasteEh]
          Flat = True
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -12
          FooterFont.Name = 'Tahoma'
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
          RowDetailPanel.Color = clBtnFace
          STFilter.Visible = True
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object tshInfo: TcxTabSheet
        Caption = ' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1087#1086' '#1080#1084#1087#1086#1088#1090#1091' '
        ImageIndex = 1
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 187
          Height = 309
          Align = alLeft
          BevelOuter = bvNone
          BorderWidth = 5
          TabOrder = 0
          object Label4: TLabel
            Left = 5
            Top = 5
            Width = 154
            Height = 13
            Align = alTop
            Caption = #1053#1077' '#1085#1072#1081#1076#1077#1085#1085#1099#1077' '#1082#1086#1076#1099' '#1082#1083#1080#1077#1085#1090#1086#1074
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object memCode: TMemo
            Left = 5
            Top = 18
            Width = 177
            Height = 286
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            ExplicitTop = 19
            ExplicitHeight = 285
          end
        end
        object Panel2: TPanel
          Left = 513
          Top = 0
          Width = 327
          Height = 309
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 5
          TabOrder = 1
          object Label5: TLabel
            Left = 5
            Top = 5
            Width = 126
            Height = 13
            Align = alTop
            Caption = #1055#1086#1079#1080#1094#1080#1080' '#1073#1077#1079' '#1096#1090#1088#1080#1093'-'#1082#1086#1076#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object memNom2: TMemo
            Left = 5
            Top = 18
            Width = 317
            Height = 286
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            ExplicitTop = 19
            ExplicitHeight = 285
          end
        end
        object Panel4: TPanel
          Left = 187
          Top = 0
          Width = 326
          Height = 309
          Align = alLeft
          BevelOuter = bvNone
          BorderWidth = 5
          TabOrder = 2
          object Label7: TLabel
            Left = 5
            Top = 5
            Width = 148
            Height = 13
            Align = alTop
            Caption = #1053#1077' '#1085#1072#1081#1076#1077#1085#1085#1099#1077' '#1082#1086#1076#1099' '#1090#1086#1074#1072#1088#1086#1074
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object memNom: TMemo
            Left = 5
            Top = 18
            Width = 316
            Height = 286
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            ExplicitTop = 19
            ExplicitHeight = 285
          end
        end
      end
    end
  end
  object qOrderList: TQuery
    FilterOptions = [foCaseInsensitive]
    SessionName = 'Default'
    SQL.Strings = (
      'SELECT a.* from "C:\Temp\CODES.DBF" a')
    Left = 144
    Top = 464
  end
  object qOrderListCDS: TDataSource
    DataSet = qOrderList
    Left = 144
    Top = 496
  end
  object odOrder: TOpenDialog
    Filter = 'DBF|*.dbf'
    InitialDir = '/'
    Left = 144
    Top = 424
  end
  object qOrder: TQuery
    AfterScroll = qOrderAfterScroll
    FilterOptions = [foCaseInsensitive]
    SessionName = 'Default'
    SQL.Strings = (
      'SELECT a.* from "C:\Temp\CODES.DBF" a')
    Left = 136
    Top = 208
  end
  object qOrderCDS: TDataSource
    DataSet = qOrder
    Left = 136
    Top = 256
  end
  object Q_SQL: TOraQuery
    Session = DM.Main_session
    SQL.Strings = (
      'SELECT OLMER.PARAMS_SET_ID.nextval from DUAL WHERE ID:=ID')
    FetchAll = True
    Left = 552
    Top = 24
  end
  object dsOldClients: TDataSource
    DataSet = cdsOldClients
    Left = 506
    Top = 219
  end
  object cdsOldClients: TOraQuery
    SQLInsert.Strings = (
      'insert into OLD_CLIENT_MAP values(:OLD_CLIENT, :ID_CLIENT)')
    SQLDelete.Strings = (
      
        'delete from OLD_CLIENT_MAP where OLD_CLIENT = :OLD_CLIENT and ID' +
        '_CLIENT = :ID_CLIENT')
    Session = DM.Main_session
    SQL.Strings = (
      
        'select a.OLD_CLIENT, a.ID_CLIENT, b.nick from OLD_CLIENT_MAP a, ' +
        'clients b where a.ID_CLIENT = b.ID_CLIENTS')
    FetchAll = True
    Left = 538
    Top = 219
    object cdsOldClientsOLD_CLIENT: TStringField
      FieldName = 'OLD_CLIENT'
    end
    object cdsOldClientsID_CLIENT: TFloatField
      FieldName = 'ID_CLIENT'
    end
    object cdsOldClientsNICK: TStringField
      FieldName = 'NICK'
    end
  end
end
