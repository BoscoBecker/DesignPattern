unit BitcoinPriceLogger;

interface

uses  BitcoinPriceObserver, DateUtils, SysUtils;

type
  TBitcoinPriceLogger = class(TInterfacedObject, IBitcoinPriceObserver)
    procedure update(price : Currency);
  end;


implementation


procedure TBitcoinPriceLogger.update(price: Currency);
begin
  Writeln('Updating now: ' + now().ToString() + Price.ToString() );
end;

end.
