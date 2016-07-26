object frmSettings: TfrmSettings
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103
  ClientHeight = 293
  ClientWidth = 626
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcSettings: TcxPageControl
    Left = 0
    Top = 0
    Width = 626
    Height = 293
    ActivePage = tshMain
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 625
    ExplicitHeight = 290
    ClientRectBottom = 293
    ClientRectRight = 626
    ClientRectTop = 24
    object tshMain: TcxTabSheet
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ImageIndex = 0
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 625
      ExplicitHeight = 266
      object cbOtdel: TcxImageComboBox
        Left = 24
        Top = 37
        Properties.Items = <>
        TabOrder = 0
        Width = 177
      end
      object btnSave: TcxButton
        Left = 392
        Top = 232
        Width = 107
        Height = 25
        Action = aEnter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Colors.Default = clActiveBorder
      end
      object btnClose: TcxButton
        Left = 512
        Top = 232
        Width = 107
        Height = 25
        Action = aClose
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Colors.Default = clActiveBorder
      end
      object cxLabel1: TcxLabel
        Left = 24
        Top = 14
        Caption = #1054#1090#1076#1077#1083' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102':'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxLabel2: TcxLabel
        Left = 24
        Top = 64
        Caption = #1056#1072#1079#1084#1077#1088' '#1096#1088#1080#1092#1090#1072':'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cbFont: TcxComboBox
        Left = 24
        Top = 89
        Properties.Items.Strings = (
          '8'
          '9'
          '10'
          '11'
          '12'
          '14')
        TabOrder = 5
        Width = 177
      end
    end
  end
  object alSettings: TActionList
    Left = 448
    Top = 192
    object aEnter: TAction
      Caption = #1047#1072#1087#1080#1089#1072#1090#1100
      OnExecute = aEnterExecute
    end
    object aClose: TAction
      Caption = #1047#1072#1082#1088#1099#1090#1100
      OnExecute = aCloseExecute
    end
  end
end
