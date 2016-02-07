unit nakl_edit_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, DB, Grids, DBGrids, ActnList,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxTextEdit, cxCheckBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, Menus, cxLookAndFeelPainters, cxButtons,
  cxCurrencyEdit, cxContainer, cxMaskEdit, cxDropDownEdit, cxImageComboBox,
  dxBar, dxBarExtItems, cxDBEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  Tnakl_edit = class(TForm)
    Panel4: TPanel;
    Panel3: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label4: TLabel;
    ActionList1: TActionList;
    aSave: TAction;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    aObmen: TAction;
    aDolg: TAction;
    a76: TAction;
    aGSM: TAction;
    edit_serchnick: TEdit;
    edit_serchfio: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    aSerchNick: TAction;
    aFiltrOn: TAction;
    aFiltrOff: TAction;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    gr_clients: TcxGrid;
    gr_clients_v: TcxGridDBBandedTableView;
    _gr_cashbook_vID_CLIENTS: TcxGridDBBandedColumn;
    gr_clients_vNICK: TcxGridDBBandedColumn;
    gr_clients_vFIO: TcxGridDBBandedColumn;
    gr_clients_vccode: TcxGridDBBandedColumn;
    gr_clients_vregion_name: TcxGridDBBandedColumn;
    gr_clients_vgroup_name: TcxGridDBBandedColumn;
    gr_clients_vblock1: TcxGridDBBandedColumn;
    gr_clients_vblock2: TcxGridDBBandedColumn;
    gr_clients_l: TcxGridLevel;
    btn_filtron: TcxButton;
    cxButton1: TcxButton;
    edit_invoice: TcxCurrencyEdit;
    edit_summ: TcxCurrencyEdit;
    edit_info: TcxTextEdit;
    edit_in_ru: TcxCurrencyEdit;
    edit_out_ru: TcxCurrencyEdit;
    edit_in_dol: TcxCurrencyEdit;
    edit_in_ev: TcxCurrencyEdit;
    edit_out_dol: TcxCurrencyEdit;
    edit_out_ev: TcxCurrencyEdit;
    btnClose: TcxButton;
    cxButton2: TcxButton;
    btn_help: TcxButton;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarStatic5: TdxBarStatic;
    dxBarStatic6: TdxBarStatic;
    cxStyleRepository1: TcxStyleRepository;
    st_red: TcxStyle;
    st_block1: TcxStyle;
    st_block2: TcxStyle;
    imcb_operations: TcxLookupComboBox;
    aUp: TAction;
    aDown: TAction;
    st_notactive: TcxStyle;
    imcb_oper_short: TcxLookupComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure edit_serchnickChange(Sender: TObject);
    procedure edit_serchfioChange(Sender: TObject);
    procedure aSerchNickExecute(Sender: TObject);
    procedure aFiltrOnExecute(Sender: TObject);
    procedure aFiltrOffExecute(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure gr_clients_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure aUpExecute(Sender: TObject);
    procedure aDownExecute(Sender: TObject);
    procedure edit_invoiceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure imcb_operationsPropertiesChange(Sender: TObject);
    procedure imcb_oper_shortPropertiesChange(Sender: TObject);
//    procedure CRDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
//      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    procedure GetCourse;
    { Private declarations }
  public
    state: integer;
    corrector: String;
    cur_paydesk : integer;
    cur_date    : TDate;
    { Public declarations }
  end;

var
  nakl_edit: Tnakl_edit;

implementation

uses DataM, choise, cashbook_f, help_add_f;

{$R *.dfm}


//
//  Курсор на поиск по клиенту
//
procedure Tnakl_edit.aSerchNickExecute(Sender: TObject);
begin
  edit_serchnick.SetFocus;
end;


// обрабатываем нажатие кнопки UP
procedure Tnakl_edit.aUpExecute(Sender: TObject);
begin
  if (gr_clients.IsFocused = false) then
    SelectNext(ActiveControl as tWinControl, False, True);
end;


// обрабатываем нажатие кнопки DOWN
procedure Tnakl_edit.aDownExecute(Sender: TObject);
begin
  if (gr_clients.IsFocused = false) then
    SelectNext(ActiveControl as tWinControl, True, True);
end;


//
//  Снимаем фильт с данных
//
procedure Tnakl_edit.aFiltrOffExecute(Sender: TObject);
begin
  edit_serchnick.Text := '';
  edit_serchfio.Text  := '';
  gr_clients_v.DataController.Filter.Clear;
  gr_clients_v.DataController.Filter.Active := false;
end;


//
//  Фильтруем данные
//
procedure Tnakl_edit.aFiltrOnExecute(Sender: TObject);
begin
  if trim(edit_serchnick.Text) <> '' then
  begin
	  gr_clients_vNICK.DataBinding.AddToFilter(
      	nil,
        foLike,
        '%' + edit_serchnick.Text + '%',
        edit_serchnick.Text,
		    true
        );
	  gr_clients_v.DataController.Filter.Active := true;
  end;

  if trim(edit_serchfio.Text) <> '' then
  begin
	  gr_clients_vFIO.DataBinding.AddToFilter(
      	nil,
        foLike,
        '%' + edit_serchfio.Text + '%',
        edit_serchfio.Text,
		    true
        );
	  gr_clients_v.DataController.Filter.Active := true;
  end;
end;


//
//  Помощь
//
procedure Tnakl_edit.SpeedButton3Click(Sender: TObject);
begin
  help_add := Thelp_add.Create(Application);
  help_add.showmodal;
  help_add.Free;
end;


//
// Достаем курсы
//
procedure Tnakl_edit.GetCourse;
begin
  DM.Q_SQL.Close;
  DM.Q_SQL.SQL.Clear;
  DM.Q_SQL.SQL.Add('begin dicts.get_curse(:ddate_, :cursor_); end;');
  DM.Q_SQL.ParamByName('ddate_').AsDate := NOW;
  DM.Q_SQL.ParamByName('cursor_').AsCursor;
  DM.Q_SQL.Open;
end;


//
// Раскрашиваем клиентов
//
procedure Tnakl_edit.gr_clients_vCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var val1, val2: variant;
begin
  if {(not AViewInfo.Selected) and} (gr_clients_v.DataController.DataSet.RecordCount > 0) then
  begin
    // Блок кредитом
    val1  := gr_clients_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_clients_v.GetColumnByFieldName('BLOCK1').Index
                );
    if (val1 = 1) then
         ACanvas.Brush.Color := st_block2.Color;

    // Блок бухом
    val2  := gr_clients_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_clients_v.GetColumnByFieldName('BLOCK2').Index
                );
    if (val2 = 1) then
         ACanvas.Brush.Color := st_block1.Color;
  end;
end;


procedure Tnakl_edit.imcb_operationsPropertiesChange(Sender: TObject);
begin
  if (imcb_oper_short.EditValue <> imcb_operations.EditValue) then
    imcb_oper_short.EditValue := imcb_operations.EditValue;
end;

procedure Tnakl_edit.imcb_oper_shortPropertiesChange(Sender: TObject);
begin
  if (imcb_oper_short.EditValue <> imcb_operations.EditValue) then
    imcb_operations.EditValue := imcb_oper_short.EditValue;
end;

//
// Достаем курс USD
//
procedure Tnakl_edit.SpeedButton1Click(Sender: TObject);
begin
  GetCourse;
  edit_info.EditValue := DM.Q_SQL.FieldByName('SHEV_USD').AsString;
  DM.Q_SQL.Close;
end;


//
// Достаем курс EUR
//
procedure Tnakl_edit.SpeedButton2Click(Sender: TObject);
begin
  GetCourse;
  edit_info.EditValue := DM.Q_SQL.FieldByName('SHEV_EUR').AsString;
  DM.Q_SQL.Close;
end;


//
// Обмен
//
procedure Tnakl_edit.BitBtn2Click(Sender: TObject);
begin
  imcb_operations.EditValue := 25;
  DM.Q_CLIENTS.Locate('NICK','ОБМ',[]);
  edit_info.SetFocus;
end;


//
// Долг
//
procedure Tnakl_edit.BitBtn3Click(Sender: TObject);
begin
  imcb_operations.EditValue := 3;
  gr_clients.SetFocus;
end;


//
// 76
//
procedure Tnakl_edit.BitBtn4Click(Sender: TObject);
begin
  imcb_operations.EditValue := 2;
  DM.Q_CLIENTS.Locate('NICK','76',[]);
  edit_info.SetFocus;
end;


//
// ГСМ
//
procedure Tnakl_edit.BitBtn5Click(Sender: TObject);
begin
  imcb_operations.EditValue := 6;
  gr_clients.SetFocus;
end;


//
// Кнопка выход
//
procedure Tnakl_edit.btnCloseClick(Sender: TObject);
begin
  Close;
end;


procedure Tnakl_edit.edit_serchnickChange(Sender: TObject);
begin
  if trim(edit_serchnick.Text) <> '' then edit_serchfio.Text := '';
end;


procedure Tnakl_edit.edit_invoiceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_UP) then
    SelectNext(ActiveControl as tWinControl, False, True);
  if (Key = VK_DOWN) then
    SelectNext(ActiveControl as tWinControl, True, True);
end;


procedure Tnakl_edit.edit_serchfioChange(Sender: TObject);
begin
  if trim(edit_serchfio.Text) <> '' then edit_serchnick.Text := '';
end;


//
// Запись клиента в БД
//
procedure Tnakl_edit.BitBtn1Click(Sender: TObject);
var ind: integer;
begin
  if (imcb_operations.EditValue < 1) or (DM.Q_CLIENTS.RecordCount < 1) then ShowMessage('Не заполнены обязательные поля!')
  else
  begin
        cxButton2.SetFocus;
        DM.Q_SQL.SQL.Clear;
        DM.Q_SQL.SQL.Add('begin cash_pkg.add_cash_record(:id_, :client_, :paydesk_, :id_operation_, :invoice_, :summ_, :in_rub_, :out_rub_, :in_usd_, :out_usd_, :in_eu_, :out_eu_, :info_, :corrector_, :ddate_, :ddate_done_, :r_desk_, :r_date_, :state_); end;');

        if (state = 1) then
          DM.Q_SQL.Params.ParamByName('id_').AsInteger          := 0
        else
          DM.Q_SQL.Params.ParamByName('id_').AsInteger          := imcb_operations.Tag;

        DM.Q_SQL.Params.ParamByName('client_').AsInteger        := gr_clients_v.DataController.DataSet.FieldByName('ID_CLIENTS').AsInteger;

        if (imcb_operations.EditValue = 1) then
          DM.Q_SQL.Params.ParamByName('paydesk_').AsInteger       := 1;
        if (imcb_operations.EditValue = 32) then
          DM.Q_SQL.Params.ParamByName('paydesk_').AsInteger       := 2;
        if (imcb_operations.EditValue = 4) then
          DM.Q_SQL.Params.ParamByName('paydesk_').AsInteger       := 3;
        if ((imcb_operations.EditValue <> 1) and (imcb_operations.EditValue <> 32) and (imcb_operations.EditValue <> 4)) then
          DM.Q_SQL.Params.ParamByName('paydesk_').AsInteger       := cur_paydesk;

        DM.Q_SQL.Params.ParamByName('id_operation_').AsInteger  := imcb_operations.EditValue;
        DM.Q_SQL.ParamByName('invoice_').Value                  := edit_invoice.EditValue;
        DM.Q_SQL.ParamByName('summ_').Value                     := edit_summ.EditValue;
        DM.Q_SQL.Params.ParamByName('in_rub_').Value            := edit_in_ru.EditValue;
        DM.Q_SQL.Params.ParamByName('out_rub_').Value           := edit_out_ru.EditValue;
        DM.Q_SQL.Params.ParamByName('in_usd_').Value            := edit_in_dol.EditValue;
        DM.Q_SQL.Params.ParamByName('out_usd_').Value           := edit_out_dol.EditValue;
        DM.Q_SQL.Params.ParamByName('in_eu_').Value             := edit_in_ev.EditValue;
        DM.Q_SQL.Params.ParamByName('out_eu_').Value            := edit_out_ev.EditValue;
        DM.Q_SQL.Params.ParamByName('info_').Value              := edit_info.EditValue;
        DM.Q_SQL.Params.ParamByName('corrector_').AsString      := corrector;
        DM.Q_SQL.Params.ParamByName('ddate_').AsDateTime        := NOW;
        DM.Q_SQL.Params.ParamByName('ddate_done_').AsDateTime   := NOW;
        DM.Q_SQL.Params.ParamByName('r_desk_').AsInteger        := cur_paydesk;
        DM.Q_SQL.Params.ParamByName('r_date_').AsDate           := cur_date;
        DM.Q_SQL.Params.ParamByName('state_').AsInteger         := state;
        DM.Q_SQL.Execute;

    ind := DM.Q_SQL.Params.ParamByName('id_').AsInteger;
    DM.CASH_TMP.Refresh;
    DM.CASH_TMP.Locate('ID_CASH_TMP',ind,[]);
    close;
   end;
end;



end.
