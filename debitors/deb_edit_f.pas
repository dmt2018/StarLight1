unit deb_edit_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ActnList, Mask,
  cxGraphics, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxTextEdit, cxCheckBox, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxControls, cxGridCustomView, cxGrid,
  cxContainer, cxMaskEdit, cxDropDownEdit, cxImageComboBox, dxBar, dxBarExtItems,
  cxGroupBox, Menus, cxLookAndFeelPainters, cxButtons, PI_Library, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, DBAccess, Ora, MemDS;

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
    Label3: TLabel;
    chb_beznal: TcxCheckBox;
    chb_old: TcxCheckBox;
    chb_debt: TcxCheckBox;
    edit_in_ru: TcxCurrencyEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    edit_invoice: TcxCurrencyEdit;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarStatic5: TdxBarStatic;
    dxBarStatic6: TdxBarStatic;
    dxBarDockControl1: TdxBarDockControl;
    cxStyleRepository1: TcxStyleRepository;
    st_red: TcxStyle;
    st_block1: TcxStyle;
    st_block2: TcxStyle;
    st_notactive: TcxStyle;
    edit_info: TcxTextEdit;
    gr_close_deb: TcxGroupBox;
    Label4: TLabel;
    cxCheckBox1: TcxCheckBox;
    Label5: TLabel;
    btn_help: TcxButton;
    cxButton2: TcxButton;
    btnClose: TcxButton;
    lcb_clients: TcxLookupComboBox;
    CDS_A_DEB: TOraQuery;
    DS_A_DEB: TOraDataSource;
    CDS_A_DEBID_DEBETORS: TFloatField;
    CDS_A_DEBFIO_NAME: TStringField;
    Label6: TLabel;
    aChecked: TAction;
    gr_clients: TcxGrid;
    gr_clients_v: TcxGridDBBandedTableView;
    gr_clients_l: TcxGridLevel;
    gr_clients_vID_CLIENTS: TcxGridDBBandedColumn;
    gr_clients_vNICK: TcxGridDBBandedColumn;
    gr_clients_vFIO: TcxGridDBBandedColumn;
    gr_clients_vDDATE: TcxGridDBBandedColumn;
    gr_clients_vCCODE: TcxGridDBBandedColumn;
    gr_clients_vREGION: TcxGridDBBandedColumn;
    gr_clients_vTTYPE: TcxGridDBBandedColumn;
    gr_clients_vID_CLIENTS_GROUPS: TcxGridDBBandedColumn;
    gr_clients_vREGIONS_NAME: TcxGridDBBandedColumn;
    gr_clients_vGR_NAME: TcxGridDBBandedColumn;
    gr_clients_vTTYPE_NAME: TcxGridDBBandedColumn;
    gr_clients_vCORRECTOR: TcxGridDBBandedColumn;
    gr_clients_vPHONE: TcxGridDBBandedColumn;
    gr_clients_vBLOCK1: TcxGridDBBandedColumn;
    gr_clients_vBLOCK2: TcxGridDBBandedColumn;
    gr_clients_vREG_TYPE_NAME: TcxGridDBBandedColumn;
    gr_clients_vSALES: TcxGridDBBandedColumn;
    gr_clients_vNN: TcxGridDBBandedColumn;
    gr_clients_vCOUNTS: TcxGridDBBandedColumn;
    gr_clients_vDEB_CLIENT: TcxGridDBBandedColumn;
    btnGetGroupItems: TcxButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lcb_clientsPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aCheckedExecute(Sender: TObject);
    procedure gr_clients_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnGetGroupItemsClick(Sender: TObject);
  private
    { Private declarations }
  public
    state: integer;
    id_group: integer;
    { Public declarations }
  end;

var
  deb_edit: Tdeb_edit;

implementation

uses DataM;

{$R *.dfm}

procedure Tdeb_edit.btnCloseClick(Sender: TObject);
begin
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
      ParamByName('p_id_group').AsInteger := DM.Q_CLIENTSID_CLIENTS_GROUPS.AsInteger; // gr_clients_vID_CLIENTS_GROUPS.EditValue;
      Open;
    end;
    if not DM.OraStoredProc1.IsEmpty and (DM.OraStoredProc1.RecordCount > 0) then
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


procedure Tdeb_edit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.Q_CLIENTS.Close;
  CDS_A_DEB.Close;
end;

procedure Tdeb_edit.FormShow(Sender: TObject);
begin
  if (state = 2) then
  begin
    CDS_A_DEB.ParamByName('P1').AsInteger := id_group;
    CDS_A_DEB.ParamByName('P2').AsInteger := Panel3.Tag;
    CDS_A_DEB.Open;
  end;
end;

procedure Tdeb_edit.gr_clients_vCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var val1: variant;
begin

  if (not AViewInfo.Selected) and (gr_clients_v.DataController.DataSet.RecordCount > 0) then
  begin
    // Красим заблокированного бухами
    val1  := gr_clients_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_clients_v.GetColumnByFieldName('BLOCK2').Index
                );
    if (gr_clients_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'NICK') and (val1 = 1) then
    begin
        ACanvas.Brush.Color := st_block2.Color
    end;

    // Красим заблокированного кредитом
    val1  := gr_clients_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_clients_v.GetColumnByFieldName('BLOCK1').Index
                );
    if (gr_clients_v.Columns[AViewInfo.Item.Index].DataBinding.FieldName = 'NICK') and (val1 = 1) then
    begin
        ACanvas.Brush.Color := st_block1.Color
    end;
  end;

end;

procedure Tdeb_edit.lcb_clientsPropertiesChange(Sender: TObject);
begin
  if (lcb_clients.EditValue > 0) then cxCheckBox1.EditValue := 1
  else cxCheckBox1.EditValue := 0;
end;


//
//  Расставим признаки по группе
//  2013-11-20 Заменено на метод в пакете  cash_pkg.get_group_items
procedure Tdeb_edit.aCheckedExecute(Sender: TObject);
begin
{
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
}
end;


// Сохранение
procedure Tdeb_edit.BitBtn1Click(Sender: TObject);
var ind: integer;
begin
  if (DM.Q_CLIENTSDEB_CLIENT.IsNull = false) and (DM.Q_CLIENTSDEB_CLIENT.AsInteger > 0) and (state = 1) then
  begin
    MessageBox(Handle, 'Дебиторская карточка на этого клиента уже есть в БД', 'Внимание!', MB_ICONSTOP);
    exit;
  end;


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
        ParamByName('id_').AsInteger          := Panel3.Tag;
        ParamByName('ID_CLIENTS_').AsInteger  := DM.Q_CLIENTSID_CLIENTS.AsInteger;
        ParamByName('STATE_').AsInteger       := chb_old.EditValue;
        ParamByName('BEZNAL_').AsInteger      := chb_beznal.EditValue;
        ParamByName('DEBET_').AsInteger       := edit_in_ru.EditValue;
        ParamByName('CREDIT_DAYS_').AsInteger := edit_invoice.EditValue;
        ParamByName('INFO_').AsString         := VarToStr(edit_info.EditValue);
        ParamByName('RUBL_').AsInteger        := chb_debt.EditValue;
        ParamByName('CHART_').AsInteger       := cxCurrencyEdit1.EditValue;
        ParamByName('IS_LOCK_').AsInteger     := cxCheckBox1.EditValue;
        if (cxCheckBox1.Checked) then
          ParamByName('LOCK_FOR_').Value        := lcb_clients.EditValue
        else
          ParamByName('LOCK_FOR_').Value        := NULL;
        ParamByName('v_office').AsInteger     := DM.id_office;
        Execute;
        ind := ParamByName('id_').AsInteger;
      end;

      if (DM.Q_DEBETORS.Active = true) then
      begin
        DM.Q_DEBETORS.Refresh;
        DM.Q_DEBETORS.Locate('ID_DEBETORS',ind,[]);
      end;
      Close;

    except
      on E: Exception do
        MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
    end;
  end;
end;


end.
