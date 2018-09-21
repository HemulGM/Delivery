unit Delivery.Table.Clients;

interface
 uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections, Vcl.Grids,
  TableDraw, SQLLang, SQLiteTable3, Delivery.DB;

 type
  TTableClients = class;

  TItemClient = class
   private
    FModifed:Boolean;
    FOwner:TTableClients;
    FEmpty:Boolean;
    function GetFullFIO: string;
    function GetShortFIO: string;
   public
    ID:Integer;
    F,
    I,
    O:string;
    Addr:Integer;
    Phone1,
    Phone2:string;
    DateCreate:TDateTime;
    AddrStr:string;
    property FullFIO:string read GetFullFIO;
    property ShortFIO:string read GetShortFIO;
    property Modifed:Boolean read FModifed write FModifed;
    property Empty:Boolean read FEmpty write FEmpty;
    procedure Update;
    procedure Delete;
    procedure GetBack;
    constructor Create(AOwner:TTableClients);
  end;

  TTableClients = class(TTableData<TItemClient>)
    const TableName = 'Clients';
    const fnID = 'clID';
    const fnF = 'clF';
    const fnI = 'clI';
    const fnO = 'clO';
    const fnAddr = 'clAddr';
    const fnPhone1 = 'clPhone1';
    const fnPhone2 = 'clPhone2';
    const fnDateCreate = 'clDateCreate';
   private
    FDB:TDatabaseCore;
   public
    procedure Load;
    procedure Save;
    procedure GetBack(Index:Integer); overload;
    procedure GetBack(Item:TItemClient); overload;
    procedure Update(Index:Integer); overload;
    procedure Update(Item:TItemClient); overload;
    procedure Delete(Item:TItemClient); overload;
    procedure Delete(Index:Integer); overload;
    procedure FillList(List:TStrings; var SelID:Integer);
    procedure Clear; override;
    constructor Create(ADB:TDatabaseCore); overload;
    property DatabaseCore:TDatabaseCore read FDB write FDB;
  end;


implementation
 uses Delivery.Table.Addresses;

{ TTableClients }

procedure TTableClients.Clear;
var i:Integer;
begin
 for i:= 0 to Count-1 do Items[i].Free;
 inherited;
end;

constructor TTableClients.Create(ADB:TDatabaseCore);
begin
 inherited Create;
 FDB:=ADB;
 if not FDB.SQL.TableExists(TableName) then
  with SQL.CreateTable(TableName) do
   begin
    AddField(fnID, ftInteger, True, True);
    AddField(fnF, ftString);
    AddField(fnI, ftString);
    AddField(fnO, ftString);
    AddField(fnAddr, ftInteger);
    AddField(fnPhone1, ftString);
    AddField(fnPhone2, ftString);
    AddField(fnDateCreate, ftDateTime);
    FDB.SQL.ExecSQL(GetSQL);
    EndCreate;
   end;
end;

procedure TTableClients.Delete(Item: TItemClient);
begin
 with SQL.Delete(TableName) do
  begin
   WhereFieldEqual(fnID, Item.ID);
   FDB.SQL.ExecSQL(GetSQL);
   EndCreate;
  end;
end;

procedure TTableClients.Delete(Index: Integer);
begin
 Delete(Items[Index]);
 inherited;
end;

procedure TTableClients.FillList(List:TStrings; var SelID:Integer);
var i, s:Integer;
begin
 s:=-1;
 List.BeginUpdate;
 List.Clear;
 try
  for i:= 0 to Count-1 do
   begin
    List.Add(Items[i].FullFIO);
    if Items[i].ID = SelID then s:=i;
   end;
 finally
  List.EndUpdate;
 end;
 SelID:=s;
end;

procedure TTableClients.GetBack(Item: TItemClient);
var RTable:TSQLiteTable;
begin
 with SQL.Select(TableName) do
  begin
   AddField(fnF);
   AddField(fnI);
   AddField(fnO);
   AddField(fnAddr);
   AddField(fnPhone1);
   AddField(fnPhone2);
   AddField(fnDateCreate);
   WhereFieldEqual(fnID, Item.ID);
   RTable:=FDB.SQL.GetTable(GetSQL);
   if RTable.Count > 0 then
    begin
     Item.F:=RTable.FieldAsString(0);
     Item.I:=RTable.FieldAsString(1);
     Item.O:=RTable.FieldAsString(2);
     Item.Addr:=RTable.FieldAsInteger(3);
     Item.Phone1:=RTable.FieldAsString(4);
     Item.Phone2:=RTable.FieldAsString(5);
     Item.DateCreate:=RTable.FieldAsDateTime(6);
     Item.Modifed:=False;
     Item.Empty:=False;
    end;
   RTable.Free;
   EndCreate;
  end;
end;

procedure TTableClients.Load;
var RTable:TSQLiteTable;
    Item:TItemClient;
begin
 BeginUpdate;
 Clear;
 try
  with SQL.Select(TableName) do
   begin
    AddField(fnID);
    AddField(fnF);
    AddField(fnI);
    AddField(fnO);
    AddField(fnAddr);
    AddField(fnPhone1);
    AddField(fnPhone2);
    AddField(fnDateCreate);
    RTable:=FDB.SQL.GetTable(GetSQL);
    while not RTable.EOF do
     begin
      Item:=TItemClient.Create(Self);
      Item.ID:=RTable.FieldAsInteger(0);
      Item.F:=RTable.FieldAsString(1);
      Item.I:=RTable.FieldAsString(2);
      Item.O:=RTable.FieldAsString(3);
      Item.Addr:=RTable.FieldAsInteger(4);
      Item.Phone1:=RTable.FieldAsString(5);
      Item.Phone2:=RTable.FieldAsString(6);
      Item.DateCreate:=RTable.FieldAsDateTime(7);
      with SQL.Select(TTableAddresses.TableName) do
       begin
        AddField(TTableAddresses.fnText);
        WhereFieldEqual(TTableAddresses.fnID, Item.Addr);
        Item.AddrStr:=FDB.SQL.GetTableString(GetSQL);
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

procedure TTableClients.GetBack(Index: Integer);
begin
 GetBack(Items[Index]);
end;

procedure TTableClients.Save;
var i:Integer;
begin
 for i:= 0 to Count-1 do if Items[i].Modifed then Update(i);
end;

procedure TTableClients.Update(Item: TItemClient);
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
     AddValue(fnF, Item.F);
     AddValue(fnI, Item.I);
     AddValue(fnO, Item.O);
     AddValue(fnAddr, Item.Addr);
     AddValue(fnPhone1, Item.Phone1);
     AddValue(fnPhone2, Item.Phone2);
     AddValue(fnDateCreate, Now);
     FDB.SQL.ExecSQL(GetSQL);
     Item.ID:=FDB.SQL.GetLastInsertRowID;
     EndCreate;
    end;
  end
 else
  begin
   with SQL.Update(TableName) do
    begin
     AddValue(fnF, Item.F);
     AddValue(fnI, Item.I);
     AddValue(fnO, Item.O);
     AddValue(fnAddr, Item.Addr);
     AddValue(fnPhone1, Item.Phone1);
     AddValue(fnPhone2, Item.Phone2);
     WhereFieldEqual(fnID, Item.ID);
     FDB.SQL.ExecSQL(GetSQL);
     EndCreate;
    end;
  end;
 Item.Modifed:=False;
 Item.Empty:=False;
end;

procedure TTableClients.Update(Index: Integer);
begin
 Update(Items[Index]);
end;

{ TItemClient }

constructor TItemClient.Create(AOwner:TTableClients);
begin
 inherited Create;
 FModifed:=True;
 FEmpty:=True;
 FOwner:=AOwner;
end;

procedure TItemClient.Delete;
begin
 FOwner.Delete(Self);
end;

procedure TItemClient.GetBack;
begin
 FOwner.GetBack(Self);
end;

function TItemClient.GetFullFIO: string;
begin
 Result:=CreateFullFIO(F, I, O);
end;

function TItemClient.GetShortFIO: string;
begin
 Result:=CreateFIO(F, I, O);
end;

procedure TItemClient.Update;
begin
 FOwner.Update(Self);
end;

end.
