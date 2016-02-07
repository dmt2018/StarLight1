unit claim_list_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, ComCtrls, DBCtrls,
  ActnList, DBGridEh, GridsEh, DBGridEhImpExp, dxBar, dxBarExtItems, cxClasses,
  ImgList, cxGraphics, DBGridEhGrouping;

type
  Tclaim_list = class(TForm)
    Panel4: TPanel;
    Panel1: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    DBText3: TDBText;
    SaveDialog1: TSaveDialog;
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
    dxBarLargeButton9: TdxBarLargeButton;
    ActionList2: TActionList;
    aExit: TAction;
    aNew: TAction;
    aEdit: TAction;
    aDel: TAction;
    aPrint1: TAction;
    aExcel: TAction;
    aRefresh: TAction;
    aFilterOn: TAction;
    aFilterOff: TAction;
    SelectAll: TAction;
    bdc_claim_list: TdxBarDockControl;
    dxBarLargeButton5: TdxBarLargeButton;
    aEnter: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure aRefreshExecute(Sender: TObject);
    procedure aExitExecute(Sender: TObject);
    procedure aExcelExecute(Sender: TObject);
    procedure aNewExecute(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure aDelExecute(Sender: TObject);
    procedure aPrint1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    path: string;
    { Public declarations }
  end;

var
  claim_list: Tclaim_list;

implementation

uses edit_claim_f, claim_show_f, DataM, editor_f;

{$R *.dfm}

// Закрытие формы
procedure Tclaim_list.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DBGridEh1.SumList.Active := false;
  DM.Q_CLAIMS_LIST.Close;
end;

// Открытие формы
procedure Tclaim_list.FormShow(Sender: TObject);
begin
  path := ExtractFilePath(Application.ExeName);
  DBGridEh1.SumList.Active := true;

  aNew.Enabled := DM.b_edit;
  aEdit.Enabled := DM.b_edit;
  aDel.Enabled := DM.b_delete;
  aPrint1.Enabled := DM.b_print;
  aExcel.Enabled := DM.b_print;
end;

// Обновление данных
procedure Tclaim_list.aRefreshExecute(Sender: TObject);
var id: integer;
begin
  if (DM.Q_CLAIMS_LIST.Active) and (DM.Q_CLAIMS_LIST.RecordCount > 0) then
  begin
    try
       id := DM.Q_CLAIMS_LISTCLAIMS_LIST_ID.AsInteger;
       DM.Q_CLAIMS_LIST.Close;
       DM.Q_CLAIMS_LIST.Open;
       DM.Q_CLAIMS_LIST.Locate('CLAIMS_LIST_ID',id,[]);
       DBGridEh1.SetFocus;
    except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
    End;
  end;
end;

// Экспорт в ексель
procedure Tclaim_list.aExcelExecute(Sender: TObject);
begin
  DBGridEh1.Selection.SelectAll;
  if SaveDialog1.Execute then
  begin
    SaveDBGridEhToExportFile(TDBGridEhExportAsXLS,TDBGridEh(screen.ActiveControl),SaveDialog1.FileName,False);
  end;
end;

// Выход
procedure Tclaim_list.aExitExecute(Sender: TObject);
begin
  close;
end;

// отрисуем грид
procedure Tclaim_list.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if ( DataCol > 7 ) and ( dm.Q_CLAIMS_LISTTTYPE.AsInteger < 3 ) then
  begin
	    DBGridEh1.Canvas.Brush.Color:=clBtnFace;
 	    DBGridEh1.Canvas.Font.Color :=clBtnFace;
  		DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

// Печать списка
procedure Tclaim_list.aPrint1Execute(Sender: TObject);
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
      DBGridEh1.SetFocus;
    end;
  End;
end;

// Просмотр данных
procedure Tclaim_list.DBGridEh1DblClick(Sender: TObject);
begin
  if DM.Q_CLAIMS_LIST.RecordCount > 0 then
  begin
    try
      claim_show := Tclaim_show.Create(Application);
      claim_show.ShowModal;
    finally
      claim_show.Free;
    end;
  end
  else ShowMessage('Нет данных для просмотра!');
end;

//
// Добавление
//
procedure Tclaim_list.aNewExecute(Sender: TObject);
begin
  try
    screen.Cursor := crHourGlass;
    edit_claim := Tedit_claim.Create(Application);

    DM.Q_CLIENTS.ParamByName('v_office').AsInteger := dm.id_office;
    DM.Q_CLIENTS.Open;

    DM.CDS_TYPES.Close;
    DM.CDS_TYPES.ParamByName('v_office').AsInteger := dm.id_office;
    DM.CDS_TYPES.ParamByName('id_dep').AsInteger := DM.Q_CLAIMSID_DEPARTMENTS.AsInteger;
    DM.CDS_TYPES.Open;

    DM.Q_NOM.Close;
    DM.Q_NOM.ParamByName('v_office').AsInteger := dm.id_office;
    DM.Q_NOM.ParamByName('id').AsInteger := DM.Q_CLAIMSINV_ID.AsInteger;
    DM.Q_NOM.Open;

    DM.Q_FLOWERS.Close;
    DM.Q_FLOWERS.ParamByName('v_office').AsInteger := dm.id_office;
    DM.Q_FLOWERS.ParamByName('dep').AsInteger := DM.Q_CLAIMSID_DEPARTMENTS.AsInteger;
    DM.Q_FLOWERS.Open;

    edit_claim.state := 1;
    edit_claim.showmodal;

    DBGridEh1.SumList.RecalcAll;
  finally
    screen.Cursor := crDefault;
    edit_claim.Free;
    DM.Q_CLIENTS.Close;
    DM.Q_FLOWERS.Close;
    DM.Q_NOM.Close;
    DM.CDS_TYPES.Close;
    DBGridEh1.SetFocus;
  end;
end;

//
// Редактирование
//
procedure Tclaim_list.aEditExecute(Sender: TObject);
begin
  if DM.Q_CLAIMS_LIST.RecordCount > 0 then
  begin
    try
        edit_claim := Tedit_claim.Create(Application);
        edit_claim.state := 2;
        edit_claim.DBComboBoxEh1.ItemIndex := DM.Q_CLAIMS_LISTTTYPE.AsInteger-1;
        edit_claim.list_supl.ItemIndex := edit_claim.list_supl.KeyItems.IndexOf(DM.Q_CLAIMS_LISTS_ID.AsString);
        edit_claim.Edit10.Text := DM.Q_CLAIMS_LISTcompiled_NAME.AsString;
        edit_claim.Edit10.Tag := DM.Q_CLAIMS_LISTFN_ID.AsInteger;
        edit_claim.Edit1.Text := DM.Q_CLAIMS_LISTQUANTITY.AsString;
        edit_claim.Edit2.Text := DM.Q_CLAIMS_LISTHFL.AsString;
        edit_claim.Edit3.Text := DM.Q_CLAIMS_LISTCUST.AsString;

        DM.Q_CLIENTS.ParamByName('v_office').AsInteger := DM.Q_CLAIMS_LISTid_office.AsInteger;
        DM.Q_CLIENTS.Open;
        DM.Q_CLIENTS.Locate('ID_CLIENTS',DM.Q_CLAIMS_LISTID_CLIENTS.AsInteger,[]);
        edit_claim.Edit5.Text := DM.Q_CLAIMS_LISTDEFECT.AsString;
        edit_claim.Edit6.Text := DM.Q_CLAIMS_LISTQUANTITY2.AsString;
        edit_claim.Edit7.Text := DM.Q_CLAIMS_LISTHFL2.AsString;
        edit_claim.Edit8.Text := DM.Q_CLAIMS_LISTCUST2.AsString;
        edit_claim.Edit9.Text := DM.Q_CLAIMS_LISTFLOWER.AsString;
        edit_claim.Memo1.Text := DM.Q_CLAIMS_LISTINFO.AsString;

        screen.Cursor := crHourGlass;

        DM.CDS_TYPES.Close;
        DM.CDS_TYPES.ParamByName('v_office').AsInteger := DM.Q_CLAIMS_LISTid_office.AsInteger;
        DM.CDS_TYPES.ParamByName('id_dep').AsInteger := DM.Q_CLAIMSID_DEPARTMENTS.AsInteger;
        DM.CDS_TYPES.Open;

        DM.Q_NOM.Close;
        DM.Q_NOM.ParamByName('v_office').AsInteger := DM.Q_CLAIMS_LISTid_office.AsInteger;
        DM.Q_NOM.ParamByName('id').AsInteger := DM.Q_CLAIMSINV_ID.AsInteger;
        DM.Q_NOM.Open;
        DM.Q_NOM.Locate('N_ID',DM.Q_CLAIMS_LISTFN_ID.AsInteger,[]);

        DM.Q_FLOWERS.Close;
        DM.Q_FLOWERS.ParamByName('v_office').AsInteger := DM.Q_CLAIMS_LISTid_office.AsInteger;
        DM.Q_FLOWERS.ParamByName('dep').AsInteger := DM.Q_CLAIMSID_DEPARTMENTS.AsInteger;
        DM.Q_FLOWERS.Open;
        DM.Q_FLOWERS.Locate('F_NAME',DM.Q_CLAIMS_LISTFLOWER.AsString,[]);

        edit_claim.showmodal;
        DBGridEh1.SumList.RecalcAll;
    finally
      screen.Cursor := crDefault;
      edit_claim.Free;
      DM.Q_CLIENTS.Close;
      DM.Q_FLOWERS.Close;
      DM.Q_NOM.Close;
      DM.CDS_TYPES.Close;
      DBGridEh1.SetFocus;
    end;
  end
  else ShowMessage('Нет данных для редактирования!');
end;

// Удаление
procedure Tclaim_list.aDelExecute(Sender: TObject);
var idd: integer;
begin
  if (DM.Q_CLAIMS_LIST.RecordCount > 0) then
  begin
      if MessageDlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin
        // Удаление заказа
          DM.Ora_SQL.SQL.Clear;
          DM.Ora_SQL.SQL.Add('DELETE FROM CLAIMS_LIST WHERE CLAIMS_LIST_ID = :ID');
          DM.Ora_SQL.ParamByName('ID').Value := DM.Q_CLAIMS_LISTCLAIMS_LIST_ID.AsInteger;

          DM.Q_CLAIMS_LIST.Next;
          idd := DM.Q_CLAIMS_LISTCLAIMS_LIST_ID.AsInteger;

          // Пытаемся выполнить SQL запрос на удаление
          try
            DM.Ora_SQL.Execute;
            DM.OraSession1.Commit;

            // Перепрыгиваем на следующую, после удаления запись
            DM.Q_CLAIMS_LIST.Refresh;
            DM.Q_CLAIMS_LIST.Locate('CLAIMS_LIST_ID',idd,[]);
            DBGridEh1.SumList.RecalcAll;
            DBGridEh1.SetFocus;
          except
            on E: Exception do
            begin
              if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
              else  ShowMessage(E.Message);
            end;
          End;
      end;
  end
  else ShowMessage('Нет данных для удаления!');
end;


end.
