object frmPassport: TfrmPassport
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1055#1072#1089#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
  ClientHeight = 271
  ClientWidth = 402
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 402
    Height = 271
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitHeight = 273
    DesignSize = (
      402
      271)
    object gbInfoProg: TcxGroupBox
      Left = 8
      Top = 8
      Caption = #1055#1072#1089#1089#1087#1086#1088#1090':'
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Style.Color = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 217
      Width = 385
      object lbl1: TLabel
        Left = 26
        Top = 62
        Width = 85
        Height = 17
        Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
      end
      object lbl2: TLabel
        Left = 26
        Top = 35
        Width = 95
        Height = 17
        Caption = #1057#1077#1088#1080#1103' '#1080' '#1085#1086#1084#1077#1088
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 26
        Top = 121
        Width = 89
        Height = 17
        Caption = #1043#1086#1088#1086#1076' '#1074#1099#1076#1072#1095#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 26
        Top = 153
        Width = 69
        Height = 17
        Caption = #1050#1077#1084' '#1074#1099#1076#1072#1085
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 26
        Top = 176
        Width = 107
        Height = 17
        Caption = #1052#1077#1089#1090#1086' '#1088#1086#1078#1076#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 26
        Top = 91
        Width = 100
        Height = 17
        Caption = #1057#1090#1088#1072#1085#1072' '#1074#1099#1076#1072#1095#1080' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
      end
      object Edit2: TEdit
        Left = 144
        Top = 35
        Width = 215
        Height = 24
        Color = clWhite
        TabOrder = 0
      end
      object ComboBox8: TComboBox
        Left = 144
        Top = 93
        Width = 215
        Height = 24
        Color = clWhite
        ItemHeight = 16
        TabOrder = 1
      end
      object Edit4: TEdit
        Left = 144
        Top = 123
        Width = 215
        Height = 24
        Color = clWhite
        TabOrder = 2
      end
      object Edit5: TEdit
        Left = 144
        Top = 151
        Width = 215
        Height = 24
        Color = clWhite
        TabOrder = 3
      end
      object Edit6: TEdit
        Left = 144
        Top = 179
        Width = 215
        Height = 24
        Color = clWhite
        TabOrder = 4
      end
      object DateTimePicker1: TDateTimePicker
        Left = 144
        Top = 63
        Width = 215
        Height = 24
        Date = 42669.519202835650000000
        Time = 42669.519202835650000000
        TabOrder = 5
      end
    end
    object btnOK: TcxButton
      Left = 125
      Top = 237
      Width = 133
      Height = 27
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnOKClick
      Colors.Default = clActiveBorder
      ExplicitTop = 239
    end
  end
end
