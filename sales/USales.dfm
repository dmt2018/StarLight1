object frmSales: TfrmSales
  Left = 0
  Top = 0
  Caption = ' '#1055#1088#1086#1076#1072#1078#1080
  ClientHeight = 609
  ClientWidth = 1052
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1052
    Height = 99
    Align = alTop
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      1052
      99)
    object DBText1: TDBText
      Left = 39
      Top = 5
      Width = 84
      Height = 20
      DataField = 'NICK'
      DataSource = DM.Q_CLIENTS_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 39
      Top = 23
      Width = 609
      Height = 20
      Anchors = [akLeft, akTop, akRight]
      DataField = 'FIO'
      DataSource = DM.Q_CLIENTS_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 490
    end
    object Image1: TImage
      Left = 9
      Top = 8
      Width = 32
      Height = 32
      AutoSize = True
      Picture.Data = {
        055449636F6E0000010002001818000001000800C80600002600000018180000
        0100200088090000EE0600002800000018000000300000000100080000000000
        400200000000000000000000000100000001000000000000070300000D050000
        0808080012080000170A00001A0C0000100C08001B1208000912190014141200
        1914100019181800210E000027110000291200002D1400002C1D080033160000
        351F00003A190000211A1000372000003321080030241400081C2F00111E2500
        142A37002C29240035333000411D0000471F00004D2200004F26000053240000
        54270000592700005E290000543000005B340000612A0000632C0000682E0000
        6D30000073330000793500007F380000793F000003760600047706000A7D1000
        7D4100001D475D001C4A670010487F0028607F004848480050505000843C0000
        893C00008D3E000092400000944200009946000093540000A1500000A65B0000
        B9610000C16A00001B8121001A8523001F812600198C26001D8C2A001D912D00
        25822900218C2E00278C34003C8A3C0016AF21001EB72C0021BA310025BE3800
        2EB6460031B04A002FB17200549854002DC643002DC6440034CD4E003EC75D00
        3AD357003AD358003DD65B003CD45C003CC8710041DA620045DE670041CC7C00
        4FDE770048E16D004BE470004CE573004FE8770018568900145A9D001D689700
        1B7790001B7991001E7A9F00246B9E001B6DBE002B69A100257EA5002E7DB300
        317FB4001367C0001F72C0001974C2001F7DD1001F7BD8000C79E400228D8600
        228D88003389B0003884BE0056BFB10044C7900054E9820061F7910066F59400
        66FF990068FF9B0075FFA8003C8BC7002286D3001085ED001588EA001290F300
        2C8EE600369CE600319EEF003C9BE90017A0FB001AA0FA001AA3FC001AA7FE00
        1EAAFF0028A6F90021ABFF0024AAFD0025AEFF0028AFFF003CAAF3002AB0FF00
        2DB2FF0031B4FF0035B6FF0039B6FD0039B9FF003DBAFF003FBCFF00489BDC00
        6C9DCA005EB6DC0065ABD50041B7FA0044B5F80041BDFF0045BFFF0065B5E500
        46C0FF0049C1FF004DC4FF005BC3F70051C6FF005AC5FB0055C8FF0059CAFF00
        5ECBFE005DCCFF006CC7ED007AC6EC0060CEFF0069CCFA006CCFF80062D0FF00
        66D1FF006AD3FF006DD6FF0075DAFF0079DCFF007CDEFF00939393009C9C9C00
        84FFB7008BF7BD0092FFC70081D0F40095DDF70082E0FE00A0E8FF00A5EBFF00
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000004B3231313131313131313131314E0000
        000000000000004581514F4F4F4F4F4F4F4F4F4F4F5300000000000000000048
        835250505050505050505050505A000000000000000000488358525252525252
        5252525258540000000000000000004883595858585858585858585865450000
        0000000000000048835C5959595959595959595B635600000000000000000048
        83605C5C5D5C557B6C6B7A7F4A0000000000000000000048836461615F6D86A2
        8E8B78746A00000000000000000000488467656273AA999090928F8A796F0000
        000000000000004985818071B6A69B9B9897979290887500000000000000004C
        C3C37EA5B8A0A09D9D9B9B9B9B9788A30000000000000045C4C57CC7B3ACA9A8
        A0A0A09D9D9D947500000000000000004B4D73CAB3B1AFAFACACACA9A8A09E87
        000000000000000000007DCABABAB7B3B3B3B1A68D7769360000000000000000
        000070C6BEBDBDBDBAB38C681900000003000000000000000000071BB5C0C0BE
        AE6E0904040402000000000000000000000015211AA4C8B8350614141210100D
        0C0000000000000000003933290A373410252422211F1F0EC100000000000000
        00000013413B25252E2E2C2B2B25220B00000000000000000000000026433F3E
        3E3B3B3B3A2F08000000000000000000000000000011404443434342271C0000
        0000000000000000000000000000C21D17161838000000000000000000000000
        0000000000000000000000000000000000000000FFFFFF00F0003F00E0003F00
        E0003F00E0003F00E0003F00E0003F00E0007F00E0007F00E0003F00E0001F00
        E0000F00E0000F00F0000F00FC000F00FC000700FC000700FC000700FC000700
        FE000F00FF001F00FF803F00FFC0FF00FFFFFF00280000001800000030000000
        0100200000000000600900000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000003F8C3F4F09740EE30A7D10FF047706FF047706FF047706FF
        047706FF047706FF047706FF047706FF047706FF047706FF047706FF037606FF
        006700C3BFD8BF18000000000000000000000000000000000000000000000000
        00000000000000000C7913EF61F791FF21BA31FF16AF21FF16AF21FF16AF21FF
        16AF21FF16AF21FF16AF21FF16AF21FF16AF21FF16AF21FF16AF21FF16AF21FF
        2EB646FF7FB27F7F000000000000000000000000000000000000000000000000
        0000000000000000198C26FF66FF99FF26BF39FF1EB72CFF1EB72CFF1EB72CFF
        1EB72CFF1EB72CFF1EB72CFF1EB72CFF1EB72CFF1EB72CFF1EB72CFF1EB72CFF
        3EC75DFF7FB27F73000000000000000000000000000000000000000000000000
        0000000000000000198C26FF66FF99FF2DC644FF25BE38FF25BE38FF25BE38FF
        25BE38FF25BE38FF25BE38FF25BE38FF25BE38FF25BE38FF25BE38FF2EC745FF
        31B04AFF7FB27F47000000000000000000000000000000000000000000000000
        0000000000000000198C26FF66FF99FF34CD4EFF2DC643FF2DC643FF2DC643FF
        2DC643FF2DC643FF2DC643FF2DC643FF2DC643FF2DC643FF2DC643FF4BE470FF
        13821CF7BFD8BF0C000000000000000000000000000000000000000000000000
        0000000000000000198C26FF66FF99FF3AD358FF35CE4FFF35CE4FFF35CE4FFF
        35CE4FFF35CE4FFF35CE4FFF35CE4FFF35CE4FFF35CE4FFF3AD357FF4FDE77FF
        006600AB00000000000000000000000000000000000000000000000000000000
        0000000000000000198C26FF66FF99FF41DA62FF3DD65BFF3DD65BFF3DD65BFF
        3CD45CFF2FB172FF228D88FF1B7991FF1B7790FF228D86FF44C790FF1D912DFF
        7FB27F2F00000000000000000000000000000000000000000000000000000000
        0000000000000000198C26FF66FF99FF48E16DFF45DE67FF45DE67FF3CC871FF
        1E7A9FFF3C8BC7FF489BDCFF3C9BE9FF2C8EE6FF1F7BD8FF1367C0FF0E5E91EF
        89B0D43300000000000000000000000000000000000000000000000000000000
        00000000000000001A8C27FF68FF9BFF4FE877FF4CE573FF41CC7CFF2E7DB3FF
        65B5E5FF3CAAF3FF1AA0FAFF1BA7FEFF1AA7FFFF17A0FBFF1290F3FF0C79E4FF
        1066BBF34E89BE3F000000000000000000000000000000000000000000000000
        00000000000000001D8C2AFF75FFA8FF66F594FF54E982FF257EA5FF7AC6ECFF
        41B7FAFF2CB2FFFF2AB0FFFF27AFFFFF24ADFFFF21ABFFFF1EAAFFFF1AA3FCFF
        1085EDFF1169BCEFC4D7E9200000000000000000000000000000000000000000
        0000000000000000218C2EFF84FFB7FF84FFB7FF56BFB1FF65ABD5FF69CCFAFF
        3CBAFFFF39B9FFFF36B7FFFF34B6FFFF31B4FFFF2EB2FFFF2BB1FFFF28AFFFFF
        24AAFDFF1588EAFF1463AB9F0000000000000000000000000000000000000000
        0000000000000000117918EF8BF7BDFF92FFC7FF3389B0FF95DDF7FF5ECBFEFF
        49C1FFFF46C0FFFF43BEFFFF40BDFFFF3EBBFFFF3BBAFFFF38B8FFFF35B6FFFF
        32B5FFFF28A6F9FF1672C2FBC4D7E91400000000000000000000000000000000
        00000000000000003F8C3F4F0C7210E3278C34FF317FB4FFA5EBFFFF58CAFFFF
        56C8FFFF53C7FFFF50C5FFFF4DC4FFFF4AC2FFFF47C1FFFF45BFFFFF42BDFFFF
        3FBCFFFF39B6FDFF2286D3FF89B0D44F00000000000000000000000000000000
        00000000000000000000000000000000000000003884BEFFA0E8FFFF65D1FFFF
        62D0FFFF60CEFFFF5DCCFFFF5ACBFFFF57C9FFFF54C8FFFF44B5F8FF319EEFFF
        1F7DD1FF145A9DFF10487FFF47637C7B00000000000000000000000000000000
        00000000000000000000000000000000000000001D609BEF81D0F4FF75D9FFFF
        6FD7FFFF6CD5FFFF6AD3FFFF67D2FFFF5AC5FBFF369CE6FF185689FF081C2FFF
        000000FF000000FF000000FF000000F700000000000000000000000000000000
        0000000000000000000000000000000000000000090500F7142A37FF6CC7EDFF
        7CDEFFFF79DCFFFF76DBFFFF5BC3F7FF246B9EFF091219FF130800FF170A00FF
        120800FF0D0500FF070300FF010000FF00000000000000000000000000000000
        0000000000000000000000000000000000000000130B00EF4F2600FF111E25FF
        5EB6DCFF82E0FEFF6CCFF8FF1C4A67FF1A0C00FF3B1A00FF391900FF331600FF
        2D1400FF271100FF210E00FF020100E700000000000000000000000000000000
        0000000000000000000000000000000000000000000000AF7D4100FF632C00FF
        141412FF28607FFF1D475DFF2A1200FF5F2A00FF592700FF532400FF4D2200FF
        471F00FF411D00FF281200FF3F3F3F8F00000000000000000000000000000000
        00000000000000000000000000000000000000007F7F7F3B351F00FFA15000FF
        8B3D00FF5E2900FF602A00FF7F3800FF793500FF733300FF6D3000FF682E00FF
        622B00FF542700FF0A0500EFBFBFBF1800000000000000000000000000000000
        0000000000000000000000000000000000000000000000003F3F3F7F543000FF
        B86100FF994600FF944200FF934100FF914000FF8D3E00FF883C00FF843C00FF
        793F00FF140B00F73F3F3F470000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000003F3F3F6B
        261600F7935400FFC16A00FFBA6200FFB96100FFB96200FFA65B00FF5B3400FF
        0A0600DB7F7F7F37000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        BFBFBF183F3F3F83070400CF2D1A00F7372000FF1F1200EB000000B77F7F7F5B
        BFBFBF0400000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000FFFFFF00
        E0001F00E0001F00E0001F00E0001F00E0001F00E0003F00E0003F00E0003F00
        E0001F00E0000F00E0000F00E0000700E0000700FC000700FC000700FC000700
        FC000700FC000700FC000700FE000F00FF001F00FF803F00FFFFFF00}
    end
    object Label14: TLabel
      Left = 9
      Top = 71
      Width = 88
      Height = 16
      Anchors = [akLeft]
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitTop = 63
    end
    object Label1: TLabel
      Left = 370
      Top = 71
      Width = 63
      Height = 16
      Caption = #8470' '#1079#1072#1082#1072#1079#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 39
      Top = 41
      Width = 490
      Height = 20
      DataField = 'TTYPE_NAME'
      DataSource = DM.Q_CLIENTS_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 546
      Top = 72
      Width = 120
      Height = 15
      Anchors = [akLeft]
      Caption = #1057#1050#1048#1044#1050#1040' / '#1053#1040#1044#1041#1040#1042#1050#1040
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitTop = 73
    end
    object Label6: TLabel
      Left = 672
      Top = 66
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
      ExplicitTop = 67
    end
    object Label4: TLabel
      Left = 700
      Top = 4
      Width = 59
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1042#1085#1080#1084#1072#1085#1080#1077'!'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 581
    end
    object Label15: TLabel
      Left = 764
      Top = 4
      Width = 280
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1050#1085#1086#1087#1082#1080' '#1089' F2 '#1087#1086' F8 '#1079#1072#1087#1088#1086#1075#1088#1072#1084#1084#1080#1088#1086#1074#1072#1085#1099' '#1085#1072' '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1102
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 693
    end
    object Label16: TLabel
      Left = 764
      Top = 20
      Width = 273
      Height = 14
      Anchors = [akTop, akRight]
      Caption = #1054#1073#1088#1072#1090#1080#1090#1080#1089#1100' '#1082' '#1072#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088#1091' '#1076#1083#1103' '#1085#1072#1089#1090#1088#1086#1081#1082#1080' '#1082#1085#1086#1087#1086#1082
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 645
    end
    object EditComments: TEdit
      Left = 103
      Top = 69
      Width = 244
      Height = 22
      Anchors = [akLeft]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit_Order_Id: TEdit
      Left = 438
      Top = 69
      Width = 81
      Height = 22
      Anchors = [akLeft]
      Ctl3D = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object EditPercent: TcxSpinEdit
      Left = 693
      Top = 65
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
      TabOrder = 2
      OnKeyDown = EditPercentKeyDown
      Height = 27
      Width = 65
    end
    object btn_discount: TcxButton
      Left = 764
      Top = 64
      Width = 126
      Height = 29
      Cursor = crHandPoint
      Anchors = [akLeft]
      Caption = #1087#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btn_discountClick
      Colors.Default = clBtnFace
      Colors.Normal = clBtnFace
      Colors.Hot = clSkyBlue
      Colors.Pressed = clSkyBlue
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000005656564E7C7C7CD9636363A04040400A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000059595971AEAEAEFCFEFEFEFFE1E1E1FF5B5B5B8D000000000000
        0000000000000000000000000000000000000000000000000000000000003535
        35045E5E5E96C3C3C3FFFFFFFFFFFFFFFFFFF7F7F7FF676767B7000000000000
        00000000000000000000000000000000000000000000000000004141410E5B5B
        5BB8979797FFFFFFFFFFFFFFFFFFECECECFF797979E25454542C000000000000
        000000000000000000000000000000000000000000004A4A4A1F5D5D5DD37878
        78FF989898FFE7E7E7FFDDDDDDFF6B6B6BCC4E4E4E1900000000000000000000
        00000000000000000000000000000000000051515136605F5FE77F7F7FFFA0A0
        A0FF9C9C9CFF737373FF606060AF4545450B0000000000000000000000000000
        000000000000000000000000000056565654636363F5868686FFA4A4A3FF9494
        94FF686868FE5A5A5A8D3B3B3B02000000000000000000000000000000000000
        0000000000000000000059595978696868FD8D8D8DFFA6A5A5FF8B8C8CFF6363
        63FA5A5A5A680000000000000000000000000000000000000000000000000000
        0000373737055A5A5A9D757979FF949594FFA5A5A5FF828282FF5F5F5FF05757
        5747000000000000000000000000000000000000000000000000000000004242
        4211676767BD838585FF3C89CEFF83A7C0FF7A7B7AFF676C6CE38298972E95BC
        BA080000000000000000000000000000000000000000000000004B4B4B227C7C
        7CD7ECECECFFD1D8D8FF2C97E1FF2797E0FF3C84BBFE3D9DDCDAA2E8F66754BA
        ECC0BAF8FA2B90BBB909BAF8F929A6EFF84C0000000000000000696969B6F4F6
        F6FFB7DBF5FF4DA0E5FF3EBFEFFF4BE5FCFF55E2F9FF2FA1E6E990DDF48920A9
        E9FE41B4EBCB3EB6ECD22DB3EBE549BEEEC3BAF2EF15000000005F5F5F98E7EA
        E9FF72B2E8FF279AE3FF4EDFFAFF35DEFEFF46D3F6FF027DDDFD25AAE9FF54E8
        FBFF52E2F8FF099DE7FF5FECFAFF18ADEBFE6ED2F2A37A9F9D01474747136767
        67BD7A7B7BF07BACC0A331ACEAFF3FC4F1FF39BCEEFF1C93E3F22FA2E7E259E9
        FBFF4AD9F6FF1BA4E8EB31B4ECDF4BBFEEC3BBF4F21000000000000000000000
        000000000000B8F0F1300C7CDCFE66BAEBA49AE1F55C74CAEF8F3CAAE8D536AE
        EADD4ABBEDC54CBDEDC5BDFBFB28ACF1F9420000000000000000000000000000
        000000000000B2E7E51192D9F26EB6EDEB0A0000000091BCB901A8EDF74EBFFA
        F91AA8DAD807B8EEEC1800000000000000000000000000000000}
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      Spacing = 6
    end
    object AddedCB: TCheckBox
      Left = 760
      Top = 37
      Width = 206
      Height = 27
      Caption = #1090#1086#1083#1100#1082#1086' '#1076#1086#1073#1072#1074#1083#1077#1085#1085#1099#1077' (F12) '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = AddedCBClick
    end
    object dt_ondate: TDateTimePicker
      Left = 438
      Top = 67
      Width = 93
      Height = 24
      Date = 38276.859402847220000000
      Time = 38276.859402847220000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  object pc_sales: TcxPageControl
    Left = 0
    Top = 130
    Width = 1052
    Height = 369
    ActivePage = tch_main
    Align = alClient
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    TabHeight = 25
    TabOrder = 1
    OnChange = pc_salesChange
    ClientRectBottom = 365
    ClientRectLeft = 4
    ClientRectRight = 1048
    ClientRectTop = 31
    object tch_main: TcxTabSheet
      Caption = ' '#1054#1089#1085#1086#1074#1085#1086#1081' '#1089#1082#1083#1072#1076' (Ctrl+1) '
      ImageIndex = 0
      object gr_main: TDBGridEh
        Left = 0
        Top = 0
        Width = 1044
        Height = 334
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataGrouping.GroupLevels = <>
        DataSource = DM.DS_MSTORE
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
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
        PopupMenu = pmSale
        ReadOnly = True
        RowDetailPanel.Color = clBtnFace
        ShowHint = True
        SortLocal = True
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
        OnKeyPress = gr_mainKeyPress
        OnTitleClick = gr_mainTitleClick
        Columns = <
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
            DisplayFormat = '0.00'
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'PRICE_LIST'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1062#1077#1085#1072
            Title.EndEllipsis = True
          end
          item
            Alignment = taCenter
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'QUANTITY_NOW'
            Footer.Alignment = taCenter
            Footer.EndEllipsis = True
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072' '#1089#1082#1083#1072#1076#1077
            Title.EndEllipsis = True
            Width = 70
          end
          item
            Alignment = taCenter
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'RESERV'
            Footer.Alignment = taCenter
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1056#1077#1079#1077#1088#1074
            Title.EndEllipsis = True
            Width = 55
          end
          item
            Alignment = taCenter
            Color = clMoneyGreen
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'QUANTITY'
            Footer.Alignment = taCenter
            Footer.Color = clMoneyGreen
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1050#1086#1083'-'#1074#1086
            Title.Color = clMoneyGreen
            Title.EndEllipsis = True
            Width = 60
            OnUpdateData = gr_mainColumns11UpdateData
          end
          item
            Alignment = taCenter
            Color = clMoneyGreen
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'PRICE_PERCENT'
            Footer.Alignment = taCenter
            Footer.Color = clMoneyGreen
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1082#1080#1076#1082#1072', %'
            Title.Color = clMoneyGreen
            Title.EndEllipsis = True
            Width = 70
          end
          item
            Color = clMoneyGreen
            DisplayFormat = '0.00'
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'PRICE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1055#1088#1086#1076#1072#1078#1072
            Title.Color = clMoneyGreen
            Title.EndEllipsis = True
            Width = 65
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'QUANTITY_PRICE'
            Footer.DisplayFormat = '0.00'
            Footer.EndEllipsis = True
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072' '#1089#1091#1084#1084#1091
            Title.EndEllipsis = True
            Width = 70
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
            FieldName = 'FST_ID'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'STORE_TYPE_NAME'
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
            EndEllipsis = True
            FieldName = 'HOL_TYPE'
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
            FieldName = 'ADDED'
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
            FieldName = 'N_ID'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'PRICE_DIFFERENCE'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'SUM_PRICE_DIFFERENCE'
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
            FieldName = 'BUT_NAME'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'OUR_CODE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
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
    object tch_ucenka: TcxTabSheet
      Caption = ' '#1057#1082#1083#1072#1076' '#1091#1094#1077#1085#1082#1080' (Ctrl+2) '
      ImageIndex = 1
      object gr_ucenka: TDBGridEh
        Left = 0
        Top = 0
        Width = 1044
        Height = 334
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataGrouping.GroupLevels = <>
        DataSource = DM.DS_USTORE
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
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
        PopupMenu = pmSale
        ReadOnly = True
        RowDetailPanel.Color = clBtnFace
        SortLocal = True
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
        OnApplyFilter = gr_ucenkaApplyFilter
        OnDblClick = gr_ucenkaDblClick
        OnDrawColumnCell = gr_ucenkaDrawColumnCell
        OnKeyDown = gr_mainKeyDown
        OnKeyPress = gr_ucenkaKeyPress
        OnTitleClick = gr_ucenkaTitleClick
        Columns = <
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
            DisplayFormat = '0.00'
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'PRICE_LIST'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1062#1077#1085#1072
            Title.EndEllipsis = True
          end
          item
            Alignment = taCenter
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'QUANTITY_NOW'
            Footer.Alignment = taCenter
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072' '#1089#1082#1083#1072#1076#1077
            Title.EndEllipsis = True
            Width = 70
          end
          item
            Alignment = taCenter
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'RESERV'
            Footer.Alignment = taCenter
            Footer.EndEllipsis = True
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1056#1077#1079#1077#1088#1074
            Width = 55
          end
          item
            Alignment = taCenter
            Color = clMoneyGreen
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'QUANTITY'
            Footer.Alignment = taCenter
            Footer.Color = clMoneyGreen
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
            EndEllipsis = True
            FieldName = 'PRICE_PERCENT'
            Footer.Alignment = taCenter
            Footer.Color = clMoneyGreen
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1082#1080#1076#1082#1072', %'
            Title.Color = clMoneyGreen
            Title.EndEllipsis = True
            Width = 70
          end
          item
            Color = clMoneyGreen
            DisplayFormat = '0.00'
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'PRICE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1055#1088#1086#1076#1072#1078#1072
            Title.Color = clMoneyGreen
            Title.EndEllipsis = True
            Width = 65
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'QUANTITY_PRICE'
            Footer.DisplayFormat = '0.00'
            Footer.EndEllipsis = True
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072' '#1089#1091#1084#1084#1091
            Title.EndEllipsis = True
            Width = 70
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
            FieldName = 'FST_ID'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'STORE_TYPE_NAME'
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
            EndEllipsis = True
            FieldName = 'HOL_TYPE'
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
            FieldName = 'ADDED'
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
            FieldName = 'N_ID'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'PRICE_DIFFERENCE'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'SUM_PRICE_DIFFERENCE'
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
            FieldName = 'BUT_NAME'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'OUR_CODE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            Footers = <>
            Title.Caption = #1042#1085#1091#1090#1088'. '#1082#1086#1076
            Width = 100
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object tsh_nulls: TcxTabSheet
      Caption = ' '#1053#1091#1083#1077#1074#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103' (Ctrl+3) '
      ImageIndex = 2
      object gr_nulls: TDBGridEh
        Left = 0
        Top = 0
        Width = 1044
        Height = 334
        Align = alClient
        AllowedOperations = [alopUpdateEh]
        DataGrouping.GroupLevels = <>
        DataSource = DM.DS_NULLSTORE
        Flat = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
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
        PopupMenu = pmSale
        ReadOnly = True
        RowDetailPanel.Color = clBtnFace
        SortLocal = True
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
        OnDblClick = gr_nullsDblClick
        OnDrawColumnCell = gr_nullsDrawColumnCell
        OnKeyDown = gr_mainKeyDown
        OnKeyPress = gr_nullsKeyPress
        OnTitleClick = gr_nullsTitleClick
        Columns = <
          item
            Alignment = taCenter
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'STORE_TYPE_NAME'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1082#1083#1072#1076
            Title.EndEllipsis = True
            Width = 60
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
            DisplayFormat = '0.00'
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'PRICE_LIST'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1062#1077#1085#1072
            Title.EndEllipsis = True
          end
          item
            Alignment = taCenter
            Color = clMoneyGreen
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'QUANTITY'
            Footer.Alignment = taCenter
            Footer.Color = clMoneyGreen
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
            EndEllipsis = True
            FieldName = 'PRICE_PERCENT'
            Footer.Alignment = taCenter
            Footer.Color = clMoneyGreen
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1057#1082#1080#1076#1082#1072', %'
            Title.Color = clMoneyGreen
            Title.EndEllipsis = True
            Width = 70
          end
          item
            Color = clMoneyGreen
            DisplayFormat = '0.00'
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'PRICE'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1055#1088#1086#1076#1072#1078#1072
            Title.Color = clMoneyGreen
            Title.EndEllipsis = True
            Width = 65
          end
          item
            DisplayFormat = '0.00'
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'QUANTITY_PRICE'
            Footer.DisplayFormat = '0.00'
            Footer.EndEllipsis = True
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072' '#1089#1091#1084#1084#1091
            Title.EndEllipsis = True
            Width = 70
          end
          item
            Alignment = taCenter
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'QUANTITY_NOW'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = #1053#1072' '#1089#1082#1083#1072#1076#1077
            Title.EndEllipsis = True
            Width = 70
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
            FieldName = 'FST_ID'
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
            EndEllipsis = True
            FieldName = 'HOL_TYPE'
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
            FieldName = 'ADDED'
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
            FieldName = 'N_ID'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'PRICE_DIFFERENCE'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            EndEllipsis = True
            FieldName = 'SUM_PRICE_DIFFERENCE'
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
            FieldName = 'BUT_NAME'
            Footers = <>
            Title.EndEllipsis = True
            Visible = False
          end
          item
            EditButtons = <>
            FieldName = 'OUR_CODE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Pitch = fpFixed
            Font.Style = []
            Footers = <>
            Title.Caption = #1042#1085#1091#1090#1088'. '#1082#1086#1076
            Width = 100
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object bdc_sales: TdxBarDockControl
    Left = 0
    Top = 499
    Width = 1052
    Height = 47
    Align = dalBottom
    BarManager = bm_sales
  end
  object Panel2: TPanel
    Left = 0
    Top = 99
    Width = 1052
    Height = 31
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 3
    object Label2: TLabel
      Left = 119
      Top = 1
      Width = 625
      Height = 29
      Align = alClient
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 4
      ExplicitHeight = 18
    end
    object Label3: TLabel
      Left = 1
      Top = 1
      Width = 118
      Height = 29
      Align = alLeft
      Caption = ' '#1057#1090#1088#1086#1082#1072' '#1087#1086#1080#1089#1082#1072': '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 18
    end
    object Label8: TLabel
      Left = 744
      Top = 1
      Width = 307
      Height = 29
      Align = alRight
      Alignment = taCenter
      Anchors = [akTop, akBottom]
      Caption = #1042#1074#1086#1076' '#1073#1091#1082#1074' '#1074' '#1090#1072#1073#1083#1080#1094#1077' - '#1073#1099#1089#1090#1088#1099#1081' '#1087#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1079#1074#1072#1085#1080#1102' '#1090#1086#1074#1072#1088#1072' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitHeight = 14
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 546
    Width = 1052
    Height = 42
    Align = alBottom
    Ctl3D = False
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 5
    object DocInfo_Panel: TPanel
      Left = 1
      Top = 1
      Width = 763
      Height = 40
      Align = alClient
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        763
        40)
      object btn_ucenka: TcxButton
        Left = 463
        Top = 6
        Width = 110
        Height = 29
        Cursor = crHandPoint
        Action = aUcenka
        Anchors = [akLeft]
        Caption = #1059#1094#1077#1085#1080#1090#1100' (F9)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
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
          000000000000191965141919662F1919652F1818642F1818632F1919672F1A1A
          6B331A1A6B331A1A6A331A1A6933191969331919661900000000000000000000
          0000000000002929A66A2C2CAAFF4040C0FF4040BFFF4141C0FF4242C0FF4444
          C1FF4444C2FF4545C2FF4646C2FF4444C0FF252598AD00000000000000000000
          000000000000000000002929A67D4040C1FF5C5CD7FF5D5DD3FF6262D9FF6767
          DEFF6C6CE3FF7070E8FF7373ECFF6D6DEDFF252599AE00000000000000000000
          00000000000000000000000000002929A67D4444C4FF6363DCFF6767DCFF6C6C
          E1FF7070E6FF7474EBFF7676EEFF6E6EEFFF26269AAF00000000000000000000
          00000000000000000000000000002929A77E4646C7FF6868E1FF6C6CE1FF7070
          E6FF7474EBFF7676EEFF7777F0FF6E6EEFFF26269BAF00000000000000000000
          000000000000000000002A2AAB7E4545C8FF6868E3FF6C6CE1FF7070E6FF7474
          EBFF7676EEFF7777F0FF7777F0FF6D6DEFFF26269CB000000000000000000000
          0000000000002B2BAE7E4545C9FF6868E3FF6C6CE1FF7070E6FF7474EBFF7676
          EEFF7777F0FF7777F0FF7474F0FF6A6AEEFF27279EB000000000000000000000
          00002C2CB17E4646CBFF6868E3FF6C6CE1FF7070E6FF7474EBFF7676EEFF7777
          F0FF7777F0FF7474F0FF6F6FEDFF6666EBFF27279FB100000000000000002C2C
          B47E4646CDFF6868E3FF6C6CE1FF7070E6FF7474EBFF7676EEFF7777F0FF7777
          F0FF7272F2FF5A5ADFFF6969EDFF6262E8FF2727A0B1000000001C1C710F3131
          BAED6363E5FF6C6CE2FF7070E6FF7474EBFF7676EEFF7777F0FF7777F0FF7272
          F2FF4646CAFE2929A7BB4444C7FF5F5FE9FF2828A2B200000000000000002A2A
          A8323737C0ED6868E9FF7373EBFF7676EEFF7777F0FF7777F0FF7272F2FF4747
          CCFE2A2AAA78000000002929A67D3F3FC2FF2828A4B200000000000000000000
          00002A2AA8323838C1ED6B6BEEFF7777F0FF7777F0FF7272F2FF4848CEFE2B2B
          AD780000000000000000000000002929A67D2828A5B000000000000000000000
          0000000000002A2AA8323838C1ED6C6CEFFF7272F2FF4848CFFE2B2BB0780000
          0000000000000000000000000000000000001B1B710E00000000000000000000
          000000000000000000002A2AA8323838C1ED4646CFFE2C2CB378000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002A2AA8322D2DB66700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        Spacing = 6
      end
      object btn_lom: TcxButton
        Left = 574
        Top = 6
        Width = 100
        Height = 29
        Cursor = crHandPoint
        Action = aLom
        Anchors = [akLeft]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
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
          0000757575BA8C8C8CF57A7A7AD14E4E4E100000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000007979
          79D0A9A8AAFFA9A8ABFFB5B4B7FF808081EB4E4E4E1000000000000000000000
          0000000000000000000000000000000000000000000000000000757575B5BFBE
          C1FFAFAFB0FF737373C4919192FDB5B5B7FF808081EB4E4E4E10000000000000
          00000000000000000000000000000000000000000000000000008E8D8EF1D7D6
          D9FF747474D0000000006565654B919191FDB5B5B7FF808081EB4E4E4E100000
          0000000000000000000000000000000000000000000000000000777777C4B8B7
          B9FFA8A8A9FF6C6C6C6E000000006565654B919192FDB5B4B6FF7A7A7ACE0000
          0000000000000000000000000000000000000000000000000000474747087C7C
          7CE2B8B7B9FFA7A7A8FF6C6C6C6E00000000747474CEAAA9ACFF8A8A8BF27676
          76BE898889EF7171719700000000000000000000000000000000000000004949
          49087C7C7CE1B8B7B9FFA8A8A9FE777777D9B3B2B4FFA7A6A9FF757575AA8383
          83E6B2B1B4FF717171C100000000000000000000000000000000000000000000
          0000494949087C7C7CE1B8B7B9FFD8D6D9FFBCBBBDFF787878C3000000008282
          82F0B2B1B4FF6A6868EC47454510000000000000000000000000000000000000
          00000000000048484808777777C08B8A8BED747474A7000000006C6969D08381
          82FFB2B1B4FF787575FF777576EB4E4D4D100000000000000000000000000000
          00000000000000000000000000000000000000000000757575B3B6B4B6FF9796
          97FFB2B1B4FF7E7C7DFFB0AEB1FF808081EB4E4E4E1000000000000000000000
          000000000000000000000000000000000000000000008D8D8DF1D7D5D8FF7D7C
          7DFFA3A2A4FF707070CE919091FDB5B5B7FF808081EB4E4E4E10000000000000
          00000000000000000000000000000000000000000000777777C3B8B7B9FFA8A8
          A9FF717171B0000000006565654B919192FDB5B4B7FF7A7A7ACF000000000000
          00000000000000000000000000000000000000000000474747087C7C7CE2B8B7
          B9FFA7A7A8FF6C6C6C6E00000000747474CBAAA9ACFF8B8A8BF3000000000000
          0000000000000000000000000000000000000000000000000000494949087C7C
          7CE2B8B7B9FFA8A8A9FF767676D6B1B1B3FFA7A7A9FF757575AE000000000000
          0000000000000000000000000000000000000000000000000000000000004949
          49087C7C7CE2B8B7B9FFD8D6D9FFBDBCBEFF787878C600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000048484808777777C08B8B8BED747474A90000000000000000}
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        Spacing = 6
      end
      object btn_scaner: TcxButton
        Left = 5
        Top = 6
        Width = 155
        Height = 29
        Cursor = crHandPoint
        Action = aScanerS
        Anchors = [akLeft]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
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
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000C30E0000C30E0000000100000000000031313100C67B
          3100393939009C6B3900D68C3900BD844200D68C42004A4A4A00524A4A00E79C
          4A00525252005A52520063525200635A5200845A5A0073635A007B6B5A009C7B
          5A00A57B5A0063636300736363007B636300846363008C6363006B6B6300CE9C
          6300EFAD63006B6B6B007B6B6B00846B6B008C6B6B00A56B6B00AD6B6B00E7A5
          6B0073737300947B7300BD9C73007B7B7B009C7B7B00B57B7B00BD7B7B00A58C
          7B00EFB57B00F7B57B00848484008C848400948484009C848400A5848400BD84
          8400C68484009C8C84008C8C8C00948C8C009C8C8C00A58C8C00AD8C8C00B58C
          8C00BD8C8C00C68C8C00D68C8C009C948C00FFC68C00949494009C949400B594
          9400C6949400E7949400EF949400F7949400FFC694009C9C9C00A59C9C00AD9C
          9C00B59C9C00BD9C9C00C69C9C00CE9C9C00D69C9C00DE9C9C00E79C9C00A5A5
          9C00C6AD9C00EFC69C00A5A5A500B5A5A500ADADA500B5ADA500DEBDA500E7C6
          A500ADADAD00B5ADAD00E7CEAD009CD6AD00F7D6AD00FFD6AD00B5B5B500BDBD
          B500C6BDB500EFD6B500FFDEB500BDBDBD00C6BDBD00E7BDBD00C6C6BD00ADD6
          BD00E7D6BD00FFDEBD00C6C6C600CEC6C600BDD6C600EFDEC600CECECE00C6D6
          CE00DED6CE00E7D6CE00F7DECE00D6D6D600DED6D600EFE7D600DEDEDE00E7DE
          DE00EFDEDE00E7E7DE00EFEFDE00E7E7E700EFEFE700F7EFE700EFEFEF00FFF7
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484842C13138484848484848484848484848484848484
          845A2C2C6C60220B1B8484848484848484848484848484845A2C755D696C4036
          1C0B22848484848484848484542C221B1360806E716C484841381D0B25848484
          848454253F251B2254787D787570655B4A4B4C39150B258484843F7578787878
          78787872737C79665B554B4D4E3B16082C845A7575787D7D797D7B5E6B81815F
          53524849424F503C170A547D807E74636F817F5E6B81815F462A212433363B43
          451F8484546258596A817F5E6B81815F462B1A0906051123311F848484845A56
          6165725C6481815F462B1A090401030F140E8484848484845A5447485768775E
          3E2A1912100D152743288484848484848484848454542C3D291807081E3B4F31
          38848484848484848484848484250700020C2642423036848484848484848484
          84472207020713223741412E2E8484848484848484843F1B0A0B1B34606C706C
          352D2D8484848484848484843F1B224765757D7D7D7D75543484848484848484
          84848484477D82827A67797D7047545A8484848484848484848484845A545454
          1F20394054848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484848484848484
          8484848484848484848484848484848484848484848484848484}
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        Spacing = 6
      end
      object btn_reserv: TcxButton
        Left = 161
        Top = 6
        Width = 150
        Height = 29
        Cursor = crHandPoint
        Action = aFromReserv
        Anchors = [akLeft]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
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
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF000368000368000368FF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FF000368011ED8021DBB021BAF000368FF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0003683758FA011ED802
          1DBB021BAF000368FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0003
          683758FA3758FA011ED8021DBA021BAF000368FF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF0003683758FA3758FA011ED7021DBA021BAF000368FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0003683758FA3758FA011ED7
          021DBA021BAF000368FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
          03683758FA3758FA011ED5021DB8021BAF000368FF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FF0003683758FA3758FA011ED5021DB80216A9000368FF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF0081BD0081BDFF00FFFF00FFFF00FFFF00FF0003683758FA3758FA011E
          D4021DB80216A9000368FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FF0081BD00A6E600A6E60081BDFF00FFFF00FFFF00FFFF00FF
          0003683758FA3758FA011ED4021DB80216A9000368FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0081BD0081BDFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF0003683758FA3758FA011ED3021DB70216A9000368
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0003683758FA3758FA01
          1CCE0003680039A50041A5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF0081BDFF00FF0081BDFF00FFFF00FFFF00FFFF00FFFF00
          FF0003683758FA0003680097D500BAFB00ADEE0081BDFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FF0081BD0081BD0081BDFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF0003680048AA00BDFF00A6E60090CE0097D50087
          C4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0081BD00BAFB00BDFF00
          B1F20081BDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006BBD00B6F70090CE
          00BDFF00BDFF0081BDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0081BD0081
          BD0081BD00ADEE0087C40081BD0081BDFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FF0081BD00A6E600BDFF00BDFF0081BDFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF0081BDFF00FFFF00FFFF00FF0081BD0081BDFF00
          FF0081BD0081BDFF00FFFF00FF0081BD0081BD00A3E2FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          0081BD00BDFF0081BD00BDFF0081BDFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FF0081BD00BDFF00BDFF00BDFF0081BDFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF0081BD00B1F200BDFF00BDFF00BDFF00BAFB00
          81BDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0081BD0081BD0081BD00A6E600BD
          FF00ADEE0081BD0081BD0081BDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF0081BD00B6F70081BDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FF0081BDFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        Spacing = 6
      end
      object cxButton1: TcxButton
        Left = 312
        Top = 6
        Width = 150
        Height = 29
        Cursor = crHandPoint
        Action = aFromOrder
        Anchors = [akLeft]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Colors.Default = clBtnFace
        Colors.Normal = clBtnFace
        Colors.Hot = clSkyBlue
        Colors.Pressed = clSkyBlue
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF000368000368000368FF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FF000368011ED8021DBB021BAF000368FF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0003683758FA011ED802
          1DBB021BAF000368FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0003
          683758FA3758FA011ED8021DBA021BAF000368FF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF0003683758FA3758FA011ED7021DBA021BAF000368FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0003683758FA3758FA011ED7
          021DBA021BAF000368FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
          03683758FA3758FA011ED5021DB8021BAF000368FF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FF0003683758FA3758FA011ED5021DB80216A9000368FF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF0081BD0081BDFF00FFFF00FFFF00FFFF00FF0003683758FA3758FA011E
          D4021DB80216A9000368FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FF0081BD00A6E600A6E60081BDFF00FFFF00FFFF00FFFF00FF
          0003683758FA3758FA011ED4021DB80216A9000368FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0081BD0081BDFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF0003683758FA3758FA011ED3021DB70216A9000368
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0003683758FA3758FA01
          1CCE0003680039A50041A5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF0081BDFF00FF0081BDFF00FFFF00FFFF00FFFF00FFFF00
          FF0003683758FA0003680097D500BAFB00ADEE0081BDFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FF0081BD0081BD0081BDFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF0003680048AA00BDFF00A6E60090CE0097D50087
          C4FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0081BD00BAFB00BDFF00
          B1F20081BDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006BBD00B6F70090CE
          00BDFF00BDFF0081BDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0081BD0081
          BD0081BD00ADEE0087C40081BD0081BDFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FF0081BD00A6E600BDFF00BDFF0081BDFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF0081BDFF00FFFF00FFFF00FF0081BD0081BDFF00
          FF0081BD0081BDFF00FFFF00FF0081BD0081BD00A3E2FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          0081BD00BDFF0081BD00BDFF0081BDFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FF0081BD00BDFF00BDFF00BDFF0081BDFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF0081BD00B1F200BDFF00BDFF00BDFF00BAFB00
          81BDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0081BD0081BD0081BD00A6E600BD
          FF00ADEE0081BD0081BD0081BDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FF0081BD00B6F70081BDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FF0081BDFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        Spacing = 6
      end
    end
    object Panel14: TPanel
      Left = 764
      Top = 1
      Width = 287
      Height = 40
      Align = alRight
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 1
      object BitBtn_Cancel: TcxButton
        Left = 11
        Top = 6
        Width = 120
        Height = 30
        Cursor = crHandPoint
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
        TabOrder = 0
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
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        Spacing = 6
      end
      object BitBtnSave: TcxButton
        Left = 132
        Top = 6
        Width = 148
        Height = 30
        Cursor = crHandPoint
        Caption = ' OK (Ctrl+Enter) '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ModalResult = 1
        ParentFont = False
        TabOrder = 1
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
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 588
    Width = 1052
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
  object Panel_fill: TPanel
    Left = 362
    Top = 204
    Width = 193
    Height = 65
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 6
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
  object pnl_order: TPanel
    Left = 362
    Top = 235
    Width = 480
    Height = 240
    BorderWidth = 5
    Caption = 'pnl_order'
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 11
    Visible = False
    object Label7: TLabel
      Left = 6
      Top = 204
      Width = 171
      Height = 14
      Caption = 'ENTER - '#1087#1086#1076#1075#1088#1091#1079#1080#1090#1100' '#1088#1077#1079#1077#1088#1074
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 6
      Top = 222
      Width = 164
      Height = 14
      Caption = 'BackSpace - '#1079#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Order_Grid: TDBGridEh
      Left = 6
      Top = 6
      Width = 468
      Height = 195
      TabStop = False
      Align = alTop
      AllowedOperations = []
      AllowedSelections = []
      AutoFitColWidths = True
      ColumnDefValues.DropDownShowTitles = True
      ColumnDefValues.EndEllipsis = True
      ColumnDefValues.Title.TitleButton = True
      ColumnDefValues.Title.ToolTips = True
      ColumnDefValues.ToolTips = True
      Ctl3D = False
      DataGrouping.GroupLevels = <>
      DataSource = DM.ds_reserv
      EditActions = [geaCopyEh, geaSelectAllEh]
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
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Pitch = fpFixed
      FooterFont.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghColumnResize, dghColumnMove]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      RowDetailPanel.Color = clBtnFace
      SortLocal = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Pitch = fpFixed
      TitleFont.Style = [fsBold]
      OnDblClick = Order_GridDblClick
      OnKeyPress = Order_GridKeyPress
      Columns = <
        item
          Alignment = taCenter
          AutoFitColWidth = False
          EditButtons = <>
          FieldName = 'ID_ORDERS_CLIENTS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'arial'
          Font.Pitch = fpFixed
          Font.Style = []
          Footers = <>
          MaxWidth = 90
          MinWidth = 90
          Title.Alignment = taCenter
          Title.Caption = #1053#1086#1084#1077#1088' '#1073#1088#1086#1085#1080
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'arial'
          Title.Font.Pitch = fpFixed
          Title.Font.Style = [fsBold]
          Width = 90
        end
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'ID_ORDERS'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #8470' '#1079#1072#1082#1072#1079#1072
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'ON_DATE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'arial'
          Font.Pitch = fpFixed
          Font.Style = []
          Footers = <>
          MaxWidth = 100
          MinWidth = 100
          Title.Caption = #1053#1072' '#1076#1072#1090#1091
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'arial'
          Title.Font.Pitch = fpFixed
          Title.Font.Style = [fsBold]
          Width = 100
        end
        item
          EditButtons = <>
          FieldName = 'FIO'
          Footers = <>
          Title.Caption = #1060#1048#1054
          Width = 200
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
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
    Left = 528
    Top = 35
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
      DockControl = bdc_sales
      DockedDockControl = bdc_sales
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 337
      FloatTop = 200
      FloatClientWidth = 202
      FloatClientHeight = 176
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
          ItemName = 'dxBarStatic9'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic4'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic5'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic6'
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
          ItemName = 'dxBarStatic11'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic10'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic12'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic13'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic14'
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
      Caption = 'HOME - '#1087#1077#1088#1077#1093#1086#1076' '#1085#1072' '#1087#1086#1083#1077' '#1040#1088#1090#1080#1082#1091#1083
      Category = 0
      Hint = 'HOME - '#1087#1077#1088#1077#1093#1086#1076' '#1085#1072' '#1087#1086#1083#1077' '#1040#1088#1090#1080#1082#1091#1083
      Visible = ivAlways
    end
    object dxBarStatic11: TdxBarStatic
      Caption = 'Ctrl+B - '#1087#1086#1080#1089#1082' '#1087#1086' '#1074#1085#1091#1090#1088'. '#1082#1086#1076#1091
      Category = 0
      Hint = 'Ctrl+B - '#1087#1086#1080#1089#1082' '#1087#1086' '#1074#1085#1091#1090#1088'. '#1082#1086#1076#1091
      Visible = ivAlways
    end
    object dxBarStatic12: TdxBarStatic
      Caption = 'ENTER - '#1087#1088#1086#1089#1084#1086#1090#1088' '#1087#1086#1083#1085#1086#1081' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
      Category = 0
      Hint = 'ENTER - '#1087#1088#1086#1089#1084#1086#1090#1088' '#1087#1086#1083#1085#1086#1081' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080
      Visible = ivAlways
    end
    object dxBarButton20: TdxBarButton
      Action = aShowReserv
      Category = 0
    end
    object dxBarStatic13: TdxBarStatic
      Category = 0
      Style = stNotUse
      Visible = ivAlways
      BorderStyle = sbsRaised
      Width = 50
    end
    object dxBarStatic14: TdxBarStatic
      Caption = ' - '#1085#1077#1080#1089#1087#1086#1083#1100#1079#1091#1077#1084#1072#1103' '#1087#1086#1079#1080#1094#1080#1103
      Category = 0
      Hint = ' - '#1085#1077#1080#1089#1087#1086#1083#1100#1079#1091#1077#1084#1072#1103' '#1087#1086#1079#1080#1094#1080#1103
      Visible = ivAlways
    end
  end
  object pm_noms: TdxBarPopupMenu
    BarManager = bm_sales
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarSubItem1'
      end
      item
        Visible = True
        ItemName = 'dxBarSeparator2'
      end
      item
        Visible = True
        ItemName = 'dxBarButton14'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton20'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton17'
      end
      item
        Visible = True
        ItemName = 'dxBarButton18'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton19'
      end>
    UseOwnFont = True
    Left = 560
    Top = 35
  end
  object al_sales: TActionList
    Left = 496
    Top = 32
    object aRefresh: TAction
      Caption = 'aRefresh'
      OnExecute = aRefreshExecute
    end
    object aLoad: TAction
      Caption = 'aLoad'
      OnExecute = aLoadExecute
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
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1074#1085#1091#1090#1088#1077#1085#1085#1077#1084#1091' '#1082#1086#1076#1091
      ShortCut = 16450
      OnExecute = aSearchOurCodeExecute
    end
    object aClearFilter: TAction
      Caption = #1054#1095#1080#1097#1072#1077#1084' '#1092#1080#1083#1100#1090#1088#1099
      ShortCut = 121
      OnExecute = aClearFilterExecute
    end
    object aMainSklad: TAction
      Caption = 'aMainSklad'
      ShortCut = 16433
      OnExecute = aMainSkladExecute
    end
    object aUcenkaSklad: TAction
      Caption = 'aUcenkaSklad'
      ShortCut = 16434
      OnExecute = aUcenkaSkladExecute
    end
    object aNullSklad: TAction
      Caption = 'aNullSklad'
      ShortCut = 16435
      OnExecute = aNullSkladExecute
    end
    object aDelQuant: TAction
      Caption = 'aDelQuant'
      ShortCut = 16430
      OnExecute = aDelQuantExecute
    end
    object aUcenka: TAction
      Caption = #1059#1094#1077#1085#1080#1090#1100' '#1090#1077#1082#1091#1097#1091#1102' (F9)'
      ShortCut = 120
      OnExecute = aUcenkaExecute
    end
    object aLom: TAction
      Caption = #1051#1086#1084' (F11)'
      ShortCut = 122
      OnExecute = aLomExecute
    end
    object aSave: TAction
      Caption = 'aSave'
      ShortCut = 16397
      OnExecute = aSaveExecute
    end
    object aOnlyMy: TAction
      Caption = 'aOnlyMy'
      ShortCut = 123
      OnExecute = aOnlyMyExecute
    end
    object aScanerS: TAction
      Caption = #1057#1086' '#1089#1082#1072#1085#1077#1088#1072' (Ctrl+S)'
      ShortCut = 16467
      OnExecute = aScanerSExecute
    end
    object aFromReserv: TAction
      Caption = #1048#1079' '#1088#1077#1079#1077#1088#1074#1072' (Ctrl+R)'
      ShortCut = 16466
      OnExecute = aFromReservExecute
    end
    object aFilterType: TAction
      Caption = 'aFilterType'
      ShortCut = 16416
      OnExecute = aFilterTypeExecute
    end
    object aFromOrder: TAction
      Caption = #1048#1079' '#1079#1072#1082#1072#1079#1072' (Ctrl+O)'
      ShortCut = 16463
      OnExecute = aFromOrderExecute
    end
    object aShowReserv: TAction
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1088#1077#1079#1077#1088#1074
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1088#1077#1079#1077#1088#1074' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1072#1084
      ShortCut = 119
      OnExecute = aShowReservExecute
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 464
    Top = 32
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
      TextColor = clRed
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
  object pmSale: TPopupMenu
    Left = 592
    Top = 32
    object mnShowReserv: TMenuItem
      Action = aShowReserv
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mnClearFilter: TMenuItem
      Action = aClearFilter
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object mnSearchArticle: TMenuItem
      Action = aSearchArticle
    end
    object mnSearchName: TMenuItem
      Action = aSearchName
    end
    object mnSearchOurCode: TMenuItem
      Action = aSearchOurCode
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object mnExcel: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OnClick = mnExcelClick
    end
    object N2: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1082#1086#1083#1086#1085#1086#1082
      Visible = False
      object N3: TMenuItem
        Caption = #1050#1086#1076
        Checked = True
        OnClick = N3Click
      end
      object N6: TMenuItem
        Caption = #1040#1088#1090#1080#1082#1091#1083
        Checked = True
        OnClick = N3Click
      end
      object N7: TMenuItem
        Caption = #1058#1080#1087
        Checked = True
        OnClick = N3Click
      end
      object N8: TMenuItem
        Caption = #1055#1086#1076#1090#1080#1087
        Checked = True
        OnClick = N3Click
      end
      object N9: TMenuItem
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Checked = True
        OnClick = N3Click
      end
      object N10: TMenuItem
        Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
        Checked = True
        OnClick = N3Click
      end
      object N11: TMenuItem
        Caption = #1057#1090#1088#1072#1085#1072
        Checked = True
        OnClick = N3Click
      end
      object N12: TMenuItem
        Caption = #1062#1074#1077#1090
        Checked = True
        OnClick = N3Click
      end
      object N13: TMenuItem
        Caption = #1062#1077#1085#1072
        Checked = True
        OnClick = N3Click
      end
      object N14: TMenuItem
        Caption = #1053#1072' '#1089#1082#1083#1072#1076#1077
        Checked = True
        OnClick = N3Click
      end
      object N15: TMenuItem
        Caption = #1056#1077#1079#1077#1088#1074
        Checked = True
        OnClick = N3Click
      end
      object N16: TMenuItem
        Caption = #1050#1086#1083'-'#1074#1086
        Checked = True
        OnClick = N3Click
      end
      object N17: TMenuItem
        Caption = #1057#1082#1080#1076#1082#1072' %'
        Checked = True
        OnClick = N3Click
      end
      object N18: TMenuItem
        Caption = #1055#1088#1086#1076#1072#1078#1072
        Checked = True
        OnClick = N3Click
      end
      object N19: TMenuItem
        Caption = #1053#1072' '#1089#1091#1084#1084#1091
        Checked = True
        OnClick = N3Click
      end
      object N20: TMenuItem
        Caption = #1042#1085#1091#1090#1088#1077#1085#1085#1080#1081' '#1082#1086#1076
        Checked = True
        OnClick = N3Click
      end
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'xls'
    Filter = #1060#1072#1081#1083#1099' EXCEL (*.xls)|*.xls'
    Left = 625
    Top = 33
  end
end
