object frm_add_something: Tfrm_add_something
  Left = 617
  Top = 290
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frm_add_something'
  ClientHeight = 71
  ClientWidth = 219
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 35
    Width = 134
    Height = 13
    Caption = 'CTRL+ENTER  -  '#1089#1086#1093#1088#1072#1085#1080#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 8
    Top = 49
    Width = 67
    Height = 13
    Caption = 'ESC  -  '#1074#1099#1081#1090#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
  end
  object edit_smth: TcxTextEdit
    Left = 8
    Top = 8
    Style.BorderStyle = ebsOffice11
    TabOrder = 0
    Text = 'edit_smth'
    Width = 201
  end
  object ActionList1: TActionList
    Left = 128
    Top = 10
    object Save_: TAction
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102'  (Ctrl + S) '
      ShortCut = 16397
      OnExecute = Save_Execute
    end
    object Cancel_: TAction
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1074#1089#1077' '#1086#1087#1077#1088#1072#1094#1080#1080'  (Ctrl + C)'
      ShortCut = 27
      OnExecute = Cancel_Execute
    end
  end
end
