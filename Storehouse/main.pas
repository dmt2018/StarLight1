unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Menus, Buttons, ToolWin, Grids,
  DBGridEh, DB, MemDS, DBAccess, Ora, PI_library, ActnList, FR_DSet,
  FR_DBSet, FR_Class, DBGrid_extensions, useful_functions;

type
  Tmain_form = class(TForm)
    StatusBar: TStatusBar;
    PageControl_Main: TPageControl;
    TabSheet1: TTabSheet;
    Doc_TS: TTabSheet;
    DBGridEh2: TDBGridEh;
    Panel1: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    NumberDoc: TLabeledEdit;
    BitBtn1: TBitBtn;
    ClientFio: TLabeledEdit;
    ClientNick: TLabeledEdit;
    Doc_DateTimePicker1: TDateTimePicker;
    Doc_DateTimePicker2: TDateTimePicker;
    DateTrue: TCheckBox;
    doc: TOraQuery;
    DOC_DS: TOraDataSource;
    PopupMenu1: TPopupMenu;
    ppmCopy: TMenuItem;
    ppmSelectAll: TMenuItem;
    N1: TMenuItem;
    ppmSaveSelection: TMenuItem;
    STORE_VIEW: TOraQuery;
    STORE_VIEW_DS: TOraDataSource;
    Panel3: TPanel;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    MainMenu1: TMainMenu;
    ss1: TMenuItem;
    STORE_VIEWN_ID: TFloatField;
    STORE_VIEWFULL_NAME: TStringField;
    STORE_VIEWF_TYPE: TStringField;
    STORE_VIEWF_SUB_TYPE: TStringField;
    STORE_VIEWCODE: TStringField;
    STORE_VIEWLEN: TIntegerField;
    STORE_VIEWPACK: TIntegerField;
    STORE_VIEWCOLOUR: TStringField;
    STORE_VIEWCOUNTRY: TStringField;
    STORE_VIEWQUANTITY: TFloatField;
    STORE_VIEWPRICE: TFloatField;
    STORE_VIEWFT_ID: TFloatField;
    STORE_VIEWFST_ID: TFloatField;
    STORE_VIEWC_ID: TFloatField;
    STORE_VIEWCOL_ID: TFloatField;
    STORE_VIEWS_ID: TFloatField;
    STORE_VIEWQUANTITY_PRICE: TFloatField;
    Panel8: TPanel;
    DBGridEh1: TDBGridEh;
    Doc_PC: TPageControl;
    Doc_TS_4: TTabSheet;
    Doc_TS_2: TTabSheet;
    Doc_TS_1: TTabSheet;
    Panel5: TPanel;
    Store_DepsCBEx: TComboBoxEx;
    Panel7: TPanel;
    Doc_DepsCBEx: TComboBoxEx;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Panel11: TPanel;
    Store_PC: TPageControl;
    Store_TS_2: TTabSheet;
    Store_TS_1: TTabSheet;
    ActionList1: TActionList;
    N2: TMenuItem;
    N3: TMenuItem;
    docID_DOC: TFloatField;
    docID_DOC_TYPE: TIntegerField;
    docID_DEPARTMENTS: TIntegerField;
    docDEPARTMENT_NAME: TStringField;
    docOPERATOR_NAME: TStringField;
    docDOC_DATE: TDateTimeField;
    docDOC_DATE_REAL: TDateTimeField;
    docID_CLIENT: TIntegerField;
    docNICK: TStringField;
    docFIO: TStringField;
    docQUANTITY_ALL: TFloatField;
    docPRICE_ALL: TFloatField;
    docCOMMENTS: TStringField;
    Doc_TS_5: TTabSheet;
    Doc_TS_6: TTabSheet;
    N4: TMenuItem;
    N10: TMenuItem;
    docDOC_NUMBER: TFloatField;
    Panel2: TPanel;
    Bevel2: TBevel;
    Panel4: TPanel;
    Panel6: TPanel;
    Bevel7: TBevel;
    Panel12: TPanel;
    CoolBar2: TCoolBar;
    ToolBar2: TToolBar;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    Panel14: TPanel;
    Bevel10: TBevel;
    Panel13: TPanel;
    Bevel8: TBevel;
    Panel16: TPanel;
    Bevel9: TBevel;
    Panel17: TPanel;
    CoolBar3: TCoolBar;
    ToolBar3: TToolBar;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    Bevel12: TBevel;
    Panel15: TPanel;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    Bevel1: TBevel;
    Panel18: TPanel;
    CoolBar4: TCoolBar;
    ToolBar4: TToolBar;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ToolButton27: TToolButton;
    ToolButton28: TToolButton;
    ToolButton29: TToolButton;
    ToolButton30: TToolButton;
    ToolButton31: TToolButton;
    ToolButton32: TToolButton;
    Bevel3: TBevel;
    Panel19: TPanel;
    CoolBar5: TCoolBar;
    ToolBar5: TToolBar;
    ToolButton33: TToolButton;
    ToolButton34: TToolButton;
    ToolButton35: TToolButton;
    ToolButton36: TToolButton;
    ToolButton39: TToolButton;
    ToolButton40: TToolButton;
    Bevel4: TBevel;
    Panel20: TPanel;
    CoolBar6: TCoolBar;
    ToolBar6: TToolBar;
    ToolButton41: TToolButton;
    ToolButton42: TToolButton;
    ToolButton43: TToolButton;
    ToolButton44: TToolButton;
    ToolButton47: TToolButton;
    ToolButton48: TToolButton;
    Bevel5: TBevel;
    DocNewManually_Action: TAction;
    DocNewScaner_Action: TAction;
    DocNewFrom_Action: TAction;
    Doc_TS_3: TTabSheet;
    Bevel6: TBevel;
    Panel21: TPanel;
    CoolBar7: TCoolBar;
    ToolBar7: TToolBar;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    Doc_frDBD: TfrDBDataSet;
    Store_frDBD: TfrDBDataSet;
    Print_PM: TPopupMenu;
    N11: TMenuItem;
    N12: TMenuItem;
    DocPrint_Action: TAction;
    DocListPrint_Action: TAction;
    StoreListPrint_Action: TAction;
    otc_Move: TOraQuery;
    otc_MoveN_ID: TFloatField;
    otc_MoveFULL_NAME: TStringField;
    otc_MoveCODE: TStringField;
    otc_MoveO_PRIHOD: TFloatField;
    otc_MoveO_SPISANIE: TFloatField;
    otc_MoveO_UTSENKA: TFloatField;
    otc_MoveO_PRODAJI: TFloatField;
    otc_Move_DS: TOraDataSource;
    OraQuery1: TOraQuery;
    FloatField1: TFloatField;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    OraDataSource1: TOraDataSource;
    N13: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Store_PCChange(Sender: TObject);
    procedure Doc_PCChange(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure ss1Click(Sender: TObject);
    procedure DocNew_ActionExecute(Sender: TObject);
    procedure new_doc(doc_type:integer; new_type: integer);
    procedure Store_DepsCBExChange(Sender: TObject);
    procedure Doc_DepsCBExChange(Sender: TObject);
    procedure Doc_DateTimePicker1Change(Sender: TObject);
    procedure Doc_DateTimePicker2Change(Sender: TObject);
    procedure ppmSelectAllClick(Sender: TObject);
    procedure ppmCopyClick(Sender: TObject);
    procedure ppmSaveSelectionClick(Sender: TObject);
    procedure DocNewManually_ActionExecute(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure DocNewScaner_ActionExecute(Sender: TObject);
    procedure DocNewFrom_ActionExecute(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton25Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton33Click(Sender: TObject);
    procedure ToolButton41Click(Sender: TObject);
    procedure DocListPrint_ActionExecute(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure ToolButton43Click(Sender: TObject);
    procedure ToolButton19Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton27Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton35Click(Sender: TObject);
    procedure ToolButton21Click(Sender: TObject);
    procedure ToolButton29Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  main_form: Tmain_form;
  Doc_SQL_beg, Storeview_SQL_beg : string;

implementation

uses global_date, nacl_new, spisanie, utsenka, global, inventory, prihod, dataM, 
  client_choos, otc_move, Add_Operations, obnul, Addition, addoper_choos, invchooser;

{$R *.dfm}







//Фильтрация склада--------------------------------------------------------

procedure Store_FilterOn();
var
sql: string;
begin

with main_form do

begin

screen.cursor:=crhourglass;

sql := sql + ' and ID_DEPARTMENTS='+ intTostr(ReadComboEx(Store_DepsCBEx));

if (Store_PC.ActivePage.Name='Store_TS_1') then
sql := sql +  ' and STORE_TYPE=1'
else
sql := sql +  ' and STORE_TYPE=2';


STORE_VIEW.Close;
STORE_VIEW.Sql.Clear;
STORE_VIEW.Sql.Add(Storeview_SQL_beg);
STORE_VIEW.SQL.Add(sql);

try
STORE_VIEW.Open;
except
ShowMessage('Не могу открыть склад!');
End;

screen.cursor:=crdefault;

end;

end;

//------------------------------------------------------------------------------








//Фильтрация документов--------------------------------------------------------

procedure Doc_FilterOn();
var
sql: string;
begin


with main_form do
begin

if ((DateTrue.Checked=false) and (Doc_DateTimePicker1.Date > Doc_DateTimePicker2.Date))
then
begin
ShowMessage('Первая дата не может быть больше второй!');
end
else

begin

screen.cursor:=crhourglass;

sql := sql + ' and ID_DEPARTMENTS='+ intTostr(ReadComboEx(Doc_DepsCBEx));

if (trim(NumberDoc.Text) <> '') then sql := sql + ' and DOC_NUMBER='+ NumberDoc.Text;
if (trim(ClientNick.Text) <> '') then sql := sql + ' AND UPPER(Nick) LIKE :Nick';
if (trim(ClientFio.Text) <> '') then sql := sql + ' AND UPPER(FIO) LIKE :Fio';
if (DateTrue.Checked=false) then sql := sql + ' and trunc(doc_date) between trunc(:DOC_DATE1) and trunc(:DOC_DATE2)';


if (Doc_PC.ActivePage.Name='Doc_TS_1') then
sql := sql +  ' and ID_DOC_TYPE=1';
if (Doc_PC.ActivePage.Name='Doc_TS_2') then
sql := sql +  ' and ID_DOC_TYPE=2';
if (Doc_PC.ActivePage.Name='Doc_TS_3') then
sql := sql +  ' and ID_DOC_TYPE=3';
if (Doc_PC.ActivePage.Name='Doc_TS_4') then
sql := sql +  ' and ID_DOC_TYPE=4';
if (Doc_PC.ActivePage.Name='Doc_TS_5') then
sql := sql +  ' and ID_DOC_TYPE=5';
if (Doc_PC.ActivePage.Name='Doc_TS_6') then
sql := sql +  ' and ID_DOC_TYPE=6';

DOC.Close;
DOC.Sql.Clear;
DOC.Sql.Add(doc_SQL_beg);
DOC.SQL.Add(sql);

if (DateTrue.Checked=false) then begin
DOC.ParamByName('DOC_DATE1').AsDate := Doc_DateTimePicker1.Date;
DOC.ParamByName('DOC_DATE2').AsDate := Doc_DateTimePicker2.Date;
end;

if (trim(ClientNick.Text) <> '') then
DOC.ParamByName('Nick').Value := AnsiUpperCase(PChar(ClientNick.Text)) + '%';

if (trim(ClientFio.Text) <> '') then
DOC.ParamByName('Fio').Value := AnsiUpperCase(PChar(ClientFio.Text)) + '%';

DOC.Open;

screen.cursor:=crdefault;

end;
end;

end;

//------------------------------------------------------------------------------














procedure Tmain_form.FormCreate(Sender: TObject);

begin

PageControl_Main.ActivePageIndex:=0;

//Запрашиваем дату работы со складом-----------------------
GlobalDateForm:=TGlobalDateForm.Create(Application);
GlobalDateForm.ShowModal;

DataM.Operator_Name:='Creator';
StatusBar.Panels[0].Text:='  Дата работы со складом: ' + GlobalDate_FORMAT;
StatusBar.Panels[1].Text:='  Оператор: '+DataM.Operator_Name;

screen.cursor:=crhourglass;

//Активизируем страницу склада-----------------------
Storeview_SQL_beg:=STORE_VIEW.SQL.Text;

FillComboEx(DM.departments, Store_DepsCBEx, 'SELECT ID_DEPARTMENTS, NAME from books_departments where state=1');
SetComboEx(Store_DepsCBEx, 62);

Store_PC.ActivePageIndex:=0;

Store_FilterOn();
//--------------------------------------------------



//Активизируем страницу документов-----------------------
doc_SQL_beg:=DOC.SQL.Text;

FillComboEx(DM.departments, Doc_DepsCBEx, 'SELECT ID_DEPARTMENTS, NAME from books_departments where state=1');
SetComboEx(Doc_DepsCBEx, 62);   

Doc_DateTimePicker1.Date := IncMonth(Date,-1);
Doc_DateTimePicker2.Date := Date;

Doc_PC.ActivePageIndex:=0;

Doc_FilterOn();
//--------------------------------------------------

screen.cursor:=crdefault;




end;




procedure Tmain_form.BitBtn1Click(Sender: TObject);
begin
Doc_FilterOn();
end;






procedure view_doc(doc_type:integer; ID_DOC:integer);
var
theForm: TForm;  
begin


with main_Form do
if (DOC.RecordCount<>0) then
begin

    case doc_type of

    4: //-----------------Продажа-------------------------
    begin
    theForm := TnaclnewForm.Create(Application);
    TnaclnewForm(theForm).department_index:=ReadComboEx(Doc_DepsCBEx);
    TnaclnewForm(theForm).department_name:=Doc_DepsCBEx.ItemsEx[Doc_DepsCBEx.ItemIndex].Caption;
    TnaclnewForm(theForm).ID:=ID_DOC;
    theForm.ShowModal;       
    end;

    1: //-----------------Приход---------------------------------
    begin
    theForm := TprihodForm.Create(Application);
    TprihodForm(theForm).department_index:=ReadComboEx(Doc_DepsCBEx);
    TprihodForm(theForm).department_name:=Doc_DepsCBEx.ItemsEx[Doc_DepsCBEx.ItemIndex].Caption;
    TprihodForm(theForm).ID:=ID_DOC;
    theForm.ShowModal;       
    end;

    2: //-----------------Списание-------------------------
    begin
    theForm := TspisanieForm.Create(Application);
    TspisanieForm(theForm).department_index:=ReadComboEx(Doc_DepsCBEx);
    TspisanieForm(theForm).department_name:=Doc_DepsCBEx.ItemsEx[Doc_DepsCBEx.ItemIndex].Caption;
    TspisanieForm(theForm).ID:=ID_DOC;
    theForm.ShowModal;
    end;

    3: //-----------------Уценка-------------------------
    begin
    theForm := TutsenkaForm.Create(Application);
    TutsenkaForm(theForm).department_index:=ReadComboEx(Doc_DepsCBEx);
    TutsenkaForm(theForm).department_name:=Doc_DepsCBEx.ItemsEx[Doc_DepsCBEx.ItemIndex].Caption;
    TutsenkaForm(theForm).ID:=ID_DOC;
    theForm.ShowModal;
    end;

    5: //-----------------Инвентаризация-------------------------
    begin
    theForm := TinventoryForm.Create(Application);
    TinventoryForm(theForm).department_index:=ReadComboEx(Doc_DepsCBEx);
    TinventoryForm(theForm).department_name:=Doc_DepsCBEx.ItemsEx[Doc_DepsCBEx.ItemIndex].Caption;
    TinventoryForm(theForm).ID_DOC:=ID_DOC;
    theForm.ShowModal;
    end;

    6: //-----------------Другие документы-------------------------
    begin
    theForm := TAdditionForm.Create(Application);
    TAdditionForm(theForm).department_index:=ReadComboEx(Doc_DepsCBEx);
    TAdditionForm(theForm).department_name:=Doc_DepsCBEx.ItemsEx[Doc_DepsCBEx.ItemIndex].Caption;
    TAdditionForm(theForm).ID:=ID_DOC;
    theForm.ShowModal;
    end;


    end;
end;



end;






procedure Tmain_form.new_doc(doc_type:integer; new_type: integer);
{
new_type
1 - создание документа вручную
2 - создание со сканера
3 - создание документа из другого документа
}
var
theForm: TForm;

SP_ID_CLIENT: integer;
SP_DOC_DATE: tDateTime;
SP_ID_DOC_TYPE: integer;
SP_OTDEL: integer;
SP_COMMENTS: string;
SP_OPERATOR_NAME: string;

begin

DM.OraSession.Savepoint('Begin_Doc_Edit');

case doc_type of

  5: //-----------------Инвентаризация-------------------------
  begin
  theForm := TinventoryForm.Create(Application);
  TinventoryForm(theForm).department_index:=ReadComboEx(Store_DepsCBEx);
  TinventoryForm(theForm).department_name:=Store_DepsCBEx.ItemsEx[Store_DepsCBEx.ItemIndex].Caption;
  if theForm.ShowModal = mrOk then
    begin
        try
        SP_DOC_DATE:=DataM.GlobalDate;
        SP_ID_DOC_TYPE:=5;
        SP_COMMENTS:=TinventoryForm(theForm).EditComments.Text;
        SP_OPERATOR_NAME:=DataM.Operator_NAME;
        SP_OTDEL:=ReadComboEx(main_form.Doc_DepsCBEx);

        DM.OraSession.ExecProc('S_STOREHOUSE.DOC_NEW', [NULL, SP_DOC_DATE, SP_ID_DOC_TYPE, SP_COMMENTS, SP_OPERATOR_NAME, SP_OTDEL]) ;
        DM.OraSession.Commit;
        ShowMessage('Операция прошла успешно!');
      except
      ShowMessage('Не могу сохранить документ!');
      End;
    end
  else
    begin
        DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
        abort;
    end;
  end;  
//-------------------------------------------------------------


  1: //-----------------Приход-------------------------
  begin

  if (new_type=2) then //со сканера
  readscaner();


  if (new_type=3) then //из заказа
  begin
    theForm:=TinvchooserForm.Create(Application);

    if theForm.ShowModal = mrOk then
      begin
        //переносим из заказа
        try
        DM.OraSession.ExecProc('S_STOREHOUSE.DATA_FROM_INV', [TinvchooserForm(theForm).Invoices.FieldByName('INV_ID').AsInteger]) ;
        except
        ShowMessage('Не удалось подгрузить из инвойса!');
        abort;
        End;
      end
    else abort;
  end;


  theForm := TprihodForm.Create(Application);
  TprihodForm(theForm).department_index:=ReadComboEx(Doc_DepsCBEx);
  TprihodForm(theForm).department_name:=Doc_DepsCBEx.ItemsEx[Doc_DepsCBEx.ItemIndex].Caption;

  if theForm.ShowModal = mrOk then
      begin
        try
        SP_DOC_DATE:=DataM.GlobalDate;
        SP_ID_DOC_TYPE:=1;
        SP_COMMENTS:=TprihodForm(theForm).EditComments.Text;
        SP_OPERATOR_NAME:=DataM.Operator_NAME;
        SP_OTDEL:=ReadComboEx(main_form.Doc_DepsCBEx);

        DM.OraSession.ExecProc('S_STOREHOUSE.DOC_NEW', [NULL, SP_DOC_DATE, SP_ID_DOC_TYPE, SP_COMMENTS, SP_OPERATOR_NAME, SP_OTDEL]) ;
        DM.OraSession.Commit;
        ShowMessage('Операция прошла успешно!');

        except
        ShowMessage('Не удалось сохранить документ!');
        End;
      end
  else
      begin
        DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
        abort;
      end;
  end;
//-------------------------------------------------------------


  2: //-----------------Списание-------------------------
  begin

  if (new_type=2) then //со сканера
  readscaner();

  theForm := TspisanieForm.Create(Application);
  TspisanieForm(theForm).department_index:=ReadComboEx(Doc_DepsCBEx);
  TspisanieForm(theForm).department_name:=Doc_DepsCBEx.ItemsEx[Doc_DepsCBEx.ItemIndex].Caption;

  if theForm.ShowModal = mrOk then
      begin
        try
        SP_DOC_DATE:=DataM.GlobalDate;
        SP_ID_DOC_TYPE:=2;
        SP_COMMENTS:=TspisanieForm(theForm).EditComments.Text;
        SP_OPERATOR_NAME:=DataM.Operator_NAME;
        SP_OTDEL:=ReadComboEx(main_form.Doc_DepsCBEx);

        DM.OraSession.ExecProc('S_STOREHOUSE.DOC_NEW', [NULL, SP_DOC_DATE, SP_ID_DOC_TYPE, SP_COMMENTS, SP_OPERATOR_NAME, SP_OTDEL]) ;
        DM.OraSession.Commit;
        ShowMessage('Операция прошла успешно!');
        except
        ShowMessage('Не удалось сохранить документ!');
        End;
      end
  else
      begin
        DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
        abort;
      end;
  end;
//-------------------------------------------------------------


  3: //-----------------Уценка-------------------------
  begin
  theForm := TutsenkaForm.Create(Application);
  TutsenkaForm(theForm).department_index:=ReadComboEx(Doc_DepsCBEx);
  TutsenkaForm(theForm).department_name:=Doc_DepsCBEx.ItemsEx[Doc_DepsCBEx.ItemIndex].Caption;

  if theForm.ShowModal = mrOk then
      begin
        try
        SP_DOC_DATE:=DataM.GlobalDate;
        SP_ID_DOC_TYPE:=3;
        SP_COMMENTS:=TutsenkaForm(theForm).EditComments.Text;
        SP_OPERATOR_NAME:=DataM.Operator_NAME;
        SP_OTDEL:=ReadComboEx(main_form.Doc_DepsCBEx);

        DM.OraSession.ExecProc('S_STOREHOUSE.DOC_NEW', [NULL, SP_DOC_DATE, SP_ID_DOC_TYPE, SP_COMMENTS, SP_OPERATOR_NAME, SP_OTDEL]) ;
        DM.OraSession.Commit;
        ShowMessage('Операция прошла успешно!');
        except
        ShowMessage('Не удалось сохранить документ!');
        End;
      end
  else
      begin
        DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
        abort;
      end;
  end;
//-------------------------------------------------------------


4: //-----------------Продажа-------------------------
begin


if (new_type=1) then //вручную
begin
  theForm:=TclientchoosForm.Create(Application);
  if theForm.ShowModal = mrOk then
  begin
    if TclientchoosForm(theForm).CLIENTS.FieldByName('BLOCK1').AsInteger <> 0 then //Проверяем, не заблокирован ли клиент бухгалтерией?
        begin
        showmessage ('Клиент заблокирован бухгалтерией!');
        abort;
        end
    else
    SP_ID_CLIENT:=TclientchoosForm(theForm).CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
  end
  else abort;
end;


if (new_type=2) then //со сканера
readscaner();


if (new_type=3) then //из заказа
begin
  theForm:=TclientchoosForm.Create(Application);
  TclientchoosForm(theForm).PanelOrder.Visible:=true;

  if theForm.ShowModal = mrOk then
  begin
        //переносим из заказа
        try
        DM.OraSession.ExecProc('S_STOREHOUSE.DATA_FROM_ODER', [TclientchoosForm(theForm).Oder.FieldByName('ID_ORDERS_ORDERS').AsInteger]) ;
        SP_ID_CLIENT:=TclientchoosForm(theForm).CLIENTS.FieldByName('ID_CLIENTS').AsInteger;
        except
        ShowMessage('Не удалось подгрузить из заказа!');
        abort;
        End;
  end
  else abort;
end;

  theForm := TnaclnewForm.Create(Application);
  TnaclnewForm(theForm).department_index:=ReadComboEx(Doc_DepsCBEx);
  TnaclnewForm(theForm).department_name:=Doc_DepsCBEx.ItemsEx[Doc_DepsCBEx.ItemIndex].Caption;
  TnaclnewForm(theForm).client_id:=SP_ID_CLIENT;

  if theForm.ShowModal = mrOk then
      begin
        try
        SP_DOC_DATE:=DataM.GlobalDate;
        SP_ID_DOC_TYPE:=4;
        SP_COMMENTS:=TnaclnewForm(theForm).EditComments.Text;
        SP_OPERATOR_NAME:=DataM.Operator_NAME;
        SP_OTDEL:=ReadComboEx(main_form.Doc_DepsCBEx);

        DM.OraSession.ExecProc('S_STOREHOUSE.DOC_NEW', [SP_ID_CLIENT, SP_DOC_DATE, SP_ID_DOC_TYPE, SP_COMMENTS, SP_OPERATOR_NAME, SP_OTDEL]) ;
        DM.OraSession.Commit;
        ShowMessage('Операция прошла успешно!');
        except
        ShowMessage('Не удалось сохранить документ!');
        End;
      end
  else
      begin
        DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
        abort;
      end;

end;
//-------------------------------------------------------------


6: //-----------------Другие документы-------------------------
begin

if (new_type=1) then //вручную
begin
  theForm:=TaddoperchoosForm.Create(Application);
  if theForm.ShowModal = mrOk then
  begin
    SP_ID_CLIENT:=TaddoperchoosForm(theForm).opers.FieldByName('ID_DOC_TYPE_ADD').AsInteger;
  end
  else abort;
end;


if (new_type=2) then //со сканера
readscaner();

  theForm := TAdditionForm.Create(Application);
  TAdditionForm(theForm).department_index:=ReadComboEx(Doc_DepsCBEx);
  TAdditionForm(theForm).department_name:=Doc_DepsCBEx.ItemsEx[Doc_DepsCBEx.ItemIndex].Caption;
  TAdditionForm(theForm).oper_id:=SP_ID_CLIENT;

  if theForm.ShowModal = mrOk then
      begin
        try
        SP_DOC_DATE:=DataM.GlobalDate;
        SP_ID_DOC_TYPE:=6;
        SP_COMMENTS:=TAdditionForm(theForm).EditComments.Text;
        SP_OPERATOR_NAME:=DataM.Operator_NAME;
        SP_OTDEL:=ReadComboEx(main_form.Doc_DepsCBEx);

        DM.OraSession.ExecProc('S_STOREHOUSE.DOC_NEW', [SP_ID_CLIENT, SP_DOC_DATE, SP_ID_DOC_TYPE, SP_COMMENTS, SP_OPERATOR_NAME, SP_OTDEL]) ;
        DM.OraSession.Commit;
        ShowMessage('Операция прошла успешно!');
        except
        ShowMessage('Не удалось сохранить документ!');
        End;
      end
  else
      begin
        DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
        abort;
      end;

end;
//-------------------------------------------------------------






end;

end;







procedure Tmain_form.N6Click(Sender: TObject);
begin
new_doc(4,1);
end;

procedure Tmain_form.N7Click(Sender: TObject);
begin
new_doc(2,1);
end;




procedure Tmain_form.N10Click(Sender: TObject);
var
theform: Tform;
begin
theform := TAddOperationForm.Create(Application);
theform.showmodal;
end;



procedure Tmain_form.N9Click(Sender: TObject);
begin
new_doc(1,1);
end;

procedure Tmain_form.N8Click(Sender: TObject);
begin
new_doc(3,1);
end;

procedure Tmain_form.BitBtn2Click(Sender: TObject);
begin
Store_FilterOn();
end;

procedure Tmain_form.Store_PCChange(Sender: TObject);
begin
Store_FilterOn();
end;

procedure Tmain_form.Doc_PCChange(Sender: TObject);
begin
Doc_FilterOn();
end;


procedure Tmain_form.DBGridEh1DblClick(Sender: TObject);
begin
view_doc(DBGridEh1.DataSource.DataSet.FieldByName('ID_DOC_TYPE').AsInteger, DBGridEh1.DataSource.DataSet.FieldByName('ID_DOC').AsInteger);
end;



procedure Tmain_form.ss1Click(Sender: TObject);
begin
close;  
end;














procedure Tmain_form.DocNew_ActionExecute(Sender: TObject);

begin


if (PageControl_Main.ActivePageIndex=1) then
begin

end;


end;




procedure Tmain_form.Store_DepsCBExChange(Sender: TObject);
begin
STORE_VIEW.Close;
end;

procedure Tmain_form.Doc_DepsCBExChange(Sender: TObject);
begin
DOC.Close;
end;

procedure Tmain_form.Doc_DateTimePicker1Change(Sender: TObject);
begin
DOC.Close;
end;

procedure Tmain_form.Doc_DateTimePicker2Change(Sender: TObject);
begin
DOC.Close;
end;

procedure Tmain_form.ppmSelectAllClick(Sender: TObject);
begin
pppmSelectAllClick(Sender);
end;

procedure Tmain_form.ppmCopyClick(Sender: TObject);
begin
pppmCopyClick(Sender);
end;

procedure Tmain_form.ppmSaveSelectionClick(Sender: TObject);
begin
pppmSaveSelectionClick(Sender, DM.SaveDialog);
end;



//Создание документа вручную------------------------------------------------

procedure Tmain_form.DocNewManually_ActionExecute(Sender: TObject);
begin

//Проверка на активность нужной закладки
If (PageControl_Main.ActivePage.Name='Doc_TS') then
begin

    //приход
    If (Doc_PC.ActivePage.Name='Doc_TS_1') then
    begin
    new_doc(1,1);
    end;


    //списание
    If (Doc_PC.ActivePage.Name='Doc_TS_2') then
    begin
    new_doc(2,1);
    end;

    //уценка
    If (Doc_PC.ActivePage.Name='Doc_TS_3') then
    begin
    new_doc(3,1);
    end;

    //продажа
    If (Doc_PC.ActivePage.Name='Doc_TS_4') then
    begin
    new_doc(4,1);
    end;


    //уценка
    If (Doc_PC.ActivePage.Name='Doc_TS_3') then
    begin
    new_doc(3,1);
    end;
  
    //инвентаризация
    If (Doc_PC.ActivePage.Name='Doc_TS_5') then
    begin
    new_doc(5,1);
    end;

    //другие документы
    If (Doc_PC.ActivePage.Name='Doc_TS_6') then
    begin
    new_doc(6,1);
    end;


end;


end;
//\\Создание документа вручную------------------------------------------------




procedure Tmain_form.ToolButton17Click(Sender: TObject);
begin
DocNewManually_ActionExecute(Sender);
end;





//Создание документа со сканера------------------------------------------------

procedure Tmain_form.DocNewScaner_ActionExecute(Sender: TObject);
begin

//Проверка на активность нужной закладки
If (PageControl_Main.ActivePage.Name='Doc_TS') then
begin

    //продажа
    If (Doc_PC.ActivePage.Name='Doc_TS_4') then
    begin
    new_doc(4,2);
    end;

    //списание
    If (Doc_PC.ActivePage.Name='Doc_TS_2') then
    begin
    new_doc(2,2);
    end;

    //приход
    If (Doc_PC.ActivePage.Name='Doc_TS_1') then
    begin
    new_doc(1,2);
    end;

    //уценка
    If (Doc_PC.ActivePage.Name='Doc_TS_4') then
    begin
    new_doc(4,2);
    end;


    //инвентаризация
    If (PageControl_Main.ActivePageIndex=1) then
    begin
    new_doc(5,2);
    end;

    //другие документы
    If (Doc_PC.ActivePage.Name='Doc_TS_5') then
    begin
    new_doc(6,2);
    end;
end;
end;
//\\Создание документа со сканера------------------------------------------------





//\\Создание документа из другого------------------------------------------------

procedure Tmain_form.DocNewFrom_ActionExecute(Sender: TObject);
begin

//Проверка на активность нужной закладки
If (PageControl_Main.ActivePage.Name='Doc_TS') then
begin

    //продажа
    If (Doc_PC.ActivePage.Name='Doc_TS_4') then
    begin
    new_doc(4,3);
    end; 

    //приход
    If (Doc_PC.ActivePage.Name='Doc_TS_1') then
    begin
    new_doc(1,3);
    end;

end;

end;
//\\Создание документа из другого------------------------------------------------



procedure Tmain_form.ToolButton1Click(Sender: TObject);
begin
DocNewManually_ActionExecute(Sender);
end;

procedure Tmain_form.ToolButton25Click(Sender: TObject);
begin
DocNewManually_ActionExecute(Sender);
end;

procedure Tmain_form.ToolButton5Click(Sender: TObject);
begin
DocNewManually_ActionExecute(Sender);
end;

procedure Tmain_form.ToolButton33Click(Sender: TObject);
begin
DocNewManually_ActionExecute(Sender);
end;

procedure Tmain_form.ToolButton41Click(Sender: TObject);
begin
DocNewManually_ActionExecute(Sender);
end;




procedure Tmain_form.DocListPrint_ActionExecute(Sender: TObject);
begin


frVariables['Дата1'] := Doc_DateTimePicker1.Date;
frVariables['Дата2'] := Doc_DateTimePicker2.Date;
frVariables['Отдел'] := Doc_DepsCBEx.ItemsEx[Doc_DepsCBEx.ItemIndex].Caption;
frVariables['ТипДокумента'] := Doc_PC.ActivePage.Caption='Doc_TS_1';

    try
    DM.frReport.LoadFromFile('raports\_Doc_list.frf');
    DM.frReport.ShowReport;
    except
    on E: Exception do ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
    End;


end;



procedure Tmain_form.N12Click(Sender: TObject);
begin
DocListPrint_ActionExecute(Sender);
end;














procedure Tmain_form.BitBtn3Click(Sender: TObject);
begin

if (Doc_DateTimePicker1.Date > Doc_DateTimePicker2.Date)
then
begin
ShowMessage('Первая дата не может быть больше второй!');
end
else

begin

screen.cursor:=crhourglass;

otc_Move.Close;

otc_Move.ParamByName('DOC_DATE1').AsDate := Doc_DateTimePicker1.Date;
otc_Move.ParamByName('DOC_DATE2').AsDate := Doc_DateTimePicker2.Date;

otc_Move.Open;

screen.cursor:=crdefault;

end;
end;



procedure Tmain_form.N13Click(Sender: TObject);
var
theform: Tform;
begin
theform := Tobnul_Form.Create(Application);
theform.showmodal;
end;






procedure Tmain_form.ToolButton43Click(Sender: TObject);
begin
DocNewScaner_ActionExecute(Sender);
end;

procedure Tmain_form.ToolButton19Click(Sender: TObject);
begin
DocNewScaner_ActionExecute(Sender);
end;

procedure Tmain_form.ToolButton3Click(Sender: TObject);
begin
DocNewScaner_ActionExecute(Sender);
end;

procedure Tmain_form.ToolButton27Click(Sender: TObject);
begin
DocNewScaner_ActionExecute(Sender);
end;

procedure Tmain_form.ToolButton9Click(Sender: TObject);
begin
DocNewScaner_ActionExecute(Sender);
end;

procedure Tmain_form.ToolButton35Click(Sender: TObject);
begin
DocNewScaner_ActionExecute(Sender);
end;

procedure Tmain_form.ToolButton21Click(Sender: TObject);
begin
DocNewFrom_ActionExecute(Sender);
end;

procedure Tmain_form.ToolButton29Click(Sender: TObject);
begin
DocNewFrom_ActionExecute(Sender);
end;

end.

