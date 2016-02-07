unit UChoiseReserv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit,
  cxCurrencyEdit, MemDS, DBAccess, Ora, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls, cxGridCustomView,
  cxGrid, StdCtrls, cxButtons, ExtCtrls, cxContainer, cxLabel;

type
  TfrmChoiseReserv = class(TForm)
    Panel6: TPanel;
    Panel7: TPanel;
    BitBtnSave: TcxButton;
    BitBtn_Cancel: TcxButton;
    Panel1: TPanel;
    grid_allreserv: TcxGrid;
    grid_allreserv_v: TcxGridDBTableView;
    grid_allreserv_vID_ORDERS_CLIENTS: TcxGridDBColumn;
    grid_allreserv_vNN: TcxGridDBColumn;
    grid_allreserv_vNICK: TcxGridDBColumn;
    grid_allreserv_vFIO: TcxGridDBColumn;
    grid_allreserv_vON_DATE: TcxGridDBColumn;
    grid_allreserv_vD_DATE: TcxGridDBColumn;
    grid_allreserv_vN_TYPE_NAME: TcxGridDBColumn;
    grid_allreserv_vSTATUS_NAME: TcxGridDBColumn;
    grid_allreserv_vKOL: TcxGridDBColumn;
    grid_allreserv_vPRICE_ALL: TcxGridDBColumn;
    grid_allreserv_vID_ORDERS: TcxGridDBColumn;
    grid_allreserv_vID_CLIENTS: TcxGridDBColumn;
    grid_allreserv_vSTATUS: TcxGridDBColumn;
    grid_allreserv_vN_TYPE: TcxGridDBColumn;
    grid_allreserv_vID_ORDERS_CLIENTS_: TcxGridDBColumn;
    grid_allreserv_l: TcxGridLevel;
    ds_reserv: TOraDataSource;
    cds_reserv: TOraQuery;
    cds_reservNN: TFloatField;
    cds_reservID_ORDERS_CLIENTS: TFloatField;
    cds_reservID_ORDERS: TFloatField;
    cds_reservID_CLIENTS: TIntegerField;
    cds_reservD_DATE: TDateTimeField;
    cds_reservON_DATE: TDateTimeField;
    cds_reservSTATUS: TIntegerField;
    cds_reservN_TYPE: TIntegerField;
    cds_reservN_TYPE_NAME: TStringField;
    cds_reservNICK: TStringField;
    cds_reservFIO: TStringField;
    cds_reservSTATUS_NAME: TStringField;
    cds_reservKOL: TFloatField;
    cds_reservID_ORDERS_CLIENTS_: TFloatField;
    cds_reservPRICE_ALL: TFloatField;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure grid_allreserv_vDblClick(Sender: TObject);
    procedure cds_reservBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChoiseReserv: TfrmChoiseReserv;

implementation

uses global, dataM;

{$R *.dfm}

procedure TfrmChoiseReserv.cds_reservBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := dm.id_office;
end;

procedure TfrmChoiseReserv.FormShow(Sender: TObject);
begin
    try
    	screen.cursor:=crhourglass;
  	  cds_reserv.Close;
	    cds_reserv.ParamByName('id_dep_').Value := strtoint(DataM.department_id);
  	  cds_reserv.ParamByName('STATUS_').Value := 10;
	    cds_reserv.ParamByName('ID_').AsInteger := 0;
    	cds_reserv.Open;
	    screen.cursor:=crdefault;
      grid_allreserv.SetFocus;
    except
      on E: Exception do
        begin
          screen.cursor := crdefault;
          MessageBox(Handle, PChar(E.Message), 'Îøèáêà', MB_ICONERROR);
        end;
    End;
end;

procedure TfrmChoiseReserv.grid_allreserv_vDblClick(Sender: TObject);
begin
  if (grid_allreserv_v.DataController.DataSet.Active) and (grid_allreserv_v.DataController.DataSet.RecordCount > 0) and (grid_allreserv_v.ViewData.RecordCount > 0) then
    ModalResult := mrOk;
end;

end.
