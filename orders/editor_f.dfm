object editor: Teditor
  Left = 280
  Top = 124
  Width = 864
  Height = 668
  Caption = ' '#1047#1072#1082#1072#1079' '#1082#1083#1080#1077#1085#1090#1072
  Color = clWhite
  Constraints.MinHeight = 550
  Constraints.MinWidth = 800
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 385
    Width = 856
    Height = 4
    Cursor = crVSplit
    Align = alTop
    Color = clBtnFace
    ParentColor = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 608
    Width = 856
    Height = 33
    Align = alBottom
    Color = clSkyBlue
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    OnResize = Panel2Resize
    object BitBtn13: TBitBtn
      Left = 684
      Top = 4
      Width = 171
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
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
    object BitBtn12: TBitBtn
      Left = 5
      Top = 4
      Width = 171
      Height = 25
      Cursor = crHandPoint
      Caption = #1059#1076#1072#1083#1080#1090#1100'  (F3)'
      TabOrder = 1
      OnClick = BitBtn12Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 856
    Height = 41
    Align = alTop
    Color = clBackground
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 3
    object Label9: TLabel
      Left = 292
      Top = 4
      Width = 58
      Height = 16
      Caption = #1050#1083#1080#1077#1085#1090':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 12
      Top = 4
      Width = 102
      Height = 16
      Caption = #1044#1072#1090#1072' '#1084#1072#1096#1080#1085#1099':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 120
      Top = 4
      Width = 52
      Height = 16
      AutoSize = True
      DataField = 'DATE_TRUCK'
      DataSource = DM.Q_ORDERS_F_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 12
      Top = 20
      Width = 86
      Height = 16
      Caption = #8470' '#1080#1085#1074#1086#1081#1089#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 120
      Top = 20
      Width = 52
      Height = 16
      AutoSize = True
      DataField = 'INVOICE'
      DataSource = DM.Q_ORDERS_F_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 368
      Top = 4
      Width = 52
      Height = 16
      AutoSize = True
      DataField = 'NICK'
      DataSource = DM.Q_ORDERS_ORDERS_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 456
      Top = 4
      Width = 52
      Height = 16
      AutoSize = True
      DataField = 'FIO'
      DataSource = DM.Q_ORDERS_ORDERS_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 292
      Top = 20
      Width = 54
      Height = 16
      Caption = #1054#1073#1098#1077#1084':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 368
      Top = 20
      Width = 52
      Height = 16
      AutoSize = True
      DataField = 'CAPACITY'
      DataSource = DM.Q_ORDERS_ORDERS_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 425
    Width = 856
    Height = 183
    Align = alClient
    BorderWidth = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object DBGridEh2: TDBGridEh
      Left = 6
      Top = 6
      Width = 844
      Height = 171
      Align = alClient
      AutoFitColWidths = True
      Ctl3D = False
      DataSource = DM.CLIENT_ORDER_DS
      FixedColor = clMoneyGreen
      Flat = True
      FooterColor = clMoneyGreen
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Pitch = fpFixed
      FooterFont.Style = []
      FooterRowCount = 1
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
      ParentCtl3D = False
      STFilter.Visible = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Pitch = fpFixed
      TitleFont.Style = []
      OnKeyPress = DBGridEh2KeyPress
      Columns = <
        item
          Alignment = taCenter
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'QUANTITY'
          Footer.Alignment = taLeftJustify
          Footer.FieldName = 'QUANTITY'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1050#1086#1083'-'#1074#1086
          Title.TitleButton = True
          Width = 52
        end
        item
          EditButtons = <>
          FieldName = 'F_NAME_RU'
          Footer.Alignment = taRightJustify
          Footer.Value = #1042#1089#1077#1075#1086' '#1074' '#1079#1072#1082#1072#1079#1077':'
          Footer.ValueType = fvtStaticText
          Footers = <>
          ReadOnly = True
          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' ('#1088#1091#1089'.)'
          Title.TitleButton = True
          Width = 126
        end
        item
          EditButtons = <>
          FieldName = 'F_NAME'
          Footer.FieldName = 'ID_ORDERS_LIST'
          Footer.ValueType = fvtCount
          Footers = <>
          ReadOnly = True
          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' ('#1075#1086#1083'.)'
          Title.TitleButton = True
          Width = 138
        end
        item
          EditButtons = <>
          FieldName = 'F_TYPE'
          Footers = <>
          ReadOnly = True
          Title.Caption = #1058#1080#1087
          Title.TitleButton = True
          Width = 150
        end
        item
          EditButtons = <>
          FieldName = 'COLOUR'
          Footers = <>
          Title.Caption = #1062#1074#1077#1090
          Title.TitleButton = True
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'COUNTRY'
          Footers = <>
          ReadOnly = True
          Title.Caption = #1057#1090#1088#1072#1085#1072
          Title.TitleButton = True
          Width = 145
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
          Width = 55
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'PACK'
          Footers = <>
          ReadOnly = True
          Title.Alignment = taCenter
          Title.Caption = #1059#1087#1072#1082#1086#1074#1082#1072
          Title.TitleButton = True
          Width = 75
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 389
    Width = 856
    Height = 36
    Align = alTop
    Color = clMedGray
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    object Label3: TLabel
      Left = 8
      Top = 8
      Width = 111
      Height = 16
      Caption = #1047#1072#1082#1072#1079' '#1082#1083#1080#1077#1085#1090#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 586
      Top = 4
      Width = 33
      Height = 30
      Cursor = crHandPoint
      Hint = 'Ctrl+Enter ('#1047#1072#1087#1080#1089#1072#1090#1100')'
      Enabled = False
      Flat = True
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        0800000000004002000000000000000000000001000000010000000000000101
        010002020200030303000B05030014080400280C04003D110300561602006619
        0200701B0100761C01007B1D00007E1D00007F1D0000801D0000801D0000801D
        0000801D0000801D0000801D00007F1D00007F1D01007E1D02007E1D02007D1D
        03007C1D04007A1D0500791D0600781D0700781E07007B1E0500781E0700781E
        0700781E0700791E0700791E0700791E0600791E0600791E06007A1E05007A1E
        05007B1E04007C1E03007C1E02007D1E02007A1F0300781F0500742007007022
        0A006A230E00652512005F271600572A1C004F2E230048312A0045332D004135
        32003E3836003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
        410042424200464343004B4544004F46460053484700564948005B4A4900644D
        4A006E4E4B00754F4C007A504C007C514C007E514C007F514C0081514C008353
        4E008555500087575200895954008B5B56008D5C57008E5D58008E5D59008F5E
        5A00915F5A0094615C0096635D0098655E009B6660009D6761009F696100A16A
        6400A46C6500A8706600AD756700B27A6800B77F6900BE856A00C58A6B00C98D
        6B00CB8F6C00CC906C00CD926E00CD947000CF977200D09A7300D19D7500D2A0
        7700D5A67B00D9AE8200DBB58900DEB98D00DFBC9000E0BE9400E2C09600E4C2
        9600E9C59500EAC59300EBC49000EBC38D00EBC28900EAC08500EABF8300EABF
        8100E9BE8000E9BD7F00E9BD7E00E9BB7B00EAB97700EAB56F00EBB16700ECAC
        5C00ECA55000ED9F4D00EF8E5700F3766900F55F8100F743A100F92EBC00FA1E
        D100FC12E200FD07F300FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FD00FE00EC02FE00DB04FE00B30AFD008011FC005916FB00361A
        FA001E1DFA000E1FFA000520F9000220F9000220F900011FF900011FF700011F
        F700011FF600011FF7000220F7000220F8000423F9000827F9000C2CF8001333
        F8001B3BF9002343FA002B4AF9003553FA004361FA00506CFA00607AFB007C91
        FB0094A6FC00A4B4FC00B1BFFC00C2CDFC00D0D9FD00DDE3FD00E5E9FD00EBEF
        FE00EEF1FE00F3F5FE00F8F9FE00FAFBFE00FCFDFE00FEFEFE00FEFEFE00FEFE
        FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFD00FEFDFC00FEFDFC00FDFC
        FA00FDFAF700FCF8F500FCF7F300FCF7F200FCF6F100FBF6F000FBF6EF00FBF5
        EE00FBF4ED00FBF4EB00FAF2E800F9F0E400F9EEE100F8EDDF00F8EBDC00F7E9
        D800F5E6D400F5E4D200F4E3CF00F4E1CD00F3E0CB00F1DDC800F1DBC600EFDA
        C400EFD9C300EFD8C000EFD7BD00EED5BA00EFD4B400EFD4B4009F9F9F9F9F9F
        9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F5C5858585858585858585858
        585858585858509F9F9F9F9F5DFEFFFFFE7A7A7C7E808181818181818181509F
        9F9F9F9F5DFDFCFFFEFE7A7A7C7E8083838383838184509F9F9F9F9F5DFBF6FC
        FFFEFE7A7A7C7E80838383838184509F9F9F9F9F5DF9F5FB1414141414141414
        141414838184509F9F9F9F9F5DF6F4F614DADADADACEC3D1DADA14838184509F
        9F9F9F9F5EF3F1F414DADADACABFB7CADADA14838184509F9F9F9F9F60F2EEF2
        14DADAC7B7B7B7C1DADA14838184509F9F9F9F9F61EFECF014D1C3B7B7C7BFB7
        CADA147E8084509F9F9F9F9F63ECE8ED14C1B7BFCADAC8B7C1DA147C7E83509F
        9F9F9F9F64E7E2EB14CAC3CDDADAD1BFB7C8147A7C7F509F9F9F9F9F64E4DBE4
        14DADADADADADACAB7B7337A7A7D509F9F9F9F9F65E4DBDE14DADADADADADADA
        C5B7BA787A7B509F9F9F9F9F66E4DBDB14DADADADADADADAD1C3B7C2FE7A509F
        9F9F9F9F67E4DBDB14141414141414141433BAB7B774509F9F9F9F9F68E4DBDB
        DBDBDEE5ECEEF0F2F5F7FCB7B7B7B79F9F9F9F9F68E4DBDBDBDBDBE1E5EBEEF1
        F2F1FD73B7B7B7B7B79F9F9F6CE4DBDBDBDBDBDBDEE5ECECFA5F5F5F5F5FB7B7
        B79F9F9F6EE3DBDBDBDBDBDBDBE1E5E8785F718B8C8C629F9F9F9F9F6FE3DBDB
        DBDBDBDBDBDBE1E2FD5F878A8B629F9F9F9F9F9F6FE3DBDBDBDBDBDBDBDBDBDB
        FB5F878A629F9F9F9F9F9F9F6FDADBDBDBDBDBDBDBDBDBDBFA5F87629F9F9F9F
        9F9F9F9F6A6A6A6A6A6A6A6A6A6A6A6A6A5F629F9F9F9F9F9F9F}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 392
      Top = 4
      Width = 30
      Height = 30
      Cursor = crHandPoint
      Hint = 'Ctrl+Enter ('#1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1079#1080#1094#1080#1102')'
      Flat = True
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        0800000000004002000000000000000000000001000000010000045508000559
        0900055A0900076A0D00087310000A7C14000B8416000A9117000A9F180009AB
        180009B0180009B1180008B2180008B2190009B2190009B2190009B2190009B2
        190009B31A000AB31B000AB21C000BB21D000BB31E000CB31F000DB320000EB3
        230010B3260011B3280012B42A0013B42C0015B52F0017B6320018B7340019B8
        36001AB937001AB938001AB93A001BB93B001CB93E001DB93F001FB9410021B8
        430022B8450022B9470023BC490024BC4B0024BD4C0025BD4F0026BE500026BD
        510026BD510026BC510026BB510025B94F0024B54E0024AF4C0024A74A00259D
        4800279146002A8746002C8145002E794400316E4300356242003A5241003F47
        4100424242004343430044444400454545004646460047474700484848004949
        49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
        5100525252005353530054545400555555005656560057575700585858005959
        59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
        6100626262006363630064646400656565006666660067676700686868006969
        69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
        7100727272007373730074747400757575007676760077777700787878007979
        79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
        8100828282008383830084848400858585008686860087878700888888008989
        89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
        9100929292009393930094949400959595009696960097979700989898009999
        99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F0099A29A0094A4
        960085AA8D0076B0850061B777004FBB6C0045BE66003FBF62003CC05F0039C0
        5F0036C05F0034C1600034C1630034C2660035C2680038C46A003BC46C003FC5
        6F0043C6710047C772004AC974004CC9760050CA790051CB7D0052CC7F0052CC
        7F0053CC800055CD800058CD810059CE82005BCF83005ED0860061D1880063D1
        8A0065D28C0067D38F006BD393006FD4950072D5980075D6990079D79C007DD8
        9E0080D9A00084DAA10088DCA4008FDEA90096E0AD009DE1B000A1E3B300A5E4
        B500A7E5B800A9E5BA00ACE6BD00AFE7C100B3E9C600B6E9C800BAEBCB00BDEB
        CD00C0ECCE00C2EDD000C5EED100C9EFD400CEF0D900D5F2DE00DBF4E300E2F6
        E800E6F7EC00EBF9F000F2FBF500F8FDFA00FCFEFC00FDFEFD00FEFEFE00FEFE
        FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFCFE00FEF7
        FE00FEE5FE00FEBDFE00FE83FE00FE46FE00FE19FE00FE03FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FF00FF00F7F7F7F7F7F7
        F7F71313131313131313F7F7F7F7F7F7F7F7F7F7F7F7F7F71313A6BEC2BEB4B0
        AD380606F7F7F7F7F7F7F7F7F7F71313B2CCD1CFCBC2B7B0AFADAD380606F7F7
        F7F7F7F7F7132AC7D6DAD1C4B7B0B0AFAD33332D280606F7F7F7F7F7132ACBDD
        DCCCB7B7B7B0B0AFAD332D2825220603F7F7F7F713C7DDDECBB2B7B7BFE2E6CD
        AD333328201D1A03F7F7F713A5D7DFCDB7B7B7B7DFE6E6E6CC131313131A1309
        03F7F713CCDFD5B7B7B7B7D9E6E6E6E6E6D613131313131300F713A7D6DEC8B7
        B7B7D9E6E6E6E6E6E6E6D51313131313080013BEDCD7BAB7B7D9E6E6E6E6E6E6
        E6E6E6D413131313130013C4DCCEB2B7CEE6E6E6D4E2E6E2CDE3E6E6D2131313
        130013C4D9CBB0B7E6E6E6DAC2E4E6DDB4DAE6E6E6131313130013C2D6C8B0B7
        E6E6E2B2BFE6E6DD2DA8DFE6E4131313130013BED1C7B0B4C7D1BEA8C2E6E6DC
        2822A8CCA8131313130013A7CCC7B0B4B2B0A8ABC2E6E6DC22201D1A13131313
        09001339C2C4B0AD33332DADBEE6E6DC22131313131313130800F706B2B7B033
        332D2833BEE6E6DC1D1313131313131300F7F70639B0AD2D2D28252DBEE6E6DC
        1A1313131313130800F7F7F70637332A25252228B7E6E6DC1913131313131300
        F7F7F7F706062528251F1D25A8E4E6D11313131313130400F7F7F7F7F706061D
        221D19131313131313131313130400F7F7F7F7F7F7F703030619131313131313
        131313070000F7F7F7F7F7F7F7F7F7F7000005070913131308060000F7F7F7F7
        F7F7F7F7F7F7F7F7F7F70000000000000000F7F7F7F7F7F7F7F7}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object Label8: TLabel
      Left = 632
      Top = 8
      Width = 57
      Height = 16
      Caption = #1085#1072#1078#1084#1080#1090#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label11: TLabel
      Left = 696
      Top = 8
      Width = 100
      Height = 16
      Caption = 'CTRL+ENTER'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object SpeedButton1: TSpeedButton
      Left = 358
      Top = 4
      Width = 30
      Height = 30
      Cursor = crHandPoint
      Hint = 'Ctrl+Del ('#1042#1077#1088#1085#1091#1090#1100' '#1085#1072' '#1089#1082#1083#1072#1076' '#1087#1086#1079#1080#1094#1080#1102')'
      Flat = True
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        0800000000004002000000000000000000000001000000000000045508000559
        0900055A0900076A0D00087310000A7C14000B8416000A9117000A9F180009AB
        180009B0180009B1180008B2180008B2190009B2190009B2190009B2190009B2
        190009B31A000AB31B000AB21C000BB21D000BB31E000CB31F000DB320000EB3
        230010B3260011B3280012B42A0013B42C0015B52F0017B6320018B7340019B8
        36001AB937001AB938001AB93A001BB93B001CB93E001DB93F001FB9410021B8
        430022B8450022B9470023BC490024BC4B0024BD4C0025BD4F0026BE500026BD
        510026BD510026BC510026BB510025B94F0024B54E0024AF4C0024A74A00259D
        4800279146002A8746002C8145002E794400316E4300356242003A5241003F47
        4100424242004343430044444400454545004646460047474700484848004949
        49004A4A4A004B4B4B004C4C4C004D4D4D004E4E4E004F4F4F00505050005151
        5100525252005353530054545400555555005656560057575700585858005959
        59005A5A5A005B5B5B005C5C5C005D5D5D005E5E5E005F5F5F00606060006161
        6100626262006363630064646400656565006666660067676700686868006969
        69006A6A6A006B6B6B006C6C6C006D6D6D006E6E6E006F6F6F00707070007171
        7100727272007373730074747400757575007676760077777700787878007979
        79007A7A7A007B7B7B007C7C7C007D7D7D007E7E7E007F7F7F00808080008181
        8100828282008383830084848400858585008686860087878700888888008989
        89008A8A8A008B8B8B008C8C8C008D8D8D008E8E8E008F8F8F00909090009191
        9100929292009393930094949400959595009696960097979700989898009999
        99009A9A9A009B9B9B009C9C9C009D9D9D009E9E9E009F9F9F0099A29A0094A4
        960085AA8D0076B0850061B777004FBB6C0045BE66003FBF62003CC05F0039C0
        5F0036C05F0034C1600034C1630034C2660035C2680038C46A003BC46C003FC5
        6F0043C6710047C772004AC974004CC9760050CA790051CB7D0052CC7F0052CC
        7F0053CC800055CD800058CD810059CE82005BCF83005ED0860061D1880063D1
        8A0065D28C0067D38F006BD393006FD4950072D5980075D6990079D79C007DD8
        9E0080D9A00084DAA10088DCA4008FDEA90096E0AD009DE1B000A1E3B300A5E4
        B500A7E5B800A9E5BA00ACE6BD00AFE7C100B3E9C600B6E9C800BAEBCB00BDEB
        CD00C0ECCE00C2EDD000C5EED100C9EFD400CEF0D900D5F2DE00DBF4E300E2F6
        E800E6F7EC00EBF9F000F2FBF500F8FDFA00FCFEFC00FDFEFD00FEFEFE00FEFE
        FE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFEFE00FEFCFE00FEF7
        FE00FEE5FE00FEBDFE00FE83FE00FE46FE00FE19FE00FE03FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FF00FF00F7F7F7F7F7F7
        F7F70000000000000000F7F7F7F7F7F7F7F7F7F7F7F7F7F70000060813131309
        07050000F7F7F7F7F7F7F7F7F7F700000713131313131313131319060303F7F7
        F7F7F7F7F7000413131313131313131313191D221D0606F7F7F7F7F700041313
        13131313D1E6E4A8251D1F2528250606F7F7F7F70013131313131319DCE6E6B7
        282225252A333706F7F7F700081313131313131ADCE6E6BE2D25282D2DADB039
        06F7F700131313131313131DDCE6E6BE33282D3333B0B7B206F7000813131313
        13131322DCE6E6BEAD2D3333ADB0C4C239130009131313131A1D2022DCE6E6C2
        ABA8B0B2B4B0C7CCA7130013131313A8CCA82228DCE6E6C2A8BED1C7B4B0C7D1
        BE130013131313E4E6DFA82DDDE6E6BFB2E2E6E6B7B0C8D6C2130013131313E6
        E6E6DAB4DDE6E4C2DAE6E6E6B7B0CBD9C4130013131313D2E6E6E3CDE2E6E2D4
        E6E6E6CEB7B2CEDCC413001313131313D4E6E6E6E6E6E6E6E6E6D9B7B7BAD7DC
        BE1300081313131313D5E6E6E6E6E6E6E6D9B7B7B7C8DED6A713F70013131313
        1313D6E6E6E6E6E6D9B7B7B7B7D5DFCC13F7F70309131A13131313CCE6E6E6DF
        B7B7B7B7CDDFD7A513F7F7F7031A1D20283333ADCDE6E2BFB7B7B2CBDEDDC713
        F7F7F7F703062225282D33ADAFB0B0B7B7B7CCDCDDCB2A13F7F7F7F7F7060628
        2D3333ADAFB0B0B7C4D1DAD6C72A13F7F7F7F7F7F7F7060638ADADAFB0B7C2CB
        CFD1CCB21313F7F7F7F7F7F7F7F7F7F7060638ADB0B4BEC2BEA61313F7F7F7F7
        F7F7F7F7F7F7F7F7F7F71313131313131313F7F7F7F7F7F7F7F7}
      ParentShowHint = False
      ShowHint = True
      OnClick = BitBtn12Click
    end
    object Edit1: TEdit
      Left = 432
      Top = 5
      Width = 153
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083'-'#1074#1086'...'
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 109
    Width = 856
    Height = 276
    Align = alTop
    BorderWidth = 5
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 6
      Top = 6
      Width = 844
      Height = 264
      Align = alClient
      AutoFitColWidths = True
      Ctl3D = False
      DataSource = DM.Q_FLOWERS_DS
      FixedColor = clMoneyGreen
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = []
      FooterColor = clMoneyGreen
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Pitch = fpFixed
      FooterFont.Style = []
      FooterRowCount = 1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      STFilter.Visible = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Pitch = fpFixed
      TitleFont.Style = []
      OnKeyPress = DBGridEh1KeyPress
      Columns = <
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'STORE_ALL'
          Footers = <>
          MaxWidth = 60
          MinWidth = 60
          Title.Alignment = taCenter
          Title.Caption = #1057#1082#1083#1072#1076
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Pitch = fpFixed
          Title.Font.Style = []
          Width = 60
        end
        item
          EditButtons = <>
          FieldName = 'F_NAME_RU'
          Footer.Alignment = taRightJustify
          Footer.FieldName = 'N_ID'
          Footer.Value = #1055#1086#1079#1080#1094#1080#1081':'
          Footer.ValueType = fvtStaticText
          Footers = <>
          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' ('#1088#1091#1089'.)'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Pitch = fpFixed
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 112
        end
        item
          EditButtons = <>
          FieldName = 'F_NAME'
          Footer.FieldName = 'N_ID'
          Footer.ValueType = fvtCount
          Footers = <>
          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' ('#1075#1086#1083'.)'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Pitch = fpFixed
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 113
        end
        item
          EditButtons = <>
          FieldName = 'F_TYPE'
          Footers = <>
          STFilter.DataField = 'FT_ID'
          STFilter.KeyField = 'FT_ID'
          STFilter.ListField = 'F_TYPE'
          STFilter.ListSource = DM.Q_FLOWER_TYPE_DS
          Title.Caption = #1058#1080#1087
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Pitch = fpFixed
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 130
        end
        item
          EditButtons = <>
          FieldName = 'F_SUB_TYPE'
          Footers = <>
          Title.Caption = #1055#1086#1076#1090#1080#1087
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Pitch = fpFixed
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 105
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'COLOUR'
          Footers = <>
          Title.Caption = #1062#1074#1077#1090
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Pitch = fpFixed
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 110
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'LEN'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1044#1083#1080#1085#1072
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Pitch = fpFixed
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 49
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'PACK'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #1055#1072#1095#1082#1072
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Pitch = fpFixed
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 49
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          Checkboxes = False
          EditButtons = <>
          FieldName = 'VBN'
          Footers = <>
          ImageList = main.CheckImList
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Pitch = fpFixed
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 38
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'S_NAME_RU'
          Footers = <>
          STFilter.DataField = 'S_ID'
          STFilter.KeyField = 'S_ID'
          STFilter.ListField = 'S_NAME_RU'
          STFilter.ListSource = DM.Q_SUPPLIERS_DS
          Title.Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Pitch = fpFixed
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 100
        end
        item
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'COUNTRY'
          Footers = <>
          STFilter.DataField = 'C_ID'
          STFilter.KeyField = 'C_ID'
          STFilter.ListField = 'COUNTRY'
          STFilter.ListSource = DM.Q_COUNTRIES_DS
          Title.Caption = #1057#1090#1088#1072#1085#1072
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Pitch = fpFixed
          Title.Font.Style = []
          Title.TitleButton = True
          Width = 107
        end>
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 45
    Width = 856
    Height = 64
    Align = alTop
    Color = clCream
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
    object Label2: TLabel
      Left = 8
      Top = 14
      Width = 125
      Height = 13
      Caption = #1058#1080#1087' '#1094#1074#1077#1090#1082#1072' (Shift+F5 | F5)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 38
      Width = 143
      Height = 13
      Caption = #1055#1086#1076#1090#1080#1087' '#1094#1074#1077#1090#1082#1072' (Shift+F6 | F6)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 312
      Top = 14
      Width = 104
      Height = 13
      Caption = #1057#1090#1088#1072#1085#1072' (Shift+F7 | F7)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 312
      Top = 38
      Width = 126
      Height = 13
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082' (Shift+F8 | F8)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object BitBtn4: TBitBtn
      Left = 592
      Top = 1
      Width = 240
      Height = 30
      Cursor = crHandPoint
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' (F4)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn4Click
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000000000000000000000010000000100000C6403000C63
        03000D6603000C6C05000D75090011800F0014871300198E1A001F9420002599
        2500299C29002F992A0034962D0036912D00398C2F0039852F003C7C31004070
        2E0046632D004E5B2800584E24005D491F0062451C00674A1D006B4E1C007254
        1A0074581B00775722007B552C007E52350082563B00875B40008F6047009464
        4A009B6B4A009F714E00A3734F009F7355009E7359009B725F009B7363009675
        68008E766B008D7D6800888A64007C9C60006BAA5B005BB5540054BA510051BD
        500054C1540055C3560056C5570059C65A005DC75F0062C4630069BB6A007EAA
        7F00A476A400CB47CB00E622E500FA06FA00FD01FD00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
        FE00FF00FE00FE00FE00FE00FE00FE0EFC00FE39F700FE66F100FE8FEB00FDAD
        E700FDC2E500FCD1E400FCDEE200FCE7E100FCEEDF00FDF4DC00FDF9DC00FDFB
        DC00FEFDD800FEFDD200FEFDD100FEFDCF00FEFDCE00FEFDCE00FEFDCD00FEFD
        CC00FDFBCA00FCFAC800FDFAC700FCF8C400FCF6C100FBF3BD00FBF0B900F9ED
        B500F8E9B100F6E3AB00F5DEA400F2DAA300EFD4A000EDD19E00EBCE9D00EACC
        9A00EACA9700E8C79600E6C59700E2C29900DDBE9B00D9BC9E00D5BA9F00D1B7
        9F00C9B4A100BDAFA500A8A8AB00879CB3005E8BBB00437FBE003178C5002070
        C8001C6EC7001C6DC6001C6DC5001F6CC0002169B7001E6ABD001A6BC500196C
        C800186DCC001971D4001B74D8001C76DB001D78DD001F7BE000227EE1002683
        E4002987E6002C89E800308DEA003492EC003997ED004099E9004D99DF00599B
        D7006A9FCF0076A1C90087A5C1009EA9B500AEAEAE00AFAFAF00B0B0B000B1B1
        B100B2B2B200B3B3B300B4B4B400B5B5B500B6B6B600B7B7B700B8B8B800B9B9
        B900BABABA00B8BABB00B5B9BD00B3B9BE00B2B9BF00B0B9C000AEB9C100ADB9
        C200ACB9C300AABCC100A8BFC000A6C2BD00A3C5BA009FC8B4009BCAAC0099CA
        A50099CA9F009AC89D009CC29B009FB89A00A1B29700A9A68F00B09B8800B499
        8400B8998200BC9A8100BF9B8000C49C7E00C79D7D00CD9F7A00D3A07500D8A2
        7000DDA26D00E1A26800E8A46300ECA25B00EFA25600EDA15100EA9F4C00EB9C
        4800EC994400EC984200EA964000E8943D00E8933B00E8923700E88F3300EA8F
        3000EC8D2B00EE892400EE872000EE841C00EE831900EE811800EF801600F07E
        1400F07C1100F37A1000F1790F00F1760D00EF740B00EE710900ED6F0800EA6D
        0700E96C0700E66A0700E2680700DD650700D5620900D76208005A5A5A5A5A5A
        5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A2A122A5A5A5A5A5A5A5A5A5A5A5A5A5A5A
        5A5A5A5A5A5A2A9696395A5A5A5A5A5A5A22222222211F105A5A5A5A5A2A969C
        A68F5A5A5A5A5A242424242424220C0C0C0D5A5A2A969CA6A7A45A5A5AE9E5E5
        E9FEFEFE190205050F0E0F2A969CA6A7A45A5A5AE8E8EBF9FCFFFFFE01010101
        010229969AA6A7A55A5A5A5AEBF2F8F8F9FCFE29282929271E018F9AA6A6A45A
        5A5A5AEBF3F6F4F3F61920D187736D7FD21E2AACA88F5A5A5A5A5AF1F4F1EDEE
        132089696B6C6B6A6B85D127121D5A5A5A5AF4F1EDEBEA0513D1696974716E6E
        7979851F16171D5A5A5AF1EDEAE70D04207F696B716E6E6C7B837B2917161D5A
        5A5AEDEAE3E0090727736E716E6E6C6C7CDC7CD71D16175A5A5AEBE7DFE00B0A
        216A716E6E6E6B7683DC7C871D16165A5A5AEAE3DE2E313121736C6C6C6B767F
        DCDC7AD71501165A5A5AE7DFDC2F353720876B7474798283827979281401015A
        5A5AE3DEDB3638392C29747B83DCDC826769871D0102005A5A5A5AE02F3639CA
        CA26D2787C837E746989211900035A5A5A5A5A0C313739CBCB382529D7817D89
        291FFE1203035A5A5A5A5A5A313538393938330E121F1D1F20FEFE03035A5A5A
        5A5A5A5A5A3134363633310C0906041AF1F6FC025A5A5A5A5A5A5A5A5A5A3131
        31310C0A0706041AF1F8FA5A5A5A5A5A5A5A5A5A5A5A5A0B0A0A0907060504F2
        F6FA5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A07060604041AF55A5A5A5A5A5A5A5A
        5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A}
    end
    object BitBtn9: TBitBtn
      Left = 592
      Top = 30
      Width = 240
      Height = 30
      Cursor = crHandPoint
      Caption = #1042#1099#1082#1083#1102#1095#1080#1090#1100' '#1074#1089#1077' '#1092#1080#1083#1100#1090#1088#1099' (F12)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn9Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Spacing = 5
    end
    object ComboBox1: TDBComboBoxEh
      Left = 160
      Top = 8
      Width = 137
      Height = 22
      Cursor = crHandPoint
      AlwaysShowBorder = True
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = []
      Flat = True
      ParentFont = False
      TabOrder = 2
      Visible = True
      OnChange = ComboBox1Change
    end
    object ComboBox2: TDBComboBoxEh
      Left = 160
      Top = 32
      Width = 137
      Height = 22
      Cursor = crHandPoint
      AlwaysShowBorder = True
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = []
      Flat = True
      ParentFont = False
      TabOrder = 3
      Visible = True
      OnChange = ComboBox2Change
    end
    object ComboBox3: TDBComboBoxEh
      Left = 448
      Top = 8
      Width = 137
      Height = 22
      Cursor = crHandPoint
      AlwaysShowBorder = True
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = []
      Flat = True
      ParentFont = False
      TabOrder = 4
      Visible = True
      OnChange = ComboBox3Change
    end
    object ComboBox4: TDBComboBoxEh
      Left = 448
      Top = 32
      Width = 137
      Height = 22
      Cursor = crHandPoint
      AlwaysShowBorder = True
      DropDownBox.AutoDrop = True
      EditButtons = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = []
      Flat = True
      ParentFont = False
      TabOrder = 5
      Visible = True
      OnChange = ComboBox3Change
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 41
    Width = 856
    Height = 4
    Align = alTop
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 6
  end
  object ActionList1: TActionList
    Left = 568
    Top = 10
    object Action3: TAction
      Caption = 'Action3'
      ShortCut = 114
      OnExecute = Action3Execute
    end
    object Action4: TAction
      Caption = 'Action4'
      ShortCut = 115
      OnExecute = BitBtn4Click
    end
    object Action5: TAction
      Caption = 'Action5'
      ShortCut = 8308
      OnExecute = Action5Execute
    end
    object Action6: TAction
      Caption = 'Action6'
      ShortCut = 116
      OnExecute = Action6Execute
    end
    object Action7: TAction
      Caption = 'Action7'
      ShortCut = 8309
      OnExecute = Action7Execute
    end
    object Action8: TAction
      Caption = 'Action8'
      ShortCut = 117
      OnExecute = Action8Execute
    end
    object Action9: TAction
      Caption = 'Action9'
      ShortCut = 8310
      OnExecute = Action9Execute
    end
    object Action10: TAction
      Caption = 'Action10'
      ShortCut = 118
      OnExecute = Action10Execute
    end
    object Action11: TAction
      Caption = 'Action11'
      ShortCut = 8311
      OnExecute = Action11Execute
    end
    object Action12: TAction
      Caption = 'Action12'
      ShortCut = 119
      OnExecute = Action12Execute
    end
    object Action13: TAction
      Caption = 'Action13'
      ShortCut = 123
      OnExecute = BitBtn9Click
    end
    object Action14: TAction
      Caption = 'Action14'
      ShortCut = 16397
      OnExecute = Action14Execute
    end
    object Action15: TAction
      Caption = 'Action15'
      ShortCut = 27
      OnExecute = Action15Execute
    end
    object Action16: TAction
      Caption = 'Action16'
      ShortCut = 16393
      OnExecute = Action16Execute
    end
  end
end
