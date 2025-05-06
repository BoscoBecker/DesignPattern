unit StartDelivery;

interface

uses Order, StateOrder, EndDelivery;

type
  TStartDelivery = class(TInterfacedObject, IStateOrder)
    procedure prepare(const order: IOrder);
    procedure startDelivery(const order: IOrder);
    procedure endDelivery(const order: IOrder);
  end;

implementation

Uses System.SysUtils;


procedure TStartDelivery.prepare(const order: IOrder);
begin
  Raise Exception.Create('The order is already being sent to the customer')
end;

procedure TStartDelivery.startDelivery(const order: IOrder);
begin
  Raise Exception.Create('The order is already being sent to the customer')
end;

procedure TStartDelivery.endDelivery(const order: IOrder);
begin
  order.SetState(TEndDelivery.Create());
end;

end.

