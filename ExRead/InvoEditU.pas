unit InvoEditU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, PI_library, Math, Grids, ActnList,
  ExtCtrls, Mask, DBCtrls, DBGrids, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxLabel, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, Menus, cxLookAndFeelPainters, cxButtons,
  cxTextEdit, cxContainer, cxMaskEdit, cxSpinEdit, jpeg, cxImage, dxBar,
  dxBarExtItems, cxCheckBox;

type
  TInvoEditF = class(TForm)
    Panel1: TPanel;
    ActionList1: TActionList;
    A_F4: TAction;
    A_refresh: TAction;
    A_CtrlEnter: TAction;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Panel3: TPanel;
    grid_nn: TcxGrid;
    grid_nnView1: TcxGridDBTableView;
    niF_NAME_RU: TcxGridDBColumn;
    niF_NAME: TcxGridDBColumn;
    niTYPE_SUBTYPE: TcxGridDBColumn;
    niCOLOUR: TcxGridDBColumn;
    niH_CODE: TcxGridDBColumn;
    niCODE: TcxGridDBColumn;
    niLEN: TcxGridDBColumn;
    niPACK: TcxGridDBColumn;
    niS_NAME_RU: TcxGridDBColumn;
    niCOUNTRY: TcxGridDBColumn;
    niPRICE: TcxGridDBColumn;
    niPRICE_DATE: TcxGridDBColumn;
    grid_nnView1COMPILED_NAME: TcxGridDBColumn;
    niFULL_NAME: TcxGridDBColumn;
    grid_nnView1F_SUB_TYPE: TcxGridDBColumn;
    grid_nnView1F_TYPE: TcxGridDBColumn;
    niN_ID: TcxGridDBColumn;
    grid_nnView1FN_ID: TcxGridDBColumn;
    grid_nnView1FT_ID: TcxGridDBColumn;
    grid_nnView1FST_ID: TcxGridDBColumn;
    grid_nnView1S_ID: TcxGridDBColumn;
    grid_nnView1C_ID: TcxGridDBColumn;
    grid_nnView1COL_ID: TcxGridDBColumn;
    grid_nnView1H_NAME: TcxGridDBColumn;
    niBAR_CODE: TcxGridDBColumn;
    grid_nnView1VBN: TcxGridDBColumn;
    grid_nnView1HOL_TYPE: TcxGridDBColumn;
    grid_nnView1WEIGHT: TcxGridDBColumn;
    grid_nnView1F_NAMES: TcxGridDBColumn;
    grid_nnView1CUST_COEF: TcxGridDBColumn;
    grid_nnView1DIAMETER: TcxGridDBColumn;
    grid_nnView1HT_ID: TcxGridDBColumn;
    grid_nn_Level1: TcxGridLevel;
    Panel5: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    BitBtn1: TcxButton;
    BitBtn2: TcxButton;
    BitBtn3: TcxButton;
    BitBtn4: TcxButton;
    A_F2: TAction;
    Edit1: TcxSpinEdit;
    Edit2: TcxCurrencyEdit;
    btn_refresh: TcxButton;
    btn_editNom: TcxButton;
    grid_nnView1IS_PHOTO: TcxGridDBColumn;
    grid_nnView1PHOTO: TcxGridDBColumn;
    grid_nnView1REMARKS: TcxGridDBColumn;
    grid_nnView1RUS_MARKS: TcxGridDBColumn;
    Panel_fill: TPanel;
    Label13: TLabel;
    Label15: TLabel;
    tFind: TcxTextEdit;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarStatic3: TdxBarStatic;
    dxBarButton19: TdxBarButton;
    dxBarStatic7: TdxBarStatic;
    dxBarStatic8: TdxBarStatic;
    pm_noms: TdxBarPopupMenu;
    dxBarDockControl1: TdxBarDockControl;
    aFilterClear: TAction;
    aFilterA: TAction;
    aFilterN: TAction;
    grid_nnView1UNITS: TcxGridDBColumn;
    chbNewNom: TcxCheckBox;
    grid_nnView1FULL_NAME: TcxGridDBColumn;
    grid_nnView1WEIGHTDRY: TcxGridDBColumn;
    grid_nnView1ID_OFFICE: TcxGridDBColumn;
    grid_nnView1TNVED: TcxGridDBColumn;
    grid_nnView1NOM_NEW: TcxGridDBColumn;
    grid_nnView1NOM_START: TcxGridDBColumn;
    grid_nnView1NOM_END: TcxGridDBColumn;
    grid_nnView1HOL_COLOR: TcxGridDBColumn;
    grid_nnView1NAME_CODE: TcxGridDBColumn;
    grid_nnView1HOL_PACK: TcxGridDBColumn;
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure A_CtrlEnterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grid_nnView1DblClick(Sender: TObject);
//    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure btn_editNomClick(Sender: TObject);
    procedure CloseFormAction;
    procedure tFindKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure aFilterClearExecute(Sender: TObject);
    procedure aFilterAExecute(Sender: TObject);
    procedure aFilterNExecute(Sender: TObject);
    procedure grid_nnView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    pnl_msg: TPanel;
    main_filter : TcxDBDataFilterCriteria;
  public
    Search_n_id, param_ : integer;
    path: string;
    hcode_filter: string;
    { Public declarations }
    function UpdateInvoice() : boolean;
    function InsertInvoice() : boolean;
    procedure search_execute(param: integer);
  end;

var
  InvoEditF: TInvoEditF;

implementation

uses DataModule, Ora, UFullInfo, Globals, NewDict;

{$R *.dfm}



//
//  Обновление данных
//
procedure TInvoEditF.SpeedButton1Click(Sender: TObject);
begin
  try
    pnl_msg := TPanel(MakePanelLabel(Panel3,300,100,'Идет обработка запроса'));
    pnl_msg.Repaint;

    ReactivateOraQuery(DM.Nomenclature2);

    pnl_msg.Free;
    grid_nn.SetFocus;
  except
    on E: Exception do
    begin
      pnl_msg.Free;
      MessageBox(Handle, PChar('Произошла ошибка!'#10#13 + E.Message), 'Внимание', MB_ICONERROR);
    end;
  end;
end;


//
//  Добавляем инвойс
//
function TInvoEditF.InsertInvoice() : boolean;
VAR
  INVOICE_DATA_ID, N_ID, UNITS, INV_ID : Variant;
  PRICE_PER_UNIT, TOTAL_SUM : Real;
  msg : String;
  PRICE_SPECIAL : integer;
  cds: TOraQuery;
Begin

  Panel2.Visible := false;
  Edit1.Value := 0;
  Edit2.Value := 0;
  DM.n_id_    := -1;

//  DM.Nomenclature_one.Close;
  WindowState := wsMaximized;
//  grid_nnView1.DataController.DataSource := DM.Nomenclature2_DS;

  btn_refresh.Enabled := true;
  A_refresh.Enabled   := btn_refresh.Enabled;
  BitBtn3.Enabled     := true;
  BitBtn4.Enabled     := true;
  param_              := 1;

  while ShowModal = mrOk do
  Begin
    cds := (grid_nnView1.DataController.DataSet as TOraQuery);
    if (cds.Active = true) and (cds.RecordCount > 0) then
    begin

      try
        INV_ID  := DM.InvoiceRegister.FieldByName('INV_ID').Value;
        N_ID    := cds.FieldByName('N_ID').Value;

        msg     := 'Неправильно введено кол-во цветов!';
        UNITS   := Edit1.Value; // StrToInt(Edit1.Text);
        msg     := 'Неправильно введена цена!';
        PRICE_PER_UNIT := Edit2.Value; // StrToFloat(Edit2.Text);
        TOTAL_SUM      := FloatToCurr(UNITS * PRICE_PER_UNIT);
        PRICE_SPECIAL  := chbNewNom.EditValue;
      except
        ShowMessage(msg);
        Continue;
      End;

      with DM.SelQ do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('begin INVOICE_DATA_PACKAGE.INSERT_DATA(:IN_INV_ID,:IN_INVOICE_DATA_AS_IS_ID,:IN_N_ID,:IN_UNITS,:IN_PRICE_PER_UNIT,:IN_TOTAL_SUM,:IN_AMOUNT_IN_THE_PACK,:IN_STORN,:IN_GTD,:IN_GTD_COUNTRY,:IN_NEW,:IN_SPEC,:IN_CLIENT,:IN_parent,:OUT_INVOICE_DATA_ID); end;');
          ParamByName('IN_INV_ID').AsInteger                := INV_ID;
          ParamByName('IN_INVOICE_DATA_AS_IS_ID').Value     := NULL;
          ParamByName('IN_N_ID').AsInteger                  := N_ID;
          ParamByName('IN_UNITS').AsInteger                 := UNITS;
          ParamByName('IN_PRICE_PER_UNIT').AsFloat          := PRICE_PER_UNIT;
          ParamByName('IN_TOTAL_SUM').AsFloat               := TOTAL_SUM;
          ParamByName('IN_AMOUNT_IN_THE_PACK').Value        := NULL;
          ParamByName('IN_STORN').AsInteger                 := 0;
          ParamByName('IN_GTD').Value                       := NULL;
          ParamByName('IN_GTD_COUNTRY').AsInteger           := 0;

          ParamByName('IN_NEW').AsInteger                   := 0;
          ParamByName('IN_SPEC').AsInteger                  := PRICE_SPECIAL;
          ParamByName('IN_CLIENT').AsString                 := '';

          ParamByName('IN_parent').value                    := NULL;

          ParamByName('OUT_INVOICE_DATA_ID').AsInteger      := 0;
          Execute;
          INVOICE_DATA_ID := ParamByName('OUT_INVOICE_DATA_ID').Value;

          DM.Nomenclature2.ParamByName('n_id_').AsInteger := N_ID;
          DM.Nomenclature2.RefreshRecord;
          DM.Nomenclature2.ParamByName('n_id_').AsInteger := 0;


        End;
      DM.InvoiceRegister.RefreshRecord;
      DM.InvoiceData.Refresh;
      DM.InvoiceData.Locate('INVOICE_DATA_ID',INVOICE_DATA_ID,[]);
      CloseFormAction;
      Break;

    end;
  End;
End;



//
//  Редактируем инвойс
//
function TInvoEditF.UpdateInvoice() : boolean;
VAR
  INVOICE_DATA_ID : Integer;
  N_ID,N_ID_NEW, UNITS_NEW: Integer;
  PRICE_PER_UNIT_NEW, TOTAL_SUM_NEW : Real;
  msg, err_msg : String;
  res,ResText,NewInvoiceDataId : Variant;
  cds: TOraQuery;
Begin
  Panel2.Visible := true;

  INVOICE_DATA_ID := DM.InvoiceData.FieldByName('INVOICE_DATA_ID').Value;
  N_ID := DM.InvoiceData.FieldByName('N_ID').Value;
  Edit1.Value := DM.InvoiceData.FieldByName('UNITS').Value;
  Edit2.Value := DM.InvoiceData.FieldByName('PRICE_PER_UNIT').Value;

  DM.n_id_ := N_ID;
  WindowState := wsMaximized;

  btn_refresh.Enabled := false;
  A_refresh.Enabled   := btn_refresh.Enabled;
  BitBtn3.Enabled     := false;
  BitBtn4.Enabled     := false;

  while ShowModal = mrOk do
    Begin
      cds := (grid_nnView1.DataController.DataSet as TOraQuery);
      try
        N_ID_NEW  := cds.FieldByName('N_ID').Value;
        msg       := 'Неправильно введено кол-во товара!';
        UNITS_NEW := Edit1.Value; // StrToInt(Edit1.Text);
        msg       := 'Неправильно введена цена!';
        PRICE_PER_UNIT_NEW  := Edit2.Value; // StrToFloat(Edit2.Text);
        TOTAL_SUM_NEW       := UNITS_NEW * PRICE_PER_UNIT_NEW;
      except
        ShowMessage(msg);
        Continue;
      End;


      err_msg := '';
      with DM.SelQ do
        Begin
          Close;
          SQL.Clear;
          SQL.Add( 'select count(*) as cnt from prepare_distribution where INVOICE_DATA_ID = '+IntToStr(INVOICE_DATA_ID) );
          SQL.Add( 'union all' );
          SQL.Add( 'select count(*) as cnt from prepare_distribution a, distributions_webshop b where a.INVOICE_DATA_ID = '+IntToStr(INVOICE_DATA_ID)+' and a.dist_ind_id = b.dist_ind_id and a.n_id = b.n_id' );
          Open;
          if (FieldByName('cnt').AsInteger > 0) then
          begin
            next;
            if (FieldByName('cnt').AsInteger > 0) then
              err_msg := 'Позиция уже участвует в разносе!' + #10#13 + 'Позиция участвует в продажах с колес!' + #10#13 + 'Продолжить?'
            else
              err_msg := 'Позиция уже участвует в разносе!' + #10#13 + 'Продолжить?';

            if MessageDlg(err_msg,  mtConfirmation, [mbOk, mbNo], 0) = mrNo then Break;
          end;
        End;


      with DM.SelQ do
        Begin
          Close;
          SQL.Clear;
          if (DM.InvoiceRegister.FieldByName('IS_MINUS').AsInteger = 0) then
            SQL.Add('begin INVOICE_DATA_PACKAGE.UPDATE_DATA(:IN_INVOICE_DATA_ID, :IN_N_ID, :IN_UNITS, :IN_PRICE_PER_UNIT, :IN_TOTAL_SUM, :IN_AMOUNT_IN_THE_PACK, :OUT_INVOICE_DATA_ID, :OUT_RES, :OUT_TEXT); end;')
          else
            SQL.Add('begin INVOICE_PKG.UPDATE_DATA(:IN_INVOICE_DATA_ID, :IN_N_ID, :IN_UNITS, :IN_PRICE_PER_UNIT, :IN_TOTAL_SUM, :IN_AMOUNT_IN_THE_PACK, :OUT_INVOICE_DATA_ID, :OUT_RES, :OUT_TEXT); end;');
          ParamByName('IN_INVOICE_DATA_ID').AsInteger := INVOICE_DATA_ID;
          ParamByName('IN_N_ID').AsInteger            := N_ID_NEW;
          ParamByName('IN_UNITS').AsInteger           := UNITS_NEW;
          ParamByName('IN_PRICE_PER_UNIT').AsFloat    := PRICE_PER_UNIT_NEW;
          ParamByName('IN_TOTAL_SUM').AsFloat         := TOTAL_SUM_NEW;
          ParamByName('IN_AMOUNT_IN_THE_PACK').Value  := NULL;
          ParamByName('OUT_INVOICE_DATA_ID').AsInteger := 0;
          ParamByName('OUT_RES').AsInteger            := 0;
          ParamByName('OUT_TEXT').AsString            := '';
          Execute;
          res := ParamByName('OUT_RES').Value;
          ResText := ParamByName('OUT_TEXT').Value;
          NewInvoiceDataId := ParamByName('OUT_INVOICE_DATA_ID').Value;
          if res = 0 then
            Begin
              ShowMessage(ResText);
              Continue;
            End;
          DM.InvoiceRegister.RefreshRecord;
          DM.InvoiceData.Refresh;
          DM.InvoiceData.Locate('INVOICE_DATA_ID',NewInvoiceDataId,[]);

          DM.Nomenclature2.ParamByName('n_id_').AsInteger := N_ID;
          DM.Nomenclature2.RefreshRecord;
          DM.Nomenclature2.ParamByName('n_id_').AsInteger := 0;
        End;


//      CloseFormAction;
      Break;
    End;
End;


//
//  OK
//
procedure TInvoEditF.BitBtn1Click(Sender: TObject);
begin
  if (Edit1.EditValue = 0) or (Edit2.EditValue = 0) then
  begin
    if MessageDlg('Вы указали нулевые значения! Продолжить?',  mtConfirmation, [mbOk, mbNo], 0) = mrOk then
      ModalResult := mrOk;
  end
  else ModalResult := mrOk;
end;


//
//  Новая позиция
//
procedure TInvoEditF.BitBtn3Click(Sender: TObject);
var i: integer;
begin
  NewD          := TNewD.Create(Application);
  NewD.Panel1.Font.Size := grid_nn.Font.Size;
  NewD.editing  := false;
  NewD.N_ID_    := -1;
  NewD.OUT_ID   := 0;
  NewD.cds      := (grid_nnView1.DataController.DataSet as TOraQuery);
  DM.n_id_      := -1;

  if ( NewD.ShowModal = mrOk ) then
  begin
    CloseFormAction;

    DM.Nomenclature_one.Close;
    DM.Nomenclature_one.ParamByName('n_id_').Value := NewD.OUT_ID;
    DM.Nomenclature_one.Open;

    DM.Nomenclature2.Insert;
    for i := 0 to DM.Nomenclature_one.FieldCount - 1 do
      DM.Nomenclature2.Fields[i].value := DM.Nomenclature_one.Fields[i].value;
    DM.Nomenclature2.Post;

    DM.n_id_      := NewD.OUT_ID;
    grid_nnView1.DataController.LocateByKey(NewD.OUT_ID);
{  2011.08.21
    grid_nnView1.DataController.Filter.Clear;
    niN_ID.DataBinding.AddToFilter(nil, foEqual, NewD.OUT_ID );
    niN_ID.DataBinding.Filter.Active := true;
}
  end;

  NewD.Free;
  grid_nn.SetFocus;
end;


//
//  Новая из текущей
//
procedure TInvoEditF.BitBtn4Click(Sender: TObject);
var
 arRec: Variant;
 i: integer;
begin
  if (grid_nnView1.DataController.DataSet.Active = true) and (grid_nnView1.ViewData.RowCount > 0) then
  begin
    NewD          := TNewD.Create(Application);
    NewD.Panel1.Font.Size := grid_nn.Font.Size;
    NewD.editing  := true;
    NewD.N_ID_    := -1;
    NewD.OUT_ID   := 0;
    NewD.cds      := (grid_nnView1.DataController.DataSet as TOraQuery);
    DM.n_id_      := -1;

    if ( NewD.ShowModal = mrOk ) then
    begin
      CloseFormAction;

      DM.Nomenclature_one.Close;
      DM.Nomenclature_one.ParamByName('n_id_').Value := NewD.OUT_ID;
      DM.Nomenclature_one.Open;
{
      DM.Nomenclature2.Insert;
      for i := 0 to DM.Nomenclature_one.FieldCount - 1 do
        DM.Nomenclature2.Fields[i].value := DM.Nomenclature_one.Fields[i].value;
      DM.Nomenclature2.Post;
}
      ReactivateOraQuery(DM.Nomenclature2);
      if not niH_CODE.DataBinding.Filter.IsEmpty then
      begin
          niH_CODE.DataBinding.AddToFilter(nil, foEqual, DM.Nomenclature_one.Fields[DM.Nomenclature_oneH_CODE.Index].value );
          CloseFormAction;
      end;

      DM.n_id_      := NewD.OUT_ID;
      grid_nnView1.DataController.LocateByKey(NewD.OUT_ID);
{ 2011.08.21
      grid_nnView1.DataController.Filter.Clear;
      niN_ID.DataBinding.AddToFilter(nil, foEqual, NewD.OUT_ID );
      niN_ID.DataBinding.Filter.Active := true;
}      
    end;

    NewD.Free;

  end else ShowMessage('Нет выбранных данных!');
  grid_nn.SetFocus;
end;


//
//  Редактирование номенклатуры
//
procedure TInvoEditF.btn_editNomClick(Sender: TObject);
var
 arRec: Variant;
 i: integer;
begin
  if (grid_nnView1.DataController.DataSet.Active = true) and (grid_nnView1.ViewData.RowCount > 0) then
  begin
    if (DM.id_office <> grid_nnView1.DataController.DataSet.FieldByName('ID_OFFICE').AsInteger) then
    begin
      MessageBox(Handle,'Данная запись не принадлежит главному офису. Редактирование запрещено!','Внимание!',MB_ICONERROR);
      exit;
    end;


    NewD          := TNewD.Create(Application);
    NewD.Panel1.Font.Size := grid_nn.Font.Size;
    NewD.editing  := true;
    NewD.OUT_ID   := 0;
    NewD.N_ID_    := grid_nnView1.DataController.DataSet.FieldByName('N_ID').Value;
    NewD.cds      := (grid_nnView1.DataController.DataSet as TOraQuery);
    NewD.ShowModal;

    NewD.Free;
  end else ShowMessage('Нет выбранных данных!');
  Edit1.SetFocus;
end;





procedure TInvoEditF.A_CtrlEnterExecute(Sender: TObject);
begin
  BitBtn1.SetFocus;
  ModalResult := mrOK;
end;




//
//  Закрываем форму и записываем таблицу
//
procedure TInvoEditF.CloseFormAction;
var
  AStoreKey, ASaveViewName: string;
  AOptions, AOptions2: TcxGridStorageOptions;
begin

{
  if ((grid_nnView1.DataController.DataSource = DM.Nomenclature_one_DS) and (niH_CODE.DataBinding.Filter.FilterText <> '')) then
  begin
    niH_CODE.DataBinding.Filter.Active := true;
    grid_nnView1.DataController.Filter.Active := True;
  end;
  if ((grid_nnView1.DataController.DataSource = DM.Nomenclature_one_DS) and (niS_NAME_RU.DataBinding.Filter.FilterText <> '')) then
  begin
    niS_NAME_RU.DataBinding.Filter.Active := true;
    grid_nnView1.DataController.Filter.Active := True;
  end;
}
{
  if (param_ = 1) then
  begin
    niH_CODE.DataBinding.AddToFilter(nil, foEqual, grid_nnView1.DataController.DataSet.FieldByName('H_CODE').AsString );
    niS_NAME_RU.DataBinding.AddToFilter(nil, foEqual, grid_nnView1.DataController.DataSet.FieldByName('S_NAME_RU').AsString );
    niH_CODE.DataBinding.Filter.Active := true;
    niS_NAME_RU.DataBinding.Filter.Active := true;
  end;
}
{
  if (grid_nnView1.DataController.DataSource = DM.Nomenclature_one_DS) then
  begin
    AStoreKey     := path + '/ini/AddNomsI_'+DM.STAR_DB.Username+'.ini';
    AOptions2     := [];
    ASaveViewName := 'EditNoms';
    grid_nnView1.StoreToIniFile(AStoreKey, True, AOptions2, ASaveViewName)
  end
  else
  begin
    AStoreKey     := path + '/ini/AddNoms_'+DM.STAR_DB.Username+'.ini';
    AOptions      := [gsoUseFilter];
    ASaveViewName := 'AddNoms';
    grid_nnView1.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
  end;
}
  if (DM.n_id_ <= 0 ) then
  begin
{
    if main_filter.FilterText <> '' then
    begin
       grid_nnView1.DataController.Filter.Clear;
       grid_nnView1.DataController.Filter := main_filter;
       grid_nnView1.DataController.Filter.Active := true;
    end;
}

    AStoreKey     := path + '/ini/AddNoms_'+DM.STAR_DB.Username+'.ini';
    AOptions      := [gsoUseFilter];
    ASaveViewName := 'AddNoms';
    grid_nnView1.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
  end;
end;


//
//  Открываем форму и восстанавливаем таблицу
//
procedure TInvoEditF.FormShow(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions, AOptions2: TcxGridStorageOptions;
begin
  path          := ExtractFilePath(Application.ExeName);

  if (DM.n_id_ <= 0 ) then
  begin
//    DM.Nomenclature2.Filter := '';
//    DM.Nomenclature2.Filtered := false;
//    grid_nnView1.DataController.Filter.Active := false;

    AStoreKey     := path + '/ini/AddNoms_'+DM.STAR_DB.Username+'.ini';
    AOptions      := [gsoUseFilter];
    ASaveViewName := 'AddNoms';
    grid_nnView1.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);
    DM.Nomenclature2.Refresh;

    if (Search_n_id > 0) then DM.Nomenclature2.Locate('N_ID',Search_n_id,[]);
    grid_nn.SetFocus;
  end
  else
  begin
    niN_ID.DataBinding.AddToFilter(nil, foEqual, DM.n_id_ );
    niN_ID.DataBinding.Filter.Active := true;
//    grid_nnView1.DataController.LocateByKey(NewD.OUT_ID);
    grid_nn.Enabled := false;
  end;
{
  if (grid_nnView1.DataController.DataSource = DM.Nomenclature_one_DS) then
  begin
    AStoreKey     := path + '/ini/AddNomsI_'+DM.STAR_DB.Username+'.ini';
    AOptions2     := [];
    ASaveViewName := 'EditNoms';
    grid_nnView1.RestoreFromIniFile(AStoreKey, False, False, AOptions2, ASaveViewName);
  end
  else
  begin
    AStoreKey     := path + '/ini/AddNoms_'+DM.STAR_DB.Username+'.ini';
    AOptions      := [gsoUseFilter];
    ASaveViewName := 'AddNoms';
    grid_nnView1.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);
  end;
}
end;



procedure TInvoEditF.grid_nnView1DblClick(Sender: TObject);
begin
  frm_full_info := Tfrm_full_info.Create(Application);
  With frm_full_info do
    Begin
      SelNom.Session := DM.STAR_DB;
      SelNom.ParamByName('N_ID').Value := grid_nnView1.DataController.DataSet.FieldByName('N_ID').AsInteger;
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
procedure TInvoEditF.grid_nnView1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
  frm_full_info := Tfrm_full_info.Create(Application);
  With frm_full_info do
    Begin
      SelNom.Session := DM.STAR_DB;
      SelNom.ParamByName('N_ID').Value := grid_nnView1.DataController.DataSet.FieldByName('N_ID').AsInteger;
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



///
//  Фильтруем данные
//
procedure TInvoEditF.tFindKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  tFind.PostEditValue;

  if (Key = VK_DELETE) then
  begin
    Panel_fill.Visible := false;
    grid_nn.SetFocus;
  end;

  if (Key = VK_RETURN) then
  begin
//    grid_nnView1.DataController.Filter.Clear;
    if (param_ = 1) then
       niH_CODE.DataBinding.AddToFilter(nil, foLike, '%' + trim(tFind.Text) + '%');
    if (param_ = 2) then
       niF_NAME_RU.DataBinding.AddToFilter(nil, foLike, '%' + trim(tFind.Text) + '%');

    grid_nnView1.DataController.Filter.Active := True;

    Panel_fill.Visible := false;
    tFind.EditValue := '';

    grid_nn.SetFocus;
  end;
end;


//
//  Очитска фильтров
//
procedure TInvoEditF.aFilterClearExecute(Sender: TObject);
begin
  grid_nnView1.DataController.Filter.Clear;
end;


//
//  Поиск
//
procedure TInvoEditF.aFilterAExecute(Sender: TObject);
begin
  search_execute(1);
end;
procedure TInvoEditF.aFilterNExecute(Sender: TObject);
begin
  search_execute(2);
end;
procedure TInvoEditF.search_execute(param: integer);
begin
    param_             := param;
    Panel_fill.Left    := trunc(grid_nn.Width / 2) - 90;
    Panel_fill.Top     := trunc(grid_nn.Height / 2) - 20;
    Panel_fill.Visible := true;
    tFind.SetFocus;
end;






end.
