program ObserverPattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Bitcoin in 'Criptocurrency\Bitcoin.pas',
  BinanceAPI in 'Criptocurrency\BinanceAPI.pas',
  BitcoinPriceLogger in 'Service\BitcoinPriceLogger.pas',
  InvestorNotifier in 'Service\InvestorNotifier.pas',
  NewsPlatform in 'Service\NewsPlatform.pas',
  BitcoinPriceObserver in 'Interfaces\BitcoinPriceObserver.pas';

begin
  ReportMemoryLeaksOnShutdown:= true;
  try
    var bitcoin:= TBitcoin.Create;
    var binanceAPI:= TBinanceAPI.Create;
    var newPrice:= binanceAPI.getLastPrice();
    try
      bitcoin.AddObservers(TBitcoinPriceLogger.Create());
      bitcoin.AddObservers(TInvestorNotifier.Create());
      bitcoin.AddObservers(TNewsPlatform.Create());
      bitcoin.SetPrice(newPrice);
      Writeln(bitcoin.Price);
    finally
      bitcoin.Free;
      BinanceAPI.Free;
    end;
  except
    on E: Exception do Writeln(E.ClassName, ': ', E.Message);
  end;
end.
