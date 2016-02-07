object WhyChangePrice_Form: TWhyChangePrice_Form
  Left = 409
  Top = 214
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1050#1086#1084#1077#1084#1085#1090#1072#1088#1080#1081
  ClientHeight = 215
  ClientWidth = 399
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 29
    Top = 10
    Width = 338
    Height = 16
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' '#1076#1083#1103' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1091#1094#1077#1085#1082#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 31
    Top = 40
    Width = 337
    Height = 121
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object Panel4: TPanel
    Left = 0
    Top = 173
    Width = 399
    Height = 42
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clSkyBlue
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 1
    DesignSize = (
      399
      42)
    object BitBtn13: TBitBtn
      Left = 117
      Top = 10
      Width = 134
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Kind = bkCancel
    end
    object BitBtnFilterOn: TBitBtn
      Left = 258
      Top = 10
      Width = 134
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ModalResult = 1
      ParentFont = False
      TabOrder = 1
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      Spacing = 0
    end
  end
end
