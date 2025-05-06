unit OrderTypes;

interface

type
  TOrder = class; // forward
  IStateOrder = interface
    procedure prepare(const order: TOrder);
    procedure startDelivery(const order: TOrder);
    procedure endDelivery(const order: TOrder);
  end;

implementation

end.

