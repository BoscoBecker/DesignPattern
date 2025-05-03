unit IPI;

interface

uses TaxTypeInterface;

type
  TIPI = class(TInterfacedObject, ITaxTypeInterface)
   public function calculate(const amount: Currency): Currency;
  end;

implementation

function TIPI.calculate(const amount: Currency): Currency;
begin
  result:= (amount * 15) /100 ;
end;

end.

