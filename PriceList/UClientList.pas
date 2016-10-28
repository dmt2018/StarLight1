unit UClientList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit,
  cxCurrencyEdit, DBAccess, Ora, MemDS, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, StdCtrls, cxButtons, ExtCtrls, cxContainer, cxCheckBox, Math, cxLabel;

type
  TfrmClientList = class(TForm)
    Panel2: TPanel;
    btnClose: TcxButton;
    grReg: TcxGrid;
    grRegV: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    grRegL: TcxGridLevel;
    CDS_CLIENT_LIST: TOraQuery;
    DS_CLIENT_LIST: TOraDataSource;
    grRegVID_ORDERS_CLIENTS: TcxGridDBColumn;
    stRepClientList: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Panel1: TPanel;
    lblPrice: TLabel;
    grRegVSPEC_PRICE: TcxGridDBColumn;
    grRegVPPLCP_ID: TcxGridDBColumn;
    grRegVID_CLIENTS: TcxGridDBColumn;
    grRegVP_V_PPLI_ID: TcxGridDBColumn;
    grRegVP_V_N_ID: TcxGridDBColumn;
    CDS_CLIENT_LISTN_ID: TFloatField;
    CDS_CLIENT_LISTQUANTITY: TFloatField;
    CDS_CLIENT_LISTNICK: TStringField;
    CDS_CLIENT_LISTFIO: TStringField;
    CDS_CLIENT_LISTPPLI_ID: TFloatField;
    CDS_CLIENT_LISTDIST_IND_ID: TFloatField;
    CDS_CLIENT_LISTSPEC_PRICE: TFloatField;
    CDS_CLIENT_LISTPPLCP_ID: TFloatField;
    grRegVFIO: TcxGridDBColumn;
    grRegVDIST_IND_ID: TcxGridDBColumn;
    CDS_CLIENT_LISTID_CLIENTS: TIntegerField;
    edNick: TcxTextEdit;
    cxLabel1: TcxLabel;
    edQnt: TcxCurrencyEdit;
    btnFind: TcxButton;
    edPrice: TcxCurrencyEdit;
    btnAdd: TcxButton;
    CDS_CLIENT_LISTLEFT_QUANTITY: TFloatField;
    Q_CLIENTS: TOraQuery;
    Q_CLIENTSID_CLIENTS: TIntegerField;
    Q_CLIENTSNICK: TStringField;
    Q_CLIENTSFIO: TStringField;
    Q_CLIENTSCCODE: TStringField;
    Q_CLIENTSTTYPE: TIntegerField;
    Q_CLIENTSID_CLIENTS_GROUPS: TIntegerField;
    Q_CLIENTSBLOCK1: TIntegerField;
    Q_CLIENTSBLOCK2: TIntegerField;
    Q_CLIENTSGROUP_NAME: TStringField;
    Q_CLIENTSTTYPE_NAME: TStringField;
    Q_CLIENTSPREFIX: TStringField;
    Q_CLIENTS_DS: TOraDataSource;
    CDS_CLIENT_LISTID_ORDERS_LIST: TFloatField;
    CDS_CLIENT_LISTPREP_DIST_ID: TFloatField;
    grRegVLEFT_QUANTITY: TcxGridDBColumn;
    grRegVID_ORDERS_LIST: TcxGridDBColumn;
    grRegVPREP_DIST_ID: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grRegVKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnFindClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function ShowClientList(V_PPLI_ID: integer; V_N_ID: integer; v_name: string; v_price: currency): boolean;

var
  frmClientList: TfrmClientList;

implementation

uses DataModule;


{$R *.dfm}

function ShowClientList(V_PPLI_ID: integer; V_N_ID: integer; v_name: string; v_price: currency): boolean;
begin
  Application.CreateForm(TfrmClientList, frmClientList);
  Result := false;

  with frmClientList do
  begin
    try
      Panel1.Caption := v_name;
      lblPrice.Caption := CurrToStr(RoundTo(v_price,-1));
      CDS_CLIENT_LIST.ParamByName('V_PPLI_ID').AsInteger := V_PPLI_ID;
      CDS_CLIENT_LIST.ParamByName('V_N_ID').AsInteger := V_N_ID;
      CDS_CLIENT_LIST.ParamByName('cursor_').AsCursor;
      CDS_CLIENT_LIST.Open;

      Q_CLIENTS.Close;
      Q_CLIENTS.ParamByName('v_office').AsInteger := DM.id_office;
      Q_CLIENTS.Open;

      grRegV.OptionsData.Editing := not (DM.PPL_IndexSENDED_TO_WAREHOUSE.AsInteger = 1);

      edQnt.EditValue   := CDS_CLIENT_LIST.FieldByName('left_quantity').AsInteger;
      edPrice.EditValue := RoundTo(v_price,-1);
      if edQnt.EditValue = 0 then
      begin
        btnFind.Enabled := false;
        btnAdd.Enabled := false;
      end;

      if ShowModal <> mrOk then exit;
      result := true;
    finally
      Free;
    end;
  end;
end;

// ƒобавление любого клиента к ценам
procedure TfrmClientList.btnAddClick(Sender: TObject);
var RES, RES_TEXT : Variant;
    id: integer;
begin
// Ќа самом деле, чтобы добавить произвольного клиента надо ему об€зательно положить этот товар в разнос
// иначе св€зи не будет и невозможно будет оформить продажу с нужной ценой.
// Ёто надо обсудить с ∆ј.
// если он настоит на такой функции то потребуетс€ следующее
{
     // 2016-06-23 “.к. много заказов может быть, до добавим новую строчку в первый же заказ по списку
        if Pos( ',', VarToStr(CUR_ID_ORDERS) ) > 0 then
          C_ID_ORDERS := StrToInt( Copy( VarToStr(CUR_ID_ORDERS), 0, Pos( ',', VarToStr(CUR_ID_ORDERS) )-1 ) )
        else
          C_ID_ORDERS := CUR_ID_ORDERS;
      //

      id_or_cl := DM.insert_new_order( C_ID_ORDERS, frmDobor.Q_CLIENTSID_CLIENTS.AsInteger );
      if id_or_cl = 0 then exit;

          // ƒобавим к заказу позицию
          id_or_list := DM.insert_new_order_item( id_or_cl, FieldByName('N_ID').AsInteger, frmDobor.SelPrepDist.FieldByName('EDITABLE').AsInteger );
          if id_or_list = 0 then next;
}

  id := CDS_CLIENT_LIST.FieldByName('PREP_DIST_ID').Value;
          with DM.SelQ do
          Begin
            Close;
            SQL.Clear;
            Params.Clear;
            SQL.Add('begin creator.DISTRIBUTION_PKG.CREATE_CUSTOM_DIST_LINE(:IN_PREP_DIST_ID, :IN_ID_ORDERS_LIST, :IN_QUANTITY, :OUT_RES, :OUT_TEXT); end;');
            ParamByName('IN_PREP_DIST_ID').AsInteger    := CDS_CLIENT_LIST.FieldByName('PREP_DIST_ID').Value;
            ParamByName('IN_ID_ORDERS_LIST').AsInteger  := CDS_CLIENT_LIST.FieldByName('id_orders_list').Value;
            ParamByName('IN_QUANTITY').AsInteger        := edQnt.EditValue;
            ParamByName('OUT_RES').AsString             := RES;
            ParamByName('OUT_TEXT').AsString            := RES_TEXT;
            Execute;
            RES      := ParamByName('OUT_RES').Value;
            RES_TEXT := ParamByName('OUT_TEXT').Value;
//            if VarToInt(RES) < 0 then
//               MessageBox(Handle, PChar(VarToStr(RES_TEXT)), '¬нимание', MB_ICONERROR);
          End;
          CDS_CLIENT_LIST.Refresh;
          CDS_CLIENT_LIST.Locate('PREP_DIST_ID',id,[]);

end;

procedure TfrmClientList.btnFindClick(Sender: TObject);
begin
 if Q_CLIENTS.Locate('NICK',edNick.EditValue,[loCaseInsensitive, loPartialKey]) then
 begin
    edNick.EditValue := Q_CLIENTSNICK.AsString;
    edNick.Tag       := Q_CLIENTSID_CLIENTS.AsInteger;
    btnAdd.Enabled   := true;
 end
 else
 begin
    edNick.Tag     := 0;
    btnAdd.Enabled := false;
 end;
end;

procedure TfrmClientList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if CDS_CLIENT_LIST.State = dsEdit then CDS_CLIENT_LIST.Post;  
end;

procedure TfrmClientList.grRegVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) then
  begin
    grRegV.DataController.DataSet.Edit;
    grRegV.DataController.DataSet.FieldByName('SPEC_PRICE').AsInteger := 0;
    grRegV.DataController.DataSet.Post;
  end;
end;

end.
