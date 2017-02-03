object edits_e: Tedits_e
  Left = 419
  Top = 243
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' '#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' / '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
  ClientHeight = 538
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 16
  object Label20: TLabel
    Left = 463
    Top = 407
    Width = 77
    Height = 13
    Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 575
    Top = 407
    Width = 41
    Height = 13
    AutoSize = True
    DataField = 'DDATE'
    DataSource = DM.Q_EMPL_VIEW_DS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
  end
  object Label22: TLabel
    Left = 463
    Top = 423
    Width = 102
    Height = 13
    Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' '#1082#1077#1084':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText3: TDBText
    Left = 575
    Top = 423
    Width = 41
    Height = 13
    AutoSize = True
    DataField = 'CORRECTOR'
    DataSource = DM.Q_EMPL_VIEW_DS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
  end
  object Label23: TLabel
    Left = 463
    Top = 443
    Width = 66
    Height = 13
    Caption = #1050#1086#1088#1088#1077#1082#1094#1080#1103':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText4: TDBText
    Left = 575
    Top = 443
    Width = 41
    Height = 13
    AutoSize = True
    DataField = 'DATE_COR'
    DataSource = DM.Q_EMPL_VIEW_DS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
  end
  object Label24: TLabel
    Left = 463
    Top = 459
    Width = 91
    Height = 13
    Caption = #1050#1086#1088#1088#1077#1082#1094#1080#1103' '#1082#1077#1084':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText5: TDBText
    Left = 575
    Top = 459
    Width = 41
    Height = 13
    AutoSize = True
    DataField = 'CORRECTOR_COR'
    DataSource = DM.Q_EMPL_VIEW_DS
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 2
    Width = 441
    Height = 469
    Caption = ' '#1053#1077#1086#1073#1093#1086#1076#1080#1084#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '
    Color = clBtnFace
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 160
      Width = 59
      Height = 16
      Caption = #1058#1077#1083#1077#1092#1086#1085#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 6
      Top = 26
      Width = 7
      Height = 16
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 16
      Top = 72
      Width = 38
      Height = 16
      Caption = #1040#1076#1088#1077#1089
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 8
      Top = 74
      Width = 7
      Height = 16
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 8
      Top = 160
      Width = 7
      Height = 16
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 410
      Top = 271
      Width = 24
      Height = 24
      Cursor = crHandPoint
      Hint = #1055#1088#1086#1074#1077#1088#1082#1072' '#1085#1072' '#1089#1091#1097#1077#1089#1090#1074#1086#1074#1072#1085#1080#1077' '#1082#1086#1076#1072
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object Label2: TLabel
      Left = 232
      Top = 160
      Width = 121
      Height = 16
      Caption = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 224
      Top = 160
      Width = 7
      Height = 16
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 256
      Width = 7
      Height = 16
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 8
      Top = 300
      Width = 7
      Height = 16
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 8
      Top = 344
      Width = 7
      Height = 16
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 392
      Width = 176
      Height = 16
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object LabeledEdit2: TLabeledEdit
      Left = 16
      Top = 40
      Width = 417
      Height = 22
      EditLabel.Width = 30
      EditLabel.Height = 16
      EditLabel.Caption = #1060#1048#1054
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clBlack
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'Arial'
      EditLabel.Font.Pitch = fpFixed
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      MaxLength = 100
      ParentFont = False
      TabOrder = 0
    end
    object Memo1: TMemo
      Left = 16
      Top = 176
      Width = 201
      Height = 73
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      MaxLength = 1024
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 2
    end
    object Memo4: TMemo
      Left = 16
      Top = 88
      Width = 417
      Height = 65
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      MaxLength = 1024
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object LabeledEdit1: TLabeledEdit
      Left = 16
      Top = 272
      Width = 393
      Height = 22
      EditLabel.Width = 23
      EditLabel.Height = 16
      EditLabel.Caption = #1050#1086#1076
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clBlack
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'Arial'
      EditLabel.Font.Pitch = fpFixed
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      MaxLength = 20
      ParentFont = False
      TabOrder = 4
    end
    object Memo3: TMemo
      Left = 232
      Top = 176
      Width = 201
      Height = 73
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      MaxLength = 1024
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 3
    end
    object LabeledEdit6: TLabeledEdit
      Left = 16
      Top = 316
      Width = 417
      Height = 22
      EditLabel.Width = 27
      EditLabel.Height = 16
      EditLabel.Caption = #1048#1053#1053
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clBlack
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'Arial'
      EditLabel.Font.Pitch = fpFixed
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      TabOrder = 5
      Text = '0'
    end
    object LabeledEdit7: TLabeledEdit
      Left = 16
      Top = 360
      Width = 417
      Height = 22
      EditLabel.Width = 151
      EditLabel.Height = 16
      EditLabel.Caption = #1055#1077#1085#1089#1080#1086#1085#1085#1086#1077' '#1089#1090#1088#1072#1093#1086#1074#1072#1085#1080#1077
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clBlack
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'Arial'
      EditLabel.Font.Pitch = fpFixed
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      MaxLength = 50
      ParentFont = False
      TabOrder = 6
      Text = '0'
    end
    object Memo5: TMemo
      Left = 16
      Top = 408
      Width = 417
      Height = 49
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      MaxLength = 1024
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 7
    end
  end
  object GroupBox2: TGroupBox
    Left = 461
    Top = 2
    Width = 316
    Height = 343
    Caption = ' '#1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '
    Color = clBtnFace
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 1
    object Label3: TLabel
      Left = 16
      Top = 82
      Width = 77
      Height = 16
      Caption = #1054#1073#1103#1079#1072#1085#1085#1086#1089#1090#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 16
      Top = 158
      Width = 134
      Height = 16
      Caption = #1064#1090#1088#1080#1093' '#1082#1086#1076' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 269
      Top = 176
      Width = 23
      Height = 22
      Cursor = crHandPoint
      Hint = #1043#1077#1085#1077#1088#1072#1094#1080#1103' '#1096#1090#1088#1080#1093' '#1082#1086#1076#1072
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333000003333333333F777773FF333333008F88800
        33333337733333773F33330FFF8F888F033333733333333373F330DEFFF8F8FE
        D03337F33333333337F330DDEFFFFFEDD0333733333FFF33373F0BBFDE000EDF
        BB037F33337773F3337F0AABB08880BBAA037F3337F3F7F3337F0EEAA08080AA
        EE037F3337F737F3337F0AABB08880BBAA037F33373FF733337F0BBFDE000EDB
        BB0373F333777333337330DDEFFFFFEDD03337F33333333337F330DEF8F8FFFE
        D033373F333333333733330FFF8F8FFF03333373FF33333F733333300FF8F800
        3333333773FFFF77333333333000003333333333377777333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object Label12: TLabel
      Left = 16
      Top = 205
      Width = 28
      Height = 16
      Caption = #1064#1090#1072#1090
    end
    object Label13: TLabel
      Left = 16
      Top = 228
      Width = 76
      Height = 16
      Caption = #1057#1090#1072#1078' '#1088#1072#1073#1086#1090#1099
    end
    object Label16: TLabel
      Left = 16
      Top = 257
      Width = 148
      Height = 16
      Caption = #1044#1072#1090#1072' '#1087#1088#1080#1085#1103#1090#1080#1103' '#1085#1072' '#1088#1072#1073#1086#1090#1091
    end
    object Label17: TLabel
      Left = 16
      Top = 281
      Width = 159
      Height = 16
      Caption = #1044#1072#1090#1072' '#1091#1074#1086#1083#1100#1085#1077#1085#1080#1103' '#1089' '#1088#1072#1073#1086#1090#1099
    end
    object Label18: TLabel
      Left = 8
      Top = 160
      Width = 7
      Height = 16
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label25: TLabel
      Left = 34
      Top = 323
      Width = 196
      Height = 13
      Caption = '- '#1055#1086#1083#1103', '#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1099#1077' '#1076#1083#1103' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 16
      Top = 324
      Width = 7
      Height = 16
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 16
      Top = 26
      Width = 41
      Height = 16
      Caption = #1056#1077#1075#1080#1086#1085
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Memo2: TMemo
      Left = 16
      Top = 104
      Width = 281
      Height = 49
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      MaxLength = 1024
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 2
    end
    object LabeledEdit5: TLabeledEdit
      Left = 64
      Top = 54
      Width = 233
      Height = 22
      EditLabel.Width = 45
      EditLabel.Height = 16
      EditLabel.Caption = 'E-Mail  '
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clBlack
      EditLabel.Font.Height = -13
      EditLabel.Font.Name = 'Arial'
      EditLabel.Font.Pitch = fpFixed
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      LabelPosition = lpLeft
      MaxLength = 50
      ParentFont = False
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 16
      Top = 176
      Width = 249
      Height = 22
      Ctl3D = False
      MaxLength = 13
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object CheckBox2: TCheckBox
      Left = 72
      Top = 205
      Width = 57
      Height = 17
      Caption = #1076#1072
      Checked = True
      State = cbChecked
      TabOrder = 4
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 144
      Top = 205
      Width = 57
      Height = 17
      Caption = #1085#1077#1090
      TabOrder = 5
      OnClick = CheckBox3Click
    end
    object Edit2: TEdit
      Left = 168
      Top = 226
      Width = 129
      Height = 22
      Hint = #1083#1077#1090','#1084#1077#1089#1103#1094#1077#1074','#1076#1085#1077#1081
      Ctl3D = False
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 6
    end
    object DateTimePicker1: TDateTimePicker
      Left = 200
      Top = 253
      Width = 97
      Height = 24
      Cursor = crHandPoint
      Date = 37922.458402407400000000
      Time = 37922.458402407400000000
      TabOrder = 7
    end
    object DateTimePicker2: TDateTimePicker
      Left = 200
      Top = 277
      Width = 97
      Height = 24
      Cursor = crHandPoint
      Date = 37922.458402407400000000
      Time = 37922.458402407400000000
      Enabled = False
      TabOrder = 8
    end
    object CheckBox4: TCheckBox
      Left = 200
      Top = 301
      Width = 81
      Height = 17
      Caption = #1091#1074#1086#1083#1077#1085
      TabOrder = 9
      OnClick = CheckBox4Click
    end
    object ComboBox1: TComboBox
      Left = 64
      Top = 24
      Width = 233
      Height = 24
      Cursor = crHandPoint
      BevelInner = bvSpace
      BevelKind = bkSoft
      Style = csDropDownList
      Color = clWhite
      Ctl3D = False
      ItemHeight = 16
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object CheckBox1: TCheckBox
    Left = 464
    Top = 388
    Width = 313
    Height = 17
    Caption = #1040#1082#1090#1080#1074#1077#1085
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 0
    Top = 502
    Width = 794
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = clSkyBlue
    Ctl3D = False
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 5
    object SpeedButton5: TSpeedButton
      Left = 628
      Top = 4
      Width = 25
      Height = 25
      Cursor = crHandPoint
      Hint = #1055#1086#1084#1086#1097#1100
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
      OnClick = SpeedButton5Click
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 4
      Width = 145
      Height = 25
      Cursor = crHandPoint
      Caption = #1047#1072#1087#1080#1089#1072#1090#1100
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 152
      Top = 4
      Width = 145
      Height = 25
      Cursor = crHandPoint
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555FFFFFFF5F55FFF5777777757559995777777775755777F7555555555550
        305555555555FF57F7F555555550055BB0555555555775F777F55555550FB000
        005555555575577777F5555550FB0BF0F05555555755755757F555550FBFBF0F
        B05555557F55557557F555550BFBF0FB005555557F55575577F555500FBFBFB0
        B05555577F555557F7F5550E0BFBFB00B055557575F55577F7F550EEE0BFB0B0
        B05557FF575F5757F7F5000EEE0BFBF0B055777FF575FFF7F7F50000EEE00000
        B0557777FF577777F7F500000E055550805577777F7555575755500000555555
        05555777775555557F5555000555555505555577755555557555}
      NumGlyphs = 2
    end
    object BitBtn3: TBitBtn
      Left = 656
      Top = 4
      Width = 121
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 2
      OnClick = BitBtn3Click
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
  end
  object CheckBox5: TCheckBox
    Left = 464
    Top = 348
    Width = 313
    Height = 17
    Caption = #1041#1083#1086#1082#1080#1088#1086#1074#1072#1085' '#1073#1091#1093#1075#1072#1083#1090#1077#1088#1080#1077#1081
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
  end
  object CheckBox6: TCheckBox
    Left = 464
    Top = 368
    Width = 313
    Height = 17
    Caption = #1041#1083#1086#1082#1080#1088#1086#1074#1072#1085' '#1082#1088#1077#1076#1080#1090#1086#1084
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
  end
  object chbRuleWebShop: TCheckBox
    Left = 464
    Top = 478
    Width = 220
    Height = 17
    Caption = #1055#1088#1086#1076#1072#1078#1072' '#1089' '#1082#1086#1083#1077#1089
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object ActionList1: TActionList
    Left = 748
    Top = 430
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 13
      OnExecute = BitBtn1Click
    end
  end
end
