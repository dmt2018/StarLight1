object frmCityEditor: TfrmCityEditor
  Left = 0
  Top = 0
  Caption = ' '#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1075#1086#1088#1086#1076#1072
  ClientHeight = 307
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 271
    Width = 592
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = clSkyBlue
    Ctl3D = False
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 0
    ExplicitTop = 254
    ExplicitWidth = 544
    object BitBtn4: TBitBtn
      Left = 7
      Top = 488
      Width = 145
      Height = 25
      Cursor = crHandPoint
      Caption = ' '#1042#1099#1093#1086#1076' '
      TabOrder = 0
      Kind = bkClose
    end
    object Panel5: TPanel
      Left = 0
      Top = 465
      Width = 160
      Height = 17
      Align = alCustom
      BevelOuter = bvNone
      Color = clGreen
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      Left = 10
      Top = 5
      Width = 145
      Height = 25
      Cursor = crHandPoint
      Caption = ' '#1047#1072#1087#1080#1089#1072#1090#1100' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn3Click
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
    object BitBtn1: TBitBtn
      Left = 456
      Top = 5
      Width = 129
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 3
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 592
    Height = 9
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = clSkyBlue
    Ctl3D = False
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 1
    ExplicitWidth = 544
    object BitBtn2: TBitBtn
      Left = 7
      Top = 488
      Width = 145
      Height = 25
      Cursor = crHandPoint
      Caption = ' '#1042#1099#1093#1086#1076' '
      TabOrder = 0
      Kind = bkClose
    end
    object Panel3: TPanel
      Left = 0
      Top = 465
      Width = 160
      Height = 17
      Align = alCustom
      BevelOuter = bvNone
      Color = clGreen
      TabOrder = 1
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 9
    Width = 592
    Height = 262
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitLeft = -40
    ExplicitTop = -34
    ExplicitWidth = 594
    ExplicitHeight = 324
    DesignSize = (
      592
      262)
    object Label1: TLabel
      Left = 26
      Top = 16
      Width = 68
      Height = 16
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 26
      Top = 100
      Width = 204
      Height = 16
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 16
      Width = 5
      Height = 16
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 16
      Top = 302
      Width = 5
      Height = 16
      Caption = '*'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 27
      Top = 303
      Width = 222
      Height = 15
      Caption = '- '#1055#1086#1083#1103', '#1086#1073#1103#1079#1072#1090#1077#1083#1100#1085#1099#1077' '#1076#1083#1103' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 429
      Top = 212
      Width = 135
      Height = 16
      Anchors = [akLeft]
      Caption = #1057#1050#1048#1044#1050#1040' / '#1053#1040#1044#1041#1040#1042#1050#1040
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitTop = 264
    end
    object Edit1: TEdit
      Left = 120
      Top = 13
      Width = 456
      Height = 19
      Ctl3D = False
      MaxLength = 255
      ParentCtl3D = False
      TabOrder = 0
    end
    object Memo1: TMemo
      Left = 26
      Top = 122
      Width = 550
      Height = 123
      Ctl3D = False
      ParentCtl3D = False
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object CheckBox1: TCheckBox
      Left = 26
      Top = 264
      Width = 353
      Height = 17
      Caption = ' '#1103#1074#1083#1103#1077#1090#1089#1103' '#1086#1090#1076#1077#1083#1086#1084' '#1087#1088#1086#1076#1072#1078
      TabOrder = 2
    end
    object DBNumberEditEh1: TDBNumberEditEh
      Left = 480
      Top = 291
      Width = 97
      Height = 19
      AlwaysShowBorder = True
      EditButtons = <>
      Flat = True
      TabOrder = 4
      Visible = False
    end
    object Znak_EditPercent: TComboBox
      Left = 427
      Top = 290
      Width = 49
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 3
      Text = '-'
      Visible = False
      Items.Strings = (
        '-'
        '+')
    end
    object pnlCity: TPanel
      Left = 16
      Top = 38
      Width = 560
      Height = 64
      BevelOuter = bvNone
      TabOrder = 5
      object Label8: TLabel
        Left = 10
        Top = 6
        Width = 77
        Height = 16
        Caption = #1050#1086#1076' '#1075#1086#1088#1086#1076#1072':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 10
        Top = 35
        Width = 50
        Height = 16
        Caption = #1056#1077#1075#1080#1086#1085':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 0
        Top = 35
        Width = 5
        Height = 16
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit2: TEdit
        Left = 104
        Top = 3
        Width = 125
        Height = 19
        Ctl3D = False
        MaxLength = 255
        ParentCtl3D = False
        TabOrder = 0
      end
      object imcbRegion: TcxImageComboBox
        Left = 104
        Top = 31
        Cursor = crHandPoint
        Properties.ImmediatePost = True
        Properties.ImmediateUpdateText = True
        Properties.Items = <>
        Style.LookAndFeel.NativeStyle = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        TabOrder = 1
        Width = 457
      end
    end
  end
end
