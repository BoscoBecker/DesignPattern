program StrategyPattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  TaxController in 'Controller\TaxController.pas',
  TaxTypeInterface in 'Interfaces\TaxTypeInterface.pas',
  ICMS in 'Service\Tax\ICMS.pas',
  ISS in 'Service\Tax\ISS.pas',
  IPI in 'Service\Tax\IPI.pas',
  TaxCalculator in 'Service\TaxCalculator.pas';

begin
  ReportMemoryLeaksOnShutdown:= true;
  try
    try
      writeln('Tax informed: ICMS, amount: 200 ');
      TTaxController
          .Create(TTaxCalculator.Create())
        .calculate('ICMS',200);
      readln;
    finally
    end;
  except
    on E: Exception do Writeln(E.ClassName, ': ', E.Message);
  end;
end.
