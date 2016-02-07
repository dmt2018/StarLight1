object ChooseSheet: TChooseSheet
  Left = 573
  Top = 237
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1083#1080#1089#1090
  ClientHeight = 278
  ClientWidth = 167
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object ListBox1: TListBox
    Left = 4
    Top = 4
    Width = 160
    Height = 214
    ItemHeight = 16
    TabOrder = 0
    OnKeyDown = ListBox1KeyDown
  end
  object BitBtn1: TBitBtn
    Left = 4
    Top = 248
    Width = 82
    Height = 25
    Cursor = crHandPoint
    Action = Ok
    Caption = #1042#1099#1073#1088#1072#1090#1100
    Default = True
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 85
    Top = 248
    Width = 79
    Height = 25
    Cursor = crHandPoint
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object cxLabel1: TcxLabel
    Left = 4
    Top = 224
    Caption = 'ENTER - '#1074#1099#1073#1086#1088' '#1083#1080#1089#1090#1072
    ParentFont = False
    Properties.LabelStyle = cxlsRaised
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clMaroon
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Pitch = fpFixed
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  object ActionList1: TActionList
    Left = 112
    Top = 112
    object Ok: TAction
      Caption = 'Ok'
      OnExecute = OkExecute
    end
  end
end
