unit Delivery.Table.Storage.Protocol;

interface
 uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections, Vcl.Grids,
  TableDraw, SQLLang, SQLiteTable3, Delivery.DB;

 type
  TStorageOperation = (soInc, soDec);

  TTableStorageProtocol = class;

  TItemStorageProtocol = class
   private
    FModifed:Boolean;
    FOwner:TTableStorageProtocol;
    FEmpty:Boolean;
   public
    ID:Integer;
    Kind:Integer;
    KindUnit:Integer;
    Amount:Integer;
    DateCreate:TDateTime;
    Operation:TStorageOperation;

    KindStr:string;
    KindUnitStr:string;
    property Modifed:Boolean read FModifed write FModifed;
    property Empty:Boolean read FEmpty write FEmpty;
    procedure OperInc;
    procedure OperDec;
    procedure GetBack;
    constructor Create(AOwner:TTableStorageProtocol);
  end;

  TTableStorageProtocol = class(TTableData<TItemStorageProtocol>)
    const TableName = 'StorageProtocol';
    const fnID = 'spID';
    const fnKind = 'spKind';
    const fnAmount = 'spAmount';
    const fnDate = 'spDate';
    const fnOperation = 'spOperation';
   private
    FDB:TDatabaseCore;
    FFilter:Integer;
    FUseFilter:Boolean;
    FOrderBy: string;
    FOrderByDESC:Boolean;
   public
    procedure Load;
    procedure GetBack(Index:Integer); overload;
    procedure GetBack(Item:TItemStorageProtocol); overload;
    procedure OperInc(Item:TItemStorageProtocol);
    function OperDec(Item:TItemStorageProtocol):Boolean;
    function AllowDec(Kind:Integer; Amount:Integer):Boolean;
    procedure Clear; override;
    property Filter:Integer read FFilter write FFilter;
    property UseFilter:Boolean read FUseFilter write FUseFilter;
    property LoadOrderBy:string read FOrderBy write FOrderBy;
    property LoadOrderByDESC:Boolean read FOrderByDESC write FOrderByDESC;
    constructor Create(ADB:TDatabaseCore); overload;
    property DatabaseCore:TDatabaseCore read FDB write FDB;
  end;


implementation
 uses Delivery.Table.Storage, Delivery.Table.Storage.Kind;

{ TTableStorageProtocol }

function TTableStorageProtocol.AllowDec(Kind, Amount: Integer): Boolean;
begin
 with SQL.Select(TTableStorage.TableName) do
  begin
   AddField(TTableStorage.fnID);
   WhereFieldEqual(TTableStorage.fnKind, Kind);
   WhereField(TTableStorage.fnAmount, '>=', Amount);
   Result:=FDB.SQL.GetTableValue(GetSQL) >= 0;
   EndCreate;
  end;
end;

procedure TTableStorageProtocol.Clear;
var i:Integer;
begin
 for i:= 0 to Count-1 do Items[i].Free;
 inherited;
end;

constructor TTableStorageProtocol.Create(ADB:TDatabaseCore);
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
    AddField(fnDate, ftDateTime);
    AddField(fnOperation, ftInteger);
    FDB.SQL.ExecSQL(GetSQL);
    EndCreate;
   end;
end;

procedure TTableStorageProtocol.GetBack(Item: TItemStorageProtocol);
var RTable, KTable:TSQLiteTable;
begin
 with SQL.Select(TableName) do
  begin
   AddField(fnKind);
   AddField(fnAmount);
   AddField(fnDate);
   AddField(fnOperation);
   WhereFieldEqual(fnID, Item.ID);
   RTable:=FDB.SQL.GetTable(GetSQL);
   if RTable.Count > 0 then
    begin
     Item.Kind:=RTable.FieldAsInteger(0);
     Item.Amount:=RTable.FieldAsInteger(1);
     Item.DateCreate:=RTable.FieldAsDateTime(2);
     Item.Operation:=TStorageOperation(RTable.FieldAsInteger(3));
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
    end;
   RTable.Free;
   EndCreate;
  end;
end;

procedure TTableStorageProtocol.Load;
var RTable, KTable:TSQLiteTable;
    Item:TItemStorageProtocol;
begin
 BeginUpdate;
 Clear;
 try
  with SQL.Select(TableName) do
   begin
    AddField(fnID);
    AddField(fnKind);
    AddField(fnAmount);
    AddField(fnDate);
    AddField(fnOperation);
    if UseFilter then WhereFieldEqual(fnKind, FFilter);

    OrderBy(FOrderBy, FOrderByDESC);
    RTable:=FDB.SQL.GetTable(GetSQL);
    while not RTable.EOF do
     begin
      Item:=TItemStorageProtocol.Create(Self);
      Item.ID:=RTable.FieldAsInteger(0);
      Item.Kind:=RTable.FieldAsInteger(1);
      Item.Amount:=RTable.FieldAsInteger(2);
      Item.DateCreate:=RTable.FieldAsDateTime(3);
      Item.Operation:=TStorageOperation(RTable.FieldAsInteger(4));
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

procedure TTableStorageProtocol.GetBack(Index: Integer);
begin
 GetBack(Items[Index]);
end;

function TTableStorageProtocol.OperDec(Item: TItemStorageProtocol):Boolean;
var Res, Amount:Integer;
    Table:TSQLiteTable;
begin
 Res:=-1;
 Result:=False;
 Item.Operation:=soDec;
 //ѕровер€ем, есть ли такой вид товаров на складе
 with SQL.Select(TTableStorage.TableName) do
  begin
   AddField(TTableStorage.fnID);
   AddField(TTableStorage.fnAmount);
   WhereFieldEqual(TTableStorage.fnKind, Item.Kind);
   Table:=FDB.SQL.GetTable(GetSQL);
   if Table.Count > 0 then
    begin
     Res:=Table.FieldAsInteger(0);
     Amount:=Table.FieldAsInteger(1);
    end;
   Table.Free;
   EndCreate;
  end;

 //≈сли нет, то добавл€ем с данными операции
 if Res < 0 then
  begin
   Exit(False);
  end
 else //≈сли есть, то обновл€ем запись, добавл€€ количество
  begin
   if Amount < Item.Amount then
    begin
     Exit(False);
    end;

   with SQL.Update(TTableStorage.TableName) do
    begin
     DecValue(TTableStorage.fnAmount, Item.Amount);
     AddValue(TTableStorage.fnDateUpdate, Now);

     WhereFieldEqual(TTableStorage.fnID, Res);

     FDB.SQL.ExecSQL(GetSQL);
     EndCreate;
    end;
  end;

  //«апись дл€ протокола о пополении
  with SQL.InsertInto(TableName) do
   begin
    AddValue(fnKind, Item.Kind);
    AddValue(fnAmount, Item.Amount);
    AddValue(fnDate, Now);
    AddValue(fnOperation, Ord(Item.Operation));
    FDB.SQL.ExecSQL(GetSQL);
    Item.ID:=FDB.SQL.GetLastInsertRowID;
    EndCreate;
   end;

 Item.Modifed:=False;
 Item.Empty:=False;
end;

procedure TTableStorageProtocol.OperInc(Item: TItemStorageProtocol);
var Res:Integer;
begin
 Item.Operation:=soInc;
 //ѕровер€ем, есть ли такой вид товаров на складе
 with SQL.Select(TTableStorage.TableName) do
  begin
   AddField(TTableStorage.fnID);
   WhereFieldEqual(TTableStorage.fnKind, Item.Kind);
   Res:=FDB.SQL.GetTableValue(GetSQL);
   EndCreate;
  end;

 //≈сли нет, то добавл€ем с данными операции
 if Res < 0 then
  begin
   with SQL.InsertInto(TTableStorage.TableName) do
    begin
     AddValue(TTableStorage.fnKind, Item.Kind);
     AddValue(TTableStorage.fnAmount, Item.Amount);
     AddValue(TTableStorage.fnDateUpdate, Now);

     FDB.SQL.ExecSQL(GetSQL);
     Res:=FDB.SQL.GetLastInsertRowID;
     EndCreate;
    end;
  end
 else //≈сли есть, то обновл€ем запись, добавл€€ количество
  begin
   with SQL.Update(TTableStorage.TableName) do
    begin
     IncValue(TTableStorage.fnAmount, Item.Amount);
     AddValue(TTableStorage.fnDateUpdate, Now);

     WhereFieldEqual(TTableStorage.fnID, Res);

     FDB.SQL.ExecSQL(GetSQL);
     EndCreate;
    end;
  end;

  //«апись дл€ протокола о пополении
  with SQL.InsertInto(TableName) do
   begin
    AddValue(fnKind, Item.Kind);
    AddValue(fnAmount, Item.Amount);
    AddValue(fnDate, Now);
    AddValue(fnOperation, Ord(Item.Operation));
    FDB.SQL.ExecSQL(GetSQL);
    Item.ID:=FDB.SQL.GetLastInsertRowID;
    EndCreate;
   end;

 Item.Modifed:=False;
 Item.Empty:=False;
end;

{ TItemStorage }

constructor TItemStorageProtocol.Create(AOwner:TTableStorageProtocol);
begin
 inherited Create;
 FModifed:=True;
 FEmpty:=True;
 FOwner:=AOwner;
end;

procedure TItemStorageProtocol.GetBack;
begin
 FOwner.GetBack(Self);
end;

procedure TItemStorageProtocol.OperDec;
begin
 FOwner.OperDec(Self);
end;

procedure TItemStorageProtocol.OperInc;
begin
 FOwner.OperInc(Self);
end;

end.
