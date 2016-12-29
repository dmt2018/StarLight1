object frmEditPercent: TfrmEditPercent
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 129
  ClientWidth = 292
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
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 292
    Height = 89
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 351
    ExplicitHeight = 136
    object Lbl2: TLabel
      Left = 12
      Top = 18
      Width = 261
      Height = 19
      Caption = #1055#1088#1086#1094#1077#1085#1090' '#1085#1072#1094#1077#1085#1082#1080' '#1063#1051' '#1087#1088#1080' '#1087#1088#1086#1076#1072#1078#1077':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edCoef: TcxCurrencyEdit
      Left = 12
      Top = 43
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.AssignedValues.MinValue = True
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = ',0;-,0'
      Properties.MaxValue = 100.000000000000000000
      Properties.Nullable = False
      Properties.NullString = '0'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 261
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 89
    Width = 292
    Height = 40
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 136
    ExplicitWidth = 351
    DesignSize = (
      292
      40)
    object btnSave: TcxButton
      Left = 60
      Top = 7
      Width = 107
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1079#1072#1087#1080#1089#1072#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnSaveClick
      Colors.Default = clActiveBorder
      ExplicitLeft = 119
    end
    object btnClose: TcxButton
      Left = 175
      Top = 7
      Width = 107
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #1079#1072#1082#1088#1099#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnCloseClick
      Colors.Default = clActiveBorder
      ExplicitLeft = 234
    end
  end
  object OraQuery1: TOraQuery
    Left = 56
    Top = 88
  end
end
