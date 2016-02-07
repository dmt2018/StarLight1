object client_stat: Tclient_stat
  Left = 398
  Top = 153
  Caption = '  '#1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
  ClientHeight = 606
  ClientWidth = 957
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object top_panel: TPanel
    Left = 0
    Top = 0
    Width = 957
    Height = 41
    Align = alTop
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1089#1090#1072#1090#1080#1089#1090#1080#1082#1091
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    TabStop = True
  end
  object params_panel: TPanel
    Left = 0
    Top = 41
    Width = 957
    Height = 62
    Align = alTop
    BorderWidth = 4
    TabOrder = 1
    TabStop = True
    object Label1: TLabel
      Left = 8
      Top = 10
      Width = 9
      Height = 16
      Caption = #1057
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 161
      Top = 10
      Width = 16
      Height = 16
      Caption = #1087#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 328
      Top = 10
      Width = 41
      Height = 16
      Caption = #1054#1092#1080#1089':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object d_date_begin: TcxDateEdit
      Left = 23
      Top = 6
      Properties.DateOnError = deToday
      Properties.ImmediatePost = True
      Properties.ReadOnly = False
      Properties.SaveTime = False
      Properties.ShowTime = False
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
      TabOrder = 0
      Width = 121
    end
    object chbox_period: TcxCheckBox
      Left = 179
      Top = 32
      Caption = #1091#1095#1080#1090#1099#1074#1072#1090#1100' '#1087#1077#1088#1080#1086#1076
      ParentFont = False
      Properties.ImmediatePost = True
      Style.BorderStyle = ebsOffice11
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
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
      TabOrder = 1
      OnClick = chbox_periodClick
      Width = 130
    end
    object d_date_end: TcxDateEdit
      Left = 183
      Top = 6
      Enabled = False
      Properties.DateOnError = deToday
      Properties.ImmediatePost = True
      Properties.ReadOnly = False
      Properties.SaveTime = False
      Properties.ShowTime = False
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
    object btn_filtron: TcxButton
      Left = 574
      Top = 6
      Width = 142
      Height = 48
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' (F5)'
      TabOrder = 4
      OnClick = SpeedButton3Click
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000330B0000330B00000001000000000000000000003131
        3100735A5A007B5A5A007B6363008C636300FFCE6300FFD66300846B6B008C6B
        6B00FFCE6B00FFD66B008C63730094737300A5737300FFD673009C7B7B00FFD6
        7B00FFDE7B009C7B8400A5848400B5848400FFDE8400A58C8C00FFDE8C00FFE7
        8C00B5949400BD949400FFE79400BD9C9C00C69C9C00CE9C9C00FFE79C00FFEF
        9C00C6A5A500CEA5A500FFEFA500C6ADAD00CEADAD00FFEFAD00FFF7AD00FFF7
        B500FFF7BD00FFFFBD00D6B5C600FFFFC600DEDEDE00FF00FF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002F2F2F2F2F2F
        2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F261505050505050505050505
        050505030303012F2F2F2F2F262E221D262626262626262626261A141003012F
        2F2F2F2F2F262C26221E221E221E1D1B1D1A1A130C012F2F2F2F2F2F2F2F2626
        0D0909090908040203020303012F2F2F2F2F2F00000000000000000000000000
        00000000000000002F2F26262626262626261515151515151515151515151515
        052F261F1F1F1F1F1F1F1F1F171717171717171717171715052F261F05050505
        05050505050505050505050505052E15052F261F060606060606060606060606
        0606060606060615052F261F06060606060A0A0A0A0A06060606060606060615
        0E2F261F060A0A0B0F0F0F0F0F0F0F0F0F0F0F0A0A0606150E2F261F060F0F11
        11111616161616111111110F0F0F06260E2F261F0F1611161616161818181616
        16161111110F06260E2F261F1616161618181818181818181818181816160626
        0E2F261F161618181C1C1C1C20201C1C1C181816181816260E2F261F1616181C
        2020202020202020201C1C18161816260E2F261F16181C202024242424242424
        20201C1C181616260E2F261F161820242427272727272727242420201C161626
        0E2F261F161C202427272929292929292727242020201626152F261F11242727
        29292A2A2A2A2A2A2927242420201126152F261F242A292A2A2D2D2D2D2D2D2D
        2A2A2929292D2426152F261F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F26
        152F2F2626262626262626262626262626262626262626262F2F}
      LookAndFeel.Kind = lfOffice11
    end
    object btn_save: TcxButton
      Left = 717
      Top = 6
      Width = 114
      Height = 48
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 5
      OnClick = SpeedButton4Click
      Glyph.Data = {
        76060000424D7606000000000000360400002800000018000000180000000100
        08000000000040020000320B0000320B00000001000000000000942121009429
        2900943131009C3131009C393900A5393900944242009C424200A5424200AD42
        4200A54A42009C424A009C4A4A00A54A4A00AD4A4A00B54A4A009C525200B552
        5200BD525200C6525200BD5A5A00C65A5A00CE5A5A009C636300A5636300C663
        6300CE6363009C6B6B00B56B6B00BD6B6B00C66B6B00CE6B6B00AD736B00B573
        6B009C737300A5737300B5737300BD737300C6737300CE737300B5847300A57B
        7B00AD7B7B00BD7B7B00C67B7B00CE7B7B00A5848400B5848400BD848400C684
        8400B58C8400A58C8C00AD8C8C00B58C8C00C68C8C00CE8C8C00BD949400D694
        94009C9C9C00BD9C9C00C69C9C00CE9C9C00CEA59C00ADA5A500CEA5A500D6A5
        A500C6ADAD00CEADAD00D6ADAD00B5B5B500BDB5B500DEB5B500BDBDB500B5BD
        BD00BDBDBD00D6BDBD00DEBDBD00C6C6C600CEC6C600DEC6C600E7C6C600C6CE
        CE00CECECE00D6CECE00DECECE00D6D6D600DEDED600DEDEDE00E7DEDE00E7E7
        DE00EFE7DE00E7E7E700EFE7E700F7E7E700EFEFE700F7EFE700EFEFEF00F7EF
        EF00F7F7EF00F7F7F700FFF7F700FFFFF700FF00FF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00666666666666
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
      LookAndFeel.Kind = lfOffice11
    end
    object btn_print: TcxButton
      Left = 832
      Top = 6
      Width = 114
      Height = 48
      Caption = #1055#1077#1095#1072#1090#1100
      TabOrder = 6
      OnClick = SpeedButton5Click
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
    end
    object chbox_: TcxCheckBox
      Left = 19
      Top = 32
      Caption = #1073#1077#1079' '#1054#1060#1048#1057#1053#1067#1061' '#1088#1072#1089#1093#1086#1076#1086#1074
      ParentFont = False
      State = cbsChecked
      Style.BorderStyle = ebsOffice11
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clMaroon
      Style.Font.Height = -11
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
      TabOrder = 7
      Visible = False
      Width = 154
    end
    object cbOffices: TcxImageComboBox
      Left = 376
      Top = 6
      Cursor = crHandPoint
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items = <>
      Properties.OnChange = cbOfficesPropertiesChange
      Style.BorderStyle = ebsOffice11
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 3
      Width = 177
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 571
    Width = 957
    Height = 35
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    object btn_help: TcxButton
      Left = 8
      Top = 4
      Width = 30
      Height = 25
      Cursor = crHandPoint
      Hint = #1055#1086#1084#1086#1097#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = SpeedButton3Click
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000C30E0000C30E00000001000000000000BD310000BD42
        0800BD4A0800B54A1000BD4A1000C64A1000D6521000C6521800CE521800BD52
        2100C6522100C65A2100CE5A2100C65A2900CE5A2900CE632900E7632900C663
        3100CE633100CE6B3100D66B3100DE6B3100E7733100BD633900CE6B3900D66B
        3900E7733900D67342004A4A4A00FF8C4A0052525200C67B5200D67B52005A5A
        5A00C67B5A00DE845A0063636300DE8C63006B6B6B007B736B00C6846B00CE8C
        6B00DE8C6B00F79C6B0073737300DE947300E79C7300FFB573008C847B00D69C
        7B00E79C7B00F7A57B00CE9C8400EFAD8400A59C9400C6A59400D6AD9400DEAD
        9400EFAD9400FFCE94009C9C9C00A59C9C00D6AD9C00DEAD9C00FFCE9C00CEB5
        A500E7BDA500ADADAD00B5ADAD00CEB5AD00FFD6AD00FFDEAD00CEBDB500CEC6
        BD00DEC6BD00E7CEBD00CECEC600DECEC600E7CEC600E7D6C600FFF7C600CECE
        CE00E7D6CE00F7DECE00FFDECE00FFEFCE00EFDED600F7DED600F7E7D600DEDE
        DE00EFE7DE00F7E7DE00FFEFDE00E7E7E700F7E7E700F7EFE700FFEFE700F7EF
        EF00FFEFEF00F7F7EF00FFF7EF00EFF7F700F7F7F700FFF7F700FF00FF00EFFF
        FF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00686868683C26
        1E1C1C1C1E3C68686868686868434E565858565648212C3C686868684958665D
        41384A65615630263C6868525B6A3403173E0B093E6A57272C6868566A220407
        376B2D0403346A56213C5E663804120F182A0F120D034A5F36245F66110D130C
        295B180B12071F6A4D1E5F560B12120C286B3A05120F0D61561E5F530C12120F
        0A416B32070F0D61561E5F5F15140F0B07044D6B1B0C186756265E6B2B10295A
        2000316B25082E6B4A435F615C1D23696B426A691A1A625B366868566B552F35
        5A655A331D546B564C686861566B6B50473B3B46676B564C6868686861565E6B
        6B6B6B6B5A56596868686868685F636161616161615F68686868}
      LookAndFeel.Kind = lfOffice11
    end
    object Panel1: TPanel
      Left = 719
      Top = 1
      Width = 237
      Height = 33
      Align = alRight
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object btnClose: TcxButton
        Left = 84
        Top = 4
        Width = 145
        Height = 25
        Cursor = crHandPoint
        Cancel = True
        Caption = #1047#1072#1082#1088#1099#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btnCloseClick
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
      end
    end
  end
  object pc_clients: TcxPageControl
    Left = 0
    Top = 103
    Width = 957
    Height = 468
    ActivePage = tsh_times
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = []
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    ParentFont = False
    TabOrder = 3
    ClientRectBottom = 464
    ClientRectLeft = 4
    ClientRectRight = 953
    ClientRectTop = 27
    object tsh_times: TcxTabSheet
      Caption = ' '#1042#1088#1077#1084#1077#1085#1085#1086#1081' '
      ImageIndex = 0
      object Chart_sale_stat: TChart
        Left = 0
        Top = 0
        Width = 949
        Height = 420
        AllowPanning = pmVertical
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Legend.Visible = False
        MarginBottom = 1
        MarginLeft = 1
        MarginRight = 2
        MarginTop = 1
        Title.Text.Strings = (
          #1043#1088#1072#1092#1080#1082' '#1079#1072#1074#1080#1089#1080#1084#1086#1089#1090#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072' '#1087#1086#1082#1091#1087#1086#1082' '#1086#1090' '#1076#1085#1077#1081)
        View3D = False
        Zoom.Allow = False
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        AutoSize = True
        object FastLineSeries1: TFastLineSeries
          Marks.Callout.Brush.Color = clBlack
          Marks.Visible = False
          LinePen.Color = clRed
          LinePen.Width = 2
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 420
        Width = 949
        Height = 17
        Align = dalBottom
        BarManager = dxBarManager1
      end
    end
    object tsh_summs: TcxTabSheet
      Caption = ' '#1050#1086#1083#1080#1095#1077#1089#1090#1074#1077#1085#1085#1099#1081' '
      ImageIndex = 1
      object chart_client_stat: TChart
        Left = 0
        Top = 0
        Width = 949
        Height = 421
        AllowPanning = pmVertical
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Legend.Visible = False
        MarginBottom = 1
        MarginLeft = 1
        MarginRight = 2
        MarginTop = 1
        Title.Text.Strings = (
          #1043#1088#1072#1092#1080#1082' '#1079#1072#1074#1080#1089#1080#1084#1086#1089#1090#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1072' '#1087#1086#1082#1091#1087#1086#1082' '#1086#1090' '#1074#1088#1077#1084#1077#1085#1085#1099#1093' '#1080#1085#1090#1077#1088#1074#1072#1083#1086#1074)
        View3D = False
        Zoom.Allow = False
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        AutoSize = True
        PrintMargins = (
          15
          27
          15
          27)
        object Series1: TFastLineSeries
          Marks.Callout.Brush.Color = clBlack
          Marks.Font.Charset = RUSSIAN_CHARSET
          Marks.Font.Name = 'Tahoma'
          Marks.Visible = False
          LinePen.Color = clRed
          LinePen.Width = 2
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
      object dxBarDockControl2: TdxBarDockControl
        Left = 0
        Top = 421
        Width = 949
        Height = 16
        Align = dalBottom
        BarManager = dxBarManager1
      end
    end
    object tsh_invoices: TcxTabSheet
      Caption = ' '#1058#1072#1073#1083#1080#1094#1072' '#1089#1091#1084#1084' '#1085#1072#1082#1083#1072#1076#1085#1099#1093' '
      ImageIndex = 2
      object gr_summs: TcxGrid
        Left = 0
        Top = 0
        Width = 949
        Height = 437
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = True
        object gr_summs_v: TcxGridDBTableView
          PopupMenu = PopupMenu1
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = DM.ds_summs
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skSum
              Column = gr_summs_v_counts
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = gr_summs_v_total_sum
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = gr_summs_v_in_rub
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = gr_summs_v_out_rub
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = gr_summs_v_in_usd
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = gr_summs_v_out_usd
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = gr_summs_v_in_eu
            end
            item
              Format = '0.00'
              Kind = skSum
              Column = gr_summs_v_out_eu
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnMoving = False
          OptionsCustomize.ColumnSorting = False
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          object gr_summs_v_hours: TcxGridDBColumn
            Caption = #1063#1072#1089#1099
            DataBinding.FieldName = 'hours'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 70
            Options.Editing = False
            Options.Filtering = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.Sorting = False
            Width = 70
          end
          object gr_summs_v_counts: TcxGridDBColumn
            Caption = #1050#1086#1083'-'#1074#1086' '#1085#1072#1082#1083#1072#1076#1085#1099#1093
            DataBinding.FieldName = 'counts'
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 100
            Options.Editing = False
            Options.Filtering = False
            Options.HorzSizing = False
            Options.Moving = False
            Options.Sorting = False
            Width = 100
          end
          object gr_summs_v_total_sum: TcxGridDBColumn
            Caption = #1057#1091#1084#1084#1072' '#1085#1072#1082#1083#1072#1076#1085#1099#1093
            DataBinding.FieldName = 'total_sum'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
            Properties.ReadOnly = True
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 60
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
          end
          object gr_summs_v_in_rub: TcxGridDBColumn
            Caption = #1055#1088#1080#1093#1086#1076' '#1074' '#1088#1091#1073'.'
            DataBinding.FieldName = 'in_rub'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
            Properties.ReadOnly = True
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 60
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
          end
          object gr_summs_v_out_rub: TcxGridDBColumn
            Caption = #1056#1072#1089#1093#1086#1076' '#1074' '#1088#1091#1073'.'
            DataBinding.FieldName = 'out_rub'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
            Properties.ReadOnly = True
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 60
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
          end
          object gr_summs_v_in_usd: TcxGridDBColumn
            Caption = #1055#1088#1080#1093#1086#1076' '#1074' USD'
            DataBinding.FieldName = 'in_usd'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
            Properties.ReadOnly = True
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 60
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
          end
          object gr_summs_v_out_usd: TcxGridDBColumn
            Caption = #1056#1072#1089#1093#1086#1076' '#1074' USD'
            DataBinding.FieldName = 'out_usd'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
            Properties.ReadOnly = True
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 60
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
          end
          object gr_summs_v_in_eu: TcxGridDBColumn
            Caption = #1055#1088#1080#1093#1086#1076' '#1074' '#1045#1074#1088#1086
            DataBinding.FieldName = 'in_eu'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
            Properties.ReadOnly = True
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 60
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
          end
          object gr_summs_v_out_eu: TcxGridDBColumn
            Caption = #1056#1072#1089#1093#1086#1076' '#1074' '#1045#1074#1088#1086
            DataBinding.FieldName = 'out_eu'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taRightJustify
            Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
            Properties.ReadOnly = True
            FooterAlignmentHorz = taRightJustify
            HeaderAlignmentHorz = taCenter
            HeaderAlignmentVert = vaCenter
            MinWidth = 60
            Options.Editing = False
            Options.Filtering = False
            Options.Moving = False
            Options.Sorting = False
          end
        end
        object gr_summs_l: TcxGridLevel
          GridView = gr_summs_v
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 592
    Top = 8
    object aSearch: TAction
      Caption = 'aSearch'
      ShortCut = 116
      OnExecute = SpeedButton3Click
    end
  end
  object SavePictureDialog1: TSavePictureDialog
    DefaultExt = '.bmp'
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 248
    Top = 1
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    MenuAnimations = maFade
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 560
    Top = 8
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'times_legend'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 888
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
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
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'summ_legend'
      CaptionButtons = <>
      DockControl = dxBarDockControl2
      DockedDockControl = dxBarDockControl2
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 888
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarStatic1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarStatic2'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarStatic1: TdxBarStatic
      Caption = #1055#1086' '#1074#1077#1088#1090#1080#1082#1072#1083#1080' - '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1072#1082#1083#1072#1076#1085#1099#1093
      Category = 0
      Hint = #1055#1086' '#1074#1077#1088#1090#1080#1082#1072#1083#1080' - '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1072#1082#1083#1072#1076#1085#1099#1093
      Visible = ivAlways
    end
    object dxBarStatic2: TdxBarStatic
      Caption = #1055#1086' '#1075#1086#1088#1080#1079#1086#1085#1090#1072#1083#1080' - '#1095#1072#1089#1086#1074#1086#1081' '#1080#1085#1090#1077#1088#1074#1072#1083
      Category = 0
      Hint = #1055#1086' '#1075#1086#1088#1080#1079#1086#1085#1090#1072#1083#1080' - '#1095#1072#1089#1086#1074#1086#1081' '#1080#1085#1090#1077#1088#1074#1072#1083
      Visible = ivAlways
    end
    object dxBarStatic3: TdxBarStatic
      Caption = #1055#1086' '#1074#1077#1088#1090#1080#1082#1072#1083#1080' - '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1072#1082#1083#1072#1076#1085#1099#1093
      Category = 0
      Hint = #1055#1086' '#1074#1077#1088#1090#1080#1082#1072#1083#1080' - '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1072#1082#1083#1072#1076#1085#1099#1093
      Visible = ivAlways
    end
    object dxBarStatic4: TdxBarStatic
      Caption = #1055#1086' '#1075#1086#1088#1080#1079#1086#1085#1090#1072#1083#1080' - '#1076#1085#1080
      Category = 0
      Hint = #1055#1086' '#1075#1086#1088#1080#1079#1086#1085#1090#1072#1083#1080' - '#1076#1085#1080
      Visible = ivAlways
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 624
    Top = 8
    object gr_export: TMenuItem
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      OnClick = gr_exportClick
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = #1060#1072#1081#1083#1099' EXCEL (*.xls)|*.xls'
    Left = 216
  end
end
