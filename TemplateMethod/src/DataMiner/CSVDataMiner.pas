unit CSVDataMiner;

interface

uses DataMiner;

type
  CSVDataMine = class(DataMine)
    protected
      function openFile(path: string): string; override;
      function extractData(fileContent:string ): string; override;
      function parseData(path:string): string; override;
  end;

implementation

function CSVDataMine.extractData(fileContent: string): string;
begin
  result:= fileContent+'... extracting {0..10 100..1000}';
end;

function CSVDataMine.openFile(path: string): string;
begin
  result:= path+'... file content CSV';
end;

function CSVDataMine.parseData(path: string): string;
begin
  result:= path+'... parsing {0..10 100..1000}';
end;


end.

