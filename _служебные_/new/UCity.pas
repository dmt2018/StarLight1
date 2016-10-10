unit UCity;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, star_lib, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxImageComboBox, cxLabel,
  cxButtonEdit, xmldom, XMLIntf, DBClient, Xmlxform, msxmldom, XMLDoc, ActnList,
  dxBar, cxBarEditItem, dxBarExtItems, cxClasses, DBAccess, Ora, MemDS, ComObj,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxControls, cxGridCustomView, cxGrid;

type
  TfrmCity = class(TForm)
    grCities: TcxGrid;
    grCitiesView: TcxGridDBTableView;
    grCitiesLevel: TcxGridLevel;
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
    AlMain: TActionList;
    aRefresh: TAction;
    aNew: TAction;
    aEdit: TAction;
    aDelete: TAction;
    aExit: TAction;
    SelQ: TOraQuery;
    grCitiesCity: TcxGridDBColumn;
    Q_CITIES: TOraQuery;
    Q_CITIESID_CITY: TIntegerField;
    Q_CITIESCITY: TStringField;
    Q_CITIESKOD: TStringField;
    Q_CITIESID_REGION: TIntegerField;
    Q_CITIESID_OFFICE: TIntegerField;
    Q_CITIESBRIEF: TStringField;
    Q_CITIESNAME: TStringField;
    Q_CITIES_DS: TOraDataSource;
    grCitiesKod: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure aExitExecute(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure aNewExecute(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure aDeleteExecute(Sender: TObject);
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
  frmCity: TfrmCity;

implementation

{$R *.dfm}

 uses umain, UDM, UHotKeys, UEditRefBook;

procedure TfrmCity.FormCreate(Sender: TObject);
   var recUserRules : TUserRules;
begin
 Application.CreateForm(TfrmEditRefBook, frmEditRefBook);
 grCities.Font.Size := intDefFont;
 frmEditRefBook.CheckBox2.Visible:=false;

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

procedure TfrmCity.FormShow(Sender: TObject);
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

function TfrmCity.MainFormShow : boolean;
Begin
 if not Assigned(frmCity) then
  begin
    frmCity := TfrmCity.Create(Application);
    try
      frmCity.Show;
      LoadFormState(frmCity); //полож.окна
    finally
      null;
    end;
  end
  else
    if (frmCity.WindowState = wsMinimized) then frmCity.WindowState := wsNormal;
end;

procedure TfrmCity.aDeleteExecute(Sender: TObject);
var idd: integer;
    cds : TcxGridDBTableView;
begin
  if ( (grCities.ActiveView.DataController as TcxDBDataController).DataSet.RecordCount > 0 ) then
  begin
  
  if (id_office <> (grCities.ActiveView.DataController as TcxDBDataController).DataSet.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  try
  cds := (grCities.ActiveLevel.GridView as TcxGridDBTableView);

  if (cds.DataController.DataSource.DataSet.active) and (cds.DataController.DataSource.DataSet.RecordCount > 0) then
  begin
    if MessageDlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      selq.Close;
      selq.SQL.Clear;
      selq.SQL.Add('begin BOOKS.delete_record(:table_, :pk_, :id_); end;');

      // Пытаемся выполнить SQL запрос на удаление
      try
          selq.ParamByName('table_').AsString := 'books_cities';
          selq.ParamByName('pk_').AsString := 'ID_CITY';
          selq.ParamByName('id_').AsInteger := Q_CITIES.FieldByName('ID_CITY').Value;
          Q_CITIES.Next;
          idd := Q_CITIES.FieldByName('ID_CITY').Value;
          selq.Execute;
          Q_CITIES.Refresh;
          Q_CITIES.Locate('ID_CITY',idd,[]);
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
    grCities.SetFocus;
  end;
  end;
end;

procedure TfrmCity.aEditExecute(Sender: TObject);
begin
  if ( (grCities.ActiveView.DataController as TcxDBDataController).DataSet.RecordCount > 0 ) then
  begin

  if (id_office <> (grCities.ActiveView.DataController as TcxDBDataController).DataSet.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  try
    if Q_CITIES.FieldByName('NAME').AsString <> '' then
    begin
      frmEditRefBook.ttype := 12;
      frmEditRefBook.Edit1.Tag := Q_CITIES.FieldByName('ID_city').AsInteger;
      frmEditRefBook.Edit1.Text := Q_CITIES.FieldByName('city').AsString;
      frmEditRefBook.Edit2.Text := Q_CITIES.FieldByName('kod').AsString;
      frmEditRefBook.imcbRegion.Tag := Q_CITIES.FieldByName('id_region').AsInteger;
      frmEditRefBook.Label6.Caption := 'Города :: редактирование';
      frmEditRefBook.CheckBox1.Visible := false;
      frmEditRefBook.Label7.Visible := false;
      frmEditRefBook.Znak_EditPercent.Visible := false;
      frmEditRefBook.DBNumberEditEh1.Visible := false;
      frmEditRefBook.pnlCity.Visible    := true;

      frmEditRefBook.Label11.Visible    := false;
      frmEditRefBook.Edit3.Visible      := false;

      frmEditRefBook.ShowModal;
      Q_CITIES.Refresh;
      Q_CITIES.Locate('id_city', frmEditRefBook.Edit1.Tag, []);
    end;
  finally
    grCities.SetFocus;
  end;
  
  end;
end;

procedure TfrmCity.aExitExecute(Sender: TObject);
begin
 close;
end;

procedure TfrmCity.aNewExecute(Sender: TObject);
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
      frmEditRefBook.ttype              := 11;
      frmEditRefBook.Label6.Caption     := 'Города :: добавление';
      frmEditRefBook.CheckBox1.Visible  := false;
      frmEditRefBook.Label7.Visible     := false;
      frmEditRefBook.pnlCity.Visible    := true;
      frmEditRefBook.Label11.Visible    := false;
      frmEditRefBook.Edit3.Visible      := false;
      frmEditRefBook.ShowModal;
      Q_CITIES.Refresh;
      Q_CITIES.Locate('id_city', frmEditRefBook.Edit1.Tag, []);
  finally
    grCities.SetFocus;
  end;
end;

procedure TfrmCity.aRefreshExecute(Sender: TObject);
begin
 Q_CITIES.Close;
 Q_CITIES.ParamByName('V_OFFICE').AsInteger :=  id_office;
 Q_CITIES.Open;
 grCities.SetFocus;
end;

procedure TfrmCity.btnHotKeysClick(Sender: TObject);
begin
 frmHotKeys.MainFormShow;
end;

procedure TfrmCity.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('Закрыть программу?',mtConfirmation,[mbYes, mbNo],0) <> mrYes then
   Action := caNone
  else
  begin
   SaveFormState(frmCity);  //полож.окна
   frmCity := nil;
   Action := caFree;
  end;
end;




end.
