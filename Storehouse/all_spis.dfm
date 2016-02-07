object all_spis_Form: Tall_spis_Form
  Left = 391
  Top = 267
  Caption = #1057#1090#1072#1088#1083#1072#1081#1090' - '#1053#1072#1082#1083#1072#1076#1085#1099#1077' '#1089#1087#1080#1089#1072#1085#1080#1103
  ClientHeight = 548
  ClientWidth = 898
  Color = clBtnFace
  Constraints.MinHeight = 550
  Constraints.MinWidth = 700
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'arial'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel9: TPanel
    Left = 0
    Top = 40
    Width = 898
    Height = 67
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object Panel10: TPanel
      Left = 2
      Top = 2
      Width = 743
      Height = 63
      Align = alLeft
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label2: TLabel
        Left = 14
        Top = 2
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
        Left = 275
        Top = 21
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
      object DateTrue: TCheckBox
        Left = 133
        Top = 44
        Width = 129
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
      object BitBtn1: TBitBtn
        Left = 397
        Top = 17
        Width = 141
        Height = 28
        Cursor = crHandPoint
        Caption = ' '#1055#1086#1082#1072#1079#1072#1090#1100' (F5) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = BitBtn1Click
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000084CA84FF54B757FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000084CA84FF52D47AFF72F4A5FF3EB850FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000008DD18DFF4ACC6BFF74F097FF77F08CFF63E692FF69BE6AFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          000084CA84FF4ACC6BFF6FEB94FF76EE8AFF77F08CFF74F097FF44C55EFF0000
          0000000000000000000000000000000000000000000000000000000000007CCC
          7BFF49D16FFF69E48BFF70E785FF73F19CFF73F19CFF72EF88FF65EA94FF4DB6
          51FF00000000000000000000000000000000000000000000000095D795FF4ACC
          6BFF61DA7FFF68DE7DFF6FEB94FF3EB850FF44C55EFF74F097FF68E982FF49D1
          6FFF00000000000000000000000000000000000000000000000053C357FF5CD8
          87FF5FD473FF63E692FF41BD50FF000000007CCC7BFF60E48EFF68E87DFF5FE6
          86FF3DB84DFF00000000000000000000000000000000000000007CD07CFF49D1
          6FFF55D880FF41BD50FF0000000000000000000000003DB84DFF6FEB94FF5BDF
          6FFF53DC81FF5CBB5EFF00000000000000000000000000000000000000000000
          000095D795FF0000000000000000000000000000000095D795FF4DD879FF5BE0
          73FF51D96AFF44CA68FF00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000004EBC53FF60E4
          8EFF4ED55FFF4DD973FF3DB84DFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003FC2
          56FF53DC76FF43CD55FF4DD879FF4DB651FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008DD1
          8DFF49D16FFF47D15FFF43CD55FF49D16FFF71C572FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00005DC15FFF4DD879FF43CD55FF47D262FF41C661FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000045BC4EFF4DD879FF43CD55FF4DD879FF52BA56FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003DB84DFF4FDB7EFF49D16FFF71C572FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000006AC56AFF86CE85FF00000000}
        Spacing = 0
      end
      object BitBtn2: TBitBtn
        Left = 537
        Top = 17
        Width = 176
        Height = 28
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088' (F10)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = BitBtn2Click
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
      end
      object Doc_DateTimePicker1: TcxDateEdit
        Left = 14
        Top = 19
        Cursor = crHandPoint
        ParentFont = False
        Properties.DateOnError = deToday
        Properties.ImmediatePost = True
        Properties.ShowTime = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'arial'
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
        OnKeyDown = Doc_DateTimePicker1KeyDown
        Width = 115
      end
      object Doc_DateTimePicker2: TcxDateEdit
        Left = 135
        Top = 19
        Cursor = crHandPoint
        ParentFont = False
        Properties.DateOnError = deToday
        Properties.ImmediatePost = True
        Properties.ShowTime = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'arial'
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
        TabOrder = 1
        OnKeyDown = Doc_DateTimePicker2KeyDown
        Width = 115
      end
    end
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 527
    Width = 898
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
  object CoolBar1: TCoolBar
    Left = 0
    Top = 107
    Width = 898
    Height = 43
    AutoSize = True
    BandBorderStyle = bsNone
    Bands = <
      item
        Control = ToolBar1
        ImageIndex = -1
        MinHeight = 39
        Width = 888
      end>
    BorderWidth = 1
    Color = clBtnFace
    EdgeBorders = [ebLeft, ebRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'arial'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentColor = False
    ParentFont = False
    object ToolBar1: TToolBar
      Left = 9
      Top = 0
      Width = 881
      Height = 39
      Align = alClient
      AutoSize = True
      ButtonHeight = 39
      ButtonWidth = 111
      Caption = 'ToolBar1'
      Color = clBtnFace
      EdgeInner = esNone
      EdgeOuter = esNone
      Images = DM.ImageList
      Indent = 2
      ParentColor = False
      ShowCaptions = True
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 2
        Top = 0
        Caption = ' '#1042#1088#1091#1095#1085#1091#1102' (F1) '
        ImageIndex = 0
        OnClick = ToolButton1Click
      end
      object ToolButton2: TToolButton
        Left = 113
        Top = 0
        Width = 8
        Caption = 'ToolButton8'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object ToolButton3: TToolButton
        Left = 121
        Top = 0
        Caption = ' '#1057#1086' '#1089#1082#1072#1085#1077#1088#1072' (F2) '
        ImageIndex = 12
        OnClick = ToolButton3Click
      end
      object ToolButton4: TToolButton
        Left = 232
        Top = 0
        Width = 8
        ImageIndex = 1
        Style = tbsSeparator
      end
      object ToolButton7: TToolButton
        Left = 240
        Top = 0
        Caption = ' '#1055#1077#1095#1072#1090#1100' '#1076#1086#1082'-'#1090#1072' '
        ImageIndex = 2
        OnClick = ToolButton7Click
      end
      object ToolButton8: TToolButton
        Left = 351
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 2
        Style = tbsSeparator
      end
      object ToolButton5: TToolButton
        Left = 359
        Top = 0
        Caption = ' '#1055#1077#1095#1072#1090#1100' '#1089#1087#1080#1089#1082#1072' '
        ImageIndex = 2
        OnClick = ToolButton5Click
      end
      object ToolButton6: TToolButton
        Left = 470
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        ImageIndex = 11
        Style = tbsSeparator
      end
      object tlb_export: TToolButton
        Left = 478
        Top = 0
        Caption = ' '#1069#1082#1089#1087#1086#1088#1090' '#1074' Excel '
        ImageIndex = 10
        OnClick = tlb_exportClick
      end
      object ToolButton9: TToolButton
        Left = 589
        Top = 0
        Width = 8
        Caption = 'ToolButton9'
        ImageIndex = 11
        Style = tbsSeparator
      end
      object ToolButton10: TToolButton
        Left = 597
        Top = 0
        Caption = ' '#1057#1073#1088#1086#1089#1080#1090#1100' '#1074#1089#1077' '
        ImageIndex = 9
        OnClick = ToolButton10Click
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 898
    Height = 40
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNone
    Font.Height = -13
    Font.Name = 'arial'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 589
      Height = 36
      Align = alClient
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -13
      Font.Name = 'arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 9
        Width = 159
        Height = 18
        Align = alCustom
        Alignment = taCenter
        Caption = #1053#1072#1082#1083#1072#1076#1085#1099#1077' '#1089#1087#1080#1089#1072#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel3: TPanel
      Left = 591
      Top = 2
      Width = 305
      Height = 36
      Align = alRight
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNone
      Font.Height = -13
      Font.Name = 'arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Close_BitBtn: TcxButton
        Left = 175
        Top = 2
        Width = 126
        Height = 30
        Cursor = crHandPoint
        Cancel = True
        Caption = #1047#1072#1082#1088#1099#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = Close_BitBtnClick
        Colors.Default = clBtnFace
        Colors.Normal = clBtnFace
        Colors.Hot = clSkyBlue
        Colors.Pressed = clSkyBlue
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
      end
    end
  end
  object grid_spis: TcxGrid
    Left = 0
    Top = 150
    Width = 898
    Height = 357
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    object grid_spisView: TcxGridDBTableView
      PopupMenu = pm_spisanie
      OnDblClick = grid_spisViewDblClick
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Position = fpTop
      DataController.DataSource = DOC_DS
      DataController.Filter.Options = [fcoCaseInsensitive, fcoShowOperatorDescription, fcoSoftCompare]
      DataController.Filter.AutoDataSetFilter = True
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
          Format = '0'
          Kind = skCount
          Column = gu_DOC_NUMBER
        end
        item
          Format = '0'
          Kind = skSum
          Column = gu_QUANTITY_ALL
        end
        item
          Format = '0.00'
          Kind = skSum
          Column = gu_PRICE_ALL
        end
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
          Kind = skSum
          Column = grid_spisViewsum_quantity
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
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.HeaderEndEllipsis = True
      object grid_spisViewbrief: TcxGridDBColumn
        Caption = #1054#1092#1080#1089
        DataBinding.FieldName = 'brief'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 60
        Options.Editing = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 60
      end
      object gu_DOC_NUMBER: TcxGridDBColumn
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
      object gu_DOC_DATE: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'DOC_DATE'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 100
        Options.Editing = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 100
      end
      object gu_DOC_DATE_REAL: TcxGridDBColumn
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
      object gu_QUANTITY_ALL: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1081
        DataBinding.FieldName = 'QUANTITY_ALL'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 110
        Options.Editing = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 110
      end
      object gu_PRICE_ALL: TcxGridDBColumn
        Caption = #1057#1091#1084#1084#1072' '#1091#1094#1077#1085#1082#1080
        DataBinding.FieldName = 'PRICE_ALL'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.ReadOnly = True
        Properties.UseThousandSeparator = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 110
        Options.Editing = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 110
      end
      object gu_COMMENTS: TcxGridDBColumn
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080
        DataBinding.FieldName = 'COMMENTS'
        Options.Editing = False
        Options.Grouping = False
        Options.Moving = False
        Width = 200
      end
      object grid_spisViewID_DOC: TcxGridDBColumn
        DataBinding.FieldName = 'ID_DOC'
        Visible = False
      end
      object grid_spisViewID_DOC_TYPE: TcxGridDBColumn
        DataBinding.FieldName = 'ID_DOC_TYPE'
        Visible = False
      end
      object grid_spisViewID_DEPARTMENTS: TcxGridDBColumn
        DataBinding.FieldName = 'ID_DEPARTMENTS'
        Visible = False
      end
      object grid_spisViewDEPARTMENT_NAME: TcxGridDBColumn
        DataBinding.FieldName = 'DEPARTMENT_NAME'
        Visible = False
        MinWidth = 64
        Options.Editing = False
        Options.HorzSizing = False
        Options.Moving = False
      end
      object grid_spisViewOPERATOR_NAME: TcxGridDBColumn
        Caption = #1054#1087#1077#1088#1072#1090#1086#1088
        DataBinding.FieldName = 'OPERATOR_NAME'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        Properties.ReadOnly = True
        MinWidth = 120
        Options.Editing = False
        Options.HorzSizing = False
        Options.Moving = False
        Styles.Content = cxStyle1
        Width = 120
      end
      object grid_spisViewID_CLIENT: TcxGridDBColumn
        DataBinding.FieldName = 'ID_CLIENT'
        Visible = False
      end
      object grid_spisViewNICK: TcxGridDBColumn
        DataBinding.FieldName = 'NICK'
        Visible = False
      end
      object grid_spisViewFIO: TcxGridDBColumn
        DataBinding.FieldName = 'FIO'
        Visible = False
      end
      object grid_spisViewSUM_PRICE_OLD: TcxGridDBColumn
        DataBinding.FieldName = 'SUM_PRICE_OLD'
        Visible = False
      end
      object grid_spisViewSUM_PRICE_NEW: TcxGridDBColumn
        DataBinding.FieldName = 'SUM_PRICE_NEW'
        Visible = False
      end
      object grid_spisViewSUM_PRICE_DIFFERENCE: TcxGridDBColumn
        DataBinding.FieldName = 'SUM_PRICE_DIFFERENCE'
        Visible = False
      end
      object grid_spisViewINV_ID: TcxGridDBColumn
        DataBinding.FieldName = 'INV_ID'
        Visible = False
      end
      object grid_spisViewORDER_ID: TcxGridDBColumn
        DataBinding.FieldName = 'ORDER_ID'
        Visible = False
      end
      object grid_spisViewSUPPLIER_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'SUPPLIER_DATE'
        Visible = False
      end
      object grid_spisViewSUPPLIER_NUMBER: TcxGridDBColumn
        DataBinding.FieldName = 'SUPPLIER_NUMBER'
        Visible = False
      end
      object grid_spisViewSUPLIER: TcxGridDBColumn
        DataBinding.FieldName = 'SUPLIER'
        Visible = False
      end
      object grid_spisViewid_office: TcxGridDBColumn
        DataBinding.FieldName = 'id_office'
        Visible = False
      end
      object grid_spisViewsum_quantity: TcxGridDBColumn
        Caption = #1057#1090#1077#1073#1083#1077#1081
        DataBinding.FieldName = 'sum_quantity'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.HorzSizing = False
        Width = 70
      end
    end
    object grid_spisLevel: TcxGridLevel
      GridView = grid_spisView
    end
  end
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 507
    Width = 898
    Height = 20
    Align = dalBottom
    BarManager = bm_spisanie
  end
  object doc: TOraQuery
    LocalUpdate = True
    Session = DM.OraSession
    SQL.Strings = (
      'begin'
      
        '  creator.STORE_PKG.GET_DOC_VIEW(:ID_DEP_, :DOC_NUMBER_, :DOC_DA' +
        'TE1_, :DOC_DATE2_, :ID_DOC_TYPE_, :v_office, :CURSOR_);'
      'end;')
    FetchRows = 20
    AutoCommit = False
    Options.FieldsOrigin = True
    FilterOptions = [foCaseInsensitive]
    BeforeOpen = docBeforeOpen
    BeforeRefresh = docBeforeOpen
    Left = 720
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_DEP_'
      end
      item
        DataType = ftUnknown
        Name = 'DOC_NUMBER_'
      end
      item
        DataType = ftUnknown
        Name = 'DOC_DATE1_'
      end
      item
        DataType = ftUnknown
        Name = 'DOC_DATE2_'
      end
      item
        DataType = ftUnknown
        Name = 'ID_DOC_TYPE_'
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
  end
  object DOC_DS: TOraDataSource
    DataSet = doc
    Left = 720
    Top = 80
  end
  object ActionList1: TActionList
    Left = 728
    Top = 120
    object DocNewManually_Action: TAction
      Caption = 'DocNewManually_Action'
      ShortCut = 112
      OnExecute = DocNewManually_ActionExecute
    end
    object DocNewScaner_Action: TAction
      Caption = 'DocNewScaner_Action'
      ShortCut = 113
      OnExecute = DocNewScaner_ActionExecute
    end
    object DocPrint_Action: TAction
      Caption = 'DocPrint_Action'
    end
    object DocListPrint_Action: TAction
      Caption = 'DocListPrint_Action'
    end
    object ctrl_enter: TAction
      Caption = 'ctrl_enter'
      ShortCut = 16397
      OnExecute = ctrl_enterExecute
    end
    object filter_off: TAction
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      ShortCut = 121
      OnExecute = BitBtn2Click
    end
  end
  object doc_data: TOraQuery
    LocalUpdate = True
    Session = DM.OraSession
    SQL.Strings = (
      'SELECT '
      'ID_DOC,'
      'N_ID,'
      'CODE,'
      'H_CODE,'
      'F_TYPE,'
      'F_SUB_TYPE,'
      'FULL_NAME,'
      'QUANTITY,'
      'QUANTITY_NOW,'
      'STORE_TYPE_NAME,'
      'STORE_TYPE,'
      'PRICE,'
      'QUANTITY_PRICE,'
      'PRICE_PERCENT,'
      'PRICE_LIST,'
      'GTD,'
      'SPESIFICATION, COMPILED_NAME_OTDEL'
      'from'
      'store_docdata_view'
      'where'
      'ID_DOC=:ID_DOC'
      'order by COMPILED_NAME_OTDEL')
    MasterSource = DOC_DS
    FetchRows = 20
    AutoCommit = False
    Options.FieldsOrigin = True
    FilterOptions = [foCaseInsensitive]
    Left = 752
    Top = 48
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DOC'
        ParamType = ptInput
        Value = 351.000000000000000000
      end>
  end
  object doc_data_ds: TOraDataSource
    DataSet = doc_data
    Left = 752
    Top = 80
  end
  object OraStoredProc: TOraStoredProc
    StoredProcName = 'creator.STORE_PKG.DOC_NEW'
    Session = DM.OraSession
    SQL.Strings = (
      'begin'
      
        '  creator.STORE_PKG.DOC_NEW(:SP_ID_CLIENT, :SP_DOC_DATE, :SP_ID_' +
        'DOC_TYPE, :SP_COMMENTS, :SP_OTDEL, :SP_INV_ID, :SP_ORDER_ID, :OU' +
        'T_MESSAGE, :OUT_DOCID);'
      'end;')
    Left = 801
    Top = 49
    ParamData = <
      item
        DataType = ftFloat
        Name = 'SP_ID_CLIENT'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'SP_DOC_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SP_ID_DOC_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SP_COMMENTS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SP_OTDEL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SP_INV_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SP_ORDER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OUT_MESSAGE'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'OUT_DOCID'
        ParamType = ptOutput
      end>
  end
  object SaveDialog8: TSaveDialog
    DefaultExt = 'xls'
    Filter = #1060#1072#1081#1083#1099' EXCEL (*.xls)|*.xls'
    Left = 761
    Top = 121
  end
  object bm_spisanie: TdxBarManager
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
    Left = 800
    Top = 83
    DockControlHeights = (
      0
      0
      0
      0)
    object bmb_prihod: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'tb_legend2'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 337
      FloatTop = 200
      FloatClientWidth = 175
      FloatClientHeight = 37
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
          ItemName = 'dxBarStatic4'
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
    object dxBarSeparator2: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object dxBarButton14: TdxBarButton
      Action = filter_off
      Category = 0
    end
    object dxBarStatic3: TdxBarStatic
      Caption = 'F10 - '#1086#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088#1099
      Category = 0
      Hint = 'F10 - '#1086#1095#1080#1089#1090#1080#1090#1100' '#1092#1080#1083#1100#1090#1088#1099
      Visible = ivAlways
    end
    object dxBarStatic4: TdxBarStatic
      Caption = 'Ctrl+Enter - '#1087#1088#1086#1089#1084#1086#1090#1088' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      Category = 0
      Hint = 'Ctrl+Enter - '#1087#1088#1086#1089#1084#1086#1090#1088' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
      Visible = ivAlways
    end
    object dxBarButton15: TdxBarButton
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Category = 0
      Hint = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Visible = ivAlways
      OnClick = tlb_exportClick
    end
    object dxBarSeparator3: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
    end
    object mnLoadFooter: TdxBarButton
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1080#1090#1086#1075#1086#1074#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103' '#1074' '#1073#1091#1092#1077#1088
      Category = 0
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1080#1090#1086#1075#1086#1074#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103' '#1074' '#1073#1091#1092#1077#1088
      Visible = ivAlways
      OnClick = mnLoadFooterClick
    end
    object mnLoadCell: TdxBarButton
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1103#1095#1077#1081#1082#1091' '#1074' '#1073#1091#1092#1077#1088
      Category = 0
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1103#1095#1077#1081#1082#1091' '#1074' '#1073#1091#1092#1077#1088
      Visible = ivAlways
      OnClick = mnLoadCellClick
    end
  end
  object pm_spisanie: TdxBarPopupMenu
    BarManager = bm_spisanie
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton14'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton15'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'mnLoadFooter'
      end
      item
        Visible = True
        ItemName = 'mnLoadCell'
      end>
    UseOwnFont = True
    Left = 832
    Top = 83
  end
  object frxReport1: TfrxReport
    Version = '4.12.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39785.824304097200000000
    ReportOptions.LastChange = 40529.993564062500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 738
    Top = 176
    Datasets = <
      item
        DataSet = fr_doc_data_ds
        DataSetName = 'fr_doc_data_ds'
      end
      item
        DataSet = fr_DOC_DS
        DataSetName = 'fr_DOC_DS'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 109.606370000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#1108#1056#187#1056#176#1056#1169#1056#1029#1056#176#1057#1039' '#1057#1027#1056#1111#1056#1105#1057#1027#1056#176#1056#1029#1056#1105#1057#1039' '#1074#8222#8211' [fr_DOC_DS."DOC_NUMBER"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baWidth
          Top = 19.456710000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[fr_DOC_DS."DEPARTMENT_NAME"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 56.692950000000000000
          Width = 476.220780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            #1056#8221#1056#176#1057#8218#1056#176': [fr_DOC_DS."DOC_DATE"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Top = 90.708720000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#8220#1057#1026#1057#1107#1056#1111#1056#1111#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 109.606370000000000000
          Top = 90.708720000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 185.196970000000000000
          Top = 90.708720000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1106#1057#1026#1057#8218#1056#1105#1056#1108#1057#1107#1056#187)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 540.472790000000000000
          Top = 90.708720000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#187'-'#1056#1030#1056#1109)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1116#1056#176' '#1057#1027#1057#1107#1056#1112#1056#1112#1057#1107)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 257.008040000000000000
          Top = 90.708720000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            #1056#1116#1056#176#1056#183#1056#1030#1056#176#1056#1029#1056#1105#1056#181)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 585.827150000000000000
          Top = 90.708720000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#166#1056#181#1056#1029#1056#176)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 188.976500000000000000
        Width = 718.110700000000000000
        DataSet = fr_doc_data_ds
        DataSetName = 'fr_doc_data_ds'
        RowCount = 0
        Stretched = True
        object fr_DOC_DSID_DOC: TfrxMemoView
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'F_TYPE'
          DataSet = fr_doc_data_ds
          DataSetName = 'fr_doc_data_ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[fr_doc_data_ds."F_TYPE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fr_DOC_DSDOC_NUMBER: TfrxMemoView
          Left = 109.606370000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'CODE'
          DataSet = fr_doc_data_ds
          DataSetName = 'fr_doc_data_ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fr_doc_data_ds."CODE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fr_DOC_DSNICK: TfrxMemoView
          Left = 185.196970000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'H_CODE'
          DataSet = fr_doc_data_ds
          DataSetName = 'fr_doc_data_ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[fr_doc_data_ds."H_CODE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fr_DOC_DSFIO: TfrxMemoView
          Left = 257.008040000000000000
          Width = 283.464505910000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'COMPILED_NAME_OTDEL'
          DataSet = fr_doc_data_ds
          DataSetName = 'fr_doc_data_ds'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[fr_doc_data_ds."COMPILED_NAME_OTDEL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fr_DOC_DSQUANTITY_ALL: TfrxMemoView
          Left = 540.472790000000000000
          Width = 45.354360000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'QUANTITY'
          DataSet = fr_doc_data_ds
          DataSetName = 'fr_doc_data_ds'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[fr_doc_data_ds."QUANTITY"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object fr_DOC_DSPRICE_ALL: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'QUANTITY_PRICE'
          DataSet = fr_doc_data_ds
          DataSetName = 'fr_doc_data_ds'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[fr_doc_data_ds."QUANTITY_PRICE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 585.827150000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'PRICE'
          DataSet = fr_doc_data_ds
          DataSetName = 'fr_doc_data_ds'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[fr_doc_data_ds."PRICE"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 317.480520000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8 = (
            '[Page#]')
        end
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          Left = 627.401980000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[SUM(<fr_doc_data_ds."QUANTITY_PRICE">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 495.118430000000000000
          Top = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1116#1056#176' '#1056#1109#1056#177#1057#8364#1057#1107#1057#1035' '#1057#1027#1057#1107#1056#1112#1056#1112#1057#1107': ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 75.590600000000000000
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Top = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            #1056#1119#1056#1109#1056#183#1056#1105#1057#8224#1056#1105#1056#8470': ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object fr_doc_data_ds: TfrxDBDataset
    UserName = 'fr_doc_data_ds'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_DOC=ID_DOC'
      'N_ID=N_ID'
      'CODE=CODE'
      'H_CODE=H_CODE'
      'F_TYPE=F_TYPE'
      'F_SUB_TYPE=F_SUB_TYPE'
      'FULL_NAME=FULL_NAME'
      'QUANTITY=QUANTITY'
      'QUANTITY_NOW=QUANTITY_NOW'
      'STORE_TYPE_NAME=STORE_TYPE_NAME'
      'STORE_TYPE=STORE_TYPE'
      'PRICE=PRICE'
      'QUANTITY_PRICE=QUANTITY_PRICE'
      'PRICE_PERCENT=PRICE_PERCENT'
      'PRICE_LIST=PRICE_LIST'
      'GTD=GTD'
      'SPESIFICATION=SPESIFICATION'
      'COMPILED_NAME_OTDEL=COMPILED_NAME_OTDEL')
    DataSource = doc_data_ds
    BCDToCurrency = False
    Left = 770
    Top = 176
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 802
    Top = 176
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 832
    Top = 176
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    DeleteEmptyColumns = True
    Left = 835
    Top = 208
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 804
    Top = 208
  end
  object fr_DOC_DS: TfrxDBDataset
    UserName = 'fr_DOC_DS'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_DOC=ID_DOC'
      'DOC_NUMBER=DOC_NUMBER'
      'ID_DOC_TYPE=ID_DOC_TYPE'
      'ID_DEPARTMENTS=ID_DEPARTMENTS'
      'DEPARTMENT_NAME=DEPARTMENT_NAME'
      'OPERATOR_NAME=OPERATOR_NAME'
      'DOC_DATE=DOC_DATE'
      'DOC_DATE_REAL=DOC_DATE_REAL'
      'ID_CLIENT=ID_CLIENT'
      'NICK=NICK'
      'FIO=FIO'
      'QUANTITY_ALL=QUANTITY_ALL'
      'PRICE_ALL=PRICE_ALL'
      'SUM_PRICE_OLD=SUM_PRICE_OLD'
      'SUM_PRICE_NEW=SUM_PRICE_NEW'
      'SUM_PRICE_DIFFERENCE=SUM_PRICE_DIFFERENCE'
      'COMMENTS=COMMENTS'
      'INV_ID=INV_ID'
      'ORDER_ID=ORDER_ID'
      'SUPPLIER_DATE=SUPPLIER_DATE'
      'SUPPLIER_NUMBER=SUPPLIER_NUMBER'
      'SUPLIER=SUPLIER')
    DataSource = DOC_DS
    BCDToCurrency = False
    Left = 770
    Top = 205
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
    end
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 832
    Top = 240
  end
end
