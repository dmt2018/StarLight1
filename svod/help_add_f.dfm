object help_add: Thelp_add
  Left = 397
  Top = 203
  BorderStyle = bsDialog
  Caption = '  '#1055#1086#1084#1086#1097#1100
  ClientHeight = 221
  ClientWidth = 427
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 427
    Height = 33
    Align = alTop
    Caption = #1042#1074#1086#1076' '#1085#1072#1082#1083#1072#1076#1085#1086#1081' '#1074#1088#1091#1095#1085#1091#1102
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 447
  end
  object Panel2: TPanel
    Left = 0
    Top = 33
    Width = 427
    Height = 188
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 192
    ExplicitTop = 88
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Label2: TLabel
      Left = 23
      Top = 96
      Width = 342
      Height = 16
      Caption = '2. '#1042#1074#1077#1089#1090#1080' '#1087#1086#1089#1083#1077#1076#1086#1074#1072#1090#1077#1083#1100#1085#1086#1089#1090#1100' '#1073#1091#1082#1074' '#1074' '#1087#1086#1083#1077' '#1082#1086#1076' '#1080#1083#1080' '#1060#1048#1054
    end
    object Label8: TLabel
      Left = 23
      Top = 15
      Width = 220
      Height = 16
      Caption = '1. '#1042#1099#1073#1088#1072#1090#1100' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1091#1102' '#1086#1087#1077#1088#1072#1094#1080#1102'.'
    end
    object Label13: TLabel
      Left = 23
      Top = 147
      Width = 268
      Height = 16
      Caption = '3. '#1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1076#1088#1091#1075#1080#1077' '#1087#1086#1083#1103' '#1087#1086' '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086#1089#1090#1080
    end
    object Label3: TLabel
      Left = 38
      Top = 117
      Width = 312
      Height = 16
      Caption = #1053#1072#1078#1072#1090#1100' "'#1060#1080#1083#1100#1090#1088'" '#1080#1083#1080' F5.  '#1042#1099#1073#1088#1072#1090#1100' '#1085#1091#1078#1085#1086#1075#1086' '#1082#1083#1080#1077#1085#1090#1072
    end
    object Label4: TLabel
      Left = 38
      Top = 37
      Width = 355
      Height = 16
      Caption = #1055#1088#1080' '#1074#1099#1073#1086#1088#1077' '#1086#1087#1077#1088#1072#1094#1080#1081' '#1090#1080#1087#1072' '#1054#1057#1058' '#1080#1083#1080' 76, '#1082#1086#1076' '#1072#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080
    end
    object Label5: TLabel
      Left = 38
      Top = 61
      Width = 246
      Height = 16
      Caption = #1085#1072#1093#1086#1076#1080#1090#1089#1103' '#1080' '#1085#1077' '#1085#1091#1078#1085#1086' '#1074#1099#1087#1086#1083#1085#1103#1090#1100' '#1087#1091#1085#1082#1090' 2'
    end
  end
  object ActionList1: TActionList
    Left = 392
    Top = 145
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 27
      OnExecute = Action1Execute
    end
  end
end
