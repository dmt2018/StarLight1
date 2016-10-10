unit UPositions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, star_lib, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxImageComboBox, cxLabel, cxButtonEdit,
  ActnList, dxBar, cxBarEditItem, dxBarExtItems, cxClasses, DBAccess, Ora,
  MemDS, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxControls, cxGridCustomView, cxGrid;

type
  TfrmPositions = class(TForm)
    grPost: TcxGrid;
    grPostView: TcxGridDBTableView;
    grPostLevel: TcxGridLevel;
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
    grPostNN: TcxGridDBColumn;
    grPostName: TcxGridDBColumn;
    grPostInfo: TcxGridDBColumn;
    Q_POST: TOraQuery;
    Q_POSTID_JOB_TITLES: TIntegerField;
    Q_POSTNAME: TStringField;
    Q_POSTINFO: TStringField;
    Q_POSTID_OFFICE: TIntegerField;
    Q_POSTNN: TFloatField;
    Q_POSTBRIEF: TStringField;
    Q_POST_DS: TOraDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnHotKeysClick(Sender: TObject);
    procedure aExitExecute(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure aNewExecute(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure aDeleteExecute(Sender: TObject);
  private
    { Private declarations }
    p_read, p_edit, p_delete, p_print: boolean;
  public
    { Public declarations }
    id_office: integer;
    function MainFormShow : boolean;
  end;

var
  frmPositions: TfrmPositions;

implementation

{$R *.dfm}

uses umain, UDM, UHotKeys, uEditRefBook;

procedure TfrmPositions.aDeleteExecute(Sender: TObject);
var idd: integer;
    cds : TcxGridDBTableView;
begin
  if ( (grPost.ActiveView.DataController as TcxDBDataController).DataSet.RecordCount > 0 ) then
  begin
  
  if (id_office <> (grPost.ActiveView.DataController as TcxDBDataController).DataSet.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  try
  cds := (grPost.ActiveLevel.GridView as TcxGridDBTableView);

  if (cds.DataController.DataSource.DataSet.active) and (cds.DataController.DataSource.DataSet.RecordCount > 0) then
  begin
    if MessageDlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      selq.Close;
      selq.SQL.Clear;
      selq.SQL.Add('begin BOOKS.delete_record(:table_, :pk_, :id_); end;');

      // Пытаемся выполнить SQL запрос на удаление
      try
          selq.ParamByName('table_').AsString := 'BOOKS_JOB_TITLES';
          selq.ParamByName('pk_').AsString := 'ID_JOB_TITLES';
          selq.ParamByName('id_').AsInteger := Q_POST.FieldByName('ID_JOB_TITLES').Value;
          Q_POST.Next;
          idd := Q_POST.FieldByName('ID_JOB_TITLES').Value;
          selq.Execute;
          Q_POST.Refresh;
          Q_POST.Locate('ID_JOB_TITLES',idd,[]);
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
    grPost.SetFocus;
  end;
  end;
end;

procedure TfrmPositions.aEditExecute(Sender: TObject);
begin
 if ( (grPost.ActiveView.DataController as TcxDBDataController).DataSet.RecordCount > 0 ) then
  begin

  if (id_office <> (grPost.ActiveView.DataController as TcxDBDataController).DataSet.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  try
    if Q_POST.FieldByName('NAME').AsString <> '' then
    begin
      frmEditRefBook.ttype := 10;
      frmEditRefBook.Edit1.Tag := Q_POST.FieldByName('ID_JOB_TITLES').AsInteger;
      frmEditRefBook.Edit1.Text := Q_POST.FieldByName('NAME').AsString;
      frmEditRefBook.MEMO1.Text := Q_POST.FieldByName('INFO').AsString;
      frmEditRefBook.Label6.Caption := 'Должности :: редактирование';
      frmEditRefBook.CheckBox1.Visible := false;
      frmEditRefBook.Label7.Visible := false;
      frmEditRefBook.Znak_EditPercent.Visible := false;
      frmEditRefBook.DBNumberEditEh1.Visible := false;
      frmEditRefBook.ShowModal;
      Q_POST.Refresh;
      Q_POST.Locate('ID_JOB_TITLES', frmEditRefBook.Edit1.Tag, []);
    end;
  finally
    grPost.SetFocus;
  end;

  end;
end;

procedure TfrmPositions.aExitExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmPositions.aNewExecute(Sender: TObject);
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
      frmEditRefBook.ttype             := 9;
      frmEditRefBook.Label6.Caption    := 'Должности :: добавление';
      frmEditRefBook.CheckBox1.Visible := false;
      frmEditRefBook.Label7.Visible    := false;
      frmEditRefBook.ShowModal;
      Q_POST.Refresh;
      Q_POST.Locate('ID_JOB_TITLES', frmEditRefBook.Edit1.Tag, []);
  finally
    grPost.SetFocus;
  end;
end;

procedure TfrmPositions.aRefreshExecute(Sender: TObject);
begin
 Q_POST.Close;
 Q_POST.ParamByName('V_OFFICE').AsInteger :=  id_office;
 Q_POST.Open;
 grPost.SetFocus;
end;

procedure TfrmPositions.btnHotKeysClick(Sender: TObject);
begin
  frmHotKeys.MainFormShow;
end;

procedure TfrmPositions.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('Закрыть программу?',mtConfirmation,[mbYes, mbNo],0) <> mrYes then
   Action := caNone
  else
  begin
   SaveFormState(frmPositions);  //полож.окна
   frmPositions := nil;
   Action := caFree;
  end;
end;

procedure TfrmPositions.FormCreate(Sender: TObject);
   var recUserRules : TUserRules;
begin
 Application.CreateForm(TfrmEditRefBook, frmEditRefBook);
 grPost.Font.Size := intDefFont;
 frmEditRefBook.CheckBox2.visible:=false;

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

procedure TfrmPositions.FormShow(Sender: TObject);
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

function TfrmPositions.MainFormShow : boolean;
Begin
 if not Assigned(frmPositions) then
  begin
    frmPositions := TfrmPositions.Create(Application);
    try
      frmPositions.Show;
      LoadFormState(frmPositions); //полож.окна
    finally
      null;
    end;
  end
  else
    if (frmPositions.WindowState = wsMinimized) then frmPositions.WindowState := wsNormal;
end;


end.
