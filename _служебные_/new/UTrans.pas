unit UTrans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, star_lib, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxImageComboBox, cxLabel, cxButtonEdit,
  ActnList, dxBar, cxBarEditItem, dxBarExtItems, cxClasses, DBAccess, Ora,
  MemDS, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxControls, cxGridCustomView, cxGrid, cxCheckBox;

type
  TfrmTrans = class(TForm)
    grTrans: TcxGrid;
    grTransView: TcxGridDBTableView;
    grTransLevel: TcxGridLevel;
    Q_Trans: TOraQuery;
    Q_Trans_DS: TOraDataSource;
    bmMain: TdxBarManager;
    bmToolBar: TdxBar;
    bmFooter: TdxBar;
    btnRefresh: TdxBarLargeButton;
    btnAdd: TdxBarLargeButton;
    btnEdit: TdxBarLargeButton;
    btnDelete: TdxBarLargeButton;
    imgOffice: TcxBarEditItem;
    imgOtdel: TcxBarEditItem;
    btnHelp: TdxBarLargeButton;
    btnExit: TdxBarLargeButton;
    cxBarEditItem3: TcxBarEditItem;
    cxBarEditItem4: TcxBarEditItem;
    cxBarEditItem1: TcxBarEditItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    cxBarEditItem2: TcxBarEditItem;
    btnHotKeys: TdxBarButton;
    AlMain: TActionList;
    aRefresh: TAction;
    aNew: TAction;
    aEdit: TAction;
    aDelete: TAction;
    aExit: TAction;
    SelQ: TOraQuery;
    grTransNN: TcxGridDBColumn;
    grTransData: TcxGridDBColumn;
    grTransNick: TcxGridDBColumn;
    grTransFioCl: TcxGridDBColumn;
    grTransFIOmen: TcxGridDBColumn;
    grTransFIOtaxi: TcxGridDBColumn;
    grTransStat: TcxGridDBColumn;
    cxStyleRepository2: TcxStyleRepository;
    gotovo: TcxStyle;
    prinat: TcxStyle;
    vputi: TcxStyle;
    net: TcxStyle;
    grTransAdres: TcxGridDBColumn;
    grTransDataDostav: TcxGridDBColumn;
    grTransKem: TcxGridDBColumn;
    grTransKomy: TcxGridDBColumn;
    peredan: TcxStyle;
    dxBarColorCombo1: TdxBarColorCombo;
    dxBarStatic1: TdxBarStatic;
    dxBarStatic2: TdxBarStatic;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarStatic5: TdxBarStatic;
    dxBarStatic6: TdxBarStatic;
    dxBarStatic7: TdxBarStatic;
    dxBarStatic8: TdxBarStatic;
    dxBarStatic9: TdxBarStatic;
    deTransBegin: TdxBarDateCombo;
    deTransEnd: TdxBarDateCombo;
    Q_TransN_ID: TFloatField;
    Q_TransON_DATE: TStringField;
    Q_TransNICK_: TStringField;
    Q_TransFIO_CL: TStringField;
    Q_TransFIO_MEN: TStringField;
    Q_TransN_MASH: TStringField;
    Q_TransSTAT: TStringField;
    Q_TransADR: TStringField;
    Q_TransEND_DATE: TStringField;
    Q_TransFIO_KEM: TStringField;
    Q_TransFIO_KOMY: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure aExitExecute(Sender: TObject);
    procedure btnHotKeysClick(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure grTransViewCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure grTransStatGetCellHint(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
      const AMousePos: TPoint; var AHintText: TCaption;
      var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
    procedure aNewExecute(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure aDeleteExecute(Sender: TObject);
  private
    { Private declarations }
    p_read, p_edit, p_delete, p_print: boolean;
  public
    { Public declarations }
    id_office: integer;
    function MainFormShow : boolean;
  end;

var
  frmTrans: TfrmTrans;
  dr:integer;

implementation

{$R *.dfm}

uses umain, UDM, UHotKeys, uEditTrans;

//!!! удалять - только из  status_z
procedure TfrmTrans.aDeleteExecute(Sender: TObject);
 var stroka, stroka2 : string;
begin
try
stroka:= grTransView.Controller.FocusedRow.Values[0];
//stroka2:= grTransView.Controller.FocusedRow.Values[1];
//проверка - есть ли запись в status_z :
  selq.Close;
  selq.SQL.Clear;
  //selq.SQL.add('select count(*) as p1 from status_z where n_id='+stroka+' and on_date='+#39+stroka2+#39);
  selq.SQL.add('select count(*) as p1 from status_z where n_id='+stroka);
  selq.Open;
if selq.FieldByName('p1').AsInteger>0 then begin
  selq.Close;
  selq.SQL.Clear;
  //selq.SQL.add('delete from status_z where n_id='+stroka+' and on_date='+#39+stroka2+#39);
  selq.SQL.add('delete from status_z where n_id='+stroka);
  selq.Execute;
  dm.OraSession.commit;
  Q_TRANS.Refresh
end else showmessage('нельзя удалить запись');
except
  on E: Exception do ShowMessage('Ошибка! ' + E.Message);
end;
end;

procedure TfrmTrans.aEditExecute(Sender: TObject);
begin
try
  dr:=2;
  frmEditTrans.ed2.Text := Q_TRANS.FieldByName('NICK_').asstring; //Q_TRANS.FieldByName('NICK').asstring;//
  frmEditTrans.ed3.Text := Q_TRANS.FieldByName('FIO_CL').asstring;//Q_TRANS.FieldByName('FIO').asstring;
  frmEditTrans.ed4.Text := Q_TRANS.FieldByName('FIO_MEN').asstring;//Q_TRANS.FieldByName('OPERATOR_NAME').asstring;
  frmEditTrans.ed5.Text := Q_TRANS.FieldByName('N_MASH').asstring;
  frmEditTrans.ed6.Text := Q_TRANS.FieldByName('ADR').asstring;
  frmEditTrans.ed7.Text := Q_TRANS.FieldByName('END_DATE').asstring;
  frmEditTrans.ed8.Text := Q_TRANS.FieldByName('FIO_KEM').asstring;
  frmEditTrans.ed9.Text := Q_TRANS.FieldByName('FIO_KOMY').asstring;
  if Q_TRANS.FieldByName('STAT').asstring='1'  then  frmEditTrans.cxcombobox1.Text := 'выполнен';
  if Q_TRANS.FieldByName('STAT').asstring='2'  then  frmEditTrans.cxcombobox1.Text := 'в пути';
  if Q_TRANS.FieldByName('STAT').asstring='0'  then  frmEditTrans.cxcombobox1.Text := 'принят';
  if Q_TRANS.FieldByName('STAT').asstring='3'  then  frmEditTrans.cxcombobox1.Text := 'передан';
  frmEditTrans.ed1.Text := Q_TRANS.FieldByName('N_ID').value;//Q_TRANS.FieldByName('DOC_NUMBER').value;
 try
  frmEditTrans.cxdateedit1.Date:=strtodate(copy(Q_TRANS.FieldByName('ON_DATE').asstring,1,pos(' ',Q_TRANS.FieldByName('ON_DATE').asstring)-1));//strtodate(Q_TRANS.FieldByName('DOC_DATE').asstring);
  frmEditTrans.cxTimeEdit1.Time:=strtotime(copy(Q_TRANS.FieldByName('ON_DATE').asstring,pos(' ',Q_TRANS.FieldByName('ON_DATE').asstring)+1,length(Q_TRANS.FieldByName('ON_DATE').asstring)-pos(' ',Q_TRANS.FieldByName('ON_DATE').asstring)));
 except
  frmEditTrans.cxdateedit1.Date:=now;
  frmEditTrans.cxTimeEdit1.Time:=now;
  showmessage('error data');
 end;
  frmEditTrans.Showmodal;
  Q_TRANS.Refresh;
finally
  grTrans.SetFocus;
end;
end;

procedure TfrmTrans.aExitExecute(Sender: TObject);
begin
 close;
end;

procedure TfrmTrans.aNewExecute(Sender: TObject);
begin
try
 dr:=1;
 frmEditTrans.cxdateedit1.Date:=now;
 frmEditTrans.cxTimeEdit1.Time:=now;
 frmEditTrans.ed1.Text := '';
 frmEditTrans.ed2.Text := '';
 frmEditTrans.ed3.Text := '';
 frmEditTrans.ed4.Text := '';
 frmEditTrans.ed5.Text := '';
 frmEditTrans.ed6.Text := '';
 frmEditTrans.ed7.Text := '';
 frmEditTrans.ed8.Text := '';
 frmEditTrans.ed9.Text := '';
 frmEditTrans.cxComboBox1.Text:='принят';
 frmEditTrans.Showmodal;
 Q_TRANS.Refresh;
finally
 grTrans.SetFocus;
end;
end;

procedure TfrmTrans.aRefreshExecute(Sender: TObject);
begin
  Q_TRANS.Close;
  Q_TRANS.ParamByName('date_begin').asdate  := deTransBegin.curdate;
  Q_TRANS.ParamByName('date_end').asdate    := deTransEnd.curdate;
  Q_TRANS.Open;
  grTrans.SetFocus;
end;

procedure TfrmTrans.btnHotKeysClick(Sender: TObject);
begin
  frmHotKeys.MainFormShow;
end;

procedure TfrmTrans.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('Закрыть программу?',mtConfirmation,[mbYes, mbNo],0) <> mrYes then
   Action := caNone
  else
  begin
   SaveFormState(frmTrans);  //полож.окна
   frmTrans := nil;
   Action := caFree;
  end;
end;

procedure TfrmTrans.FormCreate(Sender: TObject);
   var recUserRules : TUserRules;
begin
 Application.CreateForm(TfrmEditTrans, frmEditTrans);
 grTrans.Font.Size := intDefFont;

  // получение прав на программу  -- временно уберу
 { recUserRules  := getRules(DM.cdsRules,4);
  p_read        := recUserRules.r_read;
  p_edit        := recUserRules.r_edit;
  p_delete      := recUserRules.r_delete;
  p_print       := recUserRules.r_print;

  aNew.Enabled    := p_edit;
  aEdit.Enabled   := p_edit;
  aDelete.Enabled := p_delete;  }
end;

procedure TfrmTrans.FormShow(Sender: TObject);
begin
  if (imgOffice.Enabled) then
  begin
   try
    deTransBegin.Text := DateToStr(Now - 14);
    deTransEnd.Text   := DateToStr(Now);
    
    id_office := GetOfficeID;
    imgOffice.Enabled := (id_office = 1);

    imgOffice.Properties.OnChange := nil;
    SelQ.Close;
    SelQ.SQL.Clear;
    SelQ.SQL.Add('SELECT ID_OFFICE, OFFICE_NAME FROM OFFICES ORDER BY OFFICE_NAME');
    SelQ.Open;
    SelQ.Close;
    imgOffice.EditValue := id_office;

    aRefresh.Execute;
   except
    on E: Exception do ShowMessage(E.Message);
   end;
  end;
end;

procedure TfrmTrans.grTransStatGetCellHint(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; ACellViewInfo: TcxGridTableDataCellViewInfo;
  const AMousePos: TPoint; var AHintText: TCaption;
  var AIsHintMultiLine: Boolean; var AHintTextRect: TRect);
var str_tmp: Variant;
    str_text: string;
begin
  try
      str_tmp := grTransView.DataController.GetValue(
                ACellViewInfo.GridRecord.RecordIndex, grTransView.GetColumnByFieldName('STAT').Index
                );
      if (str_tmp = 'выполнен') then str_text := str_text + 'выполнен' else
      if (str_tmp = 'в пути') then str_text := str_text + 'в пути'   else
      if (str_tmp = 'принят') then str_text := str_text + 'принят к рассмотрению' else
      if (str_tmp = 'передан') then str_text := str_text + 'передан';
      //str_text := str_text + 'данные отсутствуют';

    AHintText := str_text;
  except
    AHintText := '';
  end;
end;

procedure TfrmTrans.grTransViewCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var val1: variant;
begin
val1  := grTransView.DataController.GetValue(
         AViewInfo.GridRecord.RecordIndex, grTransView.GetColumnByFieldName('STAT').Index
                );
if val1='выполнен' then ACanvas.Brush.Color := gotovo.Color else
if val1='в пути' then ACanvas.Brush.Color := vputi.Color else
if val1='принят' then ACanvas.Brush.Color := prinat.Color else
if val1='передан' then ACanvas.Brush.Color := peredan.Color;
 //ACanvas.Brush.Color := net.Color;
end;


function TfrmTrans.MainFormShow : boolean;
Begin
 if not Assigned(frmTrans) then
  begin
    frmTrans := TfrmTrans.Create(Application);
    try
      frmTrans.Show;
      LoadFormState(frmTrans); //полож.окна
    finally
      null;
    end;
  end
  else
    if (frmTrans.WindowState = wsMinimized) then frmTrans.WindowState := wsNormal;
end;


end.
