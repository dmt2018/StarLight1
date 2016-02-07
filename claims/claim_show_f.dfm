object claim_show: Tclaim_show
  Left = 243
  Top = 172
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '  '#1055#1086#1083#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1088#1077#1090#1077#1085#1079#1080#1080
  ClientHeight = 355
  ClientWidth = 732
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 16
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 732
    Height = 322
    Align = alClient
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object Label1: TLabel
      Left = 342
      Top = 40
      Width = 67
      Height = 16
      Alignment = taRightJustify
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
    end
    object Label8: TLabel
      Left = 324
      Top = 16
      Width = 85
      Height = 16
      Alignment = taRightJustify
      Caption = #1058#1080#1087' '#1087#1088#1077#1090#1077#1085#1079#1080#1080
    end
    object Label14: TLabel
      Left = 374
      Top = 88
      Width = 35
      Height = 16
      Alignment = taRightJustify
      Caption = #1058#1086#1074#1072#1088
    end
    object Label15: TLabel
      Left = 340
      Top = 136
      Width = 69
      Height = 16
      Alignment = taRightJustify
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
    end
    object Label16: TLabel
      Left = 385
      Top = 160
      Width = 24
      Height = 16
      Caption = 'HFL'
    end
    object Label17: TLabel
      Left = 382
      Top = 184
      Width = 27
      Height = 16
      Alignment = taRightJustify
      Caption = 'Cust'
    end
    object Label18: TLabel
      Left = 318
      Top = 230
      Width = 91
      Height = 16
      Alignment = taRightJustify
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
    end
    object Label19: TLabel
      Left = 350
      Top = 208
      Width = 59
      Height = 16
      Alignment = taRightJustify
      Caption = #1058#1080#1087' '#1073#1088#1072#1082#1072
    end
    object Label3: TLabel
      Left = 24
      Top = 16
      Width = 82
      Height = 16
      Alignment = taRightJustify
      Caption = #8470' '#1087#1088#1077#1090#1077#1085#1079#1080#1080':'
    end
    object DBText1: TDBText
      Left = 117
      Top = 16
      Width = 50
      Height = 16
      AutoSize = True
      DataField = 'CLAIMS_ID'
      DataSource = DM.Q_CLAIMS_DS
    end
    object Label5: TLabel
      Left = 10
      Top = 40
      Width = 96
      Height = 16
      Alignment = taRightJustify
      Caption = #1044#1072#1090#1072' '#1087#1088#1077#1090#1077#1085#1079#1080#1080':'
    end
    object DBText2: TDBText
      Left = 117
      Top = 40
      Width = 50
      Height = 16
      AutoSize = True
      DataField = 'DDATE'
      DataSource = DM.Q_CLAIMS_DS
    end
    object Label2: TLabel
      Left = 35
      Top = 64
      Width = 71
      Height = 16
      Alignment = taRightJustify
      Caption = #8470' '#1080#1085#1074#1086#1081#1089#1072':'
    end
    object DBText3: TDBText
      Left = 117
      Top = 64
      Width = 50
      Height = 16
      AutoSize = True
      DataField = 'INV_ID'
      DataSource = DM.Q_CLAIMS_DS
    end
    object Label4: TLabel
      Left = 21
      Top = 88
      Width = 85
      Height = 16
      Alignment = taRightJustify
      Caption = #1044#1072#1090#1072' '#1080#1085#1074#1086#1081#1089#1072':'
    end
    object DBText4: TDBText
      Left = 117
      Top = 88
      Width = 50
      Height = 16
      AutoSize = True
      DataField = 'INV_DATE'
      DataSource = DM.Q_CLAIMS_DS
    end
    object Label6: TLabel
      Left = 34
      Top = 112
      Width = 72
      Height = 16
      Alignment = taRightJustify
      Caption = #8470' '#1084#1072#1096#1080#1085#1099':'
    end
    object DBText5: TDBText
      Left = 117
      Top = 112
      Width = 50
      Height = 16
      AutoSize = True
      DataField = 'N_TRACK'
      DataSource = DM.Q_CLAIMS_DS
    end
    object Label7: TLabel
      Left = 375
      Top = 64
      Width = 34
      Height = 16
      Alignment = taRightJustify
      Caption = #1047#1072#1082#1072#1079
    end
    object Bevel1: TBevel
      Left = 264
      Top = 8
      Width = 9
      Height = 289
      Shape = bsLeftLine
    end
    object Label9: TLabel
      Left = 294
      Top = 112
      Width = 115
      Height = 16
      Alignment = taRightJustify
      Caption = #1058#1086#1074#1072#1088' ('#1092#1072#1082#1090#1080#1095#1077#1089#1082#1080')'
    end
    object Label10: TLabel
      Left = 539
      Top = 136
      Width = 69
      Height = 16
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
    end
    object Label11: TLabel
      Left = 584
      Top = 160
      Width = 24
      Height = 16
      Caption = 'HFL'
    end
    object Label12: TLabel
      Left = 581
      Top = 184
      Width = 27
      Height = 16
      Caption = 'Cust'
    end
    object DBText6: TDBText
      Left = 117
      Top = 136
      Width = 50
      Height = 16
      AutoSize = True
      DataField = 'SUMM_INV'
      DataSource = DM.Q_CLAIMS_DS
    end
    object Label13: TLabel
      Left = 8
      Top = 136
      Width = 98
      Height = 16
      Alignment = taRightJustify
      Caption = #1057#1091#1084#1084#1072' '#1080#1085#1074#1086#1081#1089#1072':'
    end
    object Label20: TLabel
      Left = 90
      Top = 160
      Width = 16
      Height = 16
      Alignment = taRightJustify
      Caption = '%:'
    end
    object DBText7: TDBText
      Left = 117
      Top = 160
      Width = 50
      Height = 16
      AutoSize = True
      DataField = 'PERCENT2'
      DataSource = DM.Q_CLAIMS_DS
    end
    object DBEdit1: TDBEdit
      Left = 424
      Top = 12
      Width = 300
      Height = 22
      DataField = 'TTYPE_NAME'
      DataSource = DM.Q_CLAIMS_LIST_DS
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 424
      Top = 36
      Width = 300
      Height = 22
      DataField = 'S_NAME_RU'
      DataSource = DM.Q_CLAIMS_LIST_DS
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 424
      Top = 60
      Width = 300
      Height = 22
      DataField = 'NICK'
      DataSource = DM.Q_CLAIMS_LIST_DS
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 424
      Top = 84
      Width = 300
      Height = 22
      DataField = 'COMPILED_NAME'
      DataSource = DM.Q_CLAIMS_LIST_DS
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 424
      Top = 132
      Width = 81
      Height = 22
      DataField = 'QUANTITY'
      DataSource = DM.Q_CLAIMS_LIST_DS
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit6: TDBEdit
      Left = 424
      Top = 156
      Width = 81
      Height = 22
      DataField = 'HFL'
      DataSource = DM.Q_CLAIMS_LIST_DS
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit7: TDBEdit
      Left = 424
      Top = 180
      Width = 81
      Height = 22
      DataField = 'CUST'
      DataSource = DM.Q_CLAIMS_LIST_DS
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit8: TDBEdit
      Left = 424
      Top = 204
      Width = 300
      Height = 22
      DataField = 'DEFECT'
      DataSource = DM.Q_CLAIMS_LIST_DS
      ReadOnly = True
      TabOrder = 11
    end
    object DBMemo1: TDBMemo
      Left = 424
      Top = 228
      Width = 300
      Height = 81
      DataField = 'INFO'
      DataSource = DM.Q_CLAIMS_LIST_DS
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 12
    end
    object DBEdit9: TDBEdit
      Left = 424
      Top = 108
      Width = 300
      Height = 22
      DataField = 'FLOWER'
      DataSource = DM.Q_CLAIMS_LIST_DS
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit10: TDBEdit
      Left = 624
      Top = 132
      Width = 81
      Height = 22
      DataField = 'QUANTITY2'
      DataSource = DM.Q_CLAIMS_LIST_DS
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit11: TDBEdit
      Left = 624
      Top = 156
      Width = 81
      Height = 22
      DataField = 'HFL2'
      DataSource = DM.Q_CLAIMS_LIST_DS
      ReadOnly = True
      TabOrder = 9
    end
    object DBEdit12: TDBEdit
      Left = 624
      Top = 180
      Width = 81
      Height = 22
      DataField = 'CUST2'
      DataSource = DM.Q_CLAIMS_LIST_DS
      ReadOnly = True
      TabOrder = 10
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 322
    Width = 732
    Height = 33
    Align = alBottom
    Color = clWhite
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 1
    DesignSize = (
      732
      33)
    object btn_exit: TcxButton
      Left = 592
      Top = 4
      Width = 132
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Default = True
      ModalResult = 2
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
    end
  end
end
