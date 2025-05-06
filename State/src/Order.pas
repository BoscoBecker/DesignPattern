unit Order;

interface

uses StateOrder;

type
  TOrder = class(TInterfacedObject, IOrder)
  private
    State: IStateOrder;
    procedure SetState(AState: IStateOrder);
  public
    constructor Create(AState: IStateOrder);
    procedure prepare();
    procedure startDelivery();
    procedure endDelivery();
  end;

implementation

uses System.SysUtils;

constructor TOrder.Create(AState: IStateOrder);
begin
  writeln(Format('initializing order.... %s',[TObject(AState).ClassName]));
  Sleep(1000);  /// Simulate Process
  inherited Create;
   State := AState;
end;

procedure TOrder.EndDelivery;
begin
  State.EndDelivery(Self);
end;

procedure TOrder.SetState(AState: IStateOrder);
begin
  writeln(Format('Changing of state.... %s',[TObject(AState).ClassName]));
  Sleep(1000); /// Simulate Process
  State := AState;
end;

procedure TOrder.prepare();
begin
  State.Prepare(Self);
end;

procedure TOrder.startDelivery();
begin
  State.StartDelivery(Self);
end;



end.
