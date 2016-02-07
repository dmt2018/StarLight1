unit UOrders;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxProgressBar, cxLabel, cxDropDownEdit, cxImageComboBox,
  cxTextEdit, cxControls, cxContainer, cxEdit, cxMaskEdit, cxCalendar, StdCtrls,
  Buttons, ExtCtrls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxImage, cxCheckBox, cxCurrencyEdit, GridsEh, DBGridEh, MemDS,
  DBAccess, Ora, cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomView, cxGrid, cxClasses, cxGridLevel,
  cxSplitter, DBTables, ActnList, PI_library, IniFiles, Menus, EhLibBDE,
  cxGridExportLink, ShellAPI, DBGridEhImpExp, DBGridEhGrouping;

type
  TfrmOrder = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Image5: TImage;
    Image1: TImage;
    btnSave: TBitBtn;
    DateTimePicker1: TcxDateEdit;
    DateTimePicker2: TcxDateEdit;
    ed_comment: TcxTextEdit;
    ed_suplier: TcxTextEdit;
    icb_suplier: TcxImageComboBox;
    Panel3: TPanel;
    btnClose: TBitBtn;
    pnl_progress: TPanel;
    Label2: TLabel;
    pg_main: TcxProgressBar;
    btnLoad: TBitBtn;
    qOrder: TQuery;
    DataSource2: TDataSource;
    odOrder: TOpenDialog;
    pnlDBF: TPanel;
    cxSplitter1: TcxSplitter;
    pnlMain: TPanel;
    gr_noms: TcxGrid;
    gr_noms_l: TcxGridLevel;
    gvr_nomenclature: TcxGridViewRepository;
    gr_noms_v: TcxGridDBBandedTableView;
    gr_image: TcxGridDBBandedColumn;
    gr_noms_vCOMPILED_NAME_OTDEL: TcxGridDBBandedColumn;
    gr_noms_vH_CODE: TcxGridDBBandedColumn;
    gr_noms_vIS_PHOTO: TcxGridDBBandedColumn;
    gr_noms_vF_NAME: TcxGridDBBandedColumn;
    gr_noms_vHOL_TYPE: TcxGridDBBandedColumn;
    gr_noms_vNAME_CODE: TcxGridDBBandedColumn;
    gr_noms_vBAR_CODE: TcxGridDBBandedColumn;
    gr_noms_vREMARKS: TcxGridDBBandedColumn;
    gr_noms_vS_NAME_RU: TcxGridDBBandedColumn;
    gr_noms_vF_NAME_RU: TcxGridDBBandedColumn;
    gr_noms_vF_TYPE: TcxGridDBBandedColumn;
    gr_noms_vF_SUB_TYPE: TcxGridDBBandedColumn;
    gr_noms_vCOUNTRY: TcxGridDBBandedColumn;
    gr_noms_vCOLOUR: TcxGridDBBandedColumn;
    gr_noms_vCODE: TcxGridDBBandedColumn;
    gr_noms_vLEN: TcxGridDBBandedColumn;
    gr_noms_vDIAMETER: TcxGridDBBandedColumn;
    gr_noms_vN_ID: TcxGridDBBandedColumn;
    gr_noms_vFN_ID: TcxGridDBBandedColumn;
    gr_noms_vTYPE_SUBTYPE: TcxGridDBBandedColumn;
    gr_noms_vH_NAME: TcxGridDBBandedColumn;
    gr_noms_vRUS_MARKS: TcxGridDBBandedColumn;
    gr_noms_vHOL_MARKS: TcxGridDBBandedColumn;
    gr_noms_vGREAT_NAME_F: TcxGridDBBandedColumn;
    gr_noms_vPHOTO: TcxGridDBBandedColumn;
    gr_noms_vD_CHECK: TcxGridDBBandedColumn;
    gr_noms_vCOL_ID: TcxGridDBBandedColumn;
    gr_noms_vC_ID: TcxGridDBBandedColumn;
    gr_noms_vS_ID: TcxGridDBBandedColumn;
    gr_noms_vFST_ID: TcxGridDBBandedColumn;
    gr_noms_vFT_ID: TcxGridDBBandedColumn;
    gr_noms_vPACK: TcxGridDBBandedColumn;
    gr_noms_vWEIGHT: TcxGridDBBandedColumn;
    gr_noms_vCUST_COEF: TcxGridDBBandedColumn;
    gr_noms_vID_OFFICE: TcxGridDBBandedColumn;
    gr_noms_vBRIEF: TcxGridDBBandedColumn;
    DictView: TOraQuery;
    DictView_DS: TDataSource;
    grOrder: TDBGridEh;
    btnImport: TBitBtn;
    qTMP: TOraQuery;
    aMain: TActionList;
    aRefresh: TAction;
    gr_noms_vID: TcxGridDBBandedColumn;
    gr_noms_vKOD: TcxGridDBBandedColumn;
    gr_noms_vIN_CODE: TcxGridDBBandedColumn;
    gr_noms_vFLOW: TcxGridDBBandedColumn;
    gr_noms_vTITLE: TcxGridDBBandedColumn;
    gr_noms_vHFL: TcxGridDBBandedColumn;
    gr_noms_vCOL: TcxGridDBBandedColumn;
    gr_noms_vUNIT: TcxGridDBBandedColumn;
    gr_noms_vBOX: TcxGridDBBandedColumn;
    gr_noms_vGROEP: TcxGridDBBandedColumn;
    gr_noms_vGR: TcxGridDBBandedColumn;
    gr_noms_vGTD: TcxGridDBBandedColumn;
    aEdit: TAction;
    Image2: TImage;
    Label4: TLabel;
    icbCountry: TcxImageComboBox;
    pmMain: TPopupMenu;
    aEdit1: TMenuItem;
    gr_noms_vID_DEPARTMENTS: TcxGridDBBandedColumn;
    gr_noms_vMARK: TcxGridDBBandedColumn;
    gr_noms_vSPEC: TcxGridDBBandedColumn;
    aRefresh1: TMenuItem;
    N1: TMenuItem;
    gr_noms_vKLEUR: TcxGridDBBandedColumn;
    gr_noms_vNNN: TcxGridDBBandedColumn;
    cxLabel1: TcxLabel;
    lbStat: TcxLabel;
    rgMain: TRadioGroup;
    Label8: TLabel;
    teNick: TcxTextEdit;
    Label9: TLabel;
    deNakl: TcxDateEdit;
    qNakl: TQuery;
    DataSource1: TDataSource;
    gr_noms_vTITLEN: TcxGridDBBandedColumn;
    gr_noms_vBASE: TcxGridDBBandedColumn;
    gr_noms_vBASERU: TcxGridDBBandedColumn;
    gr_noms_vS20: TcxGridDBBandedColumn;
    gr_noms_vS22: TcxGridDBBandedColumn;
    gr_noms_vS25: TcxGridDBBandedColumn;
    gr_noms_vVD2: TcxGridDBBandedColumn;
    aRefreshOne: TMenuItem;
    btnAuto: TBitBtn;
    Label10: TLabel;
    bc_fontsize: TcxComboBox;
    cdsVolume: TQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    gr_noms_vREMARK: TcxGridDBBandedColumn;
    gr_noms_vIN_COUNTRY: TcxGridDBBandedColumn;
    gr_noms_vCHECKED: TcxGridDBBandedColumn;
    Bpvtybnm1: TMenuItem;
    aUpdate: TAction;
    N2: TMenuItem;
    mnExcel: TMenuItem;
    pmKovalev: TPopupMenu;
    mnExcelKovalev: TMenuItem;
    gr_noms_vTOTAL: TcxGridDBBandedColumn;
    mnSync: TMenuItem;
    cdsVolumeVOLUME: TFloatField;
    cdsVolumeVOLDRY: TFloatField;
    dsVolume: TDataSource;
    cdsVolumeBCODE: TStringField;
    gr_noms_vHT_ID: TcxGridDBBandedColumn;
    gr_noms_vTNVED: TcxGridDBBandedColumn;
    gr_noms_vVOLUME: TcxGridDBBandedColumn;
    gr_noms_vVOLDRY: TcxGridDBBandedColumn;
    DBGridEh1: TDBGridEh;
    Button1: TButton;
    btnSaveSel: TBitBtn;
    DictViewD_CHECK: TFloatField;
    DictViewF_NAME: TStringField;
    DictViewF_NAME_RU: TStringField;
    DictViewF_SUB_TYPE: TStringField;
    DictViewF_TYPE: TStringField;
    DictViewCOUNTRY: TStringField;
    DictViewTYPE_SUBTYPE: TStringField;
    DictViewN_ID: TFloatField;
    DictViewFN_ID: TFloatField;
    DictViewFT_ID: TFloatField;
    DictViewFST_ID: TFloatField;
    DictViewS_ID: TFloatField;
    DictViewC_ID: TFloatField;
    DictViewCOL_ID: TFloatField;
    DictViewH_CODE: TStringField;
    DictViewH_NAME: TStringField;
    DictViewCODE: TStringField;
    DictViewLEN: TIntegerField;
    DictViewPACK: TIntegerField;
    DictViewVBN: TIntegerField;
    DictViewHOL_TYPE: TStringField;
    DictViewWEIGHT: TFloatField;
    DictViewS_NAME_RU: TStringField;
    DictViewCOLOUR: TStringField;
    DictViewIS_PHOTO: TFloatField;
    DictViewHOL_MARKS: TStringField;
    DictViewRUS_MARKS: TStringField;
    DictViewDIAMETER: TFloatField;
    DictViewBAR_CODE: TStringField;
    DictViewCUST_COEF: TFloatField;
    DictViewREMARKS: TStringField;
    DictViewPHOTO: TStringField;
    DictViewGREAT_NAME_F: TStringField;
    DictViewCOMPILED_NAME_OTDEL: TStringField;
    DictViewNAME_CODE: TStringField;
    DictViewID_DEPARTMENTS: TFloatField;
    DictViewHT_ID: TFloatField;
    DictViewTNVED: TStringField;
    DictViewID_OFFICE: TIntegerField;
    DictViewBRIEF: TStringField;
    DictViewID: TFloatField;
    DictViewKOD: TStringField;
    DictViewIN_CODE: TStringField;
    DictViewFLOW: TIntegerField;
    DictViewTITLE: TStringField;
    DictViewHFL: TFloatField;
    DictViewCOL: TFloatField;
    DictViewUNIT: TFloatField;
    DictViewBOX: TStringField;
    DictViewGROEP: TStringField;
    DictViewGR: TFloatField;
    DictViewGTD: TStringField;
    DictViewMARK: TStringField;
    DictViewSPEC: TStringField;
    DictViewKLEUR: TStringField;
    DictViewTITLEN: TStringField;
    DictViewBASE: TStringField;
    DictViewBASERU: TStringField;
    DictViewS20: TStringField;
    DictViewS22: TStringField;
    DictViewS25: TStringField;
    DictViewVD2: TStringField;
    DictViewREMARK: TStringField;
    DictViewIN_COUNTRY: TStringField;
    DictViewTOTAL: TFloatField;
    DictViewVOLUME: TFloatField;
    DictViewVOLDRY: TFloatField;
    DictViewNNN: TFloatField;
    DictViewCHECKED: TFloatField;
    DictViewWEIGHTDRY: TFloatField;
    N3: TMenuItem;
    mnSelectAll: TMenuItem;
    mnUnSelectAll: TMenuItem;
    DictViewNOTUSE: TIntegerField;
    gr_noms_vWEIGHTDRY: TcxGridDBBandedColumn;
    gr_noms_vNOTUSE: TcxGridDBBandedColumn;
    Image3: TImage;
    Label11: TLabel;
    icbCountryGTD: TcxImageComboBox;
    chbAddPrice: TCheckBox;
    DictViewV_CLIENT: TStringField;
    gr_noms_vV_CLIENT: TcxGridDBBandedColumn;
    DictViewNOM_NEW: TIntegerField;
    DictViewNOM_START: TIntegerField;
    DictViewNOM_END: TIntegerField;
    gr_noms_vNOM_NEW: TcxGridDBBandedColumn;
    gr_noms_vNOM_START: TcxGridDBBandedColumn;
    gr_noms_vNOM_END: TcxGridDBBandedColumn;
    DictViewTRUCK: TIntegerField;
    gr_noms_vTRUCK: TcxGridDBBandedColumn;
    chbOldFile: TCheckBox;
    DictViewHOL_COLOR: TStringField;
    gr_noms_vHOL_COLOR: TcxGridDBBandedColumn;
    DictViewNOM_N_ID: TFloatField;
    gr_noms_vNOM_N_ID: TcxGridDBBandedColumn;
    DictViewCOMP_HCODE: TStringField;
    gr_noms_vCOMP_HCODE: TcxGridDBBandedColumn;
    st_blue: TcxStyle;
    mnChangeBarCode: TMenuItem;
    pnlCalcBarCodeExists: TPanel;
    Label12: TLabel;
    aCalcBarCodeExists: TAction;
    aClearFilter: TAction;
    N4: TMenuItem;
    mnShowBadNameCodes: TMenuItem;
    procedure btnLoadClick(Sender: TObject);
    procedure btnImportClick(Sender: TObject);
    procedure aRefreshExecute(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure rgMainClick(Sender: TObject);
    procedure aRefreshOneClick(Sender: TObject);
    procedure btnAutoClick(Sender: TObject);
    procedure bc_fontsizePropertiesChange(Sender: TObject);
    procedure gr_noms_vCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure aUpdateExecute(Sender: TObject);
    procedure gr_noms_vDblClick(Sender: TObject);
    procedure mnExcelClick(Sender: TObject);
    procedure mnExcelKovalevClick(Sender: TObject);
    procedure icb_suplierPropertiesChange(Sender: TObject);
    procedure mnSyncClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnSaveSelClick(Sender: TObject);
    procedure mnSelectAllClick(Sender: TObject);
    procedure mnUnSelectAllClick(Sender: TObject);
    procedure mnChangeBarCodeClick(Sender: TObject);
    procedure aCalcBarCodeExistsExecute(Sender: TObject);
    procedure pnlCalcBarCodeExistsClick(Sender: TObject);
    procedure aClearFilterExecute(Sender: TObject);
    procedure mnShowBadNameCodesClick(Sender: TObject);
  private
    { Private declarations }
    pnl_msg: TPanel;
  public
    { Public declarations }
    is_load, isAutoLoad, isAbort: boolean;
    procedure CalcStat;
    function GetNaklList(tablesrc: string): string;
  end;

  function OpenForShowModal: integer;

var
  frmOrder: TfrmOrder;

implementation

uses DataModule, Globals, NewNomenclature, NewDict, UFullInfo;

{$R *.dfm}

function OpenForShowModal: integer;
begin
  Application.CreateForm(TfrmOrder, frmOrder);
  try
    frmOrder.qOrder.Close;
    frmOrder.DictView.Close;
    frmOrder.DictView.ParamByName('DEPT_').AsInteger := CUR_DEPT_ID;
    frmOrder.DictView.ParamByName('vUser').AsString := DM.STAR_DB.Username;
    frmOrder.btnSave.Enabled := false;
    frmOrder.btnSaveSel.Enabled := false;
    frmOrder.btnImport.Enabled := false;
    frmOrder.btnAuto.Enabled := false;
    Result := frmOrder.ShowModal;
  finally
    frmOrder.Free;
  end;
end;


// Выгрузить данные Андрея во временную таблицу для сравнения с текущей номенклатурой
procedure TfrmOrder.btnImportClick(Sender: TObject);
var sql: string;
    cds: TQuery;
begin
  aUpdate.Tag := -1;

  if icb_suplier.EditValue < 1 then
  begin
    Application.MessageBox('Укажите поставщика!', 'Внимание', MB_ICONWARNING);
    Exit;
  end;


  if (icbCountry.EditValue < 1) and (rgMain.ItemIndex = 0) then
  begin
    Application.MessageBox('Для импорта по заказу необходимо указать страну!', 'Внимание', MB_ICONWARNING);
    Exit;
  end;


  if rgMain.ItemIndex = 0 then
     cds := qOrder
  else
     cds := qNakl;


  try
    qTMP.Close;
    qTMP.sql.text := 'delete from tmp_cutflower_order where lower(STARUSER)=lower('''+DM.STAR_DB.Username+''')';
    qTMP.Execute;

    sql := 'insert into tmp_cutflower_order ' +
    'values(UNIVERSAL_ID.Nextval, :kod, :pix, :code, :flow, :title, :dat, :hfl, :COL, :UNIT, :BOX, :KLEUR, :GROEP, :GR, :GTD, :COUNTRY, :MARK, :SPEC, :titlen, :base, :baseru, :s20, :s22, :s25, :vd2, :REMARK, :username, :volume, :voldry, :v_client, :truck)';

    qTMP.Close;
    qTMP.sql.text := sql;
    qTMP.ParamByName('username').AsString   := DM.STAR_DB.Username;
    pg_main.Properties.Max := cds.RecordCount;
    pg_main.Position := 0;
    pnl_progress.Visible := true;
    pnl_progress.Repaint;

    cdsVolume.Open;
    with cds do
    begin
      DisableControls;
      First;
      while not Eof do
      begin
        qTMP.ParamByName('KOD').AsString   := FieldByName('KOD').AsString;
        qTMP.ParamByName('PIX').AsString   := FieldByName('PIX').AsString;
        qTMP.ParamByName('CODE').AsString  := FieldByName('CODE').AsString;
        qTMP.ParamByName('FLOW').AsInteger := FieldByName('FLOW').AsInteger;
        qTMP.ParamByName('TITLE').AsString := FieldByName('TITLE').AsString;
        qTMP.ParamByName('DAT').AsDateTime := FieldByName('DAT').AsDateTime;
        try
          if rgMain.ItemIndex = 0 then
            qTMP.ParamByName('HFL').AsCurrency := FieldByName('HFL').AsCurrency
          else
            qTMP.ParamByName('HFL').AsCurrency := FieldByName('RU').AsCurrency;
        except
          qTMP.ParamByName('HFL').AsCurrency := 0;
        end;
        try
          qTMP.ParamByName('COL').AsInteger  := FieldByName('COL').AsInteger;
        except
          qTMP.ParamByName('COL').AsInteger  := FieldByName('NUM').AsInteger;
        end;
        try
          qTMP.ParamByName('UNIT').AsInteger := FieldByName('UNIT').AsInteger;
        except
          qTMP.ParamByName('UNIT').AsInteger := 1;
        end;
        try
          qTMP.ParamByName('BOX').AsString   := FieldByName('BOX').AsString;
        except
          qTMP.ParamByName('BOX').AsString := '';
        end;
        try
          qTMP.ParamByName('KLEUR').AsString := FieldByName('KLEUR').AsString;
        except
          qTMP.ParamByName('KLEUR').AsString := '';
        end;



        try
          qTMP.ParamByName('GROEP').AsString := FieldByName('GROEP').AsString;
        except
          qTMP.ParamByName('GROEP').AsString := '';
        end;

        try
          qTMP.ParamByName('GR').AsInteger   := FieldByName('GR').AsInteger;
        except
          qTMP.ParamByName('GR').AsInteger := FieldByName('FLOW').AsInteger;
        end;

        qTMP.ParamByName('GTD').AsString   := FieldByName('GTD').AsString;
        qTMP.ParamByName('COUNTRY').AsString := FieldByName('COUNTRY').AsString;

        try
          qTMP.ParamByName('MARK').AsString  := FieldByName('MARK').AsString;
        except
          qTMP.ParamByName('MARK').AsString := '';
        end;
        try
          qTMP.ParamByName('SPEC').AsString  := FieldByName('SPEC').AsString;
        except
          qTMP.ParamByName('SPEC').AsString := '';
        end;

        try
          qTMP.ParamByName('REMARK').AsString  := FieldByName('REMARK').AsString;
        except
          qTMP.ParamByName('REMARK').AsString := '';
        end;

        try
          qTMP.ParamByName('titlen').AsString  := FieldByName('TITLEN').AsString;
        except
          qTMP.ParamByName('titlen').AsString := '';
        end;
        try
          qTMP.ParamByName('base').AsString    := FieldByName('BASE').AsString;
        except
          qTMP.ParamByName('base').AsString := '';
        end;
        try
          qTMP.ParamByName('baseru').AsString  := FieldByName('BASERU').AsString;
        except
          qTMP.ParamByName('baseru').AsString := '';
        end;
        try
          qTMP.ParamByName('s20').AsString     := FieldByName('S20').AsString;
        except
          qTMP.ParamByName('s20').AsString := '';
        end;
        try
          qTMP.ParamByName('s22').AsString     := FieldByName('S22').AsString;
        except
          qTMP.ParamByName('s22').AsString := '';
        end;
        try
          qTMP.ParamByName('s25').AsString     := FieldByName('S25').AsString;
        except
          qTMP.ParamByName('s25').AsString := '';
        end;
        try
          qTMP.ParamByName('vd2').AsString    := FieldByName('VD2').AsString;
        except
          qTMP.ParamByName('vd2').AsString := '';
        end;
        if cdsVolume.Locate('bcode',FieldByName('code').AsString,[]) then
        begin
          try
            qTMP.ParamByName('volume').AsFloat    := cdsVolumeVOLUME.AsFloat; // FieldByName('volume').AsFloat;
          except
            qTMP.ParamByName('volume').AsFloat := 0;
          end;
          try
            qTMP.ParamByName('voldry').AsFloat    := cdsVolumeVOLDRY.AsFloat; // FieldByName('voldry').AsFloat;
          except
            qTMP.ParamByName('voldry').AsFloat := 0;
          end;
        end
        else
        begin
            qTMP.ParamByName('volume').AsFloat := 0;
            qTMP.ParamByName('voldry').AsFloat := 0;
        end;

        try
          qTMP.ParamByName('v_client').AsString    := FieldByName('FIO').AsString;
        except
          qTMP.ParamByName('v_client').AsString := '';
        end;

        try
          if FieldByName('TRUCK').AsString = '' then qTMP.ParamByName('TRUCK').AsInteger := 1
          else
          begin
            if Pos('T1',FieldByName('TRUCK').AsString) > 0 then qTMP.ParamByName('TRUCK').AsInteger := 1;
            if Pos('T2',FieldByName('TRUCK').AsString) > 0 then qTMP.ParamByName('TRUCK').AsInteger := 2;
            if Pos('T3',FieldByName('TRUCK').AsString) > 0 then qTMP.ParamByName('TRUCK').AsInteger := 3;
            if Pos('T4',FieldByName('TRUCK').AsString) > 0 then qTMP.ParamByName('TRUCK').AsInteger := 4;
            if Pos('T5',FieldByName('TRUCK').AsString) > 0 then qTMP.ParamByName('TRUCK').AsInteger := 5;
            if Pos('T6',FieldByName('TRUCK').AsString) > 0 then qTMP.ParamByName('TRUCK').AsInteger := 6;
            if Pos('T7',FieldByName('TRUCK').AsString) > 0 then qTMP.ParamByName('TRUCK').AsInteger := 7;
            if Pos('T8',FieldByName('TRUCK').AsString) > 0 then qTMP.ParamByName('TRUCK').AsInteger := 8;
            if Pos('T9',FieldByName('TRUCK').AsString) > 0 then qTMP.ParamByName('TRUCK').AsInteger := 9;
          end;
        except
          qTMP.ParamByName('TRUCK').AsInteger := 1;
        end;

        qTMP.Execute;
        Next;
        pg_main.Position := RecNo;
        pg_main.Repaint;
      end;
      EnableControls;
    end;
    DM.STAR_DB.Commit;
    cdsVolume.Close;
    Application.MessageBox('Данные загружены!', 'Результат', MB_ICONINFORMATION);
    pnl_progress.Visible := false;
    pnl_progress.Repaint;
    aRefresh.Execute;

    btnSave.Enabled   := not DictView.IsEmpty;
    btnSaveSel.Enabled   := not DictView.IsEmpty;
    btnAuto.Enabled   := not DictView.IsEmpty;

    CalcStat;

  Except on E:Exception do
      Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONERROR);
  End;
end;


function TfrmOrder.GetNaklList(tablesrc: string): string;
var cds: TQuery;
begin
  result := '';
  cds := TQuery.Create(nil);
  try
    with cds do
    begin
      Close;
      SQL.Text := 'select distinct nn from "'+tablesrc+'" where DAT='''+DateToStr(deNakl.Date)+''' and nick='''+UpperCase(VarToStr(teNick.EditValue))+'''';
      Open;

      if not IsEmpty then
      begin
        first;
        while not eof do
        begin
          if result = '' then          
            result := result + Fields[0].AsString
          else
            result := result + ', ' + Fields[0].AsString;
          next;
        end;
      end;
    end;

  finally
    cds.Free;
  end;
end;


// Отрисовка ячеек
procedure TfrmOrder.gr_noms_vCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
VAR
  str_tmp, str_tmp2 : variant;
begin

  // подкрасим строку, если номенклатура от андрея из файла
  if not AViewInfo.Selected then
  begin
    // Красим отправленные на склад
    str_tmp := gr_noms_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_noms_v.GetColumnByFieldName('CHECKED').Index
                );

    if (str_tmp = 0) then
      ACanvas.Brush.Color := TColor($006AB5FF);


    // Красим сходящиеся по артиклу, но не распознанные по штрих-коду
    str_tmp  := gr_noms_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_noms_v.GetColumnByFieldName('N_ID').Index
                );
    str_tmp2 := gr_noms_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_noms_v.GetColumnByFieldName('NOM_N_ID').Index
                );

    if (str_tmp = Null) and (str_tmp2 > 0) then
      ACanvas.Brush.Color := st_blue.Color;
  end;

  str_tmp := 0;
    // Красим неиспользуемые позиции
    str_tmp := gr_noms_v.DataController.GetValue(
                AViewInfo.GridRecord.RecordIndex, gr_noms_v.GetColumnByFieldName('NOTUSE').Index
                );

    if (str_tmp = 1) then
      ACanvas.Brush.Color := TColor($00D7D7D7);
end;


// Просмотр полной информации
procedure TfrmOrder.gr_noms_vDblClick(Sender: TObject);
begin
  if gr_noms_v.DataController.DataSet.FieldByName('N_ID').IsNull and gr_noms_v.DataController.DataSet.FieldByName('NOM_N_ID').IsNull then exit;

  frm_full_info := Tfrm_full_info.Create(Application);
  With frm_full_info do
    Begin
      SelNom.Session := DM.STAR_DB;
      if (gr_noms_v.DataController.DataSet.FieldByName('NOM_N_ID').IsNull or (gr_noms_v.DataController.DataSet.FieldByName('NOM_N_ID').AsInteger = 0)) then
        SelNom.ParamByName('N_ID').Value := gr_noms_v.DataController.DataSet.FieldByName('N_ID').AsInteger
      else
        SelNom.ParamByName('N_ID').Value := gr_noms_v.DataController.DataSet.FieldByName('NOM_N_ID').AsInteger;
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



procedure TfrmOrder.icb_suplierPropertiesChange(Sender: TObject);
begin
  DictView.ParamByName('vSuplier').AsString := icb_suplier.EditValue;
end;


procedure TfrmOrder.mnExcelClick(Sender: TObject);
begin
  if DM.SaveDialog.Execute then
  begin
     ExportGridToExcel(DM.SaveDialog.FileName, gr_noms, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(DM.SaveDialog.FileName), nil, nil, SW_RESTORE);
  end;
end;

procedure TfrmOrder.mnExcelKovalevClick(Sender: TObject);
begin
  if DM.SaveDialog.Execute then
  begin
      SaveDBGridEhToExportFile(TDBGridEhExportAsXLS, grOrder, DM.SaveDialog.FileName, False);
      ShellExecute(Handle, nil, PChar(DM.SaveDialog.FileName), nil, nil, SW_RESTORE);
  end;
end;



procedure TfrmOrder.mnSelectAllClick(Sender: TObject);
begin
 grOrder.Selection.SelectAll;
end;


// Фильтрация по расхождению кода названия от Андрея и номенклатуры
procedure TfrmOrder.mnShowBadNameCodesClick(Sender: TObject);
begin
    DictView.Filter   := 'KOD <> NAME_CODE and NAME_CODE is not null';
    DictView.Filtered := true;
end;

procedure TfrmOrder.mnUnSelectAllClick(Sender: TObject);
begin
  grOrder.Selection.Clear;
end;



procedure TfrmOrder.pnlCalcBarCodeExistsClick(Sender: TObject);
begin
  if (Sender as TPanel).Caption <> '' then
  begin
    DictView.Filter   := 'NOM_N_ID > 0 and N_ID is null';
    DictView.Filtered := true;
  end;
end;

procedure TfrmOrder.mnSyncClick(Sender: TObject);
var cc, i: integer;
begin
  if not DictView.Active or DictView.IsEmpty then exit;

  cc := gr_noms_v.Controller.SelectedRowCount;
  if cc = 0 then
  begin
    MessageBox(Handle, 'Необходимо выделить хотя бы одну запись', 'Внимание', MB_ICONWarning);
    exit;
  end;

  pnl_msg := TPanel(MakePanelLabel(gr_noms,300,100,'Идет обработка запроса'));
  pnl_msg.Repaint;

  try
    DictView.DisableControls;
    cursor := crHourGlass;
    DM.StorProc.StoredProcName := 'SYNC_LINK_PKG.SYNC_NOMENCLATURE_ONE';
    DM.StorProc.Prepare;
    for I := 0 to cc - 1 do
    begin
      try
        DM.StorProc.ParamByName('v_nid').Value := gr_noms_v.Controller.SelectedRows[i].Values[gr_noms_vN_ID.Index];
        if not DM.StorProc.ParamByName('v_nid').IsNull then
          DM.StorProc.Execute;
      Except on E:Exception do
        MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
      end;
    end;
  finally
    DictView.EnableControls;
    pnl_msg.Free;
    cursor := crDefault;
  end;
end;


// Открыть данные Андрея
procedure TfrmOrder.btnLoadClick(Sender: TObject);
var FullFileName: string;
    cds: TQuery;
begin
// Временно для перекидывания остатков из Самары и Казани
{
  if teNick.Enabled and (VarToStr(teNick.EditValue) = '') then
  begin
    Application.MessageBox('Для импорта по накладной необходимо указать клиента!', 'Внимание', MB_ICONWARNING);
    Exit;
  end;
}

  if not odOrder.Execute then exit;

  if rgMain.ItemIndex = 0 then
     cds := qOrder
  else
     cds := qNakl;

  try
    FullFileName := odOrder.FileName;
    with cds do
    begin
      Close;
      SQL.Text := 'SELECT a.kod, a.pix, a.code, a.flow, a.title, a.titlen, a.base, a.baseru, a.num, a.dat, a.fio, a.nn, a.sub, a.mark, ' +
               'a.hfl, a.ru, a.col, a.price, a.prizn, a.starnov, a.spec, a.new, a.unit, a.box, a.kleur, a.pic, a.groep, a.groepru, a.gr, ' +
               'a.gtd, a.country, a.s20, a.s22, a.s25, a.vd2, a.remark, a.hfl*a.col as total, a.truck, ';
      if chbOldFile.Checked then
        SQL.Text := 'SELECT a.kod, a.pix, a.code, a.flow, a.title, a.titlen, a.base, a.baseru, a.num, a.dat, a.fio, a.nn, a.sub, a.mark, ' +
               'a.hfl, a.ru, a.col, a.price, a.prizn, a.starnov, a.spec, a.new, a.unit, a.box, a.kleur, a.pic, a.groep, a.groepru, a.gr, ' +
               'a.gtd, a.country, a.s20, a.s22, a.s25, a.vd2, a.remark, a.hfl*a.col as total, '''' as truck, ';

      if rgMain.ItemIndex = 0 then
      begin
        SQL.Text := SQL.Text + ' '''' as nick from "'+FullFileName+'" a where'#10'/*Filter*/ 1=1';
        grOrder.DataSource := DataSource2;
      end
      else
      begin
        SQL.Text := SQL.Text + 'a.nick from "'+FullFileName+'" a where'#10'/*Filter*/ 1=1';
        grOrder.DataSource := DataSource1;
      end;
      Open;

      cdsVolume.Close;
      cdsVolume.SQL.Text := 'SELECT distinct volume, voldry, bcode FROM "'+OLD_LIST_DB+'" where bcode <> ''''';

      if (not IsEmpty) then
      begin
        deNakl.EditValue := FieldByName('DAT').AsDateTime;
        DateTimePicker1.EditValue := FieldByName('DAT').AsDateTime;
        DateTimePicker2.EditValue := FieldByName('DAT').AsDateTime;
//        ed_comment.EditValue := FieldByName('NICK').AsString+' '+ed_comment.EditValue;

        if rgMain.ItemIndex > 0 then
        begin
          teNick.EditValue := FieldByName('NICK').AsString;
          ed_suplier.EditValue := GetNaklList(FullFileName);
          ed_comment.EditValue := FieldByName('NICK').AsString;
          ed_comment.EditValue := ed_comment.EditValue+' Инвойс по накладным №'+ed_suplier.EditValue;
        end
        else
        begin
          if ExtractFileName(odOrder.FileName)[1] = 'M' then
            ed_comment.EditValue := 'MAIN'
          else
            ed_comment.EditValue := FieldByName('FIO').AsString;
        end;

      end;

      is_load := (not IsEmpty);
      btnImport.Enabled := not cds.IsEmpty;
//      btnSave.Enabled   := not cds.IsEmpty;
      if cds.IsEmpty then
      begin
        Application.MessageBox('Файл пуст!', 'Внимание', MB_ICONWARNING);
        Exit;
      end;
    end;
  Except on E:Exception do
    begin
      Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONERROR);
      Exit;
    end;
  End;
end;



procedure TfrmOrder.FormShow(Sender: TObject);
VAR i : Integer;
    ColIni : TIniFile;
begin
  try
    ColIni := TIniFile.Create(ProgPath+'/ini/'+DM.STAR_DB.Username+'_font.ini');
    bc_fontsize.EditValue := ColIni.ReadString('FontSize', 'Value', '9');
    gr_noms.Font.Size := bc_fontsize.EditValue;
    grOrder.Font.Size := bc_fontsize.EditValue;

    isAutoLoad := false;
    isAbort    := false;
    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('SELECT S_ID,S_NAME_RU FROM SUPPLIERS where id_office=const_office ORDER BY CASE WHEN S_ID = 0 THEN S_ID END, S_NAME_RU');
    DM.SelQ.Open;
    FillImgComboCx(DM.SelQ, icb_suplier, '');

    ColIni := TIniFile.Create(ProgPath+'/ini/'+DM.STAR_DB.Username+'_'+IntToStr(CUR_DEPT_ID)+'.ini');
    i := ColIni.ReadInteger('supplier','value',-1);
    icb_suplier.EditValue := i;

    DM.SelQ.Close;
    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.Add('SELECT c_id, country FROM countries order by country');
    DM.SelQ.Open;
    FillImgComboCx(DM.SelQ, icbCountry, '');
    FillImgComboCx(DM.SelQ, icbCountryGTD, '');

    ColIni := TIniFile.Create(ProgPath+'/ini/'+DM.STAR_DB.Username+'_'+IntToStr(CUR_DEPT_ID)+'.ini');
    i := ColIni.ReadInteger('def_country','value',-1);
    icbCountry.EditValue := i;

    i := ColIni.ReadInteger('def_countryTrans','value',-1);
    icbCountryGTD.EditValue := i;


    DateTimePicker1.EditValue := Now();
    DateTimePicker2.EditValue := Now();
    deNakl.EditValue := Now();
    chbAddPrice.Visible := (rgMain.ItemIndex = 0) and ed;
  finally
    ColIni.Free;
  end;
end;


procedure TfrmOrder.aRefreshOneClick(Sender: TObject);
begin
       DictView.RefreshRecord;
end;


procedure TfrmOrder.rgMainClick(Sender: TObject);
begin
  deNakl.Enabled := (rgMain.ItemIndex = 1);
  teNick.Enabled := deNakl.Enabled;
  chbAddPrice.Visible := (rgMain.ItemIndex = 0) and ed;
end;


// Обновление данных
procedure TfrmOrder.aRefreshExecute(Sender: TObject);
var idd: integer;
begin
  try
    if DictView.Active then
    begin
      idd := DictViewID.AsInteger;
      DictView.Refresh;
      gr_noms_v.DataController.LocateByKey(idd);
      CalcStat;
    end
    else
    begin
      DictView.ParamByName('vSuplier').AsString := icb_suplier.EditValue;
      DictView.Open;
    end;
    aCalcBarCodeExists.execute;
  Except on E:Exception do
      Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONERROR);
  End;
end;


procedure TfrmOrder.aCalcBarCodeExistsExecute(Sender: TObject);
var defFilter: string;
begin
  DictView.DisableControls;
  try
    defFilter := DictView.Filter;
    DictView.Filter   := 'NOM_N_ID > 0 and N_ID is null';
    DictView.Filtered := true;
    pnlCalcBarCodeExists.Caption := IntToStr(DictView.RecordCount);
    DictView.Filter   := defFilter;
    if defFilter <> '' then DictView.Filtered := true else DictView.Filtered := false;
  finally
    DictView.EnableControls;
  end;
end;


// Очистить фильры
procedure TfrmOrder.aClearFilterExecute(Sender: TObject);
begin
  DictView.Filter   := '';
  DictView.Filtered := false;
  gr_noms_v.DataController.Filter.Clear;
end;


// Добавим номенклатуру
procedure TfrmOrder.aEditExecute(Sender: TObject);
var res, i, op1, op2, op3 : integer;
begin
  if not DictView.Active or DictView.IsEmpty or not DictViewN_ID.IsNull and (aUpdate.Tag = -1) then exit;

  NewD := TNewD.Create(Application);
  try
    NewD.Panel1.Font.Size := gr_noms.Font.Size;
    NewD.isAutoLoad   := isAutoLoad;
    NewD.N_ID_    := aUpdate.Tag;
    NewD.OUT_ID   := 0;
    NewD.cds      := (gr_noms_v.DataController.DataSet as TOraQuery);
    DM.n_id_      := aUpdate.Tag;
    NewD.editing  := (aUpdate.Tag > 0);
//    NewD.editing  := false;

    NewD.or_id    := DictViewID.AsInteger;
    NewD.or_kod   := DictViewKOD.AsString;
    NewD.or_code  := DictViewIN_CODE.AsString;
    NewD.or_flow  := DictViewFLOW.AsInteger;
    NewD.or_title := DictViewTITLE.AsString;
    NewD.or_mark  := DictViewREMARKS.AsString;
    NewD.or_group := DictViewGROEP.AsString;
    NewD.or_gr    := DictViewGR.AsString;
    NewD.or_spec  := DictViewMARK.AsString;
    NewD.or_color := DictViewKLEUR.AsString;
    NewD.or_suplier  := icb_suplier.EditValue;
    NewD.or_remarks  := DictViewREMARK.AsString;

    NewD.or_nom_new   := (DictViewNOM_NEW.AsInteger = 1);
    NewD.or_nom_start := (DictViewNOM_START.AsInteger = 1);
    NewD.or_nom_end   := (DictViewNOM_END.AsInteger = 1);

//    if (rgMain.ItemIndex = 1) and (trim(DictViewIN_COUNTRY.AsString) <> '') then
    if (trim(DictViewIN_COUNTRY.AsString) <> '') then
    begin
      DM.SelQ.Close;
      DM.SelQ.SQL.Clear;
      DM.SelQ.SQL.Add('SELECT c_id FROM countries where upper(country)=:p1 or upper(country_eng)=:p2');
      DM.SelQ.ParamByName('p1').AsString := AnsiUpperCase(trim(DictViewIN_COUNTRY.AsString));
      DM.SelQ.ParamByName('p2').AsString := AnsiUpperCase(trim(DictViewIN_COUNTRY.AsString));
      DM.SelQ.Open;
      if not DM.SelQ.IsEmpty then
        NewD.or_country := DM.SelQ.FieldByName('c_id').Value;
      DM.SelQ.Close;
    end
    else
      NewD.or_country  := icbCountry.EditValue;


    NewD.or_eng_name := DictViewBASE.AsString;
    NewD.or_eng_full_name := DictViewTITLEN.AsString;
    NewD.or_name     := DictViewBASERU.AsString;
    NewD.or_s20      := DictViewS20.AsString;
    NewD.or_s22      := DictViewS22.AsString;
    NewD.or_s25      := DictViewS25.AsString;
    NewD.or_vd2      := DictViewVD2.AsString;
    NewD.or_pack     := DictViewUNIT.AsInteger;

    if DictViewS20.AsString <> '' then
       NewD.or_len      := trim(copy(DictViewS20.AsString,0,pos('CM',DictViewS20.AsString)-1))
    else
       NewD.or_len      := '0';




    if isAutoLoad then
    begin
      if trim(NewD.or_group) <> '' then
      begin
        DM.SelQ.Close;
        DM.SelQ.SQL.Clear;
        DM.SelQ.SQL.Add('SELECT a.fst_id, a.ft_id, a.F_SUB_TYPE, b.F_TYPE FROM flower_subtypes a, flower_types b where upper(a.hol_sub_type) like :p1 and a.ft_id=b.ft_id and b.id_departments=:p2');
        DM.SelQ.ParamByName('p1').AsString  := UpperCase(trim('%'+NewD.or_group+'%'));
        DM.SelQ.ParamByName('p2').AsInteger := CUR_DEPT_ID;
        DM.SelQ.Open;
        if (not DM.SelQ.IsEmpty) and (DM.SelQ.RecordCount = 1) then
        begin
          NewD.lookcombo_type.EditValue    := DM.SelQ.FieldByName('ft_id').Value;
          NewD.lookcombo_subtype.EditValue := DM.SelQ.FieldByName('fst_id').Value;
        end;
      end;

      if NewD.or_suplier > 0 then
        NewD.lookcombo_suplier.EditValue := NewD.or_suplier;
      if NewD.or_country > 0 then
        NewD.lookcombo_country.EditValue := NewD.or_country;
      if trim(NewD.or_gr) <> '' then
        NewD.imcb_holtype.EditValue := StrToInt(trim(NewD.or_gr));

      if trim(NewD.or_color) <> '' then
      begin
        DM.SelQ.Close;
        DM.SelQ.SQL.Clear;
        DM.SelQ.SQL.Add('SELECT col_id FROM h_colours where upper(hol_colour)=:p1');
        DM.SelQ.ParamByName('p1').AsString := UpperCase(trim(NewD.or_color));
        DM.SelQ.Open;
        if not DM.SelQ.IsEmpty then
          NewD.lookcombo_color.EditValue := DM.SelQ.FieldByName('col_id').Value
        else
        begin
          DM.SelQ.Close;
          DM.SelQ.SQL.Clear;
          DM.SelQ.SQL.Add('SELECT col_id FROM colours where upper(colour)=:p1');
          DM.SelQ.ParamByName('p1').AsString := UpperCase(trim(NewD.or_color));
          DM.SelQ.Open;
          if not DM.SelQ.IsEmpty then
            NewD.lookcombo_color.EditValue := DM.SelQ.FieldByName('col_id').Value
        end;
      end;

      NewD.ed_hcode.EditValue := NewD.or_kod + '.' + NewD.or_color + '.' + NewD.or_len;
      if trim(NewD.or_spec) <> '' then NewD.ed_hcode.EditValue := NewD.ed_hcode.EditValue + '.' + NewD.or_spec;

      NewD.cb_length.EditValue   := NewD.or_len;
      NewD.ed_postname.EditValue := NewD.or_eng_full_name;
      NewD.ed_remarks.EditValue  := NewD.or_mark;
      NewD.ed_barcode.EditValue  := NewD.or_code;

      if trim(NewD.or_kod) <> '' then
      begin
        DM.SelQ.Close;
        DM.SelQ.SQL.Clear;
        DM.SelQ.SQL.Add('SELECT fn_id FROM flower_name_translations where upper(name_code)=:p1 and id_departments=:p2 order by default_translation desc');
        DM.SelQ.ParamByName('p1').AsString  := UpperCase(trim(NewD.or_kod));
        DM.SelQ.ParamByName('p2').AsInteger := CUR_DEPT_ID;
        DM.SelQ.Open;
        if not DM.SelQ.IsEmpty then
        begin
          NewD.lookcombo_name.EditValue    := DM.SelQ.FieldByName('fn_id').Value;
        end
        else
      end;


      if trim(NewD.or_s20) <> '' then
      begin
        DM.SelQ.Close;
        DM.SelQ.SQL.Clear;
        DM.SelQ.SQL.Add('SELECT HS_ID, SPEC_CODE || '' '' || SPEC_NAME SPECIFICATION, NEED_TRANSLATION FROM HOL_SPECIFICATIONS WHERE SPEC_CODE=''S20'' ');
        DM.SelQ.Open;
        if not DM.SelQ.IsEmpty then
        begin
          NewD.imcb_spec.EditValue := DM.SelQ.Fields[0].AsInteger;
          NewD.ed_translate.EditValue := trim(copy(NewD.or_s20,0,pos('CM',NewD.or_s20)-1));
          NewD.SpeedButton3Click(nil);
        end;
      end;

      if trim(NewD.or_s22) <> '' then
      begin
        DM.SelQ.Close;
        DM.SelQ.SQL.Clear;
        DM.SelQ.SQL.Add('SELECT HS_ID, SPEC_CODE || '' '' || SPEC_NAME SPECIFICATION, NEED_TRANSLATION FROM HOL_SPECIFICATIONS WHERE SPEC_CODE=''S22'' ');
        DM.SelQ.Open;
        if not DM.SelQ.IsEmpty then
        begin
          NewD.imcb_spec.EditValue := DM.SelQ.Fields[0].AsInteger;
          NewD.ed_translate.EditValue := trim(copy(NewD.or_s22,0,pos('CM',NewD.or_s22)-1));
          NewD.SpeedButton3Click(nil);
        end;
      end;

      if trim(NewD.or_s25) <> '' then
      begin
        DM.SelQ.Close;
        DM.SelQ.SQL.Clear;
        DM.SelQ.SQL.Add('SELECT HS_ID, SPEC_CODE || '' '' || SPEC_NAME SPECIFICATION, NEED_TRANSLATION FROM HOL_SPECIFICATIONS WHERE SPEC_CODE=''S25'' ');
        DM.SelQ.Open;
        if not DM.SelQ.IsEmpty then
        begin
          NewD.imcb_spec.EditValue := DM.SelQ.Fields[0].AsInteger;
          NewD.ed_translate.EditValue := trim(copy(NewD.or_s25,0,pos('CM',NewD.or_s25)-1));
          NewD.SpeedButton3Click(nil);
        end;
      end;
      NewD.OUT_ID := 0;


      if (NewD.lookcombo_name.EditValue > 0)
        and (NewD.lookcombo_type.EditValue > 0)
        and (NewD.lookcombo_subtype.EditValue > 0)
        and (NewD.lookcombo_country.EditValue > 0)
        and (NewD.lookcombo_suplier.EditValue > 0)
        and (NewD.lookcombo_color.EditValue > 0)
        and (NewD.imcb_holtype.EditValue > 0)
        and (NewD.lookcombo_type.EditValue > 0)
        and (NewD.ed_barcode.EditValue <> '')
        and (NewD.ed_postname.EditValue <> '')
        and (NewD.ed_hcode.EditValue <> '')
        and (NewD.or_remarks = '')
      then
      begin
        NewD.BitBtn1Click(nil);
      end else res := NewD.ShowModal;

    end
    else
    begin
      res := NewD.ShowModal;
      if ( res = mrOk) and not isAutoLoad then
      begin
        DictView.RefreshRecord;
        CalcStat;
        DictView.Next;
      end;
    end;

      isAbort := ((res = mrAbort) and isAutoLoad);
    
  finally
    NewD.Free;
    aUpdate.Tag := -1;
  end;

end;

// Изменим номенклатуру
procedure TfrmOrder.aUpdateExecute(Sender: TObject);
var bb: string;
begin
  if not gr_noms_v.DataController.DataSet.Active or gr_noms_v.ViewData.IsEmpty or DictViewN_ID.IsNull then exit;

  bb := VarToStr(gr_noms_vIN_CODE.EditValue);
//  if DictViewN_ID.IsNull then
//    aUpdate.Tag := gr_noms_vNOM_N_ID.EditValue
//  else
    aUpdate.Tag := gr_noms_vN_ID.EditValue;
  aEdit.Execute;
end;



procedure TfrmOrder.CalcStat;
var nn: integer;
begin
  lbStat.Visible := not DictView.IsEmpty;
  nn := gr_noms_v.DataController.Summary.FooterSummaryValues[2];
  lbStat.Caption := IntToStr(nn) + '/' + IntToStr(DictView.RecordCount);
  if nn <> DictView.RecordCount then
    lbStat.Style.Font.Color := clRed
  else
    lbStat.Style.Font.Color := clGreen;
end;


// Формирование инвойса
procedure TfrmOrder.btnSaveClick(Sender: TObject);
var nn, id_as_is: integer;
    str, sql_str: string;
    res_val: variant;
    fs: TFormatSettings;
    decimal: Char;
begin
  if DictView.IsEmpty then exit;

  GetLocaleFormatSettings(1251,fs);
  decimal := fs.DecimalSeparator;
//   alter session set NLS_NUMERIC_CHARACTERS='.,';

  nn := gr_noms_v.DataController.Summary.FooterSummaryValues[2];
  str := 'Будет создан инвойс по переведенным позициям. Продолжить операцию?';

  if nn <> DictView.RecordCount then str := 'Переведенных позиций меньше чем импортированных!'+#10+str;

  if Application.MessageBox(PChar(str),'Внимание!',MB_YESNO) = mrNO then exit;

  try
      DictView.DisableControls;
      try
      with DM.SelQ do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('begin INVOICE_PKG.INV_REG_INSERT(:IN_INV_DATE, :IN_COMMENTS, :IN_SUP_INV_DATE, :IN_SUP_NUMBER, :IN_ID_DEPARTMENTS, :IN_INV_MINUS, :IN_S_ID, :in_INV_ID, :IN_FILE_, :IN_OFFICE_ID, :IN_country_gtd); end;');
          ParamByName('IN_INV_DATE').AsDate           := DateTimePicker1.Date;

          if rgMain.ItemIndex = 0 then
            ParamByName('IN_COMMENTS').AsString         := 'Инвойс по заказу (OLD DB). ' + VarToStr(ed_comment.EditValue)
          else
            ParamByName('IN_COMMENTS').AsString         := 'Инвойс по накладной (OLD DB). ' + VarToStr(ed_comment.EditValue);

          ParamByName('IN_SUP_INV_DATE').AsDate       := DateTimePicker2.Date;
          ParamByName('IN_SUP_NUMBER').AsString       := VarToStr(ed_suplier.EditValue);
          ParamByName('IN_ID_DEPARTMENTS').AsInteger  := CUR_DEPT_ID;
          ParamByName('IN_INV_MINUS').AsInteger       := 0;
          ParamByName('IN_S_ID').AsInteger            := icb_suplier.EditValue;
          ParamByName('in_INV_ID').AsInteger          := res_val;
          ParamByName('IN_FILE_').AsString            := '';
          ParamByName('IN_OFFICE_ID').AsInteger       := DM.id_office;
          ParamByName('IN_country_gtd').AsInteger     := icbCountryGTD.EditValue;
          Execute;
          res_val := ParamByName('in_INV_ID').Value;
          if res_val = -1 then ShowMessage('Произошла ошибка при добавлении инвойса!')
          else
          Begin
{Вставим DOC_DATA_ASIS}
            qTMP.Close;
            qTMP.SQL.Clear;
            sql_str := 'begin ';
            sql_str := sql_str + ' INVOICE_PKG.INV_REG_INSERT_DATA(:INV_ID_, :ORDER_NUMBER_, :ORDER_MARKNAME_, :PACKING_MARKS_, :PACKING_CODE_, :DESCRIPTION_, :UNITS_, :SKU_, :AMOUNT_IN_THE_PACK_, ';
            sql_str := sql_str + ' :HOL_COLOUR_, :HOL_SUB_TYPE_, :MARKS_CONTENT_, :MARKS_NAMES_, :SHORT_CODE_, :SHORT_NAME_, :BAR_CODE_, :TRANSLATION_, :AMOUNT_PER_UNIT_, :TOTAL_AMOUNT_, :REMARKS_, ';
            sql_str := sql_str + ' :SPEC_LENGTH_, :SPEC_HEADS_, :SPEC_HEADS_SHRUB_, :SPEC_VD2_, :SPEC_WIDTH_, :SPEC_HIGHT_, :TROLLEY_, :TRUCK_, :CLIENT_';
            sql_str := sql_str + ' , :VOLUME_, :VOLDRY_, :NOM_NEW_, :NOM_START_, :COUNTRY_, :NOM_END_, :NOM_ADD_, :NOM_SPEC_, :NOM_PACK_, :NOM_PACK_HOL_, :replacement_); end;';
            qTMP.SQL.Add(sql_str);



            Close;
            DictView.First;
            SQL.Clear;
            SQL.Add('begin INVOICE_DATA_PACKAGE.INSERT_DATA(:IN_INV_ID,:IN_INVOICE_DATA_AS_IS_ID,:IN_N_ID,:IN_UNITS,:IN_PRICE_PER_UNIT,:IN_TOTAL_SUM,:IN_AMOUNT_IN_THE_PACK,:IN_STORN,:IN_GTD,:IN_GTD_COUNTRY,:IN_NEW,:IN_SPEC,:IN_CLIENT,:IN_parent,:OUT_INVOICE_DATA_ID); end;');
            ParamByName('IN_INV_ID').AsInteger                := res_val;
            ParamByName('IN_STORN').AsInteger                 := 0;
            ParamByName('OUT_INVOICE_DATA_ID').AsInteger      := 0;

            qTMP.ParamByName('INV_ID_').AsInteger         := res_val;
            qTMP.ParamByName('ORDER_NUMBER_').AsInteger   := 0;
            qTMP.ParamByName('ORDER_MARKNAME_').AsString  := '';

            while not DictView.Eof do
            begin
              if not DictViewN_ID.IsNull then
              begin
                id_as_is := 0;

{ Е.В. решила пока не объединять, т.к. много полезной инфы в сырых данных будут и там понадобиться разводить позиции по этим признакам
                try
                  DM.ForceQ.Close;
                  if (rgMain.ItemIndex = 0) and not chbAddPrice.Checked then
                    DM.ForceQ.SQL.Text := 'SELECT 1 as nn FROM INVOICE_DATA where TO_CLIENT='''+DictViewV_CLIENT.AsString+''' and PRICE_PER_UNIT=0 and N_ID='+inttostr(DictViewN_ID.AsInteger)+' and INV_ID='+inttostr(res_val)
                  else
                    DM.ForceQ.SQL.Text := 'SELECT 1 as nn FROM INVOICE_DATA where TO_CLIENT='''+DictViewV_CLIENT.AsString+''' and PRICE_PER_UNIT=to_number('''+CurrToStr(DictViewHFL.AsCurrency)+''', ''9G99999D99'', '' NLS_NUMERIC_CHARACTERS = '''''+decimal+ ' '''''') and N_ID='+inttostr(DictViewN_ID.AsInteger)+' and INV_ID='+inttostr(res_val);
                  DM.ForceQ.Open;
                Except on E:Exception do
                  Application.MessageBox(PChar(E.Message + #13#10 + DM.ForceQ.SQL.Text), 'Ошибка', MB_ICONERROR);
                end;


                id_as_is := DM.ForceQ.FieldByName('nn').AsInteger;
                if (id_as_is = 1) then
                begin
                  try
                    DM.ForceQ.Close;
                    if (rgMain.ItemIndex = 0) and not chbAddPrice.Checked then
                      DM.ForceQ.SQL.Text := 'update INVOICE_DATA set UNITS=UNITS+'+inttostr(DictViewCOL.AsInteger)+' where TO_CLIENT='''+DictViewV_CLIENT.AsString+''' and PRICE_PER_UNIT=0 and N_ID='+inttostr(DictViewN_ID.AsInteger)+' and INV_ID='+inttostr(res_val)
                    else
                      DM.ForceQ.SQL.Text := 'update INVOICE_DATA set UNITS=UNITS+'+inttostr(DictViewCOL.AsInteger)+', TOTAL_SUM=(UNITS+'+inttostr(DictViewCOL.AsInteger)+')*PRICE_PER_UNIT where TO_CLIENT='''+DictViewV_CLIENT.AsString+''' and PRICE_PER_UNIT=to_number('''+CurrToStr(DictViewHFL.AsCurrency)+''', ''9G99999D99'', '' NLS_NUMERIC_CHARACTERS = '''''+decimal+ ' '''''') and N_ID='+inttostr(DictViewN_ID.AsInteger)+' and INV_ID='+inttostr(res_val);
                    DM.ForceQ.Execute;
                    id_as_is := 0;
                  Except on E:Exception do
                    Application.MessageBox(PChar(E.Message + #13#10 + DM.ForceQ.SQL.Text), 'Ошибка', MB_ICONERROR);
                  end;
                end
                else
                begin
{Вставим DOC_DATA_ASIS}
                  qTMP.ParamByName('PACKING_MARKS_').AsString   := DictViewBOX.AsString;
                  qTMP.ParamByName('PACKING_CODE_').AsString    := '';
                  qTMP.ParamByName('DESCRIPTION_').AsString     := DictViewTITLEN.AsString;
                  qTMP.ParamByName('UNITS_').AsInteger          := DictViewCOL.AsInteger;
                  qTMP.ParamByName('SKU_').AsString             := '';
                  qTMP.ParamByName('AMOUNT_IN_THE_PACK_').Value := DictViewUNIT.AsString;
                  qTMP.ParamByName('HOL_COLOUR_').AsString      := DictViewKLEUR.AsString;
                  qTMP.ParamByName('HOL_SUB_TYPE_').AsString    := DictViewGROEP.AsString;
                  qTMP.ParamByName('MARKS_CONTENT_').AsString   := '';
                  qTMP.ParamByName('MARKS_NAMES_').AsString     := '';
                  qTMP.ParamByName('SHORT_CODE_').AsString      := DictViewKOD.AsString;
                  qTMP.ParamByName('SHORT_NAME_').AsString      := DictViewBASE.AsString;
                  qTMP.ParamByName('BAR_CODE_').AsString        := DictViewCODE.AsString;
                  qTMP.ParamByName('TRANSLATION_').AsString     := '';
                  qTMP.ParamByName('AMOUNT_PER_UNIT_').AsFloat  := DictViewUNIT.AsFloat;
                  qTMP.ParamByName('TOTAL_AMOUNT_').AsFloat     := DictViewCOL.AsInteger;
                  qTMP.ParamByName('REMARKS_').AsString         := trim(DictViewREMARKS.AsString);
                  qTMP.ParamByName('SPEC_LENGTH_').Value        := StrToInt(DictViewLEN.AsString);
                  qTMP.ParamByName('SPEC_HEADS_').Value        := DictViewS22.AsString;
                  qTMP.ParamByName('SPEC_HEADS_SHRUB_').AsString := DictViewS25.AsString;
                  qTMP.ParamByName('SPEC_VD2_').AsString         := DictViewVD2.AsString;
                  qTMP.ParamByName('SPEC_WIDTH_').Value          := DictViewDIAMETER.AsInteger;
                  qTMP.ParamByName('SPEC_HIGHT_').Value          := DictViewLEN.AsInteger;
                  qTMP.ParamByName('TROLLEY_').AsString          := trim(DictViewBOX.AsString);
                  qTMP.ParamByName('TRUCK_').AsString            := trim(DictViewTruck.AsString);
                  qTMP.ParamByName('CLIENT_').AsString           := trim(DictViewV_CLIENT.AsString);
                  qTMP.ParamByName('VOLUME_').Value              := DictViewVOLUME.AsFloat;
                  qTMP.ParamByName('VOLDRY_').Value              := DictViewVOLDRY.AsFloat;

                  qTMP.ParamByName('NOM_NEW_').AsString          := '';
                  qTMP.ParamByName('NOM_START_').AsString        := '';
                  qTMP.ParamByName('COUNTRY_').AsString          := DictViewin_country.AsString; // trim(VarToStr(COUNTRY));

                  qTMP.ParamByName('NOM_END_').AsString          := '';
                  qTMP.ParamByName('NOM_ADD_').AsString          := '';
                  qTMP.ParamByName('NOM_SPEC_').AsString         := '';
                  qTMP.ParamByName('NOM_PACK_').Value            := DictViewUNIT.AsInteger;
                  qTMP.ParamByName('NOM_PACK_HOL_').AsString     := '0';
                  qTMP.ParamByName('replacement_').AsString      := '';
                  
                  qTMP.Execute;

                  DM.ForceQ.Close;
                  DM.ForceQ.SQL.Text := 'SELECT get_office_unique_curr(''INVOICE_DATA_AS_IS_ID'') as nn FROM DUAL';
                  DM.ForceQ.Open;
                  id_as_is := DM.ForceQ.FieldByName('nn').AsInteger;


                  Close;
                  ParamByName('IN_INVOICE_DATA_AS_IS_ID').Value     := id_as_is;
                  ParamByName('IN_GTD').Value                       := DictViewGTD.AsString;
                  ParamByName('IN_N_ID').AsInteger                  := DictViewN_ID.AsInteger;
                  ParamByName('IN_UNITS').AsInteger                 := DictViewCOL.AsInteger;
                  if (rgMain.ItemIndex = 0) and not chbAddPrice.Checked then
                  begin
                    ParamByName('IN_PRICE_PER_UNIT').AsFloat          := 0;
                    ParamByName('IN_TOTAL_SUM').AsFloat               := 0;
                  end
                  else
                  begin
                    ParamByName('IN_PRICE_PER_UNIT').AsFloat          := DictViewHFL.AsCurrency;
                    ParamByName('IN_TOTAL_SUM').AsFloat               := DictViewHFL.AsCurrency * DictViewCOL.AsInteger;
                  end;
                  ParamByName('IN_AMOUNT_IN_THE_PACK').Value        := DictViewUNIT.AsInteger;
                  ParamByName('IN_GTD_COUNTRY').Value               := icbCountryGTD.EditValue;

                  ParamByName('IN_NEW').AsInteger                   := DictViewNOM_NEW.AsInteger;
                  ParamByName('IN_SPEC').AsInteger                  := 0;
                  ParamByName('IN_CLIENT').AsString                 := DictViewV_CLIENT.AsString;

                  ParamByName('IN_parent').value                    := NULL;

                  Execute;

                  // Вызов процедуры по смене веса при его наличии
                  if (DictViewVOLUME.AsFloat <> 0) or (DictViewVOLDRY.AsFloat <> 0) then
                  begin
                    DM.ForceQ.Close;
                    DM.ForceQ.SQL.Text := 'begin INVOICE2_PKG.CHANGE_VOLUME(:N_ID_, :VOLUME_, :VOLDRY_); end;';
                    DM.ForceQ.ParamByName('N_ID_').AsInteger   := DictViewN_ID.AsInteger;
                    DM.ForceQ.ParamByName('VOLUME_').Value       := DictViewVOLUME.AsFloat;
                    DM.ForceQ.ParamByName('VOLDRY_').Value       := DictViewVOLDRY.AsFloat;
                    DM.ForceQ.Execute;
                  end;
               { end; }




              end;
              DictView.Next;
            end;

            try
              DM.ForceQ.Close;
              DM.ForceQ.SQL.Text := 'delete from INVOICE_DATA where UNITS=0 and INV_ID='+inttostr(res_val);
              DM.ForceQ.Execute;
            Except on E:Exception do
              Application.MessageBox(PChar(E.Message + #13#10 + DM.ForceQ.SQL.Text), 'Ошибка', MB_ICONERROR);
            end;

            Application.MessageBox('Инвойс сформирован!', 'Результат', MB_ICONINFORMATION);
          End;
        End;
      finally
        DictView.EnableControls;
      end;
  Except on E:Exception do
      Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONERROR);
  End;
end;







// Формирование инвойса по выделенному
procedure TfrmOrder.btnSaveSelClick(Sender: TObject);
var nn, id_as_is, i: integer;
    str, sql_str: string;
    res_val: variant;
    fs: TFormatSettings;
    decimal: Char;
begin
  if DictView.IsEmpty then exit;

  GetLocaleFormatSettings(1251,fs);
  decimal := fs.DecimalSeparator;

  nn := gr_noms_v.DataController.Summary.FooterSummaryValues[2];
  str := 'Будет создан инвойс по переведенным ВЫДЕЛЕННЫМ позициям. Продолжить операцию?';

  if nn <> DictView.RecordCount then str := 'Переведенных позиций меньше чем импортированных!'+#10+str;

  if Application.MessageBox(PChar(str),'Внимание!',MB_YESNO) = mrNO then exit;

  if gr_noms_v.Controller.SelectedRowCount = 0 then
  begin
    Application.MessageBox('Нет выделенных строк для сохранения','Внимание!',MB_ICONWARNING);
    exit;
  end;


  try
      DictView.DisableControls;
      try
      with DM.SelQ do
        Begin
          Close;
          SQL.Clear;
          SQL.Add('begin INVOICE_PKG.INV_REG_INSERT(:IN_INV_DATE, :IN_COMMENTS, :IN_SUP_INV_DATE, :IN_SUP_NUMBER, :IN_ID_DEPARTMENTS, :IN_INV_MINUS, :IN_S_ID, :in_INV_ID, :IN_FILE_, :IN_OFFICE_ID, :IN_country_gtd); end;');
          ParamByName('IN_INV_DATE').AsDate           := DateTimePicker1.Date;

          if rgMain.ItemIndex = 0 then
            ParamByName('IN_COMMENTS').AsString         := 'Инвойс по заказу (OLD DB). ' + VarToStr(ed_comment.EditValue)
          else
            ParamByName('IN_COMMENTS').AsString         := 'Инвойс по накладной (OLD DB). ' + VarToStr(ed_comment.EditValue);

          ParamByName('IN_SUP_INV_DATE').AsDate       := DateTimePicker2.Date;
          ParamByName('IN_SUP_NUMBER').AsString       := VarToStr(ed_suplier.EditValue);
          ParamByName('IN_ID_DEPARTMENTS').AsInteger  := CUR_DEPT_ID;
          ParamByName('IN_INV_MINUS').AsInteger       := 0;
          ParamByName('IN_S_ID').AsInteger            := icb_suplier.EditValue;
          ParamByName('in_INV_ID').AsInteger          := res_val;
          ParamByName('IN_FILE_').AsString            := '';
          ParamByName('IN_OFFICE_ID').AsInteger       := DM.id_office;
          ParamByName('IN_country_gtd').AsInteger     := icbCountryGTD.EditValue;
          Execute;
          res_val := ParamByName('in_INV_ID').Value;
          if res_val = -1 then ShowMessage('Произошла ошибка при добавлении инвойса!')
          else
          Begin
{Вставим DOC_DATA_ASIS}
            qTMP.Close;
            qTMP.SQL.Clear;
            sql_str := 'begin ';
            sql_str := sql_str + ' INVOICE_PKG.INV_REG_INSERT_DATA(:INV_ID_, :ORDER_NUMBER_, :ORDER_MARKNAME_, :PACKING_MARKS_, :PACKING_CODE_, :DESCRIPTION_, :UNITS_, :SKU_, :AMOUNT_IN_THE_PACK_, ';
            sql_str := sql_str + ' :HOL_COLOUR_, :HOL_SUB_TYPE_, :MARKS_CONTENT_, :MARKS_NAMES_, :SHORT_CODE_, :SHORT_NAME_, :BAR_CODE_, :TRANSLATION_, :AMOUNT_PER_UNIT_, :TOTAL_AMOUNT_, :REMARKS_, ';
            sql_str := sql_str + ' :SPEC_LENGTH_, :SPEC_HEADS_, :SPEC_HEADS_SHRUB_, :SPEC_VD2_, :SPEC_WIDTH_, :SPEC_HIGHT_, :TROLLEY_, :TRUCK_, :CLIENT_';
            sql_str := sql_str + ' , :VOLUME_, :VOLDRY_, :NOM_NEW_, :NOM_START_, :COUNTRY_, :NOM_END_, :NOM_ADD_, :NOM_SPEC_, :NOM_PACK_, :NOM_PACK_HOL_, :replacement_); end;';
            qTMP.SQL.Add(sql_str);

            Close;
            //DictView.First;
            gr_noms_v.DataController.GotoFirst;
            SQL.Clear;
            SQL.Add('begin INVOICE_DATA_PACKAGE.INSERT_DATA(:IN_INV_ID,:IN_INVOICE_DATA_AS_IS_ID,:IN_N_ID,:IN_UNITS,:IN_PRICE_PER_UNIT,:IN_TOTAL_SUM,:IN_AMOUNT_IN_THE_PACK,:IN_STORN,:IN_GTD,:IN_GTD_COUNTRY,:IN_NEW,:IN_SPEC,:IN_CLIENT,:IN_parent,:OUT_INVOICE_DATA_ID); end;');
            ParamByName('IN_INV_ID').AsInteger                := res_val;
            ParamByName('IN_STORN').AsInteger                 := 0;
            ParamByName('OUT_INVOICE_DATA_ID').AsInteger      := 0;

            qTMP.ParamByName('INV_ID_').AsInteger         := res_val;
            qTMP.ParamByName('ORDER_NUMBER_').AsInteger   := 0;
            qTMP.ParamByName('ORDER_MARKNAME_').AsString  := '';

            //while not DictView.Eof do
            for I := 0 to gr_noms_v.Controller.SelectedRowCount - 1 do
            begin
              //if not DictViewN_ID.IsNull then
              if not gr_noms_v.Controller.SelectedRows[i].Values[gr_noms_vN_ID.Index] <> null then
              begin
                id_as_is := 0;
//                if DictView.Locate('N_ID',gr_noms_v.Controller.SelectedRows[i].Values[gr_noms_vN_ID.Index],[]) then
                if DictView.Locate('N_ID;COL',  VarArrayOf([gr_noms_v.Controller.SelectedRows[i].Values[gr_noms_vN_ID.Index], gr_noms_v.Controller.SelectedRows[i].Values[gr_noms_vCOL.Index]])  ,[]) then
                begin

{ Е.В. решила пока не объединять, т.к. много полезной инфы в сырых данных будут и там понадобиться разводить позиции по этим признакам
                try
                  DM.ForceQ.Close;
                  if (rgMain.ItemIndex = 0) then
                    DM.ForceQ.SQL.Text := 'SELECT 1 as nn FROM INVOICE_DATA where TO_CLIENT='''+DictViewV_CLIENT.AsString+''' and PRICE_PER_UNIT=0 and N_ID='+inttostr(DictViewN_ID.AsInteger)+' and INV_ID='+inttostr(res_val)
                  else
                    DM.ForceQ.SQL.Text := 'SELECT 1 as nn FROM INVOICE_DATA where TO_CLIENT='''+DictViewV_CLIENT.AsString+''' and PRICE_PER_UNIT=to_number('''+CurrToStr(DictViewHFL.AsCurrency)+''', ''9G99999D99'', '' NLS_NUMERIC_CHARACTERS = '''''+decimal+ ' '''''') and N_ID='+inttostr(DictViewN_ID.AsInteger)+' and INV_ID='+inttostr(res_val);
                  DM.ForceQ.Open;
                Except on E:Exception do
                  Application.MessageBox(PChar(E.Message + #13#10 + DM.ForceQ.SQL.Text), 'Ошибка', MB_ICONERROR);
                end;


                id_as_is := DM.ForceQ.FieldByName('nn').AsInteger;
                if (id_as_is = 1) then
                begin
                  try
                    DM.ForceQ.Close;
                    if (rgMain.ItemIndex = 0) then
                      DM.ForceQ.SQL.Text := 'update INVOICE_DATA set UNITS=UNITS+'+inttostr(DictViewCOL.AsInteger)+' where TO_CLIENT='''+DictViewV_CLIENT.AsString+''' and PRICE_PER_UNIT=0 and N_ID='+inttostr(DictViewN_ID.AsInteger)+' and INV_ID='+inttostr(res_val)
                    else
                      DM.ForceQ.SQL.Text := 'update INVOICE_DATA set UNITS=UNITS+'+inttostr(DictViewCOL.AsInteger)+', TOTAL_SUM=(UNITS+'+inttostr(DictViewCOL.AsInteger)+')*PRICE_PER_UNIT where TO_CLIENT='''+DictViewV_CLIENT.AsString+''' and PRICE_PER_UNIT=to_number('''+CurrToStr(DictViewHFL.AsCurrency)+''', ''9G99999D99'', '' NLS_NUMERIC_CHARACTERS = '''''+decimal+ ' '''''') and N_ID='+inttostr(DictViewN_ID.AsInteger)+' and INV_ID='+inttostr(res_val);
                    DM.ForceQ.Execute;
                    id_as_is := 0;
                  Except on E:Exception do
                    Application.MessageBox(PChar(E.Message + #13#10 + DM.ForceQ.SQL.Text), 'Ошибка', MB_ICONERROR);
                  end;
                end
                else
                begin
//Вставим DOC_DATA_ASIS}
                  qTMP.ParamByName('PACKING_MARKS_').AsString   := DictViewBOX.AsString;
                  qTMP.ParamByName('PACKING_CODE_').AsString    := '';
                  qTMP.ParamByName('DESCRIPTION_').AsString     := DictViewTITLEN.AsString;;
                  qTMP.ParamByName('UNITS_').AsInteger          := DictViewCOL.AsInteger;
                  qTMP.ParamByName('SKU_').AsString             := '';
                  qTMP.ParamByName('AMOUNT_IN_THE_PACK_').Value := DictViewUNIT.AsString;
                  qTMP.ParamByName('HOL_COLOUR_').AsString      := DictViewKLEUR.AsString;
                  qTMP.ParamByName('HOL_SUB_TYPE_').AsString    := DictViewGROEP.AsString;
                  qTMP.ParamByName('MARKS_CONTENT_').AsString   := '';
                  qTMP.ParamByName('MARKS_NAMES_').AsString     := '';
                  qTMP.ParamByName('SHORT_CODE_').AsString      := DictViewKOD.AsString;
                  qTMP.ParamByName('SHORT_NAME_').AsString      := DictViewBASE.AsString;
                  qTMP.ParamByName('BAR_CODE_').AsString        := DictViewCODE.AsString;
                  qTMP.ParamByName('TRANSLATION_').AsString     := '';
                  qTMP.ParamByName('AMOUNT_PER_UNIT_').AsFloat  := DictViewUNIT.AsFloat;
                  qTMP.ParamByName('TOTAL_AMOUNT_').AsFloat     := DictViewCOL.AsInteger;
                  qTMP.ParamByName('REMARKS_').AsString         := DictViewREMARKS.AsString;
                  qTMP.ParamByName('SPEC_LENGTH_').Value        := StrToInt(DictViewLEN.AsString);
                  qTMP.ParamByName('SPEC_HEADS_').Value        := DictViewS22.AsString;
                  qTMP.ParamByName('SPEC_HEADS_SHRUB_').AsString := DictViewS25.AsString;
                  qTMP.ParamByName('SPEC_VD2_').AsString         := DictViewVD2.AsString;
                  qTMP.ParamByName('SPEC_WIDTH_').Value          := DictViewDIAMETER.AsInteger;
                  qTMP.ParamByName('SPEC_HIGHT_').Value          := DictViewLEN.AsInteger;
                  qTMP.ParamByName('TROLLEY_').AsString          := DictViewBOX.AsString;
                  qTMP.ParamByName('TRUCK_').AsString            := DictViewTruck.AsString;
                  qTMP.ParamByName('CLIENT_').AsString           := DictViewV_CLIENT.AsString;
                  qTMP.ParamByName('VOLUME_').Value               := DictViewVOLUME.AsFloat;
                  qTMP.ParamByName('VOLDRY_').Value               := DictViewVOLDRY.AsFloat;

                  qTMP.ParamByName('NOM_NEW_').AsString          := '';
                  qTMP.ParamByName('NOM_START_').AsString        := '';
                  qTMP.ParamByName('COUNTRY_').AsString          := DictViewin_country.AsString; // trim(VarToStr(COUNTRY));

                  qTMP.ParamByName('NOM_END_').AsString          := '';
                  qTMP.ParamByName('NOM_ADD_').AsString          := '';
                  qTMP.ParamByName('NOM_SPEC_').AsString         := '';
                  qTMP.ParamByName('NOM_PACK_').Value            := DictViewUNIT.AsInteger;
                  qTMP.ParamByName('NOM_PACK_HOL_').AsString     := '0';
                  qTMP.ParamByName('replacement_').AsString      := '';
                  qTMP.Execute;

                  DM.ForceQ.Close;
                  DM.ForceQ.SQL.Text := 'SELECT get_office_unique_curr(''INVOICE_DATA_AS_IS_ID'') as nn FROM DUAL';
                  DM.ForceQ.Open;
                  id_as_is := DM.ForceQ.FieldByName('nn').AsInteger;


                  Close;
                  ParamByName('IN_INVOICE_DATA_AS_IS_ID').Value     := id_as_is;
                  ParamByName('IN_GTD').Value                       := DictViewGTD.AsString;
                  ParamByName('IN_N_ID').AsInteger                  := DictViewN_ID.AsInteger;
                  ParamByName('IN_UNITS').AsInteger                 := DictViewCOL.AsInteger;
                  if rgMain.ItemIndex = 0 then
                  begin
                    ParamByName('IN_PRICE_PER_UNIT').AsFloat          := 0;
                    ParamByName('IN_TOTAL_SUM').AsFloat               := 0;
                  end
                  else
                  begin
                    ParamByName('IN_PRICE_PER_UNIT').AsFloat          := DictViewHFL.AsCurrency;
                    ParamByName('IN_TOTAL_SUM').AsFloat               := DictViewHFL.AsCurrency * DictViewCOL.AsInteger;
                  end;
                  ParamByName('IN_AMOUNT_IN_THE_PACK').Value        := DictViewUNIT.AsInteger;
                  ParamByName('IN_GTD_COUNTRY').Value               := icbCountryGTD.EditValue;

                  ParamByName('IN_NEW').AsInteger                   := DictViewNOM_NEW.AsInteger;
                  ParamByName('IN_SPEC').AsInteger                  := 0;
                  ParamByName('IN_CLIENT').AsString                 := DictViewV_CLIENT.AsString;

                  ParamByName('IN_parent').value                    := NULL;

                  Execute;

                  // Вызов процедуры по смене веса при его наличии
                  if (DictViewVOLUME.AsFloat <> 0) or (DictViewVOLDRY.AsFloat <> 0) then
                  begin
                    DM.ForceQ.Close;
                    DM.ForceQ.SQL.Text := 'begin INVOICE2_PKG.CHANGE_VOLUME(:N_ID_, :VOLUME_, :VOLDRY_); end;';
                    DM.ForceQ.ParamByName('N_ID_').AsInteger   := DictViewN_ID.AsInteger;
                    DM.ForceQ.ParamByName('VOLUME_').Value       := DictViewVOLUME.AsFloat;
                    DM.ForceQ.ParamByName('VOLDRY_').Value       := DictViewVOLDRY.AsFloat;
                    DM.ForceQ.Execute;
                  end;
                {end;}
                end;




              end;

              //DictView.Next;
            end;

            try
              DM.ForceQ.Close;
              DM.ForceQ.SQL.Text := 'delete from INVOICE_DATA where UNITS=0 and INV_ID='+inttostr(res_val);
              DM.ForceQ.Execute;
            Except on E:Exception do
              Application.MessageBox(PChar(E.Message + #13#10 + DM.ForceQ.SQL.Text), 'Ошибка', MB_ICONERROR);
            end;

            Application.MessageBox('Инвойс сформирован!', 'Результат', MB_ICONINFORMATION);
          End;
        End;
      finally
        DictView.EnableControls;
      end;
  Except on E:Exception do
      Application.MessageBox(PChar(E.Message), 'Ошибка', MB_ICONERROR);
  End;
end;









procedure TfrmOrder.Button1Click(Sender: TObject);
begin
  cdsVolume.Open;
  cdsVolume.First;
  while not cdsVolume.eof do
  begin
            try
              DM.ForceQ.Close;
              DM.ForceQ.SQL.Text := 'insert into creator.weight_import values('''+cdsVolumeBCODE.AsString+''', '+cdsVolumeVOLUME.AsString+', '+cdsVolumeVOLDRY.AsString+')';
              DM.ForceQ.Execute;
            Except on E:Exception do
              Application.MessageBox(PChar(E.Message + #13#10 + DM.ForceQ.SQL.Text), 'Ошибка', MB_ICONERROR);
            end;
    cdsVolume.Next;
  end;
  dm.STAR_DB.Commit;
  cdsVolume.close;
end;

procedure TfrmOrder.bc_fontsizePropertiesChange(Sender: TObject);
Var RegIni : TIniFile;
begin
  gr_noms.Font.Size := bc_fontsize.EditValue;
  grOrder.Font.Size     := bc_fontsize.EditValue;

  try
    RegIni := TIniFile.Create(ProgPath+'/ini/'+DM.STAR_DB.Username+'_font.ini');
    RegIni.WriteString('FontSize', 'Value', bc_fontsize.EditValue);
  finally
    RegIni.Free;
  end;
end;

procedure TfrmOrder.btnAutoClick(Sender: TObject);
begin
  if not DictView.Active or DictView.IsEmpty then exit;

  isAutoLoad := true;
  DictView.First;

  pg_main.Properties.Max := DictView.RecordCount;
  pg_main.Position := 0;
  pnl_progress.Visible := true;
  pnl_progress.Repaint;

  try
    DictView.DisableControls;
    while not DictView.Eof do
    begin
      if DictViewN_ID.IsNull then
      begin
        //grOrder.DataSource.DataSet.Locate('CODE',DictViewCODE.AsString,[]); 2013-01-15
        grOrder.DataSource.DataSet.Locate('CODE',DictViewBAR_CODE.AsString,[]);
        aEdit.Execute;
      end;

      if isAbort then
      begin
        isAutoLoad := false;
        isAbort := false;
        break;
      end;

      DictView.Next;
      pg_main.Position := DictView.RecNo;
      pg_main.Repaint;
    end;
    pnl_progress.Visible := false;
    pnl_progress.Repaint;
    Application.MessageBox('Данные распознаны!', 'Результат', MB_ICONINFORMATION);
  finally
    DictView.EnableControls;
    aRefresh.Execute;
    isAutoLoad := false;
  end;
end;


procedure TfrmOrder.mnChangeBarCodeClick(Sender: TObject);
begin
  if not DictView.Active or DictView.IsEmpty or DictViewNOM_N_ID.IsNull then exit;

  with DM.SelQ do
  begin
    Close;
    SQL.Clear;
    SQL.Add('begin nomenclature2_pkg.change_barcode(:p_bar_code, :p_n_id); end;');
    ParamByName('p_bar_code').AsString := DictViewin_code.AsString;
    ParamByName('p_n_id').AsInteger := DictViewNOM_N_ID.AsInteger;
    Execute;
    DictView.RefreshRecord;
    aCalcBarCodeExists.Execute;
  end;
end;


end.
