unit edit_claim_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, Grids, DBGrids, DBCtrls, DB,
  Mask, DBCtrlsEh, DBGridEh, ActnList, Tabs, GridsEh, Menus,
  cxLookAndFeelPainters, cxButtons, cxPC, cxControls, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxTextEdit,
  cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, PI_library, Ora, DBGridEhGrouping;

type
  Tedit_claim = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Label4: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Memo1: TMemo;
    Label9: TLabel;
    DBText1: TDBText;
    Label10: TLabel;
    DBText2: TDBText;
    Label19: TLabel;
    Label18: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    list_supl: TDBComboBoxEh;
    DBComboBoxEh1: TDBComboBoxEh;
    ActionList1: TActionList;
    aF2: TAction;
    aF3: TAction;
    Edit5: TDBEditEh;
    Edit10: TDBEditEh;
    Edit9: TDBEditEh;
    Edit1: TDBNumberEditEh;
    Edit6: TDBNumberEditEh;
    Edit2: TDBNumberEditEh;
    Edit7: TDBNumberEditEh;
    Edit3: TDBNumberEditEh;
    Edit8: TDBNumberEditEh;
    Label11: TLabel;
    DBText3: TDBText;
    Label20: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    Panel4: TPanel;
    btn_exit: TcxButton;
    btn_save: TcxButton;
    pc_newclaim: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    Label12: TLabel;
    invoice: TPanel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    Panel5: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    DBGridEh2: TDBGridEh;
    aCtrl: TAction;
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
    cxStyleRepository1: TcxStyleRepository;
    st_block_1: TcxStyle;
    cxStyle2: TcxStyle;
    st_block_2: TcxStyle;
    gr_main: TDBGridEh;
    procedure DBComboBoxEh1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure gr_clients_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    state: integer;
    { Public declarations }
  end;

var
  edit_claim: Tedit_claim;

implementation

uses DataM;

{$R *.dfm}

// Красим грид с клиентами
procedure Tedit_claim.gr_clients_vCustomDrawCell(Sender: TcxCustomGridTableView;
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
         ACanvas.Brush.Color := st_block_1.Color;

    if (val2 = 1) then
         ACanvas.Brush.Color := st_block_2.Color;
  end;
end;

// При смене типа клейма меняем набор данных
procedure Tedit_claim.DBComboBoxEh1Change(Sender: TObject);
var val: boolean;
begin
  if DBComboBoxEh1.ItemIndex = 2 then
    val := true
  else
  begin
    val := false;
    Edit9.Text := '';
    Edit9.Tag  := 0;
  end;

  Edit6.Visible := val;
  Edit7.Visible := val;
  Edit8.Visible := val;
  Edit9.Visible := val;
  cxTabSheet2.Enabled := val;

  Label21.Visible := val;
  Label22.Visible := val;
  Label23.Visible := val;
  Label24.Visible := val;

  Label25.Visible := val;
  Label26.Visible := val;
  Label27.Visible := val;
  Label28.Visible := val;
end;

procedure Tedit_claim.FormCreate(Sender: TObject);
var cds: TOraQuery;
begin
  cds := TOraQuery.Create(Application);
  try
  FillComboEh(cds, list_supl, 'SELECT S_ID, S_NAME_RU FROM SUPPLIERS where id_office='+IntToStr(DM.id_office)+' ORDER BY S_NAME_RU');
  finally
    cds.Free;
  end;
end;


// Записываем данные по Ф2
procedure Tedit_claim.SpeedButton1Click(Sender: TObject);
begin
  if DM.Q_FLOWERS.RecordCount > 0 then
  begin
    Edit10.Text := DM.Q_NOMFULL_NAME.AsString;
    Edit10.Tag := DM.Q_NOMN_ID.AsInteger;
    Edit1.Text := DM.Q_NOMUNITS.AsString;
    Edit2.Text := DM.Q_NOMPRICE_PER_UNIT.AsString;
    Edit1.SetFocus;
  end;
end;

// Записываем данные по Ф3
procedure Tedit_claim.SpeedButton2Click(Sender: TObject);
begin
  if DM.Q_FLOWERS.RecordCount > 0 then
  begin
    Edit9.Text := DM.Q_FLOWERSFULL_NAME.AsString;
    Edit9.Tag := DM.Q_FLOWERSN_ID.AsInteger;
    Edit6.SetFocus;
  end;
end;


// Запись
procedure Tedit_claim.btn_saveClick(Sender: TObject);
var ind, flag: integer;
begin
  if ((trim(Edit1.Text) = '') or (trim(Edit2.Text) = '') or (trim(Edit3.Text) = '') or (list_supl.ItemIndex < 0) or (DBComboBoxEh1.ItemIndex < 0) or (Edit10.Tag < 1)) then ShowMessage('Вы не заполнили обязательные поля!')
  else
  begin

      try
         if (state = 1) then
            ind := 0
         else
            ind := DM.Q_CLAIMS_LIST.FieldByName('CLAIMS_LIST_ID').AsInteger;

         DM.Ora_SQL.CLose;
         DM.Ora_SQL.SQL.Clear;
         DM.Ora_SQL.SQL.Add('begin claims_pkg.claims_edit_list(:ID_,:N_ID_,:CLAIM_ID_,:TTYPE_,:S_ID_,:ID_CLIENTS_,:quantity_,:hfl_,:cust_,:defect_,:quantity2_,:hfl2_,:cust2_,:flower_,:INFO_,:o_err_code, :o_err_msg); end;');
         DM.Ora_SQL.ParamByName('ID_').Value        := ind;
         DM.Ora_SQL.ParamByName('N_ID_').Value      := Edit10.Tag;
         DM.Ora_SQL.ParamByName('CLAIM_ID_').Value  := DM.Q_CLAIMSCLAIMS_ID.AsInteger;
         DM.Ora_SQL.ParamByName('TTYPE_').Value     := DBComboBoxEh1.Value;
         DM.Ora_SQL.ParamByName('S_ID_').Value      := list_supl.Value;
         DM.Ora_SQL.ParamByName('ID_CLIENTS_').Value:= DM.Q_CLIENTSID_CLIENTS.AsInteger;
         DM.Ora_SQL.ParamByName('quantity_').Value  := Edit1.Value;
         DM.Ora_SQL.ParamByName('hfl_').Value       := Edit2.Value;
         DM.Ora_SQL.ParamByName('cust_').Value      := Edit3.Value;
         DM.Ora_SQL.ParamByName('defect_').Value    := trim(Edit5.Text);
         DM.Ora_SQL.ParamByName('quantity2_').Value := Edit6.Value;
         DM.Ora_SQL.ParamByName('hfl2_').Value      := Edit7.Value;
         DM.Ora_SQL.ParamByName('cust2_').Value     := Edit8.Value;
         DM.Ora_SQL.ParamByName('flower_').Value    := trim(Edit9.Text);
         DM.Ora_SQL.ParamByName('INFO_').Value      := Memo1.Text;
         DM.Ora_SQL.ParamByName('o_err_code').Value := 0;
         DM.Ora_SQL.ParamByName('o_err_msg').Value  := '';
         DM.Ora_SQL.Execute;
         ind  := DM.Ora_SQL.ParamByName('ID_').Value;
         flag := DM.Ora_SQL.ParamByName('o_err_code').Value;
         if (flag < 0) then
            MessageBox(Handle, PChar(DM.Ora_SQL.ParamByName('o_err_msg').AsString), 'Ошибка!', MB_ICONERROR)
         else
         begin
           DM.Q_CLAIMS_LIST.Refresh;
           DM.Q_CLAIMS_LIST.Locate('CLAIMS_LIST_ID',ind,[]);
           close;
         end;
      except
        on E: Exception do
          MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
      End;

  end;
end;




end.
