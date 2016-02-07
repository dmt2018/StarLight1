unit ChooseInvoiceU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, PI_Library, Buttons, Menus,
  cxLookAndFeelPainters, cxButtons, Mask, DBCtrlsEh, ExtCtrls, cxControls,
  cxContainer, cxCheckListBox;

type
  TChooseInvoiceF = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    Label1: TLabel;
    chlbInvoices: TcxCheckListBox;
  private
    function CollectInvoices: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChooseInvoiceF: TChooseInvoiceF;

function GetInvoice(load_invoice: boolean) : String;

implementation

uses DataModule, GlobalsU;

{$R *.dfm}

function GetInvoice(load_invoice: boolean) : String;
var sql : string;
Begin
  Application.CreateForm(TChooseInvoiceF, ChooseInvoiceF);

  if load_invoice then
  begin
    ChooseInvoiceF.Caption := 'Выбрать инвойс';
    ChooseInvoiceF.Label1.Caption := '№ инвойса : дата инвойса поставщика : комментарий';
    sql := 'begin creator.DISTRIBUTION_PKG.load_invoice(:id_dep_, :cursor_); end;';
  end
  else
  begin
    ChooseInvoiceF.Caption := 'Выбрать инвойс';
    ChooseInvoiceF.Label1.Caption := '№ заказа : дата выхода машины : кол-во клиентов : поставщик : информация';
    sql := 'begin creator.DISTRIBUTION_PKG.load_order(:id_dep_, :cursor_); end;';
  end;
  DM.SelQ.Close;
  DM.SelQ.SQL.Clear;
  DM.SelQ.SQL.Add(sql);
  DM.SelQ.ParamByName('id_dep_').AsInteger := CUR_DEPT_ID;
  DM.SelQ.ParamByName('cursor_').AsCursor;
  DM.SelQ.Open;

  with ChooseInvoiceF do
    Begin
      try
        //FillComboOlmer(DM.SelQ, DBComboBoxEh1, '');
        FillCheckListCx(DM.SelQ, chlbInvoices, '');
        if ShowModal <> mrOk then Exit;
        Result := CollectInvoices; //DBComboBoxEh1.Value;
      finally
        free;
      end;
    End;
End;


function TChooseInvoiceF.CollectInvoices: String;
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


end.
