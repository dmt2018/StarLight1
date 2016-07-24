object frmMain: TfrmMain
  Left = 0
  Top = 0
  ClientHeight = 310
  ClientWidth = 949
  Color = clBtnShadow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmMain
  OldCreateOrder = False
  WindowState = wsMaximized
  WindowMenu = miWindow
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object stbMain: TStatusBar
    Left = 0
    Top = 291
    Width = 949
    Height = 19
    Panels = <
      item
        Width = 250
      end
      item
        Width = 250
      end
      item
        Width = 250
      end
      item
        Width = 250
      end>
    ExplicitTop = 280
    ExplicitWidth = 952
  end
  object mmMain: TMainMenu
    Left = 48
    Top = 72
    object miASOUP: TMenuItem
      Caption = #1054#1073#1097#1080#1077
      GroupIndex = 1
      object mmiSpravNomen: TMenuItem
        Caption = #1057#1083#1086#1074#1072#1088#1100' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1099
        Enabled = False
      end
      object mmiSprav: TMenuItem
        Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
        Enabled = False
      end
      object mmiPrihodUhod: TMenuItem
        Caption = #1055#1088#1080#1093#1086#1076'/'#1059#1093#1086#1076
        Enabled = False
      end
      object mmiCurrEx: TMenuItem
        Caption = #1050#1091#1088#1089#1099' '#1074#1072#1083#1102#1090
        Enabled = False
      end
    end
    object miEdit: TMenuItem
      Caption = #1055#1088#1072#1074#1082#1072
      GroupIndex = 1
      object mmiUndo: TMenuItem
        Action = EditUndo
        Caption = '&'#1054#1090#1084#1077#1085#1080#1090#1100
      end
      object mmiCut: TMenuItem
        Action = EditCut
        Caption = #1042#1099#1088#1077#1079#1072#1090#1100
      end
      object mmiCopy: TMenuItem
        Action = EditCopy
        Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
      end
      object mmiPaste: TMenuItem
        Action = EditPaste
        Caption = #1042#1089#1090#1072#1074#1080#1090#1100
      end
    end
    object miByx: TMenuItem
      Caption = #1041#1091#1093#1075#1072#1083#1090#1077#1088#1080#1103
      GroupIndex = 1
      object mmiRegClients: TMenuItem
        Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' '#1082#1083#1080#1077#1085#1090#1086#1074
        Enabled = False
        ShortCut = 16461
      end
      object mmiKasses: TMenuItem
        Caption = #1050#1072#1089#1089#1099
        Enabled = False
        ShortCut = 16459
      end
      object mmiBrigIncomings: TMenuItem
        Caption = #1050#1072#1089#1089#1086#1074#1099#1081' '#1089#1074#1086#1076
        Enabled = False
        ShortCut = 16450
      end
      object mmiDebitors: TMenuItem
        Caption = #1044#1077#1073#1077#1090#1086#1088#1099
        Enabled = False
      end
      object mmiPretenz: TMenuItem
        Caption = #1055#1088#1077#1090#1077#1085#1079#1080#1080
        Enabled = False
      end
      object mmiByx: TMenuItem
        Caption = #1041#1091#1093#1075#1072#1083#1090#1077#1088#1080#1103
        Enabled = False
      end
    end
    object miOtdels: TMenuItem
      Caption = #1054#1090#1076#1077#1083#1099
      GroupIndex = 1
      object mmiZakaz: TMenuItem
        Caption = #1047#1072#1082#1072#1079#1099' '#1080' '#1073#1088#1086#1085#1080#1088#1086#1074#1072#1085#1080#1103
        Enabled = False
        ShortCut = 16458
      end
      object mmiRazZakaz: TMenuItem
        Caption = #1056#1072#1079#1085#1086#1089' '#1079#1072#1082#1072#1079#1086#1074
        Enabled = False
        ShortCut = 16456
      end
      object mmiInvoice: TMenuItem
        Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1080#1085#1074#1086#1081#1089#1072#1084#1080
        Enabled = False
      end
      object mmiSklad: TMenuItem
        Caption = #1057#1082#1083#1072#1076
        Enabled = False
      end
    end
    object miDirector: TMenuItem
      Caption = #1044#1080#1088#1077#1082#1090#1086#1088
      GroupIndex = 1
      object mmiPrices: TMenuItem
        Caption = #1062#1077#1085#1099
        Enabled = False
        ShortCut = 16464
      end
      object mmiStats: TMenuItem
        Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
        Enabled = False
      end
    end
    object mnNSI: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      GroupIndex = 1
      object mnNSI_Currency: TMenuItem
        Caption = #1050#1091#1088#1089#1099' '#1074#1072#1083#1102#1090
        OnClick = mnNSI_CurrencyClick
      end
    end
    object miTools: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      GroupIndex = 1
      object mmiAdminTools: TMenuItem
        Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077
        OnClick = mmiAdminToolsClick
      end
      object mmiSettings: TMenuItem
        Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
        OnClick = mmiSettingsClick
      end
    end
    object miWindow: TMenuItem
      Caption = #1054#1082#1085#1086
      GroupIndex = 1
      object mmiWindowCascade: TMenuItem
        Action = WindowCascade
        Caption = #1050#1072#1089#1082#1072#1076#1086#1084
      end
      object mmiWindowTileHor: TMenuItem
        Action = WindowTileHorizontal
        Caption = #1055#1086' '#1075#1086#1088#1080#1079#1086#1085#1090#1072#1083#1080
      end
      object mmiWindowTileVer: TMenuItem
        Action = WindowTileVertical
        Caption = #1055#1086' '#1074#1077#1088#1090#1080#1082#1072#1083#1080
      end
      object mmiWindowMinimize: TMenuItem
        Action = WindowMinimizeAll
        Caption = #1057#1074#1077#1088#1085#1091#1090#1100' '#1074#1089#1077
      end
      object mmiWindowArrange: TMenuItem
        Action = WindowArrangeAll
        Caption = #1056#1072#1079#1074#1077#1088#1085#1091#1090#1100' '#1074#1089#1077
      end
    end
    object miHelp: TMenuItem
      Caption = #1055#1086#1084#1086#1097#1100
      GroupIndex = 1
      object Action11: TMenuItem
        Action = ActHelp
        ShortCut = 112
      end
      object mmiAbout: TMenuItem
        Action = actAbout
        Hint = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      end
    end
    object miExit: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      GroupIndex = 1
      OnClick = miExitClick
    end
  end
  object apevMain: TApplicationEvents
    OnHint = apevMainHint
    OnMessage = apevMainMessage
    Left = 48
    Top = 136
  end
  object actlstMain: TActionList
    Left = 48
    Top = 200
    object EditUndo: TEditUndo
      Category = 'Edit'
      Caption = '&Undo'
      Hint = 'Undo|Reverts the last action'
      ImageIndex = 3
      ShortCut = 16474
    end
    object EditCut: TEditCut
      Category = 'Edit'
      Caption = 'Cu&t'
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 0
      ShortCut = 16472
    end
    object EditCopy: TEditCopy
      Category = 'Edit'
      Caption = '&Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object EditPaste: TEditPaste
      Category = 'Edit'
      Caption = '&Paste'
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 2
      ShortCut = 16470
    end
    object WindowCascade: TWindowCascade
      Category = 'Window'
      Caption = '&Cascade'
      Hint = 'Cascade'
      ImageIndex = 17
    end
    object WindowTileHorizontal: TWindowTileHorizontal
      Category = 'Window'
      Caption = 'Tile &Horizontally'
      Hint = 'Tile Horizontal'
      ImageIndex = 15
    end
    object WindowTileVertical: TWindowTileVertical
      Category = 'Window'
      Caption = '&Tile Vertically'
      Hint = 'Tile Vertical'
      ImageIndex = 16
    end
    object WindowMinimizeAll: TWindowMinimizeAll
      Category = 'Window'
      Caption = '&Minimize All'
      Hint = 'Minimize All'
    end
    object WindowArrangeAll: TWindowArrange
      Category = 'Window'
      Caption = '&Arrange'
    end
    object ActHelp: TAction
      Category = 'Help'
      Caption = #1057#1087#1088#1072#1074#1082#1072
      Hint = #1057#1087#1088#1072#1074#1082#1072
      OnExecute = Action1Execute
    end
    object actAbout: TAction
      Category = 'Help'
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077'...'
      OnExecute = actAboutExecute
    end
  end
end
