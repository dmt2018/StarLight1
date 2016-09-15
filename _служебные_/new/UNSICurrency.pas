unit UNSICurrency;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxClasses, dxBar, ActnList, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxBarExtItems, cxDropDownEdit, cxLabel,
  cxBarEditItem, star_lib, cxImageComboBox, MemDS, DBAccess, Ora, cxButtonEdit,ComObj,
  xmldom, XMLIntf, msxmldom, XMLDoc, Xmlxform, DBClient, cxCalendar,
  cxCurrencyEdit;

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
    aExit: TAction;
    btnHotKeys: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aNewExecute(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnHelpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure aDeleteExecute(Sender: TObject);
    procedure aExitExecute(Sender: TObject);
    procedure btnHotKeysClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function MainFormShow : boolean;
  end;

var
  frmNSICurreny: TfrmNSICurreny;

implementation

uses umain, udm, Ueditor, UHotKeys;

{$R *.dfm}

//
//  Основной метод открытия формы
//
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


// BOF :: Основные действия с формой -------------------------------------------

// Действие на закрытие формы
procedure TfrmNSICurreny.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('Закрыть программу?',mtConfirmation,[mbYes, mbNo],0) <> mrYes then
    Action := caNone
  else
  begin
    SaveFormState(frmNSICurreny); //полож.окна
    frmNSICurreny := nil;
    Action := caFree;
  end;
end;

// Действие на создание формы
procedure TfrmNSICurreny.FormCreate(Sender: TObject);
 var i:integer;
begin
  Application.CreateForm(Tfrmeditor, frmeditor);
  grCurrency.Font.Size := intDefFont;
end;

// Действие на показ формы
// Заполним списки и открываем основные таблицы
procedure TfrmNSICurreny.FormShow(Sender: TObject);
begin
  try
    Q_CURR.Close;
    Q_CURR.ParamByName('v_office').AsInteger := DM.id_office;
    Q_CURR.Open;
    grCurrency.SetFocus
  except
    on E: Exception do ShowMessage(E.Message);
  end;
end;

// EOF :: Основные действия с формой -------------------------------------------
// -----------------------------------------------------------------------------


// BOF :: Основные кнопки управления -------------------------------------------

//удалить
procedure TfrmNSICurreny.aDeleteExecute(Sender: TObject);
begin
  if (DM.id_office <> Q_CURR.FieldByName('ID_OFFICE').AsInteger) then
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
    if (DM.id_office <> Q_CURR.FieldByName('ID_OFFICE').AsInteger) then
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
    grCurrency  := dm.cdsSQL.FieldByName('SHEV_USD').AsFloat;
   dm.cdsSQL.Close;     }
end;

// Закрыть
procedure TfrmNSICurreny.aExitExecute(Sender: TObject);
begin
  Close;
end;

// EOF :: Основные кнопки управления -------------------------------------------
// -----------------------------------------------------------------------------



















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

procedure TfrmNSICurreny.btnHotKeysClick(Sender: TObject);
begin
  frmHotKeys.MainFormShow;
end;

end.
