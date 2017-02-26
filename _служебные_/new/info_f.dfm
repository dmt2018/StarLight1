object frmAbout: TfrmAbout
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' '#1054' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1072#1093
  ClientHeight = 309
  ClientWidth = 570
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 570
    Height = 269
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitHeight = 194
    object gbInfoBuh: TcxGroupBox
      Left = 8
      Top = 79
      Caption = ' '#1041#1091#1093#1075#1072#1083#1090#1077#1088#1080#1103': '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 50
      Width = 553
      object lbl3: TLabel
        Left = 8
        Top = 20
        Width = 194
        Height = 17
        Caption = #1045#1083#1077#1085#1072' '#1042#1072#1089#1080#1083#1100#1077#1074#1085#1072' '#1052#1072#1083#1102#1096#1082#1080#1085#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
      end
      object lblmail3: TLabel
        Left = 240
        Top = 20
        Width = 94
        Height = 16
        Cursor = crHandPoint
        Caption = 'eva@starlight.ru'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = lblmail1Click
      end
    end
    object gbInfoProg: TcxGroupBox
      Left = 8
      Top = 8
      Caption = ' '#1056#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1080': '
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Height = 65
      Width = 553
      object lbl1: TLabel
        Left = 8
        Top = 20
        Width = 216
        Height = 17
        Caption = #1050#1083#1077#1087#1086#1074' '#1040#1083#1077#1082#1089#1072#1085#1076#1088' '#1042#1083#1072#1076#1080#1084#1080#1088#1086#1074#1080#1095
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
      end
      object lblmail1: TLabel
        Left = 240
        Top = 20
        Width = 134
        Height = 16
        Cursor = crHandPoint
        Caption = 'alex.klepov@gmail.com'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = lblmail1Click
      end
      object lbl2: TLabel
        Left = 8
        Top = 35
        Width = 212
        Height = 17
        Caption = #1058#1072#1088#1072#1089#1086#1074' '#1044#1084#1080#1090#1088#1080#1081' '#1040#1083#1077#1082#1089#1072#1085#1076#1088#1086#1074#1080#1095
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
      end
      object lblmail2: TLabel
        Left = 240
        Top = 35
        Width = 85
        Height = 16
        Cursor = crHandPoint
        Caption = 'dt@starlight.ru'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = lblmail1Click
      end
    end
    object gbInfoInv: TcxGroupBox
      Left = 8
      Top = 135
      Caption = ' '#1048#1085#1074#1086#1081#1089#1099': '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Height = 50
      Width = 274
    end
    object gbInfoRaznos: TcxGroupBox
      Left = 288
      Top = 135
      Caption = ' '#1056#1072#1079#1085#1086#1089': '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Height = 50
      Width = 273
    end
    object gbInfo: TcxGroupBox
      Left = 8
      Top = 191
      Caption = ' '#1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086': '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Height = 66
      Width = 553
      object lbl4: TLabel
        Left = 8
        Top = 20
        Width = 195
        Height = 17
        Caption = #1055#1086' '#1074#1086#1087#1088#1086#1089#1072#1084' '#1088#1072#1073#1086#1090#1099' '#1089#1080#1089#1090#1077#1084#1099':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
      end
      object lblmail4: TLabel
        Left = 240
        Top = 20
        Width = 134
        Height = 16
        Cursor = crHandPoint
        Caption = 'alex.klepov@gmail.com'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = lblmail1Click
      end
      object Label1: TLabel
        Left = 240
        Top = 38
        Width = 109
        Height = 16
        Cursor = crHandPoint
        Caption = 'admin@starlight.ru'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = lblmail1Click
      end
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 269
    Width = 570
    Height = 40
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 263
    DesignSize = (
      570
      40)
    object btnexit: TcxButton
      Left = 428
      Top = 6
      Width = 133
      Height = 27
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnexitClick
      Colors.Default = clActiveBorder
    end
  end
end
