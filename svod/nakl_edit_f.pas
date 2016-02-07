unit nakl_edit_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls, DB, Grids, DBGrids,
  ActnList, Mask, StrUtils, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxTextEdit, cxCheckBox, Menus,
  cxLookAndFeelPainters, cxDropDownEdit, cxCalendar, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxContainer, cxCurrencyEdit, cxButtons,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  dxBar, dxBarExtItems, cxLabel;

type
  Tnakl_edit = class(TForm)
    Panel4: TPanel;
    Panel2: TPanel;
    RadioGroup1: TRadioGroup;
    Label3: TLabel;
    Label21: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
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
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label19: TLabel;
    Label20: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    edit_serchnick: TEdit;
    edit_serchfio: TEdit;
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
    imcb_operations: TcxLookupComboBox;
    imcb_oper_short: TcxLookupComboBox;
    btn_help: TcxButton;
    cxButton2: TcxButton;
    btnClose: TcxButton;
    de_kassdate: TcxDateEdit;
    ActionList1: TActionList;
    aSerchNick: TAction;
    aSave: TAction;
    aObmen: TAction;
    aDolg: TAction;
    a76: TAction;
    aGSM: TAction;
    aFiltrOn: TAction;
    aFiltrOff: TAction;
    aUp: TAction;
    aDown: TAction;
    cxStyleRepository1: TcxStyleRepository;
    st_red: TcxStyle;
    st_block1: TcxStyle;
    st_block2: TcxStyle;
    st_notactive: TcxStyle;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarStatic5: TdxBarStatic;
    dxBarStatic6: TdxBarStatic;
    dxBarDockControl1: TdxBarDockControl;
    Label16: TLabel;
    de_provodka: TcxDateEdit;
    cb_provodka: TCheckBox;
    cxLabel1: TcxLabel;
    stSmall: TcxStyle;
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure aSerchNickExecute(Sender: TObject);
    procedure aUpExecute(Sender: TObject);
    procedure aDownExecute(Sender: TObject);
    procedure aFiltrOffExecute(Sender: TObject);
    procedure aFiltrOnExecute(Sender: TObject);
    procedure btn_helpClick(Sender: TObject);
    procedure gr_clients_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure imcb_operationsPropertiesChange(Sender: TObject);
    procedure imcb_oper_shortPropertiesChange(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure edit_serchnickChange(Sender: TObject);
    procedure edit_invoiceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edit_serchfioChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure GetCourse;
  public
    state       : integer;
    corrector   : String;
    cur_date    : TDate;
    id_         : integer;
    { Public declarations }
  end;

var
  nakl_edit: Tnakl_edit;

implementation

uses DataM, help_add_f, svod_f;

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
procedure Tnakl_edit.btn_helpClick(Sender: TObject);
begin
  help_add := Thelp_add.Create(Application);
  try
    help_add.showmodal;
  finally
    help_add.Free;
  end;
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
  if (not AViewInfo.Selected) and (gr_clients_v.DataController.DataSet.RecordCount > 0) then
  begin
    val1  := gr_clients_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_clients_v.GetColumnByFieldName('BLOCK1').Index
                );
    val2  := gr_clients_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_clients_v.GetColumnByFieldName('BLOCK2').Index
                );

    if (val1 = 1) then
         ACanvas.Brush.Color := st_block1.Color;

    if (val2 = 1) then
         ACanvas.Brush.Color := st_block2.Color;
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


procedure Tnakl_edit.FormShow(Sender: TObject);
begin
  Label16.Visible     := dm.b_addit;
  cxLabel1.Visible    := dm.b_addit;
  de_provodka.Visible := dm.b_addit;
  cb_provodka.Visible := dm.b_addit;

  RadioGroup1.Enabled := (DM.id_office = 1);
  if state = 1 then
     if RadioGroup1.Enabled then RadioGroup1.ItemIndex := 0 else RadioGroup1.ItemIndex := 3;


  
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








// Запись клиента в БД
procedure Tnakl_edit.BitBtn1Click(Sender: TObject);
begin

  if (imcb_operations.EditValue < 1) or (DM.Q_CLIENTS.RecordCount < 1) then ShowMessage('Не заполнены обязательные поля!')
  else
  begin
        cxButton2.SetFocus;
        DM.Q_SQL.SQL.Clear;
        DM.Q_SQL.SQL.Add('begin ');
        DM.Q_SQL.SQL.Add('cash_pkg.add_svod_record(:id_, :client_, :paydesk_, :id_operation_, :invoice_, :summ_, :in_rub_, :out_rub_, :in_usd_, :out_usd_, :in_eu_, :out_eu_, :info_, :corrector_, :ddate_, :ddate_done_, :r_desk_, :r_date_, :state_, :corr_, :corr_date_, :v_office);');
        DM.Q_SQL.SQL.Add(' end;');
        DM.Q_SQL.Prepare;

        if (state = 1) then
          DM.Q_SQL.Params.ParamByName('id_').AsInteger          := 0
        else
          DM.Q_SQL.Params.ParamByName('id_').AsInteger          := imcb_operations.Tag;

        DM.Q_SQL.Params.ParamByName('client_').AsInteger        := gr_clients_v.DataController.DataSet.FieldByName('ID_CLIENTS').AsInteger;

        DM.Q_SQL.Params.ParamByName('paydesk_').AsInteger       := 4;
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
        DM.Q_SQL.Params.ParamByName('v_office').AsInteger       := DM.id_office;

        if (cb_provodka.Checked = true) then
        begin
          DM.Q_SQL.Params.ParamByName('ddate_').AsDateTime      := de_provodka.EditValue;
          DM.Q_SQL.Params.ParamByName('ddate_done_').AsDateTime := de_provodka.EditValue;
        end
        else
        begin
          if (state = 1) then
            DM.Q_SQL.Params.ParamByName('ddate_').AsDateTime      := NOW
          else
            DM.Q_SQL.Params.ParamByName('ddate_').AsDateTime      := VarToDateTime(de_provodka.EditValue);
          DM.Q_SQL.Params.ParamByName('ddate_done_').AsDateTime := NOW;
        end;

        DM.Q_SQL.Params.ParamByName('r_desk_').AsInteger        := (RadioGroup1.ItemIndex + 1);
        DM.Q_SQL.Params.ParamByName('r_date_').AsDate           := de_kassdate.Date;
        DM.Q_SQL.Params.ParamByName('state_').AsInteger         := state;

        if (state = 1) then
        begin
          DM.Q_SQL.Params.ParamByName('corr_').AsString         := '';
          DM.Q_SQL.Params.ParamByName('corr_date_').Value       := NULL;
        end
        else
        begin
          DM.Q_SQL.Params.ParamByName('corr_').AsString         := corrector;
          DM.Q_SQL.Params.ParamByName('corr_date_').AsDateTime  := NOW;
        end;

        DM.Q_SQL.Execute;

        id_ := DM.Q_SQL.Params.ParamByName('id_').AsInteger;
        ModalResult := mrOk;
   end;
end;

end.
