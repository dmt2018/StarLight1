unit reprice_edit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, DB, Ora, MemDS, DBAccess, ComCtrls, ToolWin, Grids,
  DBGridEh, StdCtrls, Buttons, DBCtrls, ExtCtrls, GridsEh, Menus,
  cxLookAndFeelPainters, cxButtons, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxSpinEdit,
  cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxControls, cxGridCustomView, cxGrid, cxGridExportLink, ShellAPI,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  Treprice_edit_form = class(TForm)
    Panel2: TPanel;
    Panel7: TPanel;
    DBText4: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    DocNumberAddEdit: TEdit;
    Panel8: TPanel;
    Label14: TLabel;
    COMMENTSEdit: TEdit;
    Panel1: TPanel;
    DOC: TOraQuery;
    DOC_DATA: TOraQuery;
    DOC_DS: TOraDataSource;
    DOC_DATA_DS: TOraDataSource;
    ActionList1: TActionList;
    Save: TAction;
    Label3: TLabel;
    DBText3: TDBText;
    DBText5: TDBText;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    DB_DOC_DATE_REAL: TDBText;
    DB_OPERATOR_NAME: TDBText;
    Panel3: TPanel;
    BitBtnSave: TcxButton;
    BitBtn_Cancel: TcxButton;
    grid_buh_view: TcxGrid;
    grid_buh_view_v: TcxGridDBTableView;
    _rp_n_id: TcxGridDBColumn;
    _rp_ID_DOC_DATA: TcxGridDBColumn;
    rp_CODE: TcxGridDBColumn;
    rp_SPESIFICATION: TcxGridDBColumn;
    rp_f_type: TcxGridDBColumn;
    rp_F_SUB_TYPE: TcxGridDBColumn;
    rp_FULL_NAME: TcxGridDBColumn;
    rp_COUNTRY: TcxGridDBColumn;
    rp_QUANTITY: TcxGridDBColumn;
    rp_PRICE: TcxGridDBColumn;
    rp_PRICE_OLD: TcxGridDBColumn;
    rp_PRICE_DIFFERENCE: TcxGridDBColumn;
    grid_buh_view_l: TcxGridLevel;
    spis_menu: TPopupMenu;
    spis_m1: TMenuItem;
    spis_m2: TMenuItem;
    SaveDialog1: TSaveDialog;
    DocNumberEdit: TcxCurrencyEdit;
    DOC_DATAID_DOC_TYPE: TFloatField;
    DOC_DATAID_DOC_DATA: TFloatField;
    DOC_DATAID_DOC: TFloatField;
    DOC_DATAQUANTITY: TFloatField;
    DOC_DATAPRICE: TFloatField;
    DOC_DATAPRICE_OLD: TFloatField;
    DOC_DATAGTD: TStringField;
    DOC_DATAF_NAME_RU: TStringField;
    DOC_DATAN_ID: TFloatField;
    DOC_DATALEN: TIntegerField;
    DOC_DATAPACK: TIntegerField;
    DOC_DATACOL_ID: TFloatField;
    DOC_DATACOLOUR: TStringField;
    DOC_DATAF_TYPE: TStringField;
    DOC_DATAF_SUB_TYPE: TStringField;
    DOC_DATAFT_ID: TFloatField;
    DOC_DATAFST_ID: TFloatField;
    DOC_DATACOUNTRY: TStringField;
    DOC_DATAC_ID: TFloatField;
    DOC_DATAH_CODE: TStringField;
    DOC_DATASPESIFICATION: TStringField;
    DOC_DATACODE: TStringField;
    DOC_DATAPRICE_DIFFERENCE: TFloatField;
    DOC_DATAPRICE_BEZ_NDS: TFloatField;
    DOC_DATASUMM_BEZ_NDS: TFloatField;
    DOC_DATASUMM_NDS: TFloatField;
    DOC_DATAFULL_NAME: TStringField;
    DOC_DATAPRICE_QUANTITY: TFloatField;
    DOC_DATE: TcxDateEdit;
    procedure FormShow(Sender: TObject);


    procedure Initialize();  //инициализаци€ формы
    procedure Edit(id: integer); //инициализаци€ редактировани€ ID
    procedure View(id: integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SaveExecute(Sender: TObject);
    procedure spis_m1Click(Sender: TObject);
    procedure spis_m2Click(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
    id: integer;
  end;

var
  reprice_edit_form: Treprice_edit_form;

implementation

uses dataM, reprice;

{$R *.dfm}


//-----инициализаци€ формы---------------------
procedure Treprice_edit_form.Initialize();
begin
  if (id <> 0) then   //если передано ID
    Edit(id)
  else
    View(id);
end;


//-----инициализаци€ редактировани€ ID------------
procedure Treprice_edit_form.Edit(id: integer);
begin

  if (id <> 0) then
  begin
    try
      //grid_rp_v.DataController.DataSource := DOC_DATA_DS;
      DOC.Close;
      doc_data.Close;
      DOC.ParamByName('id_doc').AsInteger := id;
      DOC.Open;
      doc_data.Open;
    except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'ќшибка в запросе!', MB_ICONERROR);
    End;
  end;

end;




//-----инициализаци€ просмотра ID------------
procedure Treprice_edit_form.View(id: integer);
begin
    try
      DOC.Close;
      doc_data.Close;
      DOC.ParamByName('id_doc').AsInteger := id;
      DOC.Open;
      doc_data.Open;

      DOC_DATE.Enabled      := false;
      COMMENTSEdit.Enabled  := false;
      //DBGridEh.ReadOnly     := false;
      BitBtnSave.Enabled    := false;
    except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'ќшибка в запросе!', MB_ICONERROR);
    End;

end;
//--------------------------------------------





procedure Treprice_edit_form.FormShow(Sender: TObject);
begin
  Initialize();
  DOC_DATE.EditValue    := doc.FieldByName('DOC_DATE').Value;
  COMMENTSEdit.Text     := doc.FieldByName('COMMENTS').AsString;
  DocNumberEdit.EditValue := doc.FieldByName('DOC_NUMBER').AsInteger;
  DocNumberAddEdit.Text := doc.FieldByName('DOC_NUMBER_ADD').AsString;
end;



procedure Treprice_edit_form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= caFree;
end;



procedure Treprice_edit_form.SaveExecute(Sender: TObject);
begin
  BitBtnSave.Click;
end;



procedure Treprice_edit_form.spis_m1Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
     ExportGridToExcel(SaveDialog1.FileName, grid_buh_view, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog1.FileName+'.xls'), nil, nil, SW_RESTORE);
  end;
end;

procedure Treprice_edit_form.spis_m2Click(Sender: TObject);
var i, j: integer;
begin
  grid_buh_view_v.DataController.Filter.Clear;
  j := grid_buh_view_v.SortedItemCount;
  for i := 0 to j-1 do
  begin
    grid_buh_view_v.SortedItems[0].SortOrder := soNone;
  end;
end;

end.
