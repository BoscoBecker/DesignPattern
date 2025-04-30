unit ReportRepository;

interface

uses Report;

type
  TReportRepository = class
    private
      report: TReport;
    public
      function find(const id : integer): TReport;
      Constructor Create;
  end;

implementation

constructor TReportRepository.Create;
begin
end;

function TReportRepository.find(const id: integer): TReport;
begin
  if report = nil then
    report:= TReport.Create;
  /// Simulate get data from API, DB however
  report.SetData(
    '''
    { "reportTitle": "Sales Report",
      "date": "2025-04-30",
      "company": "Example Corp",
      "items": [  {
      "description": "Product A",
      "quantity": 3,
      "unitPrice": 50.0,
      "total": 150.0  } ]
      "totalAmount": 310.0 }
    ''');
  result:= report;
end;

end.
