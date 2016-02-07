object frm_stat_raznos: Tfrm_stat_raznos
  Left = 391
  Top = 262
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = '  '#1057#1090#1072#1090#1080#1089#1090#1080#1082#1072' '#1079#1072#1082#1072#1079#1072
  ClientHeight = 459
  ClientWidth = 884
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Pitch = fpFixed
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 16
  object gr_total: TcxGrid
    Left = 0
    Top = 57
    Width = 884
    Height = 369
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.Kind = lfOffice11
    object gr_total_view: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnCustomDrawCell = gr_total_viewCustomDrawCell
      DataController.DataSource = DS_STAT
      DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.InvertSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object gr_total_viewHH: TcxGridDBColumn
        DataBinding.FieldName = 'HH'
        Visible = False
        GroupIndex = 0
        IsCaptionAssigned = True
      end
      object gr_total_viewNBUTTON: TcxGridDBColumn
        DataBinding.FieldName = 'NBUTTON'
        Visible = False
      end
      object gr_total_viewH_CATEGORY: TcxGridDBColumn
        DataBinding.FieldName = 'H_CATEGORY'
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.Moving = False
        Options.Sorting = False
        IsCaptionAssigned = True
      end
      object gr_total_viewQUANT: TcxGridDBColumn
        Caption = 'STEMS'
        DataBinding.FieldName = 'QUANT'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        HeaderAlignmentHorz = taCenter
        MinWidth = 80
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 80
      end
      object gr_total_viewWEIGHT: TcxGridDBColumn
        Caption = 'POSITIONS'
        DataBinding.FieldName = 'WEIGHT'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DecimalPlaces = 5
        Properties.DisplayFormat = ',0.00000;-,0.00000'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 80
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 80
      end
      object gr_total_viewTR0_Q: TcxGridDBColumn
        Caption = 'STEMS 0'
        DataBinding.FieldName = 'TR0_Q'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 70
      end
      object gr_total_viewTR0_W: TcxGridDBColumn
        Caption = 'POS 0'
        DataBinding.FieldName = 'TR0_W'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DecimalPlaces = 5
        Properties.DisplayFormat = ',0.00000;-,0.00000'
        Properties.ReadOnly = True
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 70
      end
      object gr_total_viewTR1_Q: TcxGridDBColumn
        Tag = 1
        Caption = 'STEMS 1'
        DataBinding.FieldName = 'TR1_Q'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 70
      end
      object gr_total_viewTR1_W: TcxGridDBColumn
        Tag = 1
        Caption = 'POS 1'
        DataBinding.FieldName = 'TR1_W'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DecimalPlaces = 5
        Properties.DisplayFormat = ',0.00000;-,0.00000'
        Properties.ReadOnly = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 70
      end
      object gr_total_viewTR2_Q: TcxGridDBColumn
        Tag = 2
        Caption = 'STEMS 2'
        DataBinding.FieldName = 'TR2_Q'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 70
      end
      object gr_total_viewTR2_W: TcxGridDBColumn
        Tag = 2
        Caption = 'POS 2'
        DataBinding.FieldName = 'TR2_W'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DecimalPlaces = 5
        Properties.DisplayFormat = ',0.00000;-,0.00000'
        Properties.ReadOnly = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 70
      end
      object gr_total_viewTR3_Q: TcxGridDBColumn
        Tag = 3
        Caption = 'STEMS 3'
        DataBinding.FieldName = 'TR3_Q'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 70
      end
      object gr_total_viewTR3_W: TcxGridDBColumn
        Tag = 3
        Caption = 'POS 3'
        DataBinding.FieldName = 'TR3_W'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DecimalPlaces = 5
        Properties.DisplayFormat = ',0.00000;-,0.00000'
        Properties.ReadOnly = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 70
      end
      object gr_total_viewTR4_Q: TcxGridDBColumn
        Tag = 4
        Caption = 'STEMS 4'
        DataBinding.FieldName = 'TR4_Q'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 70
      end
      object gr_total_viewTR4_W: TcxGridDBColumn
        Tag = 4
        Caption = 'POS 4'
        DataBinding.FieldName = 'TR4_W'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DecimalPlaces = 5
        Properties.DisplayFormat = ',0.00000;-,0.00000'
        Properties.ReadOnly = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 70
      end
      object gr_total_viewTR5_Q: TcxGridDBColumn
        Tag = 5
        Caption = 'STEMS 5'
        DataBinding.FieldName = 'TR5_Q'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 70
      end
      object gr_total_viewTR5_W: TcxGridDBColumn
        Tag = 5
        Caption = 'POS 5'
        DataBinding.FieldName = 'TR5_W'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DecimalPlaces = 5
        Properties.DisplayFormat = ',0.00000;-,0.00000'
        Properties.ReadOnly = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 70
      end
      object gr_total_viewTR6_Q: TcxGridDBColumn
        Tag = 6
        Caption = 'STEMS 6'
        DataBinding.FieldName = 'TR6_Q'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 70
      end
      object gr_total_viewTR6_W: TcxGridDBColumn
        Tag = 6
        Caption = 'POS 6'
        DataBinding.FieldName = 'TR6_W'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DecimalPlaces = 5
        Properties.DisplayFormat = ',0.00000;-,0.00000'
        Properties.ReadOnly = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 70
      end
      object gr_total_viewTR7_Q: TcxGridDBColumn
        Tag = 7
        Caption = 'STEMS 7'
        DataBinding.FieldName = 'TR7_Q'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 70
      end
      object gr_total_viewTR7_W: TcxGridDBColumn
        Tag = 7
        Caption = 'POS 7'
        DataBinding.FieldName = 'TR7_W'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DecimalPlaces = 5
        Properties.DisplayFormat = ',0.00000;-,0.00000'
        Properties.ReadOnly = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 70
      end
      object gr_total_viewTR8_Q: TcxGridDBColumn
        Tag = 8
        Caption = 'STEMS 8'
        DataBinding.FieldName = 'TR8_Q'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.ReadOnly = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 70
      end
      object gr_total_viewTR8_W: TcxGridDBColumn
        Tag = 8
        Caption = 'POS 8'
        DataBinding.FieldName = 'TR8_W'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DecimalPlaces = 5
        Properties.DisplayFormat = ',0.00000;-,0.00000'
        Properties.ReadOnly = True
        Visible = False
        HeaderAlignmentHorz = taCenter
        MinWidth = 70
        Options.Editing = False
        Options.Filtering = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Options.Sorting = False
        Width = 70
      end
    end
    object gr_total_level: TcxGridLevel
      GridView = gr_total_view
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 426
    Width = 884
    Height = 33
    Align = alBottom
    Color = 16484996
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 708
      Top = 4
      Width = 171
      Height = 25
      Cursor = crHandPoint
      Cancel = True
      Caption = #1047#1072#1082#1088#1099#1090#1100
      ModalResult = 2
      TabOrder = 0
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
  end
  object pnlRaznosStatTop: TPanel
    Left = 0
    Top = 0
    Width = 884
    Height = 57
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object chbTruck1: TcxCheckBox
      Tag = 1
      Left = 8
      Top = 6
      Caption = 'Truck 1'
      Enabled = False
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnChange = chbTruck1PropertiesChange
      TabOrder = 0
      Width = 80
    end
    object chbTruck2: TcxCheckBox
      Tag = 2
      Left = 8
      Top = 27
      Caption = 'Truck 2'
      Enabled = False
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnChange = chbTruck1PropertiesChange
      TabOrder = 1
      Width = 80
    end
    object chbTruck3: TcxCheckBox
      Tag = 3
      Left = 88
      Top = 6
      Caption = 'Truck 3'
      Enabled = False
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnChange = chbTruck1PropertiesChange
      TabOrder = 2
      Width = 80
    end
    object chbTruck4: TcxCheckBox
      Tag = 4
      Left = 88
      Top = 27
      Caption = 'Truck 4'
      Enabled = False
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnChange = chbTruck1PropertiesChange
      TabOrder = 3
      Width = 80
    end
    object chbTruck5: TcxCheckBox
      Tag = 5
      Left = 168
      Top = 6
      Caption = 'Truck 5'
      Enabled = False
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnChange = chbTruck1PropertiesChange
      TabOrder = 4
      Width = 80
    end
    object chbTruck6: TcxCheckBox
      Tag = 6
      Left = 168
      Top = 27
      Caption = 'Truck 6'
      Enabled = False
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnChange = chbTruck1PropertiesChange
      TabOrder = 5
      Width = 80
    end
    object chbTruck7: TcxCheckBox
      Tag = 7
      Left = 248
      Top = 6
      Caption = 'Truck 7'
      Enabled = False
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnChange = chbTruck1PropertiesChange
      TabOrder = 6
      Width = 80
    end
    object chbTruck8: TcxCheckBox
      Tag = 8
      Left = 248
      Top = 27
      Caption = 'Truck 8'
      Enabled = False
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnChange = chbTruck1PropertiesChange
      TabOrder = 7
      Width = 80
    end
    object chbTruck9: TcxCheckBox
      Tag = 9
      Left = 328
      Top = 6
      Caption = 'Truck 9'
      Enabled = False
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnChange = chbTruck1PropertiesChange
      TabOrder = 8
      Width = 80
    end
    object chbTruck10: TcxCheckBox
      Tag = 10
      Left = 328
      Top = 27
      Caption = 'Truck 10'
      Enabled = False
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnChange = chbTruck1PropertiesChange
      TabOrder = 9
      Width = 80
    end
  end
  object DS_STAT: TOraDataSource
    DataSet = CDS_STAT
    Left = 72
    Top = 384
  end
  object CDS_STAT: TOraQuery
    SQL.Strings = (
      'begin'
      
        '  pack_orders.get_stat2(:ID_DEP_, :ID_ORDER_, :ID_CLIENT_, :ID_F' +
        'ST_, :FST_, :WITHOUT_PACK_, :CURSOR_);'
      'end;')
    Left = 72
    Top = 344
    ParamData = <
      item
        DataType = ftFloat
        Name = 'ID_DEP_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ID_ORDER_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ID_CLIENT_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ID_FST_'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FST_'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WITHOUT_PACK_'
        ParamType = ptInput
      end
      item
        DataType = ftCursor
        Name = 'CURSOR_'
        ParamType = ptOutput
        Value = 'Object'
      end>
    CommandStoredProcName = 'pack_orders.get_stat2:0'
    object CDS_STATHH: TStringField
      FieldName = 'HH'
      Size = 9
    end
    object CDS_STATNBUTTON: TFloatField
      FieldName = 'NBUTTON'
    end
    object CDS_STATH_CATEGORY: TStringField
      FieldName = 'H_CATEGORY'
      Size = 32
    end
    object CDS_STATWEIGHT: TFloatField
      FieldName = 'WEIGHT'
    end
    object CDS_STATQUANT: TFloatField
      FieldName = 'QUANT'
    end
    object CDS_STATTR0_W: TFloatField
      FieldName = 'TR0_W'
    end
    object CDS_STATTR0_Q: TFloatField
      FieldName = 'TR0_Q'
    end
    object CDS_STATTR1_W: TFloatField
      FieldName = 'TR1_W'
    end
    object CDS_STATTR1_Q: TFloatField
      FieldName = 'TR1_Q'
    end
    object CDS_STATTR2_W: TFloatField
      FieldName = 'TR2_W'
    end
    object CDS_STATTR2_Q: TFloatField
      FieldName = 'TR2_Q'
    end
    object CDS_STATTR3_W: TFloatField
      FieldName = 'TR3_W'
    end
    object CDS_STATTR3_Q: TFloatField
      FieldName = 'TR3_Q'
    end
    object CDS_STATTR4_W: TFloatField
      FieldName = 'TR4_W'
    end
    object CDS_STATTR4_Q: TFloatField
      FieldName = 'TR4_Q'
    end
    object CDS_STATTR5_W: TFloatField
      FieldName = 'TR5_W'
    end
    object CDS_STATTR5_Q: TFloatField
      FieldName = 'TR5_Q'
    end
    object CDS_STATTR6_W: TFloatField
      FieldName = 'TR6_W'
    end
    object CDS_STATTR6_Q: TFloatField
      FieldName = 'TR6_Q'
    end
    object CDS_STATTR7_W: TFloatField
      FieldName = 'TR7_W'
    end
    object CDS_STATTR7_Q: TFloatField
      FieldName = 'TR7_Q'
    end
    object CDS_STATTR8_W: TFloatField
      FieldName = 'TR8_W'
    end
    object CDS_STATTR8_Q: TFloatField
      FieldName = 'TR8_Q'
    end
  end
end
