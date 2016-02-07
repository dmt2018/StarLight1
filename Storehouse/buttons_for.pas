unit buttons_for;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrlsEh, ExtCtrls, Buttons, ToolWin, ComCtrls,
  DB, MemDS, DBAccess, Ora, PI_Library,
  Menus, ActnList, cxGraphics, cxCustomData, cxStyles, cxTL, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxInplaceContainer, cxTLData, cxDBTL,
  cxTextEdit, cxContainer, cxCheckBox, cxLookAndFeelPainters, cxButtons,
  cxSplitter;

type
  Tfrm_buttons = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBComboBoxEh1: TDBComboBoxEh;
    Label2: TLabel;
    DBComboBoxEh2: TDBComboBoxEh;
    Panel3: TPanel;
    fst_view_ds: TDataSource;
    fst_view: TOraQuery;
    but_view: TOraQuery;
    but_view_ds: TDataSource;
    but_viewNN: TFloatField;
    but_viewFST_ID: TFloatField;
    but_viewF_SUB_TYPE: TStringField;
    but_viewHOL_SUB_TYPE: TStringField;
    but_viewFT_ID: TFloatField;
    but_viewF_TYPE: TStringField;
    but_viewHT_ID: TFloatField;
    but_viewHOL_TYPE: TStringField;
    but_viewID_DEPARTMENTS: TFloatField;
    ActionList1: TActionList;
    move_left: TAction;
    full_expand: TAction;
    full_inpand: TAction;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    ActionList2: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    but_viewF_CHAR: TStringField;
    but_viewID_DEP: TIntegerField;
    but_viewNBUTTON: TIntegerField;
    edit_panel: TPanel;
    DBEditEh1: TDBEditEh;
    SpeedButton3: TSpeedButton;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    Grid_types: TcxGrid;
    Grid_typesView1: TcxGridDBTableView;
    Grid_typesLevel1: TcxGridLevel;
    fst_FST_ID: TcxGridDBColumn;
    fst_F_SUB_TYPE: TcxGridDBColumn;
    fst_HOL_SUB_TYPE: TcxGridDBColumn;
    fst_FT_ID: TcxGridDBColumn;
    fst_F_TYPE: TcxGridDBColumn;
    fst_HT_ID: TcxGridDBColumn;
    fst_HOL_TYPE: TcxGridDBColumn;
    fst_NN: TcxGridDBColumn;
    fst_ID_DEPARTMENTS: TcxGridDBColumn;
    fst_NBUTTON: TcxGridDBColumn;
    grid_but: TcxGrid;
    grid_butView1: TcxGridDBTableView;
    grid_butLevel1: TcxGridLevel;
    grid_butView1NN: TcxGridDBColumn;
    grid_butView1FST_ID: TcxGridDBColumn;
    fbtn_F_SUB_TYPE: TcxGridDBColumn;
    grid_butView1HOL_SUB_TYPE: TcxGridDBColumn;
    grid_butView1FT_ID: TcxGridDBColumn;
    fbtn_F_TYPE: TcxGridDBColumn;
    grid_butView1HT_ID: TcxGridDBColumn;
    grid_butView1HOL_TYPE: TcxGridDBColumn;
    grid_butView1ID_DEPARTMENTS: TcxGridDBColumn;
    fbtn_F_CHAR: TcxGridDBColumn;
    grid_butView1ID_DEP: TcxGridDBColumn;
    fbtn_NBUTTON: TcxGridDBColumn;
    fst_viewNN: TFloatField;
    fst_viewFST_ID: TFloatField;
    fst_viewF_SUB_TYPE: TStringField;
    fst_viewHOL_SUB_TYPE: TStringField;
    fst_viewFT_ID: TFloatField;
    fst_viewF_TYPE: TStringField;
    fst_viewHT_ID: TFloatField;
    fst_viewHOL_TYPE: TStringField;
    fst_viewID_DEPARTMENTS: TFloatField;
    fst_viewNBUTTON: TStringField;
    cxCheckBox1: TcxCheckBox;
    Panel2: TPanel;
    Close_BitBtn: TcxButton;
    cxSplitter1: TcxSplitter;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBComboBoxEh1Change(Sender: TObject);
    procedure DBComboBoxEh2Change(Sender: TObject);
    procedure full_expandExecute(Sender: TObject);
    procedure full_inpandExecute(Sender: TObject);
    procedure move_leftExecute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEditEh1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N7Click(Sender: TObject);
    procedure PopupMenu2Popup(Sender: TObject);
    procedure Grid_typesView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_buttons: Tfrm_buttons;

implementation

uses dataM;

{$R *.dfm}

procedure Tfrm_buttons.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;


//
//  При открытии фомы заполняем справочник отделов
//
procedure Tfrm_buttons.FormShow(Sender: TObject);
begin
  FillComboEh(DM.Q_SQL, DBComboBoxEh1, 'SELECT ID_DEPARTMENTS, NAME FROM BOOKS_DEPARTMENTS WHERE STATE = 1 ORDER BY NAME');
  DBComboBoxEh1.ItemIndex := DBComboBoxEh1.KeyItems.IndexOf( DataM.department_id );

  if ( StrToInt(DataM.department_id) > 0 ) then
  begin
    fst_view.Close;
    fst_view.ParamByName('id_dep_').AsInteger := StrToInt(DataM.department_id);
    fst_view.Open;
    Grid_types.SetFocus;

    DBComboBoxEh1.OnChange := DBComboBoxEh1Change;
  end;

  move_left.Enabled := DataM.Operator_edit;
  Action1.Enabled := DataM.Operator_delete;
  N5.Enabled := DataM.Operator_edit;
  N7.Enabled := DataM.Operator_delete;
end;


//
//  При смене отдела перегружаем список подтипов
//
procedure Tfrm_buttons.DBComboBoxEh1Change(Sender: TObject);
begin

  if (DBComboBoxEh1.Value > 0 ) then
  begin
    fst_view.Close;
    fst_view.ParamByName('id_dep_').AsInteger := DBComboBoxEh1.Value;
    fst_view.Open;

    DBComboBoxEh2Change(Sender);
    fst_view.Refresh;
    Grid_types.Repaint;
    Grid_types.SetFocus;
  end;

end;


//
//  При смене отдела перегружаем список подтипов
//
procedure Tfrm_buttons.DBComboBoxEh2Change(Sender: TObject);
begin

  if (DBComboBoxEh1.Value > 0) and (DBComboBoxEh2.Value > 0) then
  begin
    but_view.Close;
    but_view.ParamByName('id_dep_').AsInteger := DBComboBoxEh1.Value;
    but_view.ParamByName('button_').AsInteger := DBComboBoxEh2.Value;
    but_view.Open;
    grid_butView1.DataController.Groups.FullExpand;

    Grid_types.SetFocus;
    fst_view.Refresh;
    Grid_types.Repaint;

  end;

end;


//
//  Раскрытие списка подтипов
//
procedure Tfrm_buttons.full_expandExecute(Sender: TObject);
begin
  Grid_typesView1.DataController.Groups.FullExpand;
end;


//
//  Сжатие списка подтипов
//
procedure Tfrm_buttons.full_inpandExecute(Sender: TObject);
begin
  Grid_typesView1.DataController.Groups.FullCollapse;
end;


//
// Перекидывание подтипов на кнопку
//
procedure Tfrm_buttons.move_leftExecute(Sender: TObject);
var id: integer;
begin

  if (DBComboBoxEh1.Value > 0) and (DBComboBoxEh2.Value > 0) and (Grid_typesView1.DataController.DataSet.FieldByName('fst_id').AsInteger > 0) then
  begin
    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;

    if (Grid_typesView1.Controller.FocusedRow.Expandable = true) then
      DM.Q_SQL.SQL.Add('begin PACK_ORDERS.set_button(0,'+ DBComboBoxEh1.Value +','+ DBComboBoxEh2.Value +','+ Grid_typesView1.DataController.DataSet.FieldByName('ft_id').AsString +'); end; ')
    else
      DM.Q_SQL.SQL.Add('begin PACK_ORDERS.set_button('+ Grid_typesView1.DataController.DataSet.FieldByName('fst_id').AsString +','+ DBComboBoxEh1.Value +','+ DBComboBoxEh2.Value +',0); end; ');
    DM.Q_SQL.Execute;

    id := Grid_typesView1.DataController.DataSet.FieldByName('fst_id').AsInteger;
    fst_view.Refresh;
    fst_view.locate('fst_id',id,[]);
    but_view.Refresh;
    grid_butView1.DataController.Groups.FullExpand;
    Grid_types.Repaint;

  end else ShowMessage('Надо выбрать отдел и кнопку!');

end;


//
//  Раскрытие списка кнопки
//
procedure Tfrm_buttons.Action2Execute(Sender: TObject);
begin
  grid_butView1.DataController.Groups.FullExpand;
end;


//
//  Сжатие списка кнопки
//
procedure Tfrm_buttons.Action3Execute(Sender: TObject);
begin
  grid_butView1.DataController.Groups.FullCollapse;
end;


//
// Убирание подтипов из кнопки
//
procedure Tfrm_buttons.Action1Execute(Sender: TObject);
begin

  if (DBComboBoxEh1.Value > 0) and (DBComboBoxEh2.Value > 0) and (but_view.FieldByName('fst_id').AsInteger > 0) then
  begin
    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;

    if (grid_butView1.Controller.FocusedRow.Expandable = true) then
      DM.Q_SQL.SQL.Add('begin PACK_ORDERS.remove_button(0,'+ DBComboBoxEh1.Value +','+ DBComboBoxEh2.Value +', '+ grid_butView1.DataController.DataSet.FieldByName('ft_id').AsString +'); end; ')
    else
      DM.Q_SQL.SQL.Add('begin PACK_ORDERS.remove_button('+ grid_butView1.DataController.DataSet.FieldByName('fst_id').AsString +','+ DBComboBoxEh1.Value +','+ DBComboBoxEh2.Value +', 0); end; ');

    DM.Q_SQL.Execute;
    fst_view.Refresh;
    but_view.Refresh;
    grid_butView1.DataController.Groups.FullExpand;
    Grid_types.Repaint;
  end else ShowMessage('Надо выбрать отдел и кнопку!');

end;


//
//  Назначаем поиск
//
procedure Tfrm_buttons.N5Click(Sender: TObject);
begin
  edit_panel.Left := grid_but.Left +  trunc(grid_but.width / 2) - 200;
  edit_panel.Top :=  grid_but.top + trunc(grid_but.height / 2);
  edit_panel.Visible := true;
  DBEditEh1.SetFocus;
end;


//
//  Запись строки
//
procedure Tfrm_buttons.SpeedButton3Click(Sender: TObject);
begin
  if (trim(DBEditEh1.Text) <> '') then
  begin
    dm.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.add('begin PACK_ORDERS.change_s(:dep_, :button_, :char_, :all_, :fst_id_); end;');
    DM.Q_SQL.ParamByName('dep_').AsInteger := DBComboBoxEh1.Value;
    DM.Q_SQL.ParamByName('button_').AsInteger := DBComboBoxEh2.Value;
    DM.Q_SQL.ParamByName('char_').AsString := DBEditEh1.Text;
    DM.Q_SQL.ParamByName('all_').AsInteger := cxCheckBox1.EditValue;
    DM.Q_SQL.ParamByName('fst_id_').AsInteger := grid_butView1.DataController.DataSet.FieldByName('fst_id').AsInteger;
    DM.Q_SQL.Execute;
    but_view.Refresh;
    edit_panel.Visible := false;
    DBEditEh1.Text := '';
  end;
end;


//
//  Запись по ENTER
//
procedure Tfrm_buttons.DBEditEh1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
     SpeedButton3Click(Sender);
  if (Key = VK_ESCAPE) then
  begin
     edit_panel.Visible := false;
     DBEditEh1.Text := '';
  end;

end;


//
// Убираем строку с кнопки
//
procedure Tfrm_buttons.N7Click(Sender: TObject);
begin
    dm.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.add('begin PACK_ORDERS.change_s(:dep_, :button_, :char_, :all_, :fst_id_); end;');
    DM.Q_SQL.ParamByName('dep_').AsInteger := DBComboBoxEh1.Value;
    DM.Q_SQL.ParamByName('button_').AsInteger := DBComboBoxEh2.Value;
    DM.Q_SQL.ParamByName('char_').AsString := '';
    DM.Q_SQL.ParamByName('all_').AsInteger := 0;
    DM.Q_SQL.ParamByName('fst_id_').AsInteger := grid_butView1.DataController.DataSet.FieldByName('fst_id').AsInteger;
    DM.Q_SQL.Execute;
    but_view.Refresh;
end;

procedure Tfrm_buttons.PopupMenu2Popup(Sender: TObject);
begin
  if (DBComboBoxEh2.ItemIndex > -1) and (but_view.RecordCount > 0) AND  (DataM.Operator_edit = true) then
  begin
    N5.Enabled := true;
    N7.Enabled := true;
  end
  else
  begin
    N5.Enabled := false;
    N7.Enabled := false;
  end;
end;



//
//  Окраска таблицы с подтипами
//
procedure Tfrm_buttons.Grid_typesView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var param: Variant;
begin

    if ( AViewInfo.Selected  = false) and (fst_view.Active = true) and (DBComboBoxEh2.Value > 0) then
    begin
    param := Grid_typesView1.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, Grid_typesView1.GetColumnByFieldName('NBUTTON').Index
                );

      if (VarToStr(param) = DBComboBoxEh2.Text) then ACanvas.Brush.Color := clSkyBlue else ACanvas.Brush.Color := clWindow;
    end;

end;

end.
