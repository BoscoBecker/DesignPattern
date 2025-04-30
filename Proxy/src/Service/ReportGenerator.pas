unit ReportGenerator;

interface

uses System.SysUtils, Report, ReportGeneratorInterface;

type
  TReportGenerator = class(TInterfacedObject, IReportGeneratorInterface)
  private
    FData: String;
    procedure SetData(const Value: String);
  public
      function generate(report: TReport): String;
      property Data: String read FData write SetData;
  end;

implementation


function TReportGenerator.generate(report: TReport): String;
begin
  /// Logic to buil the report here
  Sleep(5000);
  result:= Format('Content of report: %s ',[report.getData]);
end;

procedure TReportGenerator.SetData(const Value: String);
begin
  FData := Value;
end;

end.
