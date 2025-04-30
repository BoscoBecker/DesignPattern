program ProxyPattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  ReportGeneratorControler in 'Controller\ReportGeneratorControler.pas',
  Report in 'Entity\Report.pas',
  ReportRepository in 'Repository\ReportRepository.pas',
  ReportGenerator in 'Service\ReportGenerator.pas',
  ReportGeneratorInterface in 'Interfaces\ReportGeneratorInterface.pas',
  ReportGeneratorProxy in 'Service\ReportGeneratorProxy.pas';

begin
  try
    var report:= TReportGeneratorController.Create(TReportRepository.Create,
                                                   TReportGeneratorProxy.Create(TReportGenerator.Create));
      report.generateReport();
      readln;
  except
    on E: Exception do  Writeln(E.ClassName, ': ', E.Message);
  end;
end.
