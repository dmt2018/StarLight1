unit editor_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBCtrls,
  CRGrid, ActnList, DBGridEh, DB, Mask, DBCtrlsEh, PI_Library;

type
  Teditor = class(TForm)
    Panel2: TPanel;
    BitBtn13: TBitBtn;
    Panel4: TPanel;
    Label9: TLabel;
    Panel1: TPanel;
    Label10: TLabel;
    DBText2: TDBText;
    Label7: TLabel;
    DBText1: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    BitBtn12: TBitBtn;
    ActionList1: TActionList;
    Action3: TAction;
    Panel3: TPanel;
    Label3: TLabel;
    Action4: TAction;
    Label1: TLabel;
    DBText5: TDBText;
    Panel6: TPanel;
    Panel5: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel7: TPanel;
    SpeedButton2: TSpeedButton;
    DBGridEh1: TDBGridEh;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    Action8: TAction;
    Action9: TAction;
    Action10: TAction;
    Label4: TLabel;
    BitBtn4: TBitBtn;
    BitBtn9: TBitBtn;
    Action11: TAction;
    Action12: TAction;
    Action13: TAction;
    DBGridEh2: TDBGridEh;
    Edit1: TEdit;
    SpeedButton3: TSpeedButton;
    Action14: TAction;
    Action15: TAction;
    Action16: TAction;
    Label8: TLabel;
    Label11: TLabel;
    SpeedButton1: TSpeedButton;
    Splitter1: TSplitter;
    ComboBox1: TDBComboBoxEh;
    ComboBox2: TDBComboBoxEh;
    ComboBox3: TDBComboBoxEh;
    ComboBox4: TDBComboBoxEh;
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure Panel2Resize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Action3Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
    procedure Action9Execute(Sender: TObject);
    procedure Action10Execute(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Action11Execute(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Action12Execute(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Action14Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Action15Execute(Sender: TObject);
    procedure Action16Execute(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh2KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  editor: Teditor;

implementation

uses DataM, mainf, new_order_f, client_order_f;

{$R *.dfm}

procedure Teditor.BitBtn13Click(Sender: TObject);
begin
  close;
end;

// Удаление позиции в заказе клиента
procedure Teditor.BitBtn12Click(Sender: TObject);
var ccode, sql: string;
    idd, ind2, id_formula: integer;
begin
    if (DM.CLIENT_ORDERS.FieldByName('N_ID').AsInteger > 0) then
    begin
      if MessageDlg('Вы действительно хотите удалить позицию в заказе?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
      begin



    // Достаем номер формулы для рассчтеа объема
    DM.Q_SQL2.Close;
    DM.Q_SQL2.SQL.Clear;
    DM.Q_SQL2.SQL.Add('SELECT S_ORDERS.DO_FORMULA('+DM.CLIENT_ORDERS.FieldByName('N_ID').AsString+') as ID FROM DUAL');
    DM.Q_SQL2.Open;

    id_formula := DM.Q_SQL2.FieldByName('ID').AsInteger;
    if id_formula = -1 Then ShowMessage('Произошла ошибка при выборе формулы для товара!')
    else
    begin
        if id_formula = 0 Then ShowMessage('Не найдена формула для товара! Проверте формулы!')
        else
        // Блок, где мы высчитываем объем товара
        begin
            // Достаем данные по формуле
            DM.Q_SQL2.Close;
            DM.Q_SQL2.SQL.Clear;
            DM.Q_SQL2.SQL.Add('SELECT FORMULA, FORMULA_DRY, PACK FROM S_ORDERS.ORDERS_FORMULA WHERE ID_ORDERS_FORMULA=:P1');
            DM.Q_SQL2.ParamByName('P1').AsInteger := id_formula;
            DM.Q_SQL2.Open;

          // Пытаемся выполнить SQL запрос на удаление
          try
                DM.Ora_SQL.SQL.Clear;
                if DM.Q_SQL2.FieldByName('FORMULA').IsNull = false then
                begin
                        if DM.Q_SQL2.FieldByName('PACK').AsInteger > 0 then sql := 'UPDATE S_ORDERS.ORDERS_CLIENTS SET CAPACITY=(CAPACITY - (('+DM.CLIENT_ORDERSQUANTITY.AsString+DM.Q_SQL2.FieldByName('FORMULA').AsString+')+('+DM.Q_SQL2.FieldByName('FORMULA').AsString+'*'+DM.Q_SQL2.FieldByName('PACK').AsString+'/100))), D_DATE=:DDATE WHERE ID_ORDERS_CLIENTS=:ID'
                        else sql := 'UPDATE S_ORDERS.ORDERS_CLIENTS SET CAPACITY=(CAPACITY - ('+DM.CLIENT_ORDERSQUANTITY.AsString+DM.Q_SQL2.FieldByName('FORMULA').AsString+')), D_DATE=:DDATE WHERE ID_ORDERS_CLIENTS=:ID';
                end;

                if DM.Q_SQL2.FieldByName('FORMULA_DRY').IsNull = false then
                begin
                        if DM.Q_SQL2.FieldByName('PACK').AsInteger > 0 then sql := 'UPDATE S_ORDERS.ORDERS_CLIENTS SET CAPACITY=(CAPACITY - (('+DM.CLIENT_ORDERSQUANTITY.AsString+DM.Q_SQL2.FieldByName('FORMULA_DRY').AsString+')+('+DM.Q_SQL2.FieldByName('FORMULA_DRY').AsString+'*'+DM.Q_SQL2.FieldByName('PACK').AsString+'/100))), D_DATE=:DDATE WHERE ID_ORDERS_CLIENTS=:ID'
                        else sql := 'UPDATE S_ORDERS.ORDERS_CLIENTS SET CAPACITY=(CAPACITY - ('+DM.CLIENT_ORDERSQUANTITY.AsString+DM.Q_SQL2.FieldByName('FORMULA_DRY').AsString+')), D_DATE=:DDATE WHERE ID_ORDERS_CLIENTS=:ID';
                end;

                DM.Ora_SQL.SQL.Add(sql);
                ind2 := DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
                DM.Ora_SQL.ParamByName('DDATE').AsDateTime := Date + Time;
                DM.Ora_SQL.ParamByName('ID').Value := DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
                DM.Ora_SQL.Execute;


                DM.Ora_SQL.SQL.Clear;

                DM.Ora_SQL.SQL.Add('DELETE FROM S_ORDERS.ORDERS_LIST WHERE ID_ORDERS_LIST = :ID');
                DM.Ora_SQL.ParamByName('ID').Value := DM.CLIENT_ORDERS.FieldByName('ID_ORDERS_LIST').Value;

                DM.CLIENT_ORDERS.Next;
                idd := DM.CLIENT_ORDERSID_ORDERS_LIST.AsInteger;

                DM.Session_SQL.Connect;
                DM.Ora_SQL.Execute;
                DM.Session_SQL.Commit;
                DM.Session_SQL.Disconnect;

                // Перепрыгиваем на следующую, после удаления запись
                DM.Q_ORDERS_ORDERS.Refresh;
                DM.Q_ORDERS_ORDERS.Locate('ID_ORDERS_CLIENTS',ind2,[]);
                DM.CLIENT_ORDERS.Refresh;
                DM.CLIENT_ORDERS.Locate('ID_ORDERS_LIST',idd,[]);

          except
            on E: Exception do
            begin
              if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!')
              else  ShowMessage(E.Message);
            end;
          End;
      end;

      end;

    end;
    
    end
    else ShowMessage('Нет данных для удаления!');
end;

procedure Teditor.Panel2Resize(Sender: TObject);
begin
  BitBtn13.Left := Panel2.Width - 178;
end;

// Закрываем таблицу при закрытии формы
procedure Teditor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DBGridEh1.SumList.Active := false;
  DBGridEh2.SumList.Active := false;
  DM.CLIENT_ORDERS.Close;
  DM.Q_FLOWERS.Close;
end;


// Быстрая кнопка удаления
procedure Teditor.Action3Execute(Sender: TObject);
begin
  BitBtn12Click(self);
end;

procedure Teditor.Action5Execute(Sender: TObject);
begin
  ComboBox1.ItemIndex := ComboBox1.ItemIndex - 1;
  ComboBox1Change(self);
end;

procedure Teditor.Action6Execute(Sender: TObject);
begin
  ComboBox1.ItemIndex := ComboBox1.ItemIndex + 1;
  ComboBox1Change(self);
end;

procedure Teditor.Action7Execute(Sender: TObject);
begin
  ComboBox2.ItemIndex := ComboBox2.ItemIndex - 1;
  ComboBox1Change(self);
end;

procedure Teditor.Action8Execute(Sender: TObject);
begin
  ComboBox2.ItemIndex := ComboBox2.ItemIndex + 1;
  ComboBox1Change(self);
end;

procedure Teditor.Action9Execute(Sender: TObject);
begin
  ComboBox3.ItemIndex := ComboBox3.ItemIndex - 1;
  ComboBox1Change(self);
end;

procedure Teditor.Action10Execute(Sender: TObject);
begin
  ComboBox3.ItemIndex := ComboBox3.ItemIndex + 1;
  ComboBox1Change(self);
end;

procedure Teditor.BitBtn4Click(Sender: TObject);
begin
  DBGridEh1.ApplyFilter;
end;

procedure Teditor.Action11Execute(Sender: TObject);
begin
  ComboBox4.ItemIndex := ComboBox4.ItemIndex - 1;
  ComboBox1Change(self);
end;

procedure Teditor.Action12Execute(Sender: TObject);
begin
  ComboBox4.ItemIndex := ComboBox4.ItemIndex + 1;
  ComboBox1Change(self);
end;

procedure Teditor.ComboBox1Change(Sender: TObject);
begin
  If ComboBox1.ItemIndex > 0 then
  begin
    DBGridEh1.Columns.Items[2].STFilter.ExpressionStr := ComboBox1.Text;

    ComboBox2.OnChange := nil;
    DM.Q_FLOWER_TYPE.Locate('FT_ID',ComboBox1.Value,[]);
    DM.Q_FL_SUBTYPE.Refresh;

    if ComboBox2.Items.Count > 0 then
    begin
      ComboBox2.OnChange := ComboBox2Change;
      ComboBox2.Enabled := true;
    end;

  end
  else DBGridEh1.Columns.Items[2].STFilter.ExpressionStr := '';
end;

procedure Teditor.BitBtn9Click(Sender: TObject);
begin
  ComboBox1.ItemIndex := 0;
  ComboBox2.ItemIndex := 0;
  ComboBox2.Enabled := false;
  ComboBox3.ItemIndex := 0;
  ComboBox4.ItemIndex := 0;

  DBGridEh1.ClearFilter;
  DBGridEh1.ApplyFilter;
  DBGridEh2.ClearFilter;
  DBGridEh2.ApplyFilter;
end;

// Добавление позиции в заказ клиента
procedure Teditor.SpeedButton2Click(Sender: TObject);
var ind, ind2, id_formula: integer;
    sql: string;
begin
    // Достаем номер формулы для рассчтеа объема
    DM.Q_SQL2.Close;
    DM.Q_SQL2.SQL.Clear;
    DM.Q_SQL2.SQL.Add('SELECT S_ORDERS.DO_FORMULA('+DM.Q_FLOWERS.FieldByName('N_ID').AsString+') as ID FROM DUAL');
    DM.Q_SQL2.Open;

    id_formula := DM.Q_SQL2.FieldByName('ID').AsInteger;
    if id_formula = -1 Then ShowMessage('Произошла ошибка при выборе формулы для товара!')
    else
    begin
        if id_formula = 0 Then ShowMessage('Не найдена формула для товара! Проверте формулы!')
        else
        // Блок, где мы высчитываем объем товара
        begin
            // Достаем данные по формуле
            DM.Q_SQL2.Close;
            DM.Q_SQL2.SQL.Clear;
            DM.Q_SQL2.SQL.Add('SELECT FORMULA, FORMULA_DRY, PACK FROM S_ORDERS.ORDERS_FORMULA WHERE ID_ORDERS_FORMULA=:P1');
            DM.Q_SQL2.ParamByName('P1').AsInteger := id_formula;
            DM.Q_SQL2.Open;
        end;

        // Пытаемся найти уже такой цветок в заказе
        DM.Q_SQL.Close;
        DM.Q_SQL.SQL.Clear;
        DM.Q_SQL.SQL.Add('SELECT ID_ORDERS_LIST FROM S_ORDERS.ORDERS_LIST WHERE ID_ORDERS_CLIENTS=:P1 AND N_ID=:P0');
        DM.Q_SQL.ParamByName('P0').Value := DM.Q_FLOWERS.FieldByName('N_ID').AsInteger;
        DM.Q_SQL.ParamByName('P1').Value := DM.Q_ORDERS_ORDERS.FieldByName('ID_ORDERS_CLIENTS').AsInteger;
        DM.Q_SQL.Open;

        if DM.Q_SQL.RecordCount > 0 then
        begin
            // Если нуашли уже такой цветок в заказе, то
             DBGridEh2.Enabled := true;
             DM.CLIENT_ORDERS.Locate('N_ID',DM.Q_FLOWERS.FieldByName('N_ID').AsInteger,[]);
             ind := DM.Client_ordersID_ORDERS_LIST.AsInteger;
             DBGridEh2.Enabled := false;

             if MessageDlg('Такой цветок есть уже в заказе! Увеличить количество?',mtConfirmation,[mbYes, mbNo],0) = mrYes then
             begin
                DM.Ora_SQL.SQL.Clear;

                    if DM.Q_SQL2.FieldByName('FORMULA').IsNull = false then
                    begin
                        if DM.Q_SQL2.FieldByName('PACK').AsInteger > 0 then sql := 'UPDATE S_ORDERS.ORDERS_LIST SET QUANTITY=QUANTITY+:P0, WEIGHT=(WEIGHT + (('+Edit1.Text+DM.Q_SQL2.FieldByName('FORMULA').AsString+')+('+DM.Q_SQL2.FieldByName('FORMULA').AsString+'*'+DM.Q_SQL2.FieldByName('PACK').AsString+'/100))) WHERE ID_ORDERS_LIST=:ID'
                        else sql := 'UPDATE S_ORDERS.ORDERS_LIST SET QUANTITY=QUANTITY+:P0, WEIGHT=(WEIGHT + ('+Edit1.Text+DM.Q_SQL2.FieldByName('FORMULA').AsString+')) WHERE ID_ORDERS_LIST=:ID';
                    end;

                    if DM.Q_SQL2.FieldByName('FORMULA_DRY').IsNull = false then
                    begin
                        if DM.Q_SQL2.FieldByName('PACK').AsInteger > 0 then sql := 'UPDATE S_ORDERS.ORDERS_LIST SET QUANTITY=QUANTITY+:P0, WEIGHT=(WEIGHT + (('+Edit1.Text+DM.Q_SQL2.FieldByName('FORMULA_DRY').AsString+')+('+DM.Q_SQL2.FieldByName('FORMULA_DRY').AsString+'*'+DM.Q_SQL2.FieldByName('PACK').AsString+'/100))) WHERE ID_ORDERS_LIST=:ID'
                        else sql := 'UPDATE S_ORDERS.ORDERS_LIST SET QUANTITY=QUANTITY+:P0, WEIGHT=(WEIGHT + ('+Edit1.Text+DM.Q_SQL2.FieldByName('FORMULA_DRY').AsString+')) WHERE ID_ORDERS_LIST=:ID';
                    end;
                    
                DM.Ora_SQL.SQL.Add(sql);
                DM.Ora_SQL.ParamByName('ID').Value := DM.Q_SQL.FieldByName('ID_ORDERS_LIST').AsInteger;
                DM.Ora_SQL.ParamByName('P0').Value := Edit1.Text;

                DM.Session_SQL.Connect;
                // Пытаемся выполнить SQL запрос
                try
                    DM.Ora_SQL.Execute;

                    DM.Ora_SQL.SQL.Clear;
                    if DM.Q_SQL2.FieldByName('FORMULA').IsNull = false then
                    begin
                        if DM.Q_SQL2.FieldByName('PACK').AsInteger > 0 then sql := 'UPDATE S_ORDERS.ORDERS_CLIENTS SET CAPACITY=(CAPACITY + (('+Edit1.Text+DM.Q_SQL2.FieldByName('FORMULA').AsString+')+('+DM.Q_SQL2.FieldByName('FORMULA').AsString+'*'+DM.Q_SQL2.FieldByName('PACK').AsString+'/100))), D_DATE=:DDATE WHERE ID_ORDERS_CLIENTS=:ID'
                        else sql := 'UPDATE S_ORDERS.ORDERS_CLIENTS SET CAPACITY=(CAPACITY + ('+Edit1.Text+DM.Q_SQL2.FieldByName('FORMULA').AsString+')), D_DATE=:DDATE WHERE ID_ORDERS_CLIENTS=:ID';
                    end;

                    if DM.Q_SQL2.FieldByName('FORMULA_DRY').IsNull = false then
                    begin
                        if DM.Q_SQL2.FieldByName('PACK').AsInteger > 0 then sql := 'UPDATE S_ORDERS.ORDERS_CLIENTS SET CAPACITY=(CAPACITY + (('+Edit1.Text+DM.Q_SQL2.FieldByName('FORMULA_DRY').AsString+')+('+DM.Q_SQL2.FieldByName('FORMULA_DRY').AsString+'*'+DM.Q_SQL2.FieldByName('PACK').AsString+'/100))), D_DATE=:DDATE WHERE ID_ORDERS_CLIENTS=:ID'
                        else sql := 'UPDATE S_ORDERS.ORDERS_CLIENTS SET CAPACITY=(CAPACITY + ('+Edit1.Text+DM.Q_SQL2.FieldByName('FORMULA_DRY').AsString+')), D_DATE=:DDATE WHERE ID_ORDERS_CLIENTS=:ID';
                    end;

                    DM.Ora_SQL.SQL.Add(sql);
                    ind2 := DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
                    DM.Ora_SQL.ParamByName('DDATE').AsDateTime := Date + Time;
                    DM.Ora_SQL.ParamByName('ID').Value := DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
                    DM.Ora_SQL.Execute;

                    DM.Session_SQL.Commit;
                    DM.Session_SQL.Close;

                    DM.Q_ORDERS_ORDERS.Refresh;
                    DM.Q_ORDERS_ORDERS.Locate('ID_ORDERS_CLIENTS',ind2,[]);
                    DM.Client_orders.Refresh;
                    DM.Client_orders.Locate('ID_ORDERS_LIST',ind,[]);

                    Label4.Visible := false;
                    Label6.Visible := false;
                    Label8.Visible := false;
                    Label11.Visible := false;
                    DBGridEh1.Enabled := true;
                    Edit1.ReadOnly := true;
                    SpeedButton2.Enabled := false;
                    DBGridEh1.SetFocus;

                except
                  on E: Exception do
                  begin
                    DM.Session_SQL.Close;
                    if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!');
                  end;
                End;
            end;  // Конец увеличения цветка

        end
        else
        // Если нет цветка в заказа, то добавляем
        begin
            // SQL запросы для вставки нового заказа
            DM.Ora_SQL.SQL.Clear;
            sql := 'INSERT INTO S_ORDERS.ORDERS_LIST VALUES(S_ORDERS.ORDERS_LIST_SEQ.NEXTVAL,:P1,:P3,:P2,null,';
//            DM.Ora_SQL.SQL.Add(':P4)');

               if DM.Q_SQL2.FieldByName('FORMULA').IsNull = false then
               begin
                   if DM.Q_SQL2.FieldByName('PACK').AsInteger > 0 then sql :=  sql + '(('+Edit1.Text+DM.Q_SQL2.FieldByName('FORMULA').AsString+')+('+Edit1.Text+DM.Q_SQL2.FieldByName('FORMULA').AsString+'*'+DM.Q_SQL2.FieldByName('PACK').AsString+'/100))) )'
                   else sql :=  sql + '('+Edit1.Text+DM.Q_SQL2.FieldByName('FORMULA').AsString+') )';
               end;

               if DM.Q_SQL2.FieldByName('FORMULA_DRY').IsNull = false then
               begin
                   if DM.Q_SQL2.FieldByName('PACK').AsInteger > 0 then sql :=  sql + '(('+Edit1.Text+DM.Q_SQL2.FieldByName('FORMULA_DRY').AsString+')+('+Edit1.Text+DM.Q_SQL2.FieldByName('FORMULA_DRY').AsString+'*'+DM.Q_SQL2.FieldByName('PACK').AsString+'/100))) )'
                   else sql :=  sql + '('+Edit1.Text+DM.Q_SQL2.FieldByName('FORMULA_DRY').AsString+') )';
               end;

            DM.Ora_SQL.SQL.Add(sql);
            DM.Ora_SQL.ParamByName('P1').AsInteger := DM.Q_FLOWERS.FieldByName('N_ID').AsInteger;
            DM.Ora_SQL.ParamByName('P2').AsInteger := DM.Q_ORDERS_ORDERS.FieldByName('ID_ORDERS_CLIENTS').AsInteger;
            DM.Ora_SQL.ParamByName('P3').AsInteger := StrToInt(Edit1.Text);

            DM.Session_SQL.Connect;
            // Пытаемся выполнить SQL запрос
            try
               DM.Ora_SQL.Execute;

               DM.Ora_SQL.SQL.Clear;

               if DM.Q_SQL2.FieldByName('FORMULA').IsNull = false then
               begin
                   if DM.Q_SQL2.FieldByName('PACK').AsInteger > 0 then sql := 'UPDATE S_ORDERS.ORDERS_CLIENTS SET CAPACITY=(CAPACITY + (('+Edit1.Text+DM.Q_SQL2.FieldByName('FORMULA').AsString+')+('+Edit1.Text+DM.Q_SQL2.FieldByName('FORMULA').AsString+'*'+DM.Q_SQL2.FieldByName('PACK').AsString+'/100))), D_DATE=:DDATE WHERE ID_ORDERS_CLIENTS=:ID'
                   else sql := 'UPDATE S_ORDERS.ORDERS_CLIENTS SET CAPACITY=(CAPACITY + ('+Edit1.Text+DM.Q_SQL2.FieldByName('FORMULA').AsString+')), D_DATE=:DDATE WHERE ID_ORDERS_CLIENTS=:ID';
               end;

               if DM.Q_SQL2.FieldByName('FORMULA_DRY').IsNull = false then
               begin
                   if DM.Q_SQL2.FieldByName('PACK').AsInteger > 0 then sql := 'UPDATE S_ORDERS.ORDERS_CLIENTS SET CAPACITY=(CAPACITY + (('+Edit1.Text+DM.Q_SQL2.FieldByName('FORMULA_DRY').AsString+')+('+DM.Q_SQL2.FieldByName('FORMULA_DRY').AsString+'*'+DM.Q_SQL2.FieldByName('PACK').AsString+'/100))), D_DATE=:DDATE WHERE ID_ORDERS_CLIENTS=:ID'
                   else sql := 'UPDATE S_ORDERS.ORDERS_CLIENTS SET CAPACITY=(CAPACITY + ('+Edit1.Text+DM.Q_SQL2.FieldByName('FORMULA_DRY').AsString+')), D_DATE=:DDATE WHERE ID_ORDERS_CLIENTS=:ID';
               end;

               DM.Ora_SQL.SQL.Add(sql);
//               DM.Ora_SQL.SQL.Add('UPDATE S_ORDERS.ORDERS_CLIENTS SET CAPACITY=(CAPACITY + ('+Edit1.Text+DM.Q_SQL2.FieldByName('FORMULA').AsString+')), D_DATE=:DDATE WHERE ID_ORDERS_CLIENTS=:ID');
               ind2 := DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
               DM.Ora_SQL.ParamByName('DDATE').AsDateTime := Date + Time;
               DM.Ora_SQL.ParamByName('ID').Value := DM.Q_ORDERS_ORDERSID_ORDERS_CLIENTS.AsInteger;
               DM.Ora_SQL.Execute;

               DM.Q_IDD.Close;
               DM.Q_IDD.SQL.Clear;
               DM.Q_IDD.SQL.Add('SELECT S_ORDERS.ORDERS_LIST_SEQ.CURRVAL as ind FROM DUAL');
               DM.Q_IDD.Open;
               ind := DM.Q_IDD.FieldByName('ind').AsInteger;
               DM.Q_IDD.Close;

               DM.Session_SQL.Commit;
               DM.Session_SQL.Close;

               DM.Q_ORDERS_ORDERS.Refresh;
               DM.Q_ORDERS_ORDERS.Locate('ID_ORDERS_CLIENTS',ind2,[]);
               DM.Client_orders.Refresh;
               DM.Client_orders.Locate('ID_ORDERS_LIST',ind,[]);

               DBGridEh1.Enabled := true;
               Edit1.ReadOnly := true;
               SpeedButton2.Enabled := false;
               DBGridEh1.SetFocus;

            except
              on E: Exception do
              begin
                DM.Session_SQL.Close;
                if (StrPos(PChar(E.Message), PChar('01031')) <> nil) then ShowMessage('У вас нет прав на данную операцию!');
              end;
            End;
        end;  // Конец вставки !
    end; // Конец блока, когда функция возвращает положительное число
end;

procedure Teditor.SpeedButton3Click(Sender: TObject);
begin
  DBGridEh1.Enabled := false;
  Edit1.ReadOnly := false;
  SpeedButton2.Enabled := true;
  Label4.Visible := true;
  Label6.Visible := true;
  Label8.Visible := true;
  Label11.Visible := true;
  Edit1.SetFocus;
  Edit1.SelectAll;
end;

// Нажатие CTRL+ENTER для ввода кол-ва товара и его последующего помещения в корзину клиента
procedure Teditor.Action14Execute(Sender: TObject);
begin
  If DBGridEh1.Focused = true then SpeedButton3Click(self)
  else If Edit1.Focused = true then SpeedButton2Click(self);

 // If DBGridEh2.Focused = true then
 // begin
    If DM.CLIENT_ORDERS.State = dsEdit then
    begin
      DM.CLIENT_ORDERS.Post;
      DBGridEh2.EditorMode := false;
    end
    else
    if DM.CLIENT_ORDERS.State = dsBrowse then DBGridEh2.EditorMode := true;
 // end;
 {
  If DM.CLIENT_ORDERS.State = dsEdit then
  begin
    DM.CLIENT_ORDERS.Post;
    DBGridEh2.EditorMode := false;
  end;  
 }
end;

procedure Teditor.FormShow(Sender: TObject);
begin
  DBGridEh1.SumList.Active := true;
  DBGridEh2.SumList.Active := true;

  BitBtn9Click(self);
end;

// Нажатие кнопки ESC для отмены ввода товара в корзину клинета
procedure Teditor.Action15Execute(Sender: TObject);
begin
  if Edit1.Focused = true then
  begin
    DBGridEh1.Enabled := true;
    Edit1.ReadOnly := true;
    SpeedButton2.Enabled := false;
    DBGridEh1.SetFocus;
  end
  else close;
end;

procedure Teditor.Action16Execute(Sender: TObject);
begin
  if DBGridEh1.Focused = true then DBGridEh2.SetFocus
  else
  begin
    if DBGridEh2.Focused = true then DBGridEh1.SetFocus;
  end;
end;

procedure Teditor.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key='1') or (Key='2') or (Key='3') or (Key='4') or (Key='5') or (Key='6') or (Key='7') or (Key='8') or (Key='9') or (Key='0')) then
  begin
    SpeedButton3Click(self);
    edit1.Text := Key;
    Edit1.SelectAll;
    Edit1.CutToClipboard;
    Edit1.PasteFromClipboard;
  end;
end;

procedure Teditor.DBGridEh2KeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key='1') or (Key='2') or (Key='3') or (Key='4') or (Key='5') or (Key='6') or (Key='7') or (Key='8') or (Key='9') or (Key='0')) then
  begin
    DBGridEh2.Fields[0].FocusControl;
  end;
end;

procedure Teditor.ComboBox2Change(Sender: TObject);
begin
  If ComboBox2.ItemIndex > 0 then DBGridEh1.Columns.Items[3].STFilter.ExpressionStr := ComboBox2.Text else DBGridEh1.Columns.Items[3].STFilter.ExpressionStr := '';
end;

procedure Teditor.ComboBox3Change(Sender: TObject);
begin
  If ComboBox3.ItemIndex > 0 then DBGridEh1.Columns.Items[9].STFilter.ExpressionStr := ComboBox3.Text else DBGridEh1.Columns.Items[9].STFilter.ExpressionStr := '';
  If ComboBox4.ItemIndex > 0 then DBGridEh1.Columns.Items[8].STFilter.ExpressionStr := ComboBox4.Text else DBGridEh1.Columns.Items[8].STFilter.ExpressionStr := '';
end;

end.
