unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, StdCtrls, GDIPAPI, GDIPOBJ, GDIPUTIL, Menus,
  cxLookAndFeelPainters, cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxCurrencyEdit, ExtCtrls, IniFiles, cxGraphics, cxMaskEdit, cxDropDownEdit,
  cxImageComboBox, FileCtrl, Buttons;

type
  TfrmMain = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ed_main_pic: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ed_tn_pic: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    ed_max_h: TcxCurrencyEdit;
    ed_max_w: TcxCurrencyEdit;
    btn_save: TcxButton;
    Panel3: TPanel;
    Label5: TLabel;
    cxImageComboBox1: TcxImageComboBox;
    Panel4: TPanel;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    btn_process: TBitBtn;
    FileListBox1: TFileListBox;
    procedure FormShow(Sender: TObject);
    procedure cxImageComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure DriveComboBox1Change(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure btn_processClick(Sender: TObject);
    procedure Process(in_file: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  path: string;

implementation

{$R *.dfm}

procedure TfrmMain.cxImageComboBox1PropertiesEditValueChanged(Sender: TObject);
var RegIni : TIniFile;
begin
  if (cxImageComboBox1.ItemIndex > -1) then
  begin
    try
      path   := ExtractFilePath(Application.ExeName);
      path   := path+'ini\main.ini';
      RegIni := TIniFile.Create(path);

      ed_main_pic.Text := RegIni.ReadString(cxImageComboBox1.EditValue, 'main', '');
      ed_tn_pic.Text   := RegIni.ReadString(cxImageComboBox1.EditValue, 'preview', '');

      if ( not DirectoryExists(ed_main_pic.Text) ) then
      begin
        MessageBox(Handle,'Директория основных изображений не существует!','Внимание', MB_ICONERROR);
        exit;
      end;

      if ( not DirectoryExists(ed_tn_pic.Text) ) then
      begin
        MessageBox(Handle,'Директория превью изображений не существует!','Внимание', MB_ICONERROR);
        exit;
      end;

      if (ed_main_pic.Text <> '') and (ed_tn_pic.Text <> '') then
        btn_process.Enabled := true
      else
        btn_process.Enabled := false;
    finally
      RegIni.Free;
    end;
  end;
end;


procedure TfrmMain.DirectoryListBox1Change(Sender: TObject);
begin
  FileListBox1.Drive     := DirectoryListBox1.Drive;
  FileListBox1.Directory := DirectoryListBox1.Directory;
end;


procedure TfrmMain.DriveComboBox1Change(Sender: TObject);
begin
  DirectoryListBox1.Drive := DriveComboBox1.Drive;
end;


procedure TfrmMain.FormShow(Sender: TObject);
var RegIni : TIniFile;
begin
  try
    path   := ExtractFilePath(Application.ExeName);
    path   := path+'ini\main.ini';
    RegIni := TIniFile.Create(path);

    ed_max_h.EditValue := RegIni.ReadInteger('SIZE','height',70);
    ed_max_w.EditValue := RegIni.ReadInteger('SIZE','width',100);
  finally
    RegIni.Free;
  end;
end;


procedure TfrmMain.btn_processClick(Sender: TObject);
var i: integer;
begin
  if ( not DirectoryExists(ed_main_pic.Text) ) then
  begin
     MessageBox(Handle,'Директория основных изображений не существует!','Внимание', MB_ICONERROR);
     exit;
  end;

  if ( not DirectoryExists(ed_tn_pic.Text) ) then
  begin
     MessageBox(Handle,'Директория превью изображений не существует!','Внимание', MB_ICONERROR);
     exit;
  end;

  if FileListBox1.Count > 0 then
  begin
    FileListBox1.SelectAll;
    for I := 0 to FileListBox1.Count - 1 do
    begin
      FileListBox1.Selected[i] := true;
      Process(FileListBox1.FileName);
    end;
    MessageBox(Handle,'Операция завершена успешно','Запись', MB_ICONINFORMATION);
  end;
end;


procedure TfrmMain.Process(in_file: string);
var
  original_imageg, thumbnail_imageg: TGPImage;
  g: TGPGraphics;
  tmb_width, tmb_height: Integer;
  im_width, im_height: Integer;
  tmp_delta: real;
  encoderClsid: TGUID;
  out_file: string;
begin
  original_imageg := TGPImage.Create(in_file); // оригинальное изображение
  out_file := ed_tn_pic.Text + ExtractFileName(in_file);

  im_width  := original_imageg.GetWidth;
  im_height := original_imageg.GetHeight;

  if (im_width >= im_height) then
  begin
    tmp_delta  := im_width / ed_max_w.EditValue;
    tmb_width  := ed_max_w.EditValue; // ширина эскиза
    tmb_height := round(im_height / tmp_delta); // высота эскиза
  end;
  if (im_height > im_width)  then
  begin
    tmp_delta  := round(im_height / ed_max_h.EditValue);
    tmb_width  := round(im_width / tmp_delta); // высота эскиза
    tmb_height := ed_max_h.EditValue; // ширина эскиза
  end;

  thumbnail_imageg := TGPBitmap.Create(tmb_width, tmb_height); // будущий эскиз
  g := TGPGraphics.Create(thumbnail_imageg); // полотно для рисования
//  g.SetInterpolationMode(InterpolationModeHighQualityBilinear); // алгоритм интерполяции
  g.DrawImage(original_imageg, MakeRect(0, 0, tmb_width, tmb_height), 0, 0, im_width, im_height, UnitPixel);
  g.Destroy;
  GetEncoderClsid('image/jpeg', encoderClsid);
  thumbnail_imageg.Save(out_file, encoderClsid); // сохраняем

  out_file := ed_main_pic.Text + ExtractFileName(in_file);
  if True then

  if FileExists(out_file) then 
     DeleteFile(out_file);
     
  CopyFile(PChar(in_file),PChar(out_file),true);
end;


procedure TfrmMain.btn_saveClick(Sender: TObject);
var RegIni : TIniFile;
begin
  if (cxImageComboBox1.ItemIndex > -1) then
  begin
    try
      if ( not DirectoryExists(ed_main_pic.Text) ) then
      begin
        MessageBox(Handle,'Директория основных изображений не существует!','Внимание', MB_ICONERROR);
        exit;
      end;

      if ( not DirectoryExists(ed_tn_pic.Text) ) then
      begin
        MessageBox(Handle,'Директория превью изображений не существует!','Внимание', MB_ICONERROR);
        exit;
      end;


      path   := ExtractFilePath(Application.ExeName);
      path   := path+'ini\main.ini';
      RegIni := TIniFile.Create(path);

      RegIni.WriteInteger('SIZE','height',ed_max_h.EditValue);
      RegIni.WriteInteger('SIZE','width',ed_max_w.EditValue);
      RegIni.ReadString(cxImageComboBox1.EditValue, 'main', ed_main_pic.Text);
      RegIni.ReadString(cxImageComboBox1.EditValue, 'preview', ed_tn_pic.Text);
      MessageBox(Handle,'Операция завершена успешно','Запись', MB_ICONINFORMATION);
    finally
      RegIni.Free;
    end;
  end;
end;


end.
