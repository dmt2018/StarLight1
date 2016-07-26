object frmAbout: TfrmAbout
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' '#1054' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1072#1093
  ClientHeight = 235
  ClientWidth = 429
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
    Width = 429
    Height = 194
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 171
      Height = 13
      Caption = #1050#1083#1077#1087#1086#1074' '#1040#1083#1077#1082#1089#1072#1085#1076#1088' '#1042#1083#1072#1076#1080#1084#1080#1088#1086#1074#1080#1095
    end
    object Label2: TLabel
      Left = 24
      Top = 51
      Width = 170
      Height = 13
      Caption = #1058#1072#1088#1072#1089#1086#1074' '#1044#1084#1080#1090#1088#1080#1081' '#1040#1083#1077#1082#1089#1072#1085#1076#1088#1086#1074#1080#1095
    end
    object Label4: TLabel
      Left = 24
      Top = 70
      Width = 73
      Height = 13
      Cursor = crHandPoint
      Caption = 'dt@starlight.ru'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object gbInfo: TcxGroupBox
      Left = 222
      Top = 25
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086':'
      TabOrder = 0
      Height = 152
      Width = 200
      object Label3: TLabel
        Left = 16
        Top = 128
        Width = 94
        Height = 13
        Cursor = crHandPoint
        Caption = 'alex_olmer@mail.ru'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = Label3Click
      end
      object Label5: TLabel
        Left = 16
        Top = 109
        Width = 153
        Height = 13
        Caption = #1055#1086' '#1074#1086#1087#1088#1086#1089#1072#1084' '#1088#1072#1073#1086#1090#1099' '#1089#1080#1089#1090#1077#1084#1099':'
      end
      object Label6: TLabel
        Left = 16
        Top = 24
        Width = 176
        Height = 13
        Caption = #1055#1086' '#1074#1086#1087#1088#1086#1089#1072#1084' '#1088#1072#1073#1086#1090#1099' '#1073#1091#1093#1075#1072#1083#1090#1077#1088#1080#1080':'
      end
      object Label7: TLabel
        Left = 16
        Top = 43
        Width = 156
        Height = 13
        Caption = #1045#1083#1077#1085#1072' '#1042#1072#1089#1080#1083#1100#1077#1074#1085#1072' '#1052#1072#1083#1102#1096#1082#1080#1085#1072
      end
      object Label8: TLabel
        Left = 16
        Top = 64
        Width = 81
        Height = 13
        Cursor = crHandPoint
        Caption = 'eva@starlight.ru'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
      end
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 194
    Width = 429
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      429
      41)
    object btnexit: TcxButton
      Left = 299
      Top = 8
      Width = 123
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 0
      OnClick = btnexitClick
      Colors.Default = clActiveBorder
    end
  end
end
