unit UClientTypes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, star_lib, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxImageComboBox, cxLabel, cxButtonEdit,
  DBAccess, Ora, MemDS, DBClient, ActnList, dxBar, cxBarEditItem, dxBarExtItems,
  cxClasses, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxControls, cxGridCustomView, cxGrid, ImgList;

type
  TfrmClientTypes = class(TForm)
    grClientTypes: TcxGrid;
    grClientTypesView: TcxGridDBTableView;
    tview_TYPESnn: TcxGridDBColumn;
    tview_TYPESBRIEF: TcxGridDBColumn;
    tview_TYPESNAME: TcxGridDBColumn;
    tview_TYPEST_TYPE: TcxGridDBColumn;
    tview_TYPESDISCOUNT: TcxGridDBColumn;
    tview_TYPESINFO: TcxGridDBColumn;
    grClientTypesLevel: TcxGridLevel;
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
    AlMain: TActionList;
    aRefresh: TAction;
    aNew: TAction;
    aEdit: TAction;
    aDelete: TAction;
    Q_CT: TOraQuery;
    Q_CT_DS: TOraDataSource;
    SelQ: TOraQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aNewExecute(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure aDeleteExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure imgOfficePropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    id_office: integer;
    function MainFormShow : boolean;
  end;

var
  frmClientTypes: TfrmClientTypes;

implementation

{$R *.dfm}

uses umain, UDM, uEditClientTypes;

function TfrmClientTypes.MainFormShow : boolean;
Begin
 if not Assigned(frmClientTypes) then
  begin
    frmClientTypes := TfrmClientTypes.Create(Application);
    try
      frmClientTypes.Show;
      LoadFormState(frmClientTypes); //полож.окна
    finally
      null;
    end;
  end
  else
    if (frmClientTypes.WindowState = wsMinimized) then frmClientTypes.WindowState := wsNormal;
end;

procedure TfrmClientTypes.aDeleteExecute(Sender: TObject);
begin
 showmessage('');
end;

procedure TfrmClientTypes.aEditExecute(Sender: TObject);
begin
  if (id_office <> Q_CT.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  {frmEditClientTypes.cxDateEdit1.Date := Q_CT.FieldByName('DDATE').AsDateTime;
  frmEditClientTypes.Ed1.EditValue := Q_CT.FieldByName('USD').AsFloat;
  frmEditorClientTypes.Ed2.EditValue := Q_CT.FieldByName('EUR').AsFloat;
  frmEditorClientTypes.Ed3.EditValue := Q_CT.FieldByName('USD_EUR').AsFloat;
  frmEditClientTypes.Ed4.EditValue := Q_CT.FieldByName('EUR_USD').AsFloat;
  frmEditClientTypes.Ed5.EditValue := Q_CT.FieldByName('SHEV_USD').AsFloat;
  frmEditClientTypes.Ed6.EditValue := Q_CT.FieldByName('SHEV_EUR').AsFloat;
  frmEditClientTypes.Ed7.EditValue := Q_CT.FieldByName('SHEV_USD_EUR').AsFloat;
  frmEditClientTypes.Ed8.EditValue := Q_CT.FieldByName('SHEV_EUR_USD').AsFloat;  }
  frmEditClientTypes.Showmodal;
  grClientTypes.SetFocus;
end;

procedure TfrmClientTypes.aNewExecute(Sender: TObject);
begin
showmessage('');
end;

procedure TfrmClientTypes.aRefreshExecute(Sender: TObject);
begin
    Q_CT.ParamByName('V_OFFICE').Value :=  id_office;
    //Q_CT.ParamByName('cursor_').AsCursor;
    Q_CT.Open;
    grClientTypes.SetFocus;
end;

procedure TfrmClientTypes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(frmClientTypes);  //полож.окна
   frmClientTypes := nil;
  Action := caFree;
end;

procedure TfrmClientTypes.FormCreate(Sender: TObject);
 var i:integer;
begin
  //Application.CreateForm(Tfrmeditor, frmeditor);
  grClientTypes.Font.Size := intDefFont;
end;

//меняю офис
procedure TfrmClientTypes.imgOfficePropertiesChange(Sender: TObject);
begin
  intDefOffice := imgOffice.EditValue;
  //DM.id_office := imgOffice.EditValue; //в перем id_office пишу текущ.знач комбобокса
  aRefresh.Execute;  //обновить таблицу
end;

procedure TfrmClientTypes.FormShow(Sender: TObject);
begin

 try

   dm.cxImgLst.GetBitmap(32, btnRefresh.largeGlyph);
   dm.cxImgLst.GetBitmap(4, btnAdd.largeGlyph);
   dm.cxImgLst.GetBitmap(5, btnedit.largeGlyph);
   dm.cxImgLst.GetBitmap(6, btnDelete.largeGlyph);
   dm.cxImgLst.GetBitmap(20, btnHelp.largeGlyph);
   dm.cxImgLst.GetBitmap(33, btnExit.largeGlyph);

   //AddN.Enabled    := DM.r_edit;
   //EditN.Enabled   := DM.r_edit;
   //DeleteN.Enabled := DM.r_delete;


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
    imgOffice.Properties.OnChange := imgOfficePropertiesChange;

    Q_CT.ParamByName('v_office').AsInteger := id_office;
    Q_CT.Open;
  except
    on E: Exception do ShowMessage(E.Message);
  end;
  end;

  finally
    grClientTypes.SetFocus;
  end;
end;

end.
