object frmStore: TfrmStore
  Left = 0
  Top = 0
  Caption = #1057#1082#1083#1072#1076' '#1080' '#1085#1072#1082#1083#1072#1076#1085#1099#1077
  ClientHeight = 634
  ClientWidth = 986
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object StatusBar: TStatusBar
    Left = 0
    Top = 613
    Width = 986
    Height = 21
    Panels = <
      item
        Text = ' dfgdfg'
        Width = 300
      end
      item
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Text = ' dfgdfgdfg'
        Width = 50
      end>
  end
  object Panel3: TPanel
    Left = 0
    Top = 85
    Width = 986
    Height = 42
    Align = alTop
    Ctl3D = False
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 1
    object DocInfo_Panel: TPanel
      Left = 1
      Top = 1
      Width = 984
      Height = 40
      Align = alClient
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        984
        40)
      object btn_ucenka: TcxButton
        Left = 11
        Top = 6
        Width = 201
        Height = 29
        Cursor = crHandPoint
        Action = aLoad
        Anchors = [akLeft]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Colors.Default = clBtnFace
        Colors.Normal = clBtnFace
        Colors.Hot = clSkyBlue
        Colors.Pressed = clSkyBlue
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000120B0000120B00000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00F8F8F800FCFBFA07FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FAFAFA19B2B2AC9D89AF70A8FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FCFCFC00C8C8C697338F3CFF079A27FEACAEA18EB6B4A971CCCAC241F6F5
          F20FFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
          FD00D4D5D46A3F904EF704A62AFF059A27FF0E9925FF0F9B25FF049926FF3796
          3AE6A6C5967BFFFEFE04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DBDB
          DA5D528B54FF03AB2CFF059E29FF059E29FF04A029FF059F2AFF0C9F2BFF07A0
          2AFF00A52CFF73B66BB4FDFDFB06FFFFFF00FFFFFF00FFFFFF00FFFFFF00DBD8
          D13F51B050D405A32CFF00A52EFF05A42CFF14A738F5A8D2A672DDE4CE3BD7E3
          CA42A2C7977B279535F0AEC89878FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FBFDFB07D0E0C54886BB77A01EA93CF40DA32DFFEFF1E61FFFFFFF00FFFF
          FF00FFFFFF00E6E2DC258AB18298F7F8F111FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00EBF4E81EB2CE9A79D5E0C841FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00F8F7F50BFCFAF60AFFFFFF00FFFFFF00FFFFFF00FDFD
          FD02FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ECEBEA22EDEEE91BFFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0F0
          F011CED6C347FEFFFE02FFFFFF00FFFFFF00FFFFFF00DADBDA50599B4DEF86AD
          7A99D7D6C83FFEFEFD04FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFE
          FE0190A28C9778C67BB4EAE9E321FFFFFF00FFFFFF06F1F0F0325C985FF90CCA
          41FF19B239FE5CA75CC8B6BEA16CF2F2E81AFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00EEEEED1A3C9E4BE126B540FB679C63B56D9E74C8639B60F426B043FE14BB
          3DFF14BA3DFF0FC240FF0FBC3EFFB2D2A077FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00E3E0DB2759B259CF13CB44FF11CD45FF13C943FF15C442FF16C0
          3FFF17BD3EFF11BE3FFF75CC80AAFCFDFB07FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FCFBF908B4DFB0677FC979AD53C661D752B556E234AE
          41FF13C342FF73C26ABFFCFBF80AFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFDFB08F7F7F6166292
          67D154C858DEF6F5EC16FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3DA
          C841E4EED934FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = True
        Spacing = 6
      end
      object btnPrintAll: TcxButton
        Left = 213
        Top = 6
        Width = 150
        Height = 29
        Cursor = crHandPoint
        Action = aPrintAll
        Anchors = [akLeft]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Colors.Default = clBtnFace
        Colors.Normal = clBtnFace
        Colors.Hot = clSkyBlue
        Colors.Pressed = clSkyBlue
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000004DC4EDF54BC1ECE850C3EDE850C3EDE850C3EDE850C3EDE850C3
          EDE850C3EDE850C3EDE84DC4EFF6000000000000000000000000000000000000
          0000000000004DC3EDF69CF4F6FF93D0D8FF92CFD6FF90CED5FF90CED5FF8FCE
          D5FF8FCFD6FFA5F6F6FF4DC4EDF8000000000000000000000000000000000000
          0000000000004DC3EDF688F4F6FF85D1D8FF84CFD7FF83CFD6FF82CFD6FF82CF
          D5FF82CFD6FF90F6F6FF4DC4EDF80000000000000000000000005F56521D9F93
          8FF2A09490FC4EC2EBFA77F1F6FF79CFD8FF78CED6FF76CCD5FF76CCD5FF76CC
          D5FF75CCD5FF7FF5F6FF4DC2EBFB9F9490FC9F938FF26258541D877B76CFC4B6
          B2FF827773FF457387FF64C2CFFF68C5CFFF68C5CFFF68C5CFFF68C5CFFF68C5
          CFFF68C5CFFF68C5CFFF42778EFF776D67FFC4B6B2FF887D77D1978984EAE0D5
          D1FFBCB3AFFF998F8BFF998F8BFF998F8BFF998F8BFF998F8BFF998F8BFF998F
          8BFF998F8BFF998F8BFF998F8BFFB4A9A6FFE0D5D1FF988A85ED998D88EAEAE5
          E2FFECE7E5FFECE7E5FFECE7E5FFECE7E5FFECE7E5FFECE7E5FFECE7E5FFECE7
          E5FFECE7E5FFECE7E5FFECE7E5FFECE7E5FFEAE5E2FF9A8E89ED9C908BEAF4F1
          F0FFF5F3F2FFC8C5C4FFBAB7B7FFB9B5B5FFB7B5B4FFB6B3B3FFB5B2B2FFB4B1
          B0FFB3B0AFFFB2AFAFFFC0BCBCFFF4F3F2FFF4F2F1FF9D918DED9F938EEAF6F6
          F6FFD7D5D5FF6E6866FF53504FFF53504EFF534F4EFF524F4EFF524F4EFF524F
          4EFF524F4DFF524E4DFF65605FFFCECCCCFFF6F6F6FFA09490EDA19591EAF6F6
          F4FFD0CECCFF5F5A59FF414141FF414141FF414141FF414141FF414141FF4141
          41FF414141FF414141FF595554FFC4C2C2FFF6F6F5FFA29692EDA19591E9D7CF
          CEFFBCB6B5FF767373FF525252FF414141FF414141FF414141FF414141FF4141
          41FF414141FF414141FF595655FFA7A2ABFF948DCFFFA29692ECA09490F9C6B6
          B2FFB6AAA7FF9E9A9AFFA9A9A9FF9D9D9DFF878787FF777777FF6C6C6CFF6363
          63FF5E5E5EFF5C5C5CFF696665FFA1A294FF86C180FFA09490FA837D7931A094
          90F9A09591FB999594FFAEAAAAFFA9A7A7FFA5A3A2FFA19E9EFF9D9A99FF9895
          94FF939190FF8F8D8BFF807E7DFFA09490FBA09490F987807E33000000000000
          0000595757024FC3EBFA7FB5BCFF7FB5BBFF7EB5BBFF7DB3B9FF7BB2B8FF79B1
          B7FF78AFB5FF73AAB5FF4FC3EBF9575454020000000000000000000000000000
          0000000000004DC4EDF88AF6F6FF8AF6F6FF8AF6F6FF8AF6F6FF8AF6F6FF8AF6
          F6FF8AF6F6FF80F2F6FF4DC4EDF6000000000000000000000000000000000000
          0000000000000D9EE0814FC5EFEF4FC5EFEF4FC5EFEF4FC5EFEF4FC5EFEF4FC5
          EFEF4FC5EFEF49C2ECEF0992D15C000000000000000000000000}
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = True
        Spacing = 6
      end
      object btnPrint: TcxButton
        Left = 364
        Top = 6
        Width = 183
        Height = 29
        Cursor = crHandPoint
        Action = aPrint
        Anchors = [akLeft]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Colors.Default = clBtnFace
        Colors.Normal = clBtnFace
        Colors.Hot = clSkyBlue
        Colors.Pressed = clSkyBlue
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000004DC4EDF54BC1ECE850C3EDE850C3EDE850C3EDE850C3EDE850C3
          EDE850C3EDE850C3EDE84DC4EFF6000000000000000000000000000000000000
          0000000000004DC3EDF69CF4F6FF93D0D8FF92CFD6FF90CED5FF90CED5FF8FCE
          D5FF8FCFD6FFA5F6F6FF4DC4EDF8000000000000000000000000000000000000
          0000000000004DC3EDF688F4F6FF85D1D8FF84CFD7FF83CFD6FF82CFD6FF82CF
          D5FF82CFD6FF90F6F6FF4DC4EDF80000000000000000000000005F56521D9F93
          8FF2A09490FC4EC2EBFA77F1F6FF79CFD8FF78CED6FF76CCD5FF76CCD5FF76CC
          D5FF75CCD5FF7FF5F6FF4DC2EBFB9F9490FC9F938FF26258541D877B76CFC4B6
          B2FF827773FF457387FF64C2CFFF68C5CFFF68C5CFFF68C5CFFF68C5CFFF68C5
          CFFF68C5CFFF68C5CFFF42778EFF776D67FFC4B6B2FF887D77D1978984EAE0D5
          D1FFBCB3AFFF998F8BFF998F8BFF998F8BFF998F8BFF998F8BFF998F8BFF998F
          8BFF998F8BFF998F8BFF998F8BFFB4A9A6FFE0D5D1FF988A85ED998D88EAEAE5
          E2FFECE7E5FFECE7E5FFECE7E5FFECE7E5FFECE7E5FFECE7E5FFECE7E5FFECE7
          E5FFECE7E5FFECE7E5FFECE7E5FFECE7E5FFEAE5E2FF9A8E89ED9C908BEAF4F1
          F0FFF5F3F2FFC8C5C4FFBAB7B7FFB9B5B5FFB7B5B4FFB6B3B3FFB5B2B2FFB4B1
          B0FFB3B0AFFFB2AFAFFFC0BCBCFFF4F3F2FFF4F2F1FF9D918DED9F938EEAF6F6
          F6FFD7D5D5FF6E6866FF53504FFF53504EFF534F4EFF524F4EFF524F4EFF524F
          4EFF524F4DFF524E4DFF65605FFFCECCCCFFF6F6F6FFA09490EDA19591EAF6F6
          F4FFD0CECCFF5F5A59FF414141FF414141FF414141FF414141FF414141FF4141
          41FF414141FF414141FF595554FFC4C2C2FFF6F6F5FFA29692EDA19591E9D7CF
          CEFFBCB6B5FF767373FF525252FF414141FF414141FF414141FF414141FF4141
          41FF414141FF414141FF595655FFA7A2ABFF948DCFFFA29692ECA09490F9C6B6
          B2FFB6AAA7FF9E9A9AFFA9A9A9FF9D9D9DFF878787FF777777FF6C6C6CFF6363
          63FF5E5E5EFF5C5C5CFF696665FFA1A294FF86C180FFA09490FA837D7931A094
          90F9A09591FB999594FFAEAAAAFFA9A7A7FFA5A3A2FFA19E9EFF9D9A99FF9895
          94FF939190FF8F8D8BFF807E7DFFA09490FBA09490F987807E33000000000000
          0000595757024FC3EBFA7FB5BCFF7FB5BBFF7EB5BBFF7DB3B9FF7BB2B8FF79B1
          B7FF78AFB5FF73AAB5FF4FC3EBF9575454020000000000000000000000000000
          0000000000004DC4EDF88AF6F6FF8AF6F6FF8AF6F6FF8AF6F6FF8AF6F6FF8AF6
          F6FF8AF6F6FF80F2F6FF4DC4EDF6000000000000000000000000000000000000
          0000000000000D9EE0814FC5EFEF4FC5EFEF4FC5EFEF4FC5EFEF4FC5EFEF4FC5
          EFEF4FC5EFEF49C2ECEF0992D15C000000000000000000000000}
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = True
        Spacing = 6
      end
      object btnMinus: TcxButton
        Left = 548
        Top = 6
        Width = 150
        Height = 29
        Cursor = crHandPoint
        Action = aMinus
        Anchors = [akLeft]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Colors.Default = clBtnFace
        Colors.Normal = clBtnFace
        Colors.Hot = clSkyBlue
        Colors.Pressed = clSkyBlue
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003939397E555555CC3C3C3C882020200300000000000000000000
          0000373737564C4C4CC24040409B2A2A2A0E0000000000000000000000000000
          00003232324D8B8B8BFFD7D7D7FFAFAFAFFFE6E6E6D1FFFFFFB8FFFFFFB8F6F6
          F6C0D8D8D8FEEFEFEFFFF2F2F2FFDCDCDCDFFFFFFFB8FFFFFFB8000000000000
          000034343462DDDDDDFFF3F3F3FF989898FFE2E2E2D74343CBF74646CAF74747
          C7F94A4AC7FF4949C4FF4040BAFF3D3DB8FC3838B6F73838B6F7000000000000
          00002727270D545454CA939393FF4F4F4FD3F9F9F9BD5E5ED3FF6E6EE4FF7676
          EFFF7676EFFF6D6DEBFF5555DBFF5555DBFF4343CDFF4343CEFF000000000000
          0000202221086A6B6AF5717271FF686868F3D6D6D6FB4545CAFF4949CEFF4B4B
          D0FF4B4BD0FF4748CBFF4141C2FF4040C3FC3A3ABDF83939B8F8000000000000
          00005454546C717271FF717271FF6E6E6EFFD6D6D6FFD6D6D6FFD5D5D5FED5D5
          D5FED4D4D4FED3D3D3FED4D4D4FCDEDEDEDEFFFFFFB8FFFFFFB8000000000000
          00005E5F5EB6717271FF717271FF655539136555391365553913655539136455
          391063543910635439105F513803000000000000000000000000000000000000
          0000676867E6717271FFDEC494FF998257FF947E55FF947E55FF947E55FF947E
          55FF947E55FF947E55FF896B359E000000000000000000000000000000000000
          0000707170FD787774FFDAC191FFA58E63FFE6D3A8FFD5BF95FFC2AC82FFB9A3
          7BFFB8A37BFFBDA77FFFA18552F970582C1C0000000000000000000000004E4E
          4E39717271FF989388FFD6BC8DFFAD956AFFE9DFB3FFE9DDB3FFE5D0A7FFD0BB
          92FFBEA880FFB7A27AFFBBA274FF896B358A0000000000000000000000005A5B
          5A8F717271FFC5B494FFBDA578FFBCA374FFDEC495FFE6D6AAFFE9E0B6FFE8DC
          B3FFE3CDA4FFCCB78EFFC4AE85FF997C48EF614C250C00000000000000007172
          71FF717271FFDEC494FFB29A6EFFC0A778FFCDB382FFD1B787FFE1C899FFE6D9
          ACFFE9E1B6FFE8DBB2FFE1CBA2FFC0A777FF886B356B000000002A2A2A086F70
          6FFC717271FFDEC494FF947E55FF947E55FF947E55FF947E55FF947E55FF947E
          55FF947E55FF947E55FF947E55FF947E55FF896B35C800000000565656E07172
          71FF535353DE594A2E275D4924265D4924265D4924265D4924235D4924235D49
          24235D4924235D4924235D4924235D4924235D49241700000000717271FF4C4C
          4CC83B3B3B2C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = True
        Spacing = 6
      end
    end
  end
  object pc_sales: TcxPageControl
    Left = 0
    Top = 127
    Width = 986
    Height = 445
    ActivePage = tch_nakls
    Align = alClient
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    TabHeight = 25
    TabOrder = 2
    OnChange = pc_salesChange
    ClientRectBottom = 441
    ClientRectLeft = 4
    ClientRectRight = 982
    ClientRectTop = 31
    object tch_main: TcxTabSheet
      Caption = ' '#1058#1077#1082#1091#1097#1080#1081' '#1089#1082#1083#1072#1076' (Ctrl+1) '
      ImageIndex = 0
      object gr_main: TDBGridEh
        Left = 0
        Top = 0
        Width = 978
        Height = 410
        Align = alClient
        AllowedOperations = []
        DataGrouping.GroupLevels = <>
        DataSource = STORE_VIEW_DS
        EvenRowColor = 16382457
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        FooterColor = clWhite
        FooterFont.Charset = DEFAULT_CHARSET
        FooterFont.Color = clWindowText
        FooterFont.Height = -12
        FooterFont.Name = 'Arial'
        FooterFont.Pitch = fpFixed
        FooterFont.Style = [fsBold]
        FooterRowCount = 1
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove]
        ParentFont = False
        ParentShowHint = False
        PopupMenu = PopupMenu1
        ReadOnly = True
        RowDetailPanel.Color = clBtnFace
        ShowHint = True
        SortLocal = True
        STFilter.InstantApply = True
        STFilter.Local = True
        STFilter.Visible = True
        SumList.Active = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Arial'
        TitleFont.Pitch = fpFixed
        TitleFont.Style = []
        OnDblClick = gr_mainDblClick
        OnDrawColumnCell = gr_mainDrawColumnCell
        OnKeyDown = gr_mainKeyDown
        OnTitleClick = gr_mainTitleClick
        Columns = <
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'BRIEF'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1054#1092#1080#1089
            Width = 60
          end
          item
            Alignment = taCenter
            Checkboxes = True
            EditButtons = <>
            FieldName = 'IS_PHOTO'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1060#1086#1090#1086
            Width = 40
          end
          item
            Alignment = taCenter
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'STORE_TYPE_NAME'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1082#1083#1072#1076
            Title.EndEllipsis = True
            Width = 70
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'CODE'
            Footers = <>
            Title.Caption = #1050#1086#1076
            Title.EndEllipsis = True
            Width = 100
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'H_CODE'
            Footers = <>
            Title.Caption = #1040#1088#1090#1080#1082#1091#1083
            Title.EndEllipsis = True
            Width = 100
          end
          item
            AutoDropDown = True
            DropDownBox.ListSource = DM.DS_TYPES
            DropDownBox.SortLocal = True
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'F_TYPE'
            Footers = <>
            Title.Caption = #1058#1080#1087
            Title.EndEllipsis = True
            Width = 150
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'F_SUB_TYPE'
            Footers = <>
            Title.Caption = #1055#1086#1076#1090#1080#1087
            Title.EndEllipsis = True
            Width = 150
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'COMPILED_NAME_OTDEL'
            Footer.Alignment = taCenter
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Title.EndEllipsis = True
            Width = 200
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'SPESIFICATION'
            Footers = <>
            Title.Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
            Title.EndEllipsis = True
            Width = 100
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'COUNTRY'
            Footers = <>
            Title.Caption = #1057#1090#1088#1072#1085#1072
            Title.EndEllipsis = True
            Width = 100
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'COLOUR'
            Footers = <>
            Title.Caption = #1062#1074#1077#1090
            Title.EndEllipsis = True
            Width = 100
          end
          item
            Alignment = taCenter
            Color = clMoneyGreen
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'QUANTITY'
            Footer.Alignment = taCenter
            Footer.Color = clMoneyGreen
            Footer.EndEllipsis = True
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1083'-'#1074#1086
            Title.Color = clMoneyGreen
            Title.EndEllipsis = True
            Width = 60
          end
          item
            Alignment = taCenter
            Color = clMoneyGreen
            EditButtons = <>
            FieldName = 'RESERV'
            Footer.Alignment = taCenter
            Footer.Color = clMoneyGreen
            Footer.EndEllipsis = True
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1056#1077#1079#1077#1088#1074
            Title.Color = clMoneyGreen
            Title.EndEllipsis = True
            Width = 60
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'PRICE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1062#1077#1085#1072
            Title.EndEllipsis = True
            Width = 65
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'QUANTITY_PRICE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072' '#1089#1091#1084#1084#1091
            Title.EndEllipsis = True
            Width = 70
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'N_ID'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'ID_DEPARTMENTS'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'BUT_NAME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'NBUTTON'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'HOL_SUB_TYPE'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'FST_ID'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'FT_ID'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'HOL_TYPE'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'STORE_TYPE'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'OUR_CODE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            Footers = <>
            Title.Caption = #1042#1085#1091#1090#1088'. '#1082#1086#1076
            Title.EndEllipsis = True
            Width = 100
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object tch_nakls: TcxTabSheet
      Caption = ' '#1053#1072#1082#1083#1072#1076#1085#1099#1077' (Ctrl+2) '
      ImageIndex = 1
      object grid_allnakl: TcxGrid
        Left = 0
        Top = 0
        Width = 978
        Height = 410
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        object grid_allnakl_v: TcxGridDBTableView
          PopupMenu = PopupMenu1
          OnDblClick = grid_allnakl_vDblClick
          NavigatorButtons.ConfirmDelete = False
          FilterBox.Position = fpTop
          DataController.DataSource = DOC_DS
          DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription]
          DataController.Filter.AutoDataSetFilter = True
          DataController.Filter.TranslateLike = True
          DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
              Kind = skSum
            end
            item
              Format = '0'
              Kind = skSum
            end
            item
              Format = '0'
              Kind = skCount
              Column = galn_DOC_NUMBER
            end
            item
              Format = '0'
              Kind = skSum
              Column = galn_QUANTITY_ALL
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = galn_PRICE_ALL
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = grid_allnakl_vSUM_PRICE_DIFFERENCE
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1092#1080#1083#1100#1090#1088#1086#1074
          FilterRow.Visible = True
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnMoving = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.HeaderEndEllipsis = True
          object grid_allnakl_vBRIEF: TcxGridDBColumn
            Caption = #1054#1092#1080#1089
            DataBinding.FieldName = 'BRIEF'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 60
            Options.Editing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 60
          end
          object galn_DOC_NUMBER: TcxGridDBColumn
            Caption = #8470' '#1076#1086#1082'-'#1090#1072
            DataBinding.FieldName = 'DOC_NUMBER'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 80
            Options.Editing = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 80
          end
          object galn_DOC_DATE: TcxGridDBColumn
            Caption = #1044#1072#1090#1072
            DataBinding.FieldName = 'DOC_DATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 90
            Options.Editing = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 90
          end
          object galn_DOC_DATE_REAL: TcxGridDBColumn
            Caption = #1056#1077#1072#1083#1100#1085#1086#1077' '#1074#1088#1077#1084#1103
            DataBinding.FieldName = 'DOC_DATE_REAL'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 120
            Options.Editing = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 120
          end
          object galn_NICK: TcxGridDBColumn
            Caption = #1050#1086#1076
            DataBinding.FieldName = 'NICK'
            Options.Editing = False
            Width = 70
          end
          object galn_FIO: TcxGridDBColumn
            Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            DataBinding.FieldName = 'FIO'
            Options.Editing = False
            Width = 120
          end
          object galn_QUANTITY_ALL: TcxGridDBColumn
            Caption = #1055#1086#1079#1080#1094#1080#1081
            DataBinding.FieldName = 'QUANTITY_ALL'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 70
            Options.Editing = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 70
          end
          object galn_PRICE_ALL: TcxGridDBColumn
            Caption = #1053#1072' '#1089#1091#1084#1084#1091
            DataBinding.FieldName = 'PRICE_ALL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
            Properties.ReadOnly = True
            Properties.UseThousandSeparator = True
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
            Options.Editing = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 100
          end
          object grid_allnakl_vSUM_PRICE_DIFFERENCE: TcxGridDBColumn
            Caption = #1057#1082#1080#1076#1082#1072
            DataBinding.FieldName = 'SUM_PRICE_DIFFERENCE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
            Properties.ReadOnly = True
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 70
            Options.Editing = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 70
          end
          object grid_allnakl_vOFFICE: TcxGridDBColumn
            Caption = #1054#1092#1080#1089' '#1074#1099#1075#1088'.'
            DataBinding.FieldName = 'OFFICE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 75
            Options.HorzSizing = False
            Options.Moving = False
            Width = 75
          end
          object galn_COMMENTS: TcxGridDBColumn
            Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
            DataBinding.FieldName = 'COMMENTS'
            Options.Editing = False
            Options.Grouping = False
            Options.Moving = False
            Width = 200
          end
          object grid_allnakl_vID_DOC: TcxGridDBColumn
            DataBinding.FieldName = 'ID_DOC'
            Visible = False
          end
          object grid_allnakl_vID_DOC_TYPE: TcxGridDBColumn
            DataBinding.FieldName = 'ID_DOC_TYPE'
            Visible = False
          end
          object grid_allnakl_vID_DEPARTMENTS: TcxGridDBColumn
            DataBinding.FieldName = 'ID_DEPARTMENTS'
            Visible = False
          end
          object grid_allnakl_vDEPARTMENT_NAME: TcxGridDBColumn
            DataBinding.FieldName = 'DEPARTMENT_NAME'
            Visible = False
          end
          object grid_allnakl_vOPERATOR_NAME: TcxGridDBColumn
            Caption = #1054#1087#1077#1088#1072#1090#1086#1088
            DataBinding.FieldName = 'OPERATOR_NAME'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Width = 120
          end
          object grid_allnakl_vID_CLIENT: TcxGridDBColumn
            DataBinding.FieldName = 'ID_CLIENT'
            Visible = False
          end
          object grid_allnakl_vSUM_PRICE_OLD: TcxGridDBColumn
            DataBinding.FieldName = 'SUM_PRICE_OLD'
            Visible = False
          end
          object grid_allnakl_vSUM_PRICE_NEW: TcxGridDBColumn
            DataBinding.FieldName = 'SUM_PRICE_NEW'
            Visible = False
          end
          object grid_allnakl_vINV_ID: TcxGridDBColumn
            DataBinding.FieldName = 'INV_ID'
            Visible = False
          end
          object grid_allnakl_vORDER_ID: TcxGridDBColumn
            Caption = #8470' '#1079#1072#1082#1072#1079#1072
            DataBinding.FieldName = 'ORDER_ID'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 80
            Options.HorzSizing = False
            Width = 80
          end
          object grid_allnakl_vORDER_DATE: TcxGridDBColumn
            Caption = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
            DataBinding.FieldName = 'ORDER_DATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Properties.ShowTime = False
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
            Options.HorzSizing = False
            Width = 100
          end
          object grid_allnakl_vSUPPLIER_DATE: TcxGridDBColumn
            DataBinding.FieldName = 'SUPPLIER_DATE'
            Visible = False
          end
          object grid_allnakl_vSUPPLIER_NUMBER: TcxGridDBColumn
            DataBinding.FieldName = 'SUPPLIER_NUMBER'
            Visible = False
          end
          object grid_allnakl_vSUPLIER: TcxGridDBColumn
            DataBinding.FieldName = 'SUPLIER'
            Visible = False
          end
          object grid_allnakl_vID_OFFICE: TcxGridDBColumn
            DataBinding.FieldName = 'ID_OFFICE'
            Visible = False
          end
        end
        object grid_allnakl_l: TcxGridLevel
          GridView = grid_allnakl_v
        end
      end
    end
    object tch_reserv: TcxTabSheet
      Caption = ' '#1041#1088#1086#1085#1080' (Ctrl+3) '
      ImageIndex = 2
      object grid_allreserv: TcxGrid
        Left = 0
        Top = 61
        Width = 978
        Height = 349
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        object grid_allreserv_v: TcxGridDBTableView
          PopupMenu = PopupMenu1
          OnDblClick = grid_allreserv_vDblClick
          NavigatorButtons.ConfirmDelete = False
          FilterBox.Position = fpTop
          OnCustomDrawCell = grid_allreserv_vCustomDrawCell
          DataController.DataSource = DM.ds_reserv
          DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription]
          DataController.Filter.AutoDataSetFilter = True
          DataController.Filter.TranslateLike = True
          DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
              Kind = skCount
              Column = grid_allreserv_vID_ORDERS_CLIENTS
            end
            item
              Format = '0'
              Kind = skSum
              Column = grid_allreserv_vKOL
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = grid_allreserv_vPRICE_ALL
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.InfoText = #1055#1086#1083#1077' '#1076#1083#1103' '#1091#1089#1090#1072#1085#1086#1074#1082#1080' '#1092#1080#1083#1100#1090#1088#1086#1074
          FilterRow.Visible = True
          OptionsBehavior.CellHints = True
          OptionsBehavior.FocusCellOnCycle = True
          OptionsCustomize.ColumnMoving = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.HeaderEndEllipsis = True
          object grid_allreserv_vBRIEF: TcxGridDBColumn
            Caption = #1054#1092#1080#1089
            DataBinding.FieldName = 'BRIEF'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 60
            Options.Editing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 60
          end
          object grid_allreserv_vID_ORDERS_CLIENTS: TcxGridDBColumn
            Caption = #8470
            DataBinding.FieldName = 'ID_ORDERS_CLIENTS'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 70
            Options.Editing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 70
          end
          object grid_allreserv_vNN: TcxGridDBColumn
            Caption = #8470
            DataBinding.FieldName = 'NN'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            Visible = False
            HeaderAlignmentHorz = taCenter
            MinWidth = 70
            Options.Editing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 70
          end
          object grid_allreserv_vNICK: TcxGridDBColumn
            Caption = #1050#1086#1076
            DataBinding.FieldName = 'NICK'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 80
            Options.Editing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 80
          end
          object grid_allreserv_vFIO: TcxGridDBColumn
            Caption = #1060#1048#1054
            DataBinding.FieldName = 'FIO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            Options.Editing = False
            Options.Moving = False
          end
          object grid_allreserv_vON_DATE: TcxGridDBColumn
            Caption = #1053#1072' '#1076#1072#1090#1091
            DataBinding.FieldName = 'ON_DATE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
            Options.Editing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 100
          end
          object grid_allreserv_vD_DATE: TcxGridDBColumn
            Caption = #1055#1086#1089#1083#1077#1076#1085#1077#1077' '#1080#1079#1084#1077#1085#1077#1085#1080#1077
            DataBinding.FieldName = 'D_DATE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 140
            Options.Editing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 140
          end
          object grid_allreserv_vN_TYPE_NAME: TcxGridDBColumn
            Caption = #1058#1080#1087' '#1079#1072#1082#1072#1079#1072
            DataBinding.FieldName = 'N_TYPE_NAME'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
            Options.Editing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 100
          end
          object grid_allreserv_vSTATUS_NAME: TcxGridDBColumn
            Caption = #1057#1090#1072#1090#1091#1089
            DataBinding.FieldName = 'STATUS_NAME'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
            Options.Editing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 100
          end
          object grid_allreserv_vKOL: TcxGridDBColumn
            Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            DataBinding.FieldName = 'KOL'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 80
            Options.Editing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 80
          end
          object grid_allreserv_vPRICE_ALL: TcxGridDBColumn
            Caption = #1053#1072' '#1089#1091#1084#1084#1091
            DataBinding.FieldName = 'PRICE_ALL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
            Properties.ReadOnly = True
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
            Options.Editing = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 100
          end
          object grid_allreserv_vID_ORDERS: TcxGridDBColumn
            DataBinding.FieldName = 'ID_ORDERS'
            Visible = False
          end
          object grid_allreserv_vID_CLIENTS: TcxGridDBColumn
            DataBinding.FieldName = 'ID_CLIENTS'
            Visible = False
          end
          object grid_allreserv_vSTATUS: TcxGridDBColumn
            DataBinding.FieldName = 'STATUS'
            Visible = False
          end
          object grid_allreserv_vN_TYPE: TcxGridDBColumn
            DataBinding.FieldName = 'N_TYPE'
            Visible = False
          end
          object grid_allreserv_vID_ORDERS_CLIENTS_: TcxGridDBColumn
            DataBinding.FieldName = 'ID_ORDERS_CLIENTS_'
            Visible = False
          end
          object grid_allreserv_vID_OFFICE: TcxGridDBColumn
            DataBinding.FieldName = 'ID_OFFICE'
            Visible = False
          end
          object grid_allreserv_vID_USER: TcxGridDBColumn
            DataBinding.FieldName = 'ID_USER'
            Visible = False
          end
          object grid_allreserv_vINS_FIO: TcxGridDBColumn
            Caption = #1054#1087#1077#1088#1072#1090#1086#1088
            DataBinding.FieldName = 'INS_FIO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            MinWidth = 80
            Width = 120
          end
          object grid_allreserv_vINFO: TcxGridDBColumn
            Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
            DataBinding.FieldName = 'INFO'
            PropertiesClassName = 'TcxTextEditProperties'
            MinWidth = 100
            Width = 100
          end
        end
        object grid_allreserv_l: TcxGridLevel
          GridView = grid_allreserv_v
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 978
        Height = 61
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          978
          61)
        object Label6: TLabel
          Left = 155
          Top = 10
          Width = 17
          Height = 22
          Anchors = [akLeft]
          Caption = '%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'arial'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btn_edit: TcxButton
          Left = 492
          Top = 7
          Width = 152
          Height = 29
          Cursor = crHandPoint
          Action = aEdit
          Anchors = [akLeft]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Colors.Default = clBtnFace
          Colors.Normal = clBtnFace
          Colors.Hot = clSkyBlue
          Colors.Pressed = clSkyBlue
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            000000000000FFFFFF900CA1C0FF0CA1C0FF009CD6FF009CD6FFFFFFFF900000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000FFFFFF900CA1C0FF0CA1C0FFAFE8F2FE26A0E3FF137BB7FEFFFF
            FF90000000000000000000000000000000000000000000000000878383799B98
            97F09F9C9BF8D5D4D4FC009CD6FFAFE8F2FF67D6E7FF2FA1E3FF1993E9FF137B
            B7FFD2D1D1FC949191F8949191F8939090F88D8A8AF17571717C9D9999EEF7EE
            EBFFF4E8E3FFFAF5F2FF009CD6FFAFE8F2FF3ABFEFFF1FA4EBFF1D97EFFF1993
            E9FF137BB7FFF9F2F0FFF2E2DDFFF2E2DDFFF5EAE6FF8E8B8BF2A3A09FF6F5EA
            E6FFF2E1DBFFF1E0D9FFF8F1EEFF137BB7FF7ED1F9FF1DBAE9FF1A9DE8FF1C97
            EFFF1E93E8FF137BB7FFF8EEEBFFEED8D0FFF2E2DCFF949191FAA4A1A0F6F6EC
            E8FFF3E4DEFFF2E2DCFFF1E1DAFFF9F1EEFF137BB7FF7ED1F9FF1EBAE9FF1A9D
            E8FF2197EDFFA8ACB0FF7F7F7FFFF8EEEBFFF2E2DCFF949292FAA5A2A1F6F7EE
            EAFFF4E6E1FFF3E4DFFFF2E3DDFFF2E1DCFFF9F2EFFF137BB7FF7ED1F9FF23BA
            E8FF93B3C9FFB3B0B0FF5F5EA8FF7F7F7FFFF9F2F0FF959292FAA6A3A2F6F7EF
            ECFFF5E8E4FFF4E7E2FFF4E5E0FFF3E4DEFFF2E2DDFFF9F2EFFF137BB7FF7ED1
            F9FFCBC9CBFFB7B5B8FF5D5BADFF3939ABFF3535BBFFD2D1D1FDA7A3A3F6F8F1
            EEFFF6EBE6FFF5E9E5FFF5E8E3FFF4E6E1FFF3E5DFFFF3E3DEFFF9F2F0FF7F7F
            7FFFD7D4D7FF6664BFFF3535BBFF3030B0FF2F2FB0FF000093FFA7A4A4F6F9F2
            F0FFF7EDE9FFF6EBE7FFF6EAE6FFF5E9E4FFF4E7E2FFF4E6E1FFF3E4DFFFF9F3
            F0FF7F7F7FFF9595EDFF4E4EE2FF3434B8FF3232B7FF000093FFA8A5A4F6F9F3
            F1FFF7EEEBFFF7EDEAFFF6ECE8FFF6EBE7FFF5E9E5FFF5E8E3FFF4E7E2FFF3E5
            E0FFFAF3F1FF010193FF9595EDFF9595EDFF000093FFD3D2D2FDA69997F5EADA
            D6FFEAD9D5FFEAD9D5FFEAD8D4FFE9D8D4FFE9D8D3FFE9D7D3FFE8D7D2FFE8D6
            D2FFE8D6D1FFF5EDEBFF3535BBFF010193FFF5EDEBFF9A8D8BFAB95D49F6C86C
            56FFC86C57FFC96C58FFC96C58FFC86C58FFC86B57FFC76A57FFC56956FFC468
            55FFC26754FFC16553FFE4BBB3FFE3BAB2FFBD604FFFB75B48FCC0634FF8D176
            52FFD27855FFD57958FFD67A5BFFD5795BFFD3775AFFD07458FFCD7055FFC96B
            52FFC2664EFFBD6049FFB85A44FFB2533FFFAF503DFFBD604EFCBB5E4AE6D177
            55FFD17653FFD47A58FFD67B5CFFD77B5EFFD67B5EFFD4795DFFD2765BFFCE72
            58FFCA6D54FFC46850FFBF624CFFBA5C47FFBA5D4BFFBA5D4AEAB254415BBB5E
            4AE6BF634FF5C0634FF5C06450F5C06450F5C06450F5C06450F5C06350F5C063
            50F5BF6350F5BF624FF5BE614FF5BE614EF5BA5D4AE6B556425D}
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = True
          Spacing = 6
        end
        object btn_del: TcxButton
          Left = 350
          Top = 7
          Width = 142
          Height = 29
          Cursor = crHandPoint
          Action = aDel
          Anchors = [akLeft]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Colors.Default = clBtnFace
          Colors.Normal = clBtnFace
          Colors.Hot = clSkyBlue
          Colors.Pressed = clSkyBlue
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
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = True
          Spacing = 6
        end
        object icb_status: TcxImageComboBox
          Left = 650
          Top = 8
          Cursor = crHandPoint
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <
            item
              Description = #1085#1086#1074#1099#1081
              ImageIndex = 0
              Value = 0
            end
            item
              Description = #1089#1086#1073#1088#1072#1085
              Value = 1
            end
            item
              Description = #1086#1087#1083#1072#1095#1077#1085
              Value = 2
            end>
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = True
          Style.ButtonStyle = btsOffice11
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 121
        end
        object btn_set: TcxButton
          Left = 777
          Top = 7
          Width = 86
          Height = 29
          Cursor = crHandPoint
          Action = aSetStatus
          Anchors = [akLeft]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Colors.Default = clBtnFace
          Colors.Normal = clBtnFace
          Colors.Hot = clSkyBlue
          Colors.Pressed = clSkyBlue
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = True
          Spacing = 6
        end
        object btn_savenakl: TcxButton
          Left = 3
          Top = 7
          Width = 150
          Height = 29
          Cursor = crHandPoint
          Action = aMakeNakl
          Anchors = [akLeft]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          Colors.Default = clBtnFace
          Colors.Normal = clBtnFace
          Colors.Hot = clSkyBlue
          Colors.Pressed = clSkyBlue
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            08000000000040020000220B0000220B00000001000000000000212121002121
            290029292900292931003131310039393900424242004A4A4A00525252005A5A
            5A00635A6300636363006B6B6B007B7B7B00848484008C84840084C684008C8C
            8C009C949C009C9C9C00A59C9C00A59CA500A5A5A500ADA5A500F7B5A500FFBD
            A500ADA5AD00ADADAD00B5ADAD00ADB5AD00E7B5AD00FFC6AD00B5ADB500B5B5
            B500BDB5B500DEB5B500E7BDB500F7BDB500FFC6B500FFCEB500BDB5BD00BDBD
            BD00C6BDBD00E7BDBD00E7C6BD00FFCEBD00FFD6BD00C6BDC600C6C6C600CEC6
            C600E7C6C600E7CEC600FFD6C600C6C6CE00CEC6CE00CECECE00D6CECE00EFCE
            CE00EFD6CE00FFDECE00D6CED600D6D6D600DED6D600F7DED600FFDED600FFE7
            D600D6F7D600D6D6DE00D6DEDE00DEDEDE00E7DEDE00EFDEDE00DEE7DE00E7E7
            DE00FFE7DE00FFEFDE00E7E7E700EFE7E700FFEFE700EFEFEF00FFF7EF00F7F7
            F700FFF7F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00535353535353
            53535353535353535353535353535353535353535353535353531B361B135353
            1B3D3E291B53535353535353535353531B305151291B090B0E1B31464C3D2153
            5353535353531B224C54544F221C070004060B0E1B374C4517535353531B4554
            5251524F2121120C07040204060B11165353531637515151514C301B13161B21
            1C130D0905020614535353164F514F452917213D2116141314172121160E0C14
            535353164C3E2216223D454C4C3D30221B161413161B2116535353161C16293D
            453D3D4D51514F4C3D3729211716141353535316293D3D3D3D3D4C51302F3745
            4C4C453D37302916535353163D3D3D3D3D4551291D10211B1B29303D45453D1B
            5353535329453D3D4C4C21294F424F4C25291C171B292921535353535321303D
            301B315151514F4C4C4C453D3717165353535353535353142945371B30454C4C
            4C4C4C4530225353535353535353531B5151452929303D3D3D3D301B22535353
            5353535353535353474A41403F3F3F4746453053535353535353535353535353
            2C4A403B342D26261F3953535353535353535353535353532C4A403B342D261F
            18535353535353535353535353535353334A403B342D261F1853535353535353
            5353535353535353334A403B342D261F25535353535353535353535353535353
            334A403B342D2625255353535353535353535353535353324E4A403B342D2725
            53535353535353535353535353535333504A413B343425255353535353535353
            5353535353532333322C2C24241E255353535353535353535353}
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = True
          Spacing = 6
        end
        object chbFixPrice: TCheckBox
          Left = 235
          Top = 13
          Width = 108
          Height = 17
          Hint = #1045#1089#1083#1080' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1074#1099#1087#1080#1089#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102' '#1089' '#1090#1086#1081' '#1078#1077' '#1094#1077#1085#1086#1081
          Caption = #1089' '#1094#1077#1085#1086#1081' '#1073#1088#1086#1085#1080
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object chbOrderHist: TCheckBox
          Left = 3
          Top = 42
          Width = 264
          Height = 17
          Hint = #1045#1089#1083#1080' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1074#1099#1087#1080#1089#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102' '#1089' '#1090#1086#1081' '#1078#1077' '#1094#1077#1085#1086#1081
          Caption = #1087#1086#1082#1072#1079#1072#1090#1100' '#1080#1089#1087#1086#1083#1085#1077#1085#1085#1099#1077' '#1073#1088#1086#1085#1080
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = chbOrderHistClick
        end
        object EditPercent: TcxSpinEdit
          Left = 174
          Top = 9
          Cursor = crHandPoint
          Anchors = [akLeft]
          AutoSize = False
          ParentFont = False
          Properties.ImmediatePost = True
          Properties.MaxValue = 100.000000000000000000
          Properties.MinValue = -100.000000000000000000
          Properties.ValueType = vtFloat
          Style.BorderStyle = ebsOffice11
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'arial'
          Style.Font.Pitch = fpFixed
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = True
          Style.ButtonStyle = btsOffice11
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Height = 27
          Width = 57
        end
      end
    end
  end
  object Panel_fill: TPanel
    Left = 370
    Top = 264
    Width = 193
    Height = 65
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 4
    Visible = False
    object Label13: TLabel
      Left = 8
      Top = 35
      Width = 111
      Height = 13
      Caption = 'Delete - '#1079#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 48
      Width = 90
      Height = 13
      Caption = 'Enter - '#1087#1088#1080#1084#1077#1085#1080#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object te_search: TcxTextEdit
      Left = 8
      Top = 7
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
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
      OnKeyDown = te_searchKeyDown
      Width = 177
    end
  end
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 572
    Width = 986
    Height = 41
    Align = dalBottom
    BarManager = bm_sales
  end
  object Panel10: TPanel
    Left = 0
    Top = 0
    Width = 986
    Height = 85
    Align = alTop
    Ctl3D = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 0
    object Image1: TImage
      Left = 140
      Top = 56
      Width = 22
      Height = 22
      AutoSize = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000016
        000000160806000000C4B46C3B0000000467414D410000B18F0BFC6105000000
        206348524D00007A26000080840000FA00000080E8000075300000EA6000003A
        98000017709CBA513C0000053849444154484B95950D50CC691CC7532A754D9A
        BCA4EC69D36EF252225A5B7A57F9CB122B57E9948B50EC6E57979B482B577735
        8A562899B8EE50099715B9C2F6A63B8E705EC66968CB16CEE0CC292EBBDFFBED
        9E666ACACDDD77E63BCF3E33CFEFB3BF799EEFF3FCF53E2479998CFDC3915DBE
        A74AF3DA7E949780E6283D908EE2FC2CE5C299EC205A329C3C4CB7F8BFEA3D50
        71B6ECEBB6DA1339A8399E8BF372192A4BA4F86EAF18FBD297222ECCA3F17FFD
        81165ABE3F4DB13F570A69520AB6891221152543B62D1E3969AB204D5C86D48D
        BE90843BC3CBC1A439D0798280CA0CC91F86EFDE2A61CBB64A14853BD2D0D270
        1C6D771B70ADA90277AE55A1FC60360A33BFC0278C0756CC774154B02D9C4CF5
        E1E9A0DF3C9B6DC2A7722D7C6879D91AFBEECB14B7A99FB500E87DEFBFFEB1BA
        0B3DB72B519C11077F173BB88D1E0E6FB631F8A3F5E1C319B59BCACDC9063A50
        7FF9704C58B450F167CB714043A077ED347612503BAA80B7F7815757D0D37214
        31023B704C09EC64044FAE31029DADCF4CB5B170218CD13FB47EF2B6359C41E0
        B6DE0E05C108F80775FDFC3AF0B411F8BD19E8BC08A8AAA1692BC789EC582C72
        33C554630384F04CB0846777C773927508613E220FDC6B8F0986B308ACEC7D54
        4DDD52873DD4E1B34BC08393C0C353C09373345740D37E1A4FEBF3919F148AC0
        E923E0CB358490E7A8E23BE8C023C9FA3A609F3CED8C9C698F1B3A9B0BD17BB7
        02AD3579787DBD14B85F09B457E3C6C97454C936E0715D1E2E157D8ECCF85084
        FA8DC2EC31FA0876B2554D6159FA10C6823C10CCE3EA99F358464CCD9EB51D8D
        F2626CD8188BFAD21CA81F5641FDB2012B83DCB165D37AECC94AC1AE9448E449
        16214F2CC02A868D10FEC413535996DE84D11EE040B0ABAB9E2181B9DDB70FB7
        6B9ED6A2F7B773E8E96AA07DAEA78EE5B40574A8DDBFE0756B39DE5C2AC04379
        068E6C8BA2CE97A82202666610E263B22979709E15E5D2B9DD1D95CA773D5769
        9F6F002F2FEB468DF2347AEA7268DE4409A4437D7B0F974B52902B16227E295F
        B5C47DB298CAADC88353A155F59E78CEE5228952F396D2F0A44617B917ED17D1
        79FD28DAAAB3A1D6A6E2CD4D74D6EE84740D8375C2B9583CD35C356BA28590CA
        4791B5D77B480D2B4C5DDDD0DB24A35895E16CBE087B130428D91A8E83A9A150
        DFDC8FEEBA9D3898B61251CC0CCC77B5C1327F9B2BFD0E6EF005E95362E4BCA0
        D663DB3B34AFCED365F81665B2789DEB8A93A06E398007F22C64AE5B00CF29E6
        E073CD553CCEB8CFA86C02797086FB2495FA0C4FFA34C07E4B0CD3F8F8E70274
        C977E355DD219DEF1CCE2468361445C9107A72E1C2324418E37265F2784B3F2A
        1D4DFEF05BF15EFA92083FA6EB5C56476B45062EEC10E97CEAAB383C57E42327
        2104234718C0876BD0D7AD2D59DBEDC0980DA58415FE9C4D49ABDB5FDC3B82D7
        AA2AF2193CFFA900659951F07030036F8C1968998ACF1D1735DBDECA957E6BD3
        F0EF6F725A6C307B730CE3C74FF0531EC88AC5D5D2745C3B9681824D4BC1E398
        82676F86712C0B70F85CF0E7D93F724E716BB25E63C558C75A71A87CE8AE395F
        727CB9295CC58CBD2ECAE863EBB139351ED18BBD11B5CE1F6C3B1B4CB3B384D9
        4863D8BA3B62AED01D73447CF8E47B819560D3315E62DD48F0F98419F8E86BA1
        7332DC15E1B5E148FA3509ABCFC46051961001910C02962DC0F4603738054DC7
        A4052E9816C147D0760611475720EE741C981206AC441B8C1759375B458FEDFB
        A2E8E951976CC75C4785A04900D17D119295C910DF1223A22202618722C07CB3
        10811B162232251A7C89179617854172430CD12D11D6D6AFC5F20BCB21F85ED0
        0F3E56F03788AD0778271866AB0000000049454E44AE426082}
    end
    object Label2: TLabel
      Left = 12
      Top = 11
      Width = 91
      Height = 16
      Caption = #1044#1072#1090#1072' ('#1087#1077#1088#1080#1086#1076')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object NumberDoc: TLabeledEdit
      Left = 12
      Top = 56
      Width = 113
      Height = 22
      Ctl3D = False
      EditLabel.Width = 91
      EditLabel.Height = 16
      EditLabel.Caption = #1053#1086#1084#1077#1088' '#1076#1086#1082'-'#1090#1072' '
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'arial'
      EditLabel.Font.Pitch = fpFixed
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      OnKeyDown = NumberDocKeyDown
    end
    object ClientFio: TLabeledEdit
      Left = 270
      Top = 56
      Width = 191
      Height = 22
      Ctl3D = False
      EditLabel.Width = 34
      EditLabel.Height = 16
      EditLabel.Caption = #1060#1048#1054' '
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'arial'
      EditLabel.Font.Pitch = fpFixed
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      OnKeyDown = NumberDocKeyDown
    end
    object ClientNick: TLabeledEdit
      Left = 163
      Top = 56
      Width = 102
      Height = 22
      Ctl3D = False
      EditLabel.Width = 27
      EditLabel.Height = 16
      EditLabel.Caption = #1050#1086#1076' '
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'arial'
      EditLabel.Font.Pitch = fpFixed
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      OnKeyDown = NumberDocKeyDown
    end
    object DateTrue: TCheckBox
      Left = 345
      Top = 11
      Width = 137
      Height = 17
      Caption = #1085#1077' '#1091#1095#1080#1090#1099#1074#1072#1090#1100' '#1076#1072#1090#1091
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object btn_filter: TcxButton
      Left = 477
      Top = 37
      Width = 186
      Height = 42
      Cursor = crHandPoint
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = btn_filterClick
      Colors.Default = clBtnFace
      Colors.Normal = clBtnFace
      Colors.Hot = clSkyBlue
      Colors.Pressed = clSkyBlue
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FFFFFF90943A
        126DAC4514C6B14817E6AB4413C69539106D0000000000000000949090D79C98
        98FD9A9696FF999595FF989494FF989494F5979393F5D2D1D1FBAB6648FCD167
        37FFC86333FFD8AB94FFBE5826FFBF5420FEAF491BAB000000009B9797EFFAF6
        F4FFF7EFECFFF6EDEAFFF6ECE8FFF6ECE8FFFBF6F5FFCC9D8AFFDF774EFFE677
        4BFFD6805BFFFEFEFEFFC0663BFFBF4D16FFC0541EF9983B116E9D9898FEF9F3
        F0FFFC619EFFFC579AFFFB609CFFF4E7E2FFF1EEEDFFBC6A47FFE67854FFEB7C
        56FFE18C6BFFFEFEFEFFC86F46FFC14F19FFC05019FFAC4414C89F9B9BEFFAF6
        F4FFFD599DFFFBB1B8FFFD589CFFF6EBE7FFFBF5F3FFBC5B36FFDA694BFFE575
        53FFE38E71FFFEFEFEFFD57E5AFFCE5D2AFFC4531DFEB24917E9A09C9CEFFAF6
        F4FFFD599EFFFCB2B9FFFD599DFFF8EFEBFFF2F0EFFFB76342FFC85539FFD664
        46FFDC785AFFE5C5BAFFE37F59FFDF6F41FFD2622FFFAF4716CAA19D9DEFFAF6
        F4FFFD599EFFFCB2BAFFFD599DFFF9F0EDFFFCF8F7FFCD9E8BFFBD4E31FFC44F
        36FFCE6E57FFF2E3DFFFE38667FFEA7B52FFD86D3EFA9D3F1571A39E9EEFFAF6
        F4FFFD599EFFFCB2BAFFFD599EFFF9F1EEFFE2DEDCFFF2F0F0FFC67C61FFBB4D
        2EFFC1563EFFD69787FFDE7656FFDD754CFFB95428AEFFFFFF90A49F9FEFFAF6
        F4FFFD599EFFFCB2BAFFFD599EFFF9F1EEFFF9F1EEFFF9F1EEFFFCF9F8FFCE9F
        8CFFBA6543FFBA5732FFC06D4AFF986956F3FFFFFF9000000000A5A0A0EFFAF6
        F4FFFD64A1FFFD599EFFFD64A1FFF9F1EEFFE2DEDCFFE2DEDCFFE2DEDCFFF2F1
        F0FFF2F0F0FFF2F0EFFFFDFBFAFFD3D1D1F50000000000000000A6A1A1EFFAF6
        F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6F4FFFAF6
        F4FFFAF6F4FFFAF6F4FFFAF6F4FF959191E90000000000000000A6A2A2EFFAF6
        F4FFD8A44EFFDAA246FFDAA246FFDAA246FFDAA246FFDAA246FFDAA246FFDAA2
        46FFDAA246FFD8A44EFFFAF6F4FF928E8EE90000000000000000A7A3A3EFFAF6
        F4FFDAA246FFC9B491FFC9B491FFC9B491FFC9B491FFC9B491FFC9B491FFC9B4
        91FFC9B491FFDAA246FFFAF6F4FF938E8EE10000000000000000A8A3A3EFFAF6
        F4FFD8A44EFFDAA246FFDAA246FFDAA246FFDAA246FFDAA246FFDAA246FFDAA2
        46FFDAA246FFD8A44EFFFAF6F4FF938E8EE70000000000000000A9A4A4EFFBF9
        F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9F8FFFBF9
        F8FFFBF9F8FFFBF9F8FFFBF9F8FF938E8EE10000000000000000A49F9FD2A9A4
        A4FCA8A3A3FEA7A3A3FEA6A2A2FEA6A2A2EFA6A1A1EFA5A0A0EFA49F9FEFA39E
        9EEFA39E9EFDA39E9EF2938E8EE1938E8EE10000000000000000}
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      Spacing = 6
    end
    object Panel14: TPanel
      Left = 811
      Top = 1
      Width = 174
      Height = 83
      Align = alRight
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 7
      object BitBtn_Cancel: TcxButton
        Left = 27
        Top = 36
        Width = 140
        Height = 42
        Cursor = crHandPoint
        Cancel = True
        Caption = ' '#1047#1072#1082#1088#1099#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ModalResult = 2
        ParentFont = False
        TabOrder = 0
        Colors.Default = clBtnFace
        Colors.Normal = clBtnFace
        Colors.Hot = clSkyBlue
        Colors.Pressed = clSkyBlue
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
        LookAndFeel.NativeStyle = True
        Spacing = 6
      end
    end
    object Doc_DateTimePicker1: TcxDateEdit
      Left = 115
      Top = 6
      Properties.DateButtons = [btnToday]
      Properties.DateOnError = deToday
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Width = 110
    end
    object Doc_DateTimePicker2: TcxDateEdit
      Left = 229
      Top = 6
      Properties.DateButtons = [btnToday]
      Properties.DateOnError = deToday
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      Width = 110
    end
  end
  object bm_sales: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    LookAndFeel.Kind = lfOffice11
    MenuAnimations = maFade
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = False
    Left = 544
    Top = 3
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'tb_legend'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 337
      FloatTop = 200
      FloatClientWidth = 202
      FloatClientHeight = 136
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
        end
        item
          Visible = True
          ItemName = 'dxBarStatic3'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic7'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic8'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic12'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic13'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic10'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic11'
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
    object mbtn_expand: TdxBarButton
      Caption = #1056#1072#1079#1074#1077#1088#1085#1091#1090#1100' '#1089#1087#1080#1089#1082#1080
      Category = 0
      Hint = #1056#1072#1079#1074#1077#1088#1085#1091#1090#1100' '#1089#1087#1080#1089#1082#1080
      Visible = ivAlways
      ShortCut = 16453
    end
    object mbtn_collapse: TdxBarButton
      Caption = #1057#1074#1077#1088#1085#1091#1090#1100' '#1089#1087#1080#1089#1082#1080
      Category = 0
      Hint = #1057#1074#1077#1088#1085#1091#1090#1100' '#1089#1087#1080#1089#1082#1080
      Visible = ivAlways
      ShortCut = 16472
    end
    object dxBarSeparator1: TdxBarSeparator
      Caption = '--'
      Category = 0
      Hint = '--'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1053#1072#1089#1090#1088#1086#1080#1090#1100' '#1082#1086#1083#1086#1085#1082#1080
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
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
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          Visible = True
          ItemName = 'dxBarButton13'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton15'
        end
        item
          Visible = True
          ItemName = 'dxBarButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarButton16'
        end>
    end
    object dxBarButton1: TdxBarButton
      Caption = #1050#1086#1076
      Category = 0
      Hint = #1050#1086#1076
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton2: TdxBarButton
      Caption = #1040#1088#1090#1080#1082#1091#1083
      Category = 0
      Hint = #1040#1088#1090#1080#1082#1091#1083
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton3: TdxBarButton
      Caption = #1058#1080#1087' '#1075#1086#1083'.'
      Category = 0
      Hint = #1058#1080#1087' '#1075#1086#1083'.'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton4: TdxBarButton
      Caption = #1043#1088#1091#1087#1087#1072
      Category = 0
      Hint = #1043#1088#1091#1087#1087#1072
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton5: TdxBarButton
      Caption = #1055#1086#1076#1075#1088#1091#1087#1087#1072
      Category = 0
      Hint = #1055#1086#1076#1075#1088#1091#1087#1087#1072
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton6: TdxBarButton
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077
      Category = 0
      Hint = #1053#1072#1079#1074#1072#1085#1080#1077
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton7: TdxBarButton
      Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
      Category = 0
      Hint = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton8: TdxBarButton
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      Category = 0
      Hint = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton9: TdxBarButton
      Caption = #1057#1082#1080#1076#1082#1072' %'
      Category = 0
      Hint = #1057#1082#1080#1076#1082#1072' %'
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton10: TdxBarButton
      Caption = #1062#1077#1085#1072
      Category = 0
      Hint = #1062#1077#1085#1072
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton11: TdxBarButton
      Caption = #1053#1072' '#1089#1091#1084#1084#1091
      Category = 0
      Hint = #1053#1072' '#1089#1091#1084#1084#1091
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton12: TdxBarButton
      Caption = #1057#1090#1088#1072#1085#1072
      Category = 0
      Hint = #1057#1090#1088#1072#1085#1072
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton13: TdxBarButton
      Caption = #1062#1074#1077#1090
      Category = 0
      Hint = #1062#1074#1077#1090
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarSeparator2: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarButton14: TdxBarButton
      Action = aClearFilter
      Category = 0
    end
    object dxBarStatic1: TdxBarStatic
      Caption = 'Ctrl+E - '#1088#1072#1079#1074#1077#1088#1085#1091#1090#1100
      Category = 0
      Hint = 'Ctrl+E - '#1088#1072#1079#1074#1077#1088#1085#1091#1090#1100
      Visible = ivAlways
    end
    object dxBarStatic2: TdxBarStatic
      Caption = 'Ctrl+X - '#1089#1074#1077#1088#1085#1091#1090#1100
      Category = 0
      Hint = 'Ctrl+X - '#1089#1074#1077#1088#1085#1091#1090#1100
      Visible = ivAlways
    end
    object dxBarStatic3: TdxBarStatic
      Caption = 'F10 - '#1086#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088#1099
      Category = 0
      Hint = 'F10 - '#1086#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088#1099
      Visible = ivAlways
    end
    object dxBarStatic4: TdxBarStatic
      Caption = 'Ctrl+'#1055#1088#1086#1073#1077#1083' - '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1103' '#1087#1086' '#1075#1088#1091#1087#1087#1072#1084
      Category = 0
      Hint = 'Ctrl+'#1055#1088#1086#1073#1077#1083' - '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1103' '#1087#1086' '#1075#1088#1091#1087#1087#1072#1084
      Visible = ivAlways
    end
    object dxBarButton15: TdxBarButton
      Caption = #1062#1077#1085#1072' '#1087#1088#1086#1076#1072#1078#1080
      Category = 0
      Hint = #1062#1077#1085#1072' '#1087#1088#1086#1076#1072#1078#1080
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarButton16: TdxBarButton
      Caption = #1053#1072' '#1089#1082#1083#1072#1076#1077
      Category = 0
      Hint = #1053#1072' '#1089#1082#1083#1072#1076#1077
      Visible = ivAlways
      ButtonStyle = bsChecked
    end
    object dxBarStatic5: TdxBarStatic
      Caption = '  20  '
      Category = 0
      Hint = '  20  '
      Style = st_warning
      Visible = ivAlways
      BorderStyle = sbsLowered
    end
    object dxBarStatic6: TdxBarStatic
      Caption = ' - '#1079#1085#1072#1095#1077#1085#1080#1077' '#1073#1086#1083#1100#1096#1077', '#1095#1077#1084' '#1085#1072' '#1089#1082#1083#1072#1076#1077
      Category = 0
      Hint = ' - '#1079#1085#1072#1095#1077#1085#1080#1077' '#1073#1086#1083#1100#1096#1077', '#1095#1077#1084' '#1085#1072' '#1089#1082#1083#1072#1076#1077
      Visible = ivAlways
    end
    object dxBarButton17: TdxBarButton
      Action = aSearchArticle
      Category = 0
    end
    object dxBarButton18: TdxBarButton
      Action = aSearchName
      Category = 0
    end
    object dxBarButton19: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Category = 0
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Visible = ivAlways
    end
    object dxBarStatic7: TdxBarStatic
      Caption = 'Ctrl+A - '#1087#1086#1080#1089#1082' '#1087#1086' '#1072#1088#1090#1080#1082#1083#1091
      Category = 0
      Hint = 'Ctrl+A - '#1087#1086#1080#1089#1082' '#1087#1086' '#1072#1088#1090#1080#1082#1083#1091
      Visible = ivAlways
    end
    object dxBarStatic8: TdxBarStatic
      Caption = 'Ctrl+N - '#1087#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102
      Category = 0
      Hint = 'Ctrl+N - '#1087#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102
      Visible = ivAlways
    end
    object dxBarStatic9: TdxBarStatic
      Caption = 'Ctrl+Del - '#1091#1076#1072#1083#1080#1090#1100' '#1082#1086#1083'-'#1074#1086
      Category = 0
      Hint = 'Ctrl+Del - '#1091#1076#1072#1083#1080#1090#1100' '#1082#1086#1083'-'#1074#1086
      Visible = ivAlways
    end
    object dxBarStatic10: TdxBarStatic
      Caption = 
        #1044#1083#1103' '#1089#1084#1077#1085#1099' '#1082#1083#1080#1077#1085#1090#1072' '#1085#1072#1078#1084#1080#1090#1077' '#1087#1088#1072#1074#1091#1102' '#1082#1085#1086#1087#1082#1091' '#1084#1099#1096#1080' '#1080' '#1074#1099#1073#1077#1088#1080#1090#1077' '#1087#1091#1085#1082#1090' '#1084#1077 +
        #1085#1102
      Category = 0
      Hint = 
        #1044#1083#1103' '#1089#1084#1077#1085#1099' '#1082#1083#1080#1077#1085#1090#1072' '#1085#1072#1078#1084#1080#1090#1077' '#1087#1088#1072#1074#1091#1102' '#1082#1085#1086#1087#1082#1091' '#1084#1099#1096#1080' '#1080' '#1074#1099#1073#1077#1088#1080#1090#1077' '#1087#1091#1085#1082#1090' '#1084#1077 +
        #1085#1102
      Visible = ivNever
    end
    object dxBarStatic11: TdxBarStatic
      Caption = 'ENTER - '#1087#1086#1083#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1087#1086' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1077
      Category = 0
      Hint = 'ENTER - '#1087#1086#1083#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1087#1086' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1077
      Visible = ivAlways
    end
    object dxBarStatic12: TdxBarStatic
      Caption = 'Ctrl+B - '#1087#1086#1080#1089#1082' '#1087#1086' '#1074#1085#1091#1090#1088'. '#1082#1086#1076#1091
      Category = 0
      Hint = 'Ctrl+B - '#1087#1086#1080#1089#1082' '#1087#1086' '#1074#1085#1091#1090#1088'. '#1082#1086#1076#1091
      Visible = ivAlways
    end
    object dxBarStatic13: TdxBarStatic
      Caption = 'Ctrl+'#1055#1088#1086#1073#1077#1083' - '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1103' '#1087#1086' '#1075#1088#1091#1087#1087#1072#1084
      Category = 0
      Hint = 'Ctrl+'#1055#1088#1086#1073#1077#1083' - '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1103' '#1087#1086' '#1075#1088#1091#1087#1087#1072#1084
      Visible = ivAlways
    end
  end
  object al_sales: TActionList
    Left = 512
    object aLoad: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' (F5)'
      ShortCut = 116
      OnExecute = aLoadExecute
    end
    object aGetNakls: TAction
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100
      OnExecute = aGetNaklsExecute
    end
    object aGetReserv: TAction
      Caption = 'aGetReserv'
      OnExecute = aGetReservExecute
    end
    object aGetStore: TAction
      Caption = 'aGetStore'
      OnExecute = aGetStoreExecute
    end
    object aSearchArticle: TAction
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1072#1088#1090#1080#1082#1083#1091
      ShortCut = 16449
      OnExecute = aSearchArticleExecute
    end
    object aSearchName: TAction
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102
      ShortCut = 16462
      OnExecute = aSearchNameExecute
    end
    object aSearchOurCode: TAction
      Caption = 'aSearchOurCode'
      ShortCut = 16450
      OnExecute = aSearchOurCodeExecute
    end
    object aClearFilter: TAction
      Caption = #1054#1095#1080#1097#1072#1077#1084' '#1092#1080#1083#1100#1090#1088#1099
      ShortCut = 121
      OnExecute = aClearFilterExecute
    end
    object aSklad: TAction
      Caption = 'aSklad'
      ShortCut = 16433
      OnExecute = aSkladExecute
    end
    object aNakls: TAction
      Caption = 'aNakls'
      ShortCut = 16434
      OnExecute = aNaklsExecute
    end
    object aReserv: TAction
      Caption = 'aReserv'
      ShortCut = 16435
      OnExecute = aReservExecute
    end
    object aExport: TAction
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' excel'
      OnExecute = aExportExecute
    end
    object aPrintAll: TAction
      Caption = #1055#1077#1095#1072#1090#1100' '#1089#1087#1080#1089#1082#1072
      OnExecute = aPrintAllExecute
    end
    object aPrint: TAction
      Caption = #1055#1077#1095#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' (F6)'
      ShortCut = 117
      OnExecute = aPrintExecute
    end
    object aMinus: TAction
      Caption = #1052#1080#1085#1091#1089#1086#1074#1072#1103' (F7)'
      ShortCut = 118
      OnExecute = aMinusExecute
    end
    object aCtrlEnter: TAction
      Caption = 'aCtrlEnter'
      ShortCut = 16397
      OnExecute = aCtrlEnterExecute
    end
    object aEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' (F2)'
      ShortCut = 113
      OnExecute = aEditExecute
    end
    object aDel: TAction
      Caption = #1057#1085#1103#1090#1100' '#1073#1088#1086#1085#1100' (F3)'
      ShortCut = 114
      OnExecute = aDelExecute
    end
    object aSetStatus: TAction
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100
      OnExecute = aSetStatusExecute
    end
    object aMakeNakl: TAction
      Caption = #1053#1072#1082#1083#1072#1076#1085#1091#1102' (F4)'
      ShortCut = 115
      OnExecute = aMakeNaklExecute
    end
    object aSaveNakl: TAction
      Caption = 'aSaveNakl'
      OnExecute = aSaveNaklExecute
    end
    object aFiltrType: TAction
      Caption = 'aFiltrType'
      ShortCut = 16416
      OnExecute = aFiltrTypeExecute
    end
    object aInvoiceLink: TAction
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100' '#1074#1099#1075#1088#1091#1079#1082#1091' (new)'
      OnExecute = aInvoiceLinkExecute
    end
    object aShowReserv: TAction
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1088#1077#1079#1077#1088#1074
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1088#1077#1079#1077#1088#1074' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1072#1084
      ShortCut = 119
      OnExecute = aShowReservExecute
    end
    object actDelExecute: TAction
      Caption = 'actDelExecute'
      OnExecute = actDelExecuteExecute
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 480
    PixelsPerInch = 96
    object st_priority: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clMoneyGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
    end
    object st_warning: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      TextColor = 8421631
    end
    object st_legend_b: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
    end
    object stNotUse: TcxStyle
      AssignedValues = [svColor]
      Color = 14145495
    end
  end
  object STORE_VIEW: TOraQuery
    Session = DM.sale_session
    SQL.Strings = (
      'begin'
      
        '   creator.SALES_PKG.GET_STORE_VIEW(:ID_DEP_, :v_office, :CURSOR' +
        '_);'
      'end;')
    FetchAll = True
    ReadOnly = True
    AutoCommit = False
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = STORE_VIEWBeforeOpen
    BeforeRefresh = STORE_VIEWBeforeOpen
    Left = 808
    Top = 88
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID_DEP_'
        ParamType = ptInput
        Value = 121
      end
      item
        DataType = ftUnknown
        Name = 'v_office'
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        Value = 'Object'
      end>
    object STORE_VIEWN_ID: TFloatField
      FieldName = 'N_ID'
    end
    object STORE_VIEWFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Size = 350
    end
    object STORE_VIEWF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Size = 50
    end
    object STORE_VIEWF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Size = 50
    end
    object STORE_VIEWCODE: TStringField
      FieldName = 'CODE'
      Size = 40
    end
    object STORE_VIEWH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 50
    end
    object STORE_VIEWLEN: TIntegerField
      FieldName = 'LEN'
    end
    object STORE_VIEWPACK: TIntegerField
      FieldName = 'PACK'
    end
    object STORE_VIEWCOLOUR: TStringField
      FieldName = 'COLOUR'
      Size = 50
    end
    object STORE_VIEWCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Size = 50
    end
    object STORE_VIEWQUANTITY: TFloatField
      FieldName = 'QUANTITY'
    end
    object STORE_VIEWPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object STORE_VIEWFT_ID: TFloatField
      FieldName = 'FT_ID'
    end
    object STORE_VIEWFST_ID: TFloatField
      FieldName = 'FST_ID'
    end
    object STORE_VIEWC_ID: TFloatField
      FieldName = 'C_ID'
    end
    object STORE_VIEWCOL_ID: TFloatField
      FieldName = 'COL_ID'
    end
    object STORE_VIEWS_ID: TFloatField
      FieldName = 'S_ID'
    end
    object STORE_VIEWS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Size = 150
    end
    object STORE_VIEWQUANTITY_PRICE: TFloatField
      FieldName = 'QUANTITY_PRICE'
    end
    object STORE_VIEWNBUTTON: TFloatField
      FieldName = 'NBUTTON'
    end
    object STORE_VIEWRESERV: TFloatField
      FieldName = 'RESERV'
    end
    object STORE_VIEWSPESIFICATION: TStringField
      FieldName = 'SPESIFICATION'
      Size = 4000
    end
    object STORE_VIEWHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
    end
    object STORE_VIEWHOL_SUB_TYPE: TStringField
      FieldName = 'HOL_SUB_TYPE'
      Size = 50
    end
    object STORE_VIEWBUT_NAME: TStringField
      FieldName = 'BUT_NAME'
      FixedChar = True
      Size = 3
    end
    object STORE_VIEWSTORE_TYPE_NAME: TStringField
      FieldName = 'STORE_TYPE_NAME'
      Size = 6
    end
    object STORE_VIEWOUR_CODE: TStringField
      FieldName = 'OUR_CODE'
      Size = 40
    end
    object STORE_VIEWIS_PHOTO: TFloatField
      FieldName = 'IS_PHOTO'
    end
    object STORE_VIEWPHOTO: TStringField
      FieldName = 'PHOTO'
      Size = 30
    end
    object STORE_VIEWCOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 350
    end
    object STORE_VIEWID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object STORE_VIEWBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object STORE_VIEWNOTUSE: TIntegerField
      FieldName = 'NOTUSE'
    end
  end
  object doc: TOraQuery
    SQL.Strings = (
      'begin'
      
        '  creator.STORE_PKG.GET_DOC_VIEW_CLIENT(:ID_DEP_, :DOC_NUMBER_, ' +
        ':DOC_DATE1_, :DOC_DATE2_, :ID_DOC_TYPE_, :FIO_, :NICK_, :v_offic' +
        'e, :CURSOR_);'
      'end;')
    FetchAll = True
    AutoCommit = False
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = docBeforeOpen
    BeforeRefresh = docBeforeOpen
    Left = 840
    Top = 88
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEP_'
        ParamType = ptInput
        Value = 62.000000000000000000
      end
      item
        DataType = ftString
        Name = 'DOC_NUMBER_'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DOC_DATE1_'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DOC_DATE2_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ID_DOC_TYPE_'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIO_'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NICK_'
        ParamType = ptInput
      end
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
    object docID_DOC: TFloatField
      FieldName = 'ID_DOC'
    end
    object docDOC_NUMBER: TFloatField
      FieldName = 'DOC_NUMBER'
    end
    object docID_DOC_TYPE: TIntegerField
      FieldName = 'ID_DOC_TYPE'
    end
    object docID_DEPARTMENTS: TIntegerField
      FieldName = 'ID_DEPARTMENTS'
    end
    object docDEPARTMENT_NAME: TStringField
      FieldName = 'DEPARTMENT_NAME'
      Size = 100
    end
    object docOPERATOR_NAME: TStringField
      FieldName = 'OPERATOR_NAME'
      Size = 255
    end
    object docDOC_DATE: TDateTimeField
      FieldName = 'DOC_DATE'
    end
    object docDOC_DATE_REAL: TDateTimeField
      FieldName = 'DOC_DATE_REAL'
    end
    object docID_CLIENT: TIntegerField
      FieldName = 'ID_CLIENT'
    end
    object docNICK: TStringField
      FieldName = 'NICK'
    end
    object docFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object docQUANTITY_ALL: TFloatField
      FieldName = 'QUANTITY_ALL'
    end
    object docPRICE_ALL: TFloatField
      FieldName = 'PRICE_ALL'
    end
    object docSUM_PRICE_OLD: TFloatField
      FieldName = 'SUM_PRICE_OLD'
    end
    object docSUM_PRICE_NEW: TFloatField
      FieldName = 'SUM_PRICE_NEW'
    end
    object docSUM_PRICE_DIFFERENCE: TFloatField
      FieldName = 'SUM_PRICE_DIFFERENCE'
    end
    object docCOMMENTS: TStringField
      FieldName = 'COMMENTS'
      Size = 255
    end
    object docINV_ID: TFloatField
      FieldName = 'INV_ID'
    end
    object docORDER_ID: TFloatField
      FieldName = 'ORDER_ID'
    end
    object docSUPPLIER_DATE: TDateTimeField
      FieldName = 'SUPPLIER_DATE'
    end
    object docSUPPLIER_NUMBER: TStringField
      FieldName = 'SUPPLIER_NUMBER'
      Size = 50
    end
    object docSUPLIER: TStringField
      FieldName = 'SUPLIER'
      Size = 1024
    end
    object docID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object docBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object docOFFICE: TStringField
      FieldName = 'OFFICE'
    end
    object docORDER_DATE: TDateTimeField
      FieldName = 'ORDER_DATE'
    end
    object docID_CASH_TMP: TFloatField
      FieldName = 'ID_CASH_TMP'
    end
  end
  object DOC_DS: TOraDataSource
    DataSet = doc
    Left = 840
    Top = 120
  end
  object STORE_VIEW_DS: TOraDataSource
    DataSet = STORE_VIEW
    Left = 808
    Top = 120
  end
  object doc_data: TOraQuery
    SQL.Strings = (
      '/*'
      'SELECT distinct'
      
        'a.ID_DOC, a.N_ID, a.CODE, a.H_CODE, a.F_TYPE, a.F_SUB_TYPE, a.FU' +
        'LL_NAME, a.country, a.colour,'
      
        'a.QUANTITY, a.QUANTITY_NOW, a.STORE_TYPE_NAME, a.STORE_TYPE, a.P' +
        'RICE_LIST, a.OUR_CODE,'
      
        'a.QUANTITY_PRICE, a.PRICE_PERCENT, a.PRICE, a.GTD, a.SPESIFICATI' +
        'ON, a.compiled_name_otdel'
      ', b.quantity as store, a.notuse, a.ID_DOC_DATA, bb.spec_price'
      'from'
      'store_docdata_view a'
      
        'left outer join prepare_price_list bb ON a.n_id=bb.n_id and bb.s' +
        'pec_price=1,'
      'store_main b'
      'where'
      'a.ID_DOC=:ID_DOC '
      
        'and a.n_id = b.n_id and a.STORE_TYPE = b.STORE_TYPE and a.id_off' +
        'ice = b.id_office'
      'order by compiled_name_otdel'
      '*/'
      ''
      '/*'
      'SELECT '
      
        'a.ID_DOC, a.N_ID, a.CODE, a.H_CODE, a.F_TYPE, a.F_SUB_TYPE, a.FU' +
        'LL_NAME, a.country, a.colour,'
      
        'a.QUANTITY, a.QUANTITY_NOW, a.STORE_TYPE_NAME, a.STORE_TYPE, a.P' +
        'RICE_LIST, a.OUR_CODE,'
      
        'a.QUANTITY_PRICE, a.PRICE_PERCENT, a.PRICE, a.GTD, a.SPESIFICATI' +
        'ON, a.compiled_name_otdel'
      ', b.quantity as store, a.notuse, a.ID_DOC_DATA, bb.spec_price'
      'from'
      'store_docdata_view a'
      'inner join price_list bb ON a.n_id = bb.n_id, '
      'store_main b'
      'where'
      'a.ID_DOC=:ID_DOC '
      
        'and a.n_id = b.n_id and a.STORE_TYPE = b.STORE_TYPE and a.id_off' +
        'ice = b.id_office'
      'order by compiled_name_otdel'
      '*/'
      ''
      'SELECT '
      
        'a.ID_DOC, a.N_ID, a.CODE, a.H_CODE, a.F_TYPE, a.F_SUB_TYPE, a.FU' +
        'LL_NAME, a.country, a.colour,'
      
        'a.QUANTITY, a.QUANTITY_NOW, a.STORE_TYPE_NAME, a.STORE_TYPE, a.P' +
        'RICE_LIST, a.OUR_CODE,'
      
        'a.QUANTITY_PRICE, a.PRICE_PERCENT, a.PRICE, a.GTD, a.SPESIFICATI' +
        'ON, a.compiled_name_otdel'
      ', b.quantity as store, a.notuse, a.ID_DOC_DATA, bb.spec_price'
      'from'
      'store_docdata_view a,'
      'price_list bb, '
      'store_main b'
      'where'
      'a.ID_DOC=:ID_DOC '
      
        'and a.n_id = b.n_id and a.STORE_TYPE = b.STORE_TYPE and a.id_off' +
        'ice = b.id_office'
      'and a.n_id = bb.n_id'
      'order by compiled_name_otdel')
    MasterSource = DOC_DS
    FetchRows = 20
    AutoCommit = False
    FilterOptions = [foCaseInsensitive]
    Left = 872
    Top = 88
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DOC'
        ParamType = ptInput
      end>
    object doc_dataID_DOC: TFloatField
      FieldName = 'ID_DOC'
      Required = True
    end
    object doc_dataN_ID: TFloatField
      FieldName = 'N_ID'
      Required = True
    end
    object doc_dataCODE: TStringField
      FieldName = 'CODE'
      Size = 40
    end
    object doc_dataH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 80
    end
    object doc_dataF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Required = True
      Size = 50
    end
    object doc_dataF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Required = True
      Size = 50
    end
    object doc_dataFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Size = 372
    end
    object doc_dataCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Required = True
      Size = 50
    end
    object doc_dataCOLOUR: TStringField
      FieldName = 'COLOUR'
      Required = True
      Size = 50
    end
    object doc_dataQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
      Required = True
    end
    object doc_dataQUANTITY_NOW: TFloatField
      FieldName = 'QUANTITY_NOW'
    end
    object doc_dataSTORE_TYPE_NAME: TStringField
      FieldName = 'STORE_TYPE_NAME'
      Required = True
      Size = 30
    end
    object doc_dataSTORE_TYPE: TIntegerField
      FieldName = 'STORE_TYPE'
    end
    object doc_dataPRICE_LIST: TFloatField
      FieldName = 'PRICE_LIST'
    end
    object doc_dataOUR_CODE: TStringField
      FieldName = 'OUR_CODE'
      Size = 40
    end
    object doc_dataQUANTITY_PRICE: TFloatField
      FieldName = 'QUANTITY_PRICE'
    end
    object doc_dataPRICE_PERCENT: TFloatField
      FieldName = 'PRICE_PERCENT'
    end
    object doc_dataPRICE: TFloatField
      FieldName = 'PRICE'
    end
    object doc_dataGTD: TStringField
      FieldName = 'GTD'
      Size = 50
    end
    object doc_dataSPESIFICATION: TStringField
      FieldName = 'SPESIFICATION'
      Size = 4000
    end
    object doc_dataCOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 500
    end
    object doc_dataSTORE: TFloatField
      FieldName = 'STORE'
    end
    object doc_dataNOTUSE: TIntegerField
      FieldName = 'NOTUSE'
    end
    object doc_dataID_DOC_DATA: TFloatField
      FieldName = 'ID_DOC_DATA'
      Required = True
    end
    object doc_dataSPEC_PRICE: TIntegerField
      FieldName = 'SPEC_PRICE'
    end
  end
  object doc_data_ds: TOraDataSource
    DataSet = doc_data
    Left = 872
    Top = 120
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'xls'
    Filter = #1060#1072#1081#1083#1099' EXCEL (*.xls)|*.xls'
    Left = 609
    Top = 1
  end
  object PopupMenu1: TPopupMenu
    OnPopup = PopupMenu1Popup
    Left = 640
    object mnShowReserv: TMenuItem
      Action = aShowReserv
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object N1: TMenuItem
      Action = aClearFilter
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Action = aSearchArticle
    end
    object N4: TMenuItem
      Action = aSearchName
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object excel1: TMenuItem
      Action = aExport
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object N6: TMenuItem
      Caption = #1057#1084#1077#1085#1080#1090#1100' '#1082#1083#1080#1077#1085#1090#1072
      Default = True
      OnClick = N6Click
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object new1: TMenuItem
      Action = aInvoiceLink
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object mnLoadFooter: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1080#1090#1086#1075#1086#1074#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103' '#1074' '#1073#1091#1092#1077#1088
      OnClick = mnLoadFooterClick
    end
    object mnLoadCell: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1103#1095#1077#1081#1082#1091' '#1074' '#1073#1091#1092#1077#1088
      OnClick = mnLoadCellClick
    end
  end
end
