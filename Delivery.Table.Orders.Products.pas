unit Delivery.Table.Orders.Products;

interface
 uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections, Vcl.Grids,
  TableDraw, SQLLang, SQLiteTable3, Delivery.DB;

 type
  TTableOrderProducts = class;

  TItemOrderProduct = class
   private
    FModifed:Boolean;
    FOwner:TTableOrderProducts;
    FEmpty:Boolean;
   public
    ID:Integer;
    OrderNum:Integer;
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
    constructor Create(AOwner:TTableOrderProducts);
  end;

  TTableOrderProducts = class(TTableData<TItemOrderProduct>)
    const TableName = 'OrderProducts';
    const fnID = 'spID';
    const fnOrderNum = 'spOrderNum';
    const fnKind = 'spKind';
    const fnAmount = 'spAmount';
    const fnDateUpdate = 'spDateUpdate';
   private
    FDB:TDatabaseCore;
    FFilter:Integer;
    FUseFilter:Boolean;
    FOrderBy: string;
    FOrderByDESC:Boolean;
   public
    procedure Load(OrderNum:Integer);
    procedure Save;
    procedure GetBack(Index:Integer); overload;
    procedure GetBack(Item:TItemOrderProduct); overload;
    procedure Update(Item:TItemOrderProduct); overload;
    procedure Update(Index:Integer); overload;
    procedure Delete(Item:TItemOrderProduct); overload;
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
 uses Delivery.Table.Storage.Kind, Delivery.Table.Storage.Protocol;

{ TTableOrderProducts }

procedure TTableOrderProducts.Clear;
var i:Integer;
begin
 for i:= 0 to Count-1 do Items[i].Free;
 inherited;
end;

constructor TTableOrderProducts.Create(ADB:TDatabaseCore);
begin
 inherited Create;
 FOrderBy:=fnKind;
 FOrderByDESC:=False;
 FDB:=ADB;
 if not FDB.SQL.TableExists(TableName) then
  with SQL.CreateTable(TableName) do
   begin
    AddField(fnID, ftInteger, True, True);
    AddField(fnOrderNum, ftInteger);
    AddField(fnKind, ftInteger);
    AddField(fnAmount, ftInteger);
    AddField(fnDateUpdate, ftDateTime);
    FDB.SQL.ExecSQL(GetSQL);
    EndCreate;
   end;
end;

procedure TTableOrderProducts.Delete(Item: TItemOrderProduct);
begin
 with SQL.Delete(TableName) do
  begin
   WhereFieldEqual(fnID, Item.ID);
   FDB.SQL.ExecSQL(GetSQL);
   EndCreate;
  end;
end;

procedure TTableOrderProducts.Delete(Index: Integer);
begin
 Delete(Items[Index]);
 inherited;
end;

procedure TTableOrderProducts.GetBack(Item: TItemOrderProduct);
var RTable, KTable:TSQLiteTable;
begin
 with SQL.Select(TableName) do
  begin
   AddField(fnOrderNum);
   AddField(fnKind);
   AddField(fnAmount);
   AddField(fnDateUpdate);
   WhereFieldEqual(fnID, Item.ID);
   RTable:=FDB.SQL.GetTable(GetSQL);
   if RTable.Count > 0 then
    begin
     Item.OrderNum:=RTable.FieldAsInteger(0);
     Item.Kind:=RTable.FieldAsInteger(1);
     Item.Amount:=RTable.FieldAsInteger(2);
     Item.DateUpdate:=RTable.FieldAsDateTime(3);
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

procedure TTableOrderProducts.Update(Item: TItemOrderProduct);
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
     AddValue(fnOrderNum, Item.OrderNum);
     AddValue(fnAmount, Item.Amount);
     AddValue(fnDateUpdate, Now);

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
     AddValue(fnOrderNum, Item.OrderNum);
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

procedure TTableOrderProducts.Load;
var RTable, KTable:TSQLiteTable;
    Item:TItemOrderProduct;
begin
 BeginUpdate;
 Clear;
 try
  with SQL.Select(TableName) do
   begin
    AddField(fnID);
    AddField(fnOrderNum);
    AddField(fnKind);
    AddField(fnAmount);
    AddField(fnDateUpdate);
    WhereFieldEqual(fnOrderNum, OrderNum);
    if UseFilter then WhereFieldEqual(fnKind, FFilter);
    OrderBy(FOrderBy, FOrderByDESC);
    RTable:=FDB.SQL.GetTable(GetSQL);
    while not RTable.EOF do
     begin
      Item:=TItemOrderProduct.Create(Self);
      Item.ID:=RTable.FieldAsInteger(0);
      Item.OrderNum:=RTable.FieldAsInteger(1);
      Item.Kind:=RTable.FieldAsInteger(2);
      Item.Amount:=RTable.FieldAsInteger(3);
      Item.DateUpdate:=RTable.FieldAsDateTime(4);
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

procedure TTableOrderProducts.Save;
var i:Integer;
begin
 for i:= 0 to Count-1 do if Items[i].Modifed then Update(i);
end;

procedure TTableOrderProducts.Update(Index: Integer);
begin
 Update(Items[Index]);
end;

procedure TTableOrderProducts.GetBack(Index: Integer);
begin
 GetBack(Items[Index]);
end;

{ TItemOrderProduct }

constructor TItemOrderProduct.Create(AOwner:TTableOrderProducts);
begin
 inherited Create;
 FModifed:=True;
 FEmpty:=True;
 FOwner:=AOwner;
end;

procedure TItemOrderProduct.GetBack;
begin
 FOwner.GetBack(Self);
end;

procedure TItemOrderProduct.Update;
begin
 FOwner.Update(Self);
end;

end.
