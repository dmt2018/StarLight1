object docsviewsgoods: Tdocsviewsgoods
  Left = 287
  Top = 140
  Width = 700
  Height = 550
  BorderWidth = 5
  Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  Color = clBtnFace
  Constraints.MinHeight = 550
  Constraints.MinWidth = 700
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 8
    Top = 16
    Width = 76
    Height = 13
    Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  end
  object DBText2: TDBText
    Left = 96
    Top = 16
    Width = 65
    Height = 17
  end
  object Panel2: TPanel
    Left = 0
    Top = 94
    Width = 682
    Height = 372
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel2'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    object DBGridEh2: TDBGridEh
      Left = 0
      Top = 0
      Width = 682
      Height = 372
      Align = alClient
      AllowedOperations = []
      AllowedSelections = [gstRecordBookmarks, gstAll]
      AutoFitColWidths = True
      ColumnDefValues.DropDownShowTitles = True
      ColumnDefValues.EndEllipsis = True
      ColumnDefValues.Title.TitleButton = True
      ColumnDefValues.Title.ToolTips = True
      ColumnDefValues.ToolTips = True
      EditActions = [geaCopyEh, geaSelectAllEh]
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      FooterColor = clYellow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = [fsBold]
      FooterRowCount = 2
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghRowHighlight, dghDialogFind]
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      SortLocal = True
      STFilter.Local = True
      STFilter.Visible = True
      SumList.Active = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          EditButtons = <>
          FieldName = 'CODE'
          Footers = <
            item
              Value = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1081' '
              ValueType = fvtStaticText
            end
            item
              Value = #1053#1072' '#1089#1091#1084#1084#1091
              ValueType = fvtStaticText
            end>
          Title.Caption = #1050#1086#1076
          Width = 58
        end
        item
          EditButtons = <>
          FieldName = 'F_NAME_RU'
          Footers = <
            item
              FieldName = 'CODE'
              ValueType = fvtCount
            end
            item
              FieldName = 'PRICE_QUANTITY'
              ValueType = fvtSum
            end>
          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' ('#1088#1091#1089')'
          Width = 102
        end
        item
          EditButtons = <>
          FieldName = 'COLOUR'
          Footers = <>
          Title.Caption = #1062#1074#1077#1090
          Width = 62
        end
        item
          EditButtons = <>
          FieldName = 'LEN'
          Footers = <>
          Title.Caption = #1044#1083#1080#1085#1072
          Width = 48
        end
        item
          EditButtons = <>
          FieldName = 'PACK'
          Footers = <>
          Title.Caption = #1050#1086#1083'-'#1074#1086' '#1074' '#1091#1087#1072#1082#1086#1074#1082#1077
          Width = 70
        end
        item
          EditButtons = <>
          FieldName = 'QUANTITY'
          Footers = <>
          Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
          Width = 50
        end
        item
          EditButtons = <>
          FieldName = 'PRICE'
          Footers = <>
          Title.Caption = #1062#1077#1085#1072
          Width = 25
        end
        item
          EditButtons = <>
          FieldName = 'PRICE_PERCENT'
          Footers = <>
          Title.Caption = '% '#1091#1094#1077#1085#1082#1080
          Visible = False
          Width = 75
        end
        item
          EditButtons = <>
          FieldName = 'PRICE_NEW'
          Footers = <>
          Title.Caption = #1053#1086#1074#1072#1103'  '#1094#1077#1085#1072
          Visible = False
          Width = 79
        end
        item
          EditButtons = <>
          FieldName = 'PRICE_QUANTITY'
          Footers = <>
          Title.Caption = #1053#1072' '#1089#1091#1084#1084#1091
        end
        item
          EditButtons = <>
          FieldName = 'STORE_TYPE_NAME'
          Footers = <>
          Title.Caption = #1057#1086' '#1089#1082#1083#1072#1076#1072
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 466
    Width = 682
    Height = 47
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 3
    DesignSize = (
      682
      47)
    object Label8: TLabel
      Left = 2
      Top = 11
      Width = 78
      Height = 16
      Caption = #1054#1087#1077#1088#1072#1090#1086#1088':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText7: TDBText
      Left = 88
      Top = 10
      Width = 65
      Height = 17
      DataField = 'OPERATOR_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 3
      Top = 28
      Width = 189
      Height = 16
      Caption = #1056#1077#1072#1083#1100#1085#1072#1103' '#1076#1072#1090#1072' '#1089#1086#1079#1076#1072#1085#1080#1103':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText8: TDBText
      Left = 200
      Top = 28
      Width = 65
      Height = 17
      DataField = 'DOC_DATE_REAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 529
      Top = 15
      Width = 153
      Height = 24
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #1079#1072#1082#1088#1099#1090#1100
      TabOrder = 0
      OnClick = BitBtn2Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 682
    Height = 89
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = clCream
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object DBText1: TDBText
      Left = 132
      Top = 4
      Width = 173
      Height = 17
      DataField = 'DOC_TYPE_NAME'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 4
      Top = 5
      Width = 113
      Height = 16
      Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 4
      Top = 35
      Width = 54
      Height = 16
      Caption = #1050#1083#1080#1077#1085#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 316
      Top = 5
      Width = 37
      Height = 16
      Caption = #1044#1072#1090#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 4
      Top = 66
      Width = 101
      Height = 16
      Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBackground
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 364
      Top = 4
      Width = 225
      Height = 17
      DataField = 'DOC_DATE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 63
      Top = 34
      Width = 106
      Height = 17
      DataField = 'NICK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 120
      Top = 66
      Width = 561
      Height = 17
      DataField = 'COMMENTS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 168
      Top = 34
      Width = 505
      Height = 17
      DataField = 'FIO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 89
    Width = 682
    Height = 5
    Align = alTop
    BevelOuter = bvNone
    Ctl3D = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 1
  end
  object PopupMenu1: TPopupMenu
    Left = 628
    Top = 174
    object ppmCopy: TMenuItem
      Caption = '&Copy'
      OnClick = ppmCopyClick
    end
    object ppmSelectAll: TMenuItem
      Caption = 'Se&lect All'
      OnClick = ppmSelectAllClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ppmSaveSelection: TMenuItem
      Caption = 'Save selection as ...'
      OnClick = ppmSaveSelectionClick
    end
  end
end
