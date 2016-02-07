unit company_edit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, DB, MemDS, DBAccess,
  Ora, ComCtrls, Grids, DBGridEh, DASQLMonitor, OraSQLMonitor, GridsEh,
  Menus, cxLookAndFeelPainters, cxButtons, DBGridEhGrouping;

type
  TCompanyEditForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    company: TOraQuery;
    companyCOMPANY_ID: TFloatField;
    companyCOMPANY_NAME: TStringField;
    companyKPP: TStringField;
    companyINN: TStringField;
    companyADRESS: TStringField;
    companyPHONE: TStringField;
    companyFAX: TStringField;
    companyOTPUSK_PROIZVEL_FIO: TStringField;
    companyOTPUSK_RAZRESHIL_FIO: TStringField;
    companyGLAV_BUH: TStringField;
    companyOTPUSK_PROIZVEL_DOLJN: TStringField;
    companyOTPUSK_RAZRESHIL_DOLJN: TStringField;
    company_DS: TOraDataSource;
    departments: TOraQuery;
    departments_ds: TOraDataSource;
    company_emp: TOraQuery;
    company_emp_DS: TOraDataSource;
    Panel1: TPanel;
    Panel3: TPanel;
    DBGridEh2: TDBGridEh;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    company_empCOMPANY_EMP_ID: TFloatField;
    company_empCOMPANY_ID: TFloatField;
    company_empOTPUSK_PROIZVEL_FIO: TStringField;
    company_empOTPUSK_RAZRESHIL_FIO: TStringField;
    company_empGLAV_BUH: TStringField;
    company_empOTPUSK_PROIZVEL_DOLJN: TStringField;
    company_empOTPUSK_RAZRESHIL_DOLJN: TStringField;
    company_empID_DEPARTMENTS: TFloatField;
    departmentsID_DEPARTMENTS: TIntegerField;
    departmentsNAME: TStringField;
    departmentsINFO: TStringField;
    departmentsSTATE: TIntegerField;
    OraSQLMonitor1: TOraSQLMonitor;
    Panel2: TPanel;
    BitBtn_Cancel: TcxButton;
    BitBtnSave: TcxButton;
    Label11: TLabel;
    Label12: TLabel;
    companyKPP2: TStringField;
    companyADRESS2: TStringField;
    Label13: TLabel;
    Label16: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    procedure BitBtnFilterOnClick(Sender: TObject);


    procedure Initialize();  //инициализация формы
    procedure Edit(id: integer); //инициализация редактирования ID
    procedure View(id: integer); //инициализация просмотра ID
    procedure New(); //инициализация создания ID
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure company_empBeforePost(DataSet: TDataSet);


  private
    { Private declarations }
  public
    { Public declarations }
    id:integer;
  end;

var
  CompanyEditForm: TCompanyEditForm;

implementation

uses dataM;

{$R *.dfm}



procedure TCompanyEditForm.FormShow(Sender: TObject);
begin
  Initialize();
end;


//-----инициализация формы---------------------
procedure TCompanyEditForm.Initialize();
begin
  if (id <> 0) then   //если передано ID
  begin
    try
      Edit(id);
      Panel1.Visible := true;
      departments.Close;
      departments.Open;

      company_emp.Close;
      company_emp.ParamByName('COMPANY_ID').AsInteger := id;
      company_emp.Open;
    except
      on E: Exception do
         MessageBox(Handle, PChar(E.Message), 'Ошибка при открытии данных!', MB_ICONERROR);
    End;
  //если нет админских прав, то View(id);
  end
  else   //если НЕ передано ID
  begin
    New();
    Panel1.Visible := false;
  end;
end;




//-----инициализация редактирования ID------------
procedure TCompanyEditForm.Edit(id: integer);
begin
  try
    company.Close;
    company.ParamByName('company_id').AsInteger := id;
    company.Open;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка при открытии данных!', MB_ICONERROR);
  End;
end;




//-----инициализация просмотра ID------------
procedure TCompanyEditForm.View(id: integer);
begin
  try
    company.Close;
    company.ParamByName('company_id').AsInteger := id;
    company.Open;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка при открытии данных!', MB_ICONERROR);
  End;
end;




//-----инициализация создания ID------------
procedure TCompanyEditForm.New();
begin
  try
    company.Close;
    company.Open;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка при открытии данных!', MB_ICONERROR);
  End;
end;


// Запись данных
procedure TCompanyEditForm.BitBtnFilterOnClick(Sender: TObject);
begin

  if (PageControl1.ActivePageIndex = 0) then
  begin
    if not (
          (company.FieldByName('COMPANY_NAME').AsString<>'')
          and (company.FieldByName('KPP').AsString<>'')
          and (company.FieldByName('INN').AsString<>'')
          and (company.FieldByName('ADRESS').AsString<>'')
          and (company.FieldByName('PHONE').AsString<>'')
          and (company.FieldByName('FAX').AsString<>'')
        )
    then
      showmessage('Вы заполнили не все обязательные поля!')
    else
    begin
      company.Edit;
      company.Post;

      if ( id = 0) then
      begin
        DM.Q_SQL.Close;
        DM.Q_SQL.SQL.Clear;
        DM.Q_SQL.SQL.Add('select BUH_COMPANY_SET_ID.CURRVAL as aaa from dual');
        DM.Q_SQL.Open;
        id :=  DM.Q_SQL.FieldByName('aaa').AsInteger;
        DM.Q_SQL.Close;

        Initialize();
      end;
    end;
  end;

  if (PageControl1.ActivePageIndex = 1) then
  begin
    company_emp.Edit;
    company_emp.Post;
  end;

end;



procedure TCompanyEditForm.Button1Click(Sender: TObject);
begin
  company_emp.Post;
end;

procedure TCompanyEditForm.company_empBeforePost(DataSet: TDataSet);
begin
  company_emp.FieldByName('company_id').AsInteger     := company_emp.ParamByName('company_id').AsInteger;
  company_emp.FieldByName('ID_DEPARTMENTS').AsInteger := company_emp.ParamByName('ID_DEPARTMENTS').AsInteger;
end;

end.
