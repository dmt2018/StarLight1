object raznos: Traznos
  Left = 438
  Top = 291
  Caption = 'raznos'
  ClientHeight = 649
  ClientWidth = 1179
  Color = clBtnFace
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
  object Splitter2: TSplitter
    Left = 0
    Top = 401
    Width = 1179
    Height = 4
    Cursor = crVSplit
    Align = alTop
    Color = clBlack
    ParentColor = False
    ExplicitTop = 289
    ExplicitWidth = 927
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 1179
    Height = 65
    Align = alTop
    Color = 16484996
    Ctl3D = True
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
    DesignSize = (
      1179
      65)
    object DBText3: TDBText
      Left = 36
      Top = 8
      Width = 54
      Height = 16
      AutoSize = True
      DataField = 'ORDER_SEQ'
      DataSource = DM.Q_ORDERS_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 8
      Top = 8
      Width = 22
      Height = 16
      Caption = #8470':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 8
      Top = 27
      Width = 103
      Height = 16
      Caption = #1044#1072#1090#1072' '#1074#1099#1093#1086#1076#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 118
      Top = 27
      Width = 54
      Height = 16
      AutoSize = True
      DataField = 'DATE_TRUCK_OUT'
      DataSource = DM.Q_ORDERS_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 372
      Top = 8
      Width = 59
      Height = 16
      Caption = #1048#1085#1074#1086#1081#1089':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 437
      Top = 8
      Width = 54
      Height = 16
      AutoSize = True
      DataField = 'INVOICE'
      DataSource = DM.Q_ORDERS_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Panel11: TPanel
      Left = 857
      Top = 1
      Width = 321
      Height = 63
      Align = alRight
      BevelOuter = bvNone
      Color = 16484996
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        321
        63)
      object aTruckStatistic: TSpeedButton
        Left = 153
        Top = 4
        Width = 115
        Height = 25
        Cursor = crHandPoint
        Hint = #1047#1072#1075#1088#1091#1079#1082#1072' '#1087#1086' '#1084#1072#1096#1080#1085#1072#1084
        Anchors = [akTop, akRight]
        Caption = #1047#1072#1075#1088#1091#1079#1082#1072' (F5)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000003939397E555555CC3C3C3C8820202003000000000000
          000000000000373737564C4C4CC24040409B2A2A2A0E00000000000000000000
          0000000000003232324D8B8B8BFFD7D7D7FFAFAFAFFF3737375D000000000000
          00002727271E737373FBC7C7C7FFD2D2D2FF3939398C00000000000000000000
          00000000000034343462DDDDDDFFF3F3F3FF989898FF39393972000000000000
          000029292933B5B5B5FFFFFFFFFFB0B0B0FF3C3C3CA400000000000000000000
          0000000000002727270D545454CA939393FF4F4F4FD337373714000000000000
          00002D2D2D01464646AB979797FF5E5E5EEB3737373200000000000000000000
          000000000000202221086A6B6AF5717271FF686868F3686868F2676767F26363
          63F2636363F2616161F25C605EFD5D605FF54141418100000000000000000000
          0000000000005454546C717271FF717271FF6E6E6EFF6C6C6CFF6B6B6BFF6868
          68FD666666FB636363FB626262FB616161F54444448900000000000000000000
          0000000000005E5F5EB6717271FF717271FF6555391365553913655539136555
          39136455391063543910635439105F5138030000000000000000000000000000
          000000000000676867E6717271FFDEC494FF998257FF947E55FF947E55FF947E
          55FF947E55FF947E55FF947E55FF896B359E0000000000000000000000000000
          000000000000707170FD787774FFDAC191FFA58E63FFE6D3A8FFD5BF95FFC2AC
          82FFB9A37BFFB8A37BFFBDA77FFFA18552F970582C1C00000000000000000000
          00004E4E4E39717271FF989388FFD6BC8DFFAD956AFFE9DFB3FFE9DDB3FFE5D0
          A7FFD0BB92FFBEA880FFB7A27AFFBBA274FF896B358A00000000000000000000
          00005A5B5A8F717271FFC5B494FFBDA578FFBCA374FFDEC495FFE6D6AAFFE9E0
          B6FFE8DCB3FFE3CDA4FFCCB78EFFC4AE85FF997C48EF614C250C000000000000
          0000717271FF717271FFDEC494FFB29A6EFFC0A778FFCDB382FFD1B787FFE1C8
          99FFE6D9ACFFE9E1B6FFE8DBB2FFE1CBA2FFC0A777FF886B356B000000002A2A
          2A086F706FFC717271FFDEC494FF947E55FF947E55FF947E55FF947E55FF947E
          55FF947E55FF947E55FF947E55FF947E55FF947E55FF896B35C83D3D3D505656
          56E0717271FF535353DE594A2E275D4924265D4924265D4924265D4924235D49
          24235D4924235D4924235D4924235D4924235D4924235D492417414141897172
          71FF4C4C4CC83B3B3B2C00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000252525042F2F
          2F2B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = aTruckStatisticClick
        ExplicitLeft = 328
      end
      object SpeedButton6: TSpeedButton
        Left = 268
        Top = 4
        Width = 25
        Height = 25
        Cursor = crHandPoint
        Hint = #1055#1086#1084#1086#1097#1100
        Anchors = [akTop, akRight]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333F797F3333333333F737373FF333333BFB999BFB
          33333337737773773F3333BFBF797FBFB33333733337333373F33BFBFBFBFBFB
          FB3337F33333F33337F33FBFBFB9BFBFBF3337333337F333373FFBFBFBF97BFB
          FBF37F333337FF33337FBFBFBFB99FBFBFB37F3333377FF3337FFBFBFBFB99FB
          FBF37F33333377FF337FBFBF77BF799FBFB37F333FF3377F337FFBFB99FB799B
          FBF373F377F3377F33733FBF997F799FBF3337F377FFF77337F33BFBF99999FB
          FB33373F37777733373333BFBF999FBFB3333373FF77733F7333333BFBFBFBFB
          3333333773FFFF77333333333FBFBF3333333333377777333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        ExplicitLeft = 443
      end
      object btnRefresh: TSpeedButton
        Left = 293
        Top = 4
        Width = 25
        Height = 25
        Cursor = crHandPoint
        Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' (F12)'
        Anchors = [akTop, akRight]
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000010000000000000101
          0100020202000303030004040400050505000606060007070700080808000909
          09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
          1100121212001313130014141400151515001616160017171700181818001919
          19001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F1F00202020002121
          2100222222002323230024242400252525002626260027272700282828002929
          29002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F2F00303030003131
          3100323232003333330034343400353535003636360037373700383838003939
          39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
          41003E443E003A483A00344E34002E532E0028572800235B23001F5E1F001962
          1900136513000D690D00096B0900066C0600046D0400036E0300026F0200016F
          0100006F0000006F0000006F0000006F0000006F0000006F0000006F0000006F
          0000006F0000006F0000006F0000006F0000006F0000006F0000006F0000006F
          0000006F0000016F0000076E0400156B0C00286617003C6223004C5E2D005A5B
          360065593C006E574100745545007A5448007D534A007F534C0081534D008253
          4E008455500086565100885853008A5954008B5A55008C5B56008D5C57008F5D
          5800915E58009460590097615A009A635B009C655B009F665C00A1685D00A369
          5E00A46B5F00A66C6000A86E6100AA706300AC726500AD746600AE756800AF77
          6900AF796B00B07A6B00AF7B6D00AE7C6E00AC7E7100AA807300A7837700A486
          7C00A08981009B8C8800988F8C00969392009696960097979700989898009999
          99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F00A0A0A000A697
          A600AD8DAD00B87DB800C16EC100CA60CA00D74AD700E531E500F01CF000F70D
          F700FB06FB00FD02FD00FE01FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE02FE00FE04FC00FE08FB00FE0DF900FD13F600FD1AF300FC25EF00FB3F
          EA00FA62E800FA97E900FBBEEB00FBD6ED00FCE9F200FDF4F600FDF9F900FEFB
          FA00FEFDFC00FEFDFD00FEFEFD00FEFEFD00FEFEFD00FEFDFC00FEFDFB00FDFB
          F800FCF9F500FCF7F200FBF6F000FBF5EE00FAF4EC00FAF2E900FAF0E400F9ED
          DF00F7E9DA00F2E5D400EEE0CB00EADCC300E8D7BC00E6D6B700E4D5B200E7D4
          AE00E7D2AB00E5D1A900E4D0A600E3CEA300E2CEA200E3CC9F00E4CA9B00E1C8
          9700E2C69200E2C48D00DEC18A00D9BF8700D8BD8400D7BA8200D6B47D00D2AF
          7A00D2A97800D0A47500D19D7000D49C6C00D49D7000D5A07400B7B7B7B7B7B7
          B7B7B7B7B7B7B7B7B7B7B78179797979797979797979796FB7B7B781E2E6E8EC
          EFF2F3F6F6F6F36FB7B7B77FE1E4E6E8F56262F9F6F6F36FB7B7B77FE0E362F1
          62F5F662F9F5F36FB7B7B788DBE26262F1E8EBF662F3F36FB7B7B788D6E06262
          62E6E8ECF0F2F36FB7B7B78BD6DBE0E2E3E4626262EFF06FB7B7B78BD6D562E6
          E2E3EE6262ECEA6FB7B7B7FDD6D6E462E7E862EF62E8EC6FB7B7B7FDD6D6D6E4
          6262E8E3E2E8A06FB7B7B7FFD6D6D6D6D5DCDFE47F7F7F7FB7B7B7FFD6D6D6D6
          D6D8D8E77FFDFD84B7B7B7FAD6D6D6D6D6D6D6E67FF88BB7B7B7B7FADCDDDEDE
          DEDEDEE67F8CB7B7B7B7B7FAFDFDFDFDFDFDFDFD7FB7B7B7B7B7}
        ParentShowHint = False
        ShowHint = True
        OnClick = btnRefreshClick
        ExplicitLeft = 468
      end
      object btnTotalStatistic: TBitBtn
        Left = 18
        Top = 4
        Width = 135
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = ' '#1057#1090#1072#1090#1080#1089#1090#1080#1082#1072'  (F1)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = btnTotalStatisticClick
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000006B14000098721515A5B53434B6D73434B6D71414
          A4B4000098700019551300000000000000000000000000000000000000000000
          0000000000000000986F4749C5F29DA2FFFFC0C6FFFFBFC2FFFFC2C5FFFFCACB
          FFFF8EA2DAFF199231ED0185165F000000000000000000000000000000000000
          000005059D988086EFFFAEB8FFFFAEB8FFFFB3BBFFFFB6BDFFFFB9BFFFFFBEC1
          FFFF5AAC7EFFB0FFC2FF7CDC8EFF058819880000000000000000000000000000
          986B7A83EEFFA1B0FFFFA4B2FFFFA8B4FFFFABB6FFFFAEB8FFFFB2BBFFFFA8BF
          F7FF5EC671FFAEFFC4FFB0FFC6FF7BDC8DFF0185165F00000000000068113E42
          C2F19BAEFFFF9AACFFFF9DAEFFFFA1B0FFFFA4B2FFFFA8B4FFFFACB7FFFF56A8
          7FFFA4FFB8FFAAFFC0FFABFFC2FFB2FFC7FF3CAE4FEB015F0F0C0000966B818F
          FEFF92A8FFFF94A9FFFF98ABFFFF9AACFFFF9DAEFFFFA1AFFFFF9AB7F6FF59C4
          6EFFA4FFBDFFA5FFBDFFA8FFBFFFAAFFC0FF8EEEA1FF018516630A0A9FACA0B0
          FFFF9CB0FFFF96ABFFFF93A9FFFF94A9FFFF98ABFFFF9BADFFFF50A67DFF9DFF
          B4FFA0FFB9FFA2FFBBFFA3FFBCFFA5FFBEFFB0FFC6FF0C8D20A66B2055CA7C61
          AAFF6856AFFF6058BCFF5555C5FF4C50CBFF5960D9FF7875C6FF69BB6CFF9BFF
          B5FF9CFFB6FF9DFFB7FFA0FFB9FFA2FFBBFFA8FFBFFF279D3BC8B83A27C9FFC9
          A2FFFFC8A0FFFFCBA4FFFFD1ACFFFFD3B5FFFCC1B6FFE8A8A2FFBC573EFFA9E7
          A2FF99FFB4FF9AFFB5FF9CFFB6FF9FFFB7FFA4FFBDFF279D3BC8AA1F0CA7FFCA
          A4FFFFC69CFFFFC89FFFFFCAA2FFFFCCA5FFFFCFA9FFFFD1ACFFFFCAAAFFC459
          42FFABD294FF98FFB3FF99FFB4FF9BFFB5FFA8FFBEFF0B8D20A6A0140163FDA0
          80FFFFC498FFFFC69BFFFFC79DFFFFC9A1FFFFCBA4FFFFCEA8FFFFD0ABFFFFD0
          ADFFCE634CFFADB883FF97FFB3FF98FFB3FF81EB97FF018616626D0D010DC54D
          38EBFFC59AFFFFC297FFFFC59AFFFFC79DFFFFC9A0FFFFCBA3FFFFCEA6FFFFD0
          AAFFFFD2AFFFDA755CFFAD9B6DFF9DFFB7FF38AC4CEA0161100C00000000A214
          015FEB886DFFFFC196FFFFC297FFFFC499FFFFC69CFFFFC8A0FFFFCAA2FFFFCC
          A5FFFFCFA9FFFFD2AEFFE88C72FF92683DFF0584165D00000000000000000000
          0000A6170487EC886CFFFFC499FFFFC196FFFFC498FFFFC69BFFFFC79FFFFFC9
          A1FFFFCBA4FFFFD1ACFFEB8F77FFA41804890000000000000000000000000000
          000000000000A314015FC54D38EBFD9F7FFFFFC8A0FFFFC69CFFFFC89FFFFFCC
          A8FFFDA487FFC54E3AEAA414025F000000000000000000000000000000000000
          00000000000000000000740E010CA3140163AA1E0BA6B83926C9B83927C9AA1E
          0CA6A3140163780E010C00000000000000000000000000000000}
      end
      object chbWithPacked: TCheckBox
        Left = 18
        Top = 44
        Width = 225
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1089' '#1091#1087#1072#1082#1086#1074#1072#1085#1085#1099#1084#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = chbWithPackedClick
      end
    end
    object chbWithoutPacked: TCheckBox
      Left = 875
      Top = 29
      Width = 225
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1073#1077#1079' '#1091#1087#1072#1082#1086#1074#1072#1085#1085#1099#1093' + '#1084#1072#1096#1080#1085#1099
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 1
      OnClick = chbWithoutPackedClick
    end
    object Panel12: TPanel
      Left = 777
      Top = 5
      Width = 95
      Height = 57
      Anchors = [akTop, akRight]
      BevelKind = bkFlat
      BevelOuter = bvNone
      Color = 16484996
      ParentBackground = False
      TabOrder = 2
      DesignSize = (
        91
        53)
      object cbPrintAll: TCheckBox
        Left = 1
        Top = 30
        Width = 76
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1094#1077#1083#1080#1082#1086#1084
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object btnPrint: TButton
        Left = 1
        Top = 3
        Width = 82
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #1055#1077#1095#1072#1090#1100
        TabOrder = 1
        OnClick = btnPrintClick
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 1179
    Height = 28
    Align = alTop
    Caption = #1057#1087#1080#1089#1086#1082' '#1090#1080#1087#1086#1074' '#1080' '#1087#1086#1076#1090#1080#1087#1086#1074' '#1094#1074#1077#1090#1086#1074' '#1080' '#1080#1093' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074' '#1079#1072#1082#1072#1079#1077
    Color = clMedGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
  end
  object Panel6: TPanel
    Left = 0
    Top = 433
    Width = 1179
    Height = 183
    Align = alClient
    BorderWidth = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object DBGridEh1: TDBGridEh
      Left = 5
      Top = 5
      Width = 1169
      Height = 173
      Align = alClient
      AllowedOperations = [alopUpdateEh, alopAppendEh]
      AutoFitColWidths = True
      Ctl3D = False
      DataGrouping.GroupLevels = <>
      DataSource = DM.q_raznos_ds
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
      PopupMenu = PopupMenu1
      RowDetailPanel.Color = clBtnFace
      STFilter.Local = True
      STFilter.Visible = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Pitch = fpFixed
      TitleFont.Style = []
      OnDrawColumnCell = DBGridEh1DrawColumnCell
      OnKeyPress = DBGridEh1KeyPress
      Columns = <
        item
          Alignment = taLeftJustify
          AutoFitColWidth = False
          Checkboxes = True
          EditButtons = <>
          FieldName = 'ZATIRKA'
          Footer.Alignment = taCenter
          Footer.FieldName = 'ZATIRKA'
          Footer.ValueType = fvtCount
          Footers = <>
          KeyList.Strings = (
            '1'
            '0')
          MaxWidth = 60
          MinWidth = 60
          Title.Alignment = taCenter
          Title.Caption = #1047#1072#1090#1080#1088#1082#1072
          Title.TitleButton = True
          Width = 60
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'HOL_TYPE'
          Footers = <>
          MaxWidth = 80
          MinWidth = 60
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #1043#1086#1083'. '#1090#1080#1087
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'F_TYPE'
          Footer.FieldName = 'N_ID'
          Footer.ValueType = fvtCount
          Footers = <>
          ReadOnly = True
          Title.Caption = #1058#1080#1087
          Title.TitleButton = True
          Visible = False
          Width = 120
        end
        item
          EditButtons = <>
          FieldName = 'HOL_SUB_TYPE'
          Footers = <>
          ReadOnly = True
          Title.Caption = #1055#1086#1076#1090#1080#1087
          Title.TitleButton = True
          Width = 120
        end
        item
          EditButtons = <>
          FieldName = 'H_NAME'
          Footers = <>
          ReadOnly = True
          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
          Title.TitleButton = True
          Width = 150
        end
        item
          EditButtons = <>
          FieldName = 'COMPILED_NAME_OTDEL'
          Footers = <>
          ReadOnly = True
          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1088#1091#1089'.'
          Title.TitleButton = True
          Width = 150
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'COUNTRY'
          Footers = <>
          ReadOnly = True
          Title.Caption = #1057#1090#1088#1072#1085#1072
          Title.TitleButton = True
          Visible = False
          Width = 120
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
          Title.TitleButton = True
          Width = 50
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'SUM_N'
          Footer.FieldName = 'SUM_N'
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1083'-'#1074#1086
          Title.TitleButton = True
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
          Title.TitleButton = True
          Width = 70
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'TRUCK'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #1052#1072#1096#1080#1085#1072
          Title.TitleButton = True
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'NICK'
          Footers = <>
          ReadOnly = True
          Title.TitleButton = True
          Visible = False
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'SUM_DIR'
          Footer.FieldName = 'SUM_DIR'
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #1044#1080#1088'-'#1088
          Title.TitleButton = True
          Width = 70
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'SUM_PACK'
          Footer.FieldName = 'SUM_PACK'
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #1059#1087#1072#1082#1086#1074'.'
          Title.TitleButton = True
          Width = 70
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'SUM_CORR'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1088#1088#1077#1082#1094#1080#1103
          Title.TitleButton = True
          Width = 70
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'SUM_ITOG'
          Footer.Font.Charset = DEFAULT_CHARSET
          Footer.Font.Color = clWindowText
          Footer.Font.Height = -13
          Footer.Font.Name = 'Arial'
          Footer.Font.Pitch = fpFixed
          Footer.Font.Style = [fsBold]
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #1048#1090#1086#1075#1086
          Title.TitleButton = True
          Width = 70
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'REMARKS'
          Footers = <>
          ReadOnly = True
          Width = 120
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 616
    Width = 1179
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
    TabOrder = 4
    DesignSize = (
      1179
      33)
    object Label1: TLabel
      Left = 176
      Top = 3
      Width = 320
      Height = 13
      Caption = 'Alt + '#1085#1086#1084#1077#1088' '#1084#1072#1096#1080#1085#1099' - '#1073#1099#1089#1090#1088#1086#1077' '#1087#1077#1088#1077#1082#1083#1102#1095#1077#1085#1080#1077' '#1084#1077#1078#1076#1091' '#1084#1072#1096#1080#1085#1072#1084#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 176
      Top = 18
      Width = 202
      Height = 13
      Caption = 'Alt + 0 - '#1089#1087#1080#1089#1086#1082' '#1085#1077#1088#1072#1079#1085#1077#1089#1077#1085#1085#1099#1093' '#1087#1086#1079#1080#1094#1080#1081
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 392
      Top = 18
      Width = 105
      Height = 13
      Caption = 'Alt + = - '#1074#1077#1089#1100' '#1089#1087#1080#1089#1086#1082
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object lblEditing: TLabel
      Left = 881
      Top = 2
      Width = 133
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1055#1086#1083#1103' '#1076#1083#1103' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103
      Color = 12189695
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 670
    end
    object lblDisableEditing: TLabel
      Left = 864
      Top = 15
      Width = 150
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1053#1077#1090' '#1074#1086#1079#1084#1086#1078#1085#1086#1089#1090#1080' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      Color = 14737632
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 653
    end
    object Label4: TLabel
      Left = 531
      Top = 9
      Width = 155
      Height = 14
      Caption = #1050#1086#1083'-'#1074#1086' + '#1044#1080#1088'-'#1088' = '#1048#1090#1086#1075#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn13: TBitBtn
      Left = 1020
      Top = 4
      Width = 154
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
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn13Click
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
    object BitBtn2: TBitBtn
      Left = 384
      Top = 1
      Width = 41
      Height = 28
      Cursor = crHandPoint
      Caption = #1055#1086#1084#1077#1089#1090#1080#1090#1100' '#1074' '#1084#1072#1096#1080#1085#1091'  (F3)'
      TabOrder = 1
      Visible = False
      OnClick = BitBtn2Click
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        0800000000004002000000000000000000000001000000010000000000000101
        0100020202000303030004040400050505000606060007070700080808000909
        09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
        1100121213001314150014181900161A1D00161C1F00171E2100171F23001820
        250018212600192228001923290019242A001A252B001A262D001A272E001A28
        2E001A282F001A282F0019272F0019272F0018272F0018272F0018272F001727
        2F0017273000172730001727300016273000162730001628300016293300162B
        3500162C3600162C3700162C3700172C3600182B3500192A33001A2B33001B2C
        34001C2D35001E2E36002131380025353D0028373F002A3A42002C3C4400303C
        4200353D4100393F41003C4043003F4244004344450047474700484848004949
        49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
        510052525200535353005454540055555500565656005B57580061595A00695C
        5C00775F5F0086616300926465009B656600A0666600A2676700A3676700A467
        6600A4686600A5696500A56A6400A56A6400A66B6300A66B6300A56A6400A66B
        6300A66B6200A66B6200A66A6200A66A6200A6696200A6686200A76A6200A96D
        6400AA6F6600AB726800AB746A00AB786C00B07D6E00B1837100B4887400B98D
        7500BD907600C1937700C4957800C8967700CC977500CE977300D0977200D499
        7000D69B7300D99F7400DDA37500DFA67700E2AC7A00E5B27D00E7B87F00E9BA
        8000EABC8100EBBF8300EDC38600EEC68800EEC78B00EEC99000EECA9200EFCB
        9600EFCC9A00EFCD9E00EFCEA100EFCFA400EFD0A800F0D2AD00EFD2B000EFD3
        B200EFD4B300EFD5B500F0D7B800F0D8BC00F1DABF00F2DCC300F2DFC900F5E2
        CD00F6E5D100F7E8D500F8EAD800F9ECDD00FAEEE100FAF0E600FBF2EA00FBF3
        EC00FBF5EF00FCF7F200FDF9F600FDFCFA00FCFBFA00FAFBFB00F8FBFB00F4FA
        FB00EFF8FB00EAF6FA00E6F4F900DFF1F800DAEFF700D7EEF700D2EBF600D1EA
        F600D2E8F600D5E3F600D7D7F700DCBDF800E19EF900E772FA00EF45FB00F81B
        FD00FE01FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00F511
        FC00E533F800C76AF200B095EB00A3AFE8009BBEE60098C7E60094C8E50091C9
        E4008FC8E3008AC6E20082C2DF0075BCDC006BB6DA0065B3D70061B0D4005DAC
        D00056A9CE0051A7CF004EA4CC004BA1C900479CC4004499C0004196BE003E93
        BA003B8FB700398DB500348AB3003188B2002D85AF002882AC00237FAA00227D
        A8001F7AA5001C77A2001A75A00016729D00126F9B000C6B9800096997000767
        9500056694000566940005669400056694000566940005669400C9C9C9C9C9C9
        C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9FCFCFCC9C9FCFCFCFCFCC9C9C9C9
        C9C9FCFCFCFCFCC9C9C9FCEEF2FCFCF6E7E7E8FCC930C91BC940F7ECEAEDFCC9
        C9C9FCE5E5F8EFF0D7D7D7FCFC18FC3CFC40F1D9D9D9FCC9C9C9FCE3E3F3E6EE
        B6B6B6FCE94040F63FEBEEB5B5B5FCC9C9C9FCD9D9EAF4F1D8D8D8FC40FC19FC
        16FCF0D7D7D7FCC9C9C9FCB8D7F2FCF3DFDFE6FC2FC91AC934C9F6E0DEDEFCC9
        C9C9FCFCFCFCF8E8E4F0FCC9C9C9C9C9C9C9C9F8E9E3EFFCC9C9C9C9FCF3DEE1
        F6C9C9C9C9C9C9C9C9C9C9C9FCEFDEE7F7C9C9C9FCBBDBF7C9C9C9C9C9C9C9C9
        C9C9C9C9C9FCF3D7DBFCC9C9FCB1E1FCC9616161616161616161616161C9FCD7
        B2FCC9C9FCB3E1FCC961A39C9794918D8C8C8D8C61C9FCD7B3FCC9C9FCB6E1FC
        C961A49E9B9693908B8A8C8C61C9FCD7B5FCC9C9FCB8E2FCC961A5A09E9C9693
        908C8C8C61C9FCD9B8FCC9C9FCB9E2FCC974A7A2A19F9C9693908E8C61C9FCDB
        B9FCC9C9FCB9E2FCC974ADA4A3A19F9C9693918E61C9FCDBB9FCC9C9FCB9E2FC
        C977ADA7A7A4A19F9C96949161C9FCDBB9FCC9C9FCFCE2FCC980ADABABA7A4A1
        9F9C979461C9FCDBFCFCC9C9C9C9FCFCC980ADADADABA7A3A2A19C7C61C9FCFC
        C9C9C9C9C9C9C9C9C983ADADADADABA7A2877A7661C9C9C9C9C9C9C9C9C9C9C9
        C983ADADADADADADA06A6A6A70C9C9C9C9C9C9C9C9C9C9C9C986ADADADADADAD
        BC6A8181C9C9C9C9C9C9C9C9C9C9C9C9C986AAAAAAAAAAAA9B6A76C9C9C9C9C9
        C9C9C9C9C9C9C9C9C986808080808080806AC9C9C9C9C9C9C9C9}
    end
    object ComboBox3: TcxImageComboBox
      Left = 431
      Top = 1
      EditValue = 0
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items = <
        item
          Description = #1042#1099#1073#1077#1088#1080#1090#1077' '#8470' '#1084#1072#1096#1080#1085#1099
          ImageIndex = 0
          Value = 0
        end
        item
          Description = '1'
          Value = 1
        end
        item
          Description = '2'
          Value = 2
        end
        item
          Description = '3'
          Value = 3
        end
        item
          Description = '4'
          Value = 4
        end
        item
          Description = '5'
          Value = 5
        end
        item
          Description = '6'
          Value = 6
        end
        item
          Description = '7'
          Value = 7
        end
        item
          Description = '8'
          Value = 8
        end
        item
          Description = '9'
          Value = 9
        end>
      Style.BorderStyle = ebsOffice11
      TabOrder = 2
      Visible = False
      Width = 89
    end
    object cb_truck: TcxImageComboBox
      Left = 5
      Top = 5
      Cursor = crHandPoint
      EditValue = 99
      Properties.DropDownRows = 11
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items = <
        item
          Description = #1041#1077#1079' '#1084#1072#1096#1080#1085#1099
          ImageIndex = 0
          Value = 0
        end
        item
          Description = '1'
          Value = 1
        end
        item
          Description = '2'
          Value = 2
        end
        item
          Description = '3'
          Value = 3
        end
        item
          Description = '4'
          Value = 4
        end
        item
          Description = '5'
          Value = 5
        end
        item
          Description = '6'
          Value = 6
        end
        item
          Description = '7'
          Value = 7
        end
        item
          Description = '8'
          Value = 8
        end
        item
          Description = '9'
          Value = 9
        end
        item
          Description = #1042#1089#1077
          Value = 99
        end>
      Properties.OnEditValueChanged = cb_truckPropertiesEditValueChanged
      Style.BorderStyle = ebsOffice11
      TabOrder = 3
      Width = 164
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 405
    Width = 1179
    Height = 28
    Align = alTop
    Caption = #1057#1087#1080#1089#1086#1082' '#1094#1074#1077#1090#1086#1074' '#1080' '#1080#1093' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074' '#1079#1072#1082#1072#1079#1077
    Color = clMedGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
  end
  object Panel5: TPanel
    Left = 0
    Top = 93
    Width = 1179
    Height = 308
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 521
      Top = 1
      Height = 306
      Color = clBlack
      ParentColor = False
      ExplicitLeft = 437
      ExplicitHeight = 226
    end
    object Panel7: TPanel
      Left = 1
      Top = 1
      Width = 520
      Height = 306
      Align = alLeft
      BevelOuter = bvNone
      BorderWidth = 1
      Color = clMedGray
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 0
      object DBGridEh2: TDBGridEh
        Left = 1
        Top = 29
        Width = 518
        Height = 276
        Align = alClient
        AutoFitColWidths = True
        Ctl3D = False
        DataGrouping.GroupLevels = <>
        DataSource = DM.q_raznos_t_DS
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
        ReadOnly = True
        RowDetailPanel.Color = clBtnFace
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Arial'
        TitleFont.Pitch = fpFixed
        TitleFont.Style = []
        OnDrawColumnCell = DBGridEh2DrawColumnCell
        OnKeyPress = DBGridEh2KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'F_TYPE'
            Footer.FieldName = 'FT_ID'
            Footer.ValueType = fvtCount
            Footers = <>
            Title.Caption = #1058#1080#1087
            Title.TitleButton = True
            Width = 101
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'QQQ'
            Footer.FieldName = 'QQQ'
            Footer.ValueType = fvtSum
            Footers = <>
            MaxWidth = 80
            MinWidth = 80
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1083'-'#1074#1086
            Title.TitleButton = True
            Width = 80
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'QQQ_ITOG'
            Footer.FieldName = 'QQQ_ITOG'
            Footer.ValueType = fvtSum
            Footers = <>
            MaxWidth = 80
            MinWidth = 80
            Title.Alignment = taCenter
            Title.Caption = #1048#1090#1086#1075#1086
            Title.TitleButton = True
            Width = 80
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'WEIGHT'
            Footer.FieldName = 'WEIGHT'
            Footer.ValueType = fvtSum
            Footers = <>
            MaxWidth = 100
            MinWidth = 100
            Title.Alignment = taCenter
            Title.Caption = #1054#1073#1098#1077#1084
            Width = 100
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'TRUCK'
            Footers = <>
            MaxWidth = 80
            MinWidth = 80
            Title.Alignment = taCenter
            Title.Caption = #1052#1072#1096#1080#1085#1072
            Width = 80
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel9: TPanel
        Left = 1
        Top = 1
        Width = 518
        Height = 28
        Align = alTop
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 1
        Visible = False
        object BitBtn3: TBitBtn
          Left = 12
          Top = 0
          Width = 233
          Height = 28
          Cursor = crHandPoint
          Caption = #1055#1086#1084#1077#1089#1090#1080#1090#1100' '#1074' '#1084#1072#1096#1080#1085#1091'  (F4)'
          TabOrder = 0
          OnClick = BitBtn3Click
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            0800000000004002000000000000000000000001000000010000000000000101
            0100020202000303030004040400050505000606060007070700080808000909
            09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
            1100121213001314150014181900161A1D00161C1F00171E2100171F23001820
            250018212600192228001923290019242A001A252B001A262D001A272E001A28
            2E001A282F001A282F0019272F0019272F0018272F0018272F0018272F001727
            2F0017273000172730001727300016273000162730001628300016293300162B
            3500162C3600162C3700162C3700172C3600182B3500192A33001A2B33001B2C
            34001C2D35001E2E36002131380025353D0028373F002A3A42002C3C4400303C
            4200353D4100393F41003C4043003F4244004344450047474700484848004949
            49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
            510052525200535353005454540055555500565656005B57580061595A00695C
            5C00775F5F0086616300926465009B656600A0666600A2676700A3676700A467
            6600A4686600A5696500A56A6400A56A6400A66B6300A66B6300A56A6400A66B
            6300A66B6200A66B6200A66A6200A66A6200A6696200A6686200A76A6200A96D
            6400AA6F6600AB726800AB746A00AB786C00B07D6E00B1837100B4887400B98D
            7500BD907600C1937700C4957800C8967700CC977500CE977300D0977200D499
            7000D69B7300D99F7400DDA37500DFA67700E2AC7A00E5B27D00E7B87F00E9BA
            8000EABC8100EBBF8300EDC38600EEC68800EEC78B00EEC99000EECA9200EFCB
            9600EFCC9A00EFCD9E00EFCEA100EFCFA400EFD0A800F0D2AD00EFD2B000EFD3
            B200EFD4B300EFD5B500F0D7B800F0D8BC00F1DABF00F2DCC300F2DFC900F5E2
            CD00F6E5D100F7E8D500F8EAD800F9ECDD00FAEEE100FAF0E600FBF2EA00FBF3
            EC00FBF5EF00FCF7F200FDF9F600FDFCFA00FCFBFA00FAFBFB00F8FBFB00F4FA
            FB00EFF8FB00EAF6FA00E6F4F900DFF1F800DAEFF700D7EEF700D2EBF600D1EA
            F600D2E8F600D5E3F600D7D7F700DCBDF800E19EF900E772FA00EF45FB00F81B
            FD00FE01FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00F511
            FC00E533F800C76AF200B095EB00A3AFE8009BBEE60098C7E60094C8E50091C9
            E4008FC8E3008AC6E20082C2DF0075BCDC006BB6DA0065B3D70061B0D4005DAC
            D00056A9CE0051A7CF004EA4CC004BA1C900479CC4004499C0004196BE003E93
            BA003B8FB700398DB500348AB3003188B2002D85AF002882AC00237FAA00227D
            A8001F7AA5001C77A2001A75A00016729D00126F9B000C6B9800096997000767
            9500056694000566940005669400056694000566940005669400C9C9C9C9C9C9
            C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9FCFCFCC9C9FCFCFCFCFCC9C9C9C9
            C9C9FCFCFCFCFCC9C9C9FCEEF2FCFCF6E7E7E8FCC930C91BC940F7ECEAEDFCC9
            C9C9FCE5E5F8EFF0D7D7D7FCFC18FC3CFC40F1D9D9D9FCC9C9C9FCE3E3F3E6EE
            B6B6B6FCE94040F63FEBEEB5B5B5FCC9C9C9FCD9D9EAF4F1D8D8D8FC40FC19FC
            16FCF0D7D7D7FCC9C9C9FCB8D7F2FCF3DFDFE6FC2FC91AC934C9F6E0DEDEFCC9
            C9C9FCFCFCFCF8E8E4F0FCC9C9C9C9C9C9C9C9F8E9E3EFFCC9C9C9C9FCF3DEE1
            F6C9C9C9C9C9C9C9C9C9C9C9FCEFDEE7F7C9C9C9FCBBDBF7C9C9C9C9C9C9C9C9
            C9C9C9C9C9FCF3D7DBFCC9C9FCB1E1FCC9616161616161616161616161C9FCD7
            B2FCC9C9FCB3E1FCC961A39C9794918D8C8C8D8C61C9FCD7B3FCC9C9FCB6E1FC
            C961A49E9B9693908B8A8C8C61C9FCD7B5FCC9C9FCB8E2FCC961A5A09E9C9693
            908C8C8C61C9FCD9B8FCC9C9FCB9E2FCC974A7A2A19F9C9693908E8C61C9FCDB
            B9FCC9C9FCB9E2FCC974ADA4A3A19F9C9693918E61C9FCDBB9FCC9C9FCB9E2FC
            C977ADA7A7A4A19F9C96949161C9FCDBB9FCC9C9FCFCE2FCC980ADABABA7A4A1
            9F9C979461C9FCDBFCFCC9C9C9C9FCFCC980ADADADABA7A3A2A19C7C61C9FCFC
            C9C9C9C9C9C9C9C9C983ADADADADABA7A2877A7661C9C9C9C9C9C9C9C9C9C9C9
            C983ADADADADADADA06A6A6A70C9C9C9C9C9C9C9C9C9C9C9C986ADADADADADAD
            BC6A8181C9C9C9C9C9C9C9C9C9C9C9C9C986AAAAAAAAAAAA9B6A76C9C9C9C9C9
            C9C9C9C9C9C9C9C9C986808080808080806AC9C9C9C9C9C9C9C9}
        end
        object ComboBox1: TcxImageComboBox
          Left = 251
          Top = 2
          EditValue = 0
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <
            item
              Description = #1042#1099#1073#1077#1088#1080#1090#1077' '#8470' '#1084#1072#1096#1080#1085#1099
              ImageIndex = 0
              Value = 0
            end
            item
              Description = '1'
              Value = 1
            end
            item
              Description = '2'
              Value = 2
            end
            item
              Description = '3'
              Value = 3
            end
            item
              Description = '4'
              Value = 4
            end
            item
              Description = '5'
              Value = 5
            end
            item
              Description = '6'
              Value = 6
            end
            item
              Description = '7'
              Value = 7
            end
            item
              Description = '8'
              Value = 8
            end
            item
              Description = '9'
              Value = 9
            end>
          Style.BorderStyle = ebsOffice11
          TabOrder = 1
          Width = 169
        end
      end
    end
    object Panel8: TPanel
      Left = 524
      Top = 1
      Width = 654
      Height = 306
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 1
      Color = clMedGray
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      object DBGridEh3: TDBGridEh
        Left = 1
        Top = 29
        Width = 652
        Height = 276
        Align = alClient
        Ctl3D = False
        DataGrouping.GroupLevels = <>
        DataSource = DM.q_raznos_st_DS
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
        ReadOnly = True
        RowDetailPanel.Color = clBtnFace
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Arial'
        TitleFont.Pitch = fpFixed
        TitleFont.Style = []
        OnDrawColumnCell = DBGridEh3DrawColumnCell
        OnKeyPress = DBGridEh3KeyPress
        Columns = <
          item
            EditButtons = <>
            FieldName = 'HOL_SUB_TYPE'
            Footer.FieldName = 'FST_ID'
            Footer.ValueType = fvtCount
            Footers = <>
            MinWidth = 100
            Title.Caption = #1055#1086#1076#1090#1080#1087
            Title.TitleButton = True
            Width = 280
          end
          item
            EditButtons = <>
            FieldName = 'F_TYPE'
            Footers = <>
            Title.Caption = #1058#1080#1087
            Title.TitleButton = True
            Visible = False
            Width = 122
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'QQQ'
            Footer.FieldName = 'QQQ'
            Footer.ValueType = fvtSum
            Footers = <>
            MaxWidth = 70
            MinWidth = 70
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1083'-'#1074#1086
            Title.TitleButton = True
            Width = 70
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'QQQ_ITOG'
            Footer.FieldName = 'QQQ_ITOG'
            Footer.ValueType = fvtSum
            Footers = <>
            MaxWidth = 80
            MinWidth = 80
            Title.Alignment = taCenter
            Title.Caption = #1048#1090#1086#1075#1086
            Title.TitleButton = True
            Width = 80
          end
          item
            Alignment = taCenter
            AutoFitColWidth = False
            EditButtons = <>
            FieldName = 'WEIGHT'
            Footer.FieldName = 'WEIGHT'
            Footer.ValueType = fvtSum
            Footers = <>
            MaxWidth = 80
            MinWidth = 80
            Title.Alignment = taCenter
            Title.Caption = #1054#1073#1098#1077#1084
            Width = 80
          end
          item
            Alignment = taCenter
            EditButtons = <>
            FieldName = 'TRUCK'
            Footers = <>
            MaxWidth = 70
            MinWidth = 70
            Title.Alignment = taCenter
            Title.Caption = #1052#1072#1096#1080#1085#1072
            Width = 70
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel10: TPanel
        Left = 1
        Top = 1
        Width = 652
        Height = 28
        Align = alTop
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        Visible = False
        object BitBtn1: TBitBtn
          Left = 12
          Top = 0
          Width = 233
          Height = 28
          Cursor = crHandPoint
          Caption = #1055#1086#1084#1077#1089#1090#1080#1090#1100' '#1074' '#1084#1072#1096#1080#1085#1091'  (F2)'
          TabOrder = 0
          OnClick = BitBtn1Click
          Glyph.Data = {
            76060000424D7606000000000000360400002800000018000000180000000100
            0800000000004002000000000000000000000001000000010000000000000101
            0100020202000303030004040400050505000606060007070700080808000909
            09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
            1100121213001314150014181900161A1D00161C1F00171E2100171F23001820
            250018212600192228001923290019242A001A252B001A262D001A272E001A28
            2E001A282F001A282F0019272F0019272F0018272F0018272F0018272F001727
            2F0017273000172730001727300016273000162730001628300016293300162B
            3500162C3600162C3700162C3700172C3600182B3500192A33001A2B33001B2C
            34001C2D35001E2E36002131380025353D0028373F002A3A42002C3C4400303C
            4200353D4100393F41003C4043003F4244004344450047474700484848004949
            49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
            510052525200535353005454540055555500565656005B57580061595A00695C
            5C00775F5F0086616300926465009B656600A0666600A2676700A3676700A467
            6600A4686600A5696500A56A6400A56A6400A66B6300A66B6300A56A6400A66B
            6300A66B6200A66B6200A66A6200A66A6200A6696200A6686200A76A6200A96D
            6400AA6F6600AB726800AB746A00AB786C00B07D6E00B1837100B4887400B98D
            7500BD907600C1937700C4957800C8967700CC977500CE977300D0977200D499
            7000D69B7300D99F7400DDA37500DFA67700E2AC7A00E5B27D00E7B87F00E9BA
            8000EABC8100EBBF8300EDC38600EEC68800EEC78B00EEC99000EECA9200EFCB
            9600EFCC9A00EFCD9E00EFCEA100EFCFA400EFD0A800F0D2AD00EFD2B000EFD3
            B200EFD4B300EFD5B500F0D7B800F0D8BC00F1DABF00F2DCC300F2DFC900F5E2
            CD00F6E5D100F7E8D500F8EAD800F9ECDD00FAEEE100FAF0E600FBF2EA00FBF3
            EC00FBF5EF00FCF7F200FDF9F600FDFCFA00FCFBFA00FAFBFB00F8FBFB00F4FA
            FB00EFF8FB00EAF6FA00E6F4F900DFF1F800DAEFF700D7EEF700D2EBF600D1EA
            F600D2E8F600D5E3F600D7D7F700DCBDF800E19EF900E772FA00EF45FB00F81B
            FD00FE01FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
            FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00F511
            FC00E533F800C76AF200B095EB00A3AFE8009BBEE60098C7E60094C8E50091C9
            E4008FC8E3008AC6E20082C2DF0075BCDC006BB6DA0065B3D70061B0D4005DAC
            D00056A9CE0051A7CF004EA4CC004BA1C900479CC4004499C0004196BE003E93
            BA003B8FB700398DB500348AB3003188B2002D85AF002882AC00237FAA00227D
            A8001F7AA5001C77A2001A75A00016729D00126F9B000C6B9800096997000767
            9500056694000566940005669400056694000566940005669400C9C9C9C9C9C9
            C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9FCFCFCC9C9FCFCFCFCFCC9C9C9C9
            C9C9FCFCFCFCFCC9C9C9FCEEF2FCFCF6E7E7E8FCC930C91BC940F7ECEAEDFCC9
            C9C9FCE5E5F8EFF0D7D7D7FCFC18FC3CFC40F1D9D9D9FCC9C9C9FCE3E3F3E6EE
            B6B6B6FCE94040F63FEBEEB5B5B5FCC9C9C9FCD9D9EAF4F1D8D8D8FC40FC19FC
            16FCF0D7D7D7FCC9C9C9FCB8D7F2FCF3DFDFE6FC2FC91AC934C9F6E0DEDEFCC9
            C9C9FCFCFCFCF8E8E4F0FCC9C9C9C9C9C9C9C9F8E9E3EFFCC9C9C9C9FCF3DEE1
            F6C9C9C9C9C9C9C9C9C9C9C9FCEFDEE7F7C9C9C9FCBBDBF7C9C9C9C9C9C9C9C9
            C9C9C9C9C9FCF3D7DBFCC9C9FCB1E1FCC9616161616161616161616161C9FCD7
            B2FCC9C9FCB3E1FCC961A39C9794918D8C8C8D8C61C9FCD7B3FCC9C9FCB6E1FC
            C961A49E9B9693908B8A8C8C61C9FCD7B5FCC9C9FCB8E2FCC961A5A09E9C9693
            908C8C8C61C9FCD9B8FCC9C9FCB9E2FCC974A7A2A19F9C9693908E8C61C9FCDB
            B9FCC9C9FCB9E2FCC974ADA4A3A19F9C9693918E61C9FCDBB9FCC9C9FCB9E2FC
            C977ADA7A7A4A19F9C96949161C9FCDBB9FCC9C9FCFCE2FCC980ADABABA7A4A1
            9F9C979461C9FCDBFCFCC9C9C9C9FCFCC980ADADADABA7A3A2A19C7C61C9FCFC
            C9C9C9C9C9C9C9C9C983ADADADADABA7A2877A7661C9C9C9C9C9C9C9C9C9C9C9
            C983ADADADADADADA06A6A6A70C9C9C9C9C9C9C9C9C9C9C9C986ADADADADADAD
            BC6A8181C9C9C9C9C9C9C9C9C9C9C9C9C986AAAAAAAAAAAA9B6A76C9C9C9C9C9
            C9C9C9C9C9C9C9C9C986808080808080806AC9C9C9C9C9C9C9C9}
        end
        object ComboBox2: TcxImageComboBox
          Left = 249
          Top = 2
          EditValue = 0
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <
            item
              Description = #1042#1099#1073#1077#1088#1080#1090#1077' '#8470' '#1084#1072#1096#1080#1085#1099
              ImageIndex = 0
              Value = 0
            end
            item
              Description = '1'
              Value = 1
            end
            item
              Description = '2'
              Value = 2
            end
            item
              Description = '3'
              Value = 3
            end
            item
              Description = '4'
              Value = 4
            end
            item
              Description = '5'
              Value = 5
            end
            item
              Description = '6'
              Value = 6
            end
            item
              Description = '7'
              Value = 7
            end
            item
              Description = '8'
              Value = 8
            end
            item
              Description = '9'
              Value = 9
            end>
          Style.BorderStyle = ebsOffice11
          TabOrder = 1
          Width = 169
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 504
    Top = 40
    object alt_0: TAction
      Caption = 'alt_0'
      Hint = '0-'#1103' '#1084#1072#1096#1080#1085#1072
      ShortCut = 32816
      OnExecute = alt_0Execute
    end
    object alt_1: TAction
      Caption = 'alt_1'
      Hint = '1-'#1103' '#1084#1072#1096#1080#1085#1072
      ShortCut = 32817
      OnExecute = alt_1Execute
    end
    object alt_2: TAction
      Caption = 'alt_2'
      Hint = '2-'#1103' '#1084#1072#1096#1080#1085#1072
      ShortCut = 32818
      OnExecute = alt_2Execute
    end
    object alt_3: TAction
      Caption = 'alt_3'
      Hint = '3-'#1103' '#1084#1072#1096#1080#1085#1072
      ShortCut = 32819
      OnExecute = alt_3Execute
    end
    object alt_4: TAction
      Caption = 'alt_4'
      Hint = '4-'#1103' '#1084#1072#1096#1080#1085#1072
      ShortCut = 32820
      OnExecute = alt_4Execute
    end
    object alt_5: TAction
      Caption = 'alt_5'
      Hint = '5-'#1103' '#1084#1072#1096#1080#1085#1072
      ShortCut = 32821
      OnExecute = alt_5Execute
    end
    object alt_6: TAction
      Caption = 'alt_6'
      Hint = '6-'#1103' '#1084#1072#1096#1080#1085#1072
      ShortCut = 32822
      OnExecute = alt_6Execute
    end
    object alt_7: TAction
      Caption = 'alt_7'
      Hint = '7-'#1103' '#1084#1072#1096#1080#1085#1072
      ShortCut = 32823
      OnExecute = alt_7Execute
    end
    object aChengeGrid: TAction
      Caption = 'aChengeGrid'
      ShortCut = 16393
      OnExecute = aChengeGridExecute
    end
    object aF5: TAction
      Caption = 'aF5'
      Hint = #1047#1072#1075#1088#1091#1079#1082#1072' '#1087#1086' '#1084#1072#1096#1080#1085#1072#1084
      ShortCut = 116
      OnExecute = aTruckStatisticClick
    end
    object aF1: TAction
      Caption = 'aF1'
      Hint = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
      ShortCut = 112
      OnExecute = btnTotalStatisticClick
    end
    object aShowClients: TAction
      Caption = #1055#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1082#1083#1080#1077#1085#1090#1086#1074
      ShortCut = 114
      OnExecute = aShowClientsExecute
    end
    object alt_eq: TAction
      Caption = 'alt_eq'
      Hint = #1042#1077#1089#1100' '#1089#1087#1080#1089#1086#1082' '#1090#1086#1074#1072#1088#1072
      ShortCut = 32955
      OnExecute = alt_eqExecute
    end
    object aDeleteOnePos: TAction
      Caption = #1054#1073#1085#1091#1083#1080#1090#1100' '#1082#1086#1088#1088#1077#1082#1094#1080#1102
      ShortCut = 16430
      OnExecute = aDeleteOnePosExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 392
    Top = 417
    object aF31: TMenuItem
      Action = aShowClients
    end
    object mnCopyToClipBoard: TMenuItem
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1074' '#1073#1091#1092#1077#1088
      OnClick = mnCopyToClipBoardClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Caption = #1055#1086#1083#1086#1078#1080#1090#1100' '#1074#1089#1077' '#1074' '#1084#1072#1096#1080#1085#1091
      object N11: TMenuItem
        Tag = 1
        Caption = '1-'#1102
        OnClick = N11Click
      end
      object N21: TMenuItem
        Tag = 2
        Caption = '2-'#1102
        OnClick = N11Click
      end
      object N31: TMenuItem
        Tag = 3
        Caption = '3-'#1102
        OnClick = N11Click
      end
      object N41: TMenuItem
        Tag = 4
        Caption = '4-'#1102
        OnClick = N11Click
      end
      object N51: TMenuItem
        Tag = 5
        Caption = '5-'#1102
        OnClick = N11Click
      end
      object N61: TMenuItem
        Tag = 6
        Caption = '6-'#1102
        OnClick = N11Click
      end
      object N71: TMenuItem
        Tag = 7
        Caption = '7-'#1102
        OnClick = N11Click
      end
      object N81: TMenuItem
        Tag = 8
        Caption = '8-'#1102
        OnClick = N11Click
      end
    end
    object mnSetZatirka: TMenuItem
      Caption = #1058#1077#1082#1091#1097#1080#1084' '#1089#1084#1077#1085#1080#1090#1100' "'#1079#1072#1090#1080#1088#1082#1072'"'
      OnClick = mnSetZatirkaClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object mnClearAllCorrections: TMenuItem
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1089#1102' '#1082#1086#1088#1088#1077#1082#1094#1080#1102
      OnClick = mnClearAllCorrectionsClick
    end
    object mnClearAllTrucks: TMenuItem
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1089#1077' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077
      OnClick = mnClearAllTrucksClick
    end
    object mnClearCurrentCorrection: TMenuItem
      Action = aDeleteOnePos
    end
  end
end
