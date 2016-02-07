object frm_full_info: Tfrm_full_info
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 3
  Caption = #1055#1086#1083#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1087#1086' '#1090#1086#1074#1072#1088#1091
  ClientHeight = 538
  ClientWidth = 815
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object Panel2: TPanel
    Left = 0
    Top = 494
    Width = 815
    Height = 44
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 523
    ExplicitWidth = 878
    DesignSize = (
      815
      44)
    object btnClose: TcxButton
      Left = 667
      Top = 4
      Width = 145
      Height = 36
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 0
      Colors.Default = 16244682
      Colors.Pressed = 12615680
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000858180A1908B8BCF8F8A89CF687C8ECF095AA1CF0958A2CF0955A1CF0853
        A0CF60748BCF888383CF878382CF797575A50000000000000000000000000000
        0000928E8DCFDAD2CFFFE5DCD9FF9DB4C8FF196CB6FF277BCDFF277BCDFF1969
        B7FF98ADC6FFE5DCD9FFDAD2CFFF898584D40000000000000000000000000000
        0000948F8ECFE5DCDAFFF7EEEBFFAAC2D4FF1970B8FF2882D3FF2882D3FF1A6D
        B9FFA4BAD2FFF7EEEBFFE5DDDAFF8A8585D40000000000000000000000000000
        0000959090CFE5DDDAFFF8EFECFFAAC4D5FF3E7FAFFF3E8AC6FF2888D3FF1A72
        B9FFA5BBD3FFF8EFECFFE6DEDBFF8B8686D40000000000000000000000000000
        0000969191CFE6DEDBFFF8F0EDFFABC6D6FF1F7BB5FF2B8DD0FF288DD3FF1A77
        B9FFA5BDD4FFF8F0EDFFE6DFDCFF8C8787D40000000000000000000000000000
        0000979392CFE6DFDCFFF8F1EEFFABC7D7FF197EB9FF2892D3FF2892D3FF1A7B
        B9FFA5BFD5FFF8F1EEFFE6E0DDFF8C8888D40000000000000000000000000000
        0000959191CFE6E0DEFFF9F2F0FFABC8D8FF147CB2FF1F87C0FF1F87C0FF1578
        B2FFA6C1D6FFF9F2F0FFE7E0DEFF8B8787D400000000000000002525962B3030
        A26579757ED3DDD8D6FFF9F3F1FFDDE4E8FF86B5CDFF86B4CDFF86B3CDFF86B2
        CDFFDAE1E7FFF9F3F1FFDDD8D6FF737074D82F2E8A64212189382F2FB8CE2E2E
        C4FF4241A4FFA7A3A9FFE9E3E1FFFAF4F2FFFAF5F2FFFAF5F2FFFAF5F2FFFAF5
        F2FFFAF4F2FFE8E2E0FFA5A1A7FF3B3B91FF2B2BB8FF28289ED32E2EB89E3030
        C8FF3030CBFF4241AFFF9F9CA9FFE4DFDDFFFAF5F3FFFBF6F4FFFBF6F4FFFAF5
        F3FFE3DEDCFF9C99A7FF3B3B9FFF2E2EC5FF2C2CBCFF252598A01D1D77042E2E
        B79C3636CAFF3B3BD5FF3D3CB4FF9492A6FFDEDAD9FFFAF5F4FFFAF5F4FFDED9
        D8FF918FA4FF3737A7FF3A3AD2FF3232BBFF2525989919196A04000000000000
        00002E2EB7803A3ACAFE4848E1FF3B3BB9FF8987A5FFD7D3D1FFD6D3D1FF8785
        A3FF3837B0FF4848DFFF3636BAFF2C2C99800000000000000000000000000000
        0000000000002D2DB5633A3AC7FA5353E8FF3B3BBEFF7B7AA2FF7A79A1FF3A3A
        BAFF5353E7FF3838B8FE8D8CB9FF52505C270000000000000000000000000000
        000000000000000000002C2CAF4A3838C2F35656E8FF3D3DC4FF3C3CC3FF5656
        E7FF3535B8F24F4E9C6FCCCBCBFF5B5959270000000000000000000000000000
        00000000000000000000000000002A2AA8343434BEE75151E2FF5151E2FF3232
        B7E82828A13463607B27C0BFBFFF625F5F270000000000000000000000000000
        00000000000000000000000000000000000027279E212F2FB7BE2E2EB5BF2727
        9F2300000000383636025D5A5A1E3D3B3B020000000000000000}
      LookAndFeel.Kind = lfUltraFlat
      ExplicitLeft = 649
    end
  end
  object pcMain: TcxPageControl
    Left = 0
    Top = 0
    Width = 815
    Height = 494
    ActivePage = tshNom
    Align = alClient
    HideTabs = True
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    Style = 9
    TabOrder = 0
    TabSlants.Kind = skCutCorner
    TabWidth = 150
    ExplicitWidth = 791
    ExplicitHeight = 503
    ClientRectBottom = 494
    ClientRectRight = 815
    ClientRectTop = 0
    object tshNom: TcxTabSheet
      Caption = ' '#1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072' '
      ImageIndex = 0
      ExplicitTop = 23
      ExplicitWidth = 791
      ExplicitHeight = 480
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 815
        Height = 494
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitWidth = 791
        ExplicitHeight = 480
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 427
          Height = 494
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitHeight = 523
          object cxDBVerticalGrid1: TcxDBVerticalGrid
            Left = 0
            Top = 0
            Width = 427
            Height = 494
            Align = alLeft
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = []
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = True
            OptionsView.CellEndEllipsis = True
            OptionsView.RowHeaderWidth = 177
            OptionsBehavior.BandSizing = False
            OptionsBehavior.AllowChangeRecord = False
            OptionsData.Appending = False
            OptionsData.Deleting = False
            OptionsData.Inserting = False
            ParentFont = False
            Styles.Content = stSecondary
            Styles.Inactive = stSecondary
            Styles.Header = stSecondary
            TabOrder = 0
            DataController.DataSource = SelNom_DS
            ExplicitHeight = 523
            object cxDBVerticalGrid1DBEditorRow1: TcxDBEditorRow
              Properties.Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1079#1074#1072#1085#1080#1077
              Properties.DataBinding.FieldName = 'COMPILED_NAME_OTDEL'
              Properties.Options.Editing = False
              Styles.Header = stPrimary
              Styles.Content = stPrimary
            end
            object cxDBVerticalGrid1H_CODE: TcxDBEditorRow
              Properties.Caption = #1040#1088#1090#1080#1082#1091#1083
              Properties.EditPropertiesClassName = 'TcxTextEditProperties'
              Properties.EditProperties.ReadOnly = True
              Properties.DataBinding.FieldName = 'H_CODE'
              Visible = False
            end
            object cxDBVerticalGrid1F_NAME_RU: TcxDBEditorRow
              Properties.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
              Properties.EditPropertiesClassName = 'TcxTextEditProperties'
              Properties.EditProperties.ReadOnly = True
              Properties.DataBinding.FieldName = 'F_NAME_RU'
            end
            object cxDBVerticalGrid1COLOUR: TcxDBEditorRow
              Properties.Caption = #1062#1074#1077#1090
              Properties.EditPropertiesClassName = 'TcxTextEditProperties'
              Properties.EditProperties.ReadOnly = True
              Properties.DataBinding.FieldName = 'COLOUR'
            end
            object cxDBVerticalGrid1LEN: TcxDBEditorRow
              Properties.Caption = #1044#1083#1080#1085#1072
              Properties.EditPropertiesClassName = 'TcxTextEditProperties'
              Properties.EditProperties.ReadOnly = True
              Properties.DataBinding.FieldName = 'LEN'
            end
            object cxDBVerticalGrid1PACK: TcxDBEditorRow
              Properties.Caption = #1042' '#1091#1087#1072#1082#1086#1074#1082#1077
              Properties.EditPropertiesClassName = 'TcxTextEditProperties'
              Properties.EditProperties.ReadOnly = True
              Properties.DataBinding.FieldName = 'PACK'
            end
            object cxDBVerticalGrid1DIAMETER: TcxDBEditorRow
              Properties.Caption = #1044#1080#1072#1084#1077#1090#1088
              Properties.EditPropertiesClassName = 'TcxTextEditProperties'
              Properties.EditProperties.ReadOnly = True
              Properties.DataBinding.FieldName = 'DIAMETER'
            end
            object cxDBVerticalGrid1DBEditorRow2: TcxDBEditorRow
              Properties.Caption = #1045#1076#1080#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
              Properties.DataBinding.FieldName = 'NSI_NAME'
            end
            object cxDBVerticalGrid1CODE: TcxDBEditorRow
              Properties.Caption = #1064#1090#1088#1080#1093'-'#1082#1086#1076
              Properties.EditPropertiesClassName = 'TcxTextEditProperties'
              Properties.EditProperties.ReadOnly = True
              Properties.DataBinding.FieldName = 'CODE'
            end
            object cxDBVerticalGrid1RUS_MARKS: TcxDBEditorRow
              Options.Moving = False
              Properties.Caption = #1057#1087#1077#1094#1080#1092#1080#1082#1072#1094#1080#1103
              Properties.EditPropertiesClassName = 'TcxTextEditProperties'
              Properties.EditProperties.ReadOnly = True
              Properties.DataBinding.FieldName = 'RUS_MARKS'
            end
          end
        end
        object Panel4: TPanel
          Left = 427
          Top = 0
          Width = 388
          Height = 494
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          ParentBackground = False
          TabOrder = 1
          ExplicitLeft = 425
          ExplicitTop = 1
          ExplicitWidth = 365
          ExplicitHeight = 478
          object Image1: TImage
            Left = 0
            Top = 0
            Width = 388
            Height = 494
            Align = alClient
            Center = True
            Proportional = True
            Stretch = True
            ExplicitLeft = 56
            ExplicitWidth = 402
            ExplicitHeight = 530
          end
        end
      end
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object stPrimary: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clGradientInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
    end
    object stSecondary: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
  end
  object SelNom: TOraQuery
    SQL.Strings = (
      'SELECT a.*, u.nsi_name '
      'FROM NOMENCLATURE_MAT_VIEW a'
      'left outer join nsi_units u on u.nsi_units_id = a.vbn'
      'WHERE a.N_ID = :N_ID')
    Left = 472
    Top = 36
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'N_ID'
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
      Required = True
      Size = 100
    end
    object SelNomFT_ID: TFloatField
      FieldName = 'FT_ID'
      Required = True
    end
    object SelNomHOL_SUB_TYPE: TStringField
      FieldName = 'HOL_SUB_TYPE'
      Size = 50
    end
    object SelNomSUB_WEIGHT: TFloatField
      FieldName = 'SUB_WEIGHT'
    end
    object SelNomHT_ID: TFloatField
      FieldName = 'HT_ID'
    end
    object SelNomN_ID: TFloatField
      FieldName = 'N_ID'
      Required = True
    end
    object SelNomFN_ID: TFloatField
      FieldName = 'FN_ID'
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
      Size = 50
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
    end
    object SelNomWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object SelNomREMARKS: TStringField
      FieldName = 'REMARKS'
      Size = 256
    end
    object SelNomS_NAME_RU: TStringField
      FieldName = 'S_NAME_RU'
      Required = True
      Size = 150
    end
    object SelNomBAR_CODE: TStringField
      FieldName = 'BAR_CODE'
      Size = 30
    end
    object SelNomCUST_COEF: TFloatField
      FieldName = 'CUST_COEF'
      Required = True
    end
    object SelNomPHOTO: TStringField
      FieldName = 'PHOTO'
      Size = 30
    end
    object SelNomIS_PHOTO: TFloatField
      FieldName = 'IS_PHOTO'
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
    object SelNomGREAT_NAME: TStringField
      FieldName = 'GREAT_NAME'
      Size = 350
    end
    object SelNomGREAT_NAME_F: TStringField
      FieldName = 'GREAT_NAME_F'
      Size = 372
    end
    object SelNomNAME_CODE: TStringField
      FieldName = 'NAME_CODE'
    end
    object SelNomCOMPILED_NAME_OTDEL: TStringField
      FieldName = 'COMPILED_NAME_OTDEL'
      Size = 350
    end
    object SelNomID_OFFICE: TIntegerField
      FieldName = 'ID_OFFICE'
    end
    object SelNomDATE_CHANGE: TDateTimeField
      FieldName = 'DATE_CHANGE'
    end
    object SelNomNOPRINT: TIntegerField
      FieldName = 'NOPRINT'
    end
    object SelNomNOTUSE: TIntegerField
      FieldName = 'NOTUSE'
    end
    object SelNomNAMECODE: TStringField
      FieldName = 'NAMECODE'
    end
    object SelNomTNVED: TStringField
      FieldName = 'TNVED'
      Size = 50
    end
    object SelNomWEIGHTDRY: TFloatField
      FieldName = 'WEIGHTDRY'
    end
    object SelNomNOM_NEW: TIntegerField
      FieldName = 'NOM_NEW'
    end
    object SelNomNOM_START: TIntegerField
      FieldName = 'NOM_START'
    end
    object SelNomNOM_END: TIntegerField
      FieldName = 'NOM_END'
    end
    object SelNomHOL_COLOR: TStringField
      FieldName = 'HOL_COLOR'
      Size = 50
    end
    object SelNomNSI_NAME: TStringField
      FieldName = 'NSI_NAME'
      Size = 50
    end
  end
  object SelNom_DS: TOraDataSource
    DataSet = SelNom
    Left = 504
    Top = 36
  end
end
