unit UNSICurrency;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxClasses, dxBar, ActnList, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxBarExtItems, cxDropDownEdit, cxLabel,
  cxBarEditItem, star_lib, cxImageComboBox, MemDS, DBAccess, Ora, cxButtonEdit,ComObj,
  xmldom, XMLIntf, msxmldom, XMLDoc, Xmlxform, DBClient;

type
  TfrmNSICurreny = class(TForm)
    bmMain: TdxBarManager;
    AlMain: TActionList;
    bmToolBar: TdxBar;
    bmFooter: TdxBar;
    grCurrencyView: TcxGridDBTableView;
    grCurrencyLevel: TcxGridLevel;
    grCurrency: TcxGrid;
    aRefresh: TAction;
    aNew: TAction;
    aEdit: TAction;
    aDelete: TAction;
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
    Q_CURR_DS: TOraDataSource;
    Q_CURR: TOraQuery;
    grCurrencyViewColumn1: TcxGridDBColumn;
    grCurrencyViewColumn2: TcxGridDBColumn;
    grCurrencyViewColumn3: TcxGridDBColumn;
    grCurrencyViewColumn4: TcxGridDBColumn;
    grCurrencyViewColumn5: TcxGridDBColumn;
    grCurrencyViewColumn6: TcxGridDBColumn;
    grCurrencyViewColumn7: TcxGridDBColumn;
    grCurrencyViewColumn8: TcxGridDBColumn;
    grCurrencyViewColumn9: TcxGridDBColumn;
    grCurrencyViewColumn10: TcxGridDBColumn;
    cxBarEditItem1: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    SelQ: TOraQuery;
    cxBarEditItem2: TcxBarEditItem;
    OraSQL1: TOraSQL;
    OraSQL2: TOraSQL;
    XMLDoc: TXMLDocument;
    XMLTrans: TXMLTransform;
    XMLTransform1: TXMLTransform;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aNewExecute(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure imgOfficePropertiesChange(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure aDeleteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    id_office: integer;
    function MainFormShow : boolean;
  end;

var
  frmNSICurreny: TfrmNSICurreny;

implementation

uses umain, udm, Ueditor;

{$R *.dfm}

function TfrmNSICurreny.MainFormShow : boolean;
Begin
 if not Assigned(frmNSICurreny) then
  begin
    frmNSICurreny := TfrmNSICurreny.Create(Application);
    try
      frmNSICurreny.Show;
      LoadFormState(frmNSICurreny); //полож.окна
    finally
      null;
    end;
  end
  else
   if (frmNSICurreny.WindowState = wsMinimized) then frmNSICurreny.WindowState := wsNormal;
end;

//удалить
procedure TfrmNSICurreny.aDeleteExecute(Sender: TObject);
begin
     if (id_office <> Q_CURR.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;


  if MessageDlg('Вы действительно хотите удалить курсы?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
     OraSQL2.ParamByName('P1').AsDate := Q_CURR.FieldByName('DDATE').AsDateTime;
     try
        OraSQL2.Execute;
        Q_CURR.Refresh;
     except
        on E: Exception do ShowMessage('Ошибка! ' + E.Message);
     end;
  end;
end;

//изменить
procedure TfrmNSICurreny.aEditExecute(Sender: TObject);
begin
    if (id_office <> Q_CURR.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  frmeditor.cxDateEdit1.Date := Q_CURR.FieldByName('DDATE').AsDateTime;
  frmeditor.Ed1.EditValue := Q_CURR.FieldByName('USD').AsFloat;
  frmeditor.Ed2.EditValue := Q_CURR.FieldByName('EUR').AsFloat;
  frmeditor.Ed3.EditValue := Q_CURR.FieldByName('USD_EUR').AsFloat;
  frmeditor.Ed4.EditValue := Q_CURR.FieldByName('EUR_USD').AsFloat;
  frmeditor.Ed5.EditValue := Q_CURR.FieldByName('SHEV_USD').AsFloat;
  frmeditor.Ed6.EditValue := Q_CURR.FieldByName('SHEV_EUR').AsFloat;
  frmeditor.Ed7.EditValue := Q_CURR.FieldByName('SHEV_USD_EUR').AsFloat;
  frmeditor.Ed8.EditValue := Q_CURR.FieldByName('SHEV_EUR_USD').AsFloat;
  frmeditor.Showmodal;
  grCurrency.SetFocus;
end;

//добавить
procedure TfrmNSICurreny.aNewExecute(Sender: TObject);
begin
  frmeditor.Ed1.Clear;
  frmeditor.Ed2.Clear;
  frmeditor.Ed3.Clear;
  frmeditor.Ed4.Clear;
  frmeditor.Ed5.Clear;
  frmeditor.Ed6.Clear;
  frmeditor.Ed7.Clear;
  frmeditor.Ed8.Clear;

  frmeditor.cxDateEdit1.Date := Now();
  frmeditor.Showmodal;
  grCurrency.SetFocus;
end;

//обновить
procedure TfrmNSICurreny.aRefreshExecute(Sender: TObject);
var id: TDateTime;
begin

   // Q_CURR.ParamByName('V_OFFICE').Value :=  intDefOffice;
   // Q_CURR.ParamByName('cursor_').AsCursor;
   // Q_CURR.Open;

  id := 01-02-2016;//now;//Q_CURRDDATE.AsDateTime;
  Q_CURR.Refresh;
  Q_CURR.Locate('DDATE',id,[]);
  grCurrency.SetFocus;    

  { dm.cdsSQL.Close;
   dm.cdsSQL.SQL.clear;
   dm.cdsSQL.SQL.Add('begin DICTS.GET_CURSES(:V_OFFICE, :CURSOR_); end;');
   dm.cdsSQL.ParamByName('V_OFFICE').asinteger := intDefOffice;
   dm.cdsSQL.ParamByName('cursor_').AsCursor;
   dm.cdsSQL.open;
    grCur  := dm.cdsSQL.FieldByName('SHEV_USD').AsFloat;
   dm.cdsSQL.Close;     }
end;

procedure TfrmNSICurreny.btnExitClick(Sender: TObject);
begin
  if MessageDlg('Закрыть программу?',mtConfirmation,[mbYes, mbNo],0) = mrYes then close;// self.Close;
end;


procedure TfrmNSICurreny.btnHelpClick(Sender: TObject);
var
   FullFileName: string;
   oDoc, oIE:    Variant;
   strHTML:      string;
   s1, s2:       real;
   f:            textfile;
begin
  FullFileName := 'c:\xml_daily.xml'; // Путь к временному файлу где хранится сводка курсов валют

  // Открываем страницу и записываем содержимое во временный файл
	oIE := CreateOleObject('InternetExplorer.Application');
  oIE.Visible := False;
  oIE.Silent  := False;
  oIE.Navigate('http://www.cbr.ru/scripts/xml_daily.asp');

  While (oIE.Busy) do begin
  end;
  try
    oDoc := oIE.Document;
    strHTML := oDoc.Body.innerText;
  except
    Exit;
  end;

  oDoc:=Null;
  oIE.Quit;
                  
  AssignFile(F, FullFileName);
  Rewrite(F);
  WriteLn(F, StringReplace(trim(strHTML),'- ','',[rfReplaceAll]));
  CloseFile(F);


  // Парсим XML файл во временную табличку
  XMLDoc.FileName := FullFileName;
  XMLDoc.Active   := true;

  XMLTrans.SourceXmlFile := FullFileName;
  XMLTransform1.SourceXmlFile := FullFileName;
  ClientDataSet1.XMLData := XMLTrans.Data;
  ClientDataSet1.Open;
  ClientDataSet2.XMLData := XMLTransform1.Data;
  ClientDataSet2.Open;
end;

procedure TfrmNSICurreny.dxBarButton4Click(Sender: TObject);
begin

end;

// Закрыть прогу
procedure TfrmNSICurreny.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(frmNSICurreny); //полож.окна
   frmNSICurreny := nil;
  Action := caFree;
end;

procedure TfrmNSICurreny.FormCreate(Sender: TObject);
 var i:integer;
begin
  Application.CreateForm(Tfrmeditor, frmeditor);
  //for i:=0 to frmNSICurreny.componentcount-1 do  frmNSICurreny.Components[i].Font.Size := intDefFont;
  grCurrency.Font.Size := intDefFont;
end;

//  Заполним списки
procedure TfrmNSICurreny.FormShow(Sender: TObject);
begin
   dm.cxImgLst.GetBitmap(0, btnRefresh.largeGlyph);
   dm.cxImgLst.GetBitmap(1, btnAdd.largeGlyph);
   dm.cxImgLst.GetBitmap(2, btnedit.largeGlyph);
   dm.cxImgLst.GetBitmap(3, btnDelete.largeGlyph);
   dm.cxImgLst.GetBitmap(4, btnHelp.largeGlyph);
   dm.cxImgLst.GetBitmap(5, btnExit.largeGlyph);

      {
     // Заполнение офисов
    if imgOtdel.EditValue = trim('') then
      MessageBox(Handle, 'Не выбран офис.', 'Внимание!', MB_ICONWARNING)
    else
    begin
      //DM.id_office := 0;
      imgOffice.EditValue := intDefOffice;
    end;

  // Заполнение отделов
    if imgOtdel.EditValue = trim('') then
      MessageBox(Handle, 'Не указан ни один отдел продаж.', 'Внимание!', MB_ICONWARNING)
    else
    begin
      //DM.CUR_DEPT_ID   := 0;
      //DM.CUR_DEPT_NAME := '';
      imgOtdel.EditValue := intDefDept;
    end;

    aRefresh.Execute;  //обновить таблицу
    grCurrency.SetFocus; //фокус на таблицу      }

if (imgOffice.Enabled) then
  begin
  try
    id_office := GetOfficeID;
    imgOffice.Enabled := (id_office = 1);
    grCurrencyView.Columns[0].Visible := imgOffice.Enabled;

    imgOffice.Properties.OnChange := nil;
    SelQ.Close;
    SelQ.SQL.Clear;
    SelQ.SQL.Add('SELECT ID_OFFICE, OFFICE_NAME FROM OFFICES ORDER BY OFFICE_NAME');
    SelQ.Open;
    //FillImgComboCx(SelQ, imgOffice, 'Все');
    SelQ.Close;
    imgOffice.EditValue := id_office;
    imgOffice.Properties.OnChange := imgOfficePropertiesChange;

    Q_CURR.ParamByName('v_office').AsInteger := id_office;
    Q_CURR.Open;
  except
    on E: Exception do ShowMessage(E.Message);
  end;
  end;
end;

//меняю офис
procedure TfrmNSICurreny.imgOfficePropertiesChange(Sender: TObject);
begin
  intDefOffice := imgOffice.EditValue;
  //DM.id_office := imgOffice.EditValue; //в перем id_office пишу текущ.знач комбобокса
  aRefresh.Execute;  //обновить таблицу
end;


end.
