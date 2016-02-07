unit prihod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Grids, DBGridEh, StdCtrls, Buttons, ExtCtrls, ComCtrls,
  DB, Ora, MemDS, ActnList, GridsEh, Registry,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxLabel, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxTextEdit, Menus,
  cxLookAndFeelPainters, cxButtons, cxGridExportLink, DBAccess, ShellApi;

type
  TprihodForm = class(TForm)
    Panel3: TPanel;
    Panel5: TPanel;
    Panel1: TPanel;
    Panel10: TPanel;
    Panel7: TPanel;
    DOCNEW1_DATA: TOraQuery;
    DOCNEW1_DATA_DS: TOraDataSource;
    doc: TOraQuery;
    DOC_DATA: TOraQuery;
    DOC_DS: TOraDataSource;
    DOC_DATA_DS: TOraDataSource;
    DocInfo_Panel: TPanel;
    Label10: TLabel;
    DB_OPERATOR_NAME: TDBText;
    Label11: TLabel;
    DB_DOC_DATE_REAL: TDBText;
    ActionList1: TActionList;
    DocSave_Action: TAction;
    Panel2: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Edit_Inv_Id: TEdit;
    EditComments: TEdit;
    Panel6: TPanel;
    DBText3: TDBText;
    Label4: TLabel;
    Panel11: TPanel;
    Label3: TLabel;
    Panel8: TPanel;
    StatusBar: TStatusBar;
    BitBtn1: TBitBtn;
    a_f11: TAction;
    grid_np: TcxGrid;
    grid_npView1: TcxGridDBTableView;
    np_SPESIFICATION: TcxGridDBColumn;
    np_H_CODE: TcxGridDBColumn;
    np_CODE: TcxGridDBColumn;
    np_QUANTITY: TcxGridDBColumn;
    np_PRICE: TcxGridDBColumn;
    np_QUANTITY_PRICE: TcxGridDBColumn;
    np_gtd: TcxGridDBColumn;
    np_FULL_NAME: TcxGridDBColumn;
    np_F_SUB_TYPE: TcxGridDBColumn;
    np_f_type: TcxGridDBColumn;
    grid_np_Level1: TcxGridLevel;
    cxStyleRepository1: TcxStyleRepository;
    st_new: TcxStyle;
    st_new2: TcxStyle;
    BitBtn_Cancel: TcxButton;
    BitBtnSave: TcxButton;
    spis_menu: TPopupMenu;
    spis_m1: TMenuItem;
    spis_m2: TMenuItem;
    SaveDialog1: TSaveDialog;
    np_S_NAME_RU: TcxGridDBColumn;
    DBText1: TDBText;
    procedure FormShow(Sender: TObject);
    procedure docAfterOpen(DataSet: TDataSet);
    procedure DocSave_ActionExecute(Sender: TObject);

    procedure Initialize();  //инициализация формы
    procedure New(id: integer); //инициализация редактирования ID
    procedure View(id: integer);

    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spis_m1Click(Sender: TObject);
    procedure spis_m2Click(Sender: TObject);

  private
    path: string;
    { Private declarations }
  public
    { Public declarations }
    id: integer;
    n_id: integer;
    hcode_, gtd_: string;
    department_index: integer;
    department_name: string;
  end;

var
  prihodForm: TprihodForm;

implementation
uses dataM, global, oper_select;

{$R *.dfm}


//-----инициализация формы---------------------
procedure TprihodForm.Initialize();
begin
  if (id<>0) then   //если передано ID
    View(id)
  else
    New(id);
end;


//
//  Открытие формы
//
procedure TprihodForm.FormShow(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  path          := ExtractFilePath(Application.ExeName);
  AOptions      := [];
  AStoreKey     := path + '/ini/StoreHouse_prihod_list_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'Nakladnaya';
  grid_npView1.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  StatusBar.Panels[0].Text  := ''; //'  Дата работы со складом: ' + GlobalDate_FORMAT;
  StatusBar.Panels[1].Text  := '  Оператор: '+DataM.Operator_Name;

  screen.cursor             := crhourglass;
  Initialize();
  screen.cursor             := crdefault;
  Label3.Caption            := department_name +' :: Накладная прихода';

  if (hcode_ <> '') then np_H_CODE.DataBinding.AddToFilter(nil,foEqual,hcode_);
  if (gtd_ <> '')   then np_GTD.DataBinding.AddToFilter(nil,foEqual,gtd_);
  if (hcode_ <> '') or (gtd_ <> '') then grid_npView1.DataController.Filter.Active := True;
end;



//-----инициализация создания нового ID------------
procedure TprihodForm.New(id: integer);
begin
    try
      DOCNEW1_DATA.Close;
      DOCNEW1_DATA.ParamByName('ID_DEPARTMENTS').Value := department_index;
      grid_npView1.DataController.DataSource := DOCNEW1_DATA_DS;
      DOCNEW1_DATA.Open;
    except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
    end;
end;


//-----инициализация просмотра ID------------
procedure TprihodForm.View(id: integer);
begin
  if (id<>0) then
  begin
    try
      grid_npView1.DataController.DataSource := DOC_DATA_DS;
      DOC.Close;
      DOC.ParamByName('id_doc').AsInteger :=id;
      DOC.Open;
    except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
    End;

    EditComments.Text     := doc.FieldByName('Comments').AsString;
    Edit_Inv_Id.Text      := doc.FieldByName('Inv_Id').AsString;
    EditComments.Enabled  := false;
    DocInfo_Panel.Visible := true;
    department_name       := doc.FieldByName('department_name').AsString;
  end;
end;
//--------------------------------------------


//
//  CTRL+ENTER запись
//
procedure TprihodForm.DocSave_ActionExecute(Sender: TObject);
begin
  BitBtnSave.Click;
end;


//
// Применяем фильтр
//
procedure TprihodForm.BitBtn1Click(Sender: TObject);
begin
    grid_npView1.DataController.Filter.Clear;
    grid_np.SetFocus;
end;


//
//  На закрытие формы запоминаем таблицу
//
procedure TprihodForm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  AOptions := [];
  AStoreKey     := path + '/ini/StoreHouse_prihod_list_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'Nakladnaya';
  grid_npView1.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
end;




procedure TprihodForm.docAfterOpen(DataSet: TDataSet);
begin
  try
    DOC_DATA.Close;
    DOC_DATA.Open;
    if (n_id > 0) and (id > 0) then
        DOC_DATA.Locate('n_id', n_id, []);
  except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
  end;
end;



//
//  Экспорт в Эксель
//
procedure TprihodForm.spis_m1Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
     ExportGridToExcel(SaveDialog1.FileName, grid_np, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog1.FileName), nil, nil, SW_RESTORE);
  end;
end;


//
//  Восстанавливаем таблицу
//
procedure TprihodForm.spis_m2Click(Sender: TObject);
var i, j: integer;
begin
  grid_npView1.DataController.Filter.Clear;
  j := grid_npView1.SortedItemCount;
  for i := 0 to j-1 do
  begin
   grid_npView1.SortedItems[0].SortOrder := soNone;
  end;
end;


end.
