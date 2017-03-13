object printf: Tprintf
  Left = 312
  Top = 267
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '  '#1042#1099#1073#1086#1088' '#1089#1090#1080#1082#1077#1088#1086#1074
  ClientHeight = 472
  ClientWidth = 691
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object top_panel: TPanel
    Left = 0
    Top = 0
    Width = 691
    Height = 432
    Align = alClient
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object Panel7: TPanel
      Left = 1
      Top = 397
      Width = 689
      Height = 34
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        689
        34)
      object Label9: TLabel
        Left = 9
        Top = 7
        Width = 55
        Height = 16
        Caption = #1055#1086#1084#1077#1090#1082#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label36: TLabel
        Left = 493
        Top = 11
        Width = 185
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1042#1089#1077' '#1079#1085#1072#1095#1077#1085#1080#1103' '#1079#1072#1076#1072#1085#1099' '#1074' '#1089#1072#1085#1090#1080#1084#1077#1090#1088#1072#1093
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 70
        Top = 5
        Width = 289
        Height = 22
        TabOrder = 0
      end
    end
    object Panel1: TPanel
      Tag = 1
      Left = 8
      Top = 8
      Width = 165
      Height = 81
      Cursor = crHandPoint
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      OnClick = Panel1Click
      object Label1: TLabel
        Tag = 1
        Left = 2
        Top = 20
        Width = 161
        Height = 59
        Cursor = crHandPoint
        Align = alClient
        Alignment = taCenter
        Caption = #1056#1072#1079#1084#1077#1088' '#1101#1090#1080#1082#1077#1090#1082#1080'   48.5'#1093'25.4 '#1084#1084' 40 '#1101#1090#1080#1082#1077#1090#1086#1082' '#1085#1072' '#1083#1080#1089#1090#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        WordWrap = True
        OnClick = Panel1Click
        ExplicitWidth = 127
        ExplicitHeight = 51
      end
      object Label2: TLabel
        Tag = 1
        Left = 2
        Top = 2
        Width = 161
        Height = 18
        Cursor = crHandPoint
        Align = alTop
        Alignment = taCenter
        Caption = #1057#1058#1048#1050#1045#1056' '#1044#1051#1071' '#1057#1056#1045#1047#1040
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = Panel1Click
        ExplicitWidth = 151
      end
    end
    object Panel2: TPanel
      Tag = 2
      Left = 176
      Top = 8
      Width = 195
      Height = 81
      Cursor = crHandPoint
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      OnClick = Panel1Click
      object Label3: TLabel
        Tag = 2
        Left = 2
        Top = 20
        Width = 191
        Height = 59
        Cursor = crHandPoint
        Align = alClient
        Alignment = taCenter
        Caption = #1056#1072#1079#1084#1077#1088' '#1101#1090#1080#1082#1077#1090#1082#1080' 48.5'#1093'25.4 '#1084#1084' 40 '#1101#1090#1080#1082#1077#1090#1086#1082' '#1085#1072' '#1083#1080#1089#1090#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        WordWrap = True
        OnClick = Panel1Click
        ExplicitWidth = 186
        ExplicitHeight = 34
      end
      object Label4: TLabel
        Tag = 2
        Left = 2
        Top = 2
        Width = 191
        Height = 18
        Cursor = crHandPoint
        Align = alTop
        Alignment = taCenter
        Caption = #1057#1058#1048#1050#1045#1056' '#1044#1051#1071' '#1043#1054#1056#1064#1050#1054#1042
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = Panel1Click
        ExplicitWidth = 179
      end
    end
    object Panel5: TPanel
      Left = 176
      Top = 92
      Width = 195
      Height = 81
      Cursor = crHandPoint
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 12320765
      ParentBackground = False
      TabOrder = 3
      OnClick = Panel5Click
      object Label7: TLabel
        Left = 2
        Top = 20
        Width = 191
        Height = 59
        Cursor = crHandPoint
        Align = alClient
        Alignment = taCenter
        Caption = #1056#1072#1079#1084#1077#1088' '#1101#1090#1080#1082#1077#1090#1082#1080' 90'#1093'25 '#1084#1084' 21 '#1101#1090#1080#1082#1077#1090#1082#1072' '#1085#1072' '#1083#1080#1089#1090#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        WordWrap = True
        OnClick = Panel5Click
        ExplicitWidth = 186
        ExplicitHeight = 34
      end
      object Label8: TLabel
        Left = 2
        Top = 2
        Width = 191
        Height = 18
        Cursor = crHandPoint
        Align = alTop
        Alignment = taCenter
        Caption = #1062#1045#1053#1053#1048#1050#1048
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = Panel5Click
        ExplicitWidth = 74
      end
    end
    object Panel3: TPanel
      Left = 176
      Top = 177
      Width = 195
      Height = 81
      Cursor = crHandPoint
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 14286809
      ParentBackground = False
      TabOrder = 4
      OnClick = Panel3Click
      object Label5: TLabel
        Left = 2
        Top = 20
        Width = 191
        Height = 59
        Cursor = crHandPoint
        Align = alClient
        Alignment = taCenter
        Caption = #1056#1072#1079#1084#1077#1088' '#1101#1090#1080#1082#1077#1090#1082#1080' 70'#1093'35 '#1084#1084' 24 '#1101#1090#1080#1082#1077#1090#1082#1080' '#1085#1072' '#1083#1080#1089#1090#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        WordWrap = True
        OnClick = Panel3Click
        ExplicitWidth = 186
        ExplicitHeight = 34
      end
      object Label6: TLabel
        Left = 2
        Top = 2
        Width = 191
        Height = 18
        Cursor = crHandPoint
        Align = alTop
        Alignment = taCenter
        Caption = #1057#1058#1048#1050#1045#1056' '#1044#1051#1071' '#1040#1050'-'#1056#1054#1042
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = Panel3Click
        ExplicitWidth = 158
      end
    end
    object Panel6: TPanel
      Left = 176
      Top = 262
      Width = 195
      Height = 80
      Cursor = crHandPoint
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 16771022
      ParentBackground = False
      TabOrder = 5
      OnClick = Panel6Click
      object Label10: TLabel
        Left = 2
        Top = 2
        Width = 191
        Height = 36
        Cursor = crHandPoint
        Align = alTop
        Alignment = taCenter
        Caption = #1057#1058#1048#1050#1045#1056' '#1044#1051#1071' '#1040#1050'-'#1056#1054#1042' '#1084#1072#1083#1077#1085#1100#1082#1080#1081
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
        OnClick = Panel6Click
        ExplicitWidth = 162
      end
      object Label11: TLabel
        Left = 2
        Top = 38
        Width = 191
        Height = 40
        Align = alClient
        Alignment = taCenter
        Caption = #1056#1072#1079#1084#1077#1088' '#1101#1090#1080#1082#1077#1090#1082#1080' 48.5'#1093'25.4 '#1084#1084' 40 '#1101#1090#1080#1082#1077#1090#1086#1082' '#1085#1072' '#1083#1080#1089#1090#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        WordWrap = True
        OnClick = Panel6Click
        ExplicitWidth = 186
        ExplicitHeight = 34
      end
    end
    object Panel11: TPanel
      Left = 374
      Top = 262
      Width = 305
      Height = 80
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 16771022
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 6
      object Label30: TLabel
        Left = 10
        Top = 7
        Width = 69
        Height = 13
        Caption = #1054#1090#1089#1090#1091#1087' '#1089#1083#1077#1074#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label31: TLabel
        Left = 10
        Top = 29
        Width = 75
        Height = 13
        Caption = #1054#1090#1089#1090#1091#1087' '#1089#1087#1088#1072#1074#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label32: TLabel
        Left = 157
        Top = 7
        Width = 75
        Height = 13
        Caption = #1054#1090#1089#1090#1091#1087' '#1089#1074#1077#1088#1093#1091
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label33: TLabel
        Left = 157
        Top = 29
        Width = 68
        Height = 13
        Caption = #1054#1090#1089#1090#1091#1087' '#1089#1085#1080#1079#1091
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label34: TLabel
        Left = 10
        Top = 52
        Width = 82
        Height = 13
        Caption = #1064#1080#1088#1080#1085#1072' '#1073#1083#1086#1082#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label35: TLabel
        Left = 157
        Top = 52
        Width = 82
        Height = 13
        Caption = #1042#1099#1089#1086#1090#1072' '#1073#1083#1086#1082#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxCurrencyEdit19: TcxCurrencyEdit
        Left = 96
        Top = 4
        EditValue = 0.000000000000000000
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.Nullable = False
        Properties.NullString = '0'
        TabOrder = 0
        Width = 49
      end
      object cxCurrencyEdit20: TcxCurrencyEdit
        Left = 96
        Top = 26
        EditValue = 0.000000000000000000
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.Nullable = False
        Properties.NullString = '0'
        TabOrder = 1
        Width = 49
      end
      object cxCurrencyEdit21: TcxCurrencyEdit
        Left = 242
        Top = 26
        EditValue = 0.000000000000000000
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.Nullable = False
        Properties.NullString = '0'
        TabOrder = 3
        Width = 49
      end
      object cxCurrencyEdit22: TcxCurrencyEdit
        Left = 242
        Top = 4
        EditValue = 0.000000000000000000
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.Nullable = False
        Properties.NullString = '0'
        TabOrder = 2
        Width = 49
      end
      object cxCurrencyEdit23: TcxCurrencyEdit
        Left = 96
        Top = 49
        EditValue = 0.000000000000000000
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.Nullable = False
        Properties.NullString = '0'
        TabOrder = 4
        Width = 49
      end
      object cxCurrencyEdit24: TcxCurrencyEdit
        Left = 242
        Top = 49
        EditValue = 0.000000000000000000
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.Nullable = False
        Properties.NullString = '0'
        TabOrder = 5
        Width = 49
      end
    end
    object Panel10: TPanel
      Left = 374
      Top = 177
      Width = 305
      Height = 81
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 14286809
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 7
      object Label24: TLabel
        Left = 10
        Top = 7
        Width = 69
        Height = 13
        Caption = #1054#1090#1089#1090#1091#1087' '#1089#1083#1077#1074#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label25: TLabel
        Left = 10
        Top = 29
        Width = 75
        Height = 13
        Caption = #1054#1090#1089#1090#1091#1087' '#1089#1087#1088#1072#1074#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 157
        Top = 7
        Width = 75
        Height = 13
        Caption = #1054#1090#1089#1090#1091#1087' '#1089#1074#1077#1088#1093#1091
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label27: TLabel
        Left = 157
        Top = 29
        Width = 68
        Height = 13
        Caption = #1054#1090#1089#1090#1091#1087' '#1089#1085#1080#1079#1091
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label28: TLabel
        Left = 10
        Top = 52
        Width = 82
        Height = 13
        Caption = #1064#1080#1088#1080#1085#1072' '#1073#1083#1086#1082#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 157
        Top = 52
        Width = 82
        Height = 13
        Caption = #1042#1099#1089#1086#1090#1072' '#1073#1083#1086#1082#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxCurrencyEdit13: TcxCurrencyEdit
        Left = 96
        Top = 4
        EditValue = 0.610000000000000000
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.Nullable = False
        Properties.NullString = '0'
        TabOrder = 0
        Width = 49
      end
      object cxCurrencyEdit14: TcxCurrencyEdit
        Left = 96
        Top = 26
        EditValue = 0.610000000000000000
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.Nullable = False
        Properties.NullString = '0'
        TabOrder = 1
        Width = 49
      end
      object cxCurrencyEdit15: TcxCurrencyEdit
        Left = 242
        Top = 26
        EditValue = 0.890000000000000000
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.Nullable = False
        Properties.NullString = '0'
        TabOrder = 3
        Width = 49
      end
      object cxCurrencyEdit16: TcxCurrencyEdit
        Left = 242
        Top = 4
        EditValue = 0.890000000000000000
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.Nullable = False
        Properties.NullString = '0'
        TabOrder = 2
        Width = 49
      end
      object cxCurrencyEdit17: TcxCurrencyEdit
        Left = 96
        Top = 49
        EditValue = 0.000000000000000000
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.Nullable = False
        Properties.NullString = '0'
        TabOrder = 4
        Width = 49
      end
      object cxCurrencyEdit18: TcxCurrencyEdit
        Left = 242
        Top = 49
        EditValue = 0.000000000000000000
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.Nullable = False
        Properties.NullString = '0'
        TabOrder = 5
        Width = 49
      end
    end
    object Panel9: TPanel
      Left = 374
      Top = 92
      Width = 305
      Height = 81
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 12320765
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 8
      object Label18: TLabel
        Left = 10
        Top = 7
        Width = 69
        Height = 13
        Caption = #1054#1090#1089#1090#1091#1087' '#1089#1083#1077#1074#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 10
        Top = 29
        Width = 75
        Height = 13
        Caption = #1054#1090#1089#1090#1091#1087' '#1089#1087#1088#1072#1074#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 157
        Top = 7
        Width = 75
        Height = 13
        Caption = #1054#1090#1089#1090#1091#1087' '#1089#1074#1077#1088#1093#1091
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 157
        Top = 29
        Width = 68
        Height = 13
        Caption = #1054#1090#1089#1090#1091#1087' '#1089#1085#1080#1079#1091
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 10
        Top = 52
        Width = 82
        Height = 13
        Caption = #1064#1080#1088#1080#1085#1072' '#1073#1083#1086#1082#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 157
        Top = 52
        Width = 82
        Height = 13
        Caption = #1042#1099#1089#1086#1090#1072' '#1073#1083#1086#1082#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxCurrencyEdit7: TcxCurrencyEdit
        Left = 96
        Top = 4
        EditValue = 0.000000000000000000
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.Nullable = False
        Properties.NullString = '0'
        TabOrder = 0
        Width = 49
      end
      object cxCurrencyEdit8: TcxCurrencyEdit
        Left = 96
        Top = 26
        EditValue = 0.000000000000000000
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.Nullable = False
        Properties.NullString = '0'
        TabOrder = 1
        Width = 49
      end
      object cxCurrencyEdit9: TcxCurrencyEdit
        Left = 242
        Top = 26
        EditValue = 0.000000000000000000
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.Nullable = False
        Properties.NullString = '0'
        TabOrder = 3
        Width = 49
      end
      object cxCurrencyEdit10: TcxCurrencyEdit
        Left = 242
        Top = 4
        EditValue = 0.000000000000000000
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.Nullable = False
        Properties.NullString = '0'
        TabOrder = 2
        Width = 49
      end
      object cxCurrencyEdit11: TcxCurrencyEdit
        Left = 96
        Top = 49
        EditValue = 0.000000000000000000
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.Nullable = False
        Properties.NullString = '0'
        TabOrder = 4
        Width = 49
      end
      object cxCurrencyEdit12: TcxCurrencyEdit
        Left = 242
        Top = 49
        EditValue = 0.000000000000000000
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.Nullable = False
        Properties.NullString = '0'
        TabOrder = 5
        Width = 49
      end
    end
    object Panel8: TPanel
      Left = 374
      Top = 8
      Width = 305
      Height = 81
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 9
      object Label12: TLabel
        Left = 10
        Top = 7
        Width = 69
        Height = 13
        Caption = #1054#1090#1089#1090#1091#1087' '#1089#1083#1077#1074#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 10
        Top = 29
        Width = 75
        Height = 13
        Caption = #1054#1090#1089#1090#1091#1087' '#1089#1087#1088#1072#1074#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 157
        Top = 7
        Width = 75
        Height = 13
        Caption = #1054#1090#1089#1090#1091#1087' '#1089#1074#1077#1088#1093#1091
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 157
        Top = 29
        Width = 68
        Height = 13
        Caption = #1054#1090#1089#1090#1091#1087' '#1089#1085#1080#1079#1091
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 10
        Top = 52
        Width = 82
        Height = 13
        Caption = #1064#1080#1088#1080#1085#1072' '#1073#1083#1086#1082#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 157
        Top = 52
        Width = 82
        Height = 13
        Caption = #1042#1099#1089#1086#1090#1072' '#1073#1083#1086#1082#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxCurrencyEdit1: TcxCurrencyEdit
        Left = 96
        Top = 4
        EditValue = 0.750000000000000000
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.Nullable = False
        Properties.NullString = '0'
        TabOrder = 0
        Width = 49
      end
      object cxCurrencyEdit2: TcxCurrencyEdit
        Left = 96
        Top = 26
        EditValue = 0.750000000000000000
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.Nullable = False
        Properties.NullString = '0'
        TabOrder = 1
        Width = 49
      end
      object cxCurrencyEdit3: TcxCurrencyEdit
        Left = 242
        Top = 26
        EditValue = 1.850000000000000000
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.Nullable = False
        Properties.NullString = '0'
        TabOrder = 3
        Width = 49
      end
      object cxCurrencyEdit4: TcxCurrencyEdit
        Left = 242
        Top = 4
        EditValue = 2.100000000000000000
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.Nullable = False
        Properties.NullString = '0'
        TabOrder = 2
        Width = 49
      end
      object cxCurrencyEdit5: TcxCurrencyEdit
        Left = 96
        Top = 49
        EditValue = 4.850000000000000000
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.Nullable = False
        Properties.NullString = '0'
        TabOrder = 4
        Width = 49
      end
      object cxCurrencyEdit6: TcxCurrencyEdit
        Left = 242
        Top = 49
        EditValue = 2.540000000000000000
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = ',0.00'#39#39';-,0.00'#39#39
        Properties.Nullable = False
        Properties.NullString = '0'
        TabOrder = 5
        Width = 49
      end
    end
    object chbPrintPacked: TCheckBox
      Left = 10
      Top = 345
      Width = 375
      Height = 17
      Caption = #1055#1077#1095#1072#1090#1100' '#1089#1090#1080#1082#1077#1088#1086#1074' '#1076#1083#1103' '#1091#1087#1072#1082#1086#1074#1072#1085#1085#1099#1093' '#1082#1083#1080#1077#1085#1090#1086#1074
      TabOrder = 10
    end
    object chbPrintColor: TCheckBox
      Left = 10
      Top = 363
      Width = 375
      Height = 17
      Caption = #1055#1077#1095#1072#1090#1100' '#1094#1074#1077#1090#1072' '#1074' '#1089#1088#1077#1079#1082#1077
      TabOrder = 11
    end
    object chbPrintNotPrinted: TCheckBox
      Left = 10
      Top = 381
      Width = 375
      Height = 17
      Caption = #1055#1077#1095#1072#1090#1100' '#1085#1077#1087#1077#1095#1072#1090#1072#1077#1084#1099#1077' '#1087#1086#1079#1080#1094#1080#1080
      TabOrder = 12
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 432
    Width = 691
    Height = 40
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      691
      40)
    object BitBtn1: TcxButton
      Left = 496
      Top = 4
      Width = 190
      Height = 30
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #1042#1099#1093#1086#1076
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
      Colors.Default = clBtnFace
      Colors.Normal = clBtnFace
      Colors.Hot = clBtnFace
      Colors.Pressed = clBtnFace
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
    object btn_save: TcxButton
      Left = 8
      Top = 4
      Width = 190
      Height = 30
      Cursor = crHandPoint
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1085#1072#1089#1090#1088#1086#1081#1082#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btn_saveClick
      Colors.Default = clBtnFace
      Colors.Normal = clBtnFace
      Colors.Hot = clBtnFace
      Colors.Pressed = clBtnFace
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000994F42BDA35D
        53DF9E5648DFA36156DFA26056DFA05E56DF9E5C56DF9C5B57DF9A5957DF9958
        57DF985757DF965657DF955557DF8C4648DF965153DF894043B9A86256E4FEA7
        A7FFC08B7EFFF5EAE5FFF5E9E5FFF5E9E5FFF5E9E5FFF5E9E5FFF5E9E5FFF5E9
        E5FFF5E9E5FFF5E9E5FFF6EBE7FFB37172FFFEA5A5FF965153DFA96356E4FEA1
        A1FFC18C7EFFE5D9D5FFC8BBB7FFC8BBB7FFC8BBB7FFC8BBB7FFC8BBB7FFC8BB
        B7FFC8BBB7FFC8BBB7FFE9DDD9FFB47071FFFE9F9FFF975253DFAA6556E4FEA5
        A5FFC38E7FFFF4E9E5FFEFE3DFFFEFE3DFFFEFE3DFFFEFE3DFFFEFE3DFFFEFE3
        DFFFEFE3DFFFEFE3DFFFF5EBE8FFB57171FFFEA1A1FF985354DFAB6656E4FEA9
        A9FFC48F7FFFE6DCD8FFC4B9B5FFC4B9B5FFC4B9B5FFC4B9B5FFC4B9B5FFC4B9
        B5FFC4B9B5FFC4B9B5FFE9E0DDFFB67372FFFEA5A5FF985454DFAC6756E4FEAD
        ADFFC59180FFF8F0EDFFF5EDEAFFF5EDEAFFF5EDEAFFF5EDEAFFF5EDEAFFF5ED
        EAFFF5EDEAFFF5EDEAFFF8F1EEFFB77573FFFEA9A9FF995554DFAD6856E4FEB1
        B1FFC79280FFE6DFDCFFC0B7B3FFC0B7B3FFC0B7B3FFC0B7B3FFC0B7B3FFC0B7
        B3FFC0B7B3FFC0B7B3FFEAE3E0FFB87774FFFEADADFF9A5654DFAE6956E4FEB6
        B6FFC79380FFFAF4F2FFFAF4F2FFFAF4F2FFFAF4F2FFFAF4F2FFFAF4F2FFFAF4
        F2FFFAF4F2FFFAF4F2FFFAF5F3FFBA7974FFFEB1B1FF9B5754DFAF6B57E4FEBA
        BAFFBC7D66FFD7B4A6FFD6B3A6FFD6B3A6FFD5B2A6FFD4B1A6FFD3B0A6FFD2B0
        A6FFD1AFA7FFD0AEA7FFCFADA7FFB46F68FFFEB5B5FF9C5855DFB06C57E4FEBE
        BEFFF1AAA5FFE39A90FFE0978CFFE0968CFFDF958CFFDF958BFFDF948BFFDE93
        8BFFDE938BFFDD928AFFE0958EFFF2A6A5FFFEBABAFF9D5955DFB16D57E4FEC2
        C2FFFFBCBCFFD57D6DFFEB7D74FFD0A399FFD1A79DFFD0A69CFFCAA198FFCAA1
        97FFCF988EFFEC7C73FFD57E70FFFFB7B7FFFEBEBEFF9E5A54DFB26E57E4FEC6
        C6FFFFC0C0FFDE8174FFFD7C78FFDBC1BBFFDBC8C0FFDAC6BFFFB78069FFAD64
        47FFD7ADA6FFFF7B77FFDE8477FFFFBBBBFFFEC2C2FFA05C54DFB36E57E4FEC9
        C9FFFFC3C3FFDE8578FFFD847FFFE1CBC7FFE4D6D0FFE2D4CFFFB8836EFFAC66
        4BFFDAB3ADFFFF837EFFDE877AFFFFBFBFFFFEC5C5FFA15D54DFB36F57E4FECC
        CCFFFFC7C7FFDE897BFFFD8C86FFE8D7D3FFEEE5E1FFECE3DFFFBA8A77FFAD6E
        55FFDDBAB5FFFF8C86FFDE8B7EFFFFC2C2FFFECACAFFA15D53DFB47057E4FED2
        D2FFFECECEFFDE8E80FFFD968FFFE9D8D4FFEFE5E2FFEDE4E1FFD0B7AEFFCCAD
        A1FFE0BFBAFFFF958FFFDE9083FFFDCDCDFFC38A83FF964B4082A95E41BDB26D
        53DFB16C53DFB46950DFBD725BDFB5715ADFB4705ADFB4705ADFB46F5ADFB36E
        59DFB46E59DFBA705BDFAE644FDFA45E50DE994E406D00000000}
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      Spacing = 6
    end
  end
  object frxReport1: TfrxReport
    Version = '4.12.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 37936.562692592600000000
    ReportOptions.LastChange = 41679.051146377300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 257
    Top = 360
    Datasets = <
      item
        DataSet = frxSelPrntPreview
        DataSetName = 'frxSelPrntPreview'
      end>
    Variables = <
      item
        Name = ' CustCut'
        Value = Null
      end
      item
        Name = 'PrintMark'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 7.500000000000000000
      RightMargin = 7.500000000000000000
      TopMargin = 21.000000000000000000
      BottomMargin = 18.500000000000000000
      Columns = 1
      ColumnWidth = 198.000000000000000000
      ColumnPositions.Strings = (
        '0')
      object MasterData9: TfrxMasterData
        Height = 96.000000000000000000
        Top = 18.897650000000000000
        Width = 737.008350000000000000
        Columns = 4
        ColumnWidth = 183.307086614173000000
        DataSet = frxSelPrntPreview
        DataSetName = 'frxSelPrntPreview'
        RowCount = 0
        object Memo6: TfrxMemoView
          Left = 3.779530000000000000
          Top = 0.220470000000000000
          Width = 176.000000000000000000
          Height = 41.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[frxSelPrntPreview."F_NAME_RU"] [frxSelPrntPreview."COLOUR"] [fr' +
              'xSelPrntPreview."RUS_MARKS"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Bar1: TfrxBarCodeView
          Left = 44.559060000000000000
          Top = 43.338590000000000000
          Width = 103.000000000000000000
          Height = 36.220470000000000000
          ShowHint = False
          BarType = bcCodeEAN13
          CalcCheckSum = True
          Expression = '<frxSelPrntPreview."PRINT_CODE">'
          Rotation = 0
          Text = '12345678'
          WideBarRatio = 2.000000000000000000
          Zoom = 1.000000000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
        end
        object Memo1: TfrxMemoView
          Left = 80.574830000000000000
          Top = 80.559060000000000000
          Width = 61.543290000000000000
          Height = 10.220470000000000000
          ShowHint = False
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            'www.starlight.ru')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 144.118120000000000000
          Top = 79.370078740000000000
          Width = 36.440940000000000000
          Height = 14.000000000000000000
          ShowHint = False
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[frxSelPrntPreview."TRUCK"] :: [frxSelPrntPreview."TROLLEY_CALC"' +
              ']')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 79.370130000000000000
          Width = 78.015770000000000000
          Height = 14.000000000000000000
          ShowHint = False
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[frxSelPrntPreview."SRC_TROLLEY"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 9.448818900000000000
        Top = 173.858380000000000000
        Width = 737.008350000000000000
        object Memo3: TfrxMemoView
          Left = 613.661410000000000000
          Width = 122.015770000000000000
          Height = 9.448818900000000000
          ShowHint = False
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[PAGE#] '#1056#1105#1056#183' [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxSelPrntPreview: TfrxDBDataset
    UserName = 'frxSelPrntPreview'
    CloseDataSource = False
    FieldAliases.Strings = (
      'N_ID=N_ID'
      'TITLE=TITLE'
      'PRICE=PRICE'
      'CODE=CODE'
      'H_CODE=H_CODE'
      'COLOUR=COLOUR'
      'F_NAME_RU=F_NAME_RU'
      'COUNTRY=COUNTRY'
      'RUS_MARKS=RUS_MARKS'
      'BAR_CODE=BAR_CODE'
      'PRINT_CODE=PRINT_CODE'
      'PACK_PRICE=PACK_PRICE'
      'INVOICE_ID=INVOICE_ID'
      'TROLLEY=TROLLEY'
      'TRUCK=TRUCK'
      'SRC_TROLLEY=SRC_TROLLEY'
      'ORDER_NUMBER=ORDER_NUMBER'
      'TROLLEY_CALC=TROLLEY_CALC'
      'PACKQ=PACKQ')
    DataSet = DM.SelPrntPreview
    BCDToCurrency = False
    Left = 257
    Top = 391
  end
  object frxXLSExport1: TfrxXLSExport
    FileName = 'ReportOut'
    UseFileCache = True
    DefaultPath = './'
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 288
    Top = 360
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    DefaultPath = './'
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport (http://www.fast-report.com)'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 288
    Top = 391
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    DefaultPath = './'
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 320
    Top = 360
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 320
    Top = 391
  end
end
