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
  DBAccess, Ora, MemDS;

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
          on E: Exception do MessageBox(Handle, PChar(E.Message), 'Œ¯Ë·Í‡', MB_ICONERROR);
        End;
      end;
    finally
      frmEditAdmins.Free;
    end;
  end;

end.
