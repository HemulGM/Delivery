unit Delivery.Table.History;

interface
 uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections, Vcl.Grids,
  HGM.Controls.VirtualTable, SQLLang, SQLiteTable3, Delivery.DB;

 type
  TTableHistory = class;

  THistoryAction = (haAdd, haChange, haDelete);

  TItemHistory = class
   private
    FModifed:Boolean;
    FOwner:TTableHistory;
    FEmpty:Boolean;
   public
    ID:Integer;
    Action:THistoryAction;
    TableName:string;
    RecordID:Integer;
    Desc:string;
    Date:TDateTime;
    property Modifed:Boolean read FModifed write FModifed;
    property Empty:Boolean read FEmpty write FEmpty;
    procedure Update;
    procedure GetBack;
    constructor Create(AOwner:TTableHistory);
  end;

  TTableHistory = class(TTableData<TItemHistory>)
    const TableName = 'History';
    const fnID = 'hyID';
    const fnAction = 'hyAction';
    const fnTableName = 'hyTableName';
    const fnRecordID = 'hyRecordID';
    const fnDesc = 'hyDesc';
    const fnDate = 'hyDate';
   private
    FDB:TDatabaseCore;
    FFilter:THistoryAction;
    FUseFilter:Boolean;
    FOrderBy: string;
    FOrderByDESC:Boolean;
   public
    procedure Load;
    procedure Save;
    procedure GetBack(Index:Integer); overload;
    procedure GetBack(Item:TItemHistory); overload;
    procedure Update(Index:Integer); overload;
    procedure Update(Item:TItemHistory); overload;
    procedure Delete(Item:TItemHistory); overload;
    procedure Delete(Index:Integer); overload;
    procedure Clear; override;
    function Add(AAction:THistoryAction; ATableName:string; ARecordID:Integer; ADesc:string):Integer; overload;
    property Filter:THistoryAction read FFilter write FFilter;
    property UseFilter:Boolean read FUseFilter write FUseFilter;
    property LoadOrderBy:string read FOrderBy write FOrderBy;
    property LoadOrderByDESC:Boolean read FOrderByDESC write FOrderByDESC;
    constructor Create(ADB:TDatabaseCore); overload;
    property DatabaseCore:TDatabaseCore read FDB write FDB;
  end;


implementation
 uses Delivery.Table.Addresses, Delivery.Table.Clients;

{ TTableOrders }

function TTableHistory.Add(AAction: THistoryAction; ATableName: string; ARecordID: Integer; ADesc: string): Integer;
var Item:TItemHistory;
begin
 Item:=TItemHistory.Create(Self);
 Item.Action:=AAction;
 Item.RecordID:=ARecordID;
 Item.TableName:=ATableName;
 Item.Desc:=ADesc;
 Item.Update;
 Insert(0, Item);
 Result:=0;
end;

procedure TTableHistory.Clear;
var i:Integer;
begin
 for i:= 0 to Count-1 do Items[i].Free;
 inherited;
end;

constructor TTableHistory.Create(ADB:TDatabaseCore);
begin
 inherited Create;
 FOrderBy:=fnDate;
 FOrderByDESC:=True;
 FDB:=ADB;
 if not FDB.SQL.TableExists(TableName) then
  with SQL.CreateTable(TableName) do
   begin
    AddField(fnID, ftInteger, True, True);
    AddField(fnAction, ftInteger);
    AddField(fnTableName, ftString);
    AddField(fnRecordID, ftInteger);
    AddField(fnDesc, ftString);
    AddField(fnDate, ftDateTime);
    FDB.SQL.ExecSQL(GetSQL);
    EndCreate;
   end;
end;

procedure TTableHistory.Delete(Item: TItemHistory);
begin
 with SQL.Delete(TableName) do
  begin
   WhereFieldEqual(fnID, Item.ID);
   FDB.SQL.ExecSQL(GetSQL);
   EndCreate;
  end;
end;

procedure TTableHistory.Delete(Index: Integer);
begin
 Delete(Items[Index]);
 inherited;
end;

procedure TTableHistory.GetBack(Item: TItemHistory);
var RTable:TSQLiteTable;
begin
 with SQL.Select(TableName) do
  begin
   AddField(fnAction);
   AddField(fnTableName);
   AddField(fnRecordID);
   AddField(fnDesc);
   AddField(fnDate);
   WhereFieldEqual(fnID, Item.ID);
   RTable:=FDB.SQL.GetTable(GetSQL);
   if RTable.Count > 0 then
    begin
     Item.Action:=THistoryAction(RTable.FieldAsInteger(0));
     Item.TableName:=RTable.FieldAsString(1);
     Item.RecordID:=RTable.FieldAsInteger(2);
     Item.Desc:=RTable.FieldAsString(3);
     Item.Date:=RTable.FieldAsDateTime(4);
     Item.Modifed:=False;
     Item.Empty:=False;
    end;
   RTable.Free;
   EndCreate;
  end;
end;

procedure TTableHistory.Load;
var RTable, CTable:TSQLiteTable;
    Item:TItemHistory;
begin
 BeginUpdate;
 Clear;
 try
  with SQL.Select(TableName) do
   begin
    AddField(fnID);
    AddField(fnAction);
    AddField(fnTableName);
    AddField(fnRecordID);
    AddField(fnDesc);
    AddField(fnDate);
    if UseFilter then WhereFieldEqual(fnAction, Ord(FFilter));
    OrderBy(FOrderBy, FOrderByDESC);
    WhereField(fnDate, '>', Now - 30);
    RTable:=FDB.SQL.GetTable(GetSQL);
    while not RTable.EOF do
     begin
      Item:=TItemHistory.Create(Self);
      Item.ID:=RTable.FieldAsInteger(0);
      Item.Action:=THistoryAction(RTable.FieldAsInteger(1));
      Item.TableName:=RTable.FieldAsString(2);
      Item.RecordID:=RTable.FieldAsInteger(3);
      Item.Desc:=RTable.FieldAsString(4);
      Item.Date:=RTable.FieldAsDateTime(5);
      Item.Modifed:=False;
      Item.Empty:=False;
      Add(Item);
      RTable.Next;
     end;
    RTable.Free;
    EndCreate;
   end;
 finally
  EndUpdate;
 end;
end;

procedure TTableHistory.GetBack(Index: Integer);
begin
 GetBack(Items[Index]);
end;

procedure TTableHistory.Save;
var i:Integer;
begin
 for i:= 0 to Count-1 do if Items[i].Modifed then Update(i);
end;

procedure TTableHistory.Update(Item: TItemHistory);
var Res:Integer;
begin
 with SQL.Select(TableName) do
  begin
   AddField(fnID);
   WhereFieldEqual(fnID, Item.ID);
   Res:=FDB.SQL.GetTableValue(GetSQL);
   EndCreate;
  end;
 if Res < 0 then
  begin
   with SQL.InsertInto(TableName) do
    begin
     AddValue(fnAction, Ord(Item.Action));
     AddValue(fnTableName, Item.TableName);
     AddValue(fnRecordID, Item.RecordID);
     AddValueAsParam(fnDesc, '?', True);
     AddValue(fnDate, Item.Date);

     FDB.SQL.ExecSQL(GetSQL, [PAnsiChar(AnsiString(Item.Desc))]);
     Item.ID:=FDB.SQL.GetLastInsertRowID;
     EndCreate;
    end;
  end
 else
  begin
   with SQL.Update(TableName) do
    begin
     AddValue(fnAction, Ord(Item.Action));
     AddValue(fnTableName, Item.TableName);
     AddValue(fnRecordID, Item.RecordID);
     AddValueAsParam(fnDesc, '?', True);
     AddValue(fnDate, Item.Date);

     WhereFieldEqual(fnID, Item.ID);

     FDB.SQL.ExecSQL(GetSQL, [PAnsiChar(AnsiString(Item.Desc))]);
     EndCreate;
    end;
  end;
 Item.Modifed:=False;
 Item.Empty:=False;
end;

procedure TTableHistory.Update(Index: Integer);
begin
 Update(Items[Index]);
end;

{ TItemOrder }

constructor TItemHistory.Create(AOwner:TTableHistory);
begin
 inherited Create;
 FModifed:=True;
 FEmpty:=True;
 FOwner:=AOwner;
 Date:=Now;
end;

procedure TItemHistory.GetBack;
begin
 FOwner.GetBack(Self);
end;

procedure TItemHistory.Update;
begin
 FOwner.Update(Self);
end;

end.
