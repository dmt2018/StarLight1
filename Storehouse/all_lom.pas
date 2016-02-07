unit all_lom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGridEh, Buttons, ActnList, DB, Ora,
  MemDS, DBAccess, Menus, ComCtrls, ToolWin, GridsEh;

type
  TAll_lom_Form = class(TForm)
    Panel9: TPanel;
    Panel10: TPanel;
    Image1: TImage;
    Label2: TLabel;
    NumberDoc: TLabeledEdit;
    BitBtn1: TBitBtn;
    ClientFio: TLabeledEdit;
    ClientNick: TLabeledEdit;
    Doc_DateTimePicker1: TDateTimePicker;
    Doc_DateTimePicker2: TDateTimePicker;
    DateTrue: TCheckBox;
    StatusBar: TStatusBar;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Dep_name_Label: TLabel;
    Print_PM: TPopupMenu;
    N11: TMenuItem;
    N12: TMenuItem;
    doc: TOraQuery;
    docID_DOC: TFloatField;
    docDOC_NUMBER: TFloatField;
    docID_DOC_TYPE: TIntegerField;
    docID_DEPARTMENTS: TIntegerField;
    docDEPARTMENT_NAME: TStringField;
    docOPERATOR_NAME: TStringField;
    docDOC_DATE: TDateTimeField;
    docDOC_DATE_REAL: TDateTimeField;
    docID_CLIENT: TIntegerField;
    docNICK: TStringField;
    docFIO: TStringField;
    docQUANTITY_ALL: TFloatField;
    docPRICE_ALL: TFloatField;
    docCOMMENTS: TStringField;
    DOC_DS: TOraDataSource;
    PopupMenu1: TPopupMenu;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N2: TMenuItem;
    ppmCopy: TMenuItem;
    ppmSelectAll: TMenuItem;
    N1: TMenuItem;
    N3: TMenuItem;
    ppmSaveSelection: TMenuItem;
    ActionList1: TActionList;
    DocNewManually_Action: TAction;
    DocNewScaner_Action: TAction;
    DocPrint_Action: TAction;
    DocListPrint_Action: TAction;
    DOCNEW_DATA: TOraQuery;
    DOCNEW_DATAN_ID: TFloatField;
    DOCNEW_DATACODE: TStringField;
    DOCNEW_DATAF_TYPE: TStringField;
    DOCNEW_DATAF_SUB_TYPE: TStringField;
    DOCNEW_DATAFT_ID: TFloatField;
    DOCNEW_DATAFST_ID: TFloatField;
    DOCNEW_DATAFULL_NAME: TStringField;
    DOCNEW_DATAQUANTITY_NOW: TFloatField;
    DOCNEW_DATASTORE_TYPE_NAME: TStringField;
    DOCNEW_DATASTORE_TYPE: TFloatField;
    DOCNEW_DATAPRICE: TFloatField;
    DOCNEW_DATAPRICE_NEW: TFloatField;
    DOCNEW_DATAQUANTITY: TIntegerField;
    DOCNEW_DATAADDED: TFloatField;
    DOCNEW_DATAQUANTITY_PRICE: TFloatField;
    DOCNEW_DATAID_DEPARTNENTS: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  All_lom_Form: TAll_lom_Form;

implementation

{$R *.dfm}

end.
