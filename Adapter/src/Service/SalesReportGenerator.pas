unit SalesReportGenerator;

interface

uses PDFAdapter, System.SysUtils;

type
  TSalesReportGenerator = class
    private
      _pdfAdapter: IPDFAdapter;
    public
      constructor Create(pdfAdapter: IPDFAdapter);
      procedure generate;
  end;

implementation

constructor TSalesReportGenerator.Create(pdfAdapter: IPDFAdapter);
begin
  _pdfAdapter:= pdfAdapter;
end;

procedure TSalesReportGenerator.generate;
begin
  var content:= 'Content of report';
  var fileName:=  FormatDateTime('HH:MM:SS',Now()) + '.pdf';
  _pdfAdapter.generate(filename, content);
end;

end.
