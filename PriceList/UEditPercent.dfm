object frmEditPercent: TfrmEditPercent
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #1088#1077#1076#1072#1082#1090#1086#1088' % '#1085#1072#1076#1073#1072#1074#1082#1080' '#1063#1051
  ClientHeight = 156
  ClientWidth = 314
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
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 314
    Height = 156
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 345
    ExplicitHeight = 177
    DesignSize = (
      314
      156)
    object gbInfoProg: TcxGroupBox
      Left = 8
      Top = 8
      Caption = '%:'
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
      Height = 81
      Width = 265
      object Edit6: TEdit
        Left = 20
        Top = 35
        Width = 229
        Height = 24
        Color = clWhite
        MaxLength = 3
        TabOrder = 0
      end
    end
    object btnOK: TcxButton
      Left = 76
      Top = 106
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
    end
  end
  object OraQuery1: TOraQuery
    Left = 280
    Top = 8
  end
end
