unit Delivery.Table.Drivers.Calendar;

interface
 uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections, Vcl.Grids,
  HGM.Controls.VirtualTable, SQLLang, SQLiteTable3, Delivery.DB;

 type
  TTableDriverCalendar = class;

  TDriverCalendarDay = record
   OrderCount:Integer;
  end;

  TDriverCalendarDays = array[1..31] of TDriverCalendarDay;

  TItemCalendar = class
   private
    FOwner:TTableDriverCalendar;
    function GetDays(Index: Word): TDriverCalendarDay;
    procedure SetDays(Index: Word; const Value: TDriverCalendarDay);
   public
    DriverID:Integer;
    DriverName:string;
    FDays:TDriverCalendarDays;
    constructor Create(AOwner:TTableDriverCalendar);
    procedure IncDay(Index:Word);
    property Days[Index:Word]:TDriverCalendarDay read GetDays write SetDays;
  end;

  TTableDriverCalendar = class(TTableData<TItemCalendar>)
   private
    FDB:TDatabaseCore;
    procedure Clear;
   public
    procedure Reload(Year, Month:Integer);
    constructor Create(ADB:TDatabaseCore); overload;
    property DatabaseCore:TDatabaseCore read FDB write FDB;
  end;


implementation
 uses Delivery.Table.Drivers, Delivery.Table.Orders, System.DateUtils;

{ TTableDriverCalendar }

procedure TTableDriverCalendar.Clear;
var i:Integer;
begin
 for i:= 0 to Count-1 do Items[i].Free;
 inherited;
end;

constructor TTableDriverCalendar.Create(ADB:TDatabaseCore);
begin
 inherited Create;
 FDB:=ADB;
end;

function DateEqual(InDate:TDate; Y, M:Word):Boolean;
var tY, tM, tD:Word;
begin
 DecodeDate(InDate, tY, tM, tD);
 Result:=(tY = Y) and (tM = M);
end;

procedure TTableDriverCalendar.Reload;
var RTable, OrdersTable:TSQLiteTable;
    Item:TItemCalendar;
begin
 BeginUpdate;
 Clear;
 try
  with SQL.Select(TTableDrivers.TableName) do
   begin
    AddField(TTableDrivers.fnID);
    AddField(TTableDrivers.fnF);
    AddField(TTableDrivers.fnI);
    AddField(TTableDrivers.fnO);
    AddField(TTableDrivers.fnIsAvailable);
    WhereFieldEqual(TTableDrivers.fnIsAvailable, True);
    RTable:=FDB.SQL.GetTable(GetSQL);
    EndCreate;
    while not RTable.EOF do
     begin
      Item:=TItemCalendar.Create(Self);
      Item.DriverID:=RTable.FieldAsInteger(0);
      Item.DriverName:=CreateFIO(RTable.FieldAsString(1), RTable.FieldAsString(2), RTable.FieldAsString(3));
      with SQL.Select(TTableOrders.TableName) do
       begin
        AddField(TTableOrders.fnDate);
        WhereFieldEqual(TTableOrders.fnDriver, Item.DriverID);
        OrdersTable:=FDB.SQL.GetTable(GetSQL);
        OrdersTable.MoveFirst;
        while not OrdersTable.EOF do
         begin
          if DateEqual(OrdersTable.FieldAsDateTime(0), Year, Month) then
           Item.IncDay(DayOf(OrdersTable.FieldAsDateTime(0)));
          OrdersTable.Next;
         end;
        EndCreate;
       end;
      Add(Item);
      RTable.Next;
     end;
    RTable.Free;
    OrdersTable.Free;
   end;
 finally
  EndUpdate;
 end;
end;

{ TItemCalendar }

constructor TItemCalendar.Create(AOwner:TTableDriverCalendar);
begin
 inherited Create;
 FOwner:=AOwner;
end;

function TItemCalendar.GetDays(Index: Word): TDriverCalendarDay;
begin
 Result:=FDays[Index];
end;

procedure TItemCalendar.IncDay(Index: Word);
begin
 FDays[Index].OrderCount:=FDays[Index].OrderCount + 1;
end;

procedure TItemCalendar.SetDays(Index: Word; const Value: TDriverCalendarDay);
begin
 FDays[Index]:=Value;
end;

end.
