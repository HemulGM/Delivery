unit Delivery.Table.Storage.Kind;

interface
 uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections, Vcl.Grids,
  HGM.Controls.VirtualTable, SQLLang, SQLiteTable3, Delivery.DB;

 type
  TTableProductKind = class;

  TProdKindUnits = (pkuGramm, pkuUnit);

  TItemProdKind = class
   private
    FModifed:Boolean;
    FOwner:TTableProductKind;
    FEmpty:Boolean;
    function GetItemUnitStr: string;
    function GetDesc: string;
    function GetDescWithComment: string;
   public
    ID:Integer;
    Name:string;
    Comment:string;
    ItemUnit:TProdKindUnits;
    property ItemUnitStr:string read GetItemUnitStr;
    property Modifed:Boolean read FModifed write FModifed;
    property Empty:Boolean read FEmpty write FEmpty;
    property Desc:string read GetDesc;
    property DescWithComment:string read GetDescWithComment;
    procedure Update;
    procedure GetBack;
    constructor Create(AOwner:TTableProductKind);
  end;

  TTableProductKind = class(TTableData<TItemProdKind>)
    const TableName = 'ProductKind';
    const fnID = 'pkID';
    const fnName = 'pkName';
    const fnComment = 'pkComment';
    const fnUnit = 'pkUnit';
   private
    FDB:TDatabaseCore;
    FOrderBy: string;
    FOrderByDESC:Boolean;
   public
    procedure Load;
    procedure Save;
    procedure GetBack(Index:Integer); overload;
    procedure GetBack(Item:TItemProdKind); overload;
    procedure Update(Index:Integer); overload;
    procedure Update(Item:TItemProdKind); overload;
    procedure Delete(Item:TItemProdKind); overload;
    procedure Delete(Index:Integer); overload;
    procedure FillList(List: TStrings; var SelID: Integer);
    procedure Clear; override;
    property LoadOrderBy:string read FOrderBy write FOrderBy;
    property LoadOrderByDESC:Boolean read FOrderByDESC write FOrderByDESC;
    constructor Create(ADB:TDatabaseCore); overload;
    property DatabaseCore:TDatabaseCore read FDB write FDB;
  end;

  function ProdKindUnitsToString(Value:TProdKindUnits):string;


implementation

function ProdKindUnitsToString(Value:TProdKindUnits):string;
begin
 case Value of
  pkuGramm: Result:='êã';
  pkuUnit: Result:='øò';
 end;
end;

{ TTableProductKind }

procedure TTableProductKind.FillList(List:TStrings; var SelID:Integer);
var i, s:Integer;
begin
 s:=-1;
 List.BeginUpdate;
 List.Clear;
 try
  for i:= 0 to Count-1 do
   begin
    List.Add(Items[i].DescWithComment);
    if Items[i].ID = SelID then s:=i;
   end;
 finally
  List.EndUpdate;
 end;
 SelID:=s;
end;

procedure TTableProductKind.Clear;
var i:Integer;
begin
 for i:= 0 to Count-1 do Items[i].Free;
 inherited;
end;

constructor TTableProductKind.Create(ADB:TDatabaseCore);
begin
 inherited Create;
 FOrderBy:=fnName;
 FOrderByDESC:=False;
 FDB:=ADB;
 if not FDB.SQL.TableExists(TableName) then
  with SQL.CreateTable(TableName) do
   begin
    AddField(fnID, ftInteger, True, True);
    AddField(fnName, ftString);
    AddField(fnComment, ftString);
    AddField(fnUnit, ftInteger);
    FDB.SQL.ExecSQL(GetSQL);
    EndCreate;
   end;
end;

procedure TTableProductKind.Delete(Item: TItemProdKind);
begin
 with SQL.Delete(TableName) do
  begin
   WhereFieldEqual(fnID, Item.ID);
   FDB.SQL.ExecSQL(GetSQL);
   EndCreate;
  end;
end;

procedure TTableProductKind.Delete(Index: Integer);
begin
 Delete(Items[Index]);
 inherited;
end;

procedure TTableProductKind.GetBack(Item: TItemProdKind);
var RTable:TSQLiteTable;
begin
 with SQL.Select(TableName) do
  begin
   AddField(fnName);
   AddField(fnComment);
   AddField(fnUnit);
   WhereFieldEqual(fnID, Item.ID);
   RTable:=FDB.SQL.GetTable(GetSQL);
   if RTable.Count > 0 then
    begin
     Item.Name:=RTable.FieldAsString(0);
     Item.Comment:=RTable.FieldAsString(1);
     Item.ItemUnit:=TProdKindUnits(RTable.FieldAsInteger(2));
     Item.Modifed:=False;
     Item.Empty:=False;
    end;
   RTable.Free;
   EndCreate;
  end;
end;

procedure TTableProductKind.Load;
var RTable:TSQLiteTable;
    Item:TItemProdKind;
begin
 BeginUpdate;
 Clear;
 try
  with SQL.Select(TableName) do
   begin
    AddField(fnID);
    AddField(fnName);
    AddField(fnComment);
    AddField(fnUnit);
    OrderBy(FOrderBy, FOrderByDESC);
    RTable:=FDB.SQL.GetTable(GetSQL);
    while not RTable.EOF do
     begin
      Item:=TItemProdKind.Create(Self);
      Item.ID:=RTable.FieldAsInteger(0);
      Item.Name:=RTable.FieldAsString(1);
      Item.Comment:=RTable.FieldAsString(2);
      Item.ItemUnit:=TProdKindUnits(RTable.FieldAsInteger(3));
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

procedure TTableProductKind.GetBack(Index: Integer);
begin
 GetBack(Items[Index]);
end;

procedure TTableProductKind.Save;
var i:Integer;
begin
 for i:= 0 to Count-1 do if Items[i].Modifed then Update(i);
end;

procedure TTableProductKind.Update(Item: TItemProdKind);
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
     AddValue(fnName, Item.Name);
     AddValue(fnComment, Item.Comment);
     AddValue(fnUnit, Ord(Item.ItemUnit));
     FDB.SQL.ExecSQL(GetSQL);
     Item.ID:=FDB.SQL.GetLastInsertRowID;
     EndCreate;
    end;
  end
 else
  begin
   with SQL.Update(TableName) do
    begin
     AddValue(fnName, Item.Name);
     AddValue(fnComment, Item.Comment);
     AddValue(fnUnit, Ord(Item.ItemUnit));
     WhereFieldEqual(fnID, Item.ID);
     FDB.SQL.ExecSQL(GetSQL);
     EndCreate;
    end;
  end;
 Item.Modifed:=False;
 Item.Empty:=False;
end;

procedure TTableProductKind.Update(Index: Integer);
begin
 Update(Items[Index]);
end;

{ TItemProdKind }

constructor TItemProdKind.Create(AOwner:TTableProductKind);
begin
 inherited Create;
 FModifed:=True;
 FEmpty:=True;
 FOwner:=AOwner;
end;

procedure TItemProdKind.GetBack;
begin
 FOwner.GetBack(Self);
end;

function TItemProdKind.GetDesc: string;
begin
 Result:=Name+' ('+ItemUnitStr+')';
end;

function TItemProdKind.GetDescWithComment: string;
begin
 if Comment.IsEmpty then Exit(Name) else Exit(Name+' ('+Comment+')');
end;

function TItemProdKind.GetItemUnitStr: string;
begin
 Result:=ProdKindUnitsToString(ItemUnit);
end;

procedure TItemProdKind.Update;
begin
 FOwner.Update(Self);
end;

end.
