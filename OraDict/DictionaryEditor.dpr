program DictionaryEditor;

uses
  Forms,
  Classes,
  StarLibrary,
  Edit in 'Edit.pas' {EditForm},
  DataModule in 'DataModule.pas' {DM: TDataModule},
  NewDict in 'NewDict.pas' {NewD},
  SetParsU in 'SetParsU.pas' {SetParsF},
  AddSpecU in 'AddSpecU.pas' {AddSpec},
  Globals in 'Globals.pas',
  EditDicts in 'EditDicts.pas' {DictsEdit},
  UEditForm in 'UEditForm.pas' {frm_editform},
  UHelp in 'UHelp.pas' {frm_help},
  UFullInfo in 'UFullInfo.pas' {frm_full_info},
  UShowText in 'UShowText.pas' {frmShowText},
  USyncVolume in 'USyncVolume.pas' {frmSyncVolume},
  UChoiseType in 'UChoiseType.pas' {frm_choise_type};

{$R *.res}

begin

  CheckStarParams(ed,del,pr,add,Username,Password,ora_db_path,INPUT_DEPT_ID);

  Application.Initialize;
  Application.Title         := 'Номенклатура';
  Application.CreateForm(TEditForm, EditForm);
  Application.CreateForm(TDM, DM);
  DM.SelectSession.Username := Username;
  DM.SelectSession.Password := Password;
  DM.SelectSession.Server   := ora_db_path;

  Application.CreateForm(TEditForm, EditForm);

  EditForm.creator := creator;
  Application.CreateForm(TAddSpec, AddSpec);
  Application.CreateForm(TSetParsF, SetParsF);
  Application.CreateForm(TNewD, NewD);
  Application.CreateForm(TDictsEdit, DictsEdit);
//  SetAll(ed, del, pr, add);
  Application.Run;
end.
