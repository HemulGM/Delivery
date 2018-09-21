unit Delivery.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  System.Generics.Collections, Vcl.Grids, TableDraw, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ImgList, Vcl.Menus,

  LKDU.Button, HGM.Common.Utils, LKDU.SpinEdit, HGM.Common.Notify,

  Delivery.Table.Clients, Delivery.Table.Addresses, Delivery.Table.Orders,
  Delivery.Table.History, Delivery.Table.Storage.Kind, Delivery.DB,
  Delivery.Table.Storage, Delivery.Table.Storage.Protocol,
  Delivery.Table.Orders.Products, Delivery.Table.Drivers;

type
  TAppState = record
   FModals:Integer;
   // Данные формы клиента
   CurClient:TItemClient;
   FClientAddr:TTableAddresses;
   // Данные формы заказа
   CurOrder:TItemOrder;
   CurOrderState:TOrderState;
   FOrderAddr:TTableAddresses;
   CurOrderProducts:TTableOrderProducts;
   // Данные формы вида товара
   CurProdKind:TItemProdKind;
   // Данные формы поступление товара
   CurStorageItem:TItemStorageProtocol;
   // Данные формы водителя
   CurDriver:TItemDriver;
   FDriverOrders:TTableOrders;
   procedure OpenModal;
   procedure CloseModal;
  end;

  TFormMain = class(TForm)
    PanelHeader: TPanel;
    Shape1: TShape;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    EditSearch: TEdit;
    ButtonFlat1: TButtonFlat;
    ImageList24: TImageList;
    Panel3: TPanel;
    LabelTime: TLabel;
    TimerTime: TTimer;
    PanelLeft: TPanel;
    PanelClient: TPanel;
    Panel4: TPanel;
    ButtonFlat2: TButtonFlat;
    ImageListSmall: TImageList;
    ButtonFlat3: TButtonFlat;
    PanelTableClients: TPanel;
    PanelTableClientHead: TPanel;
    PanelTableClientsClient: TPanel;
    Label3: TLabel;
    LabelDate: TLabel;
    ButtonFlatClients: TButtonFlat;
    ButtonFlatNewOrder: TButtonFlat;
    Shape2: TShape;
    Panel5: TPanel;
    TableExClients: TTableEx;
    Panel6: TPanel;
    ButtonFlatClientsAdd: TButtonFlat;
    ButtonFlatOrders: TButtonFlat;
    ButtonFlatCalendar: TButtonFlat;
    ButtonFlatStatistics: TButtonFlat;
    PanelTableOrders: TPanel;
    Panel8: TPanel;
    Label4: TLabel;
    Panel9: TPanel;
    Panel10: TPanel;
    TableExOrders: TTableEx;
    Panel11: TPanel;
    ButtonFlatOrderAdd: TButtonFlat;
    PanelOrder: TPanel;
    Panel12: TPanel;
    LabelSelectOrder: TLabel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    ButtonFlatOrderSave: TButtonFlat;
    ButtonFlatOrderClose: TButtonFlat;
    Panel7: TPanel;
    Label5: TLabel;
    ComboBoxSelOrderClient: TComboBox;
    ComboBoxSelOrderAddr: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    MemoSelOrderData: TMemo;
    Label9: TLabel;
    MemoSelOrderComment: TMemo;
    PanelFeed: TPanel;
    Panel17: TPanel;
    Label10: TLabel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    ButtonFlatFeedNewOrder: TButtonFlat;
    ButtonFlatFeed: TButtonFlat;
    PanelCurClient: TPanel;
    Panel21: TPanel;
    LabelSelClient: TLabel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    ButtonFlatClientSave: TButtonFlat;
    ButtonFlatClientClose: TButtonFlat;
    Panel25: TPanel;
    Label12: TLabel;
    Label14: TLabel;
    EditClientF: TEdit;
    EditClientI: TEdit;
    EditClientO: TEdit;
    EditClientAddr: TEdit;
    Label11: TLabel;
    EditClientPhone1: TEdit;
    Label13: TLabel;
    EditClientPhone2: TEdit;
    PanelCurClientAddr: TPanel;
    TableExCurClientAddrs: TTableEx;
    Label15: TLabel;
    ButtonFlatClientsEdit: TButtonFlat;
    ButtonFlatClientsDel: TButtonFlat;
    ButtonFlatOrderDelete: TButtonFlat;
    ButtonFlatOrderEdit: TButtonFlat;
    ButtonFlatFeedNewClient: TButtonFlat;
    PanelFeedHotOrders: TPanel;
    TableExHotOrders: TTableEx;
    DateTimePickerSelOrderTime: TDateTimePicker;
    DateTimePickerSelOrderDate: TDateTimePicker;
    Label6: TLabel;
    Label16: TLabel;
    ButtonFlatOrderDraft: TButtonFlat;
    ButtonFlatOrderNormal: TButtonFlat;
    ButtonFlatOrderDelivery: TButtonFlat;
    ButtonFlatOrderDelivered: TButtonFlat;
    ButtonFlatClientsLoad: TButtonFlat;
    ButtonFlatLoadOrders: TButtonFlat;
    ButtonFlatOrderNewClient: TButtonFlat;
    Panel26: TPanel;
    ButtonFlatFeedUpdate: TButtonFlat;
    Panel27: TPanel;
    Shape3: TShape;
    Panel28: TPanel;
    Shape4: TShape;
    TableExFeed: TTableEx;
    Panel29: TPanel;
    EditSearchFeed: TEdit;
    ButtonFlatSearchFeed: TButtonFlat;
    PanelProdKind: TPanel;
    Panel30: TPanel;
    LabelSelProdKind: TLabel;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    ButtonFlatProdKindSave: TButtonFlat;
    ButtonFlatProdKindClose: TButtonFlat;
    Panel34: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    EditProdKindName: TEdit;
    EditProdKindComment: TEdit;
    PanelTableProdKind: TPanel;
    Panel36: TPanel;
    Label20: TLabel;
    Panel37: TPanel;
    Panel38: TPanel;
    TableExProdKind: TTableEx;
    Panel39: TPanel;
    ButtonFlatProdKindAdd: TButtonFlat;
    ButtonFlatProdKindEdit: TButtonFlat;
    ButtonFlatProdKindDel: TButtonFlat;
    ButtonFlatProdKindLoad: TButtonFlat;
    ButtonFlat4: TButtonFlat;
    ButtonFlatDBConfig: TButtonFlat;
    Label17: TLabel;
    EditClientDateCreate: TEdit;
    Label21: TLabel;
    ComboBoxProdKindUnit: TComboBox;
    PanelDBConfig: TPanel;
    Panel35: TPanel;
    Label22: TLabel;
    Panel40: TPanel;
    Panel41: TPanel;
    Panel43: TPanel;
    ButtonFlatProdKind: TButtonFlat;
    ButtonFlatStorage: TButtonFlat;
    PanelTableStorage: TPanel;
    Panel42: TPanel;
    Label23: TLabel;
    Panel44: TPanel;
    Panel45: TPanel;
    TableExStorage: TTableEx;
    Panel46: TPanel;
    ButtonFlatStorageAdd: TButtonFlat;
    ButtonFlat6: TButtonFlat;
    ButtonFlat7: TButtonFlat;
    ButtonFlat8: TButtonFlat;
    PopupMenuAdd: TPopupMenu;
    MenuItemAddOrder: TMenuItem;
    MenuItemAddClient: TMenuItem;
    MenuItemAddStorageItem: TMenuItem;
    MenuItemN1: TMenuItem;
    MenuItemAddProduct: TMenuItem;
    N1: TMenuItem;
    PanelStorageItem: TPanel;
    Panel47: TPanel;
    Label24: TLabel;
    Panel48: TPanel;
    Panel49: TPanel;
    Panel50: TPanel;
    ButtonFlatStorageItemSave: TButtonFlat;
    ButtonFlatStorageItemClose: TButtonFlat;
    Panel51: TPanel;
    Label25: TLabel;
    Label26: TLabel;
    ComboBoxStorageItemProduct: TComboBox;
    SpinEditStorageItemAmount: TlkSpinEdit;
    ButtonFlatStorageItemAddProduct: TButtonFlat;
    ButtonFlatOrderSetState3: TButtonFlat;
    ButtonFlatOrderSetState2: TButtonFlat;
    ButtonFlatOrderSetState1: TButtonFlat;
    Shape5: TShape;
    Label27: TLabel;
    TableExOrderProducts: TTableEx;
    ButtonFlatStorageProtocol: TButtonFlat;
    PanelTableStorageProtocol: TPanel;
    Panel53: TPanel;
    Label34: TLabel;
    Panel54: TPanel;
    Panel55: TPanel;
    TableExStorageProtocol: TTableEx;
    Panel56: TPanel;
    ButtonFlat16: TButtonFlat;
    PanelTableDrivers: TPanel;
    Panel57: TPanel;
    Label36: TLabel;
    Panel58: TPanel;
    Panel59: TPanel;
    TableExDrivers: TTableEx;
    Panel60: TPanel;
    ButtonFlatDriversAdd: TButtonFlat;
    ButtonFlatDriverEdit: TButtonFlat;
    ButtonFlatDriverDelete: TButtonFlat;
    ButtonFlatDriversUpdate: TButtonFlat;
    ButtonFlatTableDrivers: TButtonFlat;
    PanelDriver: TPanel;
    Panel61: TPanel;
    LabelCurDriver: TLabel;
    Panel62: TPanel;
    Panel63: TPanel;
    Panel64: TPanel;
    ButtonFlatDriverSave: TButtonFlat;
    ButtonFlatDriverClose: TButtonFlat;
    Panel65: TPanel;
    Label38: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    EditDriverF: TEdit;
    EditDriverI: TEdit;
    EditDriverO: TEdit;
    EditDriverPhone1: TEdit;
    EditDriverPhone2: TEdit;
    EditDriverDateCreate: TEdit;
    PanelDriverOrders: TPanel;
    Label43: TLabel;
    TableExDriverOrders: TTableEx;
    Label37: TLabel;
    CheckBoxDriverIsAvailable: TCheckBox;
    MenuItemAddDriver: TMenuItem;
    ButtonFlatCurOrderProductAdd: TButtonFlat;
    ButtonFlatCurOrderProductDelete: TButtonFlat;
    ButtonFlatCurOrderProductClear: TButtonFlat;
    Label28: TLabel;
    ComboBoxSelOrderDriver: TComboBox;
    ButtonFlatOrderNewDriver: TButtonFlat;
    SpinEditOrderProductAmount: TlkSpinEdit;
    ComboBoxOrderProduct: TComboBox;
    ButtonFlatOrderProductNew: TButtonFlat;
    procedure FormCreate(Sender: TObject);
    procedure TableExClientsGetData(FCol, FRow: Integer; var Value: string);
    procedure TableExAddrGetData(FCol, FRow: Integer; var Value: string);
    procedure TimerTimeTimer(Sender: TObject);
    procedure EditSearchEnter(Sender: TObject);
    procedure EditSearchExit(Sender: TObject);
    procedure ButtonFlatClientsClick(Sender: TObject);
    procedure ButtonFlatClientsAddClick(Sender: TObject);
    procedure ButtonFlatOrdersClick(Sender: TObject);
    procedure TableExOrdersGetData(FCol, FRow: Integer; var Value: string);
    procedure ButtonFlatFeedClick(Sender: TObject);
    procedure ButtonFlatClientSaveClick(Sender: TObject);
    procedure ButtonFlatClientCloseClick(Sender: TObject);
    procedure ButtonFlatClientsEditClick(Sender: TObject);
    procedure ButtonFlatClientsDelClick(Sender: TObject);
    procedure ButtonFlatOrderAddClick(Sender: TObject);
    procedure ButtonFlatOrderEditClick(Sender: TObject);
    procedure ButtonFlatOrderCloseClick(Sender: TObject);
    procedure ComboBoxSelOrderClientChange(Sender: TObject);
    procedure ButtonFlatOrderDeleteClick(Sender: TObject);
    procedure ButtonFlatOrderDraftClick(Sender: TObject);
    procedure ButtonFlatOrderSaveClick(Sender: TObject);
    procedure TableExCurClientAddrsGetData(FCol, FRow: Integer;
      var Value: string);
    procedure ButtonFlatClientsLoadClick(Sender: TObject);
    procedure ButtonFlatLoadOrdersClick(Sender: TObject);
    procedure ButtonFlatOrderNewClientClick(Sender: TObject);
    procedure DateTimePickerSelOrderTimeChange(Sender: TObject);
    procedure TableExHotOrdersDrawCellData(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure ButtonFlatFeedUpdateClick(Sender: TObject);
    procedure TableExHotOrdersItemClick(Sender: TObject;
      MouseButton: TMouseButton; const Index: Integer);
    procedure FormResize(Sender: TObject);
    procedure TableExFeedDrawCellData(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure ButtonFlatProdKindSaveClick(Sender: TObject);
    procedure ButtonFlatProdKindCloseClick(Sender: TObject);
    procedure TableExProdKindGetData(FCol, FRow: Integer; var Value: string);
    procedure ButtonFlatProdKindAddClick(Sender: TObject);
    procedure ButtonFlatProdKindEditClick(Sender: TObject);
    procedure ButtonFlatProdKindDelClick(Sender: TObject);
    procedure ButtonFlatProdKindLoadClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ButtonFlatProdKindClick(Sender: TObject);
    procedure ButtonFlatDBConfigClick(Sender: TObject);
    procedure ButtonFlatStorageClick(Sender: TObject);
    procedure TableExStorageGetData(FCol, FRow: Integer; var Value: string);
    procedure ButtonFlatStorageAddClick(Sender: TObject);
    procedure ButtonFlatStorageItemSaveClick(Sender: TObject);
    procedure TableExOrdersDrawCellData(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure ButtonFlatOrderSetState1Click(Sender: TObject);
    procedure ButtonFlatOrderSetState2Click(Sender: TObject);
    procedure ButtonFlatOrderSetState3Click(Sender: TObject);
    procedure ButtonFlat2Click(Sender: TObject);
    procedure TableExStorageProtocolGetData(FCol, FRow: Integer;
      var Value: string);
    procedure ButtonFlatStorageProtocolClick(Sender: TObject);
    procedure TableExDriversGetData(FCol, FRow: Integer; var Value: string);
    procedure ButtonFlatTableDriversClick(Sender: TObject);
    procedure ButtonFlatDriverSaveClick(Sender: TObject);
    procedure ButtonFlatDriverCloseClick(Sender: TObject);
    procedure ButtonFlatDriversAddClick(Sender: TObject);
    procedure ButtonFlatDriverEditClick(Sender: TObject);
    procedure ButtonFlatDriversUpdateClick(Sender: TObject);
    procedure ButtonFlatOrderNewDriverClick(Sender: TObject);
    procedure ButtonFlatStorageItemCloseClick(Sender: TObject);
    procedure ButtonFlatCurOrderProductAddClick(Sender: TObject);
    procedure ButtonFlatCurOrderProductDeleteClick(Sender: TObject);
    procedure ButtonFlatCurOrderProductClearClick(Sender: TObject);
    procedure TableExOrderProductsGetData(FCol, FRow: Integer;
      var Value: string);
    procedure ButtonFlatOrderProductNewClick(Sender: TObject);
   private
    FAppState:TAppState;
    FNotify:TNotifyPanel;
    FCurPanel:TPanel;  
    FLastPanel:TPanel;
    //Ядро БД
    FCore:TDatabaseCore;
    //Таблицы
    FClients:TTableClients;
    FAddresses:TTableAddresses;
    FOrders:TTableOrders;
    FHotOrders:TTableOrders;
    FHistory:TTableHistory;
    FProdKind:TTableProductKind;
    FStorage:TTableStorage;
    FStorageProtocol:TTableStorageProtocol;
    FDrivers:TTableDrivers;

    procedure CreateTables;
    procedure SetMenuIconColor(Color: TColor);
    procedure ShowPanel(Panel:TPanel);
    procedure SetOrderStateBottons(State:TOrderState);
    procedure OpenPage(Panel: TPanel);
    procedure UpdateFeed;
    procedure InitTables;
  public
    function AddClient:Integer;
    function EditClient:Integer;
    function DeleteClient:Integer;

    function AddOrder:Integer;
    function EditOrder:Integer; overload;
    function EditOrder(Item:TItemOrder):Integer; overload;
    function EditOrder(Item:Integer):Integer; overload;
    function DeleteOrder:Integer;

    function AddDriver: Integer;
    function EditDriver:Integer;
    function DeleteDriver:Integer;

    function AddProdKind:Integer;
    function EditProdKind:Integer;
    function DeleteProdKind:Integer;


    function AddStorage:Integer;
    function EditStorage:Integer;
    function DeleteStorage:Integer;

    function ShowInfoOk(Text:string):Boolean;
    function ShowWrongInfo(Text:string):Boolean;
    function CanIDoSmt:Boolean;
    procedure UpdateClientTable(ItemID:Integer = -1);
    procedure UpdateDriverTable(ItemID:Integer = -1);
    procedure UpdateOrderTable(ItemID:Integer = -1);
    procedure UpdateStorageProtocol(ItemID:Integer = -1);
    procedure UpdateProdKindTable(ItemID:Integer = -1);

    procedure Save;
    procedure Quit;
  end;

var
  FormMain: TFormMain;

implementation
 uses Math;

{$R *.dfm}

procedure TFormMain.Save;
begin

end;

procedure TFormMain.SetMenuIconColor(Color:TColor);
var i:Integer;
begin
 for i:= 0 to ImageList24.Count - 1 do ColorImages(ImageList24, i, Color);

 ColorImages(ImageListSmall, 8, $00005B9C);
 ColorImages(ImageListSmall, 9, $000042F7);
 ColorImages(ImageListSmall, 10, $00E3B030);
 ColorImages(ImageListSmall, 11, $0020C100);
end;

procedure TFormMain.SetOrderStateBottons(State:TOrderState);
begin
 FAppState.CurOrderState:=State;
 if ButtonFlatOrderDraft.Tag = Ord(State) then ButtonFlatOrderDraft.ColorNormal:=$00F7D791 else ButtonFlatOrderDraft.ColorNormal:=$00F7F6F2;
 if ButtonFlatOrderNormal.Tag = Ord(State) then ButtonFlatOrderNormal.ColorNormal:=$00F7D791 else ButtonFlatOrderNormal.ColorNormal:=$00F7F6F2;
 if ButtonFlatOrderDelivery.Tag = Ord(State) then ButtonFlatOrderDelivery.ColorNormal:=$00F7D791 else ButtonFlatOrderDelivery.ColorNormal:=$00F7F6F2;
 if ButtonFlatOrderDelivered.Tag = Ord(State) then ButtonFlatOrderDelivered.ColorNormal:=$00F7D791 else ButtonFlatOrderDelivered.ColorNormal:=$00F7F6F2;
end;

function TFormMain.ShowInfoOk(Text: string):Boolean;
begin
 Result:=True;
 FNotify.OK('Готово', Text);
end;

procedure TFormMain.OpenPage(Panel: TPanel);
begin
 if not CanIDoSmt then Exit;
 ShowPanel(Panel);
end;

procedure TFormMain.Quit;
begin
 Save;
 Application.Terminate;
end;

procedure TFormMain.ShowPanel(Panel: TPanel);
begin
 if not Assigned(Panel) then Exit;
 Panel.Show;
 Panel.BringToFront;
end;

function TFormMain.ShowWrongInfo(Text:string):Boolean;
begin
 Result:=True;
 FNotify.Warning('Ошибка', Text);
end;

function TFormMain.AddClient: Integer;
begin
 EditClientF.Clear;
 EditClientI.Clear;
 EditClientO.Clear;
 EditClientAddr.Clear;
 EditClientPhone1.Clear;
 EditClientPhone2.Clear;
 EditClientDateCreate.Text:='Сейчас';
 FAppState.CurClient:=TItemClient.Create(FClients);
 PanelCurClientAddr.Hide;
 LabelSelClient.Caption:='Новый клиент';

 FAppState.OpenModal;
 ShowPanel(PanelCurClient);
end;

function TFormMain.AddDriver: Integer;
begin
 EditDriverF.Clear;
 EditDriverI.Clear;
 EditDriverO.Clear;
 EditDriverPhone1.Clear;
 EditDriverPhone2.Clear;
 EditDriverDateCreate.Text:='Сейчас';
 CheckBoxDriverIsAvailable.Checked:=True;
 FAppState.CurDriver:=TItemDriver.Create(FDrivers);
 PanelDriverOrders.Hide;
 LabelCurDriver.Caption:='Новый водитель';

 FAppState.OpenModal;
 ShowPanel(PanelDriver);
end;

function TFormMain.AddOrder:Integer;
var SelIt:Integer;
begin
 FClients.FillList(ComboBoxSelOrderClient.Items, SelIt);
 ComboBoxSelOrderClient.ItemIndex:=-1;
 ComboBoxSelOrderClient.Text:='';
 FDrivers.FillList(ComboBoxSelOrderDriver.Items, SelIt);
 ComboBoxSelOrderDriver.ItemIndex:=-1;
 ComboBoxSelOrderDriver.Text:='';
 FProdKind.FillList(ComboBoxOrderProduct.Items, SelIt);
 ComboBoxOrderProduct.ItemIndex:=-1;
 ComboBoxOrderProduct.Text:='';
 DateTimePickerSelOrderDate.DateTime:=Now;
 DateTimePickerSelOrderTime.DateTime:=Now;
 ComboBoxSelOrderAddr.Clear;
 MemoSelOrderData.Clear;
 MemoSelOrderComment.Clear;

 FAppState.CurOrder:=TItemOrder.Create(FOrders);
 FAppState.CurOrder.Number:=FOrders.GetNextOrderNumber;
 FAppState.CurOrderProducts.Load(FAppState.CurOrder.Number);
 SetOrderStateBottons(FAppState.CurOrder.State);
 LabelSelectOrder.Caption:=Format('Заказ №%.5d', [FAppState.CurOrder.Number]);

 FAppState.OpenModal;
 ShowPanel(PanelOrder);
end;

function TFormMain.AddProdKind: Integer;
begin
 EditProdKindName.Clear;
 EditProdKindComment.Clear;
 ComboBoxProdKindUnit.Clear;
 ComboBoxProdKindUnit.Items.Add(ProdKindUnitsToString(pkuGramm));
 ComboBoxProdKindUnit.Items.Add(ProdKindUnitsToString(pkuUnit));
 ComboBoxProdKindUnit.ItemIndex:=Ord(pkuUnit);
 FAppState.CurProdKind:=TItemProdKind.Create(FProdKind);
 LabelSelProdKind.Caption:='Новый вид товара *';

 FAppState.OpenModal;
 ShowPanel(PanelProdKind);
end;

function TFormMain.AddStorage: Integer;
var SelIt:Integer;
begin
 FProdKind.FillList(ComboBoxStorageItemProduct.Items, SelIt);
 ComboBoxStorageItemProduct.ItemIndex:=-1;
 ComboBoxStorageItemProduct.Text:='';
 SpinEditStorageItemAmount.Value:=1;

 FAppState.CurStorageItem:=TItemStorageProtocol.Create(FStorageProtocol);

 ButtonFlatStorageItemSave.Enabled:=True;
 FAppState.OpenModal;
 ShowPanel(PanelStorageItem);
end;

procedure TFormMain.ButtonFlatOrderEditClick(Sender: TObject);
begin
 EditOrder;
end;

procedure TFormMain.ButtonFlatOrderNewClientClick(Sender: TObject);
begin
 AddClient;
end;

procedure TFormMain.ButtonFlatOrderNewDriverClick(Sender: TObject);
begin
 AddDriver;
end;

procedure TFormMain.ButtonFlatOrderProductNewClick(Sender: TObject);
begin
 AddProdKind;
end;

procedure TFormMain.ButtonFlatOrderSaveClick(Sender: TObject);
var ItemAddr:TItemAddress;
    ItemHist:TItemHistory;
begin
 if not Assigned(FAppState.CurOrder) then Exit;
 if not IndexInList(ComboBoxSelOrderClient.ItemIndex, FClients.Count) then if ShowWrongInfo('Необходимо выбрать клиента') then Exit;

 ItemHist:=TItemHistory.Create(FHistory);
 if FAppState.CurOrder.Empty then
  begin
   FOrders.Insert(0, FAppState.CurOrder);
   FAppState.CurOrder.Update;

   ItemHist.Action:=haAdd;
  end
 else ItemHist.Action:=haChange;

 FAppState.CurOrder.Client:=FClients[ComboBoxSelOrderClient.ItemIndex].ID;
 FAppState.CurOrder.ClientStr:=FClients[ComboBoxSelOrderClient.ItemIndex].ShortFIO;
 FAppState.CurOrder.Driver:=FDrivers[ComboBoxSelOrderDriver.ItemIndex].ID;
 FAppState.CurOrder.DriverStr:=FDrivers[ComboBoxSelOrderDriver.ItemIndex].ShortFIO;
 FAppState.CurOrder.Date:=DateTimePickerSelOrderDate.DateTime;
 if IndexInList(ComboBoxSelOrderAddr.ItemIndex, FAppState.FOrderAddr.Count) then
  begin
   FAppState.CurOrder.Addr:=FAppState.FOrderAddr[ComboBoxSelOrderAddr.ItemIndex].ID;
   FAppState.CurOrder.AddrStr:=FAppState.FOrderAddr[ComboBoxSelOrderAddr.ItemIndex].Text;
  end
 else
  begin
   if ComboBoxSelOrderAddr.Text = '' then
    begin
     FAppState.CurOrder.Addr:=-1;
     FAppState.CurOrder.AddrStr:='';
    end
   else
    begin
     ItemAddr:=TItemAddress.Create(FAppState.FOrderAddr);
     ItemAddr.Text:=ComboBoxSelOrderAddr.Text;
     ItemAddr.Client:=FAppState.CurOrder.Client;
     ItemAddr.Update;
     FAppState.CurOrder.Addr:=ItemAddr.ID;
     FAppState.CurOrder.AddrStr:=ItemAddr.Text;
     ItemAddr.Free;
    end;
  end;
 FAppState.CurOrder.Comment:=MemoSelOrderComment.Text;
 FAppState.CurOrder.Data:=MemoSelOrderData.Text;
 FAppState.CurOrder.State:=FAppState.CurOrderState;

 ItemHist.TableName:=TTableOrders.TableName;
 ItemHist.RecordID:=FAppState.CurOrder.ID;
 ItemHist.Date:=Now;
 ItemHist.Desc:=
  Format('Заказ №%.5d', [FAppState.CurOrder.Number])+#13#10+
  FAppState.CurOrder.AddrStr+#13#10+
  FAppState.CurOrder.ClientStr+#13#10+
  FAppState.CurOrder.Comment;
 FHistory.Insert(0, ItemHist);
 ItemHist.Update;

 FAppState.CurOrder.Update;
 UpdateOrderTable(FAppState.CurOrder.ID);
 ButtonFlatOrderSave.TimedText('Сохранено', 5000);
 ShowInfoOk('Информация о заказе сохранена');
end;

procedure TFormMain.ButtonFlatClientsAddClick(Sender: TObject);
begin
 if not CanIDoSmt then Exit;
 AddClient;
end;

procedure TFormMain.ButtonFlatClientsDelClick(Sender: TObject);
begin
 DeleteClient;
end;

procedure TFormMain.ButtonFlatClientsEditClick(Sender: TObject);
begin
 EditClient;
end;

procedure TFormMain.ButtonFlatClientSaveClick(Sender: TObject);
var ItemAddr:TItemAddress;
    ItemHist:TItemHistory;
begin
 if not Assigned(FAppState.CurClient) then Exit;
 if EditClientF.Text = '' then if ShowWrongInfo('Необходимо указать Фамилию клиента') then Exit;
 if EditClientI.Text = '' then if ShowWrongInfo('Необходимо указать Имя клиента') then Exit;

 ItemHist:=TItemHistory.Create(FHistory);
 if FAppState.CurClient.Empty then
  begin
   FClients.Insert(0, FAppState.CurClient);
   FAppState.CurClient.Update;

   ItemHist.Action:=haAdd;
  end
 else ItemHist.Action:=haChange;

 FAppState.CurClient.F:=EditClientF.Text;
 FAppState.CurClient.I:=EditClientI.Text;
 FAppState.CurClient.O:=EditClientO.Text;
 FAppState.CurClient.Phone1:=EditClientPhone1.Text;
 FAppState.CurClient.Phone2:=EditClientPhone2.Text;
 //Сменился адрес
 if FAppState.CurClient.AddrStr <> EditClientAddr.Text then
  begin
   FAppState.CurClient.AddrStr:=EditClientAddr.Text;
   if FAppState.CurClient.AddrStr <> '' then
    begin
     ItemAddr:=TItemAddress.Create(FAddresses);
     ItemAddr.Text:=FAppState.CurClient.AddrStr;
     ItemAddr.Client:=FAppState.CurClient.ID;
     ItemAddr.ID:=FAppState.CurClient.Addr;
     ItemAddr.Update;

     FAppState.CurClient.Addr:=ItemAddr.ID;
     ItemAddr.Free;
    end
   else FAppState.CurClient.Addr:=-1;
  end;

 ItemHist.TableName:=TTableClients.TableName;
 ItemHist.RecordID:=FAppState.CurClient.ID;
 ItemHist.Date:=Now;
 ItemHist.Desc:=FAppState.CurClient.FullFIO;
 FHistory.Insert(0, ItemHist);
 ItemHist.Update;

 FAppState.CurClient.Update;
 UpdateClientTable(FAppState.CurClient.ID);
 ButtonFlatClientSave.TimedText('Сохранено', 5000);
 ShowInfoOk('Информация о клиенте сохранена');
end;

procedure TFormMain.ButtonFlatClientsClick(Sender: TObject);
begin
 OpenPage(PanelTableClients);
end;

procedure TFormMain.ButtonFlatStorageAddClick(Sender: TObject);
begin
 if not CanIDoSmt then Exit;
 AddStorage;
end;

procedure TFormMain.ButtonFlatDriverEditClick(Sender: TObject);
begin
 EditDriver;
end;

procedure TFormMain.ButtonFlatDriversUpdateClick(Sender: TObject);
begin
 if not CanIDoSmt then Exit;
 FDrivers.Load;
end;

procedure TFormMain.ButtonFlat2Click(Sender: TObject);
var Pt:TPoint;
begin
 Pt:=ButtonFlatNewOrder.ClientToScreen(Point(0, 0));
 PopupMenuAdd.Popup(Pt.X, Pt.Y+ButtonFlatNewOrder.Height);
end;

procedure TFormMain.ButtonFlatClientCloseClick(Sender: TObject);
begin
 FAppState.FClientAddr.Clear;
 FAppState.FClientAddr.UnAssignTables;
 FAppState.CloseModal;
 PanelCurClient.Hide;
end;

procedure TFormMain.ButtonFlatFeedClick(Sender: TObject);
begin
 OpenPage(PanelFeed);
end;

procedure TFormMain.ButtonFlatFeedUpdateClick(Sender: TObject);
begin
 UpdateFeed;
end;

procedure TFormMain.ButtonFlatClientsLoadClick(Sender: TObject);
begin
 if not CanIDoSmt then Exit;
 FClients.Load;
end;

procedure TFormMain.ButtonFlatCurOrderProductAddClick(Sender: TObject);
var ItemInc:TItemOrderProduct;
begin
 if not IndexInList(ComboBoxOrderProduct.ItemIndex, FProdKind.Count) then
  if ShowWrongInfo('Необходимо выбрать Вид товара') then Exit;
 ItemInc:=TItemOrderProduct.Create(FAppState.CurOrderProducts);
 ItemInc.OrderNum:=FAppState.CurOrder.Number;
 ItemInc.Kind:=FProdKind[ComboBoxOrderProduct.ItemIndex].ID;
 ItemInc.KindStr:=FProdKind[ComboBoxOrderProduct.ItemIndex].Name;
 ItemInc.KindUnit:=Ord(FProdKind[ComboBoxOrderProduct.ItemIndex].ItemUnit);
 ItemInc.KindUnitStr:=FProdKind[ComboBoxOrderProduct.ItemIndex].ItemUnitStr;
 ItemInc.Amount:=SpinEditOrderProductAmount.Value;
 FAppState.CurOrderProducts.Insert(0, ItemInc);
 ItemInc.Update;
 FAppState.CurOrderProducts.UpdateTable;
 ComboBoxOrderProduct.ItemIndex:=-1;
 ComboBoxOrderProduct.Text:='';
 SpinEditOrderProductAmount.Value:=1;
end;

procedure TFormMain.ButtonFlatCurOrderProductClearClick(Sender: TObject);
var i:Integer;
begin
 while not FAppState.CurOrderProducts.Count > 0 do FAppState.CurOrderProducts.Delete(0);
end;

procedure TFormMain.ButtonFlatCurOrderProductDeleteClick(Sender: TObject);
begin
 if not IndexInList(TableExOrderProducts.ItemIndex, FAppState.CurOrderProducts.Count) then Exit;
 FAppState.CurOrderProducts.Delete(TableExOrderProducts.ItemIndex);
end;

procedure TFormMain.ButtonFlatDBConfigClick(Sender: TObject);
begin
 OpenPage(PanelDBConfig);
end;

procedure TFormMain.ButtonFlatDriverCloseClick(Sender: TObject);
begin
 FAppState.CloseModal;
 PanelDriver.Hide;
end;

procedure TFormMain.ButtonFlatDriversAddClick(Sender: TObject);
begin
 if not CanIDoSmt then Exit;
 AddDriver;
end;

procedure TFormMain.ButtonFlatDriverSaveClick(Sender: TObject);
var ItemHist:TItemHistory;
begin
 if not Assigned(FAppState.CurDriver) then Exit;
 if EditDriverF.Text = '' then if ShowWrongInfo('Необходимо указать Фамилию водителя') then Exit;
 if EditDriverI.Text = '' then if ShowWrongInfo('Необходимо указать Имя водителя') then Exit;

 ItemHist:=TItemHistory.Create(FHistory);
 if FAppState.CurDriver.Empty then
  begin
   FDrivers.Insert(0, FAppState.CurDriver);
   FAppState.CurDriver.Update;

   ItemHist.Action:=haAdd;
  end
 else ItemHist.Action:=haChange;

 FAppState.CurDriver.F:=EditDriverF.Text;
 FAppState.CurDriver.I:=EditDriverI.Text;
 FAppState.CurDriver.O:=EditDriverO.Text;
 FAppState.CurDriver.Phone1:=EditDriverPhone1.Text;
 FAppState.CurDriver.Phone2:=EditDriverPhone2.Text;
 FAppState.CurDriver.IsAvailable:=CheckBoxDriverIsAvailable.Checked;

 ItemHist.TableName:=TTableDrivers.TableName;
 ItemHist.RecordID:=FAppState.CurDriver.ID;
 ItemHist.Date:=Now;
 ItemHist.Desc:=FAppState.CurDriver.FullFIO;
 FHistory.Insert(0, ItemHist);
 ItemHist.Update;

 FAppState.CurDriver.Update;
 UpdateDriverTable(FAppState.CurDriver.ID);
 ButtonFlatDriverSave.TimedText('Сохранено', 5000);
 ShowInfoOk('Информация о водителе сохранена');
end;

procedure TFormMain.ButtonFlatLoadOrdersClick(Sender: TObject);
begin
 if not CanIDoSmt then Exit;
 FOrders.Load;
end;

procedure TFormMain.ButtonFlatOrderAddClick(Sender: TObject);
begin
 if not CanIDoSmt then Exit;
 AddOrder;
end;

procedure TFormMain.ButtonFlatOrderCloseClick(Sender: TObject);
begin
 FAppState.CloseModal;
 PanelOrder.Hide;
end;

procedure TFormMain.ButtonFlatOrderDeleteClick(Sender: TObject);
begin
 DeleteOrder;
end;

procedure TFormMain.ButtonFlatOrderDraftClick(Sender: TObject);
begin
 FAppState.CurOrderState:=TOrderState((Sender as TButtonFlat).Tag);
 SetOrderStateBottons(FAppState.CurOrderState);
end;

procedure TFormMain.ButtonFlatOrdersClick(Sender: TObject);
begin
 OpenPage(PanelTableOrders);
end;

procedure TFormMain.ButtonFlatOrderSetState1Click(Sender: TObject);
begin
 if not IndexInList(TableExOrders.ItemIndex, FOrders.Count) then Exit;
 FOrders[TableExOrders.ItemIndex].State:=osNormal;
 FOrders[TableExOrders.ItemIndex].Update;
 FNotify.Ok('Готово', 'Статус заказа изменён на "Ожидает"');
 FOrders.UpdateTable;
end;

procedure TFormMain.ButtonFlatOrderSetState2Click(Sender: TObject);
begin
 if not IndexInList(TableExOrders.ItemIndex, FOrders.Count) then Exit;
 FOrders[TableExOrders.ItemIndex].State:=osDelivery;
 FNotify.Ok('Готово', 'Статус заказа изменён на "Доставляется"');
 FOrders[TableExOrders.ItemIndex].Update;
 FOrders.UpdateTable;
end;

procedure TFormMain.ButtonFlatOrderSetState3Click(Sender: TObject);
begin
 if not IndexInList(TableExOrders.ItemIndex, FOrders.Count) then Exit;
 FOrders[TableExOrders.ItemIndex].State:=osDelivered;
 FNotify.Ok('Готово', 'Статус заказа изменён на "Доставлен"');
 FOrders[TableExOrders.ItemIndex].Update;
 FOrders.UpdateTable;
end;

procedure TFormMain.ButtonFlatProdKindAddClick(Sender: TObject);
begin
 if not CanIDoSmt then Exit;
 AddProdKind;
end;

procedure TFormMain.ButtonFlatProdKindClick(Sender: TObject);
begin
 OpenPage(PanelTableProdKind);
end;

procedure TFormMain.ButtonFlatProdKindCloseClick(Sender: TObject);
begin
 FAppState.CloseModal;
 PanelProdKind.Hide;
end;

procedure TFormMain.ButtonFlatProdKindDelClick(Sender: TObject);
begin
 DeleteProdKind;
end;

procedure TFormMain.ButtonFlatProdKindEditClick(Sender: TObject);
begin
 EditProdKind;
end;

procedure TFormMain.ButtonFlatProdKindLoadClick(Sender: TObject);
begin
 if not CanIDoSmt then Exit;
 FProdKind.Load;
end;

procedure TFormMain.ButtonFlatProdKindSaveClick(Sender: TObject);
var ItemHist:TItemHistory;
begin
 if not Assigned(FAppState.CurProdKind) then Exit;
 if EditProdKindName.Text = '' then if ShowWrongInfo('Необходимо указать наименование вида товара') then Exit;
 if ComboBoxProdKindUnit.ItemIndex < 0 then if ShowWrongInfo('Необходимо выбрать единицы измерения') then Exit;


 ItemHist:=TItemHistory.Create(FHistory);
 if FAppState.CurProdKind.Empty then
  begin
   FProdKind.Insert(0, FAppState.CurProdKind);
   FAppState.CurProdKind.Update;

   ItemHist.Action:=haAdd;
  end
 else ItemHist.Action:=haChange;

 FAppState.CurProdKind.Name:=EditProdKindName.Text;
 FAppState.CurProdKind.Comment:=EditProdKindComment.Text;
 FAppState.CurProdKind.ItemUnit:=TProdKindUnits(ComboBoxProdKindUnit.ItemIndex);

 ItemHist.TableName:=TTableProductKind.TableName;
 ItemHist.RecordID:=FAppState.CurProdKind.ID;
 ItemHist.Date:=Now;
 ItemHist.Desc:=FAppState.CurProdKind.Name;
 FHistory.Insert(0, ItemHist);
 ItemHist.Update;

 FAppState.CurProdKind.Update;
 UpdateProdKindTable(FAppState.CurProdKind.ID);
 ButtonFlatProdKindSave.TimedText('Сохранено', 5000);
 ShowInfoOk('Информация о клиенте сохранена');
end;

procedure TFormMain.ButtonFlatStorageClick(Sender: TObject);
begin
 OpenPage(PanelTableStorage);
end;

procedure TFormMain.ButtonFlatStorageItemCloseClick(Sender: TObject);
begin
 FAppState.CloseModal;
 PanelStorageItem.Hide;
end;

procedure TFormMain.ButtonFlatStorageItemSaveClick(Sender: TObject);
var ItemAddr:TItemAddress;
    ItemHist:TItemHistory;
begin
 if not Assigned(FAppState.CurStorageItem) then Exit;
 if not IndexInList(ComboBoxStorageItemProduct.ItemIndex, FProdKind.Count) then if ShowWrongInfo('Необходимо выбрать Вид товара') then Exit;

 ItemHist:=TItemHistory.Create(FHistory);
 if FAppState.CurStorageItem.Empty then
  begin
   FStorageProtocol.Insert(0, FAppState.CurStorageItem);
   ItemHist.Action:=haAdd;
  end
 else ItemHist.Action:=haChange;

 FAppState.CurStorageItem.Kind:=FProdKind[ComboBoxStorageItemProduct.ItemIndex].ID;
 case FProdKind[ComboBoxStorageItemProduct.ItemIndex].ItemUnit of
  pkuGramm:
      FAppState.CurStorageItem.Amount:=SpinEditStorageItemAmount.Value * 1000;
 else FAppState.CurStorageItem.Amount:=SpinEditStorageItemAmount.Value;
 end;

 FAppState.CurStorageItem.OperInc;
 FAppState.CurStorageItem.GetBack;

 ItemHist.TableName:=TTableStorageProtocol.TableName;
 ItemHist.RecordID:=FAppState.CurStorageItem.ID;
 ItemHist.Date:=Now;
 ItemHist.Desc:=
  FAppState.CurStorageItem.KindStr+#13#10+
  SpinEditStorageItemAmount.Value.ToString+' '+FAppState.CurStorageItem.KindUnitStr;
 FHistory.Insert(0, ItemHist);
 ItemHist.Update;

 UpdateStorageProtocol(FAppState.CurStorageItem.Kind);
 ButtonFlatStorageItemSave.TimedText('Сохранено', 5000);
 ButtonFlatStorageItemSave.Enabled:=False;
 ShowInfoOk('Склад пополнен');
end;

procedure TFormMain.ButtonFlatStorageProtocolClick(Sender: TObject);
begin
 OpenPage(PanelTableStorageProtocol);
end;

procedure TFormMain.ButtonFlatTableDriversClick(Sender: TObject);
begin
 OpenPage(PanelTableDrivers);
end;

function TFormMain.CanIDoSmt:Boolean;
begin
 Result:=FAppState.FModals <= 0;
 if not Result then
  FNotify.Warning('Внимание', 'Сначала закончите работу с формой!');
end;

procedure TFormMain.ComboBoxSelOrderClientChange(Sender: TObject);
var clID, clAddr:Integer;
begin
 if not IndexInList(ComboBoxSelOrderClient.ItemIndex, FClients.Count) then Exit;
 clID:=FClients[ComboBoxSelOrderClient.ItemIndex].ID;
 FAppState.FOrderAddr.Load(clID);
 clAddr:=FClients[ComboBoxSelOrderClient.ItemIndex].Addr;
 FAppState.FOrderAddr.FillList(ComboBoxSelOrderAddr.Items, clAddr);
 ComboBoxSelOrderAddr.ItemIndex:=clAddr;
end;

procedure TFormMain.CreateTables;
begin
 with TableExClients do
  begin
   AddColumn('', 32);
   AddColumn('Полное имя', 300);
   AddColumn('Адрес', 200);
   AddColumn('Телефон', 100);
   AddColumn('Телефон', 100);
   AddColumn('', 10);
  end;

 with TableExDrivers do
  begin
   AddColumn('', 32);
   AddColumn('Полное имя', 300);
   AddColumn('Доступность', 120);
   AddColumn('Телефон', 100);
   AddColumn('Телефон', 100);
   AddColumn('', 10);
  end;

 with TableExOrders do
  begin
   AddColumn('', 32);
   AddColumn('Номер заказа', 100);
   AddColumn('Клиент', 200);
   AddColumn('Куда', 200);
   AddColumn('Когда', 120);
   AddColumn('Информация', 100);
   AddColumn('Комментарий', 100);
   AddColumn('Дата создания', 100);
   AddColumn('', 32);
  end;

 with TableExCurClientAddrs do
  begin
   AddColumn('Адрес', 400);
   AddColumn('', 10);
  end;

 TableExHotOrders.AddColumn('', 100);

 TableExFeed.AddColumn('', 100);

 with TableExProdKind do
  begin
   AddColumn('Наименование', 200);
   AddColumn('Комментарий', 200);
   AddColumn('', 10);
  end;

 with TableExStorage do
  begin
   AddColumn('', 32);
   AddColumn('Вид товара', 200);
   AddColumn('Остатки', 200);
   AddColumn('Дата обновления', 200);
   AddColumn('', 10);
  end;

 with TableExOrderProducts do
  begin
   AddColumn('', 32);
   AddColumn('Вид товара', 200);
   AddColumn('Кол-во', 70);
   AddColumn('', 10);
  end;

 with TableExStorageProtocol do
  begin
   AddColumn('', 32);
   AddColumn('Вид товара', 250);
   AddColumn('Оборот', 100);
   AddColumn('Дата документа', 150);
   AddColumn('', 10);
  end;
end;

procedure TFormMain.DateTimePickerSelOrderTimeChange(Sender: TObject);
begin
 DateTimePickerSelOrderDate.Time:=DateTimePickerSelOrderTime.Time;
end;

function TFormMain.DeleteClient:Integer;
begin
 if not IndexInList(TableExClients.ItemIndex, FClients.Count) then Exit;
 FHistory.Add(haDelete, TTableClients.TableName, FClients[TableExClients.ItemIndex].ID, FClients[TableExClients.ItemIndex].FullFIO);
 FClients.Delete(TableExClients.ItemIndex);
 UpdateClientTable;
end;

function TFormMain.DeleteDriver: Integer;
begin
 if not IndexInList(TableExDrivers.ItemIndex, FDrivers.Count) then Exit;
 FHistory.Add(haDelete, TTableDrivers.TableName, FDrivers[TableExDrivers.ItemIndex].ID, FDrivers[TableExDrivers.ItemIndex].FullFIO);
 FDrivers.Delete(TableExDrivers.ItemIndex);
 UpdateDriverTable;
end;

function TFormMain.DeleteOrder: Integer;
begin
 if not IndexInList(TableExOrders.ItemIndex, FOrders.Count) then Exit;
 FHistory.Add(haDelete, TTableOrders.TableName, FOrders[TableExOrders.ItemIndex].ID, FOrders[TableExOrders.ItemIndex].Number.ToString);
 FOrders.Delete(TableExOrders.ItemIndex);
 UpdateOrderTable;
end;

function TFormMain.DeleteProdKind: Integer;
begin
 if not IndexInList(TableExProdKind.ItemIndex, FProdKind.Count) then Exit;
 FHistory.Add(haDelete, TTableProductKind.TableName, FProdKind[TableExProdKind.ItemIndex].ID, FProdKind[TableExProdKind.ItemIndex].Name);
 FProdKind.Delete(TableExProdKind.ItemIndex);
 UpdateProdKindTable;
end;

function TFormMain.DeleteStorage: Integer;
begin
 //
end;

function TFormMain.EditClient: Integer;
begin
 if not IndexInList(TableExClients.ItemIndex, FClients.Count) then Exit;
 FAppState.CurClient:=FClients[TableExClients.ItemIndex];
 EditClientF.Text:=FAppState.CurClient.F;
 EditClientI.Text:=FAppState.CurClient.I;
 EditClientO.Text:=FAppState.CurClient.O;
 EditClientAddr.Text:=FAppState.CurClient.AddrStr;
 EditClientPhone1.Text:=FAppState.CurClient.Phone1;
 EditClientPhone2.Text:=FAppState.CurClient.Phone2;
 EditClientDateCreate.Text:=FormatDateTime('DD.MM.YYYY HH:MM', FAppState.CurClient.DateCreate);
 FAppState.FClientAddr.Load(FAppState.CurClient.ID);
 FAppState.FClientAddr.AddTable(TableExCurClientAddrs);
 FAppState.FClientAddr.UpdateTable;
 PanelCurClientAddr.Show;

 LabelSelClient.Caption:=FAppState.CurClient.FullFIO;

 FAppState.OpenModal;
 ShowPanel(PanelCurClient);
end;

function TFormMain.EditDriver: Integer;
begin
 if not IndexInList(TableExDrivers.ItemIndex, FDrivers.Count) then Exit;
 FAppState.CurDriver:=FDrivers[TableExDrivers.ItemIndex];
 EditDriverF.Text:=FAppState.CurDriver.F;
 EditDriverI.Text:=FAppState.CurDriver.I;
 EditDriverO.Text:=FAppState.CurDriver.O;
 EditDriverPhone1.Text:=FAppState.CurDriver.Phone1;
 EditDriverPhone2.Text:=FAppState.CurDriver.Phone2;
 EditDriverDateCreate.Text:=FormatDateTime('DD.MM.YYYY HH:MM', FAppState.CurDriver.DateCreate);
 FAppState.FDriverOrders.FilterDriver:=FAppState.CurDriver.ID;
 FAppState.FDriverOrders.Load;
 FAppState.FDriverOrders.AddTable(TableExDriverOrders);
 FAppState.FDriverOrders.UpdateTable;
 PanelDriverOrders.Show;

 LabelCurDriver.Caption:=FAppState.CurDriver.FullFIO;

 FAppState.OpenModal;
 ShowPanel(PanelDriver);
end;

function TFormMain.EditOrder(Item: Integer): Integer;
var i:Integer;
begin
 Result:=-1;
 for i:= 0 to FOrders.Count-1 do
  if FOrders[i].ID = Item then Exit(EditOrder(FOrders[i]));
end;

function TFormMain.EditProdKind: Integer;
begin
 if not IndexInList(TableExProdKind.ItemIndex, FProdKind.Count) then Exit;
 FAppState.CurProdKind:=FProdKind[TableExProdKind.ItemIndex];
 EditProdKindName.Text:=FAppState.CurProdKind.Name;
 EditProdKindComment.Text:=FAppState.CurProdKind.Comment;
 ComboBoxProdKindUnit.Clear;
 ComboBoxProdKindUnit.Items.Add(ProdKindUnitsToString(pkuGramm));
 ComboBoxProdKindUnit.Items.Add(ProdKindUnitsToString(pkuUnit));
 try
  ComboBoxProdKindUnit.ItemIndex:=Ord(FAppState.CurProdKind.ItemUnit);
 except
  ComboBoxProdKindUnit.ItemIndex:=0;
 end;

 LabelSelProdKind.Caption:='Вид товара: '+FAppState.CurProdKind.Name;

 FAppState.OpenModal;
 ShowPanel(PanelProdKind);
end;

function TFormMain.EditOrder(Item: TItemOrder): Integer;
var SelIt:Integer;
begin
 if not Assigned(Item) then Exit;
 FAppState.CurOrder:=Item;

 SelIt:=FAppState.CurOrder.Client;
 ComboBoxSelOrderClient.Text:='';
 FClients.FillList(ComboBoxSelOrderClient.Items, SelIt);
 ComboBoxSelOrderClient.ItemIndex:=SelIt;

 SelIt:=FAppState.CurOrder.Driver;
 ComboBoxSelOrderDriver.Text:='';
 FDrivers.FillList(ComboBoxSelOrderDriver.Items, SelIt);
 ComboBoxSelOrderDriver.ItemIndex:=SelIt;

 SelIt:=-1;
 FProdKind.FillList(ComboBoxOrderProduct.Items, SelIt);
 ComboBoxOrderProduct.Text:='';
 ComboBoxOrderProduct.ItemIndex:=-1;

 DateTimePickerSelOrderDate.DateTime:=FAppState.CurOrder.Date;
 DateTimePickerSelOrderTime.Time:=FAppState.CurOrder.Date;
 SelIt:=FAppState.CurOrder.Addr;
 ComboBoxSelOrderAddr.Text:='';
 FAppState.FOrderAddr.Load(FAppState.CurOrder.Client);
 FAppState.FOrderAddr.FillList(ComboBoxSelOrderAddr.Items, SelIt);
 FAppState.CurOrderProducts.Load(FAppState.CurOrder.Number);
 ComboBoxSelOrderAddr.ItemIndex:=SelIt;
 MemoSelOrderData.Text:=FAppState.CurOrder.Data;
 MemoSelOrderComment.Text:=FAppState.CurOrder.Comment;
 SetOrderStateBottons(FAppState.CurOrder.State);
 LabelSelectOrder.Caption:=Format('Заказ №%.5d', [FAppState.CurOrder.Number]);

 FAppState.OpenModal;
 ShowPanel(PanelOrder);
end;

procedure TFormMain.UpdateFeed;
begin
 FHotOrders.Load;
 FHotOrders.UpdateTable;

 FHistory.Load;
 FHistory.UpdateTable;
end;

procedure TFormMain.UpdateOrderTable(ItemID: Integer);
begin
 UpdateFeed;
end;

procedure TFormMain.UpdateProdKindTable(ItemID: Integer);
begin
 //Если открыта панель пополнения, то подставляем туда нашу изменённую запись
 if PanelStorageItem.Visible then
  begin
   ComboBoxStorageItemProduct.Text:='';
   FProdKind.FillList(ComboBoxStorageItemProduct.Items, ItemID);
   ComboBoxStorageItemProduct.ItemIndex:=ItemID;
  end;
 //Если открыта панель заказов, то подставляем туда нашу изменённую запись
 if PanelOrder.Visible then
  begin
   ComboBoxOrderProduct.Text:='';
   FProdKind.FillList(ComboBoxOrderProduct.Items, ItemID);
   ComboBoxOrderProduct.ItemIndex:=ItemID;
  end;
end;

procedure TFormMain.UpdateStorageProtocol(ItemID: Integer);
begin
 FStorage.Load;
 UpdateFeed;
end;

function TFormMain.EditOrder: Integer;
begin
 if not IndexInList(TableExOrders.ItemIndex, FOrders.Count) then Exit;
 EditOrder(FOrders[TableExOrders.ItemIndex]);
end;

procedure TFormMain.EditSearchEnter(Sender: TObject);
begin
 if EditSearch.Text = 'искать клиента, заказ, прочее...' then EditSearch.Text:='';
end;

procedure TFormMain.EditSearchExit(Sender: TObject);
begin
 if EditSearch.Text = '' then EditSearch.Text:='искать клиента, заказ, прочее...';
end;

function TFormMain.EditStorage: Integer;
begin

end;

procedure TFormMain.InitTables;
begin
 //Таблица клиентов
 FClients:=TTableClients.Create(FCore);
 FClients.AddTable(TableExClients);
 FClients.Load;
 FClients.UpdateTable;
 //Таблица адресов (всех)
 FAddresses:=TTableAddresses.Create(FCore);
 FAddresses.Load;
 FAddresses.UpdateTable;
 //Таблица заказов
 FOrders:=TTableOrders.Create(FCore);
 FOrders.AddTable(TableExOrders);
 FOrders.Load;
 FOrders.UpdateTable;
 //Таблица ближайших заказов
 FHotOrders:=TTableOrders.Create(FCore);
 FHotOrders.AddTable(TableExHotOrders);
 FHotOrders.Filter:=osNormal;
 FHotOrders.HideOldRecord:=True;
 FHotOrders.UseFilter:=True;
 FHotOrders.LoadOrderBy:=TTableOrders.fnDate;
 FHotOrders.LoadOrderByDESC:=False;
 //История действий (лента)
 FHistory:=TTableHistory.Create(FCore);
 FHistory.AddTable(TableExFeed);
 FHistory.Load;
 FHistory.UpdateTable;
 //Таблица видов товаров
 FProdKind:=TTableProductKind.Create(FCore);
 FProdKind.AddTable(TableExProdKind);
 FProdKind.Load;
 FProdKind.UpdateTable;
 //Таблицы для редактирования
 FAppState.FClientAddr:=TTableAddresses.Create(FCore);
 FAppState.FOrderAddr:=TTableAddresses.Create(FCore);
 FAppState.FDriverOrders:=TTableOrders.Create(FCore);
 FAppState.CurOrderProducts:=TTableOrderProducts.Create(FCore);
 FAppState.CurOrderProducts.AddTable(TableExOrderProducts);

 //Таблица товаров заказа
 //FOrderProducts:=TTableOrderProducts.Create(FCore);
 //FOrderProducts.Load;

 //Таблица остатков товаров (склад)
 FStorage:=TTableStorage.Create(FCore);
 FStorage.AddTable(TableExStorage);
 FStorage.Load;
 FStorage.UpdateTable;

 //Таблица пополения и списания склада
 FStorageProtocol:=TTableStorageProtocol.Create(FCore);
 FStorageProtocol.AddTable(TableExStorageProtocol);
 FStorageProtocol.Load;
 FStorageProtocol.UpdateTable;

 //Таблица пополения и списания склада
 FDrivers:=TTableDrivers.Create(FCore);
 FDrivers.AddTable(TableExDrivers);
 FDrivers.Load;
 FDrivers.UpdateTable;
end;

procedure TFormMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 CanClose:=False;
 Quit;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
 //Система уведомлений
 FNotify:=TNotifyPanel.Create(Self);
 FNotify.Bottom:=10;
 FNotify.Right:=10;
 FNotify.Color:=$00F2F2F2;
 FNotify.FontCaption.Color:=$00888888;
 FNotify.FontText.Color:=$00888888;
 //Инициализация БД
 FCore:=TDatabaseCore.Create(ExtractFilePath(Application.ExeName)+'data.db');
 if not FCore.Work then Application.Terminate;
 //Создание таблиц для работы
 InitTables;
 //Визуальное наполнение и настройка таблиц
 CreateTables;
 SetMenuIconColor($00D7D2CB);
 TimerTimeTimer(nil);
 //
 UpdateFeed;
 ShowPanel(PanelFeed);
end;

procedure TFormMain.FormResize(Sender: TObject);
begin
 FNotify.UpdateGlobalSize;
end;

procedure TFormMain.TableExAddrGetData(FCol, FRow: Integer; var Value: string);
begin
 Value:='';
 if not IndexInList(FRow, FAddresses.Count) then Exit;
 case FCol of
  1:Value:=FAddresses[FRow].Text
 else Value:='';
 end;
end;

procedure TFormMain.TableExClientsGetData(FCol, FRow: Integer; var Value: string);
begin
 Value:='';
 if not IndexInList(FRow, FClients.Count) then Exit;
 case FCol of
  0:if FClients[FRow].Modifed then Value:='*' else Value:='';
  1:Value:=FClients[FRow].FullFIO;
  2:Value:=FClients[FRow].AddrStr;
  3:Value:=FClients[FRow].Phone1;
  4:Value:=FClients[FRow].Phone2;
 else Value:='';
 end;
end;

procedure TFormMain.TableExCurClientAddrsGetData(FCol, FRow: Integer; var Value: string);
begin
 Value:='';
 if not Assigned(FAppState.FClientAddr) then
  begin
   TableExCurClientAddrs.ItemCount:=0;
   Exit;
  end;
 if not IndexInList(FRow, FAppState.FClientAddr.Count) then Exit;
 case FCol of
  0:Value:=FAppState.FClientAddr[FRow].Text;
 end;
end;

procedure TFormMain.TableExDriversGetData(FCol, FRow: Integer; var Value: string);
begin
 Value:='';
 if not IndexInList(FRow, FDrivers.Count) then Exit;
 case FCol of
  0:if FDrivers[FRow].Modifed then Value:='*' else Value:='';
  1:Value:=FDrivers[FRow].FullFIO;
  2:Value:=FDrivers[FRow].IsAvailableStr;
  3:Value:=FDrivers[FRow].Phone1;
  4:Value:=FDrivers[FRow].Phone2;
 else Value:='';
 end;
end;

function HistoryActionToString(Value:THistoryAction):String;
begin
 case Value of
  haAdd: Exit('Добавление');
  haChange: Exit('Изменение');
  haDelete: Exit('Удаление');
 end;
end;

function TableNameToString(Value:string):string;
begin
 if Value = TTableOrders.TableName then Exit('заказ');
 if Value = TTableAddresses.TableName then Exit('адрес');
 if Value = TTableClients.TableName then Exit('клиент');
 if Value = TTableProductKind.TableName then Exit('вид товара');
 if Value = TTableStorageProtocol.TableName then Exit('склад');
end;

procedure TFormMain.TableExFeedDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var TxtRect:TRect;
    AH, AW, TW:Integer;
    Str:string;
begin
 if not IndexInList(ARow, FHistory.Count) then Exit;
 if (FHistory[ARow].TableName = TTableOrders.TableName) then
  begin
   if TableExFeed.RowHeights[ARow] <> 100 then
    begin
     TableExFeed.RowHeights[ARow]:=100;
     Exit;
    end;
  end
 else
 if (FHistory[ARow].TableName = TTableStorageProtocol.TableName) then
  begin
   if TableExFeed.RowHeights[ARow] <> 70 then
    begin
     TableExFeed.RowHeights[ARow]:=70;
     Exit;
    end;
  end
 else
  begin
   if TableExFeed.RowHeights[ARow] <> 50 then
    begin
     TableExFeed.RowHeights[ARow]:=50;
     Exit;
    end;
  end;
 with TableExFeed.Canvas do
  begin
   Lock;
   try
    Brush.Color:=clWhite;
    Brush.Style:=bsSolid;
    FillRect(Rect);
    TxtRect:=Rect;
    TxtRect.Inflate(-5, -5);
    if TableExFeed.CordHot.Y = ARow then Brush.Color:=$00FEF8F2;
    Brush.Style:=bsSolid;
    Pen.Style:=psClear;
    RoundRect(TxtRect, 10, 10);
    TxtRect.Inflate(-10, -10);

    Brush.Style:=bsClear;
    //AH:=TxtRect.Height;
    //TxtRect.Height:=30;                               //+' '+TableNameToString(FHistory[ARow].TableName)+' '+FHistory[ARow].Desc;
    Font.Size:=10;
    case FHistory[ARow].Action of
     haAdd: Font.Color:=$00A16C29; //Синий
     haChange: Font.Color:=$00A16C29; //Синий
     haDelete: Font.Color:=$002530AD; //Синий
    end;
    Font.Style:=[fsBold];
    if FHistory[ARow].TableName = TTableStorageProtocol.TableName then
     begin
      case FHistory[ARow].Action of
       haAdd:Str:='Пополнение';
       haDelete:Str:='Списание';
      else Str:='';
      end;
     end
    else Str:=HistoryActionToString(FHistory[ARow].Action);
    AW:=TextWidth(Str);
    TextOut(TxtRect.Left, TxtRect.Top, Str);

    Font.Color:=$006D6A6C; //Серый
    Font.Style:=[fsBold];
    Font.Size:=15;
    Str:='›';
    Inc(AW, 3);
    TextOut(TxtRect.Left+AW, TxtRect.Top-5, Str);
    Inc(AW, TextWidth(Str));

    Font.Color:=$00318D5E; //Зелёный
    Font.Style:=[fsBold];
    Font.Size:=10;
    Str:=TableNameToString(FHistory[ARow].TableName)+':';
    Inc(AW, 3);
    TextOut(TxtRect.Left+AW, TxtRect.Top, Str);
    Inc(AW, TextWidth(Str));

    Font.Color:=$006D6A6C; //Серый
    Font.Style:=[];
    Font.Size:=10;
    Str:=FormatDateTime('DD.MM.YYYY HH:MM', FHistory[ARow].Date);
    TW:=TextWidth(Str);
    TextOut(TxtRect.Right-TW-5, TxtRect.Top, Str);

    if (FHistory[ARow].TableName = TTableOrders.TableName) or
       (FHistory[ARow].TableName = TTableStorageProtocol.TableName)
    then
     begin
      TxtRect.Offset(AW+3, 0);
      TxtRect.Width:=TxtRect.Width-(AW+3);
      Font.Color:=$006D6A6C; //Серый
      Font.Style:=[];
      Font.Size:=10;
      Str:=FHistory[ARow].Desc;
      TextRect(TxtRect, Str, [tfWordBreak]);
     end
    else
     begin
      Font.Color:=$006D6A6C; //Серый
      Font.Style:=[];
      Font.Size:=10;
      Str:=FHistory[ARow].Desc;
      Inc(AW, 3);
      TextOut(TxtRect.Left+AW, TxtRect.Top, Str);
     end;

   finally
    Unlock;
   end;
  end;
end;

procedure TFormMain.TableExHotOrdersDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var TxtRect:TRect;
    AH:Integer;
    Str:string;
begin
 if not IndexInList(ARow, FHotOrders.Count) then
  begin
   if ACol <> 0 then Exit;
   with TableExHotOrders.Canvas do
    begin
     Brush.Color:=clWhite;
     Brush.Style:=bsSolid;
     FillRect(Rect);
     Font.Color:=clGray;
     Font.Style:=[fsBold];
     TxtRect:=Rect;
     TxtRect.Inflate(-5, -5);
     Brush.Color:=$00F7F6F2;
     Brush.Style:=bsSolid;
     Pen.Style:=psClear;
     RoundRect(TxtRect, 10, 10);
     TxtRect.Inflate(-10, -10);

     Brush.Style:=bsClear;
     Str:='Нет заказов';
     TextRect(TxtRect, Str, [tfVerticalCenter, tfSingleLine, tfCenter]);
    end;
   Exit;
  end;
 if ACol <> 0 then Exit;
 with TableExHotOrders.Canvas do
  begin
   Brush.Color:=clWhite;
   Brush.Style:=bsSolid;
   FillRect(Rect);
   Font.Color:=$00A46326;
   Font.Style:=[fsUnderline, fsBold];
   TxtRect:=Rect;
   TxtRect.Inflate(-5, -5);
   if TableExHotOrders.CordHot.Y = ARow then Brush.Color:=$00FAE6CE
   else Brush.Color:=$00F7F6F2;
   Brush.Style:=bsSolid;
   Pen.Style:=psClear;
   RoundRect(TxtRect, 10, 10);
   TxtRect.Inflate(-10, -10);

   Brush.Style:=bsClear;
   AH:=TxtRect.Height;
   TxtRect.Height:=30;
   Str:=Format('Заказ №%.5d', [FHotOrders[ARow].Number]);
   TextRect(TxtRect, Str, []);

   TxtRect.Offset(0, 20);
   Font.Color:=$00241DA4;
   Font.Style:=[];
   Str:=FormatDateTime('DD.MM.YYYY HH:MM', FHotOrders[ARow].Date);
   TextRect(TxtRect, Str, []);

   Font.Color:=$00908F91;
   Font.Style:=[];
   Str:=FHotOrders[ARow].ClientStr;
   TextRect(TxtRect, Str, [tfRight]);

   TxtRect.Offset(0, 20);
   TxtRect.Height:=AH - 40;
   Font.Color:=ColorLighter(clBlack, 20);
   Font.Style:=[];
   Str:=FHotOrders[ARow].Data;
   TextRect(TxtRect, Str, [tfWordBreak]);
  end;
end;

procedure TFormMain.TableExHotOrdersItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
begin
 if not IndexInList(Index, FHotOrders.Count) then Exit;
 if MouseButton = mbLeft then
  begin
   EditOrder(FHotOrders[Index].ID);
  end;
end;

procedure TFormMain.TableExOrderProductsGetData(FCol, FRow: Integer;
  var Value: string);
begin
 Value:='';
 if not IndexInList(FRow, FAppState.CurOrderProducts.Count) then Exit;
 case FCol of
  0:if FAppState.CurOrderProducts[FRow].Modifed then Value:='*' else Value:='';
  1:Value:=FAppState.CurOrderProducts[FRow].KindStr;
  2:case TProdKindUnits(FAppState.CurOrderProducts[FRow].KindUnit) of
     pkuUnit:  Value:=Format('%d %s', [FAppState.CurOrderProducts[FRow].Amount, FAppState.CurOrderProducts[FRow].KindUnitStr]);
     pkuGramm: Value:=Format('%f %s', [FAppState.CurOrderProducts[FRow].Amount / 1000, 'кг']);
    end;
 else Value:='';
 end;
end;

procedure TFormMain.TableExOrdersDrawCellData(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
 if not IndexInList(ARow, FOrders.Count) then Exit;
 if ACol <> 8 then Exit;
 ImageListSmall.Draw(TableExOrders.Canvas, Rect.Left+2, Rect.Top+Rect.Height div 2 - 24 div 2, 8+Ord(FOrders[ARow].State));
end;

procedure TFormMain.TableExOrdersGetData(FCol, FRow: Integer; var Value: string);
begin
 Value:='';
 if not IndexInList(FRow, FOrders.Count) then Exit;
 case FCol of
  0:if FOrders[FRow].Modifed then Value:='*' else Value:='';
  1:Value:=Format('%.5d', [FOrders[FRow].Number]);
  2:Value:=FOrders[FRow].ClientStr;
  3:Value:=FOrders[FRow].AddrStr;
  4:Value:=FormatDateTime('DD.MM.YYYY HH:MM', FOrders[FRow].Date);
  5:Value:=FOrders[FRow].Data;
  6:Value:=FOrders[FRow].Comment;
  7:Value:=FormatDateTime('DD.MM.YYYY HH:MM', FOrders[FRow].DateCreate);
 else Value:='';
 end;
end;

procedure TFormMain.TableExProdKindGetData(FCol, FRow: Integer; var Value: string);
begin
 Value:='';
 if not IndexInList(FRow, FProdKind.Count) then Exit;
 case FCol of
  0:Value:=FProdKind[FRow].Name;
  1:Value:=FProdKind[FRow].Comment;
  2:Value:=FProdKind[FRow].ItemUnitStr;
 else Value:='';
 end;
end;

procedure TFormMain.TableExStorageGetData(FCol, FRow: Integer;
  var Value: string);
begin
 Value:='';
 if not IndexInList(FRow, FStorage.Count) then Exit;
 case FCol of
  0:if FStorage[FRow].Modifed then Value:='*' else Value:='';
  1:Value:=FStorage[FRow].KindStr;
  2:case TProdKindUnits(FStorage[FRow].KindUnit) of
     pkuUnit:  Value:=Format('%d %s', [FStorage[FRow].Amount, FStorage[FRow].KindUnitStr]);
     pkuGramm: Value:=Format('%f %s', [FStorage[FRow].Amount / 1000, 'кг']);
    end;
  3:Value:=FormatDateTime('DD.MM.YYYY HH:MM', FStorage[FRow].DateUpdate);
 else Value:='';
 end;
end;

procedure TFormMain.TableExStorageProtocolGetData(FCol, FRow: Integer; var Value: string);
var Str:string;
begin
 Value:='';
 if not IndexInList(FRow, FStorageProtocol.Count) then Exit;
 case FCol of
  0:if FStorageProtocol[FRow].Modifed then Value:='*' else Value:='';
  1:Value:=FStorageProtocol[FRow].KindStr;
  2:begin
     case FStorageProtocol[FRow].Operation of
      soDec:Str:='-';
      soInc:Str:='+';
     end;
     case TProdKindUnits(FStorageProtocol[FRow].KindUnit) of
      pkuUnit:  Value:=Format('%s%d %s', [Str, FStorageProtocol[FRow].Amount, FStorageProtocol[FRow].KindUnitStr]);
      pkuGramm: Value:=Format('%s%f %s', [Str, FStorageProtocol[FRow].Amount / 1000, 'кг']);
     end;
    end;
  3:Value:=FormatDateTime('DD.MM.YYYY HH:MM', FStorageProtocol[FRow].DateCreate);
 else Value:='';
 end;
end;

procedure TFormMain.TimerTimeTimer(Sender: TObject);
begin
 LabelTime.Caption:=FormatDateTime('HH:MM', Now);
 LabelDate.Caption:=FormatDateTime('DD.MM.YYYY'#13#10'DDD', Now);
end;

procedure TFormMain.UpdateClientTable;
begin
 //Если открыта панель заказов, то подставляем туда нашу изменённую запись
 if PanelOrder.Visible then
  begin
   ComboBoxSelOrderClient.Text:='';
   FClients.FillList(ComboBoxSelOrderClient.Items, ItemID);
   ComboBoxSelOrderClient.ItemIndex:=ItemID;
   ComboBoxSelOrderClientChange(nil);
  end;
end;

procedure TFormMain.UpdateDriverTable(ItemID: Integer);
begin
 //Если открыта панель заказов, то подставляем туда нашу изменённую запись
 if PanelOrder.Visible then
  begin
   ComboBoxSelOrderDriver.Text:='';
   FDrivers.FillList(ComboBoxSelOrderDriver.Items, ItemID);
   ComboBoxSelOrderDriver.ItemIndex:=ItemID;
  end;
end;

{ TAppState }

procedure TAppState.CloseModal;
begin
 Dec(FModals);
 FModals:=Max(0, FModals);
end;

procedure TAppState.OpenModal;
begin
 Inc(FModals);
end;

end.
