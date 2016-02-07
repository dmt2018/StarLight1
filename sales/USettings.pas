unit USettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxControls, cxContainer,
  cxCheckListBox, cxButtons, ExtCtrls, IniFiles, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxTextEdit,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxDropDownEdit, cxButtonEdit,
  cxCurrencyEdit, cxRadioGroup, cxGroupBox

;

type
  TfrmSettings = class(TForm)
    Panel4: TPanel;
    BitBtn_Cancel: TcxButton;
    BitBtnSave: TcxButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Grid_types: TcxGrid;
    Grid_types_v: TcxGridDBTableView;
    ft_F_TYPE: TcxGridDBColumn;
    ft_NBUTTON: TcxGridDBColumn;
    ft_FT_ID: TcxGridDBColumn;
    ft_ID_DEPARTMENTS: TcxGridDBColumn;
    Grid_types_l: TcxGridLevel;
    Panel3: TPanel;
    chb_columns: TcxCheckListBox;
    Label1: TLabel;
    ft_delete: TcxGridDBColumn;
    Grid_subtypes_l: TcxGridLevel;
    grid_subtypes_v: TcxGridDBTableView;
    fst_FT_ID: TcxGridDBColumn;
    fst_F_SUB_TYPE: TcxGridDBColumn;
    fst_ID_DEPARTMENTS: TcxGridDBColumn;
    fst_NBUTTON: TcxGridDBColumn;
    Panel5: TPanel;
    gr_group: TcxRadioGroup;
    fst_delete: TcxGridDBColumn;
    procedure BitBtnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Grid_types_vColumn1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure fst_deletePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSettings: TfrmSettings;

implementation

uses Globals, UDM;

{$R *.dfm}

procedure TfrmSettings.BitBtnSaveClick(Sender: TObject);
var i: integer;
    vv, path: string;
    RegIni : TIniFile;
begin
  try
    vv     := chb_columns.EditValue;
    path   := ExtractFilePath(Application.ExeName);
    path   := path+'ini/'+DM.sale_session.Username+'_'+intToStr(CUR_DEPT_ID)+'.ini';
    RegIni := TIniFile.Create(path);
    gr_group.PostEditValue;

    for I := 0 to chb_columns.Count - 1 do
    begin
      RegIni.WriteString('Columns', IntToStr(chb_columns.Items.Items[i].Tag), vv[i+1]);
    end;
    RegIni.WriteString('StrValue', 'Value', vv);
    RegIni.WriteString('SortVal', 'Value', VarToStr(gr_group.EditValue));
  finally
    RegIni.Free;
    ModalResult := mrOk;
  end;
end;

procedure TfrmSettings.FormShow(Sender: TObject);
var vv, bb, path: string;
    RegIni : TIniFile;
begin
  try
    path   := ExtractFilePath(Application.ExeName);
    path   := path+'ini/'+DM.sale_session.Username+'_'+intToStr(CUR_DEPT_ID)+'.ini';
    RegIni := TIniFile.Create(path);
    vv := RegIni.ReadString('StrValue', 'Value', '111111111111111');
    bb := RegIni.ReadString('SortVal', 'Value', '1');
    chb_columns.EditValue := vv;
    gr_group.EditValue := bb;
  finally
    RegIni.Free;
    chb_columns.SetFocus;
  end;
end;

procedure TfrmSettings.fst_deletePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if DM.fst_viewNBUTTON.IsNull = false then
  begin
     DM.fst_view.Delete;
     DM.fst_view.Refresh;
  end;
end;

procedure TfrmSettings.Grid_types_vColumn1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if DM.ft_viewNBUTTON.IsNull = false then
  begin
     DM.ft_view.Delete;
     DM.ft_view.Refresh;
  end;
end;

end.
