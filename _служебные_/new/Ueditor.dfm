object frmeditor: Tfrmeditor
  Left = 0
  Top = 0
  Anchors = [akTop, akRight]
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088
  ClientHeight = 215
  ClientWidth = 367
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
  object pnlBottom: TPanel
    Left = 0
    Top = 175
    Width = 367
    Height = 40
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      367
      40)
    object btnSave: TcxButton
      Left = 135
      Top = 7
      Width = 107
      Height = 25
      Action = aEnter
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Colors.Default = clActiveBorder
    end
    object btnClose: TcxButton
      Left = 250
      Top = 7
      Width = 107
      Height = 25
      Action = aClose
      Anchors = [akTop, akRight]
      Cancel = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Colors.Default = clActiveBorder
    end
  end
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 367
    Height = 175
    Align = alClient
    TabOrder = 0
    object Lbl1: TLabel
      Left = 12
      Top = 12
      Width = 34
      Height = 16
      Caption = #1044#1072#1090#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Lbl2: TLabel
      Left = 12
      Top = 58
      Width = 59
      Height = 16
      Caption = #1050#1091#1088#1089' USD:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Lbl3: TLabel
      Left = 12
      Top = 88
      Width = 58
      Height = 16
      Caption = #1050#1091#1088#1089' EUR:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Lbl4: TLabel
      Left = 12
      Top = 112
      Width = 96
      Height = 16
      Caption = #1050#1091#1088#1089' EUR '#1082' USD:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Lbl5: TLabel
      Left = 12
      Top = 142
      Width = 96
      Height = 16
      Caption = #1050#1091#1088#1089' USD '#1082' EUR:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Lbl6: TLabel
      Left = 112
      Top = 39
      Width = 35
      Height = 16
      Caption = #1087#1086' '#1062#1041
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Lbl7: TLabel
      Left = 238
      Top = 39
      Width = 50
      Height = 16
      Caption = #1074' '#1092#1080#1088#1084#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object sbtn1: TSpeedButton
      Left = 207
      Top = 111
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
      OnClick = sbtn1Click
    end
    object SBtn2: TSpeedButton
      Left = 207
      Top = 139
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
      OnClick = SBtn2Click
    end
    object SBtn3: TSpeedButton
      Left = 335
      Top = 110
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
      OnClick = SBtn3Click
    end
    object SBtn4: TSpeedButton
      Left = 335
      Top = 138
      Width = 23
      Height = 22
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337000000000
        73333337777777773F333308888888880333337F3F3F3FFF7F33330808089998
        0333337F737377737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3F3F3F3F7F33330808080808
        0333337F737373737F333308888888880333337F3FFFFFFF7F33330800000008
        0333337F7777777F7F333308000E0E080333337F7FFFFF7F7F33330800000008
        0333337F777777737F333308888888880333337F333333337F33330888888888
        03333373FFFFFFFF733333700000000073333337777777773333}
      NumGlyphs = 2
      OnClick = SBtn4Click
    end
    object cxDateEdit1: TcxDateEdit
      Left = 112
      Top = 12
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 0
      Width = 217
    end
    object Ed1: TcxCurrencyEdit
      Left = 112
      Top = 58
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = ',0.00000;-,0.00000'
      Properties.MaxLength = 10
      TabOrder = 1
      Width = 93
    end
    object Ed2: TcxCurrencyEdit
      Left = 112
      Top = 85
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = ',0.00000;-,0.00000'
      Properties.MaxLength = 10
      TabOrder = 2
      Width = 93
    end
    object Ed3: TcxCurrencyEdit
      Left = 112
      Top = 112
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = ',0.00000;-,0.00000'
      Properties.MaxLength = 10
      TabOrder = 3
      Width = 93
    end
    object Ed4: TcxCurrencyEdit
      Left = 112
      Top = 139
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = ',0.00000;-,0.00000'
      Properties.MaxLength = 10
      TabOrder = 4
      Width = 93
    end
    object Ed5: TcxCurrencyEdit
      Left = 236
      Top = 60
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = ',0.00000;-,0.00000'
      Properties.MaxLength = 10
      TabOrder = 5
      Width = 93
    end
    object Ed6: TcxCurrencyEdit
      Left = 236
      Top = 84
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = ',0.00000;-,0.00000'
      Properties.MaxLength = 10
      TabOrder = 6
      Width = 93
    end
    object Ed7: TcxCurrencyEdit
      Left = 236
      Top = 111
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = ',0.00000;-,0.00000'
      Properties.MaxLength = 10
      TabOrder = 7
      Width = 93
    end
    object Ed8: TcxCurrencyEdit
      Left = 236
      Top = 138
      Properties.DecimalPlaces = 5
      Properties.DisplayFormat = ',0.00000;-,0.00000'
      Properties.MaxLength = 10
      TabOrder = 8
      Width = 93
    end
  end
  object OraSQL1: TOraSQL
    SQL.Strings = (
      'begin '
      
        '  dicts.save_curses(:P1, :P2, :P3, :P4, :P5, :P6, :P7, :P8, :P9 ' +
        ');'
      'end;')
    Left = 73
    Top = 15
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P1'
      end
      item
        DataType = ftUnknown
        Name = 'P2'
      end
      item
        DataType = ftUnknown
        Name = 'P3'
      end
      item
        DataType = ftUnknown
        Name = 'P4'
      end
      item
        DataType = ftUnknown
        Name = 'P5'
      end
      item
        DataType = ftUnknown
        Name = 'P6'
      end
      item
        DataType = ftUnknown
        Name = 'P7'
      end
      item
        DataType = ftUnknown
        Name = 'P8'
      end
      item
        DataType = ftUnknown
        Name = 'P9'
      end>
  end
  object alSettings: TActionList
    Left = 320
    Top = 32
    object aEnter: TAction
      Caption = #1047#1072#1087#1080#1089#1072#1090#1100
      ShortCut = 16397
      OnExecute = aEnterExecute
    end
    object aClose: TAction
      Caption = #1047#1072#1082#1088#1099#1090#1100
      OnExecute = aCloseExecute
    end
  end
end
