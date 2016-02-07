object frmDataInfo: TfrmDataInfo
  Left = 0
  Top = 0
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
  ClientHeight = 290
  ClientWidth = 557
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    557
    290)
  PixelsPerInch = 96
  TextHeight = 14
  object bvlMain: TBevel
    Left = 8
    Top = 244
    Width = 541
    Height = 8
    Shape = bsBottomLine
  end
  object btnClose: TButton
    Left = 459
    Top = 257
    Width = 90
    Height = 25
    Anchors = [akTop, akRight]
    Cancel = True
    Caption = #1047#1072#1082#1088#1099#1090#1100
    ModalResult = 2
    TabOrder = 0
  end
  object memoMain: TMemo
    Left = 8
    Top = 8
    Width = 541
    Height = 230
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
end
