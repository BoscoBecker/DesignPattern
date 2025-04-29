unit InvestorNotifier;

interface

uses  BitcoinPriceObserver, DateUtils, SysUtils;

type
  TInvestorNotifier = class(TInterfacedObject, IBitcoinPriceObserver)
    procedure update(price : Currency);
  end;

implementation

procedure TInvestorNotifier.update(price: Currency);
begin
  Writeln('Notified to : joao.jbosco@gmail.com, the price change upn 10 % ' +
                                          now().ToString() + Price.ToString());
end;

end.
