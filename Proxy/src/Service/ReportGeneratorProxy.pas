unit ReportGeneratorProxy;

interface

Uses Report, ReportGenerator, ReportGeneratorInterface, System.SysUtils;

type
  TReportGeneratorProxy = class(TInterfacedObject , IReportGeneratorInterface)
    private
      _reportGenerator: TReportGenerator;
    public
      function generate(report : TReport): String;
      constructor Create(reportGenerator : TReportGenerator);
  end;

implementation

constructor TReportGeneratorProxy.Create(reportGenerator: TReportGenerator);
begin
  _reportGenerator:= reportGenerator;
end;

function TReportGeneratorProxy.generate(report: TReport): String;
begin
  //// Here work bussiness rules and more OR cache
  writeln(Format('Proxy acessed ... ReportID: %s',[report.getId().toString()]));
  result :=  _reportGenerator.generate(report);
end;

end.
