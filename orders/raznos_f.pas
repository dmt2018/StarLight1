unit raznos_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGridEh, DBCtrls, ExtCtrls, ActnList,
  GridsEh, cxGraphics, cxControls, cxContainer, cxEdit, cxTextEdit, PI_Library_reg,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox, Menus, DB, DBGridEhGrouping, Clipbrd;

type
  Traznos = class(TForm)
    Panel4: TPanel;
    Panel3: TPanel;
    Panel6: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    BitBtn13: TBitBtn;
    Panel1: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    Panel9: TPanel;
    Panel10: TPanel;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ActionList1: TActionList;
    alt_1: TAction;
    alt_2: TAction;
    alt_3: TAction;
    alt_4: TAction;
    alt_5: TAction;
    aChengeGrid: TAction;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    ComboBox3: TcxImageComboBox;
    ComboBox1: TcxImageComboBox;
    ComboBox2: TcxImageComboBox;
    aF5: TAction;
    aF1: TAction;
    DBText3: TDBText;
    Label11: TLabel;
    Label10: TLabel;
    DBText2: TDBText;
    Label9: TLabel;
    DBText1: TDBText;
    cb_truck: TcxImageComboBox;
    alt_0: TAction;
    alt_6: TAction;
    alt_7: TAction;
    Label1: TLabel;
    aShowClients: TAction;
    PopupMenu1: TPopupMenu;
    aF31: TMenuItem;
    Label2: TLabel;
    Label3: TLabel;
    alt_eq: TAction;
    Panel11: TPanel;
    btnTotalStatistic: TBitBtn;
    aTruckStatistic: TSpeedButton;
    SpeedButton6: TSpeedButton;
    btnRefresh: TSpeedButton;
    chbWithoutPacked: TCheckBox;
    mnCopyToClipBoard: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    N51: TMenuItem;
    N61: TMenuItem;
    N71: TMenuItem;
    N81: TMenuItem;
    lblEditing: TLabel;
    lblDisableEditing: TLabel;
    mnSetZatirka: TMenuItem;
    N3: TMenuItem;
    mnClearAllCorrections: TMenuItem;
    mnClearAllTrucks: TMenuItem;
    aDeleteOnePos: TAction;
    mnClearCurrentCorrection: TMenuItem;
    chbWithPacked: TCheckBox;
    Label4: TLabel;
    Panel12: TPanel;
    cbPrintAll: TCheckBox;
    btnPrint: TButton;
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure alt_1Execute(Sender: TObject);
    procedure alt_2Execute(Sender: TObject);
    procedure alt_3Execute(Sender: TObject);
    procedure alt_4Execute(Sender: TObject);
    procedure alt_5Execute(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure aChengeGridExecute(Sender: TObject);
    procedure aTruckStatisticClick(Sender: TObject);
    procedure DBGridEh2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure btnTotalStatisticClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure alt_0Execute(Sender: TObject);
    procedure alt_7Execute(Sender: TObject);
    procedure cb_truckPropertiesEditValueChanged(Sender: TObject);
    procedure aShowClientsExecute(Sender: TObject);
    procedure alt_6Execute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure alt_eqExecute(Sender: TObject);
    procedure chbWithoutPackedClick(Sender: TObject);
    procedure mnCopyToClipBoardClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure mnSetZatirkaClick(Sender: TObject);
    procedure mnClearAllCorrectionsClick(Sender: TObject);
    procedure mnClearAllTrucksClick(Sender: TObject);
    procedure aDeleteOnePosExecute(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure chbWithPackedClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  raznos: Traznos;

implementation

uses frm_DM, frm_first_dialog, frm_orders_main, Ustat, UStat_raznos,
  UShowNom, UClientList;

{$R *.dfm}

procedure Traznos.BitBtn13Click(Sender: TObject);
begin
  close;
end;



//
// Вставляем машину в номенклатуру
//
procedure Traznos.BitBtn2Click(Sender: TObject);
begin
  if first_dialog_frm.edit = true then
  begin
    if ComboBox3.EditValue < 0 then ShowMessage('Выберите № машины!')
    else
    begin
      // Пытаемся выполнить SQL запрос
      try
        DM.Q_SQL.SQL.Clear;
        DM.Q_SQL.SQL.Add('begin PACK_ORDERS.insert_into_truck( :TRUCK_, :OLD_ID_ORDERS_, :OLD_N_ID_); end;');
        DM.Q_SQL.ParamByName('TRUCK_').AsInteger := ComboBox3.EditValue;
        DM.Q_SQL.ParamByName('OLD_ID_ORDERS_').AsInteger := DM.q_raznosID_ORDERS.AsInteger;
        DM.Q_SQL.ParamByName('OLD_N_ID_').AsInteger := DM.q_raznosN_ID.AsInteger;
        DM.Q_SQL.Execute;

        //btnRefresh.Click;
        //dm.q_raznos.Edit;
        //dm.q_raznosTRUCK.AsInteger := ComboBox3.EditValue;
        dm.q_raznos.RefreshRecord;
        //dm.q_raznos.Post;
        dm.q_raznos.Next;

        DBGridEh1.SetFocus;
      except
        on E: Exception do
           MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
        End;
    end;
  end;
end;
//
// Вставляем машину в подтип
//
procedure Traznos.BitBtn1Click(Sender: TObject);
begin
  if first_dialog_frm.edit = true then
  begin
    if ComboBox2.ItemIndex < 0 then ShowMessage('Выберите № машины!')
    else
    begin
      // Пытаемся выполнить SQL запрос
      try
        DM.Q_SQL.SQL.Clear;
        DM.Q_SQL.SQL.Add('begin PACK_ORDERS.insert_into_truck_fst( :TRUCK_, :OLD_ID_ORDERS_, :OLD_N_ID_); end;');
        DM.Q_SQL.ParamByName('TRUCK_').AsInteger := ComboBox2.EditValue;
        DM.Q_SQL.ParamByName('OLD_ID_ORDERS_').AsInteger := DM.q_raznos_stID_ORDERS.AsInteger;
        DM.Q_SQL.ParamByName('OLD_N_ID_').AsInteger := DM.q_raznos_stFST_ID.AsInteger;
        DM.Q_SQL.Execute;

        dm.q_raznos_st.Next;
        btnRefresh.Click;

        DBGridEh3.SetFocus;
      except
        on E: Exception do
           MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
        End;
    end;
  end;
end;
//
// Вставляем машину в тип
//
procedure Traznos.BitBtn3Click(Sender: TObject);
begin
  if first_dialog_frm.edit = true then
  begin
    if ComboBox1.ItemIndex < 0 then ShowMessage('Выберите № машины!')
    else
    begin
      // Пытаемся выполнить SQL запрос
      try
        DM.Q_SQL.SQL.Clear;
        DM.Q_SQL.SQL.Add('begin PACK_ORDERS.insert_into_truck_ft( :TRUCK_, :OLD_ID_ORDERS_, :OLD_N_ID_); end;');
        DM.Q_SQL.ParamByName('TRUCK_').AsInteger := ComboBox1.EditValue;
        DM.Q_SQL.ParamByName('OLD_ID_ORDERS_').AsInteger := DM.q_raznos_tID_ORDERS.AsInteger;
        DM.Q_SQL.ParamByName('OLD_N_ID_').AsInteger := DM.q_raznos_tFT_ID.AsInteger;
        DM.Q_SQL.Execute;

        dm.q_raznos_t.Next;
        btnRefresh.Click;

        DBGridEh2.SetFocus;
      except
        on E: Exception do
           MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
        End;
    end;
  end;
end;



procedure Traznos.alt_1Execute(Sender: TObject);
begin
  cb_truck.ItemIndex := 1;
end;

procedure Traznos.alt_2Execute(Sender: TObject);
begin
  cb_truck.ItemIndex := 2;
end;

procedure Traznos.alt_3Execute(Sender: TObject);
begin
  cb_truck.ItemIndex := 3;
end;

procedure Traznos.alt_4Execute(Sender: TObject);
begin
  cb_truck.ItemIndex := 4;
end;

procedure Traznos.alt_5Execute(Sender: TObject);
begin
  cb_truck.ItemIndex := 5;
end;

procedure Traznos.alt_6Execute(Sender: TObject);
begin
  cb_truck.ItemIndex := 6;
end;

procedure Traznos.alt_7Execute(Sender: TObject);
begin
  cb_truck.ItemIndex := 7;
end;


procedure Traznos.alt_0Execute(Sender: TObject);
begin
  cb_truck.ItemIndex := 0;
end;

procedure Traznos.alt_eqExecute(Sender: TObject);
begin
  cb_truck.ItemIndex := 10;
end;



//
// Обновление данных
//
procedure Traznos.btnRefreshClick(Sender: TObject);
var id1, id2, id3: integer;
    bm1, bm2, bm3: TBookMark;
begin
//  id1 := DM.q_raznosn_id.AsInteger;
//  id2 := DM.q_raznos_stfst_id.AsInteger;
//  id3 := DM.q_raznos_tft_id.AsInteger;
  bm1 := DM.q_raznos_t.GetBookmark;
  bm2 := DM.q_raznos_st.GetBookmark;
  bm3 := DM.q_raznos.GetBookmark;

  try
    dm.q_raznos_t.Refresh;
    dm.q_raznos_st.Refresh;
    dm.q_raznos.Refresh;
    DBGridEh1.SumList.RecalcAll;
    DBGridEh2.SumList.RecalcAll;
    DBGridEh3.SumList.RecalcAll;
    try
      dm.q_raznos_t.GotoBookmark(bm1);
      dm.q_raznos_st.GotoBookmark(bm2);
      dm.q_raznos.GotoBookmark(bm3);
    except
    end;
   finally
     dm.q_raznos_t.FreeBookmark(bm1);
     dm.q_raznos_st.FreeBookmark(bm2);
     dm.q_raznos.FreeBookmark(bm3);
   end;
//  DM.q_raznos.Locate('n_id',id1,[]);
//  DM.q_raznos_st.Locate('fst_id',id2,[]);
//  DM.q_raznos_t.Locate('ft_id',id3,[]);
end;


// Переход табом по таблицам
procedure Traznos.aChengeGridExecute(Sender: TObject);
begin
  If DBGridEh1.Focused = true then DBGridEh2.SetFocus
  else
  begin
    If DBGridEh2.Focused = true then DBGridEh3.SetFocus
    else If DBGridEh3.Focused = true then DBGridEh1.SetFocus;
  end;
end;


//
// Форма загрузки по машинам
//
procedure Traznos.aTruckStatisticClick(Sender: TObject);
begin
  if DM.q_raznos_t.State = dsEdit then DM.q_raznos_t.Post;
  if DM.q_raznos_st.State = dsEdit then DM.q_raznos_st.Post;
  if DM.q_raznos.State = dsEdit then DM.q_raznos.Post;

  orders_main.aStatistic.execute;
  DBGridEh1.SetFocus;
end;


// Обработка изменения машины в типах
procedure Traznos.DBGridEh2KeyPress(Sender: TObject; var Key: Char);
var ind: integer;
begin
  if ((Key='0') or (Key='1') or (Key='2') or (Key='3') or (Key='4') or (Key='5') or (Key='6') or (Key='7') or (Key='8') or (Key='9')) then
  begin
    ComboBox1.EditValue := Key;
    BitBtn3Click(self);
  end;
end;

// Обработка изменения машины в подтипах
procedure Traznos.DBGridEh3KeyPress(Sender: TObject; var Key: Char);
var ind: integer;
begin
  if ((Key='0') or (Key='1') or (Key='2') or (Key='3') or (Key='4') or (Key='5') or (Key='6') or (Key='7') or (Key='8') or (Key='9')) then
  begin
    ComboBox2.EditValue := Key;
    BitBtn1Click(self);
  end;
end;

// Обработка изменения машины в позициях
procedure Traznos.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
var ind: integer;
begin
  if ((Key='0') or (Key='1') or (Key='2') or (Key='3') or (Key='4') or (Key='5') or (Key='6') or (Key='7') or (Key='8') or (Key='9'))
    and (DM.q_raznosZATIRKA.AsInteger = 0) and (DM.q_raznosZATIRKA.AsInteger = 0) and (DBGridEh1.SelectedField.FieldName = 'TRUCK') then
  begin
    ComboBox3.EditValue := Key;
    BitBtn2Click(self);
  end;
end;

// Отрисовка таблицы с типами
procedure Traznos.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (State = [gdSelected]	) then
	begin
      DBGridEh2.Canvas.Brush.Color:=clMoneyGreen;
 	    DBGridEh2.Canvas.Font.Color:=clBlack;
 	    DBGridEh2.Canvas.FillRect(Rect);
  		DBGridEh2.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	end;
end;

// Отрисовка таблицы с подтипами
procedure Traznos.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (State = [gdSelected]	) then
	begin
      DBGridEh3.Canvas.Brush.Color:=clMoneyGreen;
 	    DBGridEh3.Canvas.Font.Color:=clBlack;
 	    DBGridEh3.Canvas.FillRect(Rect);
  		DBGridEh3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	end;
end;

// Отрисовка таблицы с позициями
procedure Traznos.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (State = [gdSelected]	) then
	begin
      DBGridEh1.Canvas.Brush.Color := clMoneyGreen;
 	    DBGridEh1.Canvas.Font.Color  := clBlack;
 	    DBGridEh1.Canvas.FillRect(Rect);
  		DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	end;

  if ((Column.FieldName = 'TRUCK') or (Column.FieldName = 'SUM_CORR')) and (DM.q_raznosZATIRKA.AsInteger > 0) then
	begin
      DBGridEh1.Canvas.Brush.Color := lblDisableEditing.Color;
 	    DBGridEh1.Canvas.Font.Color  := clBlack;
 	    DBGridEh1.Canvas.FillRect(Rect);
  		DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	end;
  if ((Column.FieldName = 'TRUCK') or (Column.FieldName = 'SUM_CORR')) and (DM.q_raznosZATIRKA.AsInteger = 0) then
	begin
      DBGridEh1.Canvas.Brush.Color := lblEditing.Color;
 	    DBGridEh1.Canvas.Font.Color  := clBlack;
 	    DBGridEh1.Canvas.FillRect(Rect);
  		DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	end;
end;


// Полная статистика
procedure Traznos.btnTotalStatisticClick(Sender: TObject);
begin
  if DM.q_raznos_t.State = dsEdit then DM.q_raznos_t.Post;
  if DM.q_raznos_st.State = dsEdit then DM.q_raznos_st.Post;
  if DM.q_raznos.State = dsEdit then DM.q_raznos.Post;

  try
    frm_stat_raznos := Tfrm_stat_raznos.Create(Application);
    frm_stat_raznos.CDS_STAT.ParamByName('id_dep_').AsInteger    := first_dialog_frm.DBComboBoxEh1.Value;
    frm_stat_raznos.CDS_STAT.ParamByName('id_order_').AsInteger  := DM.Q_ORDERS_ORDERSID_ORDERS.AsInteger;
    frm_stat_raznos.CDS_STAT.ParamByName('id_client_').AsInteger := 0;
    frm_stat_raznos.CDS_STAT.ParamByName('id_fst_').AsInteger    := DM.q_raznosFST_ID.AsInteger;
    frm_stat_raznos.CDS_STAT.ParamByName('fst_').AsString        := DM.q_raznosHOL_SUB_TYPE.AsString;
    frm_stat_raznos.CDS_STAT.ParamByName('without_pack_').AsInteger := abs(1-BoolToInt(chbWithoutPacked.Checked));
//    dm.q_raznos.ParamByName('packed_').AsInteger := abs(1-BoolToInt(chbWithoutPacked.Checked));
    frm_stat_raznos.CDS_STAT.Open;

    frm_stat_raznos.CDS_STAT.Locate('nbutton',20,[]);

    frm_stat_raznos.chbTruck1.Enabled := (frm_stat_raznos.gr_total_view.DataController.DataSet.FieldByName('tr1_q').AsInteger > 0);
    frm_stat_raznos.chbTruck2.Enabled := (frm_stat_raznos.gr_total_view.DataController.DataSet.FieldByName('tr2_q').AsInteger > 0);
    frm_stat_raznos.chbTruck3.Enabled := (frm_stat_raznos.gr_total_view.DataController.DataSet.FieldByName('tr3_q').AsInteger > 0);
    frm_stat_raznos.chbTruck4.Enabled := (frm_stat_raznos.gr_total_view.DataController.DataSet.FieldByName('tr4_q').AsInteger > 0);
    frm_stat_raznos.chbTruck5.Enabled := (frm_stat_raznos.gr_total_view.DataController.DataSet.FieldByName('tr5_q').AsInteger > 0);
    frm_stat_raznos.chbTruck6.Enabled := (frm_stat_raznos.gr_total_view.DataController.DataSet.FieldByName('tr6_q').AsInteger > 0);
    frm_stat_raznos.chbTruck7.Enabled := (frm_stat_raznos.gr_total_view.DataController.DataSet.FieldByName('tr7_q').AsInteger > 0);
    frm_stat_raznos.chbTruck8.Enabled := (frm_stat_raznos.gr_total_view.DataController.DataSet.FieldByName('tr8_q').AsInteger > 0);
    //frm_stat_raznos.chbTruck9.Enabled := (frm_stat_raznos.gr_total_view.DataController.DataSet.FieldByName('tr9_q').AsInteger > 0);
    //frm_stat_raznos.chbTruck10.Enabled := (frm_stat_raznos.gr_total_view.DataController.DataSet.FieldByName('tr10_q').AsInteger > 0);

    if (cb_truck.EditValue > 0) and (cb_truck.EditValue < 99) then
    begin
      frm_stat_raznos.chbTruck1.Checked := (cb_truck.EditValue = 1);
      frm_stat_raznos.chbTruck2.Checked := (cb_truck.EditValue = 2);
      frm_stat_raznos.chbTruck3.Checked := (cb_truck.EditValue = 3);
      frm_stat_raznos.chbTruck4.Checked := (cb_truck.EditValue = 4);
      frm_stat_raznos.chbTruck5.Checked := (cb_truck.EditValue = 5);
      frm_stat_raznos.chbTruck6.Checked := (cb_truck.EditValue = 6);
      frm_stat_raznos.chbTruck7.Checked := (cb_truck.EditValue = 7);
      frm_stat_raznos.chbTruck8.Checked := (cb_truck.EditValue = 8);
      //frm_stat_raznos.chbTruck9.Checked := (cb_truck.EditValue = 9);
      //frm_stat_raznos.chbTruck10.Checked := (cb_truck.EditValue = 10);
    end;

{
    if (frm_stat_raznos.gr_total_view.DataController.DataSet.FieldByName('tr1_q').AsInteger > 0) then
    begin
      frm_stat_raznos.gr_total_viewTR1_W.Visible := true;
      frm_stat_raznos.gr_total_viewTR1_Q.Visible := true;
    end;
    if (frm_stat_raznos.gr_total_view.DataController.DataSet.FieldByName('tr2_q').AsInteger > 0) then
    begin
      frm_stat_raznos.gr_total_viewTR2_W.Visible := true;
      frm_stat_raznos.gr_total_viewTR2_Q.Visible := true;
    end;
    if (frm_stat_raznos.gr_total_view.DataController.DataSet.FieldByName('tr3_q').AsInteger > 0) then
    begin
      frm_stat_raznos.gr_total_viewTR3_W.Visible := true;
      frm_stat_raznos.gr_total_viewTR3_Q.Visible := true;
    end;
    if (frm_stat_raznos.gr_total_view.DataController.DataSet.FieldByName('tr4_q').AsInteger > 0) then
    begin
      frm_stat_raznos.gr_total_viewTR4_W.Visible := true;
      frm_stat_raznos.gr_total_viewTR4_Q.Visible := true;
    end;
    if (frm_stat_raznos.gr_total_view.DataController.DataSet.FieldByName('tr5_q').AsInteger > 0) then
    begin
      frm_stat_raznos.gr_total_viewTR5_W.Visible := true;
      frm_stat_raznos.gr_total_viewTR5_Q.Visible := true;
    end;
    if (frm_stat_raznos.gr_total_view.DataController.DataSet.FieldByName('tr6_q').AsInteger > 0) then
    begin
      frm_stat_raznos.gr_total_viewTR6_W.Visible := true;
      frm_stat_raznos.gr_total_viewTR6_Q.Visible := true;
    end;
    if (frm_stat_raznos.gr_total_view.DataController.DataSet.FieldByName('tr7_q').AsInteger > 0) then
    begin
      frm_stat_raznos.gr_total_viewTR7_W.Visible := true;
      frm_stat_raznos.gr_total_viewTR7_Q.Visible := true;
    end;
    if (frm_stat_raznos.gr_total_view.DataController.DataSet.FieldByName('tr8_q').AsInteger > 0) then
    begin
      frm_stat_raznos.gr_total_viewTR8_W.Visible := true;
      frm_stat_raznos.gr_total_viewTR8_Q.Visible := true;
    end;
}
    frm_stat_raznos.ShowModal;
  finally
    frm_stat_raznos.Free;
  end;
end;


procedure Traznos.btnPrintClick(Sender: TObject);
var filter_str: string;
begin
    try
      if not cbPrintAll.Checked then
      begin
        filter_str := DM.q_raznos.Filter;
        DM.q_raznos.Filter := 'HOL_SUB_TYPE='''+dm.q_raznosHOL_SUB_TYPE.AsString+'''';
        DM.q_raznos.Filtered := true;
      end;

      DM.frxReport1.LoadFromFile(first_dialog_frm.path+'raports\order_report.fr3');
      DM.frxReport1.ShowReport;

      if not cbPrintAll.Checked then
      begin
        DM.q_raznos.Filter   := filter_str;
        DM.q_raznos.Filtered := (filter_str <> '');
      end;
    except
      on E: Exception do ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    End;
end;

// Установки при показе формы
procedure Traznos.FormShow(Sender: TObject);
var path, iniFile: string;
begin
  iniFile := first_dialog_frm.path + '/ini/'+DM.Main_session.Username+'_raznos.ini';
  DBGridEh2.RestoreGridLayoutIni(iniFile, 'raznos_t',[grpColIndexEh, grpColWidthsEh, grpColVisibleEh, grpRowHeightEh, grpDropDownRowsEh, grpDropDownWidthEh]);
  DBGridEh3.RestoreGridLayoutIni(iniFile, 'raznos_st',[grpColIndexEh, grpColWidthsEh, grpColVisibleEh, grpRowHeightEh, grpDropDownRowsEh, grpDropDownWidthEh]);
  DBGridEh1.RestoreGridLayoutIni(iniFile, 'raznos',[grpColIndexEh, grpColWidthsEh, grpColVisibleEh, grpRowHeightEh, grpDropDownRowsEh, grpDropDownWidthEh]);


  if first_dialog_frm.uDefSort = 0 then
     DM.q_raznos.IndexFieldNames := 'COMPILED_NAME_OTDEL;REMARKS';
  if first_dialog_frm.uDefSort = 1 then
     DM.q_raznos.IndexFieldNames := 'ord;COMPILED_NAME_OTDEL;REMARKS';
  if first_dialog_frm.uDefSort = 2 then
     DM.q_raznos.IndexFieldNames := 'ord;h_name;REMARKS';

  DBGridEh1.FieldColumns['TRUCK'].Visible := chbWithoutPacked.Checked;
  
  DBGridEh1.Font.Size := first_dialog_frm.uFont;
  DBGridEh2.Font.Size := first_dialog_frm.uFont;
  DBGridEh3.Font.Size := first_dialog_frm.uFont;
  DBGridEh1.SetFocus;
end;

// Сохраним установки при закрытии формы
procedure Traznos.FormClose(Sender: TObject; var Action: TCloseAction);
var id: integer;
    iniFile: string;
begin
  iniFile := first_dialog_frm.path + '/ini/'+DM.Main_session.Username+'_raznos.ini';
  DBGridEh2.SaveGridLayoutIni(iniFile, 'raznos_t', true);
  DBGridEh3.SaveGridLayoutIni(iniFile, 'raznos_st', true);
  DBGridEh1.SaveGridLayoutIni(iniFile, 'raznos', true);

  id := DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
  DM.Q_ORDERS_ORDERS.Refresh;
  DM.Q_ORDERS_ORDERS.Locate('ID_ORDERS_CLIENTS',id,[]);
end;


// Смена машины в кобобоксе
procedure Traznos.cb_truckPropertiesEditValueChanged(Sender: TObject);
begin
  try
    dm.q_raznos_t.Close;
    dm.q_raznos_t.ParamByName('truck_').AsInteger  := cb_truck.EditValue;
    dm.q_raznos_t.ParamByName('packed_').AsInteger := abs(1-BoolToInt(chbWithoutPacked.Checked));
    dm.q_raznos_t.Open;

    dm.q_raznos_st.Close;
    dm.q_raznos_st.ParamByName('truck_').AsInteger  := cb_truck.EditValue;
    dm.q_raznos_st.ParamByName('packed_').AsInteger := abs(1-BoolToInt(chbWithoutPacked.Checked));
    dm.q_raznos_st.Open;

    dm.q_raznos.Close;
    dm.q_raznos.ParamByName('truck_').AsInteger  := cb_truck.EditValue;
    dm.q_raznos.ParamByName('packed_').AsInteger := abs(1-BoolToInt(chbWithoutPacked.Checked));
    dm.q_raznos.Open;

    DBGridEh1.SetFocus;
  except
     on E: Exception do
       Application.MessageBox(PChar(E.Message), 'Внимание', MB_ICONERROR);
  End;
end;


procedure Traznos.chbWithoutPackedClick(Sender: TObject);
begin
  cb_truckPropertiesEditValueChanged(nil);
  chbWithPacked.Checked := not chbWithoutPacked.Checked;
  DBGridEh1.FieldColumns['TRUCK'].Visible := chbWithoutPacked.Checked;
  Label4.Caption := 'Кол-во + Дир-р = Итого';
end;

procedure Traznos.chbWithPackedClick(Sender: TObject);
begin
  cb_truckPropertiesEditValueChanged(nil);
  chbWithoutPacked.Checked := not chbWithPacked.Checked;
  DBGridEh1.FieldColumns['TRUCK'].Visible := chbWithoutPacked.Checked;
  Label4.Caption := 'Кол-во + Дир-р = Итого  ::  В кол-во входят упак.';
end;

// Просмотр клиентов, заказавшиз выбранную позицию
procedure Traznos.aShowClientsExecute(Sender: TObject);
var i: integer;
    res: boolean;
begin
  if DBGridEh2.Focused then res := ShowClientList(DM.Q_ORDERSID_ORDERS.AsInteger, DM.q_raznos_tFT_ID.AsInteger,0);
  if DBGridEh3.Focused then res := ShowClientList(DM.Q_ORDERSID_ORDERS.AsInteger, DM.q_raznos_stFST_ID.AsInteger,1);
  if DBGridEh1.Focused then
  begin
    res := ShowClientList(DM.Q_ORDERSID_ORDERS.AsInteger, DM.q_raznosN_ID.AsInteger,2);
    DM.q_raznos.RefreshRecord;
  end;
end;


// Копирование значения в буфер обмена
procedure Traznos.mnCopyToClipBoardClick(Sender: TObject);
begin
  clipboard.SetTextBuf(PChar(VarToStr(DBGridEh1.SelectedField.Value)));
end;


// Сменить признак "Затирка"
procedure Traznos.mnSetZatirkaClick(Sender: TObject);
begin
  DM.q_raznos.DisableControls;
  try
    DM.q_raznos.First;
    while not DM.q_raznos.Eof do
    begin
      DM.q_raznos.Edit;
      DM.q_raznosZATIRKA.AsInteger := abs(1-DM.q_raznosZATIRKA.AsInteger);
      DM.q_raznos.Post;
      DM.q_raznos.Next;
    end;
  finally
    DM.q_raznos.EnableControls;
  end;
end;

// Положить все в № машины
procedure Traznos.N11Click(Sender: TObject);
begin
  DM.q_raznos.DisableControls;
  try
    DM.q_raznos.First;
    while not DM.q_raznos.Eof do
    begin
      if DM.q_raznosZATIRKA.AsInteger = 0 then
      begin
        ComboBox3.EditValue := (Sender as TMenuItem).Tag;
        BitBtn2Click(self);
      end
      else DM.q_raznos.Next;
    end;
  finally
    DM.q_raznos.EnableControls;
  end;
end;


// Очистить все корректировки
procedure Traznos.mnClearAllCorrectionsClick(Sender: TObject);
begin
  if MessageDlg('Вы действительно хотите очистить всю коррекцию?',mtConfirmation,[mbYes, mbNo],0) = mrNo then exit;

  try
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Add('begin PACK_ORDERS.clear_all_corrections(:p_ID_ORDERS); end;');
    DM.Q_SQL.ParamByName('p_ID_ORDERS').AsInteger := DM.Q_ORDERSID_ORDERS.AsInteger;
    DM.Q_SQL.Execute;

    btnRefresh.Click;
    DBGridEh2.SetFocus;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
  End;
end;

// Очистить все распределение
procedure Traznos.mnClearAllTrucksClick(Sender: TObject);
begin
  if MessageDlg('Вы действительно хотите очистить все распределение по машинам?',mtConfirmation,[mbYes, mbNo],0) = mrNo then exit;

  try
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Add('begin PACK_ORDERS.clear_all_trucks(:p_ID_ORDERS); end;');
    DM.Q_SQL.ParamByName('p_ID_ORDERS').AsInteger := DM.Q_ORDERSID_ORDERS.AsInteger;
    DM.Q_SQL.Execute;

    btnRefresh.Click;
    DBGridEh2.SetFocus;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
  End;
end;


// Обнулить коррекцию
procedure Traznos.aDeleteOnePosExecute(Sender: TObject);
begin
  try
    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Add('begin PACK_ORDERS.clear_curr_corrections(:p_ID_ORDERS, :p_n_id); end;');
    DM.Q_SQL.ParamByName('p_ID_ORDERS').AsInteger := DM.Q_ORDERSID_ORDERS.AsInteger;
    DM.Q_SQL.ParamByName('p_n_id').AsInteger      := DM.q_raznosN_ID.AsInteger;
    DM.Q_SQL.Execute;

//    btnRefresh.Click;
    DM.q_raznos.RefreshRecord;
    DBGridEh2.SetFocus;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Внимание', MB_ICONERROR);
  End;
end;



end.
