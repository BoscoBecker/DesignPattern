unit ReportGeneratorControler;

interface

uses System.SysUtils, Report, ReportRepository, ReportGeneratorProxy;

type
  TReportGeneratorController = class
    private
      _reportRepository: TReportRepository;
      _reportGenerator: TReportGeneratorProxy;
    public
      constructor Create(reportRepository: TReportRepository; reportGenerator: TReportGeneratorProxy);
      function generateReport(Id: integer=0): string;
  end;

implementation

constructor TReportGeneratorController.Create( reportRepository: TReportRepository; reportGenerator: TReportGeneratorProxy);
begin
  _reportRepository:= reportRepository;
  _reportGenerator:= reportGenerator;
end;

/// This simulate the API
 ///Route(/reports/{id})/generate,name:'report', methods:["GET"])]
function TReportGeneratorController.generateReport(Id: integer=0): string;
begin
  var report:= _reportRepository.find(Id);
  var reportData:=  _reportGenerator.generate(report);
  writeLn(Format('Printing ... %s ',[reportData]));

  result:= reportData;
end;

end.
