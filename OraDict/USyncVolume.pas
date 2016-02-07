unit USyncVolume;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, DB, MemDS, DBAccess, Ora, DBTables, GridsEh,
  DBGridEh, cxControls, cxContainer, cxEdit, cxProgressBar, StdCtrls, Buttons,
  ExtCtrls, Math;

type
  TfrmSyncVolume = class(TForm)
    Panel3: TPanel;
    btnClose: TBitBtn;
    pnl_progress: TPanel;
    Label2: TLabel;
    pg_main: TcxProgressBar;
    btnLoad: TBitBtn;
    btnSave: TBitBtn;
    pnlDBF: TPanel;
    grOrder: TDBGridEh;
    odOrder: TOpenDialog;
    qOrder: TQuery;
    OraQuery1: TOraQuery;
    DataSource2: TDataSource;
    Label1: TLabel;
    procedure btnLoadClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSyncVolume: TfrmSyncVolume;

implementation

uses DataModule;

{$R *.dfm}

procedure TfrmSyncVolume.btnLoadClick(Sender: TObject);
var FullFileName: string;
begin
  if not odOrder.Execute then exit;

  try
    FullFileName := odOrder.FileName;
    with qOrder do
    begin
      Close;
      SQL.Text := 'SELECT TITLE, TITLERU,	BCODE, MARK, VOLUME, VOLDRY from "'+FullFileName+'" a where'#10'/*Filter*/ BCODE is not null and (VOLUME > 0 or VOLDRY > 0) order by BCODE, VOLUME, VOLDRY';
      grOrder.DataSource := DataSource2;
      Open;

      if IsEmpty then
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

procedure TfrmSyncVolume.btnSaveClick(Sender: TObject);
begin
  if qOrder.RecordCount > 0 then
  begin
    qOrder.First;
    qOrder.DisableControls;
    pg_main.Properties.Max := Round(qOrder.RecordCount/10);
    pg_main.Position := 0;
    pnl_progress.Visible := true;
    pnl_progress.Repaint;
    try
      OraQuery1.close;
      OraQuery1.SQL.Clear;
      OraQuery1.SQL.Add('update nomenclature set WEIGHT=:p1, WEIGHTDRY=:p2 where BAR_CODE=:p3');
      while not qOrder.Eof do
      begin
        OraQuery1.ParamByName('p1').AsFloat := qOrder.FieldByName('VOLUME').AsFloat;
        OraQuery1.ParamByName('p2').AsFloat := qOrder.FieldByName('VOLDRY').AsFloat;
        OraQuery1.ParamByName('p3').AsString := qOrder.FieldByName('BCODE').AsString;
        OraQuery1.Execute;
        qOrder.Next;
        if  Math.Ceil(qOrder.RecNo/10) <> pg_main.Position then
        begin
          pg_main.Position := Math.Ceil(qOrder.RecNo/10);
          pg_main.Repaint;
        end;
      end;
      DM.SelectSession.Commit;
      Application.MessageBox('Операция завершена. Не забудьте провести операцию синхронизации номенклатуры и регионов','Результат', MB_ICONINFORMATION);
    finally
      qOrder.EnableControls;
    end;
  end;
end;

end.
