unit ICMS;

interface

uses TaxTypeInterface;

type
  TICMS = class(TInterfacedObject, ITaxTypeInterface)
   public
    function calculate(const amount: Currency): Currency;
  end;

implementation

function TICMS.calculate(const amount: Currency): Currency;
begin
  result:= (amount * 4) / 100;
end;


end.
