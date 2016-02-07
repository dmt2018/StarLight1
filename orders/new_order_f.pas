unit new_order_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, ActnList, Mask, DBCtrlsEh,
  cxGraphics, DB, DBAccess, Ora, MemDS, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, PI_Library_reg, cxImageComboBox;

type
  Tnew_order = class(TForm)
    Label8: TLabel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    ActionList1: TActionList;
    Action1: TAction;
    BitBtn2: TBitBtn;
    Action2: TAction;
    Action3: TAction;
    Label2: TLabel;
    Memo1: TMemo;
    DateTimePicker1: TDBDateTimeEditEh;
    DateTimePicker2: TDBDateTimeEditEh;
    DateTimePicker3: TDBDateTimeEditEh;
    Label1: TLabel;
    Label10: TLabel;
    lookcombo_suplier: TcxLookupComboBox;
    CDS_SUPPLIER: TOraQuery;
    CDS_SUPPLIERS_ID: TFloatField;
    CDS_SUPPLIERS_NAME_RU: TStringField;
    DS_SUPPLIER: TOraDataSource;
    Label4: TLabel;
    lcb_prices: TcxImageComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    f_edit: integer;
    { Public declarations }
  end;

var
  new_order: Tnew_order;

implementation

uses frm_DM, frm_first_dialog;

{$R *.dfm}

procedure Tnew_order.BitBtn2Click(Sender: TObject);
begin
  new_order.ModalResult := mrCancel;
end;

procedure Tnew_order.FormCreate(Sender: TObject);
begin
  DateTimePicker1.Value := Date;
  DateTimePicker2.Value := Date + 3;
  DateTimePicker3.Value := Date + 1;

  CDS_SUPPLIER.Close;
  CDS_SUPPLIER.Open;

  DM.Q_SQL.Close;
  DM.Q_SQL.SQL.Clear;
  DM.Q_SQL.SQL.Add('select a.ppli_id, a.ppl_comment from prepare_price_list_index a, invoice_register b, suppliers s');
  DM.Q_SQL.SQL.Add(' where a.id_departments = '+IntToStr(DM.DeptID)+' and a.finished = 1');
  DM.Q_SQL.SQL.Add(' and (b.inv_id in (a.inv_id, a.inv_id2, a.inv_id3, a.inv_id4) or b.ipp_id = a.pack_id)');
  DM.Q_SQL.SQL.Add(' and b.sended_to_warehouse = 1 and b.minus_inv_id = 0 and b.s_id_default = s.s_id and a.ppl_date >= trunc(sysdate-100)');
//  DM.Q_SQL.SQL.Add(' and a.ppli_id_old is not null');
  DM.Q_SQL.SQL.Add('order by a.ppl_date desc');
  DM.Q_SQL.Open;
  FillImgComboCx(DM.Q_SQL, lcb_prices, '��������...');
  lcb_prices.EditValue := 0;
  DM.Q_SQL.Close;
end;



procedure Tnew_order.BitBtn1Click(Sender: TObject);
var ind, flag: integer;
begin
  if (DateTimePicker3.Value = null) then
  begin
     MessageBox(Handle, '������� ���� ������ ������', '��������', MB_ICONWARNING);
     exit;
  end;
  if (DateTimePicker3.Value > DateTimePicker2.Value) then
  begin
     MessageBox(Handle, '���� ������ ������ ����� ���� ��������', '��������', MB_ICONWARNING);
     exit;
  end;

    // �������� ��������� SQL ������
    try
      DM.Ora_SQL.SQL.Clear;
      DM.Ora_SQL.SQL.Add('begin PACK_ORDERS.save_order(:id_, :P0, :P1, :P2, :P3, :state_, :P4, :pS_ID, :p_old_price); end; ');
      if f_edit = 1 then
         DM.Ora_SQL.ParamByName('id_').AsInteger := 0
      else
         DM.Ora_SQL.ParamByName('id_').AsInteger := DM.Q_ORDERS.FieldByName('ID_ORDERS').AsInteger;

      DM.Ora_SQL.ParamByName('p0').AsDate := DateTimePicker2.Value;
      DM.Ora_SQL.ParamByName('p1').AsDateTime := DateTimePicker1.Value + Time();
      DM.Ora_SQL.ParamByName('p2').Value := Memo1.Text;
      DM.Ora_SQL.ParamByName('P3').Value := first_dialog_frm.DBComboBoxEh1.Value;
      DM.Ora_SQL.ParamByName('state_').AsInteger := f_edit;
      DM.Ora_SQL.ParamByName('p4').AsDate := DateTimePicker3.Value;
      DM.Ora_SQL.ParamByName('pS_ID').Value := lookcombo_suplier.EditValue;
      if lcb_prices.ItemIndex > 0 then
        DM.Ora_SQL.ParamByName('p_old_price').Value := lcb_prices.EditValue
      else
        DM.Ora_SQL.ParamByName('p_old_price').Value := NULL;
      DM.Ora_SQL.Execute;
      ind := DM.Ora_SQL.ParamByName('id_').AsInteger;

      DM.Main_session.Commit;

      DM.Q_ORDERS.Refresh;
      DM.Q_ORDERS.Locate('ID_ORDERS',ind,[]);
      new_order.ModalResult := mrOK;
    except
      on E: Exception do ShowMessage('������ ��� ������ ������!'#13#10+E.Message)
    End;
end;



procedure Tnew_order.DateTimePicker1Change(Sender: TObject);
begin
  if (f_edit <> 2) then
  begin
    DateTimePicker2.Value := DateTimePicker1.Value + 3;
    DateTimePicker3.Value := DateTimePicker1.Value + 1;
  end;
end;


procedure Tnew_order.FormShow(Sender: TObject);
begin
  DateTimePicker1.SetFocus;
end;

end.