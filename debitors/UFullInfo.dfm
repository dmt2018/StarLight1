object frm_full_info: Tfrm_full_info
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1055#1086#1083#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1091
  ClientHeight = 474
  ClientWidth = 609
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 16
  object Panel2: TPanel
    Left = 0
    Top = 433
    Width = 609
    Height = 41
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      609
      41)
    object btnClose: TcxButton
      Left = 454
      Top = 7
      Width = 145
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000181862042929A59326269B3B000000000000000000000000000000000000
        00000000000021218A3126269B94181863050000000000000000000000001818
        64042A2AA9A94D4DD0FF3535B4F226269B3B0000000000000000000000000000
        000022228C312F2FA9EC4242C5FF26269BAD1818630500000000191966042B2B
        ACA94E4ED1FF6969E2FF6969E9FF3636B5F226269B3B00000000000000002323
        8E322F2FABED4E4ED8FF4747D2FF4444C9FF26269BAD181863052B2BAE8E4949
        CDFF6060D9FF6868DDFF7070E7FF6C6CEDFF3636B5F226269B3B232391323131
        AEED5252DCFF4444CEFF4242CCFF4747D2FF4242C6FF26269B942828A0313434
        B8EC5E5EDEFF6868DEFF7070E7FF7575EEFF6D6DEFFF3636B5F23333B1ED5A5A
        E2FF4D4DD5FF4343CDFF4242CDFF4D4DD8FF2F2FA9ED23239233000000002828
        A0313535B9EC6464E4FF7070E7FF7676EEFF7777F1FF6C6CEFFF6363E9FF5A5A
        DEFF4C4CD4FF4444CEFF4D4DD8FF2F2FABED2424943300000000000000000000
        00002828A0313535B9EC6868E9FF7575EEFF7777F0FF7272EEFF6767E7FF5A5A
        DEFF4D4DD5FF4E4ED9FF3030ADED252596330000000000000000000000000000
        0000000000002828A1313636BAEC6D6DEEFF7777F0FF7272EEFF6767E7FF5A5A
        DEFF5454DEFF3131B0ED25259933000000000000000000000000000000000000
        00000000000027279E313636BBEC6D6DEEFF7777F0FF7272EEFF6767E7FF5A5A
        DEFF5454DEFF3232B3F226269B3B000000000000000000000000000000000000
        00002828A0313636BDEC6868EAFF7575EEFF7777F0FF7272EEFF6767E7FF5A5A
        DEFF4D4DD5FF4E4EDAFF3232B3F226269B3B0000000000000000000000002828
        A2313636BEEC6464E5FF7070E7FF7676EEFF7777F1FF6B6BEEFF6363E9FF5A5A
        DEFF4C4CD4FF4444CEFF4D4DD9FF3232B3F226269B3B000000002929A4313636
        C0EC5E5EDFFF6868DEFF7070E7FF7575EEFF6C6CEFFF3636BCED3535BAEC5A5A
        E3FF4D4DD5FF4343CDFF4242CCFF4D4DD9FF3232B3F226269B3B2E2EB9904B4B
        D2FF6060D9FF6868DDFF7070E7FF6B6BEDFF3737BEED2929A7332828A1313434
        B9EC5353DEFF4444CEFF4242CCFF4848D3FF4343CAFF2929A68D1E1E77042F2F
        BAAA5151D7FF6969E2FF6868E9FF3838C0ED2A2AA93300000000000000002828
        A0313333B8EC4E4EDAFF4848D3FF4545CEFF2A2AA9A21A1A6B02000000001E1E
        77042F2FBAAA4F4FD7FF3838C1ED2B2BAC330000000000000000000000000000
        00002828A0313333B8EC4343CCFF2B2BACA21B1B6D0200000000000000000000
        00001E1E77042E2EB9922B2BAE33000000000000000000000000000000000000
        0000000000002828A0312B2BAE891B1B6F020000000000000000}
      LookAndFeel.Kind = lfOffice11
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 609
    Height = 433
    Align = alClient
    TabOrder = 1
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 607
      Height = 431
      Align = alClient
      BorderWidth = 2
      TabOrder = 0
      object cxDBVerticalGrid1: TcxDBVerticalGrid
        Left = 3
        Top = 3
        Width = 601
        Height = 425
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Pitch = fpFixed
        Font.Style = []
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = True
        OptionsView.CellEndEllipsis = True
        OptionsView.RowHeaderWidth = 195
        OptionsBehavior.BandSizing = False
        OptionsBehavior.AllowChangeRecord = False
        OptionsData.Editing = False
        OptionsData.Appending = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        ParentFont = False
        Styles.Content = stSecondary
        Styles.Inactive = stSecondary
        Styles.Header = stSecondary
        TabOrder = 0
        DataController.DataSource = SelNom_DS
        object cxDBVerticalGrid1FIO: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1060#1048#1054
          Properties.DataBinding.FieldName = 'FIO'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1NICK: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1050#1086#1076
          Properties.DataBinding.FieldName = 'NICK'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1CCODE: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1064#1090#1088#1080#1093'-'#1082#1086#1076
          Properties.DataBinding.FieldName = 'CCODE'
          Properties.Options.Editing = False
          Visible = False
        end
        object cxDBVerticalGrid1TTYPE_NAME: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1072#1103' '#1092#1086#1088#1084#1072
          Properties.DataBinding.FieldName = 'TTYPE_NAME'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1GROUP_NAME: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1043#1088#1091#1087#1087#1072
          Properties.DataBinding.FieldName = 'GROUP_NAME'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1REGION_NAME: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1056#1077#1075#1080#1086#1085
          Properties.DataBinding.FieldName = 'REGION_NAME'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1ADDRESS: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1040#1076#1088#1077#1089
          Properties.EditPropertiesClassName = 'TcxMemoProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.EditProperties.ScrollBars = ssVertical
          Properties.DataBinding.FieldName = 'ADDRESS'
          Properties.Options.Editing = False
          Properties.Options.ShowEditButtons = eisbAlways
        end
        object cxDBVerticalGrid1U_ADDRESS: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1070#1088#1077#1076'. '#1072#1076#1088#1077#1089
          Properties.EditPropertiesClassName = 'TcxMemoProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.EditProperties.ScrollBars = ssVertical
          Properties.DataBinding.FieldName = 'U_ADDRESS'
          Properties.Options.Editing = False
          Properties.Options.ShowEditButtons = eisbAlways
        end
        object cxDBVerticalGrid1PHONE: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1058#1077#1083#1077#1092#1086#1085
          Properties.DataBinding.FieldName = 'PHONE'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1PASSPORT: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
          Properties.EditPropertiesClassName = 'TcxMemoProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.EditProperties.ScrollBars = ssVertical
          Properties.DataBinding.FieldName = 'PASSPORT'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1CONTACT: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
          Properties.DataBinding.FieldName = 'CONTACT'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1CONT_PHONE: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1099#1081' '#1090#1077#1083#1077#1092#1086#1085
          Properties.DataBinding.FieldName = 'CONT_PHONE'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1EMAIL: TcxDBEditorRow
          Options.Moving = False
          Properties.DataBinding.FieldName = 'EMAIL'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1WWW: TcxDBEditorRow
          Options.Moving = False
          Properties.DataBinding.FieldName = 'WWW'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1INN: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1048#1053#1053
          Properties.DataBinding.FieldName = 'INN'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1REG_SVID: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1057#1074#1080#1076'. '#1086' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
          Properties.DataBinding.FieldName = 'REG_SVID'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1KPP: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1050#1055#1055
          Properties.DataBinding.FieldName = 'KPP'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1OKATO: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1054#1050#1040#1058#1054
          Properties.DataBinding.FieldName = 'OKATO'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1BANK: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1041#1072#1085#1082#1086#1074#1089#1082#1080#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1099
          Properties.EditPropertiesClassName = 'TcxMemoProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.EditProperties.ScrollBars = ssVertical
          Properties.DataBinding.FieldName = 'BANK'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1BLOCK1: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1047#1072#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085' '#1082#1088#1077#1076#1080#1090#1086#1084
          Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
          Properties.EditProperties.DisplayChecked = #1076#1072
          Properties.EditProperties.DisplayUnchecked = #1085#1077#1090
          Properties.EditProperties.ImmediatePost = True
          Properties.EditProperties.NullStyle = nssUnchecked
          Properties.EditProperties.ReadOnly = True
          Properties.EditProperties.ValueChecked = '1'
          Properties.EditProperties.ValueUnchecked = '0'
          Properties.DataBinding.FieldName = 'BLOCK1'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1BLOCK2: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1047#1072#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085' '#1073#1091#1093#1075#1072#1083#1090#1077#1088#1080#1077#1081
          Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
          Properties.EditProperties.DisplayChecked = #1076#1072
          Properties.EditProperties.DisplayUnchecked = #1085#1077#1090
          Properties.EditProperties.ImmediatePost = True
          Properties.EditProperties.NullStyle = nssUnchecked
          Properties.EditProperties.ReadOnly = True
          Properties.EditProperties.ValueChecked = '1'
          Properties.EditProperties.ValueUnchecked = '0'
          Properties.DataBinding.FieldName = 'BLOCK2'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1FLOWERS: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1057#1087#1077#1094#1080#1072#1083#1080#1079#1072#1094#1080#1103' - '#1089#1088#1077#1079
          Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
          Properties.EditProperties.DisplayChecked = #1076#1072
          Properties.EditProperties.DisplayUnchecked = #1085#1077#1090
          Properties.EditProperties.ImmediatePost = True
          Properties.EditProperties.NullStyle = nssUnchecked
          Properties.EditProperties.ReadOnly = True
          Properties.EditProperties.ValueChecked = '1'
          Properties.EditProperties.ValueUnchecked = '0'
          Properties.DataBinding.FieldName = 'FLOWERS'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1PLANTS: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1057#1087#1077#1094#1080#1072#1083#1080#1079#1072#1094#1080#1103' - '#1075#1086#1088#1096#1082#1080
          Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
          Properties.EditProperties.DisplayChecked = #1076#1072
          Properties.EditProperties.DisplayUnchecked = #1085#1077#1090
          Properties.EditProperties.ImmediatePost = True
          Properties.EditProperties.NullStyle = nssUnchecked
          Properties.EditProperties.ReadOnly = True
          Properties.EditProperties.ValueChecked = '1'
          Properties.EditProperties.ValueUnchecked = '0'
          Properties.DataBinding.FieldName = 'PLANTS'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1MARK: TcxDBEditorRow
          Options.Moving = False
          Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
          Properties.EditProperties.DisplayChecked = #1076#1072
          Properties.EditProperties.DisplayUnchecked = #1085#1077#1090
          Properties.EditProperties.ImmediatePost = True
          Properties.EditProperties.NullStyle = nssUnchecked
          Properties.EditProperties.ReadOnly = True
          Properties.EditProperties.ValueChecked = '1'
          Properties.EditProperties.ValueUnchecked = '0'
          Properties.DataBinding.FieldName = 'MARK'
          Properties.Options.Editing = False
          Visible = False
        end
        object cxDBVerticalGrid1INSURANCE: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1055#1077#1085#1089#1080#1086#1085#1085#1086#1077' '#1089#1090#1088#1072#1093#1086#1074#1072#1085#1080#1077
          Properties.DataBinding.FieldName = 'INSURANCE'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1INFO: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
          Properties.EditPropertiesClassName = 'TcxMemoProperties'
          Properties.EditProperties.ReadOnly = True
          Properties.EditProperties.ScrollBars = ssVertical
          Properties.DataBinding.FieldName = 'INFO'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1DOSTAVKA: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1044#1086#1089#1090#1072#1074#1082#1072
          Properties.EditPropertiesClassName = 'TcxCheckBoxProperties'
          Properties.EditProperties.DisplayChecked = #1076#1072
          Properties.EditProperties.DisplayUnchecked = #1085#1077#1090
          Properties.EditProperties.NullStyle = nssUnchecked
          Properties.EditProperties.ReadOnly = True
          Properties.EditProperties.ValueChecked = '1'
          Properties.EditProperties.ValueUnchecked = '0'
          Properties.DataBinding.FieldName = 'DOSTAVKA'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1AGREEMENT: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1044#1086#1075#1086#1074#1086#1088
          Properties.DataBinding.FieldName = 'AGREEMENT'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1REG_TYPE_NAME: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
          Properties.DataBinding.FieldName = 'REG_TYPE_NAME'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1ADVERT: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1048#1089#1090#1086#1095#1085#1080#1082' '#1088#1077#1082#1083#1072#1084#1099
          Properties.DataBinding.FieldName = 'ADVERT'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1Office: TcxDBEditorRow
          Options.Moving = False
          Properties.Caption = #1054#1092#1080#1089
          Properties.DataBinding.FieldName = 'brief'
          Properties.Options.Editing = False
        end
        object cxDBVerticalGrid1CategoryRow1: TcxCategoryRow
          Expanded = False
          Options.Moving = False
          Properties.Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1074#1074#1086#1076#1077
          object cxDBVerticalGrid1DDATE: TcxDBEditorRow
            Options.Moving = False
            Properties.Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
            Properties.DataBinding.FieldName = 'DDATE'
            Properties.Options.Editing = False
          end
          object cxDBVerticalGrid1CORRECTOR: TcxDBEditorRow
            Options.Moving = False
            Properties.Caption = #1050#1090#1086' '#1074#1074#1077#1083
            Properties.DataBinding.FieldName = 'CORRECTOR'
            Properties.Options.Editing = False
          end
          object cxDBVerticalGrid1DATE_COR: TcxDBEditorRow
            Options.Moving = False
            Properties.Caption = #1050#1086#1075#1076#1072' '#1087#1088#1072#1074#1080#1083
            Properties.DataBinding.FieldName = 'DATE_COR'
            Properties.Options.Editing = False
          end
          object cxDBVerticalGrid1CORRECTOR_COR: TcxDBEditorRow
            Options.Moving = False
            Properties.Caption = #1050#1090#1086' '#1087#1088#1072#1074#1080#1083
            Properties.DataBinding.FieldName = 'CORRECTOR_COR'
            Properties.Options.Editing = False
          end
        end
      end
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 440
    Top = 200
    PixelsPerInch = 96
    object stPrimary: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clGradientInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
    end
    object stSecondary: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = []
    end
  end
  object SelNom: TOraQuery
    Session = DM.OraSession1
    SQL.Strings = (
      'begin'
      '  clients_pkg.get_client_info(:ID_CLIENTS_, :CURSOR_);'
      'end;')
    Left = 456
    Top = 116
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_CLIENTS_'
        ParamType = ptInput
        Value = 4435.000000000000000000
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    object SelNomID_CLIENTS: TIntegerField
      FieldName = 'ID_CLIENTS'
    end
    object SelNomFIO: TStringField
      FieldName = 'FIO'
      Size = 255
    end
    object SelNomNICK: TStringField
      FieldName = 'NICK'
    end
    object SelNomCCODE: TStringField
      FieldName = 'CCODE'
      Size = 13
    end
    object SelNomREGION: TIntegerField
      FieldName = 'REGION'
    end
    object SelNomADDRESS: TStringField
      FieldName = 'ADDRESS'
      Size = 1024
    end
    object SelNomU_ADDRESS: TStringField
      FieldName = 'U_ADDRESS'
      Size = 1024
    end
    object SelNomPHONE: TStringField
      FieldName = 'PHONE'
      Size = 1024
    end
    object SelNomPASSPORT: TStringField
      FieldName = 'PASSPORT'
      Size = 1024
    end
    object SelNomCONTACT: TStringField
      FieldName = 'CONTACT'
      Size = 100
    end
    object SelNomCONT_PHONE: TStringField
      FieldName = 'CONT_PHONE'
      Size = 1024
    end
    object SelNomEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object SelNomWWW: TStringField
      FieldName = 'WWW'
      Size = 50
    end
    object SelNomINN: TStringField
      FieldName = 'INN'
      Size = 50
    end
    object SelNomREG_SVID: TStringField
      FieldName = 'REG_SVID'
      Size = 50
    end
    object SelNomKPP: TStringField
      FieldName = 'KPP'
    end
    object SelNomOKATO: TStringField
      FieldName = 'OKATO'
    end
    object SelNomBANK: TStringField
      FieldName = 'BANK'
      Size = 1024
    end
    object SelNomAGREEMENT: TStringField
      FieldName = 'AGREEMENT'
      Size = 50
    end
    object SelNomADVERTISMENT: TIntegerField
      FieldName = 'ADVERTISMENT'
    end
    object SelNomDDATE: TDateTimeField
      FieldName = 'DDATE'
    end
    object SelNomBLOCK1: TIntegerField
      FieldName = 'BLOCK1'
    end
    object SelNomBLOCK2: TIntegerField
      FieldName = 'BLOCK2'
    end
    object SelNomFLOWERS: TIntegerField
      FieldName = 'FLOWERS'
    end
    object SelNomPLANTS: TIntegerField
      FieldName = 'PLANTS'
    end
    object SelNomMARK: TStringField
      FieldName = 'MARK'
      Size = 10
    end
    object SelNomTTYPE: TIntegerField
      FieldName = 'TTYPE'
    end
    object SelNomID_CLIENTS_GROUPS: TIntegerField
      FieldName = 'ID_CLIENTS_GROUPS'
    end
    object SelNomCORRECTOR: TStringField
      FieldName = 'CORRECTOR'
    end
    object SelNomDATE_COR: TDateTimeField
      FieldName = 'DATE_COR'
    end
    object SelNomCORRECTOR_COR: TStringField
      FieldName = 'CORRECTOR_COR'
    end
    object SelNomDUTIES: TStringField
      FieldName = 'DUTIES'
      Size = 1024
    end
    object SelNomINSURANCE: TStringField
      FieldName = 'INSURANCE'
      Size = 50
    end
    object SelNomDATE_IN: TDateTimeField
      FieldName = 'DATE_IN'
    end
    object SelNomDATE_OUT: TDateTimeField
      FieldName = 'DATE_OUT'
    end
    object SelNomL_SERVICE: TStringField
      FieldName = 'L_SERVICE'
      Size = 10
    end
    object SelNomSTAFF: TIntegerField
      FieldName = 'STAFF'
    end
    object SelNomACTIVE: TIntegerField
      FieldName = 'ACTIVE'
    end
    object SelNomLOGIN: TStringField
      FieldName = 'LOGIN'
    end
    object SelNomINFO: TStringField
      FieldName = 'INFO'
      Size = 1024
    end
    object SelNomREG_TYPE: TIntegerField
      FieldName = 'REG_TYPE'
    end
    object SelNomCOUNT: TIntegerField
      FieldName = 'COUNT'
    end
    object SelNomDOSTAVKA: TIntegerField
      FieldName = 'DOSTAVKA'
    end
    object SelNomREG_TYPE_NAME: TStringField
      FieldName = 'REG_TYPE_NAME'
      Size = 50
    end
    object SelNomGROUP_NAME: TStringField
      FieldName = 'GROUP_NAME'
      Size = 255
    end
    object SelNomTTYPE_NAME: TStringField
      FieldName = 'TTYPE_NAME'
      Size = 50
    end
    object SelNomREGION_NAME: TStringField
      FieldName = 'REGION_NAME'
      Size = 255
    end
    object SelNomADVERT: TStringField
      FieldName = 'ADVERT'
      Size = 255
    end
    object SelNomDEPART: TStringField
      FieldName = 'DEPART'
      Size = 4000
    end
    object SelNomJOB_TITLES: TStringField
      FieldName = 'JOB_TITLES'
      Size = 4000
    end
    object SelNomBRIEF: TStringField
      FieldName = 'BRIEF'
      Size = 10
    end
    object SelNomCITY: TStringField
      FieldName = 'CITY'
      Size = 255
    end
    object SelNomID_CITY: TIntegerField
      FieldName = 'ID_CITY'
    end
  end
  object SelNom_DS: TOraDataSource
    DataSet = SelNom
    Left = 488
    Top = 116
  end
end
