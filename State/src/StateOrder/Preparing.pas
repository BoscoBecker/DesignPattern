unit Preparing;

interface

uses Order, StateOrder, StartDelivery;

type
  TPreparing = class(TInterfacedObject, IStateOrder)
    procedure prepare(const order: IOrder);
    procedure startDelivery(const order: IOrder);
    procedure endDelivery(const order: IOrder);
  end;

implementation

Uses System.SysUtils;

procedure TPreparing.endDelivery(const order: IOrder);
begin
  Raise Exception.Create('The Order is already being prepared')
end;

procedure TPreparing.prepare(const order: IOrder);
begin
  Raise Exception.Create('The Order is already being prepared')
end;

procedure TPreparing.startDelivery(const order: IOrder);
begin
  order.SetState(TStartDelivery.Create());
end;

end.

