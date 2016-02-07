unit UStat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxTextEdit, cxCalendar, cxCurrencyEdit, DBAccess, Ora, MemDS,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid, ActnList, cxContainer,
  cxMaskEdit, cxDropDownEdit, cxSplitter, cxPC, ShellApi, cxGridExportLink,
  frxExportMail, frxExportCSV, frxExportText, frxExportXLS, frxExportRTF,
  frxExportHTML, frxClass, frxExportPDF, frxDBSet, useful_functions, PI_Library_reg;

type
  TfrmStat = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    btn_close: TcxButton;
    pnl_main: TPanel;
    Panel2: TPanel;
    de_begin: TcxDateEdit;
    de_end: TcxDateEdit;
    te_gtd: TcxTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    te_fio: TcxTextEdit;
    btn_search: TcxButton;
    ActionList1: TActionList;
    DOC: TOraQuery;
    DOC_DS: TOraDataSource;
    aSearch: TAction;
    pc_main: TcxPageControl;
    tsh_nakls: TcxTabSheet;
    tsh_gtd: TcxTabSheet;
    grid_docs_s: TcxGrid;
    grid_docs_s_v: TcxGridDBTableView;
    grid_docs_s_vBUH_DOC_TYPE_NAME: TcxGridDBColumn;
    bdoc_NUMBER_FULL: TcxGridDBColumn;
    bdoc_DOC_DATE: TcxGridDBColumn;
    bdoc_NICK: TcxGridDBColumn;
    bdoc_FIO: TcxGridDBColumn;
    bdoc_QUANTITY_ALL: TcxGridDBColumn;
    bdoc_PRICE_ALL: TcxGridDBColumn;
    bdoc_DISCOUNT: TcxGridDBColumn;
    bdoc_NDS: TcxGridDBColumn;
    bdoc_COMPANY_NAME: TcxGridDBColumn;
    bdoc_COMMENTS: TcxGridDBColumn;
    _bdoc_id_doc: TcxGridDBColumn;
    grid_docs_s_l: TcxGridLevel;
    CDS_GTD: TOraQuery;
    DS_GTD: TOraDataSource;
    CDS_GTDDD: TDateTimeField;
    CDS_GTDINN: TFloatField;
    CDS_GTDOUTT: TFloatField;
    gr_gtd: TcxGrid;
    gr_gtd_v: TcxGridDBTableView;
    gr_gtd_l: TcxGridLevel;
    gr_gtd_vDD: TcxGridDBColumn;
    gr_gtd_vINN: TcxGridDBColumn;
    gr_gtd_vOUTT: TcxGridDBColumn;
    cxSplitter1: TcxSplitter;
    gr_noms: TcxGrid;
    gr_noms_v: TcxGridDBTableView;
    gr_noms_l: TcxGridLevel;
    CDS_NOMS: TOraQuery;
    DS_NOMS: TOraDataSource;
    gr_noms_vINN: TcxGridDBColumn;
    gr_noms_vOUTT: TcxGridDBColumn;
    gr_noms_vCOMPILED_NAME: TcxGridDBColumn;
    gr_noms_vFULL_NAME: TcxGridDBColumn;
    gr_noms_vF_NAME: TcxGridDBColumn;
    gr_noms_vF_NAME_RU: TcxGridDBColumn;
    gr_noms_vF_SUB_TYPE: TcxGridDBColumn;
    gr_noms_vF_TYPE: TcxGridDBColumn;
    gr_noms_vID_DEPARTMENTS: TcxGridDBColumn;
    gr_noms_vDEPT: TcxGridDBColumn;
    gr_noms_vFT_ID: TcxGridDBColumn;
    gr_noms_vHOL_SUB_TYPE: TcxGridDBColumn;
    gr_noms_vSUB_WEIGHT: TcxGridDBColumn;
    gr_noms_vHT_ID: TcxGridDBColumn;
    gr_noms_vN_ID: TcxGridDBColumn;
    gr_noms_vFN_ID: TcxGridDBColumn;
    gr_noms_vFST_ID: TcxGridDBColumn;
    gr_noms_vS_ID: TcxGridDBColumn;
    gr_noms_vC_ID: TcxGridDBColumn;
    gr_noms_vCOL_ID: TcxGridDBColumn;
    gr_noms_vH_CODE: TcxGridDBColumn;
    gr_noms_vH_NAME: TcxGridDBColumn;
    gr_noms_vCODE: TcxGridDBColumn;
    gr_noms_vLEN: TcxGridDBColumn;
    gr_noms_vPACK: TcxGridDBColumn;
    gr_noms_vDIAMETER: TcxGridDBColumn;
    gr_noms_vVBN: TcxGridDBColumn;
    gr_noms_vHOL_TYPE: TcxGridDBColumn;
    gr_noms_vWEIGHT: TcxGridDBColumn;
    gr_noms_vREMARKS: TcxGridDBColumn;
    gr_noms_vS_NAME_RU: TcxGridDBColumn;
    gr_noms_vBAR_CODE: TcxGridDBColumn;
    gr_noms_vCUST_COEF: TcxGridDBColumn;
    gr_noms_vPHOTO: TcxGridDBColumn;
    gr_noms_vIS_PHOTO: TcxGridDBColumn;
    gr_noms_vCOLOUR: TcxGridDBColumn;
    gr_noms_vCOUNTRY: TcxGridDBColumn;
    gr_noms_vTYPE_SUBTYPE: TcxGridDBColumn;
    gr_noms_vHOL_MARKS: TcxGridDBColumn;
    gr_noms_vRUS_MARKS: TcxGridDBColumn;
    gr_noms_vGREAT_NAME: TcxGridDBColumn;
    gr_noms_vGREAT_NAME_F: TcxGridDBColumn;
    gr_noms_vNAME_CODE: TcxGridDBColumn;
    aNakls: TAction;
    aGTD: TAction;
    OraQuery: TOraQuery;
    CheckBox1: TCheckBox;
    aGrouping: TAction;
    Label3: TLabel;
    te_hcode: TcxTextEdit;
    stat_menu: TPopupMenu;
    spis_m1: TMenuItem;
    spis_m2: TMenuItem;
    SaveDialog1: TSaveDialog;
    N1: TMenuItem;
    mn_print_all: TMenuItem;
    mn_print_nakl: TMenuItem;
    aPrintAll: TAction;
    aPrintNakl: TAction;
    frxReportStat: TfrxReport;
    frxDB_DOC: TfrxDBDataset;
    frxDB_NOM: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxXLSExport1: TfrxXLSExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxCSVExport1: TfrxCSVExport;
    frxMailExport1: TfrxMailExport;
    DOC_DATA: TOraQuery;
    DOC_DATA_DS: TOraDataSource;
    frxDBAddess: TfrxDBDataset;
    frxDBBank: TfrxDBDataset;
    frxDBCompany: TfrxDBDataset;
    frxDB_DOC_DATA: TfrxDBDataset;
    CDS_NOMSINN: TFloatField;
    CDS_NOMSOUTT: TFloatField;
    CDS_NOMSCOMPILED_NAME: TStringField;
    CDS_NOMSFULL_NAME: TStringField;
    CDS_NOMSF_NAME: TStringField;
    CDS_NOMSF_NAME_RU: TStringField;
    CDS_NOMSF_SUB_TYPE: TStringField;
    CDS_NOMSF_TYPE: TStringField;
    CDS_NOMSID_DEPARTMENTS: TFloatField;
    CDS_NOMSDEPT: TStringField;
    CDS_NOMSFT_ID: TFloatField;
    CDS_NOMSHOL_SUB_TYPE: TStringField;
    CDS_NOMSSUB_WEIGHT: TFloatField;
    CDS_NOMSHT_ID: TFloatField;
    CDS_NOMSN_ID: TFloatField;
    CDS_NOMSFN_ID: TFloatField;
    CDS_NOMSFST_ID: TFloatField;
    CDS_NOMSS_ID: TFloatField;
    CDS_NOMSC_ID: TFloatField;
    CDS_NOMSCOL_ID: TFloatField;
    CDS_NOMSH_CODE: TStringField;
    CDS_NOMSH_NAME: TStringField;
    CDS_NOMSCODE: TFloatField;
    CDS_NOMSLEN: TIntegerField;
    CDS_NOMSPACK: TIntegerField;
    CDS_NOMSDIAMETER: TFloatField;
    CDS_NOMSVBN: TIntegerField;
    CDS_NOMSHOL_TYPE: TStringField;
    CDS_NOMSWEIGHT: TFloatField;
    CDS_NOMSREMARKS: TStringField;
    CDS_NOMSS_NAME_RU: TStringField;
    CDS_NOMSBAR_CODE: TStringField;
    CDS_NOMSCUST_COEF: TFloatField;
    CDS_NOMSPHOTO: TStringField;
    CDS_NOMSIS_PHOTO: TFloatField;
    CDS_NOMSCOLOUR: TStringField;
    CDS_NOMSCOUNTRY: TStringField;
    CDS_NOMSTYPE_SUBTYPE: TStringField;
    CDS_NOMSHOL_MARKS: TStringField;
    CDS_NOMSRUS_MARKS: TStringField;
    CDS_NOMSGREAT_NAME: TStringField;
    CDS_NOMSGREAT_NAME_F: TStringField;
    CDS_NOMSNAME_CODE: TStringField;
    CDS_NOMSCOMPILED_NAME_OTDEL: TStringField;
    CDS_NOMSID_OFFICE: TIntegerField;
    CDS_NOMSDATE_CHANGE: TDateTimeField;
    CDS_NOMSNOPRINT: TIntegerField;
    CDS_NOMSNOTUSE: TIntegerField;
    CDS_NOMSNAMECODE: TStringField;
    CDS_NOMSTNVED: TStringField;
    CDS_NOMSWEIGHTDRY: TFloatField;
    DOCID_DOC: TFloatField;
    DOCDOC_NUMBER: TFloatField;
    DOCID_CLIENT: TIntegerField;
    DOCID_DEPARTMENTS: TIntegerField;
    DOCOPERATOR_NAME: TStringField;
    DOCDOC_DATE: TDateTimeField;
    DOCDOC_DATE_REAL: TDateTimeField;
    DOCNUMBER_FULL: TStringField;
    DOCCOMMENTS: TStringField;
    DOCNDS: TFloatField;
    DOCDISCOUNT: TFloatField;
    DOCID_DOC_TYPE: TFloatField;
    DOCDOC_NUMBER_ADD: TStringField;
    DOCID_COMPANY: TFloatField;
    DOCID_BANC: TFloatField;
    DOCTTYPE_NAME: TStringField;
    DOCREG_SVID_PRINT: TFloatField;
    DOCTTYPE: TFloatField;
    DOCAGREEMENT: TStringField;
    DOCID_CLIENTS: TIntegerField;
    DOCREG_SVID: TStringField;
    DOCNICK: TStringField;
    DOCFIO: TStringField;
    DOCINN: TStringField;
    DOCKPP: TStringField;
    DOCOKATO: TStringField;
    DOCADDRESS: TStringField;
    DOCBANK: TStringField;
    DOCPHONE: TStringField;
    DOCBUH_DOC_TYPE_NAME: TStringField;
    DOCCOMPANY_NAME: TStringField;
    DOCBANC_NAME: TStringField;
    DOCSUM_PRICE_OLD: TFloatField;
    DOCSUM_PRICE_NEW: TFloatField;
    DOCQUANTITY_ALL: TFloatField;
    DOCSUM_PRICE_DIFFERENCE: TFloatField;
    DOCPRICE_ALL: TFloatField;
    DOCINV_ID: TFloatField;
    DOCSUPPLIER_DATE: TDateTimeField;
    DOCSUPPLIER_NUMBER: TStringField;
    DOCSUPLIER: TStringField;
    DOCID_OFFICE: TIntegerField;
    DOCBRIEF: TStringField;
    procedure aSearchExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CDS_GTDAfterOpen(DataSet: TDataSet);
    procedure aNaklsExecute(Sender: TObject);
    procedure aGTDExecute(Sender: TObject);
    procedure grid_docs_s_vDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure aGroupingExecute(Sender: TObject);
    procedure spis_m1Click(Sender: TObject);
    procedure spis_m2Click(Sender: TObject);
    procedure aPrintAllExecute(Sender: TObject);
    procedure aPrintNaklExecute(Sender: TObject);
    function frxReportStatUserFunction(const MethodName: string;
      var Params: Variant): Variant;
    procedure stat_menuChange(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
    procedure DOCBeforeOpen(DataSet: TDataSet);
  private
    path: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStat: TfrmStat;

implementation

uses dataM, doc_new, prihod, print_type_select;

{$R *.dfm}

procedure TfrmStat.aGroupingExecute(Sender: TObject);
begin
  if (CheckBox1.Checked) then CheckBox1.Checked := true else CheckBox1.Checked := false;
  grid_docs_s_vBUH_DOC_TYPE_NAME.Visible := not CheckBox1.Checked;
  grid_docs_s_vBUH_DOC_TYPE_NAME.Options.ShowCaption := not CheckBox1.Checked;
  if (CheckBox1.Checked) then grid_docs_s_vBUH_DOC_TYPE_NAME.GroupIndex := 0 else grid_docs_s_vBUH_DOC_TYPE_NAME.GroupIndex := -1;
end;

procedure TfrmStat.aGTDExecute(Sender: TObject);
begin
  pc_main.ActivePageIndex := 1;
end;

procedure TfrmStat.aNaklsExecute(Sender: TObject);
begin
  pc_main.ActivePageIndex := 0;
end;

// Печать списка
procedure TfrmStat.aPrintAllExecute(Sender: TObject);
var Memo1: TfrxMemoView;
    cds: TOraQuery;
    str: AnsiString;
begin
  str := '';
  if pc_main.ActivePageIndex = 0 then
  begin
    cds := DOC;
    frxReportStat.LoadFromFile(path+'raports\doc_list_stat.fr3');
  end
  else
  begin
    cds := CDS_NOMS;
    frxReportStat.LoadFromFile(path+'raports\gtd_list_stat.fr3');
  end;

  if (cds.RecordCount <> 0) then
  begin
    try
      cds.DisableControls;
      path := ExtractFilePath(Application.ExeName);
      frxReportStat.PrepareReport;
      Memo1 := frxReportStat.FindObject('Memo6') as TfrxMemoView;
      Memo1.Text := 'Документы за период с '+ DateToStr(de_begin.Date) + ' по ' + DateToStr(de_end.Date);
      Memo1 := frxReportStat.FindObject('Memo3') as TfrxMemoView;
      Memo1.Text := DataM.department_name;

      if (VarToStr(te_gtd.EditValue) <> '') then
        str := str + 'ГТД: '+ VarToStr(te_gtd.EditValue) + '  ';
      if (VarToStr(te_fio.EditValue) <> '') then
        str := str + 'ФИО: '+ VarToStr(te_fio.EditValue) + '  ';
      if (VarToStr(te_hcode.EditValue) <> '') then
        str := str + 'артикул: '+ VarToStr(te_hcode.EditValue) + '  ';
      if (str <> '') then
      begin
        Memo1 := frxReportStat.FindObject('Memo7') as TfrxMemoView;
        Memo1.Text := str;
      end;

    Memo1 := frxReportStat.FindObject('Memo2') as TfrxMemoView;
    Memo1.Text := DM.title_name;
{
    if DM.id_office = 1 then
      Memo1.Text := 'ООО «СТАРЛАЙТ»';
    if DM.id_office = 2 then
      Memo1.Text := 'ООО «СТАРЛАЙТ Поволжье Кэш энд Кэрри»';
    if DM.id_office = 3 then
      Memo1.Text := 'ООО «СТАРЛАЙТ Казань»';
}      
      frxReportStat.ShowReport;
      cds.EnableControls;
    except on E: Exception do
      begin
        cds.EnableControls;
        ShowMessage('Ошибка при выводе на печать!'+#10#13+'Проверьте настройки принтера');
      end;
    end;
  end;
end;

// Печать накладной
procedure TfrmStat.aPrintNaklExecute(Sender: TObject);
var theForm: TForm;
    ID_company, ID_BANC:integer;
    cds: TOraQuery;
    documenttype_id: Variant;
    Memo1, Memo2: TfrxMemoView;
begin
  if pc_main.ActivePageIndex = 0 then
  begin
    cds := DOC;
    frxReportStat.LoadFromFile(path+'raports\doc_list_stat.fr3');
  end
  else
  begin
    cds := CDS_NOMS;
    frxReportStat.LoadFromFile(path+'raports\doc_list.fr3');
  end;

  if (cds.RecordCount <> 0) then
  begin
    documenttype_id := DOCID_DOC_TYPE.Value;
    ID_company := 0;
    ID_BANC    := 0;

    ID_company := doc.FieldByName('ID_company').AsInteger;
    ID_BANC    := doc.FieldByName('ID_BANC').AsInteger;

    if (ID_company = 0) then ID_company := company_default;
    if (ID_BANC = 0)    then ID_BANC    := banc_default;

    dm.company.Close;
    dm.company.ParamByName('ID_company').AsInteger     := ID_company;
    dm.company.ParamByName('ID_DEPARTMENTS').AsInteger := strtoint(DataM.department_id);
    dm.company.Open;

    dm.banc.Close;
    dm.banc.ParamByName('ID_BANC').AsInteger           := banc_default;
    dm.banc.Open;

    theForm := TPrintTypeSelectForm.Create(Application);

    TPrintTypeSelectForm(theForm).documenttype_id   := documenttype_id;
    TPrintTypeSelectForm(theForm).documenttype_name := DOCBUH_DOC_TYPE_NAME.Value;
    TPrintTypeSelectForm(theForm).Memo1.Text        := DOC.FieldByName('address').AsString;
    TPrintTypeSelectForm(theForm).id_client_        := DOC.FieldByName('id_client').AsInteger;
    TPrintTypeSelectForm(theForm).UpDown1.Position := 1;

    DM.CDS_ADDRESS.Close;
    DM.CDS_ADDRESS.ParamByName('id_clients').AsInteger := DOC.FieldByName('id_client').AsInteger;
    DM.CDS_ADDRESS.Open;

    if (theForm.showmodal = mrOk) then
    begin

      frxReportStat.AddFunction('function Propis(Value: integer): String','Дополнительно','Сумма прописью');
      frxReportStat.AddFunction('function Ruble(Value: integer; Skl: String): String','Дополнительно','Рубли');
      frxReportStat.AddFunction('function Kopeika(Value: integer; Skp: String): String','Дополнительно','Копейки');

      DOC_DATA.Open;

      frxReportStat.Clear;
      try
        if (documenttype_id = 1) then
          frxReportStat.LoadFromFile(path+'raports\doc_check.fr3');

        if (documenttype_id = 2) then
        begin
          if (doc.FieldByName('DOC_DATE').AsDateTime < StrToDate('09.06.2009')) then
            frxReportStat.LoadFromFile(path+'raports\doc_faktura_old.fr3')
          else
          begin
            if (doc.FieldByName('DOC_DATE').AsDateTime < StrToDate('02.09.2010')) then
               frxReportStat.LoadFromFile(path+'raports\doc_faktura.fr3')
            else
            begin
                 if (doc.FieldByName('DOC_DATE').AsDateTime < StrToDate('24.01.2012')) then
                    frxReportStat.LoadFromFile(path+'raports\doc_faktura_020910.fr3')
                 else
                    frxReportStat.LoadFromFile(path+'raports\doc_faktura_240112.fr3');
            end;
          end;
        end;

        if (documenttype_id = 3) then
        begin
          if (TPrintTypeSelectForm(theForm).NaKladCB.Checked = true) then
            frxReportStat.LoadFromFile(path+'raports\doc_nakladnaya.fr3');
          if (TPrintTypeSelectForm(theForm).NaKlad1CB.Checked = true) then
            frxReportStat.LoadFromFile(path+'raports\doc_nakladnaya_usech.fr3');
        end;

        if (documenttype_id = 6) then
        begin
          frxReportStat.LoadFromFile(path+'raports\doc_reserv.fr3');
        end;

        frxReportStat.PrepareReport;
        frxReportStat.PrintOptions.Copies := TPrintTypeSelectForm(theForm).UpDown1.Position; //StrToInt(PrintNumberEdit.Text);



        if (documenttype_id = 2) then
        begin
          Memo1 := frxReportStat.FindObject('Memo64') as TfrxMemoView;
          Memo2 := frxReportStat.FindObject('Memo65') as TfrxMemoView;

          if not OraQuery.IsEmpty then
          begin
             Memo1.Text := 'По приказу '+ OraQuery.FieldByName('prikaz_n').AsString +' от '+ OraQuery.FieldByName('date_begin').AsString +' г.';
             Memo2.Text := Memo1.Text;
          end
          else
          begin
            if (GetOfficeID = 1) then
            begin
               if (doc.FieldByName('DOC_DATE').AsDateTime >= StrToDate('01.06.2011')) then
               begin
                 if (DOC.FieldByName('ID_company').AsInteger = 81) then
                 begin
                   Memo1.Text := 'По приказу №5/Б от 01.06.2011 г.';
                   Memo2.Text := 'По приказу №5/Б от 01.06.2011 г.';
                 end
                 else
                 begin
                   Memo1.Text := 'По приказу №2/Б от 01.06.2011 г.';
                   Memo2.Text := 'По приказу №2/Б от 01.06.2011 г.';
                 end;
               end;
            end
            else
            begin
               Memo1.Text := '';
               Memo2.Text := '';
            end;
          end;
        end;

        if (documenttype_id = 3) then
        begin
          if (TPrintTypeSelectForm(theForm).NaKladCB.Checked = true) then
          begin
            Memo1 := frxReportStat.FindObject('Memo111') as TfrxMemoView;
            Memo2 := frxReportStat.FindObject('Memo117') as TfrxMemoView;

            if not OraQuery.IsEmpty then
            begin
               Memo1.Text := 'По приказу '+ OraQuery.FieldByName('prikaz_n').AsString +' от '+ OraQuery.FieldByName('date_begin').AsString +' г.';
               Memo2.Text := Memo1.Text;
            end
            else
            begin
              if (GetOfficeID = 1) then
              begin
                 if (doc.FieldByName('DOC_DATE').AsDateTime >= StrToDate('01.06.2011')) then
                 begin
                   if (DOC.FieldByName('ID_company').AsInteger = 81) then
                   begin
                     Memo1.Text := 'По приказу №5/Б от 01.06.2011 г.';
                     Memo2.Text := 'По приказу №5/Б от 01.06.2011 г.';
                   end
                   else
                   begin
                     Memo1.Text := 'По приказу №2/Б от 01.06.2011 г.';
                     Memo2.Text := 'По приказу №2/Б от 01.06.2011 г.';
                   end;
                 end;
              end
              else
              begin
                 Memo1.Text := '';
                 Memo2.Text := '';
              end;
            end;
          end;

          if (TPrintTypeSelectForm(theForm).NaKlad1CB.Checked = true) then
          begin
            Memo1 := frxReportStat.FindObject('Memo111') as TfrxMemoView;
            Memo2 := frxReportStat.FindObject('Memo43') as TfrxMemoView;

            if not OraQuery.IsEmpty then
            begin
               Memo1.Text := 'По приказу '+ OraQuery.FieldByName('prikaz_n').AsString +' от '+ OraQuery.FieldByName('date_begin').AsString +' г.';
               Memo2.Text := Memo1.Text;
            end
            else
            begin
              if (GetOfficeID = 1) then
              begin
                 if (doc.FieldByName('DOC_DATE').AsDateTime >= StrToDate('01.06.2011')) then
                 begin
                   if (DOC.FieldByName('ID_company').AsInteger = 81) then
                   begin
                     Memo1.Text := 'По приказу №5/Б от 01.06.2011 г.';
                     Memo2.Text := 'По приказу №5/Б от 01.06.2011 г.';
                   end
                   else
                   begin
                     Memo1.Text := 'По приказу №2/Б от 01.06.2011 г.';
                     Memo2.Text := 'По приказу №2/Б от 01.06.2011 г.';
                   end;
                 end;
              end
              else
              begin
                 Memo1.Text := '';
                 Memo2.Text := '';
              end;
            end;
          end;
        end;

        if (documenttype_id = 6) then
        begin
          Memo1 := frxReportStat.FindObject('Memo34') as TfrxMemoView;
          Memo2 := frxReportStat.FindObject('Memo35') as TfrxMemoView;

          if not OraQuery.IsEmpty then
          begin
             Memo1.Text := 'По приказу '+ OraQuery.FieldByName('prikaz_n').AsString +' от '+ OraQuery.FieldByName('date_begin').AsString +' г.';
             Memo2.Text := Memo1.Text;
          end
          else
          begin
            if (GetOfficeID = 1) then
            begin
               if (doc.FieldByName('DOC_DATE').AsDateTime >= StrToDate('01.06.2011')) then
               begin
                 Memo1 := frxReportStat.FindObject('Memo34') as TfrxMemoView;
                 Memo2 := frxReportStat.FindObject('Memo35') as TfrxMemoView;
                 if (DOC.FieldByName('ID_company').AsInteger = 81) then
                 begin
                   Memo1.Text := 'По приказу №5/Б от 01.06.2011 г.';
                   Memo2.Text := 'По приказу №5/Б от 01.06.2011 г.';
                 end
                 else
                 begin
                   Memo1.Text := 'По приказу №2/Б от 01.06.2011 г.';
                   Memo2.Text := 'По приказу №2/Б от 01.06.2011 г.';
                 end;
               end;
            end
            else
            begin
               Memo1.Text := '';
               Memo2.Text := '';
            end;
          end;
        end;




        if (TPrintTypeSelectForm(theForm).ViewCB.Checked = false) then
          frxReportStat.Print
        else
          frxReportStat.ShowReport;



// Копия
        if (Datam.print_copy = 1) then
        begin
          frxReportStat.Clear;
          if (documenttype_id = 2) then
             frxReportStat.LoadFromFile(path+'raports\doc_nakladnaya_usech.fr3');
          if (documenttype_id = 3) then
          begin
            if (doc.FieldByName('DOC_DATE').AsDateTime < StrToDate('09.06.2009')) then
              frxReportStat.LoadFromFile(path+'raports\doc_faktura_old.fr3')
            else
            begin
              if (doc.FieldByName('DOC_DATE').AsDateTime < StrToDate('02.09.2010')) then
                 frxReportStat.LoadFromFile(path+'raports\doc_faktura.fr3')
              else
              begin
                 if (doc.FieldByName('DOC_DATE').AsDateTime < StrToDate('24.01.2012')) then
                    frxReportStat.LoadFromFile(path+'raports\doc_faktura_020910.fr3')
                 else
                    frxReportStat.LoadFromFile(path+'raports\doc_faktura_240112.fr3');
              end;
            end;
          end;
          frxReportStat.PrepareReport;
          frxReportStat.PrintOptions.Copies := TPrintTypeSelectForm(theForm).UpDown1.Position; //StrToInt(PrintNumberEdit.Text);



          if (documenttype_id = 2) then
          begin
            Memo1 := frxReportStat.FindObject('Memo111') as TfrxMemoView;
            Memo2 := frxReportStat.FindObject('Memo43') as TfrxMemoView;

            if not OraQuery.IsEmpty then
            begin
               Memo1.Text := 'По приказу '+ OraQuery.FieldByName('prikaz_n').AsString +' от '+ OraQuery.FieldByName('date_begin').AsString +' г.';
               Memo2.Text := Memo1.Text;
            end
            else
            begin
              if (GetOfficeID = 1) then
              begin
                 if (doc.FieldByName('DOC_DATE').AsDateTime >= StrToDate('01.06.2011')) then
                 begin
                   if (DOC.FieldByName('ID_company').AsInteger = 81) then
                   begin
                     Memo1.Text := 'По приказу №5/Б от 01.06.2011 г.';
                     Memo2.Text := 'По приказу №5/Б от 01.06.2011 г.';
                   end
                   else
                   begin
                     Memo1.Text := 'По приказу №2/Б от 01.06.2011 г.';
                     Memo2.Text := 'По приказу №2/Б от 01.06.2011 г.';
                   end;
                 end;
              end
              else
              begin
                 Memo1.Text := '';
                 Memo2.Text := '';
              end;
            end;
          end;

          if (documenttype_id = 3) then
          begin
            Memo1 := frxReportStat.FindObject('Memo64') as TfrxMemoView;
            Memo2 := frxReportStat.FindObject('Memo65') as TfrxMemoView;

            if not OraQuery.IsEmpty then
            begin
              Memo1.Text := 'По приказу '+ OraQuery.FieldByName('prikaz_n').AsString +' от '+ OraQuery.FieldByName('date_begin').AsString +' г.';
              Memo2.Text := Memo1.Text;
            end
            else
            begin
              if (GetOfficeID = 1) then
              begin
                 if (doc.FieldByName('DOC_DATE').AsDateTime >= StrToDate('01.06.2011')) then
                 begin
                   if (DOC.FieldByName('ID_company').AsInteger = 81) then
                   begin
                     Memo1.Text := 'По приказу №5/Б от 01.06.2011 г.';
                     Memo2.Text := 'По приказу №5/Б от 01.06.2011 г.';
                   end
                   else
                   begin
                     Memo1.Text := 'По приказу №2/Б от 01.06.2011 г.';
                     Memo2.Text := 'По приказу №2/Б от 01.06.2011 г.';
                   end;
                 end;
              end
              else
              begin
                 Memo1.Text := '';
                 Memo2.Text := '';
              end;
            end;
          end;


          if (TPrintTypeSelectForm(theForm).ViewCB.Checked = false) then
            frxReportStat.Print
          else
            frxReportStat.ShowReport;
        end;



     	except
     	  on E: Exception do
          MessageBox(Handle, PChar('Ошибка при выводе на печать!'+#10#13+E.Message), 'Ощибка!', MB_ICONERROR);
      End;

    end;

    theForm.Free;
    DOC_DATA.Close;
    DM.CDS_ADDRESS.Close;
    dm.banc.Close;
    dm.company.Close;
  end;
end;



procedure TfrmStat.aSearchExecute(Sender: TObject);
begin
	if (de_begin.Date > de_end.Date) then
  	ShowMessage('Первая дата не может быть больше второй!')
	else
	begin
    try
    	screen.cursor := crhourglass;
      te_gtd.PostEditValue;
  	  DOC.Close;
      CDS_GTD.Close;

	    DOC.ParamByName('id_dep_').Value        := strtoint(DataM.department_id);
	    DOC.ParamByName('DOC_NUMBER_').AsString := trim(VarToStr(te_hcode.EditValue));; //NumberDoc.Text;
 	    DOC.ParamByName('DOC_DATE1_').AsDate    := de_begin.Date;
   	  DOC.ParamByName('DOC_DATE2_').AsDate    := de_end.Date;
  	  DOC.ParamByName('ID_DOC_TYPE_').Value   := 0; //documenttype_id;
	    DOC.ParamByName('fio_').AsString        := trim(VarToStr(te_fio.EditValue));
	    DOC.ParamByName('nick_').AsString       := ''; //trim(ClientNick.Text);
	    DOC.ParamByName('gtd_').AsString        := trim(VarToStr(te_gtd.EditValue));
    	DOC.Open;

      if ( trim(VarToStr(te_gtd.EditValue)) <> '' ) then
      begin
        CDS_GTD.ParamByName('GTD_').AsString := trim(VarToStr(te_gtd.EditValue));
        CDS_GTD.Open;
      end;

	    screen.cursor:=crdefault;
    except
      on E: Exception do
        begin
          screen.cursor := crdefault;
          MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
        end;
    End;
	end;
end;

procedure TfrmStat.CDS_GTDAfterOpen(DataSet: TDataSet);
begin
  if (CDS_GTD.RecordCount > 0) then
  begin
    CDS_NOMS.Close;
    CDS_NOMS.ParamByName('GTD_').AsString := trim(VarToStr(te_gtd.EditValue));
    CDS_NOMS.ParamByName('DATE_').AsDate  := CDS_GTDDD.AsDateTime;
    CDS_NOMS.Open;
  end;
end;

procedure TfrmStat.DOCBeforeOpen(DataSet: TDataSet);
begin
  (DataSet As TOraQuery).ParamByName('v_office').AsInteger := dm.id_office;
end;

procedure TfrmStat.FormClose(Sender: TObject; var Action: TCloseAction);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  AOptions := [];
  AStoreKey     := path + '/ini/buh_stat_nakls_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'Nakladnaya';
  grid_docs_s_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);

  AStoreKey     := path + '/ini/buh_stat_noms_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'Noms';
  gr_noms_v.StoreToIniFile(AStoreKey, True, AOptions, ASaveViewName);
end;

procedure TfrmStat.FormShow(Sender: TObject);
var
  AStoreKey, ASaveViewName: string;
  AOptions: TcxGridStorageOptions;
begin
  path          := ExtractFilePath(Application.ExeName);
  AOptions      := [];
  AStoreKey     := path + '/ini/buh_stat_nakls_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'Nakladnaya';
  grid_docs_s_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  AStoreKey     := path + '/ini/buh_stat_noms_'+DM.OraSession.Username+'.ini';
  ASaveViewName := 'Noms';
  gr_noms_v.RestoreFromIniFile(AStoreKey, False, False, AOptions, ASaveViewName);

  aGrouping.Execute;

  aPrintAll.Enabled  := DataM.Operator_print;
  aPrintNakl.Enabled := DataM.Operator_print;
  spis_m1.Enabled    := DataM.Operator_print;

  de_begin.Date := Now();
  de_end.Date   := Now();
end;


function TfrmStat.frxReportStatUserFunction(const MethodName: string;
  var Params: Variant): Variant;
begin
  try
    if (UpperCase(MethodName) = 'PROPIS') then
      Result := Propis( Trunc(Params[0]) );
    if (UpperCase(MethodName) = 'RUBLE') then
      Result := Ruble( Trunc(Params[0]), Params[1] );
    if (UpperCase(MethodName) = 'KOPEIKA') then
      Result := Kopeika( Trunc(Params[0]), Params[1] );
  except
  end;
end;

//
//  Кликнем на накладной
//
procedure TfrmStat.grid_docs_s_vDblClick(Sender: TObject);
var id_root: integer;
    theForm: TForm;
begin
  if (DataM.Operator_edit = false) then
     MessageBox(Handle, 'У Вас нет прав для редактирования документа!', 'Внимание!', MB_ICONSTOP)
  else
  begin
    if (DOC.RecordCount = 0) then
       MessageBox(Handle, 'Не выбран ни один документ!', 'Внимание!', MB_ICONSTOP)
    else
    begin
      if (DOC.FieldByName('id_doc_type').AsInteger = 99) then
      begin
        theForm := TprihodForm.Create(Application);
        try
          TprihodForm(theForm).ID := DOC.FieldByName('ID_DOC').AsInteger;
          TprihodForm(theForm).N_ID := 0;
          TprihodForm(theForm).hcode_ := trim(VarToStr(te_hcode.EditValue));
          TprihodForm(theForm).gtd_   := trim(VarToStr(te_gtd.EditValue));
          theForm.ShowModal;
        finally
          theForm.Free;
        end;
      end
      else
      begin
        DM.OraSession.Savepoint('Begin_Doc_Edit');
        theForm := TDocNewForm.Create(Application);
        TDocNewForm(theForm).id := doc.FieldByName('id_doc').AsInteger;
        TDocNewForm(theForm).hcode_ := trim(VarToStr(te_hcode.EditValue));
        TDocNewForm(theForm).gtd_   := trim(VarToStr(te_gtd.EditValue));

        if theForm.ShowModal = mrOk then
        begin
          try
            id_root := DOC.FieldByName('ID_DOC').AsInteger;

            TDocNewForm(theForm).DocNumberEdit.PostEditValue;
            TDocNewForm(theForm).DOC_DATE.PostEditValue;
            OraQuery.SQL.Clear;
            OraQuery.SQL.Add('begin buh_pkg.update_doc(:date_, :DISCOUNTEdit_, :NDSEdit_, :DocNumberEdit_, :DocNumberAddEdit_, :COMMENTSEdit_, :id_client_, :id_, :BEZNDSMINUS_, :BEZNDS_); end;');
            OraQuery.ParamByName('date_').Value             := TDocNewForm(theForm).DOC_DATE.EditValue;
            OraQuery.ParamByName('DISCOUNTEdit_').Value     := StrToInt(TDocNewForm(theForm).DISCOUNTEdit.Text);
            OraQuery.ParamByName('NDSEdit_').Value          := TDocNewForm(theForm).NDSEdit.text;
            OraQuery.ParamByName('DocNumberEdit_').Value    := TDocNewForm(theForm).DocNumberEdit.EditValue;
            OraQuery.ParamByName('DocNumberAddEdit_').Value := TDocNewForm(theForm).DocNumberAddEdit.text;
            OraQuery.ParamByName('COMMENTSEdit_').Value     := TDocNewForm(theForm).COMMENTSEdit.Text;
            OraQuery.ParamByName('id_client_').Value        := TDocNewForm(theForm).doc.FieldByName('ID_CLIENT').AsInteger;
            OraQuery.ParamByName('id_').Value               := id_root;
            OraQuery.ParamByName('BEZNDSMINUS_').Value      := BoolToInt(TDocNewForm(theForm).chbMinusNDS.Checked);
            OraQuery.ParamByName('BEZNDS_').Value           := BoolToInt(TDocNewForm(theForm).chbWithoutNDS.Checked);

            OraQuery.ExecSQL;
            DM.OraSession.Commit;
            doc.Refresh;
            DOC.Locate('ID_DOC', id_root, []);
            ShowMessage('Операция прошла успешно!');
          except
          End;
        end
        else
        begin
          DM.OraSession.RollbackToSavepoint('Begin_Doc_Edit');
          exit;
        end;
        theForm.Free;
      end;
    end; // if (DOC.RecordCount = 0) then
  end; //if (DataM.Operator_edit <> 1) then
end;

procedure TfrmStat.spis_m1Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
     if (pc_main.ActivePageIndex = 0) then
       ExportGridToExcel(SaveDialog1.FileName, grid_docs_s, True, True, True, 'xls')
     else
       ExportGridToExcel(SaveDialog1.FileName, gr_noms, True, True, True, 'xls');
     ShellExecute(Handle, nil, PChar(SaveDialog1.FileName), nil, nil, SW_RESTORE);
  end;
end;

procedure TfrmStat.spis_m2Click(Sender: TObject);
var i, j: integer;
    vv: TCxGridDBTableView;
begin
  if (pc_main.ActivePageIndex = 0) then
  begin
    grid_docs_s_v.DataController.Filter.Clear;
    vv := grid_docs_s_v;
  end
  else
  begin
    gr_noms_v.DataController.Filter.Clear;
    vv := gr_noms_v;
  end;

  j := vv.SortedItemCount;
  for i := 0 to j-1 do
  begin
   vv.SortedItems[0].SortOrder := soNone;
  end;
end;

procedure TfrmStat.stat_menuChange(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
  if (pc_main.ActivePageIndex = 0) then aPrintNakl.Enabled := DataM.Operator_print else aPrintNakl.Enabled := false;
end;

end.
