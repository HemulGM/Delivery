unit Delivery.Table.Addresses;

interface
 uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections, Vcl.Grids,
  TableDraw, SQLLang, SQLiteTable3, Delivery.DB;

 type
  TTableAddresses = class;

  TItemAddress = class
   private
    FModifed:Boolean;
    FOwner:TTableAddresses;
    FEmpty:Boolean;
   public
    ID:Integer;
    Text:string;
    Client:Integer;
    property Modifed:Boolean read FModifed write FModifed;
    property Empty:Boolean read FEmpty write FEmpty;
    procedure Update;
    procedure GetBack;
    constructor Create(AOwner:TTableAddresses);
  end;

  TTableAddresses = class(TTableData<TItemAddress>)
    const TableName = 'Addresses';
    const fnID = 'adID';
    const fnText = 'adText';
    const fnClient = 'adClient';
   private
    FDB:TDatabaseCore;
   public
    procedure Load(clID:Integer = -1);
    procedure Save;
    procedure GetBack(Index:Integer); overload;
    procedure GetBack(Item:TItemAddress); overload;
    procedure Update(Index:Integer); overload;
    procedure Update(Item:TItemAddress); overload;
    procedure FillList(List: TStrings; var SelID: Integer);
    procedure Clear; override;
    constructor Create(ADB:TDatabaseCore); overload;
    property DatabaseCore:TDatabaseCore read FDB write FDB;
  end;


implementation

{ TTableAddresses }

procedure TTableAddresses.Clear;
var i:Integer;
begin
 for i:= 0 to Count-1 do Items[i].Free;
 inherited;
end;

constructor TTableAddresses.Create(ADB:TDatabaseCore);
begin
 inherited Create;
 FDB:=ADB;
 if not FDB.SQL.TableExists(TableName) then
  with SQL.CreateTable(TableName) do
   begin
    AddField(fnID, ftInteger, True, True);
    AddField(fnText, ftString);
    AddField(fnClient, ftInteger);
    FDB.SQL.ExecSQL(GetSQL);
    EndCreate;
   end;
end;

procedure TTableAddresses.FillList(List:TStrings; var SelID:Integer);
var i, s:Integer;
begin
 s:=-1;
 List.BeginUpdate;
 List.Clear;
 try
  for i:= 0 to Count-1 do
   begin
    List.Add(Items[i].Text);
    if Items[i].ID = SelID then s:=i;
   end;
 finally
  List.EndUpdate;
 end;
 SelID:=s;
end;

procedure TTableAddresses.GetBack(Item: TItemAddress);
var RTable:TSQLiteTable;
begin
 with SQL.Select(TableName) do
  begin
   AddField(fnText);
   AddField(fnClient);
   WhereFieldEqual(fnID, Item.ID);
   RTable:=FDB.SQL.GetTable(GetSQL);
   if RTable.Count > 0 then
    begin
     Item.Text:=RTable.FieldAsString(0);
     Item.Client:=RTable.FieldAsInteger(1);
     Item.Modifed:=False;
     Item.Empty:=False;
    end;
   EndCreate;
  end;
end;

procedure TTableAddresses.Load;
var RTable:TSQLiteTable;
    Item:TItemAddress;
begin
 BeginUpdate;
 Clear;
 try
  with SQL.Select(TableName) do
   begin
    AddField(fnID);
    AddField(fnText);
    AddField(fnClient);
    if clID <> -1 then WhereFieldEqual(fnClient, clID);
    RTable:=FDB.SQL.GetTable(GetSQL);
    while not RTable.EOF do
     begin
      Item:=TItemAddress.Create(Self);
      Item.ID:=RTable.FieldAsInteger(0);
      Item.Text:=RTable.FieldAsString(1);
      Item.Client:=RTable.FieldAsInteger(2);
      //with SQL.Select(
      Item.Modifed:=False;
      Item.Empty:=False;
      Add(Item);
      RTable.Next;
     end;
    EndCreate;
   end;
 finally
  EndUpdate;
 end;
end;

procedure TTableAddresses.GetBack(Index: Integer);
begin
 GetBack(Items[Index]);
end;

procedure TTableAddresses.Save;
var i:Integer;
begin
 for i:= 0 to Count-1 do if Items[i].Modifed then Update(i);
end;

procedure TTableAddresses.Update(Item: TItemAddress);
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
     AddValue(fnText, Item.Text);
     AddValue(fnClient, Item.Client);
     FDB.SQL.ExecSQL(GetSQL);
     Item.ID:=FDB.SQL.GetLastInsertRowID;
     EndCreate;
    end;
  end
 else
  begin
   with SQL.Update(TableName) do
    begin
     AddValue(fnText, Item.Text);
     AddValue(fnClient, Item.Client);
     WhereFieldEqual(fnID, Item.ID);
     FDB.SQL.ExecSQL(GetSQL);
     EndCreate;
    end;
  end;
 Item.Modifed:=False;
 Item.Empty:=False;
end;

procedure TTableAddresses.Update(Index: Integer);
begin
 Update(Items[Index]);
end;

{ TItemAddress }

constructor TItemAddress.Create(AOwner:TTableAddresses);
begin
 inherited Create;
 FOwner:=AOwner;
 FEmpty:=True;
 FModifed:=True;
end;

procedure TItemAddress.GetBack;
begin
 FOwner.GetBack(Self);
end;

procedure TItemAddress.Update;
begin
 FOwner.Update(Self);
end;

end.
