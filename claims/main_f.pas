unit main_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, ExtCtrls,
  ActnList, DBGridEh, ImgList, GridsEh, cxStyles, dxBar, dxBarExtItems,
  cxClasses, cxGraphics, cxImageComboBox, cxBarEditItem, frxClass, DB, PI_Library_reg,
  cxCalendar, DBGridEhGrouping;

type
  Tmain = class(TForm)
    Panel4: TPanel;
    Panel8: TPanel;
    DBGridEh1: TDBGridEh;
    ImageList1: TImageList;
    cxImageList1: TcxImageList;
    bm_debt: TdxBarManager;
    bm_debtBar1: TdxBar;
    bm_debtBar2: TdxBar;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    ActionList2: TActionList;
    aExit: TAction;
    aNew: TAction;
    aEdit: TAction;
    aDel: TAction;
    aPrint1: TAction;
    aPrint2: TAction;
    aRefresh: TAction;
    aFilterOn: TAction;
    aFilterOff: TAction;
    ctrl_enter: TAction;
    SelectAll: TAction;
    SaveAll: TAction;
    Panel1: TPanel;
    dcc_main: TdxBarDockControl;
    dcc_legend: TdxBarDockControl;
    st_claims: TcxStyleRepository;
    stBed: TcxStyle;
    aHelp: TAction;
    dxBarLargeButton5: TdxBarLargeButton;
    imcb_otdel: TcxBarEditItem;
    stWarrClaim: TcxStyle;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    imgOffice: TcxBarEditItem;
    de_begin: TcxBarEditItem;
    de_end: TcxBarEditItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure aNewExecute(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure aDelExecute(Sender: TObject);
    procedure aExitExecute(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure aPrint2Execute(Sender: TObject);
    procedure ctrl_enterExecute(Sender: TObject);
    procedure aHelpExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure aPrint1Execute(Sender: TObject);
    procedure imcb_otdelPropertiesChange(Sender: TObject);
    procedure imgOfficePropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    path : string;
    { Public declarations }
  end;

var
  main: Tmain;

implementation

uses editor_f, claim_list_f, DataM, help_f;

{$R *.dfm}


procedure Tmain.imgOfficePropertiesChange(Sender: TObject);
begin
  DM.id_office := imgOffice.EditValue;
  aRefresh.Execute;
end;


procedure Tmain.FormCreate(Sender: TObject);
begin
  path := ExtractFilePath(Application.ExeName);
  imcb_otdel.EditValue := DM.curr_dep_id;
end;


procedure Tmain.FormShow(Sender: TObject);
begin
  imcb_otdelPropertiesChange(Sender);
end;

procedure Tmain.imcb_otdelPropertiesChange(Sender: TObject);
begin

  imgOffice.Enabled := (GetOfficeID = 1);
  DBGridEh1.FieldColumns['BRIEF'].Visible := not (GetOfficeID = DM.id_office); //imgOffice.Enabled;

  if (imgOffice.Enabled) then
  begin
      try
        DM.Ora_SQL.Close;
        DM.Ora_SQL.SQL.Clear;
        DM.Ora_SQL.SQL.Add('SELECT ID_OFFICE, OFFICE_NAME FROM OFFICES ORDER BY OFFICE_NAME');
        DM.Ora_SQL.Open;
      except
        on E: Exception do ShowMessage(E.Message);
      end;

      imgOffice.Properties.OnChange := nil;
      FillImgComboCxItm(DM.Ora_SQL, imgOffice, 'Все...');
      imgOffice.EditValue := DM.id_office;
      imgOffice.Properties.OnChange := imgOfficePropertiesChange;
  end;



  DM.curr_dep_id := imcb_otdel.EditValue;
  with DM.Ora_SQL do
  Begin
      Close;
      SQL.Clear;
      SQL.Add('begin starter.get_rules(:login_, :id_dep_, :cursor_); end;');
      ParamByName('id_dep_').AsInteger := DM.curr_dep_id;
      ParamByName('login_').AsString   := UpperCase(DM.OraSession1.Username);
      ParamByName('cursor_').DataType  := ftCursor;
      Open;
      Filter := 'id_programs=10';
      Filtered := true;

      if (RecordCount > 0) then
      begin
         if FieldByName('C_EDIT').AsInteger=1 then DM.b_edit := true else DM.b_edit := false;
         if FieldByName('C_DEL').AsInteger=1 then DM.b_delete := true else DM.b_delete := false;
         if FieldByName('C_PRINT').AsInteger=1 then DM.b_print := true else DM.b_print := false;
         if FieldByName('C_ADDIT').AsInteger=1 then DM.b_addit := true else DM.b_addit := false;
         aRefresh.Enabled := true;
         aRefresh.Execute;
      end
      else
      begin
        DM.b_edit   := false;
        DM.b_delete := false;
        DM.b_print  := false;
        DM.b_addit  := false;
        aRefresh.Enabled := false;
        DM.Q_CLAIMS.Close;
      end;

      DBGridEh1.SumList.Active := true;
      aNew.Enabled    := DM.b_edit;
      aEdit.Enabled   := DM.b_edit;
      aDel.Enabled    := DM.b_delete;
      aPrint1.Enabled := DM.b_print;
      aPrint2.Enabled := DM.b_print;
  End;
end;


//
// Добавление записи
//
procedure Tmain.aNewExecute(Sender: TObject);
begin
  try
    editor := Teditor.Create(Application);
    editor.state := 1;
    editor.Caption := ' Добавление претензии';
    editor.DBNumberEditEh1.Value := 0;
    editor.DBEditEh1.Text := '';
    editor.DBGridEh1.Enabled := true;
    dm.Q_INV.ParamByName('dep').AsInteger := imcb_otdel.EditValue;
    dm.Q_INV.Open;
    editor.DBEditEh1.tag := 0;
    editor.showmodal;
    dm.Q_INV.Close;
  finally
    editor.Free;
    dm.Q_INV.Close;
    DBGridEh1.SetFocus;
  end;
end;


//
// Редактирование записи
//
procedure Tmain.aEditExecute(Sender: TObject);
var ind: integer;
begin
  if (DM.Q_CLAIMS.Active) and (DM.Q_CLAIMS.RecordCount > 0) then
  begin
    ind := DM.Q_CLAIMSCLAIMS_ID.AsInteger;
    try
      if ind > 0 then
      begin
        editor := Teditor.Create(Application);
        editor.state := 2;
        editor.Caption := ' Редактирование претензии';
        editor.DBNumberEditEh1.Value := DM.Q_CLAIMSN_TRACK.AsInteger;
        editor.DBEditEh1.Text := DM.Q_CLAIMSDOP_INFO.AsString;
        dm.Q_INV.ParamByName('dep').AsInteger := imcb_otdel.EditValue;
        dm.Q_INV.Open;
        dm.Q_INV.Locate('inv_id',DM.Q_CLAIMSINV_ID.AsInteger,[]);
        editor.DBEditEh1.tag := ind;
        editor.DBGridEh1.Enabled := false;
        editor.showmodal;
        dm.Q_INV.Close;
        editor.Free;
        DBGridEh1.SetFocus;
      end;
    except
      on E: Exception do
      begin
        editor.Free;
        dm.Q_INV.Close;
        MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
      end;
    End;
  end
  else ShowMessage('Нет данных для редактирования!');
end;


//
// Удаление записи
//
procedure Tmain.aDelExecute(Sender: TObject);
var ccode: string;
    idd: integer;
begin
  if (DM.Q_CLAIMSSENDED_TO_WAREHOUSE.AsInteger = 0) or (DM.Q_CLAIMSINV_MINUS.AsInteger > 0) then
     MessageBox(Handle, 'Клейм с минусовым инвойсом или с подгруженным инвойсом удалить нельзя', 'Внимание!', MB_ICONWARNING)
  else
  begin
    if (DM.Q_CLAIMS.FieldByName('CLAIMS_ID').AsInteger > 0) then
    begin
      if MessageDlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
          // Удаление заказа
          try
            DM.Ora_SQL.SQL.Clear;
            DM.Ora_SQL.SQL.Add('DELETE FROM CLAIMS WHERE CLAIMS_ID = :ID');
            DM.Ora_SQL.ParamByName('ID').Value := DM.Q_CLAIMS.FieldByName('CLAIMS_ID').AsInteger;
            DM.Q_CLAIMS.Next;
            idd := DM.Q_CLAIMSCLAIMS_ID.AsInteger;

            // Пытаемся выполнить SQL запрос на удаление
            DM.Ora_SQL.Execute;

            // Перепрыгиваем на следующую, после удаления запись
            DM.Q_CLAIMS.Refresh;
            DM.Q_CLAIMS.Locate('CLAIMS_ID',idd,[]);
            DBGridEh1.SetFocus;
          except
            on E: Exception do
              MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
          End;
      end;
    end
    else ShowMessage('Нет данных для удаления!');
  end;
end;


// Закрыть программу
procedure Tmain.aExitExecute(Sender: TObject);
begin
  if MessageDlg('Закрыть программу?',mtConfirmation,[mbYes, mbNo],0) = mrYes then close;
end;


//
// Закрытие формы
//
procedure Tmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DBGridEh1.SumList.Active := false;
  DM.OraSession1.Close;
end;


//
// Обновление данных
//
procedure Tmain.aRefreshExecute(Sender: TObject);
var i: integer;
begin
if (imcb_otdel.EditValue > 0) then
begin
  if (DM.Q_CLAIMS.Active) and (DM.Q_CLAIMS.RecordCount > 0) then
    i := DM.Q_CLAIMSCLAIMS_ID.AsInteger;

  DM.Q_CLAIMS.Close;
  DM.Q_CLAIMS.ParamByName('id_dep_').AsInteger := imcb_otdel.EditValue;
  if (de_begin.EditValue = null) or (de_end.EditValue = null) then
  begin
    DM.Q_CLAIMS.ParamByName('d1').Value := null;
    DM.Q_CLAIMS.ParamByName('d2').Value := null;
  end
  else
  begin
    DM.Q_CLAIMS.ParamByName('d1').AsDate := de_begin.EditValue;
    DM.Q_CLAIMS.ParamByName('d2').AsDate := de_end.EditValue;
  end;
  DM.Q_CLAIMS.Open;
  if (i > 0) then
    DM.Q_CLAIMS.Locate('CLAIMS_ID',i,[]);
  DBGridEh1.SetFocus;
end else MessageBox(Handle,'Выберите отдел!','Внимание', MB_ICONERROR);
end;


//
// печать списка клеймов
//
procedure Tmain.aPrint1Execute(Sender: TObject);
var Memo1: TfrxMemoView;
begin
  try
    if DM.Q_CLAIMS.RecordCount > 0 then
    begin
      DM.Q_CLAIMS.DisableControls;
      DM.frxReport1.LoadFromFile(path+'raports\claims_all.fr3');
      Memo1 := DM.frxReport1.FindObject('Memo6') as TfrxMemoView;
      Memo1.Text := imcb_otdel.Properties.GetDisplayText(imcb_otdel.EditValue,true,true);
      DM.frxReport1.ShowReport;
      DM.Q_CLAIMS.EnableControls;
      DBGridEh1.SetFocus;
    end;
  except
    on E: Exception do
    begin
      DM.Q_CLAIMS.EnableControls;
      ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    end;
  End;
end;


//
// печать клейма
//
procedure Tmain.aPrint2Execute(Sender: TObject);
begin
  try
    if DM.Q_CLAIMSPERCENT2.AsFloat <> 0 then
    begin
      DM.Q_CLAIMS_LIST.DisableControls;
      DM.frxReport1.LoadFromFile(path+'raports\claims.fr3');
      DM.frxReport1.ShowReport;
      DM.Q_CLAIMS_LIST.EnableControls;
      DBGridEh1.SetFocus;
    end;
  except
    on E: Exception do
    begin
      DM.Q_CLAIMS_LIST.EnableControls;
      ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    end;
  End;
end;


//
// просмотр клейма
//
procedure Tmain.DBGridEh1DblClick(Sender: TObject);
begin
  ctrl_enter.Execute;
end;

//
// просмотр клейма
//
procedure Tmain.ctrl_enterExecute(Sender: TObject);
begin
  if (DM.Q_CLAIMS.Active) and (DM.Q_CLAIMS.RecordCount > 0) then
  begin
    try
      DM.Q_CLAIMS_LIST.Open;
      claim_list := Tclaim_list.Create(Application);
      claim_list.showmodal;
    finally
      claim_list.Free;
      DBGridEh1.SetFocus;
    end;
  end;
end;


//
// Вызов помощи
//
procedure Tmain.aHelpExecute(Sender: TObject);
begin
  try
    help := Thelp.Create(Application);
    help.showmodal;
  finally
    help.Free;
    DBGridEh1.SetFocus;
  end;
end;


//
// Прорисовка таблицы
//
procedure Tmain.DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
var Style: integer;
begin
  if (Column.FieldName = 'CLAIMS_ID') and (DM.Q_CLAIMSPERCENT2.AsFloat > 0.8) then
  begin
      DBGridEh1.Canvas.Brush.Color := stBed.Color;
 	    DBGridEh1.Canvas.FillRect(Rect);
  		DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	End;

  if (Column.FieldName = 'MINUS_INV_ID') and (DM.Q_CLAIMSINV_MINUS.AsInteger = 3) then
  begin
      DBGridEh1.Canvas.Brush.Color := stWarrClaim.Color;
      DBGridEh1.Canvas.Font.Color := clBlack;
 	    DBGridEh1.Canvas.FillRect(Rect);
  		DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	End;

end;


end.
