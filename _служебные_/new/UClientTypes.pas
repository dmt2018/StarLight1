unit UClientTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, star_lib, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxImageComboBox, cxLabel, cxButtonEdit,
  DBAccess, Ora, MemDS, DBClient, ActnList, dxBar, cxBarEditItem, dxBarExtItems,
  cxClasses, cxGridLevel, cxGridCustomTableView, cxGridTableView,  ComObj,
  cxGridDBTableView, cxControls, cxGridCustomView, cxGrid, ImgList, xmldom,
  XMLIntf, Xmlxform, msxmldom, XMLDoc;

type
  TfrmClientTypes = class(TForm)
    grClientTypes: TcxGrid;
    grClientTypesView: TcxGridDBTableView;
    tview_TYPESnn: TcxGridDBColumn;
    tview_TYPESBRIEF: TcxGridDBColumn;
    tview_TYPESNAME: TcxGridDBColumn;
    tview_TYPEST_TYPE: TcxGridDBColumn;
    tview_TYPESDISCOUNT: TcxGridDBColumn;
    tview_TYPESINFO: TcxGridDBColumn;
    grClientTypesLevel: TcxGridLevel;
    AlMain: TActionList;
    aRefresh: TAction;
    aNew: TAction;
    aEdit: TAction;
    aDelete: TAction;
    Q_CT: TOraQuery;
    Q_CT_DS: TOraDataSource;
    SelQ: TOraQuery;
    tview_TYPESCONTRACTOR: TcxGridDBColumn;
    Q_CTID_CLIENT_TYPES: TIntegerField;
    Q_CTNAME: TStringField;
    Q_CTINFO: TStringField;
    Q_CTT_TYPE: TIntegerField;
    Q_CTDISCOUNT: TFloatField;
    Q_CTID_OFFICE: TIntegerField;
    Q_CTBRIEF: TStringField;
    Q_CTNN: TFloatField;
    Q_CTIS_CONTRACTOR: TIntegerField;
    aExit: TAction;
    bmMain: TdxBarManager;
    bmToolBar: TdxBar;
    bmFooter: TdxBar;
    btnRefresh: TdxBarLargeButton;
    btnAdd: TdxBarLargeButton;
    btnEdit: TdxBarLargeButton;
    btnDelete: TdxBarLargeButton;
    imgOffice: TcxBarEditItem;
    imgOtdel: TcxBarEditItem;
    btnHelp: TdxBarLargeButton;
    btnExit: TdxBarLargeButton;
    cxBarEditItem3: TcxBarEditItem;
    cxBarEditItem4: TcxBarEditItem;
    cxBarEditItem1: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cxBarEditItem2: TcxBarEditItem;
    btnHotKeys: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aNewExecute(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure aDeleteExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure imgOfficePropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure grClientTypesViewCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure aExitExecute(Sender: TObject);
    procedure btnHotKeysClick(Sender: TObject);
  private
    { Private declarations }
    p_read, p_edit, p_delete, p_print: boolean;
  public
    { Public declarations }
    id_office: integer;
    function MainFormShow : boolean;
  end;

var
  frmClientTypes: TfrmClientTypes;

implementation

{$R *.dfm}

uses umain, UDM, uEditRefBook, UHotKeys;

function TfrmClientTypes.MainFormShow : boolean;
Begin
 if not Assigned(frmClientTypes) then
  begin
    frmClientTypes := TfrmClientTypes.Create(Application);
    try
      frmClientTypes.Show;
      LoadFormState(frmClientTypes); //полож.окна
    finally
      null;
    end;
  end
  else
    if (frmClientTypes.WindowState = wsMinimized) then frmClientTypes.WindowState := wsNormal;
end;



// удаление из таблицы
procedure TfrmClientTypes.aDeleteExecute(Sender: TObject);
var idd: integer;
    cds : TcxGridDBTableView;
begin
  if ( (grClientTypes.ActiveView.DataController as TcxDBDataController).DataSet.RecordCount > 0 ) then
  begin
  
  if (id_office <> (grClientTypes.ActiveView.DataController as TcxDBDataController).DataSet.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  try
  cds := (grClientTypes.ActiveLevel.GridView as TcxGridDBTableView);

  if (cds.DataController.DataSource.DataSet.active) and (cds.DataController.DataSource.DataSet.RecordCount > 0) then
  begin
    if MessageDlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      selq.Close;
      selq.SQL.Clear;
      selq.SQL.Add('begin BOOKS.delete_record(:table_, :pk_, :id_); end;');

      // Пытаемся выполнить SQL запрос на удаление
      try
         selq.ParamByName('table_').AsString := 'BOOKS_CLIENT_TYPES';
         selq.ParamByName('pk_').AsString := 'ID_CLIENT_TYPES';
         selq.ParamByName('id_').AsInteger := Q_CT.FieldByName('ID_CLIENT_TYPES').Value;
         Q_CT.Next;
         idd := Q_CT.FieldByName('ID_CLIENT_TYPES').Value;
         selq.Execute;
         Q_CT.Refresh;
         Q_CT.Locate('ID_CLIENT_TYPES',idd,[]);
         selq.Close;
      except
        on E: Exception do
        begin
          if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then MessageBox(Handle, 'У вас нет прав на данную операцию!', 'Не удалось выполнить операцию!', MB_ICONERROR)
          else
            if (StrPos(PChar(E.Message), PChar('02292')) <> nil) then MessageBox(Handle, 'Стираемая запись используется в данных других программ!'+#10#13+'Удаление возможно только не используемых значений!', 'Не удалось выполнить операцию!', MB_ICONERROR)
            else MessageBox(Handle, PChar(E.Message), 'Не удалось выполнить операцию!', MB_ICONERROR);
          end;
        End;
    end;
  end
  else ShowMessage('В базе данных нет записей для удаления!');
  finally
    grClientTypes.SetFocus;
  end;
  end;
end;


// редактирование таблицы
procedure TfrmClientTypes.aEditExecute(Sender: TObject);
begin
  if ( (grClientTypes.ActiveView.DataController as TcxDBDataController).DataSet.RecordCount > 0 ) then
  begin

  if (id_office <> (grClientTypes.ActiveView.DataController as TcxDBDataController).DataSet.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  try
    if Q_CT.FieldByName('NAME').AsString <> '' then
    begin
      frmEditRefBook.ttype := 6;
      frmEditRefBook.Edit1.Tag := Q_CT.FieldByName('ID_CLIENT_TYPES').AsInteger;
      frmEditRefBook.Edit1.Text := Q_CT.FieldByName('NAME').AsString;
      frmEditRefBook.MEMO1.Text := Q_CT.FieldByName('INFO').AsString;
      frmEditRefBook.Label6.Caption := 'Типы клиентов :: редактирование';
      frmEditRefBook.CheckBox1.Caption := ' печать № свидетельства о регистрации';
      frmEditRefBook.CheckBox1.Visible := true;
      if Q_CT.FieldByName('T_TYPE').AsInteger = 1 then frmEditRefBook.checkbox1.checked := true else frmEditRefBook.checkbox1.checked := false;
      if Q_CT.FieldByName('is_contractor').AsInteger = 1 then frmEditRefBook.checkbox2.checked := true else frmEditRefBook.checkbox2.checked := false;
      frmEditRefBook.Label7.Visible := true;
      frmEditRefBook.Znak_EditPercent.Visible := true;
      frmEditRefBook.DBNumberEditEh1.Visible := true;
      if (Q_CT.FieldByName('DISCOUNT').AsInteger>0) then frmEditRefBook.Znak_EditPercent.ItemIndex:=1;
      if (Q_CT.FieldByName('DISCOUNT').AsInteger<0) then frmEditRefBook.Znak_EditPercent.ItemIndex:=0;
      frmEditRefBook.DBNumberEditEh1.Text:=inttostr(ABS(Q_CT.FieldByName('DISCOUNT').AsInteger));
      frmEditRefBook.ShowModal;
      Q_CT.Refresh;
      Q_CT.Locate('ID_CLIENT_TYPES', frmEditRefBook.Edit1.Tag, []);
    end;
  finally
    grClientTypes.SetFocus;
  end;
  
  end;
end;

procedure TfrmClientTypes.aExitExecute(Sender: TObject);
begin
 close;
end;

// добавление в таблицу
procedure TfrmClientTypes.aNewExecute(Sender: TObject);
begin
  if id_office > 1 then
  begin
    MessageBox(Handle,'Вид данных добавляется только через главный офис компании.','Внимание!',MB_ICONERROR);
    exit;
  end;

  try
    frmEditRefBook.Znak_EditPercent.Visible := false;
    frmEditRefBook.DBNumberEditEh1.Visible  := false;
    frmEditRefBook.Edit1.Text               := '';
    frmEditRefBook.Edit1.Tag                := 0;
    frmEditRefBook.Memo1.Lines.Clear;
    frmEditRefBook.ttype                    := 5;
    frmEditRefBook.Label6.Caption           := 'Типы клиентов :: добавление';
    frmEditRefBook.CheckBox1.Visible        := true;
    frmEditRefBook.CheckBox1.Caption        := ' печать № свидетельства о регистрации';
    frmEditRefBook.Label7.Visible           := true;
    frmEditRefBook.DBNumberEditEh1.Visible  := true;
    frmEditRefBook.Znak_EditPercent.Visible := true;
    frmEditRefBook.ShowModal;
    Q_CT.Refresh;
    Q_CT.Locate('ID_CLIENT_TYPES', frmEditRefBook.Edit1.Tag, []);
  finally
    grClientTypes.SetFocus;
  end;

end;

// Обновление данных
procedure TfrmClientTypes.aRefreshExecute(Sender: TObject);
begin
 Q_CT.Close;
 Q_CT.ParamByName('V_OFFICE').AsInteger :=  id_office;
 Q_CT.Open;
 grClientTypes.SetFocus;
end;

// выход из проги
procedure TfrmClientTypes.btnExitClick(Sender: TObject);
begin
 if MessageDlg('Закрыть программу?',mtConfirmation,[mbYes, mbNo],0) = mrYes then Close;
end;

procedure TfrmClientTypes.btnHotKeysClick(Sender: TObject);
begin
  frmHotKeys.MainFormShow;
end;

// Закрытие формы
procedure TfrmClientTypes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('Закрыть программу?',mtConfirmation,[mbYes, mbNo],0) <> mrYes then
    Action := caNone
  else
  begin
   SaveFormState(frmClientTypes);  //полож.окна
   frmClientTypes := nil;
   Action := caFree;
  end;
end;

procedure TfrmClientTypes.FormCreate(Sender: TObject);
  var recUserRules : TUserRules;
begin
 Application.CreateForm(TfrmEditRefBook, frmEditRefBook);
 grClientTypes.Font.Size := intDefFont;
 frmEditRefBook.CheckBox2.Visible:=true;

   // получение прав на программу
  recUserRules  := getRules(DM.cdsRules,4);
  p_read        := recUserRules.r_read;
  p_edit        := recUserRules.r_edit;
  p_delete      := recUserRules.r_delete;
  p_print       := recUserRules.r_print;

  aNew.Enabled    := p_edit;
  aEdit.Enabled   := p_edit;
  aDelete.Enabled := p_delete;
end;

//меняю офис
procedure TfrmClientTypes.imgOfficePropertiesChange(Sender: TObject);
begin
 intDefOffice := imgOffice.EditValue;
  //DM.id_office := imgOffice.EditValue; //в перем id_office пишу текущ.знач комбобокса
 aRefresh.Execute;  //обновить таблицу
end;

procedure TfrmClientTypes.FormShow(Sender: TObject);
begin
  if (imgOffice.Enabled) then
  begin
   try
    id_office := GetOfficeID;
    imgOffice.Enabled := (id_office = 1);

    imgOffice.Properties.OnChange := nil;
    SelQ.Close;
    SelQ.SQL.Clear;
    SelQ.SQL.Add('SELECT ID_OFFICE, OFFICE_NAME FROM OFFICES ORDER BY OFFICE_NAME');
    SelQ.Open;
    SelQ.Close;
    imgOffice.EditValue := id_office;

    aRefresh.Execute;
   except
    on E: Exception do ShowMessage(E.Message);
   end;
  end;
end;

procedure TfrmClientTypes.grClientTypesViewCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
 var val1: variant;
begin
 { if (not AViewInfo.Selected) and (grClientTypesView.DataController.DataSet.RecordCount > 0) then
  begin
    // Красим заблокированного 
    val1  := grClientTypesView.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, grClientTypesView.GetColumnByFieldName('ID_OFFICE').Index
                );
    if (val1 <> id_office) then
    begin
        ACanvas.Font.Style := [fsItalic];
    end;
  end;   }
end;

end.
