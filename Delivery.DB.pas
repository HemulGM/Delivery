unit Delivery.DB;

interface

 uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections, Vcl.Grids,
  HGM.Controls.VirtualTable, SQLLang, SQLiteTable3;

 type
  TUID = record
   ID:Integer;
   Caption:string;
   class function Create(AID:Integer; ACaption:string):TUID; static;
  end;

  TDatabaseCore = class
   private
    FDBFileName:string;
    FSQL:TSQLiteDatabase;
    FWork:Boolean;
    FQCount:Integer;
    procedure OnQuery(Sender:TObject; SQL:string);
    procedure CreateSysTable;
   public
    function GetNextVal(Index:string):Integer;
    constructor Create(AFileName:string);
    destructor Destroy;
    property Work:Boolean read FWork;
    property SQL:TSQLiteDatabase read FSQL;
    property QCount:Integer read FQCount;
  end;

function CreateFIO(F, I, O:string):string;
function CreateFullFIO(F, I, O:string):string;

implementation

function CreateFIO(F, I, O:string):string;
begin
 Result:=F;
 if Length(I) > 0 then
  begin
   Result:=Result + ' ' + I[1]+'.';
   if Length(O) > 0 then Result:=Result + ' ' + O[1] + '.';
  end;
end;

function CreateFullFIO(F, I, O:string):string;
begin
 Result:=F;
 if Length(I) > 0 then
  begin
   Result:=Result + ' ' + I;
   if Length(O) > 0 then Result:=Result + ' ' + O;
  end;
end;

{ TDatabaseCore }

constructor TDatabaseCore.Create(AFileName: string);
begin
 FDBFileName:=AFileName;
 FWork:=False;
 FQCount:=0;
 try
  FSQL:=TSQLiteDatabase.Create(FDBFileName);
  FSQL.OnQuery:=OnQuery;
  CreateSysTable;
  FWork:=True;
 except
  FWork:=False;
 end;
end;

procedure TDatabaseCore.CreateSysTable;
begin
 if not FSQL.TableExists('CRM_SYS_INDEX') then
  begin
   with SQLLang.SQL.CreateTable('CRM_SYS_INDEX') do
    begin
     AddField('SEC_INDEX', ftString);
     AddField('VALUE', ftInteger);
     SQL.ExecSQL(GetSQL);
     EndCreate;
    end;
  end;
end;

destructor TDatabaseCore.Destroy;
begin
 FSQL.Free;
end;

function TDatabaseCore.GetNextVal(Index: string):Integer;
var Value:Integer;
begin
 with SQLLang.SQL.Select('CRM_SYS_INDEX') do
  begin
   AddField('VALUE');
   WhereFieldEqual('SEC_INDEX', Index);
   Value:=SQL.GetTableValue(GetSQL);
   EndCreate;
  end;
 if Value < 0 then
  begin
   with SQLLang.SQL.InsertInto('CRM_SYS_INDEX') do
    begin
     AddValue('SEC_INDEX', Index);
     AddValue('VALUE', 10001);
     Result:=10001;
     SQL.ExecSQL(GetSQL);
     EndCreate;
    end;
  end
 else
  begin
   Result:=Value+1;
   with SQLLang.SQL.Update('CRM_SYS_INDEX') do
    begin
     AddValue('VALUE', Result);
     WhereFieldEqual('SEC_INDEX', Index);
     SQL.ExecSQL(GetSQL);
     EndCreate;
    end;
  end;
end;

procedure TDatabaseCore.OnQuery(Sender: TObject; SQL: string);
begin
 Inc(FQCount);
end;

{ TUID }

class function TUID.Create(AID:Integer; ACaption:string): TUID;
begin
 Result.ID:=AID;
 Result.Caption:=ACaption;
end;

end.
