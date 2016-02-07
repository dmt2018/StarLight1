unit main_form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, ComCtrls, OleCtrls,
  ActnList, Menus, cxLookAndFeelPainters, cxButtons, GridsEh, DBGridEh, Ora,
  Mask, DBCtrlsEh, DB, cxStyles, cxClasses, cxGridLevel, cxControls, cxGrid,
  ImgList, cxGraphics, dxBar, dxBarExtItems, cxGridCustomView, cxGridCustomTableView,
  cxDropDownEdit, cxBarEditItem, IniFiles, cxGridDBTableView, cxGridTableView,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxTextEdit,
  cxCheckBox, PI_Library_reg, cxImageComboBox;
{
  , cxDBData,

  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
   cxTextEdit, cxCheckBox;
}
type
  TMain = class(TForm)
    Panel11: TPanel;
    gr_nsi_l_region: TcxGridLevel;
    gr_nsi: TcxGrid;
    gr_nsi_l_advert: TcxGridLevel;
    gr_nsi_l_types: TcxGridLevel;
    gr_nsi_l_deps: TcxGridLevel;
    gr_nsi_l_titles: TcxGridLevel;
    bdc_nsi: TdxBarDockControl;
    ActionList2: TActionList;
    aExit: TAction;
    AddN: TAction;
    EditN: TAction;
    DeleteN: TAction;
    Refresh: TAction;
    bm_nsi: TdxBarManager;
    bmb_nsi: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    bb_close: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    img_nsi: TcxImageList;
    aCtrlEnter: TAction;
    bdc_nsi_footer: TdxBarDockControl;
    bm_nsiBar1: TdxBar;
    dxBarStatic1: TdxBarStatic;
    bc_fontsize: TcxBarEditItem;
    gvr_nsi: TcxGridViewRepository;
    tview_regions: TcxGridDBTableView;
    tview_regionsnn: TcxGridDBColumn;
    tview_regionsNAME: TcxGridDBColumn;
    tview_regionsINFO: TcxGridDBColumn;
    tview_regionsID_REGIONS: TcxGridDBColumn;
    tview_ADVERT: TcxGridDBTableView;
    tview_ADVERTnn: TcxGridDBColumn;
    tview_ADVERTNAME: TcxGridDBColumn;
    tview_ADVERTINFO: TcxGridDBColumn;
    tview_ADVERTID_ADVERTISMENTS: TcxGridDBColumn;
    tview_TYPES: TcxGridDBTableView;
    tview_TYPESnn: TcxGridDBColumn;
    tview_TYPESNAME: TcxGridDBColumn;
    tview_TYPEST_TYPE: TcxGridDBColumn;
    tview_TYPESDISCOUNT: TcxGridDBColumn;
    tview_TYPESINFO: TcxGridDBColumn;
    tview_TYPESID_CLIENT_TYPES: TcxGridDBColumn;
    tview_DEPS: TcxGridDBTableView;
    tview_DEPSnn: TcxGridDBColumn;
    tview_DEPSNAME: TcxGridDBColumn;
    tview_DEPSSTATE: TcxGridDBColumn;
    tview_DEPSINFO: TcxGridDBColumn;
    tview_DEPSID_DEPARTMENTS: TcxGridDBColumn;
    tview_TITLES: TcxGridDBTableView;
    tview_TITLESnn: TcxGridDBColumn;
    tview_TITLESNAME: TcxGridDBColumn;
    tview_TITLESINFO: TcxGridDBColumn;
    tview_TITLESID_JOB_TITLES: TcxGridDBColumn;
    tview_regionsID_OFFICE: TcxGridDBColumn;
    tview_ADVERTID_OFFICE: TcxGridDBColumn;
    tview_TYPESID_OFFICE: TcxGridDBColumn;
    tview_DEPSID_OFFICE: TcxGridDBColumn;
    tview_TITLESID_OFFICE: TcxGridDBColumn;
    chb_offices: TcxBarEditItem;
    imgOffice: TcxBarEditItem;
    tview_regionsBRIEF: TcxGridDBColumn;
    tview_ADVERTBRIEF: TcxGridDBColumn;
    tview_TYPESBRIEF: TcxGridDBColumn;
    tview_DEPSBRIEF: TcxGridDBColumn;
    tview_TITLESBRIEF: TcxGridDBColumn;
    tview_CITIES: TcxGridDBTableView;
    tview_CITIESID_CITY: TcxGridDBColumn;
    tview_CITIESCITY: TcxGridDBColumn;
    tview_CITIESKOD: TcxGridDBColumn;
    tview_CITIESID_REGION: TcxGridDBColumn;
    tview_CITIESID_OFFICE: TcxGridDBColumn;
    tview_CITIESBRIEF: TcxGridDBColumn;
    tview_CITIESNAME: TcxGridDBColumn;
    gr_nsi_l_cities: TcxGridLevel;
    tview_regionsKLADR: TcxGridDBColumn;
    tview_regionsKOD: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure aExitExecute(Sender: TObject);
    procedure AddNExecute(Sender: TObject);
    procedure EditNExecute(Sender: TObject);
    procedure DeleteNExecute(Sender: TObject);
    procedure RefreshExecute(Sender: TObject);
    procedure aCtrlEnterExecute(Sender: TObject);
    procedure bc_fontsizePropertiesChange(Sender: TObject);
    procedure dxBarLargeButton8Click(Sender: TObject);
    procedure tview_regionsCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tview_ADVERTCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tview_TYPESCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tview_DEPSCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tview_TITLESCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure imgOfficePropertiesChange(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    path, creator: string;
  end;

var
  Main: TMain;

implementation

uses DataM, info_f, editor_f, UHelp;

{$R *.dfm}


// Выход из программы
procedure TMain.aExitExecute(Sender: TObject);
begin
  if MessageDlg('Закрыть программу?',mtConfirmation,[mbYes, mbNo],0) = mrYes then Close;
end;

// Закрытие формы
procedure TMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.OraSession1.Close;
end;

// Обновлениеданных
procedure TMain.RefreshExecute(Sender: TObject);
begin
  DM.Q_ADVERT.Refresh;
  DM.Q_TYPES.Refresh;
  DM.Q_REGIONS.Refresh;
  DM.Q_DEPS.Refresh;
  DM.Q_TITLES.Refresh;
end;

procedure TMain.tview_ADVERTCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var val1: variant;
begin
  if (not AViewInfo.Selected) and (tview_ADVERT.DataController.DataSet.RecordCount > 0) then
  begin
    // Красим заблокированного бухами
    val1  := tview_ADVERT.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, tview_ADVERT.GetColumnByFieldName('ID_OFFICE').Index
                );
    if (val1 <> DM.id_office) then
    begin
        ACanvas.Font.Style := [fsItalic];
    end;
  end;
end;

procedure TMain.tview_DEPSCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var val1: variant;
begin
  if (not AViewInfo.Selected) and (tview_DEPS.DataController.DataSet.RecordCount > 0) then
  begin
    // Красим заблокированного бухами
    val1  := tview_DEPS.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, tview_DEPS.GetColumnByFieldName('ID_OFFICE').Index
                );
    if (val1 <> DM.id_office) then
    begin
        ACanvas.Font.Style := [fsItalic];
    end;
  end;
end;

procedure TMain.tview_regionsCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var val1: variant;
begin
  if (not AViewInfo.Selected) and (tview_regions.DataController.DataSet.RecordCount > 0) then
  begin
    // Красим заблокированного бухами
    val1  := tview_regions.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, tview_regions.GetColumnByFieldName('ID_OFFICE').Index
                );
    if (val1 <> DM.id_office) then
    begin
        ACanvas.Font.Style := [fsItalic];
    end;
  end;
end;

procedure TMain.tview_TITLESCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var val1: variant;
begin
  if (not AViewInfo.Selected) and (tview_TITLES.DataController.DataSet.RecordCount > 0) then
  begin
    // Красим заблокированного бухами
    val1  := tview_TITLES.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, tview_TITLES.GetColumnByFieldName('ID_OFFICE').Index
                );
    if (val1 <> DM.id_office) then
    begin
        ACanvas.Font.Style := [fsItalic];
    end;
  end;
end;

procedure TMain.tview_TYPESCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var val1: variant;
begin
  if (not AViewInfo.Selected) and (tview_TYPES.DataController.DataSet.RecordCount > 0) then
  begin
    // Красим заблокированного бухами
    val1  := tview_TYPES.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, tview_TYPES.GetColumnByFieldName('ID_OFFICE').Index
                );
    if (val1 <> DM.id_office) then
    begin
        ACanvas.Font.Style := [fsItalic];
    end;
  end;
end;

// Расставим значения по-умолчанию
procedure TMain.FormShow(Sender: TObject);
Var RegIni : TIniFile;
begin
  try
    path   := ExtractFilePath(Application.ExeName);
    RegIni := TIniFile.Create(path+'ini/'+DM.OraSession1.Username+'.ini');

    bc_fontsize.EditValue := RegIni.ReadString('FontSize', 'Value', '10');
    gr_nsi.Font.Size := bc_fontsize.EditValue;

    AddN.Enabled    := DM.r_edit;
    EditN.Enabled   := DM.r_edit;
    DeleteN.Enabled := DM.r_delete;

    imgOffice.Enabled := (GetOfficeID = 1);
    tview_regionsBRIEF.Visible := not (GetOfficeID = DM.id_office);
    tview_ADVERTBRIEF.Visible  := tview_regionsBRIEF.Visible;
    tview_TYPESBRIEF.Visible   := tview_regionsBRIEF.Visible;
    tview_DEPSBRIEF.Visible    := tview_regionsBRIEF.Visible;
    tview_TITLESBRIEF.Visible  := tview_regionsBRIEF.Visible;

    if (imgOffice.Enabled) then
    begin
      try
        DM.SelQ.Close;
        DM.SelQ.SQL.Clear;
        DM.SelQ.SQL.Add('SELECT ID_OFFICE, OFFICE_NAME FROM OFFICES ORDER BY OFFICE_NAME');
        DM.SelQ.Open;
      except
        on E: Exception do ShowMessage(E.Message);
      end;

      imgOffice.Properties.OnChange := nil;
      FillImgComboCxItm(DM.SelQ, imgOffice, 'Все...');
      imgOffice.EditValue := DM.id_office;
      imgOffice.Properties.OnChange := imgOfficePropertiesChange;
    end;

  finally
    RegIni.Free;
    gr_nsi.SetFocus;
  end;
end;

procedure TMain.imgOfficePropertiesChange(Sender: TObject);
begin
  DM.id_office := imgOffice.EditValue;
  DM.RefreshAll;
end;

// Сменим шрифт
procedure TMain.bc_fontsizePropertiesChange(Sender: TObject);
Var RegIni : TIniFile;
begin
  gr_nsi.Font.Size := bc_fontsize.EditValue;

  try
    RegIni := TIniFile.Create(path+'ini/'+DM.OraSession1.Username+'.ini');
    RegIni.WriteString('FontSize', 'Value', bc_fontsize.EditValue);
  finally
    RegIni.Free;
  end;
end;

// Удаление записи из таблиц
procedure TMain.DeleteNExecute(Sender: TObject);
var idd: integer;
    cds : TcxGridDBTableView;
begin
  if ( (gr_nsi.ActiveView.DataController as TcxDBDataController).DataSet.RecordCount > 0 ) then
  begin

  if (DM.id_office <> (gr_nsi.ActiveView.DataController as TcxDBDataController).DataSet.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  try
  cds := (gr_nsi.ActiveLevel.GridView as TcxGridDBTableView);

  if (cds.DataController.DataSource.DataSet.active) and (cds.DataController.DataSource.DataSet.RecordCount > 0) then
  begin
    if MessageDlg('Вы действительно хотите удалить запись?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
    begin
      DM.Ora_SQL.SQL.Clear;
      DM.Ora_SQL.SQL.Add('begin BOOKS.delete_record(:table_, :pk_, :id_); end;');

      // Пытаемся выполнить SQL запрос на удаление
      try
        if (gr_nsi.ActiveLevel.Tag = 1) then
        begin
          DM.Ora_SQL.ParamByName('table_').AsString := 'BOOKS_REGIONS';
          DM.Ora_SQL.ParamByName('pk_').AsString := 'ID_REGIONS';
          DM.Ora_SQL.ParamByName('id_').AsInteger := DM.Q_REGIONS.FieldByName('ID_REGIONS').Value;
          DM.Q_REGIONS.Next;
          idd := DM.Q_REGIONS.FieldByName('ID_REGIONS').Value;
          DM.Ora_SQL.Execute;
          DM.Q_REGIONS.Refresh;
          DM.Q_REGIONS.Locate('ID_REGIONS',idd,[]);
        end;
        if (gr_nsi.ActiveLevel.Tag = 2) then
        begin
          DM.Ora_SQL.ParamByName('table_').AsString := 'BOOKS_ADVERTISMENTS';
          DM.Ora_SQL.ParamByName('pk_').AsString := 'ID_ADVERTISMENTS';
          DM.Ora_SQL.ParamByName('id_').AsInteger := DM.Q_ADVERT.FieldByName('ID_ADVERTISMENTS').Value;
          DM.Q_ADVERT.Next;
          idd := DM.Q_ADVERT.FieldByName('ID_ADVERTISMENTS').Value;
          DM.Ora_SQL.Execute;
          DM.Q_ADVERT.Refresh;
          DM.Q_ADVERT.Locate('ID_ADVERTISMENTS',idd,[]);
        end;
        if (gr_nsi.ActiveLevel.Tag = 3) then
        begin
          DM.Ora_SQL.ParamByName('table_').AsString := 'BOOKS_CLIENT_TYPES';
          DM.Ora_SQL.ParamByName('pk_').AsString := 'ID_CLIENT_TYPES';
          DM.Ora_SQL.ParamByName('id_').AsInteger := DM.Q_TYPES.FieldByName('ID_CLIENT_TYPES').Value;
          DM.Q_TYPES.Next;
          idd := DM.Q_TYPES.FieldByName('ID_CLIENT_TYPES').Value;
          DM.Ora_SQL.Execute;
          DM.Q_TYPES.Refresh;
          DM.Q_TYPES.Locate('ID_CLIENT_TYPES',idd,[]);
        end;
        if (gr_nsi.ActiveLevel.Tag = 4) then
        begin
          DM.Ora_SQL.ParamByName('table_').AsString := 'BOOKS_DEPARTMENTS';
          DM.Ora_SQL.ParamByName('pk_').AsString := 'ID_DEPARTMENTS';
          DM.Ora_SQL.ParamByName('id_').AsInteger := DM.Q_DEPS.FieldByName('ID_DEPARTMENTS').Value;
          DM.Q_DEPS.Next;
          idd := DM.Q_DEPS.FieldByName('ID_DEPARTMENTS').Value;
          DM.Ora_SQL.Execute;
          DM.Q_DEPS.Refresh;
          DM.Q_DEPS.Locate('ID_DEPARTMENTS',idd,[]);
        end;
        if (gr_nsi.ActiveLevel.Tag = 5) then
        begin
          DM.Ora_SQL.ParamByName('table_').AsString := 'BOOKS_JOB_TITLES';
          DM.Ora_SQL.ParamByName('pk_').AsString := 'ID_JOB_TITLES';
          DM.Ora_SQL.ParamByName('id_').AsInteger := DM.Q_TITLES.FieldByName('ID_JOB_TITLES').Value;
          DM.Q_TITLES.Next;
          idd := DM.Q_TITLES.FieldByName('ID_JOB_TITLES').Value;
          DM.Ora_SQL.Execute;
          DM.Q_TITLES.Refresh;
          DM.Q_TITLES.Locate('ID_JOB_TITLES',idd,[]);
        end;
        if (gr_nsi.ActiveLevel.Tag = 6) then
        begin
          DM.Ora_SQL.ParamByName('table_').AsString := 'books_cities';
          DM.Ora_SQL.ParamByName('pk_').AsString := 'ID_CITY';
          DM.Ora_SQL.ParamByName('id_').AsInteger := DM.Q_CITIES.FieldByName('ID_CITY').Value;
          DM.Q_CITIES.Next;
          idd := DM.Q_CITIES.FieldByName('ID_CITY').Value;
          DM.Ora_SQL.Execute;
          DM.Q_CITIES.Refresh;
          DM.Q_CITIES.Locate('ID_CITY',idd,[]);
        end;

      except
        on E: Exception do
        begin
          if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then MessageBox(Handle, 'У вас нет прав на данную операцию!', 'Не удалось выполнить операцию!', MB_ICONERROR)
          else
            if (StrPos(PChar(E.Message), PChar('02292')) <> nil) then MessageBox(Handle, 'Стираемая запись используется в данных других программ!'+#10#13+'Удаление возможно только не используемых значений!', 'Не удалось выполнить операцию!', MB_ICONERROR)
            else MessageBox(Handle, PChar(E.Message), 'Не удалось выполнить операцию!', MB_ICONERROR);
          end;
        End;
    end;
  end
  else ShowMessage('В базе данных нет записей для удаления!');
  finally
    gr_nsi.SetFocus;
  end;
  end;
end;

procedure TMain.dxBarLargeButton8Click(Sender: TObject);
begin
  frmHelp := TfrmHelp.Create(Application);
  try
    frmHelp.cxPageControl1.ActivePageIndex := gr_nsi.ActiveLevel.Tag - 1;
    frmHelp.cxPageControl1.HideTabs := true;
    frmHelp.ShowModal;
  finally
    frmHelp.Free;
  end;
end;

// Добавление данных
procedure TMain.AddNExecute(Sender: TObject);
begin
  if (gr_nsi.ActiveLevel.Tag < 5) and (DM.id_office > 1) then
  begin
    MessageBox(Handle,'Вид данных добавляется только через главный офис компании.','Внимание!',MB_ICONERROR);
    exit;
  end;

  editor := Teditor.Create(Application);
  try

    editor.Znak_EditPercent.Visible := false;
    editor.DBNumberEditEh1.Visible  := false;
    editor.Edit1.Text               := '';
    editor.Edit1.Tag                := 0;
    editor.Memo1.Lines.Clear;

    if (gr_nsi.ActiveLevel.Tag = 1) then
    begin
      editor.ttype              := 1;
      editor.Label6.Caption     := 'Регионы :: добавление';
      editor.CheckBox1.Visible  := false;
      editor.Label7.Visible     := false;

      editor.pnlCity.Visible    := true;
      editor.Label8.Caption     := 'Код региона';
      editor.Label9.Visible     := false;
      editor.Label10.Visible    := false;
      editor.imcbRegion.Visible := false;

      editor.ShowModal;
      DM.Q_REGIONS.Refresh;
      DM.Q_REGIONS.Locate('id_regions', editor.Edit1.Tag, []);
    end;

    if (gr_nsi.ActiveLevel.Tag = 2) then
    begin
      editor.ttype              := 3;
      editor.Label6.Caption     := 'Источники рекламы :: добавление';
      editor.CheckBox1.Visible  := false;
      editor.Label7.Visible     := false;
      editor.ShowModal;
      DM.Q_ADVERT.Refresh;
      DM.Q_ADVERT.Locate('ID_ADVERTISMENTS', editor.Edit1.Tag, []);
    end;

    if (gr_nsi.ActiveLevel.Tag = 3) then
    begin
      editor.ttype                    := 5;
      editor.Label6.Caption           := 'Типы клиентов :: добавление';
      editor.CheckBox1.Visible        := true;
      editor.CheckBox1.Caption        := ' печать № свидетельства о регистрации';
      editor.Label7.Visible           := true;
      editor.DBNumberEditEh1.Visible  := true;
      editor.Znak_EditPercent.Visible := true;
      editor.ShowModal;
      DM.Q_TYPES.Refresh;
      DM.Q_TYPES.Locate('ID_CLIENT_TYPES', editor.Edit1.Tag, []);
    end;

    if (gr_nsi.ActiveLevel.Tag = 4) then
    begin
      editor.ttype             := 7;
      editor.Label6.Caption    := 'Отделы :: добавление';
      editor.CheckBox1.Visible := true;
      editor.CheckBox1.Caption := ' является отделом продаж';
      editor.Label7.Visible    := false;
      editor.ShowModal;
      DM.Q_DEPS.Refresh;
      DM.Q_DEPS.Locate('ID_DEPARTMENTS', editor.Edit1.Tag, []);
    end;

    if (gr_nsi.ActiveLevel.Tag = 5) then
    begin
      editor.ttype             := 9;
      editor.Label6.Caption    := 'Должности :: добавление';
      editor.CheckBox1.Visible := false;
      editor.Label7.Visible    := false;
      editor.ShowModal;
      DM.Q_TITLES.Refresh;
      DM.Q_TITLES.Locate('ID_JOB_TITLES', editor.Edit1.Tag, []);
    end;

    if (gr_nsi.ActiveLevel.Tag = 6) then
    begin
      editor.ttype              := 11;
      editor.Label6.Caption     := 'Города :: добавление';
      editor.CheckBox1.Visible  := false;
      editor.Label7.Visible     := false;
      editor.pnlCity.Visible    := true;
      editor.Label11.Visible    := false;
      editor.Edit3.Visible      := false;
      editor.ShowModal;
      DM.Q_CITIES.Refresh;
      DM.Q_CITIES.Locate('id_city', editor.Edit1.Tag, []);
    end;

  finally
    editor.Free;
    gr_nsi.SetFocus;
  end;

end;

// Редактирование данных
procedure TMain.EditNExecute(Sender: TObject);
begin
  if ( (gr_nsi.ActiveView.DataController as TcxDBDataController).DataSet.RecordCount > 0 ) then
  begin

  if (DM.id_office <> (gr_nsi.ActiveView.DataController as TcxDBDataController).DataSet.FieldByName('ID_OFFICE').AsInteger) then
  begin
    MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
    exit;
  end;

  editor := Teditor.Create(Application);
  try
    if (gr_nsi.ActiveLevel.Tag = 1) and (DM.Q_REGIONS.FieldByName('NAME').AsString <> '') then
    begin
      editor.ttype := 2;
      editor.Edit1.Tag := DM.Q_REGIONS.FieldByName('ID_REGIONS').AsInteger;
      editor.Edit1.Text := DM.Q_REGIONS.FieldByName('NAME').AsString;
      editor.MEMO1.Text := DM.Q_REGIONS.FieldByName('INFO').AsString;
      editor.Label6.Caption := 'Регионы :: редактирование';
      editor.CheckBox1.Visible := false;
      editor.Label7.Visible := false;
      editor.Znak_EditPercent.Visible := false;
      editor.DBNumberEditEh1.Visible := false;

      editor.pnlCity.Visible    := true;
      editor.Label8.Caption     := 'Код региона';
      editor.Label9.Visible     := false;
      editor.Label10.Visible    := false;
      editor.imcbRegion.Visible := false;
      editor.Edit2.Text := DM.Q_REGIONS.FieldByName('KOD').AsString;
      editor.Edit3.Text := DM.Q_REGIONS.FieldByName('KLADR').AsString;

      editor.ShowModal;
      DM.Q_REGIONS.Refresh;
      DM.Q_REGIONS.Locate('id_regions', editor.Edit1.Tag, []);
    end;

    if (gr_nsi.ActiveLevel.Tag = 2) and (DM.Q_ADVERT.FieldByName('NAME').AsString <> '') then
    begin
      editor.ttype := 4;
      editor.Edit1.Tag := DM.Q_ADVERT.FieldByName('ID_ADVERTISMENTS').AsInteger;
      editor.Edit1.Text := DM.Q_ADVERT.FieldByName('NAME').AsString;
      editor.MEMO1.Text := DM.Q_ADVERT.FieldByName('INFO').AsString;
      editor.Label6.Caption := 'Источники рекламы :: редактирование';
      editor.CheckBox1.Visible := false;
      editor.Label7.Visible := false;
      editor.Znak_EditPercent.Visible := false;
      editor.DBNumberEditEh1.Visible := false;
      editor.ShowModal;
      DM.Q_ADVERT.Refresh;
      DM.Q_ADVERT.Locate('ID_ADVERTISMENTS', editor.Edit1.Tag, []);
    end;

    if (gr_nsi.ActiveLevel.Tag = 3) and (DM.Q_TYPES.FieldByName('NAME').AsString <> '') then
    begin
      editor.ttype := 6;
      editor.Edit1.Tag := DM.Q_TYPES.FieldByName('ID_CLIENT_TYPES').AsInteger;
      editor.Edit1.Text := DM.Q_TYPES.FieldByName('NAME').AsString;
      editor.MEMO1.Text := DM.Q_TYPES.FieldByName('INFO').AsString;
      editor.Label6.Caption := 'Типы клиентов :: редактирование';
      editor.CheckBox1.Caption := ' печать № свидетельства о регистрации';
      editor.CheckBox1.Visible := true;
      if DM.Q_TYPES.FieldByName('T_TYPE').AsInteger = 1 then editor.checkbox1.checked := true else editor.checkbox1.checked := false;
      editor.Label7.Visible := true;
      editor.Znak_EditPercent.Visible := true;
      editor.DBNumberEditEh1.Visible := true;

      if (DM.Q_TYPES.FieldByName('DISCOUNT').AsInteger>0) then editor.Znak_EditPercent.ItemIndex:=1;
      if (DM.Q_TYPES.FieldByName('DISCOUNT').AsInteger<0) then editor.Znak_EditPercent.ItemIndex:=0;
      editor.DBNumberEditEh1.Text:=inttostr(ABS(DM.Q_TYPES.FieldByName('DISCOUNT').AsInteger));
      editor.ShowModal;
      DM.Q_TYPES.Refresh;
      DM.Q_TYPES.Locate('ID_CLIENT_TYPES', editor.Edit1.Tag, []);
    end;

    if (gr_nsi.ActiveLevel.Tag = 4) and (DM.Q_DEPS.FieldByName('NAME').AsString <> '') then
    begin
      editor.ttype := 8;
      editor.Edit1.Tag := DM.Q_DEPS.FieldByName('ID_DEPARTMENTS').AsInteger;
      editor.Edit1.Text := DM.Q_DEPS.FieldByName('NAME').AsString;
      editor.MEMO1.Text := DM.Q_DEPS.FieldByName('INFO').AsString;
      if DM.Q_DEPS.FieldByName('STATE').AsInteger = 1 then editor.checkbox1.checked := true else editor.checkbox1.checked := false;
      editor.CheckBox1.Visible := true;
      editor.CheckBox1.Caption := ' является отделом продаж';
      editor.Label6.Caption := 'Отделы :: редактирование';
      editor.Label7.Visible := false;
      editor.Znak_EditPercent.Visible := false;
      editor.DBNumberEditEh1.Visible := false;
      editor.ShowModal;
      DM.Q_DEPS.Refresh;
      DM.Q_DEPS.Locate('ID_DEPARTMENTS', editor.Edit1.Tag, []);
    end;

    if (gr_nsi.ActiveLevel.Tag = 5) and (DM.Q_TITLES.FieldByName('NAME').AsString <> '') then
    begin
      editor.ttype := 10;
      editor.Edit1.Tag := DM.Q_TITLES.FieldByName('ID_JOB_TITLES').AsInteger;
      editor.Edit1.Text := DM.Q_TITLES.FieldByName('NAME').AsString;
      editor.MEMO1.Text := DM.Q_TITLES.FieldByName('INFO').AsString;
      editor.Label6.Caption := 'Должности :: редактирование';
      editor.CheckBox1.Visible := false;
      editor.Label7.Visible := false;
      editor.Znak_EditPercent.Visible := false;
      editor.DBNumberEditEh1.Visible := false;
      editor.ShowModal;
      DM.Q_TITLES.Refresh;
      DM.Q_TITLES.Locate('ID_JOB_TITLES', editor.Edit1.Tag, []);
    end;

    if (gr_nsi.ActiveLevel.Tag = 6) and (DM.Q_CITIES.FieldByName('city').AsString <> '') then
    begin
      editor.ttype := 12;
      editor.Edit1.Tag := DM.Q_CITIES.FieldByName('ID_city').AsInteger;
      editor.Edit1.Text := DM.Q_CITIES.FieldByName('city').AsString;
      editor.Edit2.Text := DM.Q_CITIES.FieldByName('kod').AsString;
      editor.imcbRegion.Tag := DM.Q_CITIES.FieldByName('id_region').AsInteger;
      editor.Label6.Caption := 'Города :: редактирование';
      editor.CheckBox1.Visible := false;
      editor.Label7.Visible := false;
      editor.Znak_EditPercent.Visible := false;
      editor.DBNumberEditEh1.Visible := false;
      editor.pnlCity.Visible    := true;

      editor.Label11.Visible    := false;
      editor.Edit3.Visible      := false;

      editor.ShowModal;
      DM.Q_CITIES.Refresh;
      DM.Q_CITIES.Locate('id_city', editor.Edit1.Tag, []);
    end;

  finally
    editor.Free;
    gr_nsi.SetFocus;
  end;
  end;
end;
















// Просмотр полной информации по регионам
procedure TMain.aCtrlEnterExecute(Sender: TObject);
begin
  info := Tinfo.Create(Application);
  try
    if (gr_nsi.ActiveLevel.Tag = 1) then
    begin
      info.Edit1.Text := DM.Q_REGIONS.FieldByName('NAME').AsString;
      info.MEMO1.Text := DM.Q_REGIONS.FieldByName('INFO').AsString;
      info.DBCheckBoxEh1.visible := false;
      info.DBEditEh1.visible := false;
      info.Label3.Visible := false;
      info.ShowModal;
    end;

    if (gr_nsi.ActiveLevel.Tag = 2) then
    begin
      info.Edit1.Text := DM.Q_ADVERT.FieldByName('NAME').AsString;
      info.MEMO1.Text := DM.Q_ADVERT.FieldByName('INFO').AsString;
      info.DBCheckBoxEh1.visible := false;
      info.DBEditEh1.visible := false;
      info.Label3.Visible := false;
      info.ShowModal;
    end;

    if (gr_nsi.ActiveLevel.Tag = 3) then
    begin
      info.Edit1.Text := DM.Q_TYPES.FieldByName('NAME').AsString;
      info.MEMO1.Text := DM.Q_TYPES.FieldByName('INFO').AsString;
      info.DBCheckBoxEh1.visible := true;
      info.DBEditEh1.visible := true;
      info.Label3.Visible := true;
      if (DM.Q_TYPES.FieldByName('T_TYPE').AsInteger = 1) then info.DBCheckBoxEh1.Checked := true else info.DBCheckBoxEh1.Checked := false;
      info.DBEditEh1.Text := DM.Q_TYPES.FieldByName('DISCOUNT').AsString;
      info.DBCheckBoxEh1.Caption := 'Печать в документах';
      info.ShowModal;
    end;

    if (gr_nsi.ActiveLevel.Tag = 4) then
    begin
      info.Edit1.Text := DM.Q_DEPS.FieldByName('NAME').AsString;
      info.MEMO1.Text := DM.Q_DEPS.FieldByName('INFO').AsString;
      info.Label3.Visible := false;
      info.DBCheckBoxEh1.visible := true;
      if (DM.Q_DEPS.FieldByName('STATE').AsInteger = 1) then info.DBCheckBoxEh1.Checked := true else info.DBCheckBoxEh1.Checked := false;
      info.DBCheckBoxEh1.Caption := 'Отдел является отделом продаж';
      info.DBEditEh1.visible := false;
      info.ShowModal;
    end;

    if (gr_nsi.ActiveLevel.Tag = 5) then
    begin
      info.Edit1.Text := DM.Q_TITLES.FieldByName('NAME').AsString;
      info.MEMO1.Text := DM.Q_TITLES.FieldByName('INFO').AsString;
      info.Label3.Visible := false;
      info.DBCheckBoxEh1.visible := false;
      info.DBEditEh1.visible := false;
      info.ShowModal;
    end;

  finally
    info.Free;
    gr_nsi.SetFocus;
  end;
end;

end.
