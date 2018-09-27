unit Delivery.Table.Orders;

interface
 uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections, Vcl.Grids,
  HGM.Controls.VirtualTable, SQLLang, SQLiteTable3, Delivery.DB;

 type
  TTableOrders = class;

  TOrderState = (osDraft, osNormal, osDelivery, osDelivered);

  TItemOrder = class
   private
    FModifed:Boolean;
    FOwner:TTableOrders;
    FEmpty:Boolean;
   public
    ID:Integer;
    Number:Integer;
    Client:Integer;
    Date:TDateTime;
    Addr:Integer;
    Data:string;
    DateCreate:TDateTime;
    Comment:string;
    State:TOrderState;
    Driver:Integer;

    AddrStr:string;
    ClientStr:string;
    DriverStr:string;
    property Modifed:Boolean read FModifed write FModifed;
    property Empty:Boolean read FEmpty write FEmpty;
    procedure Update;
    procedure GetBack;
    constructor Create(AOwner:TTableOrders);
  end;

  TTableOrders = class(TTableData<TItemOrder>)
    const TableName = 'Orders';
    const fnID = 'odID';
    const fnNumber = 'odNumber';
    const fnClient = 'odClient';
    const fnDate = 'odDate';
    const fnAddr = 'odAddr';
    const fnData = 'odData';
    const fnComment = 'odComment';
    const fnState = 'odState';
    const fnDriver = 'odDriver';
    const fnDateCreate = 'odDateCreate';
   private
    FDB:TDatabaseCore;
    FFilter:TOrderState;
    FUseFilter:Boolean;
    FOrderBy: string;
    FOrderByDESC:Boolean;
    FHOR:Boolean;
    FFilterDriver:Integer;
   public
    procedure Load;
    procedure Save;
    procedure GetBack(Index:Integer); overload;
    procedure GetBack(Item:TItemOrder); overload;
    procedure Update(Index:Integer); overload;
    procedure Update(Item:TItemOrder); overload;
    procedure Delete(Item:TItemOrder); overload;
    procedure Delete(Index:Integer); overload;
    function GetNextOrderNumber:Integer;
    procedure Clear; override;
    property Filter:TOrderState read FFilter write FFilter;
    property FilterDriver:Integer read FFilterDriver write FFilterDriver default -1;
    property HideOldRecord:Boolean read FHOR write FHOR default False;
    property UseFilter:Boolean read FUseFilter write FUseFilter;
    property LoadOrderBy:string read FOrderBy write FOrderBy;
    property LoadOrderByDESC:Boolean read FOrderByDESC write FOrderByDESC;
    constructor Create(ADB:TDatabaseCore); overload;
    property DatabaseCore:TDatabaseCore read FDB write FDB;
  end;


implementation
 uses Delivery.Table.Addresses, Delivery.Table.Clients, Delivery.Table.Drivers;

{ TTableOrders }

procedure TTableOrders.Clear;
var i:Integer;
begin
 for i:= 0 to Count-1 do Items[i].Free;
 inherited;
end;

constructor TTableOrders.Create(ADB:TDatabaseCore);
begin
 inherited Create;
 FOrderBy:=fnNumber;
 FOrderByDESC:=False;
 FFilterDriver:=-1;
 FDB:=ADB;
 if not FDB.SQL.TableExists(TableName) then
  with SQL.CreateTable(TableName) do
   begin
    AddField(fnID, ftInteger, True, True);
    AddField(fnNumber, ftInteger);
    AddField(fnClient, ftInteger);
    AddField(fnDate, ftDateTime);
    AddField(fnAddr, ftInteger);
    AddField(fnData, ftString);
    AddField(fnComment, ftString);
    AddField(fnState, ftInteger);
    AddField(fnDriver, ftInteger);
    AddField(fnDateCreate, ftDateTime);
    FDB.SQL.ExecSQL(GetSQL);
    EndCreate;
   end;
end;

procedure TTableOrders.Delete(Item: TItemOrder);
begin
 with SQL.Delete(TableName) do
  begin
   WhereFieldEqual(fnID, Item.ID);
   FDB.SQL.ExecSQL(GetSQL);
   EndCreate;
  end;
end;

procedure TTableOrders.Delete(Index: Integer);
begin
 Delete(Items[Index]);
 inherited;
end;

procedure TTableOrders.GetBack(Item: TItemOrder);
var RTable, CTable:TSQLiteTable;
begin
 with SQL.Select(TableName) do
  begin
   AddField(fnNumber);
   AddField(fnClient);
   AddField(fnDate);
   AddField(fnAddr);
   AddField(fnData);
   AddField(fnComment);
   AddField(fnState);
   AddField(fnDriver);
   AddField(fnDateCreate);
   WhereFieldEqual(fnID, Item.ID);
   RTable:=FDB.SQL.GetTable(GetSQL);
   if RTable.Count > 0 then
    begin
     Item.Number:=RTable.FieldAsInteger(0);
     Item.Client:=RTable.FieldAsInteger(1);
     Item.Date:=RTable.FieldAsDateTime(2);
     Item.Addr:=RTable.FieldAsInteger(3);
     Item.Data:=RTable.FieldAsString(4);
     Item.Comment:=RTable.FieldAsString(5);
     Item.State:=TOrderState(RTable.FieldAsInteger(6));
     Item.Driver:=RTable.FieldAsInteger(7);
     Item.DateCreate:=RTable.FieldAsDateTime(8);
     Item.Modifed:=False;
     Item.Empty:=False;

     Item.ClientStr:='';
     Item.DriverStr:='';
     with SQL.Select(TTableAddresses.TableName) do
      begin
       AddField(TTableAddresses.fnText);
       WhereFieldEqual(TTableAddresses.fnID, Item.Addr);
       Item.AddrStr:=FDB.SQL.GetTableString(GetSQL);
       EndCreate;
      end;
     with SQL.Select(TTableClients.TableName) do
      begin
       AddField(TTableClients.fnF);
       AddField(TTableClients.fnI);
       AddField(TTableClients.fnO);
       WhereFieldEqual(TTableClients.fnID, Item.Client);
       try
        CTable:=FDB.SQL.GetTable(GetSQL);
        if CTable.Count > 0 then
         begin
          Item.ClientStr:=CreateFIO(CTable.FieldAsString(0), CTable.FieldAsString(1), CTable.FieldAsString(2));
         end
        else Item.ClientStr:='Клиент не найден';
       finally
        CTable.Free;
       end;
       EndCreate;
      end;
     with SQL.Select(TTableDrivers.TableName) do
      begin
       AddField(TTableDrivers.fnF);
       AddField(TTableDrivers.fnI);
       AddField(TTableDrivers.fnO);
       WhereFieldEqual(TTableDrivers.fnID, Item.Driver);
       try
        CTable:=FDB.SQL.GetTable(GetSQL);
        if CTable.Count > 0 then
         begin
          Item.DriverStr:=CreateFIO(CTable.FieldAsString(0), CTable.FieldAsString(1), CTable.FieldAsString(2));
         end
        else Item.DriverStr:='Водитель не найден';
       finally
        CTable.Free;
       end;
       EndCreate;
      end;
    end;
   RTable.Free;
   EndCreate;
  end;
end;

function TTableOrders.GetNextOrderNumber: Integer;
begin
 Result:=FDB.GetNextVal('ORDERS');
end;

procedure TTableOrders.Load;
var RTable, CTable:TSQLiteTable;
    Item:TItemOrder;
begin
 BeginUpdate;
 Clear;
 try
  with SQL.Select(TableName) do
   begin
    AddField(fnID);
    AddField(fnNumber);
    AddField(fnClient);
    AddField(fnDate);
    AddField(fnAddr);
    AddField(fnData);
    AddField(fnComment);
    AddField(fnState);
    AddField(fnDriver);
    AddField(fnDateCreate);
    if UseFilter then WhereFieldEqual(fnState, Ord(FFilter));
    if FFilterDriver >= 0 then WhereFieldEqual(fnDriver, FFilterDriver);

    if HideOldRecord then WhereField(fnDate, '>', Now);

    OrderBy(FOrderBy, FOrderByDESC);
    RTable:=FDB.SQL.GetTable(GetSQL);
    while not RTable.EOF do
     begin
      Item:=TItemOrder.Create(Self);
      Item.ID:=RTable.FieldAsInteger(0);
      Item.Number:=RTable.FieldAsInteger(1);
      Item.Client:=RTable.FieldAsInteger(2);
      Item.Date:=RTable.FieldAsDateTime(3);
      Item.Addr:=RTable.FieldAsInteger(4);
      Item.Data:=RTable.FieldAsString(5);
      Item.Comment:=RTable.FieldAsString(6);
      Item.State:=TOrderState(RTable.FieldAsInteger(7));
      Item.Driver:=RTable.FieldAsInteger(8);
      Item.DateCreate:=RTable.FieldAsDateTime(9);
      Item.ClientStr:='';
      Item.DriverStr:='';
      with SQL.Select(TTableAddresses.TableName) do
       begin
        AddField(TTableAddresses.fnText);
        WhereFieldEqual(TTableAddresses.fnID, Item.Addr);
        Item.AddrStr:=FDB.SQL.GetTableString(GetSQL);
        EndCreate;
       end;
      with SQL.Select(TTableClients.TableName) do
       begin
        AddField(TTableClients.fnF);
        AddField(TTableClients.fnI);
        AddField(TTableClients.fnO);
        WhereFieldEqual(TTableClients.fnID, Item.Client);
        try
         CTable:=FDB.SQL.GetTable(GetSQL);
         if CTable.Count > 0 then
          begin
           Item.ClientStr:=CreateFIO(CTable.FieldAsString(0), CTable.FieldAsString(1), CTable.FieldAsString(2));
          end
         else Item.ClientStr:='Клиент не найден';
        finally
         CTable.Free;
        end;
        EndCreate;
       end;
      with SQL.Select(TTableDrivers.TableName) do
       begin
        AddField(TTableDrivers.fnF);
        AddField(TTableDrivers.fnI);
        AddField(TTableDrivers.fnO);
        WhereFieldEqual(TTableDrivers.fnID, Item.Driver);
        try
         CTable:=FDB.SQL.GetTable(GetSQL);
         if CTable.Count > 0 then
          begin
           Item.DriverStr:=CreateFIO(CTable.FieldAsString(0), CTable.FieldAsString(1), CTable.FieldAsString(2));
          end
         else Item.DriverStr:='Водитель не найден';
        finally
         CTable.Free;
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

procedure TTableOrders.GetBack(Index: Integer);
begin
 GetBack(Items[Index]);
end;

procedure TTableOrders.Save;
var i:Integer;
begin
 for i:= 0 to Count-1 do if Items[i].Modifed then Update(i);
end;

procedure TTableOrders.Update(Item: TItemOrder);
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
     AddValue(fnNumber, Item.Number);
     AddValue(fnClient, Item.Client);
     AddValue(fnDate, Item.Date);
     AddValue(fnAddr, Item.Addr);
     AddValueAsParam(fnData, '?', True);
     AddValueAsParam(fnComment, '?', True);
     AddValue(fnState, Ord(Item.State));
     AddValue(fnDriver, Item.Driver);
     AddValue(fnDateCreate, Now);

     FDB.SQL.ExecSQL(GetSQL, [PAnsiChar(AnsiString(Item.Data)), PAnsiChar(AnsiString(Item.Comment))]);
     Item.ID:=FDB.SQL.GetLastInsertRowID;
     EndCreate;
    end;
  end
 else
  begin
   with SQL.Update(TableName) do
    begin
     AddValue(fnNumber, Item.Number);
     AddValue(fnClient, Item.Client);
     AddValue(fnDate, Item.Date);
     AddValue(fnAddr, Item.Addr);
     AddValueAsParam(fnData, '?', True);
     AddValueAsParam(fnComment, '?', True);
     AddValue(fnDriver, Item.Driver);
     AddValue(fnState, Ord(Item.State));

     WhereFieldEqual(fnID, Item.ID);

     FDB.SQL.ExecSQL(GetSQL, [PAnsiChar(AnsiString(Item.Data)), PAnsiChar(AnsiString(Item.Comment))]);
     EndCreate;
    end;
  end;
 Item.Modifed:=False;
 Item.Empty:=False;
end;

procedure TTableOrders.Update(Index: Integer);
begin
 Update(Items[Index]);
end;

{ TItemOrder }

constructor TItemOrder.Create(AOwner:TTableOrders);
begin
 inherited Create;
 FModifed:=True;
 FEmpty:=True;
 FOwner:=AOwner;
end;

procedure TItemOrder.GetBack;
begin
 FOwner.GetBack(Self);
end;

procedure TItemOrder.Update;
begin
 FOwner.Update(Self);
end;

end.
