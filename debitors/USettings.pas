unit USettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles, Menus, cxLookAndFeelPainters, ActnList, StdCtrls,
  cxButtons, ExtCtrls, DB, DBAccess, Ora, MemDS, cxPC, cxControls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmSettings = class(TForm)
    Panel3: TPanel;
    btn_close: TcxButton;
    cxButton2: TcxButton;
    ActionList1: TActionList;
    aEnter: TAction;
    cxPageControl1: TcxPageControl;
    tsh_codes: TcxTabSheet;
    tshRule: TcxTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Q_EMPL: TOraQuery;
    Q_EMPL_DS: TOraDataSource;
    Q_EMPLID_CLIENTS: TIntegerField;
    Q_EMPLNICK: TStringField;
    Q_EMPLFIO: TStringField;
    Q_EMPLENABLE_VIEW: TFloatField;
    gr_rules: TcxGrid;
    gr_rules_v: TcxGridDBTableView;
    gr_rules_vID_CLIENTS: TcxGridDBColumn;
    gr_rules_vAA: TcxGridDBColumn;
    gr_rules_vNICK: TcxGridDBColumn;
    gr_rules_vFIO: TcxGridDBColumn;
    gr_rules_l: TcxGridLevel;
    procedure aEnterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Q_EMPLBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSettings: TfrmSettings;

implementation

uses DataM;

{$R *.dfm}

procedure TfrmSettings.aEnterExecute(Sender: TObject);
var path: string;
    RegIni : TIniFile;
begin
  try
    path   := ExtractFilePath(Application.ExeName);
    path   := path+'ini/'+DM.OraSession1.Username+'.ini';
    RegIni := TIniFile.Create(path);
    RegIni.WriteString('Moscow', 'Value', Edit1.Text);
    RegIni.WriteString('Region', 'Value', Edit2.Text);
    if Q_EMPL.State = dsEdit then Q_EMPL.Post;
    DM.OraSession1.Commit;
  finally
    RegIni.Free;
    ModalResult := mrOk;
  end;
end;

procedure TfrmSettings.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_EMPL.Close;
  Q_EMPL.Filtered := false;
  Q_EMPL.Filter := '';
end;

procedure TfrmSettings.FormShow(Sender: TObject);
var vv, path: string;
    RegIni : TIniFile;
begin
  try
    path   := ExtractFilePath(Application.ExeName);
    path   := path+'ini/'+DM.OraSession1.Username+'.ini';
    RegIni := TIniFile.Create(path);

    Edit1.Text := ''''+ RegIni.ReadString('Moscow', 'Value', '') + '''';
    Edit2.Text := ''''+ RegIni.ReadString('Region', 'Value', '') + '''';

    Edit3.Text := '';
    DM.Q_SQL.Close;
    DM.Q_SQL.SQL.Clear;
    //DM.Q_SQL.SQL.Add('select rownum, trim(a.ww) as ww from ( select distinct cast(nick as varchar2(2)) as ww from clients where nick like ''_ %'' order by ww ) a ');
    DM.Q_SQL.SQL.Add('select rownum, a.* from ( select distinct substr(trim(nick),0,INSTR(trim(nick), '' '')-1) as ww from clients where (id_office='+IntToStr(DM.id_office)+' or '+IntToStr(DM.id_office)+'=0) ) a order by ww ');
    DM.Q_SQL.Open;
    while not DM.Q_SQL.Eof do
    begin
      Edit3.Text := Edit3.Text + '''' + DM.Q_SQL.FieldByName('ww').AsString + ''', ';
      DM.Q_SQL.Next;
    end;
    DM.Q_SQL.Close;

    Q_EMPL.Close;
    Q_EMPL.Open;

    Edit3.Text := copy(Edit3.Text,0,length(Edit3.Text)-2);
  finally
    RegIni.Free;
    Edit1.SetFocus;
  end;
end;

procedure TfrmSettings.Q_EMPLBeforeOpen(DataSet: TDataSet);
begin
  Q_EMPL.ParamByName('v_office').AsInteger := DM.id_office;
end;

end.
