unit UClientList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit,
  cxCurrencyEdit, DBAccess, Ora, MemDS, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, StdCtrls, cxButtons, ExtCtrls, cxContainer, cxCheckBox;

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
    grRegVSRC_NICK: TcxGridDBColumn;
    grRegVSRC_ALPHA: TcxGridDBColumn;
    grRegVID_ORDERS_CLIENTS: TcxGridDBColumn;
    grRegVPACK_: TcxGridDBColumn;
    CDS_CLIENT_LISTNICK: TStringField;
    CDS_CLIENT_LISTQUANTITY: TFloatField;
    CDS_CLIENT_LISTSRC_NICK: TStringField;
    CDS_CLIENT_LISTSRC_ALPHA: TStringField;
    CDS_CLIENT_LISTID_ORDERS_CLIENTS: TFloatField;
    CDS_CLIENT_LISTPACK_: TIntegerField;
    stRepClientList: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Panel1: TPanel;
    lblPrice: TLabel;
    CDS_CLIENT_LISTSPEC_PRICE: TFloatField;
    CDS_CLIENT_LISTPPLCP_ID: TFloatField;
    grRegVSPEC_PRICE: TcxGridDBColumn;
    grRegVPPLCP_ID: TcxGridDBColumn;
    CDS_CLIENT_LISTID_CLIENTS: TIntegerField;
    CDS_CLIENT_LISTP_V_PPLI_ID: TFloatField;
    grRegVID_CLIENTS: TcxGridDBColumn;
    grRegVP_V_PPLI_ID: TcxGridDBColumn;
    CDS_CLIENT_LISTP_V_N_ID: TFloatField;
    grRegVP_V_N_ID: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function ShowClientList(V_PPLI_ID: integer; V_N_ID: integer; v_name: string; v_price: currency): boolean;

var
  frmClientList: TfrmClientList;

implementation


{$R *.dfm}

function ShowClientList(V_PPLI_ID: integer; V_N_ID: integer; v_name: string; v_price: currency): boolean;
begin
  Application.CreateForm(TfrmClientList, frmClientList);
  Result := false;

  with frmClientList do
  begin
    try
      Panel1.Caption := v_name;
      lblPrice.Caption := CurrToStr(v_price);
      CDS_CLIENT_LIST.ParamByName('V_PPLI_ID').AsInteger := V_PPLI_ID;
      CDS_CLIENT_LIST.ParamByName('V_N_ID').AsInteger := V_N_ID;
      CDS_CLIENT_LIST.ParamByName('cursor_').AsCursor;
      CDS_CLIENT_LIST.Open;

      if ShowModal <> mrOk then exit;
      result := true;
    finally
      Free;
    end;
  end;
end;

procedure TfrmClientList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if CDS_CLIENT_LIST.State = dsEdit then CDS_CLIENT_LIST.Post;  
end;

end.
