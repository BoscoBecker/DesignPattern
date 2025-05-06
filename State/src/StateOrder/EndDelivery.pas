unit EndDelivery;

interface

uses Order, StateOrder;

type
  TEndDelivery = class(TInterfacedObject, IStateOrder)
    procedure prepare(const order: IOrder);
    procedure startDelivery(const order: IOrder);
    procedure endDelivery(const order: IOrder);
  end;

implementation

Uses System.SysUtils;

procedure TEndDelivery.endDelivery(const order: IOrder);
begin
  Raise Exception.Create('The Order has been delivered');
end;

procedure TEndDelivery.prepare(const order: IOrder);
begin
  Raise Exception.Create('The Order has been delivered');
end;

procedure TEndDelivery.startDelivery(const order: IOrder);
begin
  Raise Exception.Create('The Order has been delivered');
end;

end.

