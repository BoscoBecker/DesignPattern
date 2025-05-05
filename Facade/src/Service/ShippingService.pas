unit ShippingService;

interface

type
  TShippingService = class
    public procedure initiateShipping(const orderDetail: string);
  end;

implementation

Uses System.SysUtils;

procedure TShippingService.initiateShipping(const orderDetail: string);
begin
  write('Order :');
  writeLn(orderDetail);
end;

end.
