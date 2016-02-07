unit client_chooser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGridEh, ExtCtrls, StdCtrls, Buttons, DB, Ora, MemDS,
  DBAccess, GridsEh, Menus, cxLookAndFeelPainters, ActnList, cxStyles,
  dxBar, dxBarExtItems, cxClasses, cxButtons, DBGridEhGrouping, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxTextEdit,
  cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxControls, cxGridCustomView,
  cxGrid, cxContainer;

type
  TClientChooserForm = class(TForm)
    CLIENTS: TOraQuery;
    CLIENTSNICK: TStringField;
    CLIENTSFIO: TStringField;
    CLIENTSID_CLIENTS: TIntegerField;
    CLIENTS_DS: TOraDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    all_clients_CB: TCheckBox;
    CLIENTSCCODE: TStringField;
    CLIENTSBLOCK1: TIntegerField;
    CLIENTSBLOCK2: TIntegerField;
    Panel4: TPanel;
    BitBtn_Cancel: TcxButton;
    BitBtnSave: TcxButton;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    cxStyleRepository1: TcxStyleRepository;
    st_block_1: TcxStyle;
    ActionList1: TActionList;
    ChooseClient_Action: TAction;
    aShowAll: TAction;
    Label3: TLabel;
    st_block_2: TcxStyle;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    gr_clients: TcxGrid;
    gr_clients_v: TcxGridDBBandedTableView;
    _gr_cashbook_vID_CLIENTS: TcxGridDBBandedColumn;
    gr_clients_vNICK: TcxGridDBBandedColumn;
    gr_clients_vFIO: TcxGridDBBandedColumn;
    gr_clients_vccode: TcxGridDBBandedColumn;
    gr_clients_vblock1: TcxGridDBBandedColumn;
    gr_clients_vblock2: TcxGridDBBandedColumn;
    gr_clients_l: TcxGridLevel;
    Panel6: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ed_nick: TcxTextEdit;
    ed_fio: TcxTextEdit;
    aUp: TAction;
    aDown: TAction;
    aNickFoces: TAction;
    aFIOFocus: TAction;
    procedure all_clients_CBClick(Sender: TObject);
    procedure ChooseClient_ActionExecute(Sender: TObject);
    procedure aShowAllExecute(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gr_clients_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure ed_nickKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aUpExecute(Sender: TObject);
    procedure aDownExecute(Sender: TObject);
    procedure aNickFocesExecute(Sender: TObject);
    procedure aFIOFocusExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  id_client: integer;
  end;

var
  ClientChooserForm: TClientChooserForm;

implementation

{$R *.dfm}
uses dataM, global;


procedure TClientChooserForm.FormShow(Sender: TObject);
begin
  try
    CLIENTS.Close;
    CLIENTS.Filter   := '';
    CLIENTS.Filtered := false;
    CLIENTS.Open;
    CLIENTS.Locate('ID_CLIENTS',id_client,[]);
  except on E: Exception do
    MessageBox(Handle, PChar(E.Message), 'Ошибка в запросе!', MB_ICONERROR);
  End;
end;

procedure TClientChooserForm.gr_clients_vCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var val1, val2: variant;
begin

  if (not AViewInfo.Selected) and (gr_clients_v.DataController.DataSet.RecordCount > 0) then
  begin
    val1  := gr_clients_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_clients_v.GetColumnByFieldName('BLOCK1').Index
                );
    val2  := gr_clients_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_clients_v.GetColumnByFieldName('BLOCK2').Index
                );

    if (val1 = 1) then
         ACanvas.Brush.Color := st_block_1.Color;

    if (val2 = 1) then
         ACanvas.Brush.Color := st_block_2.Color;
  end;
end;

procedure TClientChooserForm.aDownExecute(Sender: TObject);
begin
  if (gr_clients.IsFocused = false) then
    SelectNext(ActiveControl as tWinControl, True, True);
end;

procedure TClientChooserForm.aFIOFocusExecute(Sender: TObject);
begin
  ed_FIO.SetFocus;
end;

procedure TClientChooserForm.all_clients_CBClick(Sender: TObject);
begin
	if (all_clients_CB.Checked = false) then
    begin
    // только в документах
      CLIENTS.Close;
      CLIENTS.Sql.Clear;
      CLIENTS.SQL.Add('SELECT a.CCODE, a.ID_CLIENTS, a.fio, a.nick, a.BLOCK1, a.BLOCK2 FROM buh_doc b, clients a ');
      CLIENTS.SQL.Add('where a.id_office=const_office ');
      CLIENTS.SQL.Add('and b.id_doc in (select distinct ID_DOC_STORE from buh_doc_data_temp)');
      CLIENTS.SQL.Add('and b.id_client = a.id_clients');
      CLIENTS.SQL.Add('order by a.fio');
      CLIENTS.Open;
	  end
  else
    begin
    // все
      CLIENTS.Close;
      CLIENTS.Sql.Clear;
      CLIENTS.SQL.Add('SELECT a.CCODE, a.ID_CLIENTS, a.fio, a.nick, a.BLOCK1, a.BLOCK2 FROM clients a ');
      CLIENTS.SQL.Add('where a.id_office=const_office ');
      CLIENTS.SQL.Add('order by a.fio');
      CLIENTS.Open;
	  end
end;

procedure TClientChooserForm.aNickFocesExecute(Sender: TObject);
begin
  ed_nick.SetFocus;
end;

procedure TClientChooserForm.ChooseClient_ActionExecute(Sender: TObject);
begin
  BitBtnSave.Click;
end;

procedure TClientChooserForm.aShowAllExecute(Sender: TObject);
begin
	if (all_clients_CB.Checked = false) then all_clients_CB.Checked := true else all_clients_CB.Checked := false;
  all_clients_CBClick(Sender);
end;

procedure TClientChooserForm.aUpExecute(Sender: TObject);
begin
   if (gr_clients.IsFocused = false) then
    SelectNext(ActiveControl as tWinControl, False, True);
end;

procedure TClientChooserForm.DBGridEh1DblClick(Sender: TObject);
begin
  BitBtnSave.Click;
end;


// Поиск по коду или ФИО
procedure TClientChooserForm.ed_nickKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_UP) then
    aUP.Execute;
  if (Key = VK_DOWN) then
    aDOWN.Execute;

  if (Key = VK_RETURN) then
  begin
    ed_nick.PostEditValue;
    ed_fio.PostEditValue;

    gr_clients_vFIO.DataBinding.Filter.Clear;
    gr_clients_vNICK.DataBinding.Filter.Clear;

    gr_clients_vNICK.SortOrder := soNone;
    gr_clients_vFIO.SortOrder := soAscending;

    if trim(ed_nick.Text) <> '' then
    begin
	    gr_clients_vNICK.DataBinding.AddToFilter(
      	nil,
        foLike,
        '%' + ed_nick.Text + '%',
        ed_nick.Text,
		    true
        );
  	  gr_clients_v.DataController.Filter.Active := true;
      gr_clients_vNICK.SortOrder := soAscending;
    end;

    if trim(ed_fio.Text) <> '' then
    begin
	    gr_clients_vFIO.DataBinding.AddToFilter(
      	nil,
        foLike,
        '%' + ed_fio.Text + '%',
        ed_fio.Text,
		    true
        );
  	  gr_clients_v.DataController.Filter.Active := true;
      gr_clients_vFIO.SortOrder := soAscending;
    end;
    
    if (gr_clients_v.ViewData.RecordCount > 0) then
       gr_clients.SetFocus;
  end;
end;

end.
