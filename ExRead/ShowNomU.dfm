object ShowNomF: TShowNomF
  Left = 442
  Top = 213
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1055#1086#1076#1088#1086#1073#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1077
  ClientHeight = 510
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 16
  object nomFViewer: TcxDBVerticalGrid
    Left = 0
    Top = 0
    Width = 635
    Height = 470
    Align = alClient
    LookAndFeel.Kind = lfOffice11
    OptionsView.CellAutoHeight = True
    OptionsView.CellEndEllipsis = True
    OptionsView.RowHeaderWidth = 208
    OptionsBehavior.ImmediateEditor = False
    OptionsBehavior.HeaderSizing = False
    OptionsData.Editing = False
    OptionsData.Appending = False
    OptionsData.Deleting = False
    OptionsData.DeletingConfirmation = False
    OptionsData.Inserting = False
    TabOrder = 0
    DataController.DataSource = SelNom_DS
    object vnFULL_NAME: TcxDBEditorRow
      Properties.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
      Properties.EditPropertiesClassName = 'TcxLabelProperties'
      Properties.DataBinding.FieldName = 'FULL_NAME'
    end
    object vnF_TYPE: TcxDBEditorRow
      Properties.Caption = #1058#1080#1087
      Properties.EditPropertiesClassName = 'TcxLabelProperties'
      Properties.DataBinding.FieldName = 'F_TYPE'
    end
    object vnF_SUB_TYPE: TcxDBEditorRow
      Properties.Caption = #1055#1086#1076#1090#1080#1087
      Properties.EditPropertiesClassName = 'TcxLabelProperties'
      Properties.DataBinding.FieldName = 'F_SUB_TYPE'
    end
    object vnDEPT: TcxDBEditorRow
      Properties.Caption = #1054#1090#1076#1077#1083
      Properties.EditPropertiesClassName = 'TcxLabelProperties'
      Properties.DataBinding.FieldName = 'DEPT'
    end
    object vnH_NAME: TcxDBEditorRow
      Properties.Caption = #1043#1086#1083#1083#1072#1085#1076#1089#1082#1086#1077' '#1085#1072#1079#1074#1072#1085#1080#1077
      Properties.EditPropertiesClassName = 'TcxLabelProperties'
      Properties.DataBinding.FieldName = 'H_NAME'
    end
    object vnS_NAME_RU: TcxDBEditorRow
      Properties.Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
      Properties.EditPropertiesClassName = 'TcxLabelProperties'
      Properties.DataBinding.FieldName = 'S_NAME_RU'
    end
    object vnCOLOUR: TcxDBEditorRow
      Properties.Caption = #1062#1074#1077#1090
      Properties.EditPropertiesClassName = 'TcxLabelProperties'
      Properties.DataBinding.FieldName = 'COLOUR'
    end
    object vnCOUNTRY: TcxDBEditorRow
      Properties.Caption = #1057#1090#1088#1072#1085#1072
      Properties.EditPropertiesClassName = 'TcxLabelProperties'
      Properties.DataBinding.FieldName = 'COUNTRY'
    end
    object vnHOL_MARKS: TcxDBEditorRow
      Properties.Caption = #1043#1086#1083#1083#1072#1085#1076#1089#1082#1072#1103' '#1089#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
      Properties.EditPropertiesClassName = 'TcxLabelProperties'
      Properties.DataBinding.FieldName = 'HOL_MARKS'
    end
    object vnRUS_MARKS: TcxDBEditorRow
      Properties.Caption = #1056#1091#1089#1089#1082#1072#1103' '#1089#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
      Properties.EditPropertiesClassName = 'TcxLabelProperties'
      Properties.DataBinding.FieldName = 'RUS_MARKS'
    end
    object vnH_CODE: TcxDBEditorRow
      Properties.Caption = #1040#1088#1090#1080#1082#1091#1083' ('#1075#1086#1083#1083#1072#1085#1076#1089#1082#1080#1081' '#1082#1086#1076')'
      Properties.EditPropertiesClassName = 'TcxLabelProperties'
      Properties.DataBinding.FieldName = 'H_CODE'
    end
    object vnHOL_TYPE: TcxDBEditorRow
      Properties.Caption = #1043#1086#1083#1083#1072#1085#1076#1089#1082#1080#1081' '#1090#1080#1087
      Properties.EditPropertiesClassName = 'TcxLabelProperties'
      Properties.DataBinding.FieldName = 'HOL_TYPE'
    end
    object vnVBN: TcxDBEditorRow
      Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
      Properties.EditProperties.ReadOnly = True
      Properties.EditProperties.ValueChecked = '1'
      Properties.EditProperties.ValueUnchecked = '0'
      Properties.DataBinding.FieldName = 'VBN'
    end
    object vnLEN: TcxDBEditorRow
      Properties.Caption = #1044#1083#1080#1085#1072
      Properties.EditPropertiesClassName = 'TcxLabelProperties'
      Properties.EditProperties.Alignment.Horz = taLeftJustify
      Properties.DataBinding.FieldName = 'LEN'
    end
    object vnPACK: TcxDBEditorRow
      Properties.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074' '#1087#1072#1095#1082#1077
      Properties.EditPropertiesClassName = 'TcxLabelProperties'
      Properties.EditProperties.Alignment.Horz = taLeftJustify
      Properties.DataBinding.FieldName = 'PACK'
    end
    object vnDIAMETER: TcxDBEditorRow
      Properties.Caption = #1044#1080#1072#1084#1077#1090#1088
      Properties.EditPropertiesClassName = 'TcxLabelProperties'
      Properties.EditProperties.Alignment.Horz = taLeftJustify
      Properties.DataBinding.FieldName = 'DIAMETER'
    end
    object vnWEIGHT: TcxDBEditorRow
      Properties.Caption = #1042#1077#1089
      Properties.EditPropertiesClassName = 'TcxLabelProperties'
      Properties.EditProperties.Alignment.Horz = taLeftJustify
      Properties.DataBinding.FieldName = 'WEIGHT'
    end
    object vnCODE: TcxDBEditorRow
      Properties.Caption = #1064#1090#1088#1080#1093'-'#1082#1086#1076
      Properties.EditPropertiesClassName = 'TcxLabelProperties'
      Properties.EditProperties.Alignment.Horz = taLeftJustify
      Properties.DataBinding.FieldName = 'CODE'
    end
    object vnBAR_CODE: TcxDBEditorRow
      Properties.Caption = #1064#1090#1088#1080#1093'-'#1082#1086#1076' '#1075#1086#1083#1083#1072#1085#1076#1089#1082#1080#1081
      Properties.EditPropertiesClassName = 'TcxLabelProperties'
      Properties.EditProperties.Alignment.Horz = taLeftJustify
      Properties.DataBinding.FieldName = 'BAR_CODE'
    end
    object vnCUST_COEF: TcxDBEditorRow
      Properties.Caption = #1058#1072#1084#1086#1078#1077#1085#1085#1099#1081' '#1082#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090
      Properties.EditPropertiesClassName = 'TcxLabelProperties'
      Properties.EditProperties.Alignment.Horz = taLeftJustify
      Properties.DataBinding.FieldName = 'CUST_COEF'
    end
    object nomFViewerCOMPILED_NAME: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'COMPILED_NAME'
      Visible = False
    end
    object nomFViewerF_NAME: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'F_NAME'
      Visible = False
    end
    object nomFViewerF_NAME_RU: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'F_NAME_RU'
      Visible = False
    end
    object nomFViewerID_DEPARTMENTS: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'ID_DEPARTMENTS'
      Visible = False
    end
    object nomFViewerN_ID: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'N_ID'
      Visible = False
    end
    object nomFViewerFN_ID: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'FN_ID'
      Visible = False
    end
    object nomFViewerFT_ID: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'FT_ID'
      Visible = False
    end
    object nomFViewerFST_ID: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'FST_ID'
      Visible = False
    end
    object nomFViewerS_ID: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'S_ID'
      Visible = False
    end
    object nomFViewerC_ID: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'C_ID'
      Visible = False
    end
    object nomFViewerCOL_ID: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'COL_ID'
      Visible = False
    end
    object nomFViewerTYPE_SUBTYPE: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'TYPE_SUBTYPE'
      Visible = False
    end
    object nomFViewerGREAT_NAME: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'GREAT_NAME'
      Visible = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 470
    Width = 635
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Panel4: TPanel
      Left = 427
      Top = 2
      Width = 206
      Height = 36
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        206
        36)
      object cxButton1: TcxButton
        Left = 6
        Top = 3
        Width = 196
        Height = 30
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Cancel = True
        Caption = #1047#1072#1082#1088#1099#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        ModalResult = 2
        ParentFont = False
        TabOrder = 0
        Colors.Default = clBtnFace
        Colors.Normal = clBtnFace
        Colors.Hot = clBtnFace
        Colors.Pressed = clBtnFace
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66666933
          34FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666
          A36666A76666693334FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666A0
          6666B06667C66667CC6667B36667693334FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A66
          66AF6869C0696ACF696ACE6869CD6768CD6768B36667693334AE66669A66669A
          66669A66669A66669A66669A66669A66669A6666FF00FFFF00FFFF00FFFF00FF
          FF00FF9A6666D26F70D56F70D46E6FD36D6ED26C6DD16B6CD06A6BB467686933
          34FEA2A3FDA8A9FCAFB0FBB6B7FABCBDF9C2C2F9C5C6F9C5C69A6666FF00FFFF
          00FFFF00FFFF00FFFF00FF9A6666D97374D87273D77172D67071D56F70D46E6F
          D36D6EB6696A69333459B26733CB6733CB6733CB6733CB6733CB6733CB67F9C5
          C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666DC7677DB7576DA7475D9
          7374D87273D77172D67071B86B6B69333459B26733CB6733CB6733CB6733CB67
          33CB6733CB67F9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666DF79
          7ADF797ADE7879DD7778DC7677DB7576DA7475B96C6D69333459B26733CB6733
          CB6733CB6733CB6733CB6733CB67F9C5C69A6666FF00FFFF00FFFF00FFFF00FF
          FF00FF9A6666E37D7EE27C7DE17B7CE07A7BDF797ADE7879DD7778BB6E6F6933
          3459B26733CB6733CB6733CB6733CB6733CB6733CB67F9C5C69A6666FF00FFFF
          00FFFF00FFFF00FFFF00FF9A6666E68081E57F80E47E7FE37D7EE27C7DE17B7C
          E07A7BBD707069333459B26733CB6733CB6733CB6733CB6733CB6733CB67F9C5
          C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666E98384E88283E78182E6
          8081E78788ECA6A7E47E7FBE717269333473B87633CB6733CB6733CB6733CB67
          33CB6733CB67F9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666ED87
          88EC8687EB8586EA8485F2B9BAFFFFFFF0B0B0C07374693334F2D9C0C7F0BC79
          DD9079DD9060D68160D68160D681F9C5C69A6666FF00FFFF00FFFF00FFFF00FF
          FF00FF9A6666F08A8BEF898AEE8889ED8788F5BBBCFFFFFFF0AAABC275756933
          34F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDE2F8CCE2F8CCF9C5C69A6666FF00FFFF
          00FFFF00FFFF00FFFF00FF9A6666F38D8EF28C8DF18B8CF08A8BEF898AF3A6A7
          ED8788C37677693334F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5
          C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666F69091F69091F58F90F4
          8E8FF38D8EF28C8DF18B8CC57878693334F2D9C0FFFFDDFFFFDDFFFFDDFFFFDD
          FFFFDDFFFFDDF9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666FA94
          95F99394F89293F79192F69091F58F90F48E8FC77A7A693334F2D9C0FFFFDDFF
          FFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5C69A6666FF00FFFF00FFFF00FFFF00FF
          FF00FF9A6666FD9798FC9697FB9596FA9495F99394F89293F79192C87B7C6933
          34F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5C69A6666FF00FFFF
          00FFFF00FFFF00FFFF00FF9A6666FF999AFF999AFE9899FD9798FD9798FC9697
          FB9596CA7D7D693334F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5
          C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666FF999AFF999AFF999AFF
          999AFF999AFE9899FE9899CC7F7F693334F2D9C0FFFFDDFFFFDDFFFFDDFFFFDD
          FFFFDDFFFFDDF9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF00FF9A6666F996
          97FF999AFF999AFF999AFF999AFF999AFF999ACD8080693334F2D9C0FFFFDDFF
          FFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5C69A6666FF00FFFF00FFFF00FFFF00FF
          FF00FF9A66669A6666C0797ADF898AFF999AFF999AFF999AFF999ACD80806933
          34F2D9C0FFFFDDFFFFDDFFFFDDFFFFDDFFFFDDFFFFDDF9C5C69A6666FF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666A76C6DC67C7DF29394
          FF999ACD8080693334A766669A66669A66669A66669A66669A66669A66669A66
          669A6666FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FF9A66669A6666AD7070B37373693334FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A6666693334FF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        Spacing = 6
      end
    end
  end
  object SelNom: TOraQuery
    SQL.Strings = (
      'SELECT * '
      'FROM NOMENCLATURE_FULL_VIEW '
      'WHERE N_ID = :N_ID'
      '')
    Active = True
    Left = 136
    Top = 12
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'N_ID'
        Value = Null
      end>
    object SelNomCOMPILED_NAME: TStringField
      FieldName = 'COMPILED_NAME'
      Size = 299
    end
    object SelNomFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Size = 515
    end
    object SelNomF_NAME: TStringField
      FieldName = 'F_NAME'
      Required = True
      Size = 256
    end
    object SelNomF_NAME_RU: TStringField
      FieldName = 'F_NAME_RU'
      Required = True
      Size = 256
    end
    object SelNomF_SUB_TYPE: TStringField
      FieldName = 'F_SUB_TYPE'
      Required = True
      Size = 50
    end
    object SelNomF_TYPE: TStringField
      FieldName = 'F_TYPE'
      Required = True
      Size = 50
    end
    object SelNomID_DEPARTMENTS: TFloatField
      FieldName = 'ID_DEPARTMENTS'
      Required = True
    end
    object SelNomDEPT: TStringField
      FieldName = 'DEPT'
      Size = 100
    end
    object SelNomN_ID: TFloatField
      FieldName = 'N_ID'
      Required = True
    end
    object SelNomFN_ID: TFloatField
      FieldName = 'FN_ID'
      Required = True
    end
    object SelNomFT_ID: TFloatField
      FieldName = 'FT_ID'
      Required = True
    end
    object SelNomFST_ID: TFloatField
      FieldName = 'FST_ID'
      Required = True
    end
    object SelNomS_ID: TFloatField
      FieldName = 'S_ID'
      Required = True
    end
    object SelNomC_ID: TFloatField
      FieldName = 'C_ID'
      Required = True
    end
    object SelNomCOL_ID: TFloatField
      FieldName = 'COL_ID'
      Required = True
    end
    object SelNomH_CODE: TStringField
      FieldName = 'H_CODE'
      Size = 30
    end
    object SelNomH_NAME: TStringField
      FieldName = 'H_NAME'
      Size = 256
    end
    object SelNomCODE: TFloatField
      FieldName = 'CODE'
    end
    object SelNomLEN: TIntegerField
      FieldName = 'LEN'
    end
    object SelNomPACK: TIntegerField
      FieldName = 'PACK'
    end
    object SelNomDIAMETER: TFloatField
      FieldName = 'DIAMETER'
    end
    object SelNomVBN: TIntegerField
      FieldName = 'VBN'
      Required = True
    end
    object SelNomHOL_TYPE: TStringField
      FieldName = 'HOL_TYPE'
      Size = 5
    end
    object SelNomWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object SelNomS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Required = True
      Size = 150
    end
    object SelNomCOLOUR: TStringField
      FieldName = 'COLOUR'
      Required = True
      Size = 50
    end
    object SelNomCOUNTRY: TStringField
      FieldName = 'COUNTRY'
      Required = True
      Size = 50
    end
    object SelNomTYPE_SUBTYPE: TStringField
      FieldName = 'TYPE_SUBTYPE'
      Size = 103
    end
    object SelNomHOL_MARKS: TStringField
      FieldName = 'HOL_MARKS'
      Size = 4000
    end
    object SelNomRUS_MARKS: TStringField
      FieldName = 'RUS_MARKS'
      Size = 4000
    end
    object SelNomBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
      Size = 30
    end
    object SelNomCUST_COEF: TFloatField
      FieldName = 'CUST_COEF'
      Required = True
    end
    object SelNomGREAT_NAME: TStringField
      FieldName = 'GREAT_NAME'
      Size = 350
    end
  end
  object SelNom_DS: TOraDataSource
    DataSet = SelNom
    Left = 168
    Top = 12
  end
end
