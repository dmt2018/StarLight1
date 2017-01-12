unit USales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DBCtrls, ActnList, dxBar,
  dxBarExtItems, cxClasses, cxPC, cxControls, Menus, cxLookAndFeelPainters,
  cxButtons, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, 
  cxStyles, DB, ComCtrls, Ora, IniFiles, PI_library, DBAccess, MemDS,
  DBGridEhGrouping, DBGridEhImpExp, ShellApi;

type
  TfrmSales = class(TForm)
    Panel1: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    Image1: TImage;
    Label14: TLabel;
    Label1: TLabel;
    DBText4: TDBText;
    EditComments: TEdit;
    Edit_Order_Id: TEdit;
    pc_sales: TcxPageControl;
    tch_main: TcxTabSheet;
    tch_ucenka: TcxTabSheet;
    tsh_nulls: TcxTabSheet;
    bm_sales: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    mbtn_expand: TdxBarButton;
    mbtn_collapse: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarSeparator2: TdxBarSeparator;
    dxBarButton14: TdxBarButton;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarStatic5: TdxBarStatic;
    dxBarStatic6: TdxBarStatic;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarStatic7: TdxBarStatic;
    dxBarStatic8: TdxBarStatic;
    dxBarStatic9: TdxBarStatic;
    pm_noms: TdxBarPopupMenu;
    bdc_sales: TdxBarDockControl;
    gr_main: TDBGridEh;
    al_sales: TActionList;
    aRefresh: TAction;
    aLoad: TAction;
    Label12: TLabel;
    EditPercent: TcxSpinEdit;
    btn_discount: TcxButton;
    Label6: TLabel;
    cxStyleRepository1: TcxStyleRepository;
    st_priority: TcxStyle;
    st_warning: TcxStyle;
    st_legend_b: TcxStyle;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label8: TLabel;
    aSearchArticle: TAction;
    aSearchName: TAction;
    aClearFilter: TAction;
    Panel3: TPanel;
    DocInfo_Panel: TPanel;
    Panel14: TPanel;
    BitBtn_Cancel: TcxButton;
    BitBtnSave: TcxButton;
    aMainSklad: TAction;
    aUcenkaSklad: TAction;
    aNullSklad: TAction;
    aDelQuant: TAction;
    StatusBar: TStatusBar;
    btn_ucenka: TcxButton;
    btn_lom: TcxButton;
    aUcenka: TAction;
    aLom: TAction;
    aSave: TAction;
    gr_ucenka: TDBGridEh;
    Panel_fill: TPanel;
    Label13: TLabel;
    Label5: TLabel;
    te_search: TcxTextEdit;
    gr_nulls: TDBGridEh;
    aOnlyMy: TAction;
    btn_scaner: TcxButton;
    aScanerS: TAction;
    AddedCB: TCheckBox;
    dt_ondate: TDateTimePicker;
    btn_reserv: TcxButton;
    aFromReserv: TAction;
    pnl_order: TPanel;
    Order_Grid: TDBGridEh;
    Label7: TLabel;
    Label9: TLabel;
    aFilterType: TAction;
    dxBarStatic10: TdxBarStatic;
    aSearchOurCode: TAction;
    dxBarStatic11: TdxBarStatic;
    dxBarStatic12: TdxBarStatic;
    aFromOrder: TAction;
    cxButton1: TcxButton;
    aShowReserv: TAction;
    dxBarButton20: TdxBarButton;
    pmSale: TPopupMenu;
    mnClearFilter: TMenuItem;
    mnShowReserv: TMenuItem;
    mnSearchArticle: TMenuItem;
    mnSearchName: TMenuItem;
    mnSearchOurCode: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    mnExcel: TMenuItem;
    SaveDialog1: TSaveDialog;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    stNotUse: TcxStyle;
    dxBarStatic13: TdxBarStatic;
    dxBarStatic14: TdxBarStatic;
    procedure aLoadExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gr_mainDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure gr_mainKeyPress(Sender: TObject; var Key: Char);
    procedure gr_mainKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aSearchArticleExecute(Sender: TObject);
    procedure aSearchNameExecute(Sender: TObject);
    procedure search_execute(param: integer);
    procedure te_searchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aClearFilterExecute(Sender: TObject);
    procedure btn_discountClick(Sender: TObject);
    procedure EditPercentKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aMainSkladExecute(Sender: TObject);
    procedure aUcenkaSkladExecute(Sender: TObject);
    procedure aNullSkladExecute(Sender: TObject);
    procedure aDelQuantExecute(Sender: TObject);
    procedure aUcenkaExecute(Sender: TObject);
    procedure aLomExecute(Sender: TObject);
    procedure aSaveExecute(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure AddedCBClick(Sender: TObject);
    procedure LoadData(param_: integer);
    procedure gr_ucenkaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure gr_ucenkaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pc_salesChange(Sender: TObject);
    procedure aScanerSExecute(Sender: TObject);
    procedure gr_nullsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure gr_nullsKeyPress(Sender: TObject; var Key: Char);
    procedure aFromReservExecute(Sender: TObject);
    procedure Order_GridKeyPress(Sender: TObject; var Key: Char);
    procedure Order_GridDblClick(Sender: TObject);
    procedure aOnlyMyExecute(Sender: TObject);
    procedure gr_ucenkaApplyFilter(Sender: TObject);
    procedure aFilterTypeExecute(Sender: TObject);
    procedure gr_mainDblClick(Sender: TObject);
    procedure gr_ucenkaDblClick(Sender: TObject);
    procedure gr_nullsDblClick(Sender: TObject);
    procedure aSearchOurCodeExecute(Sender: TObject);
    procedure gr_mainTitleClick(Column: TColumnEh);
    procedure gr_ucenkaTitleClick(Column: TColumnEh);
    procedure gr_nullsTitleClick(Column: TColumnEh);
    procedure gr_mainColumns11UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure aFromOrderExecute(Sender: TObject);
    procedure aShowReservExecute(Sender: TObject);
    procedure mnExcelClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Grid_Set;
  public
    str_flower, path: string;
    param_, var_: integer;
    { Public declarations }
  end;

var
  frmSales: TfrmSales;

implementation

uses UDM, Globals, change_prices, dialog_number, global, UChoiseType, UFullInfo,
  UReservInfo;

{$R *.dfm}

//
//  Загружаем данные
//
procedure TfrmSales.aLoadExecute(Sender: TObject);
begin
  try
    LoadData(0);
    pc_sales.ActivePageIndex := 0;
  except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  End;
end;

//
//  Загружаем данные
//
procedure TfrmSales.LoadData(param_: integer);
begin
  try
    DM.CDS_MSTORE.Close;
    DM.CDS_MSTORE.Filter := '';
    DM.CDS_MSTORE.Filtered := false;

    DM.CDS_USTORE.Close;
    DM.CDS_USTORE.Filter := '';
    DM.CDS_USTORE.Filtered := false;
    
    DM.CDS_NULLSTORE.Close;
    DM.CDS_NULLSTORE.Filter := '';
    DM.CDS_NULLSTORE.Filtered := false;

    DM.CDS_MSTORE.ParamByName('v_client').AsInteger := Image1.Tag;
    DM.CDS_USTORE.ParamByName('v_client').AsInteger := Image1.Tag;
    DM.CDS_NULLSTORE.ParamByName('v_client').AsInteger := Image1.Tag;

    DM.CDS_MSTORE.ParamByName('store_').AsInteger := 1;
    DM.CDS_USTORE.ParamByName('store_').AsInteger := 2;

    DM.CDS_MSTORE.ParamByName('id_dep_').AsInteger := CUR_DEPT_ID;
    DM.CDS_USTORE.ParamByName('id_dep_').AsInteger := CUR_DEPT_ID;

    DM.CDS_MSTORE.ParamByName('price_part_').AsInteger := EditPercent.EditValue;
    DM.CDS_USTORE.ParamByName('price_part_').AsInteger := EditPercent.EditValue;

    DM.CDS_MSTORE.ParamByName('button_').AsInteger := param_;
    DM.CDS_USTORE.ParamByName('button_').AsInteger := param_;

    DM.CDS_MSTORE.ParamByName('quantity_').AsInteger := 0;
    DM.CDS_USTORE.ParamByName('quantity_').AsInteger := 0;

    DM.CDS_MSTORE.ParamByName('cursor_');
    DM.CDS_USTORE.ParamByName('cursor_');

    DM.CDS_MSTORE.Open;
    DM.CDS_USTORE.Open;
  except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  End;
end;


// Экспорт в Excel
procedure TfrmSales.mnExcelClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    if (pc_sales.ActivePageIndex = 0) then
       SaveDBGridEhToExportFile(TDBGridEhExportAsXLS,gr_main, SaveDialog1.FileName, True);
    if (pc_sales.ActivePageIndex = 1) then
       SaveDBGridEhToExportFile(TDBGridEhExportAsXLS,gr_ucenka, SaveDialog1.FileName, True);
    if (pc_sales.ActivePageIndex = 2) then
       SaveDBGridEhToExportFile(TDBGridEhExportAsXLS,gr_nulls, SaveDialog1.FileName, True);

    ShellExecute(Handle, nil, PChar(SaveDialog1.FileName), nil, nil, SW_RESTORE);
  end;
end;





procedure TfrmSales.N3Click(Sender: TObject);
begin
  if (Sender as TMenuItem).Checked = false then (Sender as TMenuItem).Checked := true else (Sender as TMenuItem).Checked := false;
  Grid_Set;
end;

//
//  Устанавливаем видимость для колонок
//
procedure TfrmSales.Grid_Set;
begin
  gr_main.FieldColumns['CODE'].Visible                := N3.Checked;
  gr_main.FieldColumns['H_CODE'].Visible              := N6.Checked;
  gr_main.FieldColumns['F_TYPE'].Visible              := N7.Checked;
  gr_main.FieldColumns['F_SUB_TYPE'].Visible          := N8.Checked;
  gr_main.FieldColumns['COMPILED_NAME_OTDEL'].Visible := N9.Checked;
  gr_main.FieldColumns['SPESIFICATION'].Visible       := N10.Checked;
  gr_main.FieldColumns['COUNTRY'].Visible             := N11.Checked;
  gr_main.FieldColumns['COLOUR'].Visible              := N12.Checked;
  gr_main.FieldColumns['PRICE_LIST'].Visible          := N13.Checked;
  gr_main.FieldColumns['QUANTITY_NOW'].Visible        := N14.Checked;
  gr_main.FieldColumns['RESERV'].Visible              := N15.Checked;
  gr_main.FieldColumns['QUANTITY'].Visible            := N16.Checked;
  gr_main.FieldColumns['PRICE_PERCENT'].Visible       := N17.Checked;
  gr_main.FieldColumns['PRICE'].Visible               := N18.Checked;
  gr_main.FieldColumns['QUANTITY_PRICE'].Visible      := N19.Checked;
  gr_main.FieldColumns['OUR_CODE'].Visible            := N20.Checked;

  gr_ucenka.FieldColumns['CODE'].Visible                := N3.Checked;
  gr_ucenka.FieldColumns['H_CODE'].Visible              := N6.Checked;
  gr_ucenka.FieldColumns['F_TYPE'].Visible              := N7.Checked;
  gr_ucenka.FieldColumns['F_SUB_TYPE'].Visible          := N8.Checked;
  gr_ucenka.FieldColumns['COMPILED_NAME_OTDEL'].Visible := N9.Checked;
  gr_ucenka.FieldColumns['SPESIFICATION'].Visible       := N10.Checked;
  gr_ucenka.FieldColumns['COUNTRY'].Visible             := N11.Checked;
  gr_ucenka.FieldColumns['COLOUR'].Visible              := N12.Checked;
  gr_ucenka.FieldColumns['PRICE_LIST'].Visible          := N13.Checked;
  gr_ucenka.FieldColumns['QUANTITY_NOW'].Visible        := N14.Checked;
  gr_ucenka.FieldColumns['RESERV'].Visible              := N15.Checked;
  gr_ucenka.FieldColumns['QUANTITY'].Visible            := N16.Checked;
  gr_ucenka.FieldColumns['PRICE_PERCENT'].Visible       := N17.Checked;
  gr_ucenka.FieldColumns['PRICE'].Visible               := N18.Checked;
  gr_ucenka.FieldColumns['QUANTITY_PRICE'].Visible      := N19.Checked;
  gr_ucenka.FieldColumns['OUR_CODE'].Visible            := N20.Checked;

  gr_nulls.FieldColumns['CODE'].Visible                := N3.Checked;
  gr_nulls.FieldColumns['H_CODE'].Visible              := N6.Checked;
  gr_nulls.FieldColumns['F_TYPE'].Visible              := N7.Checked;
  gr_nulls.FieldColumns['F_SUB_TYPE'].Visible          := N8.Checked;
  gr_nulls.FieldColumns['COMPILED_NAME_OTDEL'].Visible := N9.Checked;
  gr_nulls.FieldColumns['SPESIFICATION'].Visible       := N10.Checked;
  gr_nulls.FieldColumns['COUNTRY'].Visible             := N11.Checked;
  gr_nulls.FieldColumns['COLOUR'].Visible              := N12.Checked;
  gr_nulls.FieldColumns['PRICE_LIST'].Visible          := N13.Checked;
  gr_nulls.FieldColumns['QUANTITY_NOW'].Visible        := N14.Checked;
  gr_nulls.FieldColumns['RESERV'].Visible              := N15.Checked;
  gr_nulls.FieldColumns['QUANTITY'].Visible            := N16.Checked;
  gr_nulls.FieldColumns['PRICE_PERCENT'].Visible       := N17.Checked;
  gr_nulls.FieldColumns['PRICE'].Visible               := N18.Checked;
  gr_nulls.FieldColumns['QUANTITY_PRICE'].Visible      := N19.Checked;
  gr_nulls.FieldColumns['OUR_CODE'].Visible            := N20.Checked;
end;




procedure TfrmSales.pc_salesChange(Sender: TObject);
begin
  if (DM.CDS_NULLSTORE.Active = false) and (pc_sales.ActivePageIndex = 2) then
  begin
    DM.CDS_NULLSTORE.Close;
    DM.CDS_NULLSTORE.ParamByName('store_').AsInteger := 0;
    DM.CDS_NULLSTORE.ParamByName('id_dep_').AsInteger := CUR_DEPT_ID;
    DM.CDS_NULLSTORE.ParamByName('price_part_').AsInteger := EditPercent.EditValue;
    DM.CDS_NULLSTORE.ParamByName('button_').AsInteger := param_;
    DM.CDS_NULLSTORE.ParamByName('quantity_').AsInteger := 1;
    DM.CDS_NULLSTORE.ParamByName('cursor_');
    DM.CDS_NULLSTORE.Open;
  end;
end;

//
//  Отрисуем грид
//
procedure TfrmSales.gr_mainDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if (Column.FieldName = 'QUANTITY') and (DM.CDS_MSTOREQUANTITY.IsNull = false)
    and ((DM.CDS_MSTOREQUANTITY.AsInteger+DM.CDS_MSTORERESERV.AsInteger) > DM.CDS_MSTOREQUANTITY_NOW.AsInteger) then
	begin
 	    gr_main.Canvas.Font.Color  := st_warning.TextColor;
 	    gr_main.Canvas.Font.Style  := st_warning.Font.Style;
 	    gr_main.Canvas.FillRect(Rect);
  		gr_main.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	end;

  if (State = [gdSelected]	) then
	begin
      gr_main.Canvas.Brush.Color:=clBtnFace;
 	    gr_main.Canvas.Font.Color:=clBlack;
 	    gr_main.Canvas.FillRect(Rect);
  		gr_main.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	end;

  if (DM.CDS_MSTOREnotuse.AsInteger = 1) then
	begin
 	    gr_main.Canvas.Brush.Color  := stNotUse.Color;
 	    gr_main.Canvas.FillRect(Rect);
  		gr_main.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	end;

end;


procedure TfrmSales.gr_ucenkaApplyFilter(Sender: TObject);
begin
  gr_ucenka.ApplyFilter;
  if (gr_ucenka.DataSource.DataSet.RecordCount > 0) then
    gr_ucenka.ReadOnly := false
  else
    gr_ucenka.ReadOnly := true;
end;



//
//  Отрисуем грид
//
procedure TfrmSales.gr_ucenkaDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if (Column.FieldName = 'QUANTITY') and (DM.CDS_USTOREQUANTITY.IsNull = false)
    and ((DM.CDS_USTOREQUANTITY.AsInteger+DM.CDS_USTORERESERV.AsInteger) > DM.CDS_USTOREQUANTITY_NOW.AsInteger) then
	begin
 	    gr_ucenka.Canvas.Font.Color  := st_warning.TextColor;
 	    gr_ucenka.Canvas.Font.Style  := st_warning.Font.Style;
 	    gr_ucenka.Canvas.FillRect(Rect);
  		gr_ucenka.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	end;

  if (State = [gdSelected]	) then
	begin
      gr_ucenka.Canvas.Brush.Color:=clBtnFace;
 	    gr_ucenka.Canvas.Font.Color:=clBlack;
 	    gr_ucenka.Canvas.FillRect(Rect);
  		gr_ucenka.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	end;

  if (DM.CDS_USTOREnotuse.AsInteger = 1) then
	begin
 	    gr_ucenka.Canvas.Brush.Color  := stNotUse.Color;
 	    gr_ucenka.Canvas.FillRect(Rect);
  		gr_ucenka.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	end;
end;
//
//  Отрисуем грид
//
procedure TfrmSales.gr_nullsDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if (Column.FieldName = 'QUANTITY') and (DM.CDS_NULLSTOREQUANTITY.IsNull = false)
    and ((DM.CDS_NULLSTOREQUANTITY.AsInteger+DM.CDS_NULLSTORERESERV.AsInteger) > DM.CDS_NULLSTOREQUANTITY_NOW.AsInteger) then
	begin
 	    gr_nulls.Canvas.Font.Color  := st_warning.TextColor;
 	    gr_nulls.Canvas.Font.Style  := st_warning.Font.Style;
 	    gr_nulls.Canvas.FillRect(Rect);
  		gr_nulls.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	end;

  if (State = [gdSelected]	) then
	begin
      gr_nulls.Canvas.Brush.Color:=clBtnFace;
 	    gr_nulls.Canvas.Font.Color:=clBlack;
 	    gr_nulls.Canvas.FillRect(Rect);
  		gr_nulls.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	end;

  if (DM.CDS_NULLSTOREnotuse.AsInteger = 1) then
	begin
 	    gr_nulls.Canvas.Brush.Color  := stNotUse.Color;
 	    gr_nulls.Canvas.FillRect(Rect);
  		gr_nulls.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	end;
end;

procedure TfrmSales.gr_nullsKeyPress(Sender: TObject; var Key: Char);
begin
   if ((Key in ['0'..'9']) or (Key = '-')) and (gr_nulls.DataSource.DataSet.State = dsBrowse)
      and (gr_nulls.SelectedField.Name <> 'CDS_NULLSTOREPRICE_PERCENT')
      and (gr_nulls.SelectedField.Name <> 'CDS_MSTOREPRICE')
   then
   begin
     gr_nulls.FieldColumns['QUANTITY'].Field.FocusControl;
     str_flower := '';
     label2.Caption := str_flower;
   end;

   if (Key in ['a'..'z']) or (Key in ['A'..'Z']) or (Key = ' ') or (Key in ['а'..'я']) or (Key in ['А'..'Я']) then
   begin
     gr_nulls.FieldColumns['COMPILED_NAME_OTDEL'].Field.FocusControl;
     str_flower := str_flower + Key;
     gr_nulls.DataSource.DataSet.Locate('COMPILED_NAME_OTDEL', str_flower, [loCaseInsensitive, loPartialKey]);
     label2.Caption := str_flower;
   end;
end;


//
//  Отработаем нажатия кнопок на гриде
//
procedure TfrmSales.gr_mainKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var   i1, i2: integer;
        strflower: string;
var grid: TDBGridEh;
begin
  case (pc_sales.ActivePageIndex) of
    0: grid := gr_main;
    1: grid := gr_ucenka;
    2: grid := gr_nulls;
  end;

  if (Key = VK_RETURN) and (
       ((pc_sales.ActivePageIndex = 0) and (grid.SelectedField.Name <> 'CDS_MSTOREQUANTITY') and (grid.SelectedField.Name <> 'CDS_MSTOREPRICE_PERCENT'))
      or ((pc_sales.ActivePageIndex = 1) and (grid.SelectedField.Name <> 'CDS_USTOREQUANTITY') and (grid.SelectedField.Name <> 'CDS_USTOREPRICE_PERCENT'))
      or ((pc_sales.ActivePageIndex = 2) and (grid.SelectedField.Name <> 'CDS_NULLSTOREQUANTITY') and (grid.SelectedField.Name <> 'CDS_NULLSTOREPRICE_PERCENT'))
  )
  then
  begin
    if (grid.DataSource.DataSet.RecordCount > 0) then
    begin
      frm_full_info := Tfrm_full_info.Create(Application);
      With frm_full_info do
      Begin
        SelNom.Session := DM.sale_session;
        SelNom.ParamByName('N_ID').Value := grid.DataSource.DataSet.FieldByName('N_ID').AsInteger;
        SelNom.Open;

        if (SelNom.FieldByName('IS_PHOTO').AsInteger = 1) then
        begin
          if FileExists(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString) then
             frm_full_info.Image1.Picture.LoadFromFile(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString);
        end;

        ShowModal;
        Free;
      End;
    end;
  end;  


  if (Key = VK_F2	) then
     LoadData(2);
  if (Key = VK_F3	) then
     LoadData(3);
  if (Key = VK_F4	) then
     LoadData(4);
  if (Key = VK_F5	) then
     LoadData(5);
  if (Key = VK_F6	) then
     LoadData(6);
  if (Key = VK_F7	) then
     LoadData(7);
  if (Key = VK_F8	) then
     LoadData(8);

  if (Key = VK_BACK) then
  begin
    i1 := 0;
    i2 := Length(str_flower)-1;
    strflower      := Copy(str_flower,i1,i2);
    str_flower     := strflower;
    label2.Caption := str_flower;
  end;

  if (Key = VK_CONTROL) or (Key = VK_LEFT) or (Key = VK_UP) or (Key = VK_RIGHT) or (Key = VK_DOWN) or (Key = VK_PRIOR)	or (Key = VK_NEXT) or (Key = VK_HOME) then
  begin
    str_flower      := '';
    label2.Caption  := '';

    if (Key = VK_HOME) then
    begin
      if (CUR_DEPT_ID <> 62) then
        grid.FieldColumns['H_CODE'].Field.FocusControl
      else
        grid.FieldColumns['COMPILED_NAME_OTDEL'].Field.FocusControl;
      grid.DataSource.DataSet.First;
    end;

  end;
  label2.Repaint;
  Panel2.Repaint;     
end;

//
//  Отработаем нажатия кнопок на гриде
//
procedure TfrmSales.gr_mainKeyPress(Sender: TObject; var Key: Char);
begin
   if ((Key in ['0'..'9']) or (Key = '-')) and (gr_main.DataSource.DataSet.State = dsBrowse)
      and (gr_main.SelectedField.Name <> 'CDS_MSTOREPRICE_PERCENT')
      and (gr_main.SelectedField.Name <> 'CDS_MSTOREPRICE')
      and (gr_main.SelectedField.Name <> 'CDS_SALESPRICE')
      and (gr_main.SelectedField.Name <> 'CDS_SALESPRICE_PERCENT')
   then
   begin
     gr_main.DataSource.DataSet.Cancel;
     gr_main.FieldColumns['QUANTITY'].Field.FocusControl;
     str_flower := '';
     label2.Caption := str_flower;
   end;

   if (Key in ['a'..'z']) or (Key in ['A'..'Z']) or (Key = ' ') or (Key in ['а'..'я']) or (Key in ['А'..'Я']) then
   begin
     gr_main.FieldColumns['COMPILED_NAME_OTDEL'].Field.FocusControl;
     str_flower := str_flower + Key;
     gr_main.DataSource.DataSet.Locate('COMPILED_NAME_OTDEL', str_flower, [loCaseInsensitive, loPartialKey]);
     label2.Caption := str_flower;
   end;
end;


// Сортировка основного склада
procedure TfrmSales.gr_mainTitleClick(Column: TColumnEh);
begin
  DM.CDS_MSTORE.IndexFieldNames := Column.FieldName;
end;
// Сортировка уцененного склада
procedure TfrmSales.gr_ucenkaTitleClick(Column: TColumnEh);
begin
  DM.CDS_USTORE.IndexFieldNames := Column.FieldName;
end;
// Сортировка нулевого склада
procedure TfrmSales.gr_nullsTitleClick(Column: TColumnEh);
begin
  DM.CDS_NULLSTORE.IndexFieldNames := Column.FieldName;
end;




procedure TfrmSales.gr_ucenkaKeyPress(Sender: TObject; var Key: Char);
begin
   if ((Key in ['0'..'9']) or (Key = '-')) and (gr_ucenka.DataSource.DataSet.State = dsBrowse)
      and (gr_ucenka.SelectedField.Name <> 'CDS_USTOREPRICE_PERCENT')
      and (gr_ucenka.SelectedField.Name <> 'CDS_USTOREPRICE')
   then
   begin
     gr_ucenka.FieldColumns['QUANTITY'].Field.FocusControl;
     str_flower := '';
     label2.Caption := str_flower;
   end;

   if (Key in ['a'..'z']) or (Key in ['A'..'Z']) or (Key = ' ') or (Key in ['а'..'я']) or (Key in ['А'..'Я']) then
   begin
     gr_ucenka.FieldColumns['COMPILED_NAME_OTDEL'].Field.FocusControl;
     str_flower := str_flower + Key;
     gr_ucenka.DataSource.DataSet.Locate('COMPILED_NAME_OTDEL', str_flower, [loCaseInsensitive, loPartialKey]);
     label2.Caption := str_flower;
   end;

end;


// Переход по табам
procedure TfrmSales.aUcenkaSkladExecute(Sender: TObject);
begin
  pc_sales.ActivePageIndex := 1;
  gr_ucenka.SetFocus;
end;
procedure TfrmSales.aMainSkladExecute(Sender: TObject);
begin
  pc_sales.ActivePageIndex := 0;
  gr_main.SetFocus;
end;
procedure TfrmSales.aNullSkladExecute(Sender: TObject);
begin
  pc_sales.ActivePageIndex := 2;
  if (DM.CDS_NULLSTORE.Active = false) then
  begin
    DM.CDS_NULLSTORE.Close;
    DM.CDS_NULLSTORE.ParamByName('store_').AsInteger := 0;
    DM.CDS_NULLSTORE.ParamByName('id_dep_').AsInteger := CUR_DEPT_ID;
    DM.CDS_NULLSTORE.ParamByName('price_part_').AsInteger := EditPercent.EditValue;
    DM.CDS_NULLSTORE.ParamByName('button_').AsInteger := param_;
    DM.CDS_NULLSTORE.ParamByName('quantity_').AsInteger := 1;
    DM.CDS_NULLSTORE.ParamByName('cursor_');
    DM.CDS_NULLSTORE.Open;
  end;
end;


// Обработка F12
procedure TfrmSales.aOnlyMyExecute(Sender: TObject);
begin
  if AddedCB.Checked = true then AddedCB.Checked := false else AddedCB.Checked := true;
//  aRefresh.Execute;
end;


// Обновим данные
procedure TfrmSales.aRefreshExecute(Sender: TObject);
begin
  screen.cursor := crHourGlass;

  if DM.CDS_MSTORE.Active and (DM.CDS_MSTORE.State = dsEdit) then DM.CDS_MSTORE.Post;
  if DM.CDS_USTORE.Active and (DM.CDS_USTORE.State = dsEdit) then DM.CDS_USTORE.Post;
  if DM.CDS_NULLSTORE.Active and (DM.CDS_NULLSTORE.State = dsEdit) then DM.CDS_NULLSTORE.Post;


  DM.CDS_MSTORE.Filter := '';
  DM.CDS_USTORE.Filter := '';
  DM.CDS_SALES.Filter := '';
  if (DM.CDS_NULLSTORE.Active) then
    DM.CDS_NULLSTORE.Filter := '';

  if (AddedCB.Checked = true) then
  begin
    DM.CDS_SALES.Close;
    DM.CDS_SALES.ParamByName('id_dep_').AsInteger := CUR_DEPT_ID;
    DM.CDS_SALES.ParamByName('price_part_').AsInteger := EditPercent.EditValue;
    DM.CDS_SALES.ParamByName('v_client').AsInteger := Image1.Tag;
    DM.CDS_SALES.ParamByName('cursor_');
    DM.CDS_SALES.Open;
    gr_main.DataSource := DM.DS_SALES;

    DM.CDS_MSTORE.Filter   := ' added > 0 and QUANTITY <> 0';
    DM.CDS_MSTORE.Filtered := true;
    DM.CDS_USTORE.Filter   := ' added > 0 and QUANTITY <> 0';
    DM.CDS_USTORE.Filtered := true;
    if (DM.CDS_NULLSTORE.Active) then
    begin
      DM.CDS_NULLSTORE.Filter   := ' added > 0 and QUANTITY <> 0';
      DM.CDS_NULLSTORE.Filtered := true;
    end;

  end else begin
   if dm.cds_reservINFO.AsString = trim('') then begin
    DM.cDS_MSTORE.ParamByName('v_client').AsInteger := image1.tag;
    DM.cDS_MSTORE.Refresh;
   end;
    gr_main.DataSource := DM.DS_MSTORE;
  end;

  screen.cursor := crdefault;
end;


procedure TfrmSales.aShowReservExecute(Sender: TObject);
var grid: TDBGridEh;
begin
  case (pc_sales.ActivePageIndex) of
    0: grid := gr_main;
    1: grid := gr_ucenka;
    2: grid := gr_nulls;
  end;
  if not grid.DataSource.DataSet.Active or grid.DataSource.DataSet.IsEmpty or (grid.DataSource.DataSet.FieldByName('reserv').AsInteger < 1) then exit;
  OpenFormForShow(grid.DataSource.DataSet.FieldByName('n_id').AsInteger, grid.DataSource.DataSet.FieldByName('COMPILED_NAME_OTDEL').AsString);

end;

// Записываем данные
procedure TfrmSales.aSaveExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;


// поиск по артиклу
procedure TfrmSales.aSearchArticleExecute(Sender: TObject);
begin
  search_execute(1);
end;
// поиск по названию
procedure TfrmSales.aSearchNameExecute(Sender: TObject);
begin
  search_execute(2);
end;
// поиск по внутр.коду
procedure TfrmSales.aSearchOurCodeExecute(Sender: TObject);
begin
  search_execute(3);
end;

//
//  Поиск
//
procedure TfrmSales.search_execute(param: integer);
begin
  if (Panel_fill.Visible = false) then
  begin
    param_             := param;
    Panel_fill.Left    := trunc(pc_sales.Width / 2) - 90;
    Panel_fill.Top     := trunc(pc_sales.Height / 2) - 20;
    Panel_fill.Visible := true;
    te_search.SetFocus;
  end;
end;

// Отрабатываем форму поиска
procedure TfrmSales.te_searchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var grid: TDBGridEh;
begin
  case (pc_sales.ActivePageIndex) of
    0: grid := gr_main;
    1: grid := gr_ucenka;
    2: grid := gr_nulls;
  end;

  if (Key = VK_DELETE) then
  begin
    Panel_fill.Visible := false;
    grid.SetFocus;
  end;

  if (Key = VK_RETURN) then
  begin
    AddedCB.Checked := false;

    te_search.PostEditValue;
    grid.ClearFilter;
    if (param_ = 1) then
      grid.FieldColumns['H_CODE'].STFilter.ExpressionStr := '*' + VarToStr(te_search.EditValue) + '*';
    if (param_ = 2) then
      grid.FieldColumns['COMPILED_NAME_OTDEL'].STFilter.ExpressionStr := '*' + VarToStr(te_search.EditValue) + '*';
    if (param_ = 3) then
      grid.FieldColumns['OUR_CODE'].STFilter.ExpressionStr := '*' + VarToStr(te_search.EditValue) + '*';
    grid.ApplyFilter;
    Panel_fill.Visible := false;
    te_search.Text := '';
//    grid.SetFocus;
    grid.FieldColumns['QUANTITY'].Field.FocusControl;
  end;
end;


//
//  Очищаем фильтры
//
procedure TfrmSales.aClearFilterExecute(Sender: TObject);
var grid: TDBGridEh;
begin
  case (pc_sales.ActivePageIndex) of
    0: grid := gr_main;
    1: grid := gr_ucenka;
    2: grid := gr_nulls;
  end;
  grid.DataSource.DataSet.Filtered := false;
  grid.ClearFilter;
end;


//
// Расчет скидки
//
procedure TfrmSales.btn_discountClick(Sender: TObject);
begin
  try
    if (DM.CDS_MSTORE.Active) and (DM.CDS_MSTORE.State = dsEdit) then DM.CDS_MSTORE.Post;
    if (DM.CDS_USTORE.Active) and (DM.CDS_USTORE.State = dsEdit) then DM.CDS_USTORE.Post;
    if (DM.CDS_NULLSTORE.Active) and (DM.CDS_NULLSTORE.State = dsEdit) then DM.CDS_NULLSTORE.Post;
    if (DM.CDS_SALES.Active) and (DM.CDS_SALES.State = dsEdit)  then DM.CDS_SALES.Post;

    EditPercent.PostEditValue;
    DM.OraProc.StoredProcName := 'STORE_PKG.set_price_part';
    DM.OraProc.Prepare;
    DM.OraProc.ParamByName('price_percent').AsInteger := EditPercent.EditValue;
    DM.OraProc.ParamByName('p_client').AsString       := DBText2.Field.Text;
    DM.OraProc.Execute;
    DM.CDS_MSTORE.Refresh;
    DM.CDS_USTORE.Refresh;
    if (DM.CDS_NULLSTORE.Active) then DM.CDS_NULLSTORE.Refresh;
    if (DM.CDS_SALES.Active) then DM.CDS_SALES.Refresh;

    gr_main.SumList.RecalcAll;
    gr_ucenka.SumList.RecalcAll;
    gr_nulls.SumList.RecalcAll;
  except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
  End;
end;


procedure TfrmSales.EditPercentKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    btn_discount.Click;
  end;
end;


//
//  Удаляем количество
//
procedure TfrmSales.aDelQuantExecute(Sender: TObject);
var grid: TDBGridEh;
begin
  case (pc_sales.ActivePageIndex) of
    0: grid := gr_main;
    1: grid := gr_ucenka;
    2: grid := gr_nulls;
  end;

  grid.FieldColumns['QUANTITY'].Field.FocusControl;
  grid.DataSource.DataSet.Edit;
  grid.DataSource.DataSet.FieldByName('QUANTITY').Value := NULL;
  grid.DataSource.DataSet.Post;
end;


//
// Выберем бронь
//
procedure TfrmSales.aFromReservExecute(Sender: TObject);
begin
  if (Panel_fill.Visible = false) then
  begin
	try
 	  DM.cds_reserv.Close;
    DM.cds_reserv.ParamByName('id_dep_').Value := CUR_DEPT_ID;
 	  DM.cds_reserv.ParamByName('STATUS_').Value := 10;
    DM.cds_reserv.ParamByName('ID_').AsInteger := 0;
    DM.cds_reserv.Filter := 'id_clients='+ DM.Q_CLIENTSID_CLIENTS.AsString;
    DM.cds_reserv.Filtered := true;
   	DM.cds_reserv.Open;
    Order_Grid.Columns.Items[0].Visible := true;
    Order_Grid.Columns.Items[1].Visible := false;
    Order_Grid.DataSource := DM.ds_reserv;
    pnl_order.Left    := trunc(pc_sales.Width / 2) - 240;
    pnl_order.Top     := trunc(pc_sales.Height / 2) - 120;
    pnl_order.Visible := true;
    Order_Grid.SetFocus;
  except on E: Exception do
    begin
      MessageBox(Handle, PChar(E.Message), 'Ошибка открытия бронирований', MB_ICONERROR);
    end;
  end;
  end;
end;


//
//  Выберем заказ
//
procedure TfrmSales.aFromOrderExecute(Sender: TObject);
begin
  if (Panel_fill.Visible = false) then
  begin
  	try
 	    DM.cds_Order.Close;
      DM.cds_Order.ParamByName('id_clients').Value := DM.Q_CLIENTSID_CLIENTS.AsInteger;
     	DM.cds_Order.Open;
      Order_Grid.Columns.Items[0].Visible := false;
      Order_Grid.Columns.Items[1].Visible := true;
      Order_Grid.DataSource := DM.ds_Order;
      pnl_order.Left    := trunc(pc_sales.Width / 2) - 240;
      pnl_order.Top     := trunc(pc_sales.Height / 2) - 120;
      pnl_order.Visible := true;
      Order_Grid.SetFocus;
    except on E: Exception do
      begin
        MessageBox(Handle, PChar(E.Message), 'Ошибка открытия бронирований', MB_ICONERROR);
      end;
    end;
  end;
end;

//
// Создаем накладную из брони
//
procedure TfrmSales.Order_GridDblClick(Sender: TObject);
begin
//  Order_GridKeyPress(Sender, #13);
end;
procedure TfrmSales.Order_GridKeyPress(Sender: TObject; var Key: Char);
begin
  try
    if (Key = #13) then
    begin
        if (DM.cds_reserv.Active) and (DM.cds_reserv.RecordCount > 0) then
        begin
          EditPercent.PostEditValue;
	        DM.sale_session.ExecProc('STORE_PKG.DATA_FROM_ORDER', [dm.cds_reservID_ORDERS_CLIENTS.AsInteger,0,EditPercent.EditValue]) ;
          aLoad.Execute;
         	DM.cds_reserv.Close;
          DM.cds_reserv.Filter := '';
          DM.cds_reserv.Filtered := false;
        end;

        if (DM.cds_Order.Active) and (DM.cds_Order.RecordCount > 0) then
        begin
	        DM.sale_session.ExecProc('STORE_PKG.DATA_FROM_HOL_ORDERS', [dm.cds_OrderID_ORDERS_CLIENTS.AsInteger]) ;
          aLoad.Execute;
         	DM.cds_Order.Close;
          DM.cds_Order.Filter := '';
          DM.cds_Order.Filtered := false;
        end;

        pnl_order.Visible := false;
        gr_main.SetFocus;
    end;
    if (Key = #8) then
    begin
        pnl_order.Visible := false;
        gr_main.SetFocus;
    end;
  except on E: Exception do
    begin
      MessageBox(Handle, PChar(E.Message), 'Ошибка открытия бронирований', MB_ICONERROR);
    end;
  end;
end;

//
//  Уценим текущую
//
procedure TfrmSales.aUcenkaExecute(Sender: TObject);
var theForm: TForm;
    in_QUANTITY, in_n_id, in_OTDEL, in_Percent: integer;
    in_DOC_DATE:      TDatetime;
    in_OPERATOR_NAME: string;
    CDS: TOraQuery;
begin
try
  theForm := TChangePricesForm.Create(Application);
  if theForm.ShowModal = mrOk then
  begin
    if pc_sales.ActivePageIndex = 0 then CDS := (gr_main.DataSource.DataSet as TOraQuery);
    if pc_sales.ActivePageIndex = 1 then CDS := (gr_ucenka.DataSource.DataSet as TOraQuery);

    in_QUANTITY      := Strtoint(TChangePricesForm(theForm).Number.Text);
    in_Percent       := Strtoint(TChangePricesForm(theForm).EditPercent.Text);
    in_OPERATOR_NAME := operator_name;

    if (in_Percent >= 99) then
    begin
      MessageBox(Handle, 'Процент уценки не может быть больше 99%!', 'Внимание!', MB_ICONINFORMATION);
      abort;
    end;

    if (in_QUANTITY <> 0) and (in_Percent <> 0) then
    begin
      try
         in_n_id      := CDS.FieldByName('N_ID').AsInteger;
         in_DOC_DATE  := CUR_DATE;
         in_OTDEL     := CUR_DEPT_ID;

         DM.sale_session.ExecProc('STORE_PKG.CHANGE_PRICE', [in_n_id, in_Percent, in_QUANTITY, in_DOC_DATE, in_OTDEL, in_OPERATOR_NAME]) ;
         CDS.RefreshRecord;

         if MessageDlg('Уценка прошла успешно! Вы хотите добавить уцененный товар в накладную?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
         begin
            DM.SelQ.SQL.Clear;
            DM.SelQ.SQL.Add('begin STORE_PKG.insert_fast_ucenka(:n_id_, :QUANTITY_); end;');
            DM.SelQ.ParamByName('n_id_').AsInteger := in_n_id;
            DM.SelQ.ParamByName('QUANTITY_').AsInteger := in_QUANTITY;
            DM.SelQ.Execute;
            DM.CDS_USTORE.Refresh;
            DM.CDS_USTORE.Locate('n_id', in_n_id, []);
            pc_sales.ActivePageIndex := 1;
            gr_ucenka.SetFocus;
            exit;
//            MessageBox(Handle, 'Товар был выписан со склада уценки!', 'Результат', MB_ICONINFORMATION);
         end;

      except on E: Exception do
        MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
      End;

    end;
  end;

  if pc_sales.ActivePageIndex = 0 then gr_main.SetFocus;
  if pc_sales.ActivePageIndex = 1 then gr_ucenka.SetFocus;
finally
   theForm.Free;
end;
end;


//
// Лом
//
procedure TfrmSales.aLomExecute(Sender: TObject);
var theForm: TDialog_number_Form;
    in_QUANTITY, in_n_id, in_OTDEL: integer;
    in_DOC_DATE:tDatetime;
    CDS: TOraQuery;
begin
try
  theForm := TDialog_number_Form.Create(Application);
  if theForm.ShowModal = mrOk then
  begin
    if pc_sales.ActivePageIndex = 0 then CDS := (gr_main.DataSource.DataSet as TOraQuery);
    if pc_sales.ActivePageIndex = 1 then CDS := (gr_ucenka.DataSource.DataSet as TOraQuery);

    in_QUANTITY := Strtoint(TDialog_number_Form(theForm).Number.Text);
    if (in_QUANTITY<>0) then
    begin
      try
         in_n_id      := CDS.FieldByName('N_ID').AsInteger;
         in_DOC_DATE  := CUR_DATE;
         in_OTDEL     := CUR_DEPT_ID;

         DM.sale_session.ExecProc('STORE_PKG.Lom_Add', [in_n_id, in_QUANTITY, in_DOC_DATE, in_OTDEL]) ;
         if cds.FieldByName('QUANTITY').AsInteger > 0 then
         begin
           cds.Edit;
           cds.FieldByName('QUANTITY').AsInteger := cds.FieldByName('QUANTITY').AsInteger - in_QUANTITY;
           cds.Post;
         end;
         MessageBox(Handle, 'Операция прошла успешно!', 'Результат', MB_ICONINFORMATION);
         CDS.RefreshRecord;

      except on E: Exception do
        MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR);
      End;

    end;
  end;
  if pc_sales.ActivePageIndex = 0 then gr_main.SetFocus;
  if pc_sales.ActivePageIndex = 1 then gr_ucenka.SetFocus;
finally
   theForm.Free;
end;
end;


//
//  Отфильтруем данные
//
procedure TfrmSales.AddedCBClick(Sender: TObject);
begin
  if DM.CDS_MSTORE.Active and (DM.CDS_MSTORE.State = dsEdit) then DM.CDS_MSTORE.Post;
  if DM.CDS_USTORE.Active and (DM.CDS_USTORE.State = dsEdit) then DM.CDS_USTORE.Post;
  if DM.CDS_NULLSTORE.Active and (DM.CDS_NULLSTORE.State = dsEdit) then DM.CDS_NULLSTORE.Post;

  aRefresh.Execute;
  if AddedCB.Checked then
  begin
    gr_main.FieldColumns['QUANTITY_PRICE'].Footer.ValueType   := fvtSum;
    gr_ucenka.FieldColumns['QUANTITY_PRICE'].Footer.ValueType := fvtSum;
    gr_nulls.FieldColumns['QUANTITY_PRICE'].Footer.ValueType  := fvtSum;
  end
  else
  begin
    gr_main.FieldColumns['QUANTITY_PRICE'].Footer.ValueType   := fvtNon;
    gr_ucenka.FieldColumns['QUANTITY_PRICE'].Footer.ValueType := fvtNon;
    gr_nulls.FieldColumns['QUANTITY_PRICE'].Footer.ValueType  := fvtNon;
  end;
end;


//
// Запишем на закрытие
//
procedure TfrmSales.FormClose(Sender: TObject; var Action: TCloseAction);
var
  AStoreKey: string;
begin
    if DM.CDS_MSTORE.State = dsEdit then DM.CDS_MSTORE.Post;
    if DM.CDS_USTORE.State = dsEdit then DM.CDS_USTORE.Post;
    if DM.CDS_SALES.State = dsEdit  then DM.CDS_SALES.Post;
    if (DM.CDS_NULLSTORE.Active) and (DM.CDS_NULLSTORE.State = dsEdit) then
      DM.CDS_NULLSTORE.Post;


    AStoreKey     := path + '/ini/'+DM.sale_session.Username+'_store_main.ini';
    gr_main.SaveGridLayoutIni(AStoreKey,'store_main',true);

    AStoreKey     := path + '/ini/'+DM.sale_session.Username+'_store_ucenka.ini';
    gr_ucenka.SaveGridLayoutIni(AStoreKey,'store_ucenka',true);

    AStoreKey     := path + '/ini/'+DM.sale_session.Username+'_store_null.ini';
    gr_nulls.SaveGridLayoutIni(AStoreKey,'store_null',true);
end;


procedure TfrmSales.FormCreate(Sender: TObject);
begin
   //****** беру % из табл.PROCENT: ************
   with dm do
   if Q_CLIENTS.FieldByName('nick').AsString = 'R CHL' then
   begin
    oraquery1.close;
    oraquery1.sql.clear;
    oraquery1.sql.add('select * from sale_percenet where id_departments ='+inttostr(CUR_DEPT_ID));
    oraquery1.open;
    if oraquery1.RecordCount > 0 then
      editpercent.Text := oraquery1.fieldbyname('proc').asstring
    else
      editpercent.EditValue := 0;
    oraquery1.close;
   end;
   //*******************************************
end;

//
//  Покажем форму
//
procedure TfrmSales.FormShow(Sender: TObject);
var i: integer;
    AStoreKey: string;
    vv: string;
    RegIni : TIniFile;
    param_: boolean;
begin
  try
    path   := ExtractFilePath(Application.ExeName);

    AStoreKey     := path + '/ini/'+DM.sale_session.Username+'_store_main.ini';
    gr_main.RestoreGridLayoutIni(AStoreKey,'store_main',[grpColIndexEh, grpColWidthsEh, grpSortMarkerEh, grpColVisibleEh, grpRowHeightEh, grpDropDownRowsEh, grpDropDownWidthEh]);

    AStoreKey     := path + '/ini/'+DM.sale_session.Username+'_store_ucenka.ini';
    gr_ucenka.RestoreGridLayoutIni(AStoreKey,'store_ucenka',[grpColIndexEh, grpColWidthsEh, grpSortMarkerEh, grpColVisibleEh, grpRowHeightEh, grpDropDownRowsEh, grpDropDownWidthEh]);

    AStoreKey     := path + '/ini/'+DM.sale_session.Username+'_store_null.ini';
    gr_nulls.RestoreGridLayoutIni(AStoreKey,'store_null',[grpColIndexEh, grpColWidthsEh, grpSortMarkerEh, grpColVisibleEh, grpRowHeightEh, grpDropDownRowsEh, grpDropDownWidthEh]);

    AStoreKey   := path+'ini/'+DM.sale_session.Username+'_'+intToStr(CUR_DEPT_ID)+'.ini';
    RegIni := TIniFile.Create(AStoreKey);
    i      := 0;
    var_ := RegIni.ReadInteger('SortVal', 'Value', 1);
    while (True) do
    begin
      vv := RegIni.ReadString('Columns', IntToStr(i), '1');
      if (vv = '1') then param_ := true else param_ := false;

      case i of
        0: gr_main.FieldColumns['CODE'].Visible := param_;
        1: gr_main.FieldColumns['H_CODE'].Visible := param_;
        2: gr_main.FieldColumns['F_TYPE'].Visible := param_;
        3: gr_main.FieldColumns['F_SUB_TYPE'].Visible := param_;
        4: gr_main.FieldColumns['COMPILED_NAME_OTDEL'].Visible := param_;
        5: gr_main.FieldColumns['SPESIFICATION'].Visible := param_;
        6: gr_main.FieldColumns['COUNTRY'].Visible := param_;
        7: gr_main.FieldColumns['COLOUR'].Visible := param_;
        8: gr_main.FieldColumns['PRICE_LIST'].Visible := param_;
        9: gr_main.FieldColumns['QUANTITY'].Visible := param_;
        10: gr_main.FieldColumns['PRICE_PERCENT'].Visible := param_;
        11: gr_main.FieldColumns['PRICE'].Visible := param_;
        12: gr_main.FieldColumns['QUANTITY_PRICE'].Visible := param_;
        13: gr_main.FieldColumns['QUANTITY_NOW'].Visible := param_;
        14: gr_main.FieldColumns['RESERV'].Visible := param_;
        15: gr_main.FieldColumns['OUR_CODE'].Visible := param_;
        16: break;
      end;
      i := i + 1;
    end;

    gr_ucenka.FieldColumns['CODE'].Visible      := gr_main.FieldColumns['CODE'].Visible;
    gr_ucenka.FieldColumns['H_CODE'].Visible    := gr_main.FieldColumns['H_CODE'].Visible;
    gr_ucenka.FieldColumns['F_TYPE'].Visible    := gr_main.FieldColumns['F_TYPE'].Visible;
    gr_ucenka.FieldColumns['F_SUB_TYPE'].Visible:= gr_main.FieldColumns['F_SUB_TYPE'].Visible;
    gr_ucenka.FieldColumns['COMPILED_NAME_OTDEL'].Visible := gr_main.FieldColumns['COMPILED_NAME_OTDEL'].Visible;
    gr_ucenka.FieldColumns['SPESIFICATION'].Visible   := gr_main.FieldColumns['SPESIFICATION'].Visible;
    gr_ucenka.FieldColumns['COUNTRY'].Visible   := gr_main.FieldColumns['COUNTRY'].Visible;
    gr_ucenka.FieldColumns['COLOUR'].Visible    := gr_main.FieldColumns['COLOUR'].Visible;
    gr_ucenka.FieldColumns['PRICE_LIST'].Visible:= gr_main.FieldColumns['PRICE_LIST'].Visible;
    gr_ucenka.FieldColumns['QUANTITY'].Visible  := gr_main.FieldColumns['QUANTITY'].Visible;
    gr_ucenka.FieldColumns['PRICE_PERCENT'].Visible   := gr_main.FieldColumns['PRICE_PERCENT'].Visible;
    gr_ucenka.FieldColumns['PRICE'].Visible     := gr_main.FieldColumns['PRICE'].Visible;
    gr_ucenka.FieldColumns['QUANTITY_PRICE'].Visible  := gr_main.FieldColumns['QUANTITY_PRICE'].Visible;
    gr_ucenka.FieldColumns['QUANTITY_NOW'].Visible    := gr_main.FieldColumns['QUANTITY_NOW'].Visible;
    gr_ucenka.FieldColumns['RESERV'].Visible    := gr_main.FieldColumns['RESERV'].Visible;
    gr_ucenka.FieldColumns['OUR_CODE'].Visible    := gr_main.FieldColumns['OUR_CODE'].Visible;

    gr_nulls.FieldColumns['CODE'].Visible      := gr_main.FieldColumns['CODE'].Visible;
    gr_nulls.FieldColumns['H_CODE'].Visible    := gr_main.FieldColumns['H_CODE'].Visible;
    gr_nulls.FieldColumns['F_TYPE'].Visible    := gr_main.FieldColumns['F_TYPE'].Visible;
    gr_nulls.FieldColumns['F_SUB_TYPE'].Visible:= gr_main.FieldColumns['F_SUB_TYPE'].Visible;
    gr_nulls.FieldColumns['COMPILED_NAME_OTDEL'].Visible := gr_main.FieldColumns['COMPILED_NAME_OTDEL'].Visible;
    gr_nulls.FieldColumns['SPESIFICATION'].Visible   := gr_main.FieldColumns['SPESIFICATION'].Visible;
    gr_nulls.FieldColumns['COUNTRY'].Visible   := gr_main.FieldColumns['COUNTRY'].Visible;
    gr_nulls.FieldColumns['COLOUR'].Visible    := gr_main.FieldColumns['COLOUR'].Visible;
    gr_nulls.FieldColumns['PRICE_LIST'].Visible:= gr_main.FieldColumns['PRICE_LIST'].Visible;
    gr_nulls.FieldColumns['QUANTITY'].Visible  := gr_main.FieldColumns['QUANTITY'].Visible;
    gr_nulls.FieldColumns['PRICE_PERCENT'].Visible   := gr_main.FieldColumns['PRICE_PERCENT'].Visible;
    gr_nulls.FieldColumns['PRICE'].Visible     := gr_main.FieldColumns['PRICE'].Visible;
    gr_nulls.FieldColumns['QUANTITY_PRICE'].Visible  := gr_main.FieldColumns['QUANTITY_PRICE'].Visible;
    gr_nulls.FieldColumns['QUANTITY_NOW'].Visible    := gr_main.FieldColumns['QUANTITY_NOW'].Visible;
    gr_nulls.FieldColumns['OUR_CODE'].Visible    := gr_main.FieldColumns['OUR_CODE'].Visible;

  finally
    RegIni.Free;
    gr_main.SetFocus;
    gr_main.ReadOnly := false;
    gr_ucenka.ReadOnly := false;
    gr_nulls.ReadOnly := false;
  end;
end;


//
//  Считаем со сканера
//
procedure TfrmSales.aScanerSExecute(Sender: TObject);
var SP_CLIENT_CODE: string;
begin
//  if MessageDlg('Считать со сканера?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
  if (Panel_fill.Visible = false) then
  begin
    readscaner();
    dm.Scan.ParamByName('ID_DEPARTMENTS').AsInteger := CUR_DEPT_ID; //+'%';
  	SP_CLIENT_CODE := From_Scaner(path+'scan/1.txt', dm.Scan, dm.OraSQL_Scan);
    if alert_str <> '' then
        MessageBox(Handle, PChar('Указанные штрих-кода не найдены:'+#13+alert_str), 'Ошибка!', MB_ICONWARNING);

    aLoad.Execute;
    AddedCB.Checked := true;
    deletefile(path+'scan/1.txt');

    btn_discount.Click;
  end;
end;


//
//  Выводим окно для выбора типа
//
procedure TfrmSales.aFilterTypeExecute(Sender: TObject);
var grid: TDBGridEh;
begin
  if (Panel_fill.Visible = false) then
  begin
  case (pc_sales.ActivePageIndex) of
    0: grid := gr_main;
    1: grid := gr_ucenka;
    2: grid := gr_nulls;
  end;

    frm_choise_type := Tfrm_choise_type.Create(Application);
    frm_choise_type.Q_FLOWER_TYPE.ParamByName('ID_DEP_').AsInteger := StrToInt(CUR_DEPT_ID);
    frm_choise_type.Q_FLOWER_TYPE.ParamByName('VAR_').AsInteger := var_;
    frm_choise_type.Q_FLOWER_TYPE.Open;
    if frm_choise_type.ShowModal = mrOk then
    begin
       grid.ClearFilter;
       if var_ = 1 then
         grid.FieldColumns['F_TYPE'].STFilter.ExpressionStr := frm_choise_type.Q_FLOWER_TYPEF_TYPE.AsString
       else
         grid.FieldColumns['F_SUB_TYPE'].STFilter.ExpressionStr := frm_choise_type.Q_FLOWER_TYPEF_TYPE.AsString;
       grid.ApplyFilter;
       grid.SetFocus;
    end;
  end;
end;



procedure TfrmSales.gr_mainColumns11UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
begin
  if Label1.Visible and (VarToStr(Value) <> '') then
  begin
    if Value < 0 then
    begin
      Text := '0';
      Value := 0;
      Handled := false;
    end;
    
  end;
end;



// Полная информация
procedure TfrmSales.gr_mainDblClick(Sender: TObject);
begin
if (DM.CDS_MSTORE.RecordCount > 0) then
begin
  frm_full_info := Tfrm_full_info.Create(Application);
  With frm_full_info do
    Begin
      SelNom.Session := DM.sale_session;
      SelNom.ParamByName('N_ID').Value := DM.CDS_MSTOREN_ID.AsInteger;
      SelNom.Open;

      if (SelNom.FieldByName('IS_PHOTO').AsInteger = 1) then
      begin
        if FileExists(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString) then
           frm_full_info.Image1.Picture.LoadFromFile(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString);
      end;

      ShowModal;
      Free;
    End;
end;
end;

procedure TfrmSales.gr_ucenkaDblClick(Sender: TObject);
begin
if (DM.CDS_USTORE.RecordCount > 0) then
begin
  frm_full_info := Tfrm_full_info.Create(Application);
  With frm_full_info do
    Begin
      SelNom.Session := DM.sale_session;
      SelNom.ParamByName('N_ID').Value := DM.CDS_USTOREN_ID.AsInteger;
      SelNom.Open;

      if (SelNom.FieldByName('IS_PHOTO').AsInteger = 1) then
      begin
        if FileExists(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString) then
           frm_full_info.Image1.Picture.LoadFromFile(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString);
      end;

      ShowModal;
      Free;
    End;
end;
end;

procedure TfrmSales.gr_nullsDblClick(Sender: TObject);
begin
if (DM.CDS_NULLSTORE.RecordCount > 0) then
begin
  frm_full_info := Tfrm_full_info.Create(Application);
  With frm_full_info do
    Begin
      SelNom.Session := DM.sale_session;
      SelNom.ParamByName('N_ID').Value := DM.CDS_NULLSTOREN_ID.AsInteger;
      SelNom.Open;

      if (SelNom.FieldByName('IS_PHOTO').AsInteger = 1) then
      begin
        if FileExists(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString) then
           frm_full_info.Image1.Picture.LoadFromFile(def_folder+IntToStr(CUR_DEPT_ID)+'\'+SelNom.FieldByName('PHOTO').AsString);
      end;

      ShowModal;
      Free;
    End;
end;
end;



end.
