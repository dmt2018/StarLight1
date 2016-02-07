unit main_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, PI_Library, Menus, cxLookAndFeelPainters,
  StdCtrls, cxButtons, cxLabel, jpeg, cxControls, cxContainer, cxEdit, cxImage,
  frxpngimage, dxGDIPlusClasses;

type
  Tmain = class(TForm)
    Panel6: TPanel;
    img_clients: TcxImage;
    label_clients: TcxLabel;
    Panel8: TPanel;
    btnClose: TcxButton;
    Panel5: TPanel;
    label_sales: TcxLabel;
    img_sales: TcxImage;
    cxLabel1: TcxLabel;
    img_money: TcxImage;
    cxLabel2: TcxLabel;
    img_cl_sales: TcxImage;
    btn_user: TcxButton;
    lblStore: TcxLabel;
    imgStore: TcxImage;
    lblSalesByClient: TcxLabel;
    imgSalesByClient: TcxImage;
    procedure btnCloseClick(Sender: TObject);
    procedure img_clientsClick(Sender: TObject);
    procedure img_salesClick(Sender: TObject);
    procedure img_moneyClick(Sender: TObject);
    procedure img_cl_salesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_userClick(Sender: TObject);
    procedure imgStoreClick(Sender: TObject);
    procedure imgSalesByClientClick(Sender: TObject);
  private
    { Private declarations }
  public
    p_edit, p_delete, p_print, p_addit  : boolean;
    tag1, tag2, tag3, tag4, tag5: boolean;
    { Public declarations }
  end;

var
  main: Tmain;

implementation

uses client_stat_f, DataModule, prod_stat_f, UMoney, UClients, USettings,
  UStore, USealesByClient;

{$R *.dfm}

// Выход из программы
procedure Tmain.btnCloseClick(Sender: TObject);
begin
  if MessageDlg('Действительно хотите выйти из программы?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then close;
end;

// На показ формы добудем все данные
procedure Tmain.FormShow(Sender: TObject);
var i: integer;
begin
  DM.cds_grants.Open;

  btn_user.Visible := p_addit;
  if (p_addit) then
  begin
    tag1 := p_addit;
    tag2 := tag1;
    tag3 := tag1;
    tag4 := tag1;
    tag5 := tag1;
  end
  else
  begin
    DM.SQL_Q.Close;
    DM.SQL_Q.SQL.Clear;
    DM.SQL_Q.SQL.Add('SELECT a.tag, a.c_start FROM admin_programs_buttons a, clients c where a.id_programs=19 and a.id_user=c.id_clients and c.login=upper('''+DM.stat_session.Username+''')');
    DM.SQL_Q.Open;
    tag1 := false;
    tag2 := tag1;
    tag3 := tag1;
    tag4 := tag1;
    tag5 := tag1;
    if (DM.SQL_Q.RecordCount > 0) then
    begin
      DM.SQL_Q.First;
      while not DM.SQL_Q.Eof do
      begin
        if (DM.SQL_Q.FieldByName('tag').AsInteger = 1) then tag1 := CharToBool(DM.SQL_Q.FieldByName('c_start').AsString);
        if (DM.SQL_Q.FieldByName('tag').AsInteger = 2) then tag2 := CharToBool(DM.SQL_Q.FieldByName('c_start').AsString);
        if (DM.SQL_Q.FieldByName('tag').AsInteger = 3) then tag3 := CharToBool(DM.SQL_Q.FieldByName('c_start').AsString);
        if (DM.SQL_Q.FieldByName('tag').AsInteger = 4) then tag4 := CharToBool(DM.SQL_Q.FieldByName('c_start').AsString);
        if (DM.SQL_Q.FieldByName('tag').AsInteger = 5) then tag5 := CharToBool(DM.SQL_Q.FieldByName('c_start').AsString);
        DM.SQL_Q.Next;
      end;
    end;
    DM.SQL_Q.Close;
  end;

  img_clients.Enabled   := tag1;
  img_sales.Enabled     := tag2;
  img_money.Enabled     := tag3;
  img_cl_sales.Enabled  := tag4;
  imgStore.Enabled      := tag5;

  label_clients.Enabled := tag1;
  label_sales.Enabled   := tag2;
  cxLabel1.Enabled      := tag3;
  cxLabel2.Enabled      := tag4;
  lblStore.Enabled      := tag5;
end;


// Настройки
procedure Tmain.btn_userClick(Sender: TObject);
begin
  frmSettings := TfrmSettings.Create(Application);
  try
    frmSettings.CDS_clients.Active := true;
    frmSettings.showmodal;
  finally
    frmSettings.Free;
  end;
end;


//
//  Клиенты
//
procedure Tmain.img_cl_salesClick(Sender: TObject);
begin
  if (tag4 = false) then exit;
  
  frmClients := TfrmClients.Create(Application);
  try
    frmClients.d_date_begin.Properties.OnEditValueChanged := nil;
    frmClients.d_date_end.Properties.OnEditValueChanged := nil;
    frmClients.d_date_begin.EditValue  := Now()-30;
    frmClients.d_date_end.EditValue    := Now();
    frmClients.d_date_begin.Properties.OnEditValueChanged := frmClients.d_date_beginPropertiesEditValueChanged;
    frmClients.d_date_end.Properties.OnEditValueChanged := frmClients.d_date_beginPropertiesEditValueChanged;

    frmClients.chb_regions.Properties.OnEditValueChanged := nil;
    DM.SQL_Q.Close;
    DM.SQL_Q.SQL.Clear;
    DM.SQL_Q.SQL.Add('SELECT a.id_regions, a.name FROM books_regions a order by a.name');
    DM.SQL_Q.Open;
    FillChComboCx(DM.SQL_Q, frmClients.chb_regions, '');
    frmClients.chb_regions.Properties.OnEditValueChanged := frmClients.cb_typePropertiesEditValueChanged;

    frmClients.cb_clients.Properties.OnEditValueChanged := nil;
    DM.SQL_Q.Close;
    DM.SQL_Q.SQL.Clear;
    DM.SQL_Q.SQL.Add('select rownum, a.* from ( select distinct substr(trim(nick),0,INSTR(trim(nick), '' '')-1) as ww from clients ) a order by ww ');
    DM.SQL_Q.Open;
    FillChComboCx(DM.SQL_Q, frmClients.cb_clients, '');
    frmClients.cb_clients.Properties.OnEditValueChanged := frmClients.cb_clientsPropertiesEditValueChanged;

    frmClients.showmodal;
  finally
    client_stat.Free;
  end;
end;

//
//  Клиентская нагрузка
//
procedure Tmain.img_clientsClick(Sender: TObject);
begin
  if (tag1 = false) then exit;
  client_stat := Tclient_stat.Create(Application);
  try
    client_stat.btn_print.Enabled       := p_print;
    client_stat.top_panel.Caption       := label_clients.Caption;
    client_stat.d_date_begin.EditValue  := Now();
    client_stat.d_date_end.EditValue    := Now();
    client_stat.showmodal;
  finally
    client_stat.Free;
  end;
end;

//
//  Доходность
//
procedure Tmain.img_moneyClick(Sender: TObject);
begin
  if (tag3 = false) then exit;

  frmMoney := TfrmMoney.Create(Application);
  try
    frmMoney.showmodal;
  finally
    frmMoney.free;
  end;
end;

//
//  Продажи по товару
//
procedure Tmain.img_salesClick(Sender: TObject);
begin
  if (tag2 = false) then exit;

  frm_prod_stat := Tfrm_prod_stat.Create(Application);
  try
    frm_prod_stat.showmodal;
  finally
    frm_prod_stat.free;
  end;
end;


// Склад
procedure Tmain.imgStoreClick(Sender: TObject);
begin
  if (tag5 = false) then exit;

  frmStore := TfrmStore.Create(Application);
  try
    frmStore.showmodal;
  finally
    frmStore.free;
  end;
end;


//
//  Продажи по клиентам
//
procedure Tmain.imgSalesByClientClick(Sender: TObject);
begin
  if (tag2 = false) then exit;

  frmSalesByClients := TfrmSalesByClients.Create(Application);
  try
//    frmSalesByClients.d_date_begin.Properties.OnEditValueChanged := nil;
//    frmSalesByClients.d_date_end.Properties.OnEditValueChanged := nil;
    frmSalesByClients.d_date_begin.EditValue  := Now()-30;
    frmSalesByClients.d_date_end.EditValue    := Now();
 //   frmSalesByClients.d_date_begin.Properties.OnEditValueChanged := frmClients.d_date_beginPropertiesEditValueChanged;
 //   frmSalesByClients.d_date_end.Properties.OnEditValueChanged := frmClients.d_date_beginPropertiesEditValueChanged;

    frmSalesByClients.chb_regions.Properties.OnEditValueChanged := nil;
    DM.SQL_Q.Close;
    DM.SQL_Q.SQL.Clear;
    DM.SQL_Q.SQL.Add('SELECT a.id_regions, a.name FROM books_regions a order by a.name');
    DM.SQL_Q.Open;
    FillChComboCx(DM.SQL_Q, frmSalesByClients.chb_regions, '');
    frmSalesByClients.chb_regions.Properties.OnEditValueChanged := frmSalesByClients.chb_regionsPropertiesEditValueChanged;

    frmSalesByClients.cb_clients.Properties.OnEditValueChanged := nil;
    DM.SQL_Q.Close;
    DM.SQL_Q.SQL.Clear;
    DM.SQL_Q.SQL.Add('select rownum, a.* from ( select distinct substr(trim(nick),0,INSTR(trim(nick), '' '')-1) as ww from clients ) a order by ww ');
    DM.SQL_Q.Open;
    FillChComboCx(DM.SQL_Q, frmSalesByClients.cb_clients, '');
    frmSalesByClients.cb_clients.Properties.OnEditValueChanged := frmSalesByClients.cb_clientsPropertiesEditValueChanged;

    frmSalesByClients.showmodal;
  finally
    frmSalesByClients.free;
  end;
end;


end.
