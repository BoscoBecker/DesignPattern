unit Realized;

interface

uses Order, Preparing, StateOrder;

type
  TRealized = class(TInterfacedObject, IStateOrder)
    procedure prepare(const order: IOrder);
    procedure startDelivery(const order: IOrder);
    procedure endDelivery(const order: IOrder);
  end;

implementation

uses System.SysUtils;

procedure TRealized.prepare(const order: IOrder);
begin
  order.SetState(TPreparing.Create());
end;

procedure TRealized.startDelivery(const order: IOrder);
begin
  Raise Exception.Create('The Order are preparing yet.');
end;

procedure TRealized.endDelivery(const order: IOrder);
begin
  Raise Exception.Create('The Order are preparing yet.');
end;

end.
