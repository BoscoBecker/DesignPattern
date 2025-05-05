program FacadePattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.Json,
  System.SysUtils,
  OrderController in 'Controller\OrderController.pas',
  Order in 'Facade\Order.pas',
  Notifier in 'Service\Notifier.pas',
  PaymentProcessor in 'Service\PaymentProcessor.pas',
  InventorManager in 'Service\InventorManager.pas',
  ShippingService in 'Service\ShippingService.pas';
begin
  ReportMemoryLeaksOnShutdown:= True;
  var orderDetails := TJSONObject.Create;
  var order:= TOrderFacade.Create();
  try
    try
      orderDetails.AddPair('amount', TJSONNumber.Create(123.45));
      orderDetails.AddPair('email', 'cliente@exemplo.com');
      orderDetails.AddPair('productId',178);
      orderDetails.AddPair('quantity', TJSONNumber.Create(2));
      order.processOrder(orderDetails);
      Readln;
    except
      on E: Exception do Writeln(E.ClassName, ': ', E.Message);
    end;
  finally
    OrderDetails.Free;
    order.Free;
  end;
end.
