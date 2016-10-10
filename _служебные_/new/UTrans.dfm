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
    ExplicitWidth = 1038
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
        Width = 103
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
        Width = 180
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
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '1'
        Properties.ValueGrayed = '2'
        Properties.ValueUnchecked = '0'
        OnGetCellHint = grTransStatGetCellHint
        Width = 73
      end
    end
    object grTransLevel: TcxGridLevel
      GridView = grTransView
    end
  end
  object Q_Trans: TOraQuery
    SQL.Strings = (
      'select * from status_z order by n_id'
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
    object Q_TransN_ID: TFloatField
      FieldName = 'N_ID'
      Required = True
    end
    object Q_TransON_DATE: TStringField
      FieldName = 'ON_DATE'
      Size = 10
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
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 36
      OnClick = btnHotKeysClick
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
