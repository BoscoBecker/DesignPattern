unit ISS;

interface

uses TaxTypeInterface;

type
  TISS = class(TInterfacedObject, ITaxTypeInterface)
   public function calculate(const amount: Currency): Currency;
  end;

implementation

function TISS.calculate(const amount: Currency): Currency;
begin
  result:= (amount * 11) /100 ;
end;

end.
