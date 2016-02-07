object show_track: Tshow_track
  Left = 572
  Top = 439
  BorderIcons = []
  Caption = '  '#1047#1072#1075#1088#1091#1079#1082#1072' '#1084#1072#1096#1080#1085
  ClientHeight = 311
  ClientWidth = 484
  Color = clCream
  Constraints.MaxHeight = 350
  Constraints.MaxWidth = 500
  Constraints.MinHeight = 350
  Constraints.MinWidth = 500
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Verdana'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 16
  object StringGrid1: TStringGrid
    Left = 8
    Top = 14
    Width = 468
    Height = 258
    Ctl3D = False
    DefaultColWidth = 88
    FixedColor = clMedGray
    FixedCols = 0
    RowCount = 2
    Options = [goVertLine, goHorzLine, goRowSelect]
    ParentCtl3D = False
    ScrollBars = ssNone
    TabOrder = 0
    OnDrawCell = StringGrid1DrawCell
  end
  object Panel1: TPanel
    Left = 0
    Top = 278
    Width = 484
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = clSkyBlue
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    ExplicitTop = 193
    ExplicitWidth = 299
    object BitBtn13: TBitBtn
      Left = 8
      Top = 4
      Width = 468
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 484
    Height = 8
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = clSkyBlue
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    ExplicitWidth = 299
  end
end
