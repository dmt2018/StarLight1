unit select_doc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGridEh, StdCtrls, Buttons, ComCtrls, DBCtrls,
  DB, Ora, MemDS, DBAccess, ActnList, PI_library, GridsEh, Menus,
  cxLookAndFeelPainters, cxButtons, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxTextEdit,
  cxCalendar, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxSplitter, cxContainer, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, ShellAPI;

type
  TSelectDocForm = class(TForm)
    Panel2: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    Panel8: TPanel;
    NumberDoc: TLabeledEdit;
    ClientNick: TLabeledEdit;
    ClientFio: TLabeledEdit;
    DateTrue: TCheckBox;
    Label2: TLabel;
    Image1: TImage;
    doc_store_add_DS: TOraDataSource;
    doc_store_add: TOraQuery;
    doc_store_DS: TOraDataSource;
    doc_store: TOraQuery;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel10: TPanel;
    BitBtn1: TcxButton;
    Panel7: TPanel;
    BitBtnSave: TcxButton;
    BitBtn_Cancel: TcxButton;
    grid_list: TcxGrid;
    grid_list_v: TcxGridDBTableView;
    bdoc_NUMBER_FULL: TcxGridDBColumn;
    bdoc_DOC_DATE: TcxGridDBColumn;
    bdoc_NICK: TcxGridDBColumn;
    bdoc_FIO: TcxGridDBColumn;
    bdoc_QUANTITY_ALL: TcxGridDBColumn;
    bdoc_PRICE_ALL: TcxGridDBColumn;
    bdoc_COMPANY_NAME: TcxGridDBColumn;
    bdoc_BUH_DOC_TYPE_NAME: TcxGridDBColumn;
    grid_list_l: TcxGridLevel;
    bdoc_STORE_DOC_NUMBER: TcxGridDBColumn;
    bdoc_ID_DOC: TcxGridDBColumn;
    grid_list1: TcxGrid;
    grid_list1_v: TcxGridDBTableView;
    bdoc1_STORE_DOC_NUMBER: TcxGridDBColumn;
    bdoc1_NUMBER_FULL: TcxGridDBColumn;
    bdoc1_BUH_DOC_TYPE_NAME: TcxGridDBColumn;
    bdoc1_DOC_DATE: TcxGridDBColumn;
    bdoc1_NICK: TcxGridDBColumn;
    bdoc1_FIO: TcxGridDBColumn;
    bdoc1_QUANTITY_ALL: TcxGridDBColumn;
    bdoc1_PRICE_ALL: TcxGridDBColumn;
    bdoc1_COMPANY_NAME: TcxGridDBColumn;
    bdoc1_ID_DOC: TcxGridDBColumn;
    grid_list1_l: TcxGridLevel;
    ActionList1: TActionList;
    aEnter: TAction;
    aF5: TAction;
    aF6: TAction;
    aSelectAll: TAction;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    Panel9: TPanel;
    cxSplitter1: TcxSplitter;
    grid_list_vgroup_name: TcxGridDBColumn;
    grid_list1_vgroup_name: TcxGridDBColumn;
    Label4: TLabel;
    cbOffices: TcxImageComboBox;
    chb_service_out: TCheckBox;
    btnPrihod: TcxButton;
    DateTimePicker1: TcxDateEdit;
    DateTimePicker2: TcxDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FilterOn();
    procedure FormShow(Sender: TObject);
    procedure NumberDocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ClientNickKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ClientFioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DateTimePicker1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DateTimePicker2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_list_vDblClick(Sender: TObject);
    procedure grid_list_vKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_list_vDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure grid_list_vDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure grid_list1_vDblClick(Sender: TObject);
    procedure grid_list1_vKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grid_list1_vDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure grid_list1_vDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure aEnterExecute(Sender: TObject);
    procedure aSelectAllExecute(Sender: TObject);
    procedure doc_storeBeforeOpen(DataSet: TDataSet);
    procedure doc_store_addBeforeOpen(DataSet: TDataSet);
    procedure cbOfficesPropertiesChange(Sender: TObject);
    procedure btnPrihodClick(Sender: TObject);

  private
    path: string;
    procedure DD_List_List(DD_Accepter, DD_Source: TcxGridDBTableView);

    { Private declarations }
  public
    { Public declarations }
    department_index: integer;
    new_type: integer;
    department_name: string;
    documenttype_id: integer;
    documenttype_name: string;
    id_client: integer;
  end;

var
  SelectDocForm: TSelectDocForm;

implementation

{$R *.dfm}
uses dataM, global, Select_Doc_Data, doc_new, doc_view, Client_Chooser;


//
//  Создание формы
//
procedure TSelectDocForm.FormCreate(Sender: TObject);
begin
  path := ExtractFilePath(Application.ExeName);
  DateTimePicker1.EditValue := Date;
  DateTimePicker2.EditValue := Date;
end;


//
//  Закрытие формы
//
procedure TSelectDocForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;


//
//  Фильтрация данных
//
procedure TSelectDocForm.FilterOn();
begin
  if ((DateTrue.Checked=false) and (DateTimePicker1.EditValue > DateTimePicker2.EditValue)) then
    ShowMessage('Первая дата не может быть больше второй!')
  else
  begin
    try
      screen.cursor := crhourglass;

      doc_store.Close;
      doc_store.ParamByName('ID_DEP_').AsInteger := strtoint(department_id);
      doc_store.ParamByName('ID_DOC_TYPE_').AsInteger := new_type;
      doc_store.ParamByName('NUMBERDOC_').AsString := NumberDoc.Text;
      doc_store.ParamByName('fio_').AsString := trim(ClientFio.Text);
      doc_store.ParamByName('nick_').AsString := trim(ClientNick.Text);
      DateTimePicker1.PostEditValue;
      DateTimePicker2.PostEditValue;
      if (DateTrue.Checked=false) then
      begin
        doc_store.ParamByName('DOC_DATE1_').AsDateTime := DateTimePicker1.EditValue;
        doc_store.ParamByName('DOC_DATE2_').AsDateTime := DateTimePicker2.EditValue;
      end
      else
      begin
        doc_store.ParamByName('DOC_DATE1_').AsDateTime := Now()-365;
        doc_store.ParamByName('DOC_DATE2_').AsDateTime := Now();
      end;
      doc_store.ParamByName('param_').AsInteger := 1;
      doc_store.Open;

      if (new_type = 7) then
      begin
        doc_store.Filter := 'ID_DOC_TYPE=3';
        doc_store.Filtered := true;
      end
      else
      begin
        doc_store.Filter := '';
        doc_store.Filtered := false;
      end;
      

      doc_store_add.Close;
      doc_store_add.ParamByName('ID_DEP_').AsInteger := strtoint(department_id);
      doc_store_add.ParamByName('ID_DOC_TYPE_').AsInteger := new_type;
      doc_store_add.ParamByName('NUMBERDOC_').AsString := NumberDoc.Text;
      doc_store_add.ParamByName('fio_').AsString := trim(ClientFio.Text);
      doc_store_add.ParamByName('nick_').AsString := trim(ClientNick.Text);
      if (DateTrue.Checked=false) then
      begin
        doc_store_add.ParamByName('DOC_DATE1_').AsDateTime := DateTimePicker1.EditValue;
        doc_store_add.ParamByName('DOC_DATE2_').AsDateTime := DateTimePicker2.EditValue;
      end
      else
      begin
        doc_store_add.ParamByName('DOC_DATE1_').AsDateTime := Now()-365;
        doc_store_add.ParamByName('DOC_DATE2_').AsDateTime := Now();
      end;
      doc_store_add.ParamByName('param_').AsInteger := 0;
      doc_store_add.Open;

	    screen.cursor:=crdefault;
    except
      on E: Exception do
        begin
          screen.cursor:=crdefault;
          MessageBox(Handle, PChar(E.Message), 'Не удалось открыть данные!', MB_ICONERROR);
        end;
    End;
  end;
end;


//
//  Показывание формы
//
procedure TSelectDocForm.FormShow(Sender: TObject);
begin
    cbOffices.Enabled := (dm.id_office = 1);
    if (cbOffices.Enabled) then
    begin
      try
        cbOffices.Properties.OnChange := nil;
        DM.Q_SQL.Close;
        DM.Q_SQL.SQL.Clear;
        DM.Q_SQL.SQL.Add('SELECT ID_OFFICE, OFFICE_NAME FROM OFFICES ORDER BY OFFICE_NAME');
        DM.Q_SQL.Open;
        FillImgComboCx(DM.Q_SQL, cbOffices, 'Все');
        DM.Q_SQL.Close;
        cbOffices.EditValue := DM.id_office;
        cbOffices.Properties.OnChange := cbOfficesPropertiesChange;
      except
        on E: Exception do ShowMessage(E.Message);
      end;
    end;


  FilterOn();

  if (new_type=4) then
  begin
    bdoc_STORE_DOC_NUMBER.Visible   := true;
    bdoc_NUMBER_FULL.Visible        := false;
    bdoc_BUH_DOC_TYPE_NAME.Visible  := false;
    bdoc1_STORE_DOC_NUMBER.Visible  := true;
    bdoc1_NUMBER_FULL.Visible       := false;
    bdoc1_BUH_DOC_TYPE_NAME.Visible := false;
  end
  else
  begin
    bdoc_STORE_DOC_NUMBER.Visible   := false;
    bdoc_NUMBER_FULL.Visible        := true;
    bdoc_BUH_DOC_TYPE_NAME.Visible  := true;
    bdoc1_STORE_DOC_NUMBER.Visible  := false;
    bdoc1_NUMBER_FULL.Visible       := true;
    bdoc1_BUH_DOC_TYPE_NAME.Visible := true;
  end;

  Panel10.Caption := department_name + ' :: Подгрузка документов // '+documenttype_name;
end;


//
//  Нажимаем ПОКАЗАТЬ
//
procedure TSelectDocForm.BitBtn1Click(Sender: TObject);
begin
  FilterOn();
end;


//
//  Нажимаем ENTER на полях с фильтрами ----------------------------------------
//
procedure TSelectDocForm.NumberDocKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;

procedure TSelectDocForm.ClientNickKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;

procedure TSelectDocForm.ClientFioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;

procedure TSelectDocForm.DateTimePicker1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;

procedure TSelectDocForm.DateTimePicker2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    BitBtn1.Click;
  end;
end;
// -----------------------------------------------------------------------------


//
//  Перенос данных из одной таблицы в другую
//
procedure TSelectDocForm.DD_List_List(DD_Accepter, DD_Source: TcxGridDBTableView);
var i, store_doc_num:Integer;
begin

  if (DD_Accepter.DataController.DataSet.Active and DD_Source.DataController.DataSet.Active) then
  begin
    try
      screen.cursor := crhourglass;
      if (DD_Source.Controller.SelectedRowCount > 0) then
      begin
        DD_Source.DataController.DataSet.DisableControls;
        DM.Q_SQL.Close;
        DM.Q_SQL.SQL.Clear;
        if (SelectDocForm.new_type = 7) then
        begin
          DM.Q_SQL.SQL.Add('begin buh_pkg.CARGO_FROM_STOREDOCS(:store_doc_num_add, :store_doc_num_del); end;');
        end
        else
        begin
          DM.Q_SQL.SQL.Add('begin buh_pkg.DATA_FROM_STOREDOCS(:store_doc_num_add, :store_doc_num_del, :svod, :zatiranie, :V_SERVICE); end;');
          DM.Q_SQL.ParamByName('svod').AsInteger      := 0;
          DM.Q_SQL.ParamByName('zatiranie').AsInteger := 0;
          if (chb_service_out.Checked) then
            DM.Q_SQL.ParamByName('V_SERVICE').AsInteger := 1
          else
            DM.Q_SQL.ParamByName('V_SERVICE').AsInteger := 0;
//            if StrToInt(DataM.department_id) = 61  then DM.Q_SQL.ParamByName('V_SERVICE').AsInteger := DM.v61_service;
//            if StrToInt(DataM.department_id) = 62  then DM.Q_SQL.ParamByName('V_SERVICE').AsInteger := DM.v62_service;
//            if StrToInt(DataM.department_id) = 121 then DM.Q_SQL.ParamByName('V_SERVICE').AsInteger := DM.v121_service;
        end;

        for i := 0 to DD_Source.Controller.SelectedRowCount-1 do
        begin
          store_doc_num := DD_Source.Controller.SelectedRows[i].Values[10];
          if (DD_Source.Name = 'grid_list_v') then
          begin
            DM.Q_SQL.ParamByName('store_doc_num_add').AsInteger := store_doc_num;
            DM.Q_SQL.ParamByName('store_doc_num_del').AsInteger := 0;
          end
          else
          begin
            DM.Q_SQL.ParamByName('store_doc_num_add').AsInteger := 0;
            DM.Q_SQL.ParamByName('store_doc_num_del').AsInteger := store_doc_num;
          end;
          DM.Q_SQL.Execute;
        end;

        DD_Source.DataController.DataSet.Refresh;
        DD_Accepter.DataController.DataSet.Refresh;
        DD_Source.DataController.DataSet.EnableControls;
        screen.cursor := crdefault;
      End;

    except
      on E: Exception do
        begin
          DD_Source.DataController.DataSet.EnableControls;
          screen.cursor:=crdefault;
          MessageBox(NULL, PChar(E.Message), 'Не удалось выполнить операцию!', MB_ICONERROR);
        end;
    end;
  end;
end;


//
//  Убрать из документа
//
procedure TSelectDocForm.BitBtn2Click(Sender: TObject);
var DD_Accepter, DD_Source: TcxGridDBTableView;
begin
  DD_Accepter := grid_list_v;
  DD_Source   := grid_list1_v;
  DD_List_List(DD_Accepter, DD_Source);
end;


//
//  Добавить в документ
//
procedure TSelectDocForm.BitBtn4Click(Sender: TObject);
var DD_Accepter, DD_Source: TcxGridDBTableView;
begin
  DD_Accepter := grid_list1_v;
  DD_Source   := grid_list_v;
  DD_List_List(DD_Accepter, DD_Source);
end;



procedure TSelectDocForm.cbOfficesPropertiesChange(Sender: TObject);
begin
  BitBtn1Click(Sender);
end;

//
//  Просмотр накладной 1
//
procedure TSelectDocForm.grid_list_vDblClick(Sender: TObject);
var theForm: TForm;
begin
  if (grid_list_v.DataController.DataSet.RecordCount <> 0) then
  begin
    theForm := TSelectDocDataForm.Create(Application);
    try
      TSelectDocDataForm(theForm).doc_id            := grid_list_v.DataController.DataSet.FieldByName('id_doc').AsInteger;
      TSelectDocDataForm(theForm).documenttype_name := documenttype_name;
      theForm.showmodal;
    finally
      theForm.Free;
    end;
  end;
end;


//
//  Нажимаем кнопки на гриде 1
//
procedure TSelectDocForm.grid_list_vKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var DD_Accepter, DD_Source: TcxGridDBTableView;
begin
  if (grid_list_v.DataController.DataSet.RecordCount <> 0) then
  begin
    Case key of
      VK_RETURN:
        begin
          grid_list_vDblClick(Sender); // При ENTER открываем накладную
        end;
      VK_INSERT:
        begin
          DD_Accepter := grid_list1_v; //dbgList1;
          DD_Source   := grid_list_v; //dbgList;
          DD_List_List(DD_Accepter, DD_Source);
        end;
    end;
  end;
end;


//
//  Перетаскиваем сверху вниз 1
//
procedure TSelectDocForm.grid_list_vDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var DD_Accepter, DD_Source: TcxGridDBTableView;
begin
  if Source = grid_list1_v then
  begin
    DD_Accepter := grid_list_v;
    DD_Source   := grid_list1_v;
    DD_List_List(DD_Accepter, DD_Source);
  end;
end;


//
//  Проверка перетаскивания сверху вниз 1
//
procedure TSelectDocForm.grid_list_vDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source = grid_list1_v then Accept := True else Accept := False;
end;


//
//  Просмотр накладной 2
//
procedure TSelectDocForm.grid_list1_vDblClick(Sender: TObject);
var theForm: TForm;
begin
  if (grid_list1_v.DataController.DataSet.RecordCount <> 0) then
  begin
    theForm := TSelectDocDataForm.Create(Application);
    try
      TSelectDocDataForm(theForm).doc_id            := grid_list1_v.DataController.DataSet.FieldByName('id_doc').AsInteger;
      TSelectDocDataForm(theForm).documenttype_name := documenttype_name;
      theForm.showmodal;
    finally
      theForm.Free;
    end;
  end;
end;


//
//  Нажимаем кнопки на гриде 2
//
procedure TSelectDocForm.grid_list1_vKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var DD_Accepter, DD_Source: TcxGridDBTableView;
begin
  if (grid_list1_v.DataController.DataSet.RecordCount <> 0) then
  begin
    Case key of
      VK_RETURN:
        begin
          grid_list1_vDblClick(Sender)
        end;
      VK_DELETE:
        begin
          DD_Accepter := grid_list_v; //dbgList1;
          DD_Source   := grid_list1_v; //dbgList;
          DD_List_List(DD_Accepter, DD_Source);
        end;
    end;
  end;
end;


//
//  Перетаскиваем снизу вверх 2
//
procedure TSelectDocForm.grid_list1_vDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var DD_Accepter, DD_Source: TcxGridDBTableView;
begin
  if Source = grid_list_v then
  begin
    DD_Accepter := grid_list1_v;
    DD_Source   := grid_list_v;
    DD_List_List(DD_Accepter, DD_Source);
  end;
end;


//
//  Проверка перетаскивания снизу вверх 2
//
procedure TSelectDocForm.grid_list1_vDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if Source = grid_list_v then Accept := True else Accept := False;
end;


//
//  Нажимаем CTRL+ENTER
//
procedure TSelectDocForm.aEnterExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;


//
//  Выделить все
//
procedure TSelectDocForm.aSelectAllExecute(Sender: TObject);
begin
  if grid_list.IsFocused = true then
    grid_list_v.Controller.SelectAll;

  if grid_list1.IsFocused = true then
    grid_list1_v.Controller.SelectAll;
end;


procedure TSelectDocForm.doc_storeBeforeOpen(DataSet: TDataSet);
begin
  if cbOffices.Enabled then
    (DataSet As TOraQuery).ParamByName('v_office').AsInteger := cbOffices.EditValue
  else
    (DataSet As TOraQuery).ParamByName('v_office').AsInteger := DM.id_office
end;

procedure TSelectDocForm.doc_store_addBeforeOpen(DataSet: TDataSet);
begin
  if cbOffices.Enabled then
    (DataSet As TOraQuery).ParamByName('v_office').AsInteger := cbOffices.EditValue
  else
    (DataSet As TOraQuery).ParamByName('v_office').AsInteger := DM.id_office
end;


// Выгрузим в excel приходы в промежутке указанных дат за вычетов товара в отобранных накладных
procedure TSelectDocForm.btnPrihodClick(Sender: TObject);
var sql_str, v_docs: string;
    F_CSV: TextFile;
begin
  if ( grid_list_v.DataController.DataSet.Active = false )
    or ( grid_list_v.DataController.DataSet.RecordCount = 0 )
  then
  begin
    MessageBox (Handle,'Нет данных для экспорта накладной.', 'Внимание!', MB_ICONWARNING);
    exit;
  end;

  if MessageDlg('Создать файл excel по выбранным накладным?',  mtConfirmation, [mbOk, mbNo], 0) <> mrOk then
  Exit;

  try
    screen.cursor := crHourGlass;
    AssignFile(F_CSV, path+ '\OUT\отчет_по_складу_на_'+DateToStr(Now)+'_'+DataM.department_name+'.csv');
    Rewrite(F_CSV);

    sql_str := 'Alter session set NLS_NUMERIC_CHARACTERS=''.,''';
    dm.Q_SQL.close;
    dm.Q_SQL.sql.Clear;
    dm.Q_SQL.sql.Add(sql_str);
    dm.Q_SQL.Execute;

    sql_str := 'begin buh_pkg.make_prihod_itog(:p_date_b, :p_date_e, :p_docs, :p_cursor); end;';


    v_docs := '';
    grid_list_v.DataController.DataSet.DisableControls;
    grid_list_v.DataController.DataSet.First;
    while not grid_list_v.DataController.DataSet.Eof do
    begin
      if v_docs = '' then
        v_docs := VarToStr(bdoc_ID_DOC.EditValue)
      else
        v_docs := v_docs + ',' + VarToStr(bdoc_ID_DOC.EditValue);
      grid_list_v.DataController.DataSet.Next;
    end;
    DateTimePicker1.PostEditValue;
    DateTimePicker2.PostEditValue;
//grid_prod_v.ViewData.Rows[1].

    with dm.Q_SQL do
    begin
        close;
        sql.Clear;
        sql.Add(sql_str);
        ParamByName('p_date_b').AsDateTime := DateTimePicker1.EditValue;
        ParamByName('p_date_e').AsDateTime := DateTimePicker2.EditValue;
        ParamByName('p_docs').AsString     := v_docs;
        ParamByName('p_cursor').AsCursor;
        Open;

        if not IsEmpty then
        begin
          First;
          WriteLn(F_CSV, 'Код;Артикул;Группа;Подгруппа;Название;Страна;Текущий остаток;Продажи;Начальный остаток;Кол-во;Цена продажи;ГТД');
          while not eof do
          begin
            WriteLn(F_CSV, Fields[0].AsString);
            Next;
          end;
        end;
        Close;
    end;

    MessageBox (Handle,'Файл сформирован успешно.', 'Результат', MB_ICONINFORMATION);

  finally
    grid_list_v.DataController.DataSet.EnableControls;
    screen.cursor := crDefault;
    CloseFile(F_CSV);

    ShellExecute(Handle, nil, PChar(path+ '\OUT\отчет_по_складу_на_'+DateToStr(Now)+'_'+DataM.department_name+'.csv'), nil, nil, SW_RESTORE);
  end;
end;


end.
