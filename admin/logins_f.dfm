object logins: Tlogins
  Left = 513
  Top = 355
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' '#1059#1089#1090#1072#1085#1086#1074#1082#1072' / '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1091#1095#1077#1090#1085#1086#1081' '#1079#1072#1087#1080#1089#1080' '#1048#1057
  ClientHeight = 168
  ClientWidth = 412
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
  object GroupBox7: TGroupBox
    Left = 9
    Top = 14
    Width = 392
    Height = 141
    Caption = ' '#1051#1086#1075#1080#1085' '#1080' '#1087#1072#1088#1086#1083#1100' '#1076#1083#1103' '#1074#1093#1086#1076#1072' '#1074' '#1048#1057' '
    Color = clBtnFace
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Label21: TLabel
      Left = 8
      Top = 24
      Width = 35
      Height = 16
      Caption = #1051#1086#1075#1080#1085
    end
    object Label22: TLabel
      Left = 8
      Top = 48
      Width = 44
      Height = 16
      Caption = #1055#1072#1088#1086#1083#1100
    end
    object Label23: TLabel
      Left = 8
      Top = 72
      Width = 123
      Height = 16
      Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100' '#1087#1072#1088#1086#1083#1100
    end
    object BitBtn14: TBitBtn
      Left = 8
      Top = 104
      Width = 121
      Height = 24
      Cursor = crHandPoint
      Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100
      TabOrder = 3
      OnClick = BitBtn14Click
      Kind = bkOK
    end
    object BitBtn17: TBitBtn
      Left = 136
      Top = 104
      Width = 121
      Height = 24
      Cursor = crHandPoint
      Caption = #1059#1073#1088#1072#1090#1100
      TabOrder = 4
      OnClick = BitBtn17Click
      Kind = bkCancel
    end
    object MaskEdit1: TMaskEdit
      Left = 160
      Top = 43
      Width = 225
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      MaxLength = 20
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
    end
    object MaskEdit2: TMaskEdit
      Left = 160
      Top = 68
      Width = 225
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      MaxLength = 20
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 2
    end
    object Edit10: TEdit
      Left = 160
      Top = 18
      Width = 225
      Height = 22
      CharCase = ecUpperCase
      MaxLength = 20
      TabOrder = 0
    end
    object BitBtn4: TBitBtn
      Left = 264
      Top = 104
      Width = 120
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 5
      OnClick = BitBtn4Click
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
end
