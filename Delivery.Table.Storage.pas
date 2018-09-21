unit Delivery.Table.Storage;

interface
 uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections, Vcl.Grids,
  TableDraw, SQLLang, SQLiteTable3, Delivery.DB;

 type
  TTableStorage = class;

  TItemStorage = class
   private
    FModifed:Boolean;
    FOwner:TTableStorage;
    FEmpty:Boolean;
   public
    ID:Integer;
    Kind:Integer;
    KindUnit:Integer;
    Amount:Integer;
    DateUpdate:TDateTime;

    KindStr:string;
    KindUnitStr:string;
    property Modifed:Boolean read FModifed write FModifed;
    property Empty:Boolean read FEmpty write FEmpty;
    procedure Update;
    procedure GetBack;
    constructor Create(AOwner:TTableStorage);
  end;

  TTableStorage = class(TTableData<TItemStorage>)
    const TableName = 'Storage';
    const fnID = 'stID';
    const fnKind = 'stKind';
    const fnAmount = 'stAmount';
    const fnDateUpdate = 'stDateUpdate';
   private
    FDB:TDatabaseCore;
    FFilter:Integer;
    FUseFilter:Boolean;
    FOrderBy: string;
    FOrderByDESC:Boolean;
   public
    procedure Load;
    procedure Save;
    procedure GetBack(Index:Integer); overload;
    procedure GetBack(Item:TItemStorage); overload;
    procedure Update(Index:Integer); overload;
    procedure Update(Item:TItemStorage); overload;
    procedure Delete(Item:TItemStorage); overload;
    procedure Delete(Index:Integer); overload;
    procedure Clear; override;
    property Filter:Integer read FFilter write FFilter;
    property UseFilter:Boolean read FUseFilter write FUseFilter;
    property LoadOrderBy:string read FOrderBy write FOrderBy;
    property LoadOrderByDESC:Boolean read FOrderByDESC write FOrderByDESC;
    constructor Create(ADB:TDatabaseCore); overload;
    property DatabaseCore:TDatabaseCore read FDB write FDB;
  end;


implementation
 uses Delivery.Table.Storage.Kind;

{ TTableStorage }

procedure TTableStorage.Clear;
var i:Integer;
begin
 for i:= 0 to Count-1 do Items[i].Free;
 inherited;
end;

constructor TTableStorage.Create(ADB:TDatabaseCore);
begin
 inherited Create;
 FOrderBy:=fnKind;
 FOrderByDESC:=False;
 FDB:=ADB;
 if not FDB.SQL.TableExists(TableName) then
  with SQL.CreateTable(TableName) do
   begin
    AddField(fnID, ftInteger, True, True);
    AddField(fnKind, ftInteger);
    AddField(fnAmount, ftInteger);
    AddField(fnDateUpdate, ftDateTime);
    FDB.SQL.ExecSQL(GetSQL);
    EndCreate;
   end;
end;

procedure TTableStorage.Delete(Item: TItemStorage);
begin
 with SQL.Delete(TableName) do
  begin
   WhereFieldEqual(fnID, Item.ID);
   FDB.SQL.ExecSQL(GetSQL);
   EndCreate;
  end;
end;

procedure TTableStorage.Delete(Index: Integer);
begin
 Delete(Items[Index]);
 inherited;
end;

procedure TTableStorage.GetBack(Item: TItemStorage);
var RTable, KTable:TSQLiteTable;
begin
 with SQL.Select(TableName) do
  begin
   AddField(fnKind);
   AddField(fnAmount);
   AddField(fnDateUpdate);
   WhereFieldEqual(fnID, Item.ID);
   RTable:=FDB.SQL.GetTable(GetSQL);
   if RTable.Count > 0 then
    begin
     Item.Kind:=RTable.FieldAsInteger(0);
     Item.Amount:=RTable.FieldAsInteger(1);
     Item.DateUpdate:=RTable.FieldAsDateTime(2);
     with SQl.Select(TTableProductKind.TableName) do
      begin
       AddField(TTableProductKind.fnName);
       AddField(TTableProductKind.fnUnit);
       WhereFieldEqual(TTableProductKind.fnID, Item.Kind);
       KTable:=FDB.SQL.GetTable(GetSQL);
       if KTable.Count > 0 then
        begin
         Item.KindStr:=KTable.FieldAsString(0);
         Item.KindUnitStr:=ProdKindUnitsToString(TProdKindUnits(KTable.FieldAsInteger(1)));
         Item.KindUnit:=KTable.FieldAsInteger(1);
        end;
       KTable.Free;
       EndCreate;
       end;
     Item.Modifed:=False;
     Item.Empty:=False;
    end;
   RTable.Free;
   EndCreate;
  end;
end;

procedure TTableStorage.Load;
var RTable, KTable:TSQLiteTable;
    Item:TItemStorage;
begin
 BeginUpdate;
 Clear;
 try
  with SQL.Select(TableName) do
   begin
    AddField(fnID);
    AddField(fnKind);
    AddField(fnAmount);
    AddField(fnDateUpdate);
    if UseFilter then WhereFieldEqual(fnKind, FFilter);

    OrderBy(FOrderBy, FOrderByDESC);
    RTable:=FDB.SQL.GetTable(GetSQL);
    while not RTable.EOF do
     begin
      Item:=TItemStorage.Create(Self);
      Item.ID:=RTable.FieldAsInteger(0);
      Item.Kind:=RTable.FieldAsInteger(1);
      Item.Amount:=RTable.FieldAsInteger(2);
      Item.DateUpdate:=RTable.FieldAsDateTime(3);
      Item.KindStr:='';
      with SQL.Select(TTableProductKind.TableName) do
       begin
        AddField(TTableProductKind.fnName);
        AddField(TTableProductKind.fnUnit);
        WhereFieldEqual(TTableProductKind.fnID, Item.Kind);
        KTable:=FDB.SQL.GetTable(GetSQL);
        if KTable.Count > 0 then
         begin
          Item.KindStr:=KTable.FieldAsString(0);
          Item.KindUnitStr:=ProdKindUnitsToString(TProdKindUnits(KTable.FieldAsInteger(1)));
          Item.KindUnit:=KTable.FieldAsInteger(1);
         end;
        EndCreate;
       end;
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

procedure TTableStorage.GetBack(Index: Integer);
begin
 GetBack(Items[Index]);
end;

procedure TTableStorage.Save;
var i:Integer;
begin
 for i:= 0 to Count-1 do if Items[i].Modifed then Update(i);
end;

procedure TTableStorage.Update(Item: TItemStorage);
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
     AddValue(fnKind, Item.Kind);
     AddValue(fnAmount, Item.Amount);
     AddValue(fnDateUpdate, Item.DateUpdate);

     FDB.SQL.ExecSQL(GetSQL);
     Item.ID:=FDB.SQL.GetLastInsertRowID;
     EndCreate;
    end;
  end
 else
  begin
   with SQL.Update(TableName) do
    begin
     AddValue(fnKind, Item.Kind);
     AddValue(fnAmount, Item.Amount);
     AddValue(fnDateUpdate, Item.DateUpdate);

     WhereFieldEqual(fnID, Item.ID);

     FDB.SQL.ExecSQL(GetSQL);
     EndCreate;
    end;
  end;
 Item.Modifed:=False;
 Item.Empty:=False;
end;

procedure TTableStorage.Update(Index: Integer);
begin
 Update(Items[Index]);
end;

{ TItemStorage }

constructor TItemStorage.Create(AOwner:TTableStorage);
begin
 inherited Create;
 FModifed:=True;
 FEmpty:=True;
 FOwner:=AOwner;
end;

procedure TItemStorage.GetBack;
begin
 FOwner.GetBack(Self);
end;

procedure TItemStorage.Update;
begin
 FOwner.Update(Self);
end;

end.
