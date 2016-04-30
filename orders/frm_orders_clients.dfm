object orders_clients: Torders_clients
  Left = 460
  Top = 287
  Caption = ' '#1047#1072#1082#1072#1079#1099' '#1082#1083#1080#1077#1085#1090#1086#1074
  ClientHeight = 642
  ClientWidth = 981
  Color = clBtnFace
  Constraints.MinHeight = 550
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel4: TPanel
    Left = 0
    Top = 90
    Width = 981
    Height = 33
    Align = alTop
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
    object Label9: TLabel
      Left = 484
      Top = 8
      Width = 78
      Height = 16
      Caption = #8470' '#1080#1085#1074#1086#1081#1089#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 164
      Top = 8
      Width = 152
      Height = 16
      Caption = #1044#1072#1090#1072' '#1074#1099#1093#1086#1076#1072' '#1084#1072#1096#1080#1085#1099':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 576
      Top = 8
      Width = 53
      Height = 16
      AutoSize = True
      DataField = 'INVOICE'
      DataSource = DM.Q_ORDERS_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 322
      Top = 8
      Width = 53
      Height = 16
      AutoSize = True
      DataField = 'DATE_TRUCK_OUT'
      DataSource = DM.Q_ORDERS_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 8
      Top = 8
      Width = 21
      Height = 16
      Caption = #8470':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 35
      Top = 8
      Width = 53
      Height = 16
      AutoSize = True
      DataField = 'ORDER_SEQ'
      DataSource = DM.Q_ORDERS_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 684
      Top = 8
      Width = 74
      Height = 16
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 772
      Top = 8
      Width = 53
      Height = 16
      AutoSize = True
      DataField = 'SUM_PRICE'
      DataSource = DM.Q_ORDERS_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 89
      Top = 8
      Width = 53
      Height = 16
      AutoSize = True
      DataField = 'ID_ORDERS'
      DataSource = DM.Q_ORDERS_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 123
    Width = 981
    Height = 26
    Align = alTop
    Caption = #1057#1087#1080#1089#1086#1082' '#1082#1083#1080#1077#1085#1090#1086#1074' '#1074' '#1079#1072#1082#1072#1079#1077':'
    Color = clBtnShadow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
  end
  object Panel3: TPanel
    Left = 0
    Top = 149
    Width = 981
    Height = 54
    Align = alTop
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Label2: TLabel
      Left = 8
      Top = 3
      Width = 310
      Height = 14
      Caption = #1042#1074#1086#1076' '#1083#1072#1090#1080#1085#1089#1082#1080#1084#1080' '#1073#1091#1082#1074#1072#1084#1080' - '#1073#1099#1089#1090#1088#1099#1081' '#1087#1086#1080#1089#1082' '#1087#1086' '#1082#1086#1076#1091' '#1082#1083#1080#1077#1085#1090#1072
    end
    object Label3: TLabel
      Left = 8
      Top = 25
      Width = 300
      Height = 14
      Caption = #1042#1074#1086#1076' '#1088#1091#1089#1089#1082#1080#1084#1080' '#1073#1091#1082#1074#1072#1084#1080' - '#1073#1099#1089#1090#1088#1099#1081' '#1087#1086#1080#1089#1082' '#1087#1086' '#1060#1048#1054' '#1082#1083#1080#1077#1085#1090#1072
    end
    object Label4: TLabel
      Left = 528
      Top = 3
      Width = 281
      Height = 38
      AutoSize = False
      Caption = 
        'Delete - '#1087#1086#1083#1085#1086#1077' '#1089#1090#1080#1088#1072#1085#1080#1077' '#1092#1080#1083#1100#1090#1088#1072' '#1076#1083#1103' '#1087#1086#1080#1089#1082#1072', BackSpace - '#1091#1076#1072#1083#1077#1085#1080 +
        #1077' '#1087#1086#1089#1083#1077#1076#1085#1077#1075#1086' '#1089#1080#1084#1074#1086#1083#1072
      WordWrap = True
    end
    object pod_nick: TLabel
      Left = 340
      Top = 1
      Width = 168
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
      Left = 340
      Top = 23
      Width = 168
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
      Left = 344
      Top = 3
      Width = 5
      Height = 16
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label7: TLabel
      Left = 344
      Top = 26
      Width = 5
      Height = 16
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 203
    Width = 981
    Height = 398
    Align = alClient
    BorderWidth = 2
    Color = clAppWorkSpace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object grClients: TcxGrid
      Left = 3
      Top = 3
      Width = 975
      Height = 392
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.Kind = lfFlat
      object grClients_v: TcxGridDBTableView
        PopupMenu = PopupMenu1
        OnDblClick = DBGridEh1DblClick
        OnKeyDown = DBGridEh1KeyDown
        OnKeyPress = DBGridEh1KeyPress
        NavigatorButtons.ConfirmDelete = False
        FilterBox.Position = fpTop
        OnCustomDrawCell = grClients_vCustomDrawCell
        DataController.DataSource = DM.Q_ORDERS_ORDERS_DS
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0'
            Kind = skSum
            Column = grClients_vPACK_
          end
          item
            Format = '0'
            Kind = skCount
            Column = grClients_vNICK
          end
          item
            Format = '0'
            Kind = skSum
            Column = grClients_vSSS
          end
          item
            Format = '0'
            Kind = skSum
            Column = grClients_vQQQ
          end
          item
            Format = '0.0000'
            Kind = skSum
            Column = grClients_vWEIGHT
          end
          item
            Format = '0.00'
            Kind = skSum
            Column = grClients_vSUM_PRICE
          end
          item
            Format = '0'
            Kind = skSum
            Column = grClients_vHAVE_NOTVALID_FLOWERS
          end
          item
            Format = '0'
            Kind = skSum
            Column = grClients_vHAVE_OLD_FLOWERS
          end
          item
            Format = '0'
            Kind = skSum
            Column = grClients_vISMISSCODE
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1086#1074
        FilterRow.Visible = True
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
        OptionsView.CellAutoHeight = True
        OptionsView.DataRowHeight = 30
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object grClients_vPr: TcxGridDBColumn
          Caption = 'Pr'
          DataBinding.FieldName = 'CHECKED'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 40
          Options.HorzSizing = False
          Options.Moving = False
          Width = 40
        end
        object grClients_vNICK: TcxGridDBColumn
          Caption = #1050#1086#1076' '#1082#1083#1080#1077#1085#1090#1072
          DataBinding.FieldName = 'NICK'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Vert = taVCenter
          Properties.ReadOnly = True
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 100
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 100
        end
        object grClients_vALPHA: TcxGridDBColumn
          DataBinding.FieldName = 'ALPHA'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 30
          Options.HorzSizing = False
          Options.Moving = False
          Width = 30
          IsCaptionAssigned = True
        end
        object grClients_vPACK_: TcxGridDBColumn
          Caption = #1055#1072#1082#1091#1102#1090#1089#1103
          DataBinding.FieldName = 'PACK_'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ReadOnly = True
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 80
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 80
        end
        object grClients_vFIO: TcxGridDBColumn
          Caption = #1060#1048#1054' / '#1085#1072#1079#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'FIO'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 100
          Options.Editing = False
          Width = 200
        end
        object grClients_vN_TRUCK: TcxGridDBColumn
          Caption = #8470' '#1084#1072#1096#1080#1085#1099
          DataBinding.FieldName = 'N_TRUCK'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 80
          Options.Editing = False
        end
        object grClients_vSSS: TcxGridDBColumn
          Caption = #1055#1086#1079#1080#1094#1080#1081
          DataBinding.FieldName = 'SSS'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 70
          Options.Editing = False
          Options.HorzSizing = False
          Width = 70
        end
        object grClients_vQQQ: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086
          DataBinding.FieldName = 'QQQ'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 70
          Options.Editing = False
          Options.HorzSizing = False
          Width = 70
        end
        object grClients_vWEIGHT: TcxGridDBColumn
          Caption = #1054#1073#1098#1077#1084
          DataBinding.FieldName = 'WEIGHT'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 90
          Options.Editing = False
          Options.HorzSizing = False
          Width = 90
        end
        object grClients_vSUM_PRICE: TcxGridDBColumn
          Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
          DataBinding.FieldName = 'SUM_PRICE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.Alignment.Vert = taVCenter
          Properties.DisplayFormat = ',0.00;-,0.00'
          Properties.ReadOnly = True
          Properties.UseThousandSeparator = True
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 100
        end
        object grClients_vNICK_USER: TcxGridDBColumn
          Caption = #1054#1087#1077#1088#1072#1090#1086#1088
          DataBinding.FieldName = 'NICK_USER'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 80
          Options.Editing = False
          Options.HorzSizing = False
          Width = 80
        end
        object grClients_vIN_FILE: TcxGridDBColumn
          Caption = #1048#1089#1090#1086#1095#1085#1080#1082
          DataBinding.FieldName = 'IN_FILE'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Vert = taVCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 80
          Options.Editing = False
          Width = 150
        end
        object grClients_vHAVE_NOTVALID_FLOWERS: TcxGridDBColumn
          Caption = #1045#1089#1090#1100' '#1087#1086#1079#1080#1094#1080#1080' '#1076#1088'. '#1087#1086#1089#1090'.'
          DataBinding.FieldName = 'HAVE_NOTVALID_FLOWERS'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          MinWidth = 70
          Options.Editing = False
          Options.HorzSizing = False
          Width = 70
        end
        object grClients_vHAVE_OLD_FLOWERS: TcxGridDBColumn
          Caption = #1045#1089#1090#1100' '#1089#1090#1072#1088#1099#1077' '#1087#1086#1079#1080#1094#1080#1080
          DataBinding.FieldName = 'HAVE_OLD_FLOWERS'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          MinWidth = 70
          Options.Editing = False
          Options.HorzSizing = False
          Width = 70
        end
        object grClients_vISMISSCODE: TcxGridDBColumn
          Caption = #1054#1096#1080#1073#1082#1080
          DataBinding.FieldName = 'ISMISSCODE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.ImmediatePost = True
          Properties.ReadOnly = True
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          HeaderGlyphAlignmentHorz = taCenter
          MinWidth = 70
          Options.Editing = False
          Options.HorzSizing = False
          Width = 70
        end
        object grClients_vID_ORDERS_CLIENTS: TcxGridDBColumn
          DataBinding.FieldName = 'ID_ORDERS_CLIENTS'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Visible = False
        end
        object grClients_vD_DATE: TcxGridDBColumn
          DataBinding.FieldName = 'D_DATE'
          Visible = False
        end
        object grClients_vCAPACITY: TcxGridDBColumn
          DataBinding.FieldName = 'CAPACITY'
          Visible = False
        end
        object grClients_vPHONE: TcxGridDBColumn
          DataBinding.FieldName = 'PHONE'
          Visible = False
        end
        object grClients_vNN: TcxGridDBColumn
          DataBinding.FieldName = 'NN'
          Visible = False
        end
        object grClients_vID_ORDERS: TcxGridDBColumn
          DataBinding.FieldName = 'ID_ORDERS'
          Visible = False
        end
        object grClients_vID_CLIENTS: TcxGridDBColumn
          DataBinding.FieldName = 'ID_CLIENTS'
          Visible = False
        end
        object grClients_vMISS_CODE: TcxGridDBColumn
          DataBinding.FieldName = 'MISS_CODE'
          Visible = False
        end
        object grClients_vBLOCK1: TcxGridDBColumn
          DataBinding.FieldName = 'BLOCK1'
          Visible = False
        end
        object grClients_vBLOCK2: TcxGridDBColumn
          DataBinding.FieldName = 'BLOCK2'
          Visible = False
        end
        object grClients_vPRIORITY: TcxGridDBColumn
          Caption = #1055#1088#1080#1086#1088#1080#1090#1077#1090
          DataBinding.FieldName = 'PRIORITY'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ',0;-,0'
          Properties.MaxValue = 99.000000000000000000
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          MinWidth = 74
          Options.HorzSizing = False
        end
      end
      object grClients_l: TcxGridLevel
        GridView = grClients_v
      end
    end
  end
  object bdcOrderClients: TdxBarDockControl
    Left = 0
    Top = 601
    Width = 981
    Height = 41
    Align = dalBottom
    BarManager = bmOrdersClients
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 981
    Height = 33
    Align = alTop
    Caption = #1047#1072#1075#1086#1083#1086#1074#1086#1082
    Color = clWhite
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Panel8: TPanel
      Left = 795
      Top = 1
      Width = 185
      Height = 31
      Align = alRight
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
    end
  end
  object ActionList1: TActionList
    Left = 360
    Top = 264
    object add: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      ShortCut = 115
      OnExecute = BitBtn10Click
    end
    object del: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1059#1076#1072#1083#1080#1090#1100
      ShortCut = 114
      OnExecute = BitBtn12Click
    end
    object Ctrl_Enter: TAction
      Caption = 'Ctrl_Enter'
      ShortCut = 16397
      OnExecute = DBGridEh1DblClick
    end
    object print_order: TAction
      Caption = #1055#1077#1095#1072#1090#1100' '#1082#1083#1080#1077#1085#1090#1086#1074
      ShortCut = 121
      OnExecute = BitBtn4Click
    end
    object raznoss: TAction
      Caption = #1056#1072#1079#1085#1086#1089' '#1087#1086' '#1084#1072#1096#1080#1085#1072#1084
      Hint = #1056#1072#1079#1085#1086#1089' '#1087#1086' '#1084#1072#1096#1080#1085#1072#1084
      ShortCut = 120
      OnExecute = BitBtn2Click
    end
    object Select_all: TAction
      Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077
      ShortCut = 16449
      OnExecute = Select_allExecute
    end
    object DeSelect_all: TAction
      Caption = #1056#1072#1079#1074#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077
      ShortCut = 24641
      OnExecute = DeSelect_allExecute
    end
    object statistic: TAction
      Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
      Hint = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
      ShortCut = 112
      OnExecute = BitBtn5Click
    end
    object print_order_list: TAction
      Caption = #1047#1072#1082#1072#1079' '#1082#1083#1080#1077#1085#1090#1072
      ShortCut = 122
      OnExecute = BitBtn6Click
    end
    object aLoadOrder: TAction
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1079#1072#1082#1072#1079
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1079#1072#1082#1072#1079
      ShortCut = 119
      OnExecute = aLoadOrderExecute
    end
    object aCheckOrder: TAction
      Caption = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1086#1096#1080#1073#1082#1080
      Hint = #1055#1088#1086#1074#1077#1088#1080#1090#1100' '#1086#1096#1080#1073#1082#1080
      OnExecute = aCheckOrderExecute
    end
    object aCancel: TAction
      Caption = 'aCancel'
      ShortCut = 27
      OnExecute = BitBtn13Click
    end
    object aPrintOrderList: TAction
      Caption = #1055#1077#1095#1072#1090#1100' '#1087#1086#1079#1080#1094#1080#1081' '#1079#1072#1082#1072#1079#1072
      OnExecute = aPrintOrderListExecute
    end
    object aShowOnlyPack: TAction
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1091#1087#1072#1082#1086#1074#1072#1085#1085#1099#1093' '#1082#1083#1080#1077#1085#1090#1086#1074
      ShortCut = 16433
      OnExecute = aShowOnlyPackExecute
    end
    object aShowOnlyNotPack: TAction
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1085#1077#1091#1087#1072#1082#1086#1074#1072#1085#1085#1099#1093' '#1082#1083#1080#1077#1085#1090#1086#1074
      ShortCut = 16434
      OnExecute = aShowOnlyNotPackExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 328
    Top = 264
    object N1: TMenuItem
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      ShortCut = 16454
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      ShortCut = 16451
      OnClick = N2Click
    end
    object aShowOnlyPack1: TMenuItem
      Action = aShowOnlyPack
    end
    object aShowOnlyNotPack1: TMenuItem
      Action = aShowOnlyNotPack
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100' '#1089#1087#1080#1089#1082#1072' '#1082#1083#1080#1077#1085#1090#1086#1074
      OnClick = BitBtn4Click
    end
    object N5: TMenuItem
      Caption = #1055#1086#1076#1075#1086#1090#1086#1074#1082#1072' '#1092#1072#1081#1083#1086#1074' '#1076#1083#1103' '#1086#1090#1087#1088#1072#1074#1082#1080
      OnClick = N5Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object N7: TMenuItem
      Action = Select_all
    end
    object N13: TMenuItem
      Action = DeSelect_all
    end
    object N12: TMenuItem
      Caption = '-'
    end
    object N8: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082'...'
      ShortCut = 16467
      OnClick = N8Click
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object mnChangeClient: TMenuItem
      Caption = #1057#1084#1077#1085#1080#1090#1100' '#1082#1083#1080#1077#1085#1090#1072' '#1074' '#1079#1072#1082#1072#1079#1077
      OnClick = mnChangeClientClick
    end
    object N10: TMenuItem
      Caption = #1055#1086#1084#1077#1090#1080#1090#1100' / '#1089#1085#1103#1090#1100' '#1087#1088#1080#1079#1085#1072#1082' '#1087#1072#1082#1086#1074#1082#1080
      ShortCut = 16464
      OnClick = N10Click
    end
    object N11: TMenuItem
      Caption = '-'
    end
    object m_showusers: TMenuItem
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1079#1072#1087#1080#1089#1080' '#1074#1089#1077#1093' '#1086#1087#1077#1088#1072#1090#1086#1088#1086#1074
      Default = True
      OnClick = m_showusersClick
    end
    object N14: TMenuItem
      Caption = '-'
    end
    object mnIntoTruck: TMenuItem
      Caption = #1047#1072#1082#1072#1079' '#1082#1083#1080#1077#1085#1090#1072' '#1074' '#1084#1072#1096#1080#1085#1091
      object N15: TMenuItem
        Tag = 1
        Caption = '1-'#1103
        OnClick = N15Click
      end
      object N21: TMenuItem
        Tag = 2
        Caption = '2-'#1103
        OnClick = N15Click
      end
      object N31: TMenuItem
        Tag = 3
        Caption = '3-'#1103
        OnClick = N15Click
      end
      object N41: TMenuItem
        Tag = 4
        Caption = '4-'#1103
        OnClick = N15Click
      end
      object N51: TMenuItem
        Tag = 5
        Caption = '5-'#1103
        OnClick = N15Click
      end
      object N61: TMenuItem
        Tag = 6
        Caption = '6-'#1103
        OnClick = N15Click
      end
      object N71: TMenuItem
        Tag = 7
        Caption = '7-'#1103
        OnClick = N15Click
      end
      object N81: TMenuItem
        Tag = 8
        Caption = '8-'#1103
        OnClick = N15Click
      end
      object N91: TMenuItem
        Tag = 9
        Caption = '9-'#1103
        OnClick = N15Click
      end
      object N101: TMenuItem
        Tag = 10
        Caption = '10-'#1103
        OnClick = N15Click
      end
      object N16: TMenuItem
        Caption = '-'
      end
      object mnCLearTruck: TMenuItem
        Caption = #1059#1073#1088#1072#1090#1100' '#1089' '#1084#1072#1096#1080#1085#1099
        OnClick = mnCLearTruckClick
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'excell |*.xls;*.xl;*.xlt|XML|*.xml'
    InitialDir = '/'
    Left = 424
    Top = 264
  end
  object cdsNom: TOraQuery
    SQL.Strings = (
      
        'SELECT n_id FROM nomenclature_mat_view where nvl(bar_code,code) ' +
        '= :p_code and ID_DEPARTMENTS = :p_dep')
    Left = 392
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'p_code'
      end
      item
        DataType = ftUnknown
        Name = 'p_dep'
      end>
    object cdsNomN_ID: TFloatField
      FieldName = 'N_ID'
      Required = True
    end
  end
  object bmOrdersClients: TdxBarManager
    Scaled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = DM.cxImageList1
    ImageOptions.LargeIcons = True
    ImageOptions.StretchGlyphs = False
    ImageOptions.UseLargeImagesForLargeIcons = True
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    MenuAnimations = maFade
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseFullReset = True
    UseSystemFont = False
    Left = 824
    Top = 280
    DockControlHeights = (
      0
      0
      57
      0)
    object bm_debtBar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'main_menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 975
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'blbRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'blbAdd'
        end
        item
          Visible = True
          ItemName = 'blbDel'
        end
        item
          Visible = True
          ItemName = 'blbImportFile'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'blbLoadFile'
        end
        item
          Visible = True
          ItemName = 'blbCargo'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'blbFindOrder'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'blbPrint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'blbFiles'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object bmOrdersClientsBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'client_footer'
      CaptionButtons = <>
      DockControl = bdcOrderClients
      DockedDockControl = bdcOrderClients
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1015
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarStatic5'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic18'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic19'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic20'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic21'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic22'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic23'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object dxBarStatic6: TdxBarStatic
      Caption = '- '#1087#1086#1084#1077#1090#1082#1072
      Category = 0
      Hint = '- '#1087#1086#1084#1077#1090#1082#1072
      Visible = ivAlways
    end
    object blbRefresh: TdxBarLargeButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      LargeImageIndex = 32
      OnClick = SpeedButton1Click
      AutoGrayScale = False
      HotImageIndex = 32
    end
    object blbAdd: TdxBarLargeButton
      Action = add
      Category = 0
      LargeImageIndex = 4
      AutoGrayScale = False
      HotImageIndex = 4
    end
    object blbEdit: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 5
      AutoGrayScale = False
      HotImageIndex = 5
    end
    object blbDel: TdxBarLargeButton
      Action = del
      Category = 0
      LargeImageIndex = 6
      AutoGrayScale = False
      HotImageIndex = 6
    end
    object blbFindOrder: TdxBarLargeButton
      Caption = #1060#1091#1085#1082#1094#1080#1080
      Category = 0
      Hint = #1054#1073#1097#1080#1077' '#1092#1091#1085#1082#1094#1080#1080
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = bpmCopyOrder
      LargeImageIndex = 13
      AutoGrayScale = False
      HotImageIndex = 35
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object blbCargo: TdxBarLargeButton
      Action = statistic
      Category = 0
      LargeImageIndex = 22
      AutoGrayScale = False
      HotImageIndex = 22
    end
    object blbPrint: TdxBarLargeButton
      Caption = #1055#1077#1095#1072#1090#1100
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = bpmPrint
      LargeImageIndex = 38
      AutoGrayScale = False
      HotImageIndex = 38
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
      AutoGrayScale = False
      HotImageIndex = 38
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Align = iaRight
      Caption = #1053#1072#1079#1072#1076
      Category = 0
      Hint = #1053#1072#1079#1072#1076
      Visible = ivAlways
      LargeImageIndex = 7
      OnClick = BitBtn13Click
      AutoGrayScale = False
      HotImageIndex = 21
      Width = 70
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
      AutoGrayScale = False
      HotImageIndex = 31
    end
    object dxBarStatic7: TdxBarStatic
      Caption = 'S NICK'
      Category = 0
      Hint = 'S NICK'
      Visible = ivAlways
      BorderStyle = sbsLowered
      Width = 50
    end
    object dxBarStatic8: TdxBarStatic
      Caption = 'S NICK'
      Category = 0
      Hint = 'S NICK'
      Visible = ivAlways
      BorderStyle = sbsLowered
      Width = 50
    end
    object dxBarStatic9: TdxBarStatic
      Caption = '- '#1079#1072#1082#1088#1099#1090#1099#1081' '#1076#1077#1073#1080#1090#1086#1088
      Category = 0
      Hint = '- '#1079#1072#1082#1088#1099#1090#1099#1081' '#1076#1077#1073#1080#1090#1086#1088
      Visible = ivAlways
    end
    object dxBarStatic10: TdxBarStatic
      Caption = '- '#1079#1072#1082#1088#1099#1090#1099#1081' '#1074' '#1087#1086#1083#1100#1079#1091' '#1076#1088#1091#1075#1086#1075#1086
      Category = 0
      Hint = '- '#1079#1072#1082#1088#1099#1090#1099#1081' '#1074' '#1087#1086#1083#1100#1079#1091' '#1076#1088#1091#1075#1086#1075#1086
      Visible = ivAlways
    end
    object dxBarStatic11: TdxBarStatic
      Caption = 'Ctrl+N - '#1087#1077#1088#1077#1081#1090#1080' '#1074' '#1087#1086#1080#1089#1082' '#1087#1086' '#1082#1086#1076#1091
      Category = 0
      Hint = 'Ctrl+N - '#1087#1077#1088#1077#1081#1090#1080' '#1074' '#1087#1086#1080#1089#1082' '#1087#1086' '#1082#1086#1076#1091
      Visible = ivAlways
    end
    object dxBarStatic12: TdxBarStatic
      Caption = 'Ctrl+M - '#1087#1077#1088#1077#1081#1090#1080' '#1074' '#1087#1086#1080#1089#1082' '#1087#1086' '#1060#1048#1054
      Category = 0
      Hint = 'Ctrl+M - '#1087#1077#1088#1077#1081#1090#1080' '#1074' '#1087#1086#1080#1089#1082' '#1087#1086' '#1060#1048#1054
      Visible = ivAlways
    end
    object dxBarStatic13: TdxBarStatic
      Caption = '2-'#1081' '#1082#1083#1080#1082' '#1087#1086' '#1075#1088#1091#1087#1087#1077' - '#1087#1088#1086#1089#1084#1086#1090#1088' '#1074#1089#1077#1093' '#1076#1077#1073#1080#1090#1086#1088#1086#1074' '#1074' '#1075#1088#1091#1087#1087#1077
      Category = 0
      Hint = '2-'#1081' '#1082#1083#1080#1082' '#1087#1086' '#1075#1088#1091#1087#1087#1077' - '#1087#1088#1086#1089#1084#1086#1090#1088' '#1074#1089#1077#1093' '#1076#1077#1073#1080#1090#1086#1088#1086#1074' '#1074' '#1075#1088#1091#1087#1087#1077
      Visible = ivAlways
    end
    object dxBarStatic14: TdxBarStatic
      Caption = 'S NICK'
      Category = 0
      Hint = 'S NICK'
      Visible = ivAlways
      BorderStyle = sbsLowered
      Width = 50
    end
    object dxBarStatic15: TdxBarStatic
      Caption = '- '#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085' '#1073#1091#1093'-'#1077#1081
      Category = 0
      Hint = '- '#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085' '#1073#1091#1093'-'#1077#1081
      Visible = ivAlways
    end
    object dxBarStatic16: TdxBarStatic
      Caption = 'Ctrl+Enter '#1085#1072' '#1075#1088#1091#1087#1087#1077' - '#1087#1088#1086#1089#1084#1086#1090#1088' '#1076#1077#1073#1080#1090#1086#1088#1086#1074' '#1074' '#1075#1088#1091#1087#1087#1077
      Category = 0
      Hint = 'Ctrl+Enter '#1085#1072' '#1075#1088#1091#1087#1087#1077' - '#1087#1088#1086#1089#1084#1086#1090#1088' '#1076#1077#1073#1080#1090#1086#1088#1086#1074' '#1074' '#1075#1088#1091#1087#1087#1077
      Visible = ivAlways
    end
    object dxBarStatic17: TdxBarStatic
      Caption = 'Ctrl+Enter - '#1087#1088#1086#1089#1084#1086#1090#1088' '#1082#1072#1088#1090#1086#1095#1082#1080' '#1076#1077#1073#1080#1090#1086#1088#1072
      Category = 0
      Hint = 'Ctrl+Enter - '#1087#1088#1086#1089#1084#1086#1090#1088' '#1082#1072#1088#1090#1086#1095#1082#1080' '#1076#1077#1073#1080#1090#1086#1088#1072
      Visible = ivAlways
    end
    object bbPrintList: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object bbPrintRaport: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object imgOffice: TcxBarEditItem
      Caption = #1054#1092#1080#1089
      Category = 0
      Hint = #1054#1092#1080#1089
      Visible = ivAlways
      Width = 120
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items = <>
    end
    object dxBarButton1: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object blbFiles: TdxBarLargeButton
      Caption = #1043#1077#1085#1077#1088#1072#1094#1080#1103' '#1092#1072#1081#1083#1086#1074
      Category = 0
      Hint = #1043#1077#1085#1077#1088#1072#1094#1080#1103' '#1092#1072#1081#1083#1086#1074
      Visible = ivNever
      ButtonStyle = bsDropDown
      LargeImageIndex = 34
      AutoGrayScale = False
      HotImageIndex = 28
    end
    object bc_fontsize: TcxBarEditItem
      Caption = ' '#1064#1088#1080#1092#1090
      Category = 0
      Hint = ' '#1064#1088#1080#1092#1090
      Visible = ivAlways
      ShowCaption = True
      Width = 60
      PropertiesClassName = 'TcxComboBoxProperties'
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items.Strings = (
        '8'
        '9'
        '10'
        '11'
        '12')
    end
    object dxBarStatic1: TdxBarStatic
      Caption = 'Ctrl+C'
      Category = 0
      Hint = 'Ctrl+C'
      Visible = ivAlways
    end
    object dxBarStatic2: TdxBarStatic
      Caption = '- '#1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      Category = 0
      Hint = '- '#1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      Visible = ivAlways
    end
    object dxBarStatic3: TdxBarStatic
      Caption = 'Ctrl+F'
      Category = 0
      Hint = 'Ctrl+F'
      Visible = ivAlways
    end
    object dxBarStatic4: TdxBarStatic
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      Category = 0
      Hint = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      Visible = ivAlways
    end
    object pmPrintClientOrder: TdxBarButton
      Action = print_order_list
      Category = 0
    end
    object pmPrintClientList: TdxBarButton
      Action = print_order
      Category = 0
    end
    object bbFileSup: TdxBarButton
      Caption = #1060#1072#1081#1083#1099' '#1076#1083#1103' '#1087#1086#1089#1090#1072#1097#1080#1082#1072
      Category = 0
      Hint = #1060#1072#1081#1083#1099' '#1076#1083#1103' '#1087#1086#1089#1090#1072#1097#1080#1082#1072
      Visible = ivAlways
    end
    object bbFileMSK: TdxBarButton
      Caption = #1060#1072#1081#1083#1099' '#1076#1083#1103' '#1052#1086#1089#1082#1074#1099
      Category = 0
      Hint = #1060#1072#1081#1083#1099' '#1076#1083#1103' '#1052#1086#1089#1082#1074#1099
      Visible = ivAlways
    end
    object blbLoadFile: TdxBarLargeButton
      Action = raznoss
      Caption = #1055#1086' '#1084#1072#1096#1080#1085#1072#1084
      Category = 0
      LargeImageIndex = 31
      AutoGrayScale = False
    end
    object pmPrintOrder: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100' '#1079#1072#1082#1072#1079#1072
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100' '#1079#1072#1082#1072#1079#1072
      Visible = ivAlways
      OnClick = btnPrintAllClick
    end
    object pmPrintTrolls: TdxBarButton
      Caption = #1069#1090#1080#1082#1077#1090#1082#1080' '#1085#1072' '#1090#1088#1086#1083#1080
      Category = 0
      Hint = #1069#1090#1080#1082#1077#1090#1082#1080' '#1085#1072' '#1090#1088#1086#1083#1080
      Visible = ivAlways
      OnClick = prnTrollClick
    end
    object pmIntoOrder: TdxBarButton
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1082#1083#1080#1077#1085#1090#1072' '#1074' '#1090#1077#1082#1091#1097#1080#1081' '#1079#1072#1082#1072#1079
      Category = 0
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1082#1083#1080#1077#1085#1090#1072' '#1074' '#1090#1077#1082#1091#1097#1080#1081' '#1079#1072#1082#1072#1079
      Visible = ivAlways
      OnClick = pmIntoOrderClick
    end
    object pmOutOrder: TdxBarButton
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1082#1083#1080#1077#1085#1090#1072' '#1074' '#1076#1088#1091#1075#1086#1081' '#1079#1072#1082#1072#1079
      Category = 0
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1091#1097#1077#1075#1086' '#1082#1083#1080#1077#1085#1090#1072' '#1074' '#1076#1088#1091#1075#1086#1081' '#1079#1072#1082#1072#1079
      Visible = ivAlways
      OnClick = pmOutOrderClick
    end
    object blbImportFile: TdxBarLargeButton
      Action = aLoadOrder
      Category = 0
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1092#1072#1081#1083' '#1074' '#1090#1077#1082#1091#1097#1080#1081' '#1079#1072#1082#1072#1079
      LargeImageIndex = 23
      AutoGrayScale = False
    end
    object pmCheckOrder: TdxBarButton
      Action = aCheckOrder
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = print_order_list
      Category = 0
    end
    object dxBarButton3: TdxBarButton
      Action = print_order
      Category = 0
    end
    object dxBarStatic5: TdxBarStatic
      Caption = 'F4 - '#1076#1086#1073#1072#1074#1080#1090#1100' | F3 - '#1091#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = 'F4 - '#1076#1086#1073#1072#1074#1080#1090#1100' | F3 - '#1091#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
    end
    object dxBarStatic18: TdxBarStatic
      Caption = 'F9 - '#1088#1072#1079#1085#1086#1089' '#1087#1086' '#1084#1072#1096#1080#1085#1072#1084
      Category = 0
      Hint = 'F9 - '#1088#1072#1079#1085#1086#1089' '#1087#1086' '#1084#1072#1096#1080#1085#1072#1084
      Visible = ivAlways
    end
    object dxBarStatic19: TdxBarStatic
      Caption = 'F10 - '#1087#1077#1095#1072#1090#1100' '#1082#1083#1080#1077#1085#1090#1086#1074' | F11 - '#1087#1077#1095#1072#1090#1100' '#1079#1072#1082#1072#1079#1072' '#1082#1083#1080#1077#1085#1090#1072
      Category = 0
      Hint = 'F10 - '#1087#1077#1095#1072#1090#1100' '#1082#1083#1080#1077#1085#1090#1086#1074' | F11 - '#1087#1077#1095#1072#1090#1100' '#1079#1072#1082#1072#1079#1072' '#1082#1083#1080#1077#1085#1090#1072
      Visible = ivAlways
    end
    object dxBarStatic20: TdxBarStatic
      Caption = 
        'Ctrl+A - '#1074#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077#1093' '#1082#1083#1080#1077#1085#1090#1086#1074' | Shift+Ctrl+A - '#1088#1072#1079#1074#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077 +
        #1093' '#1082#1083#1080#1077#1085#1090#1086#1074
      Category = 0
      Hint = 
        'Ctrl+A - '#1074#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077#1093' '#1082#1083#1080#1077#1085#1090#1086#1074' | Shift+Ctrl+A - '#1088#1072#1079#1074#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077 +
        #1093' '#1082#1083#1080#1077#1085#1090#1086#1074
      Visible = ivAlways
    end
    object dxBarStatic21: TdxBarStatic
      Caption = 'F1 - '#1089#1090#1072#1090#1080#1089#1090#1080#1082#1072
      Category = 0
      Hint = 'F1 - '#1089#1090#1072#1090#1080#1089#1090#1080#1082#1072
      Visible = ivAlways
    end
    object dxBarStatic22: TdxBarStatic
      Caption = 'F8 - '#1079#1072#1075#1088#1091#1079#1082#1072' '#1079#1072#1082#1072#1079#1072' '#1074' '#1090#1077#1082#1091#1097#1080#1081' '#1079#1072#1082#1072#1079
      Category = 0
      Hint = 'F8 - '#1079#1072#1075#1088#1091#1079#1082#1072' '#1079#1072#1082#1072#1079#1072' '#1074' '#1090#1077#1082#1091#1097#1080#1081' '#1079#1072#1082#1072#1079
      Visible = ivAlways
    end
    object dxBarButton4: TdxBarButton
      Action = aPrintOrderList
      Category = 0
    end
    object dxBarStatic23: TdxBarStatic
      Caption = #1050#1083#1080#1077#1085#1090#1099' '#1073#1083#1086#1082'. '#1073#1091#1093'-'#1077#1081' '#1080#1083#1080' '#1082#1088#1077#1076#1080#1090#1086#1084
      Category = 0
      Hint = #1050#1083#1080#1077#1085#1090#1099' '#1073#1083#1086#1082'. '#1073#1091#1093'-'#1077#1081' '#1080#1083#1080' '#1082#1088#1077#1076#1080#1090#1086#1084
      Style = stWarning
      Visible = ivAlways
    end
  end
  object bpmCopyOrder: TdxBarPopupMenu
    BarManager = bmOrdersClients
    ItemLinks = <
      item
        Visible = True
        ItemName = 'pmIntoOrder'
      end
      item
        Visible = True
        ItemName = 'pmOutOrder'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'pmCheckOrder'
      end>
    UseOwnFont = False
    Left = 792
    Top = 344
  end
  object bpmPrint: TdxBarPopupMenu
    BarManager = bmOrdersClients
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'pmPrintTrolls'
      end>
    UseOwnFont = False
    Left = 760
    Top = 344
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object stWarning: TcxStyle
      AssignedValues = [svColor]
      Color = 8421631
    end
    object stSpec: TcxStyle
      AssignedValues = [svColor]
      Color = 16762084
    end
  end
end
