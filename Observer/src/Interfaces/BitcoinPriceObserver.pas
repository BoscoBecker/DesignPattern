unit BitcoinPriceObserver;

interface

type
  IBitcoinPriceObserver = interface
    ['{5C6E07CA-1DB3-4E44-A029-CBD294B63807}']
    procedure update(price : Currency);
  end;


implementation

end.
