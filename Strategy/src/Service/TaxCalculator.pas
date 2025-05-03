unit TaxCalculator;

interface

uses TaxTypeInterface;

type
  TTaxCalculator = class
    private
      taxType: ITaxTypeInterface;
    public
      function setTaxType(valuetaxType: ITaxTypeInterface): ITaxTypeInterface ;
      function calculate(const amount: Currency): Currency;
  end;

implementation

function TTaxCalculator.calculate(const amount: Currency): Currency;
begin
  result:= taxType.calculate(amount);
end;

function TTaxCalculator.setTaxType(valuetaxType: ITaxTypeInterface): ITaxTypeInterface;
begin
  taxType:= valuetaxType;
  result:= taxType;
end;


end.
