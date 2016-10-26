object frmTrans: TfrmTrans
  Left = 0
  Top = 0
  Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090#1085#1099#1081' '#1086#1090#1076#1077#1083
  ClientHeight = 387
  ClientWidth = 1121
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grTrans: TcxGrid
    Left = 0
    Top = 58
    Width = 1121
    Height = 303
    Align = alClient
    TabOrder = 0
    object grTransView: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = True
      NavigatorButtons.PriorPage.Visible = True
      NavigatorButtons.Prior.Visible = True
      NavigatorButtons.Next.Visible = True
      NavigatorButtons.NextPage.Visible = True
      NavigatorButtons.Last.Visible = True
      NavigatorButtons.Insert.Visible = True
      NavigatorButtons.Append.Visible = False
      NavigatorButtons.Delete.Visible = True
      NavigatorButtons.Edit.Visible = True
      NavigatorButtons.Post.Visible = True
      NavigatorButtons.Cancel.Visible = True
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Visible = True
      NavigatorButtons.GotoBookmark.Visible = True
      NavigatorButtons.Filter.Visible = True
      OnCustomDrawCell = grTransViewCustomDrawCell
      DataController.DataSource = Q_Trans_DS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsBehavior.CellHints = True
      OptionsCustomize.ColumnMoving = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.HeaderEndEllipsis = True
      Styles.Selection = net
      object grTransNN: TcxGridDBColumn
        Caption = #1047#1072#1082#1072#1079' '#8470
        DataBinding.FieldName = 'N_ID'
        Width = 80
      end
      object grTransData: TcxGridDBColumn
        Caption = #1053#1072' '#1076#1072#1090#1091
        DataBinding.FieldName = 'ON_DATE'
        Width = 160
      end
      object grTransNick: TcxGridDBColumn
        Caption = #1050#1083#1080#1077#1085#1090
        DataBinding.FieldName = 'NICK_'
      end
      object grTransFioCl: TcxGridDBColumn
        Caption = #1060#1048#1054
        DataBinding.FieldName = 'FIO_CL'
        Width = 180
      end
      object grTransFIOmen: TcxGridDBColumn
        Caption = #1042#1099#1073#1080#1083' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
        DataBinding.FieldName = 'FIO_MEN'
        Width = 180
      end
      object grTransFIOtaxi: TcxGridDBColumn
        Caption = #1042#1086#1076#1080#1090#1077#1083#1100' ('#8470' '#1084#1072#1096#1080#1085#1099')'
        DataBinding.FieldName = 'N_MASH'
        Width = 180
      end
      object grTransAdres: TcxGridDBColumn
        Caption = #1040#1076#1088#1077#1089
        DataBinding.FieldName = 'ADR'
        Width = 249
      end
      object grTransDataDostav: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1076#1086#1089#1090#1072#1074#1082#1080
        DataBinding.FieldName = 'END_DATE'
        Width = 180
      end
      object grTransKem: TcxGridDBColumn
        Caption = #1050#1077#1084' '#1087#1077#1088#1077#1076#1072#1085
        DataBinding.FieldName = 'FIO_KEM'
        Width = 180
      end
      object grTransKomy: TcxGridDBColumn
        Caption = #1050#1086#1084#1091' '#1087#1077#1088#1077#1076#1072#1085
        DataBinding.FieldName = 'FIO_KOMY'
        Width = 180
      end
      object grTransStat: TcxGridDBColumn
        Caption = #1057#1090#1072#1090#1091#1089
        DataBinding.FieldName = 'STAT'
        OnGetCellHint = grTransStatGetCellHint
        Width = 103
      end
    end
    object grTransLevel: TcxGridLevel
      GridView = grTransView
    end
  end
  object Q_Trans: TOraQuery
    SQL.Strings = (
      '--select * from status_z order by n_id '
      ''
      
        'select * from status_z where to_date(substr(on_date,1,10),'#39'dd.mm' +
        '.yyyy'#39') between :date_begin and :date_end order by n_id'
      ''
      '/*'
      
        'SELECT distinct a.doc_number, a.doc_date, a.nick, a.fio, a.opera' +
        'tor_name, b.N_ID, b.N_MASH, b.STAT FROM store_doc_view2 a'
      'left outer join status_z b on b.N_ID = a.doc_number'
      '*/'
      '/*'
      
        'SELECT distinct a.doc_number, to_char(a.doc_date), a.nick, a.fio' +
        ', a.operator_name, '#39'taxi'#39', '#39'status'#39' FROM store_doc_view2 a'
      'union all '
      
        'select  b.N_ID, b.on_date, b.nick_, b.fio_cl, b.fio_men, b.N_MAS' +
        'H, b.STAT from status_z b'
      '*/'
      '/*'
      
        'SELECT distinct a.doc_number, a.doc_date, a.nick, a.fio, a.opera' +
        'tor_name, b.N_ID, b.N_MASH, b.STAT FROM store_doc_view2 a'
      'right outer join status_z b on b.N_ID = a.doc_number'
      '*/'
      '/*'
      
        'SELECT distinct  a.id_doc, a.doc_number, a.operator_name, a.doc_' +
        'date, a.doc_date_real,'
      'a.id_client, a.nick, a.fio, b.N_ID, b.N_MASH, b.STAT'
      
        'FROM store_doc_view2 a, (select distinct office, id_doc, id_invo' +
        'ice from export_to_fillials) e, orders_clients o, cash_tmp t, st' +
        'atus_z b       '
      'where a.id_departments = 62'
      
        '               -- and (a.DOC_NUMBER = DOC_NUMBER_ or DOC_NUMBER_' +
        ' is null)'
      
        '                --and trunc(a.doc_date) between trunc(DOC_DATE1_' +
        ') and trunc(DOC_DATE2_)'
      
        '                and trunc(a.doc_date) between trunc(SYSDATE-194)' +
        ' and trunc(SYSDATE)'
      '                --AND UPPER(Nick) LIKE '#39'%'#39'|| upper(nick_) ||'#39'%'#39
      '                --AND UPPER(FIO) LIKE '#39'%'#39'|| upper(fio_) ||'#39'%'#39
      '                and a.ID_DOC_TYPE = 4'
      '                and (a.id_office = 0 or 0 = 0)'
      '                and a.id_doc = e.id_doc(+)'
      '                and a.order_id = o.id_orders_clients(+)'
      '                and a.doc_number = t.invoice(+)'
      '                and a.doc_number = b.N_ID(+)   '
      '             ORDER BY DOC_DATE desc--, DOC_DATE_real desc;'
      '*/'
      '/*'
      
        'SELECT distinct a.doc_number, a.doc_date, a.nick, a.fio, a.opera' +
        'tor_name, b.N_ID, b.N_MASH, b.STAT --, b.on_date'
      'FROM store_doc_view2 a       '
      
        'left outer join status_z b on b.N_ID = a.doc_number --and b.on_d' +
        'ate = a.doc_date'
      'where a.id_departments = 62 ORDER BY a.doc_number'
      '--and (b.stat=1 or b.stat=2 or b.stat=0)'
      '*/')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 512
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'date_begin'
      end
      item
        DataType = ftUnknown
        Name = 'date_end'
      end>
    object Q_TransN_ID: TFloatField
      FieldName = 'N_ID'
      Required = True
    end
    object Q_TransON_DATE: TStringField
      FieldName = 'ON_DATE'
      Size = 100
    end
    object Q_TransNICK_: TStringField
      FieldName = 'NICK_'
      Size = 10
    end
    object Q_TransFIO_CL: TStringField
      FieldName = 'FIO_CL'
      Size = 200
    end
    object Q_TransFIO_MEN: TStringField
      FieldName = 'FIO_MEN'
      Size = 200
    end
    object Q_TransN_MASH: TStringField
      FieldName = 'N_MASH'
      Size = 200
    end
    object Q_TransSTAT: TStringField
      FieldName = 'STAT'
      Size = 1
    end
    object Q_TransADR: TStringField
      FieldName = 'ADR'
      Size = 200
    end
    object Q_TransEND_DATE: TStringField
      FieldName = 'END_DATE'
      Size = 10
    end
    object Q_TransFIO_KEM: TStringField
      FieldName = 'FIO_KEM'
      Size = 200
    end
    object Q_TransFIO_KOMY: TStringField
      FieldName = 'FIO_KOMY'
      Size = 200
    end
  end
  object Q_Trans_DS: TOraDataSource
    DataSet = Q_Trans
    Left = 560
    Top = 192
  end
  object bmMain: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dm.ImgList_24
    ImageOptions.LargeImages = dm.ImgList_32
    ImageOptions.SmoothGlyphs = True
    ImageOptions.StretchGlyphs = False
    ImageOptions.UseLargeImagesForLargeIcons = True
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    ShowShortCutInHint = True
    Style = bmsUseLookAndFeel
    UseF10ForMenu = False
    UseSystemFont = True
    Left = 608
    Top = 192
    DockControlHeights = (
      0
      0
      58
      26)
    object bmToolBar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'MainTB'
      CaptionButtons = <>
      Color = clBtnFace
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 950
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'deTransBegin'
        end
        item
          Visible = True
          ItemName = 'deTransEnd'
        end
        item
          Visible = True
          ItemName = 'btnAdd'
        end
        item
          Visible = True
          ItemName = 'btnEdit'
        end
        item
          Visible = True
          ItemName = 'btnDelete'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnHelp'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnExit'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object bmFooter: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'FooterTB'
      CaptionButtons = <>
      Color = clBtnFace
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 950
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnHotKeys'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic5'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic1'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic2'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic4'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic3'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic6'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic7'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic8'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic9'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRecentItems = False
      Visible = True
      WholeRow = True
    end
    object btnRefresh: TdxBarLargeButton
      Action = aRefresh
      Category = 0
      LargeImageIndex = 32
      AutoGrayScale = False
    end
    object btnAdd: TdxBarLargeButton
      Action = aNew
      Category = 0
      LargeImageIndex = 4
      AutoGrayScale = False
    end
    object btnEdit: TdxBarLargeButton
      Action = aEdit
      Category = 0
      LargeImageIndex = 5
      AutoGrayScale = False
    end
    object btnDelete: TdxBarLargeButton
      Action = aDelete
      Category = 0
      Enabled = False
      LargeImageIndex = 6
      AutoGrayScale = False
    end
    object imgOffice: TcxBarEditItem
      Caption = #1054#1092#1080#1089
      Category = 0
      Hint = #1054#1092#1080#1089
      Visible = ivAlways
      ShowCaption = True
      Width = 100
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items = <
        item
          Description = #1063#1077#1088#1077#1087#1086#1074#1077#1094
          ImageIndex = 0
          Value = '5'
        end
        item
          Description = #1057#1090#1072#1088#1083#1072#1081#1090' ('#1052#1086#1089#1082#1074#1072')'
          Value = '1'
        end
        item
          Description = #1050#1072#1079#1072#1085#1100
          Value = '3'
        end
        item
          Description = #1057#1072#1084#1072#1088#1072
          Value = '2'
        end
        item
          Description = #1059#1092#1072
          Value = '6'
        end
        item
          Description = #1045#1082#1072#1090#1077#1088#1080#1085#1073#1091#1088#1075
          Value = '8'
        end>
    end
    object imgOtdel: TcxBarEditItem
      Caption = #1054#1090#1076#1077#1083':'
      Category = 0
      Hint = #1054#1090#1076#1077#1083':'
      Visible = ivAlways
      ShowCaption = True
      Width = 100
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items = <
        item
          Description = #1040#1082#1089#1077#1089#1089#1091#1072#1088#1099
          ImageIndex = 0
          Value = '121'
        end
        item
          Description = #1043#1086#1088#1096#1077#1095#1085#1099#1081' '#1086#1090#1076#1077#1083
          Value = '61'
        end
        item
          Description = #1054#1090#1076#1077#1083' '#1089#1088#1077#1079#1072#1085#1085#1099#1093' '#1094#1074#1077#1090#1086#1074
          Value = '62'
        end
        item
          Description = #1054#1090#1076#1077#1083' '#1092#1083#1086#1088#1080#1089#1090#1080#1082#1080
          Value = '181'
        end>
    end
    object btnHelp: TdxBarLargeButton
      Caption = #1055#1086#1084#1086#1097#1100
      Category = 0
      Enabled = False
      Hint = #1055#1086#1084#1086#1097#1100
      Visible = ivAlways
      LargeImageIndex = 20
      AutoGrayScale = False
    end
    object btnExit: TdxBarLargeButton
      Action = aExit
      Align = iaRight
      Category = 0
      LargeImageIndex = 21
      AutoGrayScale = False
    end
    object cxBarEditItem3: TcxBarEditItem
      Caption = #1054#1092#1080#1089':'
      Category = 0
      Hint = #1054#1092#1080#1089':'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxLabelProperties'
    end
    object cxBarEditItem4: TcxBarEditItem
      Caption = #1054#1090#1076#1077#1083':'
      Category = 0
      Hint = #1054#1090#1076#1077#1083':'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxLabelProperties'
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
    end
    object dxBarButton1: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
    end
    object dxBarButton4: TdxBarButton
      Caption = #1050#1091#1088#1089' '#1074#1072#1083#1102#1090' '#1074' '#1062#1041
      Category = 0
      Hint = #1050#1091#1088#1089' '#1074#1072#1083#1102#1090' '#1074' '#1062#1041
      Visible = ivAlways
    end
    object dxBarButton5: TdxBarButton
      Caption = #1042#1099#1093#1086#1076
      Category = 0
      Hint = #1042#1099#1093#1086#1076
      Visible = ivAlways
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxLabelProperties'
    end
    object btnHotKeys: TdxBarButton
      Caption = #1075#1086#1088#1103#1095#1080#1077' '#1082#1083#1072#1074#1080#1096#1080
      Category = 0
      Hint = #1075#1086#1088#1103#1095#1080#1077' '#1082#1083#1072#1074#1080#1096#1080
      Visible = ivAlways
      ImageIndex = 36
      OnClick = btnHotKeysClick
    end
    object dxBarColorCombo1: TdxBarColorCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF000101A6
        000202B4000404E4FFFFFFFF000101A6000202B4000404E4FFFFFFFF000EF9A7
        0030FABC00C0FCE4FFFFFFFF0000F9A70000FABC0000FCE4FFFFFFFF000001A7
        000002BC000004E4FFFFFFFF000001A7000002BC000004E4FFFFFFFF000001A7
        000002BC000004E4FFFFFFFF000001A7000002BC000004E4FFFFFFFF000001A7
        000002BC000004E4FFFFFFFF0000F9A70000FABC0000FCE4FFFFFFFF000EF9A7
        0030FABC00C0FCE4FFFFFFFF000101A6000202B4000404E4FFFFFFFF000101A6
        000202B4000404E4FFFFFFFF5201F9075202FA075204FC07FFFFFFFF070056FF
        070072FF0700D2FFFFFFFFFFFF5207FFFF5207FFFF5207FFFFFF}
      Width = 100
      Color = clBlack
    end
    object dxBarStatic1: TdxBarStatic
      Category = 0
      Style = prinat
      Visible = ivAlways
      Width = 50
    end
    object dxBarStatic2: TdxBarStatic
      Caption = '- '#1087#1088#1080#1085#1103#1090
      Category = 0
      Hint = '- '#1087#1088#1080#1085#1103#1090
      Visible = ivAlways
      Width = 70
    end
    object dxBarStatic3: TdxBarStatic
      Caption = '- '#1087#1077#1088#1077#1076#1072#1085
      Category = 0
      Hint = '- '#1087#1077#1088#1077#1076#1072#1085
      Visible = ivAlways
      Width = 70
    end
    object dxBarStatic4: TdxBarStatic
      Category = 0
      Style = peredan
      Visible = ivAlways
      Width = 50
    end
    object dxBarStatic5: TdxBarStatic
      Category = 0
      Visible = ivAlways
      Width = 30
    end
    object dxBarStatic6: TdxBarStatic
      Category = 0
      Style = vputi
      Visible = ivAlways
      Width = 50
    end
    object dxBarStatic7: TdxBarStatic
      Caption = '- '#1074' '#1087#1091#1090#1080
      Category = 0
      Hint = '- '#1074' '#1087#1091#1090#1080
      Visible = ivAlways
      Width = 70
    end
    object dxBarStatic8: TdxBarStatic
      Category = 0
      Style = gotovo
      Visible = ivAlways
      Width = 50
    end
    object dxBarStatic9: TdxBarStatic
      Caption = '- '#1074#1099#1087#1086#1083#1085#1077#1085
      Category = 0
      Hint = '- '#1074#1099#1087#1086#1083#1085#1077#1085
      Visible = ivAlways
      Width = 80
    end
    object deTransBegin: TdxBarDateCombo
      Caption = #1089' '
      Category = 0
      Hint = #1089' '
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDD00000000000DDDDD0FFFFFFFFF0D00000F0000000F0D0FFF0FFFFFFF
        FF0D0F000FFF11FFFF0D0FFF0FFF11FFFF0D0FF10FFFF11FFF0D0FF10FFFFF11
        FF0D0FF10FF11111FF0D0FF10FFFFFFFFF0D0FF104444444440D0FFF04444444
        440D044400000000000D04444444440DDDDD00000000000DDDDD}
      ShowCaption = True
      Width = 100
      ShowEditor = False
      ShowDayText = False
    end
    object deTransEnd: TdxBarDateCombo
      Caption = #1087#1086
      Category = 0
      Hint = #1087#1086
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDD00000000000DDDDD0FFFFFFFFF0D00000F0000000F0D0FFF0FFFFFFF
        FF0D0F000FFF11FFFF0D0FFF0FFF11FFFF0D0FF10FFFF11FFF0D0FF10FFFFF11
        FF0D0FF10FF11111FF0D0FF10FFFFFFFFF0D0FF104444444440D0FFF04444444
        440D044400000000000D04444444440DDDDD00000000000DDDDD}
      ShowCaption = True
      Width = 100
      ShowEditor = False
      ShowDayText = False
    end
  end
  object AlMain: TActionList
    Left = 608
    Top = 232
    object aRefresh: TAction
      Category = 'Main'
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      ShortCut = 116
      OnExecute = aRefreshExecute
    end
    object aNew: TAction
      Category = 'Main'
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      ShortCut = 113
      OnExecute = aNewExecute
    end
    object aEdit: TAction
      Category = 'Main'
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      ShortCut = 114
      OnExecute = aEditExecute
    end
    object aDelete: TAction
      Category = 'Main'
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnExecute = aDeleteExecute
    end
    object aExit: TAction
      Category = 'Main'
      Caption = #1047#1072#1082#1088#1099#1090#1100
      ShortCut = 16499
      OnExecute = aExitExecute
    end
  end
  object SelQ: TOraQuery
    Left = 512
    Top = 232
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 464
    Top = 192
    PixelsPerInch = 96
    object gotovo: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMoneyGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object prinat: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clAppWorkSpace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clScrollBar
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object vputi: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clSkyBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object net: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clCream
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clRed
    end
    object peredan: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clHighlight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
end
