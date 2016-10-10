unit UCountries;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, star_lib, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxImageComboBox, cxLabel, cxButtonEdit,
  ActnList, dxBar, cxBarEditItem, dxBarExtItems, cxClasses, DBAccess, Ora,
  MemDS, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxControls, cxGridCustomView, cxGrid;

type
  TfrmCountries = class(TForm)
    grCountries: TcxGrid;
    grCountriesView: TcxGridDBTableView;
    grCountriesLevel: TcxGridLevel;
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
    Q_CTRS: TOraQuery;
    Q_CTRSC_ID: TIntegerField;
    Q_CTRSCOUNTRY: TStringField;
    Q_CTRSNN: TFloatField;
    Q_CTRSCOUNTRY_ENG: TStringField;
    Q_CTRSMNEMO: TStringField;
    Q_CTRSBUH_CODE: TStringField;
    Q_CTRS_DS: TOraDataSource;
    grCountriesNN: TcxGridDBColumn;
    grCountriesCTRS: TcxGridDBColumn;
    grCountriesCTRSLAT: TcxGridDBColumn;
    grCountriesKODC: TcxGridDBColumn;
    grCountriesKOD: TcxGridDBColumn;
    procedure btnHotKeysClick(Sender: TObject);
    procedure aExitExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aRefreshExecute(Sender: TObject);
    procedure aNewExecute(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure aDeleteExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    p_read, p_edit, p_delete, p_print: boolean;
  public
    { Public declarations }
    id_office: integer;
    function MainFormShow : boolean;
  end;

var
  frmCountries: TfrmCountries;

implementation

{$R *.dfm}

 uses umain, UDM, UHotKeys, UEditRefBook;

procedure TfrmCountries.aDeleteExecute(Sender: TObject);
var OutText : string;
begin
if (Q_CTRS.RecordCount > 0) then
begin
  if MessageDlg('Вы действительно хотите удалить страну?',mtConfirmation,[mbNo,mbYes],0) = mrYes then
  Begin
    try
        with selq do
        Begin
          frmCountries.selq.SQL.Clear;
          frmCountries.selq.SQL.Add('begin NOMENCLATURE_PKG.DELETE_COUNTRY(:C_ID_, :OUT_TEXT); end;');
          ParamByName('C_ID_').Value := Q_CTRS.FieldByName('C_ID').Value;
          Execute;
          OutText := ParamByName('OUT_TEXT').asstring;

          if (OutText <> '') then
            MessageBox(Handle, PChar(OutText), 'Ошибка', MB_ICONWARNING)
          else
            Q_CTRS.Refresh;   
        End;
    Except on E:Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
    end;
  end;
  grCountries.SetFocus;
end;
end;

procedure TfrmCountries.aEditExecute(Sender: TObject);
begin
 if ( (grCountries.ActiveView.DataController as TcxDBDataController).DataSet.RecordCount > 0 ) then
  begin

  {if (id_office <> (grCountries.ActiveView.DataController as TcxDBDataController).DataSet.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;     }

  try
    if Q_CTRS.FieldByName('COUNTRY').AsString <> '' then
    begin
    frmEditRefBook.ttype                    := 14;
    frmEditRefBook.Znak_EditPercent.Visible := false;
    frmEditRefBook.DBNumberEditEh1.Visible  := false;
    frmEditRefBook.Edit1.Text               := Q_CTRS.FieldByName('COUNTRY').AsString;
    frmEditRefBook.Edit1.Tag                := Q_CTRS.FieldByName('C_ID').AsInteger;
    frmEditRefBook.Memo1.Text               := Q_CTRS.FieldByName('COUNTRY_ENG').AsString;
    frmEditRefBook.Edit2.Text               := Q_CTRS.FieldByName('MNEMO').AsString;
    frmEditRefBook.Edit3.Text               := Q_CTRS.FieldByName('BUH_CODE').AsString;
    frmEditRefBook.Label6.Caption           := 'Страны :: редактирование';
    frmEditRefBook.Label8.Caption           := 'Код (буквы)';
    frmEditRefBook.Label11.Caption          := 'Код (циф.)';
    frmEditRefBook.Label2.Caption           := 'Страна (лат.)';
    frmEditRefBook.imcbRegion.Visible := false;
    frmEditRefBook.Label9.Visible     := false;
    frmEditRefBook.CheckBox1.Visible  := false;
    frmEditRefBook.Label7.Visible     := false;
    frmEditRefBook.pnlCity.Visible    := true;
    frmEditRefBook.Label10.Visible    := false;
    frmEditRefBook.Label11.Visible    := true;
    frmEditRefBook.Edit3.Visible      := true;
    frmEditRefBook.ShowModal;
    Q_CTRS.Refresh;
    Q_CTRS.Locate('C_ID',frmEditRefBook.Edit1.Tag,[]);
    end;
  finally;
    grCountries.SetFocus;
  end;
  
  end;
end;

procedure TfrmCountries.aExitExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmCountries.aNewExecute(Sender: TObject);
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
    frmEditRefBook.Edit1.Tag                := 0;
    frmEditRefBook.Memo1.Lines.Clear;
    frmEditRefBook.ttype                    := 13;
    frmEditRefBook.Label6.Caption           := 'Страны :: добавление';
    frmEditRefBook.Label8.Caption           := 'Код (буквы)';
    frmEditRefBook.Label11.Caption          := 'Код (циф.)';
    frmEditRefBook.Label2.Caption           := 'Страна (лат.)';
    frmEditRefBook.imcbRegion.Visible := false;
    frmEditRefBook.Label9.Visible     := false;
    frmEditRefBook.CheckBox1.Visible  := false;
    frmEditRefBook.Label7.Visible     := false;
    frmEditRefBook.pnlCity.Visible    := true;
    frmEditRefBook.Label10.Visible    := false;
    frmEditRefBook.Label11.Visible    := true;
    frmEditRefBook.Edit3.Visible      := true;
    frmEditRefBook.ShowModal;
    Q_CTRS.Refresh;
    Q_CTRS.Locate('C_ID',ID,[]);
  finally
    grCountries.SetFocus;
  end;
  
end;

procedure TfrmCountries.aRefreshExecute(Sender: TObject);
begin
 Q_CTRS.Close;
 Q_CTRS.Open;
 grCountries.SetFocus;
end;

procedure TfrmCountries.btnHotKeysClick(Sender: TObject);
begin
  frmHotKeys.MainFormShow;
end;

procedure TfrmCountries.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('Закрыть программу?',mtConfirmation,[mbYes, mbNo],0) <> mrYes then
   Action := caNone
  else
  begin
   SaveFormState(frmCountries);  //полож.окна
   frmCountries := nil;
   Action := caFree;
  end;
end;

procedure TfrmCountries.FormCreate(Sender: TObject);
   var recUserRules : TUserRules;
begin
 Application.CreateForm(TfrmEditRefBook, frmEditRefBook);
 grCountries.Font.Size := intDefFont;
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

procedure TfrmCountries.FormShow(Sender: TObject);
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

function TfrmCountries.MainFormShow : boolean;
Begin
 if not Assigned(frmCountries) then
  begin
    frmCountries := TfrmCountries.Create(Application);
    try
      frmCountries.Show;
      LoadFormState(frmCountries); //полож.окна
    finally
      null;
    end;
  end
  else
    if (frmCountries.WindowState = wsMinimized) then frmCountries.WindowState := wsNormal;
end;




end.
