object frmClientList: TfrmClientList
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1087#1080#1089#1086#1082' '#1082#1083#1080#1077#1085#1090#1086#1074
  ClientHeight = 421
  ClientWidth = 496
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
  object Panel2: TPanel
    Left = 0
    Top = 388
    Width = 496
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
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
    DesignSize = (
      496
      33)
    object btnClose: TcxButton
      Left = 347
      Top = 4
      Width = 145
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
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
      LookAndFeel.Kind = lfOffice11
    end
  end
  object grReg: TcxGrid
    Left = 0
    Top = 81
    Width = 496
    Height = 307
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.Kind = lfOffice11
    ExplicitTop = 33
    ExplicitHeight = 355
    object grRegV: TcxGridDBTableView
      OnKeyDown = grRegVKeyDown
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DS_CLIENT_LIST
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skSum
          Column = cxGridDBColumn4
        end
        item
          Format = '0.00000000'
          Kind = skSum
        end
        item
          Format = '0'
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object cxGridDBColumn1: TcxGridDBColumn
        Caption = #1050#1083#1080#1077#1085#1090
        DataBinding.FieldName = 'NICK'
        Options.Editing = False
      end
      object cxGridDBColumn4: TcxGridDBColumn
        Caption = #1050#1086#1083'-'#1074#1086
        DataBinding.FieldName = 'QUANTITY'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 100
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 100
      end
      object grRegVID_ORDERS_CLIENTS: TcxGridDBColumn
        DataBinding.FieldName = 'ID_ORDERS_CLIENTS'
        Visible = False
      end
      object grRegVSPEC_PRICE: TcxGridDBColumn
        Caption = #1062#1077#1085#1072
        DataBinding.FieldName = 'SPEC_PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        HeaderAlignmentHorz = taCenter
        MinWidth = 100
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 100
      end
      object grRegVPPLCP_ID: TcxGridDBColumn
        DataBinding.FieldName = 'PPLCP_ID'
        Visible = False
      end
      object grRegVID_CLIENTS: TcxGridDBColumn
        DataBinding.FieldName = 'ID_CLIENTS'
        Visible = False
      end
      object grRegVP_V_PPLI_ID: TcxGridDBColumn
        DataBinding.FieldName = 'PPLI_ID'
        Visible = False
      end
      object grRegVP_V_N_ID: TcxGridDBColumn
        DataBinding.FieldName = 'N_ID'
        Visible = False
      end
      object grRegVFIO: TcxGridDBColumn
        DataBinding.FieldName = 'FIO'
        Visible = False
      end
      object grRegVDIST_IND_ID: TcxGridDBColumn
        DataBinding.FieldName = 'DIST_IND_ID'
        Visible = False
      end
      object grRegVLEFT_QUANTITY: TcxGridDBColumn
        DataBinding.FieldName = 'LEFT_QUANTITY'
        Visible = False
      end
      object grRegVID_ORDERS_LIST: TcxGridDBColumn
        DataBinding.FieldName = 'ID_ORDERS_LIST'
        Visible = False
      end
      object grRegVPREP_DIST_ID: TcxGridDBColumn
        DataBinding.FieldName = 'PREP_DIST_ID'
        Visible = False
      end
    end
    object grRegL: TcxGridLevel
      GridView = grRegV
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 496
    Height = 81
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 8
    Caption = #1062#1074#1077#1090#1086#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    VerticalAlignment = taAlignTop
    ExplicitTop = -6
    object lblPrice: TLabel
      Left = 424
      Top = 8
      Width = 64
      Height = 65
      Align = alRight
      Alignment = taRightJustify
      Caption = 'lblPrice'
    end
    object edNick: TcxTextEdit
      Left = 8
      Top = 51
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.TextStyle = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Visible = False
      Width = 126
    end
    object cxLabel1: TcxLabel
      Left = 8
      Top = 32
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1082#1083#1080#1077#1085#1090#1072
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Visible = False
    end
    object edQnt: TcxCurrencyEdit
      Left = 199
      Top = 51
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = ',0;-,0'
      TabOrder = 2
      Visible = False
      Width = 81
    end
    object btnFind: TcxButton
      Left = 140
      Top = 50
      Width = 53
      Height = 25
      Caption = #1053#1072#1081#1090#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Visible = False
      OnClick = btnFindClick
    end
    object edPrice: TcxCurrencyEdit
      Left = 286
      Top = 51
      Properties.DecimalPlaces = 1
      Properties.DisplayFormat = ',0.0;-,0.0'
      TabOrder = 4
      Visible = False
      Width = 81
    end
    object btnAdd: TcxButton
      Left = 373
      Top = 50
      Width = 92
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Visible = False
      OnClick = btnAddClick
    end
  end
  object CDS_CLIENT_LIST: TOraQuery
    SQLUpdate.Strings = (
      'begin'
      
        '  price_pkg.set_special_price(:PPLI_ID, :N_ID, :PPLCP_ID, :SPEC_' +
        'PRICE, :QUANTITY, :ID_CLIENTS);'
      'end;')
    SQL.Strings = (
      'begin'
      '  price_pkg.get_client_list(:V_PPLI_ID, :V_N_ID, :CURSOR_);'
      'end;')
    Left = 184
    Top = 88
    ParamData = <
      item
        DataType = ftFloat
        Name = 'V_PPLI_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'V_N_ID'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptInputOutput
        Value = 'Object'
      end>
    object CDS_CLIENT_LISTN_ID: TFloatField
      FieldName = 'N_ID'
    end
    object CDS_CLIENT_LISTQUANTITY: TFloatField
      FieldName = 'QUANTITY'
    end
    object CDS_CLIENT_LISTNICK: TStringField
      FieldName = 'NICK'
    end
    object CDS_CLIENT_LISTFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object CDS_CLIENT_LISTPPLI_ID: TFloatField
      FieldName = 'PPLI_ID'
    end
    object CDS_CLIENT_LISTDIST_IND_ID: TFloatField
      FieldName = 'DIST_IND_ID'
    end
    object CDS_CLIENT_LISTSPEC_PRICE: TFloatField
      FieldName = 'SPEC_PRICE'
    end
    object CDS_CLIENT_LISTPPLCP_ID: TFloatField
      FieldName = 'PPLCP_ID'
    end
    object CDS_CLIENT_LISTID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
    end
    object CDS_CLIENT_LISTLEFT_QUANTITY: TFloatField
      FieldName = 'LEFT_QUANTITY'
    end
    object CDS_CLIENT_LISTID_ORDERS_LIST: TFloatField
      FieldName = 'ID_ORDERS_LIST'
    end
    object CDS_CLIENT_LISTPREP_DIST_ID: TFloatField
      FieldName = 'PREP_DIST_ID'
    end
  end
  object DS_CLIENT_LIST: TOraDataSource
    DataSet = CDS_CLIENT_LIST
    Left = 184
    Top = 128
  end
  object stRepClientList: TcxStyleRepository
    Left = 88
    Top = 96
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 12189695
    end
  end
  object Q_CLIENTS: TOraQuery
    SQL.Strings = (
      'SELECT C.ID_CLIENTS, C.NICK, C.FIO, C.CCODE,'
      '    C.TTYPE, C.ID_CLIENTS_GROUPS, C.BLOCK1, C.BLOCK2'
      ', c.GROUP_NAME, c.TTYPE_NAME, c.PREFIX'
      '    FROM CLIENTS_VIEW2 C '
      ' where id_office = :v_office'
      ' ORDER BY C.FIO')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 232
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'v_office'
      end>
    object Q_CLIENTSID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object Q_CLIENTSNICK: TStringField
      FieldName = 'NICK'
      Required = True
    end
    object Q_CLIENTSFIO: TStringField
      FieldName = 'FIO'
      Required = True
      Size = 255
    end
    object Q_CLIENTSCCODE: TStringField
      FieldName = 'CCODE'
      Required = True
      Size = 13
    end
    object Q_CLIENTSTTYPE: TIntegerField
      FieldName = 'TTYPE'
      Required = True
    end
    object Q_CLIENTSID_CLIENTS_GROUPS: TIntegerField
      FieldName = 'ID_CLIENTS_GROUPS'
      Required = True
    end
    object Q_CLIENTSBLOCK1: TIntegerField
      FieldName = 'BLOCK1'
      Required = True
    end
    object Q_CLIENTSBLOCK2: TIntegerField
      FieldName = 'BLOCK2'
      Required = True
    end
    object Q_CLIENTSGROUP_NAME: TStringField
      FieldName = 'GROUP_NAME'
      Required = True
      Size = 255
    end
    object Q_CLIENTSTTYPE_NAME: TStringField
      FieldName = 'TTYPE_NAME'
      Required = True
      Size = 50
    end
    object Q_CLIENTSPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 5
    end
  end
  object Q_CLIENTS_DS: TOraDataSource
    DataSet = Q_CLIENTS
    Left = 232
    Top = 128
  end
end
