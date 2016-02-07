unit UExportDBF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, DBGridEhGrouping, GridsEh, DBGridEh,
  DB, DBTables, StdCtrls, cxButtons, ExtCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfrmLoadFromDBF = class(TForm)
    pnlTop: TPanel;
    btnLoad: TcxButton;
    pnlBottom: TPanel;
    btnClose: TcxButton;
    cxButton1: TcxButton;
    OpenDialog1: TOpenDialog;
    qStore: TQuery;
    dStore: TDataSource;
    grStore: TDBGridEh;
    deMain: TcxDateEdit;
    pnlInfo: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    mmErrorClients: TMemo;
    mmErrorNom: TMemo;
    Label3: TLabel;
    procedure btnLoadClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoadFromDBF: TfrmLoadFromDBF;

implementation

uses frm_DM;

{$R *.dfm}

procedure TfrmLoadFromDBF.btnLoadClick(Sender: TObject);
var path: string;
begin
  if OpenDialog1.Execute then path := OpenDialog1.FileName;
  if path = '' then exit;

  if not FileExists(path) then
  begin
    ShowMessage('Такой файл не существует');
    exit;
  end;

  try
    qStore.Close;
    qStore.SQL.Clear;
    qStore.SQL.Add('SELECT * FROM "'+path+'" where DAT='''+VarToStr(deMain.EditValue)+''' order by FIO');
    qStore.Open;
  except on E:Exception do
    Application.MessageBox(PChar('Ошибка открытия таблицы с фасовками. '+E.Message),'Ошибка открытия таблицы',MB_ICONERROR);
  end;

end;

procedure TfrmLoadFromDBF.cxButton1Click(Sender: TObject);
var idOrder, idClient, id_cl: integer;
    Client, err_log, err_log_clients, ClientDB: string;
    fs : TFormatSettings;
    needPack: boolean;
begin
  if qStore.RecordCount = 0 then exit;

  idOrder  := 0;
  idClient := 0;
  Client   := '';
  id_cl    := 0;
  mmErrorClients.Text := '';
  mmErrorNom.Text := '';
  pnlInfo.Visible := false;
  pnlInfo.Repaint;
  needPack := false;

  GetLocaleFormatSettings(1251,fs);
  fs.DateSeparator := '-';
  fs.DecimalSeparator := '.';
  fs.ShortDateFormat := 'dd-mm-yyyy';

  if DM.Q_ORDERS.Locate('DATE_TRUCK',deMain.EditValue,[]) then
     idOrder := DM.Q_ORDERSID_ORDERS.AsInteger
  else
  begin
    idOrder := DM.CreateOrder(0, deMain.EditValue, '', deMain.EditValue);
    DM.Q_ORDERS.Refresh;
    DM.Q_ORDERS.Locate('ID_ORDERS',idOrder,[]);
  end;

  DM.Q_CLIENTS.Open;
  qStore.First;
  while not qStore.Eof do
  begin
    ClientDB := qStore.FieldByName('FIO').AsString;

    if pos('_',ClientDB) > 0 then
    begin
      ClientDB := copy(ClientDB,1,length(ClientDB)-1);
      needPack := true;
    end
    else
    begin
      needPack := false;
    end;


    if Client <> ClientDB then
    begin
      Client := ClientDB;
      if Not DM.Q_CLIENTS.Locate('nick',ClientDB,[loCaseInsensitive]) then
      begin
        err_log_clients := err_log_clients + ClientDB + #13#10;
        idClient := 0;
        id_cl := 0;
        //MessageBox(Hwnd, PChar('Клиент с кодом '+Client+' не найден!'), 'Внимание', MB_ICONERROR);
      end
      else
      begin
        idClient := DM.Q_CLIENTS.FieldByName('ID_CLIENTS').Value;
        id_cl := DM.CreateClientOrder(idOrder, idClient, '');
        if needPack then
        begin
          try
            DM.Q_SQL.SQL.Clear;
            DM.Q_SQL.SQL.Add('begin PACK_ORDERS.change_pack(:ID_ORDERS_CLIENTS_, :IS_PACK_); end;');
            DM.Q_SQL.ParamByName('ID_ORDERS_CLIENTS_').AsInteger := id_cl;
            DM.Q_SQL.ParamByName('IS_PACK_').AsInteger := 1;
            DM.Q_SQL.Execute;
          except
          on E: Exception do ShowMessage('Ошибка выполнения запроса!'#13#10+E.Message);
          End;

        end;
      end;
    end;

    if (idClient > 0) and (id_cl > 0) then
    begin
      DM.cdsNom2.Close;
      DM.cdsNom2.ParamByName('p_code').AsString := qStore.FieldByName('BCODE').AsString;
      DM.cdsNom2.ParamByName('p_dep').AsInteger := 62;
      DM.cdsNom2.Open;
      if not DM.cdsNom2.IsEmpty then
      begin
        DM.Q_SQL.Close;
        dm.Q_SQL.SQL.Clear;
        DM.Q_SQL.SQL.Text := 'begin PACK_ORDERS.INS_ORDERS(:ID_ORDERS_CLIENTS, :N_ID, :FL_ORDERS, :TRUCK, :sub_weight, :v_site_data, :REMARKS_); end;';
        DM.Q_SQL.ParamByName('ID_ORDERS_CLIENTS').Value := id_cl;
        DM.Q_SQL.ParamByName('N_ID').Value        := DM.cdsNom2N_ID.AsInteger;
        DM.Q_SQL.ParamByName('FL_ORDERS').Value   := StrToFloat(qStore.FieldByName('NUM').AsString,fs);
        DM.Q_SQL.ParamByName('TRUCK').Value       := 0;
        DM.Q_SQL.ParamByName('sub_weight').Value  := 0;
        DM.Q_SQL.ParamByName('v_site_data').Value := '';
        DM.Q_SQL.ParamByName('REMARKS_').Value    := '';
        DM.Q_SQL.Execute;
      end
      else err_log := err_log + qStore.FieldByName('BCODE').AsString + #13#10;

    end;

    qStore.Next;
  end;
  mmErrorClients.Text := err_log_clients;
  mmErrorNom.Text := err_log;
  Label1.Caption := 'Не найденные клиенты ('+IntToStr(mmErrorClients.Lines.Count)+')';
  Label2.Caption := 'Не найденный товар ('+IntToStr(mmErrorNom.Lines.Count)+')';
  pnlInfo.Visible := true;
end;

procedure TfrmLoadFromDBF.FormCreate(Sender: TObject);
begin
  deMain.EditValue := Now;
end;

end.
