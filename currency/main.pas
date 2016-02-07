unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xmldom, XMLIntf, StdCtrls, Grids, msxmldom, XMLDoc, DB,
  DBClient, Xmlxform, DBGrids, ComObj, DBAccess, Ora, MemDS, ExtCtrls,
  Buttons, ActnList, DBGridEh, GridsEh, Menus, cxLookAndFeelPainters,
  cxButtons, PI_Library, cxGraphics, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, PI_Library_reg,
  DBGridEhGrouping;

type
  Tmain_f = class(TForm)
    XMLTrans: TXMLTransform;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    XMLDoc: TXMLDocument;
    OraSession1: TOraSession;
    Q_CURR: TOraQuery;
    Q_CURR_DS: TOraDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ActionList1: TActionList;
    add_: TAction;
    edit_: TAction;
    del_: TAction;
    Action4: TAction;
    DBGrid1: TDBGrid;
    XMLTransform1: TXMLTransform;
    ClientDataSet2: TClientDataSet;
    DataSource2: TDataSource;
    OraSQL1: TOraSQL;
    Q_CURRDDATE: TDateTimeField;
    Q_CURRUSD: TFloatField;
    Q_CURREUR: TFloatField;
    OraSQL2: TOraSQL;
    Q_CURRUSD_EUR: TFloatField;
    Q_CURREUR_USD: TFloatField;
    Q_CURRSHEV_USD: TFloatField;
    Q_CURRSHEV_EUR: TFloatField;
    Q_CURRSHEV_USD_EUR: TFloatField;
    Q_CURRSHEV_EUR_USD: TFloatField;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    DBGridEh1: TDBGridEh;
    BitBtn10: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    Label3: TLabel;
    cbOffices: TcxImageComboBox;
    SelQ: TOraQuery;
    Q_CURRID_OFFICE: TIntegerField;
    Q_CURRDATE_CHANGE: TDateTimeField;
    Q_CURRBRIEF: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbOfficesPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    id_office: integer;
    { Public declarations }
  end;

var
  main_f: Tmain_f;

implementation

uses edit_f;

{$R *.dfm}


//
// Добавление курсов
//
procedure Tmain_f.Button1Click(Sender: TObject);
var
   FullFileName: string;
   oDoc, oIE: Variant;
   strHTML: string;
   s1, s2: real;
   f: textfile;

begin
  FullFileName := 'c:\xml_daily.xml'; // Путь к временному файлу где хранится сводка курсов валют

  // Открываем страницу и записываем содержимое во временный файл
	oIE := CreateOleObject('InternetExplorer.Application');
  oIE.Visible := False;
  oIE.Silent := False;
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
  XMLDoc.Active := true;

  XMLTrans.SourceXmlFile := FullFileName;
  XMLTransform1.SourceXmlFile := FullFileName;
  ClientDataSet1.XMLData := XMLTrans.Data;
  ClientDataSet1.Open;
  ClientDataSet2.XMLData := XMLTransform1.Data;
  ClientDataSet2.Open;
end;


procedure Tmain_f.cbOfficesPropertiesChange(Sender: TObject);
begin
  id_office := cbOffices.EditValue;
  Q_CURR.Close;
  Q_CURR.ParamByName('v_office').AsInteger := id_office;
  Q_CURR.Open;
end;

//
//
//
procedure Tmain_f.FormCreate(Sender: TObject);
begin
  Label2.Caption := DateToStr(Date);
end;


//
//  Заполним списки
//
procedure Tmain_f.FormShow(Sender: TObject);
begin
  if (cbOffices.Enabled) then
  begin
  try
    id_office := GetOfficeID;
    cbOffices.Enabled := (id_office = 1);
    DBGridEh1.Columns.Items[0].Visible := cbOffices.Enabled;

    cbOffices.Properties.OnChange := nil;
    SelQ.Close;
    SelQ.SQL.Clear;
    SelQ.SQL.Add('SELECT ID_OFFICE, OFFICE_NAME FROM OFFICES ORDER BY OFFICE_NAME');
    SelQ.Open;
    FillImgComboCx(SelQ, cbOffices, 'Все');
    SelQ.Close;
    cbOffices.EditValue := id_office;
    cbOffices.Properties.OnChange := cbOfficesPropertiesChange;

    Q_CURR.ParamByName('v_office').AsInteger := id_office;
    Q_CURR.Open;
  except
    on E: Exception do ShowMessage(E.Message);
  end;
  end;
end;

//
// Закрыть прогу
//
procedure Tmain_f.BitBtn13Click(Sender: TObject);
begin
  if MessageDlg('Закрыть программу?',mtConfirmation,[mbYes, mbNo],0) = mrYes then close;
end;


//
// Удаление курсов
//
procedure Tmain_f.BitBtn12Click(Sender: TObject);
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


//
//
//
procedure Tmain_f.SpeedButton1Click(Sender: TObject);
var id: TDateTime;
begin
  id := Q_CURRDDATE.AsDateTime;
  Q_CURR.Refresh;
  Q_CURR.Locate('DDATE',id,[]);
  DBGridEh1.SetFocus;
end;


//
// Редактирование курсов
//
procedure Tmain_f.BitBtn11Click(Sender: TObject);
begin
  if (id_office <> Q_CURR.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  editf.cxDate1.Date := Q_CURR.FieldByName('DDATE').AsDateTime;
  editf.Edit1.EditValue := Q_CURR.FieldByName('USD').AsFloat;
  editf.Edit2.EditValue := Q_CURR.FieldByName('EUR').AsFloat;
  editf.Edit3.EditValue := Q_CURR.FieldByName('USD_EUR').AsFloat;
  editf.Edit4.EditValue := Q_CURR.FieldByName('EUR_USD').AsFloat;
  editf.Edit5.EditValue := Q_CURR.FieldByName('SHEV_USD').AsFloat;
  editf.Edit6.EditValue := Q_CURR.FieldByName('SHEV_EUR').AsFloat;
  editf.Edit7.EditValue := Q_CURR.FieldByName('SHEV_USD_EUR').AsFloat;
  editf.Edit8.EditValue := Q_CURR.FieldByName('SHEV_EUR_USD').AsFloat;
  editf.Showmodal;
  DBGridEh1.SetFocus;

end;


//
// Добавление курсов
//
procedure Tmain_f.BitBtn2Click(Sender: TObject);
begin
  editf.Edit1.Clear;
  editf.Edit2.Clear;
  editf.Edit3.Clear;
  editf.Edit4.Clear;
  editf.Edit5.Clear;
  editf.Edit6.Clear;
  editf.Edit7.Clear;
  editf.Edit8.Clear;

  editf.cxDate1.Date := Now();
  editf.Showmodal;
  DBGridEh1.SetFocus;
end;

end.
