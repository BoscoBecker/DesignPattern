program AdapterPattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  SalesReportGenerator in 'Service\SalesReportGenerator.pas',
  PDFAdapter in 'Interfaces\PDFAdapter.pas',
  DomPDFAdapter in 'ThirdParties\DomPDFAdapter.pas',
  TCPDFAdapter in 'ThirdParties\TCPDFAdapter.pas';

begin
  ReportMemoryLeaksOnShutdown:= True;
  try
   //var adapter:= TTCPDFAdapter.Create; // Have'nt Support ? don't worry ...
   var adapter:= TDomPDFAdapter.Create;
   var salesReport:= TSalesReportGenerator.Create(adapter);
    try
      salesReport.generate;
    finally
      salesReport.Free;
    end;
    readln;
  except
    on E: Exception do Writeln(E.ClassName, ': ', E.Message);
  end;
end.
