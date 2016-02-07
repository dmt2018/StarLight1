object statistic: Tstatistic
  Left = 0
  Top = 0
  Caption = '  '#1057#1090#1072#1090#1080#1089#1090#1080#1082#1072' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1072#1084
  ClientHeight = 504
  ClientWidth = 784
  Color = clBtnFace
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = clSkyBlue
    Ctl3D = False
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 0
    object BitBtn6: TBitBtn
      Left = 6
      Top = 4
      Width = 145
      Height = 25
      Cursor = crHandPoint
      Caption = #1055#1077#1095#1072#1090#1100' '#1075#1088#1072#1092#1080#1082#1072
      Enabled = False
      TabOrder = 0
      OnClick = BitBtn6Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object Panel1: TPanel
      Left = 597
      Top = 0
      Width = 185
      Height = 31
      Align = alRight
      BevelOuter = bvNone
      Color = clSkyBlue
      ParentBackground = False
      TabOrder = 1
      DesignSize = (
        185
        31)
      object BitBtn13: TBitBtn
        Left = 36
        Top = 4
        Width = 145
        Height = 25
        Cursor = crHandPoint
        Anchors = [akLeft, akRight]
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
    end
  end
  object Chart1: TChart
    Left = 0
    Top = 33
    Width = 784
    Height = 471
    AllowPanning = pmNone
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Legend.Alignment = laBottom
    Legend.LegendStyle = lsValues
    Legend.TextStyle = ltsPlain
    Title.Text.Strings = (
      'TChart')
    LeftAxis.LabelStyle = talValue
    LeftAxis.Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1082#1083#1080#1077#1085#1090#1086#1074
    View3D = False
    Zoom.Allow = False
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Series1: TBarSeries
      ColorEachPoint = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Style = smsValue
      Marks.Visible = True
      Gradient.Direction = gdTopBottom
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
end
