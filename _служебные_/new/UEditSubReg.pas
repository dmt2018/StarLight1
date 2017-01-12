unit UEditSubReg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxGraphics, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxImageComboBox, StdCtrls, ActnList,
  cxPC, cxControls, cxButtons, ExtCtrls, ComCtrls, cxGroupBox, Buttons, star_lib;

type
  TfrmEditSubReg = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    Panel2: TPanel;
    cxButton2: TcxButton;
    btnClose: TcxButton;
    cxPageControl1: TcxPageControl;
    tsh_regions: TcxTabSheet;
    tsh_cityes: TcxTabSheet;
    tsh_promo: TcxTabSheet;
    ActionList1: TActionList;
    Action1: TAction;
    Label3: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Memo1: TMemo;
    Label6: TLabel;
    Memo2: TMemo;
    Label8: TLabel;
    Edit2: TEdit;
    Label9: TLabel;
    Label12: TLabel;
    Edit3: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    imcbRegion: TcxImageComboBox;
    Label15: TLabel;
    gbInfoProg: TcxGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit4: TEdit;
    ComboBox8: TComboBox;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    DateTimePicker1: TDateTimePicker;
    BitBtn5: TBitBtn;
    procedure btnCloseClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ttype:integer;//добавить 1, измен 2
  end;

var
  frmEditSubReg: TfrmEditSubReg;

implementation

{$R *.dfm}

uses uregistration, udm, ueditregistration;

procedure TfrmEditSubReg.BitBtn5Click(Sender: TObject);
begin
  if (ttype = 1) then
  begin
    Edit1.Text := '';
    Memo1.Lines.Clear;
  end;

  if (ttype = 2) then
  begin
    Edit1.Text := frmregistration.Q_GROUPS.FieldByName('NAME').AsString;
    MEMO1.Text := frmregistration.Q_GROUPS.FieldByName('INFO').AsString;
  end;
end;

procedure TfrmEditSubReg.btnCloseClick(Sender: TObject);
begin
 close;
end;

procedure TfrmEditSubReg.cxButton2Click(Sender: TObject);
var ind: integer;
begin
//группа
if (cxPageControl1.ActivePage.PageIndex=0) then begin
  if (trim(Edit1.Text) = '') then ShowMessage('Вы не заполнили обязательные поля!')
  else
  begin
    ind := frmregistration.Q_GROUPS.FieldByName('ID_CLIENTS_GROUPS').AsInteger;

    frmregistration.SelQ.Close;
    frmregistration.SelQ.SQL.Clear;
    if (ttype = 1) then
    begin
      frmregistration.SelQ.SQL.Add('select count(1) as nn from CLIENTS_GROUPS where upper(name)=:NAME and ID_CLIENTS_GROUPS <> :id and id_office='+IntToStr(intDefOffice));
      frmregistration.SelQ.ParamByName('ID').Value := 0;
    end;
    if (ttype = 2) then
    begin
      frmregistration.SelQ.SQL.Add('select count(1) as nn from CLIENTS_GROUPS where upper(name)=:NAME and ID_CLIENTS_GROUPS <> :id and id_office='+IntToStr(intDefOffice));
      frmregistration.SelQ.ParamByName('ID').Value := ind;
    end;
    frmregistration.SelQ.ParamByName('NAME').Value := UpperCase(Edit1.Text);
    frmregistration.SelQ.Open;
    if (frmregistration.SelQ.FieldByName('nn').AsInteger > 0) then
    begin
      MessageBox(Handle,'Такое название уже существует!','Внимание',MB_ICONWARNING);
      exit;
    end;

    frmregistration.selq2.SQL.Clear;

    // SQL запросы для источников рекламы
    if (ttype = 1) then
    begin
      frmregistration.SelQ2.SQL.Add('INSERT INTO CLIENTS_GROUPS VALUES(get_office_unique(''CLIENTS_ID_GROUPS''),:NAME,:INFO,CONST_OFFICE, sysdate)');
      //DM.Ora_SQL.ParamByName('ID').Value := 0;
    end;

    if (ttype = 2) then
    begin
      frmregistration.SelQ2.SQL.Add('UPDATE CLIENTS_GROUPS SET NAME=:NAME, INFO=:INFO, DATE_CHANGE = sysdate WHERE ID_CLIENTS_GROUPS=:ID');
      frmregistration.SelQ2.ParamByName('ID').Value := ind;
    end;

    frmregistration.SelQ2.ParamByName('NAME').Value := Edit1.Text;
    frmregistration.SelQ2.ParamByName('INFO').Value := Memo1.Text;

    // Пытаемся выполнить SQL запрос
    try
      frmregistration.SelQ2.Execute;

      if (ttype = 1) then
      begin
        frmregistration.Q_IDD.SQL.Clear;
//        DM.Q_IDD.SQL.Add('SELECT CLIENTS_ID_GROUPS.currval from DUAL');
        frmregistration.Q_IDD.SQL.Add('SELECT (CONST_OFFICE * 10000000 + CLIENTS_ID_GROUPS.currval) as nn from DUAL');
        frmregistration.Q_IDD.Open;
        ind := frmregistration.Q_IDD.FieldByName('nn').AsInteger;
      end;

      DM.OraSession.Commit;

      frmregistration.Q_GROUPS.Close;
      frmregistration.Q_G_CL.Close;
      frmregistration.Q_GROUPS.Open;
      frmregistration.Q_G_CL.Open;
      frmregistration.Q_GROUPS.Locate('ID_CLIENTS_GROUPS',ind,[]);

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

// город
if (cxPageControl1.ActivePage.PageIndex=1) then begin
  if (trim(Edit2.Text) = '') then
  begin
     Application.MessageBox('Вы не заполнили обязательные поля','Внимание',MB_ICONWARNING);
     exit;
  end;

  if imcbRegion.ItemIndex < 1 then
  begin
     Application.MessageBox('Необходимо указать регион','Внимание',MB_ICONWARNING);
     exit;
  end;

  try

    frmregistration.SelQ.SQL.Clear;
    frmregistration.SelQ.SQL.Add('begin BOOKS.save_city(:v_city, :v_kod, :v_id_region, :id_); end;');
    frmregistration.SelQ.ParamByName('v_city').AsString := trim(Edit2.Text);
    frmregistration.SelQ.ParamByName('v_kod').AsString  := trim(Edit3.Text);
    frmregistration.SelQ.ParamByName('v_id_region').AsInteger := imcbRegion.EditValue;
    frmregistration.SelQ.ParamByName('id_').AsInteger := Edit2.Tag;
    frmregistration.SelQ.Execute;
    Edit2.Tag := frmregistration.SelQ.ParamByName('id_').AsInteger;

    ModalResult := mrOk;

  except
    on E: Exception do
       MessageBox(Handle, PChar(E.Message), 'Не удалось выполнить операцию!', MB_ICONERROR);
  End;
end;
 //пасспорт
if (cxPageControl1.ActivePage.PageIndex=2) then begin
  close;
end;


end;

procedure TfrmEditSubReg.FormShow(Sender: TObject);
 var i:integer;
begin
    for i:=0 to cxPageControl1.PageCount-1 do cxPageControl1.Pages[i].TabVisible:=false;
    cxPageControl1.ActivePageIndex:=frmeditregistration.page;

    if ( cxPageControl1.ActivePageIndex=1) then begin
    FillImgComboCx(frmregistration.Q_REGIONS,imcbRegion,'Выберите...');
    imcbRegion.EditValue := imcbRegion.Tag;
    imcbRegion.Properties.ReadOnly := true;
    end;
end;

end.
