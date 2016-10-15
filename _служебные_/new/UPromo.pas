unit UPromo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, ComObj,
  Dialogs, StdCtrls, star_lib, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxImageComboBox, cxLabel,
  cxButtonEdit, xmldom, XMLIntf, DBAccess, Ora, MemDS, msxmldom, XMLDoc,
  DBClient, Xmlxform, ActnList, dxBar, cxBarEditItem, dxBarExtItems, cxClasses,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxControls, cxGridCustomView, cxGrid;

type
  TfrmPromo = class(TForm)
    grPromo: TcxGrid;
    grPromoView: TcxGridDBTableView;
    grPromoLevel: TcxGridLevel;
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
    Q_Promo: TOraQuery;
    Q_PromoID_ADVERTISMENTS: TIntegerField;
    Q_PromoNAME: TStringField;
    Q_PromoINFO: TStringField;
    Q_PromoID_OFFICE: TIntegerField;
    Q_PromoNN: TFloatField;
    Q_PromoBRIEF: TStringField;
    Q_Promo_DS: TOraDataSource;
    grPromoNN: TcxGridDBColumn;
    grPromoName: TcxGridDBColumn;
    grPromoInfo: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure aNewExecute(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure aDeleteExecute(Sender: TObject);
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
  frmPromo: TfrmPromo;

implementation

{$R *.dfm}

 uses umain, UDM, UHotKeys, uEditRefBook;

procedure TfrmPromo.FormCreate(Sender: TObject);
   var recUserRules : TUserRules;
begin
 Application.CreateForm(TfrmEditRefBook, frmEditRefBook);
 grPromo.Font.Size := intDefFont;
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

procedure TfrmPromo.FormShow(Sender: TObject);
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

function TfrmPromo.MainFormShow : boolean;
Begin
 if not Assigned(frmPromo) then
  begin
    frmPromo := TfrmPromo.Create(Application);
    try
      frmPromo.Show;
      LoadFormState(frmPromo); //полож.окна
    finally
      null;
    end;
  end
  else
    if (frmPromo.WindowState = wsMinimized) then frmPromo.WindowState := wsNormal;
end;

procedure TfrmPromo.aDeleteExecute(Sender: TObject);
var idd: integer;
    cds : TcxGridDBTableView;
begin
  if ( (grPromo.ActiveView.DataController as TcxDBDataController).DataSet.RecordCount > 0 ) then
  begin
  
  if (id_office <> (grPromo.ActiveView.DataController as TcxDBDataController).DataSet.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  try
  cds := (grPromo.ActiveLevel.GridView as TcxGridDBTableView);

  if (cds.DataController.DataSource.DataSet.active) and (cds.DataController.DataSource.DataSet.RecordCount > 0) then
  begin
    if MessageDlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      selq.Close;
      selq.SQL.Clear;
      selq.SQL.Add('begin BOOKS.delete_record(:table_, :pk_, :id_); end;');

      // Пытаемся выполнить SQL запрос на удаление
      try
          selq.ParamByName('table_').AsString := 'BOOKS_ADVERTISMENTS';
          selq.ParamByName('pk_').AsString := 'ID_ADVERTISMENTS';
          selq.ParamByName('id_').AsInteger := Q_promo.FieldByName('ID_ADVERTISMENTS').Value;
          Q_promo.Next;
          idd := Q_promo.FieldByName('ID_ADVERTISMENTS').Value;
          selq.Execute;
          Q_promo.Refresh;
          Q_promo.Locate('ID_ADVERTISMENTS',idd,[]);
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
    grPromo.SetFocus;
  end;
  end;
end;


procedure TfrmPromo.aEditExecute(Sender: TObject);
begin
 if ( (grPromo.ActiveView.DataController as TcxDBDataController).DataSet.RecordCount > 0 ) then
  begin

  if (id_office <> (grPromo.ActiveView.DataController as TcxDBDataController).DataSet.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  try
    if Q_Promo.FieldByName('NAME').AsString <> '' then
    begin
      frmEditRefBook.ttype := 4;
      frmEditRefBook.Edit1.Tag := Q_Promo.FieldByName('ID_ADVERTISMENTS').AsInteger;
      frmEditRefBook.Edit1.Text := Q_Promo.FieldByName('NAME').AsString;
      frmEditRefBook.MEMO1.Text := Q_Promo.FieldByName('INFO').AsString;
      frmEditRefBook.Label6.Caption := 'Источники рекламы :: редактирование';
      frmEditRefBook.CheckBox1.Visible := false;
      frmEditRefBook.Label7.Visible := false;
      frmEditRefBook.Znak_EditPercent.Visible := false;
      frmEditRefBook.DBNumberEditEh1.Visible := false;
      frmEditRefBook.ShowModal;
      Q_Promo.Refresh;
      Q_Promo.Locate('ID_ADVERTISMENTS', frmEditRefBook.Edit1.Tag, []);
    end;
  finally
    grPromo.SetFocus;
  end;
  
  end;
end;

procedure TfrmPromo.aExitExecute(Sender: TObject);
begin
 close;
end;

procedure TfrmPromo.aNewExecute(Sender: TObject);
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
    frmEditRefBook.ttype              := 3;
    frmEditRefBook.Label6.Caption     := 'Источники рекламы :: добавление';
    frmEditRefBook.CheckBox1.Visible  := false;
    frmEditRefBook.Label7.Visible     := false;
    frmEditRefBook.ShowModal;
    Q_Promo.Refresh;
    Q_Promo.Locate('ID_ADVERTISMENTS', frmEditRefBook.Edit1.Tag, []);
  finally
    grPromo.SetFocus;
  end;

end;

procedure TfrmPromo.aRefreshExecute(Sender: TObject);
begin
 Q_Promo.Close;
 Q_Promo.ParamByName('V_OFFICE').AsInteger :=  id_office;
 Q_Promo.Open;
 grPromo.SetFocus;
end;

procedure TfrmPromo.btnHotKeysClick(Sender: TObject);
begin
  frmHotKeys.MainFormShow;
end;

procedure TfrmPromo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('Закрыть программу?',mtConfirmation,[mbYes, mbNo],0) <> mrYes then
   Action := caNone
  else
  begin
   SaveFormState(frmPromo);  //полож.окна
   frmPromo := nil;
   Action := caFree;
  end;
end;

end.
