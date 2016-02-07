unit client_choos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, Buttons, DB, Ora,
  MemDS, ActnList, ComCtrls,
  Menus, cxLookAndFeelPainters, cxButtons, cxStyles, dxBar, dxBarExtItems,
  cxClasses, DBAccess, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxTextEdit, cxCheckBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxControls, cxGridCustomView, cxGrid, cxContainer,
  cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TclientchoosForm = class(TForm)
    Panel4: TPanel;
    Panel5: TPanel;
    PanelOrder: TPanel;
    ActionList1: TActionList;
    ChooseClient_Action: TAction;
    Panel6: TPanel;
    Label4: TLabel;
    BitBtn_Cancel: TcxButton;
    BitBtnSave: TcxButton;
    dxBarDockControl1: TdxBarDockControl;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarStatic1: TdxBarStatic;
    cxStyleRepository1: TcxStyleRepository;
    st_block_1: TcxStyle;
    dxBarStatic2: TdxBarStatic;
    gr_clients: TcxGrid;
    gr_clients_v: TcxGridDBBandedTableView;
    _gr_cashbook_vID_CLIENTS: TcxGridDBBandedColumn;
    gr_clients_vNICK: TcxGridDBBandedColumn;
    gr_clients_vFIO: TcxGridDBBandedColumn;
    gr_clients_vccode: TcxGridDBBandedColumn;
    gr_clients_vregion_name: TcxGridDBBandedColumn;
    gr_clients_vgroup_name: TcxGridDBBandedColumn;
    gr_clients_vblock1: TcxGridDBBandedColumn;
    gr_clients_vblock2: TcxGridDBBandedColumn;
    gr_clients_l: TcxGridLevel;
    ed_nick: TcxTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    ed_fio: TcxTextEdit;
    cxStyle2: TcxStyle;
    aUP: TAction;
    aDown: TAction;
    dxBarStatic3: TdxBarStatic;
    Label3: TLabel;
    Label5: TLabel;
    aNickFoces: TAction;
    aFIOFocus: TAction;
    st_block_2: TcxStyle;
    dxBarStatic4: TdxBarStatic;
    dxBarStatic5: TdxBarStatic;
    Label6: TLabel;
    de_input: TcxDateEdit;
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
    Q_CLIENTS_DS: TOraDataSource;
    procedure ChooseClient_ActionExecute(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure gr_clients_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormShow(Sender: TObject);
    procedure aUPExecute(Sender: TObject);
    procedure aDownExecute(Sender: TObject);
    procedure ed_nickKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gr_clients_vKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aNickFocesExecute(Sender: TObject);
    procedure aFIOFocusExecute(Sender: TObject);
    procedure BitBtnSaveClick(Sender: TObject);
    procedure gr_clients_vCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    choised_client_: integer;
    block_client_: integer;
    { Public declarations }
  end;

var
  clientchoosForm: TclientchoosForm;

implementation

uses DataModule;

{$R *.dfm}

// Красим грид
procedure TclientchoosForm.gr_clients_vCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  AHandled := true;
  BitBtnSaveClick(Sender);
end;

procedure TclientchoosForm.gr_clients_vCustomDrawCell(
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

// Открываем форму и очищаем поля поиска
procedure TclientchoosForm.FormShow(Sender: TObject);
begin
  Q_CLIENTS.Filter   := '';
  Q_CLIENTS.Filtered := false;
  Q_CLIENTS.Open;
  de_input.EditValue := Now();
  gr_clients_v.DataController.Filter.Clear;
  gr_clients_v.DataController.Filter.Active := false;
  ed_nick.EditValue := '';
  ed_fio.EditValue  := '';
  choised_client_   := 0;
  ed_fio.SetFocus;
end;

procedure TclientchoosForm.aDownExecute(Sender: TObject);
begin
  if (gr_clients.IsFocused = false) then
    SelectNext(ActiveControl as tWinControl, True, True);
end;

procedure TclientchoosForm.aFIOFocusExecute(Sender: TObject);
begin
  ed_FIO.SetFocus;
end;

procedure TclientchoosForm.aNickFocesExecute(Sender: TObject);
begin
  ed_nick.SetFocus;
end;

procedure TclientchoosForm.aUPExecute(Sender: TObject);
begin
   if (gr_clients.IsFocused = false) then
    SelectNext(ActiveControl as tWinControl, False, True);
end;

procedure TclientchoosForm.BitBtnSaveClick(Sender: TObject);
begin
  if (gr_clients_v.ViewData.RecordCount > 0) then
  begin
    choised_client_ := gr_clients_v.DataController.DataSet.FieldByName('ID_CLIENTS').AsInteger;
    if (gr_clients_v.DataController.DataSet.FieldByName('BLOCK1').AsInteger = 1) or (gr_clients_v.DataController.DataSet.FieldByName('BLOCK2').AsInteger = 1) then
      block_client_   := 1 else block_client_   := 0;
    ModalResult := mrOk;
  end
  else MessageBox(Handle, 'Необходимо выбрать клиента!', 'Внимание', MB_ICONWARNING);
end;

// Поиск по коду или ФИЛ
procedure TclientchoosForm.ed_nickKeyDown(Sender: TObject; var Key: Word;
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

// Нажимаем ENTER на гриде
procedure TclientchoosForm.gr_clients_vKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
    BitBtnSaveClick(Sender);
end;











// Ctrl+Enter
procedure TclientchoosForm.ChooseClient_ActionExecute(Sender: TObject);
begin
  BitBtnSave.Click;
end;

//
//  Ищем строку
//
procedure TclientchoosForm.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
{
  if (Key in ['а'..'я']) or (Key in ['А'..'Я']) or (Key = ' ') then
  begin
     str_fio := str_fio + Key;
     CLIENTS.Locate('FIO', str_fio, [loCaseInsensitive, loPartialKey]);
  end;

  if (Key in ['a'..'z']) or (Key in ['A'..'Z']) or (Key = ' ') then
  begin
     str_nick := str_nick + Key;
     CLIENTS.Locate('NICK', str_nick, [loCaseInsensitive, loPartialKey]);
  end;

  label5.Caption := str_nick;
  label6.Caption := str_fio;
 }
end;


procedure TclientchoosForm.DBGridEh1DblClick(Sender: TObject);
begin
  BitBtnSave.Click;
end;



end.
