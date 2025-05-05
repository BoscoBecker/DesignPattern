unit PaymentProcessor;

interface

type
  TPaymentProcessor = class
    public procedure processPayment(const amount: string);
  end;

implementation

uses System.Sysutils;

procedure TPaymentProcessor.processPayment(const amount: string);
begin
  Writeln(Format('Process payment... amount US: %s ',[amount]));
end;

end.
