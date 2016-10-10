unit USuppliers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, star_lib, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxImageComboBox, cxLabel, cxButtonEdit,
  ActnList, dxBar, cxBarEditItem, dxBarExtItems, cxClasses, DBAccess, Ora,
  MemDS, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxControls, cxGridCustomView, cxGrid, cxCheckBox;

type
  TfrmSuppliers = class(TForm)
    grSuppliers: TcxGrid;
    grSuppliersView: TcxGridDBTableView;
    grSuppliersLevel: TcxGridLevel;
    Q_SUP_DS: TOraDataSource;
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
    Q_Sup: TOraQuery;
    Q_SupS_ID: TFloatField;
    Q_SupS_NAME_RU: TStringField;
    Q_SupC_ID: TFloatField;
    Q_SupNEED_CUST: TIntegerField;
    Q_SupCOUNTRY: TStringField;
    Q_SupNN: TFloatField;
    Q_SupID_OFFICE: TIntegerField;
    Q_SupANALYZE_DAYS: TIntegerField;
    Q_SupIS_ACTIVE: TFloatField;
    grSuppliersNN: TcxGridDBColumn;
    grSuppliersName: TcxGridDBColumn;
    grSuppliersCountry: TcxGridDBColumn;
    grSuppliersGTD: TcxGridDBColumn;
    grSuppliersDays: TcxGridDBColumn;
    grSuppliersPassiv: TcxGridDBColumn;
    procedure btnHotKeysClick(Sender: TObject);
    procedure aExitExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  frmSuppliers: TfrmSuppliers;

implementation

{$R *.dfm}

 uses umain, UDM, UHotKeys, uEditRefBook;

procedure TfrmSuppliers.aDeleteExecute(Sender: TObject);
var OutText : string;
begin
if (Q_SUP.RecordCount > 0) then
begin
  if MessageDlg('Вы действительно хотите удалить страну?',mtConfirmation,[mbNo,mbYes],0) = mrYes then
  Begin
    try
        with selq do
        Begin
          frmSuppliers.selq.SQL.Clear;
          frmSuppliers.selq.SQL.Add('begin NOMENCLATURE_PKG.DELETE_SUPPLIERS(:S_ID_, :OUT_TEXT); end;');
          ParamByName('S_ID_').Value := Q_SUP.FieldByName('S_ID').Value;
          Execute;
          OutText := ParamByName('OUT_TEXT').asstring;

          if (OutText <> '') then
            MessageBox(Handle, PChar(OutText), 'Ошибка', MB_ICONWARNING)
          else
            Q_SUP.Refresh;
        End;
    Except on E:Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;
  grSuppliers.SetFocus;
end;
end;

procedure TfrmSuppliers.aEditExecute(Sender: TObject);
begin
 if ( (grSuppliers.ActiveView.DataController as TcxDBDataController).DataSet.RecordCount > 0 ) then
  begin

  if (id_office <> (grSuppliers.ActiveView.DataController as TcxDBDataController).DataSet.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  try
    if Q_SUP.FieldByName('S_NAME_RU').AsString <> '' then
    begin
    frmEditRefBook.ttype                    := 16;
    frmEditRefBook.Znak_EditPercent.Visible := false;
    frmEditRefBook.DBNumberEditEh1.Visible  := false;
    frmEditRefBook.Edit1.Tag                := Q_SUP.FieldByName('S_ID').AsInteger;
    frmEditRefBook.Edit1.Text               := Q_SUP.FieldByName('S_NAME_RU').AsString;
    frmEditRefBook.imcbRegion.EditValue     := Q_SUP.FieldByName('C_ID').AsInteger;
    if Q_SUP.FieldByName('NEED_CUST').AsString = '1' then frmEditRefBook.CheckBox1.Checked := true;
    if Q_SUP.FieldByName('NEED_CUST').AsString = '0' then frmEditRefBook.CheckBox1.Checked := false;
    frmEditRefBook.Edit2.Text               := Q_SUP.FieldByName('ANALYZE_DAYS').AsString;
    frmEditRefBook.Label6.Caption           := 'Поставщики :: редактирование';
    frmEditRefBook.Label8.Caption           := 'Кол-во дней';
    frmEditRefBook.Label11.Visible          := false;
    frmEditRefBook.Label9.Caption           := 'Страна';
    frmEditRefBook.CheckBox1.Visible  := true;
    frmEditRefBook.CheckBox2.Visible  := true;
    frmEditRefBook.CheckBox1.Caption  := 'Таможня/ГТД';
    frmEditRefBook.CheckBox2.Caption  := 'Неактивная номенклатура';
    frmEditRefBook.Label7.Visible     := false;
    frmEditRefBook.Label2.Visible     := false;
    frmEditRefBook.Label8.Visible     := true;
    frmEditRefBook.edit3.Visible      := false;
    frmEditRefBook.pnlCity.Visible    := true;
    frmEditRefBook.Label10.Visible    := false;
    frmEditRefBook.imcbregion.Visible := true;
    frmEditRefBook.ShowModal;
    Q_SUP.Refresh;
    Q_SUP.Locate('S_ID',frmEditRefBook.Edit1.Tag,[]);
    end;
  finally;
    grSuppliers.SetFocus;
  end;
  
  end;
end;

procedure TfrmSuppliers.aExitExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmSuppliers.aNewExecute(Sender: TObject);
var id : variant;
    OutText : variant;
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
    frmEditRefBook.Edit2.Text               := '';
    frmEditRefBook.Edit1.Tag                := 0;
    frmEditRefBook.Memo1.Visible            := false;
    frmEditRefBook.ttype                    := 15;
    frmEditRefBook.Label6.Caption           := 'Поставщики :: добавление';
    frmEditRefBook.Label8.Caption           := 'Кол-во дней';
    frmEditRefBook.Label11.Visible          := false;
    frmEditRefBook.Label9.Caption           := 'Страна';
    frmEditRefBook.CheckBox1.Visible  := true;
    frmEditRefBook.CheckBox2.Visible  := true;
    frmEditRefBook.CheckBox1.Caption  := 'Таможня/ГТД';
    frmEditRefBook.CheckBox2.Caption  := 'Неактивная номенклатура';
    frmEditRefBook.Label7.Visible     := false;
    frmEditRefBook.Label2.Visible     := false;
    frmEditRefBook.Label8.Visible     := true;
    frmEditRefBook.edit3.Visible      := false;
    frmEditRefBook.pnlCity.Visible    := true;
    frmEditRefBook.Label10.Visible    := false;
    frmEditRefBook.imcbregion.Visible := true;
    frmEditRefBook.ShowModal;
    Q_SUP.Refresh;
    Q_SUP.Locate('S_ID',ID,[]);
  finally
    grSuppliers.SetFocus;
  end;

end;

procedure TfrmSuppliers.aRefreshExecute(Sender: TObject);
begin
 Q_SUP.Close;
 Q_SUP.ParamByName('V_OFFICE').AsInteger :=  id_office;
 Q_SUP.Open;
 grSuppliers.SetFocus;
end;

procedure TfrmSuppliers.btnHotKeysClick(Sender: TObject);
begin
  frmHotKeys.MainFormShow;
end;

procedure TfrmSuppliers.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('Закрыть программу?',mtConfirmation,[mbYes, mbNo],0) <> mrYes then
   Action := caNone
  else
  begin
   SaveFormState(frmSuppliers);  //полож.окна
   frmSuppliers := nil;
   Action := caFree;
  end;
end;

procedure TfrmSuppliers.FormCreate(Sender: TObject);
 var recUserRules : TUserRules;
begin
   Application.CreateForm(TfrmEditRefBook, frmEditRefBook);
   grSuppliers.Font.Size := intDefFont;
   //frmEditRefBook.CheckBox2.visible:=false;

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

procedure TfrmSuppliers.FormShow(Sender: TObject);
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

function TfrmSuppliers.MainFormShow : boolean;
Begin
 if not Assigned(frmSuppliers) then
  begin
    frmSuppliers := TfrmSuppliers.Create(Application);
    try
      frmSuppliers.Show;
      LoadFormState(frmSuppliers); //полож.окна
    finally
      null;
    end;
  end
  else
    if (frmSuppliers.WindowState = wsMinimized) then frmSuppliers.WindowState := wsNormal;
end;



end.
