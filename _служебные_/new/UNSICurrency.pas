unit UNSICurrency;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxClasses, dxBar, ActnList, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxBarExtItems, cxDropDownEdit, cxLabel,
  cxBarEditItem, star_lib, cxImageComboBox, MemDS, DBAccess, Ora;

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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aNewExecute(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure imgOfficePropertiesChange(Sender: TObject);
    procedure imgOtdelPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function MainFormShow : boolean;
  end;

var
  frmNSICurreny: TfrmNSICurreny;

implementation

uses umain, udm;

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

//добавить
procedure TfrmNSICurreny.aNewExecute(Sender: TObject);
begin
 showmessage('');
end;

//обновить  -  это пока только разминка!!! 
procedure TfrmNSICurreny.aRefreshExecute(Sender: TObject);
begin

    Q_CURR.ParamByName('V_OFFICE').Value :=  intDefOffice;
    Q_CURR.ParamByName('cursor_').AsCursor;
    Q_CURR.Open;

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
  self.Close;
end;

procedure TfrmNSICurreny.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveFormState(frmNSICurreny); //полож.окна
   frmNSICurreny := nil;
  Action := caFree;
end;

procedure TfrmNSICurreny.FormShow(Sender: TObject);
begin
   dm.cxImgLst.GetBitmap(0, btnRefresh.largeGlyph);
   dm.cxImgLst.GetBitmap(1, btnAdd.largeGlyph);
   dm.cxImgLst.GetBitmap(2, btnedit.largeGlyph);
   dm.cxImgLst.GetBitmap(3, btnDelete.largeGlyph);
   dm.cxImgLst.GetBitmap(4, btnHelp.largeGlyph);
   dm.cxImgLst.GetBitmap(5, btnExit.largeGlyph);


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
    grCurrency.SetFocus; //фокус на таблицу
end;

//меняю офис
procedure TfrmNSICurreny.imgOfficePropertiesChange(Sender: TObject);
begin
  intDefOffice := imgOffice.EditValue;
  //DM.id_office := imgOffice.EditValue; //в перем id_office пишу текущ.знач комбобокса
  aRefresh.Execute;  //обновить таблицу
end;

//меняю отдел
procedure TfrmNSICurreny.imgOtdelPropertiesChange(Sender: TObject);
begin
  intDefDept := imgOtdel.EditValue;
  //DM.CUR_DEPT_ID        := imgOtdel.EditValue;
  //DM.CUR_DEPT_NAME      := imgOtdel.Properties.GetDisplayText(DM.CUR_DEPT_ID);
  aRefresh.Execute;  //обновить таблицу
end;

end.
