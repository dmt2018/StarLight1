unit UUnits;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, star_lib, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxImageComboBox, cxLabel, cxButtonEdit,
  ActnList, dxBar, cxBarEditItem, dxBarExtItems, cxClasses, DBAccess, Ora,
  MemDS, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxControls, cxGridCustomView, cxGrid;

type
  TfrmUnits = class(TForm)
    grUnits: TcxGrid;
    grUnitsView: TcxGridDBTableView;
    grUnitsLevel: TcxGridLevel;
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
    grUnitsKod: TcxGridDBColumn;
    grUnitsName: TcxGridDBColumn;
    grUnitsZnak1: TcxGridDBColumn;
    grUnitsZnak2: TcxGridDBColumn;
    grUnitsKodZnak1: TcxGridDBColumn;
    grUnitsKodZnak2: TcxGridDBColumn;
    Q_CDS: TOraQuery;
    Q_CDSNSI_UNITS_ID: TFloatField;
    Q_CDSUNIT_CODE: TIntegerField;
    Q_CDSNSI_NAME: TStringField;
    Q_CDSSYMBOL_NATIONAL: TStringField;
    Q_CDSSYMBOL_INTERNATIONAL: TStringField;
    Q_CDSCODE_LETTERING_NATIONAL: TStringField;
    Q_CDSCODE_LETTERING_INTERNATIONAL: TStringField;
    Q_CDS_DS: TOraDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aExitExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure aNewExecute(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure btnHotKeysClick(Sender: TObject);
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
  frmUnits: TfrmUnits;

implementation

{$R *.dfm}


 uses umain, UDM, UHotKeys;

procedure TfrmUnits.aDeleteExecute(Sender: TObject);
var idd: integer;
    cds : TcxGridDBTableView;
begin
  if ( (grUnits.ActiveView.DataController as TcxDBDataController).DataSet.RecordCount > 0 ) then
  begin
  
  if (id_office <> (grUnits.ActiveView.DataController as TcxDBDataController).DataSet.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  try
  cds := (grUnits.ActiveLevel.GridView as TcxGridDBTableView);

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
         selq.ParamByName('id_').AsInteger := Q_CDS.FieldByName('ID_CLIENT_TYPES').Value;
         Q_CDS.Next;
         idd := Q_CDS.FieldByName('ID_CLIENT_TYPES').Value;
         selq.Execute;
         Q_CDS.Refresh;
         Q_CDS.Locate('ID_CLIENT_TYPES',idd,[]);
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
    grUnits.SetFocus;
  end;
  end;
end;

procedure TfrmUnits.aEditExecute(Sender: TObject);
begin
            {  if ( (grUnits.ActiveView.DataController as TcxDBDataController).DataSet.RecordCount > 0 ) then
  begin

  if (id_office <> (grUnits.ActiveView.DataController as TcxDBDataController).DataSet.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  frmeditCountries := TfrmEditCountries.Create(Application);
  try
    if Q_CDS.FieldByName('NAME').AsString <> '' then
    begin
      frmEditClientTypes.ttype := 6;
      frmEditClientTypes.Edit1.Tag := Q_CT.FieldByName('ID_CLIENT_TYPES').AsInteger;
      frmEditClientTypes.Edit1.Text := Q_CT.FieldByName('NAME').AsString;
      frmEditClientTypes.MEMO1.Text := Q_CT.FieldByName('INFO').AsString;
      frmEditClientTypes.Label6.Caption := 'Типы клиентов :: редактирование';
      frmEditClientTypes.CheckBox1.Caption := ' печать № свидетельства о регистрации';
      frmEditClientTypes.CheckBox1.Visible := true;
      if Q_CDS.FieldByName('T_TYPE').AsInteger = 1 then frmEditClientTypes.checkbox1.checked := true else frmEditClientTypes.checkbox1.checked := false;
      if Q_CDS.FieldByName('is_contractor').AsInteger = 1 then frmEditClientTypes.checkbox2.checked := true else frmEditClientTypes.checkbox2.checked := false;
      frmEditClientTypes.Label7.Visible := true;
      frmEditClientTypes.Znak_EditPercent.Visible := true;
      frmEditClientTypes.DBNumberEditEh1.Visible := true;
      if (Q_SUP.FieldByName('DISCOUNT').AsInteger>0) then frmEditClientTypes.Znak_EditPercent.ItemIndex:=1;
      if (Q_SUP.FieldByName('DISCOUNT').AsInteger<0) then frmEditClientTypes.Znak_EditPercent.ItemIndex:=0;
      frmEditClientTypes.DBNumberEditEh1.Text:=inttostr(ABS(Q_CT.FieldByName('DISCOUNT').AsInteger));
      frmEditClientTypes.ShowModal;
      Q_CDS.Refresh;
      Q_CDS.Locate('ID_CLIENT_TYPES', frmEditClientTypes.Edit1.Tag, []);
    end;
  finally
    frmEditClientTypes.Free;
    grUnits.SetFocus;
  end;
  
  end;   }
end;

procedure TfrmUnits.aExitExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmUnits.aNewExecute(Sender: TObject);
begin
{   if id_office > 1 then
  begin
    MessageBox(Handle,'Вид данных добавляется только через главный офис компании.','Внимание!',MB_ICONERROR);
    exit;
  end;
       
  frmEditClientTypes := TfrmEditClientTypes.Create(Application);

  try
    frmEditClientTypes.Znak_EditPercent.Visible := false;
    frmEditClientTypes.DBNumberEditEh1.Visible  := false;
    frmEditClientTypes.Edit1.Text               := '';
    frmEditClientTypes.Edit1.Tag                := 0;
    frmEditClientTypes.Memo1.Lines.Clear;
    frmEditClientTypes.ttype                    := 5;
    frmEditClientTypes.Label6.Caption           := 'Типы клиентов :: добавление';
    frmEditClientTypes.CheckBox1.Visible        := true;
    frmEditClientTypes.CheckBox1.Caption        := ' печать № свидетельства о регистрации';
    frmEditClientTypes.Label7.Visible           := true;
    frmEditClientTypes.DBNumberEditEh1.Visible  := true;
    frmEditClientTypes.Znak_EditPercent.Visible := true;
    frmEditClientTypes.ShowModal;
    Q_CDS.Refresh;
    Q_CDS.Locate('ID_CLIENT_TYPES', frmEditClientTypes.Edit1.Tag, []);
  finally
    frmEditClientTypes.Free;
    grUnits.SetFocus;
  end;    }
end;

procedure TfrmUnits.aRefreshExecute(Sender: TObject);
begin
 Q_CDS.Close;
 Q_CDS.Open;
 grUnits.SetFocus;
end;

procedure TfrmUnits.btnHotKeysClick(Sender: TObject);
begin
  frmHotKeys.MainFormShow;
end;

procedure TfrmUnits.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('Закрыть программу?',mtConfirmation,[mbYes, mbNo],0) <> mrYes then
   Action := caNone
  else
  begin
   SaveFormState(frmUnits);  //полож.окна
   frmUnits := nil;
   Action := caFree;
  end;
end;

procedure TfrmUnits.FormCreate(Sender: TObject);
var recUserRules : TUserRules;
begin
  grUnits.Font.Size := intDefFont;

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

procedure TfrmUnits.FormShow(Sender: TObject);
begin
 try
  if (imgOffice.Enabled) then
  begin
   try
    id_office := GetOfficeID;
    imgOffice.Enabled := (id_office = 1);
    //grClientTypes.Columns[0].Visible := imgOffice.Enabled;

    imgOffice.Properties.OnChange := nil;
    SelQ.Close;
    SelQ.SQL.Clear;
    SelQ.SQL.Add('SELECT ID_OFFICE, OFFICE_NAME FROM OFFICES ORDER BY OFFICE_NAME');
    SelQ.Open;
    SelQ.Close;
    imgOffice.EditValue := id_office;
    //imgOffice.Properties.OnChange := imgOfficePropertiesChange;

    Q_CDS.Open;
   except
    on E: Exception do ShowMessage(E.Message);
   end;
  end;
 finally
  grUnits.SetFocus;
 end;
end;

function TfrmUnits.MainFormShow : boolean;
Begin
 if not Assigned(frmUnits) then
  begin
    frmUnits := TfrmUnits.Create(Application);
    try
      frmUnits.Show;
      LoadFormState(frmUnits); //полож.окна
    finally
      null;
    end;
  end
  else
    if (frmUnits.WindowState = wsMinimized) then frmUnits.WindowState := wsNormal;
end;



end.
