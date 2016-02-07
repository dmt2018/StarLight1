unit company;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGridEh, DB, Ora, MemDS, DBAccess,
  Buttons, GridsEh, Menus, cxLookAndFeelPainters, cxButtons, DBGridEhGrouping;

type
  TcompanyForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh2: TDBGridEh;
    DBGridEh1: TDBGridEh;
    Panel3: TPanel;
    Panel4: TPanel;
    company: TOraQuery;
    company_banc: TOraQuery;
    company_DS: TOraDataSource;
    company_banc_DS: TOraDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    BitBtn2: TBitBtn;
    Panel7: TPanel;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn_edit: TBitBtn;
    btn_store_close: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure companyAfterOpen(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn_editClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  companyForm: TcompanyForm;

implementation

uses company_edit, banc_edit, DataM;
{$R *.dfm}


// Открываем компании
procedure TcompanyForm.FormCreate(Sender: TObject);
begin
  try
    company.Close;
    company.Open;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка при открытии данных!', MB_ICONERROR);
  End;
end;

// На открытие компаний открываем банки
procedure TcompanyForm.companyAfterOpen(DataSet: TDataSet);
begin
  try
    company_banc.Close;
    company_banc.Open;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка при открытии данных!', MB_ICONERROR);
  End;
end;


//
//  Добавление компании
//
procedure TcompanyForm.BitBtn4Click(Sender: TObject);
var theForm: TcompanyeditForm;
begin
  theForm := TcompanyeditForm.Create(Application);
  try
    TcompanyeditForm(theForm).id := 0;
    theForm.ShowModal;
    company.Refresh;
    company.Locate('COMPANY_ID',TcompanyeditForm(theForm).id,[]);
  finally
      theForm.Free;
  end;
end;


//
//  Редактирование компании
//
procedure TcompanyForm.BitBtn6Click(Sender: TObject);
var theForm: TForm;
    ID: integer;
begin
  // Получаем текущий ID банка
  ID := company.FieldByName('company_ID').AsInteger;
  if ( ID <> 0) then
  begin
    theForm := TcompanyeditForm.Create(Application);
    try
      TcompanyeditForm(theForm).id := ID;
      theForm.showmodal;
      company.RefreshRecord;
    finally
      theForm.Free;
    end;
  end;
end;


//
//  Удаление компании
//
procedure TcompanyForm.BitBtn1Click(Sender: TObject);
var ex_param: integer;
begin
  if MessageDlg('Вы хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    try
      DM.Q_SQL.Close;
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add('begin creator.BUH_PKG.delete_company(:COMPANY_ID, :OUT_RES, :OUT_TEXT); end;');
      DM.Q_SQL.Params.ParamByName('COMPANY_ID').AsInteger := company.FieldByName('company_ID').AsInteger;
      DM.Q_SQL.Params.ParamByName('OUT_RES').AsInteger := 0;
      DM.Q_SQL.Params.ParamByName('OUT_TEXT').AsString := '';
      DM.Q_SQL.Execute;
      company.Refresh;
      ex_param :=  DM.Q_SQL.Params.ParamByName('OUT_RES').AsInteger;
      if (ex_param > 0) then
         MessageBox(Handle, PChar(DM.Q_SQL.Params.ParamByName('OUT_TEXT').AsString), 'Внимание!', MB_ICONWARNING);
    except
      on E: Exception do
         MessageBox(Handle, PChar(E.Message), 'Ошибка при открытии данных!', MB_ICONERROR);
    End;
  end;
end;



//
//  Удаление банка
//
procedure TcompanyForm.BitBtn5Click(Sender: TObject);
var ex_param: integer;
    ex_errmsg: string;
begin
  if MessageDlg('Вы хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
  begin
    try
      DM.Q_SQL.Close;
      DM.Q_SQL.SQL.Clear;
      DM.Q_SQL.SQL.Add('begin creator.BUH_PKG.delete_bank(:BANC_ID_, :OUT_RES, :OUT_TEXT); end;');
      DM.Q_SQL.Params.ParamByName('BANC_ID_').AsInteger := company_banc.FieldByName('BANC_ID').AsInteger;
      DM.Q_SQL.Params.ParamByName('OUT_RES').AsInteger := 0;
      DM.Q_SQL.Params.ParamByName('OUT_TEXT').AsString := '';
      DM.Q_SQL.Execute;
      company_banc.Refresh;
      ex_param :=  DM.Q_SQL.Params.ParamByName('OUT_RES').AsInteger;
      if (ex_param > 0) then
         MessageBox(Handle, PChar(DM.Q_SQL.Params.ParamByName('OUT_TEXT').AsString), 'Внимание!', MB_ICONWARNING);
    except
      on E: Exception do
         MessageBox(Handle, PChar(E.Message), 'Ошибка при открытии данных!', MB_ICONERROR);
    End;
  end;
end;


//
//  Добавление банка
//
procedure TcompanyForm.BitBtn2Click(Sender: TObject);
var theForm: TbanceditForm;
begin
  theForm := TbanceditForm.Create(Application);
  try
    TbanceditForm(theForm).company_id := company.FieldByName('COMPANY_ID').AsInteger;
    TbanceditForm(theForm).id         := 0;
    theForm.showmodal;
    company_banc.Refresh;
    company_banc.Locate('BANC_ID',TbanceditForm(theForm).id,[]);
  finally
      theForm.Free;
  end;
end;


//
//  Редактирование банка
//
procedure TcompanyForm.BitBtn_editClick(Sender: TObject);
var theForm: TbanceditForm;
    ID: integer;
begin
  //Получаем текущий ID банка
  ID := company_banc.FieldByName('BANC_ID').AsInteger;
  if (ID <> 0) then
  begin
    theForm := TbanceditForm.Create(Application);
    try
      TbanceditForm(theForm).id := ID;
      theForm.showmodal;
      company_banc.RefreshRecord;
    finally
      theForm.Free;
    end;
  end;
end;


end.
