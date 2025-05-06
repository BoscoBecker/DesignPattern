program StatePattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Order in 'Order.pas',
  StateOrder in 'Interfaces\StateOrder.pas',
  Realized in 'StateOrder\Realized.pas',
  Preparing in 'StateOrder\Preparing.pas',
  StartDelivery in 'StateOrder\StartDelivery.pas',
  EndDelivery in 'StateOrder\EndDelivery.pas';

begin
  ReportMemoryLeaksOnShutdown:= True;
  try
    var order := TOrder.Create(TRealized.Create());
    try
      order.prepare();
      order.startDelivery();
      order.endDelivery();
    finally
      order.Free;
    end;
    readln;
  except
    on E: Exception do Writeln(E.ClassName, ': ', E.Message);
  end;
end.
