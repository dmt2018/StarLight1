unit global;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  CheckLst, Menus, DB, StrUtils, DBGridEh, ImgList,

  DBCtrls, DBTables,
  PrnDbgeh, ToolWin, DBGridEhImpExp,
  Mask, DBLookupEh, DBCtrlsEh, PropStorageEh,
  PropFilerEh, SHELLAPI, Ora;

type
  // This is a very simple record we use to store data in the nodes.
  // Since the application is responsible to manage all data including the node's caption
  // this record can be considered as minimal requirement in all VT applications.
  // Extend it to whatever your application needs.
  PMyRec = ^TMyRec;
  TMyRec = record
  Number:integer;
  Caption: WideString;
  end;

type
  ArrOfInt = array of integer;


//--------------------------------------------------------------------------------

VAR
  ora_db_path, username, password, creator, ProgPath : string;
  alert_str: string;
  def_folder: string;
//  procedure VSTUnCheck(Tree: TVirtualStringTree);
//  procedure VSTCheck(Tree: TVirtualStringTree);
  function check_doc():bool;
  function From_Scaner(file_path: string;DOCNEW_DATA:TOraQuery;Ora_SQL:TOraSQL) : String;

  procedure readscaner();

implementation
uses dataM;



//
//  Читаем данные со сканера
//
procedure readscaner();
VAR COMMAND, PARAMS, WORKDIR:STRING;
    handle: hwnd;
    start_line : string;

    scan_si: STARTUPINFO;
    scan_pi: PROCESS_INFORMATION;
    scan_started: boolean;

begin

  // Проверяем не запущена ли программа уже
  if scan_started = true then
    if not (WaitForSingleObject (scan_pi.hProcess, 0) = WAIT_OBJECT_0) then
    Begin
      ShowMessage('Данная программа уже запущена!');
      Exit;
    End;

  ZeroMemory(@scan_si,sizeof(scan_si));
  scan_si.cb := SizeOf(scan_si);

  start_line := 'scan'+'\'+'UPLOAD.exe com1 c1';

  if not CreateProcess( nil, // No module name (use command line).
         PChar(start_line),  // Command line.
         nil,             // Process handle not inheritable.
         nil,             // Thread handle not inheritable.
         False,           // Set handle inheritance to FALSE.
         0,               // No creation flags.
         nil,             // Use parent's environment block.
         PChar('scan'),// Use starting directory.
         scan_si,         // Pointer to STARTUPINFO structure.
         scan_pi )        // Pointer to PROCESS_INFORMATION structure.
    then
      begin
        MessageBox(Handle, 'Процесс считывания не стартовал!', 'Ошибка', MB_ICONERROR);
        Exit;
      end;

  scan_started := true;

  while not (WaitForSingleObject (scan_pi.hProcess, 0) = WAIT_OBJECT_0) do
  begin
   // do nothing
   // waiting for file
  end;

{
  COMMAND:='upload.exe';
  PARAMS:='com2 c1';
  WORKDIR:='scan';
  IF SHELLEXECUTE(handle,'OPEN',@COMMAND[1],@PARAMS[1],@WORKDIR[1],SW_SHOWNORMAL) < 32 THEN
  MESSAGEDLG('ERROR START '+ COMMAND,MTERROR,[MBOK],0);
}
end;



















procedure datasetErrors(E: EDatabaseError);
begin
if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
else
if (StrPos(PChar(E.Message), PChar('00054')) <> nil) then
ShowMessage('Данная запись изменяется другим пользователем!')
else ShowMessage(E.Message);
end;



{
//UnCheck all nodes of TreeView --------------------------------------------------
procedure VSTUnCheck(Tree: TVirtualStringTree);
var
tmpNode: PVirtualNode;
begin

  tmpNode :=  Tree.GetFirst; // Перебор узлов
  if tmpNode.CheckType <> ctNone then begin
    while Assigned(tmpNode) do begin
      if tmpNode.CheckState <> csUncheckedNormal then
      tmpNode.CheckState := csUncheckedNormal;
      tmpNode :=  Tree.GetNext(tmpNode);
    end;
  end;
  Tree.Repaint;

end;
//------------------------------------------------------------------------------


//Check all nodes of TreeView --------------------------------------------------
procedure VSTCheck(Tree: TVirtualStringTree);
var
tmpNode: PVirtualNode;
begin

  tmpNode :=  Tree.GetFirst; // Перебор узлов
  if tmpNode.CheckType <> ctNone then begin
    while Assigned(tmpNode) do begin
      if tmpNode.CheckState <> csCheckedNormal then
      tmpNode.CheckState := csCheckedNormal;
      tmpNode :=  Tree.GetNext(tmpNode);
    end;
  end;
  Tree.Repaint;
end;
//------------------------------------------------------------------------------
}





//Легкая проверка перед сохранением документа---------------------------------------------------
function check_doc():bool;
begin

Result:=true;

DM.OraQuery1.Close;
DM.OraQuery1.Sql.Clear;
DM.OraQuery1.Sql.Add('select n_id from store_doc_data_temp');
try
DM.OraQuery1.Open;
except
on E: Exception do ShowMessage(E.Message);
End;

if (DM.OraQuery1.RecordCount=0) then
begin
ShowMessage('Вы пытаетесь сохранить пустой документ!');
Result:=false;
end



else


begin

DM.OraQuery1.Close;
DM.OraQuery1.Sql.Clear;
DM.OraQuery1.Sql.Add('select n_id from store_doc_data_temp where quantity IS null or quantity=0');
try
  DM.OraQuery1.Open;
except
on E: Exception do ShowMessage(E.Message);
End;


if DM.OraQuery1.RecordCount>0 then
begin
 if
 MessageDlg('Вы указали количество не у всего введенного товара. Проигнорировать?',mtConfirmation,[mbYes, mbNo],0) = mrYes
 then
 Result:=true
 else
 Result:=false;
end;


end;



end;
//------------------------------------------------------------------------------







//--------------------------------------------------------------------
function From_Scaner(file_path: string; DOCNEW_DATA: TOraQuery; Ora_SQL: TOraSQL) : String;
Var
  SL : TStringList; 
  pos, i,kolvo, N_IDD : Integer;
  cod_string, kolvo_string, client_string, sql: String;
  sql_str: String;
begin 
try
  SL := TStringList.Create;

  if fileexists(file_path) then
  begin //----
    SL.LoadFromFile(file_path);
    client_string := '';

    alert_str := '';
  	For pos := 1 to SL.Count do
    begin
      kolvo         := 0;
	  	cod_string    := '';
  		kolvo_string  := '';

      // Если код начинается с 900, то это клиент
      if ((SL.Strings[pos-1][1] = '9') and (SL.Strings[pos-1][2] = '0') and (SL.Strings[pos-1][3] = '0'))
      or ((SL.Strings[pos-1][1] = '1') and (SL.Strings[pos-1][2] = '6') and (SL.Strings[pos-1][3] = '0'))
      then
      begin
        For i := 1 to Length(SL.Strings[pos-1]) do
	    	begin
          if (SL.Strings[pos-1][i] = ' ') then kolvo := 1;
			    if (kolvo<>1) then client_string := client_string + SL.Strings[pos-1][i];
		    end;
        client_string := trim(client_string);
      end
      else
      begin
        //считываем наименование
		    For i := 1 to Length(SL.Strings[pos-1]) do
	    	begin
			    if (SL.Strings[pos-1][i] = ' ') then kolvo := 1;
			    if (kolvo <> 1) and (SL.Strings[pos-1][i] <> ' ') then cod_string  := cod_string + SL.Strings[pos-1][i];
          if (kolvo = 1) and (SL.Strings[pos-1][i] <> ' ') then kolvo_string := kolvo_string + SL.Strings[pos-1][i];
		    end;
      end;
      
//    cod_string:=Copy(cod_string, 1, Length(cod_string)-1);
    
      if (cod_string<>'') and (kolvo_string<>'') then
      begin
        DOCNEW_DATA.Close;
        DOCNEW_DATA.ParamByName('CODE').AsString := cod_string; //+'%';
        DOCNEW_DATA.Open;
        if (DOCNEW_DATA.RecordCount>0) then
        begin
	    		DOCNEW_DATA.Edit;
    			DOCNEW_DATA.FieldByName('QUANTITY').AsInteger := DOCNEW_DATA.FieldByName('QUANTITY').AsInteger + StrtoInt(kolvo_string);
		    	DOCNEW_DATA.Post;
        end
        else alert_str := alert_str + cod_string + ' - ' + kolvo_string + #13;
      end;
	  end; //For pos := 1 to SL.Count do

  end; //----
  From_Scaner := client_string;
finally
  SL.Free;
end;
end;
//--------------------------------------------------------------------


end.
