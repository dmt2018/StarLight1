object frmEditPercent: TfrmEditPercent
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 176
  ClientWidth = 351
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 351
    Height = 136
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 367
    ExplicitHeight = 175
    object Lbl2: TLabel
      Left = 12
      Top = 58
      Width = 113
      Height = 16
      Caption = #1055#1088#1086#1094#1077#1085#1090' '#1085#1072#1076#1073#1072#1074#1082#1080':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 131
      Top = 57
      Width = 121
      Height = 21
      TabOrder = 0
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 136
    Width = 351
    Height = 40
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 175
    ExplicitWidth = 367
    DesignSize = (
      351
      40)
    object btnSave: TcxButton
      Left = 119
      Top = 7
      Width = 107
      Height = 25
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
      ExplicitLeft = 135
    end
    object btnClose: TcxButton
      Left = 234
      Top = 7
      Width = 107
      Height = 25
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
      ExplicitLeft = 250
    end
  end
  object OraQuery1: TOraQuery
    Left = 264
    Top = 16
  end
end
