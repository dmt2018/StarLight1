unit import_debet_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids, ActnList, DB, StrUtils,
  Menus, cxLookAndFeelPainters, cxButtons, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxTextEdit, cxCalendar,
  cxCurrencyEdit, cxSpinEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, ImgList, cxCheckBox, cxContainer, cxDBEdit, cxMaskEdit, cxDropDownEdit, Math;

type
  Timport_debet = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    cb_showall: TCheckBox;
    Panel10: TPanel;
    Panel11: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    ActionList1: TActionList;
    aRefresh: TAction;
    aEdit: TAction;
    aDelete: TAction;
    aNew: TAction;
    aPost: TAction;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBText1: TDBText;
    Label25: TLabel;
    DBText2: TDBText;
    Label26: TLabel;
    DBText3: TDBText;
    panel7: TPanel;
    Panel12: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Panel13: TPanel;
    btnClose: TcxButton;
    gr_deps: TcxGrid;
    gr_deps_v: TcxGridDBTableView;
    gr_deps_vNICK: TcxGridDBColumn;
    gr_deps_vR_DDATE: TcxGridDBColumn;
    gr_deps_vD_DATE: TcxGridDBColumn;
    gr_deps_vT_SHORT: TcxGridDBColumn;
    gr_deps_vINVOICE: TcxGridDBColumn;
    gr_deps_vSUMM: TcxGridDBColumn;
    gr_deps_vIN_RUB: TcxGridDBColumn;
    gr_deps_vRATE: TcxGridDBColumn;
    gr_deps_vDISCOUNT: TcxGridDBColumn;
    gr_deps_vDISC_PROC: TcxGridDBColumn;
    gr_deps_vCHART: TcxGridDBColumn;
    gr_deps_vINFO: TcxGridDBColumn;
    _gr_deps_vNN: TcxGridDBColumn;
    _gr_deps_vID_CLIENT_DEBT: TcxGridDBColumn;
    _gr_deps_vID_DEBETORS: TcxGridDBColumn;
    _gr_deps_vOPERATION: TcxGridDBColumn;
    _gr_deps_vT_LONG: TcxGridDBColumn;
    _gr_deps_vT_TYPE: TcxGridDBColumn;
    _gr_deps_vACTIVE: TcxGridDBColumn;
    _gr_deps_vDEBET: TcxGridDBColumn;
    gr_deps_l: TcxGridLevel;
    cxImageList1: TcxImageList;
    btn_refresh: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    gr_debetors: TcxGrid;
    gr_debetors_v: TcxGridDBTableView;
    gr_debetors_vIS_LOCK: TcxGridDBColumn;
    gr_debetors_vSALES: TcxGridDBColumn;
    gr_debetors_vNICK: TcxGridDBColumn;
    gr_debetors_vFIO: TcxGridDBColumn;
    gr_debetors_vGROUP_NAME: TcxGridDBColumn;
    _gr_debetors_vID_CLIENTS: TcxGridDBColumn;
    _gr_debetors_vID_CLIENTS_GROUPS: TcxGridDBColumn;
    _gr_debetors_vBLOCK1: TcxGridDBColumn;
    gr_debetors_l: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    st_notactive: TcxStyle;
    cu_f_usd: TcxCurrencyEdit;
    cu_f_eur: TcxCurrencyEdit;
    cu_f_usdeur: TcxCurrencyEdit;
    cu_f_eurusd: TcxCurrencyEdit;
    Label27: TLabel;
    cu_discount: TcxCurrencyEdit;
    cu_discount_proc: TcxCurrencyEdit;
    Label28: TLabel;
    de_date_in: TcxDBDateEdit;
    cu_in_rub: TcxDBCurrencyEdit;
    cu_out_rub: TcxDBCurrencyEdit;
    cu_in_usd: TcxDBCurrencyEdit;
    cu_out_usd: TcxDBCurrencyEdit;
    cu_in_eu: TcxDBCurrencyEdit;
    cu_out_eu: TcxDBCurrencyEdit;
    cu_summ: TcxDBCurrencyEdit;
    gr_debetors_vDDATE: TcxGridDBColumn;
    gr_debetors_vCCODE: TcxGridDBColumn;
    gr_debetors_vREGION: TcxGridDBColumn;
    gr_debetors_vTTYPE: TcxGridDBColumn;
    gr_debetors_vBLOCK2: TcxGridDBColumn;
    gr_debetors_vID_DEBETORS: TcxGridDBColumn;
    st_kass: TcxStyle;
    gr_debetors_vPHONE: TcxGridDBColumn;
    gr_debetors_vBEZNAL: TcxGridDBColumn;
    gr_debetors_vRUBL: TcxGridDBColumn;
    gr_debetors_vSTATE: TcxGridDBColumn;
    gr_debetors_vDEBET: TcxGridDBColumn;
    gr_debetors_vCREDIT_DAYS: TcxGridDBColumn;
    gr_debetors_vLAST_DDATE: TcxGridDBColumn;
    gr_debetors_vIS_LOC_FOR: TcxGridDBColumn;
    Label29: TLabel;
    cu_debet: TcxCurrencyEdit;
    procedure cb_showallClick(Sender: TObject);
    procedure aPostExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure gr_deps_vR_DDATEGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure gr_deps_vD_DATEGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    procedure aRefreshExecute(Sender: TObject);
    procedure aNewExecute(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure aDeleteExecute(Sender: TObject);
    procedure gr_debetors_vCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure SetPanels;
    procedure gr_debetors_vFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure gr_debetors_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  import_debet: Timport_debet;
  sql_1: string;

implementation

uses DataM, svod_f, debt_f, deb_edit_f;

{$R *.dfm}

//
//  Выход
//
procedure Timport_debet.btnCloseClick(Sender: TObject);
begin
  Close;
end;


//
//  Закрываем форму
//
procedure Timport_debet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.Q_CLIENT_DEBT.Close;
end;


//
//  Открываем форму
//
procedure Timport_debet.FormShow(Sender: TObject);
begin
//  DM.Q_CLIENT_DEBT.Last;
  gr_debetors_vSALES.Visible  := dm.b_addit;
  Label27.Visible             := dm.b_addit;
  Label28.Visible             := dm.b_addit;
  cu_discount.Visible         := dm.b_addit;
  cu_discount_proc.Visible    := dm.b_addit;
  if gr_deps.Visible = true then gr_deps.SetFocus;
end;


// Выводим формат даты
procedure Timport_debet.gr_deps_vD_DATEGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
      if (AText <> '') then
          AText := FormatDateTime('dd.mm.yy hh:nn', ARecord.Values[gr_deps_vD_DATE.Index]);
end;


// Выводим формат даты
procedure Timport_debet.gr_deps_vR_DDATEGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
      if (AText <> '') then
          AText := FormatDateTime('dd.mm.yy hh:nn', ARecord.Values[gr_deps_vR_DDATE.Index]);
end;


//
//  Скрываем данные если нет карточки дебетора
//
procedure Timport_debet.SetPanels;
begin
    if ( gr_debetors_v.DataController.DataSet.FieldByName('id_debetors').AsInteger = 0 ) then
    begin
      gr_deps.Visible := false;
      Panel12.Visible := false;
      aNew.Enabled    := false;
      aEdit.Enabled   := false;
      aDelete.Enabled := false;
    end
    else
    begin
      gr_deps.Visible := true;
      Panel12.Visible := true;

      if ( gr_debetors_v.DataController.DataSet.FieldByName('is_lock').AsInteger = 1 ) or ( gr_debetors_v.DataController.DataSet.FieldByName('is_loc_for').AsInteger = 1 ) then
      begin
        aNew.Enabled    := false;
        aEdit.Enabled   := false;
        aDelete.Enabled := false;
      end
      else
      begin
        aNew.Enabled    := true;
        aEdit.Enabled   := true;
        aDelete.Enabled := true;
      end;
    end;

    if (gr_deps_v.DataController.DataSet.Active) and (gr_deps_v.DataController.DataSet.RecordCount > 0) then
      gr_deps_v.DataController.DataSet.Last;
end;

//
//  Кликаем по клиенту
//
procedure Timport_debet.gr_debetors_vCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  SetPanels;
end;


//
// Ходим по клиенту
//
procedure Timport_debet.gr_debetors_vFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  SetPanels;
end;


//
//  Отрисовка дебиторов
//
procedure Timport_debet.gr_debetors_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var val1, val2: variant;
begin
  if (not AViewInfo.Selected) and (gr_debetors_v.DataController.DataSet.RecordCount > 0) then
  begin
    // Отрисовываем цветом клиентов у которых нет долговой книги
    val1  := gr_debetors_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_debetors_v.GetColumnByFieldName('id_debetors').Index
                );
	  if (val1 = 0) and ( (gr_debetors_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'NICK') or (gr_debetors_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'FIO') ) then
         ACanvas.Brush.Color := st_kass.Color;
  end;
end;


//
//  Обновление данных
//
procedure Timport_debet.aRefreshExecute(Sender: TObject);
var idd: integer;
begin
  if (gr_deps.Visible = true) and (gr_deps_v.DataController.DataSet.Active = true) then
  begin
    idd := gr_deps_v.DataController.DataSet.FieldByName('ID_CLIENT_DEBT').AsInteger;
    gr_deps_v.DataController.DataSet.Refresh;
    gr_deps_v.DataController.DataSet.Locate('ID_CLIENT_DEBT',idd,[]);
  end;
end;


procedure Timport_debet.cb_showallClick(Sender: TObject);
begin
  if cb_showall.Checked = true then
  begin
//    DM.Q_CLIENT_DEBT.Close;
//    DM.Q_GROUPS.Locate('NAME',DBEdit7.Text,[]);
    DM.Q_CLIENT_DEBT_A.Close;
    DM.Q_CLIENT_DEBT_A.ParamByName('P1').AsInteger := cb_showall.Tag;
    DM.Q_CLIENT_DEBT_A.Open;
    gr_deps_v.DataController.DataSource := DM.Q_CLIENT_DEBT_A_DS;
    panel12.Visible := false;
//    DBGridEh1.Selection.SelectAll;
  end
  else
  begin
    DM.Q_CLIENT_DEBT_A.Close;
//    DM.Q_CLIENT_DEBT.Open;
    gr_deps_v.DataController.DataSource := DM.Q_CLIENT_DEBT_DS;
    panel12.Visible := true;
  end;
end;












//
// Добавление накладной в карточку дебетора
//
procedure Timport_debet.aNewExecute(Sender: TObject);
var sql: string;
    ind, ind2, ind3: integer;
    s1,s2,s3,s4,s5,s6,s7, debet: real;
begin
if (cb_showall.Checked = true) and (gr_debetors.Visible = true) then
    MessageBox(Handle, 'Долг можно разносить только в конкретную долговую карточку!'+#13#10+'Уберите флажок с "объединить долговые карточки"', 'Внимание', MB_ICONWARNING)
else
begin

  if aNew.Enabled = true then
  begin

    cu_in_rub.PostEditValue;
    cu_debet.PostEditValue;
    cu_out_rub.PostEditValue;
    cu_in_usd.PostEditValue;
    cu_out_usd.PostEditValue;
    cu_in_eu.PostEditValue;
    cu_out_eu.PostEditValue;
    cu_summ.PostEditValue;
    de_date_in.PostEditValue;
    cu_f_usd.PostEditValue;
    cu_f_eur.PostEditValue;
    cu_f_usdeur.PostEditValue;
    cu_f_eurusd.PostEditValue;
    cu_discount.PostEditValue;
    cu_discount_proc.PostEditValue;

    try
      ind  := 0;
      ind2 := gr_debetors_v.DataController.DataSet.FieldByName('ID_DEBETORS').AsInteger;

      DM.Q_SQL.SQL.Clear;
      sql := 'begin cash_pkg.edit_debetor_list(:id_cl_debetor_, :id_debetor_, :debet_, :rate_, :date_vvod_, :date_oper_, :operation_, :invoice_, :summ_, :in_ru_, :info_, :discount_, :discount_proc_, :v_office); end;';
      DM.Q_SQL.SQL.Add(sql);
      DM.Q_SQL.Prepare;

      DM.Q_SQL.ParamByName('id_cl_debetor_').Value  := 0; //gr_debetors_v.DataController.DataSet.FieldByName('ID_CLIENTS').AsInteger;           // P1
      DM.Q_SQL.ParamByName('id_debetor_').Value     := gr_debetors_v.DataController.DataSet.FieldByName('ID_DEBETORS').AsInteger;           // P1

      DM.Q_SQL.ParamByName('debet_').AsCurrency := cu_debet.EditValue;
      // Рассчет рублевый клиентов или безналичных
      //if ((gr_debetors_v.DataController.DataSet.FieldByName('RUBL').AsInteger = 1) or (gr_debetors_v.DataController.DataSet.FieldByName('BEZNAL').AsInteger = 1)) then
      // 2013-04-09 Е.В. сказала, что только рублевый должен с курсом 1 разноситься. Безнальный не значит рублевый.
      if (gr_debetors_v.DataController.DataSet.FieldByName('RUBL').AsInteger = 1) then
      begin
         DM.Q_SQL.ParamByName('rate_').AsCurrency := 1;
      end
      else
      // Рассчет валютных клиентов
      begin
         // Делаем проверку... если предыдущий в карточке долг имеет больший курс, то курс в возврате будет изменен
{ По просьбе Е.В. от 2012-02-03
  Оставим текущий курс фирмы при разносе валютной операции
         DM.Q_CLIENT_DEBT.Last;
         while ((DM.Q_CLIENT_DEBTT_SHORT.AsString = 'ДОЛ') or (DM.Q_CLIENT_DEBTT_SHORT.AsString = 'Не указано') or (DM.Q_CLIENT_DEBT.RecNo > 1)) do
         begin
          if (DM.Q_CLIENT_DEBT.RecNo = 1) then break;
          DM.Q_CLIENT_DEBT.Prior;
         end;
         if DM.Q_CLIENT_DEBTRATE.AsCurrency > cu_f_eur.Value then
            DM.Q_SQL.ParamByName('rate_').AsCurrency := DM.Q_CLIENT_DEBTRATE.AsCurrency
         else
}
            DM.Q_SQL.ParamByName('rate_').AsCurrency := cu_f_eur.EditValue;
      end;

      DM.Q_SQL.ParamByName('date_vvod_').AsDateTime := de_date_in.EditValue; // P4
//      DM.Q_SQL.ParamByName('date_oper_').AsDateTime := de_date_oper.Date + time();      // P5
      if DM.Q_CASH_SDDATE_DONE.IsNull = true then DM.Q_SQL.ParamByName('date_oper_').AsDateTime := de_date_in.EditValue
      else DM.Q_SQL.ParamByName('date_oper_').AsDateTime := DM.Q_CASH_SDDATE_DONE.AsDateTime;

      DM.Q_SQL.ParamByName('operation_').Value      := DM.Q_CASH_SOPERATION.AsInteger;       // P6
      DM.Q_SQL.ParamByName('invoice_').value        := DM.Q_CASH_SINVOICE.AsString;// P7
      DM.Q_SQL.ParamByName('summ_').Value           := cu_summ.Value;             // P8

        if (cu_in_rub.EditValue = 0) or (cu_in_rub.EditValue = null) then
          DM.Q_SQL.ParamByName('in_ru_').AsCurrency := 0 - cu_out_rub.Value
        else
          DM.Q_SQL.ParamByName('in_ru_').AsCurrency := cu_in_rub.Value;

      DM.Q_SQL.ParamByName('info_').AsString        := DM.Q_CASH_SINFO.AsString;   // P10
      DM.Q_SQL.ParamByName('discount_').Value       := cu_discount.Value;
      DM.Q_SQL.ParamByName('discount_proc_').Value  := cu_discount_proc.Value;
      DM.Q_SQL.ParamByName('v_office').AsInteger    := dm.id_office;
      DM.Q_SQL.Execute;

      ind := DM.Q_SQL.ParamByName('id_cl_debetor_').AsInteger;

      sql := 'UPDATE CASH SET D_CHECKED=1, date_change=sysdate WHERE ID_CASH=:P1';
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add(sql);
      ind3 := DM.Q_CASH_SID_CASH.AsInteger;

// 2012-09-27 Для отрисовки признака обработки данных
      DM.Q_CASH_S.Edit;
      DM.Q_CASH_SD_CHECKED.AsInteger := 1;
      DM.Q_CASH_S.Post;
// --------------------------------------

      DM.Q_SQL.ParamByName('P1').Value := ind3;
      DM.Q_SQL.Execute;

      with DM.OraStoredProc1 do
      begin
        Close;
        StoredProcName := 'SET_DEBT_ON_DEBETORS';
        Prepare;
        ParamByName('ID_DEBT').AsInteger := ind2;
        Execute;
      end;

      DM.Q_CLIENT_DEBT.Refresh;
      DM.Q_CLIENT_DEBT.Locate('ID_CLIENT_DEBT',ind,[]);

      aNew.Enabled := false;

    except
      on E: Exception do
      begin
         MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
      end;
    end;

  end;

end;

end;


//
//  Перемещение
//
procedure Timport_debet.aEditExecute(Sender: TObject);
var idd: integer;
begin
    if (gr_deps.Visible = true) and (_gr_deps_vID_CLIENT_DEBT.EditValue > 0) and (aEdit.Enabled = true) then
    begin
      de_date_in.PostEditValue;
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add('UPDATE CLIENT_DEBT SET D_DATE=:P1, date_change=sysdate WHERE ID_CLIENT_DEBT = :ID');
      DM.Q_SQL.ParamByName('ID').Value := _gr_deps_vID_CLIENT_DEBT.EditValue;
      DM.Q_SQL.ParamByName('P1').AsDateTime := de_date_in.EditValue;

      idd := _gr_deps_vID_CLIENT_DEBT.EditValue;

          // Пытаемся выполнить SQL запрос
          try
            DM.Q_SQL.Execute;
            DM.OraSession1.Commit;

            gr_deps_v.DataController.DataSet.Refresh;
            gr_deps_v.DataController.DataSet.Locate('ID_CLIENT_DEBT',idd,[]);
          except
            on E: Exception do  MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
          End;

    end
    else MessageBox(Handle, 'Нет данных для изменения!', 'Внимание', MB_ICONWARNING);
end;


//
// Удаление накладной из карточки дебетора
//
procedure Timport_debet.aDeleteExecute(Sender: TObject);
begin
    if (gr_deps.Visible = true) and (_gr_deps_vID_CLIENT_DEBT.EditValue > 0) and (aDelete.Enabled = true) then
    begin
      if MessageDlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
        // Удаление накладной
          DM.Q_SQL.SQL.Clear;
          DM.Q_SQL.SQL.Add('DELETE FROM CLIENT_DEBT WHERE ID_CLIENT_DEBT = :ID');
          DM.Q_SQL.ParamByName('ID').Value := _gr_deps_vID_CLIENT_DEBT.EditValue;

          // Пытаемся выполнить SQL запрос на удаление
          try
            DM.Q_SQL.Execute;
            DM.OraSession1.Commit;

            // Перепрыгиваем на следующую, после удаления запись
            DM.Q_CLIENT_DEBT.Refresh;
            DM.Q_CLIENT_DEBT.Last;

          except
            on E: Exception do  MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
          End;
      end;
    end
    else MessageBox(Handle, 'Нет данных для удаления!', 'Внимание', MB_ICONWARNING);
end;


//
//  Постим данные
//
procedure Timport_debet.aPostExecute(Sender: TObject);
begin
  If gr_deps_v.DataController.DataSet.State = dsEdit then gr_deps_v.DataController.DataSet.Post;
//  if DM.Q_CLIENT_DEBT.State = dsBrowse then DBGridEh2.EditorMode := true;
end;


end.
