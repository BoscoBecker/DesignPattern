unit StateOrder;

interface

type
  IStateOrder= interface;
  IOrder = interface
    procedure SetState(AState: IStateOrder);
    procedure prepare();
    procedure startDelivery();
    procedure endDelivery();
  end;


  IStateOrder = interface
  ['{CB6C8DD9-C33C-470B-BB3F-07BF3C297F9F}']
    procedure prepare(const order: IOrder);
    procedure startDelivery(const order: IOrder);
    procedure endDelivery(const order: IOrder);
  end;

implementation

end.
