unit UEditWebShop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit, cxCheckBox,
  cxCurrencyEdit, cxSplitter, DBAccess, Ora, MemDS, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, StdCtrls, cxButtons, ExtCtrls,
  cxDropDownEdit, cxContainer, cxMaskEdit, cxCalendar, ActnList;

type
  TfrmEditWebShop = class(TForm)
    pnlBottom: TPanel;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    pnlMain: TPanel;
    gd_invoice: TcxGrid;
    gd_invoice_v: TcxGridDBTableView;
    gd_invoice_vINV_ID: TcxGridDBColumn;
    gd_invoice_vis_minus: TcxGridDBColumn;
    gd_invoice_vINV_DATE: TcxGridDBColumn;
    gd_invoice_vS_NAME_RU: TcxGridDBColumn;
    gd_invoice_vCOMMENTS: TcxGridDBColumn;
    gd_invoice_vINV_SUM: TcxGridDBColumn;
    gd_invoice_vPAST_NUM: TcxGridDBColumn;
    gd_invoice_vIPP_ID: TcxGridDBColumn;
    gd_invoice_vIPP_COMMENT: TcxGridDBColumn;
    gd_invoice_vID_DEPARTMENTS: TcxGridDBColumn;
    gd_invoice_vDEPT_NAME: TcxGridDBColumn;
    gd_invoice_vMINUS_INV_ID: TcxGridDBColumn;
    gd_invoice_vINV_MINUS: TcxGridDBColumn;
    gd_invoice_vINV_SUM1: TcxGridDBColumn;
    gd_invoice_l: TcxGridLevel;
    pnlTop: TPanel;
    gr_distr: TcxGrid;
    gr_distr_v: TcxGridDBTableView;
    gr_distr_vDISTRIB_SEQ: TcxGridDBColumn;
    gr_distr_vDIST_IND_ID: TcxGridDBColumn;
    gr_distr_vDIST_DATE: TcxGridDBColumn;
    gr_distr_vDESCRIPTION: TcxGridDBColumn;
    gr_distr_vREADY: TcxGridDBColumn;
    gr_distr_vSTR_INV: TcxGridDBColumn;
    gr_distr_vSTR_ORDERS: TcxGridDBColumn;
    gr_distr_vIS_SENDED: TcxGridDBColumn;
    gr_distr_l: TcxGridLevel;
    SelDistrInd: TOraQuery;
    SelDistrIndDIST_IND_ID: TFloatField;
    SelDistrIndDESCRIPTION: TStringField;
    SelDistrIndDIST_DATE: TDateTimeField;
    SelDistrIndREADY: TIntegerField;
    SelDistrIndSTR_INV: TStringField;
    SelDistrIndDISTRIB_SEQ: TFloatField;
    SelDistrIndIS_SENDED: TDateTimeField;
    SelDistrIndSTR_ORDERS: TStringField;
    SelDistrInd_DS: TOraDataSource;
    cxSplitter1: TcxSplitter;
    startDate: TcxDateEdit;
    stopDate: TcxDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edComments: TcxTextEdit;
    Label4: TLabel;
    Label5: TLabel;
    edCoef: TcxCurrencyEdit;
    edStatus: TcxComboBox;
    rgWebShop: TRadioGroup;
    ActionList1: TActionList;
    aEnter: TAction;
    aShowPacks: TAction;
    InvoReg: TOraQuery;
    InvoRegINV_ID: TFloatField;
    InvoRegINV_DATE: TDateTimeField;
    InvoRegCOMMENTS: TStringField;
    InvoRegINV_SUM: TFloatField;
    InvoRegIPP_ID: TFloatField;
    InvoRegIPP_COMMENT: TStringField;
    InvoRegID_DEPARTMENTS: TFloatField;
    InvoRegDEPT_NAME: TStringField;
    InvoRegINV_MINUS: TIntegerField;
    InvoRegMINUS_INV_ID: TFloatField;
    InvoRegIS_MINUS: TFloatField;
    InvoRegS_NAME_RU: TStringField;
    InvoRegTOTAL_SUM: TFloatField;
    InvoRegPAST_NUM: TFloatField;
    InvoReg_DS: TOraDataSource;
    Label6: TLabel;
    edCourse: TcxCurrencyEdit;
    InvoRegREADY_POS: TFloatField;
    gd_invoice_vREADY_POS: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure gd_invoice_vCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure aEnterExecute(Sender: TObject);
    procedure gr_distr_vCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure rgWebShopClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    w_type: string;
    w_cds: TOraQuery;
    function ShowEditWebShop(wType: string; cds: TOraQuery) : Variant;
  end;


var
  frmEditWebShop: TfrmEditWebShop;

implementation

uses PI_Library, DataModule, Globals;

{$R *.dfm}


// проставим даты старта и окончания продаж с инвойса
procedure TfrmEditWebShop.gd_invoice_vCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if gd_invoice_v.DataController.DataSet.RecordCount = 0 then exit;

  startDate.EditValue := gd_invoice_v.DataController.DataSet.FieldByName('INV_DATE').AsDateTime;
  stopDate.EditValue  := startDate.EditValue + 4;
  stopDate.EditValue  := StrToDateTime(stopDate.Text + ' 22:00:00');
end;

// проставим даты старта и окончания продаж с разноса
procedure TfrmEditWebShop.gr_distr_vCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if gr_distr_v.DataController.DataSet.RecordCount = 0 then exit;

  startDate.EditValue := gr_distr_v.DataController.DataSet.FieldByName('DIST_DATE').AsDateTime;
  stopDate.EditValue  := startDate.EditValue + 2;
  stopDate.EditValue  := StrToDateTime(stopDate.Text + ' 22:00:00');
end;

// лочим таблицы в зависимости от выбора источника данных
procedure TfrmEditWebShop.rgWebShopClick(Sender: TObject);
begin
  if rgWebShop.ItemIndex = 0 then
  begin
    gd_invoice.Enabled := true;
    gr_distr.Enabled   := false;
  end
  else
  begin
    gd_invoice.Enabled := false;
    gr_distr.Enabled   := true;
  end;
end;

function TfrmEditWebShop.ShowEditWebShop(wType: string; cds: TOraQuery) : Variant;
begin
  frmEditWebShop := TfrmEditWebShop.Create(Application);
  try
    frmEditWebShop.w_cds := cds;
    frmEditWebShop.w_type := wType;

    frmEditWebShop.InvoReg.ParamByName('id_dept_').Value := CUR_DEPT_ID;
    ReactivateOraQuery(frmEditWebShop.InvoReg);
    frmEditWebShop.SelDistrInd.ParamByName('ID_DEP_').Value := CUR_DEPT_ID;
    frmEditWebShop.SelDistrInd.ParamByName('STARTDATE').AsDate := Now-30;
    frmEditWebShop.SelDistrInd.ParamByName('STOPDATE').AsDate  := Now+10;
    ReactivateOraQuery(frmEditWebShop.SelDistrInd);

    if wType = 'new' then
    begin
      frmEditWebShop.rgWebShop.ItemIndex := 0;
{
      frmEditWebShop.InvoReg.ParamByName('id_dept_').Value := CUR_DEPT_ID;
      ReactivateOraQuery(frmEditWebShop.InvoReg);
      frmEditWebShop.SelDistrInd.ParamByName('STARTDATE').AsDate := Now-10;
      frmEditWebShop.SelDistrInd.ParamByName('STOPDATE').AsDate  := Now+10;
      ReactivateOraQuery(frmEditWebShop.SelDistrInd);
}
    end;
    if wType = 'edit' then
    begin
      null;
//      pnlTop.Enabled := false;
{
      gd_invoice.Enabled := false;
      gr_distr.Enabled   := false;
}
    end;

    if frmEditWebShop.rgWebShop.ItemIndex = 0 then
    begin
      frmEditWebShop.gd_invoice.Enabled := true;
      frmEditWebShop.gr_distr.Enabled   := false;
    end
    else
    begin
      frmEditWebShop.gd_invoice.Enabled := false;
      frmEditWebShop.gr_distr.Enabled   := true;
    end;

    frmEditWebShop.ShowModal;
  finally
    frmEditWebShop := nil;
  end;
end;

procedure TfrmEditWebShop.aEnterExecute(Sender: TObject);
var i, id: integer;
begin
  if w_type = 'new' then
  begin
    with DM.ForceQ do
    begin
      Close;
      SQL.Text := 'begin truck_sale_pkg.edit_truck_sale(:p_id, :p_start_date, :p_stop_date, :p_comments, :p_price_coef, :p_course, :p_status); end;';
      ParamByName('p_id').AsInteger         := 0;
      ParamByName('p_start_date').AsDate    := startDate.EditValue;
      ParamByName('p_stop_date').AsDateTime := stopDate.EditValue;
      ParamByName('p_comments').AsString    := VarToStr(edComments.EditValue);
      ParamByName('p_price_coef').AsFloat   := edCoef.EditValue;
      ParamByName('p_course').AsFloat       := edCourse.EditValue;
      ParamByName('p_status').AsString      := edStatus.EditingText;
      Execute;

      id := ParamByName('p_id').AsInteger;

      // добавим инвойсы
      if rgWebShop.ItemIndex = 0 then
      begin
        Close;
        SQL.Text := 'begin truck_sale_pkg.edit_truck_sale_ins_inv(:p_id, :p_inv_id); end;';
        ParamByName('p_id').AsInteger       := id;

        for I := 0 to gd_invoice_v.Controller.SelectedRowCount - 1 do
        begin
          ParamByName('p_inv_id').AsInteger := gd_invoice_v.Controller.SelectedRows[I].Values[gd_invoice_vINV_ID.Index];
          Execute;
        end;
      end;

      // добавим разносы
      if rgWebShop.ItemIndex = 1 then
      begin
        Close;
        SQL.Text := 'begin truck_sale_pkg.edit_truck_sale_ins_distr(:p_id, :p_inv_id); end;';
        ParamByName('p_id').AsInteger       := id;

        for I := 0 to gr_distr_v.Controller.SelectedRowCount - 1 do
        begin
          ParamByName('p_inv_id').AsInteger := gr_distr_v.Controller.SelectedRows[I].Values[gr_distr_vDIST_IND_ID.Index];
          Execute;
        end;
      end;

    end
  end;

  if w_type = 'edit' then
  begin
      // добавим инвойсы
      if rgWebShop.ItemIndex = 0 then
      begin
        DM.ForceQ.Close;
        DM.ForceQ.SQL.Text := 'begin truck_sale_pkg.edit_truck_sale_ins_inv(:p_id, :p_inv_id); end;';
        DM.ForceQ.ParamByName('p_id').AsInteger       := w_cds.FieldByName('TRUCK_SALE_ID').AsInteger;

        for I := 0 to gd_invoice_v.Controller.SelectedRowCount - 1 do
        begin
          DM.ForceQ.ParamByName('p_inv_id').AsInteger := gd_invoice_v.Controller.SelectedRows[I].Values[gd_invoice_vINV_ID.Index];
          DM.ForceQ.Execute;
        end;
      end;
      // добавим разносы
      if rgWebShop.ItemIndex = 1 then
      begin
        DM.ForceQ.Close;
        DM.ForceQ.SQL.Text := 'begin truck_sale_pkg.edit_truck_sale_ins_distr(:p_id, :p_inv_id); end;';
        DM.ForceQ.ParamByName('p_id').AsInteger       := w_cds.FieldByName('TRUCK_SALE_ID').AsInteger;

        for I := 0 to gr_distr_v.Controller.SelectedRowCount - 1 do
        begin
          DM.ForceQ.ParamByName('p_inv_id').AsInteger := gr_distr_v.Controller.SelectedRows[I].Values[gr_distr_vDIST_IND_ID.Index];
          DM.ForceQ.Execute;
        end;
      end;
  end;

  DM.STAR_DB.Commit;
  ModalResult := mrOk;
end;

procedure TfrmEditWebShop.FormShow(Sender: TObject);
begin
  if w_type = 'new' then
  begin
    startDate.EditValue := Now;
    stopDate.EditValue  := StrToDateTime(startDate.Text + ' 22:00:00');

    DM.ForceQ.SQL.Clear;
    DM.ForceQ.SQL.Add('begin dicts.get_curse(:DDATE_, :CURSOR_); end;');
    DM.ForceQ.ParamByName('DDATE_').AsDate := Date;
    DM.ForceQ.ParamByName('CURSOR_').AsCursor;
    DM.ForceQ.Open;

    edCourse.Value    := DM.ForceQ.FieldByName('SHEV_EUR').AsFloat;
    DM.ForceQ.Close;
  end;

  if w_type = 'edit' then
  begin
    startDate.EditValue   := w_cds.FieldByName('START_DATE').AsDateTime;
    stopDate.EditValue    := w_cds.FieldByName('STOP_DATE').AsDateTime;
    edCourse.Value        := w_cds.FieldByName('COURSE').AsFloat;
    edComments.EditValue  := w_cds.FieldByName('COMMENTS').AsString;
    edCoef.EditValue      := w_cds.FieldByName('PRICE_COEF').AsFloat;
    edStatus.EditValue    := w_cds.FieldByName('STATUS').AsString;

    if (w_cds.FieldByName('LIST_INV').AsString = '') then
      rgWebShop.ItemIndex   := 1
    else
      rgWebShop.ItemIndex   := 0;

    startDate.Enabled     := false;
    stopDate.Enabled      := false;
    edCourse.Enabled      := false;
    edComments.Enabled    := false;
    edCoef.Enabled        := false;
    edStatus.Enabled      := false;
    rgWebShop.Enabled     := false;
  end;
end;

end.
