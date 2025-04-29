unit PDFDataMiner;

interface

uses DataMiner;

type
  PDFDataMine = class(DataMine)
    protected
      function openFile(path: string): string; override;
      function extractData(fileContent:string ): string; override;
      function parseData(path:string): string; override;
  end;

implementation

function PDFDataMine.extractData(fileContent: string): string;
begin
  result:= fileContent+'... extracting {0..10 100..1000}';
end;

function PDFDataMine.openFile(path: string): string;
begin
  result:= path+'... file content PDF';
end;

function PDFDataMine.parseData(path: string): string;
begin
  result:= path+'... parsing {0..10 100..1000}';
end;


end.

