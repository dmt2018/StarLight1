object InfoF: TInfoF
  Left = 659
  Top = 492
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1063#1090#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093'...'
  ClientHeight = 72
  ClientWidth = 192
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 24
    Width = 193
    Height = 13
    Alignment = taCenter
    AutoSize = False
    Caption = #1048#1076#1105#1090' '#1095#1090#1077#1085#1080#1077' '#1076#1072#1085#1085#1099#1093'...'
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = Timer2Timer
    Left = 32
  end
end
