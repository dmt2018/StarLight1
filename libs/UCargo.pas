unit UCargo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, DBAccess, Ora, MemDS,
  cxSplitter, StdCtrls, cxButtons, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, ExtCtrls, cxCalendar, cxTextEdit, cxCurrencyEdit, cxPC, cxGridExportLink,
  frxExportXLS, frxExportMail, frxExportCSV, frxExportRTF, frxExportXML,
  frxExportHTML, frxClass, frxExportPDF, frxDBSet, ShellAPI, PI_Library_reg;

type
  TfrmCargo = class(TForm)
    pnlBottom: TPanel;
    btnClose: TcxButton;
    cdsSummary: TOraQuery;
    dsSummary: TOraDataSource;
    dsList: TOraDataSource;
    cdsList: TOraQuery;
    cdsListCOMPILED_NAME_OTDEL: TStringField;
    cdsListDOC_DATE: TDateTimeField;
    cdsListDOC_NUMBER: TFloatField;
    cdsListQUANTITY: TIntegerField;
    cdsSummaryCOMPILED_NAME_OTDEL: TStringField;
    cdsSummaryQUANTITY: TFloatField;
    cdsSummaryDOC_DATE: TDateTimeField;
    cdsQuery: TOraQuery;
    chbGroup: TCheckBox;
    pcMain: TcxPageControl;
    tshClients: TcxTabSheet;
    tshList: TcxTabSheet;
    grMain: TcxGrid;
    grMainV: TcxGridDBTableView;
    grMainVCOMPILED_NAME_OTDEL: TcxGridDBColumn;
    grMainVDOC_DATE: TcxGridDBColumn;
    grMainVDOC_NUMBER: TcxGridDBColumn;
    grMainVQUANTITY: TcxGridDBColumn;
    grMainL: TcxGridLevel;
    gbStat: TGroupBox;
    grItog: TcxGrid;
    grItogV: TcxGridDBTableView;
    grItogVCOMPILED_NAME_OTDEL: TcxGridDBColumn;
    grItogVDOC_DATE: TcxGridDBColumn;
    grItogVQUANTITY: TcxGridDBColumn;
    grItofL: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    pnlTop: TPanel;
    lblClient: TLabel;
    grClients: TcxGrid;
    grClientsV: TcxGridDBTableView;
    grClientsL: TcxGridLevel;
    cdsClients: TOraQuery;
    dsClients: TOraDataSource;
    cdsClientsFIO: TStringField;
    cdsClientsNICK: TStringField;
    cdsClientsGROUP_NAME: TStringField;
    cdsClientsID_CLIENTS: TIntegerField;
    cdsClientsID_CLIENTS_GROUPS: TIntegerField;
    cdsClientsQUANTITY: TFloatField;
    cdsClientsDOC_DATE: TDateTimeField;
    cdsClientsSUMMA: TFloatField;
    grClientsVFIO: TcxGridDBColumn;
    grClientsVNICK: TcxGridDBColumn;
    grClientsVGROUP_NAME: TcxGridDBColumn;
    grClientsVID_CLIENTS: TcxGridDBColumn;
    grClientsVID_CLIENTS_GROUPS: TcxGridDBColumn;
    grClientsVSUMMA: TcxGridDBColumn;
    grClientsVQUANTITY: TcxGridDBColumn;
    grClientsVDOC_DATE: TcxGridDBColumn;
    btnExport: TcxButton;
    SaveDialog: TSaveDialog;
    btnPrint: TcxButton;
    frxClientCargo: TfrxReport;
    frxClientsCargo: TfrxDBDataset;
    frxClientSummary: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxCSVExport1: TfrxCSVExport;
    frxMailExport1: TfrxMailExport;
    frxXLSExport1: TfrxXLSExport;
    frxClientList: TfrxDBDataset;
    cdsListSUMMA: TFloatField;
    cdsSummarySUMMA: TFloatField;
    grItogVSUMMA: TcxGridDBColumn;
    grMainVSUMMA: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    mnLoadFooter: TMenuItem;
    mnLoadCell: TMenuItem;
    procedure chbGroupClick(Sender: TObject);
    procedure pcMainChange(Sender: TObject);
    procedure grClientsVDblClick(Sender: TObject);
    procedure grMainVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExportClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure mnLoadFooterClick(Sender: TObject);
    procedure mnLoadCellClick(Sender: TObject);
  private
    { Private declarations }
    pClientId, pGroupId: integer;
    path : string;
  public
    { Public declarations }
  end;

  function ShowCargo(oraSess: TOraSession; idClient: integer; idClientGroup: integer): integer;

var
  frmCargo: TfrmCargo;

implementation

uses DataM;

{$R *.dfm}

function ShowCargo(oraSess: TOraSession; idClient: integer; idClientGroup: integer): integer;
var p_fst_id: integer;
begin
  Application.CreateForm(TfrmCargo, frmCargo);
  try
    with frmCargo do
    Begin
      try
        pcMain.ActivePageIndex := 0;
        cdsSummary.Session := oraSess;
        cdsList.Session    := oraSess;
        cdsQuery.Session   := oraSess;

        pClientId := idClient;
        pGroupId  := idClientGroup;

        p_fst_id := 0;
{
        cdsQuery.Close;
        cdsQuery.SQL.Clear;
        cdsQuery.SQL.Add('select const_cargo as nn from dual');
        cdsQuery.Open;
        if not cdsQuery.IsEmpty then p_fst_id := cdsQuery.FieldByName('nn').AsInteger;

        cdsClients.ParamByName('p_fst_id').AsInteger       := p_fst_id;
}
        cdsClients.Open;

        btnPrint.Enabled := DM.b_print;
        btnExport.Enabled := DM.b_print;

        if idClient > 0 then
        begin
          chbGroup.Visible := (cdsClients.FieldByName('id_clients_groups').AsInteger > 2);
          if cdsClients.Locate('id_clients',idClient,[]) then
          begin
            chbGroupClick(nil);
            pcMain.ActivePageIndex := 1;
          end
          else
          begin
            MessageBox(Handle, 'У данного клиента нет движения по таре', 'Внимание!', MB_ICONINFORMATION);
            pcMain.ActivePageIndex := 0;
          end;
        end;

        result := ShowModal;
      except
        on E: Exception do MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
      End;
    End;
  finally
    frmCargo.Free;
  end;
end;

// экспорт в эксель
procedure TfrmCargo.btnExportClick(Sender: TObject);
begin
  if SaveDialog.Execute then
  begin
    if ( pcMain.ActivePageIndex = 0 ) then
       ExportGridToExcel(SaveDialog.FileName, grClients, True, True, True, 'xls');
    if ( pcMain.ActivePageIndex = 1 ) then
       ExportGridToExcel(SaveDialog.FileName, grMain, True, True, True, 'xls');
    ShellExecute(Handle, nil, PChar(SaveDialog.FileName), nil, nil, SW_RESTORE);
  end;
end;

// печать
procedure TfrmCargo.btnPrintClick(Sender: TObject);
begin
  if (pcMain.ActivePageIndex = 0) and (cdsClients.RecordCount = 0) then exit;
  if (pcMain.ActivePageIndex = 1) and (cdsList.RecordCount = 0) then exit;


    try
      cdsClients.DisableControls;
      cdsList.DisableControls;
      cdsSummary.DisableControls;

      if ( pcMain.ActivePageIndex = 0 ) then
        frxClientCargo.LoadFromFile(path+'raports\cargoAll.fr3')
      else
        frxClientCargo.LoadFromFile(path+'raports\cargoList.fr3');
      frxClientCargo.ShowReport;
      cdsClients.EnableControls;
      cdsList.EnableControls;
      cdsSummary.EnableControls;

    except
      on E: Exception do
      begin
        cdsClients.EnableControls;
        cdsList.EnableControls;
        cdsSummary.EnableControls;
        MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
      end;
    End;
end;

procedure TfrmCargo.chbGroupClick(Sender: TObject);
var p_fst_id: integer;
begin
  try
      p_fst_id := 0;
{
      cdsQuery.Close;
      cdsQuery.SQL.Clear;
      cdsQuery.SQL.Add('select const_cargo as nn from dual');
      cdsQuery.Open;
      if not cdsQuery.IsEmpty then p_fst_id := cdsQuery.FieldByName('nn').AsInteger;
}
      cdsSummary.Close;
      cdsList.Close;

      lblClient.Caption := cdsClients.FieldByName('fio').AsString + ' (' + cdsClients.FieldByName('group_name').AsString + ')';
      chbGroup.Visible := (cdsClients.FieldByName('id_clients_groups').AsInteger > 2);

      if chbGroup.Checked and chbGroup.Visible then
      begin
        cdsSummary.ParamByName('p_id_client').AsInteger       := 0;
        cdsSummary.ParamByName('p_id_client_group').AsInteger := cdsClientsID_CLIENTS_GROUPS.AsInteger; // pGroupId;
      end
      else
      begin
        cdsSummary.ParamByName('p_id_client').AsInteger       := cdsClientsID_CLIENTS.AsInteger; // pClientId;
        cdsSummary.ParamByName('p_id_client_group').AsInteger := 0;
      end;

      cdsList.ParamByName('p_id_client').AsInteger       := cdsSummary.ParamByName('p_id_client').AsInteger;
      cdsList.ParamByName('p_id_client_group').AsInteger := cdsSummary.ParamByName('p_id_client_group').AsInteger;

 //     cdsSummary.ParamByName('p_fst_id').AsInteger    := p_fst_id;
 //     cdsList.ParamByName('p_fst_id').AsInteger       := p_fst_id;

      cdsSummary.Open;
      cdsList.Open;
  except
      on E: Exception do MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
  End;
end;

procedure TfrmCargo.FormCreate(Sender: TObject);
begin
  path := ExtractFilePath(Application.ExeName);
end;

procedure TfrmCargo.grClientsVDblClick(Sender: TObject);
begin
  pcMain.ActivePageIndex := 1;
end;

procedure TfrmCargo.grMainVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    pcMain.ActivePageIndex := 1;
end;

// Скопируем значение ячейкт в буфер
procedure TfrmCargo.mnLoadCellClick(Sender: TObject);
begin
  if pcMain.ActivePageIndex = 0 then
    PoolToClipbaord(grClientsV.DataController, 1)
  else
    PoolToClipbaord(grMainV.DataController, 1);
end;

// Скопируем значение футера в буфер
procedure TfrmCargo.mnLoadFooterClick(Sender: TObject);
begin
  if pcMain.ActivePageIndex = 0 then
    PoolToClipbaord(grClientsV.DataController, 0)
  else
    PoolToClipbaord(grMainV.DataController, 0);
end;

procedure TfrmCargo.pcMainChange(Sender: TObject);
begin
  cdsSummary.Close;
  cdsList.Close;

  chbGroup.Visible := not (pcMain.ActivePageIndex = 0);
  
  if (cdsClients.Active) and (not cdsClients.IsEmpty) and (grClientsV.ViewData.RecordCount > 0) and (pcMain.ActivePageIndex = 1) then
  begin
    chbGroupClick(nil);
  end;
end;

end.
