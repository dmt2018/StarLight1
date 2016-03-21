unit UClientOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, Ora, OdacVcl, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxTextEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, jpeg, ExtCtrls, cxContainer,
  cxLabel, IniFiles, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  ActnList, frxpngimage, cxImage, frxClass, frxDBSet;

type
  TfrmClientOrders = class(TForm)
    Main_session: TOraSession;
    OraConnDlg: TConnectDialog;
    cdsOrders: TOraQuery;
    dsOrdes: TDataSource;
    grOrdersView: TcxGridDBTableView;
    grOrdersLevel: TcxGridLevel;
    grOrders: TcxGrid;
    grOrdersViewID_ORDERS: TcxGridDBColumn;
    grOrdersViewDATE_TRUCK: TcxGridDBColumn;
    grOrdersViewDATE_TRUCK_OUT: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Image4: TImage;
    grClients: TcxGrid;
    grClientsView: TcxGridDBTableView;
    grClientsLevel: TcxGridLevel;
    cxLabel1: TcxLabel;
    teSearch: TcxTextEdit;
    cdsClients: TOraQuery;
    dsClients: TDataSource;
    grClientsViewNICK: TcxGridDBColumn;
    grClientsViewID_CLIENTS_GROUPS: TcxGridDBColumn;
    grClientsViewGROUP_NAME: TcxGridDBColumn;
    Label1: TLabel;
    imgPrint: TcxImage;
    Label2: TLabel;
    alMain: TActionList;
    aClearFilter: TAction;
    aPrint: TAction;
    Q_ORDERS_LIST: TOraStoredProc;
    Q_ORDERS_LISTCOMPILED_NAME_OTDEL: TStringField;
    Q_ORDERS_LISTH_NAME_F: TStringField;
    Q_ORDERS_LISTH_NAME: TStringField;
    Q_ORDERS_LISTF_NAME: TStringField;
    Q_ORDERS_LISTFN_ID: TFloatField;
    Q_ORDERS_LISTF_SUB_TYPE: TStringField;
    Q_ORDERS_LISTF_TYPE: TStringField;
    Q_ORDERS_LISTN_ID: TFloatField;
    Q_ORDERS_LISTLEN: TIntegerField;
    Q_ORDERS_LISTPACK: TIntegerField;
    Q_ORDERS_LISTVBN: TIntegerField;
    Q_ORDERS_LISTWEIGHT: TFloatField;
    Q_ORDERS_LISTFST_ID: TFloatField;
    Q_ORDERS_LISTFT_ID: TFloatField;
    Q_ORDERS_LISTC_ID: TFloatField;
    Q_ORDERS_LISTS_ID: TFloatField;
    Q_ORDERS_LISTS_NAME_RU: TStringField;
    Q_ORDERS_LISTCOLOUR: TStringField;
    Q_ORDERS_LISTCOL_ID: TFloatField;
    Q_ORDERS_LISTCOUNTRY: TStringField;
    Q_ORDERS_LISTID_DEPARTMENTS: TFloatField;
    Q_ORDERS_LISTHOL_SUB_TYPE: TStringField;
    Q_ORDERS_LISTREMARKS: TStringField;
    Q_ORDERS_LISTHT_ID: TFloatField;
    Q_ORDERS_LISTRUS_MARKS: TStringField;
    Q_ORDERS_LISTH_CODE: TStringField;
    Q_ORDERS_LISTPRIH_FUTURE: TFloatField;
    Q_ORDERS_LISTPRIH_POST: TFloatField;
    Q_ORDERS_LISTHOL_TYPE: TStringField;
    Q_ORDERS_LISTSUB_WEIGHT: TFloatField;
    Q_ORDERS_LISTSTORE_ALL: TFloatField;
    Q_ORDERS_LISTID_ORDERS_CLIENTS: TFloatField;
    Q_ORDERS_LISTFL_ORDERS_ALL: TFloatField;
    Q_ORDERS_LISTFL_ORDERS: TFloatField;
    Q_ORDERS_LISTID_ORDERS_LIST: TFloatField;
    Q_ORDERS_LISTZATIRKA: TIntegerField;
    Q_ORDERS_LISTTRUCK: TIntegerField;
    Q_ORDERS_LISTBAR_CODE: TStringField;
    Q_ORDERS_LISTCODE: TFloatField;
    Q_ORDERS_LISTSTORE_SPIS: TFloatField;
    Q_ORDERS_LISTSTORE_UCEN: TFloatField;
    Q_ORDERS_LISTSTORE_PROD: TFloatField;
    Q_ORDERS_LISTCOUNT_DATA: TIntegerField;
    Q_ORDERS_LISTREMARKS_TMP: TStringField;
    Q_ORDERS_LISTPRICE: TFloatField;
    Q_ORDERS_LISTPACK_: TFloatField;
    Q_ORDERS_LISTNBUTTON: TFloatField;
    frxReport1: TfrxReport;
    fr_order_list: TfrxDBDataset;
    fr_order_orders: TfrxDBDataset;
    fr_orders: TfrxDBDataset;
    aShowClients: TAction;
    Label3: TLabel;
    Q_DISTR_LIST: TOraQuery;
    Q_DISTR_LISTN_ID: TFloatField;
    Q_DISTR_LISTQUANTITY: TIntegerField;
    Q_DISTR_LISTZATIRKA: TIntegerField;
    Q_DISTR_LISTID_ORDERS_LIST: TFloatField;
    Q_DISTR_LISTCOMPILED_NAME_OTDEL: TStringField;
    Q_DISTR_LISTCOLOUR: TStringField;
    Q_DISTR_LISTIS_STOCK: TFloatField;
    Q_DISTR_LISTDQ: TFloatField;
    Q_DISTR_LISTDQ_CHECK: TFloatField;
    Q_DISTR_LISTDIST_ID: TFloatField;
    Q_DISTR_LISTCOMPILED_NAME_OTDEL_RAZN: TStringField;
    Q_DISTR_LISTCOLOUR_RAZN: TStringField;
    aSearch: TAction;
    cdsOrdersID_ORDERS: TStringField;
    cdsOrdersDATE_TRUCK: TDateTimeField;
    cdsOrdersDATE_TRUCK_OUT: TDateTimeField;
    cdsOrdersS_NAME_RU: TStringField;
    cdsOrdersDIST_IND_ID: TStringField;
    cdsClientsCHECKED: TFloatField;
    cdsClientsNICK: TStringField;
    cdsClientsNICK_NAME: TStringField;
    cdsClientsFIO: TStringField;
    cdsClientsID_CLIENTS_GROUPS: TIntegerField;
    cdsClientsGROUP_NAME: TStringField;
    oraSQL: TOraQuery;
    Q_DISTR_LISTPRICE: TFloatField;
    Q_DISTR_LISTON_DATE: TDateTimeField;
    Q_DISTR_LISTINFO: TStringField;
    Q_DISTR_LISTCODE: TFloatField;
    Q_DISTR_LISTH_CODE: TStringField;
    Q_DISTR_LISTCQUANTITYMPRICE: TFloatField;
    Q_DISTR_LISTID_ORDERS_CLIENTS: TFloatField;
    Q_DISTR_LISTID_ORDERS: TFloatField;
    Q_DISTR_LISTFIO: TStringField;
    Q_DISTR_LISTINS_FIO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure teSearchKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure imgPrintClick(Sender: TObject);
    procedure aClearFilterExecute(Sender: TObject);
    procedure aPrintExecute(Sender: TObject);
    procedure teSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aShowClientsExecute(Sender: TObject);
    procedure aSearchExecute(Sender: TObject);
    procedure cdsOrdersAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    id_dep, days_minus, vPack: integer;
    { Public declarations }
  end;

var
  frmClientOrders: TfrmClientOrders;

implementation

{$R *.dfm}

procedure TfrmClientOrders.imgPrintClick(Sender: TObject);
var path : string;
begin

  aSearch.Execute;
  if (cdsOrders.RecordCount = 0) or (cdsClients.RecordCount = 0) or not cdsClients.Filtered then exit;

    path := ExtractFilePath(Application.ExeName);
    Screen.Cursor := crHourGlass;
    try
      Q_DISTR_LIST.Close;
      Q_DISTR_LIST.ParamByName('vNick').AsString  := cdsClientsNICK.AsString;
      Q_DISTR_LIST.ParamByName('vPack').AsInteger := vPack;
      Q_DISTR_LIST.Open;
{
      Q_DISTR_LIST.Close;
      Q_DISTR_LIST.ParamByName('p_order').AsInteger        := cdsClientsID_ORDERS.AsInteger;
      Q_DISTR_LIST.ParamByName('p_order_client').AsInteger := cdsClientsID_ORDERS_CLIENTS.AsInteger;
      Q_DISTR_LIST.Open;
}
      //frxReport1.LoadFromFile(path+'raports\order_client_list.fr3');
      frxReport1.LoadFromFile(path+'raports\reserv.fr3');
      frxReport1.ShowReport;
      Screen.Cursor := crDefault;

      Q_DISTR_LIST.Close;
    except
      on E: Exception do
      begin
        Screen.Cursor := crDefault;
        ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
      end;
    End;
end;

procedure TfrmClientOrders.aClearFilterExecute(Sender: TObject);
begin
  teSearch.EditValue := '';
  cdsClients.Filter := '';
  cdsClients.Filtered := false;
  teSearch.Style.Color := clWindow;
end;


procedure TfrmClientOrders.aPrintExecute(Sender: TObject);
begin
  imgPrintClick(Sender);
end;

procedure TfrmClientOrders.aSearchExecute(Sender: TObject);
begin
    teSearch.PostEditValue;
    if teSearch.EditValue = '' then
    begin
      cdsClients.Filter := '';
      cdsClients.Filtered := false;
      teSearch.Style.Color := clWindow;
    end
    else
    begin
      cdsClients.Filter   := 'NICK_NAME = '''+VarToStr(teSearch.EditValue)+'''';
      cdsClients.Filtered := true;
      if cdsClients.RecordCount = 0 then teSearch.Style.Color := clred else teSearch.Style.Color := TColor($009FFF9F);
      grClients.Visible := (cdsClients.RecordCount > 1);
    end;
end;

procedure TfrmClientOrders.aShowClientsExecute(Sender: TObject);
begin
  grClients.Visible := not grClients.Visible;
end;

procedure TfrmClientOrders.cdsOrdersAfterScroll(DataSet: TDataSet);
begin
  if not cdsOrders.Active or (cdsOrders.RecordCount = 0) then exit;

  oraSQL.Close;
  oraSQL.SQL.Clear;
  oraSQL.SQL.Add('delete from tmp_exp_doc');
  oraSQL.Execute;
  oraSQL.SQL.Clear;
  oraSQL.SQL.Add('insert into tmp_exp_doc ( select * from table(cast(get_list_elements('''+cdsOrdersID_ORDERS.AsString+''') as number_list_type)) )');
  oraSQL.Execute;

  oraSQL.Close;
  oraSQL.SQL.Clear;
  oraSQL.SQL.Add('delete from tmp_exp_doc_2');
  oraSQL.Execute;
  if cdsOrdersDIST_IND_ID.AsString <> '' then
  begin
    oraSQL.SQL.Clear;
    oraSQL.SQL.Add('insert into tmp_exp_doc_2 ( select * from table(cast(get_list_elements('''+cdsOrdersDIST_IND_ID.AsString+''') as number_list_type)) )');
    oraSQL.Execute;
  end;
  cdsClients.Close;
  cdsClients.Open;
//  ShowMessage(IntToStr(cdsClients.RecordCount));
end;

procedure TfrmClientOrders.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Main_session.Close;
end;


procedure TfrmClientOrders.FormCreate(Sender: TObject);
var  RegIni : TIniFile;
     path : String;
begin
{
frmClientOrders.FormStyle:=fsStayOnTop;
frmClientOrders.Width:=Screen.Width;
frmClientOrders.Height :=Screen.Height;
               }
  path := ExtractFilePath(Application.ExeName);
  cdsOrders.AfterScroll := nil;

  RegIni := TIniFile.Create(path+'orders.ini');
  try
    id_dep     := RegIni.ReadInteger('id_dep', 'value', 62);
    days_minus := RegIni.ReadInteger('days_minus','value', 200);
    vPack      := RegIni.ReadInteger('vPack','value', 0);
  finally
    RegIni.Free;
  end;

  if OraConnDlg.Execute then
  begin
    Main_session.Connect;
    cdsOrders.ParamByName('id_dep').AsInteger := id_dep;
    cdsOrders.ParamByName('days_minus').AsInteger := days_minus;
    cdsOrders.open;

    cdsClients.ParamByName('vPack').AsInteger := vPack;
    //cdsClients.Open;

    cdsOrders.AfterScroll := cdsOrdersAfterScroll;
    cdsOrders.First;
  end
  else Application.Terminate;
end;


procedure TfrmClientOrders.teSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then aSearch.Execute else
  begin
    teSearch.Style.Color := clWindow;
    grClients.Visible := false;
  end;
end;

procedure TfrmClientOrders.teSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{
    teSearch.PostEditValue;
    if VarToStr(teSearch.EditValue) = '' then
    begin
      cdsClients.First;
      cdsClients.Filter := '';
      cdsClients.Filtered := false;
      teSearch.Style.Color := clWindow;
    end
    else
    begin
      cdsClients.Filter   := 'NICK = '''+UpperCase(VarToStr(teSearch.EditValue))+'''';
      cdsClients.Filtered := true;
      if cdsClients.RecordCount = 0 then teSearch.Style.Color := clred else teSearch.Style.Color := clWindow;
    end;
}
end;

end.
