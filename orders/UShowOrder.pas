unit UShowOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Ora, MemDS, DBAccess, GridsEh, DBGridEh, DBCtrls, StdCtrls,
  Buttons, ExtCtrls, DBGridEhGrouping, Menus, IniFiles, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxTextEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxButtons,
  cxSplitter, cxCurrencyEdit, ShellApi;

type
  Tfrm_show_order = class(TForm)
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    CDS_ORDERS_LIST: TOraStoredProc;
    DS_ORDERS_LIST: TOraDataSource;
    CDS_ORDERS_LISTCOMPILED_NAME: TStringField;
    CDS_ORDERS_LISTF_NAME: TStringField;
    CDS_ORDERS_LISTF_NAME_RU: TStringField;
    CDS_ORDERS_LISTF_SUB_TYPE: TStringField;
    CDS_ORDERS_LISTF_TYPE: TStringField;
    CDS_ORDERS_LISTN_ID: TFloatField;
    CDS_ORDERS_LISTLEN: TIntegerField;
    CDS_ORDERS_LISTPACK: TIntegerField;
    CDS_ORDERS_LISTVBN: TIntegerField;
    CDS_ORDERS_LISTWEIGHT: TFloatField;
    CDS_ORDERS_LISTFST_ID: TFloatField;
    CDS_ORDERS_LISTFT_ID: TFloatField;
    CDS_ORDERS_LISTC_ID: TFloatField;
    CDS_ORDERS_LISTS_ID: TFloatField;
    CDS_ORDERS_LISTS_NAME_RU: TStringField;
    CDS_ORDERS_LISTCOLOUR: TStringField;
    CDS_ORDERS_LISTCOUNTRY: TStringField;
    CDS_ORDERS_LISTID_DEPARTMENTS: TFloatField;
    CDS_ORDERS_LISTRUS_MARKS: TStringField;
    CDS_ORDERS_LISTH_CODE: TStringField;
    CDS_ORDERS_LISTQUANTITY: TIntegerField;
    CDS_ORDERS_LISTREMARKS: TStringField;
    CDS_ORDERS_LISTH_NAME: TStringField;
    CDS_ORDERS_LISTCOMPILED_NAME_OTDEL: TStringField;
    pmStat: TPopupMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N25: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N23: TMenuItem;
    N19: TMenuItem;
    aFullInfo1: TMenuItem;
    btnClose: TcxButton;
    CDS_STAT: TOraQuery;
    CDS_STATHH: TStringField;
    CDS_STATNBUTTON: TFloatField;
    CDS_STATH_CATEGORY: TStringField;
    CDS_STATWEIGHT: TFloatField;
    CDS_STATQUANT: TFloatField;
    DS_STAT: TOraDataSource;
    spInfoMain: TcxSplitter;
    CDS_ORDERS_LISTID_ORDERS_CLIENTS: TFloatField;
    CDS_ORDERS_LISTHOL_TYPE: TStringField;
    N1: TMenuItem;
    CDS_ORDERS_LISTNBUTTON: TIntegerField;
    CDS_STATPRICE: TFloatField;
    mnExportTXT: TMenuItem;
    N2: TMenuItem;
    pnlTop: TPanel;
    Panel4: TPanel;
    Label9: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    Label7: TLabel;
    Label10: TLabel;
    DBText2: TDBText;
    DBText1: TDBText;
    DBText5: TDBText;
    gr_total: TcxGrid;
    gr_total_view: TcxGridDBTableView;
    gr_total_viewHH: TcxGridDBColumn;
    gr_total_viewNBUTTON: TcxGridDBColumn;
    gr_total_viewH_CATEGORY: TcxGridDBColumn;
    gr_total_viewQUANT: TcxGridDBColumn;
    gr_total_viewWEIGHT: TcxGridDBColumn;
    gr_total_viewPRICE: TcxGridDBColumn;
    gr_total_level: TcxGridLevel;
    Label2: TLabel;
    CDS_ORDERS_LISTHOL_SUB_TYPE: TStringField;
    N3: TMenuItem;
    CDS_ORDERS_LISTORD: TFloatField;
    CDS_STATQQ: TFloatField;
    CDS_STATWEIGHT_P: TFloatField;
    CDS_STATQUANT_P: TFloatField;
    CDS_STATQQ_P: TFloatField;
    gr_total_viewQQ: TcxGridDBColumn;
    gr_total_viewWEIGHT_P: TcxGridDBColumn;
    gr_total_viewQUANT_P: TcxGridDBColumn;
    gr_total_viewQQ_P: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure aFullInfo1Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure mnExportTXTClick(Sender: TObject);
    procedure gr_total_viewCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    def_folder: string;
    procedure Grid_Set;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_show_order: Tfrm_show_order;

implementation

uses frm_first_dialog, UFullInfo, frm_DM;

{$R *.dfm}

procedure Tfrm_show_order.aFullInfo1Click(Sender: TObject);
begin
  if CDS_ORDERS_LIST.IsEmpty then exit;

  frm_full_info := Tfrm_full_info.Create(Application);
  With frm_full_info do
    Begin
      SelNom.Session := DM.Main_session;
      SelNom.ParamByName('N_ID').Value := CDS_ORDERS_LIST.FieldByName('N_ID').AsInteger;
      SelNom.Open;

      if (SelNom.FieldByName('IS_PHOTO').AsInteger = 1) then
      begin
        if FileExists(def_folder+IntToStr(first_dialog_frm.DBComboBoxEh1.Value)+'\'+SelNom.FieldByName('PHOTO').AsString) then
           frm_full_info.Image1.Picture.LoadFromFile(def_folder+IntToStr(first_dialog_frm.DBComboBoxEh1.Value)+'\'+SelNom.FieldByName('PHOTO').AsString);
      end;
      ShowModal;
      Free;
    End;
end;

procedure Tfrm_show_order.FormClose(Sender: TObject; var Action: TCloseAction);
var iniFile: string;
    AStoreKey, ASaveViewName: string;
    AOptions: TcxGridStorageOptions;
begin
  AOptions := [];

  AStoreKey     := first_dialog_frm.path + '/ini/order_stat_'+DM.Main_session.Username+'.ini';
  ASaveViewName := 'order_stat';
  gr_total_view.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);

  iniFile := first_dialog_frm.path + '/ini/'+DM.Main_session.Username+'.ini';
  DBGridEh1.SaveGridLayoutIni(iniFile, 'order_info_list',true);

  DBGridEh1.SumList.Active := false;
end;

procedure Tfrm_show_order.FormShow(Sender: TObject);
var
  RegIni : TIniFile;
  path, iniFile: string;
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  path   := first_dialog_frm.path+'orders.ini';
  RegIni := TIniFile.Create(path);
  try
     def_folder  := RegIni.ReadString('folder', 'Value', '..');
  finally
     RegIni.Free;
  end;

  AOptions := [];
  AStoreKey     := first_dialog_frm.path + '/ini/order_stat_'+DM.Main_session.Username+'.ini';
  ASaveViewName := 'order_stat';
  gr_total_view.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);


  iniFile := first_dialog_frm.path + '/ini/'+DM.Main_session.Username+'.ini';
  DBGridEh1.RestoreGridLayoutIni(iniFile, 'order_info_list',[grpColIndexEh, grpColWidthsEh, grpColVisibleEh, grpRowHeightEh, grpDropDownRowsEh, grpDropDownWidthEh]);

  N6.Checked := DBGridEh1.FieldColumns['H_NAME'].Visible;
  N7.Checked := DBGridEh1.FieldColumns['COMPILED_NAME_OTDEL'].Visible;
  N8.Checked := DBGridEh1.FieldColumns['F_TYPE'].Visible;
  N9.Checked := DBGridEh1.FieldColumns['F_SUB_TYPE'].Visible;
  N1.Checked := DBGridEh1.FieldColumns['HOL_TYPE'].Visible;
  N3.Checked := DBGridEh1.FieldColumns['HOL_SUB_TYPE'].Visible;
  N11.Checked := DBGridEh1.FieldColumns['COLOUR'].Visible;
  N12.Checked := DBGridEh1.FieldColumns['LEN'].Visible;
  N13.Checked := DBGridEh1.FieldColumns['PACK'].Visible;
  N17.Checked := DBGridEh1.FieldColumns['S_NAME_RU'].Visible;
  N18.Checked := DBGridEh1.FieldColumns['COUNTRY'].Visible;
  N14.Checked := DBGridEh1.FieldColumns['RUS_MARKS'].Visible;
  N15.Checked := DBGridEh1.FieldColumns['H_CODE'].Visible;
  N16.Checked := DBGridEh1.FieldColumns['REMARKS'].Visible;
//  N23.Checked := DBGridEh1.FieldColumns['TRUCK'].Visible;
//  N25.Checked := DBGridEh1.FieldColumns['PRICE'].Visible;

  DBGridEh1.Font.Size := first_dialog_frm.uFont;

  if first_dialog_frm.uDefSort = 0 then
     CDS_ORDERS_LIST.IndexFieldNames := 'compiled_name_otdel';
  if first_dialog_frm.uDefSort = 1 then
     CDS_ORDERS_LIST.IndexFieldNames := 'ord;compiled_name_otdel';
  if first_dialog_frm.uDefSort = 2 then
     CDS_ORDERS_LIST.IndexFieldNames := 'ord;h_name';

end;

procedure Tfrm_show_order.N4Click(Sender: TObject);
begin
  DBGridEh1.FieldColumns['H_NAME'].Width := 110;
  DBGridEh1.FieldColumns['COMPILED_NAME_OTDEL'].Width := 110;
  DBGridEh1.FieldColumns['F_TYPE'].Width := 110;
  DBGridEh1.FieldColumns['F_SUB_TYPE'].Width := 110;
  DBGridEh1.FieldColumns['HOL_TYPE'].Width := 110;
  DBGridEh1.FieldColumns['HOL_SUB_TYPE'].Width := 110;
  DBGridEh1.FieldColumns['COLOUR'].Width := 110;
  DBGridEh1.FieldColumns['LEN'].Width := 50;
  DBGridEh1.FieldColumns['PACK'].Width := 50;
  DBGridEh1.FieldColumns['S_NAME_RU'].Width := 100;
  DBGridEh1.FieldColumns['COUNTRY'].Width := 100;
  DBGridEh1.FieldColumns['RUS_MARKS'].Width := 100;
  DBGridEh1.FieldColumns['H_CODE'].Width := 100;
  DBGridEh1.FieldColumns['REMARKS'].Width := 70;

  N6.Checked := DBGridEh1.FieldColumns['H_NAME'].Visible;
  N7.Checked := DBGridEh1.FieldColumns['COMPILED_NAME_OTDEL'].Visible;
  N8.Checked := DBGridEh1.FieldColumns['F_TYPE'].Visible;
  N9.Checked := DBGridEh1.FieldColumns['F_SUB_TYPE'].Visible;
  N1.Checked := DBGridEh1.FieldColumns['HOL_TYPE'].Visible;
  N3.Checked := DBGridEh1.FieldColumns['HOL_SUB_TYPE'].Visible;
  N11.Checked := DBGridEh1.FieldColumns['COLOUR'].Visible;
  N12.Checked := DBGridEh1.FieldColumns['LEN'].Visible;
  N13.Checked := DBGridEh1.FieldColumns['PACK'].Visible;
  N17.Checked := DBGridEh1.FieldColumns['S_NAME_RU'].Visible;
  N18.Checked := DBGridEh1.FieldColumns['COUNTRY'].Visible;
  N14.Checked := DBGridEh1.FieldColumns['RUS_MARKS'].Visible;
  N15.Checked := DBGridEh1.FieldColumns['H_CODE'].Visible;
  N16.Checked := DBGridEh1.FieldColumns['REMARKS'].Visible;

  DBGridEh1.Repaint;
end;

procedure Tfrm_show_order.N6Click(Sender: TObject);
begin
  if (Sender as TMenuItem).Checked = false then (Sender as TMenuItem).Checked := true else (Sender as TMenuItem).Checked := false;
  Grid_Set;
end;

//
//  Устанавливаем видимость для колонок
//
procedure Tfrm_show_order.Grid_Set;
begin
  DBGridEh1.FieldColumns['H_NAME'].Visible := N6.Checked;
  DBGridEh1.FieldColumns['COMPILED_NAME_OTDEL'].Visible := N7.Checked;
  DBGridEh1.FieldColumns['F_TYPE'].Visible := N8.Checked;
  DBGridEh1.FieldColumns['F_SUB_TYPE'].Visible := N9.Checked;
  DBGridEh1.FieldColumns['HOL_TYPE'].Visible := N1.Checked;
  DBGridEh1.FieldColumns['HOL_SUB_TYPE'].Visible := N3.Checked;
  DBGridEh1.FieldColumns['COLOUR'].Visible := N11.Checked;
  DBGridEh1.FieldColumns['LEN'].Visible := N12.Checked;
  DBGridEh1.FieldColumns['PACK'].Visible := N13.Checked;
  DBGridEh1.FieldColumns['S_NAME_RU'].Visible := N17.Checked;
  DBGridEh1.FieldColumns['COUNTRY'].Visible := N18.Checked;
  DBGridEh1.FieldColumns['RUS_MARKS'].Visible := N14.Checked;
  DBGridEh1.FieldColumns['H_CODE'].Visible := N15.Checked;
  DBGridEh1.FieldColumns['REMARKS'].Visible := N16.Checked;
//  DBGridEh1.FieldColumns['TRUCK'].Visible := N23.Checked;
//  DBGridEh1.FieldColumns['PRICE'].Visible := N25.Checked;
end;

procedure Tfrm_show_order.gr_total_viewCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var param: Variant;
begin
    begin
      param := gr_total_view.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_total_view.GetColumnByFieldName('hh').Index
                );
      if (VarToStr(param) = '2 :: всего') then
      begin
        ACanvas.Font.Style := [fsBold];
        ACanvas.Font.Color := clRed;
      end
      else
      begin
        ACanvas.Font.Style := [];
        ACanvas.Font.Color := clDefault;
      end;
    end;
end;

procedure Tfrm_show_order.mnExportTXTClick(Sender: TObject);
var str, res: string;
begin
{  Нет достаточных данных, чтобы провести выгрузку. Пока все через заказ будет
  str := DM.CheckExportFolder(Handle, DM.Q_ORDERSID_ORDERS.AsInteger);

  if DM.Q_ORDERS_ORDERSPACK_.AsInteger = 1 then
     res := DM.MakeCSVFile(Handle, DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger, str)
  else
     res := DM.MakeTXTFile(Handle, DM.Q_ORDERSID_ORDERS.AsInteger, str);
  ShellExecute(Handle, nil, PChar(res), nil, nil, SW_RESTORE);
}
end;

end.
