object frmEditTrans: TfrmEditTrans
  Left = 0
  Top = 0
  Anchors = [akTop, akRight]
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1089#1090#1072#1090#1091#1089#1072' '#1079#1072#1082#1072#1079#1072
  ClientHeight = 384
  ClientWidth = 442
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
    Width = 442
    Height = 344
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 24
    ExplicitTop = 1
    ExplicitHeight = 445
    object Lbl1: TLabel
      Left = 12
      Top = 12
      Width = 34
      Height = 16
      Caption = #1044#1072#1090#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Lbl2: TLabel
      Left = 12
      Top = 58
      Width = 57
      Height = 16
      Caption = #1047#1072#1082#1072#1079' '#8470':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Lbl3: TLabel
      Left = 12
      Top = 85
      Width = 77
      Height = 16
      Caption = #1050#1086#1076' '#1082#1083#1080#1077#1085#1090#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Lbl4: TLabel
      Left = 12
      Top = 112
      Width = 83
      Height = 16
      Caption = #1060#1048#1054' '#1082#1083#1080#1077#1085#1090#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Lbl5: TLabel
      Left = 11
      Top = 192
      Width = 97
      Height = 16
      Caption = #1040#1076#1088#1077#1089' '#1076#1086#1089#1090#1072#1074#1082#1080':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Lbl6: TLabel
      Left = 12
      Top = 216
      Width = 91
      Height = 16
      Caption = #1044#1072#1090#1072' '#1076#1086#1089#1090#1072#1074#1082#1080':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Lbl7: TLabel
      Left = 12
      Top = 306
      Width = 44
      Height = 16
      Caption = #1057#1090#1072#1090#1091#1089':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 11
      Top = 246
      Width = 80
      Height = 16
      Caption = #1050#1077#1084' '#1087#1077#1088#1077#1076#1072#1085':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 12
      Top = 272
      Width = 86
      Height = 16
      Caption = #1050#1086#1084#1091' '#1087#1077#1088#1077#1076#1072#1085':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 11
      Top = 140
      Width = 81
      Height = 16
      Caption = #1042#1099#1073#1080#1083' '#1085#1072#1082#1083'. :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 168
      Width = 60
      Height = 16
      Caption = #1042#1086#1076#1080#1090#1077#1083#1100':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxDateEdit1: TcxDateEdit
      Left = 112
      Top = 12
      Enabled = False
      Properties.ImmediatePost = True
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 0
      OnKeyPress = cxDateEdit1KeyPress
      Width = 217
    end
    object cxComboBox1: TcxComboBox
      Left = 113
      Top = 306
      Properties.Items.Strings = (
        #1087#1088#1080#1085#1103#1090
        #1074' '#1087#1091#1090#1080
        #1074#1099#1087#1086#1083#1085#1077#1085
        #1087#1077#1088#1077#1076#1072#1085)
      TabOrder = 1
      Text = #1087#1088#1080#1085#1103#1090
      OnKeyPress = cxComboBox1KeyPress
      Width = 217
    end
    object Ed1: TEdit
      Left = 114
      Top = 57
      Width = 313
      Height = 21
      TabOrder = 2
    end
    object Ed2: TEdit
      Left = 114
      Top = 84
      Width = 313
      Height = 21
      TabOrder = 3
      OnClick = Ed2Click
      OnKeyPress = Ed2KeyPress
    end
    object Ed3: TEdit
      Left = 114
      Top = 111
      Width = 313
      Height = 21
      TabOrder = 4
      OnKeyPress = Ed3KeyPress
    end
    object Ed4: TEdit
      Left = 114
      Top = 138
      Width = 313
      Height = 21
      TabOrder = 5
      OnKeyPress = Ed4KeyPress
    end
    object Ed5: TEdit
      Left = 114
      Top = 165
      Width = 313
      Height = 21
      TabOrder = 6
    end
    object Ed8: TEdit
      Left = 114
      Top = 246
      Width = 313
      Height = 21
      TabOrder = 7
    end
    object Ed9: TEdit
      Left = 114
      Top = 273
      Width = 313
      Height = 21
      TabOrder = 8
    end
    object Ed7: TEdit
      Left = 114
      Top = 219
      Width = 313
      Height = 21
      TabOrder = 9
    end
    object Ed6: TEdit
      Left = 116
      Top = 192
      Width = 313
      Height = 21
      TabOrder = 10
    end
    object cxTimeEdit1: TcxTimeEdit
      Left = 113
      Top = 30
      EditValue = 0.000000000000000000
      Enabled = False
      TabOrder = 11
      OnKeyPress = cxTimeEdit1KeyPress
      Width = 216
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 344
    Width = 442
    Height = 40
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 346
    ExplicitWidth = 437
    DesignSize = (
      442
      40)
    object btnSave: TcxButton
      Left = 210
      Top = 7
      Width = 107
      Height = 25
      Action = aEnter
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Colors.Default = clActiveBorder
      ExplicitLeft = 205
    end
    object btnClose: TcxButton
      Left = 325
      Top = 7
      Width = 107
      Height = 25
      Action = aClose
      Anchors = [akTop, akRight]
      Cancel = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Colors.Default = clActiveBorder
      ExplicitLeft = 320
    end
  end
  object OraSQL1: TOraSQL
    SQL.Strings = (
      '--begin '
      
        '--  dicts.save_curses(:P1, :P2, :P3, :P4, :P5, :P6, :P7, :P8, :P' +
        '9 );'
      '--end;'
      
        'SELECT distinct a.doc_number, a.doc_date, a.nick, a.fio, a.opera' +
        'tor_name FROM store_doc_view2 a '
      'where trunc(a.doc_date) ='#39'02.02.2006'#39)
    Left = 345
    Top = 15
  end
  object alSettings: TActionList
    Left = 376
    Top = 16
    object aEnter: TAction
      Caption = #1047#1072#1087#1080#1089#1072#1090#1100
      ShortCut = 16397
      OnExecute = aEnterExecute
    end
    object aClose: TAction
      Caption = #1047#1072#1082#1088#1099#1090#1100
      OnExecute = aCloseExecute
    end
  end
end
