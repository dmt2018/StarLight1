object frmMainWebService: TfrmMainWebService
  Left = 0
  Top = 0
  Caption = 'Web Service'
  ClientHeight = 280
  ClientWidth = 619
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnStart: TButton
    Left = 8
    Top = 248
    Width = 75
    Height = 25
    Caption = #1057#1090#1072#1088#1090
    TabOrder = 0
    OnClick = btnStartClick
  end
  object mmLog: TMemo
    Left = 8
    Top = 8
    Width = 601
    Height = 234
    TabOrder = 2
  end
  object btnStop: TButton
    Left = 89
    Top = 248
    Width = 75
    Height = 25
    Caption = #1057#1090#1086#1087
    TabOrder = 1
    OnClick = btnStopClick
  end
  object StarServer: TIdHTTPServer
    Bindings = <>
    DefaultPort = 8080
    OnCommandGet = StarServerCommandGet
    Left = 456
    Top = 24
  end
  object SelectSession: TOraSession
    Options.Charset = 'CL8MSWIN1251'
    Options.Direct = True
    Username = 'CREATOR'
    Password = '123456'
    Server = 'COMP:1521:STARDB'
    LoginPrompt = False
    Left = 456
    Top = 56
  end
  object OraSQL: TOraQuery
    Session = SelectSession
    Left = 488
    Top = 24
  end
end
