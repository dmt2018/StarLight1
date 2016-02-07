unit global;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls, Buttons,
  CheckLst, Menus, DB, StrUtils, DBGridEh, ImgList,

  DBCtrls, DBTables,
  PrnDbgeh, ToolWin, DBGridEhImpExp,
  Mask, DBLookupEh, DBCtrlsEh, PropStorageEh,
  PropFilerEh, useful_functions;
VAR
  ora_db_path, username, password, creator : string;

  procedure datasetErrors(E: EDatabaseError);

implementation
uses Select_Doc, dataM;




procedure datasetErrors(E: EDatabaseError);
begin
if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('” вас нет прав на данную операцию!')
else
if (StrPos(PChar(E.Message), PChar('00054')) <> nil) then
ShowMessage('ƒанна€ запись измен€етс€ другим пользователем!')
else ShowMessage(E.Message);
end;



end.
