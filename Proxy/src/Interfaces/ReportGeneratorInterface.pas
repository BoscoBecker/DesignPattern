unit ReportGeneratorInterface;

interface

uses Report;

type
  IReportGeneratorInterface = interface
    ['{8C6DBE18-B00C-4C0C-B93F-D5A5C91B1A19}']
    function generate(report : TReport): String;
  end;

implementation

end.
