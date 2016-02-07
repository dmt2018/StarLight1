unit Info;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TInfoF = class(TForm)
    Label1: TLabel;
    Timer1: TTimer;
    Timer2: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    Procedure GetData(Erec1 : integer; Efd1 : integer);
    Procedure ErrorShow(ErrorStr : string);
  private
    { Private declarations }

  public
    { Public declarations }
    COM_PORT : string;
    clear_s : boolean;
  end;

var
  InfoF: TInfoF;

  gpFieldDe, gpRecDe, gpHeader : string;
  //lpBuffer : string;
  gpPause : boolean;
  lpBuffer : array[0..130] of Char;
  gpRecords: array [0..8] of string;
  gpFields : array [0..8] of string;
  gpFormNames : array [0..8] of string;

  function PDX_Download_Checkdata(): Longint; stdcall;  external 'Remot.dll';  //stdcall;
  //function PDX_Remot_Set_Comm(Port : PChar;Baud : Longint;DataBit,StopBit,Parity : Byte):Longint; external 'Remot.dll';  //stdcall;
  function PDX_Remot_Set_Comm(Port : string;Baud : integer;DataBit,StopBit,Parity : Byte):integer; stdcall; external 'Remot.dll';  //stdcall;
  function PDX_Remot_Online():Longint; stdcall; external 'Remot.dll';  //stdcall;
  function PDX_Remot_Offline():Longint; stdcall; external 'Remot.dll';  //stdcall;
  function PDX_Wait_Time(WaitTime : Longint):Longint; stdcall; external 'Remot.dll';  //stdcall;
  function PDX_Upload(FromIndex : PChar):Longint; stdcall; external 'Remot.dll';  //stdcall;
  function PDX_Get_Field(lpBuffer : PChar):Longint; stdcall; external 'Remot.dll';  //stdcall;
  //function PDX_Get_Field(lpBuffer : string):Longint; stdcall; external 'Remot.dll';  //stdcall;
  //Function PDX_Get_Data(lpcommand:String;lpbuffer:String):Integer; stdcall; external 'Remot.dll';  //stdcall;
  Function PDX_Get_Data(lpcommand:PChar;lpbuffer:PChar):Integer; stdcall; external 'Remot.dll';  //stdcall;
  Function PDX_Upload_Finish():Integer; stdcall; external 'Remot.dll';
  Function PDX_Upload_Pause():Integer; stdcall; external 'Remot.dll';
  Function PDX_Upload_Continue():Integer; stdcall; external 'Remot.dll';
  Function PDX_Upload_Deletedata(lpFormSelect : String):Integer; stdcall; external 'Remot.dll';
  Function PDX_Download_Openfile(lpFileName : String):Integer; stdcall; external 'Remot.dll';
  Function PDX_Download_Barcode():Integer; stdcall; external 'Remot.dll';
  Function PDX_Download_Dataform():Integer; stdcall; external 'Remot.dll';
  Function PDX_Download_Variable():Integer; stdcall; external 'Remot.dll';
  Function PDX_Download_Constant():Integer; stdcall; external 'Remot.dll';
  Function PDX_Download_Procdure():Integer; stdcall; external 'Remot.dll';
  Function PDX_Download_Table():Integer; stdcall; external 'Remot.dll';
  Function PDX_Download_Deletedata():Integer; stdcall; external 'Remot.dll';
  Function PDX_Download_Freetask(lpFileName:String):Integer; stdcall; external 'Remot.dll';
  Function PDX_Download_Finish():Integer; stdcall; external 'Remot.dll';
  Function PDX_Get_Last_Error():Integer; stdcall; external 'Remot.dll';
  //Public Declare Function PDX_Tasklink Lib "TLink.dll" (ByVal lpFileName As String) As Integer

implementation

{$R *.dfm}

Procedure TInfoF.ErrorShow(ErrorStr : string);
Begin
  Label1.Caption := ErrorStr;
  Label1.Font.Color := clRed;
  Label1.Repaint;
  Timer2.Enabled := true;
End;

procedure TInfoF.Timer1Timer(Sender: TObject);
VAR
  i,Result : integer;
  vStr : string;
  Buffer:array[0..255] of char;
  vRecNo : integer;
  vFormIndex : array[0..32] of Char;
  vvTmp: array[0..32] of Char;
  vGetData : string;
  dt : TDateTime;
  tmp, str: string;
  f : TextFile;
begin
  If FileExists('1.txt') then DeleteFile('1.txt');
  PDX_Remot_Set_Comm(COM_PORT,9600,8,0,0);
  result := PDX_Remot_Online(); //Entry the remote mode
  If result = 0 Then
    Begin
      ErrorShow('No connection!');
      Exit;
    End;
  //To extract the Data Form information on PDX
  result := PDX_Get_Data('RX', Buffer);
  If result = 0 Then
    Begin
      ErrorShow('No Data!');
      Exit;
    End;

    AssignFile(f,'total.txt');
    Rewrite(f);

    for I := 0 to 255 do
      Writeln(f,'i='+Buffer[i]);



  tmp := '';
  For I := 0 To 8 do
    begin
      //Data Form Name
      gpFormNames[I]:=trim(copy(Buffer, i * 17 + 1, 8));
      //Add FormName
      vStr:=copy(gpFormNames[I], 1, 1);
      If Ord(vStr[1]) > 128 Then
        begin
          //showmessage('Get Data info complete ...');
          break;
        end;
      //Total Record number
      gpRecords[I]:=copy(Buffer, i * 17 + 9, 5);
      //Total Field number
      gpFields[I]:=copy(Buffer, i * 17 + 15, 2);
      tmp := tmp + gpFormNames[I] + ': gpRecords='+gpRecords[i]+' gpFields='+gpFields[i] +#10;
      Writeln(f,'tmp='+tmp);

    end;

  if length(gpFormNames[0])<= 1 then
    Begin
      ErrorShow('Cracked Data!');
      Exit;
    End;

  vRecNo := StrToInt(gpRecords[0]);

  dt := Now();
  str := '';




  while Now() < dt + 0.00001 do Continue;
  if (vRecNo > 0) then
    begin
      //To select data form number you want to uploadªº
      strPcopy(vFormIndex,'0');
      PDX_Upload(vFormIndex);      //StrCopy(vvTmp,'');;
      //To read information of header
      PDX_Get_Field(vvTmp);
      vGetData := Trim(vvTmp);

      Writeln(f,'vGetData='+vGetData);
      Writeln(f,'vRecNo='+IntToStr(vRecNo)+ ' gpRecords[0]='+gpRecords[0] + ' gpFields[0]='+gpFields[0]);

      gpHeader:= vGetData;
      //Begin to read
      gpPause := True;
      GetData(StrToInt(gpRecords[0]),StrToInt(gpFields[0]));
      //To delete Data Form
      If clear_s Then PDX_Upload_Deletedata(vFormIndex);
      //Quit the Remote Mode
    end
  else
    Begin
      ErrorShow('Empty Data!');
      Exit;
    End;

    CloseFile(f);

  PDX_Remot_Offline();
  Close;
end;

procedure TInfoF.FormShow(Sender: TObject);
begin
  if ParamCount <> 2 then
    Begin
      ErrorShow('Params wrong number!');
      Exit;
    End;
  COM_PORT := ParamStr(1);
  if LowerCase(ParamStr(2)) = 'c0' then clear_s := false
                                   else if LowerCase(ParamStr(2)) = 'c1' then clear_s := true
                                                                         else Begin ErrorShow('Wrong params!'); Exit; End;
  InfoF.COM_PORT := COM_PORT;
  InfoF.clear_s := clear_s;

  Timer1.Enabled := true;
end;

procedure TInfoF.Timer2Timer(Sender: TObject);
begin
  Close;
end;

procedure TInfoF.GetData(Erec1 : integer; Efd1 : integer);
var
  vGetData,vRecData:string;
  vTmp:array[0..126] of Char;
  iNum,vInfoIndex:integer;
  Erec2, Efd2 : integer;
  f : TextFile;
  FileHandle : integer;
  can_create : boolean;
begin
    Erec2 := 0;
    Efd2 := 0;

    gpFieldDe := ' ';
    //To begin to download
    iNum := 1;
    vInfoIndex := 0;
    //trying to create file

    {$I-}
    AssignFile(f,'1.txt');
    Rewrite(f);

    while gpPause do
      begin
        //To count the total field number
        iNum := Efd2 + 1;
        If iNum = Efd1+1 Then
          begin
            iNum := 1;
            Inc(Erec2);
          End;
        Efd2 := iNum;
        //if get finished to close the read status
        If (Erec1 = Erec2) Then
          begin
            //To finish downloading
            PDX_Upload_Finish();
            gpPause := False;
            break;
          End;
        //Keep to download
        vTmp := '';
            Writeln(f,vTmp);
        If PDX_Get_Field(vTmp) = 0 Then
          begin
            ErrorShow('Upload Failed!');
            PDX_Upload_Finish();
            gpPause := False;
          End;

        //Pause to download
        //To trim the spaces and add information of record into ListBox
        vGetData := trim(vTmp);
            Writeln(f,vGetData);
        vGetData := copy(vGetData,1, Length(vGetData));
        If iNum = 1 Then vRecData := '';
        If iNum = Efd1 Then  //Efd2 is a temporary variable name
          begin
            vRecData := vRecData + vGetData + gpRecDe;
            Writeln(f,vRecData)
            //ListBox1.Items.add(vRecData);
          end
        Else If iNum = 1 Then vRecData := vGetData + gpFieldDe
                         else vRecData := vRecData + vGetData + gpFieldDe;
    end;
    CloseFile(f);
    {$I+}
End;

end.
