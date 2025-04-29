unit BinanceAPI;

interface

/// Simulate de API rest, bitcoin price

type
  TBinanceAPI = class
    public
      function getLastPrice : currency;
  end;

implementation

function TBinanceAPI.getLastPrice: currency;
begin
  Randomize();
  result:= Random(999999);
end;

end.
