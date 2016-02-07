unit WhatToDoU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, PI_library,
  ActnList, ImgList, Menus, cxLookAndFeelPainters,
  cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxCheckBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, cxImageComboBox, cxLabel;

type
  TWhatToDo = class(TForm)
    Panel3: TPanel;
    Panel4: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Bevel1: TBevel;
    ActionList1: TActionList;
    a_add: TAction;
    a_open: TAction;
    a_delete: TAction;
    CheckList: TImageList;
    CheckBox1: TCheckBox;
    BitBtn1: TcxButton;
    Edit2: TcxSpinEdit;
    Edit3: TcxSpinEdit;
    Edit4: TcxSpinEdit;
    BitBtn2: TcxButton;
    BitBtn3: TcxButton;
    BitBtn4: TcxButton;
    BitBtn5: TcxButton;
    cxButton2: TcxButton;
    Label7: TLabel;
    cxButton1: TcxButton;
    gd_prices: TcxGrid;
    gd_prices_v: TcxGridDBTableView;
    gd_prices_l: TcxGridLevel;
    gd_prices_vPPLI_ID: TcxGridDBColumn;
    gd_prices_vPPL_COMMENT: TcxGridDBColumn;
    gd_prices_vPPL_DATE: TcxGridDBColumn;
    gd_prices_vPRIME_COAST_COEFFICIENT: TcxGridDBColumn;
    gd_prices_vPROFIT_COEFFITIENT: TcxGridDBColumn;
    gd_prices_vEXCHANGE_RATE: TcxGridDBColumn;
    gd_prices_vFINISHED: TcxGridDBColumn;
    gd_prices_vUSE_CUST_COEF: TcxGridDBColumn;
    gd_prices_vID_DEPARTMENTS: TcxGridDBColumn;
    gd_prices_vINV_ID: TcxGridDBColumn;
    gd_prices_vINV_DATE: TcxGridDBColumn;
    gd_prices_vSENDED_TO_WAREHOUSE: TcxGridDBColumn;
    gd_prices_vS_NAME_RU: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    gd_prices_vIS_MINUS: TcxGridDBColumn;
    gd_prices_vCOMMENTS: TcxGridDBColumn;
    gd_prices_vINV_ID1: TcxGridDBColumn;
    gd_prices_vINV_ID2: TcxGridDBColumn;
    gd_prices_vINV_ID3: TcxGridDBColumn;
    gd_prices_vINV_ID4: TcxGridDBColumn;
    gd_prices_vPACK_ID: TcxGridDBColumn;
    gd_prices_vPPLI_ID_OLD: TcxGridDBColumn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure gd_prices_vKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gd_prices_vDblClick(Sender: TObject);
  private
    { Private declarations }
    out_ppli_id, out_success : integer;
  public
    { Public declarations }
    function AskWhatToDo(OUT PPLI_ID : integer) : boolean;
  end;

var
  WhatToDo: TWhatToDo;

implementation

uses DataModule, Ora, Globals, InvoChooseU;


//
//  Открываем форму
//
function TWhatToDo.AskWhatToDo(OUT PPLI_ID : integer) : boolean;
var
  res : word;
  SavePlace: TBookmark;
Begin
  with DM.PPL_Index do
    if DM.PPL_Index.Active and (DM.PPL_Index.RecordCount > 0) then
    begin
      SavePlace := DM.PPL_Index.GetBookmark;
      ReactivateOraQuery(DM.PPL_Index);
      if (DM.PPL_Index.RecordCount > 0) then
          DM.PPL_Index.GotoBookmark(SavePlace);
      DM.PPL_Index.FreeBookmark(SavePlace);
    end
    else
      ReactivateOraQuery(DM.PPL_Index);
  res := ShowModal;
  if (res <> mrOk) or (out_success = 0) then
    Begin
      result := false;
      exit;
    End
  else
    Begin
      result := true;
      PPLI_ID := out_ppli_id;
    End;
End;

{$R *.dfm}


//
//  Создаем новый прайс 
//
procedure TWhatToDo.BitBtn2Click(Sender: TObject);
VAR
  in_ppl_comment, in_prime_coast_coeffitient,in_profit_coeffitient,
  in_exchange_rate, in_use_cust_coef : variant;
begin
  try
    in_ppl_comment              := StrToVar(Edit1.Text);
    in_prime_coast_coeffitient  := Edit2.Value; //StrToVarFloat(Edit2.Text);
    if in_prime_coast_coeffitient = null then
      Begin
        Edit2.Style.Color := clRed;
        abort;
      End
    else Edit2.Style.Color   := clWindow;
    in_profit_coeffitient    := Edit3.Value;
    if in_profit_coeffitient = null then
    Begin
        Edit3.Style.Color    := clRed;
        abort;
      End
    else Edit3.Style.Color  := clWindow;
    in_exchange_rate        := Edit4.Value;;
    in_use_cust_coef        := BoolToInt(CheckBox1.Checked);
    if in_exchange_rate = null then
    Begin
        Edit4.Style.Color := clRed;
        abort;
      End
    else Edit4.Style.Color := clWindow;
    with DM.CreatePPLIndex do
      Begin
        Prepare;
        FindParam('in_ppl_comment').Value             := in_ppl_comment;
        FindParam('in_prime_coast_coeffitient').Value := in_prime_coast_coeffitient;
        FindParam('in_profit_coeffitient').Value      := in_profit_coeffitient;
        FindParam('in_exchange_rate').Value           := in_exchange_rate;
        FindParam('in_use_cust_coef').Value           := in_use_cust_coef;
        FindParam('in_id_departments').Value          := CUR_DEPT_ID;
        ExecProc;
        out_ppli_id := FindParam('out_ppli_id').Value;
        out_success := FindParam('out_success').Value;
        if (FindParam('mess_').Value <> '') then MessageBox(Handle, PChar(FindParam('mess_').AsString), 'Ощибка!', MB_ICONERROR)
        else
        begin
          if out_success = 1 then DM.PPL_Index.Refresh;
          ModalResult := mrOk;
        end;
      End;
  except on E: Exception do
    MessageBox(Handle, PChar(E.Message), 'Ощибка!', MB_ICONERROR)
  End;
end;


//
//  Выбираем прайс 
//
procedure TWhatToDo.BitBtn3Click(Sender: TObject);
begin
  if DM.PPL_IndexPPLI_ID.AsInteger > 0 then
    begin
      out_ppli_id := DM.PPL_Index.FieldByName('PPLI_ID').Value;
      out_success := 1;
      ModalResult := mrOk;
    end
  else ShowMessage('Нет данных для просмотра!');
end;

procedure TWhatToDo.gd_prices_vDblClick(Sender: TObject);
begin
  BitBtn3Click(Sender);
end;

procedure TWhatToDo.gd_prices_vKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
     BitBtn3Click(Sender);
end;



//
//  Удаляем прайс 
//
procedure TWhatToDo.BitBtn4Click(Sender: TObject);
var
  res : word;
begin
  if DM.PPL_IndexPPLI_ID.AsInteger > 0 then
  begin
    res := MessageDlg('Удалить прайс?', mtConfirmation, [mbNo,mbOk], 0, mbOk);

    if res = mrOk then
    begin
      if ({(DM.PPL_IndexFINISHED.AsInteger = 1) or} (DM.PPL_IndexSENDED_TO_WAREHOUSE.AsInteger = 1)) then
        MessageBox(Handle,'Нельзя удалить оконченный прайс-лист или инвойс подгруженный на склад','Внимение',MB_ICONWARNING)
      else
      begin
        with DM.ForceQ do
        Begin
          SQL.Clear;
          SQL.Add('begin PRICE_PKG.DEL_PRICE(:PPLI_ID_, :MESS_); end;');
          ParamByName('PPLI_ID_').Value := DM.PPL_Index.FieldByName('PPLI_ID').Value;
          ParamByName('MESS_').Value    := '';
          ExecSQL;
          if (FindParam('mess_').Value <> '') then
            MessageBox(Handle, PChar(FindParam('mess_').AsString), 'Ощибка!', MB_ICONERROR)
          else
            Dm.PPL_Index.Refresh;
        End;
      end;
    end; // if res = mrOk then
  end
  else ShowMessage('Нет данных для удаления!');
end;


//
//  Копируем параметры
//
procedure TWhatToDo.BitBtn5Click(Sender: TObject);
begin
  if DM.PPL_IndexPPLI_ID.AsInteger > 0 then
  begin
    with DM.PPL_Index do
    Begin
      Edit1.Text        := FieldByName('PPL_COMMENT').AsString;
      Edit2.EditValue   := FieldByName('PRIME_COAST_COEFFICIENT').Value;
      Edit3.EditValue   := FieldByName('PROFIT_COEFFITIENT').Value;
      Edit4.EditValue   := FieldByName('EXCHANGE_RATE').Value;
      CheckBox1.Checked := (FieldByName('USE_CUST_COEF').Value = 1);
    End;
  end
  else ShowMessage('Нет данных для копирования!');
end;


//
//  Обновляем данные
//
procedure TWhatToDo.cxButton2Click(Sender: TObject);
begin
  DM.PPL_Index.Refresh;
end;


//
//  Вставляем курс вылюты
//
procedure TWhatToDo.FormCreate(Sender: TObject);
begin
  BitBtn2.Enabled := ed;
  BitBtn5.Enabled := ed;
  BitBtn4.Enabled := del;

  try
    DM.ForceQ.SQL.Clear;
    DM.ForceQ.SQL.Add('begin dicts.get_curse(:ddate_, :CURSOR_); end;');
    DM.ForceQ.ParamByName('ddate_').AsDate := Now;
    DM.ForceQ.ParamByName('CURSOR_').AsCursor;
    DM.ForceQ.Open;
    Edit4.Value := DM.ForceQ.FieldByName('SHEV_EUR').AsCurrency;
    if Edit4.Value = 0 then Edit4.Value := 1;
    
  except on E: Exception do
      MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR)
  end;
end;



//
//  Статистика
//
procedure TWhatToDo.cxButton1Click(Sender: TObject);
begin
  InvoChoose := TInvoChoose.Create(Application);
  try
    DM.ForceQ.Close;
    DM.ForceQ.SQL.Clear;
    DM.ForceQ.SQL.Add('begin price_pkg.get_price_stat(:id_dep_, :CURSOR_); end;');
    DM.ForceQ.ParamByName('id_dep_').Value := CUR_DEPT_ID;
    DM.ForceQ.ParamByName('CURSOR_').AsCursor;
    DM.ForceQ.Open;

    InvoChoose.gd_invoice_v.DataController.DataSource := DM.OraDataSource1;
    InvoChoose.BitBtn1.Visible      := false;
    InvoChoose.Caption              := 'Список инвойсов без цен';
    InvoChoose.ShowModal;
    DM.ForceQ.Close;
    InvoChoose.gd_invoice_v.DataController.DataSource := DM.InvoReg_DS;
    InvoChoose.Free;
  except on E: Exception do
    begin
      InvoChoose.Free;
      MessageBox(Handle, PChar(E.Message), 'Ошибка!', MB_ICONERROR)
    end;
  end;
end;

end.
