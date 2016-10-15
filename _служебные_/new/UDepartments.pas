unit UDepartments;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, star_lib, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxImageComboBox, cxLabel, cxButtonEdit,
  xmldom, XMLIntf, DBAccess, Ora, MemDS, msxmldom, XMLDoc, DBClient, Xmlxform,
  ActnList, dxBar, cxBarEditItem, dxBarExtItems, cxClasses, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxControls,
  cxGridCustomView, cxGrid, cxCheckBox;

type
  TfrmDepartments = class(TForm)
    grDeps: TcxGrid;
    grDepsView: TcxGridDBTableView;
    grDepsLevel: TcxGridLevel;
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
    Q_DEPS: TOraQuery;
    Q_DEPSID_DEPARTMENTS: TIntegerField;
    Q_DEPSNAME: TStringField;
    Q_DEPSINFO: TStringField;
    Q_DEPSSTATE: TIntegerField;
    Q_DEPSID_OFFICE: TIntegerField;
    Q_DEPSNN: TFloatField;
    Q_DEPSBRIEF: TStringField;
    Q_DEPS_DS: TOraDataSource;
    grDepsNN: TcxGridDBColumn;
    grDepsName: TcxGridDBColumn;
    grDepsSTATE: TcxGridDBColumn;
    grDepsINFO: TcxGridDBColumn;
    procedure btnHotKeysClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aExitExecute(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure aNewExecute(Sender: TObject);
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
  frmDepartments: TfrmDepartments;

implementation

{$R *.dfm}

uses umain, UDM, UHotKeys, uEditRefBook;

procedure TfrmDepartments.aDeleteExecute(Sender: TObject);
var idd: integer;
    cds : TcxGridDBTableView;
begin
  if ( (grDeps.ActiveView.DataController as TcxDBDataController).DataSet.RecordCount > 0 ) then
  begin
  
  if (id_office <> (grDeps.ActiveView.DataController as TcxDBDataController).DataSet.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  try
  cds := (grDeps.ActiveLevel.GridView as TcxGridDBTableView);

  if (cds.DataController.DataSource.DataSet.active) and (cds.DataController.DataSource.DataSet.RecordCount > 0) then
  begin
    if MessageDlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      selq.Close;
      selq.SQL.Clear;
      selq.SQL.Add('begin BOOKS.delete_record(:table_, :pk_, :id_); end;');

      // Пытаемся выполнить SQL запрос на удаление
      try
          selq.ParamByName('table_').AsString := 'BOOKS_DEPARTMENTS';
          selq.ParamByName('pk_').AsString := 'ID_DEPARTMENTS';
          selq.ParamByName('id_').AsInteger := Q_DEPS.FieldByName('ID_DEPARTMENTS').Value;
          Q_DEPS.Next;
          idd := Q_DEPS.FieldByName('ID_DEPARTMENTS').Value;
          selq.Execute;
          Q_DEPS.Refresh;
          Q_DEPS.Locate('ID_DEPARTMENTS',idd,[]);
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
    grDeps.SetFocus;
  end;
  end;
end;

procedure TfrmDepartments.aEditExecute(Sender: TObject);
begin
 if ( (grDeps.ActiveView.DataController as TcxDBDataController).DataSet.RecordCount > 0 ) then
  begin

  if (id_office <> (grDeps.ActiveView.DataController as TcxDBDataController).DataSet.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  try
    if Q_DEPS.FieldByName('NAME').AsString <> '' then
    begin
      frmEditRefBook.ttype := 8;
      frmEditRefBook.Edit1.Tag := Q_DEPS.FieldByName('ID_DEPARTMENTS').AsInteger;
      frmEditRefBook.Edit1.Text := Q_DEPS.FieldByName('NAME').AsString;
      frmEditRefBook.MEMO1.Text := Q_DEPS.FieldByName('INFO').AsString;
      if Q_DEPS.FieldByName('STATE').AsInteger = 1 then frmEditRefBook.checkbox1.checked := true else frmEditRefBook.checkbox1.checked := false;
      frmEditRefBook.CheckBox1.Visible := true;
      frmEditRefBook.CheckBox1.Caption := ' является отделом продаж';
      frmEditRefBook.Label6.Caption := 'Отделы :: редактирование';
      frmEditRefBook.Label7.Visible := false;
      frmEditRefBook.Znak_EditPercent.Visible := false;
      frmEditRefBook.DBNumberEditEh1.Visible := false;
      frmEditRefBook.ShowModal;
      Q_DEPS.Refresh;
      Q_DEPS.Locate('ID_DEPARTMENTS', frmEditRefBook.Edit1.Tag, []);
    end;
  finally
    grDeps.SetFocus;
  end;
  
  end;   
end;

procedure TfrmDepartments.aExitExecute(Sender: TObject);
begin
 close;
end;

procedure TfrmDepartments.aNewExecute(Sender: TObject);
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
    frmEditRefBook.ttype             := 7;
    frmEditRefBook.Label6.Caption    := 'Отделы :: добавление';
    frmEditRefBook.CheckBox1.Visible := true;
    frmEditRefBook.CheckBox1.Caption := ' является отделом продаж';
    frmEditRefBook.Label7.Visible    := false;
    frmEditRefBook.ShowModal;
    Q_DEPS.Refresh;
    Q_DEPS.Locate('ID_DEPARTMENTS', frmEditRefBook.Edit1.Tag, []);
  finally
    grDeps.SetFocus;
  end;
end;

procedure TfrmDepartments.aRefreshExecute(Sender: TObject);
begin
 Q_DEPS.Close;
 Q_DEPS.ParamByName('V_OFFICE').AsInteger :=  id_office;
 Q_DEPS.Open;
 grDeps.SetFocus;
end;

procedure TfrmDepartments.btnHotKeysClick(Sender: TObject);
begin
  frmHotKeys.MainFormShow;
end;

procedure TfrmDepartments.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('Закрыть программу?',mtConfirmation,[mbYes, mbNo],0) <> mrYes then
   Action := caNone
  else
  begin
   SaveFormState(frmDepartments);  //полож.окна
   frmDepartments := nil;
   Action := caFree;
  end;
end;

procedure TfrmDepartments.FormCreate(Sender: TObject);
   var recUserRules : TUserRules;
begin
 Application.CreateForm(TfrmEditRefBook, frmEditRefBook);
 grDeps.Font.Size := intDefFont;
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

procedure TfrmDepartments.FormShow(Sender: TObject);
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

function TfrmDepartments.MainFormShow : boolean;
Begin
 if not Assigned(frmDepartments) then
  begin
    frmDepartments := TfrmDepartments.Create(Application);
    try
      frmDepartments.Show;
      LoadFormState(frmDepartments); //полож.окна
    finally
      null;
    end;
  end
  else
    if (frmDepartments.WindowState = wsMinimized) then frmDepartments.WindowState := wsNormal;
end;

end.
