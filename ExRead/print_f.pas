unit print_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, PI_Library, Buttons, Menus,
  cxLookAndFeelPainters, cxButtons, frxBarcode, frxExportHTML,
  frxExportPDF, frxClass, frxExportXLS, frxDBSet, IniFiles, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxCurrencyEdit;

type
  Tprintf = class(TForm)
    top_panel: TPanel;
    Panel4: TPanel;
    BitBtn1: TcxButton;
    frxReport1: TfrxReport;
    frxSelPrntPreview: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxBarCodeObject1: TfrxBarCodeObject;
    Panel7: TPanel;
    Label9: TLabel;
    Label36: TLabel;
    Edit1: TEdit;
    btn_save: TcxButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel5: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Panel3: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Panel6: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Panel11: TPanel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    cxCurrencyEdit19: TcxCurrencyEdit;
    cxCurrencyEdit20: TcxCurrencyEdit;
    cxCurrencyEdit21: TcxCurrencyEdit;
    cxCurrencyEdit22: TcxCurrencyEdit;
    cxCurrencyEdit23: TcxCurrencyEdit;
    cxCurrencyEdit24: TcxCurrencyEdit;
    Panel10: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    cxCurrencyEdit13: TcxCurrencyEdit;
    cxCurrencyEdit14: TcxCurrencyEdit;
    cxCurrencyEdit15: TcxCurrencyEdit;
    cxCurrencyEdit16: TcxCurrencyEdit;
    cxCurrencyEdit17: TcxCurrencyEdit;
    cxCurrencyEdit18: TcxCurrencyEdit;
    Panel9: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    cxCurrencyEdit7: TcxCurrencyEdit;
    cxCurrencyEdit8: TcxCurrencyEdit;
    cxCurrencyEdit9: TcxCurrencyEdit;
    cxCurrencyEdit10: TcxCurrencyEdit;
    cxCurrencyEdit11: TcxCurrencyEdit;
    cxCurrencyEdit12: TcxCurrencyEdit;
    Panel8: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxCurrencyEdit5: TcxCurrencyEdit;
    cxCurrencyEdit6: TcxCurrencyEdit;
    chbPrintPacked: TCheckBox;
    chbPrintColor: TCheckBox;
    chbPrintNotPrinted: TCheckBox;
    procedure Panel3Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel2Click(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    printSelected, def_always_print : boolean;
    procedure Prepare_func(otdel: integer; price: boolean);
    { Public declarations }
  end;

var
  printf: Tprintf;

implementation

uses DataModule, Globals{, frx2xto30};

{$R *.dfm}

procedure Tprintf.BitBtn1Click(Sender: TObject);
begin
  close;
end;


//  Стикеры для аксессуаров (малые)
procedure Tprintf.Panel6Click(Sender: TObject);
begin
  Prepare_func(0, false);
  frxReport1.LoadFromFile(ProgPath + '/reps/StickerAccSmall.fr3');
  frxReport1.Variables['PrintMark'] := '''' + Edit1.Text + '''';
  frxReport1.ShowReport();
end;

// Печать ценников
procedure Tprintf.Panel5Click(Sender: TObject);
begin
  Prepare_func(0,true);
  frxReport1.LoadFromFile(ProgPath + '/Reps/PriceSingle.fr3');
  frxReport1.Variables['PrintMark'] := '''' + Edit1.Text + '''';
  frxReport1.ShowReport();
end;

// Печать для среза
procedure Tprintf.Panel1Click(Sender: TObject);
var i: integer;
    page: TfrxReportPage;
    vv: TfrxMasterData;
    memo1: TfrxMemoView;
begin
{ 2012-12-25}
  if ((Sender as TLabel).Tag = 1) then
    Prepare_func(62,false)
  else
    Prepare_func(0,false);
{end 2012-12-25}

  cxCurrencyEdit1.PostEditValue;
  cxCurrencyEdit2.PostEditValue;
  cxCurrencyEdit3.PostEditValue;
  cxCurrencyEdit4.PostEditValue;
  cxCurrencyEdit5.PostEditValue;
  cxCurrencyEdit6.PostEditValue;

  if ((Sender as TLabel).Tag = 1) then
    frxReport1.LoadFromFile(ProgPath + '/Reps/codes62.fr3')
  else
    frxReport1.LoadFromFile(ProgPath + '/Reps/codes.fr3');
  vv := frxReport1.FindObject('MasterData9') as TfrxMasterData;
  memo1 := frxReport1.FindObject('Memo6') as TfrxMemoView;

// Теперь вывожу COMPILED_NAME_OTDEL
//     memo1.Text := '[frxSelPrntPreview."F_NAME_RU"]';
{ 2012-12-25 }
  if ((Sender as TLabel).Tag = 1) then
  begin
//     memo1.Text := '[frxSelPrntPreview."F_NAME_RU"] [frxSelPrntPreview."COLOUR"] [frxSelPrntPreview."RUS_MARKS"] X[frxSelPrntPreview."PACKQ"]';
    if chbPrintColor.checked then
    begin
      memo1.Text := '[frxSelPrntPreview."F_NAME_RU"] [frxSelPrntPreview."COLOUR"] [frxSelPrntPreview."RUS_MARKS"] X[frxSelPrntPreview."PACKQ"]';
      memo1.Font.Size := 9;
    end
    else
    begin
      memo1.Text := '[frxSelPrntPreview."F_NAME_RU"] [frxSelPrntPreview."RUS_MARKS"] X[frxSelPrntPreview."PACKQ"]';
      memo1.Font.Size := 10;
    end
  end
  else
     memo1.Text := '[frxSelPrntPreview."F_NAME_RU"] [frxSelPrntPreview."COLOUR"] [frxSelPrntPreview."RUS_MARKS"]';

//  vv.Height       := cxCurrencyEdit6.EditValue * fr1cm;
//  vv.ColumnWidth  := cxCurrencyEdit5.EditValue * fr1cm;


  for i := 1 to frxReport1.PagesCount-1 do
  begin
    with TfrxReportPage(frxReport1.Pages[i]) do
    begin
         LeftMargin   := cxCurrencyEdit1.EditValue  * 10;
         RightMargin  := cxCurrencyEdit2.EditValue  * 10;
         TopMargin    := cxCurrencyEdit4.EditValue  * 10;
         BottomMargin := cxCurrencyEdit3.EditValue  * 10;
    end;
  end;

  
  frxReport1.PrepareReport;

     for i := 0 to frxReport1.PreviewPages.Count - 1 do
       begin
         page := frxReport1.PreviewPages.Page[i];
         page.LeftMargin   := cxCurrencyEdit1.EditValue  * 10;
         page.RightMargin  := cxCurrencyEdit2.EditValue  * 10;
         page.TopMargin    := cxCurrencyEdit4.EditValue  * 10;
         page.BottomMargin := cxCurrencyEdit3.EditValue  * 10;
       end;

  frxReport1.ShowReport;
end;

// Печать для горшков
procedure Tprintf.Panel2Click(Sender: TObject);
begin
  Prepare_func(0,false);
  DM.SelPrntPreview.IndexFieldNames := 'TRUCK;TROLLEY;F_NAME_RU';
  frxReport1.LoadFromFile(ProgPath + '/Reps/codes.fr3');
  frxReport1.Variables['PrintMark'] := '''' + Edit1.Text + '''';
  frxReport1.ShowReport;
  DM.SelPrntPreview.IndexFieldNames := '';
end;

// Стикеры для аксессуаров (большие)
procedure Tprintf.Panel3Click(Sender: TObject);
var i: integer;
    page: TfrxReportPage;
begin
  Prepare_func(0,false);
  cxCurrencyEdit13.PostEditValue;
  cxCurrencyEdit14.PostEditValue;
  cxCurrencyEdit15.PostEditValue;
  cxCurrencyEdit16.PostEditValue;
  cxCurrencyEdit17.PostEditValue;
  cxCurrencyEdit18.PostEditValue;

  frxReport1.LoadFromFile(ProgPath + '/Reps/codes_acc.fr3');
  for i := 1 to frxReport1.PagesCount-1 do
  begin
    with TfrxReportPage(frxReport1.Pages[i]) do
    begin
         LeftMargin   := cxCurrencyEdit13.EditValue  * 10;
         RightMargin  := cxCurrencyEdit14.EditValue  * 10;
         TopMargin    := cxCurrencyEdit16.EditValue  * 10;
         BottomMargin := cxCurrencyEdit15.EditValue  * 10;
    end;
  end;
  frxReport1.PrepareReport;
  for i := 0 to frxReport1.PreviewPages.Count - 1 do
  begin
    page := frxReport1.PreviewPages.Page[i];
    page.LeftMargin   := cxCurrencyEdit13.EditValue  * 10;
    page.RightMargin  := cxCurrencyEdit14.EditValue  * 10;
    page.TopMargin    := cxCurrencyEdit16.EditValue  * 10;
    page.BottomMargin := cxCurrencyEdit15.EditValue  * 10;
  end;

  frxReport1.Variables['PrintMark'] := '''' + Edit1.Text + '''';
  //frxReport1.ShowReport;
  frxReport1.ShowPreparedReport;
end;


//
//  Подготовка к печати
//
procedure Tprintf.Prepare_func(otdel: integer; price: boolean);
begin
  try
    Screen.Cursor := crHandPoint;
    DM.STAR_DB.ExecSQL('TRUNCATE TABLE CREATOR.PREPARE_PRINT',[]);
    DM.STAR_DB.Commit;

    DM.InvoiceData.DisableControls;
    DM.InvoiceData.First;

    if DM.InvoiceData.RecordCount > 0 then
    Begin
      DM.ForceQ.Close;
      DM.ForceQ.SQL.Clear;
      DM.ForceQ.SQL.Add('begin delete from STICKERS_TO_PRINT where N_ID = :N_ID; ' +
        ' insert into STICKERS_TO_PRINT values(:N_ID, :STICKERS, :INVOICE_DATA); end; ');
      DM.ForceQ.Prepare;

      DM.StorProc.Close;
      DM.StorProc.StoredProcName := 'PRICE_PKG.PRINT_PREPARE_ADD2';
      DM.StorProc.Prepare;
      DM.StorProc.ParamByName('in_allow_print_all').Value := BoolToInt(def_always_print);

      if DM.InvoiceData.RecordCount > 0 then
      Begin
        DM.InvoiceData.First;
        while not DM.InvoiceData.Eof do
        begin
          if (DM.InvoiceDataSTORNED_DATA.AsInteger = 0) and ((DM.InvoiceDataNOPRINT.AsInteger = 0) or chbPrintNotPrinted.Checked) then
          begin
            if (printSelected and (DM.InvoiceDataD_CHECK.AsInteger = 1)) or not printSelected then
            begin
              // Проверка на упакованного клиента, которому не надо печатать стикер
              if (chbPrintPacked.Checked = false)
                and (
                  (length(DM.InvoiceDataCLIENT.AsString) > 0)
                  and (pos('_',DM.InvoiceDataCLIENT.AsString) > 0 )
                  //and (pos('_',DM.InvoiceDataCLIENT.AsString) = length(DM.InvoiceDataCLIENT.AsString) )
                ) then
                null
              else
              begin
                with DM.ForceQ do
                Begin
                  ParamByName('N_ID').Value         := DM.InvoiceData.FieldByName('N_ID').AsInteger;
                  if price then
                    ParamByName('STICKERS').Value     := 1
                  else
                    ParamByName('STICKERS').Value     := DM.InvoiceData.FieldByName('units_print').AsInteger;

                  ParamByName('INVOICE_DATA').Value := DM.InvoiceData.FieldByName('INVOICE_DATA_ID').AsInteger;
                  Execute;
                End;
                with DM.StorProc do
                Begin
                  ParamByName('IN_N_ID').Value            := DM.InvoiceData.FieldByName('N_ID').AsInteger;
                  ParamByName('IN_INVOICE_DATA_ID').Value := DM.InvoiceData.FieldByName('INVOICE_DATA_ID').AsInteger;
                  Execute;
                End;
              end;
            end;
          end;
          DM.InvoiceData.Next;
        end;
      End;
    End;
    DM.InvoiceData.EnableControls;

    DM.SelPrntPreview.Close;
    DM.SelPrntPreview.SQL.Text := 'select a.* from (SELECT a.*, nvl(c.TROLLEY,0) as TROLLEY, nvl(c.TRUCK,0) as TRUCK, c.order_number '+
           ', case when r.ID_DEPARTMENTS=61 then c.order_number||''.''||c.src_trolley else c.src_trolley end src_trolley '+
           ', dense_rank() over(PARTITION by c.truck order by c.order_number, c.trolley, c.src_trolley) as trolley_calc '+
           ' FROM  PPRNT_VIEW a, INVOICE_DATA b, INVOICE_DATA_AS_IS c, invoice_register r '+
           ' where a.n_id=b.n_id and a.INVOICE_ID = b.INVOICE_DATA_ID '+
           '      and b.INVOICE_DATA_AS_IS_ID = c.INVOICE_DATA_AS_IS_ID(+) '+
           '      and b.inv_id = :idd and b.inv_id = r.inv_id ) a ';

    if (otdel = 62) and (DM.InvoiceRegisterS_ID_DEFAULT.AsInteger = 142) then
//      DM.SelPrntPreview.SQL.Add(' order by SRC_TROLLEY, F_NAME_RU')
      DM.SelPrntPreview.SQL.Text := DM.SelPrntPreview.SQL.Text +' order by to_number(nvl(substr(SRC_TROLLEY,1,INSTR(SRC_TROLLEY,''.'')-1),0)) '+
      ', to_number(nvl(substr(SRC_TROLLEY,INSTR(SRC_TROLLEY,''.'')+1,INSTR(SRC_TROLLEY,''.'',1,2)-INSTR(SRC_TROLLEY,''.'')-1),0)) '+
      ', to_number(nvl(case when instr(nvl(substr(SRC_TROLLEY,INSTR(SRC_TROLLEY,''.'',1,2)+1, length(SRC_TROLLEY)-INSTR(SRC_TROLLEY,''.'',1,2)),0),''-'') = ''0'' then '+
      '  nvl( substr(SRC_TROLLEY,INSTR(SRC_TROLLEY,''.'',1,2)+1,length(SRC_TROLLEY)-INSTR(SRC_TROLLEY,''.'',1,2)),0 ) '+
      '  else substr( nvl( substr(SRC_TROLLEY,INSTR(SRC_TROLLEY,''.'',1,2)+1,length(SRC_TROLLEY)-INSTR(SRC_TROLLEY,''.'',1,2)),0 ) '+
      '  ,1 ,nvl(instr( nvl( substr(SRC_TROLLEY,INSTR(SRC_TROLLEY,''.'',1,2)+1, length(SRC_TROLLEY)-INSTR(SRC_TROLLEY,''.'',1,2)) ,0 ),''-'' ),length(SRC_TROLLEY))-1 )'+
      ' end ,0) ), F_NAME_RU '
    else
      //DM.SelPrntPreview.SQL.Add(' order by TRUCK, trolley_calc, F_NAME_RU');
      begin

      if pos('.',DM.InvoiceDataSRC_TROLLEY.asstring)<>0 then
      DM.SelPrntPreview.SQL.Add(' order by to_number(substr(src_trolley,1,instr(src_trolley,''.'')-1))'+
      ',to_number(substr(src_trolley,instr(src_trolley,''.'')+1,instr(src_trolley,''.'',1,2)-instr(src_trolley,''.'')-1))'+
      ',F_NAME_RU')
      //',to_number(substr(src_trolley,instr(src_trolley,''.'',1,2)+1,length(src_trolley)-instr(src_trolley,''.'',1,2)))');

      else if pos('/',DM.InvoiceDataSRC_TROLLEY.asstring)<>0 then  
       DM.SelPrntPreview.SQL.Add(' order by to_number(substr(src_trolley,1,instr(src_trolley,''/'')-1))'+
      ',to_number(substr(src_trolley,instr(src_trolley,''/'')+1,instr(src_trolley,''/'',1,2)-instr(src_trolley,''/'')-1))'+
      ',F_NAME_RU')

      else DM.SelPrntPreview.SQL.Add(' order by TRUCK, trolley_calc, F_NAME_RU');
      end;     



//                           ShowMessage(DM.SelPrntPreview.SQL.Text);

    DM.SelPrntPreview.ParamByName('idd').AsInteger := DM.InvoiceRegisterINV_ID.AsInteger;
    ReactivateOraQuery(DM.SelPrntPreview);
    Screen.Cursor := crDefault;

  except on E: Exception do
    begin
      DM.InvoiceData.EnableControls;
      Screen.Cursor := crDefault;
      MessageBox(Handle, PChar(E.Message), 'Ощибка!', MB_ICONERROR)
    end;
  end;

end;





procedure Tprintf.btn_saveClick(Sender: TObject);
var path: string;
    RegIni : TIniFile;
begin
  path   := ProgPath+'/ini/'+DM.STAR_DB.Username+'_codes.ini';
  RegIni := TIniFile.Create(path);
  try
    RegIni.WriteFloat('Codes', 'MarginLeft', cxCurrencyEdit1.EditValue);
    RegIni.WriteFloat('Codes', 'MarginRight', cxCurrencyEdit2.EditValue);
    RegIni.WriteFloat('Codes', 'MarginTop', cxCurrencyEdit4.EditValue);
    RegIni.WriteFloat('Codes', 'MarginBottom', cxCurrencyEdit3.EditValue);
    RegIni.WriteFloat('Codes', 'Width', cxCurrencyEdit5.EditValue);
    RegIni.WriteFloat('Codes', 'Height', cxCurrencyEdit6.EditValue);
  finally
    RegIni.Free;
  end;
end;


procedure Tprintf.FormClose(Sender: TObject; var Action: TCloseAction);
var RegIni : TIniFile;
    path: string;
begin
  path   := ProgPath+'/ini/printPacked.ini';
  RegIni := TIniFile.Create(path);
  try
    RegIni.WriteBool('Print','Value',chbPrintPacked.Checked);
    RegIni.WriteBool('PrintColor','Value',chbPrintColor.Checked);
    RegIni.WriteBool('PrintNotPrinted','Value',chbPrintNotPrinted.Checked);
  finally
    RegIni.Free;
  end;

  DM.SelPrntPreview.Close;
end;


procedure Tprintf.FormCreate(Sender: TObject);
begin
  printSelected := false;
end;

procedure Tprintf.FormShow(Sender: TObject);
var RegIni : TIniFile;
    path: string;
begin
  path   := ProgPath+'/ini/'+DM.STAR_DB.Username+'_codes.ini';
  RegIni := TIniFile.Create(path);
  try
    cxCurrencyEdit1.EditValue := RegIni.ReadFloat('Codes','MarginLeft',0.75);
    cxCurrencyEdit2.EditValue := RegIni.ReadFloat('Codes','MarginRight',0.75);
    cxCurrencyEdit3.EditValue := RegIni.ReadFloat('Codes','MarginBottom',1.85);
    cxCurrencyEdit4.EditValue := RegIni.ReadFloat('Codes','MarginTop',2.1);
    cxCurrencyEdit5.EditValue := RegIni.ReadFloat('Codes','Width',4.85);
    cxCurrencyEdit6.EditValue := RegIni.ReadFloat('Codes','Height',2.54);
  finally
    RegIni.Free;
  end;


  path   := ProgPath+'/ini/printPacked.ini';
  RegIni := TIniFile.Create(path);
  try
      chbPrintPacked.Checked := RegIni.ReadBool('Print','Value',false);
      chbPrintColor.Checked  := RegIni.ReadBool('PrintColor','Value',false);
      chbPrintNotPrinted.Checked  := RegIni.ReadBool('PrintNotPrinted','Value',false);
  finally
    RegIni.Free;
  end;


  path   := ProgPath+'/ini/'+DM.STAR_DB.Username+'_'+IntToStr(CUR_DEPT_ID)+'.ini';
  RegIni := TIniFile.Create(path);
  try
      def_always_print := RegIni.ReadBool('def_always_print','value',false);
  finally
    RegIni.Free;
  end;


end;

end.
