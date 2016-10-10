unit URegions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, star_lib, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxCalendar, cxCurrencyEdit,
  cxImageComboBox, cxLabel, cxButtonEdit, xmldom, XMLIntf, DBClient, Xmlxform,
  msxmldom, XMLDoc, DBAccess, Ora, ActnList, dxBar, cxBarEditItem, ComObj,
  dxBarExtItems, cxClasses, MemDS, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxControls, cxGridCustomView, cxGrid;

type
  TfrmRegions = class(TForm)
    grRegions: TcxGrid;
    grRegionsView: TcxGridDBTableView;
    grRegionsLevel: TcxGridLevel;
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
    SelQ: TOraQuery;
    Q_REGIONS: TOraQuery;
    Q_REGIONSID_REGIONS: TIntegerField;
    Q_REGIONSNAME: TStringField;
    Q_REGIONSINFO: TStringField;
    Q_REGIONSID_OFFICE: TIntegerField;
    Q_REGIONSNN: TFloatField;
    Q_REGIONSBRIEF: TStringField;
    Q_REGIONSKLADR: TStringField;
    Q_REGIONSKOD: TStringField;
    Q_REGIONS_DS: TOraDataSource;
    grRegionsNN: TcxGridDBColumn;
    grRegionsName: TcxGridDBColumn;
    grRegionsInfo: TcxGridDBColumn;
    grRegionsKladr: TcxGridDBColumn;
    grRegionsKod: TcxGridDBColumn;
    AlMain: TActionList;
    aRefresh: TAction;
    aNew: TAction;
    aEdit: TAction;
    aDelete: TAction;
    aExit: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aRefreshExecute(Sender: TObject);
    procedure aExitExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure aNewExecute(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure aDeleteExecute(Sender: TObject);
    procedure btnHotKeysClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    id_office: integer;
    function MainFormShow : boolean;
  end;

var
  frmRegions: TfrmRegions;

implementation

{$R *.dfm}

uses umain, UDM, UHotKeys, UEditRefBook;


function TfrmRegions.MainFormShow : boolean;
Begin
 if not Assigned(frmRegions) then
  begin
    frmRegions := TfrmRegions.Create(Application);
    try
      frmRegions.Show;
      LoadFormState(frmRegions); //полож.окна
    finally
      null;
    end;
  end
  else
    if (frmRegions.WindowState = wsMinimized) then frmRegions.WindowState := wsNormal;
end;

procedure TfrmRegions.aDeleteExecute(Sender: TObject);
var idd: integer;
    cds : TcxGridDBTableView;
begin
  if ( (grRegions.ActiveView.DataController as TcxDBDataController).DataSet.RecordCount > 0 ) then
  begin
  
  if (id_office <> (grRegions.ActiveView.DataController as TcxDBDataController).DataSet.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  try
  cds := (grRegions.ActiveLevel.GridView as TcxGridDBTableView);

  if (cds.DataController.DataSource.DataSet.active) and (cds.DataController.DataSource.DataSet.RecordCount > 0) then
  begin
    if MessageDlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      selq.Close;
      selq.SQL.Clear;
      selq.SQL.Add('begin BOOKS.delete_record(:table_, :pk_, :id_); end;');

      // Пытаемся выполнить SQL запрос на удаление
      try
          selq.ParamByName('table_').AsString := 'BOOKS_REGIONS';
          selq.ParamByName('pk_').AsString := 'ID_REGIONS';
          selq.ParamByName('id_').AsInteger := Q_REGIONS.FieldByName('ID_REGIONS').Value;
          Q_REGIONS.Next;
          idd := Q_REGIONS.FieldByName('ID_REGIONS').Value;
          selq.Execute;
          Q_REGIONS.Refresh;
          Q_REGIONS.Locate('ID_REGIONS',idd,[]);
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
    grRegions.SetFocus;
  end;
  end;
end;

procedure TfrmRegions.aEditExecute(Sender: TObject);
begin
 if ( (grRegions.ActiveView.DataController as TcxDBDataController).DataSet.RecordCount > 0 ) then
  begin

  if (id_office <> (grRegions.ActiveView.DataController as TcxDBDataController).DataSet.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;
  try
    if Q_REGIONS.FieldByName('NAME').AsString <> '' then
    begin
      frmEditRefBook.ttype := 2;
      frmEditRefBook.Edit1.Tag := Q_REGIONS.FieldByName('ID_REGIONS').AsInteger;
      frmEditRefBook.Edit1.Text := Q_REGIONS.FieldByName('NAME').AsString;
      frmEditRefBook.MEMO1.Text := Q_REGIONS.FieldByName('INFO').AsString;
      frmEditRefBook.Label6.Caption := 'Регионы :: редактирование';
      frmEditRefBook.CheckBox1.Visible := false;
      frmEditRefBook.Label7.Visible := false;
      frmEditRefBook.Znak_EditPercent.Visible := false;
      frmEditRefBook.DBNumberEditEh1.Visible := false;
      frmEditRefBook.pnlCity.Visible    := true;
      frmEditRefBook.Label8.Caption     := 'Код региона';
      frmEditRefBook.Label9.Visible     := false;
      frmEditRefBook.Label10.Visible    := false;
      frmEditRefBook.imcbRegion.Visible := false;
      frmEditRefBook.Edit2.Text := Q_REGIONS.FieldByName('KOD').AsString;
      frmEditRefBook.Edit3.Text := Q_REGIONS.FieldByName('KLADR').AsString;
      frmEditRefBook.ShowModal;
      Q_REGIONS.Refresh;
      Q_REGIONS.Locate('id_regions', frmEditRefBook.Edit1.Tag, []);
    end;
  finally
    grRegions.SetFocus;
  end;
  end;
end;

procedure TfrmRegions.aExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmRegions.aNewExecute(Sender: TObject);
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
      frmEditRefBook.ttype              := 1;
      frmEditRefBook.Label6.Caption     := 'Регионы :: добавление';
      frmEditRefBook.CheckBox1.Visible  := false;
      frmEditRefBook.Label7.Visible     := false;
      frmEditRefBook.pnlCity.Visible    := true;
      frmEditRefBook.Label8.Caption     := 'Код региона';
      frmEditRefBook.Label9.Visible     := false;
      frmEditRefBook.Label10.Visible    := false;
      frmEditRefBook.imcbRegion.Visible := false;
      frmEditRefBook.ShowModal;
      Q_REGIONS.Refresh;
      Q_REGIONS.Locate('id_regions', frmEditRefBook.Edit1.Tag, []);
  finally
    grRegions.SetFocus;
  end;    
end;

procedure TfrmRegions.aRefreshExecute(Sender: TObject);
begin
 Q_REGIONS.Close;
 Q_REGIONS.ParamByName('V_OFFICE').AsInteger :=  id_office;
 Q_REGIONS.Open;
 grRegions.SetFocus;
end;

procedure TfrmRegions.btnHotKeysClick(Sender: TObject);
begin
  frmHotKeys.MainFormShow;
end;

procedure TfrmRegions.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('Закрыть программу?',mtConfirmation,[mbYes, mbNo],0) <> mrYes then
    Action := caNone
  else
  begin
    SaveFormState(frmRegions); //полож.окна
    frmRegions := nil;
    Action := caFree;
  end;
end;



procedure TfrmRegions.FormCreate(Sender: TObject);
   var recUserRules : TUserRules;
begin
 Application.CreateForm(TfrmEditRefBook, frmEditRefBook);
 grRegions.Font.Size := intDefFont;
 frmEditRefBook.CheckBox2.Visible:=false;

  // получение прав на программу
  {recUserRules  := getRules(DM.cdsRules,13);
  p_read        := recUserRules.r_read;
  p_edit        := recUserRules.r_edit;
  p_delete      := recUserRules.r_delete;
  p_print       := recUserRules.r_print;

  aNew.Enabled    := p_edit;
  aEdit.Enabled   := p_edit;
  aDelete.Enabled := p_delete;
  }

end;

procedure TfrmRegions.FormShow(Sender: TObject);
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

end.
