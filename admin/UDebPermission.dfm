object frmDebPermission: TfrmDebPermission
  Left = 0
  Top = 0
  Caption = #1044#1086#1089#1090#1091#1087' '#1076#1083#1103' '#1076#1077#1073#1080#1090#1086#1088#1086#1074
  ClientHeight = 411
  ClientWidth = 727
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 727
    Height = 41
    Align = alTop
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 601
    object Label1: TLabel
      Left = 6
      Top = 12
      Width = 61
      Height = 16
      Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBComboBoxEh2: TDBComboBoxEh
      Left = 82
      Top = 10
      Width = 377
      Height = 20
      Cursor = crHandPoint
      AlwaysShowBorder = True
      EditButtons = <>
      Flat = True
      TabOrder = 0
      Text = 'DBComboBoxEh1'
      Visible = True
    end
  end
  object pnlMain: TPanel
    Left = 0
    Top = 41
    Width = 727
    Height = 329
    Align = alClient
    BorderWidth = 5
    TabOrder = 1
    ExplicitWidth = 601
    ExplicitHeight = 297
    object grClients: TcxGrid
      Left = 6
      Top = 6
      Width = 715
      Height = 317
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 589
      ExplicitHeight = 285
      object grClientsV: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsQuery
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0'
            Kind = skCount
            Column = grClientsVNICK
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = #1085#1077#1090' '#1076#1072#1085#1085#1099#1093
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object grBtnDel: TcxGridDBColumn
          DataBinding.FieldName = 'D_CHECKED'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.Alignment = taCenter
          Properties.DisplayChecked = #1044#1072
          Properties.DisplayUnchecked = #1053#1077#1090
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          MinWidth = 60
          Options.Filtering = False
          Options.FilteringPopup = False
          Options.ShowEditButtons = isebAlways
          Options.HorzSizing = False
          Options.Sorting = False
          Width = 60
          IsCaptionAssigned = True
        end
        object grClientsVNICK: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'NICK'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          FooterAlignmentHorz = taCenter
          HeaderAlignmentHorz = taCenter
          MinWidth = 90
          Options.Editing = False
          Options.HorzSizing = False
          Options.Moving = False
          Width = 90
        end
        object grClientsVFIO: TcxGridDBColumn
          Caption = #1060#1048#1054
          DataBinding.FieldName = 'FIO'
          Options.Editing = False
          Width = 300
        end
        object grClientsVGROUP_NAME: TcxGridDBColumn
          Caption = #1043#1088#1091#1087#1087#1072
          DataBinding.FieldName = 'GROUP_NAME'
          Options.Editing = False
          Width = 150
        end
        object grClientsVREGION: TcxGridDBColumn
          Caption = #1056#1077#1075#1080#1086#1085
          DataBinding.FieldName = 'REGION'
          Visible = False
          Width = 200
        end
        object grClientsVID_CLIENTS: TcxGridDBColumn
          DataBinding.FieldName = 'ID_CLIENTS'
          Visible = False
        end
        object grClientsVID_DEBETORS: TcxGridDBColumn
          DataBinding.FieldName = 'ID_DEBETORS'
          Visible = False
        end
        object grClientsVLAST_DDATE: TcxGridDBColumn
          DataBinding.FieldName = 'LAST_DDATE'
          Visible = False
        end
        object grClientsVSTATE: TcxGridDBColumn
          DataBinding.FieldName = 'STATE'
          Visible = False
        end
        object grClientsVBEZNAL: TcxGridDBColumn
          DataBinding.FieldName = 'BEZNAL'
          Visible = False
        end
        object grClientsVMARK: TcxGridDBColumn
          DataBinding.FieldName = 'MARK'
          Visible = False
        end
        object grClientsVDEBET: TcxGridDBColumn
          DataBinding.FieldName = 'DEBET'
          Visible = False
        end
        object grClientsVCREDIT_DAYS: TcxGridDBColumn
          DataBinding.FieldName = 'CREDIT_DAYS'
          Visible = False
        end
        object grClientsVINFO: TcxGridDBColumn
          DataBinding.FieldName = 'INFO'
          Visible = False
        end
        object grClientsVDDATE: TcxGridDBColumn
          DataBinding.FieldName = 'DDATE'
          Visible = False
        end
        object grClientsVRUBL: TcxGridDBColumn
          DataBinding.FieldName = 'RUBL'
          Visible = False
        end
        object grClientsVCHART: TcxGridDBColumn
          DataBinding.FieldName = 'CHART'
          Visible = False
        end
        object grClientsVBLOCK1: TcxGridDBColumn
          DataBinding.FieldName = 'BLOCK1'
          Visible = False
        end
        object grClientsVBLOCK2: TcxGridDBColumn
          DataBinding.FieldName = 'BLOCK2'
          Visible = False
        end
        object grClientsVPHONE: TcxGridDBColumn
          DataBinding.FieldName = 'PHONE'
          Visible = False
        end
        object grClientsVID_CLIENTS_GROUPS: TcxGridDBColumn
          DataBinding.FieldName = 'ID_CLIENTS_GROUPS'
          Visible = False
        end
        object grClientsVKKK: TcxGridDBColumn
          DataBinding.FieldName = 'KKK'
          Visible = False
        end
        object grClientsVMARK_KOL: TcxGridDBColumn
          DataBinding.FieldName = 'MARK_KOL'
          Visible = False
        end
        object grClientsVMAX_DATE: TcxGridDBColumn
          DataBinding.FieldName = 'MAX_DATE'
          Visible = False
        end
        object grClientsVGROUP_MAX_DATE: TcxGridDBColumn
          DataBinding.FieldName = 'GROUP_MAX_DATE'
          Visible = False
        end
        object grClientsVIS_LOCK: TcxGridDBColumn
          DataBinding.FieldName = 'IS_LOCK'
          Visible = False
        end
        object grClientsVLOCK_FOR: TcxGridDBColumn
          DataBinding.FieldName = 'LOCK_FOR'
          Visible = False
        end
        object grClientsVLOCK_CLIENT: TcxGridDBColumn
          DataBinding.FieldName = 'LOCK_CLIENT'
          Visible = False
        end
        object grClientsVSALES: TcxGridDBColumn
          DataBinding.FieldName = 'SALES'
          Visible = False
        end
        object grClientsVWW: TcxGridDBColumn
          DataBinding.FieldName = 'WW'
          Visible = False
        end
        object grClientsVCHART_FOR_GROUP: TcxGridDBColumn
          DataBinding.FieldName = 'CHART_FOR_GROUP'
          Visible = False
        end
        object grClientsVID_OFFICE: TcxGridDBColumn
          DataBinding.FieldName = 'ID_OFFICE'
          Visible = False
        end
        object grClientsVBRIEF: TcxGridDBColumn
          DataBinding.FieldName = 'BRIEF'
          Visible = False
        end
        object grClientsVINN: TcxGridDBColumn
          DataBinding.FieldName = 'INN'
          Visible = False
        end
        object grClientsVITOG_DISCOUNT: TcxGridDBColumn
          DataBinding.FieldName = 'ITOG_DISCOUNT'
          Visible = False
        end
        object grClientsVCHART2: TcxGridDBColumn
          DataBinding.FieldName = 'CHART2'
          Visible = False
        end
        object grClientsVCHART_GROUP: TcxGridDBColumn
          DataBinding.FieldName = 'CHART_GROUP'
          Visible = False
        end
      end
      object grClientsL: TcxGridLevel
        GridView = grClientsV
      end
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 370
    Width = 727
    Height = 41
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 338
    ExplicitWidth = 601
    DesignSize = (
      727
      41)
    object btnClose: TcxButton
      Left = 560
      Top = 6
      Width = 160
      Height = 30
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #1042#1099#1093#1086#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 0
      Colors.Default = clBtnFace
      Colors.Normal = clBtnFace
      Colors.Hot = clBackground
      Colors.Pressed = clBackground
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66666933
        34FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666
        A36666A76666693334FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666A0
        6666B06667C66667CC6667B36667693334FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A66
        66AF6869C0696ACF696ACE6869CD6768CD6768B36667693334AE66669A66669A
        66669A66669A66669A66669A66669A66669A6666FF00FFFF00FFFF00FFFF00FF
        FF00FF9A6666D26F70D56F70D46E6FD36D6ED26C6DD16B6CD06A6BB467686933
        34FEA2A3FDA8A9FCAFB0FBB6B7FABCBDF9C2C2F9C5C6F9C5C69A6666FF00FFFF
        00FFFF00FFFF00FFFF00FF9A6666D97374D87273D77172D67071D56F70D46E6F
        D36D6EB6696A69333459B26733CB6733CB6733CB6733CB6733CB6733CB67F9C5
        C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666DC7677DB7576DA7475D9
        7374D87273D77172D67071B86B6B69333459B26733CB6733CB6733CB6733CB67
        33CB6733CB67F9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666DF79
        7ADF797ADE7879DD7778DC7677DB7576DA7475B96C6D69333459B26733CB6733
        CB6733CB6733CB6733CB6733CB67F9C5C69A6666FF00FFFF00FFFF00FFFF00FF
        FF00FF9A6666E37D7EE27C7DE17B7CE07A7BDF797ADE7879DD7778BB6E6F6933
        3459B26733CB6733CB6733CB6733CB6733CB6733CB67F9C5C69A6666FF00FFFF
        00FFFF00FFFF00FFFF00FF9A6666E68081E57F80E47E7FE37D7EE27C7DE17B7C
        E07A7BBD707069333459B26733CB6733CB6733CB6733CB6733CB6733CB67F9C5
        C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666E98384E88283E78182E6
        8081E78788ECA6A7E47E7FBE717269333473B87633CB6733CB6733CB6733CB67
        33CB6733CB67F9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666ED87
        88EC8687EB8586EA8485F2B9BAFFFFFFF0B0B0C07374693334F2D9C0C7F0BC79
        DD9079DD9060D68160D68160D681F9C5C69A6666FF00FFFF00FFFF00FFFF00FF
        FF00FF9A6666F08A8BEF898AEE8889ED8788F5BBBCFFFFFFF0AAABC275756933
        34F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDE2F8CCE2F8CCF9C5C69A6666FF00FFFF
        00FFFF00FFFF00FFFF00FF9A6666F38D8EF28C8DF18B8CF08A8BEF898AF3A6A7
        ED8788C37677693334F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5
        C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666F69091F69091F58F90F4
        8E8FF38D8EF28C8DF18B8CC57878693334F2D9C0FFFFDDFFFFDDFFFFDDFFFFDD
        FFFFDDFFFFDDF9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666FA94
        95F99394F89293F79192F69091F58F90F48E8FC77A7A693334F2D9C0FFFFDDFF
        FFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5C69A6666FF00FFFF00FFFF00FFFF00FF
        FF00FF9A6666FD9798FC9697FB9596FA9495F99394F89293F79192C87B7C6933
        34F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5C69A6666FF00FFFF
        00FFFF00FFFF00FFFF00FF9A6666FF999AFF999AFE9899FD9798FD9798FC9697
        FB9596CA7D7D693334F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5
        C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666FF999AFF999AFF999AFF
        999AFF999AFE9899FE9899CC7F7F693334F2D9C0FFFFDDFFFFDDFFFFDDFFFFDD
        FFFFDDFFFFDDF9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666F996
        97FF999AFF999AFF999AFF999AFF999AFF999ACD8080693334F2D9C0FFFFDDFF
        FFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5C69A6666FF00FFFF00FFFF00FFFF00FF
        FF00FF9A66669A6666C0797ADF898AFF999AFF999AFF999AFF999ACD80806933
        34F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5C69A6666FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666A76C6DC67C7DF29394
        FF999ACD8080693334A766669A66669A66669A66669A66669A66669A66669A66
        669A6666FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF9A66669A6666AD7070B37373693334FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A6666693334FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      Spacing = 6
      ExplicitLeft = 434
    end
    object btnSave: TcxButton
      Left = 8
      Top = 5
      Width = 160
      Height = 30
      Cursor = crHandPoint
      Caption = ' '#1047#1072#1087#1080#1089#1072#1090#1100' '
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnSaveClick
      Colors.Default = clBtnFace
      Colors.Normal = clBtnFace
      Colors.Hot = clSkyBlue
      Colors.Pressed = clSkyBlue
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000340B0000340B000000010000000000007B1111007B16
        16007B1C1C00841C1C00842323008F2323007B2A2A00842A2A008F2A2A00982A
        2A008F312A00842A3100843131008F31310098313100A131310084383800A138
        3800AB383800B6383800AB404000B6404000C0404000844848008F484800B648
        4800C048480084505000A1505000AB505000B6505000C050500098585000A158
        5000845858008F585800A1585800AB585800B6585800C0585800A16A58008F60
        600098606000AB606000B6606000C06060008F6A6A00A16A6A00AB6A6A00B66A
        6A00A1736A008F73730098737300A1737300B6737300C0737300AB7B7B00CA7B
        7B0084848400AB848400B6848400C0848400C08F8400988F8F00C08F8F00CA8F
        8F00B6989800C0989800CA989800A1A1A100ABA1A100D4A1A100ABABA100A1AB
        AB00ABABAB00CAABAB00D4ABAB00B6B6B600C0B6B600D4B6B600E0B6B600B6C0
        C000C0C0C000CAC0C000D4C0C000CACACA00D4D4CA00D4D4D400E0D4D400E0E0
        D400EAE0D400E0E0E000EAE0E000F4E0E000EAEAE000F4EAE000EAEAEA00F4EA
        EA00F4F4EA00F4F4F400FFF4F400FFFFF400FF00FF00FFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000666666666666
        6666666666666666666666666666666666666666661E191A111B454545454545
        454545240102040C66666666281E1A1A141B332F43546265635E5B2401020415
        0C666666281E1A1A14222904213C5C636462602B010204150C666666281E1A1A
        14232E02072456606364632B010204150C666666281E1A1A14233402020C4D59
        6064672C010204150C666666281E1A1A112A350101023F525961673101020415
        0C666666281E1A1A112A421818173A4555606731010204140C666666281E1A1A
        1424413C3B3834343C44502608090E190C666666281E1A1A1A1A1A1A1A1A1A1A
        1919191A1A1A1A1A0C666666281E14191E2727272727272727272727272D1F1A
        0C666666280E0A1C36434B4B4B4B4B4B4B4B4B4B4B4F371A0C66666628093D62
        616161616161616161616161615C37150C666666280940676363636363636363
        63636363645C37140C66666628094067616161616161616161616161635C3714
        0C666666280940675B4E5252525252525252524D585C37140C66666628094067
        615C5C5C5C5C5C5C5C5C5C5C615C37140C666666280940675C53535353535353
        535353525B5C37140C666666280940675E5858585858585858585858605C3714
        0C666666280940675E5858585858585858585858605C37140C66666628094067
        5B52535353535353535353525B5C37140C666666280940676464646464646464
        64646464645C37150C66666666093D514D4D4D4D4D4D4D4D4D4D4D4D4D4D3611
        6666666666666666666666666666666666666666666666666666}
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      Spacing = 6
    end
  end
  object cdsQuery: TOraQuery
    Session = DM.OraSession1
    SQL.Strings = (
      
        'select 0 as d_checked, a.nick, a.fio, a.id_debetors, a.id_client' +
        's, a.last_ddate, a.state, a.beznal, a.mark, a.debet, a.credit_da' +
        'ys,'
      
        '  a.info, a.ddate, a.rubl, a.chart, a.block1, a.block2, a.phone,' +
        ' a.region, a.group_name, a.id_clients_groups, a.kkk, a.mark_kol,' +
        ' '
      
        '  trunc(a.max_date) as max_date, a.group_max_date, a.is_lock, a.' +
        'lock_for, a.lock_client, a.sales, a.ww, a.CHART_FOR_GROUP, '
      
        '  a.ID_OFFICE, a.brief, a.inn, a.ITOG_DISCOUNT, a.chart2, a.CHAR' +
        'T_GROUP '
      'from VIEW_DEBETORS a '
      'WHERE a.id_office = :office_id '
      'order by group_name, fio')
    Left = 472
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'office_id'
      end>
    object cdsQueryNICK: TStringField
      FieldName = 'NICK'
      Required = True
    end
    object cdsQueryFIO: TStringField
      FieldName = 'FIO'
      Required = True
      Size = 255
    end
    object cdsQueryID_DEBETORS: TFloatField
      FieldName = 'ID_DEBETORS'
      Required = True
    end
    object cdsQueryID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object cdsQueryLAST_DDATE: TDateTimeField
      FieldName = 'LAST_DDATE'
    end
    object cdsQuerySTATE: TIntegerField
      FieldName = 'STATE'
      Required = True
    end
    object cdsQueryBEZNAL: TIntegerField
      FieldName = 'BEZNAL'
      Required = True
    end
    object cdsQueryMARK: TIntegerField
      FieldName = 'MARK'
    end
    object cdsQueryDEBET: TFloatField
      FieldName = 'DEBET'
      Required = True
    end
    object cdsQueryCREDIT_DAYS: TIntegerField
      FieldName = 'CREDIT_DAYS'
      Required = True
    end
    object cdsQueryINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
    object cdsQueryDDATE: TDateTimeField
      FieldName = 'DDATE'
      Required = True
    end
    object cdsQueryRUBL: TIntegerField
      FieldName = 'RUBL'
      Required = True
    end
    object cdsQueryCHART: TFloatField
      FieldName = 'CHART'
      Required = True
    end
    object cdsQueryBLOCK1: TIntegerField
      FieldName = 'BLOCK1'
      Required = True
    end
    object cdsQueryBLOCK2: TIntegerField
      FieldName = 'BLOCK2'
      Required = True
    end
    object cdsQueryPHONE: TStringField
      FieldName = 'PHONE'
      Size = 1024
    end
    object cdsQueryREGION: TIntegerField
      FieldName = 'REGION'
      Required = True
    end
    object cdsQueryGROUP_NAME: TStringField
      FieldName = 'GROUP_NAME'
      Required = True
      Size = 255
    end
    object cdsQueryID_CLIENTS_GROUPS: TIntegerField
      FieldName = 'ID_CLIENTS_GROUPS'
      Required = True
    end
    object cdsQueryKKK: TStringField
      FieldName = 'KKK'
    end
    object cdsQueryMARK_KOL: TFloatField
      FieldName = 'MARK_KOL'
    end
    object cdsQueryMAX_DATE: TDateTimeField
      FieldName = 'MAX_DATE'
    end
    object cdsQueryGROUP_MAX_DATE: TDateTimeField
      FieldName = 'GROUP_MAX_DATE'
    end
    object cdsQueryIS_LOCK: TIntegerField
      FieldName = 'IS_LOCK'
    end
    object cdsQueryLOCK_FOR: TIntegerField
      FieldName = 'LOCK_FOR'
    end
    object cdsQueryLOCK_CLIENT: TStringField
      FieldName = 'LOCK_CLIENT'
    end
    object cdsQuerySALES: TFloatField
      FieldName = 'SALES'
    end
    object cdsQueryWW: TStringField
      FieldName = 'WW'
    end
    object cdsQueryCHART_FOR_GROUP: TFloatField
      FieldName = 'CHART_FOR_GROUP'
    end
    object cdsQueryID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object cdsQueryBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object cdsQueryINN: TStringField
      FieldName = 'INN'
      Size = 50
    end
    object cdsQueryITOG_DISCOUNT: TFloatField
      FieldName = 'ITOG_DISCOUNT'
    end
    object cdsQueryCHART2: TFloatField
      FieldName = 'CHART2'
    end
    object cdsQueryCHART_GROUP: TFloatField
      FieldName = 'CHART_GROUP'
    end
    object cdsQueryD_CHECKED: TFloatField
      FieldName = 'D_CHECKED'
    end
  end
  object dsQuery: TOraDataSource
    DataSet = cdsQuery
    Left = 504
    Top = 8
  end
  object Q_IDD: TOraQuery
    SQL.Strings = (
      'SELECT OLMER.PARAMS_SET_ID.nextval from DUAL')
    Left = 544
    Top = 8
  end
end
