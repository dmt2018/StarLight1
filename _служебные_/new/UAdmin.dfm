object frmAdmin: TfrmAdmin
  Left = 0
  Top = 0
  Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 533
  ClientWidth = 764
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
  object PageControl1: TPageControl
    Left = 0
    Top = 58
    Width = 764
    Height = 423
    Cursor = crHandPoint
    ActivePage = TabSheet5
    Align = alTop
    Images = ImageList1
    MultiLine = True
    ParentShowHint = False
    ShowHint = False
    Style = tsFlatButtons
    TabOrder = 0
    TabStop = False
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = ' '#1057#1054#1058#1056#1059#1044#1053#1048#1050#1048' '
      object Splitter1: TSplitter
        Left = 0
        Top = 193
        Width = 756
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = clBlack
        ParentColor = False
        ExplicitTop = 300
        ExplicitWidth = 781
      end
      object Panel7: TPanel
        Left = 0
        Top = 89
        Width = 756
        Height = 16
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 756
        Height = 89
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = clMedGray
        Ctl3D = False
        ParentBackground = False
        ParentCtl3D = False
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 8
          Top = 8
          Width = 209
          Height = 72
          Caption = ' '#1041#1099#1089#1090#1088#1099#1081' '#1087#1086#1080#1089#1082' '#1087#1086' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label11: TLabel
            Left = 8
            Top = 24
            Width = 30
            Height = 16
            Caption = #1050#1086#1076#1091
          end
          object Label12: TLabel
            Left = 6
            Top = 48
            Width = 30
            Height = 16
            Caption = #1060#1048#1054
          end
          object Edit1: TEdit
            Left = 72
            Top = 20
            Width = 129
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            MaxLength = 20
            ParentFont = False
            TabOrder = 0
          end
          object Edit2: TEdit
            Left = 72
            Top = 44
            Width = 129
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            MaxLength = 100
            ParentFont = False
            TabOrder = 1
          end
        end
        object GroupBox2: TGroupBox
          Left = 224
          Top = 8
          Width = 289
          Height = 72
          Caption = ' '#1060#1080#1083#1100#1090#1088#1072#1094#1080#1103' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label21: TLabel
            Left = 9
            Top = 24
            Width = 75
            Height = 16
            Caption = #1044#1086#1089#1090#1091#1087' '#1074' '#1048#1057
          end
          object Label1: TLabel
            Left = 158
            Top = 24
            Width = 48
            Height = 16
            Caption = #1040#1082#1090#1080#1074#1077#1085
          end
          object Label13: TLabel
            Left = 9
            Top = 48
            Width = 41
            Height = 16
            Caption = #1043#1088#1091#1087#1087#1072
          end
          object ComboBox6: TComboBox
            Left = 96
            Top = 18
            Width = 57
            Height = 24
            Cursor = crHandPoint
            BevelInner = bvNone
            BevelKind = bkFlat
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            ItemHeight = 16
            ItemIndex = 0
            ParentFont = False
            TabOrder = 0
            Text = #1074#1089#1077
            OnChange = ComboBox6Change
            Items.Strings = (
              #1074#1089#1077
              #1076#1072
              #1085#1077#1090)
          end
          object ComboBox1: TComboBox
            Left = 224
            Top = 18
            Width = 57
            Height = 24
            Cursor = crHandPoint
            BevelInner = bvNone
            BevelKind = bkFlat
            Style = csDropDownList
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            ItemHeight = 16
            ItemIndex = 0
            ParentFont = False
            TabOrder = 1
            Text = #1074#1089#1077
            Items.Strings = (
              #1074#1089#1077
              #1076#1072
              #1085#1077#1090)
          end
          object ComboBox3: TDBComboBoxEh
            Left = 96
            Top = 45
            Width = 185
            Height = 22
            Cursor = crHandPoint
            AlwaysShowBorder = True
            EditButtons = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = 'ComboBox3'
            Visible = True
          end
        end
        object BitBtn2: TcxButton
          Left = 528
          Top = 33
          Width = 195
          Height = 25
          Cursor = crHandPoint
          Caption = #1057#1084#1077#1085#1080#1090#1100' '#1087#1072#1088#1086#1083#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = BitBtn2Click
          Colors.Default = clBtnFace
          Colors.Normal = clBtnFace
          Colors.Hot = clMedGray
          Colors.Pressed = clMedGray
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000F30E0000F30E00000001000000000000210800001010
            100042424200635A4A00424A520052525200636363006B6B6300636B6B006B6B
            6B00737373007B7B7B008C847B00848484008C8C8C00394A9400949494000008
            A500A5A5A5003139BD001052BD007B94C600ADB5CE00D6D6D60042A5DE000010
            E7005A73E700ADCEE700E7E7E7001094EF00299CEF0094A5EF00EFEFEF002973
            F7000094F70042E7F700FF00FF00089CFF0018A5FF0031ADFF004ABDFF008CF7
            FF00CEF7FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00242424242424
            2424242424242406242424242424242424242424242408101024242424242424
            242424242405102B20122424242424242424242401010B1C1224242424242424
            2424240101020B0E242424242424191724240101040D0924242424242424131B
            240101040D092424242424242424131A0001020D0A2424242424242419152614
            11130C0724242424242424241A252323210F0324242424242424182125232A29
            2821211F1B24242424241B211E232A29281E211516242424242424241A262323
            221F24242424242424242424211F271D1F182424242424242424242424242118
            24242424242424242424242424241B1524242424242424242424}
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = True
          Spacing = 6
        end
        object BitBtn1: TcxButton
          Left = 528
          Top = 58
          Width = 195
          Height = 25
          Cursor = crHandPoint
          Caption = #1059#1073#1088#1072#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1074' '#1048#1057
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = BitBtn1Click
          Colors.Default = clBtnFace
          Colors.Normal = clBtnFace
          Colors.Hot = clMedGray
          Colors.Pressed = clMedGray
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000130B0000130B00000001000000000000000000008484
            840042ADBD001094CE0042CEEF00FF00FF005ADEFF009CE7FF00ADF7FF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00050505050505
            0303030303050505050505050505020204060606040303050505050505020407
            0707000606060403050505050204070707070007070606040305050502080707
            0707000707070606030505050208080707000000070707060305050502080808
            0701000107070706030505050204080808080707070707040305050505020202
            0202020202020202050505050505020703050505020703050505050505050207
            0305050502070305050505050505020404030303040403050505050505050502
            0407070704030505050505050505050502020202030505050505050505050505
            0505050505050505050505050505050505050505050505050505}
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = True
          Spacing = 6
        end
        object BitBtn10: TcxButton
          Left = 528
          Top = 8
          Width = 195
          Height = 25
          Cursor = crHandPoint
          Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1076#1086#1089#1090#1091#1087' '#1074' '#1048#1057
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn10Click
          Colors.Default = clBtnFace
          Colors.Normal = clBtnFace
          Colors.Hot = clMedGray
          Colors.Pressed = clMedGray
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000230B0000230B00000001000000000000000000008484
            840042ADBD001094CE0042CEEF00FF00FF005ADEFF009CE7FF00ADF7FF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00050505050505
            0303030303050505050505050505020204060606040303050505050505020407
            0707000606060403050505050204070707070007070606040305050502080707
            0707000707070606030505050208080707000000070707060305050502080808
            0701000107070706030505050204080808080707070707040305050505020202
            0202020202020202050505050505050505050505020703050505050505050303
            0305050502070305050505050505020703050505020703050505050505050207
            0305050502070305050505050505020404030303040403050505050505050502
            0407070704030505050505050505050502020202030505050505}
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = True
          Spacing = 6
        end
      end
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 105
        Width = 756
        Height = 88
        Align = alClient
        AutoFitColWidths = True
        DataGrouping.GroupLevels = <>
        DataSource = Q_EMPL_DS
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        FooterColor = clBtnFace
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'Arial'
        FooterFont.Pitch = fpFixed
        FooterFont.Style = []
        FooterRowCount = 1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
        ParentFont = False
        RowDetailPanel.Color = clBtnFace
        SumList.Active = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Arial'
        TitleFont.Pitch = fpFixed
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'NN'
            Footer.Alignment = taCenter
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -12
            Footer.Font.Name = 'Arial'
            Footer.Font.Pitch = fpFixed
            Footer.Font.Style = [fsBold]
            Footer.ValueType = fvtCount
            Footers = <>
            MaxWidth = 50
            MinWidth = 50
            Title.Alignment = taCenter
            Title.Caption = #8470
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Arial'
            Title.Font.Pitch = fpFixed
            Title.Font.Style = [fsBold]
            Title.TitleButton = True
            Width = 50
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'BRIEF'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1054#1092#1080#1089
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Arial'
            Title.Font.Pitch = fpFixed
            Title.Font.Style = [fsBold]
            Title.TitleButton = True
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'NICK'
            Footers = <>
            MaxWidth = 100
            MinWidth = 100
            Title.Caption = #1050#1086#1076
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Arial'
            Title.Font.Pitch = fpFixed
            Title.Font.Style = [fsBold]
            Title.TitleButton = True
            Width = 100
          end
          item
            EditButtons = <>
            FieldName = 'FIO'
            Footers = <>
            Title.Caption = #1060#1048#1054' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Arial'
            Title.Font.Pitch = fpFixed
            Title.Font.Style = [fsBold]
            Title.TitleButton = True
            Width = 230
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'LOGIN'
            Footers = <>
            MaxWidth = 100
            MinWidth = 100
            Title.Caption = #1051#1086#1075#1080#1085
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Arial'
            Title.Font.Pitch = fpFixed
            Title.Font.Style = [fsBold]
            Title.TitleButton = True
            Width = 100
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            Checkboxes = True
            EditButtons = <>
            FieldName = 'ACTIVE'
            Footers = <>
            KeyList.Strings = (
              '1'
              '0')
            MaxWidth = 60
            MinWidth = 60
            Title.Alignment = taCenter
            Title.Caption = #1040#1082#1090#1080#1074#1077#1085
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Arial'
            Title.Font.Pitch = fpFixed
            Title.Font.Style = [fsBold]
            Width = 60
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 196
        Width = 756
        Height = 195
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 3
        object Panel15: TPanel
          Left = 0
          Top = 153
          Width = 756
          Height = 42
          Align = alBottom
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          object Label10: TLabel
            Left = 10
            Top = 12
            Width = 50
            Height = 16
            Caption = #1043#1088#1091#1087#1087#1072':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ComboBox2: TDBComboBoxEh
            Left = 66
            Top = 6
            Width = 249
            Height = 22
            Cursor = crHandPoint
            AlwaysShowBorder = True
            EditButtons = <>
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = 'ComboBox3'
            Visible = True
          end
          object BitBtn15: TcxButton
            Left = 560
            Top = 5
            Width = 120
            Height = 30
            Cursor = crHandPoint
            Caption = ' '#1055#1086#1089#1084#1086#1090#1088#1077#1090#1100
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BitBtn15Click
            Colors.Default = clBtnFace
            Colors.Normal = clBtnFace
            Colors.Hot = clBtnFace
            Colors.Pressed = clBtnFace
            Glyph.Data = {
              76060000424D7606000000000000360400002800000018000000180000000100
              08000000000040020000D30E0000D30E00000001000000000000FFA51000FFAD
              2100FFAD2900FFB53100FFB53900FFB54200FFBD42007B4A4A00FFB54A00FFBD
              4A007B4A5200BD5252008C5A5200E7A55200EFA55200F7B55200FFC652008452
              5A008C525A008C5A5A00945A5A00B55A5A00C65A5A009C635A00DE9C5A00FFC6
              5A00B56363009C6B6300A56B6300F7B56300F7BD6300FFCE6300A56B6B00AD6B
              6B00B56B6B00BD6B6B00C66B6B00CE6B6B00A5736B00D6946B00EFB56B00FFCE
              6B00FFD66B00946B73009C737300A5737300AD737300C6737300CE737300A57B
              7300AD7B7300B5847300E7A57300E7AD7300FFD67300A57B7B00AD7B7B00B57B
              7B00CE7B7B00AD847B00D6847B00CE8C7B00D68C7B00DE9C7B00D6AD7B00DEBD
              7B00EFCE7B00FFD67B00FFDE7B009C848400A5848400AD848400B5848400BD8C
              8400D68C8400D69C8400DEA58400F7BD8400EFCE8400FFDE8400B5848C00A58C
              8C00AD8C8C00B58C8C00BD8C8C00C68C8C00CE8C8C009C948C00B5948C00C694
              8C00CE9C8C00CEA58C00DEAD8C00FFDE8C009C949400A5949400AD949400B594
              9400BD949400C6949400CE949400D6949400B59C9400DE9C9400BDAD9400F7D6
              9400FFE79400B5949C00AD9C9C00BD9C9C00CE9C9C00D69C9C00ADA59C00CEB5
              9C009CBD9C00CEBD9C00FFE79C00FFEF9C00ADA5A500C6A5A500CEA5A500D6A5
              A500DEC6A500EFDEA500FFEFA500CEADAD00D6ADAD00FFEFAD00C6B5B500CEB5
              B500D6B5B500DEB5B500E7DEB500FFF7B500D6BDBD00DEBDBD00E7BDBD00FFF7
              BD00D6C6C600DEC6C600F7F7C600FFFFC600D6CECE00DECECE00E7CECE00FFFF
              CE00DED6D600EFD6D600DEDEDE00E7E7E700EFE7E700F7E7E700EFEFEF00F7EF
              EF00F7F7F700FFF7F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9C9C9C6152
              616B604646529C9C9C9C9C9C9C9C9C9C9C9C9C9C3347808A8E8A867D6D2C071B
              9C9C9C9C9C9C9C9C9C9C9C498A949492928E818A776D62131B9C9C9C9C9C9C9C
              9C9C338A95959594928E868A81806263139C9C9C9C9C9C9C9C9C339598989895
              948E867D7878546E209C9C33149C9C9C9C9C9C33989A9A95948A7E645655546E
              26323B775F110C9C9C9C9C9C338787959481783A3A3A4948507D827D7676450A
              179C9C9C6D335C6E6E643A252524638687868277606C6C6C2B319C9C5E3D0404
              4D672F160B157D8B86786E632C376072572D9C9C5E27040404031D4C3A1A7878
              787E827D52472C37372D9C9C5E180309090904040F343C567E86827847484747
              2C2D9C9C5E0D1919191909090910100E3C8282783863634838319C9C5E0F1010
              19191919191010053E8282783849645438319C6D5E19191F292929291F1F100F
              4A86826E384838382E319C5E5B1F29364343434336291F1D6486826E38483848
              2E2D9C5E4029434F5D5D5D5D4F4336286E8682642E6364542E2D9C5E41434F5D
              6A7474746A5D4334788682642F222E38212D9C5E424F6A747C7F7F7C746A4F3F
              7E8682792F2F2F23222D9C5E4E5D747C858989857F745D4B8B96999996886530
              22319C5E5E5F6873848C8D8D857C6A5A8B93939393938B33499C9C9C9C9C6D52
              515166717A7B6959333333333333339C9C9C9C9C9C9C9C9C9C6D52525247472D
              9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C
              9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C}
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
            Spacing = 6
          end
        end
        object Panel13: TPanel
          Left = 0
          Top = 0
          Width = 756
          Height = 25
          Align = alTop
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = clMedGray
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          object Label9: TLabel
            Left = 5
            Top = 6
            Width = 283
            Height = 16
            Caption = #1059#1089#1090#1072#1085#1086#1074#1083#1077#1085#1085#1099#1077' '#1075#1088#1091#1087#1087#1099' '#1076#1083#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object DBGridEh3: TDBGridEh
          Left = 0
          Top = 25
          Width = 756
          Height = 128
          Align = alClient
          AutoFitColWidths = True
          DataGrouping.GroupLevels = <>
          DataSource = Q_EM_PR_DS
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Pitch = fpFixed
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
          ParentFont = False
          RowDetailPanel.Color = clBtnFace
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Arial'
          TitleFont.Pitch = fpFixed
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NAME'
              Footers = <>
              Title.Caption = #1043#1088#1091#1087#1087#1072
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Arial'
              Title.Font.Pitch = fpFixed
              Title.Font.Style = [fsBold]
              Width = 230
            end
            item
              EditButtons = <>
              FieldName = 'DEP_NAME'
              Footers = <>
              Title.Caption = #1054#1090#1076#1077#1083
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Arial'
              Title.Font.Pitch = fpFixed
              Title.Font.Style = [fsBold]
              Width = 200
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = ' '#1043#1056#1059#1055#1055#1067' '
      ImageIndex = 2
      object Splitter2: TSplitter
        Left = 0
        Top = 159
        Width = 756
        Height = 3
        Cursor = crVSplit
        Align = alBottom
        Color = clBlack
        ParentColor = False
        ExplicitTop = 266
        ExplicitWidth = 781
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 756
        Height = 159
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object DBGrid4: TDBGridEh
          Left = 0
          Top = 0
          Width = 756
          Height = 119
          Align = alClient
          AutoFitColWidths = True
          DataGrouping.GroupLevels = <>
          DataSource = Q_GROUPS_DS
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          FooterColor = clBtnFace
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -12
          FooterFont.Name = 'Arial'
          FooterFont.Pitch = fpFixed
          FooterFont.Style = []
          FooterRowCount = 1
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
          ParentFont = False
          RowDetailPanel.Color = clBtnFace
          SumList.Active = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Arial'
          TitleFont.Pitch = fpFixed
          TitleFont.Style = []
          Columns = <
            item
              AutoFitColWidth = False
              EditButtons = <>
              FieldName = 'NAME'
              Footer.Alignment = taCenter
              Footer.Font.Charset = DEFAULT_CHARSET
              Footer.Font.Color = clWindowText
              Footer.Font.Height = -12
              Footer.Font.Name = 'Arial'
              Footer.Font.Pitch = fpFixed
              Footer.Font.Style = [fsBold]
              Footer.ValueType = fvtCount
              Footers = <>
              MaxWidth = 300
              MinWidth = 400
              Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Arial'
              Title.Font.Pitch = fpFixed
              Title.Font.Style = [fsBold]
              Width = 400
            end
            item
              EditButtons = <>
              FieldName = 'INFO'
              Footers = <>
              Title.Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Arial'
              Title.Font.Pitch = fpFixed
              Title.Font.Style = [fsBold]
              Width = 250
            end
            item
              EditButtons = <>
              FieldName = 'DEP_NAME'
              Footers = <>
              Title.Caption = #1054#1090#1076#1077#1083
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Arial'
              Title.Font.Pitch = fpFixed
              Title.Font.Style = [fsBold]
              Width = 200
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 119
          Width = 756
          Height = 40
          Align = alBottom
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          object btnClients: TcxButton
            Left = 488
            Top = 5
            Width = 201
            Height = 30
            Cursor = crHandPoint
            Caption = ' '#1055#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = btnClientsClick
            Colors.Default = clBtnFace
            Colors.Normal = clBtnFace
            Colors.Hot = clBtnFace
            Colors.Pressed = clBtnFace
            Glyph.Data = {
              76060000424D7606000000000000360400002800000018000000180000000100
              08000000000040020000D30E0000D30E00000001000000000000FFA51000FFAD
              2100FFAD2900FFB53100FFB53900FFB54200FFBD42007B4A4A00FFB54A00FFBD
              4A007B4A5200BD5252008C5A5200E7A55200EFA55200F7B55200FFC652008452
              5A008C525A008C5A5A00945A5A00B55A5A00C65A5A009C635A00DE9C5A00FFC6
              5A00B56363009C6B6300A56B6300F7B56300F7BD6300FFCE6300A56B6B00AD6B
              6B00B56B6B00BD6B6B00C66B6B00CE6B6B00A5736B00D6946B00EFB56B00FFCE
              6B00FFD66B00946B73009C737300A5737300AD737300C6737300CE737300A57B
              7300AD7B7300B5847300E7A57300E7AD7300FFD67300A57B7B00AD7B7B00B57B
              7B00CE7B7B00AD847B00D6847B00CE8C7B00D68C7B00DE9C7B00D6AD7B00DEBD
              7B00EFCE7B00FFD67B00FFDE7B009C848400A5848400AD848400B5848400BD8C
              8400D68C8400D69C8400DEA58400F7BD8400EFCE8400FFDE8400B5848C00A58C
              8C00AD8C8C00B58C8C00BD8C8C00C68C8C00CE8C8C009C948C00B5948C00C694
              8C00CE9C8C00CEA58C00DEAD8C00FFDE8C009C949400A5949400AD949400B594
              9400BD949400C6949400CE949400D6949400B59C9400DE9C9400BDAD9400F7D6
              9400FFE79400B5949C00AD9C9C00BD9C9C00CE9C9C00D69C9C00ADA59C00CEB5
              9C009CBD9C00CEBD9C00FFE79C00FFEF9C00ADA5A500C6A5A500CEA5A500D6A5
              A500DEC6A500EFDEA500FFEFA500CEADAD00D6ADAD00FFEFAD00C6B5B500CEB5
              B500D6B5B500DEB5B500E7DEB500FFF7B500D6BDBD00DEBDBD00E7BDBD00FFF7
              BD00D6C6C600DEC6C600F7F7C600FFFFC600D6CECE00DECECE00E7CECE00FFFF
              CE00DED6D600EFD6D600DEDEDE00E7E7E700EFE7E700F7E7E700EFEFEF00F7EF
              EF00F7F7F700FFF7F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9C9C9C6152
              616B604646529C9C9C9C9C9C9C9C9C9C9C9C9C9C3347808A8E8A867D6D2C071B
              9C9C9C9C9C9C9C9C9C9C9C498A949492928E818A776D62131B9C9C9C9C9C9C9C
              9C9C338A95959594928E868A81806263139C9C9C9C9C9C9C9C9C339598989895
              948E867D7878546E209C9C33149C9C9C9C9C9C33989A9A95948A7E645655546E
              26323B775F110C9C9C9C9C9C338787959481783A3A3A4948507D827D7676450A
              179C9C9C6D335C6E6E643A252524638687868277606C6C6C2B319C9C5E3D0404
              4D672F160B157D8B86786E632C376072572D9C9C5E27040404031D4C3A1A7878
              787E827D52472C37372D9C9C5E180309090904040F343C567E86827847484747
              2C2D9C9C5E0D1919191909090910100E3C8282783863634838319C9C5E0F1010
              19191919191010053E8282783849645438319C6D5E19191F292929291F1F100F
              4A86826E384838382E319C5E5B1F29364343434336291F1D6486826E38483848
              2E2D9C5E4029434F5D5D5D5D4F4336286E8682642E6364542E2D9C5E41434F5D
              6A7474746A5D4334788682642F222E38212D9C5E424F6A747C7F7F7C746A4F3F
              7E8682792F2F2F23222D9C5E4E5D747C858989857F745D4B8B96999996886530
              22319C5E5E5F6873848C8D8D857C6A5A8B93939393938B33499C9C9C9C9C6D52
              515166717A7B6959333333333333339C9C9C9C9C9C9C9C9C9C6D52525247472D
              9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C
              9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C}
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
            Spacing = 6
          end
        end
      end
      object Panel9: TPanel
        Left = 0
        Top = 162
        Width = 756
        Height = 229
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 756
          Height = 25
          Align = alTop
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Color = clMedGray
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Pitch = fpFixed
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          object Label7: TLabel
            Left = 6
            Top = 4
            Width = 144
            Height = 16
            Caption = #1044#1086#1089#1090#1091#1087' '#1082' '#1087#1088#1086#1075#1088#1072#1084#1084#1072#1084':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object Panel11: TPanel
          Left = 0
          Top = 184
          Width = 756
          Height = 45
          Align = alBottom
          BevelInner = bvRaised
          BevelOuter = bvLowered
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          object BitBtn7: TcxButton
            Left = 16
            Top = 6
            Width = 126
            Height = 35
            Cursor = crHandPoint
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BitBtn7Click
            Colors.Default = clBtnFace
            Colors.Normal = clBtnFace
            Colors.Hot = clBtnFace
            Colors.Pressed = clBtnFace
            Glyph.Data = {
              76060000424D7606000000000000360400002800000018000000180000000100
              08000000000040020000230B0000230B000000010000000000002184290031A5
              4A0031AD520039B5520063A563006BAD840094DE8C00A5E79C00FF00FF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00080808080808
              0808080808080808080808080808080808080808080808080808080808080808
              0808080808080808080808080808080808080808000000000808080808080808
              0808080808080808080808040506030100080808080808080808080808080808
              0808080407060302000808080808080808080808080808080808080407060302
              0008080808080808080808080808080808080804070603020008080808080808
              0808080808080808080808040706030200080808080808080808080808080808
              0808080407060302000808080808080808080808080000000000000007060302
              0000000000000000080808080401020202020202020203020202020202020201
              0008080804030303030303030303030303030303030303030008080804060606
              0606060606060303060606060606060600080808040507070707070707060302
              0707070707070705000808080804040404040404070603020000000000000000
              0808080808080808080808040706030200080808080808080808080808080808
              0808080407060302000808080808080808080808080808080808080407060302
              0008080808080808080808080808080808080804070603020008080808080808
              0808080808080808080808040706030200080808080808080808080808080808
              0808080407060302000808080808080808080808080808080808080405060301
              0008080808080808080808080808080808080808040404040808080808080808
              0808080808080808080808080808080808080808080808080808}
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
          end
          object BitBtn8: TcxButton
            Left = 148
            Top = 6
            Width = 128
            Height = 35
            Cursor = crHandPoint
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BitBtn8Click
            Colors.Default = clBtnFace
            Colors.Normal = clBtnFace
            Colors.Hot = clBtnFace
            Colors.Pressed = clBtnFace
            Glyph.Data = {
              76060000424D7606000000000000360400002800000018000000180000000100
              08000000000040020000520B0000520B000000010000000000002D2D2D00373C
              3E0018556F0058534E005160610052636B0054777B007C707800D47719008A5B
              520085787C008D787F00AD7B7300AD7B7B0096836700AD847300B5847300A392
              7B00EFA55200FFB55200E7AD6B00F8B26600F7BD6B0000009A000316AC00021E
              AA0029799A000A62A0000018C6000936C9001029D600106BFF00AD738400AD7B
              8400B57B8400FF00FF00299CEF00428CDE006D8AFD004ABDFF009C9C9C00B584
              8400B9858500BD848400BD848C00BEB1A100C68C8C00CE948C00D69C9400C3A8
              8200DEA58C00DEA59400E7B58400CEADA500EFC68C00F9C08600EFCE9400EFCE
              9C00FBCA9500DEC6BD00EFCEA500F7D6A500F7D6AD00FBD3A900E7CEBD00EFD6
              BD00F7D6B500F7DEB500F7DEBD00DEDEDE00E7CEC600EFCEC600EFDEC600E7D6
              CE00E7DECE00F7DEC600F7DECE00E7D6D600EFDED600F7E7C600F7E7CE00F7E7
              D600F7E7DE00F7EFDE00F7EFE700F7EFEF00FFF7EF00FFF7F700FFFFF700FFFF
              FF00000000000000000000000000000000000000000000000000000000000000
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
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000002323230D2929
              29292929292929292929292929292929232323232320484F4443423E3D393938
              3838383838383829232323232320484F4B44423E3E3C39393838383838383829
              2323232323204C504B4B44423E3E3C3939383838383838292323232323205051
              504B4444423E3E3C393938383838382923232323232051452828282800031131
              282828282828382923232323232152535150504B030104050E31393938383829
              2323232323225454535150502D062502090E3139393838292323232323295445
              2828282828061A0B08090E312828382923232323232B55565454535150500737
              1508090E3139382923232323232C57585654545351500A3A371508090E313929
              23232323232E5745282828282828280C3F371508090E312923232323232E5759
              59575654545351500C3F371508090E2923232323232E57595959575654545351
              500C3F371508092923232323232F5745282828282828282828280C3A2A24271B
              23232323232F575959595959575654545351500C242724191723232323305759
              59595959595756545353534A27241D1E181C2323233057452828282828282828
              284E100F0C1C261F1C2323232333575959595959595958575646103414121C1C
              2323232323335759595959595959595958461036161329232323232323335759
              5959595959595959594910361629232323232323233359595959595959595959
              594D10362923232323232323233240414147404040403B3B3B35102923232323
              2323232323232323232323232323232323232323232323232323}
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
          end
          object BitBtn9: TcxButton
            Left = 282
            Top = 6
            Width = 151
            Height = 35
            Cursor = crHandPoint
            Caption = #1059#1076#1072#1083#1080#1090#1100
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = BitBtn9Click
            Colors.Default = clBtnFace
            Colors.Normal = clBtnFace
            Colors.Hot = clBtnFace
            Colors.Pressed = clBtnFace
            Glyph.Data = {
              F6060000424DF606000000000000360000002800000018000000180000000100
              180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FF00006E00006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FF00006E00006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FF00006E0018EB0008CA00006EFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF00006E0002DA0004E300006EFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FF00006E001EEB0019EB0018EB0007C900006EFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FF00006E0001D70008EB0008EB0006E80000
              6EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00006E0014D9001EEB0019EB00
              19EB0008C800006EFF00FFFF00FFFF00FFFF00FF00006E0002D60008EB0006EB
              0008EB0000CC00006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000
              6E0014D7001FEB001AEB0019EB0009CC00006EFF00FFFF00FF00006E0004E000
              09EB0008EB0008EB0000C800006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FF00006E0014D60020EB001BEB001BEB000ED600006E0000
              6E0004E20007EB0006EB0009EB0000C900006EFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00006E0016D70021EB001DEB
              001CEB000EDF0008E80008EB0006EB0008EB0001D900006EFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
              006E0016D60021EB0019EB0012EB000FEB000BEB000AEB0002D700006EFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FF00006E0019DE001AEB0016EB0013EB0011EB0008D700
              006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00006E0020E7001FEB001BEB0018
              EB0017EB0011D700006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00006E032AE70128EB
              0023EB0021EB0020EB001FEB0021EB0013D600006EFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00006E04
              28DC0831EB042CEB022CEB001AD90019D90026EB0021EB0021EB0014D700006E
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FF00006E092FE00C37EB0A32EB0A36EB0121D700006E00006E001AD60028EB00
              23EB0023EB0014D600006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FF00006E0E36E0113EEB0E38EB0E3AEB0220CC00006EFF00FFFF00
              FF00006E0015CC0129EB0024EB0024EB0016D700006EFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FF00006E143FE61543EB133EEB1340EB031FC800006E
              FF00FFFF00FFFF00FFFF00FF00006E0014C8022BEB0024EB0025EB0019DB0000
              6EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00006E1947E81947EB1846EB06
              23C900006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00006E0015C9022CEB
              012AEB001BDB00006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000
              6E1842E20A28C900006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FF00006E0018CD0020D900006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FF00006E00006EFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FF00006E00006EFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
          end
        end
        object DBGrid3: TDBGridEh
          Left = 0
          Top = 25
          Width = 756
          Height = 159
          Align = alClient
          AutoFitColWidths = True
          DataGrouping.GroupLevels = <>
          DataSource = Q_GR_PR_DS
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          FooterColor = clBtnFace
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -12
          FooterFont.Name = 'Arial'
          FooterFont.Pitch = fpFixed
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
          ParentFont = False
          RowDetailPanel.Color = clBtnFace
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Arial'
          TitleFont.Pitch = fpFixed
          TitleFont.Style = []
          Columns = <
            item
              EditButtons = <>
              FieldName = 'NAME'
              Footers = <>
              MinWidth = 100
              Title.Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1072
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Arial'
              Title.Font.Pitch = fpFixed
              Title.Font.Style = [fsBold]
              Width = 100
            end
            item
              Alignment = taCenter
              AutoFitColWidth = False
              Checkboxes = True
              EditButtons = <>
              FieldName = 'C_START'
              Footers = <>
              KeyList.Strings = (
                '1'
                '0')
              MaxWidth = 80
              MinWidth = 80
              Title.Alignment = taCenter
              Title.Caption = #1047#1072#1087#1091#1089#1082
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Arial'
              Title.Font.Pitch = fpFixed
              Title.Font.Style = [fsBold]
              Width = 80
            end
            item
              Alignment = taCenter
              AutoFitColWidth = False
              Checkboxes = True
              EditButtons = <>
              FieldName = 'C_EDIT'
              Footers = <>
              KeyList.Strings = (
                '1'
                '0')
              MaxWidth = 120
              MinWidth = 120
              Title.Alignment = taCenter
              Title.Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Arial'
              Title.Font.Pitch = fpFixed
              Title.Font.Style = [fsBold]
              Width = 120
            end
            item
              Alignment = taCenter
              AutoFitColWidth = False
              Checkboxes = True
              EditButtons = <>
              FieldName = 'C_DEL'
              Footers = <>
              KeyList.Strings = (
                '1'
                '0')
              MaxWidth = 80
              MinWidth = 80
              Title.Alignment = taCenter
              Title.Caption = #1059#1076#1072#1083#1077#1085#1080#1077
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Arial'
              Title.Font.Pitch = fpFixed
              Title.Font.Style = [fsBold]
              Width = 80
            end
            item
              Alignment = taCenter
              AutoFitColWidth = False
              Checkboxes = True
              EditButtons = <>
              FieldName = 'C_PRINT'
              Footers = <>
              KeyList.Strings = (
                '1'
                '0')
              MaxWidth = 80
              MinWidth = 80
              Title.Alignment = taCenter
              Title.Caption = #1055#1077#1095#1072#1090#1100
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Arial'
              Title.Font.Pitch = fpFixed
              Title.Font.Style = [fsBold]
              Width = 80
            end
            item
              Alignment = taCenter
              AutoFitColWidth = False
              Checkboxes = True
              EditButtons = <>
              FieldName = 'C_ADDIT'
              Footers = <>
              KeyList.Strings = (
                '1'
                '0')
              MaxWidth = 80
              MinWidth = 80
              Title.Alignment = taCenter
              Title.Caption = #1044#1086#1087'. '#1092'-'#1094#1080#1103
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Arial'
              Title.Font.Pitch = fpFixed
              Title.Font.Style = [fsBold]
              Width = 80
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = ' '#1055#1056#1054#1043#1056#1040#1052#1052#1067' '
      ImageIndex = 1
      object Panel4: TPanel
        Left = 0
        Top = 351
        Width = 756
        Height = 40
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBGrid2: TDBGridEh
        Left = 0
        Top = 0
        Width = 756
        Height = 351
        Align = alClient
        AutoFitColWidths = True
        DataGrouping.GroupLevels = <>
        DataSource = Q_PROGS_DS
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        FooterColor = clBtnFace
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'Arial'
        FooterFont.Pitch = fpFixed
        FooterFont.Style = []
        FooterRowCount = 1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
        ParentFont = False
        RowDetailPanel.Color = clBtnFace
        SumList.Active = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Arial'
        TitleFont.Pitch = fpFixed
        TitleFont.Style = []
        Columns = <
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'NAME'
            Footer.Alignment = taCenter
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -12
            Footer.Font.Name = 'Arial'
            Footer.Font.Pitch = fpFixed
            Footer.Font.Style = [fsBold]
            Footer.ValueType = fvtCount
            Footers = <>
            MaxWidth = 300
            MinWidth = 400
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Arial'
            Title.Font.Pitch = fpFixed
            Title.Font.Style = [fsBold]
            Width = 400
          end
          item
            EditButtons = <>
            FieldName = 'INFO'
            Footers = <>
            Title.Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Arial'
            Title.Font.Pitch = fpFixed
            Title.Font.Style = [fsBold]
            Width = 230
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = ' '#1044#1054#1057#1058#1059#1055' '#1050' '#1050#1040#1057#1057#1040#1052' '
      ImageIndex = 3
      object Panel17: TPanel
        Left = 0
        Top = 0
        Width = 756
        Height = 351
        Align = alClient
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object DBGridEh1: TDBGridEh
          Left = 0
          Top = 0
          Width = 756
          Height = 351
          Align = alClient
          AutoFitColWidths = True
          Ctl3D = True
          DataGrouping.GroupLevels = <>
          DataSource = Q_SET_CASH_DS
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          FooterColor = clWindow
          FooterFont.Charset = DEFAULT_CHARSET
          FooterFont.Color = clWindowText
          FooterFont.Height = -11
          FooterFont.Name = 'MS Sans Serif'
          FooterFont.Pitch = fpFixed
          FooterFont.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
              Alignment = taCenter
              AutoFitColWidth = False
              EditButtons = <>
              FieldName = 'BRIEF'
              Footers = <>
              ReadOnly = True
              Title.Alignment = taCenter
              Title.Caption = #1054#1092#1080#1089
            end
            item
              Alignment = taCenter
              AutoFitColWidth = False
              EditButtons = <>
              FieldName = 'N_CASH'
              Footers = <>
              Title.Alignment = taCenter
              Title.Caption = #8470' '#1082#1072#1089#1089#1099
              Width = 68
            end
            item
              EditButtons = <>
              FieldName = 'FIO'
              Footers = <>
              Title.Caption = #1060#1048#1054' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
              Width = 230
            end
            item
              AutoFitColWidth = False
              EditButtons = <>
              FieldName = 'LOGIN'
              Footers = <>
              Title.Caption = #1051#1086#1075#1080#1085
              Width = 80
            end
            item
              AutoFitColWidth = False
              EditButtons = <>
              FieldName = 'NICK'
              Footers = <>
              Title.Caption = #1050#1086#1076
              Width = 69
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object Panel18: TPanel
        Left = 0
        Top = 351
        Width = 756
        Height = 40
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 1
        object RadioGroup1: TRadioGroup
          Left = 274
          Top = 2
          Width = 113
          Height = 34
          Caption = ' '#8470' '#1082#1072#1089#1089#1099' '
          Columns = 3
          ItemIndex = 0
          Items.Strings = (
            '1'
            '2'
            '3')
          TabOrder = 0
        end
        object DBComboBoxEh1: TDBComboBoxEh
          Left = 408
          Top = 6
          Width = 337
          Height = 19
          Cursor = crHandPoint
          AlwaysShowBorder = True
          EditButtons = <>
          Flat = True
          TabOrder = 1
          Text = 'DBComboBoxEh1'
          Visible = True
        end
      end
    end
    object tsh_debetors: TTabSheet
      Caption = ' '#1044#1054#1057#1058#1059#1055' '#1050' '#1044#1045#1041#1048#1058#1054#1056#1040#1052' '
      ImageIndex = 4
      object Panel8: TPanel
        Left = 0
        Top = 351
        Width = 756
        Height = 40
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 1
        DesignSize = (
          756
          40)
        object Label3: TLabel
          Left = 414
          Top = 12
          Width = 337
          Height = 14
          Anchors = [akTop, akRight]
          Caption = #1044#1074#1086#1081#1085#1086#1081' '#1082#1083#1080#1082' '#1085#1072' '#1079#1072#1087#1080#1089#1080' - '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1077' '#1088#1072#1079#1088#1077#1096#1077#1085#1085#1099#1093' '#1076#1077#1073#1080#1090#1086#1088#1086#1074'  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          ParentFont = False
          ExplicitLeft = 448
        end
      end
      object EhDebitors: TDBGridEh
        Left = 0
        Top = 0
        Width = 756
        Height = 351
        Align = alClient
        AutoFitColWidths = True
        Ctl3D = True
        DataGrouping.GroupLevels = <>
        DataSource = Q_SET_DEBITOR_DS
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        FooterColor = clWindow
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -11
        FooterFont.Name = 'MS Sans Serif'
        FooterFont.Pitch = fpFixed
        FooterFont.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            Alignment = taCenter
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'BRIEF'
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = #1054#1092#1080#1089
          end
          item
            EditButtons = <>
            FieldName = 'FIO'
            Footers = <>
            Title.Caption = #1060#1048#1054' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
            Width = 230
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'LOGIN'
            Footers = <>
            Title.Caption = #1051#1086#1075#1080#1085
            Width = 80
          end
          item
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'NICK'
            Footers = <>
            Title.Caption = #1050#1086#1076
            Width = 69
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'DEBETORS'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1083'-'#1074#1086' '#1076#1077#1073#1080#1090#1086#1088#1086#1074
            Width = 120
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1056#1040#1047#1056#1045#1064#1045#1053#1048#1071
      ImageIndex = 5
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 756
        Height = 36
        Align = alTop
        Color = clWhite
        ParentBackground = False
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 8
          Width = 149
          Height = 16
          Caption = #1057#1087#1080#1089#1086#1082' '#1088#1072#1079#1088#1077#1096#1077#1085#1080#1081
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel12: TPanel
        Left = 0
        Top = 36
        Width = 756
        Height = 48
        Align = alTop
        Color = clMoneyGreen
        ParentBackground = False
        TabOrder = 1
        Visible = False
        object Label5: TLabel
          Left = 8
          Top = 6
          Width = 48
          Height = 13
          Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        end
        object Edit4: TEdit
          Left = 72
          Top = 6
          Width = 313
          Height = 22
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          MaxLength = 50
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
        end
        object cxButton4: TcxButton
          Left = 508
          Top = 5
          Width = 110
          Height = 25
          Cursor = crHandPoint
          Caption = ' '#1047#1072#1087#1080#1089#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = cxButton4Click
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000994F42BDA35D
            53DF9E5648DFA36156DFA26056DFA05E56DF9E5C56DF9C5B57DF9A5957DF9958
            57DF985757DF965657DF955557DF8C4648DF965153DF894043B9A86256E4FEA7
            A7FFC08B7EFFF5EAE5FFF5E9E5FFF5E9E5FFF5E9E5FFF5E9E5FFF5E9E5FFF5E9
            E5FFF5E9E5FFF5E9E5FFF6EBE7FFB37172FFFEA5A5FF965153DFA96356E4FEA1
            A1FFC18C7EFFE5D9D5FFC8BBB7FFC8BBB7FFC8BBB7FFC8BBB7FFC8BBB7FFC8BB
            B7FFC8BBB7FFC8BBB7FFE9DDD9FFB47071FFFE9F9FFF975253DFAA6556E4FEA5
            A5FFC38E7FFFF4E9E5FFEFE3DFFFEFE3DFFFEFE3DFFFEFE3DFFFEFE3DFFFEFE3
            DFFFEFE3DFFFEFE3DFFFF5EBE8FFB57171FFFEA1A1FF985354DFAB6656E4FEA9
            A9FFC48F7FFFE6DCD8FFC4B9B5FFC4B9B5FFC4B9B5FFC4B9B5FFC4B9B5FFC4B9
            B5FFC4B9B5FFC4B9B5FFE9E0DDFFB67372FFFEA5A5FF985454DFAC6756E4FEAD
            ADFFC59180FFF8F0EDFFF5EDEAFFF5EDEAFFF5EDEAFFF5EDEAFFF5EDEAFFF5ED
            EAFFF5EDEAFFF5EDEAFFF8F1EEFFB77573FFFEA9A9FF995554DFAD6856E4FEB1
            B1FFC79280FFE6DFDCFFC0B7B3FFC0B7B3FFC0B7B3FFC0B7B3FFC0B7B3FFC0B7
            B3FFC0B7B3FFC0B7B3FFEAE3E0FFB87774FFFEADADFF9A5654DFAE6956E4FEB6
            B6FFC79380FFFAF4F2FFFAF4F2FFFAF4F2FFFAF4F2FFFAF4F2FFFAF4F2FFFAF4
            F2FFFAF4F2FFFAF4F2FFFAF5F3FFBA7974FFFEB1B1FF9B5754DFAF6B57E4FEBA
            BAFFBC7D66FFD7B4A6FFD6B3A6FFD6B3A6FFD5B2A6FFD4B1A6FFD3B0A6FFD2B0
            A6FFD1AFA7FFD0AEA7FFCFADA7FFB46F68FFFEB5B5FF9C5855DFB06C57E4FEBE
            BEFFF1AAA5FFE39A90FFE0978CFFE0968CFFDF958CFFDF958BFFDF948BFFDE93
            8BFFDE938BFFDD928AFFE0958EFFF2A6A5FFFEBABAFF9D5955DFB16D57E4FEC2
            C2FFFFBCBCFFD57D6DFFEB7D74FFD0A399FFD1A79DFFD0A69CFFCAA198FFCAA1
            97FFCF988EFFEC7C73FFD57E70FFFFB7B7FFFEBEBEFF9E5A54DFB26E57E4FEC6
            C6FFFFC0C0FFDE8174FFFD7C78FFDBC1BBFFDBC8C0FFDAC6BFFFB78069FFAD64
            47FFD7ADA6FFFF7B77FFDE8477FFFFBBBBFFFEC2C2FFA05C54DFB36E57E4FEC9
            C9FFFFC3C3FFDE8578FFFD847FFFE1CBC7FFE4D6D0FFE2D4CFFFB8836EFFAC66
            4BFFDAB3ADFFFF837EFFDE877AFFFFBFBFFFFEC5C5FFA15D54DFB36F57E4FECC
            CCFFFFC7C7FFDE897BFFFD8C86FFE8D7D3FFEEE5E1FFECE3DFFFBA8A77FFAD6E
            55FFDDBAB5FFFF8C86FFDE8B7EFFFFC2C2FFFECACAFFA15D53DFB47057E4FED2
            D2FFFECECEFFDE8E80FFFD968FFFE9D8D4FFEFE5E2FFEDE4E1FFD0B7AEFFCCAD
            A1FFE0BFBAFFFF958FFFDE9083FFFDCDCDFFC38A83FF964B4082A95E41BDB26D
            53DFB16C53DFB46950DFBD725BDFB5715ADFB4705ADFB4705ADFB46F5ADFB36E
            59DFB46E59DFBA705BDFAE644FDFA45E50DE994E406D00000000}
          LookAndFeel.Kind = lfOffice11
        end
        object cxButton5: TcxButton
          Left = 618
          Top = 5
          Width = 110
          Height = 25
          Cursor = crHandPoint
          Caption = ' '#1054#1090#1084#1077#1085#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = cxButton5Click
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            000000000000000000001D1D78182727A2792929A3BC3030AADD2E2EA9DC2727
            9FB926269C751C1C741500000000000000000000000000000000000000000000
            0000151557012929A6783838B8F65A5ADCFF7070F2FF6F6FF3FF6868EEFF5E5E
            E6FF4A4AD0FF3131ACF325259B6F000000000000000000000000000000001616
            58012A2AAAA34D4DCFFF6F6FEDFF6F6FEFFF5858DAFF4848C9FF4545C6FF4C4C
            D0FF5454DFFF5050DCFF3F3FC1FF26269C990000000000000000000000002A2A
            AC784B4BCEFF6969E6FF5858DBFF2F2FAEDC2828A56C212185341F1F7F322727
            9E632A2AA4DB4A4AD2FF4949D4FF3F3FC1FF25259B6C00000000202080183838
            BCF56363E0FF5555D8FF2A2AABAF1F1F80090000000000000000000000002424
            953E3232B0F25252DFFF4D4DD7FF4F4FDCFF3030ABF11C1C75112B2BB0775050
            D3FF6060DFFF3030B3DB2020820900000000000000000000000026269C483636
            B5F65858E3FF3E3EC2FF2929A3EB4E4ED9FF4545CAFF26269C6B2D2DB3B95C5C
            DAFF5050D3FF2B2BAE6C0000000000000000000000002828A2533A3ABBF85F5F
            E9FF3F3FC1FE2828A37B27279F514242C6FF4F4FDAFF27279EAD3232B9D95D5D
            DAFF4545CBFF2323903400000000000000002929A75F3E3EC1FB6666EEFF3F3F
            C2FD2828A56E00000000191967183939BBFF5252DFFF2A2AA3CE3232BAD85D5D
            DBFF4545CBFF22228B31000000002A2AAC6A4242C7FD6B6BF2FF3E3EC2FC2929
            A8620000000000000000181864163939BBFF5252DFFF2A2AA4CC2E2EB7B45B5B
            DBFF4F4FD4FF2C2CB1632B2BB0774646CBFE6D6DF3FF3D3DC2FA2A2AA9560000
            00000000000000000000242494484141C7FF4E4EDAFF2828A1A92D2DB6704F4F
            D4FF5F5FDFFF3030B7EE4949CFFF6C6CF1FF3C3CC1F62A2AAA4B000000000000
            000000000000000000002A2AA8BA4E4ED9FF4444CBFF2727A164212186133838
            C1F16363E2FF6161E3FF6969EDFF3939C0F22A2AAC4200000000000000000000
            0000000000002929A9824141C8FF5151DEFF3030B0EB1E1E7A0C000000002D2D
            B76A4848D0FF6969E4FF5B5BE1FF2F2FB6D52A2AAA511C1C73191A1A6C162727
            9D482B2BAEBA4242CAFF5151DEFF3E3EC3FF2929A65E00000000000000000000
            00002E2EB8904A4AD2FF6D6DEEFF6A6AEDFF5252D8FF4343CBFF4040C8FF4848
            D0FF5353DEFF5252DFFF3E3EC5FF2A2AAA840000000000000000000000000000
            0000000000002D2DB7653838C2EE5656DDFF6B6BEFFF6F6FF4FF6868F0FF5B5B
            E5FF4949D2FF3232B7EA2A2AAC5D000000000000000000000000000000000000
            000000000000000000002121850E2D2DB5652D2DB6A72F2FB8C92F2FB6C82C2C
            B2A52B2BAF611F1F800B00000000000000000000000000000000}
          LookAndFeel.Kind = lfOffice11
        end
        object CheckBox1: TCheckBox
          Left = 304
          Top = 29
          Width = 97
          Height = 17
          Caption = #1040#1082#1090#1080#1074#1085#1086#1089#1090#1100
          TabOrder = 3
        end
      end
      object gr_rights: TcxGrid
        Left = 0
        Top = 84
        Width = 756
        Height = 307
        Align = alClient
        TabOrder = 2
        LookAndFeel.Kind = lfOffice11
        object gr_rights_v: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_rights
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Filter.AutoDataSetFilter = True
          DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              Column = gr_rights_id
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1092#1080#1083#1100#1090#1088#1086#1074
          FilterRow.Visible = True
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnMoving = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          object gr_rights_id: TcxGridDBColumn
            Caption = 'ID '#1088#1072#1079#1088#1077#1096#1077#1085#1080#1103
            DataBinding.FieldName = 'USER_RIGHTS_ID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Visible = False
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 150
            Options.Editing = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 150
          end
          object gr_rights_name: TcxGridDBColumn
            Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'RIGHT_NAME'
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
          end
          object gr_rights_act: TcxGridDBColumn
            Caption = #1040#1082#1090#1080#1074#1085#1086#1089#1090#1100
            DataBinding.FieldName = 'IS_ACTIVE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.DisplayChecked = #1044#1072
            Properties.DisplayUnchecked = #1053#1077#1090
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = True
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 70
            Options.Editing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 70
          end
        end
        object gr_rights_l: TcxGridLevel
          GridView = gr_rights_v
        end
      end
    end
  end
  object ImageList1: TImageList
    Left = 632
    Top = 152
    Bitmap = {
      494C0101050020006C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EADFD200D6BEA400D6BEA400D6BEA400E6D8C900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6BFA400E2CCB200E6CFB500E6CFB500D6BFA400E6D9C9000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D5C2A900D5C2A900FFFFFF00FFFFFF00D5C2A900CDB9A0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6C5AB00D7C5AB00D7C5AC00D7C5AC00D6C4AB00C8B69D000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D9C8AD00D9C8AE00FFFFFF00FFFFFF00D8C8AD00CAB99E000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DACAAE00DACAAF00DACAAF00DACAAF00D9CAAE00CABBA0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DBCDB000DCCEB000FFFFFF00FFFFFF00DBCDB000CCBEA2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DFD1B300DFD1B300DFD2B300E1D3B400DFD2B300CFC2A4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFDFB600FFCC
      7A00FFD07E00FFD07E00FFD07E00FFD07E00FFD07E00FFD07E00FFD07E00FFCC
      7A00FFBE6C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFC16B00F6BA
      7300F6BA7300F6BA7300F6BA7300F6BA7300F6BA7300F6BA7300F6BA7300F6BA
      7300FFC274000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EEB26200FEC1
      7100FEC17100FFC47200F8B86400FDBB6500FAB96400FFC37100FFC27100FEC1
      7100FCC071000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2B56100FFC4
      7000FFC57000FFC77100FCBB62000000000000000000FFC57000FFC57000FFC4
      7000FFC36F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FBBC5E00FFCB
      6D00FFCA6D00FFC86C00F8BA5E000000000000000000FFC96C00FFCA6D00FFCB
      6D00FFCA6D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFC15E00FFCF
      6C00FFCF6C00FFCA6B00FBBC5D00FFD56000FFD56000FFCC6C00FFCE6C00FFCF
      6C00FFCC69000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFCE
      5E00FFCE5E00FFCD5D00FFCC5D00FFCB5D00FFCC5D00FFCE5E00FFCE5E00FFCE
      5E00FFE5AE000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A636B002963
      8C0042525A005A5A5A005A5A5A00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000010841000189C
      180031A5310039AD390039AD3900107B100031942900217318005A524200736B
      5A0000000000000000000000000000000000C6B5AD00A5948400A5948400A594
      8400A5948400A5948400A5948400A5948400A5948400A5948400A5948400A594
      8400A5948400A5948400A5948400C6BDB500B5735200B5735200C6421800C642
      2100CE4A2900C64A29009C4A29008C5242000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A6BB5004273
      CE00428CDE00398CDE002194D600186B9400315A6B00315A6B006B6B6B000000
      000000000000000000000000000000000000000000000000000021A5210031AD
      31004ABD4A0052C65200399C39008CBD7B0052BD520042BD4200217318004A42
      2900000000000000000000000000000000008C5A42005A3921005A3921005A39
      21005A3921005A3921005A3921005A3921005A3921005A3921005A3921005A39
      21005A3921005A39210073392100846B5A00C6421800C6421800E75A3900F763
      4A00FF6B5A00EF634A00E75A3900EF5A42008C4A290063735A00397339003173
      3100297B290029732900316B31005A735A0000000000000000004A6BB500427B
      D600427BD600428CDE003994EF003994EF003194F7002194EF00187BAD002163
      8C00525A5A007373730000000000000000000000000000000000299C29004ABD
      4A006BCE6B006BC66B00F7FFEF00F7FFEF0063C6630063CE630031A531004A6B
      3900000000000000000000000000000000006B5A4A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000522910008C736300CE4A2100CE4A2100FF735A00FF7B
      6300DE6B4200EFB58400DE7B4A00F7735A00E75A39007B8C390084BD730063AD
      5A0063C6630052C6520031B53100189418000000000000000000317BBD00427B
      D600427BD600427BD600428CDE00398CDE003994EF003994EF003194F7003194
      FF00319CFF003194F70063636300000000000000000000000000000000004ABD
      4A0073CE730052A54A00FFFFFF00FFFFFF006BC66B0073CE7300319C31000000
      0000000000000000000000000000000000006B5A4A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000522910008C73630000000000D6846300FF7B6300FF8C
      6B00DE8C5A00FFD69C00DE8C5A00EF7B5A00E75A39007BA55200C6DEB500D6E7
      C60073D6730063CE630042B54200188C180000000000000000004273CE004273
      CE004273CE00427BD600427BD600428CDE003994EF003994EF003994F7003194
      F700319CFF00319CFF0063636300000000000000000000000000000000000000
      000018734A003984AD00217BBD00428CAD0063BD6300399C3900000000000000
      0000000000000000000000000000000000006B5A4A00000000004A4A4A00FFFF
      FF00FFFFFF004A4A4A00000000000000000000000000000000004A4A4A00FFFF
      FF000000000000000000522910008C7363000000000000000000A56342008C31
      18002121730021217B00A5524A00C65A310073B55A0084DE8400FFF7E700FFF7
      E7007BAD630063BD6300398C3900000000000000000000000000427BD6004273
      CE00426BBD004273BD00427BD600427BD600428CDE00398CDE003994EF003994
      EF003194F7003194FF0063636300000000000000000000000000000000000000
      0000187BC600218CE700298CE700218CE700296B520000000000000000000000
      0000000000000000000000000000000000006B524A0000000000FFFFFF004A4A
      4A004A4A4A00FFFFFF0000000000FFFFFF000000000000000000FFFFFF004A4A
      4A00000000000000000052291000846B5A000000000000000000181818000808
      080010319400103194001018730063525A004AA54A0063BD630094ADB5004A8C
      B5006394A5003184390000000000000000000000000000000000398CD600426B
      B5004A6BB500426BBD004273CE00427BD600427BD600428CDE003994EF003994
      EF003994F7003194F7006363630000000000000000000000000000000000297B
      AD00399CFF00399CFF00399CFF00399CFF00298CE70039525200000000000000
      00000000000000000000000000000000000063524A0000000000FFFFFF000000
      000000000000000000000000000000000000000000004A4A4A00FFFFFF000000
      00000000000000000000522910008C736300000000001010100008101800184A
      A500185ABD00185ABD001852BD0010318C0000000000000000003194F7003194
      F7003194F7002994EF0000000000000000000000000000000000426BB5003952
      7B004263AD00425A9C0039527B00394A7300395A8C0039639C003973CE00398C
      DE003994EF003994EF0063636300000000000000000000000000000000002184
      C60042A5FF0042A5FF0042A5FF0042A5FF00399CF700315A6B00000000000000
      00000000000000000000000000000000000063524A0000000000FFFFFF004A4A
      4A004A4A4A00FFFFFF0000000000FFFFFF0000000000FFFFFF004A4A4A000000
      00000000000000000000522910008C736300000000001818180010213100185A
      BD00216BCE00216BCE002163CE00104AAD0000000000529CCE0039A5FF0039A5
      FF00399CFF00399CFF00426B7B00000000000000000000000000426B9C00425A
      94004273BD004273BD004273BD004273BD0063ADCE00528CAD00425A7B003952
      7300396BAD003973BD00525252000000000000000000000000006BA5C60042A5
      F7004AB5FF0052B5FF0052BDFF0052B5FF004AADFF0039739400000000000000
      0000000000000000000000000000000000006B5A4A00000000004A4A4A00FFFF
      FF00FFFFFF004A4A4A00000000000000000000000000FFFFFF00000000000000
      00000000000000000000522910008C736300000000003131310029292900215A
      A5003194F7003194F700298CF700216BCE000000000042A5E7004AB5FF0052B5
      FF004AB5FF004AADFF00298CCE0000000000000000000000000042526B004273
      BD00427BD600427BD600427BD600427BD6005AB5EF0063BDF7004A94DE00427B
      D600427BD600427BD600394A63000000000000000000000000005294BD0042A5
      EF005ABDFF005ABDFF0052B5F7004AB5EF0052B5F70039738C00000000000000
      0000000000000000000000000000000000006B524A0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000052291000846B5A0000000000313131004A4A4A001829
      4200216BCE00297BE7003194F700216BC600000000004AA5E70052BDFF005ABD
      FF0052BDFF0052B5FF003194DE000000000000000000000000004A5263008CB5
      DE005294DE004A94DE00428CDE00428CDE00428CDE00428CDE00428CDE00428C
      DE00428CDE00428CDE00394A5A0000000000000000000000000063849C002173
      A5004A94C6006BADD60063ADF7004A9CE700216BA50000000000000000000000
      000000000000000000000000000000000000A57B5200735A3100735A3100735A
      3100735A3100735A3100735A3100735A3100735A3100735A3100736339007363
      3900736339006B5A420084522900846B5A0000000000000000005A5A5A006B6B
      6B00A5A5A50084848400313131004A4A4A0000000000529CC6003994C6004A9C
      CE003194CE00298CCE00106B9C000000000000000000000000004A5A6B00425A
      7B00396BAD003173CE00529CEF006BADEF008CD6F70094D6FF008CD6F70073CE
      F7004AADF700429CF70042424A00000000000000000000000000000000002173
      A5006BADD6008CBDE70073BDE7005AADDE00316B7B0000000000000000000000
      000000000000000000000000000000000000DE842100EF8C1800EF8C1800EF8C
      1800EF8C1800EF8C1800EF8C1800EF8C1800EF8C1800EF8C1800FFB55A00FFAD
      5200FFB56300A58C9400A55A39009C8473000000000000000000424242007373
      73008C8C8C0084848400393939000000000000000000000000005AA5D6006BB5
      DE00ADD6EF0073B5D6004284A500000000000000000000000000000000000000
      000000000000183994003142520042526B00426B9C00396BAD004294EF00425A
      7B00396BAD00425A7B005A5A5A00000000000000000000000000000000000000
      00006BA5BD004A94B5004A8CAD0063849C000000000000000000000000000000
      000000000000000000000000000000000000B5845A00BD733900C6734200C673
      4200C6734200C6734200C6734200C6734200C6734200C6734200C67B4200C67B
      4200C67B4200B5734A00AD7B5A00C6BDB5000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009CC6DE008CBD
      D60084B5D6008CB5CE0000000000000000000000000000000000000000000000
      000000000000397BD60021429C0021398C0029315A0029315A00182163000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005294BD001852D6001852D6001039B5001031B50018296B000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000F83F000000000000
      F81F000000000000F81F000000000000F81F000000000000F81F000000000000
      F81F000000000000F81F000000000000F81F000000000000C007000000000000
      C007000000000000C007000000000000C187000000000000C187000000000000
      C007000000000000E007000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FF
      C00F000000FFC01FC00F00000000C003C00F00000000C001E01F00008000C001
      F03F0000C001C001F07F0000C003C001E03F000080C3C001E03F00008081C001
      C03F00008081C001C03F00008081C001C07F0000C081C001E07F0000C1C1F801
      F0FF0000FFC3F81FFFFFFFFFFFFFF81F00000000000000000000000000000000
      000000000000}
  end
  object SelQ: TOraQuery
    Left = 688
    Top = 240
  end
  object Q_EMPL: TOraQuery
    SQL.Strings = (
      
        'SELECT NN, ACTIVE, CCODE, FIO, ID_CLIENTS, LOGIN, NICK, STAFF, C' +
        'OUNT, id_office, brief'
      'from employees_view '
      'where ( id_office = :v_office or :v_office = 0)')
    FetchAll = True
    AfterOpen = Q_EMPLAfterRefresh
    AfterScroll = Q_EMPLAfterScroll
    AfterRefresh = Q_EMPLAfterRefresh
    Left = 360
    Top = 328
    ParamData = <
      item
        DataType = ftInteger
        Name = 'v_office'
        ParamType = ptInput
      end>
    object Q_EMPLNN: TFloatField
      FieldName = 'NN'
    end
    object Q_EMPLACTIVE: TIntegerField
      FieldName = 'ACTIVE'
    end
    object Q_EMPLCCODE: TStringField
      FieldName = 'CCODE'
      Required = True
      Size = 13
    end
    object Q_EMPLFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object Q_EMPLID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
      Required = True
    end
    object Q_EMPLLOGIN: TStringField
      FieldName = 'LOGIN'
    end
    object Q_EMPLNICK: TStringField
      FieldName = 'NICK'
    end
    object Q_EMPLSTAFF: TIntegerField
      FieldName = 'STAFF'
    end
    object Q_EMPLCOUNT: TIntegerField
      FieldName = 'COUNT'
      Required = True
    end
    object Q_EMPLID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_EMPLBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
  end
  object Q_EMPL_DS: TOraDataSource
    DataSet = Q_EMPL
    Left = 400
    Top = 328
  end
  object Q_SET_CASH: TOraQuery
    SQL.Strings = (
      'begin'
      '  admins.get_cach(:v_office, :CURSOR_);'
      'end;')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 480
    Top = 328
    ParamData = <
      item
        DataType = ftInteger
        Name = 'v_office'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Q_SET_CASHN_CASH: TIntegerField
      FieldName = 'N_CASH'
      Required = True
    end
    object Q_SET_CASHID_CLIENTS: TFloatField
      FieldName = 'ID_CLIENTS'
    end
    object Q_SET_CASHFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object Q_SET_CASHLOGIN: TStringField
      FieldName = 'LOGIN'
    end
    object Q_SET_CASHNICK: TStringField
      FieldName = 'NICK'
    end
    object Q_SET_CASHID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_SET_CASHBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
  end
  object Q_SET_CASH_DS: TOraDataSource
    DataSet = Q_SET_CASH
    Left = 520
    Top = 328
  end
  object Q_PROGS: TOraQuery
    SQL.Strings = (
      'begin'
      '  admins.get_programs(:CURSOR_);'
      'end;')
    FetchAll = True
    AfterOpen = Q_PROGSAfterOpen
    AfterRefresh = Q_PROGSAfterOpen
    Left = 360
    Top = 360
    ParamData = <
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Q_PROGSID_ADMIN_PROGRAMS: TIntegerField
      FieldName = 'ID_ADMIN_PROGRAMS'
      Required = True
    end
    object Q_PROGSNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 255
    end
    object Q_PROGSINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
  end
  object Q_PROGS_DS: TOraDataSource
    DataSet = Q_PROGS
    Left = 400
    Top = 360
  end
  object Q_GROUPS: TOraQuery
    SQL.Strings = (
      'begin'
      '  admins.get_role_group(:v_office, :CURSOR_);'
      'end;')
    FetchAll = True
    AfterOpen = Q_GROUPSAfterOpen
    AfterScroll = Q_GROUPSAfterScroll
    AfterRefresh = Q_GROUPSAfterOpen
    Left = 480
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'v_office'
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Q_GROUPSID_ROLE_GROUPS: TIntegerField
      FieldName = 'ID_ROLE_GROUPS'
      Required = True
    end
    object Q_GROUPSNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 255
    end
    object Q_GROUPSINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
    object Q_GROUPSID_DEP: TIntegerField
      FieldName = 'ID_DEP'
    end
    object Q_GROUPSDEP_NAME: TStringField
      FieldName = 'DEP_NAME'
      Size = 100
    end
    object Q_GROUPSID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_GROUPSBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
  end
  object Q_GROUPS_DS: TOraDataSource
    DataSet = Q_GROUPS
    Left = 520
    Top = 296
  end
  object Q_SET_DEBITOR: TOraQuery
    SQL.Strings = (
      'begin'
      '  admins.get_debetors(:v_office, :CURSOR_);'
      'end;')
    FetchAll = True
    FilterOptions = [foCaseInsensitive]
    Left = 480
    Top = 360
    ParamData = <
      item
        DataType = ftInteger
        Name = 'v_office'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Q_SET_DEBITORDEBETORS: TFloatField
      FieldName = 'DEBETORS'
    end
    object Q_SET_DEBITORFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object Q_SET_DEBITORLOGIN: TStringField
      FieldName = 'LOGIN'
    end
    object Q_SET_DEBITORNICK: TStringField
      FieldName = 'NICK'
    end
    object Q_SET_DEBITORID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object Q_SET_DEBITORBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object Q_SET_DEBITORID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
    end
  end
  object Q_SET_DEBITOR_DS: TOraDataSource
    DataSet = Q_SET_DEBITOR
    Left = 520
    Top = 360
  end
  object Q_EM_PR: TOraQuery
    SQL.Strings = (
      'begin'
      '  admins.get_role_user(:ROLE_, :v_office, :CURSOR_);'
      'end;')
    FetchAll = True
    Left = 608
    Top = 360
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ROLE_'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'v_office'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Q_EM_PRID_EMPLOYEES: TIntegerField
      FieldName = 'ID_EMPLOYEES'
      Required = True
    end
    object Q_EM_PRID_ROLE_GROUPS: TIntegerField
      FieldName = 'ID_ROLE_GROUPS'
      Required = True
    end
    object Q_EM_PRNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 255
    end
    object Q_EM_PRID_DEP: TIntegerField
      FieldName = 'ID_DEP'
    end
    object Q_EM_PRDEP_NAME: TStringField
      FieldName = 'DEP_NAME'
      Required = True
      Size = 100
    end
  end
  object Q_EM_PR_DS: TOraDataSource
    DataSet = Q_EM_PR
    Left = 648
    Top = 360
  end
  object Q_GR_PR: TOraQuery
    SQL.Strings = (
      'begin'
      '  admins.get_role_programs(:ROLE_, :v_office, :CURSOR_);'
      'end;')
    FetchAll = True
    Left = 608
    Top = 328
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ROLE_'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'v_office'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object Q_GR_PRID_PROGRAMS: TIntegerField
      FieldName = 'ID_PROGRAMS'
      Required = True
    end
    object Q_GR_PRID_ROLE_GROUPS: TIntegerField
      FieldName = 'ID_ROLE_GROUPS'
      Required = True
    end
    object Q_GR_PRC_START: TIntegerField
      FieldName = 'C_START'
    end
    object Q_GR_PRC_EDIT: TIntegerField
      FieldName = 'C_EDIT'
    end
    object Q_GR_PRC_DEL: TIntegerField
      FieldName = 'C_DEL'
    end
    object Q_GR_PRC_PRINT: TIntegerField
      FieldName = 'C_PRINT'
    end
    object Q_GR_PRC_ADDIT: TIntegerField
      FieldName = 'C_ADDIT'
    end
    object Q_GR_PRNAME: TStringField
      FieldName = 'NAME'
      Required = True
      Size = 255
    end
  end
  object Q_GR_PR_DS: TOraDataSource
    DataSet = Q_GR_PR
    Left = 648
    Top = 328
  end
  object Ora_SQL: TOraSQL
    SQL.Strings = (
      'SELECT OLMER.PARAMS_SET_ID.nextval from DUAL')
    Left = 608
    Top = 296
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
      0)
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
          ItemName = 'cxBarEditItem6'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 210
          Visible = True
          ItemName = 'imgoffice'
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
      LargeImageIndex = 6
      AutoGrayScale = False
    end
    object cxBarEditItem1: TcxBarEditItem
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
    object cxBarEditItem2: TcxBarEditItem
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
    object cxBarEditItem5: TcxBarEditItem
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
    end
    object dxBarEdit1: TdxBarEdit
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
    end
    object cxBarEditItem6: TcxBarEditItem
      Caption = #1054#1092#1080#1089':'
      Category = 0
      Hint = #1054#1092#1080#1089':  '
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxLabelProperties'
    end
    object imgoffice: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.Items = <>
    end
    object dxBarButton6: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
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
      ShortCut = 115
      OnExecute = aDeleteExecute
    end
    object aExit: TAction
      Category = 'Main'
      Caption = #1047#1072#1082#1088#1099#1090#1100
      ShortCut = 16499
      OnExecute = aExitExecute
    end
    object ctrl_a: TAction
      Category = 'Main'
      Caption = 'ctrl_a'
      OnExecute = Action1Execute
    end
  end
  object Q_IDD: TOraQuery
    Left = 656
    Top = 240
  end
  object cds_rights: TOraQuery
    SQL.Strings = (
      'SELECT * from user_rights')
    FetchAll = True
    AfterOpen = Q_EMPLAfterRefresh
    AfterScroll = Q_EMPLAfterScroll
    AfterRefresh = Q_EMPLAfterRefresh
    Left = 296
    Top = 272
    object cds_rightsUSER_RIGHTS_ID: TIntegerField
      FieldName = 'USER_RIGHTS_ID'
    end
    object cds_rightsRIGHT_NAME: TStringField
      FieldName = 'RIGHT_NAME'
      Size = 50
    end
    object cds_rightsIS_ACTIVE: TIntegerField
      FieldName = 'IS_ACTIVE'
    end
  end
  object ds_rights: TOraDataSource
    DataSet = cds_rights
    Left = 328
    Top = 272
  end
end
