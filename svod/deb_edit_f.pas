unit deb_edit_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ActnList, StrUtils,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxTextEdit, cxCheckBox, Menus, cxLookAndFeelPainters, cxButtons,
  dxBar, dxBarExtItems, cxClasses, cxCurrencyEdit, cxContainer, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxControls, cxGridCustomView, cxGrid, PI_Library_reg;

type
  Tdeb_edit = class(TForm)
    Panel3: TPanel;
    Label9: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Panel4: TPanel;
    ActionList1: TActionList;
    aSave: TAction;
    Label1: TLabel;
    Label2: TLabel;
    gr_clients: TcxGrid;
    gr_clients_v: TcxGridDBBandedTableView;
    _gr_cashbook_vID_CLIENTS: TcxGridDBBandedColumn;
    gr_clients_vNICK: TcxGridDBBandedColumn;
    gr_clients_vFIO: TcxGridDBBandedColumn;
    gr_clients_vccode: TcxGridDBBandedColumn;
    gr_clients_vregion_name: TcxGridDBBandedColumn;
    gr_clients_vgroup_name: TcxGridDBBandedColumn;
    gr_clients_vblock1: TcxGridDBBandedColumn;
    gr_clients_vblock2: TcxGridDBBandedColumn;
    gr_clients_l: TcxGridLevel;
    chb_beznal: TcxCheckBox;
    chb_old: TcxCheckBox;
    chb_debt: TcxCheckBox;
    edit_in_ru: TcxCurrencyEdit;
    edit_invoice: TcxCurrencyEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    edit_info: TcxTextEdit;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarStatic5: TdxBarStatic;
    dxBarStatic6: TdxBarStatic;
    cxStyleRepository1: TcxStyleRepository;
    st_red: TcxStyle;
    st_block1: TcxStyle;
    st_block2: TcxStyle;
    st_notactive: TcxStyle;
    dxBarDockControl1: TdxBarDockControl;
    btn_help: TcxButton;
    cxButton2: TcxButton;
    btnClose: TcxButton;
    aChecked: TAction;
    gr_clients_vID_CLIENTS_GROUPS: TcxGridDBBandedColumn;
    Label6: TLabel;
    btnGetGroupItems: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure aCheckedExecute(Sender: TObject);
    procedure gr_clients_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnGetGroupItemsClick(Sender: TObject);
  private
    { Private declarations }
  public
    state: integer;
    { Public declarations }
  end;

var
  deb_edit: Tdeb_edit;

implementation

uses DataM;

{$R *.dfm}

procedure Tdeb_edit.btnCloseClick(Sender: TObject);
begin
  DM.Q_SQL.Close;
  Close;
end;

// Просмотр формы расчета группы
procedure Tdeb_edit.btnGetGroupItemsClick(Sender: TObject);
begin
  if gr_clients_v.ViewData.RecordCount = 0 then exit;

  try
    with DM.OraStoredProc1 do
    begin
      Close;
      StoredProcName := 'cash_pkg.get_group_items';
      Prepare;
      ParamByName('p_id_group').AsInteger := gr_clients_vID_CLIENTS_GROUPS.EditValue;
      Open;
    end;

    if not DM.OraStoredProc1.IsEmpty then
    begin
      chb_beznal.EditValue := DM.OraStoredProc1.FieldByName('beznal').AsInteger;
      chb_old.EditValue    := DM.OraStoredProc1.FieldByName('state').AsInteger;
      chb_debt.EditValue   := DM.OraStoredProc1.FieldByName('rubl').AsInteger;
    end;
    DM.OraStoredProc1.Close;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  end;
end;


// при закрытии формы возвращаем полный список клиентов
procedure Tdeb_edit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.Q_CLIENTS.Close;
end;




procedure Tdeb_edit.gr_clients_vCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var val1, val2: variant;
begin
  if (not AViewInfo.Selected) and (gr_clients_v.DataController.DataSet.RecordCount > 0) then
  begin
    val1  := gr_clients_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_clients_v.GetColumnByFieldName('BLOCK1').Index
                );
    val2  := gr_clients_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_clients_v.GetColumnByFieldName('BLOCK2').Index
                );

    if (val1 = 1) then
         ACanvas.Brush.Color := st_block1.Color;

    if (val2 = 1) then
         ACanvas.Brush.Color := st_block2.Color;
  end;
end;

//
//  Расстановка признаков
//
procedure Tdeb_edit.aCheckedExecute(Sender: TObject);
begin
  if (gr_clients_v.DataController.DataSet.Active) and (gr_clients_v.ViewData.RecordCount > 0) and (gr_clients_vID_CLIENTS_GROUPS.EditValue > 2) then
  begin
  try
    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    DM.Q_SQL.SQL.Add('SELECT nvl(max(a.beznal),0) as beznal, nvl(max(a.mark),0) as mark, nvl(max(a.rubl),0) as rubl FROM view_debetors a  where a.id_clients_groups = :p1');
    DM.Q_SQL.Prepare;
    DM.Q_SQL.ParamByName('p1').AsInteger := gr_clients_vID_CLIENTS_GROUPS.EditValue;
    DM.Q_SQL.Open;
    chb_beznal.EditValue := DM.Q_SQL.FieldByName('beznal').Value;
    chb_old.EditValue   := DM.Q_SQL.FieldByName('mark').Value;
    chb_debt.EditValue  := DM.Q_SQL.FieldByName('rubl').Value;
    DM.Q_SQL.Close;
  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  end;
  end;
end;



// Сохранение
procedure Tdeb_edit.BitBtn1Click(Sender: TObject);
begin
  if (gr_clients_v.ViewData.RecordCount = 0) then ShowMessage('Не заполнены обязательные поля!')
  else
  begin
    cxButton2.SetFocus;
    try
      with DM.OraStoredProc1 do
      begin
        Close;
        StoredProcName := 'cash_pkg.edit_debetor';
        Prepare;
        ParamByName('id_').AsInteger          := 0;
        ParamByName('ID_CLIENTS_').AsInteger  := DM.Q_CLIENTSID_CLIENTS.AsInteger;
        ParamByName('STATE_').AsInteger       := chb_old.EditValue;
        ParamByName('BEZNAL_').AsInteger      := chb_beznal.EditValue;
        ParamByName('DEBET_').AsInteger       := edit_in_ru.EditValue;
        ParamByName('CREDIT_DAYS_').AsInteger := edit_invoice.EditValue;
        ParamByName('INFO_').AsString         := VarToStr(edit_info.EditValue);
        ParamByName('RUBL_').AsInteger        := chb_debt.EditValue;
        ParamByName('CHART_').AsInteger       := cxCurrencyEdit1.EditValue;
        ParamByName('IS_LOCK_').AsInteger     := 0;
        ParamByName('LOCK_FOR_').Value        := 0;
        if (DM.id_office = 0) then
          ParamByName('v_office').AsInteger   := GetOfficeID
        else
          ParamByName('v_office').AsInteger   := DM.id_office;
        Execute;
        gr_clients.Tag := ParamByName('id_').AsInteger;
      end;

      ModalResult := mrOk;

    except
      on E: Exception do
          MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
    end;
  end;  

end;


end.
