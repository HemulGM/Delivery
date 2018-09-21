unit Delivery.Table.Drivers;

interface
 uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections, Vcl.Grids,
  TableDraw, SQLLang, SQLiteTable3, Delivery.DB;

 type
  TTableDrivers = class;

  TItemDriver = class
   private
    FModifed:Boolean;
    FOwner:TTableDrivers;
    FEmpty:Boolean;
    function GetFullFIO: string;
    function GetShortFIO: string;
    function GetIsAvailable: string;
   public
    ID:Integer;
    F,
    I,
    O:string;
    Phone1,
    Phone2:string;
    IsAvailable:Boolean;
    DateCreate:TDateTime;
    property FullFIO:string read GetFullFIO;
    property ShortFIO:string read GetShortFIO;
    property Modifed:Boolean read FModifed write FModifed;
    property Empty:Boolean read FEmpty write FEmpty;
    property IsAvailableStr:string read GetIsAvailable;
    procedure Update;
    procedure Delete;
    procedure GetBack;
    constructor Create(AOwner:TTableDrivers);
  end;

  TTableDrivers = class(TTableData<TItemDriver>)
    const TableName = 'Drivers';
    const fnID = 'drID';
    const fnF = 'drF';
    const fnI = 'drI';
    const fnO = 'drO';
    const fnPhone1 = 'drPhone1';
    const fnPhone2 = 'drPhone2';
    const fnDateCreate = 'drDateCreate';
    const fnIsAvailable = 'drIsAvailable';
   private
    FDB:TDatabaseCore;
   public
    procedure Load;
    procedure Save;
    procedure GetBack(Index:Integer); overload;
    procedure GetBack(Item:TItemDriver); overload;
    procedure Update(Index:Integer); overload;
    procedure Update(Item:TItemDriver); overload;
    procedure Delete(Item:TItemDriver); overload;
    procedure Delete(Index:Integer); overload;
    procedure FillList(List:TStrings; var SelID:Integer);
    procedure Clear; override;
    constructor Create(ADB:TDatabaseCore); overload;
    property DatabaseCore:TDatabaseCore read FDB write FDB;
  end;


implementation

{ TTableDrivers }

procedure TTableDrivers.Clear;
var i:Integer;
begin
 for i:= 0 to Count-1 do Items[i].Free;
 inherited;
end;

constructor TTableDrivers.Create(ADB:TDatabaseCore);
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
    AddField(fnPhone1, ftString);
    AddField(fnPhone2, ftString);
    AddField(fnDateCreate, ftDateTime);
    AddField(fnIsAvailable, ftBoolean);
    FDB.SQL.ExecSQL(GetSQL);
    EndCreate;
   end;
end;

procedure TTableDrivers.Delete(Item: TItemDriver);
begin
 with SQL.Delete(TableName) do
  begin
   WhereFieldEqual(fnID, Item.ID);
   FDB.SQL.ExecSQL(GetSQL);
   EndCreate;
  end;
end;

procedure TTableDrivers.Delete(Index: Integer);
begin
 Delete(Items[Index]);
 inherited;
end;

procedure TTableDrivers.FillList(List:TStrings; var SelID:Integer);
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

procedure TTableDrivers.GetBack(Item: TItemDriver);
var RTable:TSQLiteTable;
begin
 with SQL.Select(TableName) do
  begin
   AddField(fnF);
   AddField(fnI);
   AddField(fnO);
   AddField(fnPhone1);
   AddField(fnPhone2);
   AddField(fnDateCreate);
   AddField(fnIsAvailable);
   WhereFieldEqual(fnID, Item.ID);
   RTable:=FDB.SQL.GetTable(GetSQL);
   if RTable.Count > 0 then
    begin
     Item.F:=RTable.FieldAsString(0);
     Item.I:=RTable.FieldAsString(1);
     Item.O:=RTable.FieldAsString(2);
     Item.Phone1:=RTable.FieldAsString(3);
     Item.Phone2:=RTable.FieldAsString(4);
     Item.DateCreate:=RTable.FieldAsDateTime(5);
     Item.IsAvailable:=RTable.FieldAsBoolean(6);
     Item.Modifed:=False;
     Item.Empty:=False;
    end;
   RTable.Free;
   EndCreate;
  end;
end;

procedure TTableDrivers.Load;
var RTable:TSQLiteTable;
    Item:TItemDriver;
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
    AddField(fnPhone1);
    AddField(fnPhone2);
    AddField(fnDateCreate);
    AddField(fnIsAvailable);
    RTable:=FDB.SQL.GetTable(GetSQL);
    while not RTable.EOF do
     begin
      Item:=TItemDriver.Create(Self);
      Item.ID:=RTable.FieldAsInteger(0);
      Item.F:=RTable.FieldAsString(1);
      Item.I:=RTable.FieldAsString(2);
      Item.O:=RTable.FieldAsString(3);
      Item.Phone1:=RTable.FieldAsString(4);
      Item.Phone2:=RTable.FieldAsString(5);
      Item.DateCreate:=RTable.FieldAsDateTime(6);
      Item.IsAvailable:=RTable.FieldAsBoolean(7);
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

procedure TTableDrivers.GetBack(Index: Integer);
begin
 GetBack(Items[Index]);
end;

procedure TTableDrivers.Save;
var i:Integer;
begin
 for i:= 0 to Count-1 do if Items[i].Modifed then Update(i);
end;

procedure TTableDrivers.Update(Item: TItemDriver);
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
     AddValue(fnPhone1, Item.Phone1);
     AddValue(fnPhone2, Item.Phone2);
     AddValue(fnDateCreate, Now);
     AddValue(fnIsAvailable, Item.IsAvailable);
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
     AddValue(fnPhone1, Item.Phone1);
     AddValue(fnPhone2, Item.Phone2);
     AddValue(fnIsAvailable, Item.IsAvailable);
     WhereFieldEqual(fnID, Item.ID);
     FDB.SQL.ExecSQL(GetSQL);
     EndCreate;
    end;
  end;
 Item.Modifed:=False;
 Item.Empty:=False;
end;

procedure TTableDrivers.Update(Index: Integer);
begin
 Update(Items[Index]);
end;

{ TItemDriver }

constructor TItemDriver.Create(AOwner:TTableDrivers);
begin
 inherited Create;
 FModifed:=True;
 FEmpty:=True;
 FOwner:=AOwner;
end;

procedure TItemDriver.Delete;
begin
 FOwner.Delete(Self);
end;

procedure TItemDriver.GetBack;
begin
 FOwner.GetBack(Self);
end;

function TItemDriver.GetFullFIO: string;
begin
 Result:=CreateFullFIO(F, I, O);
end;

function TItemDriver.GetIsAvailable: string;
begin
 if IsAvailable then Result:='Доступен' else Result:='Не доступен';
end;

function TItemDriver.GetShortFIO: string;
begin
 Result:=CreateFIO(F, I, O);
end;

procedure TItemDriver.Update;
begin
 FOwner.Update(Self);
end;

end.
