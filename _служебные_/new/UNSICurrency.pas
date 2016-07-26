unit UNSICurrency;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxClasses, dxBar, ActnList, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxBarExtItems, cxDropDownEdit, cxLabel,
  cxBarEditItem;

type
  TfrmNSICurreny = class(TForm)
    bmMain: TdxBarManager;
    AlMain: TActionList;
    bmMainBar1: TdxBar;
    bmFooter: TdxBar;
    grCurrencyView: TcxGridDBTableView;
    grCurrencyLevel: TcxGridLevel;
    grCurrency: TcxGrid;
    aRefresh: TAction;
    aNew: TAction;
    aEdit: TAction;
    aDelete: TAction;
    btnRefresh: TdxBarLargeButton;
    btnAdd: TdxBarLargeButton;
    btnEdit: TdxBarLargeButton;
    btnDelete: TdxBarLargeButton;
    imgOffice: TcxBarEditItem;
    imgOtdel: TcxBarEditItem;
    btnHelp: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    cxBarEditItem3: TcxBarEditItem;
    cxBarEditItem4: TcxBarEditItem;
    procedure btnRefreshClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNSICurreny: TfrmNSICurreny;

implementation
 uses umain,udm;
{$R *.dfm}


procedure TfrmNSICurreny.btnRefreshClick(Sender: TObject);
begin
///  обновить
showmessage('');
end;

procedure TfrmNSICurreny.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.SaveFormState(frmNSICurreny); //полож.окна
  frmNSICurreny:=nil;
  Action := caFree;
end;

end.
