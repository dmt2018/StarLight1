object frmSettings: TfrmSettings
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103
  ClientHeight = 314
  ClientWidth = 628
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
    Width = 628
    Height = 264
    ActivePage = tshMain
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 626
    ExplicitHeight = 285
    ClientRectBottom = 264
    ClientRectRight = 628
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
      ExplicitTop = 0
      ExplicitWidth = 626
      ExplicitHeight = 269
      object cbOtdel: TcxImageComboBox
        Left = 24
        Top = 35
        Properties.Items = <
          item
            Description = #1040#1082#1089#1077#1089#1089#1091#1072#1088#1099
            ImageIndex = 0
            Value = '121'
          end
          item
            Description = #1043#1086#1088#1096#1077#1095#1085#1099#1081' '#1086#1090#1076#1077#1083
            Value = '61'
          end
          item
            Description = #1054#1090#1076#1077#1083' '#1089#1088#1077#1079#1072#1085#1085#1099#1093' '#1094#1074#1077#1090#1086#1074
            Value = '62'
          end
          item
            Description = #1054#1090#1076#1077#1083' '#1092#1083#1086#1088#1080#1089#1090#1080#1082#1080
            Value = '181'
          end>
        TabOrder = 0
        Width = 177
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
        TabOrder = 3
        Width = 177
      end
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 264
    Width = 628
    Height = 50
    Align = alBottom
    TabOrder = 1
    object btnSav: TcxButton
      Left = 392
      Top = 14
      Width = 107
      Height = 25
      Action = aEnter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Colors.Default = clActiveBorder
    end
    object btnClos: TcxButton
      Left = 512
      Top = 14
      Width = 107
      Height = 25
      Action = aClose
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Colors.Default = clActiveBorder
    end
  end
  object alSettings: TActionList
    Left = 376
    Top = 64
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
