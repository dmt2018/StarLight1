object e_info: Te_info
  Left = 2
  Top = 2
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' '#1055#1088#1086#1089#1084#1086#1090#1088' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1077' '#1092#1080#1088#1084#1099
  ClientHeight = 522
  ClientWidth = 788
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
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object Label18: TLabel
    Left = 344
    Top = 320
    Width = 28
    Height = 13
    Caption = #1048#1053#1053
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 361
    Top = 435
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
  object DBText2: TDBText
    Left = 473
    Top = 435
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
    Left = 361
    Top = 451
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
  object DBText1: TDBText
    Left = 473
    Top = 451
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
    Left = 585
    Top = 435
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
  object DBText3: TDBText
    Left = 689
    Top = 435
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
    Left = 585
    Top = 451
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
  object DBText4: TDBText
    Left = 689
    Top = 451
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
    Left = 0
    Top = 0
    Width = 788
    Height = 362
    Align = alTop
    Caption = ' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1077' '
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
    ExplicitWidth = 789
    object Label9: TLabel
      Left = 11
      Top = 101
      Width = 31
      Height = 16
      Caption = #1060#1048#1054
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label26: TLabel
      Left = 11
      Top = 182
      Width = 40
      Height = 16
      Caption = #1040#1076#1088#1077#1089
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 347
      Top = 18
      Width = 71
      Height = 16
      Caption = #1058#1077#1083#1077#1092#1086#1085#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 571
      Top = 18
      Width = 136
      Height = 16
      Caption = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 347
      Top = 118
      Width = 39
      Height = 16
      Caption = 'E-Mail'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 347
      Top = 142
      Width = 86
      Height = 16
      Caption = #1054#1073#1103#1079#1072#1085#1085#1086#1089#1090#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 11
      Top = 18
      Width = 103
      Height = 16
      Caption = #1050#1086#1076' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 11
      Top = 58
      Width = 148
      Height = 16
      Caption = #1064#1090#1088#1080#1093' '#1082#1086#1076' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 11
      Top = 341
      Width = 54
      Height = 16
      Caption = #1040#1082#1090#1080#1074#1077#1085
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 347
      Top = 258
      Width = 27
      Height = 16
      Caption = #1048#1053#1053
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 347
      Top = 282
      Width = 169
      Height = 16
      Caption = #1055#1077#1085#1089#1080#1086#1085#1085#1086#1077' '#1089#1090#1088#1072#1093#1086#1074#1072#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 171
      Top = 341
      Width = 32
      Height = 16
      Caption = #1064#1090#1072#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 347
      Top = 307
      Width = 86
      Height = 16
      Caption = #1057#1090#1072#1078' '#1088#1072#1073#1086#1090#1099
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 347
      Top = 336
      Width = 63
      Height = 16
      Caption = #1055#1088#1080#1085#1103#1090#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 563
      Top = 336
      Width = 80
      Height = 16
      Caption = #1059#1074#1086#1083#1100#1085#1077#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 11
      Top = 262
      Width = 200
      Height = 16
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBMemo1: TDBMemo
      Left = 11
      Top = 198
      Width = 297
      Height = 60
      DataField = 'ADDRESS'
      DataSource = DM.Q_EMPL_VIEW_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 3
    end
    object DBMemo2: TDBMemo
      Left = 347
      Top = 34
      Width = 201
      Height = 73
      DataField = 'PHONE'
      DataSource = DM.Q_EMPL_VIEW_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 6
    end
    object DBMemo3: TDBMemo
      Left = 571
      Top = 34
      Width = 201
      Height = 73
      DataField = 'PASSPORT'
      DataSource = DM.Q_EMPL_VIEW_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 7
    end
    object DBEdit4: TDBEdit
      Left = 411
      Top = 114
      Width = 361
      Height = 22
      DataField = 'EMAIL'
      DataSource = DM.Q_EMPL_VIEW_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object DBMemo4: TDBMemo
      Left = 347
      Top = 158
      Width = 425
      Height = 89
      DataField = 'DUTIES'
      DataSource = DM.Q_EMPL_VIEW_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 9
    end
    object DBEdit5: TDBEdit
      Left = 11
      Top = 34
      Width = 297
      Height = 22
      DataField = 'NICK'
      DataSource = DM.Q_EMPL_VIEW_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit6: TDBEdit
      Left = 11
      Top = 74
      Width = 297
      Height = 22
      DataField = 'CCODE'
      DataSource = DM.Q_EMPL_VIEW_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit8: TDBEdit
      Left = 547
      Top = 254
      Width = 225
      Height = 22
      DataField = 'INN'
      DataSource = DM.Q_EMPL_VIEW_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object DBEdit9: TDBEdit
      Left = 547
      Top = 278
      Width = 225
      Height = 22
      DataField = 'INSURANCE'
      DataSource = DM.Q_EMPL_VIEW_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object DBEdit11: TDBEdit
      Left = 427
      Top = 332
      Width = 113
      Height = 22
      Ctl3D = False
      DataField = 'DATE_IN'
      DataSource = DM.Q_EMPL_VIEW_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
    end
    object DBEdit12: TDBEdit
      Left = 667
      Top = 332
      Width = 105
      Height = 22
      Ctl3D = False
      DataField = 'DATE_OUT'
      DataSource = DM.Q_EMPL_VIEW_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
    end
    object DBCheckBox1: TDBCheckBox
      Left = 219
      Top = 341
      Width = 65
      Height = 17
      Caption = ' '#1076#1072
      DataField = 'STAFF'
      DataSource = DM.Q_EMPL_VIEW_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBCheckBox2: TDBCheckBox
      Left = 83
      Top = 341
      Width = 65
      Height = 17
      Caption = ' '#1076#1072
      DataField = 'ACTIVE'
      DataSource = DM.Q_EMPL_VIEW_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      ValueChecked = '1'
      ValueUnchecked = '0'
    end
    object DBMemo5: TDBMemo
      Left = 11
      Top = 118
      Width = 297
      Height = 60
      DataField = 'FIO'
      DataSource = DM.Q_EMPL_VIEW_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit10: TDBEdit
      Left = 547
      Top = 304
      Width = 225
      Height = 22
      Ctl3D = False
      DataField = 'L_SERVICE'
      DataSource = DM.Q_EMPL_VIEW_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object DBMemo6: TDBMemo
      Left = 11
      Top = 278
      Width = 297
      Height = 60
      DataField = 'INFO'
      DataSource = DM.Q_EMPL_VIEW_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 15
    end
  end
  object Panel1: TPanel
    Left = 359
    Top = 473
    Width = 418
    Height = 36
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = clSkyBlue
    Ctl3D = False
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 3
    object BitBtn13: TcxButton
      Left = 274
      Top = 2
      Width = 138
      Height = 30
      Cursor = crHandPoint
      Cancel = True
      Caption = #1042#1099#1093#1086#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn3Click
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
  object GroupBox2: TGroupBox
    Left = 360
    Top = 372
    Width = 417
    Height = 53
    Caption = ' '#1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1076#1086#1089#1090#1091#1087#1077' '#1074' '#1048#1057' '
    Color = clBtnFace
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 2
    object Label12: TLabel
      Left = 176
      Top = 24
      Width = 63
      Height = 15
      Caption = #1051#1086#1075#1080#1085' '#1074' '#1048#1057
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 8
      Top = 24
      Width = 70
      Height = 15
      Caption = #1044#1086#1089#1090#1091#1087' '#1074' '#1048#1057
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 96
      Top = 24
      Width = 45
      Height = 15
      Caption = 'Label14'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object DBEdit7: TDBEdit
      Left = 248
      Top = 22
      Width = 153
      Height = 21
      DataField = 'LOGIN'
      DataSource = DM.Q_EMPL_VIEW_DS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 364
    Width = 345
    Height = 144
    Caption = ' '#1054#1090#1076#1077#1083' '#1080' '#1076#1086#1083#1078#1085#1086#1089#1090#1100' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072' '
    Color = clBtnFace
    Ctl3D = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 1
    object DBGrid5: TDBGrid
      Left = 7
      Top = 19
      Width = 161
      Height = 118
      Ctl3D = False
      DataSource = DM.Q_DEPS_DS
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Pitch = fpFixed
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NAME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          Title.Caption = #1054#1090#1076#1077#1083
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Pitch = fpFixed
          Title.Font.Style = [fsBold]
          Width = 124
          Visible = True
        end>
    end
    object DBGrid1: TDBGrid
      Left = 176
      Top = 19
      Width = 162
      Height = 118
      Ctl3D = False
      DataSource = DM.Q_JOBS_DS
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Arial'
      TitleFont.Pitch = fpFixed
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NAME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Style = []
          Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Pitch = fpFixed
          Title.Font.Style = [fsBold]
          Width = 125
          Visible = True
        end>
    end
  end
end
