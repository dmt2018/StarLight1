unit print_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, PI_Library, Buttons, Menus,
  cxLookAndFeelPainters, cxButtons, frxBarcode, frxExportHTML,
  frxExportPDF, frxClass, frxExportXLS, frxDBSet, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxCurrencyEdit, IniFiles;

type
  Tprintf = class(TForm)
    top_panel: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Panel6: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    BitBtn1: TcxButton;
    frxReport1: TfrxReport;
    frxSelPrntPreview: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxBarCodeObject1: TfrxBarCodeObject;
    Panel7: TPanel;
    Label9: TLabel;
    Edit1: TEdit;
    Panel8: TPanel;
    Label12: TLabel;
    cxCurrencyEdit1: TcxCurrencyEdit;
    Label13: TLabel;
    cxCurrencyEdit2: TcxCurrencyEdit;
    Label14: TLabel;
    Label15: TLabel;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxCurrencyEdit4: TcxCurrencyEdit;
    Label16: TLabel;
    cxCurrencyEdit5: TcxCurrencyEdit;
    Label17: TLabel;
    cxCurrencyEdit6: TcxCurrencyEdit;
    btn_save: TcxButton;
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
    Label36: TLabel;
    Panel12: TPanel;
    Label37: TLabel;
    Label38: TLabel;
    Panel13: TPanel;
    Label39: TLabel;
    Label40: TLabel;
    pnlOnePot: TPanel;
    Label41: TLabel;
    Label42: TLabel;
    chbPrintColor: TCheckBox;
    procedure Panel3Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_saveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label37Click(Sender: TObject);
    procedure Label39Click(Sender: TObject);
    procedure pnlOnePotClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Prepare_func(price: boolean);
    { Public declarations }
  end;

var
  printf: Tprintf;

implementation

uses DataModule, PreparePrintU, Globals{, frx2xto30};

{$R *.dfm}

procedure Tprintf.BitBtn1Click(Sender: TObject);
begin
  close;
end;


//  Стикеры для аксессуаров (малые)
procedure Tprintf.Panel6Click(Sender: TObject);
begin
  Prepare_func(false);
  frxReport1.LoadFromFile(StartDir + '/reps/StickerAccSmall.fr3');
  frxReport1.Variables['PrintMark'] := '''' + Edit1.Text + '''';
  frxReport1.ShowReport();
end;

// Печать ценников
procedure Tprintf.Panel5Click(Sender: TObject);
begin
  Prepare_func(true);
  frxReport1.LoadFromFile(StartDir + '/Reps/PriceSingle.fr3');
  frxReport1.Variables['PrintMark'] := '''' + Edit1.Text + '''';
  frxReport1.ShowReport();
end;


// Печать одного стикера для горшков
procedure Tprintf.pnlOnePotClick(Sender: TObject);
var     memo1: TfrxMemoView;
begin
  Prepare_func(false);
  frxReport1.LoadFromFile(StartDir + '/Reps/codes_one.fr3');
  memo1 := frxReport1.FindObject('Memo6') as TfrxMemoView;


  if ((Sender as TLabel).Tag = 1) then
     memo1.Text := '[frxSelPrntPreview."F_NAME_RU"] [frxSelPrntPreview."RUS_MARKS"] X[frxSelPrntPreview."PACKQ"]'
  else
     memo1.Text := '[frxSelPrntPreview."F_NAME_RU"] [frxSelPrntPreview."COLOUR"] [frxSelPrntPreview."RUS_MARKS"]';
  frxReport1.PrepareReport;

  frxReport1.ShowPreparedReport;
end;


// Печать для среза
procedure Tprintf.Panel1Click(Sender: TObject);
var i: integer;
    page: TfrxReportPage;
    vv: TfrxMasterData;
    memo1: TfrxMemoView;
begin
  Prepare_func(false);
  cxCurrencyEdit1.PostEditValue;
  cxCurrencyEdit2.PostEditValue;
  cxCurrencyEdit3.PostEditValue;
  cxCurrencyEdit4.PostEditValue;
  cxCurrencyEdit5.PostEditValue;
  cxCurrencyEdit6.PostEditValue;

  if ((Sender as TLabel).Tag = 1) then
    frxReport1.LoadFromFile(StartDir + '/Reps/codes62.fr3')
  else
    frxReport1.LoadFromFile(StartDir + '/Reps/codes.fr3');

  vv := frxReport1.FindObject('MasterData9') as TfrxMasterData ;
  vv.Height       := cxCurrencyEdit6.EditValue * fr1cm;
  vv.ColumnWidth  := cxCurrencyEdit5.EditValue * fr1cm;
  memo1 := frxReport1.FindObject('Memo6') as TfrxMemoView;

{
  if ((Sender as TLabel).Tag = 1) then
     memo1.Text := '[frxSelPrntPreview."F_NAME_RU"] [frxSelPrntPreview."COLOUR"] X[frxSelPrntPreview."PACKQ"]'
  else
     memo1.Text := '[frxSelPrntPreview."F_NAME_RU"] [frxSelPrntPreview."COLOUR"] [frxSelPrntPreview."RUS_MARKS"]';
}
  if ((Sender as TLabel).Tag = 1) then
  begin
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

  frxReport1.Variables['PrintMark'] := '''' + Edit1.Text + '''';
  frxReport1.ShowPreparedReport;
end;

// Стикеры для аксессуаров (большие)
procedure Tprintf.Panel3Click(Sender: TObject);
var i: integer;
    page: TfrxReportPage;
begin
  Prepare_func(false);
  cxCurrencyEdit13.PostEditValue;
  cxCurrencyEdit14.PostEditValue;
  cxCurrencyEdit15.PostEditValue;
  cxCurrencyEdit16.PostEditValue;
  cxCurrencyEdit17.PostEditValue;
  cxCurrencyEdit18.PostEditValue;

  frxReport1.LoadFromFile(StartDir + '/Reps/codes_acc.fr3');
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
procedure Tprintf.Prepare_func(price: boolean);
begin
  try
    Screen.Cursor := crHandPoint;
    DM.STAR_DB.ExecSQL('TRUNCATE TABLE CREATOR.PREPARE_PRINT',[]);

    DM.PriceList.DisableControls;
    DM.PriceList.Filter   := 'D_CHECKED = 1';
    DM.PriceList.Filtered := true;
    DM.PriceList.First;
    if DM.PriceList.RecordCount > 0 then
    Begin
      while not DM.PriceList.Eof do
      begin
        if price then
        begin
          DM.PriceList.Edit;
          DM.PriceListSTICKERS.AsInteger := 1;
          DM.PriceList.Post;
        end;
        with DM.StoreProc do
        Begin
          StoredProcName := 'PRICE_PKG.PRINT_PREPARE_ADD';
          Prepare;
          ParamByName('IN_N_ID').Value := DM.PriceListN_ID.AsInteger;
          Execute;
        End;
        DM.PriceList.Next;
      end;
    End;

//     DM.PriceList.Filter   := '';
//    DM.PriceList.Filtered := false;
    DM.PriceList.EnableControls;

    ReactivateOraQuery(DM.SelPrntPreview);
    Screen.Cursor := crDefault;
  DM.STAR_DB.Commit;

  except on E: Exception do
    begin
      DM.PriceList.EnableControls;
      Screen.Cursor := crDefault;
      MessageBox(Handle, PChar(E.Message), 'Ощибка!', MB_ICONERROR)
    end;
  end;

end;





procedure Tprintf.btn_saveClick(Sender: TObject);
var path: string;
    RegIni : TIniFile;
begin
  try
    path   := StartDir+'/ini/'+DM.STAR_DB.Username+'.ini';
    RegIni := TIniFile.Create(path);
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
  path   := StartDir+'/ini/printPacked.ini';
  RegIni := TIniFile.Create(path);
  try
    RegIni.WriteBool('PrintColor','Value',chbPrintColor.Checked);
  finally
    RegIni.Free;
  end;

  DM.SelPrntPreview.Close;
end;

procedure Tprintf.FormShow(Sender: TObject);
var RegIni : TIniFile;
    path: string;
begin
  try
    path   := StartDir+'/ini/'+DM.STAR_DB.Username+'.ini';
    RegIni := TIniFile.Create(path);

    cxCurrencyEdit1.EditValue := RegIni.ReadFloat('Codes','MarginLeft',0.75);
    cxCurrencyEdit2.EditValue := RegIni.ReadFloat('Codes','MarginRight',0.75);
    cxCurrencyEdit3.EditValue := RegIni.ReadFloat('Codes','MarginBottom',1.85);
    cxCurrencyEdit4.EditValue := RegIni.ReadFloat('Codes','MarginTop',2.1);
    cxCurrencyEdit5.EditValue := RegIni.ReadFloat('Codes','Width',4.85);
    cxCurrencyEdit6.EditValue := RegIni.ReadFloat('Codes','Height',2.54);
  finally
    RegIni.Free;
  end;

  path   := StartDir+'/ini/printPacked.ini';
  RegIni := TIniFile.Create(path);
  try
      chbPrintColor.Checked  := RegIni.ReadBool('PrintColor','Value',false);
  finally
    RegIni.Free;
  end;
end;


// Печать ценников 99х57
procedure Tprintf.Label37Click(Sender: TObject);
var     memo1: TfrxMemoView;
begin
  Prepare_func(true);
  frxReport1.LoadFromFile(StartDir + '/Reps/PriceSingle99x57.fr3');

  memo1 := frxReport1.FindObject('MemoTitle') as TfrxMemoView;
  memo1.Text := title_name;

  frxReport1.ShowReport();
end;

// Печать ценников 48х25
procedure Tprintf.Label39Click(Sender: TObject);
var     memo1: TfrxMemoView;
begin
  Prepare_func(true);
  frxReport1.LoadFromFile(StartDir + '/Reps/PriceSingle48x25.fr3');

  memo1 := frxReport1.FindObject('MemoTitle') as TfrxMemoView;
  memo1.Text := title_name;

  frxReport1.ShowReport();
end;

end.
