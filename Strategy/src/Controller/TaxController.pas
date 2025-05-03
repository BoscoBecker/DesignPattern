unit TaxController;

interface

uses TaxCalculator, ICMS, ISS, IPI, System.SysUtils;

type
  TTaxController = class
    private
      _taxCalculator: TTaxCalculator;
    public
      function calculate(request: string; amount: currency): String;
      Constructor Create(taxCalculator: TTaxCalculator);
end;

implementation

uses System.Generics.Collections;

/// Simulate End point here
//#[Route('/tax/calculate',name: 'tax_calculate')]
function TTaxController.calculate(request: string; amount: currency): String;
begin
  var data:= request;
  if data.Trim.Equals('ICMS')then
  begin
    var ICMS:= TICMS.Create();
    var taxAmount := _taxCalculator.setTaxType(ICMS).calculate(amount);
    Writeln(Format('Value calculate to ICMS is: %2.f',[taxAmount]));
    result:= taxAmount.ToString();
  end else
  if data.Trim.Equals('ISS')then
  begin
    var ISS:= TISS.Create();
    var taxAmount := _taxCalculator.setTaxType(ISS).calculate(amount);
    Writeln(Format('Value calculate to ISS is: %2.f',[taxAmount]));
    result:= taxAmount.ToString();
  end else
  if data.Trim.Equals('IPI')then
  begin
    var IPI:= TIPI.Create();
    var taxAmount := _taxCalculator.setTaxType(IPI).calculate(amount);
    Writeln(Format('Value calculate to IPI is: %2.f',[taxAmount]));
    result:= taxAmount.ToString();
  end
  else raise Exception.Create('invalid tax type');
end;

constructor TTaxController.Create(taxCalculator: TTaxCalculator);
begin
  writeln('Processing tax ...');
  _taxCalculator:= taxCalculator;
end;

end.
