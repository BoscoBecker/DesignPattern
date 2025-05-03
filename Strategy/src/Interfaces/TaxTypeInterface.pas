unit TaxTypeInterface;

interface

type
  ITaxTypeInterface = interface
  ['{7E977034-DB84-41CF-903D-4060B5C438B6}']
    function calculate(const amount: Currency): Currency;
  end;


implementation

end.
