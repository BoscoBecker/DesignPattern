unit Order;

interface

uses System.JSON, System.Generics.Collections, PaymentProcessor,Notifier,InventorManager,ShippingService;

type
  TOrderFacade = class
    private
      paymentProcessor: TpaymentProcessor;
      notifier: Tnotifier;
      inventorManager: TInventorManager;
      shippingService: TShippingService;
    public
      Constructor Create;
      procedure processOrder(const order: TJSONObject);
  end;

implementation

Constructor TOrderFacade.Create;
begin
  paymentProcessor:= TpaymentProcessor.Create;
  notifier:= Tnotifier.Create;
  inventorManager:= TInventorManager.Create;
  shippingService:= TShippingService.Create;
end;

/// Simulate call API here
///#Route('/api/order', name: 'order', methods: ['POST'])
procedure TOrderFacade.processOrder(const order: TJSONObject);
begin
  paymentProcessor.processPayment(order.GetValue<string>('amount'));
  notifier.sendConfirmation(order.GetValue<string>('email'));
  inventorManager.updateStock(order.GetValue<Int64>('productId'),order.GetValue<Integer>('quantity'));
  shippingService.initiateShipping(order.ToJSON);

end;

end.
