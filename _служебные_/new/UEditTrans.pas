unit UEditTrans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, ActnList, DBAccess, Ora, StdCtrls,
  cxButtons, cxCurrencyEdit, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Buttons, ExtCtrls, cxGraphics,
  cxSpinEdit, cxTimeEdit, DB, MemDS;

type
  TfrmEditTrans = class(TForm)
    pnlMain: TPanel;
    Lbl1: TLabel;
    Lbl2: TLabel;
    Lbl3: TLabel;
    Lbl4: TLabel;
    Lbl5: TLabel;
    Lbl6: TLabel;
    Lbl7: TLabel;
    cxDateEdit1: TcxDateEdit;
    pnlBottom: TPanel;
    btnSave: TcxButton;
    btnClose: TcxButton;
    OraSQL1: TOraSQL;
    alSettings: TActionList;
    aEnter: TAction;
    aClose: TAction;
    cxComboBox1: TcxComboBox;
    Ed1: TEdit;
    Ed2: TEdit;
    Ed3: TEdit;
    Ed4: TEdit;
    Ed5: TEdit;
    Ed7: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Ed6: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Ed8: TEdit;
    Ed9: TEdit;
    cxTimeEdit1: TcxTimeEdit;
    procedure FormShow(Sender: TObject);
    procedure aCloseExecute(Sender: TObject);
    procedure aEnterExecute(Sender: TObject);
    procedure cxComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure Ed2Click(Sender: TObject);
    procedure Ed2KeyPress(Sender: TObject; var Key: Char);
    procedure Ed3KeyPress(Sender: TObject; var Key: Char);
    procedure Ed4KeyPress(Sender: TObject; var Key: Char);
    procedure cxDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxTimeEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditTrans: TfrmEditTrans;

implementation

{$R *.dfm}

uses utrans, udm;

procedure TfrmEditTrans.aCloseExecute(Sender: TObject);
begin
 close;
end;

procedure TfrmEditTrans.aEnterExecute(Sender: TObject);
 var n_id, nick_, on_date, fio_cl, fio_men, n_mash, stat, adr, end_date, fio_kem, fio_komy: string;
begin
try
  n_id:=ed1.Text;
  on_date:=datetostr(cxdateedit1.Date)+' '+timetostr(cxTimeEdit1.Time);
  nick_:=ed2.Text;
  fio_cl:=ed3.Text;
  fio_men:=ed4.Text;
  n_mash:=ed5.Text;
  adr:=ed6.Text;
  end_date:=ed7.Text;
  fio_kem:=ed8.Text;
  fio_komy:=ed9.Text;

  if cxComboBox1.Text='принят'   then stat := 'принят';
  if cxComboBox1.Text='в пути'   then stat := 'в пути';
  if cxComboBox1.Text='выполнен' then stat := 'выполнен';
  if cxComboBox1.Text='передан'  then stat := 'передан';
//1-ВСТАВКА
if dr=1 then begin
  frmtrans.selq.Close;
  frmtrans.selq.SQL.Clear;
  frmtrans.selq.SQL.add('select count(*) as p2 from status_z where n_id='+n_id);
  frmtrans.selq.Open;
//если записи нет - вставляем, если есть запрещаю дубликат
  if frmtrans.selq.FieldByName('p2').AsInteger=0 then begin
  frmtrans.selq.Close;
  frmtrans.selq.SQL.Clear;
  frmtrans.selq.SQL.add('insert into status_z values(:n_id, :on_date, :nick_, :fio_cl, :fio_men, :n_mash, :stat, :adr, :end_date, :fio_kem, :fio_komy)');
  frmtrans.selq.ParamByName('N_ID').value   := n_id;
  frmtrans.selq.ParamByName('on_date').value:= on_date;
  frmtrans.selq.ParamByName('nick_').value  := nick_;
  frmtrans.selq.ParamByName('fio_cl').value := fio_cl;
  frmtrans.selq.ParamByName('fio_men').value:= fio_men;
  frmtrans.selq.ParamByName('n_mash').value := n_mash;
  frmtrans.selq.ParamByName('stat').value   := stat;
  frmtrans.selq.ParamByName('adr').value    := adr;
  frmtrans.selq.ParamByName('end_date').value:= end_date;
  frmtrans.selq.ParamByName('fio_kem').value := fio_kem;
  frmtrans.selq.ParamByName('fio_komy').value:= fio_komy;
  frmtrans.selq.Execute;
  close;
  end else showmessage('Накладная с этим номером уже есть в списке');
end;
//2-РЕДАКТИРОВАНИЕ
if dr=2 then begin
//нужен предварительный инсерт чтоб было чо править,
//но сначала проверять наличие записи в таблице перед апдейтом

//проверка - есть ли запись в status_z :
  frmtrans.selq.Close;
  frmtrans.selq.SQL.Clear;
  //frmtrans.selq.SQL.add('select count(*) as p1 from status_z where n_id='+n_id+' and on_date='+#39+on_date+#39);
  frmtrans.selq.SQL.add('select count(*) as p1 from status_z where n_id='+n_id);
  frmtrans.selq.Open;
//если запись не найдена - вставляем
  if frmtrans.selq.FieldByName('p1').AsInteger=0 then begin
  frmtrans.selq.Close;
  frmtrans.selq.SQL.Clear;
  frmtrans.selq.SQL.add('insert into status_z values(:n_id, :on_date, :nick_, :fio_cl, :fio_men, :n_mash, :stat, :adr, :end_date, :fio_kem, :fio_komy)');
  frmtrans.selq.ParamByName('N_ID').value   := n_id;
  frmtrans.selq.ParamByName('on_date').value:= on_date;
  frmtrans.selq.ParamByName('nick_').value  := nick_;
  frmtrans.selq.ParamByName('fio_cl').value := fio_cl;
  frmtrans.selq.ParamByName('fio_men').value:= fio_men;
  frmtrans.selq.ParamByName('n_mash').value := n_mash;
  frmtrans.selq.ParamByName('stat').value   := stat;
  frmtrans.selq.ParamByName('adr').value    := adr;
  frmtrans.selq.ParamByName('end_date').value:= end_date;
  frmtrans.selq.ParamByName('fio_kem').value := fio_kem;
  frmtrans.selq.ParamByName('fio_komy').value:= fio_komy;
  frmtrans.selq.Execute;
  end;               
//правим
  frmtrans.selq.Close;
  frmtrans.selq.SQL.Clear;
  frmtrans.selq.SQL.add('update status_z set n_id='+n_id+', on_date='''+on_date+''', nick_='''+nick_+''', fio_cl='''+fio_cl+''', fio_men='''+fio_men+''', n_mash='''+n_mash+''', stat='''+stat+''', adr='''+adr+''', end_date='''+end_date+''',fio_kem='''+fio_kem+''',fio_komy='''+fio_komy+''' ');
  //frmtrans.selq.SQL.add('where n_id='+n_id+' and on_date='+#39+on_date+#39);
  frmtrans.selq.SQL.add('where n_id='+n_id);
  frmtrans.selq.Execute;
  close;
end;



except
on E: Exception do
MessageBox(Handle, PChar(E.Message), 'Не удалось выполнить операцию!', MB_ICONERROR);
End;
end;

procedure TfrmEditTrans.cxComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
   key:=chr(0);
end;

procedure TfrmEditTrans.cxDateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 key:=chr(0);
end;

procedure TfrmEditTrans.cxTimeEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  key:=chr(0);
end;

procedure TfrmEditTrans.Ed2Click(Sender: TObject);
var stroka: string;
begin
  frmtrans.selq.Close;
  frmtrans.selq.SQL.Clear;
  frmtrans.selq.SQL.add('SELECT distinct doc_number, doc_date, nick, fio, operator_name FROM store_doc_view2 ');
  //frmtrans.selq.SQL.add('where a.doc_nuber='+ed1.Text+' and a.doc_date ='+#39+datetostr(cxdateedit1.Date)+#39);
  frmtrans.selq.SQL.add('where doc_number='+ed1.Text+' and id_departments='+inttostr(intDefDept));
  frmtrans.selq.open;

  //cxdateedit1.Date:= strtodate(frmtrans.selq.fieldbyname('doc_date').AsString);
  ed2.Text := frmtrans.selq.fieldbyname('nick').AsString;
  ed3.Text := frmtrans.selq.fieldbyname('fio').AsString;
  ed4.Text := frmtrans.selq.fieldbyname('operator_name').AsString;

  frmtrans.selq.Close;
  frmtrans.selq.SQL.Clear;
  frmtrans.selq.SQL.add('SELECT ID_CLIENTS, nick, fio, ADDRESS, u_address FROM CLIENTS ');
  frmtrans.selq.SQL.add('where nick=upper('''+ed2.Text+''')');
  frmtrans.selq.open;
  if (frmtrans.selq.FieldByName(uppercase('nick')).AsString<>'R CHL') then
  if (frmtrans.selq.FieldByName('ADDRESS').AsString<>'') and (frmtrans.selq.FieldByName('ADDRESS').AsString<>'нет') then
  ed6.Text := frmtrans.selq.fieldbyname('ADDRESS').AsString else
  ed6.Text := frmtrans.selq.fieldbyname('U_ADDRESS').AsString;
end;

procedure TfrmEditTrans.Ed2KeyPress(Sender: TObject; var Key: Char);
begin
 key:=chr(0);
end;

procedure TfrmEditTrans.Ed3KeyPress(Sender: TObject; var Key: Char);
begin
 key:=chr(0);
end;

procedure TfrmEditTrans.Ed4KeyPress(Sender: TObject; var Key: Char);
begin
 key:=chr(0);
end;

procedure TfrmEditTrans.FormShow(Sender: TObject);
begin
  ed1.SetFocus;
end;

end.
