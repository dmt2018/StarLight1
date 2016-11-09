unit UEditAdmins;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, Menus, cxLookAndFeelPainters, StdCtrls, Mask, Buttons,
  cxButtons, ExtCtrls, cxSpinEdit, cxCheckBox, DBCtrlsEh, cxMaskEdit,
  cxDropDownEdit, cxImageComboBox, cxContainer, cxEdit, cxTextEdit, cxPC,
  cxControls, DBCtrls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxButtonEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  DBAccess, Ora, MemDS, star_lib;

type
  TfrmEditAdmins = class(TForm)
    cxPageControl1: TcxPageControl;
    tsh_regions: TcxTabSheet;
    tsh_cityes: TcxTabSheet;
    tsh_promo: TcxTabSheet;
    tsh_clienttypes: TcxTabSheet;
    tsh_departs: TcxTabSheet;
    Panel1: TPanel;
    Label4: TLabel;
    Image3: TImage;
    Panel2: TPanel;
    GroupBox7: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label23: TLabel;
    BitBtn14: TBitBtn;
    BitBtn17: TBitBtn;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit10: TEdit;
    BitBtn4: TBitBtn;
    Label3: TLabel;
    DBText1: TDBText;
    Label5: TLabel;
    ComboBox1: TDBComboBoxEh;
    GroupBox1: TGroupBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    Panel3: TPanel;
    Label6: TLabel;
    BitBtn2: TBitBtn;
    Panel4: TPanel;
    Panel5: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Edit1: TEdit;
    Memo1: TMemo;
    Store_DepsCBEx: TDBComboBoxEh;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton6: TcxButton;
    pnlTop: TPanel;
    cdsQuery: TOraQuery;
    cdsQueryNICK: TStringField;
    cdsQueryFIO: TStringField;
    cdsQueryID_CLIENTS: TIntegerField;
    dsQuery: TOraDataSource;
    cdsQ: TOraQuery;
    grClients: TcxGrid;
    grClientsV: TcxGridDBTableView;
    grClientsVNICK: TcxGridDBColumn;
    grClientsVFIO: TcxGridDBColumn;
    grBtnDel: TcxGridDBColumn;
    grClientsVID_CLIENTS: TcxGridDBColumn;
    grClientsL: TcxGridLevel;
    Panel6: TPanel;
    Label12: TLabel;
    DBComboBoxEh2: TDBComboBoxEh;
    OraQuery1: TOraQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    cdsQueryID_DEBETORS: TFloatField;
    IntegerField1: TIntegerField;
    cdsQueryLAST_DDATE: TDateTimeField;
    cdsQuerySTATE: TIntegerField;
    cdsQueryBEZNAL: TIntegerField;
    cdsQueryMARK: TIntegerField;
    cdsQueryDEBET: TFloatField;
    cdsQueryCREDIT_DAYS: TIntegerField;
    cdsQueryINFO: TStringField;
    cdsQueryDDATE: TDateTimeField;
    cdsQueryRUBL: TIntegerField;
    cdsQueryCHART: TFloatField;
    cdsQueryBLOCK1: TIntegerField;
    cdsQueryBLOCK2: TIntegerField;
    cdsQueryPHONE: TStringField;
    cdsQueryREGION: TIntegerField;
    cdsQueryGROUP_NAME: TStringField;
    cdsQueryID_CLIENTS_GROUPS: TIntegerField;
    cdsQueryKKK: TStringField;
    cdsQueryMARK_KOL: TFloatField;
    cdsQueryMAX_DATE: TDateTimeField;
    cdsQueryGROUP_MAX_DATE: TDateTimeField;
    cdsQueryIS_LOCK: TIntegerField;
    cdsQueryLOCK_FOR: TIntegerField;
    cdsQueryLOCK_CLIENT: TStringField;
    cdsQuerySALES: TFloatField;
    cdsQueryWW: TStringField;
    cdsQueryCHART_FOR_GROUP: TFloatField;
    cdsQueryID_OFFICE: TIntegerField;
    cdsQueryBRIEF: TStringField;
    cdsQueryINN: TStringField;
    cdsQueryITOG_DISCOUNT: TFloatField;
    cdsQueryCHART2: TFloatField;
    cdsQueryCHART_GROUP: TFloatField;
    cdsQueryD_CHECKED: TFloatField;
    OraDataSource1: TOraDataSource;
    Q_IDD: TOraQuery;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    grClientsVGROUP_NAME: TcxGridDBColumn;
    grClientsVREGION: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    grClientsVID_DEBETORS: TcxGridDBColumn;
    grClientsVLAST_DDATE: TcxGridDBColumn;
    grClientsVSTATE: TcxGridDBColumn;
    grClientsVBEZNAL: TcxGridDBColumn;
    grClientsVMARK: TcxGridDBColumn;
    grClientsVDEBET: TcxGridDBColumn;
    grClientsVCREDIT_DAYS: TcxGridDBColumn;
    grClientsVINFO: TcxGridDBColumn;
    grClientsVDDATE: TcxGridDBColumn;
    grClientsVRUBL: TcxGridDBColumn;
    grClientsVCHART: TcxGridDBColumn;
    grClientsVBLOCK1: TcxGridDBColumn;
    grClientsVBLOCK2: TcxGridDBColumn;
    grClientsVPHONE: TcxGridDBColumn;
    grClientsVID_CLIENTS_GROUPS: TcxGridDBColumn;
    grClientsVKKK: TcxGridDBColumn;
    grClientsVMARK_KOL: TcxGridDBColumn;
    grClientsVMAX_DATE: TcxGridDBColumn;
    grClientsVGROUP_MAX_DATE: TcxGridDBColumn;
    grClientsVIS_LOCK: TcxGridDBColumn;
    grClientsVLOCK_FOR: TcxGridDBColumn;
    grClientsVLOCK_CLIENT: TcxGridDBColumn;
    grClientsVSALES: TcxGridDBColumn;
    grClientsVWW: TcxGridDBColumn;
    grClientsVCHART_FOR_GROUP: TcxGridDBColumn;
    grClientsVID_OFFICE: TcxGridDBColumn;
    grClientsVBRIEF: TcxGridDBColumn;
    grClientsVINN: TcxGridDBColumn;
    grClientsVITOG_DISCOUNT: TcxGridDBColumn;
    grClientsVCHART2: TcxGridDBColumn;
    grClientsVCHART_GROUP: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ttype: integer;
    function OpenForUpdate(oraSess: TOraSession; idGroup: integer; GroupName: string): integer;
  end;

var
  frmEditAdmins: TfrmEditAdmins;



implementation

{$R *.dfm}

uses uadmin;

//запись
procedure TfrmEditAdmins.cxButton1Click(Sender: TObject);
begin
  if (trim(Edit1.Text) = '') then ShowMessage('Вы не заполнили обязательные поля!')
else
begin
    frmadmin.selq.SQL.Clear;

    if ((ttype = 1) or (ttype = 2)) then
    begin
      frmadmin.selq.SQL.Add('begin admins.save_PROGRAMS(:name_, :info_, :dll_, :id_); end;');
      frmadmin.selq.ParamByName('name_').AsString := trim(Edit1.Text);
      frmadmin.selq.ParamByName('info_').AsString := Memo1.Text;
      frmadmin.selq.ParamByName('dll_').AsString := '';
      frmadmin.selq.ParamByName('id_').AsInteger := Edit1.Tag;
      frmadmin.selq.Execute;
      Edit1.Tag := frmadmin.selq.ParamByName('id_').AsInteger;
    end;
    if ((ttype = 3) or (ttype = 4)) then
    begin
      frmadmin.selq.SQL.Add('begin admins.save_ROLE_GROUPS(:name_, :info_, :id_dep_, :id_); end;');
      frmadmin.selq.ParamByName('name_').AsString := trim(Edit1.Text);
      frmadmin.selq.ParamByName('info_').AsString := Memo1.Text;
      frmadmin.selq.ParamByName('id_dep_').AsInteger := Store_DepsCBEx.Value;
      frmadmin.selq.ParamByName('id_').AsInteger := Edit1.Tag;
      frmadmin.selq.Execute;
      Edit1.Tag := frmadmin.selq.ParamByName('id_').AsInteger;
    end;

    // Пытаемся выполнить SQL запрос
    try
      frmadmin.selq.Execute;
      if ((ttype = 1) or (ttype = 2)) then
      begin
        frmadmin.Q_PROGS.Refresh;
        frmadmin.Q_PROGS.Locate('ID_ADMIN_PROGRAMS',Edit1.Tag,[]);
      end;

      if ((ttype = 4) or (ttype = 3)) then
      begin
        frmadmin.Q_GROUPS.Refresh;
        frmadmin.Q_GROUPS.Locate('ID_ROLE_GROUPS',Edit1.Tag,[]);
      end;

      close;
    except
      on E: Exception do
      begin
        if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
        else  ShowMessage(E.Message);
      end;
    End;
end;
end;

//очистка
procedure TfrmEditAdmins.cxButton2Click(Sender: TObject);
begin
  if ((ttype = 1) or (ttype = 3)) then
  begin
    Edit1.Text := '';
    Memo1.Lines.Clear;
  end;

  if (ttype = 2) then
  begin
    Edit1.Text := frmadmin.Q_PROGS.FieldByName('NAME').AsString;
    MEMO1.Text := frmadmin.Q_PROGS.FieldByName('INFO').AsString;
  end;

  if (ttype = 4) then
  begin
    Edit1.Text := frmadmin.Q_GROUPS.FieldByName('NAME').AsString;
    MEMO1.Text := frmadmin.Q_GROUPS.FieldByName('INFO').AsString;
  end;
end;

procedure TfrmEditAdmins.cxButton6Click(Sender: TObject);
begin
 close;
end;

procedure TfrmEditAdmins.FormShow(Sender: TObject);
 var i:integer;
begin
for i:=0 to cxPageControl1.PageCount-1 do cxPageControl1.Pages[i].TabVisible:=false;
cxPageControl1.ActivePageIndex:=frmadmin.page;

  if ((ttype = 3) or (ttype = 4)) then
  begin
    cxPageControl1.Pages[frmadmin.page].TabVisible:=true;
    Label24.Visible := true;
    Store_DepsCBEx.Visible := true;
    with frmadmin.selq do
    Begin
    try
      Close;
      SQL.Clear;
      SQL.Add('begin admins.get_deps_on_user(:cursor_); end;');
//      ParamByName('login_').Value := UpperCase(DataM.Operator_username);
      ParamByName('cursor_').AsCursor;
      Open;
    except
      on E: Exception do
         if (Pos(E.Message, 'SQL statement doesn''t return rows') > 0) then NULL else MessageBox(Handle, PChar(E.Message), 'Ощибка!', MB_ICONERROR);
    end;
    End;

    FillComboOlmer(frmadmin.selq, Store_DepsCBEx, 'Все отделы');
    if Store_DepsCBEx.Tag > 0 then Store_DepsCBEx.Value := Store_DepsCBEx.Tag;
    
  end
  else
  begin
    Label24.Visible := false;
    Store_DepsCBEx.Visible := false;
  end;
end;

function tfrmEditAdmins.OpenForUpdate(oraSess: TOraSession; idGroup: integer; GroupName: string): integer;
  begin
    Application.CreateForm(TfrmEditAdmins, frmEditAdmins);
    try
      with frmEditAdmins do
      begin
        try
          frmEditAdmins.pnlTop.Caption := GroupName;
          cdsQuery.Session := oraSess;
          cdsQ.Session := oraSess;
          cdsQuery.Close;
          cdsQuery.SQL.Text := 'SELECT c.id_clients, c.nick, c.fio FROM ADMIN_EMPLOYEES_ROLE_GROUPS EG, clients c where EG.ID_EMPLOYEES = c.id_clients and EG.ID_ROLE_GROUPS='+IntToStr(idGroup);
          cdsQuery.Open;
          pnlTop.Tag := idGroup;
          result := ShowModal;
        except
          on E: Exception do MessageBox(Handle, PChar(E.Message), 'Ошибка', MB_ICONERROR);
        End;
      end;
    finally
      frmEditAdmins.Free;
    end;
  end;

end.
