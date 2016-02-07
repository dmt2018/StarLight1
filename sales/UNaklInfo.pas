unit UNaklInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxGraphics, cxEdit, cxVGrid,
  cxDBVGrid, DBGridEh, cxControls, cxInplaceContainer, StdCtrls,
  cxButtons, ExtCtrls, cxTextEdit, Pi_library, IniFiles, cxCheckBox, ShellApi, DBGridEhImpExp,
  DBGridEhGrouping, GridsEh;

type
  TfrmNaklInfo = class(TForm)
    Panel4: TPanel;
    BitBtn_Cancel: TcxButton;
    vg_doc: TcxDBVerticalGrid;
    gr_data: TDBGridEh;
    vg_docDOC_NUMBER: TcxDBEditorRow;
    vg_docOPERATOR_NAME: TcxDBEditorRow;
    vg_docDOC_DATE_REAL: TcxDBEditorRow;
    vg_docNICK: TcxDBEditorRow;
    vg_docFIO: TcxDBEditorRow;
    vg_docQUANTITY_ALL: TcxDBEditorRow;
    vg_docPRICE_ALL: TcxDBEditorRow;
    vg_docCOMMENTS: TcxDBEditorRow;
    Label15: TLabel;
    PopupMenu1: TPopupMenu;
    mnExport: TMenuItem;
    SaveDialog1: TSaveDialog;
    btnMinus: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gr_dataDblClick(Sender: TObject);
    procedure gr_dataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mnExportClick(Sender: TObject);
    procedure gr_dataDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure btnMinusClick(Sender: TObject);
  private
    path: string;
    { Private declarations }
  public
    v_vid: integer;
    { Public declarations }
  end;

var
  frmNaklInfo: TfrmNaklInfo;

implementation

uses UDM, Globals, UFullInfo;

{$R *.dfm}

procedure TfrmNaklInfo.btnMinusClick(Sender: TObject);
var IID_DOC: integer;
    ind, i: integer;
begin
    if gr_data.SelectedRows.Count = 0 then Exit;

    DM.SelQ.close;

    DM.SelQ.SQL.Clear;
    DM.SelQ.SQL.add('delete from tmp_exp_doc');
    DM.SelQ.Execute;

    DM.sale_session.Savepoint('Begin_Doc_Edit');
    for I := 0 to gr_data.SelectedRows.Count - 1 do
    begin
      gr_data.DataSource.DataSet.GotoBookmark(pointer(gr_data.SelectedRows.Items[i]));

      DM.SelQ.SQL.Clear;
      DM.SelQ.SQL.add('insert into tmp_exp_doc values('+gr_data.DataSource.DataSet.FieldByName('ID_DOC_DATA').AsString+')');
      DM.SelQ.Execute;
    end;


    try
    	IID_DOC := vg_doc.DataController.DataSet.FieldByName('ID_DOC').AsInteger;
    	if (IID_DOC <> 0) then
	    begin
		    if MessageDlg('Создать минусовую накладную для документа №'+vg_doc.DataController.DataSet.FieldByName('DOC_NUMBER').AsString+'?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
  		  begin
    			try
	      		DM.sale_session.ExecProc('STORE_PKG.doc_new_from_store_doc', [IID_DOC, ind]);
		 	    except on E: Exception do
            begin
			        DM.sale_session.RollbackToSavepoint('Begin_Doc_Edit');
              MessageBox(Handle, PChar(E.Message), 'Ошибка ввода минусовой', MB_ICONERROR);
  	  		    abort;
            end;
          End;

{
          DM.SelQ.SQL.Clear;
          DM.SelQ.SQL.add('delete from tmp_exp_doc');
          DM.SelQ.Execute;
}
    			DM.sale_session.Commit;
          MessageBox(Handle, 'Операция прошла успешно!', 'Результат', MB_ICONINFORMATION);
          ind := DM.sale_session.ParamByName('out_docid').AsInteger;
          btnMinus.Tag := ind;

	  	  end; // if MessageDlg('Создать минусовую накладную для выделенного документа?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
  	  end;
    except on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Ошибка ввода минусовой', MB_ICONERROR);
    End;
end;



procedure TfrmNaklInfo.FormClose(Sender: TObject; var Action: TCloseAction);
var
  AStoreKey: string;
begin
    AStoreKey     := path + '/ini/'+DM.sale_session.Username+'_store_full.ini';
    gr_data.SaveGridLayoutIni(AStoreKey,'store',true);
end;

procedure TfrmNaklInfo.FormShow(Sender: TObject);
var
  AStoreKey: string;
  vv: string;
  RegIni : TIniFile;
begin
  try
    path          := ExtractFilePath(Application.ExeName);
    AStoreKey     := path + '/ini/'+DM.sale_session.Username+'_store_full.ini';
    gr_data.RestoreGridLayoutIni(AStoreKey,'store',[grpColIndexEh, grpColWidthsEh, grpSortMarkerEh, grpColVisibleEh, grpRowHeightEh, grpDropDownRowsEh, grpDropDownWidthEh]);

    AStoreKey     := path + 'ini/'+DM.sale_session.Username+'_'+intToStr(CUR_DEPT_ID)+'.ini';
    RegIni        := TIniFile.Create(AStoreKey);
    vv            := RegIni.ReadString('StrValue', 'Value', '11111111111111111');

    if v_vid = 1 then gr_data.Columns[11].Visible := false else gr_data.Columns[11].Visible := true;
    
    try
{
      gr_data.FieldColumns['STORE_TYPE_NAME'].Visible := CharToBool(vv[1]);
      gr_data.FieldColumns['CODE'].Visible        := CharToBool(vv[2]);
      gr_data.FieldColumns['H_CODE'].Visible      := CharToBool(vv[3]);
      gr_data.FieldColumns['F_TYPE'].Visible      := CharToBool(vv[4]);
      gr_data.FieldColumns['F_SUB_TYPE'].Visible  := CharToBool(vv[5]);
      gr_data.FieldColumns['FULL_NAME'].Visible   := CharToBool(vv[6]);
      gr_data.FieldColumns['SPESIFICATION'].Visible := CharToBool(vv[7]);
      gr_data.FieldColumns['COUNTRY'].Visible     := CharToBool(vv[8]);
      gr_data.FieldColumns['COLOUR'].Visible      := CharToBool(vv[9]);
      gr_data.FieldColumns['QUANTITY_PRICE'].Visible := CharToBool(vv[14]);
      gr_data.FieldColumns['QUANTITY'].Visible    := CharToBool(vv[15]);
}
      NULL;
    except
      NULL;
    end;
  finally
    RegIni.Free;
    gr_data.SetFocus;
  end;
end;


//
//  Просмотр полной информации по номенклатуре
//
procedure TfrmNaklInfo.gr_dataDblClick(Sender: TObject);
begin
  if (gr_data.DataSource.DataSet.RecordCount > 0) then
  begin
    frm_full_info := Tfrm_full_info.Create(Application);
    With frm_full_info do
    Begin
      SelNom.Session := DM.sale_session;
      SelNom.ParamByName('N_ID').Value := gr_data.DataSource.DataSet.FieldByName('N_ID').AsInteger;
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

procedure TfrmNaklInfo.gr_dataDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if (gr_data.DataSource.DataSet.FieldByName('notuse').AsInteger = 1) then
	begin
 	    gr_data.Canvas.Brush.Color  := TColor($00D7D7D7);
 	    gr_data.Canvas.FillRect(Rect);
  		gr_data.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	end;

  if gdSelected in State then
	begin
 	    gr_data.Canvas.Brush.Color  := TColor($00FF8080);
 	    gr_data.Canvas.FillRect(Rect);
  		gr_data.DefaultDrawColumnCell(Rect, DataCol, Column, State);
	end;
end;

procedure TfrmNaklInfo.gr_dataKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (gr_data.DataSource.DataSet.RecordCount > 0) and (Key = VK_RETURN) then
  begin
    frm_full_info := Tfrm_full_info.Create(Application);
    With frm_full_info do
    Begin
      SelNom.Session := DM.sale_session;
      SelNom.ParamByName('N_ID').Value := gr_data.DataSource.DataSet.FieldByName('N_ID').AsInteger;
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

procedure TfrmNaklInfo.mnExportClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    SaveDBGridEhToExportFile(TDBGridEhExportAsXLS, gr_data, SaveDialog1.FileName, True);
    ShellExecute(Handle, nil, PChar(SaveDialog1.FileName), nil, nil, SW_RESTORE);
  end;
end;

end.
