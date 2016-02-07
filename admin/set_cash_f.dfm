object set_cash: Tset_cash
  Left = 423
  Top = 324
  Width = 509
  Height = 268
  Caption = '  '#1059#1089#1090#1072#1085#1086#1074#1082#1072' '#1076#1086#1089#1090#1091#1087#1072' '#1082' '#1082#1072#1089#1089#1072#1084
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
  PixelsPerInch = 96
  TextHeight = 16
  object Panel4: TPanel
    Left = 0
    Top = 207
    Width = 501
    Height = 34
    Align = alBottom
    Color = clSkyBlue
    TabOrder = 1
    object BitBtn13: TBitBtn
      Left = 349
      Top = 4
      Width = 145
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
    object BitBtn1: TBitBtn
      Left = 8
      Top = 4
      Width = 145
      Height = 25
      Cursor = crHandPoint
      Caption = #1047#1072#1087#1080#1089#1072#1090#1100
      TabOrder = 1
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 501
    Height = 166
    Align = alClient
    BorderWidth = 5
    TabOrder = 0
    object DBGridEh1: TDBGridEh
      Left = 6
      Top = 6
      Width = 489
      Height = 154
      Align = alClient
      DataSource = DM.Q_SET_CASH_DS
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Pitch = fpFixed
      FooterFont.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Pitch = fpFixed
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          EditButtons = <>
          FieldName = 'N_CASH'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = #8470' '#1082#1072#1089#1089#1099
          Width = 68
        end
        item
          EditButtons = <>
          FieldName = 'FIO'
          Footers = <>
          Title.Caption = #1060#1048#1054' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
          Width = 230
        end
        item
          EditButtons = <>
          FieldName = 'LOGIN'
          Footers = <>
          Title.Caption = #1051#1086#1075#1080#1085
          Width = 80
        end
        item
          EditButtons = <>
          FieldName = 'NICK'
          Footers = <>
          Title.Caption = #1050#1086#1076
          Width = 69
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 166
    Width = 501
    Height = 41
    Align = alBottom
    TabOrder = 2
    object ComboBox1: TComboBox
      Left = 8
      Top = 8
      Width = 481
      Height = 24
      Cursor = crHandPoint
      BevelInner = bvSpace
      BevelKind = bkTile
      BevelOuter = bvRaised
      Style = csDropDownList
      Ctl3D = False
      ItemHeight = 16
      ParentCtl3D = False
      TabOrder = 0
    end
  end
end
