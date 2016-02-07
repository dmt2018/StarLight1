object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' '#1048#1057' "'#1057#1090#1072#1088#1083#1072#1081#1090'"'
  ClientHeight = 595
  ClientWidth = 594
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 594
    Height = 33
    Align = alTop
    Caption = #1052#1077#1085#1077#1076#1078#1077#1088' '#1088#1072#1073#1086#1090#1099' '#1089' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077#1084#1080' '#1090#1086#1074#1072#1088#1072
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 68
    Width = 594
    Height = 128
    Align = alTop
    Alignment = taLeftJustify
    BorderWidth = 5
    Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    VerticalAlignment = taAlignTop
    object Label1: TLabel
      Left = 16
      Top = 28
      Width = 165
      Height = 14
      Caption = #1055#1091#1090#1100' '#1086#1089#1085#1086#1074#1085#1099#1093' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1081
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 53
      Width = 153
      Height = 14
      Caption = #1055#1091#1090#1100' '#1087#1088#1077#1074#1100#1102' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1081
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 77
      Width = 86
      Height = 14
      Caption = #1042#1099#1089#1086#1090#1072' '#1087#1088#1077#1074#1100#1102
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 100
      Width = 90
      Height = 14
      Caption = #1064#1080#1088#1080#1085#1072' '#1087#1088#1077#1074#1100#1102
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ed_main_pic: TEdit
      Left = 187
      Top = 25
      Width = 390
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object ed_tn_pic: TEdit
      Left = 187
      Top = 50
      Width = 390
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object ed_max_h: TcxCurrencyEdit
      Left = 187
      Top = 74
      EditValue = 70.000000000000000000
      ParentFont = False
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = ',0'#39#39';-,0'#39#39
      Properties.MaxLength = 0
      Properties.MaxValue = 150.000000000000000000
      Properties.MinValue = 70.000000000000000000
      Properties.Nullable = False
      Properties.NullString = '70'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 78
    end
    object ed_max_w: TcxCurrencyEdit
      Left = 187
      Top = 97
      EditValue = 100.000000000000000000
      ParentFont = False
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = ',0'#39#39';-,0'#39#39
      Properties.MaxLength = 0
      Properties.MaxValue = 150.000000000000000000
      Properties.MinValue = 70.000000000000000000
      Properties.Nullable = False
      Properties.NullString = '70'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 78
    end
    object btn_save: TcxButton
      Left = 472
      Top = 94
      Width = 105
      Height = 25
      Cursor = crHandPoint
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btn_saveClick
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
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = True
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 33
    Width = 594
    Height = 35
    Align = alTop
    TabOrder = 2
    object Label5: TLabel
      Left = 7
      Top = 10
      Width = 44
      Height = 14
      Caption = #1054#1090#1076#1077#1083':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxImageComboBox1: TcxImageComboBox
      Left = 60
      Top = 7
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items = <
        item
          Description = #1040#1082#1089#1077#1089#1089#1091#1072#1088#1099
          ImageIndex = 0
          Value = 121
        end
        item
          Description = #1043#1086#1088#1096#1082#1080
          Value = 61
        end
        item
          Description = #1057#1088#1077#1079#1082#1072
          Value = 62
        end>
      Properties.OnEditValueChanged = cxImageComboBox1PropertiesEditValueChanged
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 0
      Width = 205
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 196
    Width = 594
    Height = 399
    Align = alClient
    Alignment = taLeftJustify
    BorderWidth = 5
    Caption = #1059#1082#1072#1078#1080#1090#1077' '#1087#1072#1087#1082#1091' '#1089' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103#1084#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    VerticalAlignment = taAlignTop
    object DirectoryListBox1: TDirectoryListBox
      Left = 16
      Top = 56
      Width = 233
      Height = 329
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      OnChange = DirectoryListBox1Change
    end
    object DriveComboBox1: TDriveComboBox
      Left = 16
      Top = 30
      Width = 233
      Height = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = DriveComboBox1Change
    end
    object btn_process: TBitBtn
      Left = 264
      Top = 29
      Width = 313
      Height = 25
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1092#1072#1081#1083#1099' '#1074' '#1089#1080#1089#1090#1077#1084#1091
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btn_processClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000009F302B7E9F2F2C975D1B
        1901000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000A2342B82C47044FFCB7D49FF9F2F
        2C9D5D1B19010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000A5382C82C87447FFE6995FFFE08F59FFCB7D
        49FF9F2F2C9D5D1B190100000000000000000000000000000000000000000000
        00000000000000000000A83B2C83CC7A4AFFEDA16AFFE48963FFDE835BFFDF8F
        58FFCB7C49FF9F2F2C9D5D1B1901000000000000000000000000000000000000
        000000000000AB3F2C84CF7E4CFFF2A672FFED936FFFE88E69FFE38862FFDE82
        5AFFDF8E57FFCB7C48FF9F2F2C9C5D1B19010000000000000000000000000000
        0000AE442D86D0804CFFF3A675FFF09776FFEF9574FFEC926EFFE88D68FFE388
        61FFDD8159FFDE8D56FFCB7C48FF9F2F2C9C5D1B19010000000000000000B148
        2E88D1824CFFF0A472FFEF9676FFF09677FFF09676FFEF9573FFEC926EFFE78D
        67FFE28760FFDD8258FFDE8F56FFCB7C48FF9F2F2C9C5D1B1901B44B2E84BD5D
        37FFD88E51FFD78B52FFDD9458FFF2A275FFF09677FFF09676FFEF9572FFEB91
        6DFFE99767FFD99153FFCE804BFFCD8049FFB04E36FF9F2F2C969D42283B9D41
        28529C402852A1412A52B55032E0F2AB72FFEF9577FFF09677FFF09676FFEE94
        72FFEFA46CFFB45337F3983228528E2D26528D2B26528C2A2641000000000000
        00000000000000000000B65132D2F0A870FFED9275FFEF9577FFF09677FFF096
        75FFF2A670FFB65438EE00000000000000000000000000000000000000000000
        00000000000000000000B75332D2EDA56EFFEA8E73FFED9376FFF09577FFF096
        77FFF3A873FFB75638EE00000000000000000000000000000000000000000000
        00000000000000000000B95432D2EAA16BFFE68A70FFEA8F73FFEE9376FFF096
        77FFF3A874FFB85838EE00000000000000000000000000000000000000000000
        00000000000000000000BA5632D2E69D68FFE1856CFFE68B70FFEB9074FFEE93
        76FFF3A774FFBA5A39EE00000000000000000000000000000000000000000000
        00000000000000000000BB5733D2E39965FFDD7F67FFE2856CFFE78B71FFEB90
        74FFF2A673FFBB5B39EE00000000000000000000000000000000000000000000
        00000000000000000000BB5833D2E6A564FFE39865FFE79D69FFEBA16DFFEEA5
        6FFFF3B270FFBC5D39EE00000000000000000000000000000000000000000000
        00000000000000000000B9522FA8BD5B34D8BC5A34D8BB5934D8BA5734D8B956
        34D8B85534D8B1482FBF00000000000000000000000000000000}
    end
    object FileListBox1: TFileListBox
      Left = 264
      Top = 60
      Width = 313
      Height = 325
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 3
    end
  end
end
