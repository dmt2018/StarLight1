unit UClientOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, Ora, OdacVcl, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxTextEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, jpeg, ExtCtrls, cxContainer,
  cxLabel, IniFiles, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  ActnList, frxpngimage, cxImage, frxClass, frxDBSet, cxCurrencyEdit,
  cxImageComboBox, ImgList, PI_library, cxMaskEdit, cxDropDownEdit, ComCtrls;

type
  TfrmClientPrice = class(TForm)
    Main_session: TOraSession;
    OraConnDlg: TConnectDialog;
    cdsPrice: TOraQuery;
    dsOrdes: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Image4: TImage;
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
    aShowClients: TAction;
    cdsPriceN_ID: TFloatField;
    cdsPricePRICE: TFloatField;
    cdsPricePRICE_DATE: TDateTimeField;
    cdsPriceFT_ID: TFloatField;
    cdsPriceF_TYPE: TStringField;
    cdsPriceFST_ID: TFloatField;
    cdsPriceF_SUB_TYPE: TStringField;
    cdsPriceLEN: TIntegerField;
    cdsPriceCOL_ID: TFloatField;
    cdsPriceCOLOUR: TStringField;
    cdsPriceCODE: TStringField;
    cdsPriceBAR_CODE: TStringField;
    cdsPriceC_ID: TFloatField;
    cdsPriceCOUNTRY: TStringField;
    cdsPriceFN_ID: TFloatField;
    cdsPriceF_NAME_RU: TStringField;
    cdsPriceQUANTITY: TFloatField;
    cdsPricePACK: TIntegerField;
    cdsPriceH_CODE: TStringField;
    cdsPriceIS_PHOTO: TFloatField;
    cdsPricePHOTO: TStringField;
    cdsPriceCOMPILED_NAME_POT: TStringField;
    cdsPricePICS: TStringField;
    cdsPriceORD: TFloatField;
    pnl_buttons: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    cxButton14: TcxButton;
    cxButton15: TcxButton;
    cxButton16: TcxButton;
    cxButton17: TcxButton;
    cxButton18: TcxButton;
    cxButton19: TcxButton;
    cxButton20: TcxButton;
    cxButton21: TcxButton;
    cxButton22: TcxButton;
    cxButton23: TcxButton;
    cxButton24: TcxButton;
    cxButton25: TcxButton;
    cxButton26: TcxButton;
    cxButton27: TcxButton;
    cxButton28: TcxButton;
    btnShowImage: TcxButton;
    ImageList1: TImageList;
    aSetFilter: TAction;
    pnlFilterGroup: TPanel;
    SelQ: TOraQuery;
    cxEditStyleController1: TcxEditStyleController;
    imcbGroups: TcxImageComboBox;
    cxLabel1: TcxLabel;
    teSearch: TcxTextEdit;
    btnBackSpace: TcxButton;
    cxButton29: TcxButton;
    cdsPriceCOMPILED_NAME_OTDEL: TStringField;
    cdsPriceCOMPILED_NAME: TStringField;
    pnlBottom: TPanel;
    grPriceList: TcxGrid;
    grPriceListView: TcxGridDBTableView;
    grPriceListViewCOMPILED_NAME_POT: TcxGridDBColumn;
    grPriceListViewLEN: TcxGridDBColumn;
    grPriceListViewIS_PHOTO: TcxGridDBColumn;
    grPriceListViewN_ID: TcxGridDBColumn;
    grPriceListViewPRICE: TcxGridDBColumn;
    grPriceListViewPRICE_DATE: TcxGridDBColumn;
    grPriceListViewFT_ID: TcxGridDBColumn;
    grPriceListViewF_TYPE: TcxGridDBColumn;
    grPriceListViewFST_ID: TcxGridDBColumn;
    grPriceListViewF_SUB_TYPE: TcxGridDBColumn;
    grPriceListViewCOL_ID: TcxGridDBColumn;
    grPriceListViewCOLOUR: TcxGridDBColumn;
    grPriceListViewCODE: TcxGridDBColumn;
    grPriceListViewBAR_CODE: TcxGridDBColumn;
    grPriceListViewC_ID: TcxGridDBColumn;
    grPriceListViewCOUNTRY: TcxGridDBColumn;
    grPriceListViewFN_ID: TcxGridDBColumn;
    grPriceListViewF_NAME_RU: TcxGridDBColumn;
    grPriceListViewQUANTITY: TcxGridDBColumn;
    grPriceListViewPACK: TcxGridDBColumn;
    grPriceListViewH_CODE: TcxGridDBColumn;
    grPriceListViewPICS: TcxGridDBColumn;
    grPriceListViewPHOTO: TcxGridDBColumn;
    grPriceListViewORD: TcxGridDBColumn;
    grPriceListLevel: TcxGridLevel;
    pnlNavigator: TPanel;
    cxButton30: TcxButton;
    cxButton31: TcxButton;
    cxButton32: TcxButton;
    cxButton33: TcxButton;
    cxButton34: TcxButton;
    cxButton35: TcxButton;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure teSearchKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure aClearFilterExecute(Sender: TObject);
    procedure teSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton29Click(Sender: TObject);
    procedure btnShowImageClick(Sender: TObject);
    procedure grPriceListViewCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormPaint(Sender: TObject);
    procedure btnBackSpaceClick(Sender: TObject);
    procedure aSetFilterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure imcbGroupsPropertiesChange(Sender: TObject);
    procedure cxButton30Click(Sender: TObject);
    procedure cxButton31Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    def_folder: string;
    id_dep, days_minus, vPack: integer;
    { Public declarations }
  end;

var
  frmClientPrice: TfrmClientPrice;

implementation

uses UFullInfo, UDeps;

{$R *.dfm}

procedure TfrmClientPrice.aClearFilterExecute(Sender: TObject);
begin
  imcbGroups.Properties.OnChange := nil;
  imcbGroups.EditValue := -1;
  teSearch.EditValue := '';
  cdsPrice.Filter := '';
  cdsPrice.Filtered := false;
  imcbGroups.Properties.OnChange := imcbGroupsPropertiesChange;
  grPriceList.SetFocus;
end;


procedure TfrmClientPrice.cxButton1Click(Sender: TObject);
begin
  teSearch.Text := teSearch.Text + (Sender as TcxButton).Caption;
  aSetFilter.Execute;
end;

procedure TfrmClientPrice.cxButton29Click(Sender: TObject);
begin
  aClearFilter.Execute;
end;

procedure TfrmClientPrice.cxButton30Click(Sender: TObject);
begin
//   MoveCount := grPriceListView.DataController.DataSet.MoveBy(grPriceListView. .Grid.VisibleRowCount - Row - 1);
   grPriceListView.DataController.DataSet.MoveBy(-10);
end;

procedure TfrmClientPrice.cxButton31Click(Sender: TObject);
begin
   grPriceListView.DataController.DataSet.MoveBy(10);
end;

procedure TfrmClientPrice.aSetFilterExecute(Sender: TObject);
begin
  if imcbGroups.EditValue > 0 then
    cdsPrice.Filter   := 'FT_ID = '+VarToStr(imcbGroups.EditValue) + ' and COMPILED_NAME_POT like ''%'+teSearch.Text+'%'''
  else
    cdsPrice.Filter   := 'COMPILED_NAME_POT like ''%'+teSearch.Text+'%''';
  cdsPrice.Filtered := true;
  grPriceList.SetFocus;
end;

procedure TfrmClientPrice.btnBackSpaceClick(Sender: TObject);
begin
  teSearch.Text := copy(teSearch.Text,1,length(teSearch.Text)-1);
  aSetFilter.Execute;
end;



procedure TfrmClientPrice.btnShowImageClick(Sender: TObject);
begin
  frm_full_info := Tfrm_full_info.Create(Application);
  try
    frm_full_info.SelNom.Session := Main_session;
    frm_full_info.SelNom.ParamByName('N_ID').Value := cdsPrice.FieldByName('N_ID').AsInteger;
    frm_full_info.SelNom.Open;

    if (cdsPrice.FieldByName('IS_PHOTO').AsInteger = 1) then
    begin
      if FileExists(def_folder+IntToStr(id_dep)+'\'+cdsPrice.FieldByName('PHOTO').AsString) then
        frm_full_info.Image1.Picture.LoadFromFile(def_folder+IntToStr(id_dep)+'\'+cdsPrice.FieldByName('PHOTO').AsString);
    end;

    frm_full_info.ShowModal;
  finally
    frm_full_info.Free;
  end;
end;

procedure TfrmClientPrice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Main_session.Close;
end;


procedure TfrmClientPrice.FormCreate(Sender: TObject);
var  RegIni : TIniFile;
     path : String;
begin
  path := ExtractFilePath(Application.ExeName);

  RegIni := TIniFile.Create(path+'ClientPrice.ini');
  try
    def_folder := RegIni.ReadString('folder', 'Value', '..');
  finally
    RegIni.Free;
  end;

  if OraConnDlg.Execute then
  begin
    Main_session.Connect;


    frmDeps := TfrmDeps.Create(Application);
    try
      if (frmDeps.ShowModal = mrOk) then
        id_dep := frmDeps.imcbGroups.EditValue;
    finally
      frmDeps.Free;
      cdsPrice.ParamByName('id_dep').AsInteger := id_dep;
      cdsPrice.open;
      Timer1.Interval := 24 * 3600 * 1000;
      Timer1.Enabled := true;
    end;
  end
  else Application.Terminate;
end;


procedure TfrmClientPrice.FormPaint(Sender: TObject);
begin
//  grPriceListView.Site.VScrollBar.Width := GetSystemMetrics(SM_CXVSCROLL) * 2;
//  grPriceListView.LayoutChanged;
//  grPriceListView.Site.Repaint;
end;

procedure TfrmClientPrice.FormShow(Sender: TObject);
begin
    SelQ.Close;
    SelQ.SQL.Clear;
    SelQ.SQL.Add('SELECT a.ft_id, a.f_type FROM flower_types a WHERE a.id_departments = '+IntToStr(id_dep)+' and ft_id not in (0,82,160) order by f_type');
    SelQ.Open;
    FillImgComboCx(SelQ, imcbGroups, '');
    imcbGroups.Properties.DropDownRows := SelQ.RecordCount+1;
    imcbGroups.EditValue := 0;
    SelQ.Close;

    imcbGroups.Properties.OnChange := imcbGroupsPropertiesChange;
end;

procedure TfrmClientPrice.grPriceListViewCellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if ACellViewInfo.Item.Tag = 99 then
    btnShowImage.Click;
end;

procedure TfrmClientPrice.imcbGroupsPropertiesChange(Sender: TObject);
begin
  cdsPrice.Filter   := 'FT_ID = '+VarToStr(imcbGroups.EditValue);
  cdsPrice.Filtered := true;
end;

procedure TfrmClientPrice.teSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    teSearch.PostEditValue;
    if teSearch.EditValue = '' then
    begin
      cdsPrice.Filter := '';
      cdsPrice.Filtered := false;
      teSearch.Style.Color := clWindow;
    end
    else
    begin
      cdsPrice.Filter   := 'COMPILED_NAME_POT like ''%'+VarToStr(teSearch.EditValue)+'%''';
      cdsPrice.Filtered := true;
    end;
    grPriceList.SetFocus;
  end;
end;

procedure TfrmClientPrice.teSearchKeyUp(Sender: TObject; var Key: Word;
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

procedure TfrmClientPrice.Timer1Timer(Sender: TObject);
begin
  cdsPrice.Refresh;
end;

end.
