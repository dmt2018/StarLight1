unit DistParamsU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, PI_Library, Menus,
  cxLookAndFeelPainters, cxButtons, ExtCtrls, ActnList, Mask, DBCtrlsEh,
  cxControls, cxContainer, cxCheckListBox;

type
  TDistParamsF = class(TForm)
    Panel2: TPanel;
    btnOK: TcxButton;
    btnExit: TcxButton;
    ActionList1: TActionList;
    aEnter: TAction;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    DateTimePicker1: TDateTimePicker;
    Panel3: TPanel;
    Label3: TLabel;
    Panel4: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Image1: TImage;
    Image2: TImage;
    chlbInvoices: TcxCheckListBox;
    btnCollectInv: TButton;
    chlbOrders: TcxCheckListBox;
    Label8: TLabel;
    procedure aEnterExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnCollectInvClick(Sender: TObject);
  private
    function CollectInvoices : String;
    function CollectOrders: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DistParamsF: TDistParamsF;

function GetDistParams(var DistDate : Variant; var DistComment : Variant; var OrderID : Variant; var InvIDs : String) : Boolean;


implementation

uses DateUtils, DataModule, GlobalsU;

{$R *.dfm}
function GetDistParams(var DistDate : Variant; var DistComment : Variant; var OrderID : Variant; var InvIDs : String) : Boolean;
var sql : string;
    itm: TcxCheckListBoxItem;
Begin
  Application.CreateForm(TDistParamsF, DistParamsF);
  Result := false;

  with DistParamsF do
  Begin
    try
        sql := 'begin creator.DISTRIBUTION_PKG.load_order(:id_dep_, :cursor_); end;';
        DM.SelQ.Close;
        DM.SelQ.SQL.Clear;
        DM.SelQ.SQL.Add(sql);
        DM.SelQ.ParamByName('id_dep_').AsInteger := CUR_DEPT_ID;
        DM.SelQ.ParamByName('cursor_').AsCursor;
        DM.SelQ.Open;
        //FillComboOlmer(DM.SelQ, DBComboBoxEh1, '');
        FillCheckListCx(DM.SelQ, chlbOrders, '');

        sql := 'begin creator.DISTRIBUTION_PKG.load_invoice(:id_dep_, :cursor_); end;';
        DM.SelQ.Close;
        DM.SelQ.SQL.Clear;
        DM.SelQ.SQL.Add(sql);
        DM.SelQ.ParamByName('id_dep_').AsInteger := CUR_DEPT_ID;
        DM.SelQ.ParamByName('cursor_').AsCursor;
        DM.SelQ.Open;
        FillCheckListCx(DM.SelQ, chlbInvoices, '');
        //FillComboOlmer(DM.SelQ, DBComboBoxEh2, 'Без инвойса');
        DM.SelQ.Close;

        Panel3.Visible := not (OrderID > 0);
        Panel4.Visible := not (OrderID > 0);

        DateTimePicker1.DateTime := VarToDateTime(DistDate);
        Edit1.Text  := VarToStr(DistComment);
        if ShowModal <> mrOk then exit;
        DistDate    := DateTimePicker1.Date;
        DistComment := StrToVar(Edit1.Text);
        OrderID     := CollectOrders; //DBComboBoxEh1.Value;
        InvIDs      := CollectInvoices; //DBComboBoxEh2.Value;
        result      := true;
    finally
        Free;
    End;
  End;
End;

procedure TDistParamsF.aEnterExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

function TDistParamsF.CollectInvoices: String;
var i: integer;
    res: String;
begin
  res := '';
  for i:=0 to chlbInvoices.Items.Count-1 do
  begin
    if chlbInvoices.Items.Items[i].Checked then
    begin
      //SetLength(res,j);
      if res = '' then res := IntToStr(chlbInvoices.Items.Items[i].Tag)
      else res := res + ',' + IntToStr(chlbInvoices.Items.Items[i].Tag);
    end;
  end;
  Result := res;
end;

function TDistParamsF.CollectOrders: String;
var i: integer;
    res: String;
begin
  res := '';
  for i:=0 to chlbOrders.Items.Count-1 do
  begin
    if chlbOrders.Items.Items[i].Checked then
    begin
      //SetLength(res,j);
      if res = '' then res := IntToStr(chlbOrders.Items.Items[i].Tag)
      else res := res + ',' + IntToStr(chlbOrders.Items.Items[i].Tag);
    end;
  end;
  Result := res;
end;

procedure TDistParamsF.btnCollectInvClick(Sender: TObject);
var i,j: integer;
    res: Array of Integer;
begin
  j := 1;
//  SetLength(res,j);
  for i:=0 to chlbInvoices.Items.Count-1 do
  begin
    if chlbInvoices.Items.Items[i].Checked then
    begin
      SetLength(res,j);
      res[j-1] := chlbInvoices.Items.Items[i].Tag;
      j:=j+1;
    end;
      //res := res + IntToStr(chlbInvoices.Items.Items[i].Tag) + ';'
  end;
//  ShowMessage(res);
end;

procedure TDistParamsF.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := true;
  if ModalResult = mrOk then
  begin
    if (VarToStr(CollectOrders) = '') and Panel3.Visible then
    begin
       Application.MessageBox('Необходимо указать заказ','Внимание',MB_ICONWARNING);
       CanClose := false;
    end;
  end;
end;

end.
