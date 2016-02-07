object frm_show_nom: Tfrm_show_nom
  Left = 392
  Top = 292
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '  '#1047#1072#1082#1072#1079' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1099
  ClientHeight = 392
  ClientWidth = 666
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
  object Panel2: TPanel
    Left = 0
    Top = 359
    Width = 666
    Height = 33
    Align = alBottom
    Color = 16484996
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      666
      33)
    object BitBtn13: TBitBtn
      Left = 491
      Top = 5
      Width = 171
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 0
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 666
    Height = 359
    Align = alClient
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 664
      Height = 357
      Align = alClient
      AutoFitColWidths = True
      Ctl3D = False
      DataGrouping.GroupLevels = <>
      DataSource = DS_CDS_NOM
      FixedColor = clMoneyGreen
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
      FooterFont.Name = 'Arial'
      FooterFont.Pitch = fpFixed
      FooterFont.Style = []
      FooterRowCount = 1
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
      ParentCtl3D = False
      ParentFont = False
      RowDetailPanel.Color = clBtnFace
      STFilter.Visible = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Pitch = fpFixed
      TitleFont.Style = []
      Columns = <
        item
          EditButtons = <>
          FieldName = 'NICK'
          Footers = <>
          ReadOnly = True
          Title.Caption = #1050#1083#1080#1077#1085#1090
          Width = 76
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'ALPHA'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = '-'
          Width = 20
        end
        item
          EditButtons = <>
          FieldName = 'F_TYPE'
          Footer.FieldName = 'N_ID'
          Footer.ValueType = fvtCount
          Footers = <>
          ReadOnly = True
          Title.Caption = #1058#1080#1087
          Visible = False
          Width = 120
        end
        item
          EditButtons = <>
          FieldName = 'HOL_SUB_TYPE'
          Footers = <>
          ReadOnly = True
          Title.Caption = #1055#1086#1076#1090#1080#1087
          Width = 120
        end
        item
          EditButtons = <>
          FieldName = 'H_NAME'
          Footers = <>
          ReadOnly = True
          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
          Width = 150
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'LEN'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #1044#1083#1080#1085#1072
          Width = 50
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'QUANTITY'
          Footer.FieldName = 'QUANTITY'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1083'-'#1074#1086
          Width = 70
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'WEIGHT'
          Footer.FieldName = 'WEIGHT'
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #1054#1073#1098#1077#1084
          Width = 70
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'TRUCK'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1052#1072#1096#1080#1085#1072
          Visible = False
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'HOL_TYPE'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Visible = False
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object CDS_NOM: TOraQuery
    SQLUpdate.Strings = (
      
        'begin PACK_ORDERS.INS_ORDERS(:ID_ORDERS_CLIENTS, :N_ID, :QUANTIT' +
        'Y, 0, 0, null); end;')
    SQLRefresh.Strings = (
      'select '
      'a.weight, a.quantity'
      'from'
      'orders_list a'
      'where '
      'a.n_id = :OLD_N_ID'
      'and a.ID_ORDERS_CLIENTS = :OLD_ID_ORDERS_CLIENTS')
    Session = DM.Main_session
    SQL.Strings = (
      'select '
      'a.id_orders_clients,'
      'a.n_id, '
      'a.truck,'
      'a.weight,'
      'a.quantity,'
      'b.id_orders,'
      'b.alpha,'
      'N.VBN, '
      'N.LEN, '
      'N.PACK,'
      'N.HOL_TYPE, '
      'n.h_name,'
      'c.F_SUB_TYPE,'
      'c.F_TYPE,'
      'c.hol_SUB_TYPE,'
      'c.fst_id,'
      'd.nick'
      'FROM '
      'orders_list a, '
      'orders_clients b, '
      'NOMENCLATURE N,'
      'FST_VIEW c,'
      'clients d'
      'WHERE '
      '/*Filter*/ 1=1 '
      'AND a.id_orders_clients = b.id_orders_clients '
      'and b.id_orders = :ID_ORDERS_ '
      'and a.N_ID = N.N_ID '
      'AND n.Fst_Id = c.FST_ID'
      'and a.active=1 '
      'and b.active = 1'
      'and a.quantity <> 0'
      'and b.id_clients = d.id_clients'
      'and a.n_id = :n_id_'
      'order by d.nick')
    FetchAll = True
    RefreshOptions = [roAfterUpdate]
    Left = 208
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_ORDERS_'
      end
      item
        DataType = ftUnknown
        Name = 'n_id_'
      end>
    object CDS_NOMN_ID: TFloatField
      FieldName = 'N_ID'
      Required = True
    end
    object CDS_NOMTRUCK: TIntegerField
      FieldName = 'TRUCK'
    end
    object CDS_NOMWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object CDS_NOMQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Required = True
    end
    object CDS_NOMID_ORDERS: TFloatField
      FieldName = 'ID_ORDERS'
      Required = True
    end
    object CDS_NOMVBN: TIntegerField
      FieldName = 'VBN'
      Required = True
    end
    object CDS_NOMLEN: TIntegerField
      FieldName = 'LEN'
    end
    object CDS_NOMPACK: TIntegerField
      FieldName = 'PACK'
    end
    object CDS_NOMHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
      Size = 5
    end
    object CDS_NOMH_NAME: TStringField
      FieldName = 'H_NAME'
      Size = 256
    end
    object CDS_NOMF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Required = True
      Size = 50
    end
    object CDS_NOMF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Required = True
      Size = 50
    end
    object CDS_NOMHOL_SUB_TYPE: TStringField
      FieldName = 'HOL_SUB_TYPE'
      Size = 50
    end
    object CDS_NOMFST_ID: TFloatField
      FieldName = 'FST_ID'
      Required = True
    end
    object CDS_NOMNICK: TStringField
      FieldName = 'NICK'
      Required = True
    end
    object CDS_NOMID_ORDERS_CLIENTS: TFloatField
      FieldName = 'ID_ORDERS_CLIENTS'
      Required = True
    end
    object CDS_NOMALPHA: TStringField
      FieldName = 'ALPHA'
      Size = 2
    end
  end
  object DS_CDS_NOM: TOraDataSource
    DataSet = CDS_NOM
    Left = 256
    Top = 112
  end
end
