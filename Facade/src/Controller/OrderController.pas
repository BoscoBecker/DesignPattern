unit OrderController;

interface

uses System.JSON, Order;

type
  TOrderController = class
    private
      orderFacade: TOrderFacade;
    public
      function New(const body: TJSONObject): string;
      Constructor Create;
  end;

implementation

constructor TOrderController.Create;
begin
  if orderFacade = nil then
    orderFacade:= TOrderFacade.Create();
end;

/// Simulate call API here
///#Route('/api/order', name: 'order', methods: ['POST'])
function TOrderController.New(const body: TJSONObject): string;
begin
  var orderDetails:= body;
  orderFacade.processOrder(orderDetails);
  result:= '{ "message": "request successfully placed" }';
end;

end.
