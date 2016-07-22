object about: Tabout
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' '#1054' '#1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1072#1093
  ClientHeight = 235
  ClientWidth = 429
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 429
    Height = 235
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel1: TBevel
      Left = 0
      Top = 169
      Width = 425
      Height = 2
    end
    object Label1: TLabel
      Left = 24
      Top = 32
      Width = 195
      Height = 13
      Caption = #1088#1072#1079#1088#1072#1073#1086#1090#1095#1080#1082#1080'...............................'
    end
    object gbInfo: TcxGroupBox
      Left = 225
      Top = 25
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086':'
      TabOrder = 0
      Height = 128
      Width = 200
      object Label3: TLabel
        Left = 16
        Top = 32
        Width = 94
        Height = 13
        Cursor = crHandPoint
        Caption = 'alex_olmer@mail.ru'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = Label3Click
      end
    end
    object btnexit: TcxButton
      Left = 296
      Top = 200
      Width = 123
      Height = 25
      Cursor = crHandPoint
      Caption = #1047#1072#1082#1088#1099#1090#1100
      TabOrder = 1
      OnClick = btnexitClick
      Colors.Default = clActiveBorder
    end
  end
end
