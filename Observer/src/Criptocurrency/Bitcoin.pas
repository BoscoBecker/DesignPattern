unit Bitcoin;

interface

uses System.Generics.Collections, BitcoinPriceObserver;

type
  TBitcoin = class
    private
      FPrice : Currency;
      Observers : TArray<IBitcoinPriceObserver>;
      function getPrice: Currency;
      procedure NotifyObserver;
    public
      procedure SetPrice(const Value: Currency);
      procedure AddObservers(observer :  IBitcoinPriceObserver);
      property Price: Currency read getPrice write setPrice;
      Constructor Create;
  end;

implementation

procedure TBitcoin.AddObservers(observer: IBitcoinPriceObserver);
begin
  SetLength(Observers, Length(Observers) + 1);
  Observers[High(Observers)]:= Observer;
end;

constructor TBitcoin.Create;
begin
  SetPrice(0);
  SetLength(Observers, 0);
 end;

procedure TBitcoin.SetPrice(const Value: Currency);
begin
  if not(value = Fprice) then
  begin
    FPrice := Value;
    NotifyObserver;
  end;
end;

function TBitcoin.getPrice: Currency;
begin
  result:= FPrice;
end;

procedure TBitcoin.NotifyObserver;
begin
  for var observe in Observers do
    observe.update(Price);
end;

end.
