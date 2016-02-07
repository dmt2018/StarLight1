unit store_view_filtr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, ExtCtrls, StrUtils,
  DB, MemDS, DBAccess, Ora, Grids, DBGridEh, global, useful_functions,
  Menus, cxLookAndFeelPainters, cxGraphics, cxCustomData, cxStyles, cxTL,
  cxMaskEdit, cxCheckBox, cxInplaceContainer, cxDBTL, cxControls, cxTLData,
  cxButtons;

type
  TStoreViewFiltrForm = class(TForm)
    Panel1: TPanel;
    flower_types: TOraQuery;
    flower_subtypes: TOraQuery;
    flower_subtypesFST_ID: TFloatField;
    flower_subtypesF_SUB_TYPE: TStringField;
    flower_subtypesFT_ID: TFloatField;
    flower_subtypesHOL_SUB_TYPE: TStringField;
    flower_typesFT_ID: TFloatField;
    flower_typesF_TYPE: TStringField;
    flower_typesFT_MASK: TStringField;
    OraDataSource1: TOraDataSource;
    Panel2: TPanel;
    BitBtn1: TcxButton;
    cxButton1: TcxButton;
    cxDBTreeList1: TcxDBTreeList;
    cxDBTreeList1F_TYPE: TcxDBTreeListColumn;
    cxDBTreeList1FST_ID: TcxDBTreeListColumn;
    cxDBTreeList1FT_ID: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn;
    procedure FormCreate(Sender: TObject);

{
    procedure VSTPaintText(Sender: TBaseVirtualTree;
      const TargetCanvas: TCanvas; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType);
    procedure VSTGetText(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var Text: WideString);
    procedure VSTInitChildren(Sender: TBaseVirtualTree; Node: PVirtualNode;
      var ChildCount: Cardinal);
    procedure VSTInitNode(Sender: TBaseVirtualTree; ParentNode,
      Node: PVirtualNode; var InitialStates: TVirtualNodeInitStates);
}
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxDBTreeList1Click(Sender: TObject);
    procedure cxDBTreeList1Collapsing(Sender: TObject;
      ANode: TcxTreeListNode; var Allow: Boolean);
    procedure cxDBTreeList1Expanding(Sender: TObject;
      ANode: TcxTreeListNode; var Allow: Boolean);


  private
    { Private declarations }
  public
    { Public declarations }
    StrList_types_arr : ArrOfInt;
    StrList_subtypes_arr : ArrOfInt;
  end;

var
  StoreViewFiltrForm: TStoreViewFiltrForm;

implementation



{$R *.dfm}
uses dataM;

procedure TStoreViewFiltrForm.FormCreate(Sender: TObject);
begin



end;



{
// Make the root nodes underlined and draw changed nodes in bold style.
procedure TStoreViewFiltrForm.VSTPaintText(Sender: TBaseVirtualTree;
  const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  TextType: TVSTTextType);
begin
  if Node.Parent = Sender.RootNode then
    TargetCanvas.Font.Style := [fsBold];
end;
//-------------------------------------------------------------------------



//-------------------------------------------------------------------------
procedure TStoreViewFiltrForm.VSTGetText(Sender: TBaseVirtualTree; Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var Text: WideString);

var
  Data: PMyRec;
begin
  Data := Sender.GetNodeData(Node);
  if Assigned(Data) then
    Text := Data.Caption;
end;

//-------------------------------------------------------------------------



//-------------------------------------------------------------------------
procedure TStoreViewFiltrForm.VSTInitChildren(Sender: TBaseVirtualTree;
  Node: PVirtualNode; var ChildCount: Cardinal);
var
  sql:string;
  CustomerRecord1: PMyRec;
begin

CustomerRecord1 := Sender.GetNodeData(Node);

sql := 'SELECT * from flower_subtypes WHERE FT_ID=:FT_ID';
flower_subtypes.Close;
flower_subtypes.SQL.Clear;
flower_subtypes.SQL.Add(sql);

flower_subtypes.ParamByName('FT_ID').Value := CustomerRecord1.Number;

try
  flower_subtypes.Open;
  except
    on E: Exception do ShowMessage(E.Message);
End;

ChildCount := flower_subtypes.RecordCount;
flower_subtypes.First;

end;
//-------------------------------------------------------------------------






//-------------------------------------------------------------------------

procedure TStoreViewFiltrForm.VSTInitNode(Sender: TBaseVirtualTree; ParentNode,
  Node: PVirtualNode; var InitialStates: TVirtualNodeInitStates);
var
  CustomerRecord: PMyRec;
  Level:integer;
begin

Level := Sender.GetNodeLevel(Node);

if Level=0 then
begin
CustomerRecord := Sender.GetNodeData(Node);
Initialize(CustomerRecord^);
CustomerRecord.Caption := flower_types.FieldValues['F_TYPE'];
CustomerRecord.Number := flower_types.FieldValues['FT_ID'];

if not flower_types.eof then flower_types.Next;

Node.CheckType:=ctTriStateCheckBox;

if (High(StrList_types_arr)>-1) then
begin
if (Among(CustomerRecord.Number, StrList_types_arr)) then
Node.CheckState := csCheckedNormal;
end;


end;


if Level=1 then
begin
CustomerRecord := Sender.GetNodeData(Node);
//CustomerRecord1 := Sender.GetNodeData(Node.Parent);

Initialize(CustomerRecord^);
CustomerRecord.Caption := flower_subtypes.FieldValues['F_SUB_TYPE'];
CustomerRecord.Number := flower_subtypes.FieldValues['FST_ID'];

if not flower_subtypes.eof then flower_subtypes.Next;
Node.CheckType:=ctTriStateCheckBox;

if (Node.Parent.CheckState=csCheckedNormal) then
Node.CheckState := csCheckedNormal;

if (High(StrList_subtypes_arr)>-1) then
  if (Among(CustomerRecord.Number, StrList_subtypes_arr)) then
  begin
  Node.CheckState := csCheckedNormal;
  Node.Parent.CheckState := csMixedNormal;
  end;


end;

if Level<1 then  Include(InitialStates, ivsHasChildren);

end;
//-------------------------------------------------------------------------
}



procedure TStoreViewFiltrForm.BitBtn2Click(Sender: TObject);
begin
close;
end;

procedure TStoreViewFiltrForm.FormShow(Sender: TObject);
begin

    flower_types.Close;
    try
    flower_types.Open;
    except
    ShowMessage('Не могу открыть!');
    End;

{
VST.BeginUpdate;
VST.Clear;
VST.NodeDataSize := Sizeof(TMyRec);
flower_types.First;
VST.RootNodeCount := flower_types.RecordCount;
VST.SortTree(0,sdAscending,true);
VST.EndUpdate;
}
end;






















procedure TStoreViewFiltrForm.cxDBTreeList1Click(Sender: TObject);
var i: integer;
begin

  if (cxDBTreeList1.ColumnByName('cxDBTreeList1cxDBTreeListColumn1').Focused = true) then
  begin

    if (cxDBTreeList1.ColumnByName('cxDBTreeList1FST_ID').Value = null ) then
    begin

        if (cxDBTreeList1.ColumnByName('cxDBTreeList1cxDBTreeListColumn1').Value = 0) then
            i := 1
          else
            i := 0;

        flower_types.Filter := 'FT_ID = ' + VarToStr(cxDBTreeList1.ColumnByName('cxDBTreeList1FT_ID').Value);
        flower_types.Filtered := true;
        flower_types.First;

        while not flower_types.Eof do
        begin
          flower_types.Edit;
          flower_types.FieldByName('CHECKED').AsInteger := i;
          flower_types.Post;
          flower_types.Next;
        end;

        flower_types.Filter := '';
        flower_types.Filtered := false;

    end
    else
    begin

      if (flower_types.Locate('FST_ID', cxDBTreeList1.DataController.GetValue(cxDBTreeList1.DataController.GetFocusedRecordIndex, 1), []) = true ) then
      begin
        flower_types.Edit;
        if (cxDBTreeList1.ColumnByName('cxDBTreeList1cxDBTreeListColumn1').Value = 0) then
          flower_types.FieldByName('CHECKED').AsInteger := 1
        else
          flower_types.FieldByName('CHECKED').AsInteger := 0;
        flower_types.Post;
      end;

    end;

  end;

end;

procedure TStoreViewFiltrForm.cxDBTreeList1Collapsing(Sender: TObject;
  ANode: TcxTreeListNode; var Allow: Boolean);
begin
  cxDBTreeList1.ColumnByName('cxDBTreeList1F_TYPE').Focused := true;
end;

procedure TStoreViewFiltrForm.cxDBTreeList1Expanding(Sender: TObject;
  ANode: TcxTreeListNode; var Allow: Boolean);
begin
  cxDBTreeList1.ColumnByName('cxDBTreeList1F_TYPE').Focused := true;
end;

end.
