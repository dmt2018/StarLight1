object reprice_edit_form: Treprice_edit_form
  Left = 442
  Top = 209
  Caption = 'reprice_edit_form'
  ClientHeight = 514
  ClientWidth = 753
  Color = clBtnFace
  Constraints.MinHeight = 550
  Constraints.MinWidth = 750
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel2: TPanel
    Left = 0
    Top = 474
    Width = 753
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clBtnShadow
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object Label6: TLabel
      Left = 10
      Top = 6
      Width = 57
      Height = 14
      Caption = #1054#1087#1077#1088#1072#1090#1086#1088':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 10
      Top = 21
      Width = 136
      Height = 14
      Caption = #1056#1077#1072#1083#1100#1085#1072#1103' '#1076#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DB_DOC_DATE_REAL: TDBText
      Left = 155
      Top = 21
      Width = 107
      Height = 14
      AutoSize = True
      DataField = 'DOC_DATE_REAL'
      DataSource = docsviewForm.DOC_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object DB_OPERATOR_NAME: TDBText
      Left = 155
      Top = 6
      Width = 110
      Height = 14
      AutoSize = True
      DataField = 'OPERATOR_NAME'
      DataSource = docsviewForm.DOC_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Panel3: TPanel
      Left = 449
      Top = 2
      Width = 302
      Height = 36
      Align = alRight
      BevelOuter = bvNone
      Color = clBtnShadow
      TabOrder = 0
      DesignSize = (
        302
        36)
      object BitBtnSave: TcxButton
        Left = 155
        Top = 4
        Width = 145
        Height = 30
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = ' OK (Ctrl+Enter) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ModalResult = 1
        ParentFont = False
        TabOrder = 0
        Colors.Default = clBtnFace
        Colors.Normal = clBtnFace
        Colors.Hot = clBtnShadow
        Colors.Pressed = clBtnShadow
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
      object BitBtn_Cancel: TcxButton
        Left = 15
        Top = 4
        Width = 140
        Height = 30
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Cancel = True
        Caption = ' '#1054#1090#1084#1077#1085#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ModalResult = 2
        ParentFont = False
        TabOrder = 1
        Colors.Default = clBtnFace
        Colors.Normal = clBtnFace
        Colors.Hot = clBtnShadow
        Colors.Pressed = clBtnShadow
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000181862042929A59326269B3B000000000000000000000000000000000000
          00000000000021218A3126269B94181863050000000000000000000000001818
          64042A2AA9A94D4DD0FF3535B4F226269B3B0000000000000000000000000000
          000022228C312F2FA9EC4242C5FF26269BAD1818630500000000191966042B2B
          ACA94E4ED1FF6969E2FF6969E9FF3636B5F226269B3B00000000000000002323
          8E322F2FABED4E4ED8FF4747D2FF4444C9FF26269BAD181863052B2BAE8E4949
          CDFF6060D9FF6868DDFF7070E7FF6C6CEDFF3636B5F226269B3B232391323131
          AEED5252DCFF4444CEFF4242CCFF4747D2FF4242C6FF26269B942828A0313434
          B8EC5E5EDEFF6868DEFF7070E7FF7575EEFF6D6DEFFF3636B5F23333B1ED5A5A
          E2FF4D4DD5FF4343CDFF4242CDFF4D4DD8FF2F2FA9ED23239233000000002828
          A0313535B9EC6464E4FF7070E7FF7676EEFF7777F1FF6C6CEFFF6363E9FF5A5A
          DEFF4C4CD4FF4444CEFF4D4DD8FF2F2FABED2424943300000000000000000000
          00002828A0313535B9EC6868E9FF7575EEFF7777F0FF7272EEFF6767E7FF5A5A
          DEFF4D4DD5FF4E4ED9FF3030ADED252596330000000000000000000000000000
          0000000000002828A1313636BAEC6D6DEEFF7777F0FF7272EEFF6767E7FF5A5A
          DEFF5454DEFF3131B0ED25259933000000000000000000000000000000000000
          00000000000027279E313636BBEC6D6DEEFF7777F0FF7272EEFF6767E7FF5A5A
          DEFF5454DEFF3232B3F226269B3B000000000000000000000000000000000000
          00002828A0313636BDEC6868EAFF7575EEFF7777F0FF7272EEFF6767E7FF5A5A
          DEFF4D4DD5FF4E4EDAFF3232B3F226269B3B0000000000000000000000002828
          A2313636BEEC6464E5FF7070E7FF7676EEFF7777F1FF6B6BEEFF6363E9FF5A5A
          DEFF4C4CD4FF4444CEFF4D4DD9FF3232B3F226269B3B000000002929A4313636
          C0EC5E5EDFFF6868DEFF7070E7FF7575EEFF6C6CEFFF3636BCED3535BAEC5A5A
          E3FF4D4DD5FF4343CDFF4242CCFF4D4DD9FF3232B3F226269B3B2E2EB9904B4B
          D2FF6060D9FF6868DDFF7070E7FF6B6BEDFF3737BEED2929A7332828A1313434
          B9EC5353DEFF4444CEFF4242CCFF4848D3FF4343CAFF2929A68D1E1E77042F2F
          BAAA5151D7FF6969E2FF6868E9FF3838C0ED2A2AA93300000000000000002828
          A0313333B8EC4E4EDAFF4848D3FF4545CEFF2A2AA9A21A1A6B02000000001E1E
          77042F2FBAAA4F4FD7FF3838C1ED2B2BAC330000000000000000000000000000
          00002828A0313333B8EC4343CCFF2B2BACA21B1B6D0200000000000000000000
          00001E1E77042E2EB9922B2BAE33000000000000000000000000000000000000
          0000000000002828A0312B2BAE891B1B6F020000000000000000}
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        Spacing = 6
      end
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 0
    Width = 753
    Height = 30
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clSkyBlue
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    DesignSize = (
      753
      30)
    object DBText4: TDBText
      Left = 6
      Top = 6
      Width = 211
      Height = 17
      Align = alCustom
      DataField = 'BUH_DOC_TYPE_NAME'
      DataSource = DOC_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 229
      Top = 6
      Width = 17
      Height = 18
      Caption = #8470
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 351
      Top = 3
      Width = 6
      Height = 24
      Caption = '/'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -20
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 610
      Top = 6
      Width = 15
      Height = 18
      Anchors = [akRight]
      Caption = #1086#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DocNumberAddEdit: TEdit
      Left = 361
      Top = 5
      Width = 94
      Height = 22
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      Text = 'DocNumberEdit'
    end
    object DocNumberEdit: TcxCurrencyEdit
      Left = 252
      Top = 3
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = ',0'#39#39';-,0'#39#39
      TabOrder = 0
      Width = 94
    end
    object DOC_DATE: TcxDateEdit
      Left = 632
      Top = 3
      Anchors = [akTop, akRight]
      Properties.DateOnError = deToday
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 2
      Width = 108
    end
  end
  object Panel8: TPanel
    Left = 0
    Top = 67
    Width = 753
    Height = 49
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 2
    object Label14: TLabel
      Left = 6
      Top = 16
      Width = 80
      Height = 16
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
    end
    object COMMENTSEdit: TEdit
      Left = 94
      Top = 14
      Width = 643
      Height = 22
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      Text = 'Edit1'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 30
    Width = 753
    Height = 37
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object DBText3: TDBText
      Left = 78
      Top = 2
      Width = 667
      Height = 15
      Align = alCustom
      DataField = 'COMPANY_NAME'
      DataSource = DOC_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 78
      Top = 18
      Width = 667
      Height = 15
      Align = alCustom
      DataField = 'BANC_NAME'
      DataSource = DOC_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 5
      Top = 18
      Width = 35
      Height = 16
      Caption = #1073#1072#1085#1082':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 5
      Top = 2
      Width = 68
      Height = 16
      Caption = #1082#1086#1084#1087#1072#1085#1080#1103':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object grid_buh_view: TcxGrid
    Left = 0
    Top = 116
    Width = 753
    Height = 358
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    LookAndFeel.Kind = lfOffice11
    object grid_buh_view_v: TcxGridDBTableView
      PopupMenu = spis_menu
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Position = fpTop
      DataController.DataSource = DOC_DATA_DS
      DataController.DetailKeyFieldNames = 'N_ID'
      DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription, fcoSoftCompare]
      DataController.KeyFieldNames = 'N_ID'
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skCount
          Position = spFooter
        end
        item
          Kind = skCount
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
        end
        item
          Kind = skSum
        end
        item
          Format = '0'
          Kind = skCount
        end
        item
          Kind = skSum
        end
        item
          Format = '0.00'
          Kind = skSum
        end
        item
          Format = '0'
          Kind = skSum
        end
        item
          Format = '0'
          Kind = skSum
        end
        item
          Format = '0'
          Kind = skCount
        end
        item
          Format = '0'
          Kind = skSum
        end
        item
          Format = '0.00'
          Kind = skSum
        end
        item
          Format = '0'
          Kind = skSum
        end
        item
          Format = '0'
          Kind = skCount
        end
        item
          Format = '0.00'
          Kind = skSum
        end
        item
          Format = '0'
          Kind = skCount
          Column = rp_CODE
        end
        item
          Format = '0'
          Kind = skSum
          Column = rp_QUANTITY
        end
        item
          Format = '0.00'
          Kind = skSum
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = rp_PRICE_DIFFERENCE
        end
        item
          Format = '0.00'
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1092#1080#1083#1100#1090#1088#1086#1074
      FilterRow.Visible = True
      OptionsBehavior.CellHints = True
      OptionsCustomize.ColumnMoving = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.HeaderAutoHeight = True
      OptionsView.HeaderEndEllipsis = True
      object _rp_n_id: TcxGridDBColumn
        DataBinding.FieldName = 'N_ID'
        Visible = False
        Options.Editing = False
      end
      object _rp_ID_DOC_DATA: TcxGridDBColumn
        DataBinding.FieldName = 'ID_DOC_DATA'
        Visible = False
        Options.Editing = False
      end
      object rp_CODE: TcxGridDBColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'CODE'
        FooterAlignmentHorz = taCenter
        MinWidth = 100
        Options.Editing = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 100
      end
      object rp_f_type: TcxGridDBColumn
        Caption = #1043#1088#1091#1087#1087#1072
        DataBinding.FieldName = 'F_TYPE'
        Options.Editing = False
        Options.Moving = False
        Width = 100
      end
      object rp_F_SUB_TYPE: TcxGridDBColumn
        Caption = #1055#1086#1076#1075#1088#1091#1087#1087#1072
        DataBinding.FieldName = 'F_SUB_TYPE'
        Options.Editing = False
        Options.Moving = False
        Width = 120
      end
      object rp_FULL_NAME: TcxGridDBColumn
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'FULL_NAME'
        Options.Editing = False
        Options.Moving = False
        Width = 150
      end
      object rp_COUNTRY: TcxGridDBColumn
        Caption = #1057#1090#1088#1072#1085#1072
        DataBinding.FieldName = 'COUNTRY'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        MinWidth = 80
        Options.Editing = False
        Options.Moving = False
        Width = 100
      end
      object rp_SPESIFICATION: TcxGridDBColumn
        Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
        DataBinding.FieldName = 'SPESIFICATION'
        MinWidth = 100
        Options.Editing = False
        Options.Moving = False
        Width = 100
      end
      object rp_QUANTITY: TcxGridDBColumn
        Caption = #1050#1086#1083'-'#1074#1086
        DataBinding.FieldName = 'QUANTITY'
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ImmediatePost = True
        Properties.SpinButtons.Visible = False
        Properties.UseCtrlIncrement = True
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.Editing = False
        Options.ShowEditButtons = isebAlways
        Options.HorzSizing = False
        Options.Moving = False
        Width = 70
      end
      object rp_PRICE: TcxGridDBColumn
        Caption = #1053#1086#1074#1072#1103' '#1094#1077#1085#1072
        DataBinding.FieldName = 'PRICE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.Editing = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 70
      end
      object rp_PRICE_OLD: TcxGridDBColumn
        Caption = #1057#1090#1072#1088#1072#1103' '#1094#1077#1085#1072
        DataBinding.FieldName = 'PRICE_OLD'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.Editing = False
        Options.HorzSizing = False
        Width = 70
      end
      object rp_PRICE_DIFFERENCE: TcxGridDBColumn
        Caption = #1056#1072#1079#1085#1080#1094#1072
        DataBinding.FieldName = 'PRICE_DIFFERENCE'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.ReadOnly = True
        FooterAlignmentHorz = taRightJustify
        HeaderAlignmentHorz = taCenter
        MinWidth = 80
        Options.Editing = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 80
      end
    end
    object grid_buh_view_l: TcxGridLevel
      GridView = grid_buh_view_v
    end
  end
  object DOC: TOraQuery
    SQLRefresh.Strings = (
      'WHERE'
      'ID_DOC = :ID_DOC')
    Session = DM.OraSession
    SQL.Strings = (
      'select'
      '    ID_DOC,     '
      '    DOC_NUMBER,        '
      '    ID_DEPARTMENTS,     '
      '    OPERATOR_NAME,     '
      '    DOC_DATE,     '
      '    DOC_DATE_REAL,     '
      '    COMMENTS, '
      '    ID_DOC_TYPE,     '
      '    DOC_NUMBER_ADD,'
      '    NUMBER_FULL,'
      '    QUANTITY_ALL,'
      '    sum_price_old,'
      '    sum_price_new,'
      '    sum_price_difference,'
      '    buh_doc_type_name'
      'FROM '
      'BUH_DOC_VIEW'
      'where '
      'ID_DOC=:ID_DOC')
    RefreshOptions = [roAfterUpdate]
    Options.ReturnParams = True
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    Left = 504
    Top = 22
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_DOC'
      end>
  end
  object DOC_DATA: TOraQuery
    SQL.Strings = (
      'SELECT '
      
        'ID_DOC_TYPE, ID_DOC_DATA, ID_DOC, QUANTITY, PRICE, PRICE_OLD, GT' +
        'D, F_NAME_RU, '
      
        'N_ID, LEN, PACK, COL_ID, COLOUR, F_TYPE, F_SUB_TYPE, FT_ID, FST_' +
        'ID, COUNTRY, '
      
        'C_ID, H_CODE, SPESIFICATION, CODE, PRICE_DIFFERENCE, PRICE_BEZ_N' +
        'DS, SUMM_BEZ_NDS, '
      'SUMM_NDS, FULL_NAME, PRICE_QUANTITY'
      'from'
      'BUH_DOCDATA_VIEW'
      'where'
      'ID_DOC=:ID_DOC')
    MasterSource = DOC_DS
    AutoCommit = False
    LockMode = lmLockImmediate
    RefreshOptions = [roAfterInsert, roAfterUpdate]
    Options.ReturnParams = True
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    Left = 536
    Top = 24
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DOC'
        ParamType = ptInput
      end>
    object DOC_DATAID_DOC_TYPE: TFloatField
      FieldName = 'ID_DOC_TYPE'
      Required = True
    end
    object DOC_DATAID_DOC_DATA: TFloatField
      FieldName = 'ID_DOC_DATA'
      Required = True
    end
    object DOC_DATAID_DOC: TFloatField
      FieldName = 'ID_DOC'
    end
    object DOC_DATAQUANTITY: TFloatField
      FieldName = 'QUANTITY'
      Required = True
    end
    object DOC_DATAPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object DOC_DATAPRICE_OLD: TFloatField
      FieldName = 'PRICE_OLD'
    end
    object DOC_DATAGTD: TStringField
      FieldName = 'GTD'
      Size = 50
    end
    object DOC_DATAF_NAME_RU: TStringField
      FieldName = 'F_NAME_RU'
      Required = True
      Size = 256
    end
    object DOC_DATAN_ID: TFloatField
      FieldName = 'N_ID'
      Required = True
    end
    object DOC_DATALEN: TIntegerField
      FieldName = 'LEN'
    end
    object DOC_DATAPACK: TIntegerField
      FieldName = 'PACK'
    end
    object DOC_DATACOL_ID: TFloatField
      FieldName = 'COL_ID'
      Required = True
    end
    object DOC_DATACOLOUR: TStringField
      FieldName = 'COLOUR'
      Required = True
      Size = 50
    end
    object DOC_DATAF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Required = True
      Size = 50
    end
    object DOC_DATAF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Required = True
      Size = 50
    end
    object DOC_DATAFT_ID: TFloatField
      FieldName = 'FT_ID'
      Required = True
    end
    object DOC_DATAFST_ID: TFloatField
      FieldName = 'FST_ID'
      Required = True
    end
    object DOC_DATACOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Required = True
      Size = 50
    end
    object DOC_DATAC_ID: TFloatField
      FieldName = 'C_ID'
      Required = True
    end
    object DOC_DATAH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 50
    end
    object DOC_DATASPESIFICATION: TStringField
      FieldName = 'SPESIFICATION'
      Size = 4000
    end
    object DOC_DATACODE: TStringField
      FieldName = 'CODE'
      Size = 40
    end
    object DOC_DATAPRICE_DIFFERENCE: TFloatField
      FieldName = 'PRICE_DIFFERENCE'
    end
    object DOC_DATAPRICE_BEZ_NDS: TFloatField
      FieldName = 'PRICE_BEZ_NDS'
    end
    object DOC_DATASUMM_BEZ_NDS: TFloatField
      FieldName = 'SUMM_BEZ_NDS'
    end
    object DOC_DATASUMM_NDS: TFloatField
      FieldName = 'SUMM_NDS'
    end
    object DOC_DATAFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Size = 4000
    end
    object DOC_DATAPRICE_QUANTITY: TFloatField
      FieldName = 'PRICE_QUANTITY'
    end
  end
  object DOC_DS: TOraDataSource
    DataSet = DOC
    Left = 504
    Top = 56
  end
  object DOC_DATA_DS: TOraDataSource
    DataSet = DOC_DATA
    Left = 536
    Top = 56
  end
  object ActionList1: TActionList
    Left = 576
    Top = 24
    object Save: TAction
      Caption = 'Save'
      ShortCut = 16397
      OnExecute = SaveExecute
    end
  end
  object spis_menu: TPopupMenu
    Left = 576
    Top = 53
    object spis_m1: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' EXCEL'
      OnClick = spis_m1Click
    end
    object spis_m2: TMenuItem
      Caption = #1042#1086#1089#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1090#1072#1073#1083#1080#1094#1091
      OnClick = spis_m2Click
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = #1060#1072#1081#1083#1099' EXCEL (*.xls)|*.xls'
    Left = 609
    Top = 33
  end
end
